@interface DNDHearingTestService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)setHearingTestIsActive:(BOOL)active error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
@end

@implementation DNDHearingTestService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken_6 != -1)
  {
    +[DNDHearingTestService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue_6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__DNDHearingTestService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __52__DNDHearingTestService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDAppInfoService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue_6;
  serviceForClientIdentifier__lockQueue_6 = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier_6;
  serviceForClientIdentifier__serviceByClientIdentifier_6 = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __52__DNDHearingTestService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier_6 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier_6;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)setHearingTestIsActive:(BOOL)active error:(id *)error
{
  activeCopy = active;
  v34 = *MEMORY[0x277D85DE8];
  v7 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDHearingTestService.setHearingTestIsActive:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
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
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  v9 = +[DNDRemoteServiceConnection sharedInstance];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:activeCopy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__DNDHearingTestService_setHearingTestIsActive_error___block_invoke;
  v16[3] = &unk_27843A0A8;
  v16[4] = &v23;
  v16[5] = &v17;
  [v9 setHearingTestIsActive:v10 withRequestDetails:v8 completionHandler:v16];

  v11 = DNDLogHearingTest;
  if (*(v24 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogHearingTest, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = v8;
      v30 = 1024;
      LODWORD(v31) = activeCopy;
      _os_log_impl(&dword_22002F000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set hearing test state; isHearingTestActive=%d", buf, 0x12u);
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

  if (!os_log_type_enabled(DNDLogHearingTest, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v15 = v18[5];
  *buf = 138543874;
  v29 = v8;
  v30 = 2114;
  v31 = v15;
  v32 = 1024;
  v33 = activeCopy;
  _os_log_error_impl(&dword_22002F000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error when setting hearing test state; error='%{public}@' isHearingTestActive=%d", buf, 0x1Cu);
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  v12 = v18[5];
  if (v12)
  {
    *error = v12;
  }

LABEL_9:
  v13 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  os_activity_scope_leave(&state);

  return v13 & 1;
}

void __54__DNDHearingTestService_setHearingTestIsActive_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_initWithClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = DNDHearingTestService;
  v5 = [(DNDHearingTestService *)&v12 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDHearingTestService", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

@end