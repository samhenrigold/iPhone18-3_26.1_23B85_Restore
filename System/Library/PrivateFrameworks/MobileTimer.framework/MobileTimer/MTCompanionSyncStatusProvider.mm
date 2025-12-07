@interface MTCompanionSyncStatusProvider
+ (BOOL)deviceSupportsSyncing;
- (MTCompanionSyncStatusProvider)init;
- (MTSyncStatusProviderDelegate)syncStatusProviderDelegate;
- (unint64_t)syncStatus;
- (void)activePairedDeviceDidChange;
@end

@implementation MTCompanionSyncStatusProvider

- (MTCompanionSyncStatusProvider)init
{
  v5.receiver = self;
  v5.super_class = MTCompanionSyncStatusProvider;
  v2 = [(MTCompanionSyncStatusProvider *)&v5 init];
  if (v2)
  {
    v3 = +[MTPairedDeviceListener sharedListener];
    [v3 registerObserver:v2];
  }

  return v2;
}

+ (BOOL)deviceSupportsSyncing
{
  if (deviceSupportsSyncing_onceToken != -1)
  {
    +[MTCompanionSyncStatusProvider deviceSupportsSyncing];
  }

  return deviceSupportsSyncing_deviceSupportsSyncing;
}

uint64_t __54__MTCompanionSyncStatusProvider_deviceSupportsSyncing__block_invoke()
{
  result = MGGetBoolAnswer();
  deviceSupportsSyncing_deviceSupportsSyncing = result;
  return result;
}

- (unint64_t)syncStatus
{
  v10 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() deviceSupportsSyncing])
  {
    v3 = +[MTPairedDeviceListener sharedListener];
    hasActivePairedDeviceSupportingSyncing = [v3 hasActivePairedDeviceSupportingSyncing];

    if (hasActivePairedDeviceSupportingSyncing)
    {
      return 1;
    }

    v6 = MTLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v7 = "%{public}@ no active paired device supporting syncing.  Syncing is disabled";
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MTLogForCategory(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      selfCopy2 = self;
      v7 = "%{public}@ this device doesn't support syncing.";
LABEL_8:
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, v7, &v8, 0xCu);
    }
  }

  return 3;
}

- (void)activePairedDeviceDidChange
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ active paired device changed.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_syncStatusProviderDelegate);
  [WeakRetained syncStatusProvider:self didChangeSyncStatus:{-[MTCompanionSyncStatusProvider syncStatus](self, "syncStatus")}];
}

- (MTSyncStatusProviderDelegate)syncStatusProviderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_syncStatusProviderDelegate);

  return WeakRetained;
}

@end