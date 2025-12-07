@interface SBFRemoteBasebandLoggingManager
+ (id)sharedInstance;
- (SBFRemoteBasebandLoggingManager)init;
- (void)_notifyObservers;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation SBFRemoteBasebandLoggingManager

- (SBFRemoteBasebandLoggingManager)init
{
  v23 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SBFRemoteBasebandLoggingManager;
  v2 = [(SBFRemoteBasebandLoggingManager *)&v15 init];
  if (v2)
  {
    if (CellularLoggingLibraryCore(0))
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v3 = getCellularLoggingClass_softClass;
      v19 = getCellularLoggingClass_softClass;
      if (!getCellularLoggingClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getCellularLoggingClass_block_invoke;
        v21 = &unk_1E807F028;
        v22 = &v16;
        __getCellularLoggingClass_block_invoke(buf);
        v3 = v17[3];
      }

      v4 = v3;
      _Block_object_dispose(&v16, 8);
      v5 = objc_alloc_init(v3);
      cellularLogging = v2->_cellularLogging;
      v2->_cellularLogging = v5;

      v8 = SBLogCellularLogCollection(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v2->_cellularLogging;
        isLoggingStarted = [(CellularLogging *)v9 isLoggingStarted];
        *buf = 134218240;
        *&buf[4] = v9;
        *&buf[12] = 1024;
        *&buf[14] = isLoggingStarted;
        _os_log_impl(&dword_1BEA11000, v8, OS_LOG_TYPE_DEFAULT, "SBFRemoteBasebandLoggingManager %p initialized, log collection status is %{BOOL}d", buf, 0x12u);
      }
    }

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:2];
    observers = v2->_observers;
    v2->_observers = v11;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, SBFHandleRemoteBasebandLoggingStatusChanged, @"com.apple.CarrierCellularLogging.state", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SBFRemoteBasebandLoggingManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __49__SBFRemoteBasebandLoggingManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBFRemoteBasebandLoggingManager);
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_notifyObservers
{
  v17 = *MEMORY[0x1E69E9840];
  isLogCollectionEnabled = [(SBFRemoteBasebandLoggingManager *)self isLogCollectionEnabled];
  v4 = SBLogCellularLogCollection(isLogCollectionEnabled);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = isLogCollectionEnabled;
    _os_log_impl(&dword_1BEA11000, v4, OS_LOG_TYPE_DEFAULT, "Remote Baseband Log Collection Status changed to %{BOOL}d, notifying observers", buf, 8u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(SBFRemoteBasebandLoggingManager *)self observers];
  v6 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(observers);
        }

        [*(*(&v10 + 1) + 8 * v9++) remoteBasebandLogCollectionStateDidChange:isLogCollectionEnabled];
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SBFRemoteBasebandLoggingManager *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(SBFRemoteBasebandLoggingManager *)self observers];
  [observers removeObject:observerCopy];
}

@end