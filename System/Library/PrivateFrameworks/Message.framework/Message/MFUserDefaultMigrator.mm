@interface MFUserDefaultMigrator
+ (BOOL)migratePreferencesToSharedAppGroup;
+ (id)_keysToMigrateToSharedAppGroup;
+ (id)currentDeviceIdentifer;
+ (id)log;
+ (id)mobileMailDefaultForKey:(id)key;
+ (id)oldKeysToNewKeysMap;
+ (void)_migrateExtPropertiesPlist;
+ (void)migrateDefaults:(id)defaults;
+ (void)migrateDefaultsFromOldKeysToNewKeys:(id)keys;
+ (void)migratePropertyForOldKey:(id)key newKey:(id)newKey;
+ (void)removeMobileMailDefaultForKey:(id)key;
@end

@implementation MFUserDefaultMigrator

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFUserDefaultMigrator_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_35 != -1)
  {
    dispatch_once(&log_onceToken_35, block);
  }

  v2 = log_log_35;

  return v2;
}

void __28__MFUserDefaultMigrator_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_35;
  log_log_35 = v1;
}

+ (id)oldKeysToNewKeysMap
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"ReplyToSelf";
  v5[0] = *MEMORY[0x1E699AB48];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)_keysToMigrateToSharedAppGroup
{
  v2 = [&unk_1F2775700 arrayByAddingObjectsFromArray:&unk_1F2775718];

  return v2;
}

+ (void)_migrateExtPropertiesPlist
{
  v38[4] = *MEMORY[0x1E69E9840];
  v27 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v27 dataContainerURL];
  path = [dataContainerURL path];

  v28 = path;
  if ([path length])
  {
    v4 = [@"com.apple.MailAccount-ExtProperties" stringByAppendingPathExtension:@"plist"];
    v5 = MEMORY[0x1E696AEC0];
    v38[0] = path;
    v38[1] = @"Library";
    v38[2] = @"Preferences";
    v38[3] = v4;
    v25 = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    v26 = [v5 pathWithComponents:v6];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager fileExistsAtPath:v26];

    v9 = +[MFUserDefaultMigrator log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"Not Found";
      if (v8)
      {
        v10 = @"Found";
      }

      *buf = 138543618;
      v35 = v10;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "extPropertiesDomain %{public}@ at path: %@", buf, 0x16u);
    }

    if (v8)
    {
      v24 = _CFPreferencesCopyValueWithContainer();
      if ([v24 BOOLValue])
      {
        v11 = +[MFUserDefaultMigrator log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "extPropertiesDomain already migrated to shared app group.", buf, 2u);
        }
      }

      else
      {
        v23 = _CFPreferencesCopyKeyListWithContainer();
        if ([v23 count])
        {
          v13 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "Migrating extPropertiesDomain to shared app group.", buf, 2u);
          }

          v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v15 = v23;
          v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v16)
          {
            v17 = *v30;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v29 + 1) + 8 * i);
                v20 = _CFPreferencesCopyValueWithContainer();
                [v14 setObject:v20 forKey:v19];
                _CFPreferencesSetValueWithContainer();
              }

              v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
            }

            while (v16);
          }

          em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
          [em_userDefaults setObject:v14 forKey:@"com.apple.MailAccount-ExtProperties"];

          v22 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v14;
            _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Migrated following extPropertiesDomain defaults to shared app group: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = +[MFUserDefaultMigrator log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "No keys found to migrate in extPropertiesDomain.", buf, 2u);
          }
        }

        _CFPreferencesSetValueWithContainer();
        v11 = v23;
      }
    }
  }

  else
  {
    v12 = +[MFUserDefaultMigrator log];
    v25 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "MobileMail container path not found - Skipping extProperties migration.", buf, 2u);
    }
  }
}

+ (BOOL)migratePreferencesToSharedAppGroup
{
  v17 = *MEMORY[0x1E69E9840];
  oldKeysToNewKeysMap = [self oldKeysToNewKeysMap];
  [self migrateDefaultsFromOldKeysToNewKeys:oldKeysToNewKeysMap];

  _keysToMigrateToSharedAppGroup = [self _keysToMigrateToSharedAppGroup];
  [self migrateDefaults:_keysToMigrateToSharedAppGroup];

  [self _migrateExtPropertiesPlist];
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  currentDeviceIdentifer = [self currentDeviceIdentifer];
  [em_userDefaults setObject:currentDeviceIdentifer forKey:@"DeviceIdentifier"];

  em_userDefaults2 = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults2 synchronize];

  *v14 = 0xE00000001;
  v15 = 0;
  v16 = 0;
  size = 0xAAAAAAAAAAAAAAAALL;
  v8 = sysctl(v14, 3u, 0, &size, 0, 0);
  if (!v8)
  {
    v9 = malloc_type_malloc(size, 0x10B2040B74D5165uLL);
    v8 = sysctl(v14, 3u, v9, &size, 0, 0);
    if (!v8)
    {
      if (size < 0x288)
      {
LABEL_12:
        free(v9);
        return 1;
      }

      v11 = size / 0x288;
      v12 = v9 + 243;
      while (1)
      {
        v8 = *(v12 - 203);
        if (v8 >= 1 && !strncmp("maild", v12, 0x10uLL))
        {
          break;
        }

        v12 += 648;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      free(v9);
      goto LABEL_5;
    }

    free(v9);
  }

  if (v8 >= 1)
  {
LABEL_5:
    kill(v8, 9);
  }

  return 1;
}

+ (void)migrateDefaults:(id)defaults
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  defaultsCopy = defaults;
  v5 = [defaultsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(defaultsCopy);
        }

        [self migratePropertyForOldKey:*(*(&v8 + 1) + 8 * v7) newKey:{*(*(&v8 + 1) + 8 * v7), v8}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [defaultsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)migrateDefaultsFromOldKeysToNewKeys:(id)keys
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__MFUserDefaultMigrator_migrateDefaultsFromOldKeysToNewKeys___block_invoke;
  v3[3] = &__block_descriptor_40_e35_v32__0__NSString_8__NSString_16_B24l;
  v3[4] = self;
  [keys enumerateKeysAndObjectsUsingBlock:v3];
}

+ (void)migratePropertyForOldKey:(id)key newKey:(id)newKey
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  newKeyCopy = newKey;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v9 = [em_userDefaults valueForKey:newKeyCopy];

  if (!v9)
  {
    v10 = [self mobileMailDefaultForKey:keyCopy];
    if (v10)
    {
      v11 = +[MFUserDefaultMigrator log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412802;
        v14 = keyCopy;
        v15 = 2112;
        v16 = newKeyCopy;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Migrating %@ to %@ with default %@", &v13, 0x20u);
      }

      [em_userDefaults setObject:v10 forKey:newKeyCopy];
      [self removeMobileMailDefaultForKey:keyCopy];
    }

    else
    {
      v12 = +[MFUserDefaultMigrator log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = keyCopy;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "No default for key %@", &v13, 0xCu);
      }
    }
  }
}

+ (id)currentDeviceIdentifer
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v2 dataContainerURL];
  path = [dataContainerURL path];

  v5 = _CFPreferencesCopyValueWithContainer();

  return v5;
}

+ (id)mobileMailDefaultForKey:(id)key
{
  keyCopy = key;
  v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v4 dataContainerURL];
  path = [dataContainerURL path];

  v7 = _CFPreferencesCopyValueWithContainer();

  return v7;
}

+ (void)removeMobileMailDefaultForKey:(id)key
{
  keyCopy = key;
  v3 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilemail"];
  dataContainerURL = [v3 dataContainerURL];
  path = [dataContainerURL path];

  _CFPreferencesSetValueWithContainer();
  _CFPreferencesSynchronizeWithContainer();
}

@end