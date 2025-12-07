@interface MTLegacyManager
+ (id)_numberFromString:(id)string;
+ (id)alarmFromOldAlarm:(id)alarm;
+ (id)sharedManager;
+ (id)soundFromOldAlarm:(id)alarm;
+ (unint64_t)repeatScheduleFromOldAlarm:(id)alarm;
- (BOOL)_discardOldAlarms;
- (BOOL)_discardOldTimers;
- (BOOL)_upgrade;
- (BOOL)_upgradeAlarms;
- (BOOL)_upgradeIfNeverAttempted;
- (BOOL)_upgradeTimers;
- (MTLegacyManager)init;
- (id)_copyLegacyAlarmsFromPreferences;
- (id)_copyLegacySleepAlarmFromPreferences;
- (void)_cancelNotifications;
- (void)_loadAlarms;
- (void)_loadScheduledNotifications;
- (void)_loadTimerDefaults;
- (void)_loadUserPreferences;
- (void)_purgeAlarmsAndTimers;
- (void)_reconcileAlarmsAndNotifications;
- (void)_upgradeFromSpringboardDefaults;
- (void)cancelNotifications;
- (void)clearInvalidPendingNotifications;
- (void)loadLegacyData;
- (void)purgeLegacyData;
@end

@implementation MTLegacyManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[MTLegacyManager sharedManager];
  }

  v3 = sharedManager__manager;

  return v3;
}

uint64_t __32__MTLegacyManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager__manager;
  sharedManager__manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MTLegacyManager)init
{
  v10.receiver = self;
  v10.super_class = MTLegacyManager;
  v2 = [(MTLegacyManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MTLegacyManager", 0);
    serializer = v2->_serializer;
    v2->_serializer = v3;

    v5 = objc_alloc(MEMORY[0x1E6983308]);
    _bundleIDForUNSchedule = [objc_opt_class() _bundleIDForUNSchedule];
    v7 = [v5 initWithBundleIdentifier:_bundleIDForUNSchedule];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v7;
  }

  return v2;
}

- (void)loadLegacyData
{
  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__MTLegacyManager_loadLegacyData__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_sync(serializer, block);
}

void *__33__MTLegacyManager_loadLegacyData__block_invoke(void *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(result[4] + 8) & 1) == 0)
  {
    v1 = result;
    v2 = MTLogForCategory(3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ loading legacy data", &v4, 0xCu);
    }

    [v1[4] _loadUserPreferences];
    [v1[4] _loadScheduledNotifications];
    [v1[4] _upgradeFromSpringboardDefaults];
    [v1[4] _loadAlarms];
    [v1[4] _reconcileAlarmsAndNotifications];
    result = [v1[4] _loadTimerDefaults];
    *(v1[4] + 8) = 1;
  }

  return result;
}

- (void)_loadUserPreferences
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ loading user preferences", &v4, 0xCu);
  }

  CFPreferencesAppSynchronize(@"com.apple.mobiletimer");
}

- (void)_loadScheduledNotifications
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ loading scheduled notifications", buf, 0xCu);
  }

  v4 = dispatch_semaphore_create(0);
  notificationCenter = self->_notificationCenter;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __46__MTLegacyManager__loadScheduledNotifications__block_invoke;
  v12 = &unk_1E7B0D7A8;
  selfCopy2 = self;
  v6 = v4;
  v14 = v6;
  [(UNUserNotificationCenter *)notificationCenter getPendingNotificationRequestsWithCompletionHandler:&v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(NSArray *)self->_scheduledNotifications count:v9];
    *buf = 138543618;
    selfCopy3 = self;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ found %lu scheduled notifications", buf, 0x16u);
  }
}

void __46__MTLegacyManager__loadScheduledNotifications__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_upgradeFromSpringboardDefaults
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void MTGSSendAppPreferencesChanged(CFStringRef, CFStringRef)"}];
  [currentHandler handleFailureInFunction:v1 file:@"MTLegacyManager.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (BOOL)_upgradeIfNeverAttempted
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UpgradeAttempted", @"com.apple.mobiletimer", &keyExistsAndHasValidFormat);
  _upgrade = 0;
  if (keyExistsAndHasValidFormat)
  {
    v5 = AppBooleanValue == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = CFPreferencesCopyAppValue(@"SBCountdownTimerSoundIdentifier", @"com.apple.springboard");
    if (v6)
    {
      v7 = v6;
      _upgrade = [(MTLegacyManager *)self _upgrade];
      CFRelease(v7);
    }

    else
    {
      CFPreferencesSetAppValue(@"UpgradeAttempted", *MEMORY[0x1E695E4D0], @"com.apple.mobiletimer");
      return 1;
    }
  }

  return _upgrade;
}

- (BOOL)_upgrade
{
  CFPreferencesSetAppValue(@"UpgradeAttempted", *MEMORY[0x1E695E4D0], @"com.apple.mobiletimer");
  _upgradeAlarms = [(MTLegacyManager *)self _upgradeAlarms];
  return _upgradeAlarms | [(MTLegacyManager *)self _upgradeTimers];
}

- (BOOL)_upgradeAlarms
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading alarms", buf, 0xCu);
  }

  v4 = CFPreferencesCopyAppValue(@"AlarmList", @"com.apple.springboard");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = MTLogForCategory(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 count];
      *buf = 138543618;
      selfCopy5 = self;
      v36 = 2048;
      v37 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ found %ld alarms to upgrade", buf, 0x16u);
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    _copyLegacyAlarmsFromPreferences = [(MTLegacyManager *)self _copyLegacyAlarmsFromPreferences];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = objc_alloc_init(Alarm);
          v14 = [v12 objectForKey:@"hour"];
          -[Alarm setHour:](v13, "setHour:", [v14 unsignedIntValue]);

          v15 = [v12 objectForKey:@"minute"];
          -[Alarm setMinute:](v13, "setMinute:", [v15 unsignedIntValue]);

          v16 = [v12 objectForKey:@"allows snooze"];
          -[Alarm setAllowsSnooze:](v13, "setAllowsSnooze:", [v16 BOOLValue]);

          v17 = [v12 objectForKey:@"sound path"];
          [(Alarm *)v13 setSound:v17 ofType:1];

          v18 = [v12 objectForKey:@"title"];
          [(Alarm *)v13 setTitle:v18];

          v19 = [v12 objectForKey:@"setting"];
          -[Alarm setDaySetting:](v13, "setDaySetting:", [v19 unsignedIntValue]);

          alarmID = [(Alarm *)v13 alarmID];
          [(Alarm *)v13 markModified];
          v21 = [v12 objectForKey:@"active"];
          -[Alarm setForceActiveForMigration:](v13, "setForceActiveForMigration:", [v21 BOOLValue]);

          [v7 addObject:v13];
        }

        v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v9);
    }

    v22 = MTLogForCategory(3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy5 = self;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_1B1F9F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ Old alarms being upgraded: %@", buf, 0x16u);
    }

    v23 = MTLogForCategory(3);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy5 = self;
      v36 = 2112;
      v37 = _copyLegacyAlarmsFromPreferences;
      _os_log_impl(&dword_1B1F9F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ New alarms already present: %@", buf, 0x16u);
    }

    [(NSArray *)_copyLegacyAlarmsFromPreferences addObjectsFromArray:v7];
    [(NSArray *)_copyLegacyAlarmsFromPreferences sortUsingSelector:sel_compareTime_];
    alarms = self->_alarms;
    self->_alarms = _copyLegacyAlarmsFromPreferences;

    v25 = 1;
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ No alarms found to upgrade", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)_upgradeTimers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ upgrading timer", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"SBCountdownTimerSoundIdentifier", @"SBCountdownTimerTimeIdentifier", 0}];
  v5 = CFPreferencesCopyMultiple(v4, @"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v6 = [(__CFDictionary *)v5 objectForKey:@"SBCountdownTimerSoundIdentifier"];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DA8F0]);
    v6 = [v7 defaultToneIdentifierForAlertType:14];
  }

  if ([v6 length])
  {
    CFPreferencesSetAppValue(@"timerSleepiPod", *MEMORY[0x1E695E4C0], @"com.apple.mobiletimer");
    CFPreferencesSetAppValue(@"timerSound", v6, @"com.apple.mobiletimer");
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v15 = 2112;
      v16 = v6;
      v9 = "%{public}@ setting current sound: %@";
      v10 = v8;
      v11 = 22;
LABEL_10:
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"timerSleepiPod", *MEMORY[0x1E695E4D0], @"com.apple.mobiletimer");
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      v9 = "%{public}@ setting current sound: Stop Playing";
      v10 = v8;
      v11 = 12;
      goto LABEL_10;
    }
  }

  return 1;
}

- (BOOL)_discardOldAlarms
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"AlarmList", @"com.apple.springboard");
  if (v3)
  {
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing AlarmList", &v6, 0xCu);
    }

    CFPreferencesSetAppValue(@"AlarmList", 0, @"com.apple.springboard");
  }

  return v3 != 0;
}

- (BOOL)_discardOldTimers
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"SBCountdownTimerSoundIdentifier", @"SBCountdownTimerTimeIdentifier", 0}];
  v4 = CFPreferencesCopyMultiple(v3, @"com.apple.springboard", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v5 = [(__CFDictionary *)v4 objectForKey:@"SBCountdownTimerSoundIdentifier"];
  if (v5)
  {
  }

  else
  {
    v6 = [(__CFDictionary *)v4 objectForKey:@"SBCountdownTimerTimeIdentifier"];

    if (!v6)
    {
      v11 = 0;
      goto LABEL_13;
    }
  }

  v7 = [(__CFDictionary *)v4 objectForKey:@"SBCountdownTimerSoundIdentifier"];

  if (v7)
  {
    CFPreferencesSetAppValue(@"SBCountdownTimerSoundIdentifier", 0, @"com.apple.springboard");
    v8 = MTLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing SBCountdownTimerSoundIdentifier", buf, 0xCu);
    }
  }

  v9 = [(__CFDictionary *)v4 objectForKey:@"SBCountdownTimerTimeIdentifier"];

  if (v9)
  {
    CFPreferencesSetAppValue(@"SBCountdownTimerTimeIdentifier", 0, @"com.apple.springboard");
    v10 = MTLogForCategory(4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing SBCountdownTimerTimeIdentifier", buf, 0xCu);
    }
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (id)_copyLegacyAlarmsFromPreferences
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"Alarms", @"com.apple.mobiletimer");
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Reading alarms from preferences: %@", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138543618;
    v15 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([Alarm verifySettings:v12, v15, v16])
        {
          v13 = [[Alarm alloc] initWithSettings:v12];
          [v4 addObject:v13];
        }

        else
        {
          v13 = MTLogForCategory(3);
          if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            selfCopy2 = self;
            v23 = 2112;
            v24 = v12;
            _os_log_impl(&dword_1B1F9F000, &v13->super, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid alarm found in preferences :: %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)_copyLegacySleepAlarmFromPreferences
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"SleepAlarm", @"com.apple.mobiletimer");
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Reading sleep alarm from preferences: %@", &v7, 0x16u);
  }

  if ([Alarm verifySettings:v3])
  {
    v5 = [[Alarm alloc] initWithSettings:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_loadAlarms
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ loading alarms", &v8, 0xCu);
  }

  if (!self->_alarms)
  {
    _copyLegacyAlarmsFromPreferences = [(MTLegacyManager *)self _copyLegacyAlarmsFromPreferences];
    alarms = self->_alarms;
    self->_alarms = _copyLegacyAlarmsFromPreferences;
  }

  _copyLegacySleepAlarmFromPreferences = [(MTLegacyManager *)self _copyLegacySleepAlarmFromPreferences];
  sleepAlarm = self->_sleepAlarm;
  self->_sleepAlarm = _copyLegacySleepAlarmFromPreferences;
}

- (void)_reconcileAlarmsAndNotifications
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reconiling alarms with notifications", buf, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](self->_alarms, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_alarms;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        alarmID = [v10 alarmID];
        [v4 setObject:v10 forKey:alarmID];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v7);
  }

  sleepAlarm = self->_sleepAlarm;
  if (sleepAlarm)
  {
    alarmID2 = [self->_sleepAlarm alarmID];
    [v4 setObject:sleepAlarm forKey:alarmID2];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy2 = self;
  v15 = self->_scheduledNotifications;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v30;
    *&v17 = 138543618;
    v28 = v17;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v15);
        }

        content = [*(*(&v29 + 1) + 8 * j) content];
        userInfo = [content userInfo];
        v23 = [userInfo objectForKey:@"alarmId"];

        if ([v23 length])
        {
          v24 = [v4 objectForKey:v23];
          v25 = v24;
          if (v24)
          {
            [v24 setForceActiveForMigration:1];
            v26 = MTLogForCategory(3);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              selfCopy = selfCopy2;
              v39 = 2114;
              v40 = v23;
              _os_log_impl(&dword_1B1F9F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ found scheduled notification matching alarm %{public}@.  Forcing active for migration.", buf, 0x16u);
            }
          }
        }
      }

      v18 = [(NSArray *)v15 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v18);
  }

  v27 = MTLogForCategory(3);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = selfCopy2;
    _os_log_impl(&dword_1B1F9F000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ finished reconiling alarms with notifications", buf, 0xCu);
  }
}

- (void)_loadTimerDefaults
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 5.8381e-34;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ loading timer defaults", buf, 0xCu);
  }

  v4 = CFPreferencesCopyAppValue(@"TIMER_INTERVAL", @"com.apple.mobiletimer");
  *buf = 0.0;
  if (v4)
  {
    v5 = v4;
    if (CFNumberGetValue(v4, kCFNumberFloatType, buf))
    {
      v6 = floorf(*buf);
      if (v6 < 1.0)
      {
        v6 = 1.0;
      }

      v7 = fminf(v6, 86399.0);
    }

    else
    {
      v7 = 900.0;
    }

    *buf = v7;
    CFRelease(v5);
    v8 = *buf;
  }

  else
  {
    *buf = 900.0;
    v8 = 900.0;
  }

  self->_defaultDuration = v8;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"timerSleepiPod", @"com.apple.mobiletimer", &keyExistsAndHasValidFormat) && keyExistsAndHasValidFormat)
  {
    v9 = *MEMORY[0x1E69DA928];
  }

  else
  {
    v9 = CFPreferencesCopyAppValue(@"timerSound", @"com.apple.mobiletimer");
    if (!v9)
    {
      mEMORY[0x1E69DA8F0] = [MEMORY[0x1E69DA8F0] sharedToneManager];
      v9 = [mEMORY[0x1E69DA8F0] defaultToneIdentifierForAlertType:14];
    }
  }

  defaultSound = self->_defaultSound;
  self->_defaultSound = v9;
}

- (void)purgeLegacyData
{
  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MTLegacyManager_purgeLegacyData__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_sync(serializer, block);
}

void *__34__MTLegacyManager_purgeLegacyData__block_invoke(void *result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(result[4] + 9) & 1) == 0)
  {
    v1 = result;
    v2 = MTLogForCategory(3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ purging legacy data", &v4, 0xCu);
    }

    [v1[4] _purgeAlarmsAndTimers];
    result = [v1[4] _cancelNotifications];
    *(v1[4] + 9) = 1;
  }

  return result;
}

- (void)_purgeAlarmsAndTimers
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ deleting defaults", &v4, 0xCu);
  }

  CFPreferencesSetAppValue(@"Alarms", 0, @"com.apple.mobiletimer");
  CFPreferencesSetAppValue(@"AlarmsLastModified", 0, @"com.apple.mobiletimer");
  CFPreferencesSetAppValue(@"SleepAlarm", 0, @"com.apple.mobiletimer");
  CFPreferencesSetAppValue(@"timerSound", 0, @"com.apple.mobiletimer");
  CFPreferencesSetAppValue(@"timerSleepiPod", 0, @"com.apple.mobiletimer");
  CFPreferencesSetAppValue(@"TIMER_INTERVAL", 0, @"com.apple.mobiletimer");
  CFPreferencesAppSynchronize(@"com.apple.mobiletimer");
}

- (void)cancelNotifications
{
  serializer = self->_serializer;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__MTLegacyManager_cancelNotifications__block_invoke;
  block[3] = &unk_1E7B0C9D8;
  block[4] = self;
  dispatch_sync(serializer, block);
}

- (void)_cancelNotifications
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelling notifications", &v4, 0xCu);
  }

  [(UNUserNotificationCenter *)self->_notificationCenter removeAllPendingNotificationRequests];
}

- (void)clearInvalidPendingNotifications
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ clearInvalidPendingNotifications", buf, 0xCu);
  }

  notificationCenter = self->_notificationCenter;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MTLegacyManager_clearInvalidPendingNotifications__block_invoke;
  v5[3] = &unk_1E7B0ECA0;
  v5[4] = self;
  [(UNUserNotificationCenter *)notificationCenter getPendingNotificationRequestsWithCompletionHandler:v5];
}

void __51__MTLegacyManager_clearInvalidPendingNotifications__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MTLegacyManager_clearInvalidPendingNotifications__block_invoke_2;
    v8[3] = &unk_1E7B0F838;
    v8[4] = *(a1 + 32);
    [v3 na_each:v8];
    v4 = MTLogForCategory(3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing all pending notifications", buf, 0xCu);
    }

    [*(*(a1 + 32) + 56) removeAllPendingNotificationRequests];
  }

  else
  {
    v6 = MTLogForCategory(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ no pending notifications to remove", buf, 0xCu);
    }
  }
}

void __51__MTLegacyManager_clearInvalidPendingNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 mtStringByRemovingNotificationDate];

  v6 = [v3 content];
  v7 = [v6 categoryIdentifier];

  v8 = [v3 content];

  v9 = [v8 userInfo];

  v10 = MTLogForCategory(3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138544130;
    v13 = v11;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ retrieved pending notification with alarm id: %{public}@, category id: %{public}@, user info: %{public}@", &v12, 0x2Au);
  }
}

+ (id)alarmFromOldAlarm:(id)alarm
{
  alarmCopy = alarm;
  v5 = -[MTAlarm initWithHour:minute:]([MTMutableAlarm alloc], "initWithHour:minute:", [alarmCopy hour], objc_msgSend(alarmCopy, "minute"));
  -[MTAlarm setBedtimeHour:](v5, "setBedtimeHour:", [alarmCopy bedtimeHour]);
  -[MTAlarm setBedtimeMinute:](v5, "setBedtimeMinute:", [alarmCopy bedtimeMinute]);
  bedtimeReminderMinutes = [alarmCopy bedtimeReminderMinutes];
  -[MTAlarm setBedtimeReminderMinutes:](v5, "setBedtimeReminderMinutes:", [bedtimeReminderMinutes integerValue]);

  -[MTAlarm setRepeatSchedule:](v5, "setRepeatSchedule:", [self repeatScheduleFromOldAlarm:alarmCopy]);
  v7 = [self soundFromOldAlarm:alarmCopy];
  [(MTAlarm *)v5 setSound:v7];

  -[MTAlarm setEnabled:](v5, "setEnabled:", [alarmCopy isActive]);
  -[MTAlarm setSleepAlarm:](v5, "setSleepAlarm:", [alarmCopy isSleepAlarm]);
  -[MTAlarm setAllowsSnooze:](v5, "setAllowsSnooze:", [alarmCopy allowsSnooze]);
  title = [alarmCopy title];

  [(MTAlarm *)v5 setTitle:title];

  return v5;
}

+ (unint64_t)repeatScheduleFromOldAlarm:(id)alarm
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  repeatDays = [alarm repeatDays];
  v4 = [repeatDays countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(repeatDays);
        }

        v6 |= MTAlarmRepeatScheduleFromDay([*(*(&v10 + 1) + 8 * i) integerValue]);
      }

      v5 = [repeatDays countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)soundFromOldAlarm:(id)alarm
{
  alarmCopy = alarm;
  sound = [alarmCopy sound];
  v6 = [self _numberFromString:sound];

  soundType = [alarmCopy soundType];
  v8 = 0;
  if (soundType > 0)
  {
    if (soundType == 1)
    {
      sound2 = [alarmCopy sound];
      vibrationID = [alarmCopy vibrationID];
      soundVolume = [alarmCopy soundVolume];
      v8 = [MTSound toneSoundWithIdentifier:sound2 vibrationIdentifer:vibrationID volume:soundVolume];
    }

    else
    {
      if (soundType != 2)
      {
        goto LABEL_13;
      }

      if (!v6)
      {
        goto LABEL_12;
      }

      sound2 = [alarmCopy vibrationID];
      vibrationID = [alarmCopy soundVolume];
      v8 = [MTSound songSoundWithIdentifier:v6 vibrationIdentifier:sound2 volume:vibrationID];
    }

    goto LABEL_13;
  }

  if (soundType == -1)
  {
LABEL_12:
    v8 = [MTSound defaultSoundForCategory:0];
    goto LABEL_13;
  }

  if (!soundType)
  {
    v9 = *MEMORY[0x1E69DA928];
    vibrationID2 = [alarmCopy vibrationID];
    soundVolume2 = [alarmCopy soundVolume];
    v8 = [MTSound toneSoundWithIdentifier:v9 vibrationIdentifer:vibrationID2 volume:soundVolume2];
  }

LABEL_13:

  return v8;
}

+ (id)_numberFromString:(id)string
{
  v3 = _numberFromString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    +[MTLegacyManager _numberFromString:];
  }

  v5 = [_numberFromString__f numberFromString:stringCopy];

  return v5;
}

uint64_t __37__MTLegacyManager__numberFromString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _numberFromString__f;
  _numberFromString__f = v0;

  v2 = _numberFromString__f;

  return [v2 setNumberStyle:1];
}

@end