@interface DNDGlobalConfigurationService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForUpdatesIfRequired;
- (BOOL)getPreventAutoReplyReturningError:(id *)error;
- (BOOL)modesCanImpactAvailability;
- (BOOL)setCloudSyncPreferenceEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setModesCanImpactAvailability:(BOOL)availability error:(id *)error;
- (BOOL)setPairSyncPreferenceEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setPhoneCallBypassSettings:(id)settings error:(id *)error;
- (BOOL)setPreventAutoReply:(BOOL)reply error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)getAccountFeatureSupportWithError:(id *)error;
- (id)getPhoneCallBypassSettingsReturningError:(id *)error;
- (id)getStateDumpReturningError:(id *)error;
- (unint64_t)getCloudSyncStateReturningError:(id *)error;
- (unint64_t)getPairSyncStateReturningError:(id *)error;
- (void)_queue_registerForUpdatesIfRequired;
- (void)_updateListenersOfCloudSyncPreferenceChange:(BOOL)change;
- (void)addListener:(id)listener withCompletionHandler:(id)handler;
- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier;
- (void)isCloudSyncActiveWithCompletionHandler:(id)handler;
- (void)modesCanImpactAvailability;
- (void)remoteService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state;
- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings;
- (void)remoteService:(id)service didReceiveUpdatedPreventAutoReplySetting:(BOOL)setting;
- (void)removeListener:(id)listener;
@end

@implementation DNDGlobalConfigurationService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_9 != -1)
  {
    +[DNDGlobalConfigurationService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_8;
  serviceForClientIdentifier__lockQueue_8 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_9;
  serviceForClientIdentifier__serviceByClientIdentifier_9 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __60__DNDGlobalConfigurationService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_9 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_9;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)getPreventAutoReplyReturningError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.getPreventAutoReply", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__DNDGlobalConfigurationService_getPreventAutoReplyReturningError___block_invoke;
  v13[3] = &unk_27843A0A8;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 getPreventAutoReplyWithRequestDetails:v6 completionHandler:v13];

  v8 = DNDLogGlobalConfiguration;
  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService getPreventAutoReplyReturningError:];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v21 + 24))
    {
      v9 = @"prevented";
    }

    else
    {
      v9 = @"not prevented";
    }

    *buf = 138543618;
    v26 = v6;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Auto reply is %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v10 = v15[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11 & 1;
}

void __67__DNDGlobalConfigurationService_getPreventAutoReplyReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setPreventAutoReply:(BOOL)reply error:(id *)error
{
  replyCopy = reply;
  v32 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.setPreventAutoReply", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:replyCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__DNDGlobalConfigurationService_setPreventAutoReply_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setPreventAutoReply:v10 withRequestDetails:v8 completionHandler:v16];

  v11 = DNDLogGlobalConfiguration;
  if (*(v24 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"not prevented";
      if (replyCopy)
      {
        v12 = @"prevented";
      }

      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set auto reply to %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService setPreventAutoReply:error:];
  }

  if (error)
  {
    v13 = v18[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v14 & 1;
}

void __59__DNDGlobalConfigurationService_setPreventAutoReply_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)modesCanImpactAvailability
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.modesCanImpactAvailability", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v5 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__DNDGlobalConfigurationService_modesCanImpactAvailability__block_invoke;
  v10[3] = &unk_27843A0A8;
  v10[4] = &v17;
  v10[5] = &v11;
  [v5 getModesCanImpactAvailabilityWithRequestDetails:v4 completionHandler:v10];

  v6 = DNDLogGlobalConfiguration;
  if (v12[5])
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService modesCanImpactAvailability];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v18 + 24))
    {
      v7 = &stru_2833C9B78;
    }

    else
    {
      v7 = @"not";
    }

    *buf = 138543618;
    v23 = v4;
    v24 = 2114;
    v25 = v7;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Modes can%{public}@ impact availability.", buf, 0x16u);
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v8 & 1;
}

void __59__DNDGlobalConfigurationService_modesCanImpactAvailability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setModesCanImpactAvailability:(BOOL)availability error:(id *)error
{
  availabilityCopy = availability;
  v32 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.setModesCanImpactAvailability", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:availabilityCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__DNDGlobalConfigurationService_setModesCanImpactAvailability_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setModesCanImpactAvailability:v10 withRequestDetails:v8 completionHandler:v16];

  v11 = DNDLogGlobalConfiguration;
  if (*(v24 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (availabilityCopy)
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set modesCanImpactAvailability to %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService setModesCanImpactAvailability:error:];
  }

  if (error)
  {
    v13 = v18[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v14 & 1;
}

void __69__DNDGlobalConfigurationService_setModesCanImpactAvailability_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getPhoneCallBypassSettingsReturningError:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService getPhoneCallBypassSettingsReturningError:v4];
    if (!error)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    v5 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Bypass settings are now per mode configuration";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *error = [v5 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v6];
  }

  return 0;
}

- (BOOL)setPhoneCallBypassSettings:(id)settings error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService getPhoneCallBypassSettingsReturningError:v6];
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (error)
  {
LABEL_3:
    v7 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Bypass settings are now per mode configuration";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *error = [v7 errorWithDomain:@"DNDErrorDomain" code:1004 userInfo:v8];
  }

LABEL_4:

  return 0;
}

- (void)isCloudSyncActiveWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke;
  block[3] = &unk_27843ABE0;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 32))
  {
    v4 = [WeakRetained isCloudSyncActive];
    v5 = v3[2];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__DNDGlobalConfigurationService_isCloudSyncActiveWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_27843A1C0;
    v7 = *(a1 + 32);
    v8 = v4;
    dispatch_async(v5, v6);
  }
}

- (unint64_t)getCloudSyncStateReturningError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getCloudSyncState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__DNDGlobalConfigurationService_getCloudSyncStateReturningError___block_invoke;
  v11[3] = &unk_27843A0A8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v6 getCloudSyncStateWithRequestDetails:v5 completionHandler:v11];

  if (v13[5])
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService getCloudSyncStateReturningError:];
    }
  }

  else
  {
    v7 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19[3]];
      *buf = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got cloud sync state=%{public}@", buf, 0x16u);
    }
  }

  v9 = v19[3];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  return v9;
}

void __65__DNDGlobalConfigurationService_getCloudSyncStateReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setCloudSyncPreferenceEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSyncPreferenceEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__9;
  v15[4] = __Block_byref_object_dispose__9;
  v16 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__DNDGlobalConfigurationService_setCloudSyncPreferenceEnabled_error___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v17;
  v14[5] = v15;
  [v8 setCloudSyncPreferenceEnabled:v9 withRequestDetails:v7 completionHandler:v14];

  if (*(v18 + 24) == 1)
  {
    v10 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set cloud sync preference enabled=%{public}@", buf, 0x16u);
    }

    [(DNDGlobalConfigurationService *)self _updateListenersOfCloudSyncPreferenceChange:enabledCopy];
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService setCloudSyncPreferenceEnabled:error:];
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __69__DNDGlobalConfigurationService_setCloudSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)_updateListenersOfCloudSyncPreferenceChange:(BOOL)change
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke;
  v4[3] = &unk_27843AC30;
  v4[4] = self;
  changeCopy = change;
  dispatch_sync(queue, v4);
}

void __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke_2;
  v5[3] = &unk_27843AC08;
  objc_copyWeak(&v7, &location);
  v6 = v2;
  v8 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__DNDGlobalConfigurationService__updateListenersOfCloudSyncPreferenceChange___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didEditCloudSyncPreference:{*(a1 + 48), v9}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (unint64_t)getPairSyncStateReturningError:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getPairSyncState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__DNDGlobalConfigurationService_getPairSyncStateReturningError___block_invoke;
  v11[3] = &unk_27843A0A8;
  v11[4] = &v18;
  v11[5] = &v12;
  [v6 getPairSyncStateWithRequestDetails:v5 completionHandler:v11];

  if (v13[5])
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService getPairSyncStateReturningError:];
    }
  }

  else
  {
    v7 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19[3]];
      *buf = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got pair sync state=%{public}@", buf, 0x16u);
    }
  }

  v9 = v19[3];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  os_activity_scope_leave(&state);

  return v9;
}

void __64__DNDGlobalConfigurationService_getPairSyncStateReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setPairSyncPreferenceEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setPairSyncPreferenceEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__9;
  v15[4] = __Block_byref_object_dispose__9;
  v16 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__DNDGlobalConfigurationService_setPairSyncPreferenceEnabled_error___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v17;
  v14[5] = v15;
  [v8 setPairSyncPreferenceEnabled:v9 withRequestDetails:v7 completionHandler:v14];

  if (*(v18 + 24) == 1)
  {
    v10 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      *buf = 138543618;
      v23 = v7;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set pair sync preference enabled=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDGlobalConfigurationService setPairSyncPreferenceEnabled:error:];
  }

  v12 = *(v18 + 24);
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __68__DNDGlobalConfigurationService_setPairSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)didChangeFocusStatusSharingSettingForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.didChangeFocusStatusSharingSettingForApplicationIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke;
  v10[3] = &unk_27843A520;
  v8 = v6;
  v11 = v8;
  v9 = identifierCopy;
  v12 = v9;
  [v7 didChangeFocusStatusSharingSettingForApplicationIdentifier:v9 withRequestDetails:v8 completionHandler:v10];

  os_activity_scope_leave(&state);
}

void __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 BOOLValue];
  v8 = DNDLogGlobalConfiguration;
  if (v7)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v8;
      v12 = [v5 BOOLValue];
      v13 = @"N";
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      if (v12)
      {
        v13 = @"Y";
      }

      v17 = v10;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Signaled change to focus status sharing setting, applicationIdentifier=%{public}@ success=%{public}@", &v14, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke_cold_1();
  }
}

- (id)getAccountFeatureSupportWithError:(id *)error
{
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAccountFeatureSupport", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke;
  v10[3] = &unk_27843AC58;
  v12 = &v13;
  v7 = v5;
  v11 = v7;
  [v6 getAccountFeatureSupportWithRequestDetails:v7 completionHandler:v10];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  os_activity_scope_leave(&state);

  return v8;
}

void __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got account feature support=%{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
  {
    __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke_cold_1();
  }
}

- (void)addListener:(id)listener withCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = listenerCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "Adding update listener: listener=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke;
  v14[3] = &unk_27843A728;
  v15 = v8;
  selfCopy = self;
  v17 = listenerCopy;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = listenerCopy;
  v13 = v8;
  dispatch_sync(queue, v14);

  os_activity_scope_leave(&state);
}

void __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  [*(*(a1 + 40) + 24) addObject:*(a1 + 48)];
  v2 = [*(a1 + 40) _queue_registerForUpdatesIfRequired];
  v3 = DNDLogGlobalConfiguration;
  if (v2)
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_22002F000, v3, OS_LOG_TYPE_DEFAULT, "Registered for updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 48), v3);
    }

    [*(*(a1 + 40) + 24) removeObject:*(a1 + 48)];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__DNDGlobalConfigurationService_addListener_withCompletionHandler___block_invoke_35;
    v7[3] = &unk_27843A1C0;
    v8 = v5;
    v9 = v2;
    dispatch_async(v6, v7);
  }

  os_activity_scope_leave(&state);
}

- (void)removeListener:(id)listener
{
  v17 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = DNDLogGlobalConfiguration;
  if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = listenerCopy;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Removing update listener: listener=%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__DNDGlobalConfigurationService_removeListener___block_invoke;
  block[3] = &unk_27843A210;
  v11 = v5;
  selfCopy = self;
  v13 = listenerCopy;
  v8 = listenerCopy;
  v9 = v5;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __48__DNDGlobalConfigurationService_removeListener___block_invoke(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v2);
  [*(*(a1 + 40) + 24) removeObject:*(a1 + 48)];
  os_activity_scope_leave(&v2);
}

- (void)remoteService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke;
  v5[3] = &unk_27843ACA8;
  v5[4] = self;
  v5[5] = state;
  dispatch_sync(queue, v5);
}

void __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke_2;
  v6[3] = &unk_27843AC80;
  objc_copyWeak(v8, &location);
  v4 = *(a1 + 40);
  v7 = v2;
  v8[1] = v4;
  v5 = v2;
  dispatch_async(v3, v6);

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __78__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPairSyncState___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPairSyncState:{*(a1 + 48), v9}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)remoteService:(id)service didReceiveUpdatedPreventAutoReplySetting:(BOOL)setting
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke;
  v5[3] = &unk_27843AC30;
  v5[4] = self;
  settingCopy = setting;
  dispatch_sync(queue, v5);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke_2;
  v5[3] = &unk_27843AC08;
  objc_copyWeak(&v7, &location);
  v6 = v2;
  v8 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPreventAutoReplySetting___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPreventAutoReplySetting:{*(a1 + 48), v9}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)remoteService:(id)service didReceiveUpdatedPhoneCallBypassSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  dispatch_sync(queue, v8);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2;
  v5[3] = &unk_27843ACD0;
  objc_copyWeak(&v8, &location);
  v6 = v2;
  v7 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __88__DNDGlobalConfigurationService_remoteService_didReceiveUpdatedPhoneCallBypassSettings___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 globalConfigurationService:WeakRetained didReceiveUpdatedPhoneCallBypassSettings:{*(a1 + 40), v9}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (id)getStateDumpReturningError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getStateDump", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v6 = +[DNDRemoteServiceConnection sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__DNDGlobalConfigurationService_getStateDumpReturningError___block_invoke;
  v10[3] = &unk_27843ACF8;
  v10[4] = &v17;
  v10[5] = &v11;
  [v6 getStateDumpWithRequestDetails:v5 completionHandler:v10];

  v7 = DNDLogGlobalConfiguration;
  if (v12[5])
  {
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService getStateDumpReturningError:];
    }
  }

  else if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v5;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got state dump", buf, 0xCu);
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v8;
}

void __60__DNDGlobalConfigurationService_getStateDumpReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = DNDGlobalConfigurationService;
  v5 = [(DNDGlobalConfigurationService *)&v18 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v5->_listeners;
    v5->_listeners = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService", v10);
    queue = v5->_queue;
    v5->_queue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.donotdisturb.DNDGlobalConfigurationService.callout", v13);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v14;

    v16 = +[DNDRemoteServiceConnection sharedInstance];
    [v16 addEventListener:v5];
  }

  return v5;
}

- (BOOL)_queue_registerForUpdatesIfRequired
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDGlobalConfigurationService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogGlobalConfiguration;
    if (os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering update listener", &buf, 0xCu);
    }

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__9;
    v18 = __Block_byref_object_dispose__9;
    v19 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__DNDGlobalConfigurationService__queue_registerForUpdatesIfRequired__block_invoke;
    v9[3] = &unk_27843A0A8;
    v9[4] = &v10;
    v9[5] = &buf;
    [v6 registerForGlobalConfigurationUpdatesWithRequestDetails:v4 completionHandler:v9];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogGlobalConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDGlobalConfigurationService _queue_registerForUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v11 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
  }

  return ![(NSHashTable *)self->_listeners count]|| self->_registeredForUpdates;
}

void __68__DNDGlobalConfigurationService__queue_registerForUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)getPreventAutoReplyReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPreventAutoReply:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)modesCanImpactAvailability
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setModesCanImpactAvailability:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getCloudSyncStateReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setCloudSyncPreferenceEnabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getPairSyncStateReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setPairSyncPreferenceEnabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __92__DNDGlobalConfigurationService_didChangeFocusStatusSharingSettingForApplicationIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __67__DNDGlobalConfigurationService_getAccountFeatureSupportWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)getStateDumpReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_queue_registerForUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end