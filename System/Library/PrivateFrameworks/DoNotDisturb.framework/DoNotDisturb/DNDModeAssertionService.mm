@interface DNDModeAssertionService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)invalidateAllActiveModeAssertionsWithError:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
- (id)activeModeAssertionWithError:(id *)error;
- (id)allModeAssertionsWithError:(id *)error;
- (id)invalidateActiveModeAssertionWithInvalidationDetails:(id)details reasonOverride:(unint64_t)override error:(id *)error;
- (id)latestModeAssertionInvalidationWithError:(id *)error;
- (id)takeModeAssertionWithDetails:(id)details error:(id *)error;
- (void)_handleChangeActiveModeAssertion:(id)assertion invalidation:(id)invalidation;
- (void)_registerForAssertionUpdatesIfRequiredWithCompletionHandler:(id)handler;
- (void)addAssertionUpdateListener:(id)listener withCompletionHandler:(id)handler;
- (void)remoteService:(id)service didChangeActiveModeAssertion:(id)assertion invalidation:(id)invalidation;
- (void)removeAssertionUpdateListener:(id)listener;
@end

@implementation DNDModeAssertionService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_7 != -1)
  {
    +[DNDModeAssertionService serviceForClientIdentifier:];
  }

  v5 = serviceForClientIdentifier__serviceByClientIdentifier_7;
  objc_sync_enter(v5);
  v6 = [serviceForClientIdentifier__serviceByClientIdentifier_7 objectForKey:identifierCopy];
  if (!v6)
  {
    v6 = [[self alloc] _initWithClientIdentifier:identifierCopy];
    [serviceForClientIdentifier__serviceByClientIdentifier_7 setObject:v6 forKey:identifierCopy];
  }

  objc_sync_exit(v5);

  return v6;
}

uint64_t __54__DNDModeAssertionService_serviceForClientIdentifier___block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v1 = serviceForClientIdentifier__serviceByClientIdentifier_7;
  serviceForClientIdentifier__serviceByClientIdentifier_7 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = DNDModeAssertionService;
  v5 = [(DNDModeAssertionService *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.donotdisturb.ModeAssertionService.call-out", v6);
    calloutQueue = v5->_calloutQueue;
    v5->_calloutQueue = v7;

    v9 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v9;

    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    assertionUpdateListeners = v5->_assertionUpdateListeners;
    v5->_assertionUpdateListeners = v11;

    v5->_activeAssertionLock._os_unfair_lock_opaque = 0;
    v13 = +[DNDRemoteServiceConnection sharedInstance];
    [v13 addEventListener:v5];
  }

  return v5;
}

- (id)takeModeAssertionWithDetails:(id)details error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.takeModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);
  v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = detailsCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Taking mode assertion; details=%{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v10 = +[DNDRemoteServiceConnection sharedInstance];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__DNDModeAssertionService_takeModeAssertionWithDetails_error___block_invoke;
  v15[3] = &unk_27843AA10;
  v15[4] = buf;
  v15[5] = &v16;
  [v10 takeModeAssertionWithDetails:detailsCopy requestDetails:v8 completionHandler:v15];

  if (v17[5])
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService takeModeAssertionWithDetails:error:];
    }

    if (error)
    {
      *error = v17[5];
    }
  }

  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*&buf[8] + 40);
    *v23 = 138543618;
    v24 = v8;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Took mode assertion, assertion=%{public}@", v23, 0x16u);
  }

  os_activity_scope_leave(&state);
  v13 = *(*&buf[8] + 40);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(buf, 8);

  return v13;
}

void __62__DNDModeAssertionService_takeModeAssertionWithDetails_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)invalidateActiveModeAssertionWithInvalidationDetails:(id)details reasonOverride:(unint64_t)override error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  detailsCopy = details;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.invalidateActiveModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);
  v10 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating active mode assertion", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__7;
  v33 = __Block_byref_object_dispose__7;
  v34 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v12 = +[DNDRemoteServiceConnection sharedInstance];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:override];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__DNDModeAssertionService_invalidateActiveModeAssertionWithInvalidationDetails_reasonOverride_error___block_invoke;
  v18[3] = &unk_27843AA38;
  v18[4] = &buf;
  v18[5] = &v19;
  [v12 invalidateActiveModeAssertionWithDetails:detailsCopy reasonOverride:v13 requestDetails:v10 completionHandler:v18];

  if (v20[5])
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService invalidateActiveModeAssertionWithInvalidationDetails:reasonOverride:error:];
    }

    if (error)
    {
      *error = v20[5];
    }
  }

  v14 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*(&buf + 1) + 40);
    *v26 = 138543618;
    v27 = v10;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_22002F000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated mode assertion, invalidation=%{public}@", v26, 0x16u);
  }

  os_activity_scope_leave(&state);
  v16 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&buf, 8);

  return v16;
}

void __101__DNDModeAssertionService_invalidateActiveModeAssertionWithInvalidationDetails_reasonOverride_error___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)activeModeAssertionWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.activeModeAssertion", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting active mode assertion", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__DNDModeAssertionService_activeModeAssertionWithError___block_invoke;
  v13[3] = &unk_27843AA10;
  v13[4] = &buf;
  v13[5] = &v14;
  [v8 getActiveModeAssertionWithRequestDetails:v6 completionHandler:v13];

  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService activeModeAssertionWithError:];
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
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

void __56__DNDModeAssertionService_activeModeAssertionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)latestModeAssertionInvalidationWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.latestModeAssertionInvalidation", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Getting latest mode assertion invalidation", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__DNDModeAssertionService_latestModeAssertionInvalidationWithError___block_invoke;
  v13[3] = &unk_27843AA38;
  v13[4] = &buf;
  v13[5] = &v14;
  [v8 getLatestModeAssertionInvalidationWithRequestDetails:v6 completionHandler:v13];

  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService latestModeAssertionInvalidationWithError:];
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(&buf + 1) + 40);
    *v21 = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Got invalidation, invalidation=%{public}@", v21, 0x16u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&buf, 8);

  return v11;
}

void __68__DNDModeAssertionService_latestModeAssertionInvalidationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (BOOL)invalidateAllActiveModeAssertionsWithError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.invalidateAllActiveModeAssertions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating all active mode assertions", &buf, 0xCu);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__DNDModeAssertionService_invalidateAllActiveModeAssertionsWithError___block_invoke;
  v13[3] = &unk_27843A0A8;
  v13[4] = &v14;
  v13[5] = &buf;
  [v8 invalidateAllActiveModeAssertionsWithRequestDetails:v6 completionHandler:v13];

  if (*(*(&buf + 1) + 40))
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService invalidateAllActiveModeAssertionsWithError:];
    }

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v15 + 24);
    *v19 = 138543618;
    v20 = v6;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidated all active mode assertions, success=%{BOOL}u", v19, 0x12u);
  }

  os_activity_scope_leave(&state);
  v11 = *(v15 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v14, 8);
  return v11 & 1;
}

void __70__DNDModeAssertionService_invalidateAllActiveModeAssertionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)allModeAssertionsWithError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.allModeAssertionsWithError", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);
  v6 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v7 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_22002F000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting all active mode assertions", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v8 = +[DNDRemoteServiceConnection sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__DNDModeAssertionService_allModeAssertionsWithError___block_invoke;
  v13[3] = &unk_27843AA60;
  v13[4] = &buf;
  v13[5] = &v14;
  [v8 getAllModeAssertionsWithRequestDetails:v6 completionHandler:v13];

  if (v15[5])
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      [DNDModeAssertionService allModeAssertionsWithError:];
    }

    if (error)
    {
      *error = v15[5];
    }
  }

  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v15[5] == 0;
    *v21 = 138543618;
    v22 = v6;
    v23 = 1024;
    v24 = v10;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested all active mode assertions, success=%{BOOL}u", v21, 0x12u);
  }

  os_activity_scope_leave(&state);
  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&buf, 8);

  return v11;
}

void __54__DNDModeAssertionService_allModeAssertionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)addAssertionUpdateListener:(id)listener withCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.addAssertionUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);
  v9 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138543618;
    v19 = clientIdentifier;
    v20 = 2114;
    v21 = listenerCopy;
    _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding assertion update listener: listener=%{public}@", buf, 0x16u);
  }

  v11 = self->_assertionUpdateListeners;
  objc_sync_enter(v11);
  [(NSHashTable *)self->_assertionUpdateListeners addObject:listenerCopy];
  objc_sync_exit(v11);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke;
  v14[3] = &unk_27843AAB0;
  v14[4] = self;
  v15 = listenerCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = listenerCopy;
  [(DNDModeAssertionService *)self _registerForAssertionUpdatesIfRequiredWithCompletionHandler:v14];
  os_activity_scope_leave(&state);
}

void __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke(void *a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DNDLogModeAssertion;
  if (a2)
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = *(a1[4] + 16);
      *buf = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registered for assertion updates: listener=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_ERROR))
    {
      __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke_cold_1();
    }

    v9 = *(a1[4] + 24);
    objc_sync_enter(v9);
    [*(a1[4] + 24) removeObject:a1[5]];
    objc_sync_exit(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = *(a1[4] + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__DNDModeAssertionService_addAssertionUpdateListener_withCompletionHandler___block_invoke_10;
    block[3] = &unk_27843AA88;
    v14 = v10;
    v15 = a2;
    v13 = v5;
    dispatch_async(v11, block);
  }
}

- (void)removeAssertionUpdateListener:(id)listener
{
  v14 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  v5 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.removeAssertionUpdateListener", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &v9);
  v6 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138543618;
    v11 = clientIdentifier;
    v12 = 2114;
    v13 = listenerCopy;
    _os_log_impl(&dword_22002F000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Removing assertion update listener: listener=%{public}@", buf, 0x16u);
  }

  v8 = self->_assertionUpdateListeners;
  objc_sync_enter(v8);
  [(NSHashTable *)self->_assertionUpdateListeners removeObject:listenerCopy, v9.opaque[0], v9.opaque[1]];
  objc_sync_exit(v8);

  os_activity_scope_leave(&v9);
}

- (void)remoteService:(id)service didChangeActiveModeAssertion:(id)assertion invalidation:(id)invalidation
{
  v21 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  assertionCopy = assertion;
  invalidationCopy = invalidation;
  v11 = DNDLogModeAssertion;
  if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    v13 = 138544130;
    v14 = clientIdentifier;
    v15 = 2114;
    v16 = serviceCopy;
    v17 = 2114;
    v18 = assertionCopy;
    v19 = 2114;
    v20 = invalidationCopy;
    _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Remote service got assertion change: service=%{public}@, assertion=%{public}@, invalidation=%{public}@", &v13, 0x2Au);
  }

  [(DNDModeAssertionService *)self _handleChangeActiveModeAssertion:assertionCopy invalidation:invalidationCopy];
}

- (void)_handleChangeActiveModeAssertion:(id)assertion invalidation:(id)invalidation
{
  assertionCopy = assertion;
  invalidationCopy = invalidation;
  os_unfair_lock_lock(&self->_activeAssertionLock);
  objc_storeStrong(&self->_activeAssertion, assertion);
  os_unfair_lock_unlock(&self->_activeAssertionLock);
  calloutQueue = self->_calloutQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__DNDModeAssertionService__handleChangeActiveModeAssertion_invalidation___block_invoke;
  block[3] = &unk_27843A210;
  block[4] = self;
  v13 = invalidationCopy;
  v14 = assertionCopy;
  v10 = assertionCopy;
  v11 = invalidationCopy;
  dispatch_async(calloutQueue, block);
}

void __73__DNDModeAssertionService__handleChangeActiveModeAssertion_invalidation___block_invoke(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(a1[4] + 24);
  objc_sync_enter(v2);
  v3 = [*(a1[4] + 24) allObjects];
  objc_sync_exit(v2);

  if (a1[5])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v40 count:16];
    if (v6)
    {
      v8 = *v30;
      *&v7 = 138543874;
      v23 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            v11 = DNDLogModeAssertion;
            if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
            {
              v12 = a1[5];
              v13 = *(a1[4] + 16);
              *buf = v23;
              v35 = v13;
              v36 = 2114;
              v37 = v12;
              v38 = 2114;
              v39 = v10;
              _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will deliver assertion invalidation to listener: invalidation=%{public}@, listener=%{public}@", buf, 0x20u);
            }

            [v10 modeAssertionService:a1[4] didReceiveModeAssertionInvalidation:{a1[5], v23}];
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v5 countByEnumeratingWithState:&v29 objects:v40 count:16];
      }

      while (v6);
    }

    v3 = v4;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v15)
  {
    v17 = *v26;
    *&v16 = 138543874;
    v24 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          v20 = DNDLogModeAssertion;
          if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1[4] + 16);
            v22 = a1[6];
            *buf = v24;
            v35 = v21;
            v36 = 2114;
            v37 = v22;
            v38 = 2114;
            v39 = v19;
            _os_log_impl(&dword_22002F000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will deliver assertion change to listener: assertion=%{public}@, listener=%{public}@", buf, 0x20u);
          }

          [v19 modeAssertionService:a1[4] didUpdateActiveModeAssertion:{a1[6], v24, v25}];
        }

        ++v18;
      }

      while (v15 != v18);
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }
}

- (void)_registerForAssertionUpdatesIfRequiredWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = self->_assertionUpdateListeners;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_assertionUpdateListeners count];
  objc_sync_exit(v5);

  if (!v6 || (atomic_exchange(&self->_registeredForUpdates._Value, 1u) & 1) != 0)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDModeAssertionService.registerForAssertionUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);
    v8 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
    v9 = DNDLogModeAssertion;
    if (os_log_type_enabled(DNDLogModeAssertion, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_22002F000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering assertion update listener", buf, 0xCu);
    }

    v10 = +[DNDRemoteServiceConnection sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__DNDModeAssertionService__registerForAssertionUpdatesIfRequiredWithCompletionHandler___block_invoke;
    v11[3] = &unk_27843AAD8;
    v11[4] = self;
    v12 = handlerCopy;
    [v10 registerForAssertionUpdatesWithRequestDetails:v8 completionHandler:v11];

    os_activity_scope_leave(&state);
  }
}

void __87__DNDModeAssertionService__registerForAssertionUpdatesIfRequiredWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v12 BOOLValue];
  v7 = *(a1 + 32);
  if (v6)
  {
    os_unfair_lock_lock((v7 + 48));
    v8 = *(a1 + 32);
    if (!*(v8 + 40) && (*(v8 + 52) & 1) == 0)
    {
      v9 = [v8 activeModeAssertionWithError:0];
      v10 = *(a1 + 32);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *(*(a1 + 32) + 52) = 1;
      v8 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v8 + 48));
  }

  else
  {
    atomic_store(0, (v7 + 32));
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [v12 BOOLValue], v5);
}

- (void)takeModeAssertionWithDetails:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)invalidateActiveModeAssertionWithInvalidationDetails:reasonOverride:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)activeModeAssertionWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)latestModeAssertionInvalidationWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)invalidateAllActiveModeAssertionsWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)allModeAssertionsWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end