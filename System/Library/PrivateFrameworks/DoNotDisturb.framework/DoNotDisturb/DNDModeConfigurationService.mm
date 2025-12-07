@interface DNDModeConfigurationService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForUpdatesIfRequired;
- (BOOL)canRemoveModeConfigurationForModeIdentifier:(id)identifier;
- (BOOL)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)clearAppConfigurationActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)clearSystemConfigurationActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)getSyncAvailableReturningError:(id *)error;
- (BOOL)getSyncEnabledReturningError:(id *)error;
- (BOOL)getSyncPreferenceEnabledReturningError:(id *)error;
- (BOOL)hasActivelyConfiguredModes:(BOOL *)modes error:(id *)error;
- (BOOL)hasActivelyConfiguredModesReturningError:(id *)error;
- (BOOL)isLocalUserAvailableForContactInActiveMode:(id)mode error:(id *)error;
- (BOOL)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(BOOL)placeholder error:(id *)error;
- (BOOL)resetAppConfigurationState;
- (BOOL)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)setAppConfigurationAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)setModeConfiguration:(id)configuration error:(id *)error;
- (BOOL)setSyncPreferenceEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setSystemAction:(id)action forModeIdentifier:(id)identifier error:(id *)error;
- (BOOL)setSystemConfigurationAction:(id)action modeIdentifier:(id)identifier error:(id *)error;
- (BOOL)syncModeConfigurationsReturningError:(id *)error;
- (id)_createDefaultModeConfigurationForIdentifier:(id)identifier withRequestDetails:(id)details error:(id *)error;
- (id)_createEmptyModeConfigurationForMode:(id)mode withRequestDetails:(id)details error:(id *)error;
- (id)_createModeSpecificConfigurationForModeSemanticType:(int64_t)type withIdentifier:(id)identifier;
- (id)_createTriggersForFocusWithIdentifier:(id)identifier;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)_setModeConfigurationDefaultsForModeConfiguration:(id)configuration withIdentifier:(id)identifier;
- (id)allModesReturningError:(id *)error;
- (id)allowedModesForContactHandle:(id)handle error:(id *)error;
- (id)availableModesReturningError:(id *)error;
- (id)createDefaultDrivingModeConfigurationWithError:(id *)error;
- (id)createDefaultSleepingModeConfigurationWithError:(id *)error;
- (id)createDefaultWorkoutModeConfigurationWithError:(id *)error;
- (id)createEmptyModeConfigurationForMode:(id)mode error:(id *)error;
- (id)createModeConfigurationUsingTemplateForModeIdentifier:(id)identifier error:(id *)error;
- (id)createModeConfigurationUsingTemplateForModeSemanticType:(int64_t)type error:(id *)error;
- (id)getAppActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)getAppConfigurationActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)getAppConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)identifier error:(id *)error;
- (id)getSystemActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)getSystemConfigurationActionsForModeIdentifier:(id)identifier error:(id *)error;
- (id)modeConfigurationForModeIdentifier:(id)identifier error:(id *)error;
- (id)modeConfigurationsReturningError:(id *)error;
- (id)publishCurrentStatusKitAvailabilityReturningError:(id *)error;
- (id)silencedModesForContactHandle:(id)handle error:(id *)error;
- (unint64_t)_defaultConfigurationTypeForModeSemanticType:(int64_t)type;
- (void)_queue_registerForUpdatesIfRequired;
- (void)addListener:(id)listener withCompletionHandler:(id)handler;
- (void)remoteService:(id)service didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)identifier;
- (void)remoteService:(id)service didReceiveUpdatedAvailableModeIdentifiers:(id)identifiers;
- (void)removeListener:(id)listener;
- (void)resetAppConfigurationState;
@end

@implementation DNDModeConfigurationService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_3 != -1)
  {
    +[DNDModeConfigurationService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_3;
  serviceForClientIdentifier__lockQueue_3 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_3;
  serviceForClientIdentifier__serviceByClientIdentifier_3 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __58__DNDModeConfigurationService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_3 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_3;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)hasActivelyConfiguredModesReturningError:(id *)error
{
  v8 = 0;
  v7 = 0;
  [(DNDModeConfigurationService *)self hasActivelyConfiguredModes:&v8 error:&v7];
  v4 = v7;
  if (error)
  {
    v4 = v4;
    *error = v4;
  }

  v5 = v8;

  return v5;
}

- (BOOL)hasActivelyConfiguredModes:(BOOL *)modes error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.hasActivelyConfiguredModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__DNDModeConfigurationService_hasActivelyConfiguredModes_error___block_invoke;
  v24[3] = &unk_27843A5C0;
  v24[4] = &v31;
  v24[5] = &v25;
  [v9 getModeConfigurationsWithRequestDetails:v8 completionHandler:v24];

  if (v26[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService hasActivelyConfiguredModes:error:];
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v32[5];
    v10 = [v11 countByEnumeratingWithState:&v20 objects:v42 count:16];
    if (v10)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v11);
          }

          if (([*(*(&v20 + 1) + 8 * i) isAutomaticallyGenerated] & 1) == 0)
          {
            LODWORD(v10) = 1;
            goto LABEL_15;
          }
        }

        v10 = [v11 countByEnumeratingWithState:&v20 objects:v42 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v14 = DNDLogModeConfiguration;
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"NO";
      if (v10)
      {
        v15 = @"YES";
      }

      *buf = 138543618;
      v39 = v8;
      v40 = 2114;
      v41 = v15;
      _os_log_impl(&dword_22002F000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determined if modes have been actively configured, hasActivelyConfiguredModes=%{public}@", buf, 0x16u);
    }
  }

  v16 = v26;
  if (error)
  {
    v17 = v26[5];
    if (v17)
    {
      *error = v17;
      v16 = v26;
    }
  }

  *modes = v10;
  v18 = v16[5] == 0;
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  os_activity_scope_leave(&state);

  return v18;
}

void __64__DNDModeConfigurationService_hasActivelyConfiguredModes_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)createModeConfigurationUsingTemplateForModeSemanticType:(int64_t)type error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = type - 1;
  if (type - 1) < 9 && ((0x1FDu >> v5))
  {
    v6 = [(DNDModeConfigurationService *)self createModeConfigurationUsingTemplateForModeIdentifier:off_27843A7C0[v5] error:error];
  }

  else
  {
    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA450];
      v11[0] = @"Mode not supported.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      *error = [v7 errorWithDomain:@"DNDErrorDomain" code:1006 userInfo:v8];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)setModeConfiguration:(id)configuration error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v9 = [configurationCopy copy];
  v10 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__DNDModeConfigurationService_setModeConfiguration_error___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v10 setModeConfiguration:v9 withRequestDetails:v8 completionHandler:v15];

  v11 = DNDLogModeConfiguration;
  if (*(v23 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = v8;
      v29 = 2114;
      v30 = v9;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set mode configuration, configuration=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setModeConfiguration:error:];
  }

  if (error)
  {
    v12 = v17[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  os_activity_scope_leave(&state);
  return v13 & 1;
}

void __58__DNDModeConfigurationService_setModeConfiguration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)canRemoveModeConfigurationForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.removeModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);
  v5 = [identifierCopy isEqualToString:@"com.apple.donotdisturb.mode.default"];
  os_activity_scope_leave(&v7);

  return v5 ^ 1;
}

- (id)modeConfigurationsReturningError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getModeConfigurations", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__DNDModeConfigurationService_modeConfigurationsReturningError___block_invoke;
  v12[3] = &unk_27843A5C0;
  v12[4] = &v19;
  v12[5] = &v13;
  [v7 getModeConfigurationsWithRequestDetails:v6 completionHandler:v12];

  v8 = DNDLogModeConfiguration;
  if (v14[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService modeConfigurationsReturningError:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get mode configurations", buf, 0xCu);
  }

  if (error)
  {
    v9 = v14[5];
    if (v9)
    {
      *error = v9;
    }
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  return v10;
}

void __64__DNDModeConfigurationService_modeConfigurationsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 mode];
        v15 = [v14 modeIdentifier];
        [v7 setObject:v13 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v7;
  v18 = v7;

  v19 = *(*(a1 + 40) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v6;
}

- (id)modeConfigurationForModeIdentifier:(id)identifier error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__DNDModeConfigurationService_modeConfigurationForModeIdentifier_error___block_invoke;
  v14[3] = &unk_27843A5E8;
  v14[4] = &v21;
  v14[5] = &v15;
  [v9 getModeConfigurationForModeIdentifier:identifierCopy withRequestDetails:v8 completionHandler:v14];

  v10 = DNDLogModeConfiguration;
  if (v16[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService modeConfigurationsReturningError:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = v8;
    v30 = 2114;
    v31 = identifierCopy;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get mode configuration, identifier=%{public}@", buf, 0x16u);
  }

  if (error)
  {
    v11 = v16[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12;
}

void __72__DNDModeConfigurationService_modeConfigurationForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)isLocalUserAvailableForContactInActiveMode:(id)mode error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getIsLocalUserAvailable", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__DNDModeConfigurationService_isLocalUserAvailableForContactInActiveMode_error___block_invoke;
  v15[3] = &unk_27843A0A8;
  v15[4] = &v22;
  v15[5] = &v16;
  [v9 getUserAvailabilityInActiveModeForContactHandle:modeCopy withRequestDetails:v8 completionHandler:v15];

  if (v17[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService isLocalUserAvailableForContactInActiveMode:error:];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v23 + 24)];
      *buf = 138543875;
      v28 = v8;
      v29 = 2114;
      v30 = v11;
      v31 = 2113;
      v32 = modeCopy;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get user availability in current mode for contact, availability=%{public}@, handle=%{private}@", buf, 0x20u);
    }
  }

  if (error)
  {
    v12 = v17[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = *(v23 + 24);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v13 & 1;
}

void __80__DNDModeConfigurationService_isLocalUserAvailableForContactInActiveMode_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)allowedModesForContactHandle:(id)handle error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAllowedModesForContact", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__DNDModeConfigurationService_allowedModesForContactHandle_error___block_invoke;
  v14[3] = &unk_27843A5C0;
  v14[4] = &v21;
  v14[5] = &v15;
  [v9 getAllowedModesForContactHandle:handleCopy withRequestDetails:v8 completionHandler:v14];

  v10 = DNDLogModeConfiguration;
  if (v16[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService allowedModesForContactHandle:error:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v29 = v8;
    v30 = 2113;
    v31 = handleCopy;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get allowed modes for contact, handle=%{private}@", buf, 0x16u);
  }

  if (error)
  {
    v11 = v16[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12;
}

void __66__DNDModeConfigurationService_allowedModesForContactHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)silencedModesForContactHandle:(id)handle error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSilencedModesForContact", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__DNDModeConfigurationService_silencedModesForContactHandle_error___block_invoke;
  v14[3] = &unk_27843A5C0;
  v14[4] = &v21;
  v14[5] = &v15;
  [v9 getSilencedModesForContactHandle:handleCopy withRequestDetails:v8 completionHandler:v14];

  v10 = DNDLogModeConfiguration;
  if (v16[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService silencedModesForContactHandle:error:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v29 = v8;
    v30 = 2113;
    v31 = handleCopy;
    _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Get silenced modes for contact, handle=%{private}@", buf, 0x16u);
  }

  if (error)
  {
    v11 = v16[5];
    if (v11)
    {
      *error = v11;
    }
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12;
}

void __67__DNDModeConfigurationService_silencedModesForContactHandle_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)publishCurrentStatusKitAvailabilityReturningError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.publishCurrentStatusKitAvailability", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__DNDModeConfigurationService_publishCurrentStatusKitAvailabilityReturningError___block_invoke;
  v13[3] = &unk_27843A610;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 publishStatusKitAvailabilityWithRequestDetails:v6 completionHandler:v13];

  v8 = DNDLogModeConfiguration;
  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService publishCurrentStatusKitAvailabilityReturningError:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v21[5];
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_22002F000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Request to publish statuskit availability succeeded: %{public}@", buf, 0x16u);
  }

  if (error)
  {
    v10 = v15[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v21[5];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __81__DNDModeConfigurationService_publishCurrentStatusKitAvailabilityReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)allModesReturningError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.allModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DNDModeConfigurationService_allModesReturningError___block_invoke;
  v13[3] = &unk_27843A638;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 getAllModesWithRequestDetails:v6 completionHandler:v13];

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v21[5];
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got all modes, modes=%{public}@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:v21[5]];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __54__DNDModeConfigurationService_allModesReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)availableModesReturningError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.availableModes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DNDModeConfigurationService_availableModesReturningError___block_invoke;
  v13[3] = &unk_27843A638;
  v13[4] = &v20;
  v13[5] = &v14;
  [v7 getAvailableModesWithRequestDetails:v6 completionHandler:v13];

  if (error)
  {
    v8 = v15[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v21[5];
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got available modes, modes=%{public}@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277CBEB98] setWithArray:v21[5]];
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  os_activity_scope_leave(&state);

  return v11;
}

void __60__DNDModeConfigurationService_availableModesReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setAppConfigurationPredicate:(id)predicate forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v16 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationPredicate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v18 = +[DNDRemoteServiceConnection sharedInstance];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __126__DNDModeConfigurationService_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v23[3] = &unk_27843A0A8;
  v23[4] = &v30;
  v23[5] = &v24;
  [v18 setAppConfigurationPredicate:predicateCopy forActionIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withRequestDetails:v17 completionHandler:v23];

  v19 = DNDLogModeConfiguration;
  if (*(v31 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v36 = v17;
      v37 = 2114;
      v38 = predicateCopy;
      v39 = 2114;
      v40 = applicationIdentifierCopy;
      v41 = 2114;
      v42 = modeIdentifierCopy;
      _os_log_impl(&dword_22002F000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set app configuration predicate, predicate=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppConfigurationPredicate:forActionIdentifier:forApplicationIdentifier:modeIdentifier:error:];
  }

  if (error)
  {
    v20 = v25[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  os_activity_scope_leave(&state);

  return v21 & 1;
}

void __126__DNDModeConfigurationService_setAppConfigurationPredicate_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationPredicate", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __125__DNDModeConfigurationService_getAppConfigurationPredicateForActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v21[3] = &unk_27843A660;
  v21[4] = &v28;
  v21[5] = &v22;
  [v15 getAppConfigurationPredicateForActionIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withRequestDetails:v14 completionHandler:v21];

  v16 = DNDLogModeConfiguration;
  if (v23[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService getAppConfigurationPredicateForActionIdentifier:forApplicationIdentifier:modeIdentifier:error:];
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v29[5];
    *buf = 138544130;
    v36 = v14;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = applicationIdentifierCopy;
    v41 = 2114;
    v42 = modeIdentifierCopy;
    _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got app configuration predicate, predicate=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
  }

  if (error)
  {
    v18 = v23[5];
    if (v18)
    {
      *error = v18;
    }
  }

  v19 = v29[5];
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  os_activity_scope_leave(&state);

  return v19;
}

void __125__DNDModeConfigurationService_getAppConfigurationPredicateForActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)setAppConfigurationTargetContentIdentifierPrefix:(id)prefix forActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v16 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationTargetContentIdentifierPrefix", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v16, &state);
  v17 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v18 = +[DNDRemoteServiceConnection sharedInstance];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __146__DNDModeConfigurationService_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v23[3] = &unk_27843A0A8;
  v23[4] = &v30;
  v23[5] = &v24;
  [v18 setAppConfigurationTargetContentIdentifierPrefix:prefixCopy forActionIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withRequestDetails:v17 completionHandler:v23];

  v19 = DNDLogModeConfiguration;
  if (*(v31 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v36 = v17;
      v37 = 2114;
      v38 = prefixCopy;
      v39 = 2114;
      v40 = applicationIdentifierCopy;
      v41 = 2114;
      v42 = modeIdentifierCopy;
      _os_log_impl(&dword_22002F000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set target content identifier prefix, prefix=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppConfigurationTargetContentIdentifierPrefix:forActionIdentifier:forApplicationIdentifier:modeIdentifier:error:];
  }

  if (error)
  {
    v20 = v25[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  os_activity_scope_leave(&state);

  return v21 & 1;
}

void __146__DNDModeConfigurationService_setAppConfigurationTargetContentIdentifierPrefix_forActionIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationTargetContentIdentifierPrefixes", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__DNDModeConfigurationService_getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier_error___block_invoke;
  v15[3] = &unk_27843A688;
  v15[4] = &v22;
  v15[5] = &v16;
  [v9 getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:identifierCopy withRequestDetails:v8 completionHandler:v15];

  if (v23[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23[5], "count")}];
      *buf = 138543874;
      v30 = v8;
      v31 = 2112;
      v32 = v11;
      v33 = 2114;
      v34 = identifierCopy;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ target content identifier prefixes for modeIdentifier %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:error:];
  }

  if (error)
  {
    v12 = v17[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v13;
}

void __105__DNDModeConfigurationService_getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 appConfigurationTargetContentIdentifierPrefixesForModeIdentifier];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)setAppConfigurationAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v13, &v16);
  v14 = [[DNDAppAction alloc] initWithAction:actionCopy enabled:1];
  LOBYTE(error) = [(DNDModeConfigurationService *)self setAppAction:v14 forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy error:error];

  os_activity_scope_leave(&v16);
  return error;
}

- (BOOL)clearAppConfigurationActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearAppConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v13, &v15);
  LOBYTE(error) = [(DNDModeConfigurationService *)self clearAppActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy error:error];
  os_activity_scope_leave(&v15);

  return error;
}

- (id)getAppConfigurationActionsForModeIdentifier:(id)identifier error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v25 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppConfigurationActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v25, &state);
  v24 = identifierCopy;
  v7 = [(DNDModeConfigurationService *)self getAppActionsForModeIdentifier:identifierCopy error:error];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v26 = *v33;
    do
    {
      v27 = v10;
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v9 objectForKeyedSubscript:v12];
        v14 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v13, "count")}];
        [v8 setObject:v14 forKeyedSubscript:v12];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v16)
        {
          v17 = *v29;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              action = [v19 action];

              if (action)
              {
                v21 = [v8 objectForKeyedSubscript:v12];
                action2 = [v19 action];
                [v21 addObject:action2];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v10);
  }

  os_activity_scope_leave(&state);

  return v8;
}

- (BOOL)setAppAction:(id)action forApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setAppAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__DNDModeConfigurationService_setAppAction_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v20[3] = &unk_27843A0A8;
  v20[4] = &v27;
  v20[5] = &v21;
  [v15 setAppAction:actionCopy forApplicationIdentifier:identifierCopy modeIdentifier:modeIdentifierCopy withRequestDetails:v14 completionHandler:v20];

  v16 = DNDLogModeConfiguration;
  if (*(v28 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v33 = v14;
      v34 = 2114;
      v35 = actionCopy;
      v36 = 2114;
      v37 = modeIdentifierCopy;
      _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set app action, action=%{public}@; modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setAppAction:forApplicationIdentifier:modeIdentifier:error:];
  }

  if (error)
  {
    v17 = v22[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v28 + 24);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  os_activity_scope_leave(&state);

  return v18 & 1;
}

void __90__DNDModeConfigurationService_setAppAction_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)clearAppActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v13 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearAppAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);
  v14 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v15 = +[DNDRemoteServiceConnection sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__DNDModeConfigurationService_clearAppActionWithIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke;
  v20[3] = &unk_27843A0A8;
  v20[4] = &v27;
  v20[5] = &v21;
  [v15 clearAppActionWithIdentifier:identifierCopy forApplicationIdentifier:applicationIdentifierCopy modeIdentifier:modeIdentifierCopy withRequestDetails:v14 completionHandler:v20];

  v16 = DNDLogModeConfiguration;
  if (*(v28 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v33 = v14;
      v34 = 2114;
      v35 = identifierCopy;
      v36 = 2114;
      v37 = applicationIdentifierCopy;
      v38 = 2114;
      v39 = modeIdentifierCopy;
      _os_log_impl(&dword_22002F000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear app action, identifier=%{public}@ applicationIdentifier=%{public}@ modeIdentifier=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService clearAppActionWithIdentifier:forApplicationIdentifier:modeIdentifier:error:];
  }

  if (error)
  {
    v17 = v22[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v28 + 24);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  os_activity_scope_leave(&state);

  return v18 & 1;
}

void __106__DNDModeConfigurationService_clearAppActionWithIdentifier_forApplicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getAppActionsForModeIdentifier:(id)identifier error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getAppActionsForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__DNDModeConfigurationService_getAppActionsForModeIdentifier_error___block_invoke;
  v16[3] = &unk_27843A6B0;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 getAppActionsForModeIdentifier:identifierCopy withRequestDetails:v8 completionHandler:v16];

  if (v24[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24[5], "count")}];
      v12 = v24[5];
      *buf = 138544130;
      v31 = v8;
      v32 = 2112;
      v33 = v11;
      v34 = 2114;
      v35 = identifierCopy;
      v36 = 2112;
      v37 = v12;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ app actions for modeIdentifier %{public}@. actions = %@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getAppActionsForModeIdentifier:error:];
  }

  if (error)
  {
    v13 = v18[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v14;
}

void __68__DNDModeConfigurationService_getAppActionsForModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 appActionsForModeIdentifier];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)resetAppConfigurationState
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.resetAppConfigurationState", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = +[DNDRemoteServiceConnection sharedInstance];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__DNDModeConfigurationService_resetAppConfigurationState__block_invoke;
  v9[3] = &unk_27843A6D8;
  v9[4] = &v10;
  [v5 resetAppConfigurationStateWithRequestDetails:v4 completionHandler:v9];

  v6 = DNDLogModeConfiguration;
  if (*(v11 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Reset app configuration state", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [(DNDModeConfigurationService *)v4 resetAppConfigurationState];
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  os_activity_scope_leave(&state);
  return v7 & 1;
}

void *__57__DNDModeConfigurationService_resetAppConfigurationState__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 BOOLValue];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)setSystemAction:(id)action forModeIdentifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  identifierCopy = identifier;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSystemAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__DNDModeConfigurationService_setSystemAction_forModeIdentifier_error___block_invoke;
  v17[3] = &unk_27843A0A8;
  v17[4] = &v24;
  v17[5] = &v18;
  [v12 setSystemAction:actionCopy forModeIdentifier:identifierCopy withRequestDetails:v11 completionHandler:v17];

  v13 = DNDLogModeConfiguration;
  if (*(v25 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = v11;
      v31 = 2114;
      v32 = actionCopy;
      v33 = 2114;
      v34 = identifierCopy;
      _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set system action, action=%{public}@; modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setSystemAction:forModeIdentifier:error:];
  }

  if (error)
  {
    v14 = v19[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  os_activity_scope_leave(&state);

  return v15 & 1;
}

void __71__DNDModeConfigurationService_setSystemAction_forModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)clearSystemActionWithIdentifier:(id)identifier forModeIdentifier:(id)modeIdentifier error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearSystemAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__DNDModeConfigurationService_clearSystemActionWithIdentifier_forModeIdentifier_error___block_invoke;
  v17[3] = &unk_27843A0A8;
  v17[4] = &v24;
  v17[5] = &v18;
  [v12 clearSystemActionWithIdentifier:identifierCopy forModeIdentifier:modeIdentifierCopy withRequestDetails:v11 completionHandler:v17];

  v13 = DNDLogModeConfiguration;
  if (*(v25 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = v11;
      v31 = 2114;
      v32 = identifierCopy;
      v33 = 2114;
      v34 = modeIdentifierCopy;
      _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clear system action, identifier=%{public}@ modeIdentifier=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService clearSystemActionWithIdentifier:forModeIdentifier:error:];
  }

  if (error)
  {
    v14 = v19[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v25 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  os_activity_scope_leave(&state);

  return v15 & 1;
}

void __87__DNDModeConfigurationService_clearSystemActionWithIdentifier_forModeIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)getSystemActionsForModeIdentifier:(id)identifier error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSystemActionsForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__3;
  v20 = __Block_byref_object_dispose__3;
  v21 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__DNDModeConfigurationService_getSystemActionsForModeIdentifier_error___block_invoke;
  v15[3] = &unk_27843A700;
  v15[4] = &v22;
  v15[5] = &v16;
  [v9 getSystemActionsForModeIdentifier:identifierCopy withRequestDetails:v8 completionHandler:v15];

  if (v23[5])
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23[5], "count")}];
      *buf = 138543874;
      v30 = v8;
      v31 = 2112;
      v32 = v11;
      v33 = 2114;
      v34 = identifierCopy;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got %@ system actions for modeIdentifier %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService getSystemActionsForModeIdentifier:error:];
  }

  if (error)
  {
    v12 = v17[5];
    if (v12)
    {
      *error = v12;
    }
  }

  v13 = v23[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  os_activity_scope_leave(&state);

  return v13;
}

void __71__DNDModeConfigurationService_getSystemActionsForModeIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (BOOL)setSystemConfigurationAction:(id)action modeIdentifier:(id)identifier error:(id *)error
{
  actionCopy = action;
  identifierCopy = identifier;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSystemConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v10, &v13);
  v11 = [[DNDSystemAction alloc] initWithAction:actionCopy enabled:1];
  LOBYTE(error) = [(DNDModeConfigurationService *)self setSystemAction:v11 forModeIdentifier:identifierCopy error:error];

  os_activity_scope_leave(&v13);
  return error;
}

- (BOOL)clearSystemConfigurationActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v10 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.clearSystemConfigurationAction", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v10, &v12);
  LOBYTE(error) = [(DNDModeConfigurationService *)self clearSystemActionWithIdentifier:identifierCopy forModeIdentifier:modeIdentifierCopy error:error];
  os_activity_scope_leave(&v12);

  return error;
}

- (id)getSystemConfigurationActionsForModeIdentifier:(id)identifier error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSystemConfigurationActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [(DNDModeConfigurationService *)self getSystemActionsForModeIdentifier:identifierCopy error:error];
  v9 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v8, "count")}];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        action = [v14 action];

        if (action)
        {
          action2 = [v14 action];
          [v9 addObject:action2];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }

  os_activity_scope_leave(&state);

  return v9;
}

- (BOOL)getSyncPreferenceEnabledReturningError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncPreferenceEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__DNDModeConfigurationService_getSyncPreferenceEnabledReturningError___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v21;
  v14[5] = &v15;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v14];

  v8 = v16;
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
      v8 = v16;
    }
  }

  if (v8[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService getSyncPreferenceEnabledReturningError:];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v22 + 24)];
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync preference enabled=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __70__DNDModeConfigurationService_getSyncPreferenceEnabledReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue] & 1;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)getSyncAvailableReturningError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncAvailable", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__DNDModeConfigurationService_getSyncAvailableReturningError___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v21;
  v14[5] = &v15;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v14];

  v8 = v16;
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
      v8 = v16;
    }
  }

  if (v8[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService getSyncAvailableReturningError:];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v22 + 24)];
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync available=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __62__DNDModeConfigurationService_getSyncAvailableReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = (~[a2 unsignedIntegerValue] & 0xE) == 0;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)getSyncEnabledReturningError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.getSyncEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v20 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__DNDModeConfigurationService_getSyncEnabledReturningError___block_invoke;
  v14[3] = &unk_27843A0A8;
  v14[4] = &v21;
  v14[5] = &v15;
  [v7 getCloudSyncStateWithRequestDetails:v6 completionHandler:v14];

  v8 = v16;
  if (error)
  {
    v9 = v16[5];
    if (v9)
    {
      *error = v9;
      v8 = v16;
    }
  }

  if (v8[5])
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService getSyncEnabledReturningError:];
    }
  }

  else
  {
    v10 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v22 + 24)];
      *buf = 138543618;
      v27 = v6;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_22002F000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got sync enabled=%{public}@", buf, 0x16u);
    }
  }

  v12 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  os_activity_scope_leave(&state);

  return v12 & 1;
}

void __60__DNDModeConfigurationService_getSyncEnabledReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 unsignedIntegerValue] & 1;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)setSyncPreferenceEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  v32 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.setSyncPreferenceEnabled", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__DNDModeConfigurationService_setSyncPreferenceEnabled_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setCloudSyncPreferenceEnabled:v10 withRequestDetails:v8 completionHandler:v16];

  if (error)
  {
    v11 = v18[5];
    if (v11)
    {
      *error = v11;
    }
  }

  if (*(v24 + 24) == 1)
  {
    v12 = DNDLogModeConfiguration;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v13;
      _os_log_impl(&dword_22002F000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set sync preference enabled=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
  {
    [DNDModeConfigurationService setSyncPreferenceEnabled:error:];
  }

  v14 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v14 & 1;
}

void __62__DNDModeConfigurationService_setSyncPreferenceEnabled_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)addListener:(id)listener withCompletionHandler:(id)handler
{
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke;
  v13[3] = &unk_27843A728;
  v14 = v8;
  v15 = listenerCopy;
  selfCopy = self;
  v17 = handlerCopy;
  v10 = handlerCopy;
  v11 = listenerCopy;
  v12 = v8;
  dispatch_sync(queue, v13);

  os_activity_scope_leave(&state);
}

void __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v14 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Adding update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 48) + 24) addObject:*(a1 + 40)];
  v4 = [*(a1 + 48) _queue_registerForUpdatesIfRequired];
  v5 = DNDLogModeConfiguration;
  if (v4)
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "Registered for updates: listener=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 40), v5);
    }

    [*(*(a1 + 48) + 24) removeObject:*(a1 + 40)];
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(*(a1 + 48) + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_56;
    v9[3] = &unk_27843A1C0;
    v10 = v7;
    v11 = v4;
    dispatch_async(v8, v9);
  }

  os_activity_scope_leave(&state);
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__DNDModeConfigurationService_removeListener___block_invoke;
  block[3] = &unk_27843A210;
  v10 = v5;
  v11 = listenerCopy;
  selfCopy = self;
  v7 = listenerCopy;
  v8 = v5;
  dispatch_sync(queue, block);

  os_activity_scope_leave(&state);
}

void __46__DNDModeConfigurationService_removeListener___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v4);
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "Removing update listener: listener=%{public}@", buf, 0xCu);
  }

  [*(*(a1 + 48) + 24) removeObject:*(a1 + 40)];
  os_activity_scope_leave(&v4);
}

- (void)remoteService:(id)service didReceiveUpdatedAvailableModeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = identifiersCopy;
  selfCopy = self;
  v7 = identifiersCopy;
  dispatch_sync(queue, v8);
}

void __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke(int8x16_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "received updated available mode identifiers: identifiers=%{public}@", buf, 0xCu);
  }

  v4 = [*(a1[2].i64[1] + 24) copy];
  v5 = *(a1[2].i64[1] + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke_57;
  block[3] = &unk_27843A210;
  v10 = v4;
  v8 = a1[2];
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v7 = v4;
  dispatch_async(v5, block);
}

void __87__DNDModeConfigurationService_remoteService_didReceiveUpdatedAvailableModeIdentifiers___block_invoke_57(uint64_t a1)
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
          [v7 modeConfigurationService:*(a1 + 40) didReceiveAvailableModesUpdate:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)remoteService:(id)service didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke;
  v8[3] = &unk_27843A1E8;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  dispatch_sync(queue, v8);
}

void __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke(int8x16_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[2].i64[0];
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_22002F000, v2, OS_LOG_TYPE_DEFAULT, "received updated app configuration context for mode identifier: identifier=%{public}@", buf, 0xCu);
  }

  v4 = [*(a1[2].i64[1] + 24) copy];
  v5 = *(a1[2].i64[1] + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke_58;
  block[3] = &unk_27843A210;
  v10 = v4;
  v8 = a1[2];
  v6 = v8.i64[0];
  v11 = vextq_s8(v8, v8, 8uLL);
  v7 = v4;
  dispatch_async(v5, block);
}

void __102__DNDModeConfigurationService_remoteService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke_58(uint64_t a1)
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
          [v7 modeConfigurationService:*(a1 + 40) didReceiveAppConfigurationContextUpdateForModeIdentifier:{*(a1 + 48), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)syncModeConfigurationsReturningError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.syncModeConfigurations", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v7 = +[DNDRemoteServiceConnection sharedInstance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__DNDModeConfigurationService_syncModeConfigurationsReturningError___block_invoke;
  v12[3] = &unk_27843A0A8;
  v12[4] = &v19;
  v12[5] = &v13;
  [v7 syncModeConfigurationsWithRequestDetails:v6 completionHandler:v12];

  if (error)
  {
    v8 = v14[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v6;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Synced mode configurations", buf, 0xCu);
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  return v10 & 1;
}

void __68__DNDModeConfigurationService_syncModeConfigurationsReturningError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)createDefaultDrivingModeConfigurationWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultDrivingModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Driving mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.donotdisturb.mode.driving" withRequestDetails:v6 error:error];

  os_activity_scope_leave(&v10);

  return v8;
}

- (id)createDefaultSleepingModeConfigurationWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultSleepingModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Sleeping mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.sleep.sleep-mode" withRequestDetails:v6 error:error];

  os_activity_scope_leave(&v10);

  return v8;
}

- (id)createDefaultWorkoutModeConfigurationWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createDefaultWorkoutModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v5, &v10);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating Workout mode configuration from template", buf, 0xCu);
  }

  v8 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:@"com.apple.donotdisturb.mode.workout" withRequestDetails:v6 error:error];

  os_activity_scope_leave(&v10);

  return v8;
}

- (id)createModeConfigurationUsingTemplateForModeIdentifier:(id)identifier error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createModeConfigurationUsingTemplateForModeIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v7, &v12);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogSettings;
  if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = identifierCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating mode configuration from template for identifier: identifier=%{pubic}@", buf, 0x16u);
  }

  v10 = [(DNDModeConfigurationService *)self _createDefaultModeConfigurationForIdentifier:identifierCopy withRequestDetails:v8 error:error];

  os_activity_scope_leave(&v12);

  return v10;
}

- (id)createEmptyModeConfigurationForMode:(id)mode error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.createEmptyModeConfigurationForMode", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v7, &v13);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogSettings;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    modeIdentifier = [modeCopy modeIdentifier];
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = modeIdentifier;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating mode configuration from template for identifier: identifier=%{pubic}@", buf, 0x16u);
  }

  v11 = [(DNDModeConfigurationService *)self _createEmptyModeConfigurationForMode:modeCopy withRequestDetails:v8 error:error];

  os_activity_scope_leave(&v13);

  return v11;
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = DNDModeConfigurationService;
  v5 = [(DNDModeConfigurationService *)&v18 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.donotdisturb.DNDModeConfigurationService.call-out", v11);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v5->_listeners;
    v5->_listeners = v14;

    v16 = +[DNDRemoteServiceConnection sharedInstance];
    [v16 addEventListener:v5];
  }

  return v5;
}

- (BOOL)removeModeConfigurationForModeIdentifier:(id)identifier deletePlaceholder:(BOOL)placeholder error:(id *)error
{
  placeholderCopy = placeholder;
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.removeModeConfiguration", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  if ([(DNDModeConfigurationService *)self canRemoveModeConfigurationForModeIdentifier:identifierCopy])
  {
    v11 = +[DNDRemoteServiceConnection sharedInstance];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:placeholderCopy];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __96__DNDModeConfigurationService_removeModeConfigurationForModeIdentifier_deletePlaceholder_error___block_invoke;
    v18[3] = &unk_27843A0A8;
    v18[4] = &v25;
    v18[5] = &v19;
    [v11 removeModeConfigurationForModeIdentifier:identifierCopy deletePlaceholder:v12 withRequestDetails:v10 completionHandler:v18];

    v13 = DNDLogModeConfiguration;
    if (*(v26 + 24) == 1)
    {
      if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = v10;
        v32 = 2114;
        v33 = identifierCopy;
        _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remove mode configuration, identifier=%{public}@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService removeModeConfigurationForModeIdentifier:deletePlaceholder:error:];
    }

    if (error)
    {
      v15 = v20[5];
      if (v15)
      {
        *error = v15;
      }
    }
  }

  else
  {
    *(v26 + 24) = 0;
    v14 = DNDLogModeConfiguration;
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService removeModeConfigurationForModeIdentifier:v10 deletePlaceholder:identifierCopy error:v14];
    }
  }

  v16 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  os_activity_scope_leave(&state);

  return v16 & 1;
}

void __96__DNDModeConfigurationService_removeModeConfigurationForModeIdentifier_deletePlaceholder_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)_queue_registerForUpdatesIfRequired
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeConfigurationService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogSettings;
    if (os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_DEFAULT))
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
    v17 = __Block_byref_object_copy__3;
    v18 = __Block_byref_object_dispose__3;
    v19 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__DNDModeConfigurationService__queue_registerForUpdatesIfRequired__block_invoke;
    v9[3] = &unk_27843A750;
    v9[4] = &v10;
    v9[5] = &buf;
    [v6 registerForModeSelectionUpdatesWithRequestDetails:v4 completionHandler:v9];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogSettings, OS_LOG_TYPE_ERROR))
    {
      [DNDModeConfigurationService _queue_registerForUpdatesIfRequired];
    }

    self->_registeredForUpdates = *(v11 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
  }

  return ![(NSHashTable *)self->_listeners count]|| self->_registeredForUpdates;
}

void __66__DNDModeConfigurationService__queue_registerForUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (unint64_t)_defaultConfigurationTypeForModeSemanticType:(int64_t)type
{
  if (type > 9)
  {
    return 2;
  }

  else
  {
    return qword_22007C5E8[type];
  }
}

- (id)_createDefaultModeConfigurationForIdentifier:(id)identifier withRequestDetails:(id)details error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  detailsCopy = details;
  v10 = [(DNDModeConfigurationService *)self allModesReturningError:error];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __101__DNDModeConfigurationService__createDefaultModeConfigurationForIdentifier_withRequestDetails_error___block_invoke;
  v27[3] = &unk_27843A778;
  v11 = identifierCopy;
  v28 = v11;
  v29 = &v37;
  v30 = &v31;
  [v10 enumerateObjectsUsingBlock:v27];
  if ((v38[3] & 1) == 0)
  {
    if (v32[5])
    {
      if ([v11 isEqualToString:@"com.apple.focus.reduce-interruptions"])
      {
        v15 = +[(DNDModeConfiguration *)DNDMutableModeConfiguration];
        v16 = [v15 mutableCopy];
        v13 = 0;
      }

      else
      {
        v19 = [DNDMode alloc];
        name = [v32[5] name];
        modeIdentifier = [v32[5] modeIdentifier];
        symbolImageName = [v32[5] symbolImageName];
        tintColorName = [v32[5] tintColorName];
        v13 = -[DNDMode initWithName:modeIdentifier:symbolImageName:tintColorName:semanticType:](v19, "initWithName:modeIdentifier:symbolImageName:tintColorName:semanticType:", name, modeIdentifier, symbolImageName, tintColorName, [v32[5] semanticType]);

        v15 = [(DNDModeConfigurationService *)self _createModeSpecificConfigurationForModeSemanticType:[(DNDMode *)v13 semanticType] withIdentifier:v11];
        v24 = [(DNDModeConfigurationService *)self _createTriggersForFocusWithIdentifier:v11];
        v25 = [(DNDModeConfiguration *)[DNDMutableModeConfiguration alloc] initWithMode:v13 configuration:v15 triggers:v24];
        v16 = [(DNDModeConfigurationService *)self _setModeConfigurationDefaultsForModeConfiguration:v25 withIdentifier:v11];
      }

      if ([(DNDModeConfigurationService *)self setModeConfiguration:v16 error:error])
      {
        v18 = [v16 copy];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_16;
    }

    if (error)
    {
      v17 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"No template found for mode identifier.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v14 = [v17 errorWithDomain:@"DNDErrorDomain" code:1002 userInfo:v13];
      goto LABEL_9;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_17;
  }

  if (!error)
  {
    goto LABEL_10;
  }

  v12 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42 = @"Mode configuration already exists for mode identifier.";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v14 = [v12 errorWithDomain:@"DNDErrorDomain" code:1001 userInfo:v13];
LABEL_9:
  v18 = 0;
  *error = v14;
LABEL_16:

LABEL_17:
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v18;
}

void __101__DNDModeConfigurationService__createDefaultModeConfigurationForIdentifier_withRequestDetails_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 modeIdentifier];
  v7 = [v6 isEqualToString:a1[4]];

  if (v7)
  {
    *(*(a1[5] + 8) + 24) = [v8 isPlaceholder] ^ 1;
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)_createModeSpecificConfigurationForModeSemanticType:(int64_t)type withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [DNDMutableConfiguration configurationOfType:[(DNDModeConfigurationService *)self _defaultConfigurationTypeForModeSemanticType:type]];
  if ([identifierCopy isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    [v7 setHideApplicationBadges:2];
  }

  else if ([identifierCopy isEqualToString:@"com.apple.focus.reduce-interruptions"])
  {
    v8 = +[DNDModeConfiguration defaultReduceInterruptionsMode];
    v9 = [v8 mutableCopy];

    v7 = v9;
  }

  return v7;
}

- (id)_createTriggersForFocusWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  if ([identifierCopy isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    v5 = DNDModeConfigurationSleepingTrigger;
LABEL_11:
    v6 = objc_alloc_init(v5);
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"com.apple.donotdisturb.mode.driving"])
  {
    v5 = DNDModeConfigurationDrivingTrigger;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"com.apple.donotdisturb.mode.workout"])
  {
    v5 = DNDModeConfigurationWorkoutTrigger;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"com.apple.focus.gaming"])
  {
    v5 = DNDModeConfigurationGameControllerTrigger;
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:@"com.apple.focus.mindfulness"])
  {
    v5 = DNDModeConfigurationMindfulnessTrigger;
    goto LABEL_11;
  }

  v6 = [(DNDModeConfigurationTrigger *)[DNDModeConfigurationSmartTrigger alloc] initWithEnabledSetting:1];
LABEL_12:
  v7 = v6;
  [array addObject:v6];

  return array;
}

- (id)_setModeConfigurationDefaultsForModeConfiguration:(id)configuration withIdentifier:(id)identifier
{
  configurationCopy = configuration;
  if ([identifier isEqualToString:@"com.apple.sleep.sleep-mode"])
  {
    [configurationCopy setDimsLockScreen:2];
  }

  [configurationCopy setAutomaticallyGenerated:1];

  return configurationCopy;
}

- (id)_createEmptyModeConfigurationForMode:(id)mode withRequestDetails:(id)details error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  detailsCopy = details;
  v10 = [(DNDModeConfigurationService *)self allModesReturningError:error];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __93__DNDModeConfigurationService__createEmptyModeConfigurationForMode_withRequestDetails_error___block_invoke;
  v19[3] = &unk_27843A7A0;
  v11 = modeCopy;
  v20 = v11;
  v21 = &v22;
  [v10 enumerateObjectsUsingBlock:v19];
  if ((v23[3] & 1) == 0)
  {
    v13 = [DNDMutableConfiguration configurationOfType:2];
    array = [MEMORY[0x277CBEB18] array];
    v16 = [(DNDModeConfigurationTrigger *)[DNDModeConfigurationSmartTrigger alloc] initWithEnabledSetting:1];
    [array addObject:v16];

    v17 = [(DNDModeConfiguration *)[DNDMutableModeConfiguration alloc] initWithMode:v11 configuration:v13 triggers:array];
    [(DNDMutableModeConfiguration *)v17 setAutomaticallyGenerated:1];
    if ([(DNDModeConfigurationService *)self setModeConfiguration:v17 error:error])
    {
      v14 = [(DNDMutableModeConfiguration *)v17 copy];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v27[0] = @"Mode configuration already exists for mode identifier.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v12 errorWithDomain:@"DNDErrorDomain" code:1001 userInfo:v13];
    *error = v14 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v14 = 0;
LABEL_9:

  _Block_object_dispose(&v22, 8);

  return v14;
}

void __93__DNDModeConfigurationService__createEmptyModeConfigurationForMode_withRequestDetails_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 modeIdentifier];
  v6 = [*(a1 + 32) modeIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 isPlaceholder] ^ 1;
    *a3 = 1;
  }
}

- (void)hasActivelyConfiguredModes:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error determining if modes have been actively configured, error='%{public}@'");
}

- (void)setModeConfiguration:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting mode configuration, error='%{public}@'");
}

- (void)modeConfigurationsReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting mode configurations, error='%{public}@'");
}

- (void)isLocalUserAvailableForContactInActiveMode:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting user availability in current mode for contact, error='%{public}@'");
}

- (void)allowedModesForContactHandle:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting allowed modes for contact, error='%{public}@'");
}

- (void)silencedModesForContactHandle:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting silenced modes for contact, error='%{public}@'");
}

- (void)publishCurrentStatusKitAvailabilityReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when publishing statuskit availability, error='%{public}@'");
}

- (void)setAppConfigurationPredicate:forActionIdentifier:forApplicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting app configuration predicate, error='%{public}@'");
}

- (void)getAppConfigurationPredicateForActionIdentifier:forApplicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting app configuration predicate, error='%{public}@'");
}

- (void)setAppConfigurationTargetContentIdentifierPrefix:forActionIdentifier:forApplicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting target content identifier prefix, error='%{public}@'");
}

- (void)getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting target content identifier prefixes, error='%{public}@'");
}

- (void)setAppAction:forApplicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting app configuration action, error='%{public}@'");
}

- (void)clearAppActionWithIdentifier:forApplicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when clearing app action, error='%{public}@'");
}

- (void)getAppActionsForModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting app actions, error='%{public}@'");
}

- (void)resetAppConfigurationState
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to reset app configuration state", &v2, 0xCu);
}

- (void)setSystemAction:forModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting system configuration action, error='%{public}@'");
}

- (void)clearSystemActionWithIdentifier:forModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when clearing system action, error='%{public}@'");
}

- (void)getSystemActionsForModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting system actions, error='%{public}@'");
}

- (void)getSyncPreferenceEnabledReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting sync preference enabled, error='%{public}@'");
}

- (void)getSyncAvailableReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting sync available, error='%{public}@'");
}

- (void)getSyncEnabledReturningError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when getting sync enabled, error='%{public}@'");
}

- (void)setSyncPreferenceEnabled:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when setting sync enabled, error='%{public}@'");
}

void __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_22002F000, a2, OS_LOG_TYPE_ERROR, "Did not register for updates, will remove listener: listener=%{public}@", &v3, 0xCu);
}

- (void)removeModeConfigurationForModeIdentifier:(uint64_t)a1 deletePlaceholder:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0(&dword_22002F000, a2, a3, "[%{public}@] Error mode configuration for identifier cannot be removed, identifier=%{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)removeModeConfigurationForModeIdentifier:deletePlaceholder:error:.cold.2()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when removing mode configuration, error='%{public}@'");
}

- (void)_queue_registerForUpdatesIfRequired
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0(&dword_22002F000, v0, v1, "[%{public}@] Error when registering update listener, error='%{public}@'");
}

@end