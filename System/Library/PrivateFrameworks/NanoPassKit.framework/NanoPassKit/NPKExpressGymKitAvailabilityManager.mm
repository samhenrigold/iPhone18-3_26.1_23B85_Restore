@interface NPKExpressGymKitAvailabilityManager
- (NPKExpressGymKitAvailabilityManager)initWithDelegate:(id)delegate;
- (NPKExpressGymKitAvailabilityManagerDelegate)delegate;
- (void)allowEnableExpressGymKitWithVisibleViewController:(id)controller completion:(id)completion;
- (void)dealloc;
@end

@implementation NPKExpressGymKitAvailabilityManager

- (NPKExpressGymKitAvailabilityManager)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = NPKExpressGymKitAvailabilityManager;
  v5 = [(NPKExpressGymKitAvailabilityManager *)&v13 init];
  if (v5)
  {
    objc_initWeak(&location, v5);
    uTF8String = [@"com.apple.nanopasskit.expressGymKitAvailable.didChange" UTF8String];
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__NPKExpressGymKitAvailabilityManager_initWithDelegate___block_invoke;
    v10[3] = &unk_279944F20;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch(uTF8String, &v5->_notificationToken, v7, v10);

    objc_storeWeak(&v5->_delegate, delegateCopy);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__NPKExpressGymKitAvailabilityManager_initWithDelegate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained isExpressGymKitAllowed];
  v3 = pk_General_log(v2);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained delegate];
      v8 = objc_opt_class();
      v9 = [WeakRetained delegate];
      v11 = 138413058;
      v12 = WeakRetained;
      v13 = 1024;
      v14 = v2;
      v15 = 2112;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@ handling com.apple.nanopasskit.expressGymKitAvailable.didChange notification isAllowed:%d delegate:<%@:%p>", &v11, 0x26u);
    }
  }

  v10 = [WeakRetained delegate];
  [v10 expressGymKitAvailabilityManager:WeakRetained didChangeIsExpressGymKitAllowed:v2];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_notificationToken))
  {
    notify_cancel(self->_notificationToken);
  }

  v3.receiver = self;
  v3.super_class = NPKExpressGymKitAvailabilityManager;
  [(NPKExpressGymKitAvailabilityManager *)&v3 dealloc];
}

- (void)allowEnableExpressGymKitWithVisibleViewController:(id)controller completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v7 = pk_General_log(completionCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v10 = pk_General_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = controllerCopy;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: requested allow enable express GymKit with view controller:%@", buf, 0xCu);
    }
  }

  v11 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/NanoPreferenceBundles/Applications/NanoPassbookBridgeSettings.bundle"];
  isLoaded = [v11 isLoaded];
  v13 = isLoaded;
  v14 = pk_General_log(isLoaded);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v17 = pk_General_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v11;
      v24 = 1024;
      v25 = v13;
      _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: Found settings bundle:%@ loaded:%d", buf, 0x12u);
    }
  }

  if ((v13 & 1) == 0)
  {
    [v11 load];
  }

  v18 = [v11 classNamed:@"NPKPassbookBridgeSettingsController"];
  if ([(objc_class *)v18 conformsToProtocol:&unk_286CE97F8])
  {
    v19 = objc_alloc_init(v18);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __100__NPKExpressGymKitAvailabilityManager_allowEnableExpressGymKitWithVisibleViewController_completion___block_invoke;
    v20[3] = &unk_279944F48;
    v21 = completionCopy;
    [v19 allowEnableExpressGymKitWithVisibleViewController:controllerCopy completion:v20];
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NPKExpressGymKitAvailabilityManagerErrorDomain" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __100__NPKExpressGymKitAvailabilityManager_allowEnableExpressGymKitWithVisibleViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = pk_General_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109378;
      v10[1] = a2;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: NPKExpressGymKitAvailabilityManager: did allowed enable express GymKit:%d error:%@", v10, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (NPKExpressGymKitAvailabilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end