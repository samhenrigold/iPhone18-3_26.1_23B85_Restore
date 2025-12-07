@interface MBUEAPlugin
- (BOOL)_isWithinBackupPeriodOnPower:(BOOL)power;
- (BOOL)_isWithinPasscodeChangedWindow;
- (BOOL)_updateEnabledStateForAccount:(id)account;
- (BOOL)_updateGlobalEnabledState;
- (BOOL)isOnPower;
- (MBUEAPlugin)initWithEventQueue:(id)queue;
- (id)_lastBackupDate;
- (void)_boostBackgroundRestore:(unint64_t)restore;
- (void)_boostManualBackup;
- (void)_clearEnabledStateForAccount:(id)account;
- (void)_handleAccountChange:(int64_t)change account:(id)account;
- (void)_install;
- (void)_notifyDaemonOfAccountChange:(id)change;
- (void)_pcTimerFired:(id)fired;
- (void)_refetchAllAccounts;
- (void)_stateDidChange;
- (void)_updatePCTimer;
- (void)cancel;
- (void)dealloc;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)notifyDaemonOfPasscodeChange;
- (void)notifyDaemonThatDeviceIsLocking;
- (void)notifyDaemonThatDeviceIsUnlocked;
- (void)setIsLocked:(BOOL)locked;
- (void)setIsOnCellular:(BOOL)cellular;
- (void)setIsOnPower:(BOOL)power;
- (void)setIsOnWiFi:(BOOL)fi;
@end

@implementation MBUEAPlugin

- (void)_stateDidChange
{
  isEnabled = [(MBUEAPlugin *)self isEnabled];
  isOnPower = [(MBUEAPlugin *)self isOnPower];
  isLocked = [(MBUEAPlugin *)self isLocked];
  isOnWiFi = [(MBUEAPlugin *)self isOnWiFi];
  isOnCellular = [(MBUEAPlugin *)self isOnCellular];
  isBackupOnCellularEnabled = [(MBUEAPlugin *)self isBackupOnCellularEnabled];
  v9 = CFPreferencesCopyValue(@"AllowBackupOnBattery", @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  bOOLValue = [v9 BOOLValue];
  _isWithinPasscodeChangedWindow = [(MBUEAPlugin *)self _isWithinPasscodeChangedWindow];
  if (!isEnabled || !((isOnPower | _isWithinPasscodeChangedWindow | bOOLValue) & isLocked) || ((isOnWiFi | isOnCellular & isBackupOnCellularEnabled) & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67110656;
      v17 = isEnabled;
      v18 = 1024;
      v19 = isOnPower;
      v20 = 1024;
      v21 = bOOLValue;
      v22 = 1024;
      v23 = isLocked;
      v24 = 1024;
      v25 = isOnWiFi;
      v26 = 1024;
      v27 = isOnCellular;
      v28 = 1024;
      v29 = isBackupOnCellularEnabled;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Not waking up backupd, enabled:%d, onPower:%d(%d), locked:%d, onWiFi:%d, onCellular:%d, backupOnCellularEnabled:%d", buf, 0x2Cu);
      _MBLog(@"Db", "Not waking up backupd, enabled:%d, onPower:%d(%d), locked:%d, onWiFi:%d, onCellular:%d, backupOnCellularEnabled:%d", isEnabled);
    }

    goto LABEL_10;
  }

  if ((_isWithinPasscodeChangedWindow & 1) == 0 && [(MBUEAPlugin *)self _isWithinBackupPeriodOnPower:isOnPower])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "Not waking backupd up prematurely", buf, 2u);
      _MBLog(@"I ", "Not waking backupd up prematurely");
    }

LABEL_10:

    goto LABEL_11;
  }

  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Waking backupd", buf, 2u);
    _MBLog(@"I ", "Waking backupd");
  }

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4284;
  block[3] = &unk_14640;
  block[4] = self;
  dispatch_async(notificationQueue, block);
LABEL_11:
}

- (BOOL)isOnPower
{
  v2 = atomic_load(&self->_ignorePowerState);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load(&self->_isOnPower);
  }

  return v3 & 1;
}

- (MBUEAPlugin)initWithEventQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    sub_ABE0();
  }

  v6 = queueCopy;
  v20.receiver = self;
  v20.super_class = MBUEAPlugin;
  v7 = [(MBUEAPlugin *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_eventQueue, queue);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

    v11 = dispatch_queue_create("com.apple.MobileBackup.UEA.notifications", v10);
    notificationQueue = v8->_notificationQueue;
    v8->_notificationQueue = v11;

    v13 = [[MBManager alloc] initWithDelegate:v8];
    manager = v8->_manager;
    v8->_manager = v13;

    *&v8->_enabledToken = -1;
    v15 = objc_opt_new();
    accountsWithBackupEnabled = v8->_accountsWithBackupEnabled;
    v8->_accountsWithBackupEnabled = v15;

    v17 = objc_opt_new();
    accountsWithBackupOnCellularEnabled = v8->_accountsWithBackupOnCellularEnabled;
    v8->_accountsWithBackupOnCellularEnabled = v17;

    [(MBUEAPlugin *)v8 _install];
  }

  return v8;
}

- (void)dealloc
{
  [(MBUEAPlugin *)self cancel];
  enabledToken = self->_enabledToken;
  if (enabledToken != -1)
  {
    notify_cancel(enabledToken);
  }

  v4.receiver = self;
  v4.super_class = MBUEAPlugin;
  [(MBUEAPlugin *)&v4 dealloc];
}

- (void)cancel
{
  networkMonitor = self->_networkMonitor;
  if (networkMonitor)
  {
    nw_path_monitor_cancel(networkMonitor);
    v4 = self->_networkMonitor;
    self->_networkMonitor = 0;
  }

  pcTimer = self->_pcTimer;
  if (pcTimer)
  {
    [(PCPersistentTimer *)pcTimer invalidate];
    v6 = self->_pcTimer;
    self->_pcTimer = 0;
  }

  screenLockedToken = self->_screenLockedToken;
  if (screenLockedToken != -1)
  {
    notify_cancel(screenLockedToken);
    self->_screenLockedToken = -1;
  }

  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
    self->_powerToken = -1;
  }

  keybagToken = self->_keybagToken;
  if (keybagToken != -1)
  {
    notify_cancel(keybagToken);
    self->_keybagToken = -1;
  }

  restoreStateChangedToken = self->_restoreStateChangedToken;
  if (restoreStateChangedToken != -1)
  {
    notify_cancel(restoreStateChangedToken);
    self->_restoreStateChangedToken = -1;
  }

  passcodeChangedToken = self->_passcodeChangedToken;
  if (passcodeChangedToken != -1)
  {
    notify_cancel(passcodeChangedToken);
    self->_passcodeChangedToken = -1;
  }

  manualBackupStartedToken = self->_manualBackupStartedToken;
  if (manualBackupStartedToken != -1)
  {
    notify_cancel(manualBackupStartedToken);
    self->_manualBackupStartedToken = -1;
  }
}

- (void)_install
{
  dispatch_assert_queue_V2(self->_eventQueue);
  if (!self->_manager)
  {
    sub_AC0C();
  }

  objc_initWeak(&location, self);
  v3 = [ACMonitoredAccountStore alloc];
  v4 = [NSSet setWithObject:ACAccountTypeIdentifierAppleAccount];
  v5 = [v3 initWithAccountTypes:v4 delegate:self];
  accountStore = self->_accountStore;
  self->_accountStore = v5;

  v7 = self->_accountStore;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_2F04;
  v62[3] = &unk_144C0;
  objc_copyWeak(&v63, &location);
  [(ACMonitoredAccountStore *)v7 registerWithCompletion:v62];
  self->_keybagToken = -1;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10D0;
  v60[3] = &unk_144E8;
  objc_copyWeak(&v61, &location);
  v8 = objc_retainBlock(v60);
  v9 = kMobileKeyBagLockStatusNotifyToken;
  v10 = notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &self->_keybagToken, self->_eventQueue, v8);
  if (v10)
  {
    self->_keybagToken = -1;
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v66 = v9;
      v67 = 1024;
      v68 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}s) failed: %u", v9, v10);
    }
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_121C;
  v58[3] = &unk_144E8;
  objc_copyWeak(&v59, &location);
  v12 = objc_retainBlock(v58);
  self->_screenLockedToken = -1;
  v13 = kSBSLockStateNotifyKey;
  v14 = notify_register_dispatch(kSBSLockStateNotifyKey, &self->_screenLockedToken, self->_eventQueue, v12);
  if (v14)
  {
    self->_screenLockedToken = -1;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v66 = v13;
      v67 = 1024;
      v68 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}s) failed: %u", v13, v14);
    }
  }

  self->_passcodeChangedToken = -1;
  v16 = PABSUserChangedPasscodeNotification;
  v17 = v16;
  uTF8String = [v16 UTF8String];
  eventQueue = self->_eventQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_31C0;
  handler[3] = &unk_14510;
  objc_copyWeak(&v57, &location);
  v40 = v16;
  v56 = v40;
  v20 = notify_register_dispatch(uTF8String, &self->_passcodeChangedToken, eventQueue, handler);
  if (v20)
  {
    self->_passcodeChangedToken = -1;
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v66 = v40;
      v67 = 1024;
      v68 = v20;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}@) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}@) failed: %u", v40, v20);
    }
  }

  v22 = self->_eventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_32A4;
  block[3] = &unk_14538;
  block[4] = self;
  v39 = v12;
  v53 = v39;
  v38 = v8;
  v54 = v38;
  dispatch_async(v22, block);
  v23 = CFPreferencesCopyValue(@"IgnorePowerState", @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  atomic_store([v23 BOOLValue], &self->_ignorePowerState);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_331C;
  v50[3] = &unk_144E8;
  objc_copyWeak(&v51, &location);
  v24 = objc_retainBlock(v50);
  self->_powerToken = -1;
  v25 = notify_register_dispatch("com.apple.system.powersources.source", &self->_powerToken, self->_eventQueue, v24);
  if (v25)
  {
    self->_powerToken = -1;
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v66 = "com.apple.system.powersources.source";
      v67 = 1024;
      v68 = v25;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}s) failed: %u", "com.apple.system.powersources.source", v25);
    }
  }

  else
  {
    v27 = self->_eventQueue;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1684;
    v48[3] = &unk_14560;
    v48[4] = self;
    v49 = v24;
    dispatch_async(v27, v48);
    v26 = v49;
  }

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_3414;
  v46[3] = &unk_144E8;
  objc_copyWeak(&v47, &location);
  v28 = objc_retainBlock(v46);
  v29 = kMBManagerRestoreStateChangedNotification;
  v30 = notify_register_dispatch([kMBManagerRestoreStateChangedNotification UTF8String], &self->_restoreStateChangedToken, self->_eventQueue, v28);
  if (v30)
  {
    self->_restoreStateChangedToken = -1;
    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v66 = v29;
      v67 = 1024;
      v68 = v30;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}@) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}@) failed: %u", v29, v30);
    }
  }

  else
  {
    (v28[2])(v28, self->_restoreStateChangedToken);
  }

  v32 = kMBManagerManualBackupStartedNotification;
  uTF8String2 = [kMBManagerManualBackupStartedNotification UTF8String];
  v34 = self->_eventQueue;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_3458;
  v44[3] = &unk_144E8;
  objc_copyWeak(&v45, &location);
  v35 = notify_register_dispatch(uTF8String2, &self->_manualBackupStartedToken, v34, v44);
  if (v35)
  {
    self->_manualBackupStartedToken = -1;
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v66 = v32;
      v67 = 1024;
      v68 = v35;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "notify_register_dispatch(%{public}@) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "notify_register_dispatch(%{public}@) failed: %u", v32, v35);
    }
  }

  v37 = nw_path_monitor_create();
  update_handler[0] = _NSConcreteStackBlock;
  update_handler[1] = 3221225472;
  update_handler[2] = sub_3498;
  update_handler[3] = &unk_14588;
  objc_copyWeak(&v42, &location);
  v43 = v35;
  nw_path_monitor_set_update_handler(v37, update_handler);
  nw_path_monitor_set_queue(v37, self->_eventQueue);
  objc_storeStrong(&self->_networkMonitor, v37);
  nw_path_monitor_start(v37);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v47);

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v57);

  objc_destroyWeak(&v59);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);
}

- (void)_boostBackgroundRestore:(unint64_t)restore
{
  dispatch_assert_queue_V2(self->_eventQueue);
  restoreStateChangedToken = self->_restoreStateChangedToken;
  if (notify_is_valid_token(restoreStateChangedToken))
  {
    state64 = 0;
    state = notify_get_state(restoreStateChangedToken, &state64);
    if (state)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = kMBManagerRestoreStateChangedNotification;
        *buf = 138543618;
        restoreCopy = kMBManagerRestoreStateChangedNotification;
        v18 = 1024;
        LODWORD(restoreCopy2) = state;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "notify_get_state for %{public}@ failed: %du", buf, 0x12u);
        _MBLog(@"E ", "notify_get_state for %{public}@ failed: %du", v8, state);
      }
    }

    else if (state64 == 2)
    {
      objc_initWeak(&location, self);
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        restoreCopy = restore;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Attempting to boost background restore (%llu)", buf, 0xCu);
        _MBLog(@"I ", "Attempting to boost background restore (%llu)", restore);
      }

      manager = self->_manager;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_3968;
      v12[3] = &unk_145D8;
      v13[1] = restore;
      objc_copyWeak(v13, &location);
      [(MBManager *)manager boostBackgroundRestoreWithCompletionHandler:v12];
      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }

    else if (restore)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        restoreCopy = state64;
        v18 = 2048;
        restoreCopy2 = restore;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Not boosting background restore for restoreState:%llu (%llu)", buf, 0x16u);
        _MBLog(@"I ", "Not boosting background restore for restoreState:%llu (%llu)", state64, restore);
      }
    }
  }
}

- (void)_boostManualBackup
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = kMBManagerManualBackupStartedNotification;
    *buf = 138543362;
    v6 = kMBManagerManualBackupStartedNotification;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Received manual backup started notification (%{public}@), boosting backupd", buf, 0xCu);
    _MBLog(@"I ", "Received manual backup started notification (%{public}@), boosting backupd", v4);
  }

  [(MBManager *)self->_manager boostManualBackupWithCompletionHandler:&stru_14618];
}

- (id)_lastBackupDate
{
  v2 = CFPreferencesCopyValue(@"BackupStateInfo", @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
  v3 = [v2 objectForKeyedSubscript:@"errors"];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"code"];
        if (![v10 longValue])
        {
          v11 = [v9 objectForKeyedSubscript:@"date"];

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isWithinBackupPeriodOnPower:(BOOL)power
{
  _lastBackupDate = [(MBUEAPlugin *)self _lastBackupDate];
  if (_lastBackupDate)
  {
    v5 = +[NSDate now];
    v6 = CFPreferencesCopyValue(@"BackupPeriod", @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8;
    }

    else
    {
      v9 = 86400.0;
    }

    v11 = CFPreferencesCopyValue(@"BackupPeriodOnBattery", @"com.apple.MobileBackup", @"mobile", kCFPreferencesCurrentHost);
    v12 = v11;
    if (v11)
    {
      [v11 doubleValue];
      v14 = v13;
    }

    else
    {
      v14 = 604800.0;
    }

    [v5 timeIntervalSinceDate:_lastBackupDate];
    v16 = v15;
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v20 = _lastBackupDate;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v14;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Last successful backup was %@, backupPeriod: %f(%f)", buf, 0x20u);
      _MBLog(@"I ", "Last successful backup was %@, backupPeriod: %f(%f)", _lastBackupDate, *&v9, *&v14);
    }

    if (v16 < v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = (v16 < v14) & ~power;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isWithinPasscodeChangedWindow
{
  if (!self->_dateOfPasscodeChange)
  {
    return 0;
  }

  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->_dateOfPasscodeChange];
  v5 = v4;

  if (v5 <= 0.0 || v5 >= 86400.0)
  {
    dateOfPasscodeChange = self->_dateOfPasscodeChange;
    self->_dateOfPasscodeChange = 0;

    return 0;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "isWithinPasscodeChangeWindow %.2fs", buf, 0xCu);
    _MBLog(@"I ", "isWithinPasscodeChangeWindow %.2fs", v5);
  }

  return 1;
}

- (void)setIsOnPower:(BOOL)power
{
  if ((atomic_exchange(&self->_isOnPower, power) & 1) != power)
  {
    powerCopy = power;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v7 = powerCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "isOnPower changed: %d", buf, 8u);
      _MBLog(@"I ", "isOnPower changed: %d", powerCopy);
    }

    [(MBUEAPlugin *)self _stateDidChange];
  }
}

- (void)setIsLocked:(BOOL)locked
{
  if ((atomic_exchange(&self->_isLocked, locked) & 1) != locked)
  {
    lockedCopy = locked;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v7 = lockedCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "isLocked changed: %d", buf, 8u);
      _MBLog(@"I ", "isLocked changed: %d", lockedCopy);
    }

    [(MBUEAPlugin *)self _stateDidChange];
  }
}

- (void)setIsOnWiFi:(BOOL)fi
{
  if ((atomic_exchange(&self->_isOnWiFi, fi) & 1) != fi)
  {
    fiCopy = fi;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v7 = fiCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "isOnWiFi changed: %d", buf, 8u);
      _MBLog(@"I ", "isOnWiFi changed: %d", fiCopy);
    }

    [(MBUEAPlugin *)self _stateDidChange];
  }
}

- (void)setIsOnCellular:(BOOL)cellular
{
  if ((atomic_exchange(&self->_isOnCellular, cellular) & 1) != cellular)
  {
    cellularCopy = cellular;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v7 = cellularCopy;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "isOnCellular changed: %d", buf, 8u);
      _MBLog(@"I ", "isOnCellular changed: %d", cellularCopy);
    }

    [(MBUEAPlugin *)self _stateDidChange];
  }
}

- (void)_updatePCTimer
{
  dispatch_assert_queue_V2(self->_eventQueue);
  isEnabled = [(MBUEAPlugin *)self isEnabled];
  pcTimer = self->_pcTimer;
  if (isEnabled)
  {
    if (!pcTimer)
    {
      v5 = [[PCPersistentTimer alloc] initWithTimeInterval:@"MobileBackupRegularWake" serviceIdentifier:self target:"_pcTimerFired:" selector:0 userInfo:86400.0];
      v6 = self->_pcTimer;
      self->_pcTimer = v5;

      v7 = self->_pcTimer;
      eventQueue = self->_eventQueue;

      [(PCPersistentTimer *)v7 scheduleInQueue:eventQueue];
    }
  }

  else if (pcTimer)
  {
    [(PCPersistentTimer *)pcTimer invalidate];
    v9 = self->_pcTimer;
    self->_pcTimer = 0;
  }
}

- (void)_pcTimerFired:(id)fired
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "PC timer fired", buf, 2u);
    _MBLog(@"Df", "PC timer fired");
  }

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_494C;
  block[3] = &unk_14640;
  block[4] = self;
  dispatch_async(notificationQueue, block);
  pcTimer = self->_pcTimer;
  self->_pcTimer = 0;

  [(MBUEAPlugin *)self _updatePCTimer];
}

- (void)_handleAccountChange:(int64_t)change account:(id)account
{
  accountCopy = account;
  eventQueue = self->_eventQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A70;
  block[3] = &unk_14668;
  selfCopy = self;
  changeCopy = change;
  v10 = accountCopy;
  v8 = accountCopy;
  dispatch_async(eventQueue, block);
}

- (void)_refetchAllAccounts
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Refetching all accounts", buf, 2u);
    _MBLog(@"Df", "Refetching all accounts");
  }

  v20 = objc_opt_new();
  v19 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(ACMonitoredAccountStore *)self->_accountStore monitoredAccounts];
  v3 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = kAccountDataclassBackup;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        identifier = [v8 identifier];
        v10 = [v8 isEnabledForDataclass:v6];
        aa_isPrimaryEmailVerified = [v8 aa_isPrimaryEmailVerified];
        v12 = aa_isPrimaryEmailVerified;
        if (v10)
        {
          v13 = aa_isPrimaryEmailVerified == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [v20 addObject:identifier];
        }

        manager = self->_manager;
        v23 = 0;
        v15 = [(MBManager *)manager isBackupOnCellularAllowedWithAccount:v8 error:&v23];
        v16 = v23;
        if (v16)
        {
          v17 = MBGetDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v29 = v8;
            v30 = 2112;
            *v31 = v16;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed to check if backup on cellular is allowed for %@: %@", buf, 0x16u);
            _MBLog(@"E ", "Failed to check if backup on cellular is allowed for %@: %@", v8, v16);
          }

          v15 = 0;
        }

        else if (v15)
        {
          [v19 addObject:identifier];
          v15 = &dword_0 + 1;
        }

        v18 = MBGetDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v29 = identifier;
          v30 = 1024;
          *v31 = v10;
          *&v31[4] = 1024;
          *&v31[6] = v12;
          v32 = 1024;
          v33 = v15;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Found account %@ (%d,%d,%d)", buf, 0x1Eu);
          _MBLog(@"Df", "Found account %@ (%d,%d,%d)", identifier, v10, v12, v15);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v4);
  }

  [(MBUEAPlugin *)self setAccountsWithBackupEnabled:v20];
  [(MBUEAPlugin *)self setAccountsWithBackupOnCellularEnabled:v19];
}

- (BOOL)_updateEnabledStateForAccount:(id)account
{
  accountCopy = account;
  dispatch_assert_queue_V2(self->_eventQueue);
  identifier = [accountCopy identifier];
  if (!identifier)
  {
    [(MBUEAPlugin *)self _refetchAllAccounts];
    v8 = 1;
    goto LABEL_27;
  }

  aa_isPrimaryEmailVerified = [accountCopy aa_isPrimaryEmailVerified];
  if (aa_isPrimaryEmailVerified)
  {
    v7 = [accountCopy isEnabledForDataclass:kAccountDataclassBackup];
  }

  else
  {
    v7 = 0;
  }

  accountsWithBackupEnabled = [(MBUEAPlugin *)self accountsWithBackupEnabled];
  v10 = [accountsWithBackupEnabled containsObject:identifier];

  if (!v7 || (v10 & 1) != 0)
  {
    if (v7 & 1 | ((v10 & 1) == 0))
    {
      goto LABEL_12;
    }

    accountsWithBackupEnabled2 = [(MBUEAPlugin *)self accountsWithBackupEnabled];
    [accountsWithBackupEnabled2 removeObject:identifier];
  }

  else
  {
    accountsWithBackupEnabled2 = [(MBUEAPlugin *)self accountsWithBackupEnabled];
    [accountsWithBackupEnabled2 addObject:identifier];
  }

LABEL_12:
  manager = self->_manager;
  v21 = 0;
  v13 = [(MBManager *)manager isBackupOnCellularAllowedWithAccount:accountCopy error:&v21];
  v14 = v21;
  if (v14)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = accountCopy;
      v24 = 2112;
      *v25 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to check if backup on cellular is allowed for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to check if backup on cellular is allowed for %@: %@", accountCopy, v14);
    }

    v13 = 0;
  }

  accountsWithBackupOnCellularEnabled = [(MBUEAPlugin *)self accountsWithBackupOnCellularEnabled];
  v17 = [accountsWithBackupOnCellularEnabled containsObject:identifier];

  if (v13 && (v17 & 1) == 0)
  {
    accountsWithBackupOnCellularEnabled2 = [(MBUEAPlugin *)self accountsWithBackupOnCellularEnabled];
    [accountsWithBackupOnCellularEnabled2 addObject:identifier];
LABEL_21:

    goto LABEL_22;
  }

  if (!(v13 & 1 | ((v17 & 1) == 0)))
  {
    accountsWithBackupOnCellularEnabled2 = [(MBUEAPlugin *)self accountsWithBackupOnCellularEnabled];
    [accountsWithBackupOnCellularEnabled2 removeObject:identifier];
    goto LABEL_21;
  }

LABEL_22:
  v8 = v7 ^ v10 | v13 ^ v17;
  if (v8)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v23 = identifier;
      v24 = 1024;
      *v25 = v7;
      *&v25[4] = 1024;
      *&v25[6] = aa_isPrimaryEmailVerified;
      v26 = 1024;
      v27 = v13;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Updating state for account:%@ (%d,%d,%d)", buf, 0x1Eu);
      _MBLog(@"Df", "Updating state for account:%@ (%d,%d,%d)", identifier, v7, aa_isPrimaryEmailVerified, v13);
    }
  }

LABEL_27:
  return v8 & 1;
}

- (void)_clearEnabledStateForAccount:(id)account
{
  eventQueue = self->_eventQueue;
  accountCopy = account;
  dispatch_assert_queue_V2(eventQueue);
  identifier = [accountCopy identifier];

  if (identifier)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = identifier;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Clearing account %@", buf, 0xCu);
      _MBLog(@"Df", "Clearing account %@", identifier);
    }

    accountsWithBackupEnabled = [(MBUEAPlugin *)self accountsWithBackupEnabled];
    [accountsWithBackupEnabled removeObject:identifier];

    accountsWithBackupOnCellularEnabled = [(MBUEAPlugin *)self accountsWithBackupOnCellularEnabled];
    [accountsWithBackupOnCellularEnabled removeObject:identifier];
  }

  else
  {
    [(MBUEAPlugin *)self _refetchAllAccounts];
  }
}

- (BOOL)_updateGlobalEnabledState
{
  dispatch_assert_queue_V2(self->_eventQueue);
  accountsWithBackupEnabled = [(MBUEAPlugin *)self accountsWithBackupEnabled];
  v4 = [accountsWithBackupEnabled count];

  if (v4)
  {
    accountsWithBackupOnCellularEnabled = [(MBUEAPlugin *)self accountsWithBackupOnCellularEnabled];
    v6 = [accountsWithBackupOnCellularEnabled count] != 0;
  }

  else
  {
    v6 = 0;
  }

  aa_primaryAppleAccount = [(ACMonitoredAccountStore *)self->_accountStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];

  if (identifier)
  {
    accountsWithBackupEnabled2 = [(MBUEAPlugin *)self accountsWithBackupEnabled];
    v10 = [accountsWithBackupEnabled2 containsObject:identifier];
  }

  else
  {
    v10 = 0;
  }

  p_enabledToken = &self->_enabledToken;
  enabledToken = self->_enabledToken;
  if (enabledToken == -1)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v34) = v10;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Primary account enabled state (%d)", buf, 8u);
      _MBLog(@"Df", "Primary account enabled state (%d)", v10);
    }

    v22 = notify_register_check("com.apple.private.restrict-post.MobileBackup.EnabledState", &self->_enabledToken);
    if (v22)
    {
      v23 = v22;
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v34 = v23;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "notify_register_check failed: %lu", buf, 0xCu);
        _MBLog(@"E ", "notify_register_check failed: %lu", v23);
      }

      *p_enabledToken = -1;
      goto LABEL_35;
    }

    enabledToken = *p_enabledToken;
    if (*p_enabledToken == -1)
    {
      goto LABEL_35;
    }
  }

  state64 = 0;
  state = notify_get_state(enabledToken, &state64);
  if (state)
  {
    v14 = state;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "notify_get_state failed: %lu", buf, 0xCu);
      _MBLog(@"E ", "notify_get_state failed: %lu", v14);
    }

    state64 = 0;
    if (v10)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }
  }

  else
  {
    if (v10)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    if (state64 && state64 == v16)
    {
      goto LABEL_35;
    }
  }

  v17 = MBGetDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v34 = state64;
    v35 = 2048;
    v36 = v16;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Updating the backup enabled notify state from 0x%llx to 0x%llx", buf, 0x16u);
    _MBLog(@"I ", "Updating the backup enabled notify state from 0x%llx to 0x%llx", state64, v16);
  }

  v18 = notify_set_state(*p_enabledToken, v16);
  if (v18)
  {
    v19 = v18;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v19;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "notify_set_state failed: %lu", buf, 0xCu);
      _MBLog(@"E ", "notify_set_state failed: %lu");
    }
  }

  else
  {
    v25 = notify_post("com.apple.private.restrict-post.MobileBackup.EnabledState");
    if (!v25)
    {
      goto LABEL_35;
    }

    v26 = v25;
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v34 = v26;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "notify_post failed: %lu", buf, 0xCu);
      _MBLog(@"E ", "notify_post failed: %lu");
    }
  }

LABEL_35:
  v27 = v4 != 0;
  v28 = v27 ^ atomic_exchange(&self->_isEnabled, v4 != 0);
  if (v28)
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v34) = v27;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "isEnabled changed: %d", buf, 8u);
      _MBLog(@"Df", "isEnabled changed: %d", v27);
    }
  }

  if (v6 != (atomic_exchange(&self->_isBackupOnCellularEnabled, v6) & 1))
  {
    v30 = MBGetDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v34) = v6;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "isBackupOnCellularEnabled changed: %d", buf, 8u);
      _MBLog(@"Df", "isBackupOnCellularEnabled changed: %d", v6);
    }
  }

  if ((v28 | v6))
  {
    [(MBUEAPlugin *)self _stateDidChange];
    [(MBUEAPlugin *)self _updatePCTimer];
  }

  return (v28 | v6) & 1;
}

- (void)_notifyDaemonOfAccountChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_eventQueue);
  if (sub_42D0())
  {
    notificationQueue = self->_notificationQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_59E8;
    v6[3] = &unk_14690;
    v6[4] = self;
    v7 = changeCopy;
    dispatch_async(notificationQueue, v6);
  }
}

- (void)notifyDaemonThatDeviceIsLocking
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5A68;
  block[3] = &unk_14640;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)notifyDaemonThatDeviceIsUnlocked
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5B28;
  block[3] = &unk_14640;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)notifyDaemonOfPasscodeChange
{
  v3 = +[NSDate now];
  dateOfPasscodeChange = self->_dateOfPasscodeChange;
  self->_dateOfPasscodeChange = v3;

  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5C0C;
  block[3] = &unk_14640;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

- (void)managerDidLoseConnectionToService:(id)service
{
  if ([(MBUEAPlugin *)self wakeBackupOnDisconnect])
  {

    [(MBUEAPlugin *)self _stateDidChange];
  }
}

@end