@interface __HMFSetupAssistantDataSource
- (BOOL)isMigrating;
- (HMFSystemInfoMigrationDataSourceDelegate)delegate;
- (__HMFSetupAssistantDataSource)init;
- (void)dealloc;
@end

@implementation __HMFSetupAssistantDataSource

- (__HMFSetupAssistantDataSource)init
{
  v8.receiver = self;
  v8.super_class = __HMFSetupAssistantDataSource;
  v2 = [(__HMFSetupAssistantDataSource *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    if (SetupAssistantLibraryCore(0))
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      BYSetupAssistantFinishedDarwinNotification = getBYSetupAssistantFinishedDarwinNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, __migrationFinishedCallback, BYSetupAssistantFinishedDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  if (SetupAssistantLibraryCore(0))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    BYSetupAssistantFinishedDarwinNotification = getBYSetupAssistantFinishedDarwinNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, BYSetupAssistantFinishedDarwinNotification, 0);
  }

  v5.receiver = selfCopy;
  v5.super_class = __HMFSetupAssistantDataSource;
  [(__HMFSetupAssistantDataSource *)&v5 dealloc];
}

- (BOOL)isMigrating
{
  v2 = SetupAssistantLibraryCore(0);
  if (v2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v3 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    v11 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
    {
      v4 = SetupAssistantLibrary();
      v9[3] = dlsym(v4, "BYSetupAssistantNeedsToRun");
      getBYSetupAssistantNeedsToRunSymbolLoc_ptr = v9[3];
      v3 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (!v3)
    {
      v5 = dlerror();
      v6 = abort_report_np("%s", v5);
      _Block_object_dispose(&v8, 8);
      _Unwind_Resume(v6);
    }

    LOBYTE(v2) = v3();
  }

  return v2;
}

- (HMFSystemInfoMigrationDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end