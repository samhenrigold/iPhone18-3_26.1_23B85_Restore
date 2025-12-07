@interface DNDSettingsService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForSettingsUpdatesIfRequired;
- (BOOL)setBehaviorSettings:(id)settings error:(id *)error;
- (BOOL)setConfiguration:(id)configuration forModeIdentifier:(id)identifier error:(id *)error;
- (BOOL)setScheduleSettings:(id)settings error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)behaviorSettingsReturningError:(id *)error;
- (id)configurationForModeIdentifier:(id)identifier error:(id *)error;
- (id)scheduleSettingsReturningError:(id *)error;
- (void)_queue_registerForSettingsUpdatesIfRequired;
- (void)addSettingsUpdateListener:(id)listener withCompletionHandler:(id)handler;
- (void)remoteService:(id)service didReceiveUpdatedBehaviorSettings:(id)settings;
- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings;
- (void)remoteService:(id)service didReceiveUpdatedScheduleSettings:(id)settings;
- (void)removeSettingsUpdateListener:(id)listener;
@end

@implementation DNDSettingsService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_11 != -1)
  {
    +[DNDSettingsService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__DNDSettingsService_serviceForClientIdentifier___block_invoke_2;
  block[3] = &unk_27843A080;
  v10 = identifierCopy;
  v11 = &v13;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

uint64_t __49__DNDSettingsService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDSettingsService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_10;
  serviceForClientIdentifier__lockQueue_10 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_11;
  serviceForClientIdentifier__serviceByClientIdentifier_11 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __49__DNDSettingsService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_11 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_11;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = DNDSettingsService;
  v5 = [(DNDSettingsService *)&v22 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.SettingsService", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.donotdisturb.SettingsService.call-out", v9);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v10;

    v12 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    settingsUpdateListeners = v5->_settingsUpdateListeners;
    v5->_settingsUpdateListeners = v14;

    v16 = [DNDModeConfigurationService serviceForClientIdentifier:identifierCopy];
    modeConfigurationService = v5->_modeConfigurationService;
    v5->_modeConfigurationService = v16;

    v18 = [DNDGlobalConfigurationService serviceForClientIdentifier:identifierCopy];
    globalConfigurationService = v5->_globalConfigurationService;
    v5->_globalConfigurationService = v18;

    v20 = +[DNDRemoteServiceConnection sharedInstance];
    [v20 addEventListener:v5];
  }

  return v5;
}

- (id)behaviorSettingsReturningError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.behaviorSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__DNDSettingsService_behaviorSettingsReturningError___block_invoke;
  v13[3] = &unk_27843B268;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 getBehaviorSettingsWithRequestDetails:v6 completionHandler:v13];

  if (!v21[5] && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    [DNDSettingsService behaviorSettingsReturningError:];
  }

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v21[5];
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got behavior settings, settings=%{public}@", buf, 0x16u);
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __53__DNDSettingsService_behaviorSettingsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setBehaviorSettings:(id)settings error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.setBehaviorSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__DNDSettingsService_setBehaviorSettings_error___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v9 setBehaviorSettings:settingsCopy withRequestDetails:v8 completionHandler:v15];

  v10 = DNDLogSettings;
  if (*(v23 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = settingsCopy;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set behavior settings, settings=%{public}@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v14 = v17[5];
  *buf = 138543874;
  v28 = v8;
  v29 = 2114;
  v30 = settingsCopy;
  v31 = 2114;
  v32 = v14;
  _os_log_error_impl(&dword_22002F000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting behavior settings, settings=%{public}@, error='%{public}@'", buf, 0x20u);
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = v17[5];
  if (v11)
  {
    *error = v11;
  }

LABEL_9:
  v12 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __48__DNDSettingsService_setBehaviorSettings_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)scheduleSettingsReturningError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.scheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__11;
  v24 = __Block_byref_object_dispose__11;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__DNDSettingsService_scheduleSettingsReturningError___block_invoke;
  v13[3] = &unk_27843B290;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 getScheduleSettingsWithRequestDetails:v6 completionHandler:v13];

  if (!v21[5] && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    [DNDSettingsService scheduleSettingsReturningError:];
  }

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v21[5];
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got schedule settings, settings=%{public}@", buf, 0x16u);
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __53__DNDSettingsService_scheduleSettingsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setScheduleSettings:(id)settings error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.setScheduleSettings", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__11;
  v20 = __Block_byref_object_dispose__11;
  v21 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__DNDSettingsService_setScheduleSettings_error___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v9 setScheduleSettings:settingsCopy withRequestDetails:v8 completionHandler:v15];

  v10 = DNDLogSettings;
  if (*(v23 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = settingsCopy;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set schedule settings, settings=%{public}@", buf, 0x16u);
      if (!error)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_6:
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v14 = v17[5];
  *buf = 138543874;
  v28 = v8;
  v29 = 2114;
  v30 = settingsCopy;
  v31 = 2114;
  v32 = v14;
  _os_log_error_impl(&dword_22002F000, v10, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting schedule settings, settings=%{public}@, error='%{public}@'", buf, 0x20u);
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  v11 = v17[5];
  if (v11)
  {
    *error = v11;
  }

LABEL_9:
  v12 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __48__DNDSettingsService_setScheduleSettings_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)configurationForModeIdentifier:(id)identifier error:(id *)error
{
  v4 = [(DNDModeConfigurationService *)self->_modeConfigurationService modeConfigurationForModeIdentifier:identifier error:error];
  configuration = [v4 configuration];

  return configuration;
}

- (BOOL)setConfiguration:(id)configuration forModeIdentifier:(id)identifier error:(id *)error
{
  configurationCopy = configuration;
  v9 = [(DNDModeConfigurationService *)self->_modeConfigurationService modeConfigurationForModeIdentifier:identifier error:error];
  v10 = v9;
  v11 = 0;
  if (!error && v9)
  {
    v12 = [v9 mutableCopy];
    [v12 setConfiguration:configurationCopy];
    v11 = [(DNDModeConfigurationService *)self->_modeConfigurationService setModeConfiguration:v12 error:0];
  }

  return v11;
}

- (void)addSettingsUpdateListener:(id)listener withCompletionHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.addSettingsUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke;
  block[3] = &unk_27843A198;
  v13 = listenerCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = listenerCopy;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding settings update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 40) + 24) addObject:*(a1 + 32)];
  v4 = [*(a1 + 40) _queue_registerForSettingsUpdatesIfRequired];
  v5 = v4;
  v6 = DNDLogSettings;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Registered for settings updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_cold_1((a1 + 32), v6);
    }

    [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(*(a1 + 40) + 16);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_13;
    v10[3] = &unk_27843A1C0;
    v11 = v8;
    v12 = v5;
    dispatch_async(v9, v10);
  }
}

- (void)removeSettingsUpdateListener:(id)listener
{
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.removeSettingsUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__DNDSettingsService_removeSettingsUpdateListener___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = listenerCopy;
  selfCopy = self;
  v7 = listenerCopy;
  dispatch_sync(queue, v8);

  os_activity_scope_leave(&state);
}

uint64_t __51__DNDSettingsService_removeSettingsUpdateListener___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing settings update listener: listener=%{public}@", &v5, 0xCu);
  }

  return [*(*(a1 + 40) + 24) removeObject:*(a1 + 32)];
}

- (void)remoteService:(id)service didReceiveUpdatedBehaviorSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedBehaviorSettings___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedBehaviorSettings:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

void __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __77__DNDSettingsService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedPhoneCallBypassSettings:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)remoteService:(id)service didReceiveUpdatedScheduleSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke_2;
  block[3] = &unk_27843A210;
  v8 = v2;
  v9 = v4;
  v10 = v3;
  v6 = v2;
  dispatch_async(v5, block);
}

void __70__DNDSettingsService_remoteService_didReceiveUpdatedScheduleSettings___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 settingsService:*(a1 + 40) didReceiveUpdatedScheduleSettings:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_queue_registerForSettingsUpdatesIfRequired
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_settingsUpdateListeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDSettingsService.registerForSettingsUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogSettings;
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering settings update listener", &buf, 0xCu);
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__11;
    v18 = __Block_byref_object_dispose__11;
    v19 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__DNDSettingsService__queue_registerForSettingsUpdatesIfRequired__block_invoke;
    v9[3] = &unk_27843A0A8;
    v9[4] = &v10;
    v9[5] = &buf;
    [v6 registerForSettingsUpdatesWithRequestDetails:v4 completionHandler:v9];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      [DNDSettingsService _queue_registerForSettingsUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v11 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
  }

  return ![(NSHashTable *)self->_settingsUpdateListeners count]|| self->_registeredForUpdates;
}

void __65__DNDSettingsService__queue_registerForSettingsUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)behaviorSettingsReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting behavior settings, error='%{public}@'");
}

- (void)scheduleSettingsReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting schedule settings, error='%{public}@'");
}

void __70__DNDSettingsService_addSettingsUpdateListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for settings updates, will remove listener: listener=%{public}@", &v3, 0xCu);
}

- (void)_queue_registerForSettingsUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when registering settings update listener, error='%{public}@'");
}

@end