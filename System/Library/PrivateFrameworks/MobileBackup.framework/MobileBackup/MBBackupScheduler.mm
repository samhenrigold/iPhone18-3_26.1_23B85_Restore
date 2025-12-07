@interface MBBackupScheduler
+ (BOOL)backupOnWiFiWithDAS;
+ (MBBackupScheduler)sharedInstance;
+ (id)lastOnConditionEventsForAccount:(id)account;
+ (void)_setLastOnConditionEvents:(id)events account:(id)account;
+ (void)postBackupCompletionNotificationWithAccount:(id)account completionError:(id)error;
- ($3C5213C2FB734B7CA09EF95E8A7A7A2F)conditions;
- (BOOL)_fetchNextBackupDateAcrossAccountsOnWifi:(id *)wifi cellular:(id *)cellular battery:(id *)battery error:(id *)error;
- (BOOL)_fetchNextBackupDateOnWiFi:(id *)fi nextBackupDateOnCellular:(id *)cellular nextBackupDateOnBattery:(id *)battery lastBackupDate:(id *)date account:(id)account connection:(id)connection error:(id *)error;
- (BOOL)_isBackupAllowed;
- (BOOL)_isBackupOnCellularAllowedForAccount:(id)account;
- (BOOL)_shouldStartBackupWithAccount:(id)account reason:(int64_t)reason;
- (BOOL)_startBackupForNextAvailableAccountWithRequest:(id)request;
- (BOOL)_startBackupRequestForActivity:(int)activity;
- (id)_backoffDateForAccount:(id)account softCancelled:(BOOL)cancelled;
- (id)_conditionLossTimerWithSeconds:(int64_t)seconds changes:(id)changes;
- (id)_dateOfLastBackupFromCloudWithConnection:(id)connection account:(id)account error:(id *)error;
- (id)_dateOfLastBackupFromLockdown;
- (id)_descriptionForTTR:(id)r account:(id)account;
- (id)_fetchAccountsAndIsEnabled:(BOOL *)enabled isBackupOnCellularEnabled:(BOOL *)cellularEnabled;
- (id)_initWithServiceManager:(id)manager;
- (id)_lastSnapshotFromCacheWithAccount:(id)account;
- (id)_nilBackupDateFetchDateForAccount:(id)account;
- (id)_onBatteryRetryAfterDateForAccount:(id)account;
- (id)_retryAfterDateForAccount:(id)account;
- (id)dateOfLastBackupWithAccount:(id)account connection:(id)connection error:(id *)error;
- (id)dateOfNextScheduledBackupWithAccount:(id)account connection:(id)connection error:(id *)error;
- (int64_t)_determineInternalNotificationActionForErrors:(id)errors dateOfLastUnlock:(id)unlock;
- (int64_t)_scheduleBackupOnWiFi:(BOOL)fi onCellular:(BOOL)cellular onBattery:(BOOL)battery;
- (unint64_t)_lastPendingSnapshotSizeForAccount:(id)account;
- (void)_cancelAlarm;
- (void)_cancelBackupWithActivityType:(int)type changes:(id)changes;
- (void)_cancelInitiatedBackupWithChanges:(id)changes isDeferred:(BOOL)deferred;
- (void)_cancelInternalNotification;
- (void)_cancelLossTimers;
- (void)_cancelPowerLossTimer;
- (void)_cancelWiFiLossTimer;
- (void)_checkinXPCActivities;
- (void)_clearAllFailureCountsForAccount:(id)account;
- (void)_clearAllRetryAfterDatesForAccount:(id)account;
- (void)_clearDateOfLastPasscodeChange;
- (void)_clearFailureCountWithKey:(id)key account:(id)account;
- (void)_clearLastPendingSnapshotSizeForAccount:(id)account;
- (void)_clearRetryAfterDateWithKey:(id)key account:(id)account;
- (void)_handleAlarm;
- (void)_holdWorkAssertion;
- (void)_installMonitors;
- (void)_managerDidFailBackupWithAccount:(id)account error:(id)error;
- (void)_managerDidFinishBackupWithAccount:(id)account;
- (void)_notifyStateChanged:(id)changed conditions:(id)conditions;
- (void)_onQueue_warnUserOfDelayedRestoreWithAccount:(id)account;
- (void)_onQueue_warnUserOfLateBackupWithAccount:(id)account;
- (void)_refreshRetryAfterDateForAccount:(id)account softCancelled:(BOOL)cancelled;
- (void)_registerAlarmHandler;
- (void)_releaseWorkAssertion;
- (void)_scheduleNextBackup;
- (void)_setIsAutoBackupOnCellularAllowed:(BOOL)allowed;
- (void)_setIsBackupOnCellularEnabled:(BOOL)enabled;
- (void)_setIsEnabled:(BOOL)enabled;
- (void)_setIsLocked:(BOOL)locked;
- (void)_setIsOnCellular:(BOOL)cellular;
- (void)_setIsOnExpensiveCellular:(BOOL)cellular;
- (void)_setIsOnPower:(BOOL)power;
- (void)_setIsOnWiFi:(BOOL)fi;
- (void)_stateDidChange:(id)change conditions:(id)conditions;
- (void)_tearDownScheduledBackupWithActivityType:(int)type;
- (void)_triggerInternalNotificationWithAccount:(id)account;
- (void)_updateFailureCountsForAccount:(id)account lastBackupError:(id)error canceled:(BOOL)canceled lowCellularBudget:(BOOL)budget;
- (void)_updateNilBackupDateFetchDate:(id)date account:(id)account;
- (void)_updateRetryAfterDate:(id)date forKey:(id)key account:(id)account ignoreExistingDate:(BOOL)existingDate;
- (void)_updateRetryAfterDateAfterUnlockForAccount:(id)account;
- (void)_warnUserOfLateBackupWithAccount:(id)account;
- (void)accountChanged;
- (void)backupActivityIsRunnable:(int)runnable;
- (void)clearNilBackupDateFetchDateForAccount:(id)account;
- (void)dealloc;
- (void)passcodeChanged;
- (void)warnUserOfDelayedRestoreWithAccount:(id)account;
@end

@implementation MBBackupScheduler

+ (MBBackupScheduler)sharedInstance
{
  +[MBCKManager sharedInstance];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D33D8;
  v8 = block[3] = &unk_1003BC0B0;
  v2 = qword_100421A08;
  v3 = v8;
  if (v2 != -1)
  {
    dispatch_once(&qword_100421A08, block);
  }

  v4 = qword_100421A00;
  v5 = qword_100421A00;

  return v4;
}

- (id)_initWithServiceManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    __assert_rtn("[MBBackupScheduler _initWithServiceManager:]", "MBBackupScheduler.m", 218, "serviceManager");
  }

  v6 = managerCopy;
  v48.receiver = self;
  v48.super_class = MBBackupScheduler;
  v7 = [(MBBackupScheduler *)&v48 init];
  if (v7)
  {
    v8 = time(0);
    srand48(v8);
    atomic_store(0, v7 + 22);
    *(v7 + 14) = -1;
    *(v7 + 30) = -1;
    objc_storeStrong(v7 + 1, manager);
    v9 = dispatch_group_create();
    [v7 setFirstConditionsGroup:v9];

    firstConditionsGroup = [v7 firstConditionsGroup];
    dispatch_group_enter(firstConditionsGroup);

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create("com.apple.backupd.followup", v12);
    v14 = *(v7 + 3);
    *(v7 + 3) = v13;

    v15 = dispatch_queue_attr_make_initially_inactive(v12);
    v16 = dispatch_queue_create("com.apple.backupd.scheduler", v15);
    v17 = *(v7 + 2);
    *(v7 + 2) = v16;

    v18 = objc_opt_new();
    v19 = *(v7 + 20);
    *(v7 + 20) = v18;

    v20 = objc_opt_new();
    v21 = *(v7 + 21);
    *(v7 + 21) = v20;

    v22 = *(v7 + 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D3920;
    block[3] = &unk_1003BC0B0;
    v23 = v7;
    v47 = v23;
    dispatch_async(v22, block);
    v45 = 0;
    v24 = [MBPersona getPersonalBooleanValueForKey:@"AllowBackupOnExpensiveCellular" keyExists:&v45];
    if (v45)
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v50) = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= Backup on cellular allowed (plist override): %d", buf, 8u);
        _MBLog(@"Df", "=scheduler= Backup on cellular allowed (plist override): %d", v24);
      }
    }

    *(v23 + 124) = v24 != 0;
    v45 = 0;
    v26 = [MBPersona getPersonalBooleanValueForKey:@"AllowBackupOnBattery" keyExists:&v45];
    v27 = 0;
    if (v45)
    {
      v28 = v26;
      if (v26)
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v50) = v28;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "=scheduler= Backup on battery allowed (plist override): %d", buf, 8u);
          _MBLog(@"Df", "=scheduler= Backup on battery allowed (plist override): %d", v28);
        }

        v27 = 1;
      }
    }

    *(v23 + 125) = v27;
    v45 = 0;
    v30 = [MBPersona getPersonalBooleanValueForKey:@"IgnorePowerState" keyExists:&v45];
    if (v45)
    {
      v31 = v30 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = !v31;
    *(v23 + 108) = v32;
    v33 = [MBPersona copyPersonalPreferencesValueForKey:@"DateOfLastPasscodeChange" class:objc_opt_class()];
    if (v33)
    {
      v34 = +[NSDate now];
      [v34 timeIntervalSinceDate:v33];
      v36 = v35;

      v37 = MBGetDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = v36 / 60.0;
        *buf = 134217984;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=scheduler= Passcode was changed %.2f minutes ago", buf, 0xCu);
        _MBLog(@"I ", "=scheduler= Passcode was changed %.2f minutes ago", v38);
      }

      if ([v33 isWithinDefaultBackupPeriod])
      {
        objc_storeStrong(v23 + 29, v33);
      }

      else
      {
        [v23 _clearDateOfLastPasscodeChange];
      }
    }

    v39 = *(v7 + 2);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001D39CC;
    v43[3] = &unk_1003BC0B0;
    v40 = v23;
    v44 = v40;
    dispatch_async(v39, v43);
    v41 = v40[32];
    v40[32] = 0;

    dispatch_activate(*(v7 + 2));
  }

  return v7;
}

- (void)dealloc
{
  networkPathMonitor = [(MBBackupScheduler *)self networkPathMonitor];
  [networkPathMonitor cancel];

  [(MBBackupScheduler *)self _cancelLossTimers];
  powerToken = self->_powerToken;
  if (powerToken != -1)
  {
    notify_cancel(powerToken);
  }

  lockScreenToken = self->_lockScreenToken;
  if (lockScreenToken != -1)
  {
    notify_cancel(lockScreenToken);
  }

  keyBagLockToken = self->_keyBagLockToken;
  if (keyBagLockToken != -1)
  {
    notify_cancel(keyBagLockToken);
  }

  v7.receiver = self;
  v7.super_class = MBBackupScheduler;
  [(MBBackupScheduler *)&v7 dealloc];
}

- (void)_installMonitors
{
  p_stateQueue = &self->_stateQueue;
  dispatch_assert_queue_V2(self->_stateQueue);
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D3ED0;
  v18[3] = &unk_1003C1000;
  objc_copyWeak(&v19, &location);
  v4 = objc_retainBlock(v18);
  notify_register_dispatch(kMobileKeyBagLockStatusNotifyToken, &self->_keyBagLockToken, *p_stateQueue, v4);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D3F34;
  v16[3] = &unk_1003C1000;
  objc_copyWeak(&v17, &location);
  v5 = objc_retainBlock(v16);
  notify_register_dispatch(kSBSLockStateNotifyKey, &self->_lockScreenToken, self->_stateQueue, v5);
  (v5[2])(v5, self->_lockScreenToken);
  (v4[2])(v4, self->_keyBagLockToken);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D407C;
  v14[3] = &unk_1003C1000;
  objc_copyWeak(&v15, &location);
  v6 = objc_retainBlock(v14);
  v7 = notify_register_dispatch("com.apple.system.powersources.source", &self->_powerToken, self->_stateQueue, v6);
  if (v7)
  {
    self->_powerToken = -1;
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v22 = "com.apple.system.powersources.source";
      v23 = 1024;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=scheduler= notify_register_dispatch(%{public}s) failed: %u", buf, 0x12u);
      _MBLog(@"E ", "=scheduler= notify_register_dispatch(%{public}s) failed: %u", "com.apple.system.powersources.source", v7);
    }
  }

  (v6[2])(v6, self->_powerToken);
  v9 = [[MBNetworkPathMonitor alloc] initWithQueue:self->_stateQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D4174;
  v12[3] = &unk_1003C1240;
  objc_copyWeak(&v13, &location);
  [v9 setBackupOnCellularSupportUpdateHandler:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D41C8;
  v10[3] = &unk_1003BDA48;
  objc_copyWeak(&v11, &location);
  [v9 setNetworkPathUpdateHandler:v10];
  [(MBBackupScheduler *)self setNetworkPathMonitor:v9];
  [v9 start];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

+ (void)postBackupCompletionNotificationWithAccount:(id)account completionError:(id)error
{
  accountCopy = account;
  errorCopy = error;
  sharedInstance = [self sharedInstance];
  v9 = sharedInstance[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D433C;
  block[3] = &unk_1003BC2E0;
  v14 = accountCopy;
  v15 = errorCopy;
  v16 = sharedInstance;
  v10 = sharedInstance;
  v11 = errorCopy;
  v12 = accountCopy;
  dispatch_async(v9, block);
}

+ (id)lastOnConditionEventsForAccount:(id)account
{
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"LastOnConditionEvents" class:objc_opt_class()];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v5;
LABEL_11:

  return v10;
}

+ (void)_setLastOnConditionEvents:(id)events account:(id)account
{
  eventsCopy = events;
  persona = [account persona];
  [persona setPreferencesValue:eventsCopy forKey:@"LastOnConditionEvents"];
}

- (void)_checkinXPCActivities
{
  v3 = [[MBXPCActivityCoordinator alloc] initWithDelegate:self];
  v31 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:1];
  v4 = xpc_activity_copy_criteria(v31);
  v5 = xpc_dictionary_get_value(v4, XPC_ACTIVITY_DELAY);
  v6 = +[NSDate now];
  if (v5)
  {
    v7 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v5)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v7 forKeyedSubscript:&off_1003E0F90];
  }

  v29 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:2];
  v8 = xpc_activity_copy_criteria(v29);

  v9 = xpc_dictionary_get_value(v8, XPC_ACTIVITY_DELAY);

  if (v9)
  {
    v10 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v9)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v10 forKeyedSubscript:&off_1003E0FA8];
  }

  v27 = [(MBXPCActivityCoordinator *)v3 checkInBackupActivity:3];
  v11 = xpc_activity_copy_criteria(v27);

  v28 = v11;
  v12 = xpc_dictionary_get_value(v11, XPC_ACTIVITY_DELAY);

  if (v12)
  {
    v13 = [v6 dateByAddingTimeInterval:xpc_int64_get_value(v12)];
    [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v13 forKeyedSubscript:&off_1003E0FC0];
  }

  v26 = v12;
  v30 = v6;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = self->_nextBackupDatesByActivityType;
  v15 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = MBBackupXPCActivityNameWithType([v19 intValue]);
          v22 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:v19];
          *buf = 136315394;
          v37 = v21;
          v38 = 2114;
          v39 = v22;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Found already scheduled backup for %s at %{public}@", buf, 0x16u);

          v23 = MBBackupXPCActivityNameWithType([v19 intValue]);
          v24 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:v19];
          _MBLog(@"Df", "=scheduler= Found already scheduled backup for %s at %{public}@", v23, v24);
        }
      }

      v16 = [(NSMutableDictionary *)v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v16);
  }

  activityCoordinator = self->_activityCoordinator;
  self->_activityCoordinator = v3;
}

- (void)_updateFailureCountsForAccount:(id)account lastBackupError:(id)error canceled:(BOOL)canceled lowCellularBudget:(BOOL)budget
{
  budgetCopy = budget;
  canceledCopy = canceled;
  accountCopy = account;
  errorCopy = error;
  persona = [accountCopy persona];
  v13 = [persona copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

  LODWORD(persona) = [MBError isError:errorCopy withCode:209];
  if (persona)
  {
    unsignedIntegerValue = [v13 unsignedIntegerValue];
    v15 = unsignedIntegerValue + 1;
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [accountCopy accountIdentifier];
      *buf = 138544130;
      v33 = @"MissingEncryptionKeyFailureCount";
      v34 = 2114;
      v35 = accountIdentifier;
      v36 = 2048;
      v37 = unsignedIntegerValue + 1;
      v38 = 2048;
      v39 = unsignedIntegerValue;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", buf, 0x2Au);

      accountIdentifier2 = [accountCopy accountIdentifier];
      _MBLog(@"Df", "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", @"MissingEncryptionKeyFailureCount", accountIdentifier2, v15, unsignedIntegerValue);
    }

    persona2 = [accountCopy persona];
    v20 = [NSNumber numberWithUnsignedInteger:v15];
    [persona2 setPreferencesValue:v20 forKey:@"MissingEncryptionKeyFailureCount"];
  }

  else
  {
    v21 = 1;
    if (v13)
    {
      v21 = 2;
    }

    if (!canceledCopy || budgetCopy)
    {
      v22 = v21;
    }

    else
    {
      v22 = v13 != 0;
    }

    if (v22)
    {
      persona3 = [accountCopy persona];
      v24 = [persona3 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
      unsignedIntegerValue2 = [v24 unsignedIntegerValue];

      v26 = &unsignedIntegerValue2[v22];
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        accountIdentifier3 = [accountCopy accountIdentifier];
        *buf = 138544130;
        v33 = @"FailureCount";
        v34 = 2114;
        v35 = accountIdentifier3;
        v36 = 2048;
        v37 = v26;
        v38 = 2048;
        v39 = unsignedIntegerValue2;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", buf, 0x2Au);

        accountIdentifier4 = [accountCopy accountIdentifier];
        _MBLog(@"Df", "=scheduler= Updating %{public}@ for account %{public}@: %lu(%lu)", @"FailureCount", accountIdentifier4, v26, unsignedIntegerValue2);
      }

      persona4 = [accountCopy persona];
      v31 = [NSNumber numberWithUnsignedInteger:v26];
      [persona4 setPreferencesValue:v31 forKey:@"FailureCount"];
    }

    if (v13)
    {
      [(MBBackupScheduler *)self _clearFailureCountWithKey:@"MissingEncryptionKeyFailureCount" account:accountCopy];
    }
  }
}

- (void)_clearFailureCountWithKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  if (([keyCopy isEqualToString:@"FailureCount"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"MissingEncryptionKeyFailureCount") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _clearFailureCountWithKey:account:]", "MBBackupScheduler.m", 492, "[key isEqualToString:kMBFailureCountKey] || [key isEqualToString:kMBMissingEncryptionKeyFailureCountKey]");
  }

  persona = [accountCopy persona];
  v8 = [persona copyPreferencesValueForKey:keyCopy class:objc_opt_class()];

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543874;
    v14 = keyCopy;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ (%{public}@) for account %{public}@", buf, 0x20u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Clearing %{public}@ (%{public}@) for account %{public}@", keyCopy, v8, accountIdentifier2);
  }

  persona2 = [accountCopy persona];
  [persona2 setPreferencesValue:0 forKey:keyCopy];
}

- (void)_clearAllFailureCountsForAccount:(id)account
{
  accountCopy = account;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&off_1003E23C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&off_1003E23C0);
        }

        [(MBBackupScheduler *)self _clearFailureCountWithKey:*(*(&v9 + 1) + 8 * v8) account:accountCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [&off_1003E23C0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_backoffDateForAccount:(id)account softCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  accountCopy = account;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:1];
  if (cancelledCopy)
  {
    v8 = 30.0;
    v9 = [NSDate dateWithTimeIntervalSinceNow:30.0];
    v10 = @"RetryAfter";
  }

  else
  {
    persona = [accountCopy persona];
    v12 = [persona copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

    if (v12)
    {
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      if (unsignedIntegerValue <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = unsignedIntegerValue;
      }

      v15 = 5;
      if (v14 < 5)
      {
        v15 = v14;
      }

      v16 = dbl_1002BA088[v15 - 1];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *v30 = @"MissingEncryptionKeyFailureCount";
        *&v30[8] = 2048;
        *&v30[10] = v14;
        *&v30[18] = 2048;
        *&v30[20] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=scheduler= %{public}@, failureCount:%lu, backoff:%G", buf, 0x20u);
        _MBLog(@"I ", "=scheduler= %{public}@, failureCount:%lu, backoff:%G", @"MissingEncryptionKeyFailureCount", v14, *&v16);
      }

      v10 = @"MissingEncryptionKeyRetryAfter";
    }

    else
    {
      persona2 = [accountCopy persona];
      v19 = [persona2 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
      unsignedIntegerValue2 = [v19 unsignedIntegerValue];

      v21 = 6;
      if (unsignedIntegerValue2 < 6)
      {
        v21 = unsignedIntegerValue2;
      }

      v16 = dbl_1002BA0B0[v21];
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        *v30 = @"FailureCount";
        *&v30[8] = 2048;
        *&v30[10] = unsignedIntegerValue2;
        *&v30[18] = 2048;
        *&v30[20] = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=scheduler= %{public}@, failureCount:%lu, backoff:%G", buf, 0x20u);
        _MBLog(@"I ", "=scheduler= %{public}@, failureCount:%lu, backoff:%G", @"FailureCount", unsignedIntegerValue2, *&v16);
      }

      v10 = @"RetryAfter";
    }

    if (v16 <= 0.0)
    {
      __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 549, "0.0 < backoff");
    }

    v8 = v16 + (drand48() + -0.5) * floor(v16 * 0.25);
    v9 = [NSDate dateWithTimeIntervalSinceNow:v8];
    v22 = [NSDate dateWithTimeIntervalSinceNow:fmax(v8, 1800.0)];
    [(MBBackupScheduler *)self _updateRetryAfterDate:v22 forKey:@"OnBatteryRetryAfter" account:accountCopy];
  }

  if (!v9)
  {
    __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 558, "backoffDate");
  }

  [v7 setObject:v9 forKeyedSubscript:v10];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = MBStringWithDate();
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 67109890;
    *v30 = cancelledCopy;
    *&v30[4] = 2048;
    *&v30[6] = v8;
    *&v30[14] = 2114;
    *&v30[16] = v24;
    *&v30[24] = 2114;
    *&v30[26] = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "=scheduler= softCancelled:%d, backoff:%G, backoffDate:%{public}@, account:%{public}@", buf, 0x26u);

    v26 = MBStringWithDate();
    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"I ", "=scheduler= softCancelled:%d, backoff:%G, backoffDate:%{public}@, account:%{public}@", cancelledCopy, *&v8, v26, accountIdentifier2);
  }

  if ([v7 count] != 1)
  {
    __assert_rtn("[MBBackupScheduler _backoffDateForAccount:softCancelled:]", "MBBackupScheduler.m", 563, "result.count == 1");
  }

  return v7;
}

- (id)_retryAfterDateForAccount:(id)account
{
  accountCopy = account;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [&off_1003E23D8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(&off_1003E23D8);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        persona = [accountCopy persona];
        v11 = [persona copyPreferencesValueForKey:v9 class:objc_opt_class()];

        if (v11)
        {
          if (v6)
          {
            v12 = [v11 laterDate:v6];

            v6 = v12;
          }

          else
          {
            v6 = v11;
          }
        }
      }

      v5 = [&off_1003E23D8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v14 = [v6 earlierDate:v13];

  return v14;
}

- (id)_onBatteryRetryAfterDateForAccount:(id)account
{
  persona = [account persona];
  v4 = [persona copyPreferencesValueForKey:@"OnBatteryRetryAfter" class:objc_opt_class()];

  v5 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v6 = [v4 earlierDate:v5];

  return v6;
}

- (void)_clearRetryAfterDateWithKey:(id)key account:(id)account
{
  keyCopy = key;
  accountCopy = account;
  if (([keyCopy isEqualToString:@"RetryAfter"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"MissingEncryptionKeyRetryAfter") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"OnBatteryRetryAfter") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _clearRetryAfterDateWithKey:account:]", "MBBackupScheduler.m", 591, "[key isEqualToString:kMBRetryAfterKey] || [key isEqualToString:kMBMissingEncryptionKeyRetryAfterKey] || [key isEqualToString:kMBOnBatteryRetryAfterKey]");
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v12 = keyCopy;
    v13 = 2114;
    v14 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Clearing %{public}@ for account %{public}@", keyCopy, accountIdentifier2);
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:0 forKey:keyCopy];
}

- (void)_clearAllRetryAfterDatesForAccount:(id)account
{
  accountCopy = account;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [&off_1003E23F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(&off_1003E23F0);
        }

        [(MBBackupScheduler *)self _clearRetryAfterDateWithKey:*(*(&v9 + 1) + 8 * v8) account:accountCopy];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [&off_1003E23F0 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateRetryAfterDate:(id)date forKey:(id)key account:(id)account ignoreExistingDate:(BOOL)existingDate
{
  existingDateCopy = existingDate;
  dateCopy = date;
  keyCopy = key;
  accountCopy = account;
  if (([keyCopy isEqualToString:@"RetryAfter"] & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"OnBatteryRetryAfter") & 1) == 0 && (objc_msgSend(keyCopy, "isEqualToString:", @"MissingEncryptionKeyRetryAfter") & 1) == 0)
  {
    __assert_rtn("[MBBackupScheduler _updateRetryAfterDate:forKey:account:ignoreExistingDate:]", "MBBackupScheduler.m", 604, "[key isEqualToString:kMBRetryAfterKey] || [key isEqualToString:kMBOnBatteryRetryAfterKey] || [key isEqualToString:kMBMissingEncryptionKeyRetryAfterKey]");
  }

  persona = [accountCopy persona];
  v13 = [persona copyPreferencesValueForKey:keyCopy class:objc_opt_class()];

  if (existingDateCopy || !v13)
  {
    v14 = dateCopy;
  }

  else
  {
    v14 = [dateCopy laterDate:v13];
  }

  v15 = v14;
  v16 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v17 = [v15 earlierDate:v16];

  v18 = MBGetDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    MBStringWithDate();
    v19 = v26 = dateCopy;
    v20 = MBStringWithDate();
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138544386;
    v28 = keyCopy;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    v33 = 2114;
    v34 = accountIdentifier;
    v35 = 1024;
    v36 = existingDateCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ from %{public}@ to %{public}@ for account %{public}@ (%d)", buf, 0x30u);

    v22 = MBStringWithDate();
    v23 = MBStringWithDate();
    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Updating %{public}@ from %{public}@ to %{public}@ for account %{public}@ (%d)", keyCopy, v22, v23, accountIdentifier2, existingDateCopy);

    dateCopy = v26;
  }

  persona2 = [accountCopy persona];
  [persona2 setPreferencesValue:v17 forKey:keyCopy];
}

- (void)_refreshRetryAfterDateForAccount:(id)account softCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  accountCopy = account;
  v7 = [(MBBackupScheduler *)self _backoffDateForAccount:accountCopy softCancelled:cancelledCopy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D5D48;
  v9[3] = &unk_1003C1268;
  v9[4] = self;
  v10 = accountCopy;
  v8 = accountCopy;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)_holdWorkAssertion
{
  if (!atomic_fetch_add(&self->_workAssertions, 1u))
  {
    v3 = +[MBDaemon sharedDaemon];
    [v3 holdWorkAssertionWithClass:objc_opt_class()];
  }
}

- (void)_releaseWorkAssertion
{
  if (atomic_fetch_add(&self->_workAssertions, 0xFFFFFFFF) == 1)
  {
    v3 = +[MBDaemon sharedDaemon];
    [v3 releaseWorkAssertionWithClass:objc_opt_class()];
  }
}

- (void)_cancelInitiatedBackupWithChanges:(id)changes isDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  changesCopy = changes;
  dispatch_assert_queue_V2(self->_stateQueue);
  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
  v8 = initiatedBackupRequest;
  if (initiatedBackupRequest && ![initiatedBackupRequest cancelled])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v53 = v8;
      v54 = 2114;
      v55 = changesCopy;
      v56 = 1024;
      v57 = deferredCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling initiated backup %@, changes:%{public}@ isDeferred:%d", buf, 0x1Cu);
      _MBLog(@"Df", "=scheduler= Canceling initiated backup %@, changes:%{public}@ isDeferred:%d", v8, changesCopy, deferredCopy);
    }

    [(MBBackupScheduler *)self _cancelLossTimers];
    conditions = [(MBBackupScheduler *)self conditions];
    v12 = *&conditions.var0;
    v13 = (*&conditions >> 40) & 1;
    v14 = HIWORD(*&conditions) & 1;
    v46 = HIBYTE(*&conditions) & 1;
    v40 = v13;
    v41 = v14;
    if (changesCopy)
    {
      v15 = objc_msgSend_enabled(changesCopy);
      onPower = [changesCopy onPower];
      locked = [changesCopy locked];
      onWiFi = [changesCopy onWiFi];
      onCellular = [changesCopy onCellular];
      onExpensiveCellular = [changesCopy onExpensiveCellular];
      [changesCopy autoBackupOnCellularAllowed];
    }

    else
    {
      v15 = [NSNumber numberWithBool:conditions.var0];
      v48 = [NSNumber numberWithBool:HIWORD(v12) & 1];
      v18 = [NSNumber numberWithBool:(v12 >> 8) & 1];
      onWiFi = [NSNumber numberWithBool:HIBYTE(v12) & 1];
      v19 = v13;
      locked = v18;
      onPower = v48;
      onCellular = [NSNumber numberWithBool:v19];
      onExpensiveCellular = [NSNumber numberWithBool:v14];
      [NSNumber numberWithBool:v46];
    }
    v20 = ;
    if (deferredCopy)
    {
      v21 = 223;
    }

    else
    {
      v21 = 202;
    }

    v42 = locked;
    v43 = changesCopy;
    v49 = onPower;
    if (v15 && ![v15 BOOLValue])
    {
      v21 = 217;
    }

    else if (onPower && ![onPower BOOLValue])
    {
      v21 = 219;
    }

    else if (locked && ![locked BOOLValue])
    {
      v21 = 218;
    }

    else if ([v8 activityType] == 2 && onWiFi && !objc_msgSend(onWiFi, "BOOLValue"))
    {
      v21 = 220;
    }

    else if ([v8 activityType] == 1)
    {
      v22 = onCellular;
      if (onCellular && (v23 = [onCellular BOOLValue], v22 = onCellular, !v23))
      {
        v21 = 221;
      }

      else if (onExpensiveCellular && (v24 = [onExpensiveCellular BOOLValue], v22 = onCellular, (v24 & 1) != 0))
      {
        v21 = 222;
      }

      else
      {
        onCellular = v22;
        if (v20 && ![v20 BOOLValue])
        {
          v21 = 224;
        }
      }
    }

    v39 = v20;
    v25 = MBBackupXPCActivityNameWithType([v8 activityType]);
    v26 = [MBEngine stringForEngineMode:1];
    v27 = [MBError errorWithCode:v21 format:@"%@ cancelled (%s)", v26, v25];

    if (([MBError isCancelledError:v27]& 1) == 0)
    {
      __assert_rtn("[MBBackupScheduler _cancelInitiatedBackupWithChanges:isDeferred:]", "MBBackupScheduler.m", 690, "[MBError isCancelledError:cancelError]");
    }

    [(MBCKManager *)self->_serviceManager cancelBackupEngineWithError:v27 connection:0];
    v38 = v27;
    v28 = [MBEngine stringForEngineType:3];
    v36 = [NSString stringWithFormat:@"%@.%@.%@", @"com.apple.MobileBackup", v28, @"scheduler.cancel"];

    v50[0] = @"onPower";
    v37 = [NSNumber numberWithBool:HIWORD(v12) & 1];
    v51[0] = v37;
    v50[1] = @"locked";
    v29 = [NSNumber numberWithBool:(v12 >> 8) & 1];
    v51[1] = v29;
    v50[2] = @"onWiFi";
    v30 = [NSNumber numberWithBool:HIBYTE(v12) & 1];
    v51[2] = v30;
    v50[3] = @"onCellular";
    v31 = [NSNumber numberWithBool:v40];
    v51[3] = v31;
    v50[4] = @"onExpensiveCellular";
    v32 = [NSNumber numberWithBool:v41];
    v51[4] = v32;
    v50[5] = @"autoBackupOnCellularAllowed";
    v33 = [NSNumber numberWithBool:v46];
    v51[5] = v33;
    v50[6] = @"enabled";
    v34 = [NSNumber numberWithBool:v12 & 1];
    v51[6] = v34;
    v35 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:7];
    v9 = v15;
    [MBTelemetry submitEventName:v36 event:v35];

    changesCopy = v43;
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "=scheduler= Not cancelling initiated backup request %@", buf, 0xCu);
      _MBLog(@"I ", "=scheduler= Not cancelling initiated backup request %@", v8);
    }
  }
}

- (BOOL)_shouldStartBackupWithAccount:(id)account reason:(int64_t)reason
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _shouldStartBackupWithAccount:reason:]", "MBBackupScheduler.m", 707, "account");
  }

  v7 = accountCopy;
  if ((reason - 4) >= 2 && reason != 2)
  {
    __assert_rtn("[MBBackupScheduler _shouldStartBackupWithAccount:reason:]", "MBBackupScheduler.m", 708, "reason == kMBBackupReasonScheduledOnWiFi || reason == kMBBackupReasonScheduledOnCellular || reason == kMBBackupReasonScheduledOnBattery");
  }

  dispatch_assert_queue_V2(self->_stateQueue);
  if ([v7 isEnabled])
  {
    if (reason != 4 || [(MBBackupScheduler *)self _isBackupOnCellularAllowedForAccount:v7])
    {
      accountIdentifier2 = +[NSDate now];
      v41 = 0;
      v42 = 0;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v9 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v42 nextBackupDateOnCellular:&v41 nextBackupDateOnBattery:&v40 lastBackupDate:&v39 account:v7 connection:0 error:&v38];
      persona2 = v42;
      personaIdentifier2 = v41;
      v12 = v40;
      v13 = v39;
      v14 = v38;
      if ((v9 & 1) == 0)
      {
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v44 = *&v14;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the last&next backup date: %{public}@", buf, 0xCu);
          _MBLog(@"E ", "=scheduler= Failed to fetch the last&next backup date: %{public}@", v14);
        }

        goto LABEL_40;
      }

      if (v13)
      {
        [accountIdentifier2 timeIntervalSinceDate:v13];
        v16 = v15;
        v17 = fmin(self->_backupPeriodOnWiFi, fmin(self->_backupPeriodOnCellular, self->_backupPeriodOnBattery));
        if (reason == 5)
        {
          v18 = [(NSDate *)self->_dateOfLastPasscodeChange isDueForPasscodeChangedBackupWithLastBackupDate:v13];
          v19 = v12;
          if (v18)
          {
            goto LABEL_33;
          }

          if (fabs(v16) >= v17)
          {
            v19 = v12;
            if (!self->_allowBackupOnBattery)
            {
              v20 = MBGetDefaultLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v37 = MBStringWithDate();
                v21 = MBStringWithDate();
                *buf = 138412546;
                v44 = *&v37;
                v45 = 2112;
                v46 = v21;
                v22 = v21;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Passcode change backup is no longer due - passcodeChangeDate: %@ lastBackupDate: %@", buf, 0x16u);

                v23 = MBStringWithDate();
                v24 = MBStringWithDate();
                _MBLog(@"Df", "=scheduler= Passcode change backup is no longer due - passcodeChangeDate: %@ lastBackupDate: %@", v23, v24);
LABEL_38:

                goto LABEL_39;
              }

LABEL_40:
              v28 = 0;
LABEL_43:

              goto LABEL_44;
            }

            goto LABEL_33;
          }

LABEL_24:
          v20 = MBGetDefaultLog();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          v32 = MBStringWithDate();
          *buf = 134218242;
          v44 = v16;
          v45 = 2114;
          v46 = v32;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Already backed up recently (%.3fs): %{public}@", buf, 0x16u);

          v23 = MBStringWithDate();
          _MBLog(@"Df", "=scheduler= Already backed up recently (%.3fs): %{public}@", *&v16, v23);
LABEL_39:

          goto LABEL_40;
        }

        if (fabs(v15) < v17)
        {
          goto LABEL_24;
        }
      }

      if (reason == 2)
      {
        v19 = persona2;
      }

      else
      {
        v19 = personaIdentifier2;
      }

      if (reason != 2 && reason != 4)
      {
        if (reason != 5)
        {
          v20 = 0;
          goto LABEL_42;
        }

        v19 = v12;
      }

LABEL_33:
      v20 = v19;
      if (v20)
      {
        if ([accountIdentifier2 compare:v20] == -1)
        {
          [v20 timeIntervalSinceDate:accountIdentifier2];
          v34 = v33;
          if (v33 > 60.0)
          {
            v23 = MBGetDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v35 = MBStringWithDate();
              *buf = 134218242;
              v44 = v34;
              v45 = 2114;
              v46 = v35;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "=scheduler= The next backup date was pushed later (%.3fs): %{public}@", buf, 0x16u);

              v24 = MBStringWithDate();
              _MBLog(@"Df", "=scheduler= The next backup date was pushed later (%.3fs): %{public}@", *&v34, v24);
              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }
      }

LABEL_42:
      v28 = 1;
      goto LABEL_43;
    }

    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier = [v7 accountIdentifier];
      persona = [v7 persona];
      personaIdentifier = [persona personaIdentifier];
      *buf = 138412546;
      v44 = *&accountIdentifier;
      v45 = 2112;
      v46 = personaIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Not starting automatic backup on cellular for account %@/%@ because it's disabled from remote configuration", buf, 0x16u);

      accountIdentifier2 = [v7 accountIdentifier];
      persona2 = [v7 persona];
      personaIdentifier2 = [persona2 personaIdentifier];
      _MBLog(@"Df", "=scheduler= Not starting automatic backup on cellular for account %@/%@ because it's disabled from remote configuration", accountIdentifier2, personaIdentifier2);
      goto LABEL_17;
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      accountIdentifier3 = [v7 accountIdentifier];
      persona3 = [v7 persona];
      personaIdentifier3 = [persona3 personaIdentifier];
      *buf = 138412546;
      v44 = *&accountIdentifier3;
      v45 = 2112;
      v46 = personaIdentifier3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring backup start request since the account %@/%@ isn't enabled", buf, 0x16u);

      accountIdentifier2 = [v7 accountIdentifier];
      persona2 = [v7 persona];
      personaIdentifier2 = [persona2 personaIdentifier];
      _MBLog(@"Df", "=scheduler= Ignoring backup start request since the account %@/%@ isn't enabled", accountIdentifier2, personaIdentifier2);
LABEL_17:
      v28 = 0;
LABEL_44:

      goto LABEL_45;
    }
  }

  v28 = 0;
LABEL_45:

  return v28;
}

- (BOOL)_startBackupForNextAvailableAccountWithRequest:(id)request
{
  requestCopy = request;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (![requestCopy activityType])
  {
    __assert_rtn("[MBBackupScheduler _startBackupForNextAvailableAccountWithRequest:]", "MBBackupScheduler.m", 774, "request.activityType != MBBackupXPCActivityTypeNone");
  }

  accountsToBackup = [(MBBackupScheduler *)self accountsToBackup];

  if (!accountsToBackup)
  {
    accounts = [(MBBackupScheduler *)self accounts];
    v7 = [accounts mutableCopy];
    [(MBBackupScheduler *)self setAccountsToBackup:v7];
  }

  popFirstObject = MBGetDefaultLog();
  if (os_log_type_enabled(popFirstObject, OS_LOG_TYPE_DEFAULT))
  {
    accountsToBackup2 = [(MBBackupScheduler *)self accountsToBackup];
    v10 = [accountsToBackup2 count];
    accountsToBackup3 = [(MBBackupScheduler *)self accountsToBackup];
    *buf = 134218242;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = accountsToBackup3;
    _os_log_impl(&_mh_execute_header, popFirstObject, OS_LOG_TYPE_DEFAULT, "=scheduler= Found %lu accounts to back up: %@", buf, 0x16u);

    accountsToBackup4 = [(MBBackupScheduler *)self accountsToBackup];
    v13 = [accountsToBackup4 count];
    accountsToBackup5 = [(MBBackupScheduler *)self accountsToBackup];
    _MBLog(@"Df", "=scheduler= Found %lu accounts to back up: %@", v13, accountsToBackup5);
  }

  do
  {

    accountsToBackup6 = [(MBBackupScheduler *)self accountsToBackup];
    v16 = [accountsToBackup6 count];

    if (!v16)
    {
      goto LABEL_18;
    }

    accountsToBackup7 = [(MBBackupScheduler *)self accountsToBackup];
    popFirstObject = [accountsToBackup7 popFirstObject];
  }

  while (!-[MBBackupScheduler _shouldStartBackupWithAccount:reason:](self, "_shouldStartBackupWithAccount:reason:", popFirstObject, [requestCopy reason]));
  if (popFirstObject)
  {
    if ([requestCopy reason] == 4)
    {
      v18 = [(MBBackupScheduler *)self _lastPendingSnapshotSizeForAccount:popFirstObject];
      +[MBCKManager inexpensiveCellularBalance];
      v20 = v19;
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v20;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the inexpensive cellular balance (start): %.2f, lastPendingSnapshotSize:%llu", buf, 0x16u);
        _MBLog(@"Df", "=scheduler= Fetched the inexpensive cellular balance (start): %.2f, lastPendingSnapshotSize:%llu", v20, v18);
      }
    }

    activityCoordinator = [(MBBackupScheduler *)self activityCoordinator];
    v23 = [activityCoordinator xpcActivityForBackupActivity:{objc_msgSend(requestCopy, "activityType")}];

    if (v23)
    {
      if (xpc_activity_should_defer(v23))
      {
        v24 = MBGetDefaultLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          activityType = [requestCopy activityType];
          *buf = 67109378;
          *&buf[4] = activityType;
          *&buf[8] = 2114;
          *&buf[10] = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring backup start request since the XPC activity (%d) needs to be deferred: %{public}@", buf, 0x12u);
          _MBLog(@"Df", "=scheduler= Ignoring backup start request since the XPC activity (%d) needs to be deferred: %{public}@", [requestCopy activityType], v23);
        }

        v26 = 0;
LABEL_30:

        goto LABEL_21;
      }
    }

    else if (([objc_opt_class() backupOnWiFiWithDAS] & 1) != 0 || objc_msgSend(requestCopy, "activityType") != 2)
    {
      __assert_rtn("[MBBackupScheduler _startBackupForNextAvailableAccountWithRequest:]", "MBBackupScheduler.m", 802, "xpcActivity || (![self.class backupOnWiFiWithDAS] && request.activityType == MBBackupXPCActivityTypeWiFi)");
    }

    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = popFirstObject;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "=scheduler= Starting automatic backup for %@ ", buf, 0xCu);
      _MBLog(@"Df", "=scheduler= Starting automatic backup for %@ ", popFirstObject);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v39 = 0;
    persona = [popFirstObject persona];
    personaIdentifier = [persona personaIdentifier];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001D7178;
    v33[3] = &unk_1003C1290;
    v37 = buf;
    v33[4] = self;
    v34 = requestCopy;
    v35 = v23;
    v31 = popFirstObject;
    v36 = v31;
    v32 = [DMCPersonaHelper performBlockUnderPersona:personaIdentifier block:v33];
    if (*(*&buf[8] + 24) == 1)
    {
      [(MBBackupScheduler *)self _refreshRetryAfterDateForAccount:v31 softCancelled:0];
      v26 = *(*&buf[8] + 24);
    }

    else
    {
      v26 = 0;
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_30;
  }

LABEL_18:
  [(MBBackupScheduler *)self setAccountsToBackup:0];
  popFirstObject = MBGetDefaultLog();
  if (os_log_type_enabled(popFirstObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, popFirstObject, OS_LOG_TYPE_DEFAULT, "=scheduler= No accounts left to back up", buf, 2u);
    _MBLog(@"Df", "=scheduler= No accounts left to back up");
  }

  v26 = 0;
LABEL_21:

  return v26 & 1;
}

- (int64_t)_determineInternalNotificationActionForErrors:(id)errors dateOfLastUnlock:(id)unlock
{
  errorsCopy = errors;
  unlockCopy = unlock;
  v7 = +[NSDate now];
  v8 = [errorsCopy count];
  if (v8 < 1)
  {
    v9 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_37;
  }

  v32 = unlockCopy;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v9 = 0;
  v10 = v8 + 1;
  v11 = 0.0;
  while (1)
  {
    v12 = [errorsCopy objectAtIndexedSubscript:v10 - 2];
    userInfo = [v12 userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"kMBErrorDateKey"];

    if (v14)
    {
      break;
    }

LABEL_10:

    if (--v10 <= 1)
    {
      goto LABEL_34;
    }
  }

  [v7 timeIntervalSinceDate:v14];
  v11 = v15;
  userInfo2 = [v12 userInfo];
  v17 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v11 <= 432000.0)
  {
    if (([MBError isError:v12 withCode:0]& 1) != 0)
    {
      goto LABEL_47;
    }

    if (([MBError isError:v12 withCodes:17, 303, 308, 218, 219, 223, 300, 0]& 1) == 0 && ![MBError isCKError:v12 withCode:25]&& (![MBError isError:v12 withCode:202]|| ([MBError isError:v17 withCode:218]& 1) == 0 && ([MBError isError:v17 withCode:219]& 1) == 0 && ([MBError isError:v17 withCode:222]& 1) == 0 && ([MBError isError:v17 withCode:220]& 1) == 0 && ([MBError isError:v17 withCode:223]& 1) == 0))
    {
      if (![MBError isError:v12 withCode:209])
      {
        v30 = v7;
        v18 = 0;
        goto LABEL_25;
      }

      if (v32)
      {
        [v14 timeIntervalSinceDate:?];
        if (v19 <= 0.0)
        {
          if (!v9 || ([v9 timeIntervalSinceDate:v14], v20 >= 28800.0))
          {
            v30 = v7;
            v18 = v14;
LABEL_25:

            v21 = v33;
            v22 = v34;
            if (v11 > 86400.0)
            {
              v21 = v33 + 1;
            }

            else
            {
              v22 = v34 + 1;
            }

            v33 = v21;
            v34 = v22;
            if ([MBError isError:v12 withCode:203])
            {
              if (!((v22 + v21 == 1) | v31 & 1))
              {
                v9 = v18;
                v7 = v30;
LABEL_47:

                v27 = 0;
                unlockCopy = v32;
                goto LABEL_45;
              }

              v31 = 1;
            }

            v7 = v30;
            goto LABEL_9;
          }
        }
      }
    }

    v18 = v9;
LABEL_9:

    v9 = v18;
    goto LABEL_10;
  }

LABEL_34:
  v25 = v11 > 432000.0;
  v26 = 1;
  if (v31)
  {
    v26 = 2;
  }

  unlockCopy = v32;
  v24 = v33;
  v23 = v34;
LABEL_37:
  if (v23 <= 0)
  {
    v25 = 0;
  }

  if (v25 && v24 > 3)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 134219011;
    v36 = v23;
    v37 = 2048;
    v38 = v24;
    v39 = 2048;
    v40 = 5;
    v41 = 2113;
    v42 = unlockCopy;
    v43 = 2048;
    v44 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Found %lu failures 1 day ago and %lu failures between 1 day and %lu days ago. dateOfLastUnlock:%{private}@ action:%ld", buf, 0x34u);
    _MBLog(@"I ", "=scheduler= =ttr= Found %lu failures 1 day ago and %lu failures between 1 day and %lu days ago. dateOfLastUnlock:%{private}@ action:%ld", v23, v24, 5, unlockCopy, v27);
  }

LABEL_45:
  return v27;
}

- (void)_cancelInternalNotification
{
  if (MBIsInternalInstall())
  {
    internalNotificationRef = [(MBBackupScheduler *)self internalNotificationRef];
    v4 = internalNotificationRef;
    if (internalNotificationRef)
    {
      v5 = CFUserNotificationCancel(internalNotificationRef);
      if (v5)
      {
        v6 = v5;
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v9 = v4;
          v10 = 1024;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=scheduler= Failed to cancel internal notification %p (%d)", buf, 0x12u);
          _MBLog(@"E ", "=scheduler= Failed to cancel internal notification %p (%d)", v4, v6);
        }
      }
    }
  }
}

- (id)_descriptionForTTR:(id)r account:(id)account
{
  rCopy = r;
  accountCopy = account;
  v7 = objc_opt_new();
  v8 = MBBuildVersion();
  v27 = accountCopy;
  dsid = [accountCopy dsid];
  [v7 appendFormat:@"Current Build %@ dsid %@\n", v8, dsid];

  [v7 appendFormat:@"Last %lld backup attempts:\n", 5];
  v10 = [rCopy count];
  if (v10 >= 5)
  {
    v11 = v10 - 5;
  }

  else
  {
    v11 = 0;
  }

  if (v10 > v11)
  {
    v12 = v10;
    do
    {
      v13 = [rCopy objectAtIndexedSubscript:--v12];
      userInfo = [v13 userInfo];
      v15 = [userInfo objectForKeyedSubscript:@"kMBErrorDateKey"];

      userInfo2 = [v13 userInfo];
      v17 = [userInfo2 objectForKeyedSubscript:@"BuildVersion"];
      v18 = v17;
      v19 = @"unknown";
      if (v17)
      {
        v19 = v17;
      }

      v20 = v19;

      domain = [v13 domain];
      code = [v13 code];
      localizedDescription = [v13 localizedDescription];
      [v7 appendFormat:@"date:%@ build:%@ error:%@/%ld %@\n", v15, v20, domain, code, localizedDescription];
    }

    while (v12 > v11);
  }

  v24 = +[NSCharacterSet URLQueryAllowedCharacterSet];
  v25 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v24];

  return v25;
}

- (void)_triggerInternalNotificationWithAccount:(id)account
{
  accountCopy = account;
  if (MBIsInternalInstall())
  {
    dispatch_assert_queue_V2(self->_followUpQueue);
    v5 = [(MBCKManager *)self->_serviceManager backupStateInfoForInitialMegaBackup:0 account:accountCopy];
    errors = [v5 errors];
    dateOfLastUnlockSeenByDaemon = [(MBBackupScheduler *)self dateOfLastUnlockSeenByDaemon];
    v8 = [(MBBackupScheduler *)self _determineInternalNotificationActionForErrors:errors dateOfLastUnlock:dateOfLastUnlockSeenByDaemon];

    if (v8)
    {
      v9 = +[NSDate now];
      persona = [accountCopy persona];
      v11 = [persona copyPreferencesValueForKey:@"AccountEnabledDate" class:objc_opt_class()];

      if (v11)
      {
        [v9 timeIntervalSinceDate:v11];
        if (v12 >= 432000.0)
        {
          persona2 = [accountCopy persona];
          v14 = [persona2 copyPreferencesValueForKey:@"UserNotificationEvents" class:objc_opt_class()];

          v15 = [v14 objectForKeyedSubscript:@"LastTTRDateForConsecutiveBackupFailures"];
          if (!v15 || ([v9 timeIntervalSinceDate:v15], v16 >= 172800.0))
          {
            if (v14)
            {
              v17 = [v14 mutableCopy];
            }

            else
            {
              v17 = objc_opt_new();
            }

            v18 = v17;
            [v17 setObject:v9 forKeyedSubscript:@"LastTTRDateForConsecutiveBackupFailures"];
            persona3 = [accountCopy persona];
            [persona3 setPreferencesValue:v18 forKey:@"UserNotificationEvents"];

            internalNotificationRef = [(MBBackupScheduler *)self internalNotificationRef];
            if (internalNotificationRef)
            {
              v21 = MBGetDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                *buf = 134217984;
                v27 = internalNotificationRef;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "=scheduler= =ttr= Not posting internal notification, %p is in-flight", buf, 0xCu);
                _MBLog(@"I ", "=scheduler= =ttr= Not posting internal notification, %p is in-flight", internalNotificationRef);
              }
            }

            else
            {
              [(MBBackupScheduler *)self _holdWorkAssertion];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1001D7C98;
              block[3] = &unk_1003BD8C8;
              v25 = v8;
              block[4] = self;
              v23 = accountCopy;
              v24 = v5;
              dispatch_async(&_dispatch_main_q, block);
            }
          }
        }
      }
    }
  }
}

- (BOOL)_isBackupAllowed
{
  v2 = +[MBManagedPolicy sharedPolicy];
  v3 = [v2 checkIfCloudBackupIsAllowed:0];

  if ((v3 & 1) == 0)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "=scheduler= Backup is disabled by the current MC policy - not checking for an overdue backup", v6, 2u);
      _MBLog(@"I ", "=scheduler= Backup is disabled by the current MC policy - not checking for an overdue backup");
    }
  }

  return v3;
}

- (void)_onQueue_warnUserOfLateBackupWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1040, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_V2(self->_followUpQueue);
  if (![(MBCKManager *)self->_serviceManager isRestoringAccount:v5]&& (BYSetupAssistantNeedsToRun() & 1) == 0 && [(MBBackupScheduler *)self _isBackupAllowed])
  {
    v6 = +[NSDate now];
    v7 = [MBCKManager restoreInfoForAccount:v5];
    date = [v7 date];

    v9 = +[NSFileManager defaultManager];
    v68 = 0;
    v10 = [v9 attributesOfItemAtPath:@"/private/var" error:&v68];
    v11 = v68;

    v66 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:NSFileCreationDate];
      v13 = date;
      if (v13)
      {
        v14 = v13;
        if (v12)
        {
          v15 = [v13 laterDate:v12];

          v16 = 0;
          v14 = v15;
          goto LABEL_15;
        }

LABEL_13:
        v16 = 0;
LABEL_16:
        [v6 timeIntervalSinceDate:v14];
        if (v19 > 604800.0)
        {
          [(MBBackupScheduler *)self _triggerInternalNotificationWithAccount:v5];
        }

LABEL_18:
        v67 = v11;
        v20 = [(MBBackupScheduler *)self dateOfLastBackupWithAccount:v5 connection:0 error:&v67];
        v21 = v67;

        if (!v20 && v21)
        {
          goto LABEL_49;
        }

        v22 = v20;

        v14 = v22;
        v64 = v21;
        v65 = v6;
        if (!v20)
        {
          persona = [v5 persona];
          v24 = [persona copyPreferencesValueForKey:@"AccountEnabledDate" class:objc_opt_class()];

          if (!v24)
          {
            v21 = v64;
            v6 = v65;
            if (![v5 isEnabled])
            {
              v14 = 0;
              goto LABEL_49;
            }

            persona2 = [v5 persona];
            [persona2 setPreferencesValue:v65 forKey:@"AccountEnabledDate"];
            v14 = 0;
            goto LABEL_48;
          }

          v14 = v24;
          v25 = MBGetDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v26 = MBStringWithDate();
            *buf = 138543362;
            v72 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "=scheduler= Using the account enabled date a reference, referenceDate:%{public}@", buf, 0xCu);

            v27 = MBStringWithDate();
            _MBLog(@"Db", "=scheduler= Using the account enabled date a reference, referenceDate:%{public}@", v27);
          }

          v6 = v65;
        }

        if ((v16 & 1) == 0)
        {
          v28 = MBGetDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = MBStringWithDate();
            v30 = MBStringWithDate();
            *buf = 138543618;
            v72 = v29;
            v73 = 2114;
            v74 = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "=scheduler= Using the foreground restore end date as a reference, fgRestoreEndDate:%{public}@, referenceDate:%{public}@", buf, 0x16u);

            v31 = MBStringWithDate();
            v32 = MBStringWithDate();
            _MBLog(@"Db", "=scheduler= Using the foreground restore end date as a reference, fgRestoreEndDate:%{public}@, referenceDate:%{public}@", v31, v32);

            v6 = v65;
          }

          v33 = [v14 laterDate:date];

          v14 = v33;
          if (!v33)
          {
            __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1096, "referenceDate");
          }
        }

        if (v12)
        {
          v34 = MBGetDefaultLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v35 = MBStringWithDate();
            v36 = MBStringWithDate();
            *buf = 138543874;
            v72 = @"/private/var";
            v73 = 2114;
            v74 = v35;
            v75 = 2114;
            v76 = v36;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "=scheduler= Using the %{public}@ creation date as a reference, creationDate:%{public}@, referenceDate:%{public}@", buf, 0x20u);

            v37 = MBStringWithDate();
            v38 = MBStringWithDate();
            _MBLog(@"Db", "=scheduler= Using the %{public}@ creation date as a reference, creationDate:%{public}@, referenceDate:%{public}@", @"/private/var", v37, v38);

            v6 = v65;
          }

          v39 = [v14 laterDate:v12];

          v14 = v39;
          if (!v39)
          {
            __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfLateBackupWithAccount:]", "MBBackupScheduler.m", 1102, "referenceDate");
          }
        }

        [v6 timeIntervalSinceDate:v14];
        v41 = v40;
        v42 = MBGetDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = MBStringWithDate();
          v44 = MBStringWithDate();
          *buf = 134218498;
          v72 = *&v41;
          v73 = 2114;
          v74 = v43;
          v75 = 2114;
          v76 = v44;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "=scheduler= drySpellDuration:%.3fs, referenceDate:%{public}@, lastBackupDate:%{public}@", buf, 0x20u);

          v45 = MBStringWithDate();
          v46 = MBStringWithDate();
          _MBLog(@"Df", "=scheduler= drySpellDuration:%.3fs, referenceDate:%{public}@, lastBackupDate:%{public}@", *&v41, v45, v46);

          v6 = v65;
        }

        self->_initialBackupWarningPeriod = sub_1001D8C1C(v5, @"InitialBackupPeriod", 604800.0, 1209600.0);
        initialBackupWarningPeriod = sub_1001D8C1C(v5, @"BackupWarningPeriod", 604800.0, 1209600.0);
        self->_backupWarningPeriod = initialBackupWarningPeriod;
        if (!v20)
        {
          initialBackupWarningPeriod = self->_initialBackupWarningPeriod;
        }

        if (v41 < initialBackupWarningPeriod)
        {
          v21 = v64;
LABEL_49:

          goto LABEL_50;
        }

        v48 = MBGetDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "=scheduler= Warning the user an iCloud backup is overdue", buf, 2u);
          _MBLog(@"Df", "=scheduler= Warning the user an iCloud backup is overdue");
        }

        v49 = +[MBFollowUpManager sharedManager];
        v50 = [v49 postFollowUpForDrySpellForAccount:v5 duration:v20 == 0 firstBackup:v41];

        if (v50)
        {
          v63 = date;
          v51 = [NSMutableDictionary alloc];
          v62 = v50;
          v70[0] = v50;
          v69[0] = @"drySpellType";
          v69[1] = @"lastBackup";
          v61 = +[NSDateFormatter ISO8601Formatter];
          v60 = [v61 stringFromDate:v14];
          v70[1] = v60;
          v69[2] = @"duration";
          v52 = [NSString stringWithFormat:@"%.3f", *&v41];
          v70[2] = v52;
          v69[3] = @"notified";
          v53 = +[NSDateFormatter ISO8601Formatter];
          v54 = [v53 stringFromDate:v65];
          v70[3] = v54;
          v55 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:4];
          v56 = [v51 initWithDictionary:v55];

          v57 = [MBBackupScheduler lastOnConditionEventsForAccount:v5];
          if ([v57 count])
          {
            lastObject = [v57 lastObject];
            [v56 setValue:lastObject forKey:@"lastOnConditionEvent"];
          }

          [MBCKStatusReporter reportStatusForAccount:v5 manager:self->_serviceManager key:@"BackupDrySpell" values:v56];

          v21 = v64;
          v6 = v65;
          persona2 = v62;
          date = v63;
        }

        else
        {
          persona2 = 0;
          v21 = v64;
          v6 = v65;
        }

LABEL_48:

        goto LABEL_49;
      }
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v72 = @"/private/var";
        v73 = 2112;
        v74 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the attributes for %{public}@: %@", buf, 0x16u);
        _MBLog(@"E ", "=scheduler= Failed to fetch the attributes for %{public}@: %@", @"/private/var", v11);
      }

      v18 = date;
      v12 = 0;
      if (v18)
      {
        v14 = v18;
        goto LABEL_13;
      }
    }

    v12 = v12;
    v16 = 1;
    v14 = v12;
LABEL_15:
    if (!v14)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_50:
}

- (void)_warnUserOfLateBackupWithAccount:(id)account
{
  accountCopy = account;
  followUpQueue = self->_followUpQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8FC8;
  v7[3] = &unk_1003BC060;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(followUpQueue, v7);
}

- (void)_onQueue_warnUserOfDelayedRestoreWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _onQueue_warnUserOfDelayedRestoreWithAccount:]", "MBBackupScheduler.m", 1151, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_V2(self->_followUpQueue);
  if (([v5 isEnabledForBackup] & 1) == 0)
  {
    date = MBGetDefaultLog();
    if (!os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      goto LABEL_16;
    }

    accountIdentifier = [v5 accountIdentifier];
    *buf = 138543362;
    v26 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_DEFAULT, "=scheduler= The account %{public}@ is not enabled for backup", buf, 0xCu);

    accountIdentifier2 = [v5 accountIdentifier];
    _MBLog(@"Df", "=scheduler= The account %{public}@ is not enabled for backup", accountIdentifier2);
LABEL_14:

    goto LABEL_15;
  }

  if ([(MBCKManager *)self->_serviceManager isBackgroundRestoringAccount:v5]&& (BYSetupAssistantNeedsToRun() & 1) == 0 && [(MBBackupScheduler *)self _isBackupAllowed])
  {
    v6 = [MBCKManager restoreInfoForAccount:v5];
    date = [v6 date];

    if (date)
    {
      accountIdentifier2 = +[NSDate now];
      [accountIdentifier2 timeIntervalSinceDate:date];
      v10 = v9;
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MBStringWithDate();
        *buf = 134218242;
        v26 = v10;
        v27 = 2114;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scheduler= Warning the user an iCloud backup is overdue, drySpellDuration:%.3fs, fgRestoreEndDate:%{public}@", buf, 0x16u);

        v13 = MBStringWithDate();
        _MBLog(@"Df", "=scheduler= Warning the user an iCloud backup is overdue, drySpellDuration:%.3fs, fgRestoreEndDate:%{public}@", v10, v13);
      }

      v14 = +[MBFollowUpManager sharedManager];
      v15 = [v14 postFollowUpForRestoreTimeoutForAccount:v5];

      if (v15)
      {
        v23[0] = @"drySpellType";
        v23[1] = @"restoring";
        v24[0] = v15;
        v24[1] = @"YES";
        v23[2] = @"fgRestoreEndDate";
        v22 = +[NSDateFormatter ISO8601Formatter];
        v16 = [v22 stringFromDate:date];
        v24[2] = v16;
        v23[3] = @"duration";
        v17 = [NSString stringWithFormat:@"%.3f", v10];
        v24[3] = v17;
        v23[4] = @"notified";
        v18 = +[NSDateFormatter ISO8601Formatter];
        v19 = [v18 stringFromDate:accountIdentifier2];
        v24[4] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:5];

        [MBCKStatusReporter reportStatusForAccount:v5 manager:self->_serviceManager key:@"BackupDrySpell" values:v20];
      }
    }

    else
    {
      accountIdentifier2 = MBGetDefaultLog();
      if (os_log_type_enabled(accountIdentifier2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, accountIdentifier2, OS_LOG_TYPE_ERROR, "=scheduler= nil foreground restore end date", buf, 2u);
        _MBLog(@"E ", "=scheduler= nil foreground restore end date");
      }

      date = 0;
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)warnUserOfDelayedRestoreWithAccount:(id)account
{
  accountCopy = account;
  followUpQueue = self->_followUpQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D9510;
  v7[3] = &unk_1003BC060;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  dispatch_async(followUpQueue, v7);
}

- (void)_managerDidFinishBackupWithAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _managerDidFinishBackupWithAccount:]", "MBBackupScheduler.m", 1199, "account");
  }

  v5 = accountCopy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    accountIdentifier = [v5 accountIdentifier];
    *buf = 138543362;
    v13 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=scheduler= Scheduler received backup completion notification for account %{public}@", buf, 0xCu);

    accountIdentifier2 = [v5 accountIdentifier];
    _MBLog(@"I ", "=scheduler= Scheduler received backup completion notification for account %{public}@", accountIdentifier2);
  }

  [(MBBackupScheduler *)self _clearAllFailureCountsForAccount:v5];
  [(MBBackupScheduler *)self _clearAllRetryAfterDatesForAccount:v5];
  [(MBBackupScheduler *)self _clearLastPendingSnapshotSizeForAccount:v5];
  [(MBBackupScheduler *)self _clearDateOfLastPasscodeChange];
  [(MBBackupScheduler *)self clearNilBackupDateFetchDateForAccount:v5];
  v9 = +[MBFollowUpManager sharedManager];
  [v9 clearPendingFollowUpsWithAccount:v5 identifiers:&off_1003E2408];

  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
  if (!initiatedBackupRequest || ![(MBBackupScheduler *)self _startBackupForNextAvailableAccountWithRequest:initiatedBackupRequest])
  {
    activityCoordinator = [(MBBackupScheduler *)self activityCoordinator];
    [activityCoordinator finishBackupActivity:{objc_msgSend(initiatedBackupRequest, "activityType")}];

    [(MBBackupScheduler *)self setInitiatedBackupRequest:0];
    [(MBBackupScheduler *)self _cancelInternalNotification];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:1];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:3];
    [(MBBackupScheduler *)self _scheduleNextBackup];
    [(MBBackupScheduler *)self setAccountsToBackup:0];
  }
}

- (void)_managerDidFailBackupWithAccount:(id)account error:(id)error
{
  accountCopy = account;
  errorCopy = error;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _managerDidFailBackupWithAccount:error:]", "MBBackupScheduler.m", 1232, "account");
  }

  v8 = errorCopy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v35 = accountIdentifier;
    v36 = 2112;
    *v37 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduler received backup failure notification for account %{public}@: %@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Scheduler received backup failure notification for account %{public}@: %@", accountIdentifier2, v8);
  }

  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
  v13 = [MBError isCancelledError:v8];
  if (initiatedBackupRequest && [MBError isCancelledXPCActivityDeferredError:v8])
  {
    conditions = [(MBBackupScheduler *)self conditions];
    v15 = 0;
    if ((~*&conditions & 0x10000010100) == 0)
    {
      v16 = conditions;
      if (conditions.var0)
      {
        +[MBCKManager inexpensiveCellularBalance];
        v18 = v17;
        if (v17 <= 0.0)
        {
          v15 = 1;
        }

        else
        {
          v15 = HIWORD(*&v16) & 1;
        }

        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = (*&v16 & 0x1000000000000) >> 48;
          *buf = 134218496;
          v35 = *&v18;
          v36 = 1024;
          *v37 = v15;
          *&v37[4] = 1024;
          *&v37[6] = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the inexpensive cellular balance (deferred): %.2f, lowCellularBudget:%d, isOnExpensiveCellular:%d", buf, 0x18u);
          _MBLog(@"Df", "=scheduler= Fetched the inexpensive cellular balance (deferred): %.2f, lowCellularBudget:%d, isOnExpensiveCellular:%d", v18, v15, v20);
        }

        if (!(v13 & 1 | ((v15 & 1) == 0)))
        {
          __assert_rtn("[MBBackupScheduler _managerDidFailBackupWithAccount:error:]", "MBBackupScheduler.m", 1252, "!lowCellularBudget || canceled");
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  [(MBBackupScheduler *)self _updateFailureCountsForAccount:accountCopy lastBackupError:v8 canceled:v13 lowCellularBudget:v15];
  if (v13)
  {
    [(MBBackupScheduler *)self _clearAllRetryAfterDatesForAccount:accountCopy];
    [(MBBackupScheduler *)self _refreshRetryAfterDateForAccount:accountCopy softCancelled:1];
  }

  v33 = 0;
  v21 = [MBError isRetryAfterError:v8 retryAfterDate:&v33];
  v22 = v33;
  v23 = v22;
  if (!v21)
  {
    v25 = v22;
    if (!initiatedBackupRequest)
    {
      goto LABEL_25;
    }

LABEL_24:
    followUpQueue = self->_followUpQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D9C14;
    block[3] = &unk_1003BC060;
    block[4] = self;
    v32 = accountCopy;
    dispatch_async(followUpQueue, block);

    activityCoordinator = [(MBBackupScheduler *)self activityCoordinator];
    [activityCoordinator finishBackupActivity:{objc_msgSend(initiatedBackupRequest, "activityType")}];

    [(MBBackupScheduler *)self setInitiatedBackupRequest:0];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:1];
    [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:3];
    [(MBBackupScheduler *)self _scheduleNextBackup];
    [(MBBackupScheduler *)self setAccountsToBackup:0];
    goto LABEL_25;
  }

  v24 = [NSDate dateWithTimeIntervalSinceNow:604800.0];
  v25 = [v23 earlierDate:v24];

  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier3 = [accountCopy accountIdentifier];
    *buf = 138543874;
    v35 = @"RetryAfter";
    v36 = 2114;
    *v37 = accountIdentifier3;
    *&v37[8] = 2114;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ based on server response for account %{public}@: %{public}@", buf, 0x20u);

    accountIdentifier4 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Updating %{public}@ based on server response for account %{public}@: %{public}@", @"RetryAfter", accountIdentifier4, v25);
  }

  [(MBBackupScheduler *)self _updateRetryAfterDate:v25 forKey:@"RetryAfter" account:accountCopy];
  if (initiatedBackupRequest)
  {
    goto LABEL_24;
  }

LABEL_25:
}

- (id)_fetchAccountsAndIsEnabled:(BOOL *)enabled isBackupOnCellularEnabled:(BOOL *)cellularEnabled
{
  v4 = +[MBManagedPolicy sharedPolicy];
  v5 = [v4 checkIfCloudBackupIsAllowed:0];

  v27 = v5;
  if ((v5 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=scheduler= Backup is disabled by the current MC policy", buf, 2u);
      _MBLog(@"I ", "=scheduler= Backup is disabled by the current MC policy");
    }
  }

  v30 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = +[MBServiceAccount allServiceAccounts];
  v7 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        isEnabled = [v13 isEnabled];
        v32 = 0;
        persona = [v13 persona];
        v16 = [persona getBooleanValueForKey:@"EnableBackupScheduling" keyExists:&v32];

        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = v32 == 0;
        }

        if (v17 && (isEnabled & 1) != 0)
        {
          [v30 addObject:v13];
          persona2 = [v13 persona];
          personaIdentifier = [persona2 personaIdentifier];

          isBackupOnCellularEnabled = [v13 isBackupOnCellularEnabled];
          v21 = MBGetDefaultLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            accountIdentifier = [v13 accountIdentifier];
            isPrimaryAccount = [v13 isPrimaryAccount];
            *buf = 138413314;
            v38 = accountIdentifier;
            v39 = 2112;
            v40 = personaIdentifier;
            v41 = 1024;
            v42 = isPrimaryAccount;
            v43 = 1024;
            v44 = 1;
            v45 = 1024;
            v46 = isBackupOnCellularEnabled & 1;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched account:(%@/%@), primary:%d, isEnabledForBackup:%d, isBackupOnCellularEnabled:%d", buf, 0x28u);

            accountIdentifier2 = [v13 accountIdentifier];
            _MBLog(@"Df", "=scheduler= Fetched account:(%@/%@), primary:%d, isEnabledForBackup:%d, isBackupOnCellularEnabled:%d", accountIdentifier2, personaIdentifier, [v13 isPrimaryAccount], 1, isBackupOnCellularEnabled & 1);
          }

          v9 |= isBackupOnCellularEnabled;

          v10 = 1;
        }

        else
        {
          personaIdentifier = MBGetDefaultLog();
          if (os_log_type_enabled(personaIdentifier, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v13;
            _os_log_impl(&_mh_execute_header, personaIdentifier, OS_LOG_TYPE_DEFAULT, "=scheduler= Auto backup is not enabled for %@", buf, 0xCu);
            _MBLog(@"Df", "=scheduler= Auto backup is not enabled for %@", v13);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *enabled = v27 & v10;
  *cellularEnabled = v10 & v9 & 1;
  v25 = [v30 copy];

  return v25;
}

- (void)accountChanged
{
  v3 = os_transaction_create();
  stateQueue = self->_stateQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001DA0A0;
  v6[3] = &unk_1003BC060;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(stateQueue, v6);
}

- (void)passcodeChanged
{
  if (_os_feature_enabled_impl())
  {
    v3 = os_transaction_create();
    v4 = +[NSDate now];
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001DA3C0;
    block[3] = &unk_1003BC2E0;
    block[4] = self;
    v9 = v4;
    v10 = v3;
    v6 = v3;
    v7 = v4;
    dispatch_async(stateQueue, block);
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring passcode changed notification", buf, 2u);
      _MBLog(@"Df", "=scheduler= Ignoring passcode changed notification");
    }
  }
}

- (void)_clearDateOfLastPasscodeChange
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing date of last passcode change", v5, 2u);
    _MBLog(@"Df", "=scheduler= Clearing date of last passcode change");
  }

  [MBPersona setPersonalPreferencesValue:0 forKey:@"DateOfLastPasscodeChange"];
  dateOfLastPasscodeChange = self->_dateOfLastPasscodeChange;
  self->_dateOfLastPasscodeChange = 0;
}

- (void)_cancelPowerLossTimer
{
  if (self->_powerLossTimer)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the power loss timer", v5, 2u);
      _MBLog(@"Df", "=scheduler= Canceling the power loss timer");
    }

    dispatch_source_cancel(self->_powerLossTimer);
    powerLossTimer = self->_powerLossTimer;
    self->_powerLossTimer = 0;
  }
}

- (void)_cancelWiFiLossTimer
{
  if (self->_wifiLossTimer)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the WiFi loss timer", v5, 2u);
      _MBLog(@"Df", "=scheduler= Canceling the WiFi loss timer");
    }

    dispatch_source_cancel(self->_wifiLossTimer);
    wifiLossTimer = self->_wifiLossTimer;
    self->_wifiLossTimer = 0;
  }
}

- (void)_cancelLossTimers
{
  [(MBBackupScheduler *)self _cancelPowerLossTimer];

  [(MBBackupScheduler *)self _cancelWiFiLossTimer];
}

- (id)_conditionLossTimerWithSeconds:(int64_t)seconds changes:(id)changes
{
  changesCopy = changes;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_stateQueue);
  v8 = dispatch_walltime(0, 1000000000 * seconds);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001DA740;
  v14[3] = &unk_1003BD8C8;
  v9 = v7;
  v15 = v9;
  selfCopy = self;
  v17 = changesCopy;
  secondsCopy = seconds;
  v10 = changesCopy;
  dispatch_source_set_event_handler(v9, v14);
  v11 = v17;
  v12 = v9;

  return v9;
}

- (void)_updateRetryAfterDateAfterUnlockForAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _updateRetryAfterDateAfterUnlockForAccount:]", "MBBackupScheduler.m", 1421, "account");
  }

  v5 = accountCopy;
  persona = [accountCopy persona];
  v7 = [persona copyPreferencesValueForKey:@"MissingEncryptionKeyFailureCount" class:objc_opt_class()];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    if (unsignedIntegerValue <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = unsignedIntegerValue;
    }

    persona2 = [v5 persona];
    v11 = [persona2 copyPreferencesValueForKey:@"MissingEncryptionKeyRetryAfter" class:objc_opt_class()];

    [v11 timeIntervalSinceNow];
    if (v11 && (v13 = v12, v12 < 3600.0))
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        accountIdentifier = [v5 accountIdentifier];
        v16 = MBStringWithDate();
        *buf = 138544386;
        v22 = @"MissingEncryptionKeyRetryAfter";
        v23 = 2114;
        v24 = accountIdentifier;
        v25 = 2114;
        v26 = v16;
        v27 = 2048;
        v28 = v13;
        v29 = 2048;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=scheduler= Not updating %{public}@ for account %{public}@: %{public}@ (%.3f, %lu)", buf, 0x34u);

        accountIdentifier2 = [v5 accountIdentifier];
        v18 = MBStringWithDate();
        _MBLog(@"Df", "=scheduler= Not updating %{public}@ for account %{public}@: %{public}@ (%.3f, %lu)", @"MissingEncryptionKeyRetryAfter", accountIdentifier2, v18, *&v13, v9);
      }
    }

    else
    {
      v19 = 3;
      if (v9 < 3)
      {
        v19 = v9;
      }

      v20 = [NSDate dateWithTimeIntervalSinceNow:dbl_1002BA0E8[v19 - 1] + (drand48() + -0.5) * floor(dbl_1002BA0E8[v19 - 1] * 0.25)];

      [(MBBackupScheduler *)self _updateRetryAfterDate:v20 forKey:@"MissingEncryptionKeyRetryAfter" account:v5 ignoreExistingDate:1];
      v11 = v20;
    }
  }
}

- (void)_cancelBackupWithActivityType:(int)type changes:(id)changes
{
  v4 = *&type;
  changesCopy = changes;
  dispatch_assert_queue_V2(self->_stateQueue);
  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
  locked = [changesCopy locked];
  v9 = locked;
  if (!initiatedBackupRequest && locked)
  {
    if ([locked BOOLValue])
    {
      goto LABEL_15;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    accounts = [(MBBackupScheduler *)self accounts];
    v11 = [accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(accounts);
          }

          [(MBBackupScheduler *)self _updateRetryAfterDateAfterUnlockForAccount:*(*(&v17 + 1) + 8 * v14)];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [accounts countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  if (initiatedBackupRequest && [initiatedBackupRequest activityType] == v4)
  {
    [(MBBackupScheduler *)self _cancelInitiatedBackupWithChanges:changesCopy isDeferred:0];
    goto LABEL_19;
  }

LABEL_15:
  if (v4 == 2)
  {
    initial = [changesCopy initial];
    bOOLValue = [initial BOOLValue];

    if (bOOLValue)
    {
      [(MBBackupScheduler *)self _cancelAlarm];
    }
  }

  [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:v4];
LABEL_19:
}

- (void)_stateDidChange:(id)change conditions:(id)conditions
{
  changeCopy = change;
  dispatch_assert_queue_V2(self->_stateQueue);
  v111 = *&conditions.var0 & 0x1000000;
  v7 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8];

  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
  activityType = [initiatedBackupRequest activityType];

  conditionsCopy = conditions;
  if ((*&conditions.var0 & 0x10000) != 0)
  {
    [(MBBackupScheduler *)self _cancelPowerLossTimer];
  }

  if ((*&conditions.var0 & 0x1000000) != 0)
  {
    [(MBBackupScheduler *)self _cancelWiFiLossTimer];
  }

  v112 = changeCopy;
  if ((~*&conditions & 0x101010100000000) != 0)
  {
    allowBackupOnExpensiveCellular = (~*&conditions & 0x100010100000000) == 0;
  }

  else
  {
    allowBackupOnExpensiveCellular = [(MBBackupScheduler *)self allowBackupOnExpensiveCellular];
  }

  v110 = *&conditions.var0 & 0x10000;
  v108 = *&conditions.var0 & 0x100;
  isWithinDefaultBackupPeriod = [(NSDate *)self->_dateOfLastPasscodeChange isWithinDefaultBackupPeriod];
  allowBackupOnBattery = self->_allowBackupOnBattery;
  selfCopy = self;
  serviceStates = [(MBCKManager *)self->_serviceManager serviceStates];
  v10 = objc_opt_new();
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v11 = serviceStates;
  v12 = [v11 countByEnumeratingWithState:&v136 objects:buf count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v137;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v137 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v136 + 1) + 8 * i);
        if (([&off_1003E0FD8 isEqualToNumber:v16] & 1) == 0)
        {
          if ([v10 length])
          {
            [v10 appendString:{@", "}];
          }

          v17 = [v16 intValue] - 1;
          v18 = @"idle";
          if (v17 <= 5)
          {
            v18 = off_1003C1348[v17];
          }

          [v10 appendString:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v136 objects:buf count:16];
    }

    while (v13);
  }

  v104 = *&conditions & 0x10000000000;
  v105 = *&conditions & 0x1000000000000;
  v102 = *&conditions & &_mh_execute_header;
  v103 = *&conditions & 0x100000000000000;

  if ([v10 length])
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v109 = v19;

  v20 = v112;
  v21 = selfCopy;
  if ((v108 == 0) | (*&conditionsCopy.var0 ^ 1) & 1 || !((allowBackupOnBattery | isWithinDefaultBackupPeriod) & 1 | (v110 != 0)))
  {
LABEL_28:
    if (v108 != 0 && conditionsCopy.var0 && v110 != 0)
    {
      if (v111)
      {
        v22 = 0.0;
        if ((*&conditionsCopy & 0x10100000000) != &_mh_execute_header)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_43;
  }

  if (v111)
  {
    if (v109)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (v112)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67111682;
        *v143 = 1;
        *&v143[4] = 1024;
        *&v143[6] = 1;
        *v144 = 1024;
        *&v144[2] = (*&conditionsCopy.var0 & 0x10000u) >> 16;
        *v145 = 1024;
        *&v145[2] = v111 >> 24;
        *v146 = 1024;
        *&v146[2] = v104 >> 40;
        *v147 = 1024;
        *&v147[2] = HIWORD(v105);
        *v148 = 1024;
        *&v148[2] = HIDWORD(v102);
        *v149 = 1024;
        *&v149[2] = HIBYTE(v103);
        *v150 = 1024;
        *&v150[2] = isWithinDefaultBackupPeriod & 1;
        *v151 = 2112;
        *&v151[2] = v109;
        v152 = 2114;
        v153 = v112;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=scheduler= [On condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x4Cu);
        v21 = selfCopy;
        _MBLog(@"Df", "=scheduler= [On condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", 1, 1, v110 >> 16, v111 >> 24, v104 >> 40, HIWORD(v105), HIDWORD(v102), HIBYTE(v103), isWithinDefaultBackupPeriod & 1, v109, v112);
      }
    }

    v25 = +[NSDate now];
    v26 = MBGetChargingType();
    v27 = [(MBBackupScheduler *)v21 _scheduleBackupOnWiFi:v111 != 0 onCellular:allowBackupOnExpensiveCellular onBattery:(allowBackupOnBattery | isWithinDefaultBackupPeriod) & 1];
    if (v112)
    {
      v28 = v27;
      [(MBBackupScheduler *)v21 setLastOnConditionDate:v25];
      [(MBBackupScheduler *)v21 setNextBackupDelta:v28];
      [(MBBackupScheduler *)v21 setLastOnConditionChargingType:v26];
    }

    v20 = v112;
    goto LABEL_77;
  }

  if (v109)
  {
    v23 = 0;
  }

  else
  {
    v23 = allowBackupOnExpensiveCellular;
  }

  if (v23)
  {
    goto LABEL_36;
  }

LABEL_43:
  lastOnConditionDate = [(MBBackupScheduler *)selfCopy lastOnConditionDate];

  if (lastOnConditionDate)
  {
    v30 = +[NSDate now];
    lastOnConditionDate2 = [(MBBackupScheduler *)selfCopy lastOnConditionDate];
    v119 = v30;
    [v30 timeIntervalSinceDate:lastOnConditionDate2];
    v22 = v32;

    if (v22 <= 60.0)
    {
      v62 = [(MBBackupScheduler *)selfCopy ignoredLastOnConditionEvent]+ 1;
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      obj = [(MBBackupScheduler *)selfCopy accounts];
      v118 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
      if (v118)
      {
        v116 = v7 != 0;
        v115 = *v133;
        do
        {
          v33 = 0;
          do
          {
            if (*v133 != v115)
            {
              objc_enumerationMutation(obj);
            }

            v127 = v33;
            v34 = *(*(&v132 + 1) + 8 * v33);
            v35 = [MBBackupScheduler lastOnConditionEventsForAccount:v34];
            v36 = [v35 mutableCopy];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = objc_opt_new();
            }

            v39 = v38;

            v40 = [v39 count];
            if (v40 >= 0xA)
            {
              [v39 removeObjectsInRange:{0, v40 - 9}];
            }

            v41 = [(MBBackupScheduler *)selfCopy _retryAfterDateForAccount:v34];
            persona = [v34 persona];
            v43 = [persona copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
            unsignedIntegerValue = [v43 unsignedIntegerValue];

            if (v41)
            {
              [v41 timeIntervalSinceDate:v119];
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v46 = [(MBCKManager *)selfCopy->_serviceManager backupStateInfoForInitialMegaBackup:0 account:v34];
            errors = [v46 errors];
            lastObject = [errors lastObject];

            userInfo = [lastObject userInfo];
            v50 = [userInfo objectForKeyedSubscript:@"kMBErrorDateKey"];

            if (v50)
            {
              [v119 timeIntervalSinceDate:v50];
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            v124 = v39;
            v123 = v41;
            v121 = v45;
            v120 = v52;
            if ([MBError isError:lastObject withCode:0])
            {

              lastObject = 0;
            }

            code = [lastObject code];
            domain = [lastObject domain];
            v55 = domain;
            v56 = &stru_1003C3430;
            if (domain)
            {
              v56 = domain;
            }

            v57 = v56;

            v58 = +[NSDateFormatter ISO8601Formatter];
            lastOnConditionDate3 = [(MBBackupScheduler *)selfCopy lastOnConditionDate];
            v60 = [v58 stringFromDate:lastOnConditionDate3];
            v61 = [NSString stringWithFormat:@"%@|%.3f|%d|%d|%d|%d|%d|%d|%lld|%lld|%lld|%lu|%@|%ld|%lu|%d|%d|%d|%lld", v60, *&v22, conditionsCopy.var0, v110 >> 16, v108 >> 8, v111 >> 24, v116, activityType == 2, [(MBBackupScheduler *)selfCopy nextBackupDelta], v121, v120, unsignedIntegerValue, v57, code, [(MBBackupScheduler *)selfCopy lastOnConditionChargingType], v104 >> 40, HIWORD(v105), HIBYTE(v103), [(MBBackupScheduler *)selfCopy ignoredLastOnConditionEvent]];

            [v124 addObject:v61];
            [MBBackupScheduler _setLastOnConditionEvents:v124 account:v34];

            v33 = v127 + 1;
          }

          while (v118 != (v127 + 1));
          v118 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
        }

        while (v118);
      }

      v62 = 0;
      v20 = v112;
      v21 = selfCopy;
    }

    [(MBBackupScheduler *)v21 setIgnoredLastOnConditionEvent:v62];
    [(MBBackupScheduler *)v21 setLastOnConditionDate:0];
    [(MBBackupScheduler *)v21 setNextBackupDelta:0];
    [(MBBackupScheduler *)v21 setLastOnConditionChargingType:0];
  }

  else
  {
    v22 = 0.0;
  }

LABEL_71:
  if (v20)
  {
    v25 = MBGetDefaultLog();
    v63 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v22 == 0.0)
    {
      if (v63)
      {
        *buf = 67111682;
        *v143 = conditionsCopy.var0;
        *&v143[4] = 1024;
        *&v143[6] = v108 >> 8;
        *v144 = 1024;
        *&v144[2] = (*&conditionsCopy.var0 & 0x10000u) >> 16;
        *v145 = 1024;
        *&v145[2] = v111 >> 24;
        *v146 = 1024;
        *&v146[2] = v104 >> 40;
        *v147 = 1024;
        *&v147[2] = HIWORD(v105);
        *v148 = 1024;
        *&v148[2] = HIDWORD(v102);
        *v149 = 1024;
        *&v149[2] = HIBYTE(v103);
        *v150 = 1024;
        *&v150[2] = isWithinDefaultBackupPeriod & 1;
        *v151 = 2112;
        *&v151[2] = v109;
        v152 = 2114;
        v153 = v112;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= [Off condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x4Cu);
        v21 = selfCopy;
        v20 = v112;
        _MBLog(@"Df", "=scheduler= [Off condition] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", conditionsCopy.var0, v108 >> 8, v110 >> 16, v111 >> 24, v104 >> 40, HIWORD(v105), HIDWORD(v102), HIBYTE(v103), isWithinDefaultBackupPeriod & 1, v109, v112, v101);
      }
    }

    else if (v63)
    {
      *buf = 134220802;
      *v143 = v22;
      *&v143[8] = 1024;
      *v144 = conditionsCopy.var0;
      *&v144[4] = 1024;
      *v145 = v108 >> 8;
      *&v145[4] = 1024;
      *v146 = (*&conditionsCopy.var0 & 0x10000u) >> 16;
      *&v146[4] = 1024;
      *v147 = v111 >> 24;
      *&v147[4] = 1024;
      *v148 = v104 >> 40;
      *&v148[4] = 1024;
      *v149 = HIWORD(v105);
      *&v149[4] = 1024;
      *v150 = HIDWORD(v102);
      *&v150[4] = 1024;
      *v151 = HIBYTE(v103);
      *&v151[4] = 1024;
      *&v151[6] = isWithinDefaultBackupPeriod & 1;
      v152 = 2112;
      v153 = v109;
      v154 = 2114;
      v155 = v112;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "=scheduler= [Off condition after %.1fs] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", buf, 0x56u);
      v21 = selfCopy;
      v20 = v112;
      _MBLog(@"Df", "=scheduler= [Off condition after %.1fs] state changed, enabled:%d, locked:%d, onPower:%d, onWiFi:%d, onCellular:%d(%d), autoBackupOnCellularEnabled:%d, autoBackupOnCellularAllowedByProvider:%d, passcodeChanged:%d, managerStates:%@, changes:%{public}@", *&v22, conditionsCopy.var0, v108 >> 8, v110 >> 16, v111 >> 24, v104 >> 40, HIWORD(v105), HIDWORD(v102), HIBYTE(v103), isWithinDefaultBackupPeriod & 1, v109, v112);
    }

LABEL_77:
  }

  v64 = [(NSMutableDictionary *)v21->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8];

  if (!v64 && activityType != 2)
  {
    goto LABEL_91;
  }

  if (v108 != 0 && conditionsCopy.var0 && v110 == 0 && v111)
  {
    v65 = MBGetDefaultLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v143 = 60;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "=scheduler= The device lost power but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", buf, 0xCu);
      _MBLog(@"Df", "=scheduler= The device lost power but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", 60);
    }

    v66 = [(MBBackupScheduler *)v21 _conditionLossTimerWithSeconds:60 changes:v20];
    powerLossTimer = v21->_powerLossTimer;
    v21->_powerLossTimer = v66;

    v68 = v21->_powerLossTimer;
LABEL_90:
    dispatch_resume(v68);
    goto LABEL_91;
  }

  if (v108 != 0 && conditionsCopy.var0 && v110 != 0 && !v111)
  {
    v69 = MBGetDefaultLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v143 = 120;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "=scheduler= The device lost WiFi but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", buf, 0xCu);
      _MBLog(@"Df", "=scheduler= The device lost WiFi but is otherwise still in condition - will wait %llds before canceling ongoing or scheduled backups", 120);
    }

    v70 = [(MBBackupScheduler *)v21 _conditionLossTimerWithSeconds:120 changes:v20];
    wifiLossTimer = v21->_wifiLossTimer;
    v21->_wifiLossTimer = v70;

    v68 = v21->_wifiLossTimer;
    goto LABEL_90;
  }

  if (v108 == 0 || !conditionsCopy.var0 || v110 == 0 || v111 == 0)
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:2 changes:v20];
  }

LABEL_91:
  v72 = [(NSMutableDictionary *)v21->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0F90];

  initiatedBackupRequest2 = [(MBBackupScheduler *)v21 initiatedBackupRequest];
  activityType2 = [initiatedBackupRequest2 activityType];

  v75 = activityType2 != 1 && v72 == 0;
  if (!v75 && (v108 == 0 || !conditionsCopy.var0 || (~*&conditionsCopy & 0x10000010000) != 0))
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:1 changes:v112];
  }

  v76 = [(NSMutableDictionary *)v21->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FC0];

  initiatedBackupRequest3 = [(MBBackupScheduler *)v21 initiatedBackupRequest];
  activityType3 = [initiatedBackupRequest3 activityType];

  v79 = activityType3 != 3 && v76 == 0;
  if (!v79 && (v108 == 0 || !conditionsCopy.var0 || v111 == 0))
  {
    [(MBBackupScheduler *)v21 _cancelBackupWithActivityType:3 changes:v112];
  }

  if ((~*&conditionsCopy.var0 & 0x1010100) != 0 && conditionsCopy.var0)
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    accounts = [(MBBackupScheduler *)v21 accounts];
    v81 = [accounts countByEnumeratingWithState:&v128 objects:v140 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v129;
      do
      {
        for (j = 0; j != v82; j = j + 1)
        {
          if (*v129 != v83)
          {
            objc_enumerationMutation(accounts);
          }

          [(MBBackupScheduler *)v21 _warnUserOfLateBackupWithAccount:*(*(&v128 + 1) + 8 * j)];
        }

        v82 = [accounts countByEnumeratingWithState:&v128 objects:v140 count:16];
      }

      while (v82);
    }
  }

  v85 = v112;
  if ((*&conditionsCopy & 0x10001000000) != 0 && [(MBCKManager *)v21->_serviceManager isBackgroundRestoringAnyAccount])
  {
    onWiFi = [v112 onWiFi];
    bOOLValue = [onWiFi BOOLValue];

    if (bOOLValue)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on WiFi during background restore - retrying app downloads", buf, 2u);
        _MBLog(@"Df", "=scheduler= Back on WiFi during background restore - retrying app downloads", v100);
      }

LABEL_131:

      networkPathMonitor = [(MBBackupScheduler *)v21 networkPathMonitor];
      cellularRadioType = [networkPathMonitor cellularRadioType];
      networkPathMonitor2 = [(MBBackupScheduler *)v21 networkPathMonitor];
      backupOnCellularSupport = [networkPathMonitor2 backupOnCellularSupport];

      *(&v99 + 1) = cellularRadioType;
      *&v99 = v105;
      [(MBCKManager *)v21->_serviceManager retryAppDataDownloadsWithNetworkConnectivity:HIDWORD(v104) | (*&conditionsCopy >> 24) & 1 | (v99 >> 32), backupOnCellularSupport];
      v85 = v112;
      goto LABEL_132;
    }

    onCellular = [v112 onCellular];
    bOOLValue2 = [onCellular BOOLValue];

    if (bOOLValue2)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on cellular during background restore - retrying app downloads", buf, 2u);
        _MBLog(@"Df", "=scheduler= Back on cellular during background restore - retrying app downloads", v100);
      }

      goto LABEL_131;
    }

    onPower = [v112 onPower];
    bOOLValue3 = [onPower BOOLValue];

    if (bOOLValue3)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "=scheduler= Back on external power during background restore - retrying app downloads", buf, 2u);
        _MBLog(@"Df", "=scheduler= Back on external power during background restore - retrying app downloads");
      }

      goto LABEL_131;
    }

    locked = [v112 locked];

    if (locked)
    {
      v88 = MBGetDefaultLog();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        if (v108)
        {
          v94 = "locked";
        }

        else
        {
          v94 = "unlocked";
        }

        *buf = 136315138;
        *v143 = v94;
        _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "=scheduler= Device %s - retrying app downloads", buf, 0xCu);
        _MBLog(@"I ", "=scheduler= Device %s - retrying app downloads");
      }

      goto LABEL_131;
    }
  }

LABEL_132:
}

- ($3C5213C2FB734B7CA09EF95E8A7A7A2F)conditions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  conditions = selfCopy->_conditions;
  objc_sync_exit(selfCopy);

  return conditions;
}

- (void)_setIsOnPower:(BOOL)power
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isOnPower)
  {
    p_isOnPower = &obj->_conditions.isOnPower;
    v5 = obj->_ignorePowerState || power;
    v6 = v5;
    if (obj->_conditions.isOnPower == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isOnPower = &obj->_conditions.isOnPower;
  isOnPower = obj->_conditions.isOnPower;
  obj->_changedConditions.isOnPower = 1;
  v5 = obj->_ignorePowerState || power;
  v6 = v5;
  if (isOnPower != v5)
  {
LABEL_5:
    *p_isOnPower = v6;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnWiFi && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnCellular && obj->_changedConditions.isOnExpensiveCellular && obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v9 = objc_opt_new();
    v10 = [NSNumber numberWithBool:v5];
    [(MBBackupScheduler *)v9 setOnPower:v10];

    [(MBBackupScheduler *)obj _notifyStateChanged:v9 conditions:conditions];
    v11 = v9;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v11 = obj;
LABEL_15:
}

- (void)_setIsLocked:(BOOL)locked
{
  lockedCopy = locked;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj;
  if (obj->_changedConditions.isLocked)
  {
    p_isLocked = &obj->_conditions.isLocked;
    if (obj->_conditions.isLocked == lockedCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    p_isLocked = &obj->_conditions.isLocked;
    isLocked = obj->_conditions.isLocked;
    obj->_changedConditions.isLocked = 1;
    if (isLocked == lockedCopy)
    {
      goto LABEL_6;
    }
  }

  *p_isLocked = lockedCopy;
LABEL_6:
  if (!lockedCopy)
  {
    v7 = +[NSDate now];
    dateOfLastUnlockSeenByDaemon = obj->_dateOfLastUnlockSeenByDaemon;
    obj->_dateOfLastUnlockSeenByDaemon = v7;

    v4 = obj;
  }

  if (v4->_changedConditions.isEnabled && v4->_changedConditions.isLocked && v4->_changedConditions.isOnPower && v4->_changedConditions.isOnWiFi && v4->_changedConditions.isBackupOnCellularEnabled && v4->_changedConditions.isOnCellular && v4->_changedConditions.isOnExpensiveCellular && v4->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = v4->_conditions;
    objc_sync_exit(v4);

    v10 = objc_opt_new();
    v11 = [NSNumber numberWithBool:lockedCopy];
    [(MBBackupScheduler *)v10 setLocked:v11];

    [(MBBackupScheduler *)obj _notifyStateChanged:v10 conditions:conditions];
    v12 = v10;
    goto LABEL_18;
  }

LABEL_17:
  objc_sync_exit(obj);
  v12 = obj;
LABEL_18:
}

- (void)_setIsOnWiFi:(BOOL)fi
{
  fiCopy = fi;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isOnWiFi)
  {
    p_isOnWiFi = &obj->_conditions.isOnWiFi;
    if (obj->_conditions.isOnWiFi == fiCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isOnWiFi = &obj->_conditions.isOnWiFi;
  isOnWiFi = obj->_conditions.isOnWiFi;
  obj->_changedConditions.isOnWiFi = 1;
  if (isOnWiFi != fiCopy)
  {
LABEL_5:
    *p_isOnWiFi = fiCopy;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnPower && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnCellular && obj->_changedConditions.isOnExpensiveCellular && obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v7 = objc_opt_new();
    v8 = [NSNumber numberWithBool:fiCopy];
    [(MBBackupScheduler *)v7 setOnWiFi:v8];

    [(MBBackupScheduler *)obj _notifyStateChanged:v7 conditions:conditions];
    v9 = v7;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v9 = obj;
LABEL_15:
}

- (void)_setIsOnCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isOnCellular)
  {
    p_isOnCellular = &obj->_conditions.isOnCellular;
    if (obj->_conditions.isOnCellular == cellularCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isOnCellular = &obj->_conditions.isOnCellular;
  isOnCellular = obj->_conditions.isOnCellular;
  obj->_changedConditions.isOnCellular = 1;
  if (isOnCellular != cellularCopy)
  {
LABEL_5:
    *p_isOnCellular = cellularCopy;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnPower && obj->_changedConditions.isOnWiFi && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnExpensiveCellular && obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v7 = objc_opt_new();
    v8 = [NSNumber numberWithBool:cellularCopy];
    [(MBBackupScheduler *)v7 setOnCellular:v8];

    [(MBBackupScheduler *)obj _notifyStateChanged:v7 conditions:conditions];
    v9 = v7;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v9 = obj;
LABEL_15:
}

- (void)_setIsOnExpensiveCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isOnExpensiveCellular)
  {
    p_isOnExpensiveCellular = &obj->_conditions.isOnExpensiveCellular;
    if (obj->_conditions.isOnExpensiveCellular == cellularCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isOnExpensiveCellular = &obj->_conditions.isOnExpensiveCellular;
  isOnExpensiveCellular = obj->_conditions.isOnExpensiveCellular;
  obj->_changedConditions.isOnExpensiveCellular = 1;
  if (isOnExpensiveCellular != cellularCopy)
  {
LABEL_5:
    *p_isOnExpensiveCellular = cellularCopy;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnPower && obj->_changedConditions.isOnWiFi && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnCellular && obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v7 = objc_opt_new();
    v8 = [NSNumber numberWithBool:cellularCopy];
    [(MBBackupScheduler *)v7 setOnExpensiveCellular:v8];

    [(MBBackupScheduler *)obj _notifyStateChanged:v7 conditions:conditions];
    v9 = v7;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v9 = obj;
LABEL_15:
}

- (void)_setIsAutoBackupOnCellularAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_changedConditions.isAutoBackupOnCellularAllowed)
  {
    p_isAutoBackupOnCellularAllowed = &obj->_conditions.isAutoBackupOnCellularAllowed;
    if (obj->_conditions.isAutoBackupOnCellularAllowed == allowedCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  p_isAutoBackupOnCellularAllowed = &obj->_conditions.isAutoBackupOnCellularAllowed;
  isAutoBackupOnCellularAllowed = obj->_conditions.isAutoBackupOnCellularAllowed;
  obj->_changedConditions.isAutoBackupOnCellularAllowed = 1;
  if (isAutoBackupOnCellularAllowed != allowedCopy)
  {
LABEL_5:
    *p_isAutoBackupOnCellularAllowed = allowedCopy;
  }

  if (obj->_changedConditions.isEnabled && obj->_changedConditions.isLocked && obj->_changedConditions.isOnPower && obj->_changedConditions.isOnWiFi && obj->_changedConditions.isBackupOnCellularEnabled && obj->_changedConditions.isOnCellular && obj->_changedConditions.isOnExpensiveCellular)
  {
    conditions = obj->_conditions;
    objc_sync_exit(obj);

    v7 = objc_opt_new();
    v8 = [NSNumber numberWithBool:allowedCopy];
    [(MBBackupScheduler *)v7 setAutoBackupOnCellularAllowed:v8];

    [(MBBackupScheduler *)obj _notifyStateChanged:v7 conditions:conditions];
    v9 = v7;
    goto LABEL_15;
  }

LABEL_14:
  objc_sync_exit(obj);
  v9 = obj;
LABEL_15:
}

- (void)_setIsEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_changedConditions.isEnabled)
  {
    obj->_changedConditions.isEnabled = 1;
  }

  obj->_conditions.isEnabled = enabled;
  objc_sync_exit(obj);
}

- (void)_setIsBackupOnCellularEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_changedConditions.isBackupOnCellularEnabled)
  {
    obj->_changedConditions.isBackupOnCellularEnabled = 1;
  }

  obj->_conditions.isBackupOnCellularEnabled = enabled;
  objc_sync_exit(obj);
}

- (void)_notifyStateChanged:(id)changed conditions:(id)conditions
{
  changedCopy = changed;
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DC89C;
  block[3] = &unk_1003BDB10;
  block[4] = self;
  v10 = changedCopy;
  conditionsCopy = conditions;
  v8 = changedCopy;
  dispatch_async(stateQueue, block);
}

- (id)_lastSnapshotFromCacheWithAccount:(id)account
{
  accountCopy = account;
  v4 = +[MBCKManager sharedInstance];
  v13 = 0;
  v5 = [v4 openCacheWithAccount:accountCopy accessType:2 error:&v13];

  v6 = v13;
  if (v5)
  {
    v12 = v6;
    v7 = [v5 fetchMostRecentSnapshotWithError:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 == 0;
    }

    if (!v9)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch most recent snapshot from cache: %@", buf, 0xCu);
        _MBLog(@"E ", "=scheduler= Failed to fetch most recent snapshot from cache: %@", v8);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = v6;
  }

  return v7;
}

- (id)_dateOfLastBackupFromCloudWithConnection:(id)connection account:(id)account error:(id *)error
{
  connectionCopy = connection;
  accountCopy = account;
  if (!error)
  {
    __assert_rtn("[MBBackupScheduler _dateOfLastBackupFromCloudWithConnection:account:error:]", "MBBackupScheduler.m", 1863, "error");
  }

  v10 = accountCopy;
  v11 = +[MBCKOperationPolicy expensiveCellularPolicy];
  [v11 setTimeoutIntervalForFetch:10.0];
  databaseManager = [(MBCKManager *)self->_serviceManager databaseManager];
  v13 = [MBCKOperationTracker operationTrackerWithAccount:v10 databaseManager:databaseManager policy:v11 error:error];

  if (v13)
  {
    processName = [connectionCopy processName];
    v15 = [v11 operationGroupWithName:@"getLastBackupDate" processName:processName];
    [v13 setCkOperationGroup:v15];

    v16 = [MBCKDevice alloc];
    v17 = MBDeviceUUID();
    v18 = -[MBCKDevice initWithUUID:cache:backupEnabled:](v16, "initWithUUID:cache:backupEnabled:", v17, 0, [v10 isEnabledForBackup]);

    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1001DCF5C;
    v34 = sub_1001DCF6C;
    v35 = 0;
    v19 = dispatch_semaphore_create(0);
    recordID = [(MBCKModel *)v18 recordID];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001DCF74;
    v26[3] = &unk_1003BD810;
    v21 = v18;
    v27 = v21;
    v29 = &v30;
    v22 = v19;
    v28 = v22;
    [v13 fetchRecordWithID:recordID completion:v26];

    MBSemaphoreWaitForever();
    v23 = v31[5];
    if (v23)
    {
      dateOfLastBackup = 0;
      *error = v23;
    }

    else
    {
      dateOfLastBackup = [(MBCKDevice *)v21 dateOfLastBackup];
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    dateOfLastBackup = 0;
  }

  return dateOfLastBackup;
}

- (id)_dateOfLastBackupFromLockdown
{
  v2 = +[MBLockdown dateOfLastBackupFromLockdownPlist];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
    v5 = [NSDate dateWithTimeIntervalSince1970:unsignedLongLongValue];
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    if (v8 > 315360000.0)
    {
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:unsignedLongLongValue];

      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dateOfLastBackupWithAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler dateOfLastBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 1914, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBBackupScheduler dateOfLastBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 1915, "error");
  }

  v10 = connectionCopy;
  if ([accountCopy isPrimaryAccount])
  {
    _dateOfLastBackupFromLockdown = [(MBBackupScheduler *)self _dateOfLastBackupFromLockdown];
    v12 = MBGetDefaultLog();
    date = v12;
    if (_dateOfLastBackupFromLockdown)
    {
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v14 = MBStringWithDate();
      *buf = 138543362;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched dateOfLastBackup from lockdown:%{public}@", buf, 0xCu);

      v15 = MBStringWithDate();
      _MBLog(@"Df", "=scheduler= Fetched dateOfLastBackup from lockdown:%{public}@", v15);
LABEL_14:

      goto LABEL_29;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from lockdown", buf, 2u);
      _MBLog(@"I ", "=scheduler= No dateOfLastBackup available from lockdown");
    }
  }

  if (![(MBCKManager *)self->_serviceManager isRestoringAccount:accountCopy])
  {
    v16 = [(MBBackupScheduler *)self _lastSnapshotFromCacheWithAccount:accountCopy];
    _dateOfLastBackupFromLockdown = [v16 created];

    v17 = MBGetDefaultLog();
    date = v17;
    if (_dateOfLastBackupFromLockdown)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v18 = MBStringWithDate();
      *buf = 138543362;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched dateOfLastBackup from the cache:%{public}@", buf, 0xCu);

      v15 = MBStringWithDate();
      _MBLog(@"Df", "=scheduler= Fetched dateOfLastBackup from the cache:%{public}@", v15);
      goto LABEL_14;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, date, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from the cache", buf, 2u);
      _MBLog(@"I ", "=scheduler= No dateOfLastBackup available from the cache");
    }
  }

  v19 = [(MBBackupScheduler *)self _nilBackupDateFetchDateForAccount:accountCopy];
  if (v19)
  {
    v20 = v19;
    v21 = +[NSDate now];
    [v21 timeIntervalSinceDate:v20];
    v23 = v22;

    if (v23 >= 0.0 && v23 <= 43200.0)
    {
      _dateOfLastBackupFromLockdown = 0;
      goto LABEL_39;
    }
  }

  v37 = 0;
  _dateOfLastBackupFromLockdown = [(MBBackupScheduler *)self _dateOfLastBackupFromCloudWithConnection:v10 account:accountCopy error:&v37];
  v24 = v37;
  date = v24;
  if (_dateOfLastBackupFromLockdown || !v24)
  {
    v26 = MBGetDefaultLog();
    v27 = v26;
    if (!_dateOfLastBackupFromLockdown)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "=scheduler= No dateOfLastBackup available from the device record", buf, 2u);
        _MBLog(@"I ", "=scheduler= No dateOfLastBackup available from the device record");
      }

      _dateOfLastBackupFromLockdown = +[NSDate now];
      [(MBBackupScheduler *)self _updateNilBackupDateFetchDate:_dateOfLastBackupFromLockdown account:accountCopy];
LABEL_37:

      _dateOfLastBackupFromLockdown = 0;
      goto LABEL_38;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = MBStringWithDate();
      *buf = 138543362;
      v39 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched the dateOfLastBackup from the device record: %{public}@", buf, 0xCu);

      v29 = MBStringWithDate();
      _MBLog(@"Df", "=scheduler= Fetched the dateOfLastBackup from the device record: %{public}@", v29);
    }

    [(MBBackupScheduler *)self clearNilBackupDateFetchDateForAccount:accountCopy];
LABEL_29:

    v30 = [MBCKManager restoreInfoForAccount:accountCopy];
    date = [v30 date];

    if (!date || [_dateOfLastBackupFromLockdown compare:date] != -1)
    {
      goto LABEL_38;
    }

    v31 = MBGetDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = MBStringWithDate();
      v33 = MBStringWithDate();
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date (%{public}@) is before the restore date (%{public}@) - ignoring", buf, 0x16u);

      v34 = MBStringWithDate();
      v35 = MBStringWithDate();
      _MBLog(@"Df", "=scheduler= Last backup date (%{public}@) is before the restore date (%{public}@) - ignoring", v34, v35);
    }

    goto LABEL_37;
  }

  v25 = v24;
  _dateOfLastBackupFromLockdown = 0;
  *error = date;
LABEL_38:

LABEL_39:

  return _dateOfLastBackupFromLockdown;
}

- (id)_nilBackupDateFetchDateForAccount:(id)account
{
  accountCopy = account;
  persona = [accountCopy persona];
  v5 = [persona copyPreferencesValueForKey:@"NilBackupDateFetchDate" class:objc_opt_class()];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    v8 = MBStringWithDate();
    *buf = 138543874;
    v13 = @"NilBackupDateFetchDate";
    v14 = 2114;
    v15 = accountIdentifier;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    v10 = MBStringWithDate();
    _MBLog(@"Db", "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", @"NilBackupDateFetchDate", accountIdentifier2, v10);
  }

  return v5;
}

- (void)clearNilBackupDateFetchDateForAccount:(id)account
{
  accountCopy = account;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v9 = @"NilBackupDateFetchDate";
    v10 = 2114;
    v11 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Db", "=scheduler= Clearing %{public}@ for account %{public}@", @"NilBackupDateFetchDate", accountIdentifier2);
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:0 forKey:@"NilBackupDateFetchDate"];
}

- (void)_updateNilBackupDateFetchDate:(id)date account:(id)account
{
  dateCopy = date;
  accountCopy = account;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    v9 = MBStringWithDate();
    *buf = 138543874;
    v14 = @"NilBackupDateFetchDate";
    v15 = 2114;
    v16 = accountIdentifier;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=scheduler= Updating %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    v11 = MBStringWithDate();
    _MBLog(@"Df", "=scheduler= Updating %{public}@ for account %{public}@: %{public}@", @"NilBackupDateFetchDate", accountIdentifier2, v11);
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:dateCopy forKey:@"NilBackupDateFetchDate"];
}

- (BOOL)_fetchNextBackupDateOnWiFi:(id *)fi nextBackupDateOnCellular:(id *)cellular nextBackupDateOnBattery:(id *)battery lastBackupDate:(id *)date account:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  if (!fi)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1996, "nextBackupDateOnWiFiPtr");
  }

  if (!cellular)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1997, "nextBackupDateOnCellularPtr");
  }

  if (!battery)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1998, "nextBackupDateOnBatteryPtr");
  }

  if (!date)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 1999, "lastBackupDatePtr");
  }

  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2000, "account");
  }

  if (!error)
  {
    __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2001, "error");
  }

  *fi = 0;
  *cellular = 0;
  *battery = 0;
  *date = 0;
  v70 = 0;
  v15 = [(MBBackupScheduler *)self dateOfLastBackupWithAccount:accountCopy connection:connectionCopy error:&v70];
  v16 = v70;
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 == 0;
  }

  v18 = v17;
  if (v17)
  {
    v60 = v16;
    +[NSDate now];
    v65 = v64 = battery;
    v63 = v18;
    fiCopy = fi;
    cellularCopy = cellular;
    if (v15)
    {
      if ([v15 compare:v65] == 1)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = MBStringWithDate();
          *buf = 138543362;
          v72 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date is forward in time (%{public}@)", buf, 0xCu);

          v21 = MBStringWithDate();
          _MBLog(@"Df", "=scheduler= Last backup date is forward in time (%{public}@)", v21);
        }

        v22 = v65;
        v23 = v22;
        v24 = v22;
      }

      else
      {
        self->_backupPeriodOnWiFi = sub_1001D8C1C(accountCopy, @"BackupPeriod", 86400.0, 86400.0);
        self->_backupPeriodOnCellular = sub_1001D8C1C(accountCopy, @"BackupPeriodOnCellular", 172800.0, 172800.0);
        self->_backupPeriodOnBattery = sub_1001D8C1C(accountCopy, @"BackupPeriodOnBattery", 604800.0, 604800.0);
        v24 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnWiFi];
        v23 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnCellular];
        if ([(NSDate *)self->_dateOfLastPasscodeChange isDueForPasscodeChangedBackupWithLastBackupDate:v15])
        {
          v28 = self->_dateOfLastPasscodeChange;
        }

        else
        {
          v28 = [v15 dateByAddingTimeInterval:self->_backupPeriodOnBattery];
        }

        v22 = v28;
      }
    }

    else
    {
      v27 = MBGetDefaultLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup date is unknown", buf, 2u);
        _MBLog(@"Df", "=scheduler= Last backup date is unknown");
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
    }

    v29 = [(MBBackupScheduler *)self _retryAfterDateForAccount:accountCopy];
    [(MBBackupScheduler *)self _onBatteryRetryAfterDateForAccount:accountCopy];
    v67 = v66 = v29;
    if (v24)
    {
      if (v29)
      {
        v30 = [v24 laterDate:v29];

        v31 = [v23 laterDate:v29];

        v32 = [v22 laterDate:v67];

        v22 = v32;
        v23 = v31;
        v24 = v30;
      }

      else if (v67)
      {
        v33 = [v22 laterDate:v67];

        v22 = [v33 laterDate:0];
      }
    }

    else
    {
      if (v23 | v22)
      {
        __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2042, "!nextBackupDateOnCellular && !nextBackupDateOnBattery");
      }

      v22 = v29;
      v23 = v22;
      v24 = v22;
    }

    v34 = MBGetDefaultLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = MBStringWithDate();
      log = v34;
      v36 = MBStringWithDate();
      MBStringWithDate();
      v37 = v57 = v15;
      v38 = MBStringWithDate();
      v39 = MBStringWithDate();
      MBStringWithDate();
      v40 = v56 = v24;
      [accountCopy persona];
      v41 = v59 = accountCopy;
      personaIdentifier = [v41 personaIdentifier];
      *buf = 138544898;
      v72 = v35;
      v73 = 2114;
      v74 = v36;
      v75 = 2114;
      v76 = v37;
      v77 = 2114;
      v78 = v38;
      v79 = 2114;
      v80 = v39;
      v81 = 2114;
      v82 = v40;
      v83 = 2112;
      v84 = personaIdentifier;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "=scheduler= lastBackupDate:%{public}@, retryAfterDate:%{public}@(%{public}@, nextBackupDateOnWiFi:%{public}@, nextBackupDateOnCellular:%{public}@, nextBackupDateOnBattery:%{public}@, persona:%@", buf, 0x48u);

      v24 = v56;
      v15 = v57;

      v55 = MBStringWithDate();
      v54 = MBStringWithDate();
      v53 = MBStringWithDate();
      v43 = MBStringWithDate();
      v44 = MBStringWithDate();
      v45 = MBStringWithDate();
      persona = [v59 persona];
      personaIdentifier2 = [persona personaIdentifier];
      _MBLog(@"Df", "=scheduler= lastBackupDate:%{public}@, retryAfterDate:%{public}@(%{public}@, nextBackupDateOnWiFi:%{public}@, nextBackupDateOnCellular:%{public}@, nextBackupDateOnBattery:%{public}@, persona:%@", v55, v54, v53, v43, v44, v45, personaIdentifier2);

      v34 = log;
      accountCopy = v59;
    }

    if (!v24 && v23 && !v22)
    {
      __assert_rtn("[MBBackupScheduler _fetchNextBackupDateOnWiFi:nextBackupDateOnCellular:nextBackupDateOnBattery:lastBackupDate:account:connection:error:]", "MBBackupScheduler.m", 2057, "nextBackupDateOnWiFi || !nextBackupDateOnCellular || nextBackupDateOnBattery");
    }

    v48 = v24;
    *fiCopy = v24;
    v49 = v23;
    *cellularCopy = v23;
    v50 = v22;
    *v64 = v22;
    v51 = v15;
    *date = v15;

    v18 = v63;
    v26 = v60;
  }

  else
  {
    v25 = v16;
    *error = v25;
    v26 = v25;
  }

  return v18;
}

- (id)dateOfNextScheduledBackupWithAccount:(id)account connection:(id)connection error:(id *)error
{
  accountCopy = account;
  connectionCopy = connection;
  if (!accountCopy)
  {
    __assert_rtn("[MBBackupScheduler dateOfNextScheduledBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 2068, "account");
  }

  v10 = connectionCopy;
  v25 = 0;
  persona = [accountCopy persona];
  v12 = [persona getBooleanValueForKey:@"EnableBackupScheduling" keyExists:&v25];

  if (!v25 || v12)
  {
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = 0;
    v14 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v24 nextBackupDateOnCellular:&v23 nextBackupDateOnBattery:&v22 lastBackupDate:&v21 account:accountCopy connection:v10 error:error];
    v15 = v24;
    v16 = v23;
    v17 = v22;
    v18 = v21;
    v13 = 0;
    if (v14 && v15)
    {
      if (!v16 || !v17)
      {
        __assert_rtn("[MBBackupScheduler dateOfNextScheduledBackupWithAccount:connection:error:]", "MBBackupScheduler.m", 2090, "nextBackupDateOnCellular && nextBackupDateOnBattery");
      }

      v19 = [v15 earlierDate:v16];
      v13 = [v19 earlierDate:v17];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_scheduleNextBackup
{
  conditions = [(MBBackupScheduler *)self conditions];

  [(MBBackupScheduler *)self _stateDidChange:0 conditions:conditions];
}

- (unint64_t)_lastPendingSnapshotSizeForAccount:(id)account
{
  accountCopy = account;
  persona = [accountCopy persona];
  v5 = [persona copyPreferencesValueForKey:@"LastPendingSnapshotSize" class:objc_opt_class()];

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543874;
    v12 = @"LastPendingSnapshotSize";
    v13 = 2114;
    v14 = accountIdentifier;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", buf, 0x20u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Fetched %{public}@ for account %{public}@: %{public}@", @"LastPendingSnapshotSize", accountIdentifier2, v5);
  }

  unsignedLongLongValue = [v5 unsignedLongLongValue];
  return unsignedLongLongValue;
}

- (void)_clearLastPendingSnapshotSizeForAccount:(id)account
{
  accountCopy = account;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    accountIdentifier = [accountCopy accountIdentifier];
    *buf = 138543618;
    v9 = @"LastPendingSnapshotSize";
    v10 = 2114;
    v11 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "=scheduler= Clearing %{public}@ for account %{public}@", buf, 0x16u);

    accountIdentifier2 = [accountCopy accountIdentifier];
    _MBLog(@"Df", "=scheduler= Clearing %{public}@ for account %{public}@", @"LastPendingSnapshotSize", accountIdentifier2);
  }

  persona = [accountCopy persona];
  [persona setPreferencesValue:0 forKey:@"LastPendingSnapshotSize"];
}

- (BOOL)_isBackupOnCellularAllowedForAccount:(id)account
{
  accountCopy = account;
  v4 = +[MBRemoteConfiguration sharedInstance];
  v5 = [v4 valueForKey:@"AutomaticBackupOnCellularEnabled" account:accountCopy];

  if (v5)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v10 = @"AutomaticBackupOnCellularEnabled";
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=scheduler= %{public}@: %{public}@", buf, 0x16u);
      _MBLog(@"Df", "=scheduler= %{public}@: %{public}@", @"AutomaticBackupOnCellularEnabled", v5);
    }

    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_fetchNextBackupDateAcrossAccountsOnWifi:(id *)wifi cellular:(id *)cellular battery:(id *)battery error:(id *)error
{
  [(MBBackupScheduler *)self accounts];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v36 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v45;
    v35 = *v45;
    do
    {
      v12 = 0;
      v37 = v8;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        if ([v13 isEnabledForBackup])
        {
          v42 = 0;
          v43 = 0;
          v40 = 0;
          v41 = 0;
          v39 = 0;
          v14 = [(MBBackupScheduler *)self _fetchNextBackupDateOnWiFi:&v43 nextBackupDateOnCellular:&v42 nextBackupDateOnBattery:&v41 lastBackupDate:&v40 account:v13 connection:0 error:&v39];
          v15 = v43;
          v16 = v42;
          v17 = v41;
          v18 = v40;
          v19 = v39;
          if (v14)
          {
            v34 = [v15 earlierDate:v10];

            v20 = [v16 earlierDate:v9];

            v21 = [v17 earlierDate:v36];

            v36 = v21;
            v9 = v20;
            v10 = v34;
          }

          else
          {
            v22 = MBGetDefaultLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v49 = v19;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the last&next backup date for account: %{public}@", buf, 0xCu);
              _MBLog(@"E ", "=scheduler= Failed to fetch the last&next backup date for account: %{public}@", v19);
            }

            [0 addObject:v19];
          }

          v11 = v35;
          v8 = v37;
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v8);
  }

  else
  {
    v36 = 0;
    v9 = 0;
    v10 = 0;
  }

  if ([0 count] && (v23 = objc_msgSend(0, "count"), v23 == objc_msgSend(obj, "count")))
  {
    if (error)
    {
      [MBError errorWithErrors:0];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    v26 = v36;
  }

  else
  {
    if (wifi)
    {
      v25 = v10;
      *wifi = v10;
    }

    v26 = v36;
    if (cellular)
    {
      v27 = v9;
      *cellular = v9;
    }

    if (battery)
    {
      v28 = v36;
      *battery = v36;
    }

    v24 = 1;
  }

  return v24;
}

- (int64_t)_scheduleBackupOnWiFi:(BOOL)fi onCellular:(BOOL)cellular onBattery:(BOOL)battery
{
  batteryCopy = battery;
  cellularCopy = cellular;
  fiCopy = fi;
  if (!fi && !cellular)
  {
    __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2169, "onWiFi || onCellular");
  }

  dispatch_assert_queue_V2(self->_stateQueue);
  accounts = [(MBBackupScheduler *)self accounts];

  if (accounts)
  {
    initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];
    if (initiatedBackupRequest)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v119 = [initiatedBackupRequest activityType];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling automatic backup - XPC activity is running (%d)", buf, 8u);
        _MBLog(@"Df", "=scheduler= Not scheduling automatic backup - XPC activity is running (%d)", [initiatedBackupRequest activityType]);
      }

      v12 = 0;
      goto LABEL_108;
    }

    v106 = batteryCopy;
    v11 = +[NSDate now];
    v102 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v116 = 0;
    v117 = 0;
    v114 = 0;
    v115 = 0;
    v13 = [(MBBackupScheduler *)self _fetchNextBackupDateAcrossAccountsOnWifi:&v117 cellular:&v116 battery:&v115 error:&v114];
    v14 = v117;
    v109 = v116;
    v15 = v115;
    v16 = v114;
    if ((v13 & 1) == 0)
    {
      v17 = MBGetDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v119 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=scheduler= Failed to fetch the next backup date across all accounts: %@", buf, 0xCu);
        _MBLog(@"E ", "=scheduler= Failed to fetch the next backup date across all accounts: %@", v16);
      }

      v12 = -1;
      goto LABEL_106;
    }

    if (fiCopy)
    {
      objc_storeStrong(&self->_scheduledDateOnWiFi, v11);
    }

    if (v14)
    {
      if (!v109)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2203, "nextBackupDateOnCellular");
      }

      v104 = v14;
      if (!v15)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2204, "nextBackupDateOnBattery");
      }
    }

    else
    {
      if (v109 | v15)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2199, "!nextBackupDateOnCellular && !nextBackupDateOnBattery");
      }

      v109 = [v11 dateByAddingTimeInterval:1.0];
      v15 = v109;
      v104 = v109;
      if (!v109)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2202, "nextBackupDateOnWiFi");
      }
    }

    v103 = v15;
    v101 = v16;
    v108 = v11;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    accounts2 = [(MBBackupScheduler *)self accounts];
    v19 = [accounts2 countByEnumeratingWithState:&v110 objects:v127 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v111;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v111 != v22)
          {
            objc_enumerationMutation(accounts2);
          }

          v24 = *(*(&v110 + 1) + 8 * i);
          if ([v24 isEnabled])
          {
            v21 += [(MBBackupScheduler *)self _lastPendingSnapshotSizeForAccount:v24];
          }
        }

        v20 = [accounts2 countByEnumeratingWithState:&v110 objects:v127 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    if (cellularCopy)
    {
      v25 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0F90];

      v11 = v108;
      v15 = v103;
      if (!v25)
      {
        v26 = os_transaction_create();
        [(NSMutableDictionary *)self->_osTransactionsByActivityType setObject:v26 forKeyedSubscript:&off_1003E0F90];

        [(MBBackupScheduler *)self _holdWorkAssertion];
      }

      v27 = fmin(fmax(self->_backupPeriodOnCellular * 0.5, 600.0), 86400.0);
      v28 = v109;
      if (v27 <= 599)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2223, "10 * 60 <= maxGrace");
      }

      if ([v108 compare:v109]== 1)
      {
        [v108 timeIntervalSinceDate:v109];
        v30 = v29;
        v31 = MBGetDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = MBStringWithDate();
          *buf = 138543618;
          *v119 = v32;
          *&v119[8] = 2048;
          v120 = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on cellular was delayed (%{public}@) (%llds)", buf, 0x16u);

          v33 = MBStringWithDate();
          _MBLog(@"Df", "=scheduler= Last backup on cellular was delayed (%{public}@) (%llds)", v33, v30);

          v28 = v109;
        }

        v34 = [v108 dateByAddingTimeInterval:1.0];

        if (v27 >= v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v27;
        }

        v36 = v27 - v35;
        if (v36 <= 600)
        {
          v27 = 600;
        }

        else
        {
          v27 = v36;
        }

        if (!v34)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2232, "nextBackupDateOnCellular");
        }

        v15 = v103;
      }

      else
      {
        v34 = v109;
      }

      [v34 timeIntervalSinceDate:v108];
      v38 = vcvtpd_s64_f64(v37);
      if ((v38 & 0x8000000000000000) != 0)
      {
        __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2234, "0 <= delta");
      }

      v39 = (120 - v38) & ~((120 - v38) >> 63);
      v12 = v39 + v38;
      v40 = [v34 dateByAddingTimeInterval:v39];

      v41 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0F90];
      v42 = v41;
      v109 = v40;
      if (v41 && ([v41 timeIntervalSinceDate:v40], fabs(v43) <= 120.0))
      {
        v48 = MBGetDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v119 = v109;
          *&v119[8] = 2112;
          v120 = v42;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next cellular backup at %@ because there is a DAS backup scheduled at %@", buf, 0x16u);
          _MBLog(@"Df", "=scheduler= Not scheduling the next cellular backup at %@ because there is a DAS backup scheduled at %@", v109, v42);
        }
      }

      else
      {
        v100 = v42;
        [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v40 forKeyedSubscript:&off_1003E0F90];
        v44 = v21;
        v45 = 209715200.0;
        if (v21 >> 22 < 0x7D)
        {
          v45 = 157286400.0;
        }

        if (v21 >> 21 >= 0x7D)
        {
          v44 = v45;
        }

        v46 = round(fmax(v44, 75497472.0) * 9.31322575e-10 * 100.0) / 100.0;
        if (v46 <= 0.0 || v46 > 1.0)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2268, "0.0 < minCellularBudgetPercentage && minCellularBudgetPercentage <= 1.0");
        }

        v48 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_REPEATING, 0);
        xpc_dictionary_set_int64(v48, XPC_ACTIVITY_DELAY, v12);
        xpc_dictionary_set_int64(v48, XPC_ACTIVITY_GRACE_PERIOD, v27);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, ![(MBBackupScheduler *)self allowBackupOnExpensiveCellular]);
        xpc_dictionary_set_string(v48, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_ALLOW_BATTERY, 0);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
        xpc_dictionary_set_int64(v48, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
        xpc_dictionary_set_BOOL(v48, XPC_ACTIVITY_USES_DATA_BUDGETING, 1);
        xpc_dictionary_set_int64(v48, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
        v49 = xpc_dictionary_create(0, 0, 0);
        uTF8String = [_DASCTSMinDataBudgetPercentRemainingKey UTF8String];
        v51 = xpc_double_create(v46);
        xpc_dictionary_set_value(v49, uTF8String, v51);

        xpc_dictionary_set_value(v48, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v49);
        activityCoordinator = [(MBBackupScheduler *)self activityCoordinator];
        [activityCoordinator registerBackupActivity:1 criteria:v48];

        v53 = MBGetDefaultLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = MBStringWithDate();
          *buf = 138544386;
          *v119 = v54;
          *&v119[8] = 2048;
          v120 = v12;
          v121 = 2048;
          v122 = v21;
          v123 = 2048;
          v124 = v46;
          v125 = 2114;
          v126 = v48;
          v11 = v108;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on cellular at %{public}@ (delta:%llds, estimatedUploadSize:%llu, minCellularBudgetPercentage:%.2f): %{public}@", buf, 0x34u);

          v55 = MBStringWithDate();
          _MBLog(@"Df", "=scheduler= Scheduled next backup on cellular at %{public}@ (delta:%llds, estimatedUploadSize:%llu, minCellularBudgetPercentage:%.2f): %{public}@", v55, v12, v21, *&v46, v48);
        }

        v12 = -1;
        v15 = v103;
        v42 = v100;
      }

      v14 = v104;
      if (!fiCopy)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v12 = -1;
      v11 = v108;
      v15 = v103;
      v14 = v104;
      if (!fiCopy)
      {
LABEL_88:
        if (!v106)
        {
          v16 = v101;
LABEL_107:

LABEL_108:
          goto LABEL_109;
        }

        v79 = os_transaction_create();
        v105 = v14;
        if ([v11 compare:v15]== 1)
        {
          [v11 timeIntervalSinceDate:v15];
          v81 = v80;
          v82 = MBGetDefaultLog();
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v83 = MBStringWithDate();
            *buf = 138543618;
            *v119 = v83;
            *&v119[8] = 2048;
            v120 = v81;
            _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on battery was delayed (%{public}@) (%llds)", buf, 0x16u);

            v84 = MBStringWithDate();
            v11 = v108;
            _MBLog(@"Df", "=scheduler= Last backup on battery was delayed (%{public}@) (%llds)", v84, v81);
          }

          v85 = [v11 dateByAddingTimeInterval:1.0];

          if (!v85)
          {
            __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2354, "nextBackupDateOnBattery");
          }
        }

        else
        {
          v85 = v15;
        }

        [v85 timeIntervalSinceDate:v11];
        v87 = vcvtpd_s64_f64(v86);
        if ((v87 & 0x8000000000000000) != 0)
        {
          __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2357, "0 <= onBatteryDelta");
        }

        v88 = (120 - v87) & ~((120 - v87) >> 63);
        v15 = [v85 dateByAddingTimeInterval:v88];

        v89 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FC0];
        v17 = v89;
        if (v89 && ([v89 timeIntervalSinceDate:v15], fabs(v90) <= 120.0))
        {
          v94 = MBGetDefaultLog();
          v16 = v101;
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v119 = v15;
            *&v119[8] = 2112;
            v120 = v17;
            _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next battery backup at %@ because there is already a DAS backup scheduled at %@", buf, 0x16u);
            _MBLog(@"Df", "=scheduler= Not scheduling the next battery backup at %@ because there is already a DAS backup scheduled at %@", v15, v17);
          }

          v11 = v108;
        }

        else
        {
          v107 = v79;
          v91 = v15;
          v92 = v88 + v87;
          v93 = v91;
          [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
          v94 = xpc_dictionary_create(0, 0, 0);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REPEATING, 0);
          xpc_dictionary_set_int64(v94, XPC_ACTIVITY_DELAY, v92);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
          xpc_dictionary_set_string(v94, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_ALLOW_BATTERY, 1);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REQUIRE_BATTERY_LEVEL, 1);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
          xpc_dictionary_set_BOOL(v94, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
          xpc_dictionary_set_int64(v94, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
          xpc_dictionary_set_int64(v94, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
          activityCoordinator2 = [(MBBackupScheduler *)self activityCoordinator];
          [activityCoordinator2 registerBackupActivity:3 criteria:v94];

          v96 = MBGetDefaultLog();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            v97 = MBStringWithDate();
            *buf = 138543618;
            *v119 = v97;
            *&v119[8] = 2048;
            v120 = v92;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on battery at %{public}@ (%llds)", buf, 0x16u);

            v98 = MBStringWithDate();
            _MBLog(@"Df", "=scheduler= Scheduled next backup on battery at %{public}@ (%llds)", v98, v92);
          }

          v16 = v101;
          v15 = v93;
          v79 = v107;
          v11 = v108;
        }

        v14 = v105;
LABEL_106:

        goto LABEL_107;
      }
    }

    v56 = [(NSMutableDictionary *)self->_osTransactionsByActivityType objectForKeyedSubscript:&off_1003E0FA8];

    if (!v56)
    {
      v57 = os_transaction_create();
      [(NSMutableDictionary *)self->_osTransactionsByActivityType setObject:v57 forKeyedSubscript:&off_1003E0FA8];

      [(MBBackupScheduler *)self _holdWorkAssertion];
    }

    if ([v11 compare:v14]== 1)
    {
      [v11 timeIntervalSinceDate:v14];
      v59 = v58;
      v60 = MBGetDefaultLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = MBStringWithDate();
        *buf = 138543618;
        *v119 = v61;
        *&v119[8] = 2048;
        v120 = v59;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "=scheduler= Last backup on WiFi was delayed (%{public}@) (%llds)", buf, 0x16u);

        v62 = MBStringWithDate();
        v11 = v108;
        _MBLog(@"Df", "=scheduler= Last backup on WiFi was delayed (%{public}@) (%llds)", v62, v59);
      }

      v63 = [v11 dateByAddingTimeInterval:1.0];
    }

    else
    {
      v63 = v14;
    }

    if (!v63)
    {
      __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2304, "nextBackupDateOnWiFi");
    }

    [v63 timeIntervalSinceDate:v11];
    v65 = vcvtpd_s64_f64(v64);
    if ((v65 & 0x8000000000000000) != 0)
    {
      __assert_rtn("[MBBackupScheduler _scheduleBackupOnWiFi:onCellular:onBattery:]", "MBBackupScheduler.m", 2307, "0 <= delta");
    }

    v66 = (120 - v65) & ~((120 - v65) >> 63);
    v12 = v66 + v65;
    v14 = [v63 dateByAddingTimeInterval:v66];

    v67 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FA8];
    v68 = v67;
    if (v67 && ([v67 timeIntervalSinceDate:v14], fabs(v69) <= 120.0))
    {
      v76 = MBGetDefaultLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v119 = v14;
        *&v119[8] = 2112;
        v120 = v68;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=scheduler= Not scheduling the next WiFi backup at %@ because there is already a DAS backup scheduled at %@", buf, 0x16u);
        _MBLog(@"Df", "=scheduler= Not scheduling the next WiFi backup at %@ because there is already a DAS backup scheduled at %@", v14, v68);
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_nextBackupDatesByActivityType setObject:v14 forKeyedSubscript:&off_1003E0FA8];
      backupOnWiFiWithDAS = [objc_opt_class() backupOnWiFiWithDAS];
      v71 = xpc_dictionary_create(0, 0, 0);
      v72 = v71;
      if (backupOnWiFiWithDAS)
      {
        xpc_dictionary_set_BOOL(v71, XPC_ACTIVITY_REPEATING, 0);
        xpc_dictionary_set_int64(v72, XPC_ACTIVITY_DELAY, v12);
        xpc_dictionary_set_BOOL(v72, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
        xpc_dictionary_set_string(v72, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        xpc_dictionary_set_BOOL(v72, XPC_ACTIVITY_ALLOW_BATTERY, 0);
        xpc_dictionary_set_BOOL(v72, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
        xpc_dictionary_set_BOOL(v72, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_BOOL(v72, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
        xpc_dictionary_set_int64(v72, XPC_ACTIVITY_NETWORK_UPLOAD_SIZE, v21);
        xpc_dictionary_set_int64(v72, XPC_ACTIVITY_EXPECTED_DURATION, XPC_ACTIVITY_INTERVAL_4_HOURS);
        activityCoordinator3 = [(MBBackupScheduler *)self activityCoordinator];
        [activityCoordinator3 registerBackupActivity:2 criteria:v72];
      }

      else
      {
        xpc_dictionary_set_string(v71, "Type", "Monotonic");
        xpc_dictionary_set_uint64(v72, "Date", v102 + 1000000000 * v12);
        alarm = self->_alarm;
        self->_alarm = v72;
        v75 = v72;

        v11 = v108;
        xpc_set_event();
      }

      v76 = MBGetDefaultLog();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = MBStringWithDate();
        *buf = 138543618;
        *v119 = v77;
        *&v119[8] = 2048;
        v120 = v12;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "=scheduler= Scheduled next backup on WiFi at %{public}@ (%llds)", buf, 0x16u);

        v78 = MBStringWithDate();
        _MBLog(@"Df", "=scheduler= Scheduled next backup on WiFi at %{public}@ (%llds)", v78, v12);
      }
    }

    goto LABEL_88;
  }

  initiatedBackupRequest = MBGetDefaultLog();
  if (os_log_type_enabled(initiatedBackupRequest, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *v119 = fiCopy;
    *&v119[4] = 1024;
    *&v119[6] = cellularCopy;
    _os_log_impl(&_mh_execute_header, initiatedBackupRequest, OS_LOG_TYPE_INFO, "=scheduler= Not scheduling automatic backup - no accounts, onWiFi:%d, onCellular:%d", buf, 0xEu);
    _MBLog(@"I ", "=scheduler= Not scheduling automatic backup - no accounts, onWiFi:%d, onCellular:%d", fiCopy, cellularCopy);
  }

  v12 = -1;
LABEL_109:

  return v12;
}

- (void)_tearDownScheduledBackupWithActivityType:(int)type
{
  v3 = *&type;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v3 == 2)
  {
    [(MBBackupScheduler *)self _cancelLossTimers];
    if (self->_alarm)
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FA8];
        v7 = MBStringWithDate();
        v8 = MBStringWithDate();
        *buf = 138543618;
        v24 = v7;
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceling the backup alarm (WiFi) scheduled for %{public}@ (scheduled at %{public}@)", buf, 0x16u);

        v9 = [(NSMutableDictionary *)self->_nextBackupDatesByActivityType objectForKeyedSubscript:&off_1003E0FA8];
        v10 = MBStringWithDate();
        v11 = MBStringWithDate();
        _MBLog(@"Df", "=scheduler= Canceling the backup alarm (WiFi) scheduled for %{public}@ (scheduled at %{public}@)", v10, v11);
      }

      alarm = self->_alarm;
      self->_alarm = 0;

      [(MBBackupScheduler *)self _cancelAlarm];
    }
  }

  osTransactionsByActivityType = self->_osTransactionsByActivityType;
  v14 = [NSNumber numberWithInt:v3];
  v15 = [(NSMutableDictionary *)osTransactionsByActivityType objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = self->_osTransactionsByActivityType;
    v17 = [NSNumber numberWithInt:v3];
    [(NSMutableDictionary *)v16 setObject:0 forKeyedSubscript:v17];

    [(MBBackupScheduler *)self _releaseWorkAssertion];
  }

  nextBackupDatesByActivityType = self->_nextBackupDatesByActivityType;
  v19 = [NSNumber numberWithInt:v3];
  [(NSMutableDictionary *)nextBackupDatesByActivityType setObject:0 forKeyedSubscript:v19];

  v20 = MBGetDefaultLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = MBBackupXPCActivityNameWithType(v3);
    *buf = 136315138;
    v24 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceled scheduled backup: %s", buf, 0xCu);
    v22 = MBBackupXPCActivityNameWithType(v3);
    _MBLog(@"Df", "=scheduler= Canceled scheduled backup: %s", v22);
  }
}

- (void)_registerAlarmHandler
{
  stateQueue = self->_stateQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1001E0440;
  handler[3] = &unk_1003C12B8;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.alarm", stateQueue, handler);
}

- (void)_cancelAlarm
{
  xpc_set_event();
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v4 = "com.apple.backupd.alarm";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "=scheduler= Canceled alarm (%s)", buf, 0xCu);
    _MBLog(@"Df", "=scheduler= Canceled alarm (%s)", "com.apple.backupd.alarm");
  }
}

- (void)_handleAlarm
{
  [(MBBackupScheduler *)self _holdWorkAssertion];
  [(MBBackupScheduler *)self _tearDownScheduledBackupWithActivityType:2];

  [(MBBackupScheduler *)self _releaseWorkAssertion];
}

- (BOOL)_startBackupRequestForActivity:(int)activity
{
  v3 = *&activity;
  dispatch_assert_queue_V2(self->_stateQueue);
  initiatedBackupRequest = [(MBBackupScheduler *)self initiatedBackupRequest];

  if (!initiatedBackupRequest)
  {
    v6 = objc_opt_new();
    switch(v3)
    {
      case 3:
        v12 = 5;
        break;
      case 2:
        v12 = 2;
        break;
      case 1:
        v11 = objc_opt_new();
        [v11 setAllowsExpensiveNetworkAccess:0];
        [v11 setAllowsConstrainedNetworkAccess:0];
        [v6 setCellularAccess:v11];

        v12 = 4;
        break;
      default:
        __assert_rtn("[MBBackupScheduler _startBackupRequestForActivity:]", "MBBackupScheduler.m", 2460, "0");
    }

    initiatedBackupRequest4 = [[MBAutomaticBackupRequest alloc] initWithReason:v12 activityType:v3 options:v6];
    if ([(MBBackupScheduler *)self _startBackupForNextAvailableAccountWithRequest:initiatedBackupRequest4])
    {
      [(MBBackupScheduler *)self setInitiatedBackupRequest:initiatedBackupRequest4];
      objc_initWeak(buf, self);
      activityCoordinator = [(MBBackupScheduler *)self activityCoordinator];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001E09A0;
      v17[3] = &unk_1003C12E0;
      objc_copyWeak(&v19, buf);
      initiatedBackupRequest4 = initiatedBackupRequest4;
      v18 = initiatedBackupRequest4;
      [activityCoordinator pollForBackupActivityDeferrals:v3 block:v17];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
      initiatedBackupRequest2 = [(MBBackupScheduler *)self initiatedBackupRequest];
      if (!initiatedBackupRequest2)
      {
        __assert_rtn("[MBBackupScheduler _startBackupRequestForActivity:]", "MBBackupScheduler.m", 2480, "!started || self.initiatedBackupRequest");
      }

      v13 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MBBackupXPCActivityNameWithType(v3);
    initiatedBackupRequest3 = [(MBBackupScheduler *)self initiatedBackupRequest];
    *buf = 136446466;
    v21 = v7;
    v22 = 2112;
    v23 = initiatedBackupRequest3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "=scheduler= Ignoring ready XPC activity %{public}s, backup already initiated %@", buf, 0x16u);

    v9 = MBBackupXPCActivityNameWithType(v3);
    initiatedBackupRequest4 = [(MBBackupScheduler *)self initiatedBackupRequest];
    _MBLog(@"Df", "=scheduler= Ignoring ready XPC activity %{public}s, backup already initiated %@", v9, initiatedBackupRequest4);
    goto LABEL_14;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)backupActivityIsRunnable:(int)runnable
{
  if (!runnable)
  {
    __assert_rtn("[MBBackupScheduler backupActivityIsRunnable:]", "MBBackupScheduler.m", 2485, "xpcActivityType != MBBackupXPCActivityTypeNone");
  }

  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v24 = MBBackupXPCActivityNameWithType(runnable);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=scheduler= Received ready XPC activity %{public}s", buf, 0xCu);
    v6 = MBBackupXPCActivityNameWithType(runnable);
    _MBLog(@"Df", "=scheduler= Received ready XPC activity %{public}s", v6);
  }

  v7 = os_transaction_create();
  firstConditionsGroup = [(MBBackupScheduler *)self firstConditionsGroup];
  if (!firstConditionsGroup)
  {
    goto LABEL_11;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=scheduler= Waiting for all conditions to update", buf, 2u);
    _MBLog(@"Df", "=scheduler= Waiting for all conditions to update");
  }

  v10 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(firstConditionsGroup, v10))
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "=scheduler= Timed out waiting for all conditions to update", buf, 2u);
      _MBLog(@"E ", "=scheduler= Timed out waiting for all conditions to update");
    }

    stateQueue = self->_stateQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001E0D3C;
    v20[3] = &unk_1003C1328;
    runnableCopy = runnable;
    v13 = &v21;
    v20[4] = self;
    v21 = v7;
    v14 = v7;
    v15 = v20;
  }

  else
  {
LABEL_11:
    stateQueue = self->_stateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E0D88;
    block[3] = &unk_1003C1328;
    runnableCopy2 = runnable;
    v13 = &v18;
    block[4] = self;
    v18 = v7;
    v16 = v7;
    v15 = block;
  }

  dispatch_async(stateQueue, v15);
}

+ (BOOL)backupOnWiFiWithDAS
{
  if (qword_1004219F8 != -1)
  {
    dispatch_once(&qword_1004219F8, &stru_1003C1300);
  }

  return byte_1004201C8;
}

@end