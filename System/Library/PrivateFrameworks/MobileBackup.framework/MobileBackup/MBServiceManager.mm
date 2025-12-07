@interface MBServiceManager
+ (id)loadRestoreStateInfo;
+ (void)saveRestoreStateInfo:(id)info;
- (BOOL)deleteAccountWithServiceAccount:(id)account error:(id *)error;
- (BOOL)deleteBackupUDID:(id)d disableIfCurrentDevice:(BOOL)device account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)discountCameraRollQuotaWithAccount:(id)account connection:(id)connection error:(id *)error;
- (BOOL)isBackupEnabledForDomainName:(id)name account:(id)account;
- (BOOL)setupBackupWithPasscode:(id)passcode account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)startBackupWithOptions:(id)options reason:(int64_t)reason xpcActivity:(id)activity account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)startScanWithAccount:(id)account error:(id *)error;
- (MBDebugContext)debugContext;
- (MBServiceAccount)account;
- (MBServiceEncryptionManager)serviceEncryptionManager;
- (MBServiceLockManager)lockManager;
- (MBServiceManager)init;
- (id)_restoreStateWithAccount:(id)account;
- (id)_settingsContextForBackupUDID:(id)d account:(id)account;
- (id)backgroundRestoreInfoWithAccount:(id)account;
- (id)description;
- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD account:(id)account connection:(id)connection error:(id *)error;
- (id)loadRestoreStateWithAccount:(id)account;
- (id)lockManagerWithAccount:(id)account backupUDID:(id)d type:(int)type;
- (id)restoreStateWithError:(id *)error;
- (void)_cancelAllBackgroundRestoreEngines;
- (void)_cleanupStaleStateWithAccount:(id)account;
- (void)_clearDeferredDiscountingCameraRollQuota;
- (void)_deferDiscountingCameraRollQuota;
- (void)_notifyDisplayWifi;
- (void)_notifyRestoreCompleted;
- (void)_obliterating;
- (void)boostBackgroundRestoreWithAccount:(id)account completionHandler:(id)handler;
- (void)boostManualBackupWithAccount:(id)account completionHandler:(id)handler;
- (void)cancelEnginesWithAccount:(id)account connection:(id)connection;
- (void)dealloc;
- (void)deviceIsLocking;
- (void)deviceIsUnlocked;
- (void)reachabilityMonitorDidDetectWifiStatusChange:(BOOL)change;
- (void)repair;
- (void)serviceDidHoldLock:(id)lock;
- (void)setBackupEnabled:(BOOL)enabled forDomainName:(id)name account:(id)account;
- (void)startDataTransferWithPreflightInfo:(id)info connection:(id)connection completion:(id)completion;
- (void)startKeychainDataImportWithKeychainInfo:(id)info connection:(id)connection completion:(id)completion;
- (void)startKeychainDataTransferWithConnection:(id)connection completion:(id)completion;
- (void)startPreflightWithConnection:(id)connection completion:(id)completion;
@end

@implementation MBServiceManager

- (MBServiceManager)init
{
  v34.receiver = self;
  v34.super_class = MBServiceManager;
  _init = [(MBServiceManager *)&v34 _init];
  if (_init)
  {
    v3 = objc_alloc_init(NSMutableArray);
    engines = _init->_engines;
    _init->_engines = v3;

    atomic_store(0, &_init->_appDataDidFinishRestore);
    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);
    stateQueue = _init->_stateQueue;
    _init->_stateQueue = v8;

    v10 = dispatch_group_create();
    serviceGroup = _init->_serviceGroup;
    _init->_serviceGroup = v10;

    v12 = dispatch_queue_create("com.apple.MobileBackup.user-notification-queue", 0);
    userNotificationQueue = _init->_userNotificationQueue;
    _init->_userNotificationQueue = v12;

    v14 = objc_alloc_init(NSMutableSet);
    batchRestoreOps = _init->_batchRestoreOps;
    _init->_batchRestoreOps = v14;

    v16 = objc_opt_new();
    personaState = _init->_personaState;
    _init->_personaState = v16;

    v18 = [MBServiceAccount alloc];
    v19 = +[UMUserPersona currentPersona];
    v33 = 0;
    v20 = [(MBServiceAccount *)v18 initWithPersona:v19 error:&v33];
    v21 = v33;
    account = _init->_account;
    _init->_account = v20;

    v23 = _init->_account;
    if (!v23)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v36 = v21;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to resolve the account for the current persona: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to resolve the account for the current persona: %@", v21);
      }

      v23 = _init->_account;
    }

    buf[0] = 0;
    persona = [(MBServiceAccount *)v23 persona];
    v26 = [persona getBooleanValueForKey:@"AirTrafficFinishedRestoring" keyExists:buf];

    if (v26)
    {
      v27 = buf[0] == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    atomic_store(v28, &_init->_airTrafficDidFinishRestore);
    v29 = _init->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001639DC;
    block[3] = &unk_1003BC0B0;
    v32 = _init;
    dispatch_sync(v29, block);
  }

  return _init;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_lowDiskSource);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.data_eschaton", 0);
  userNotificationQueue = self->_userNotificationQueue;
  if (userNotificationQueue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100163CD8;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(userNotificationQueue, block);
    dispatch_sync(self->_userNotificationQueue, &stru_1003BFEA8);
  }

  notify_cancel(self->_obliterateToken);
  v5.receiver = self;
  v5.super_class = MBServiceManager;
  [(MBServiceManager *)&v5 dealloc];
}

- (MBServiceEncryptionManager)serviceEncryptionManager
{
  serviceEncryptionManager = self->_serviceEncryptionManager;
  if (serviceEncryptionManager)
  {
    v3 = serviceEncryptionManager;
  }

  else
  {
    v5 = [MBServiceAccount alloc];
    v6 = +[UMUserPersona currentPersona];
    v19 = 0;
    v7 = [(MBServiceAccount *)v5 initWithPersona:v6 error:&v19];
    v8 = v19;

    if (!v7)
    {
      v15 = +[NSAssertionHandler currentHandler];
      v16 = [NSString stringWithUTF8String:"[MBServiceManager serviceEncryptionManager]"];
      [v15 handleFailureInFunction:v16 file:@"MBServiceManager.m" lineNumber:159 description:{@"nil account: %@", v8}];
    }

    v9 = MBDeviceUDID_Legacy();
    v10 = [(MBServiceManager *)self _settingsContextForBackupUDID:v9 account:v7];

    v11 = [[MBServiceEncryptionManager alloc] initWithSettingsContext:v10];
    v12 = self->_serviceEncryptionManager;
    self->_serviceEncryptionManager = v11;

    v13 = self->_serviceEncryptionManager;
    if (!v13)
    {
      v17 = +[NSAssertionHandler currentHandler];
      v18 = [NSString stringWithUTF8String:"[MBServiceManager serviceEncryptionManager]"];
      [v17 handleFailureInFunction:v18 file:@"MBServiceManager.m" lineNumber:162 description:{@"nil encryption manager: %@", v8}];

      v13 = self->_serviceEncryptionManager;
    }

    v3 = v13;
  }

  return v3;
}

- (id)lockManagerWithAccount:(id)account backupUDID:(id)d type:(int)type
{
  v5 = *&type;
  dCopy = d;
  accountCopy = account;
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Using MBS lock manager", v13, 2u);
    _MBLog(@"I ", "Using MBS lock manager");
  }

  v11 = [[MBServiceLockManager alloc] initWithAccount:accountCopy backupUDID:dCopy type:v5 delegate:self];

  return v11;
}

- (MBServiceLockManager)lockManager
{
  lockManager = self->_lockManager;
  if (lockManager)
  {
    v3 = lockManager;
  }

  else
  {
    account = [(MBServiceManager *)self account];
    reloaded = [account reloaded];
    backupUDID = [(MBServiceRestoreSession *)self->_restoreSession backupUDID];
    v3 = [(MBServiceManager *)self lockManagerWithAccount:reloaded backupUDID:backupUDID type:1];
  }

  return v3;
}

- (MBServiceAccount)account
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_account)
  {
    v3 = [MBServiceAccount alloc];
    v4 = +[UMUserPersona currentPersona];
    v11 = 0;
    v5 = [(MBServiceAccount *)v3 initWithPersona:v4 error:&v11];
    v6 = v11;
    account = selfCopy->_account;
    selfCopy->_account = v5;

    if (!selfCopy->_account)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(MBS) Failed to fetch account: %@", buf, 0xCu);
        _MBLog(@"E ", "(MBS) Failed to fetch account: %@", v6);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v9 = selfCopy->_account;

  return v9;
}

+ (id)loadRestoreStateInfo
{
  v2 = CFPreferencesCopyValue(@"RestoreStateInfo", @"com.apple.MobileBackup", kMBMobileUserName, kCFPreferencesAnyHost);
  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v3 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v2];
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      dictionaryRepresentation = [v3 dictionaryRepresentation];
      *buf = 138412290;
      v9 = dictionaryRepresentation;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Loaded restore state: %@", buf, 0xCu);

      dictionaryRepresentation2 = [v3 dictionaryRepresentation];
      _MBLog(@"I ", "Loaded restore state: %@", dictionaryRepresentation2);
    }
  }

LABEL_9:

  return v3;
}

+ (void)saveRestoreStateInfo:(id)info
{
  if (info)
  {
    dictionaryRepresentation = [info dictionaryRepresentation];
    v4 = kMBMobileUserName;
    CFPreferencesSetValue(@"RestoreStateInfo", dictionaryRepresentation, @"com.apple.MobileBackup", kMBMobileUserName, kCFPreferencesAnyHost);
    v5 = CFPreferencesSynchronize(@"com.apple.MobileBackup", v4, kCFPreferencesAnyHost);
    v6 = MBGetDefaultLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = dictionaryRepresentation;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saved restore state: %@", buf, 0xCu);
        _MBLog(@"Df", "Saved restore state: %@", dictionaryRepresentation);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v9 = @"com.apple.MobileBackup";
      v10 = 2112;
      v11 = @"RestoreStateInfo";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to sync preferences for %@ domain (%@)", buf, 0x16u);
      _MBLog(@"E ", "Failed to sync preferences for %@ domain (%@)", @"com.apple.MobileBackup", @"RestoreStateInfo");
    }
  }
}

- (id)loadRestoreStateWithAccount:(id)account
{
  accountCopy = account;
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restore = [v6 restore];

  if (restore)
  {
    restore2 = [v6 restore];
    v9 = [restore2 copy];

    goto LABEL_42;
  }

  v10 = [MBServiceRestoreSession currentRestoreSessionWithAccount:accountCopy];
  restoreSession = self->_restoreSession;
  self->_restoreSession = v10;

  if (self->_restoreSession)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_restoreSession;
      *buf = 138412290;
      v54 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Loaded restore session: %@", buf, 0xCu);
      _MBLog(@"Df", "Loaded restore session: %@", self->_restoreSession);
    }
  }

  loadRestoreStateInfo = [objc_opt_class() loadRestoreStateInfo];
  v15 = self->_restoreSession;
  if (!v15)
  {
    if (loadRestoreStateInfo)
    {
      if ([loadRestoreStateInfo isBackground] && objc_msgSend(loadRestoreStateInfo, "state") != 4 && objc_msgSend(loadRestoreStateInfo, "state") != 6)
      {
        [loadRestoreStateInfo setState:4];
        [loadRestoreStateInfo setIsBackground:1];
        LODWORD(v19) = 1.0;
        [loadRestoreStateInfo setProgress:v19];
        [loadRestoreStateInfo setEstimatedTimeRemaining:0];
        [objc_opt_class() saveRestoreStateInfo:loadRestoreStateInfo];
      }
    }

    else
    {
      loadRestoreStateInfo = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
    }

    [v6 setRestore:loadRestoreStateInfo];
    goto LABEL_40;
  }

  isFinishing = [(MBServiceRestoreSession *)v15 isFinishing];
  if (isFinishing)
  {
    v17 = 6;
  }

  else
  {
    v17 = 5;
  }

  if (isFinishing)
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  self->_serviceState = v17;
  [v6 setServiceState:?];
  if (!loadRestoreStateInfo)
  {
    loadRestoreStateInfo = [[MBStateInfo alloc] initWithState:v18 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
    [loadRestoreStateInfo setIsBackground:1];
    if (!loadRestoreStateInfo)
    {
      __assert_rtn("[MBServiceManager loadRestoreStateWithAccount:]", "MBServiceManager.m", 239, "restoreState");
    }

    goto LABEL_25;
  }

  if (![loadRestoreStateInfo isBackground] || objc_msgSend(loadRestoreStateInfo, "state") != v18)
  {
    [loadRestoreStateInfo setState:v18];
    [loadRestoreStateInfo setIsBackground:1];
LABEL_25:
    [v6 setRestore:loadRestoreStateInfo];
    [objc_opt_class() saveRestoreStateInfo:loadRestoreStateInfo];
    goto LABEL_26;
  }

  [v6 setRestore:loadRestoreStateInfo];
LABEL_26:
  v20 = objc_alloc_init(MBServiceReachabilityMonitor);
  reachabilityMonitor = self->_reachabilityMonitor;
  self->_reachabilityMonitor = v20;

  objc_initWeak(&location, self);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100164D0C;
  v50[3] = &unk_1003BFED0;
  objc_copyWeak(&v51, &location);
  [(MBServiceReachabilityMonitor *)self->_reachabilityMonitor setWifiStatusChangedCallback:v50];
  [(MBServiceReachabilityMonitor *)self->_reachabilityMonitor setMonitoring:1];
  if ([(MBServiceRestoreSession *)self->_restoreSession isFinishing])
  {
    lockManager = [(MBServiceManager *)self lockManager];
    [lockManager releaseLockAsync];
  }

  else
  {
    lockManager = [(MBServiceManager *)self lockManager];
    [lockManager startRenewingLock];
  }

  serviceEncryptionManager = [(MBServiceManager *)self serviceEncryptionManager];
  v49 = 0;
  v24 = [serviceEncryptionManager loadRestoreKeyBagsByIDWithError:&v49];
  v25 = v49;
  restoreKeyBagsByID = self->_restoreKeyBagsByID;
  self->_restoreKeyBagsByID = v24;

  if (!self->_restoreKeyBagsByID)
  {
    v27 = MBGetDefaultLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to load restore keybags while loading restore session: %@", buf, 0xCu);
      _MBLog(@"E ", "Failed to load restore keybags while loading restore session: %@", v25);
    }

    account = [(MBServiceManager *)self account];
    persona = [account persona];
    [persona setPreferencesValue:&__kCFBooleanTrue forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
  }

  [(MBServiceManager *)self _notifyRestoreCompleted];
  startDate = [(MBServiceRestoreSession *)self->_restoreSession startDate];
  v31 = [startDate dateByAddingTimeInterval:1209600.0];

  v32 = MBGetDefaultLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = v32;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = MBStringWithDate();
      *buf = 138412290;
      v54 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Restore will time out on %@", buf, 0xCu);
    }

    v35 = MBStringWithDate();
    _MBLog(@"I ", "Restore will time out on %@", v35);
  }

  [v31 timeIntervalSinceReferenceDate];
  v37 = v36;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164D5C;
  block[3] = &unk_1003BFEF8;
  block[4] = self;
  v48 = accountCopy;
  self->_warnTimerRef = CFRunLoopTimerCreateWithHandler(0, v37, 86400.0, 0, 0, block);
  Main = CFRunLoopGetMain();
  CFRunLoopAddTimer(Main, self->_warnTimerRef, kCFRunLoopCommonModes);
  v39 = +[MBDaemon sharedDaemon];
  [v39 holdWorkAssertion:a2];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
LABEL_40:
  restore3 = [v6 restore];
  if (!restore3)
  {
    __assert_rtn("[MBServiceManager loadRestoreStateWithAccount:]", "MBServiceManager.m", 308, "personaState.restore");
  }

  v41 = +[MBNotificationCenter sharedNotificationCenter];
  v42 = [(MBPersonaStateManager *)self->_personaState objectForKeyedSubscript:accountCopy];
  restore4 = [v42 restore];
  state = [restore4 state];
  [v41 postNotification:kMBManagerRestoreStateChangedNotification ifStateChanged:state];

  restore5 = [v6 restore];
  v9 = [restore5 copy];

LABEL_42:

  return v9;
}

- (void)_cleanupStaleStateWithAccount:(id)account
{
  accountCopy = account;
  if (MBAcquireRestoreLock())
  {
    v3 = +[MBLockdown buddySetupState];
    if ([v3 isEqualToString:@"RestoringFromBackup"])
    {
      v4 = +[MBLockdown connect];
      v5 = MBGetDefaultLog();
      v6 = v3;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = @"RestoringFromBackup";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cleanup: Clearing stale lockdown state %@", buf, 0xCu);
        _MBLog(@"Df", "Cleanup: Clearing stale lockdown state %@", @"RestoringFromBackup");
      }

      v47 = 0;
      v7 = [v4 removeObjectWithDomain:@"com.apple.purplebuddy" andKey:@"SetupState" withError:&v47];
      v8 = v47;
      if ((v7 & 1) == 0)
      {
        v9 = MBGetDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = @"RestoringFromBackup";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cleanup: Failed to clear lockdown state %@", buf, 0xCu);
          _MBLog(@"E ", "Cleanup: Failed to clear lockdown state %@", @"RestoringFromBackup");
        }
      }

      v46 = v8;
      v10 = [v4 removeObjectWithDomain:@"com.apple.purplebuddy" andKey:@"RestoreState" withError:&v46];
      v11 = v46;

      if ((v10 & 1) == 0)
      {
        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v49 = @"RestoringFromBackup";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cleanup: Failed to clear lockdown state %@", buf, 0xCu);
          _MBLog(@"E ", "Cleanup: Failed to clear lockdown state %@", @"RestoringFromBackup");
        }
      }

      [v4 disconnect];
      v3 = v6;
    }

    if (v3 && ([v3 isEqualToString:@"RestoringFromBackup"] & 1) == 0)
    {
      persona = [accountCopy persona];
      v14 = persona;
      v32 = v3;
      if (persona)
      {
        v33 = persona;
      }

      else
      {
        v33 = [MBPersona personalPersonaWithError:0];
      }

      v16 = [[NSMutableArray alloc] initWithCapacity:3];
      if (v33)
      {
        userIncompleteRestoreDirectory = [v33 userIncompleteRestoreDirectory];
        [v16 addObject:userIncompleteRestoreDirectory];

        sharedIncompleteRestoreDirectory = [v33 sharedIncompleteRestoreDirectory];
        [v16 addObject:sharedIncompleteRestoreDirectory];
      }

      v19 = +[NSFileManager defaultManager];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v16;
      v20 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v20)
      {
        v21 = *v43;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v42 + 1) + 8 * i);
            if ([v19 fileExistsAtPath:v23 isDirectory:0])
            {
              v41 = 0;
              v24 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v23 identifiedBy:@"restore-cleanup" error:&v41];
              v25 = v41;
              if (v24)
              {
                makeTemporaryFilePath = [v24 makeTemporaryFilePath];
                v40 = v25;
                v27 = [v19 moveItemAtPath:v23 toPath:makeTemporaryFilePath error:&v40];
                v28 = v40;

                if (v27)
                {
                  v29 = +[MBDaemon sharedDaemon];
                  [v29 holdWorkAssertion:a2];

                  v30 = dispatch_get_global_queue(17, 0);
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_1001656E0;
                  block[3] = &unk_1003BDAE8;
                  v38 = v24;
                  v39 = a2;
                  dispatch_async(v30, block);

                  v31 = v38;
                }

                else
                {
                  v31 = MBGetDefaultLog();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412802;
                    v49 = v23;
                    v50 = 2112;
                    v51 = makeTemporaryFilePath;
                    v52 = 2112;
                    v53 = v28;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Cleanup: Unable to move %@ to cleanup dir at %@, %@", buf, 0x20u);
                    _MBLog(@"E ", "Cleanup: Unable to move %@ to cleanup dir at %@, %@", v23, makeTemporaryFilePath, v28);
                  }
                }

                v25 = v28;
              }

              else
              {
                makeTemporaryFilePath = MBGetDefaultLog();
                if (os_log_type_enabled(makeTemporaryFilePath, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v49 = v23;
                  v50 = 2112;
                  v51 = v25;
                  _os_log_impl(&_mh_execute_header, makeTemporaryFilePath, OS_LOG_TYPE_ERROR, "Cleanup: Unable to create cleanup dir on the same volume as %@, %@", buf, 0x16u);
                  _MBLog(@"E ", "Cleanup: Unable to create cleanup dir on the same volume as %@, %@", v23, v25);
                }
              }
            }
          }

          v20 = [obj countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v20);
      }

      v3 = v32;
    }

    MBReleaseRestoreLock();
  }

  else
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cleanup: Unable to acquire the MBS restore lock - skipping cleaning stale MBS restore state", buf, 2u);
      _MBLog(@"Df", "Cleanup: Unable to acquire the MBS restore lock - skipping cleaning stale MBS restore state");
    }
  }
}

- (BOOL)setupBackupWithPasscode:(id)passcode account:(id)account connection:(id)connection error:(id *)error
{
  if (error)
  {
    *error = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to run a backup with this manager.", connection];
  }

  return 0;
}

- (void)deviceIsLocking
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Keybag is locking", buf, 2u);
    _MBLog(@"I ", "Keybag is locking");
  }

  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100165B78;
  v6[3] = &unk_1003BDAE8;
  v6[4] = self;
  v6[5] = a2;
  dispatch_async(stateQueue, v6);
}

- (void)deviceIsUnlocked
{
  v4 = os_transaction_create();
  serviceEncryptionManager = [(MBServiceManager *)self serviceEncryptionManager];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Device is unlocked", buf, 2u);
    _MBLog(@"I ", "Device is unlocked");
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165F58;
  block[3] = &unk_1003BC2E0;
  block[4] = self;
  v8 = serviceEncryptionManager;
  v26 = v8;
  v9 = v4;
  v27 = v9;
  dispatch_async(stateQueue, block);
  v10 = objc_opt_self();
  v11 = +[MBDaemon sharedDaemon];
  [v11 holdWorkAssertion:a2];

  v12 = dispatch_get_global_queue(17, 0);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_100166118;
  v21 = &unk_1003BDB10;
  v23 = v9;
  v24 = a2;
  v22 = v8;
  v13 = v9;
  v14 = v8;
  dispatch_async(v12, &v18);

  v15 = [(MBServiceManager *)self account:v18];
  persona = [v15 persona];
  [persona setPreferencesValue:&__kCFBooleanFalse forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];

  v17 = objc_opt_self();
}

- (BOOL)deleteAccountWithServiceAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleting account", v10, 2u);
    _MBLog(@"Df", "Deleting account");
  }

  v7 = [[MBService alloc] initWithAccount:accountCopy];
  if (v7)
  {
    v8 = [(MBService *)v7 deleteAccountWithError:error];
  }

  else if (error)
  {
    [MBError errorWithCode:210 format:@"No account"];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)deleteBackupUDID:(id)d disableIfCurrentDevice:(BOOL)device account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBServiceManager deleteBackupUDID:disableIfCurrentDevice:account:connection:error:]", "MBServiceManager.m", 544, "account");
  }

  v15 = connectionCopy;
  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting backup %@", &buf, 0xCu);
    _MBLog(@"Df", "Deleting backup %@", dCopy);
  }

  if ([dCopy length])
  {
    v17 = [[MBService alloc] initWithAccount:accountCopy];
    if (v17)
    {
      v18 = MBDeviceUDID_Legacy();
      v19 = [dCopy isEqualToString:v18];

      if (v19)
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 1;
        *&buf = 0;
        *(&buf + 1) = &buf;
        v36 = 0x3032000000;
        v37 = sub_1001665D4;
        v38 = sub_1001665E4;
        v39 = 0;
        stateQueue = self->_stateQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001665EC;
        block[3] = &unk_1003BFF48;
        block[4] = self;
        v24 = v17;
        v25 = dCopy;
        p_buf = &buf;
        deviceCopy = device;
        v26 = accountCopy;
        v27 = v15;
        v29 = &v31;
        dispatch_sync(stateQueue, block);
        v21 = *(v32 + 24);
        if (error && (v32[3] & 1) == 0)
        {
          *error = *(*(&buf + 1) + 40);
          v21 = *(v32 + 24);
        }

        _Block_object_dispose(&buf, 8);
        _Block_object_dispose(&v31, 8);
      }

      else
      {
        v21 = [(MBService *)v17 deleteBackupForUDID:dCopy error:error];
      }
    }

    else if (error)
    {
      [MBError errorWithCode:210 format:@"No account"];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:1 format:@"Empty backup UDID"];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

- (void)cancelEnginesWithAccount:(id)account connection:(id)connection
{
  v5 = os_transaction_create();
  stateQueue = self->_stateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100166878;
  v8[3] = &unk_1003BC060;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)_cancelAllBackgroundRestoreEngines
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling all background restore engines", buf, 2u);
    _MBLog(@"Df", "Canceling all background restore engines");
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166A24;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (id)backgroundRestoreInfoWithAccount:(id)account
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Restore Background Info not supported for MBS", v5, 2u);
    _MBLog(@"I ", "Restore Background Info not supported for MBS");
  }

  return 0;
}

- (id)getBuddyDataStashForBackupUDID:(id)d snapshotID:(unint64_t)iD account:(id)account connection:(id)connection error:(id *)error
{
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "BuddyStashData not supported for MBS", v9, 2u);
    _MBLog(@"I ", "BuddyStashData not supported for MBS");
  }

  return 0;
}

- (BOOL)startBackupWithOptions:(id)options reason:(int64_t)reason xpcActivity:(id)activity account:(id)account connection:(id)connection error:(id *)error
{
  if (error)
  {
    *error = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to run a backup with this manager", activity, account, connection];
  }

  return 0;
}

- (id)_restoreStateWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBServiceManager _restoreStateWithAccount:]", "MBServiceManager.m", 668, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1001665D4;
  stateQueue = self->_stateQueue;
  v17 = sub_1001665E4;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166D58;
  block[3] = &unk_1003BCAE8;
  v11 = v5;
  v12 = &v13;
  block[4] = self;
  v7 = v5;
  dispatch_sync(stateQueue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)restoreStateWithError:(id *)error
{
  if (!error)
  {
    __assert_rtn("[MBServiceManager restoreStateWithError:]", "MBServiceManager.m", 679, "error");
  }

  account = [(MBServiceManager *)self account];
  if (account)
  {
    v6 = [(MBServiceManager *)self _restoreStateWithAccount:account];
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *error;
      *buf = 138543362;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch restore state due to nil account: %{public}@", buf, 0xCu);
      _MBLog(@"E ", "Failed to fetch restore state due to nil account: %{public}@", *error);
    }

    v9 = +[UMUserPersona currentPersona];
    v18 = 0;
    v10 = [MBPersona personaWithUMPersona:v9 error:&v18];
    v11 = v18;

    if (v10)
    {
      v12 = [v10 copyPreferencesValueForKey:@"RestoreSession" class:objc_opt_class()];
      v13 = [v10 copyPreferencesValueForKey:@"RestoreStateInfo" class:objc_opt_class()];
      v14 = v13;
      if (v12)
      {
        *error = [MBError errorWithCode:210 format:@"No account found"];

        v6 = 0;
      }

      else
      {
        if (!v13 || (v6 = [[MBStateInfo alloc] initWithDictionaryRepresentation:v13]) == 0)
        {
          v6 = [[MBStateInfo alloc] initWithState:0 progress:0 estimatedTimeRemaining:0 error:0 errors:0.0];
        }
      }
    }

    else
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to create a persona: %{public}@", buf, 0xCu);
        _MBLog(@"E ", "Failed to create a persona: %{public}@", v11);
      }

      v16 = v11;
      v6 = 0;
      *error = v11;
    }
  }

  return v6;
}

- (BOOL)startScanWithAccount:(id)account error:(id *)error
{
  if (error)
  {
    *error = [MBError errorWithCode:203 format:@"MBS backups are disabled. Refusing to start a scan with this manager."];
  }

  return 0;
}

- (BOOL)isBackupEnabledForDomainName:(id)name account:(id)account
{
  nameCopy = name;
  accountCopy = account;
  __assert_rtn("[MBServiceManager isBackupEnabledForDomainName:account:]", "MBServiceManager.m", 791, "0 && Unexpected call");
}

- (void)setBackupEnabled:(BOOL)enabled forDomainName:(id)name account:(id)account
{
  enabledCopy = enabled;
  nameCopy = name;
  accountCopy = account;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v10 = @"Enabling";
    }

    else
    {
      v10 = @"Disabling";
    }

    *buf = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = nameCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
    _MBLog(@"Df", "%@ %@", v10, nameCopy);
  }

  persona = [accountCopy persona];

  v12 = +[MBAppManager appManager];
  [v12 setEnabled:enabledCopy forDomainName:nameCopy persona:persona];
  if ([nameCopy isEqualToString:@"AppDomain-com.apple.iBooks"])
  {
    [v12 setEnabled:enabledCopy forDomainName:@"BooksDomain" persona:persona];
  }

  if ([nameCopy isEqualToString:@"AppDomain-com.apple.Health"])
  {
    [v12 setEnabled:enabledCopy forDomainName:@"HealthDomain" persona:persona];
  }

  if ([nameCopy isEqualToString:@"HealthDomain"])
  {
    [v12 setEnabled:enabledCopy forDomainName:@"AppDomain-com.apple.Health" persona:persona];
  }
}

- (void)repair
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Repairing file system if needed", v3, 2u);
    _MBLog(@"Df", "Repairing file system if needed");
  }
}

- (BOOL)discountCameraRollQuotaWithAccount:(id)account connection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  accountCopy = account;
  v10 = MBDeviceUDID_Legacy();
  LOBYTE(error) = [(MBServiceManager *)self discountCameraRollQuotaForBackupUDID:v10 account:accountCopy connection:connectionCopy error:error];

  return error;
}

- (BOOL)discountCameraRollQuotaForBackupUDID:(id)d account:(id)account connection:(id)connection error:(id *)error
{
  dCopy = d;
  accountCopy = account;
  connectionCopy = connection;
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not counting camera roll against iCloud quota", buf, 2u);
    _MBLog(@"Df", "Not counting camera roll against iCloud quota");
  }

  v14 = [[MBService alloc] initWithAccount:accountCopy];
  if (v14)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x2020000000;
    v31 = 0;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001679BC;
    v27[3] = &unk_1003BFF70;
    v27[4] = buf;
    MBPerformWithCache(v27);
    if (v29[24])
    {
      v15 = +[MBDaemon sharedDaemon];
      [v15 holdWorkAssertion:a2];

      v26 = 0;
      v16 = [(MBService *)v14 discountCameraRollQuotaForBackupUDID:dCopy error:&v26];
      v17 = v26;
      if (v16)
      {
        v18 = 1;
      }

      else
      {
        v21 = MBGetDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v32 = 138412290;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to discount camera roll from iCloud quota: %@", v32, 0xCu);
          _MBLog(@"E ", "Failed to discount camera roll from iCloud quota: %@", v17, connectionCopy);
        }

        v18 = 0;
      }

      v22 = +[MBDaemon sharedDaemon];
      [v22 releaseWorkAssertion:a2];

      if (error && v17)
      {
        v23 = v17;
        *error = v17;
      }

      if (v18)
      {
        [(MBServiceManager *)self _clearDeferredDiscountingCameraRollQuota];
      }

      else
      {
        [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
      }
    }

    else
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Unable to modify quota: No backup", v32, 2u);
        _MBLog(@"E ", "Unable to modify quota: No backup");
      }

      if (error)
      {
        *error = [MBError errorWithCode:204 format:@"No backup"];
      }

      [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
      v18 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to modify quota: No account", buf, 2u);
      _MBLog(@"E ", "Unable to modify quota: No account");
    }

    if (error)
    {
      *error = [MBError errorWithCode:210 format:@"No account"];
    }

    [(MBServiceManager *)self _deferDiscountingCameraRollQuota];
    v18 = 0;
  }

  return v18;
}

- (void)_deferDiscountingCameraRollQuota
{
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  [persona setPreferencesValue:&__kCFBooleanTrue forKey:@"HasDeferredDiscountingQuota"];
}

- (void)_clearDeferredDiscountingCameraRollQuota
{
  account = [(MBServiceManager *)self account];
  persona = [account persona];
  [persona setPreferencesValue:0 forKey:@"HasDeferredDiscountingQuota"];
}

- (id)_settingsContextForBackupUDID:(id)d account:(id)account
{
  accountCopy = account;
  dCopy = d;
  v8 = objc_alloc_init(MBServiceSettingsContext);
  [(MBServiceSettingsContext *)v8 setAccount:accountCopy];

  [(MBServiceSettingsContext *)v8 setLockManager:self->_lockManager];
  [(MBServiceSettingsContext *)v8 setBackupUDID:dCopy];

  v9 = MBGetCacheDir();
  [(MBServiceSettingsContext *)v8 setCacheDir:v9];

  return v8;
}

- (void)_notifyRestoreCompleted
{
  v3 = +[MBNotificationCenter sharedNotificationCenter];
  v4 = +[MBUserNotificationManager sharedManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100167D80;
  v6[3] = &unk_1003BC060;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  [v4 deferUntilAfterSetupIsDone:v6];
}

- (void)serviceDidHoldLock:(id)lock
{
  lockManager = [(MBServiceManager *)self lockManager];
  [lockManager resetRenewalTimer];
}

- (void)_obliterating
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Obliteration notification received", buf, 2u);
    _MBLog(@"Df", "Obliteration notification received");
  }

  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001680D8;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)_notifyDisplayWifi
{
  v12 = +[MBUserNotification notification];
  [v12 setIdentifier:@"NeedsWifiAlert"];
  [v12 setInterval:86400.0];
  mb_stringByAppendingGreenteaSuffix = [@"MBS_WIFI_NEEDED_ALERT_TITLE" mb_stringByAppendingGreenteaSuffix];
  v4 = MBLocalizedStringFromTable();
  [v12 setTitle:v4];

  mb_stringByAppendingGreenteaSuffix2 = [@"MBS_WIFI_NEEDED_ALERT_DESCRIPTION" mb_stringByAppendingGreenteaSuffix];
  v6 = MBLocalizedStringFromTable();
  [v12 setBody:v6];

  mb_stringByAppendingGreenteaSuffix3 = [@"MBS_WIFI_NEEDED_ALERT_SETTINGS_BUTTON" mb_stringByAppendingGreenteaSuffix];
  v8 = MBLocalizedStringFromTable();
  [v12 setButton:v8];

  v9 = MBLocalizedStringFromTable();
  [v12 setAlternateButton:v9];

  [v12 setCompletionBlock:&stru_1003BFF90];
  v10 = +[MBUserNotificationManager sharedManager];
  account = [(MBServiceManager *)self account];
  [v10 presentUserNotification:v12 account:account];
}

- (void)reachabilityMonitorDidDetectWifiStatusChange:(BOOL)change
{
  changeCopy = change;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (changeCopy)
    {
      v6 = "Y";
    }

    else
    {
      v6 = "N";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Got reachability callback in delegate. hasWifi: %s", buf, 0xCu);
    _MBLog(@"I ", "Got reachability callback in delegate. hasWifi: %s", v6);
  }

  userNotificationQueue = self->_userNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168494;
  block[3] = &unk_1003BCAC0;
  v9 = changeCopy;
  block[4] = self;
  dispatch_async(userNotificationQueue, block);
}

- (MBDebugContext)debugContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_debugContext)
  {
    v3 = +[MBDebugContext defaultDebugContext];
    debugContext = selfCopy->_debugContext;
    selfCopy->_debugContext = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_debugContext;

  return v5;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = MBServiceManager;
  v3 = [(MBServiceManager *)&v10 description];
  engines = self->_engines;
  backupUDID = [(MBServiceRestoreSession *)self->_restoreSession backupUDID];
  snapshotID = [(MBServiceRestoreSession *)self->_restoreSession snapshotID];
  delegate = [(MBServiceManager *)self delegate];
  v8 = [NSString stringWithFormat:@"{ %@ engine = %@ backupUUID = %@ snapshotID = %d delegate = %@ }", v3, engines, backupUDID, snapshotID, delegate];

  return v8;
}

- (void)startPreflightWithConnection:(id)connection completion:(id)completion
{
  completionCopy = completion;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)startKeychainDataTransferWithConnection:(id)connection completion:(id)completion
{
  completionCopy = completion;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)startKeychainDataImportWithKeychainInfo:(id)info connection:(id)connection completion:(id)completion
{
  completionCopy = completion;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)startDataTransferWithPreflightInfo:(id)info connection:(id)connection completion:(id)completion
{
  completionCopy = completion;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  completionCopy[2](completionCopy, 0);
}

- (void)boostBackgroundRestoreWithAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  handlerCopy[2](handlerCopy, 0);
}

- (void)boostManualBackupWithAccount:(id)account completionHandler:(id)handler
{
  handlerCopy = handler;
  [(MBServiceManager *)self doesNotRecognizeSelector:a2];
  handlerCopy[2](handlerCopy, 0);
}

@end