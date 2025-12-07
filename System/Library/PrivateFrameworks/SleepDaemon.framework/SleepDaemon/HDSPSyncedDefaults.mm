@interface HDSPSyncedDefaults
- (BOOL)hksp_BOOLForKey:(id)key;
- (BOOL)syncDisabled;
- (HDSPSyncedDefaults)initWithEnvironment:(id)environment configuration:(id)configuration;
- (HDSPSyncedDefaults)initWithEnvironment:(id)environment configuration:(id)configuration nanoDefaultsProvider:(id)provider cloudDefaultsProvider:(id)defaultsProvider throttleInterval:(double)interval;
- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate;
- (float)hksp_floatForKey:(id)key;
- (id)_cloudDefaultsProvider;
- (id)_defaultsForKey:(id)key;
- (id)_nanoDefaultsProvider;
- (id)hksp_dataForKey:(id)key;
- (id)hksp_dictionaryRepresentation;
- (id)hksp_dictionaryRepresentationForKeys:(id)keys;
- (id)hksp_objectForKey:(id)key;
- (int64_t)hksp_integerForKey:(id)key;
- (void)_cloudDefaultsDidReceiveExternalChange;
- (void)_cloudDefaultsDidReceiveExternalChangeForKeys:(id)keys;
- (void)_differentialCloudKitSync;
- (void)_differentialCloudKitSyncForKeySet:(id)set;
- (void)_hksp_synchronizeKeys:(id)keys;
- (void)_initialCloudKitSync;
- (void)_nanoDefaultsDidReceiveExternalChange;
- (void)_nanoDefaultsDidReceiveExternalChangeForKeys:(id)keys;
- (void)_setDefaultForKey:(id)key setBlock:(id)block syncToCloudKit:(BOOL)kit;
- (void)_syncCloudKitToLocal;
- (void)_syncKeysFromCloudKit:(id)kit;
- (void)_syncKeysToCloudKit:(id)kit;
- (void)_syncLocalToCloudKit;
- (void)_throttled_synchronizeKeys:(id)keys;
- (void)_withLock:(id)lock;
- (void)hdsp_forceSynchronizeWithCompletion:(id)completion;
- (void)hdsp_setExternalChangeDelegate:(id)delegate;
- (void)hksp_removeObjectForKey:(id)key;
- (void)hksp_removeObjectsForKeys:(id)keys syncToCloudKit:(BOOL)kit;
- (void)hksp_saveDictionary:(id)dictionary syncToCloudKit:(BOOL)kit;
- (void)hksp_setBool:(BOOL)bool forKey:(id)key;
- (void)hksp_setFloat:(float)float forKey:(id)key;
- (void)hksp_setInteger:(int64_t)integer forKey:(id)key;
- (void)hksp_setObject:(id)object forKey:(id)key;
- (void)hksp_synchronize;
- (void)resetCloudData;
- (void)saveCloudDataVersion;
- (void)saveDataVersion;
- (void)syncedUserDefaults:(id)defaults didChangeExternallyForKeys:(id)keys;
- (void)syncedUserDefaultsDidChangeExternally:(id)externally;
@end

@implementation HDSPSyncedDefaults

- (id)_nanoDefaultsProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSPSyncedDefaults__nanoDefaultsProvider__block_invoke;
  v4[3] = &unk_279C7C310;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

HDSPNanoDefaults *__43__HDSPSyncedDefaults__nanoDefaultsProvider__block_invoke(uint64_t a1)
{
  v2 = [HDSPNanoDefaults alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [(HDSPNanoDefaults *)v2 initWithEnvironment:WeakRetained configuration:*(*(a1 + 32) + 16)];

  return v4;
}

- (id)_cloudDefaultsProvider
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__HDSPSyncedDefaults__cloudDefaultsProvider__block_invoke;
  v4[3] = &unk_279C7C310;
  v4[4] = self;
  v2 = MEMORY[0x26D64B6C0](v4, a2);

  return v2;
}

HDSPCloudDefaults *__44__HDSPSyncedDefaults__cloudDefaultsProvider__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained behavior];
  v4 = [v3 features];
  v5 = [v4 sleepCloudKitSync];

  if (v5)
  {
    v6 = [HDSPCloudDefaults alloc];
    v7 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v8 = [(HDSPCloudDefaults *)v6 initWithEnvironment:v7 configuration:*(*(a1 + 32) + 16)];
  }

  else
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v10 = v13;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] cloud sync is disabled", &v12, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (HDSPSyncedDefaults)initWithEnvironment:(id)environment configuration:(id)configuration
{
  configurationCopy = configuration;
  environmentCopy = environment;
  _nanoDefaultsProvider = [(HDSPSyncedDefaults *)self _nanoDefaultsProvider];
  _cloudDefaultsProvider = [(HDSPSyncedDefaults *)self _cloudDefaultsProvider];
  v10 = [(HDSPSyncedDefaults *)self initWithEnvironment:environmentCopy configuration:configurationCopy nanoDefaultsProvider:_nanoDefaultsProvider cloudDefaultsProvider:_cloudDefaultsProvider throttleInterval:0.25];

  return v10;
}

- (HDSPSyncedDefaults)initWithEnvironment:(id)environment configuration:(id)configuration nanoDefaultsProvider:(id)provider cloudDefaultsProvider:(id)defaultsProvider throttleInterval:(double)interval
{
  environmentCopy = environment;
  configurationCopy = configuration;
  providerCopy = provider;
  defaultsProviderCopy = defaultsProvider;
  v36.receiver = self;
  v36.super_class = HDSPSyncedDefaults;
  v16 = [(HDSPSyncedDefaults *)&v36 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_environment, environmentCopy);
    objc_storeStrong(&v17->_configuration, configuration);
    userDefaults = [environmentCopy userDefaults];
    localDefaults = v17->_localDefaults;
    v17->_localDefaults = userDefaults;

    v20 = providerCopy[2](providerCopy);
    nanoDefaults = v17->_nanoDefaults;
    v17->_nanoDefaults = v20;

    v22 = defaultsProviderCopy[2](defaultsProviderCopy);
    cloudDefaults = v17->_cloudDefaults;
    v17->_cloudDefaults = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    keysNeedingSynchronize = v17->_keysNeedingSynchronize;
    v17->_keysNeedingSynchronize = v24;

    objc_initWeak(&location, v17);
    v26 = objc_alloc(MEMORY[0x277D623F8]);
    v33 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v34, &location);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    mutexGenerator = [environmentCopy mutexGenerator];
    v29 = [v26 initWithInterval:&v33 updateBlock:defaultCallbackScheduler scheduler:mutexGenerator mutexGenerator:interval];
    syncAccumulator = v17->_syncAccumulator;
    v17->_syncAccumulator = v29;

    v17->_lock._os_unfair_lock_opaque = 0;
    v31 = v17;
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v17;
}

void __116__HDSPSyncedDefaults_initWithEnvironment_configuration_nanoDefaultsProvider_cloudDefaultsProvider_throttleInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _throttled_synchronizeKeys:v3];
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_lock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)syncDisabled
{
  selfCopy = self;
  info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  cloudSyncEnabledKey = [info cloudSyncEnabledKey];
  LOBYTE(selfCopy) = [(HDSPSyncedDefaults *)selfCopy hksp_BOOLForKey:cloudSyncEnabledKey];

  return selfCopy ^ 1;
}

- (id)hksp_dictionaryRepresentation
{
  allKeysToPersist = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToPersist];
  v4 = [(HDSPSyncedDefaults *)self hksp_dictionaryRepresentationForKeys:allKeysToPersist];

  return v4;
}

- (id)hksp_dictionaryRepresentationForKeys:(id)keys
{
  v62 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allDefaultValues = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allDefaultValues];
  allPerGizmoKeys = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allPerGizmoKeys];
  v41 = keysCopy;
  v6 = [keysCopy na_setByRemovingObjectsFromSet:allPerGizmoKeys];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
  v42 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v51;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v50 + 1) + 8 * i);
        v12 = [(HKSPUserDefaults *)self->_localDefaults hksp_objectForKey:v11];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        else
        {
          v13 = [allDefaultValues objectForKeyedSubscript:v11];
          if (v13)
          {
            v14 = HKSPLogForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = objc_opt_class();
              *buf = 138543874;
              v56 = v15;
              v57 = 2114;
              v58 = v13;
              v59 = 2114;
              v60 = v11;
              v16 = v15;
              _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading default value %{public}@ for key: %{public}@", buf, 0x20u);

              v6 = v42;
            }

            [v5 setObject:v13 forKeyedSubscript:v11];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v8);
  }

  [v41 na_setByIntersectingWithSet:allPerGizmoKeys];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v49 = 0u;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v17)
  {
    v18 = v17;
    v45 = *v47;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * j);
        v21 = HKSPLogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = objc_opt_class();
          *buf = 138543618;
          v56 = v22;
          v57 = 2114;
          v58 = v20;
          v23 = v22;
          _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading value for per-gizmo key: %{public}@", buf, 0x16u);
        }

        v24 = [(HDSPSyncedUserDefaults *)self->_nanoDefaults hksp_objectForKey:v20];
        v25 = HKSPLogForCategory();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          if (v26)
          {
            v27 = objc_opt_class();
            *buf = 138543874;
            v56 = v27;
            v57 = 2114;
            v58 = v24;
            v59 = 2114;
            v60 = v20;
            v28 = v27;
            _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading value %{public}@ for per-gizmo key: %{public}@", buf, 0x20u);
          }

          [v5 setObject:v24 forKeyedSubscript:v20];
        }

        else
        {
          if (v26)
          {
            v29 = objc_opt_class();
            *buf = 138543618;
            v56 = v29;
            v57 = 2114;
            v58 = v20;
            v30 = v29;
            _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] found nil value for per-gizmo key: %{public}@", buf, 0x16u);
          }

          v31 = [allDefaultValues objectForKeyedSubscript:v20];
          v32 = HKSPLogForCategory();
          v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          if (v31)
          {
            if (v33)
            {
              v34 = objc_opt_class();
              *buf = 138543874;
              v56 = v34;
              v57 = 2114;
              v58 = v31;
              v59 = 2114;
              v60 = v20;
              v35 = v34;
              _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] loading default value %{public}@ for per-gizmo key: %{public}@", buf, 0x20u);
            }

            [v5 setObject:v31 forKeyedSubscript:v20];
          }

          else
          {
            if (v33)
            {
              v36 = objc_opt_class();
              *buf = 138543618;
              v56 = v36;
              v57 = 2114;
              v58 = v20;
              v37 = v36;
              _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] no default value for per-gizmo key: %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v18);
  }

  v38 = [v5 copy];

  return v38;
}

- (void)hksp_saveDictionary:(id)dictionary syncToCloudKit:(BOOL)kit
{
  kitCopy = kit;
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [dictionaryCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [dictionaryCopy objectForKeyedSubscript:v11];
        v13 = HKSPNilify();

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __57__HDSPSyncedDefaults_hksp_saveDictionary_syncToCloudKit___block_invoke;
        v15[3] = &unk_279C7C360;
        v16 = v13;
        v17 = v11;
        v14 = v13;
        [(HDSPSyncedDefaults *)self _setDefaultForKey:v11 setBlock:v15 syncToCloudKit:kitCopy];
      }

      v8 = [dictionaryCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)hksp_removeObjectsForKeys:(id)keys syncToCloudKit:(BOOL)kit
{
  v15 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(keysCopy);
        }

        [HDSPSyncedDefaults _setDefaultForKey:"_setDefaultForKey:setBlock:syncToCloudKit:" setBlock:? syncToCloudKit:?];
      }

      v7 = [keysCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_setDefaultForKey:(id)key setBlock:(id)block syncToCloudKit:(BOOL)kit
{
  kitCopy = kit;
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  blockCopy = block;
  if ([(HDSPSyncedDefaultsConfiguration *)self->_configuration shouldPersistKey:keyCopy])
  {
    v10 = [(HDSPSyncedDefaults *)self _defaultsForKey:keyCopy];
    blockCopy[2](blockCopy, v10);
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    behavior = [WeakRetained behavior];
    features = [behavior features];
    sleepCloudKitSync = [features sleepCloudKitSync];

    if (!sleepCloudKitSync)
    {
LABEL_11:
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __64__HDSPSyncedDefaults__setDefaultForKey_setBlock_syncToCloudKit___block_invoke;
      v25[3] = &unk_279C7B2D0;
      v25[4] = self;
      v26 = keyCopy;
      [(HDSPSyncedDefaults *)self _withLock:v25];

      goto LABEL_12;
    }

    if ([(HDSPSyncedDefaults *)self syncDisabled])
    {
      v15 = HKSPLogForCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 138543362;
      v28 = objc_opt_class();
      v16 = v28;
      v17 = "[%{public}@] not syncing to CloudKit because sync disabled";
    }

    else
    {
      if (![(HDSPSyncedDefaults *)self needsInitialSync])
      {
        info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
        cloudSyncEnabledKey = [info cloudSyncEnabledKey];
        v20 = [keyCopy isEqualToString:cloudSyncEnabledKey];

        if (v20)
        {
          v21 = HKSPLogForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = objc_opt_class();
            v22 = v28;
            _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] sync now enabled, syncing from CloudKit", buf, 0xCu);
          }

          [(HDSPSyncedDefaults *)self setNeedsSyncFromCloud:1];
        }

        else if (kitCopy && [(HDSPSyncedDefaultsConfiguration *)self->_configuration shouldSyncKey:keyCopy])
        {
          v23 = HKSPLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v28 = objc_opt_class();
            v29 = 2112;
            v30 = keyCopy;
            v24 = v28;
            _os_log_impl(&dword_269B11000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing key to CloudKit: %@", buf, 0x16u);
          }

          blockCopy[2](blockCopy, self->_cloudDefaults);
        }

        goto LABEL_11;
      }

      v15 = HKSPLogForCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 138543362;
      v28 = objc_opt_class();
      v16 = v28;
      v17 = "[%{public}@] not syncing to CloudKit because initial sync needed";
    }

    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

    goto LABEL_10;
  }

LABEL_12:
}

- (void)hdsp_forceSynchronizeWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = objc_opt_class();
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] doing a full CloudKit sync", buf, 0xCu);
  }

  cloudDefaults = self->_cloudDefaults;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDSPSyncedDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke;
  v9[3] = &unk_279C7C3B0;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HDSPSyncedUserDefaults *)cloudDefaults hdsp_forceSynchronizeWithCompletion:v9];
}

void __58__HDSPSyncedDefaults_hdsp_forceSynchronizeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) setNeedsInitialSync:a2 ^ 1];
  if ((a2 ^ 1))
  {
    v6 = HKSPLogForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v5;
    v7 = v10;
    _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] full CloudKit sync failed: %{public}@", &v9, 0x16u);
    goto LABEL_4;
  }

  [*(a1 + 32) _initialCloudKitSync];
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] full CloudKit sync completed", &v9, 0xCu);
LABEL_4:
  }

LABEL_6:

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v5, v8);
}

- (void)hdsp_setExternalChangeDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = delegateCopy;
    v6 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] hdsp_setExternalChangeDelegate %{public}@", &v7, 0x16u);
  }

  [(HDSPSyncedDefaults *)self setDelegate:delegateCopy];
  [(HDSPSyncedUserDefaults *)self->_nanoDefaults hdsp_setExternalChangeDelegate:self];
  [(HDSPSyncedUserDefaults *)self->_cloudDefaults hdsp_setExternalChangeDelegate:self];
}

- (id)_defaultsForKey:(id)key
{
  configuration = self->_configuration;
  keyCopy = key;
  allPerGizmoKeys = [(HDSPSyncedDefaultsConfiguration *)configuration allPerGizmoKeys];
  v7 = [allPerGizmoKeys containsObject:keyCopy];

  v8 = 24;
  if (v7)
  {
    v8 = 32;
  }

  v9 = *(&self->super.isa + v8);
  v10 = v9;

  return v9;
}

- (id)hksp_objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(HDSPSyncedDefaults *)self _defaultsForKey:keyCopy];
  v6 = [v5 hksp_objectForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    allDefaultValues = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allDefaultValues];
    v8 = [allDefaultValues objectForKeyedSubscript:keyCopy];
  }

  return v8;
}

- (void)hksp_setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HDSPSyncedDefaults_hksp_setObject_forKey___block_invoke;
  v10[3] = &unk_279C7C360;
  v11 = objectCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = objectCopy;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v8 setBlock:v10];
}

- (void)hksp_removeObjectForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__HDSPSyncedDefaults_hksp_removeObjectForKey___block_invoke;
  v6[3] = &unk_279C7C388;
  v7 = keyCopy;
  v5 = keyCopy;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v5 setBlock:v6];
}

- (BOOL)hksp_BOOLForKey:(id)key
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)hksp_setBool:(BOOL)bool forKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HDSPSyncedDefaults_hksp_setBool_forKey___block_invoke;
  v8[3] = &unk_279C7C3D8;
  boolCopy = bool;
  v9 = keyCopy;
  v7 = keyCopy;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (float)hksp_floatForKey:(id)key
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (void)hksp_setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HDSPSyncedDefaults_hksp_setFloat_forKey___block_invoke;
  v8[3] = &unk_279C7C400;
  floatCopy = float;
  v9 = keyCopy;
  v7 = keyCopy;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (int64_t)hksp_integerForKey:(id)key
{
  v3 = [(HDSPSyncedDefaults *)self hksp_objectForKey:key];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)hksp_setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HDSPSyncedDefaults_hksp_setInteger_forKey___block_invoke;
  v8[3] = &unk_279C7C428;
  v9 = keyCopy;
  integerCopy = integer;
  v7 = keyCopy;
  [(HDSPSyncedDefaults *)self _setDefaultForKey:v7 setBlock:v8];
}

- (id)hksp_dataForKey:(id)key
{
  keyCopy = key;
  v5 = [(HDSPSyncedDefaults *)self _defaultsForKey:keyCopy];
  v6 = [v5 hksp_dataForKey:keyCopy];

  return v6;
}

- (void)hksp_synchronize
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__11;
  v8 = __Block_byref_object_dispose__11;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__HDSPSyncedDefaults_hksp_synchronize__block_invoke;
  v3[3] = &unk_279C7B678;
  v3[4] = self;
  v3[5] = &v4;
  [(HDSPSyncedDefaults *)self _withLock:v3];
  [(HDSPSyncedDefaults *)self _hksp_synchronizeKeys:v5[5]];
  _Block_object_dispose(&v4, 8);
}

uint64_t __38__HDSPSyncedDefaults_hksp_synchronize__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 48) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)_hksp_synchronizeKeys:(id)keys
{
  v13[2] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  [(HDSPSyncedDefaults *)self saveDataVersion];
  [(HDSPSyncedDefaults *)self saveCloudDataVersion];
  info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  dataVersionKey = [info dataVersionKey];
  v13[0] = dataVersionKey;
  info2 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  cloudDataVersionKey = [info2 cloudDataVersionKey];
  v13[1] = cloudDataVersionKey;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [keysCopy setByAddingObjectsFromArray:v9];

  syncAccumulator = self->_syncAccumulator;
  allObjects = [v10 allObjects];
  [(HKSPAccumulator *)syncAccumulator accumulateValues:allObjects];
}

- (void)_throttled_synchronizeKeys:(id)keys
{
  v22 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = objc_opt_class();
    v20 = 2114;
    v21 = keysCopy;
    v6 = v19;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] synchronizing keys: %{public}@", buf, 0x16u);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronizeKeys:keysCopy];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  supportsNanoSync = [behavior supportsNanoSync];

  if (supportsNanoSync)
  {
    [(HDSPSyncedUserDefaults *)self->_nanoDefaults hksp_synchronizeKeys:keysCopy];
  }

  delegate = objc_loadWeakRetained(&self->_environment);
  behavior2 = [delegate behavior];
  features = [behavior2 features];
  if (![features sleepCloudKitSync])
  {

    goto LABEL_10;
  }

  syncDisabled = [(HDSPSyncedDefaults *)self syncDisabled];

  if (!syncDisabled)
  {
    if ([(HDSPSyncedDefaults *)self needsInitialSync])
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke;
      v17[3] = &unk_279C7C0C8;
      v17[4] = self;
      [(HDSPSyncedDefaults *)self hdsp_forceSynchronizeWithCompletion:v17];
      goto LABEL_11;
    }

    if (![(HDSPSyncedDefaults *)self needsSyncFromCloud])
    {
      [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_synchronizeKeys:keysCopy];
      goto LABEL_11;
    }

    [(HDSPSyncedDefaults *)self setNeedsSyncFromCloud:0];
    [(HDSPSyncedDefaults *)self _syncCloudKitToLocal];
    delegate = [(HDSPSyncedDefaults *)self delegate];
    [delegate syncedUserDefaultsDidChangeExternally:self];
LABEL_10:
  }

LABEL_11:
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke_2;
  v15[3] = &unk_279C7B2D0;
  v15[4] = self;
  v16 = keysCopy;
  v14 = keysCopy;
  [(HDSPSyncedDefaults *)self _withLock:v15];
}

void __49__HDSPSyncedDefaults__throttled_synchronizeKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 syncedUserDefaultsDidChangeExternally:*(a1 + 32)];
}

- (void)saveDataVersion
{
  v27 = *MEMORY[0x277D85DE8];
  info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  dataVersionKey = [info dataVersionKey];
  v5 = [(HDSPSyncedDefaults *)self hksp_integerForKey:dataVersionKey];

  info2 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  currentDataVersion = [info2 currentDataVersion];

  if (v5 < currentDataVersion)
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543874;
      *&v25[4] = objc_opt_class();
      *&v25[12] = 2048;
      *&v25[14] = v5;
      *&v25[22] = 2048;
      v26 = currentDataVersion;
      v9 = *&v25[4];
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored data version from %lu to %lu", v25, 0x20u);
    }

    info3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    dataVersionKey2 = [info3 dataVersionKey];
    [(HDSPSyncedDefaults *)self hksp_setInteger:currentDataVersion forKey:dataVersionKey2];

LABEL_5:
    goto LABEL_9;
  }

  if (v5 > currentDataVersion)
  {
    info3 = HKSPLogForCategory();
    if (os_log_type_enabled(info3, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138543874;
      *&v25[4] = objc_opt_class();
      *&v25[12] = 2048;
      *&v25[14] = v5;
      *&v25[22] = 2048;
      v26 = currentDataVersion;
      v12 = *&v25[4];
      _os_log_impl(&dword_269B11000, info3, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored data version from %lu to %lu", v25, 0x20u);
    }

    goto LABEL_5;
  }

LABEL_9:
  v13 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info:*v25];
  localDataVersionKey = [v13 localDataVersionKey];
  v15 = [(HDSPSyncedDefaults *)self hksp_integerForKey:localDataVersionKey];

  info4 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
  currentLocalDataVersion = [info4 currentLocalDataVersion];

  if (v15 < currentLocalDataVersion)
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *v25 = 138543874;
      *&v25[4] = v19;
      *&v25[12] = 2048;
      *&v25[14] = v15;
      *&v25[22] = 2048;
      v26 = currentLocalDataVersion;
      v20 = v19;
      _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored local data version from %lu to %lu", v25, 0x20u);
    }

    info5 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    localDataVersionKey2 = [info5 localDataVersionKey];
    [(HDSPSyncedDefaults *)self hksp_setInteger:currentLocalDataVersion forKey:localDataVersionKey2];

LABEL_13:
    return;
  }

  if (v15 > currentLocalDataVersion)
  {
    info5 = HKSPLogForCategory();
    if (os_log_type_enabled(info5, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      *v25 = 138543874;
      *&v25[4] = v23;
      *&v25[12] = 2048;
      *&v25[14] = v15;
      *&v25[22] = 2048;
      v26 = currentLocalDataVersion;
      v24 = v23;
      _os_log_impl(&dword_269B11000, info5, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored local data version from %lu to %lu", v25, 0x20u);
    }

    goto LABEL_13;
  }
}

- (void)saveCloudDataVersion
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  if (sleepCloudKitSync && ![(HDSPSyncedDefaults *)self syncDisabled]&& ![(HDSPSyncedDefaults *)self needsInitialSync])
  {
    info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    cloudDataVersionKey = [info cloudDataVersionKey];
    v9 = [(HDSPSyncedDefaults *)self hksp_integerForKey:cloudDataVersionKey];

    info2 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    currentCloudDataVersion = [info2 currentCloudDataVersion];

    if (v9 < currentCloudDataVersion)
    {
      v12 = HKSPLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543874;
        v18 = objc_opt_class();
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = currentCloudDataVersion;
        v13 = v18;
        _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] updating stored cloud data version from %lu to %lu", &v17, 0x20u);
      }

      info3 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
      cloudDataVersionKey2 = [info3 cloudDataVersionKey];
      [(HDSPSyncedDefaults *)self hksp_setInteger:currentCloudDataVersion forKey:cloudDataVersionKey2];

LABEL_8:
      return;
    }

    if (v9 > currentCloudDataVersion)
    {
      info3 = HKSPLogForCategory();
      if (os_log_type_enabled(info3, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543874;
        v18 = objc_opt_class();
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = currentCloudDataVersion;
        v16 = v18;
        _os_log_impl(&dword_269B11000, info3, OS_LOG_TYPE_DEFAULT, "[%{public}@] not updating newer stored cloud data version from %lu to %lu", &v17, 0x20u);
      }

      goto LABEL_8;
    }
  }
}

- (void)syncedUserDefaultsDidChangeExternally:(id)externally
{
  externallyCopy = externally;
  v6 = externallyCopy;
  if (self->_nanoDefaults == externallyCopy)
  {
    [(HDSPSyncedDefaults *)self _nanoDefaultsDidReceiveExternalChange];
  }

  else if (self->_cloudDefaults == externallyCopy)
  {
    [(HDSPSyncedDefaults *)self _cloudDefaultsDidReceiveExternalChange];
  }

  delegate = [(HDSPSyncedDefaults *)self delegate];
  [delegate syncedUserDefaultsDidChangeExternally:self];
}

- (void)syncedUserDefaults:(id)defaults didChangeExternallyForKeys:(id)keys
{
  defaultsCopy = defaults;
  keysCopy = keys;
  if (self->_nanoDefaults == defaultsCopy)
  {
    [(HDSPSyncedDefaults *)self _nanoDefaultsDidReceiveExternalChangeForKeys:keysCopy];
  }

  else if (self->_cloudDefaults == defaultsCopy)
  {
    [(HDSPSyncedDefaults *)self _cloudDefaultsDidReceiveExternalChangeForKeys:keysCopy];
  }

  delegate = [(HDSPSyncedDefaults *)self delegate];
  v8 = objc_opt_respondsToSelector();

  delegate2 = [(HDSPSyncedDefaults *)self delegate];
  v10 = delegate2;
  if (v8)
  {
    [delegate2 syncedUserDefaults:self didChangeExternallyForKeys:keysCopy];
  }

  else
  {
    [delegate2 syncedUserDefaultsDidChangeExternally:self];
  }
}

- (void)_nanoDefaultsDidReceiveExternalChange
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _nanoDefaultsDidReceiveExternalChange", &v8, 0xCu);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronize];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    [(HDSPSyncedDefaults *)self _differentialCloudKitSync];
  }
}

- (void)_nanoDefaultsDidReceiveExternalChangeForKeys:(id)keys
{
  v14 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = keysCopy;
    v6 = v11;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _nanoDefaultsDidReceiveExternalChangeForKeys: %{public}@", &v10, 0x16u);
  }

  [(HKSPUserDefaults *)self->_localDefaults hksp_synchronizeKeys:keysCopy];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  isAppleWatch = [behavior isAppleWatch];

  if ((isAppleWatch & 1) == 0)
  {
    [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:keysCopy];
  }
}

- (void)_cloudDefaultsDidReceiveExternalChange
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _cloudDefaultsDidReceiveExternalChange", &v5, 0xCu);
  }

  [(HDSPSyncedDefaults *)self _differentialCloudKitSync];
}

- (void)_cloudDefaultsDidReceiveExternalChangeForKeys:(id)keys
{
  v11 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = objc_opt_class();
    v9 = 2114;
    v10 = keysCopy;
    v6 = v8;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _cloudDefaultsDidReceiveExternalChangeForKeys: %{public}@", &v7, 0x16u);
  }

  [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:keysCopy];
}

- (void)_initialCloudKitSync
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  if (sleepCloudKitSync && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    [(HDSPSyncedDefaults *)self setNeedsInitialSync:0];
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138543362;
      v24 = objc_opt_class();
      v8 = v24;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing initial sync", &v23, 0xCu);
    }

    cloudDefaults = self->_cloudDefaults;
    info = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    cloudDataVersionKey = [info cloudDataVersionKey];
    v12 = [(HDSPSyncedUserDefaults *)cloudDefaults hksp_integerForKey:cloudDataVersionKey];

    localDefaults = self->_localDefaults;
    info2 = [(HDSPSyncedDefaultsConfiguration *)self->_configuration info];
    cloudDataVersionKey2 = [info2 cloudDataVersionKey];
    v16 = [(HKSPUserDefaults *)localDefaults hksp_integerForKey:cloudDataVersionKey2];

    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v23 = 138543618;
      v24 = v18;
      v25 = 2048;
      v26 = v12;
      v19 = v18;
      _os_log_impl(&dword_269B11000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] serverCloudKitDataVersion %lu", &v23, 0x16u);
    }

    v20 = HKSPLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v23 = 138543618;
      v24 = v21;
      v25 = 2048;
      v26 = v16;
      v22 = v21;
      _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] localCloudKitDataVersion %lu", &v23, 0x16u);
    }

    if (v12 | v16)
    {
      if (v12)
      {
        if (!v16)
        {
          [(HDSPSyncedDefaults *)self _syncCloudKitToLocal];
        }
      }
    }

    else
    {
      [(HDSPSyncedDefaults *)self _syncLocalToCloudKit];
    }
  }
}

- (void)_syncLocalToCloudKit
{
  allKeysToSync = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToSync];
  [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:allKeysToSync];
}

- (void)_syncKeysToCloudKit:(id)kit
{
  v26 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  if (sleepCloudKitSync && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = kitCopy;
      v10 = v23;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing to CloudKit: %{public}@", &v22, 0x16u);
    }

    v11 = [(HDSPSyncedDefaults *)self hksp_dictionaryRepresentationForKeys:kitCopy];
    v12 = MEMORY[0x277CBEB98];
    allKeys = [v11 allKeys];
    v14 = [v12 setWithArray:allKeys];
    v15 = [kitCopy na_setByRemovingObjectsFromSet:v14];

    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_saveDictionary:v11];
    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_removeObjectsForKeys:v15];
    [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_synchronizeKeys:kitCopy];
    [(HDSPSyncedDefaults *)self saveCloudDataVersion];
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v22 = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v11;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] updates: %{public}@", &v22, 0x16u);
    }

    v19 = HKSPLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v22 = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v15;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] removes: %{public}@", &v22, 0x16u);
    }
  }
}

- (void)_syncCloudKitToLocal
{
  allKeysToSync = [(HDSPSyncedDefaultsConfiguration *)self->_configuration allKeysToSync];
  [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:allKeysToSync];
}

- (void)_syncKeysFromCloudKit:(id)kit
{
  v26 = *MEMORY[0x277D85DE8];
  kitCopy = kit;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  if (sleepCloudKitSync && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = objc_opt_class();
      v24 = 2114;
      v25 = kitCopy;
      v10 = v23;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] syncing from CloudKit: %{public}@", &v22, 0x16u);
    }

    v11 = [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_dictionaryRepresentationForKeys:kitCopy];
    v12 = MEMORY[0x277CBEB98];
    allKeys = [v11 allKeys];
    v14 = [v12 setWithArray:allKeys];
    v15 = [kitCopy na_setByRemovingObjectsFromSet:v14];

    [(HDSPSyncedDefaults *)self hksp_saveDictionary:v11 syncToCloudKit:0];
    [(HDSPSyncedDefaults *)self hksp_removeObjectsForKeys:v15 syncToCloudKit:0];
    [(HDSPSyncedDefaults *)self hksp_synchronizeKeys:kitCopy];
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v22 = 138543618;
      v23 = v17;
      v24 = 2114;
      v25 = v11;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] updates: %{public}@", &v22, 0x16u);
    }

    v19 = HKSPLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v22 = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v15;
      v21 = v20;
      _os_log_impl(&dword_269B11000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] removes: %{public}@", &v22, 0x16u);
    }
  }
}

- (void)_differentialCloudKitSync
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  features = [behavior features];
  sleepCloudKitSync = [features sleepCloudKitSync];

  if (sleepCloudKitSync && ![(HDSPSyncedDefaults *)self syncDisabled])
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v8 = v12;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] performing differential sync", buf, 0xCu);
    }

    keySets = [(HDSPSyncedDefaultsConfiguration *)self->_configuration keySets];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__HDSPSyncedDefaults__differentialCloudKitSync__block_invoke;
    v10[3] = &unk_279C7C450;
    v10[4] = self;
    [keySets na_each:v10];
  }
}

- (void)_differentialCloudKitSyncForKeySet:(id)set
{
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [setCopy identifier];
    v28 = 138543618;
    v29 = v6;
    v30 = 2114;
    v31 = identifier;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] looking at keySet: %{public}@", &v28, 0x16u);
  }

  cloudDefaults = self->_cloudDefaults;
  modificationDateKey = [setCopy modificationDateKey];
  v11 = [(HDSPSyncedUserDefaults *)cloudDefaults hksp_objectForKey:modificationDateKey];

  localDefaults = self->_localDefaults;
  modificationDateKey2 = [setCopy modificationDateKey];
  v14 = [(HKSPUserDefaults *)localDefaults hksp_objectForKey:modificationDateKey2];

  v15 = HKSPLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v28 = 138543618;
    v29 = v16;
    v30 = 2114;
    v31 = v14;
    v17 = v16;
    _os_log_impl(&dword_269B11000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] local last modified: %{public}@", &v28, 0x16u);
  }

  v18 = HKSPLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    v28 = 138543618;
    v29 = v19;
    v30 = 2114;
    v31 = v11;
    v20 = v19;
    _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] server last modified: %{public}@", &v28, 0x16u);
  }

  if ((NAEqualObjects() & 1) == 0)
  {
    if (v11 && ![v14 hksp_isAfterDate:v11])
    {
      v25 = HKSPLogForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v28 = 138543362;
        v29 = v26;
        v27 = v26;
        _os_log_impl(&dword_269B11000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] server modified later, syncing from CloudKit", &v28, 0xCu);
      }

      keysToSync = [setCopy keysToSync];
      [(HDSPSyncedDefaults *)self _syncKeysFromCloudKit:keysToSync];
    }

    else
    {
      v21 = HKSPLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v28 = 138543362;
        v29 = v22;
        v23 = v22;
        _os_log_impl(&dword_269B11000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] local modified later, syncing to CloudKit", &v28, 0xCu);
      }

      keysToSync = [setCopy keysToSync];
      [(HDSPSyncedDefaults *)self _syncKeysToCloudKit:keysToSync];
    }
  }
}

- (void)resetCloudData
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] resetting", &v5, 0xCu);
  }

  [(HDSPSyncedUserDefaults *)self->_cloudDefaults hksp_reset];
}

- (HDSPSyncedUserDefaultsExternalChangeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end