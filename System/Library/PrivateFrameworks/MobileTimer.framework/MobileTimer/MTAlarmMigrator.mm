@interface MTAlarmMigrator
- (void)cleanUpOldNotifications;
- (void)clearInvalidPendingNotifications;
- (void)migrateFromOldStorage;
- (void)removeFromOldStorage;
@end

@implementation MTAlarmMigrator

- (void)migrateFromOldStorage
{
  v12 = *MEMORY[0x1E69E9840];
  alarms = [self alarms];
  sleepAlarm = [self sleepAlarm];
  v6 = 138543874;
  selfCopy = self;
  v8 = 2114;
  v9 = alarms;
  v10 = 2114;
  v11 = sleepAlarm;
  _os_log_debug_impl(&dword_1B1F9F000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ migrated to alarms: %{public}@ and sleep alarm: %{public}@", &v6, 0x20u);
}

void __40__MTAlarmMigrator_migrateFromOldStorage__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MTLegacyManager alarmFromOldAlarm:a2];
  v4 = MTLogForCategory(3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 alarmID];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1026;
    v13 = [v3 isEnabled];
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ migrated alarm %{public}@ (enabled: %{public}d)", &v8, 0x1Cu);
  }

  v7 = [*(a1 + 32) alarms];
  [v7 addObject:v3];
}

- (void)removeFromOldStorage
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTIsHorseman(self, a2);
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping migration removal, as this device doesn't support the old storage", &v6, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing old alarms and notifications from storage", &v6, 0xCu);
    }

    v4 = +[MTLegacyManager sharedManager];
    [v4 purgeLegacyData];
  }
}

- (void)cleanUpOldNotifications
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MTIsHorseman(self, a2);
  v4 = MTLogForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ notification cleanup, as this device doesn't support the old storage", &v6, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v6 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ cleaning up old notifications", &v6, 0xCu);
    }

    v4 = +[MTLegacyManager sharedManager];
    [v4 cancelNotifications];
  }
}

- (void)clearInvalidPendingNotifications
{
  v2 = +[MTLegacyManager sharedManager];
  [v2 clearInvalidPendingNotifications];
}

@end