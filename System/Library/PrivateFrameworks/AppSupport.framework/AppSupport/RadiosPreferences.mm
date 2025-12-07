@interface RadiosPreferences
+ (BOOL)shouldMirrorAirplaneMode;
- (BOOL)airplaneMode;
- (BOOL)telephonyStateWithBundleIdentifierOut:(id *)out;
- (RadiosPreferences)initWithQueue:(id)queue;
- (void)dealloc;
- (void)getValueWithLockForKey:(id)key;
- (void)initializeSCPrefs:(id)prefs;
- (void)notifyTarget:(unsigned int)target;
- (void)release;
- (void)setAirplaneMode:(BOOL)mode;
- (void)setAirplaneModeInNSS:(BOOL)s;
- (void)setAirplaneModeWithoutMirroring:(BOOL)mirroring;
- (void)setTelephonyState:(BOOL)state fromBundleID:(id)d;
- (void)setValue:(void *)value forKey:(id)key;
@end

@implementation RadiosPreferences

- (RadiosPreferences)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = RadiosPreferences;
  v4 = [(RadiosPreferences *)&v7 init];
  if (v4)
  {
    pthread_mutex_lock(&__sValidObjectsLock);
    Mutable = __sValidObjects;
    if (!__sValidObjects)
    {
      Mutable = CFSetCreateMutable(0, 0, 0);
      __sValidObjects = Mutable;
    }

    CFSetAddValue(Mutable, v4);
    pthread_mutex_unlock(&__sValidObjectsLock);
    v4->_dispatchQueue = queue;
    v4->radios_prefs_log = os_log_create("com.apple.AppSupport", "RadiosPreferences");
    [(RadiosPreferences *)v4 initializeSCPrefs:@"com.apple.radios.plist"];
    v4->_isCachedAirplaneModeValid = 0;
  }

  return v4;
}

- (void)release
{
  pthread_mutex_lock(&__sValidObjectsLock);
  if ([(RadiosPreferences *)self retainCount]== 1 && __sValidObjects)
  {
    CFSetRemoveValue(__sValidObjects, self);
  }

  pthread_mutex_unlock(&__sValidObjectsLock);
  v3.receiver = self;
  v3.super_class = RadiosPreferences;
  [(RadiosPreferences *)&v3 release];
}

- (void)dealloc
{
  prefs = self->_prefs;
  if (prefs)
  {
    SCPreferencesSetDispatchQueue(prefs, 0);
    CFRelease(self->_prefs);
  }

  v4.receiver = self;
  v4.super_class = RadiosPreferences;
  [(RadiosPreferences *)&v4 dealloc];
}

- (BOOL)airplaneMode
{
  if (self->_isCachedAirplaneModeValid)
  {
    return self->_cachedAirplaneMode;
  }

  else
  {
    v4 = [(RadiosPreferences *)self getValueForKey:@"AirplaneMode"];
    v3 = v4 == *MEMORY[0x1E695E4D0];
    self->_cachedAirplaneMode = v3;
    self->_isCachedAirplaneModeValid = 1;
  }

  return v3;
}

+ (BOOL)shouldMirrorAirplaneMode
{
  v8 = 0;
  if (!NanoPreferencesSyncLibraryCore(0))
  {
    NSLog(@"Class NPSDomainAccessor could not be loaded.");
LABEL_7:
    v6 = 0;
    return v6 & 1;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__0;
  v2 = getNPSDomainAccessorClass_softClass;
  v14 = __Block_byref_object_dispose__0;
  v15 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getNPSDomainAccessorClass_block_invoke;
    v9[3] = &unk_1E7450E18;
    v9[4] = &v10;
    __getNPSDomainAccessorClass_block_invoke(v9);
    v2 = v11[5];
  }

  _Block_object_dispose(&v10, 8);
  v3 = [[v2 alloc] initWithDomain:@"com.apple.nano"];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 BOOLForKey:@"mirror-airplane" keyExistsAndHasValidFormat:&v8];

  v6 = v8 & v5;
  return v6 & 1;
}

- (void)setAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  v10 = *MEMORY[0x1E69E9840];
  if (mode)
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    radios_prefs_log = self->radios_prefs_log;
    if (os_log_type_enabled(radios_prefs_log, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109378;
      v7[1] = 1;
      v8 = 2114;
      v9 = [callStackSymbols componentsJoinedByString:@"\n"];
      _os_log_impl(&dword_195E6C000, radios_prefs_log, OS_LOG_TYPE_DEFAULT, "Setting airplane mode enabled: %i, backtrace:\n%{public}@", v7, 0x12u);
    }
  }

  if ([objc_opt_class() shouldMirrorAirplaneMode])
  {
    [(RadiosPreferences *)self setAirplaneModeInNSS:modeCopy];
  }

  else
  {
    [(RadiosPreferences *)self setAirplaneModeWithoutMirroring:modeCopy];
  }
}

- (void)setAirplaneModeInNSS:(BOOL)s
{
  sCopy = s;
  if (NanoSystemSettingsLibraryCore(0))
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.AppSupport.AirplaneMode.NSSManager", v6);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = __Block_byref_object_copy__0;
    v8 = getNSSManagerClass_softClass;
    v24 = __Block_byref_object_dispose__0;
    v25 = getNSSManagerClass_softClass;
    if (!getNSSManagerClass_softClass)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getNSSManagerClass_block_invoke;
      v19[3] = &unk_1E7450E18;
      v19[4] = &v20;
      __getNSSManagerClass_block_invoke(v19);
      v8 = v21[5];
    }

    _Block_object_dispose(&v20, 8);
    v9 = [[v8 alloc] initWithQueue:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__RadiosPreferences_setAirplaneModeInNSS___block_invoke;
    v12[3] = &unk_1E7450EE0;
    v12[4] = v5;
    v12[5] = &v13;
    [v9 enableAirplaneMode:sCopy completionHandler:v12];
    v10 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v10) >= 1)
    {
      radios_prefs_log = self->radios_prefs_log;
      if (os_log_type_enabled(radios_prefs_log, OS_LOG_TYPE_FAULT))
      {
        [(RadiosPreferences *)sCopy setAirplaneModeInNSS:?];
      }
    }

    if (v14[5])
    {
      [(RadiosPreferences *)self setAirplaneModeWithoutMirroring:sCopy];
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    NSLog(@"Class NSSManager could not be loaded.");

    [(RadiosPreferences *)self setAirplaneModeWithoutMirroring:sCopy];
  }
}

- (void)setAirplaneModeWithoutMirroring:(BOOL)mirroring
{
  v5 = MEMORY[0x1E695E4D0];
  if (!mirroring)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(RadiosPreferences *)self setValue:*v5 forKey:@"AirplaneMode"];
  self->_cachedAirplaneMode = mirroring;
  self->_isCachedAirplaneModeValid = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"RadiosPreferencesAirplaneModeDidChangeNotification", 0, 0, 1u);
}

- (BOOL)telephonyStateWithBundleIdentifierOut:(id *)out
{
  v4 = [(RadiosPreferences *)self getValueWithLockForKey:@"TelephonyState"];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_msgSend(v4 objectForKeyedSubscript:{@"TelephonyEnabled", "BOOLValue"}];
    v4 = [v5 objectForKeyedSubscript:@"bundle_identifier"];
  }

  else
  {
    v6 = 1;
  }

  *out = v4;
  return v6;
}

- (void)setTelephonyState:(BOOL)state fromBundleID:(id)d
{
  stateCopy = state;
  v17[2] = *MEMORY[0x1E69E9840];
  v16[0] = @"TelephonyEnabled";
  v16[1] = @"bundle_identifier";
  v17[0] = [MEMORY[0x1E696AD98] numberWithBool:?];
  v17[1] = d;
  -[RadiosPreferences setValue:forKey:](self, "setValue:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2], @"TelephonyState");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"RadiosPreferencesAirplaneModeDidChangeNotification", 0, 0, 1u);
  [d UTF8String];
  ct_green_tea_logger_create();
  CTGreenTeaOsLogHandle = getCTGreenTeaOsLogHandle();
  if (CTGreenTeaOsLogHandle)
  {
    v9 = CTGreenTeaOsLogHandle;
    if (os_log_type_enabled(CTGreenTeaOsLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = @"On";
      if (stateCopy)
      {
        v11 = @"Off";
      }

      else
      {
        v11 = @"On";
      }

      if (!stateCopy)
      {
        v10 = @"Off";
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_195E6C000, v9, OS_LOG_TYPE_INFO, "Cellular Enabled: %@ ==>> %@", &v12, 0x16u);
    }
  }

  ct_green_tea_logger_destroy();
}

- (void)initializeSCPrefs:(id)prefs
{
  v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (!v5)
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  }

  self->_prefs = SCPreferencesCreateWithAuthorization(*MEMORY[0x1E695E480], v5, prefs, 0);
  v6[0] = 0;
  v7 = 0u;
  v8 = 0;
  v6[1] = self;
  [(RadiosPreferences *)self setCallback:RadioPreferencesCallback withContext:v6];
  SCPreferencesSetDispatchQueue(self->_prefs, self->_dispatchQueue);
}

- (void)notifyTarget:(unsigned int)target
{
  if ((target & 2) != 0)
  {
    if (![(RadiosPreferences *)self notifyForExternalChangeOnly]|| !self->_applySkipCount)
    {
      if (self->_delegate)
      {
        [(RadiosPreferences *)self refresh];
        [(RadiosPreferencesDelegate *)self->_delegate airplaneModeChanged];
        [(RadiosPreferences *)self synchronize];
      }
    }

    applySkipCount = self->_applySkipCount;
    v5 = __OFSUB__(applySkipCount, 1);
    v6 = applySkipCount - 1;
    if (v6 < 0 == v5)
    {
      self->_applySkipCount = v6;
    }
  }
}

- (void)getValueWithLockForKey:(id)key
{
  if (!SCPreferencesLock(self->_prefs, 1u))
  {
    if (SCError() != 3005)
    {
      return 0;
    }

    SCPreferencesSynchronize(self->_prefs);
    if (!SCPreferencesLock(self->_prefs, 1u))
    {
      return 0;
    }
  }

  Value = SCPreferencesGetValue(self->_prefs, key);
  SCPreferencesUnlock(self->_prefs);
  return Value;
}

- (void)setValue:(void *)value forKey:(id)key
{
  if (SCPreferencesLock(self->_prefs, 1u) || SCError() == 3005 && (SCPreferencesSynchronize(self->_prefs), SCPreferencesLock(self->_prefs, 1u)))
  {
    if (SCPreferencesSetValue(self->_prefs, key, value) && SCPreferencesCommitChanges(self->_prefs) && SCPreferencesApplyChanges(self->_prefs))
    {
      ++self->_applySkipCount;
      [(RadiosPreferences *)self synchronize];
    }

    prefs = self->_prefs;

    SCPreferencesUnlock(prefs);
  }
}

- (void)setAirplaneModeInNSS:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_fault_impl(&dword_195E6C000, a2, OS_LOG_TYPE_FAULT, "Call to NanoSystemSettings to %d airplane mode timed out", v2, 8u);
}

@end