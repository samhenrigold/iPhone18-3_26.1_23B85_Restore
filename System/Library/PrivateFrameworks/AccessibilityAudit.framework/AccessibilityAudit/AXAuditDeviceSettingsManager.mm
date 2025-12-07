@interface AXAuditDeviceSettingsManager
- (AXAuditDeviceSettingsManager)init;
- (AXAuditDeviceSettingsManagerDelegate)delegate;
- (id)settingForIdentifier:(id)identifier;
- (void)cacheDeviceSettingsValues;
- (void)dealloc;
- (void)resetToDefaultAccessibilitySettings;
- (void)restoreDeviceSettingsValues;
- (void)updateCurrentValueForAllSettingsAndPostNotificationIfChanged:(BOOL)changed;
- (void)updateSetting:(id)setting withNumberValue:(id)value;
@end

@implementation AXAuditDeviceSettingsManager

- (AXAuditDeviceSettingsManager)init
{
  v5.receiver = self;
  v5.super_class = AXAuditDeviceSettingsManager;
  v2 = [(AXAuditDeviceSettingsManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAuditDeviceSettingsManager *)v2 updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
  }

  return v3;
}

- (void)dealloc
{
  [(AXAuditDeviceSettingsManager *)self stopObservingChanges];
  v3.receiver = self;
  v3.super_class = AXAuditDeviceSettingsManager;
  [(AXAuditDeviceSettingsManager *)&v3 dealloc];
}

- (void)cacheDeviceSettingsValues
{
  v17 = *MEMORY[0x277D85DE8];
  settingsToCache = [(AXAuditDeviceSettingsManager *)self settingsToCache];
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = settingsToCache;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) copy];
        [(AXAuditDeviceSettingsManager *)self updateCurrentValueForSetting:v10 postNotificationIfChanged:0];
        v11 = [v10 copy];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(AXAuditDeviceSettingsManager *)self set_cachedSettings:v4];
}

- (void)restoreDeviceSettingsValues
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(AXAuditDeviceSettingsManager *)self deviceSettingsCanBeRestored])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    _cachedSettings = [(AXAuditDeviceSettingsManager *)self _cachedSettings];
    v4 = [_cachedSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(_cachedSettings);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          currentValueNumber = [v8 currentValueNumber];
          [(AXAuditDeviceSettingsManager *)self updateSetting:v8 withNumberValue:currentValueNumber];
        }

        v5 = [_cachedSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

- (void)updateCurrentValueForAllSettingsAndPostNotificationIfChanged:(BOOL)changed
{
  changedCopy = changed;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  settings = [(AXAuditDeviceSettingsManager *)self settings];
  v6 = [settings countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(settings);
        }

        [(AXAuditDeviceSettingsManager *)self updateCurrentValueForSetting:*(*(&v10 + 1) + 8 * v9++) postNotificationIfChanged:changedCopy];
      }

      while (v7 != v9);
      v7 = [settings countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)settingForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  settings = [(AXAuditDeviceSettingsManager *)self settings];
  v6 = [settings countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(settings);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [settings countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)resetToDefaultAccessibilitySettings
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  defaultSettings = [(AXAuditDeviceSettingsManager *)self defaultSettings];
  v4 = [defaultSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(defaultSettings);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        currentValueNumber = [v8 currentValueNumber];
        [(AXAuditDeviceSettingsManager *)self updateSetting:v8 withNumberValue:currentValueNumber];
      }

      v5 = [defaultSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(AXAuditDeviceSettingsManager *)self cacheDeviceSettingsValues];
  [(AXAuditDeviceSettingsManager *)self updateCurrentValueForAllSettingsAndPostNotificationIfChanged:1];
}

- (void)updateSetting:(id)setting withNumberValue:(id)value
{
  if (![(AXAuditDeviceSettingsManager *)self deviceSettingsCanBeRestored:setting])
  {
    [(AXAuditDeviceSettingsManager *)self cacheDeviceSettingsValues];
  }

  [(AXAuditDeviceSettingsManager *)self setDeviceSettingsCanBeRestored:1];
}

- (AXAuditDeviceSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end