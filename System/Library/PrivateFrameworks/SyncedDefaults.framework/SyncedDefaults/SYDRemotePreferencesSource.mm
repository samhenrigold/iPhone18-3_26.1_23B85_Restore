@interface SYDRemotePreferencesSource
- (BOOL)removeObjectForKey:(id)key error:(id *)error;
- (BOOL)setObject:(id)object forKey:(id)key error:(id *)error;
- (SYDRemotePreferencesSource)initWithApplicationID:(__CFString *)d storeID:(__CFString *)iD shared:(BOOL)shared additionalSource:(BOOL)source containerPath:(__CFString *)path storeType:(int64_t)type;
- (__CFDictionary)copyDictionary;
- (id)dictionaryRepresentationWithError:(id *)error;
- (id)objectForKey:(id)key error:(id *)error;
- (unsigned)_synchronizeForced:(unsigned __int8)forced;
- (unsigned)hasExternalChanges;
- (unsigned)synchronize;
- (unsigned)synchronizeForced:(unsigned __int8)forced;
- (void)dealloc;
- (void)getValueForKey:(__CFString *)key;
- (void)ping;
- (void)registerForSynchronizedDefaults;
- (void)scheduleRemoteSynchronization;
- (void)setDefaultsConfiguration:(id)configuration;
- (void)setValue:(void *)value forKey:(__CFString *)key;
- (void)synchronizationWithCompletionHandler:(id)handler;
- (void)unregisterForSynchronizedDefaults;
- (void)updateConfiguration;
@end

@implementation SYDRemotePreferencesSource

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = SYDRemotePreferencesSource;
  [(SYDRemotePreferencesSource *)&v4 dealloc];
}

- (SYDRemotePreferencesSource)initWithApplicationID:(__CFString *)d storeID:(__CFString *)iD shared:(BOOL)shared additionalSource:(BOOL)source containerPath:(__CFString *)path storeType:(int64_t)type
{
  v25 = *MEMORY[0x1E69E9840];
  v12 = SYDGetConnectionLog(self);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = 138412802;
    v20 = v18;
    v21 = 2112;
    dCopy = d;
    v23 = 2112;
    iDCopy = iD;
    _os_log_debug_impl(&dword_1C8626000, v12, OS_LOG_TYPE_DEBUG, "Initializing %@ with applicationID=%@ storeID=%@", &v19, 0x20u);
  }

  iDCopy2 = iD;
  if (iDCopy2 || ([SYDClientToDaemonConnection defaultStoreIdentifierForCurrentProcessWithApplicationIdentifier:d], (iDCopy2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = iDCopy2;
    v15 = [[SYDClientToDaemonConnection alloc] initWithStoreIdentifier:iDCopy2 type:type];
  }

  else
  {
    if (initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType__onceToken != -1)
    {
      [SYDRemotePreferencesSource initWithApplicationID:storeID:shared:additionalSource:containerPath:storeType:];
    }

    v15 = 0;
  }

  return &v15->super;
}

void __108__SYDRemotePreferencesSource_initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType___block_invoke(uint64_t a1)
{
  v1 = SYDGetConnectionLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    __108__SYDRemotePreferencesSource_initWithApplicationID_storeID_shared_additionalSource_containerPath_storeType___block_invoke_cold_1(v1);
  }
}

- (id)objectForKey:(id)key error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:87 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource objectForKey:error:]", v8}];

  return 0;
}

- (void)getValueForKey:(__CFString *)key
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:92 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource getValueForKey:]", v7}];

  return 0;
}

- (BOOL)setObject:(id)object forKey:(id)key error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:97 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setObject:forKey:error:]", v9}];

  return 0;
}

- (BOOL)removeObjectForKey:(id)key error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:102 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource removeObjectForKey:error:]", v8}];

  return 0;
}

- (void)setValue:(void *)value forKey:(__CFString *)key
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:107 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setValue:forKey:]", v7}];
}

- (void)setDefaultsConfiguration:(id)configuration
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:111 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource setDefaultsConfiguration:]", v6}];
}

- (void)scheduleRemoteSynchronization
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:115 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource scheduleRemoteSynchronization]", v5}];
}

- (void)synchronizationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:119 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource synchronizationWithCompletionHandler:]", v8}];

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SYDRemotePreferencesSource_synchronizationWithCompletionHandler___block_invoke;
  block[3] = &unk_1E831A570;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(v9, block);
}

void __67__SYDRemotePreferencesSource_synchronizationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = @"Trying to call a method on an invalid object.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 errorWithDomain:@"SyncedDefaults" code:1040 userInfo:v3];
  (*(v1 + 16))(v1, v4);
}

- (unsigned)synchronize
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:126 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource synchronize]", v6}];

  return 0;
}

- (unsigned)synchronizeForced:(unsigned __int8)forced
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:131 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource synchronizeForced:]", v7}];

  return 0;
}

- (unsigned)_synchronizeForced:(unsigned __int8)forced
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:136 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource _synchronizeForced:]", v7}];

  return 0;
}

- (unsigned)hasExternalChanges
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:141 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource hasExternalChanges]", v6}];

  return 0;
}

- (id)dictionaryRepresentationWithError:(id *)error
{
  copyDictionary = [(SYDRemotePreferencesSource *)self copyDictionary];

  return copyDictionary;
}

- (__CFDictionary)copyDictionary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:156 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource copyDictionary]", v6}];

  return 0;
}

- (void)registerForSynchronizedDefaults
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:161 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource registerForSynchronizedDefaults]", v5}];
}

- (void)unregisterForSynchronizedDefaults
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:165 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource unregisterForSynchronizedDefaults]", v5}];
}

- (void)updateConfiguration
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:169 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource updateConfiguration]", v5}];
}

- (void)ping
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDRemotePreferencesSource.m" lineNumber:173 description:{@"Trying to call %s on invalid class %@", "-[SYDRemotePreferencesSource ping]", v5}];
}

@end