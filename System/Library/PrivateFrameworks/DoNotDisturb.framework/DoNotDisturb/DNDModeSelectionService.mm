@interface DNDModeSelectionService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)_queue_registerForUpdatesIfRequired;
- (BOOL)activateModeWithDetails:(id)details error:(id *)error;
- (BOOL)invalidateModeAssertionWithUUID:(id)d error:(id *)error;
- (BOOL)promotePlaceholderWithModeIdentifier:(id)identifier error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)activeModeAssertionWithError:(id *)error;
- (void)addListener:(id)listener withCompletionHandler:(id)handler;
- (void)remoteService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update;
- (void)remoteService:(id)service didReceiveUpdatedAvailableModes:(id)modes;
- (void)remoteService:(id)service didReceiveUpdatedModes:(id)modes;
- (void)removeListener:(id)listener;
@end

@implementation DNDModeSelectionService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_8 != -1)
  {
    +[DNDModeSelectionService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__8;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__DNDModeSelectionService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __54__DNDModeSelectionService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDModeSelectionService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_7;
  serviceForClientIdentifier__lockQueue_7 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_8;
  serviceForClientIdentifier__serviceByClientIdentifier_8 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __54__DNDModeSelectionService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_8 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_8;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = DNDModeSelectionService;
  v5 = [(DNDModeSelectionService *)&v20 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDModeSelectionService", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.donotdisturb.DNDModeSelectionService.call-out", v11);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    listeners = v5->_listeners;
    v5->_listeners = v14;

    v16 = [DNDModeConfigurationService serviceForClientIdentifier:identifierCopy];
    modeConfigurationService = v5->_modeConfigurationService;
    v5->_modeConfigurationService = v16;

    v18 = +[DNDRemoteServiceConnection sharedInstance];
    [v18 addEventListener:v5];
  }

  return v5;
}

- (BOOL)activateModeWithDetails:(id)details error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.activateModeWithIdentifier", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __57__DNDModeSelectionService_activateModeWithDetails_error___block_invoke;
  v20[3] = &unk_27843AB00;
  v10 = v7;
  v21 = v10;
  v22 = &v30;
  v23 = &v24;
  [v9 activateModeWithDetails:detailsCopy withRequestDetails:v8 completionHandler:v20];

  v11 = *(v31 + 24);
  v12 = DNDLogModeSelection;
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      modeIdentifier = [detailsCopy modeIdentifier];
      *buf = 138543618;
      v36 = v8;
      v37 = 2114;
      v38 = modeIdentifier;
      _os_log_impl(&dword_22002F000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Activate mode with identifier, modeIdentifier=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    modeIdentifier2 = [detailsCopy modeIdentifier];
    v19 = v25[5];
    *buf = 138543874;
    v36 = v8;
    v37 = 2114;
    v38 = modeIdentifier2;
    v39 = 2114;
    v40 = v19;
    _os_log_error_impl(&dword_22002F000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Error when setting mode with identifier, modeIdentifier=%{public}@ error='%{public}@'", buf, 0x20u);
  }

  if (error)
  {
    v15 = v25[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  os_activity_scope_leave(&state);
  return v16 & 1;
}

void __57__DNDModeSelectionService_activateModeWithDetails_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v9);
  *(*(*(a1 + 40) + 8) + 24) = [v5 BOOLValue];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  os_activity_scope_leave(&v9);
}

- (BOOL)invalidateModeAssertionWithUUID:(id)d error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.invalidateModeAssertionWithUUID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__DNDModeSelectionService_invalidateModeAssertionWithUUID_error___block_invoke;
  v16[3] = &unk_27843AB00;
  v10 = v7;
  v17 = v10;
  v18 = &v26;
  v19 = &v20;
  [v9 invalidateModeAssertionWithUUID:dCopy withRequestDetails:v8 completionHandler:v16];

  v11 = DNDLogModeSelection;
  if (*(v27 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v32 = v8;
      v33 = 2114;
      v34 = dCopy;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidate mode assertion with UUID, assertionUUID=%{public}@", buf, 0x16u);
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

  if (!os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v15 = v21[5];
  *buf = 138543874;
  v32 = v8;
  v33 = 2114;
  v34 = dCopy;
  v35 = 2114;
  v36 = v15;
  _os_log_error_impl(&dword_22002F000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error when invalidating mode assertion with UUID, assertionUUID=%{public}@ error='%{public}@'", buf, 0x20u);
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  v12 = v21[5];
  if (v12)
  {
    *error = v12;
  }

LABEL_9:
  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  os_activity_scope_leave(&state);
  return v13 & 1;
}

void __65__DNDModeSelectionService_invalidateModeAssertionWithUUID_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v9);
  *(*(*(a1 + 40) + 8) + 24) = [v5 BOOLValue];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  os_activity_scope_leave(&v9);
}

- (id)activeModeAssertionWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.activeModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeSelection;
  if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting active mode assertion; not restricted by client identifier", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__DNDModeSelectionService_activeModeAssertionWithError___block_invoke;
  v13[3] = &unk_27843AA10;
  v13[4] = &buf;
  v13[5] = &v14;
  [v8 activeModeAssertionWithRequestDetails:v6 completionHandler:v13];

  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_ERROR))
    {
      [DNDModeSelectionService activeModeAssertionWithError:];
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  v9 = DNDLogModeSelection;
  if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 40);
    *v21 = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got mode assertion, assertion=%{public}@", v21, 0x16u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&buf, 8);

  return v11;
}

void __56__DNDModeSelectionService_activeModeAssertionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)promotePlaceholderWithModeIdentifier:(id)identifier error:(id *)error
{
  v4 = [(DNDModeConfigurationService *)self->_modeConfigurationService createModeConfigurationUsingTemplateForModeIdentifier:identifier error:error];
  v5 = v4 != 0;

  return v5;
}

- (void)addListener:(id)listener withCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.addListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v9 = DNDLogModeSelection;
  if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = listenerCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "Adding update listener: listener=%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__DNDModeSelectionService_addListener_withCompletionHandler___block_invoke;
  v14[3] = &unk_27843AB50;
  v15 = v8;
  v11 = v8;
  objc_copyWeak(&v18, buf);
  v16 = listenerCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = listenerCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

void __61__DNDModeSelectionService_addListener_withCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = (a1 + 40);
    [WeakRetained[4] addObject:*(a1 + 40)];
    v5 = [v3 _queue_registerForUpdatesIfRequired];
    v6 = DNDLogModeSelection;
    if (v5)
    {
      if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *v4;
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Registered for updates: listener=%{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_ERROR))
      {
        __65__DNDModeConfigurationService_addListener_withCompletionHandler___block_invoke_cold_1((a1 + 40), v6);
      }

      [v3[4] removeObject:*v4];
    }

    if (*(a1 + 48))
    {
      v8 = v3[3];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__DNDModeSelectionService_addListener_withCompletionHandler___block_invoke_11;
      block[3] = &unk_27843AB28;
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = v5;
      dispatch_async(v8, block);
    }
  }

  os_activity_scope_leave(&state);
}

void __61__DNDModeSelectionService_addListener_withCompletionHandler___block_invoke_11(uint64_t a1)
{
  v2.opaque[0] = 0;
  v2.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v2);
  (*(*(a1 + 40) + 16))();
  os_activity_scope_leave(&v2);
}

- (void)removeListener:(id)listener
{
  v17 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.removeListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = DNDLogModeSelection;
  if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = listenerCopy;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "Removing update listener: listener=%{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__DNDModeSelectionService_removeListener___block_invoke;
  block[3] = &unk_27843AB78;
  v11 = v5;
  v8 = v5;
  objc_copyWeak(&v13, buf);
  v12 = listenerCopy;
  v9 = listenerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  os_activity_scope_leave(&state);
}

void __42__DNDModeSelectionService_removeListener___block_invoke(uint64_t a1)
{
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &v4);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] removeObject:*(a1 + 40)];
  }

  os_activity_scope_leave(&v4);
}

- (void)remoteService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update
{
  assertionCopy = assertion;
  updateCopy = update;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__DNDModeSelectionService_remoteService_didReceiveUpdatedActiveModeAssertion_stateUpdate___block_invoke;
  block[3] = &unk_27843A210;
  block[4] = self;
  v13 = assertionCopy;
  v14 = updateCopy;
  v10 = updateCopy;
  v11 = assertionCopy;
  dispatch_async(queue, block);
}

void __90__DNDModeSelectionService_remoteService_didReceiveUpdatedActiveModeAssertion_stateUpdate___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(v8 + 24);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __90__DNDModeSelectionService_remoteService_didReceiveUpdatedActiveModeAssertion_stateUpdate___block_invoke_2;
        v10[3] = &unk_27843ABA0;
        v10[4] = v7;
        v10[5] = v8;
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        dispatch_async(v9, v10);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t __90__DNDModeSelectionService_remoteService_didReceiveUpdatedActiveModeAssertion_stateUpdate___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];

    return [v3 modeSelectionService:v4 didReceiveUpdatedActiveModeAssertion:v5 stateUpdate:v6];
  }

  return result;
}

- (void)remoteService:(id)service didReceiveUpdatedModes:(id)modes
{
  modesCopy = modes;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DNDModeSelectionService_remoteService_didReceiveUpdatedModes___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = modesCopy;
  v7 = modesCopy;
  dispatch_async(queue, v8);
}

void __64__DNDModeSelectionService_remoteService_didReceiveUpdatedModes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(v8 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__DNDModeSelectionService_remoteService_didReceiveUpdatedModes___block_invoke_2;
        block[3] = &unk_27843A210;
        block[4] = v7;
        block[5] = v8;
        v11 = *(a1 + 40);
        dispatch_async(v9, block);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

uint64_t __64__DNDModeSelectionService_remoteService_didReceiveUpdatedModes___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 modeSelectionService:v4 didReceiveModesUpdate:v5];
  }

  return result;
}

- (void)remoteService:(id)service didReceiveUpdatedAvailableModes:(id)modes
{
  modesCopy = modes;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__DNDModeSelectionService_remoteService_didReceiveUpdatedAvailableModes___block_invoke;
  v8[3] = &unk_27843A1E8;
  v8[4] = self;
  v9 = modesCopy;
  v7 = modesCopy;
  dispatch_async(queue, v8);
}

void __73__DNDModeSelectionService_remoteService_didReceiveUpdatedAvailableModes___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        v9 = *(v8 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__DNDModeSelectionService_remoteService_didReceiveUpdatedAvailableModes___block_invoke_2;
        block[3] = &unk_27843A210;
        block[4] = v7;
        block[5] = v8;
        v11 = *(a1 + 40);
        dispatch_async(v9, block);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

uint64_t __73__DNDModeSelectionService_remoteService_didReceiveUpdatedAvailableModes___block_invoke_2(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 modeSelectionService:v4 didReceiveAvailableModesUpdate:v5];
  }

  return result;
}

- (BOOL)_queue_registerForUpdatesIfRequired
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSHashTable *)self->_listeners count]&& !self->_registeredForUpdates)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v3 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeSelectionService.registerForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);
    v4 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v5 = DNDLogModeSelection;
    if (os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_DEFAULT))
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
    v17 = __Block_byref_object_copy__8;
    v18 = __Block_byref_object_dispose__8;
    v19 = 0;
    v6 = +[DNDRemoteServiceConnection sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__DNDModeSelectionService__queue_registerForUpdatesIfRequired__block_invoke;
    v9[3] = &unk_27843A750;
    v9[4] = &v10;
    v9[5] = &buf;
    [v6 registerForModeSelectionUpdatesWithRequestDetails:v4 completionHandler:v9];

    if (*(*(&buf + 1) + 40) && os_log_type_enabled(DNDLogModeSelection, OS_LOG_TYPE_ERROR))
    {
      [DNDModeSelectionService _queue_registerForUpdatesIfRequired];
    }

    os_activity_scope_leave(&state);
    self->_registeredForUpdates = *(v11 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v10, 8);
  }

  return ![(NSHashTable *)self->_listeners count]|| self->_registeredForUpdates;
}

void __62__DNDModeSelectionService__queue_registerForUpdatesIfRequired__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end