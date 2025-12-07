@interface DNDAuxiliaryStateService
+ (id)serviceForClientIdentifier:(id)identifier;
- (BOOL)setScreenIsShared:(BOOL)shared screenIsMirrored:(BOOL)mirrored error:(id *)error;
- (id)_initWithClientIdentifier:(id)identifier;
@end

@implementation DNDAuxiliaryStateService

+ (id)serviceForClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (serviceForClientIdentifier__onceToken != -1)
  {
    +[DNDAuxiliaryStateService serviceForClientIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = serviceForClientIdentifier__lockQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__DNDAuxiliaryStateService_serviceForClientIdentifier___block_invoke_2;
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

uint64_t __55__DNDAuxiliaryStateService_serviceForClientIdentifier___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.donotdisturb.DNDAppInfoService.service.lock", v0);
  v2 = serviceForClientIdentifier__lockQueue;
  serviceForClientIdentifier__lockQueue = v1;

  v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:517];
  v4 = serviceForClientIdentifier__serviceByClientIdentifier;
  serviceForClientIdentifier__serviceByClientIdentifier = v3;

  return MEMORY[0x2821F96F8](v3, v4);
}

void __55__DNDAuxiliaryStateService_serviceForClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [serviceForClientIdentifier__serviceByClientIdentifier objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_alloc(*(a1 + 48)) _initWithClientIdentifier:*(a1 + 32)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = serviceForClientIdentifier__serviceByClientIdentifier;
    v9 = *(a1 + 32);
    v10 = *(*(*(a1 + 40) + 8) + 40);

    [v8 setObject:v10 forKey:v9];
  }
}

- (BOOL)setScreenIsShared:(BOOL)shared screenIsMirrored:(BOOL)mirrored error:(id *)error
{
  mirroredCopy = mirrored;
  sharedCopy = shared;
  v38 = *MEMORY[0x277D85DE8];
  v9 = _os_activity_create(&dword_22002F000, "com.apple.donotdisturb.DNDAuxiliaryStateService.setScreenIsShared:screenIsMirrored:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  v10 = [DNDRequestDetails detailsRepresentingNowWithClientIdentifier:self->_clientIdentifier];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v11 = +[DNDRemoteServiceConnection sharedInstance];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:sharedCopy];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:mirroredCopy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__DNDAuxiliaryStateService_setScreenIsShared_screenIsMirrored_error___block_invoke;
  v19[3] = &unk_27843A0A8;
  v19[4] = &v26;
  v19[5] = &v20;
  [v11 setScreenIsShared:v12 screenIsMirrored:v13 withRequestDetails:v10 completionHandler:v19];

  v14 = DNDLogAuxiliaryState;
  if (*(v27 + 24) == 1)
  {
    if (os_log_type_enabled(DNDLogAuxiliaryState, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v32 = v10;
      v33 = 1024;
      *v34 = sharedCopy;
      *&v34[4] = 1024;
      *&v34[6] = mirroredCopy;
      _os_log_impl(&dword_22002F000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set auxiliary state; isScreenShared=%d isScreenMirrored=%d", buf, 0x18u);
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

  if (!os_log_type_enabled(DNDLogAuxiliaryState, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_6;
  }

  v18 = v21[5];
  *buf = 138544130;
  v32 = v10;
  v33 = 2114;
  *v34 = v18;
  *&v34[8] = 1024;
  v35 = sharedCopy;
  v36 = 1024;
  v37 = mirroredCopy;
  _os_log_error_impl(&dword_22002F000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Error when setting auxiliary state; error='%{public}@' isScreenShared=%d isScreenMirrored=%d", buf, 0x22u);
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  v15 = v21[5];
  if (v15)
  {
    *error = v15;
  }

LABEL_9:
  v16 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
  os_activity_scope_leave(&state);

  return v16 & 1;
}

void __69__DNDAuxiliaryStateService_setScreenIsShared_screenIsMirrored_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v12.super_class = DNDAuxiliaryStateService;
  v5 = [(DNDAuxiliaryStateService *)&v12 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.donotdisturb.DNDAuxiliaryStateService", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

@end