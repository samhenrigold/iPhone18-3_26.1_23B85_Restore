@interface ADASManager
- (ADASManager)init;
- (BOOL)_isAlertSupported;
- (BOOL)_isDeviceMandatoryForHAENotification:(BOOL)notification;
- (BOOL)nanoSettingsAvailable;
- (BOOL)shouldSufaceHAENotificationMigrationAlert;
- (id)_getCurrentVolumeLimit;
- (id)_getDefaultsFor:(id)for;
- (id)_getDefaultsKey:(id)key;
- (id)_getDeviceSpecificDefaultsFor:(id)for;
- (id)_getSpecialKeys:(id)keys nano:(BOOL)nano;
- (id)_migrateVolumeLimitThreshold:(BOOL)threshold;
- (id)_setChainedKeys:(id)keys val:(id)val nano:(BOOL)nano modifiedKeys:(id)modifiedKeys;
- (id)_setDefaultValueIfNeeded:(id)needed nano:(BOOL)nano sync:(BOOL)sync;
- (id)_setDefaultsFor:(id)for value:(id)value;
- (id)_setDeviceSpecificDefaultsFor:(id)for value:(id)value;
- (id)getNanoPreferenceFor:(id)for;
- (id)getNanoPreferencesFor:(id)for;
- (id)getPreferenceFor:(id)for;
- (id)getPreferencesFor:(id)for;
- (id)setNanoPreferenceFor:(id)for value:(id)value notify:(BOOL)notify;
- (id)setPreferenceFor:(id)for value:(id)value notify:(BOOL)notify;
- (void)_clearCurrentVolumeLimit;
- (void)_donateSignalToTipsKit:(BOOL)kit;
- (void)_getCurrentVolumeLimit;
- (void)_notify:(id)_notify;
- (void)_syncNanoDeviceSpecificForRead:(id)read;
- (void)_syncNanoForRead:(id)read;
- (void)_syncNanoForWrite:(id)write;
- (void)didSurfaceMigrationAlert;
- (void)migrateKeyEnableHAEHKMeasurement:(BOOL)measurement;
- (void)removeNanoPreferenceFor:(id)for notify:(BOOL)notify;
- (void)removePreferenceFor:(id)for notify:(BOOL)notify;
@end

@implementation ADASManager

- (ADASManager)init
{
  v6.receiver = self;
  v6.super_class = ADASManager;
  v2 = [(ADASManager *)&v6 init];
  if (v2)
  {
    v3 = +[ADASPreferenceStore sharedInstance];
    prefStore = v2->_prefStore;
    v2->_prefStore = v3;
  }

  return v2;
}

- (id)setPreferenceFor:(id)for value:(id)value notify:(BOOL)notify
{
  notifyCopy = notify;
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  valueCopy = value;
  v10 = ADAFLog(valueCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412546;
    v25 = forCopy;
    v26 = 2112;
    v27 = valueCopy;
    _os_log_impl(&dword_241579000, v10, OS_LOG_TYPE_DEFAULT, "set preference for %@ to %@", &v24, 0x16u);
  }

  v11 = [(ADASManager *)self _getDefaultsKey:forCopy];
  v12 = v11;
  if (!v11)
  {
    v16 = "yek!";
LABEL_11:
    v14 = [(ADASManager *)self _error:*v16];
    goto LABEL_22;
  }

  if (!valueCopy)
  {
    v17 = ADAFLog(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setPreferenceFor:value:notify:];
    }

    v16 = "lav!";
    goto LABEL_11;
  }

  v13 = [(ADASManager *)self _setDefaultsFor:v11 value:valueCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v18 = [(ADASManager *)self _setChainedKeys:forCopy val:valueCopy nano:0 modifiedKeys:0];
    v15 = v18;
    if (v18)
    {
      v19 = ADAFLog(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ADASManager setPreferenceFor:value:notify:];
      }
    }

    [(ADASManager *)self _sync];
    if (notifyCopy)
    {
      specialDarwinKeys = [(ADASPreferenceStore *)self->_prefStore specialDarwinKeys];
      v21 = [specialDarwinKeys objectForKey:forCopy];

      if (v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = @"AppleHAESettingsChanged";
      }

      [(ADASManager *)self _notify:v22];
    }
  }

LABEL_22:

  return v14;
}

- (id)setNanoPreferenceFor:(id)for value:(id)value notify:(BOOL)notify
{
  notifyCopy = notify;
  v26 = *MEMORY[0x277D85DE8];
  forCopy = for;
  valueCopy = value;
  nanoSettingsAvailable = [(ADASManager *)self nanoSettingsAvailable];
  if ((nanoSettingsAvailable & 1) == 0)
  {
    v20 = ADAFLog(nanoSettingsAvailable);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }

    v21 = "nan!";
    goto LABEL_19;
  }

  if (!valueCopy)
  {
    v22 = ADAFLog(nanoSettingsAvailable);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setPreferenceFor:value:notify:];
    }

    v21 = "lav!";
LABEL_19:
    v19 = [(ADASManager *)self _error:*v21];
    goto LABEL_22;
  }

  v11 = [(ADASManager *)self _getDefaultsKey:forCopy];
  v12 = v11;
  if (v11)
  {
    v13 = ADAFLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_241579000, v13, OS_LOG_TYPE_DEFAULT, "setting nano preference for key: %@", buf, 0xCu);
    }

    coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    [coreAudioDomain setObject:valueCopy forKey:v12];

    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v12, 0}];
    v16 = [(ADASManager *)self _setChainedKeys:forCopy val:valueCopy nano:1 modifiedKeys:v15];
    v17 = v16;
    if (v16)
    {
      v18 = ADAFLog(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ADASManager setNanoPreferenceFor:value:notify:];
      }
    }

    [(ADASManager *)self _syncNanoForWrite:v15];
    if (notifyCopy)
    {
      [(ADASManager *)self _notify:@"NanoHAESettingsChanged"];
    }

    v19 = 0;
  }

  else
  {
    v19 = [(ADASManager *)self _error:*"yek!"];
  }

LABEL_22:

  return v19;
}

- (id)getPreferenceFor:(id)for
{
  v15 = *MEMORY[0x277D85DE8];
  forCopy = for;
  [(ADASManager *)self _sync];
  v5 = [(ADASManager *)self _getSpecialKeys:forCopy nano:0];
  v6 = v5;
  if (!v5)
  {
    v7 = [(ADASManager *)self _getDefaultsKey:forCopy];
    if (v7)
    {
      v6 = [(ADASManager *)self _getDefaultsFor:v7];
      if (!v6)
      {
        v6 = [(ADASManager *)self _setDefaultValueIfNeeded:v7 nano:0 sync:1];
      }
    }

    else
    {
      v8 = ADAFLog(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getPreferenceFor:];
      }

      v6 = 0;
    }
  }

  v9 = ADAFLog(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = forCopy;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_241579000, v9, OS_LOG_TYPE_DEFAULT, "get preference: %@ -> %@", &v11, 0x16u);
  }

  return v6;
}

- (id)getNanoPreferenceFor:(id)for
{
  v23[1] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = ADAFLog(forCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = forCopy;
    _os_log_impl(&dword_241579000, v5, OS_LOG_TYPE_DEFAULT, "get nano preference for %@", &v19, 0xCu);
  }

  nanoSettingsAvailable = [(ADASManager *)self nanoSettingsAvailable];
  if (nanoSettingsAvailable)
  {
    v7 = [(ADASManager *)self _getSpecialKeys:forCopy nano:1];
    v8 = v7;
    if (v7)
    {
      goto LABEL_19;
    }

    v9 = [(ADASManager *)self _getDefaultsKey:forCopy];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CBEB98];
      v23[0] = v9;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v13 = [v11 setWithArray:v12];
      [(ADASManager *)self _syncNanoForRead:v13];

      coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      v8 = [coreAudioDomain objectForKey:v10];

      if (!v8)
      {
        v8 = [(ADASManager *)self _setDefaultValueIfNeeded:v10 nano:1 sync:1];
        goto LABEL_18;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
LABEL_18:

LABEL_19:
        v17 = ADAFLog(v7);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412546;
          v20 = forCopy;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_241579000, v17, OS_LOG_TYPE_DEFAULT, "get nano preference: %@ -> %@", &v19, 0x16u);
        }

        goto LABEL_21;
      }

      v16 = ADAFLog(isKindOfClass);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getNanoPreferenceFor:];
      }
    }

    else
    {
      v8 = ADAFLog(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ADASManager getNanoPreferenceFor:];
      }
    }

    v8 = 0;
    goto LABEL_18;
  }

  v17 = ADAFLog(nanoSettingsAvailable);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ADASManager setNanoPreferenceFor:value:notify:];
  }

  v8 = 0;
LABEL_21:

  return v8;
}

- (void)removePreferenceFor:(id)for notify:(BOOL)notify
{
  notifyCopy = notify;
  v16 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = ADAFLog(forCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = forCopy;
    _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "remove preference for %@", &v14, 0xCu);
  }

  v8 = [(ADASManager *)self _getDefaultsKey:forCopy];
  if (!v8)
  {
    v12 = ADAFLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ADASManager removePreferenceFor:notify:];
    }

    goto LABEL_11;
  }

  v9 = [(ADASManager *)self _setDefaultsFor:v8 value:0];
  v10 = [(ADASManager *)self _setChainedKeys:forCopy val:0 nano:0 modifiedKeys:0];
  [(ADASManager *)self _sync];
  if (notifyCopy)
  {
    specialDarwinKeys = [(ADASPreferenceStore *)self->_prefStore specialDarwinKeys];
    v12 = [specialDarwinKeys objectForKey:forCopy];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"AppleHAESettingsChanged";
    }

    [(ADASManager *)self _notify:v13];
LABEL_11:
  }
}

- (void)removeNanoPreferenceFor:(id)for notify:(BOOL)notify
{
  notifyCopy = notify;
  v18 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = ADAFLog(forCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = forCopy;
    _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "remove nano preference for %@", buf, 0xCu);
  }

  nanoSettingsAvailable = [(ADASManager *)self nanoSettingsAvailable];
  if (nanoSettingsAvailable)
  {
    v9 = [(ADASManager *)self _getDefaultsKey:forCopy];
    v10 = ADAFLog(v9);
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&dword_241579000, v11, OS_LOG_TYPE_DEFAULT, "removing nano preference for defaults key %@", buf, 0xCu);
      }

      coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      [coreAudioDomain removeObjectForKey:v9];

      v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v9, 0}];
      v13 = [(ADASManager *)self _setChainedKeys:forCopy val:0 nano:1 modifiedKeys:v11];
      v14 = v13;
      if (v13)
      {
        v15 = ADAFLog(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [ADASManager removeNanoPreferenceFor:notify:];
        }
      }

      [(ADASManager *)self _syncNanoForWrite:v11];
      if (notifyCopy)
      {
        [(ADASManager *)self _notify:@"NanoHAESettingsChanged"];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ADASManager getPreferenceFor:];
    }
  }

  else
  {
    v9 = ADAFLog(nanoSettingsAvailable);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }
  }
}

- (id)getPreferencesFor:(id)for
{
  v4 = MEMORY[0x277CBEB38];
  forCopy = for;
  v6 = objc_alloc_init(v4);
  [(ADASManager *)self _sync];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__ADASManager_getPreferencesFor___block_invoke;
  v13 = &unk_278CE1308;
  selfCopy = self;
  v15 = v6;
  v7 = v6;
  [forCopy enumerateObjectsUsingBlock:&v10];

  [(ADASManager *)self _sync:v10];
  v8 = [v7 copy];

  return v8;
}

void __33__ADASManager_getPreferencesFor___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getSpecialKeys:v3 nano:0];
  if (v4)
  {
    v5 = v4;
    goto LABEL_3;
  }

  v8 = [*(a1 + 32) _getDefaultsKey:v3];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) _getDefaultsFor:v8];
    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v5 = [*(a1 + 32) _setDefaultValueIfNeeded:v9 nano:0 sync:0];

      if (!v5)
      {
        goto LABEL_4;
      }
    }

LABEL_3:
    v6 = [*(a1 + 40) setObject:v5 forKey:v3];
LABEL_4:
    v7 = ADAFLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "get preferences for: %@ -> %@", &v11, 0x16u);
    }

    goto LABEL_7;
  }

  v5 = ADAFLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __33__ADASManager_getPreferencesFor___block_invoke_cold_1();
  }

LABEL_7:
}

- (id)getNanoPreferencesFor:(id)for
{
  forCopy = for;
  nanoSettingsAvailable = [(ADASManager *)self nanoSettingsAvailable];
  if (nanoSettingsAvailable)
  {
    v6 = [MEMORY[0x277CBEB98] setWithArray:forCopy];
    [(ADASManager *)self _syncNanoForRead:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __37__ADASManager_getNanoPreferencesFor___block_invoke;
    v15 = &unk_278CE1308;
    selfCopy = self;
    v17 = v7;
    v8 = v7;
    [forCopy enumerateObjectsUsingBlock:&v12];
    v9 = [MEMORY[0x277CBEB98] setWithArray:{forCopy, v12, v13, v14, v15, selfCopy}];
    [(ADASManager *)self _syncNanoForWrite:v9];

    v10 = [v8 copy];
  }

  else
  {
    v8 = ADAFLog(nanoSettingsAvailable);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ADASManager setNanoPreferenceFor:value:notify:];
    }

    v10 = 0;
  }

  return v10;
}

void __37__ADASManager_getNanoPreferencesFor___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _getSpecialKeys:v3 nano:1];
  if (!v4)
  {
    v6 = [*(a1 + 32) _getDefaultsKey:v3];
    if (!v6)
    {
      v9 = ADAFLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_2();
      }

      v5 = 0;
      goto LABEL_15;
    }

    v7 = [*(*(a1 + 32) + 8) coreAudioDomain];
    v5 = [v7 objectForKey:v6];

    if (v5)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v9 = ADAFLog(isKindOfClass);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __37__ADASManager_getNanoPreferencesFor___block_invoke_cold_1();
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v10 = [*(a1 + 32) _setDefaultValueIfNeeded:v6 nano:1 sync:0];
      v5 = v10;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    v10 = [*(a1 + 40) setObject:v5 forKey:v3];
LABEL_13:
    v9 = ADAFLog(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_241579000, v9, OS_LOG_TYPE_DEFAULT, "get preferences for: %@ -> %@", &v11, 0x16u);
    }

    goto LABEL_15;
  }

  v5 = v4;
  [*(a1 + 40) setObject:v4 forKey:v3];
LABEL_16:
}

- (id)_setDefaultsFor:(id)for value:(id)value
{
  v11 = *MEMORY[0x277D85DE8];
  forCopy = for;
  valueCopy = value;
  if (!valueCopy)
  {
    v7 = ADAFLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      uTF8String = [(__CFString *)forCopy UTF8String];
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "removing key: %s", &v9, 0xCu);
    }
  }

  CFPreferencesSetAppValue(forCopy, valueCopy, @"com.apple.coreaudio");

  return 0;
}

- (id)_setDeviceSpecificDefaultsFor:(id)for value:(id)value
{
  v11 = *MEMORY[0x277D85DE8];
  forCopy = for;
  valueCopy = value;
  if (!valueCopy)
  {
    v7 = ADAFLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = forCopy;
      _os_log_impl(&dword_241579000, v7, OS_LOG_TYPE_DEFAULT, "removing key: %@", &v9, 0xCu);
    }
  }

  CFPreferencesSetAppValue(forCopy, valueCopy, @"com.apple.coreaudio.device");

  return 0;
}

- (id)_getDefaultsFor:(id)for
{
  v3 = CFPreferencesCopyAppValue(for, @"com.apple.coreaudio");

  return v3;
}

- (id)_getDeviceSpecificDefaultsFor:(id)for
{
  v3 = CFPreferencesCopyAppValue(for, @"com.apple.coreaudio.device");

  return v3;
}

- (void)_notify:(id)_notify
{
  name = _notify;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (void)_syncNanoForRead:(id)read
{
  readCopy = read;
  v5 = objc_opt_new();
  [v5 synchronizeNanoDomain:@"com.apple.coreaudio" keys:readCopy];

  coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
  synchronize = [coreAudioDomain synchronize];
}

- (void)_syncNanoDeviceSpecificForRead:(id)read
{
  readCopy = read;
  v5 = objc_opt_new();
  [v5 synchronizeNanoDomain:@"com.apple.coreaudio.device" keys:readCopy];

  coreAudioDeviceDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
  synchronize = [coreAudioDeviceDomain synchronize];
}

- (void)_syncNanoForWrite:(id)write
{
  prefStore = self->_prefStore;
  writeCopy = write;
  coreAudioDomain = [(ADASPreferenceStore *)prefStore coreAudioDomain];
  synchronize = [coreAudioDomain synchronize];

  v7 = objc_opt_new();
  [v7 synchronizeNanoDomain:@"com.apple.coreaudio" keys:writeCopy];
}

- (id)_setChainedKeys:(id)keys val:(id)val nano:(BOOL)nano modifiedKeys:(id)modifiedKeys
{
  nanoCopy = nano;
  keysCopy = keys;
  valCopy = val;
  modifiedKeysCopy = modifiedKeys;
  v13 = [keysCopy isEqualToString:@"_ADAFPreferenceKeyHAEEnableHKWrite"];
  if (valCopy)
  {
    if (v13)
    {
      bOOLValue = [valCopy BOOLValue];
      if ((bOOLValue & 1) == 0)
      {
        v17 = ADAFLog(bOOLValue);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_241579000, v17, OS_LOG_TYPE_DEFAULT, "HAE being turned off -> turning off notification feature as well.", v19, 2u);
        }

        if (nanoCopy)
        {
          coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
          [coreAudioDomain setObject:valCopy forKey:@"EnableHAELiveMonitor"];

          v15 = 0;
          if (!modifiedKeysCopy)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v15 = [(ADASManager *)self _setDefaultsFor:@"EnableHAELiveMonitor" value:valCopy];
          if (!modifiedKeysCopy)
          {
            goto LABEL_8;
          }
        }

        [modifiedKeysCopy addObject:@"EnableHAELiveMonitor"];
        goto LABEL_8;
      }
    }
  }

  if ([keysCopy isEqualToString:@"_ADAFPreferenceKeyHAENotificationFeatureEnabled"] && !-[ADASManager _isDeviceMandatoryForHAENotification:](self, "_isDeviceMandatoryForHAENotification:", nanoCopy))
  {
    -[ADASManager _donateSignalToTipsKit:](self, "_donateSignalToTipsKit:", [valCopy BOOLValue]);
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)_getSpecialKeys:(id)keys nano:(BOOL)nano
{
  nanoCopy = nano;
  keysCopy = keys;
  if ([keysCopy isEqualToString:@"_ADAFPreferenceKeyHAENotificationIsMandatory"])
  {
    if ([(ADASManager *)self _featureFlagEnabled])
    {
      v7 = [(ADASManager *)self _isDeviceMandatoryForHAENotification:nanoCopy];
      if (v7)
      {
        [(ADASManager *)self migrateKeyEnableHAEHKMeasurement:nanoCopy];
      }

      v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      goto LABEL_8;
    }

    v9 = MEMORY[0x277CBEC28];
  }

  else
  {
    if ([keysCopy isEqualToString:@"_ADAFPreferenceKeyVolumeLimitThreshold"])
    {
      v8 = [(ADASManager *)self _migrateVolumeLimitThreshold:nanoCopy];
LABEL_8:
      v9 = v8;
      goto LABEL_11;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (id)_setDefaultValueIfNeeded:(id)needed nano:(BOOL)nano sync:(BOOL)sync
{
  syncCopy = sync;
  nanoCopy = nano;
  v27[1] = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  defaultValues = [(ADASPreferenceStore *)self->_prefStore defaultValues];
  v10 = [defaultValues objectForKey:neededCopy];

  if (v10)
  {
    v11 = [neededCopy isEqualToString:@"EnableHAELiveMonitor"];
    if (nanoCopy)
    {
      if (v11)
      {
        coreAudioDeviceDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
        v13 = [coreAudioDeviceDomain objectForKey:@"HAENFeatureMandatory"];

        if (v13 && ([v13 BOOLValue] & 1) == 0)
        {

          v10 = &unk_28533CDF0;
        }
      }

      coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
      [coreAudioDomain setObject:v10 forKey:neededCopy];

      if (syncCopy)
      {
        v16 = MEMORY[0x277CBEB98];
        v27[0] = neededCopy;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
        v18 = [v16 setWithArray:v17];
        [(ADASManager *)self _syncNanoForWrite:v18];
      }
    }

    else
    {
      if (v11)
      {
        v19 = [(ADASManager *)self _getDeviceSpecificDefaultsFor:@"HAENFeatureMandatory"];
        v20 = v19;
        if (v19 && ([v19 BOOLValue] & 1) == 0)
        {

          v10 = &unk_28533CDF0;
        }
      }

      _sync = [(ADASManager *)self _setDefaultsFor:neededCopy value:v10];
      if (syncCopy)
      {
        _sync = [(ADASManager *)self _sync];
      }
    }

    v21 = ADAFLog(_sync);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = neededCopy;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_241579000, v21, OS_LOG_TYPE_DEFAULT, "setting default value for key [ %@ ] -> [ %@ ]", &v23, 0x16u);
    }
  }

  return v10;
}

- (void)migrateKeyEnableHAEHKMeasurement:(BOOL)measurement
{
  measurementCopy = measurement;
  v20[2] = *MEMORY[0x277D85DE8];
  if (measurement)
  {
    v5 = MEMORY[0x277CBEB98];
    v20[0] = @"EnableHAEHKWrite";
    v20[1] = @"HAENSampleTransient";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v7 = [v5 setWithArray:v6];
    [(ADASManager *)self _syncNanoForRead:v7];

    coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v9 = [coreAudioDomain objectForKey:@"EnableHAEHKWrite"];

    coreAudioDomain2 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v11 = [coreAudioDomain2 objectForKey:@"HAENSampleTransient"];

    if (!v11)
    {
LABEL_5:
      v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
      v13 = v12;
      if (v9)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "BOOLValue") ^ 1}];

        if (([v9 BOOLValue] & 1) == 0)
        {
          if (measurementCopy)
          {
            coreAudioDomain3 = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
            v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
            [coreAudioDomain3 setObject:v15 forKey:@"HAENSurfaceMigrationAlert"];

LABEL_11:
            v16 = [(ADASManager *)self setNanoPreferenceFor:@"_ADAFPreferenceKeyHAESampleTransient" value:v11 notify:0];
            goto LABEL_14;
          }

          v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v18 = [(ADASManager *)self _setDefaultsFor:@"HAENSurfaceMigrationAlert" value:v17];

LABEL_13:
          v19 = [(ADASManager *)self _setDefaultsFor:@"HAENSampleTransient" value:v11];
          [(ADASManager *)self _sync];
          goto LABEL_14;
        }
      }

      else
      {
        v11 = v12;
      }

      if (measurementCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = [(ADASManager *)self _getDefaultsFor:@"EnableHAEHKWrite"];
    v11 = [(ADASManager *)self _getDefaultsFor:@"HAENSampleTransient"];
    if (!v11)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
}

- (id)_migrateVolumeLimitThreshold:(BOOL)threshold
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  if (threshold)
  {
    coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v18 = [coreAudioDomain objectForKey:@"VolumeLimitThreshold"];
  }

  else
  {
    v18 = [(ADASManager *)self _getDefaultsFor:@"VolumeLimitThreshold"];
  }

  v6 = v14[5];
  if (!v6)
  {
    v7 = dispatch_time(0, 10000000000);
    v8 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__ADASManager__migrateVolumeLimitThreshold___block_invoke;
    block[3] = &unk_278CE1330;
    thresholdCopy = threshold;
    block[4] = self;
    block[5] = &v13;
    dispatch_after(v7, v8, block);

    v6 = v14[5];
  }

  v9 = v6;
  _Block_object_dispose(&v13, 8);

  return v9;
}

void __44__ADASManager__migrateVolumeLimitThreshold___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getCurrentVolumeLimit];
  v3 = ADAFLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v2;
    _os_log_impl(&dword_241579000, v3, OS_LOG_TYPE_DEFAULT, "VLT currentLimit = %@", &v21, 0xCu);
  }

  if (v2 && (v4 = [v2 floatValue], v5 > 0.0))
  {
    v6 = [v2 floatValue];
    v8 = v7;
    if (v7 >= 0.5)
    {
      if (v7 >= 0.6)
      {
        if (v7 >= 0.7)
        {
          if (v7 >= 0.8)
          {
            if (v7 >= 0.9)
            {
              if (v7 >= 1.0)
              {
                goto LABEL_10;
              }

              v9 = 1120403456;
            }

            else
            {
              v9 = 1119748096;
            }
          }

          else
          {
            v9 = 1119092736;
          }
        }

        else
        {
          v9 = 1118437376;
        }
      }

      else
      {
        v9 = 1117782016;
      }
    }

    else
    {
      v9 = 1117126656;
    }

    v12 = *&v9;
    v13 = ADAFLog(v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      v21 = 138413058;
      v22 = v2;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v12;
      v27 = 1024;
      v28 = v14;
      _os_log_impl(&dword_241579000, v13, OS_LOG_TYPE_DEFAULT, "migrating %@ (%f) to %f\n nano? %d", &v21, 0x26u);
    }

    [*(a1 + 32) _clearCurrentVolumeLimit];
    *&v15 = v12;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v17 = *(*(a1 + 40) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(a1 + 32);
    v20 = *(*(*(a1 + 40) + 8) + 40);
    if (*(a1 + 48) == 1)
    {
      v6 = [v19 setNanoPreferenceFor:@"_ADAFPreferenceKeyVolumeLimitThreshold" value:v20 notify:1];
    }

    else
    {
      v6 = [v19 setPreferenceFor:@"_ADAFPreferenceKeyVolumeLimitThreshold" value:v20 notify:1];
    }
  }

  else
  {
    v10 = ADAFLog(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__ADASManager__migrateVolumeLimitThreshold___block_invoke_cold_1();
    }
  }

LABEL_10:
  v11 = ADAFLog(v6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_241579000, v11, OS_LOG_TYPE_DEFAULT, "VLT migration done...", &v21, 2u);
  }
}

- (id)_getCurrentVolumeLimit
{
  LODWORD(v2) = -1.0;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  v19 = v3;
  if (+[ADAFUtil isProcessMediaserverd])
  {
    v4 = objc_alloc_init(MEMORY[0x277D26E68]);
    v5 = [v4 copyAttributeForKey:*MEMORY[0x277D27418] withValueOut:&v19];
    if (v5)
    {
      v6 = v5;
      v7 = ADAFLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ADASManager *)v6 _getCurrentVolumeLimit:v7];
      }

      LODWORD(v14) = -1.0;
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
      v16 = v19;
      v19 = v15;
    }

    v3 = v19;
  }

  v17 = v3;

  return v17;
}

- (void)_clearCurrentVolumeLimit
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_241579000, a2, a3, "error clearing current volume limit %llu", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (BOOL)shouldSufaceHAENotificationMigrationAlert
{
  if (![(ADASManager *)self _isAlertSupported])
  {
    return 0;
  }

  [(ADASManager *)self _sync];
  v3 = [(ADASManager *)self _getDefaultsFor:@"HAENMigrationAlertSurfaced"];
  if ([v3 BOOLValue])
  {
    bOOLValue = 0;
  }

  else
  {
    v5 = [(ADASManager *)self _getDefaultsFor:@"HAENSurfaceMigrationAlert"];
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (void)didSurfaceMigrationAlert
{
  v3 = ADAFLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241579000, v3, OS_LOG_TYPE_DEFAULT, "didSurfaceMigrationAlert...", v7, 2u);
  }

  if (+[ADAFUtil isProcessMediaserverd])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v5 = [(ADASManager *)self _setDefaultsFor:@"HAENMigrationAlertSurfaced" value:v4];

    v6 = [(ADASManager *)self _setDefaultsFor:@"HAENSurfaceMigrationAlert" value:0];
    [(ADASManager *)self _sync];
  }
}

- (id)_getDefaultsKey:(id)key
{
  prefStore = self->_prefStore;
  keyCopy = key;
  keyMap = [(ADASPreferenceStore *)prefStore keyMap];
  v6 = [keyMap objectForKey:keyCopy];

  return v6;
}

- (BOOL)_isDeviceMandatoryForHAENotification:(BOOL)notification
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (notification)
  {
    v4 = MEMORY[0x277CBEB98];
    v21[0] = @"HAENFeatureMandatoryOverride";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v6 = [v4 setWithArray:v5];
    [(ADASManager *)self _syncNanoForRead:v6];

    coreAudioDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDomain];
    v8 = [coreAudioDomain objectForKey:@"HAENFeatureMandatoryOverride"];

    if (!v8)
    {
      v10 = MEMORY[0x277CBEB98];
      v18 = @"HAENFeatureMandatory";
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v12 = [v10 setWithArray:v11];
      [(ADASManager *)self _syncNanoDeviceSpecificForRead:v12];

      coreAudioDeviceDomain = [(ADASPreferenceStore *)self->_prefStore coreAudioDeviceDomain];
      v8 = [coreAudioDeviceDomain objectForKey:@"HAENFeatureMandatory"];

      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

LABEL_7:
    v15 = ADAFLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_241579000, v15, OS_LOG_TYPE_DEFAULT, "device has HAEN turned on through defaults: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  [(ADASManager *)self _sync];
  v9 = [(ADASManager *)self _getDefaultsFor:@"HAENFeatureMandatoryOverride"];
  if (v9)
  {
    v8 = v9;
    goto LABEL_7;
  }

  [(ADASManager *)self _syncDeviceSpecificDomain];
  v14 = [(ADASManager *)self _getDeviceSpecificDefaultsFor:@"HAENFeatureMandatory"];
  v8 = v14;
  if (!v14)
  {
LABEL_10:
    v15 = ADAFLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ADASManager _isDeviceMandatoryForHAENotification:];
    }

    v8 = MEMORY[0x277CBEC38];
LABEL_13:
  }

LABEL_14:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)_isAlertSupported
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (!+[ADAFUtil isProcessMediaserverd])
  {
    return 0;
  }

  [(ADASManager *)self _sync];
  v3 = [(ADASManager *)self _getDefaultsFor:@"DisableHAENMigrationAlert"];
  v4 = v3;
  if (v3 && ([v3 BOOLValue] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = MGGetStringAnswer();
    v9[0] = @"iPhone";
    v9[1] = @"iPad";
    v9[2] = @"iPod";
    v9[3] = @"Watch";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
    v5 = [v7 containsObject:v6];
  }

  return v5;
}

- (BOOL)nanoSettingsAvailable
{
  selfCopy = self;
  [(ADASPreferenceStore *)self->_prefStore initNPSDomain];
  coreAudioDomain = [(ADASPreferenceStore *)selfCopy->_prefStore coreAudioDomain];
  LOBYTE(selfCopy) = coreAudioDomain != 0;

  return selfCopy;
}

- (void)_donateSignalToTipsKit:(BOOL)kit
{
  kitCopy = kit;
  v4 = BiomeLibrary();
  discoverability = [v4 Discoverability];
  signals = [discoverability Signals];

  source = [signals source];
  v7 = objc_alloc(MEMORY[0x277CF1160]);
  if (kitCopy)
  {
    v8 = @"true";
  }

  else
  {
    v8 = @"false";
  }

  v9 = [v7 initWithContentIdentifier:@"com.apple.Health.Hearing.HAENOptIn" context:v8 osBuild:0 userInfo:0];
  [source sendEvent:v9];
}

- (void)setNanoPreferenceFor:value:notify:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__ADASManager__migrateVolumeLimitThreshold___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_getCurrentVolumeLimit
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_241579000, a2, a3, "error fetching current volume limit %llu", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_isDeviceMandatoryForHAENotification:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end