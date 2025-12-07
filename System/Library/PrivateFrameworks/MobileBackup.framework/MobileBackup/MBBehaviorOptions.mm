@interface MBBehaviorOptions
+ (MBBehaviorOptions)sharedOptions;
- (BOOL)_getBoolOptionForKey:(id)key defaultValue:(BOOL)value;
- (MBBehaviorOptions)init;
- (double)_getDoubleOptionForKey:(id)key defaultValue:(double)value;
- (id)_behaviorOptionForKey:(id)key;
- (id)_behaviorOptionForTopLevelKey:(id)key;
- (id)_getArrayOptionForKey:(id)key defaultValue:(id)value;
- (id)_getNumberOptionForKey:(id)key;
- (id)_getStringOptionForKey:(id)key defaultValue:(id)value;
- (id)_getStringOptionLockedForKey:(id)key defaultValue:(id)value;
- (int)_getIntOptionForKey:(id)key defaultValue:(int)value;
- (void)_setPref:(id)pref forKey:(id)key;
- (void)_startListeningForNotifications;
- (void)setShouldKeepFileSystemSnapshotAfterBackupSuccess:(BOOL)success;
- (void)setSnapshotAfterForegroundRestore:(BOOL)restore;
- (void)setUseABC:(BOOL)c;
- (void)setUseBackgroundOperationsForBackup:(BOOL)backup;
@end

@implementation MBBehaviorOptions

- (void)_startListeningForNotifications
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke;
  v7[3] = &unk_1E8684618;
  v7[4] = self;
  v2 = MEMORY[0x1E12C58B0](v7, a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_2;
  v5[3] = &unk_1E8684730;
  v6 = v2;
  v3 = _startListeningForNotifications_once;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&_startListeningForNotifications_once, v5);
  }
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = MBGetDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_INFO, "Looks like our prefs changed. Reloading.", buf, 2u);
    _MBLog(@"I ", "Looks like our prefs changed. Reloading.");
  }

  CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v3 = [*(a1 + 32) cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_183;
  block[3] = &unk_1E8684708;
  block[4] = *(a1 + 32);
  block[5] = buf;
  dispatch_sync(v3, block);

  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [*(v19 + 5) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(v19 + 5) objectForKeyedSubscript:v9];
        v11 = [*(a1 + 32) _behaviorOptionForKey:v9];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v24 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(buf, 8);
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_183(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) cachedPrefs];
  [v6 removeAllObjects];
}

void __52__MBBehaviorOptions__startListeningForNotifications__block_invoke_2(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &_startListeningForNotifications_token, v2, *(a1 + 32));

  notify_register_dispatch("com.apple.mobilebackup.BehaviorOptionDidChange", &_startListeningForNotifications_token2, v2, *(a1 + 32));
}

- (MBBehaviorOptions)init
{
  v12.receiver = self;
  v12.super_class = MBBehaviorOptions;
  v2 = [(MBBehaviorOptions *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedPrefs = v2->_cachedPrefs;
    v2->_cachedPrefs = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mobilebackup.behavioroptions", v5);
    cachedPrefsQueue = v2->_cachedPrefsQueue;
    v2->_cachedPrefsQueue = v6;

    [(MBBehaviorOptions *)v2 _startListeningForNotifications];
    CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
    v8 = [@"com.apple.MobileBackup.BehaviorOptions" stringByAppendingPathExtension:@"plist"];
    v9 = [@"/var/mobile/Library/Preferences" stringByAppendingPathComponent:v8];
    plistPath = v2->_plistPath;
    v2->_plistPath = v9;
  }

  return v2;
}

+ (MBBehaviorOptions)sharedOptions
{
  if (sharedOptions_onceToken != -1)
  {
    +[MBBehaviorOptions sharedOptions];
  }

  v3 = sharedOptions_sSharedOptions;

  return v3;
}

uint64_t __34__MBBehaviorOptions_sharedOptions__block_invoke()
{
  sharedOptions_sSharedOptions = objc_alloc_init(MBBehaviorOptions);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_behaviorOptionForKey:(id)key
{
  keyCopy = key;
  v5 = [(MBBehaviorOptions *)self _behaviorOptionForTopLevelKey:keyCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = CFPreferencesCopyValue(@"BehaviorOptions", @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
    v8 = v7;
    if (v7)
    {
      v7 = [v7 objectForKeyedSubscript:keyCopy];
    }

    v6 = v7;
  }

  return v6;
}

- (id)_behaviorOptionForTopLevelKey:(id)key
{
  v3 = CFPreferencesCopyValue(key, @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);

  return v3;
}

- (void)_setPref:(id)pref forKey:(id)key
{
  prefCopy = pref;
  keyCopy = key;
  cachedPrefsQueue = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MBBehaviorOptions__setPref_forKey___block_invoke;
  block[3] = &unk_1E8684758;
  v12 = keyCopy;
  v13 = prefCopy;
  selfCopy = self;
  v9 = prefCopy;
  v10 = keyCopy;
  dispatch_sync(cachedPrefsQueue, block);

  notify_post("com.apple.mobilebackup.BehaviorOptionDidChange");
}

void __37__MBBehaviorOptions__setPref_forKey___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(*(a1 + 32), *(a1 + 40), @"com.apple.MobileBackup.BehaviorOptions", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.MobileBackup.BehaviorOptions", @"mobile", v2);
  v3 = [*(a1 + 48) cachedPrefs];
  [v3 removeAllObjects];
}

- (id)_getNumberOptionForKey:(id)key
{
  keyCopy = key;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  cachedPrefsQueue = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MBBehaviorOptions__getNumberOptionForKey___block_invoke;
  block[3] = &unk_1E8684780;
  v12 = &v13;
  block[4] = self;
  v6 = keyCopy;
  v11 = v6;
  dispatch_sync(cachedPrefsQueue, block);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v7 = v14[5];
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __44__MBBehaviorOptions__getNumberOptionForKey___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _behaviorOptionForKey:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
LABEL_8:
        v16 = *(*(*(a1 + 48) + 8) + 40);
        v17 = [*(a1 + 32) cachedPrefs];
        [v17 setObject:v16 forKeyedSubscript:*(a1 + 40)];

        return;
      }

      v10 = MBGetDefaultLog(isKindOfClass);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412546;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_ERROR, "For key %@, found value %@ which was not a NSNumber.  Ignoring.", buf, 0x16u);
        _MBLog(@"E ", "For key %@, found value %@ which was not a NSNumber.  Ignoring.", *(a1 + 40), *(*(*(a1 + 48) + 8) + 40));
      }
    }

    v13 = [MEMORY[0x1E695DFB0] null];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_8;
  }
}

- (BOOL)_getBoolOptionForKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:key];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      value = [v5 BOOLValue];
    }
  }

  return value;
}

- (int)_getIntOptionForKey:(id)key defaultValue:(int)value
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:key];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      value = [v5 intValue];
    }
  }

  return value;
}

- (double)_getDoubleOptionForKey:(id)key defaultValue:(double)value
{
  v5 = [(MBBehaviorOptions *)self _getNumberOptionForKey:key];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v5 doubleValue];
      value = v6;
    }
  }

  return value;
}

- (id)_getStringOptionLockedForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  cachedPrefs = [(MBBehaviorOptions *)self cachedPrefs];
  null2 = [cachedPrefs objectForKeyedSubscript:keyCopy];

  if (!null2)
  {
    v8 = [(MBBehaviorOptions *)self _behaviorOptionForKey:keyCopy];
    if (v8)
    {
      null2 = v8;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![null2 length])
      {
        null = [MEMORY[0x1E695DFB0] null];

        null2 = null;
      }
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    cachedPrefs2 = [(MBBehaviorOptions *)self cachedPrefs];
    [cachedPrefs2 setObject:null2 forKeyedSubscript:keyCopy];
  }

  return null2;
}

- (id)_getStringOptionForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  cachedPrefsQueue = [(MBBehaviorOptions *)self cachedPrefsQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MBBehaviorOptions__getStringOptionForKey_defaultValue___block_invoke;
  v15[3] = &unk_1E86847A8;
  v18 = &v19;
  v15[4] = self;
  v9 = keyCopy;
  v16 = v9;
  v10 = valueCopy;
  v17 = v10;
  dispatch_sync(cachedPrefsQueue, v15);

  v11 = v10;
  if (v20[5])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = v10;
    if ((isKindOfClass & 1) == 0)
    {
      v11 = v20[5];
    }
  }

  v13 = v11;

  _Block_object_dispose(&v19, 8);

  return v13;
}

uint64_t __57__MBBehaviorOptions__getStringOptionForKey_defaultValue___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _getStringOptionLockedForKey:*(a1 + 40) defaultValue:*(a1 + 48)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_getArrayOptionForKey:(id)key defaultValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  cachedPrefsQueue = [(MBBehaviorOptions *)self cachedPrefsQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MBBehaviorOptions__getArrayOptionForKey_defaultValue___block_invoke;
  block[3] = &unk_1E8684780;
  v16 = &v17;
  block[4] = self;
  v9 = keyCopy;
  v15 = v9;
  dispatch_sync(cachedPrefsQueue, block);

  v10 = valueCopy;
  if (v18[5])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = valueCopy;
    if ((isKindOfClass & 1) == 0)
    {
      v10 = v18[5];
    }
  }

  v12 = v10;

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __56__MBBehaviorOptions__getArrayOptionForKey_defaultValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedPrefs];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _behaviorOptionForTopLevelKey:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!*(*(*(a1 + 48) + 8) + 40) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [*(a1 + 32) cachedPrefs];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)setUseBackgroundOperationsForBackup:(BOOL)backup
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:backup];
  [(MBBehaviorOptions *)self _setPref:v4 forKey:@"UseBackgroundOperationsForBackupKey"];
}

- (void)setShouldKeepFileSystemSnapshotAfterBackupSuccess:(BOOL)success
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:success];
  [(MBBehaviorOptions *)self _setPref:v4 forKey:@"KeepDailySnapshots"];
}

- (void)setSnapshotAfterForegroundRestore:(BOOL)restore
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:restore];
  [(MBBehaviorOptions *)self _setPref:v4 forKey:@"SnapshotAfterForegroundRestore"];
}

- (void)setUseABC:(BOOL)c
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:c];
  [(MBBehaviorOptions *)self _setPref:v4 forKey:@"UseABC"];
}

@end