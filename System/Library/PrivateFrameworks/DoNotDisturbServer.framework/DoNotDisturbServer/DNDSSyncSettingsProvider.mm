@interface DNDSSyncSettingsProvider
- (BOOL)_isCloudSyncPreferenceEnabled;
- (BOOL)_lock_isCloudSyncPreferenceEnabled;
- (BOOL)_lock_isPairSyncPreferenceEnabled;
- (DNDSSyncSettingsProvider)init;
- (DNDSSyncSettingsProviderDelegate)delegate;
- (id)_lock_accessor;
- (void)_beginMonitoringForChanges;
- (void)_endMonitoringForChanges;
- (void)_lock_setCompanionCloudSyncPreferenceEnabled:(BOOL)enabled;
- (void)_lock_updateCompanionCloudSyncPreference;
- (void)_lock_updatePairSyncPreferences;
- (void)_lock_updateSyncSettingsIfNewSettingsDiffer:(id)differ;
- (void)_updateCloudSyncPreferences;
- (void)_updatePairSyncPreferences;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pairedDeviceDidChange;
- (void)setPairSyncEnabled:(BOOL)enabled;
@end

@implementation DNDSSyncSettingsProvider

- (DNDSSyncSettingsProvider)init
{
  v7.receiver = self;
  v7.super_class = DNDSSyncSettingsProvider;
  v2 = [(DNDSSyncSettingsProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[DNDSSyncSettings alloc] initWithPairSyncEnabled:1 cloudSyncEnabled:[(DNDSSyncSettingsProvider *)v2 _isCloudSyncPreferenceEnabled]];
    syncSettings = v3->_syncSettings;
    v3->_syncSettings = v4;

    [(DNDSSyncSettingsProvider *)v3 _beginMonitoringForChanges];
    [(DNDSSyncSettingsProvider *)v3 _updatePairSyncPreferences];
    [(DNDSSyncSettingsProvider *)v3 _updateCloudSyncPreferences];
  }

  return v3;
}

- (void)dealloc
{
  [(DNDSSyncSettingsProvider *)self _endMonitoringForChanges];
  v3.receiver = self;
  v3.super_class = DNDSSyncSettingsProvider;
  [(DNDSSyncSettingsProvider *)&v3 dealloc];
}

- (void)setPairSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_lock(&self->_lock);
  v5 = [[DNDSSyncSettings alloc] initWithPairSyncEnabled:enabledCopy cloudSyncEnabled:[(DNDSSyncSettingsProvider *)self _lock_isCloudSyncPreferenceEnabled]];
  _lock_accessor = [(DNDSSyncSettingsProvider *)self _lock_accessor];
  [_lock_accessor setBool:enabledCopy forKey:@"mirrorDNDState"];
  synchronize = [_lock_accessor synchronize];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEB98] setWithObject:@"mirrorDNDState"];
  [v8 synchronizeNanoDomain:@"com.apple.nano" keys:v9];

  v15 = 0;
  v10 = [_lock_accessor BOOLForKey:@"mirrorDNDState" keyExistsAndHasValidFormat:&v15];
  if (v15)
  {
    v11 = v10;
    v12 = DNDSLogSettings;
    if (v10 == enabledCopy)
    {
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Set Focus mirroring preference.", v14, 2u);
      }
    }

    else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
    {
      [(DNDSSyncSettingsProvider *)v12 setPairSyncEnabled:v11, enabledCopy];
    }
  }

  else
  {
    v13 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
    {
      [(DNDSSyncSettingsProvider *)v13 setPairSyncEnabled:enabledCopy];
    }
  }

  [(DNDSSyncSettingsProvider *)self _lock_updateSyncSettingsIfNewSettingsDiffer:v5];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)pairedDeviceDidChange
{
  os_unfair_lock_lock(&self->_lock);
  accessor = self->_accessor;
  self->_accessor = 0;

  [(DNDSSyncSettingsProvider *)self _lock_updatePairSyncPreferences];
  [(DNDSSyncSettingsProvider *)self _lock_updateCompanionCloudSyncPreference];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setCompanionCloudSyncPreferenceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  os_unfair_lock_assert_owner(&self->_lock);
  currentDevice = [MEMORY[0x277D058F8] currentDevice];
  deviceClass = [currentDevice deviceClass];

  if (deviceClass == 1)
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
    isPaired = [mEMORY[0x277D2BCF8] isPaired];

    if (isPaired)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults setBool:!enabledCopy forKey:@"dndCompanionCloudSyncDisabled"];

      v10 = objc_opt_new();
      v9 = [MEMORY[0x277CBEB98] setWithObject:@"dndCompanionCloudSyncDisabled"];
      [v10 synchronizeUserDefaultsDomain:@"com.apple.donotdisturbd" keys:v9];
    }
  }
}

- (void)_lock_updateCompanionCloudSyncPreference
{
  os_unfair_lock_assert_owner(&self->_lock);
  syncSettings = [(DNDSSyncSettingsProvider *)self syncSettings];
  -[DNDSSyncSettingsProvider _lock_setCompanionCloudSyncPreferenceEnabled:](self, "_lock_setCompanionCloudSyncPreferenceEnabled:", [syncSettings isCloudSyncEnabled]);
}

- (BOOL)_isCloudSyncPreferenceEnabled
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isCloudSyncPreferenceEnabled = [(DNDSSyncSettingsProvider *)self _lock_isCloudSyncPreferenceEnabled];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isCloudSyncPreferenceEnabled;
}

- (BOOL)_lock_isCloudSyncPreferenceEnabled
{
  os_unfair_lock_assert_owner(&self->_lock);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"disableCloudSync"];

  if (v3)
  {
    v4 = standardUserDefaults;
    v5 = @"disableCloudSync";
  }

  else
  {
    v6 = [standardUserDefaults objectForKey:@"disableSync"];

    if (v6)
    {
      v5 = @"disableSync";
    }

    else
    {
      v5 = @"disableModeConfigurationsSync";
    }

    v4 = standardUserDefaults;
  }

  v7 = [v4 BOOLForKey:v5];

  return v7 ^ 1;
}

- (id)_lock_accessor
{
  os_unfair_lock_assert_owner(&self->_lock);
  accessor = self->_accessor;
  if (!accessor)
  {
    currentDevice = [MEMORY[0x277D058F8] currentDevice];
    if ([currentDevice deviceClass] == 1 || objc_msgSend(currentDevice, "deviceClass") == 5)
    {
      v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nano"];
      v6 = self->_accessor;
      self->_accessor = v5;

      if (!self->_accessor)
      {
        mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
        isPaired = [mEMORY[0x277D2BCF8] isPaired];

        if (isPaired)
        {
          v9 = DNDSLogSettings;
          if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
          {
            [(DNDSSyncSettingsProvider *)v9 _lock_accessor];
          }
        }
      }
    }

    accessor = self->_accessor;
  }

  return accessor;
}

- (BOOL)_lock_isPairSyncPreferenceEnabled
{
  _lock_accessor = [(DNDSSyncSettingsProvider *)self _lock_accessor];
  synchronize = [_lock_accessor synchronize];
  v7 = 0;
  v4 = [_lock_accessor BOOLForKey:@"mirrorDNDState" keyExistsAndHasValidFormat:&v7];
  v5 = v4 | ~v7;

  return v5 & 1;
}

- (void)_beginMonitoringForChanges
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults addObserver:self forKeyPath:@"disableCloudSync" options:1 context:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, DNDMirrorStateChanged, @"MirrorDNDStateChangedNotification", 0, 0);
}

- (void)_endMonitoringForChanges
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MirrorDNDStateChangedNotification", 0);
}

- (void)_updatePairSyncPreferences
{
  os_unfair_lock_lock(&self->_lock);
  [(DNDSSyncSettingsProvider *)self _lock_updatePairSyncPreferences];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updatePairSyncPreferences
{
  os_unfair_lock_assert_owner(&self->_lock);
  _lock_isPairSyncPreferenceEnabled = [(DNDSSyncSettingsProvider *)self _lock_isPairSyncPreferenceEnabled];
  syncSettings = [(DNDSSyncSettingsProvider *)self syncSettings];
  v5 = [syncSettings mutableCopy];

  [v5 setPairSyncEnabled:_lock_isPairSyncPreferenceEnabled];
  [(DNDSSyncSettingsProvider *)self _lock_updateSyncSettingsIfNewSettingsDiffer:v5];
}

- (void)_updateCloudSyncPreferences
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isCloudSyncPreferenceEnabled = [(DNDSSyncSettingsProvider *)self _lock_isCloudSyncPreferenceEnabled];
  syncSettings = [(DNDSSyncSettingsProvider *)self syncSettings];
  isCloudSyncEnabled = [syncSettings isCloudSyncEnabled];

  if (_lock_isCloudSyncPreferenceEnabled != isCloudSyncEnabled)
  {
    [(DNDSSyncSettingsProvider *)self _lock_setCompanionCloudSyncPreferenceEnabled:_lock_isCloudSyncPreferenceEnabled];
  }

  syncSettings2 = [(DNDSSyncSettingsProvider *)self syncSettings];
  v7 = [syncSettings2 mutableCopy];

  [v7 setCloudSyncEnabled:_lock_isCloudSyncPreferenceEnabled];
  [(DNDSSyncSettingsProvider *)self _lock_updateSyncSettingsIfNewSettingsDiffer:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_updateSyncSettingsIfNewSettingsDiffer:(id)differ
{
  v13 = *MEMORY[0x277D85DE8];
  differCopy = differ;
  os_unfair_lock_assert_owner(&self->_lock);
  syncSettings = [(DNDSSyncSettingsProvider *)self syncSettings];
  if ([syncSettings isEqual:differCopy])
  {
    if (self->_initialized)
    {
      goto LABEL_11;
    }

LABEL_7:
    self->_initialized = 1;
    v10 = DNDSLogSettings;
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 138412290;
      *&v12[4] = differCopy;
      v7 = "Initialized sync settings to %@";
      v8 = v10;
      v9 = 12;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (!self->_initialized)
  {
    goto LABEL_7;
  }

  v6 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138412546;
    *&v12[4] = differCopy;
    *&v12[12] = 2112;
    *&v12[14] = syncSettings;
    v7 = "New sync settings: %@. Old: %@";
    v8 = v6;
    v9 = 22;
LABEL_9:
    _os_log_impl(&dword_24912E000, v8, OS_LOG_TYPE_DEFAULT, v7, v12, v9);
  }

LABEL_10:
  [(DNDSSyncSettingsProvider *)self setSyncSettings:differCopy, *v12, *&v12[8], v13];
  delegate = [(DNDSSyncSettingsProvider *)self delegate];
  [delegate syncSettingsProvider:self didReceiveUpdatedSyncSettings:differCopy];

LABEL_11:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"disableCloudSync", object, change, context}])
  {

    [(DNDSSyncSettingsProvider *)self _updateCloudSyncPreferences];
  }
}

- (DNDSSyncSettingsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setPairSyncEnabled:(void *)a1 .cold.1(void *a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithBool:a2 & 1];
  v6 = 138412290;
  v7 = v5;
  _os_log_fault_impl(&dword_24912E000, v4, OS_LOG_TYPE_FAULT, "Failed to set Focus mirroring preference. Key does not exist or is invalid format. Expected %@.", &v6, 0xCu);
}

- (void)setPairSyncEnabled:(char)a3 .cold.2(void *a1, char a2, char a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithBool:a2 & 1];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a3 & 1];
  v9 = 138412546;
  v10 = v7;
  v11 = 2112;
  v12 = v8;
  _os_log_fault_impl(&dword_24912E000, v6, OS_LOG_TYPE_FAULT, "Failed to set Focus mirroring preference. Accessor returned %@. Expected %@.", &v9, 0x16u);
}

@end