@interface FCRecordSource
+ (BOOL)recognizesRecordID:(id)d inRecordIDPrefixes:(id)prefixes;
+ (id)identifierFromCKRecord:(id)record;
- (BOOL)isRecordStale:(id)stale withCachePolicy:(id)policy;
- (BOOL)recognizesRecordID:(id)d;
- (FCHeldRecords)_deleteRecordsWithWriteLockWithIDs:(FCHeldRecords *)ds;
- (FCRecordSource)init;
- (FCRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d;
- (NSArray)desiredKeys;
- (NSDictionary)experimentalizedKeysByOriginalKey;
- (NSDictionary)localizedExperimentalizedKeysByOriginalKey;
- (NSDictionary)localizedKeysByOriginalKey;
- (NSDictionary)localizedLanguageSpecificKeysByOriginalKey;
- (id)_ckRecordIDFromIdentifier:(uint64_t)identifier;
- (id)_experimentalizedKeysByOriginalKeyForExperimentPostfix:(id)postfix;
- (id)_faultableRecordsWithIdentifiers:(id *)identifiers;
- (id)_fetchErrorForKey:(id)key;
- (id)_identifierFromCKRecordID:(void *)d;
- (id)_localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:(id)d experimentPostfix:(id)postfix;
- (id)_localizedKeysByOriginalKeyForContentStoreFrontID:(id)d;
- (id)_localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:(void *)d languageCode:;
- (id)_prepareForUse;
- (id)_recordFromCKRecord:(void *)record;
- (id)_saveCKRecordsWithWriteLock:(void *)lock updateFetchDateForRecordIdentifiers:(void *)identifiers fetchContext:;
- (id)cachedRecordWithID:(id)d;
- (id)cachedRecordsWithIDs:(id)ds;
- (id)convertRecords:(id)records;
- (id)deleteRecordsWithIDs:(id)ds;
- (id)fetchCoordinator:(id)coordinator fetchOperationForKeys:(id)keys context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority;
- (id)fetchOperationForRecordsWithIDs:(id)ds;
- (id)fetchOperationForRecordsWithIDs:(id)ds ignoreCacheForRecordIDs:(id)iDs;
- (id)interestTokenForRecordIDs:(id)ds;
- (id)jsonEncodableObject;
- (id)recordFromCKRecord:(id)record base:(id)base;
- (id)recordType;
- (id)resolveLocalizableExperimentalizableFieldforKey:(id)key inRecord:(id)record activeExperimentIDKey:(id)dKey;
- (id)savePBRecords:(id)records;
- (id)saveRecords:(id)records;
- (id)storeFilename;
- (id)valueFromCKRecord:(id)record baseKey:(id)key localizedKeys:(id)keys localizedLanguageSpecificKeys:(id)specificKeys;
- (int)pbRecordType;
- (int64_t)storageSize;
- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock;
- (unint64_t)highThresholdDataSizeLimit;
- (unint64_t)lowThresholdDataSizeLimit;
- (unint64_t)storeVersion;
- (void)_deriveDesiredKeys;
- (void)_deriveDesiredKeysIfNeeded;
- (void)addCacheObserver:(id)observer;
- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock;
- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold;
- (void)fetchCoordinator:(id)coordinator addFetchOperation:(id)operation context:(id)context;
- (void)fetchCoordinator:(id)coordinator filterKeysToFetch:(id)fetch isFirstAttempt:(BOOL)attempt context:(id)context;
- (void)forceRefreshDesiredKeys;
- (void)save;
- (void)t_startOverridingExperimentalizableFieldsPostfix:(id)postfix treatmentID:(id)d;
- (void)t_stopOverridingExperimentalizableFieldsPostfixAndTreatmentID;
- (void)updateFetchDateForRecordIDs:(id)ds;
@end

@implementation FCRecordSource

- (NSDictionary)localizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedKeysByOriginalKey = self->_localizedKeysByOriginalKey;

  return localizedKeysByOriginalKey;
}

- (void)_deriveDesiredKeysIfNeeded
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    if (!*(self + 16))
    {
      [(FCRecordSource *)self _deriveDesiredKeys];
    }

    os_unfair_lock_unlock((self + 8));
  }
}

- (void)_deriveDesiredKeys
{
  if (self)
  {
    v2 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v2 contentStoreFrontID];

    v4 = +[FCAppleAccount sharedAccount];
    primaryLanguageCode = [v4 primaryLanguageCode];

    experimentalizableFieldsPostfix = [self experimentalizableFieldsPostfix];
    v36 = contentStoreFrontID;
    v7 = MEMORY[0x1E695DFA8];
    v8 = primaryLanguageCode;
    v9 = experimentalizableFieldsPostfix;
    nonLocalizableKeys = [self nonLocalizableKeys];
    v11 = [v7 setWithArray:nonLocalizableKeys];

    localizableKeys = [self localizableKeys];
    [v11 addObjectsFromArray:localizableKeys];

    v13 = [self _localizedKeysByOriginalKeyForContentStoreFrontID:v36];
    allValues = [v13 allValues];
    [v11 addObjectsFromArray:allValues];

    v15 = +[FCAppleAccount sharedAccount];
    LOBYTE(allValues) = [v15 isContentStoreFrontSupported];

    if ((allValues & 1) == 0)
    {
      alwaysLocalizedKeys = [self alwaysLocalizedKeys];
      [v11 addObjectsFromArray:alwaysLocalizedKeys];
    }

    experimentalizableKeys = [self experimentalizableKeys];
    [v11 addObjectsFromArray:experimentalizableKeys];

    v18 = [self _experimentalizedKeysByOriginalKeyForExperimentPostfix:v9];
    allValues2 = [v18 allValues];
    [v11 addObjectsFromArray:allValues2];

    localizableExperimentalizableKeys = [self localizableExperimentalizableKeys];
    [v11 addObjectsFromArray:localizableExperimentalizableKeys];

    v21 = [self _localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:v36 experimentPostfix:v9];

    allValues3 = [v21 allValues];
    [v11 addObjectsFromArray:allValues3];

    localizableLanguageSpecificKeys = [self localizableLanguageSpecificKeys];
    [v11 addObjectsFromArray:localizableLanguageSpecificKeys];

    v24 = [(FCRecordSource *)self _localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:v36 languageCode:v8];

    allValues4 = [v24 allValues];
    [v11 addObjectsFromArray:allValues4];

    allObjects = [v11 allObjects];

    v27 = self[2];
    self[2] = allObjects;

    v28 = [self _localizedKeysByOriginalKeyForContentStoreFrontID:v36];
    v29 = self[3];
    self[3] = v28;

    v30 = [self _experimentalizedKeysByOriginalKeyForExperimentPostfix:v9];
    v31 = self[4];
    self[4] = v30;

    v32 = [self _localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:v36 experimentPostfix:v9];
    v33 = self[5];
    self[5] = v32;

    v34 = [(FCRecordSource *)self _localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:v36 languageCode:v8];
    v35 = self[6];
    self[6] = v34;
  }
}

- (id)_prepareForUse
{
  if (result)
  {
    v1 = result;
    [result[7] lock];
    if (!v1[13])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = objc_alloc_init(FCKeyValueStoreClassRegistry);
      [(FCKeyValueStoreClassRegistry *)v3 registerClass:objc_opt_class()];
      [(FCKeyValueStoreClassRegistry *)v3 registerClass:objc_opt_class()];
      v4 = +[FCKeyValueStoreSavePolicy defaultPolicy];
      v5 = v1[11];
      if (v5)
      {
        v6 = v1[12];

        if (v6)
        {
          v7 = v1[12];
          v8 = v1[11];
          v9 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:v8 backgroundTaskable:v7];

          v4 = v9;
        }
      }

      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v12 = [bundleIdentifier isEqualToString:@"com.apple.newsd"];

      if (v12)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      v14 = [FCKeyValueStore alloc];
      storeFilename = [v1 storeFilename];
      v16 = v1[9];
      v17 = -[FCKeyValueStore initWithName:directory:version:options:classRegistry:migrator:savePolicy:](v14, "initWithName:directory:version:options:classRegistry:migrator:savePolicy:", storeFilename, v16, [v1 storeVersion], v13, v3, 0, v4);
      v18 = v1[13];
      v1[13] = v17;

      [v1[13] setShouldExportJSONSidecar:1];
      [v1[13] setJSONEncodingHandlersWithObjectHandler:&__block_literal_global_96 arrayObjectHandler:0 dictionaryKeyHandler:0 dictionaryValueHandler:0];
      allKeys = [v1[13] allKeys];
      v20 = [allKeys fc_arrayByRemovingObject:@"cacheHints"];

      v21 = v1[14];
      v22 = [v1[13] objectForKeyedSubscript:@"cacheHints"];
      [v21 setupWithInitialKeys:v20 persistedHints:v22];

      objc_autoreleasePoolPop(v2);
    }

    v23 = v1[7];

    return [v23 unlock];
  }

  return result;
}

- (NSArray)desiredKeys
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  desiredKeys = self->_desiredKeys;

  return desiredKeys;
}

- (NSDictionary)localizedLanguageSpecificKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedLanguageSpecificKeysByOriginalKey = self->_localizedLanguageSpecificKeysByOriginalKey;

  return localizedLanguageSpecificKeysByOriginalKey;
}

- (FCRecordSource)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCRecordSource init]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 114;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCRecordSource init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCRecordSource)initWithContentDatabase:(id)database contentDirectory:(id)directory appActivityMonitor:(id)monitor backgroundTaskable:(id)taskable defaultTTL:(double)l experimentalizableFieldsPostfix:(id)postfix activeTreatmentID:(id)d
{
  v48 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  directoryCopy = directory;
  monitorCopy = monitor;
  taskableCopy = taskable;
  postfixCopy = postfix;
  dCopy = d;
  if (!databaseCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDatabase != nil"];
    *buf = 136315906;
    v41 = "[FCRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v42 = 2080;
    v43 = "FCRecordSource.m";
    v44 = 1024;
    v45 = 125;
    v46 = 2114;
    v47 = v34;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (directoryCopy)
    {
      goto LABEL_6;
    }
  }

  else if (directoryCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentDirectory != nil"];
    *buf = 136315906;
    v41 = "[FCRecordSource initWithContentDatabase:contentDirectory:appActivityMonitor:backgroundTaskable:defaultTTL:experimentalizableFieldsPostfix:activeTreatmentID:]";
    v42 = 2080;
    v43 = "FCRecordSource.m";
    v44 = 1024;
    v45 = 126;
    v46 = 2114;
    v47 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v39.receiver = self;
  v39.super_class = FCRecordSource;
  v20 = [(FCRecordSource *)&v39 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_contentDatabase, database);
    objc_storeStrong(&v21->_contentDirectory, directory);
    lCopy = 1.79769313e308;
    if (l > 0.0)
    {
      lCopy = l;
    }

    v23 = [FCCachePolicy cachePolicyWithSoftMaxAge:lCopy];
    defaultCachePolicy = v21->_defaultCachePolicy;
    v21->_defaultCachePolicy = v23;

    objc_storeStrong(&v21->_appActivityMonitor, monitor);
    objc_storeStrong(&v21->_backgroundTaskable, taskable);
    objc_storeStrong(&v21->_experimentalizableFieldsPostfix, postfix);
    objc_storeStrong(&v21->_activeTreatmentID, d);
    v25 = objc_alloc_init(FCThreadSafeMutableDictionary);
    fetchErrorsByKey = v21->_fetchErrorsByKey;
    v21->_fetchErrorsByKey = v25;

    v27 = objc_alloc_init(MEMORY[0x1E69B6920]);
    initializationLock = v21->_initializationLock;
    v21->_initializationLock = v27;

    v29 = objc_alloc_init(FCCacheCoordinator);
    cacheCoordinator = v21->_cacheCoordinator;
    v21->_cacheCoordinator = v29;

    [(FCCacheCoordinator *)v21->_cacheCoordinator setDelegate:v21];
    v31 = objc_alloc_init(FCFetchCoordinator);
    fetchCoordinator = v21->_fetchCoordinator;
    v21->_fetchCoordinator = v31;

    [(FCFetchCoordinator *)v21->_fetchCoordinator setDelegate:v21];
    v21->_derivedKeysLock._os_unfair_lock_opaque = 0;
  }

  return v21;
}

- (id)recordType
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource recordType]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 185;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource recordType]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (int)pbRecordType
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource pbRecordType]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 191;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource pbRecordType]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)storeFilename
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource storeFilename]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 197;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource storeFilename]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)storeVersion
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource storeVersion]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 203;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource storeVersion]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)lowThresholdDataSizeLimit
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource lowThresholdDataSizeLimit]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 209;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource lowThresholdDataSizeLimit]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (unint64_t)highThresholdDataSizeLimit
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCRecordSource highThresholdDataSizeLimit]";
    v10 = 2080;
    v11 = "FCRecordSource.m";
    v12 = 1024;
    v13 = 215;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource highThresholdDataSizeLimit]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)recordFromCKRecord:(id)record base:(id)base
{
  v21 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  baseCopy = base;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCRecordSource recordFromCKRecord:base:]";
    v15 = 2080;
    v16 = "FCRecordSource.m";
    v17 = 1024;
    v18 = 226;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCRecordSource recordFromCKRecord:base:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (id)identifierFromCKRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];

  return recordName;
}

- (id)resolveLocalizableExperimentalizableFieldforKey:(id)key inRecord:(id)record activeExperimentIDKey:(id)dKey
{
  dKeyCopy = dKey;
  recordCopy = record;
  keyCopy = key;
  localizedExperimentalizedKeysByOriginalKey = [(FCRecordSource *)self localizedExperimentalizedKeysByOriginalKey];
  v12 = [localizedExperimentalizedKeysByOriginalKey objectForKeyedSubscript:keyCopy];
  v13 = [recordCopy fc_safeObjectForKey:v12];

  experimentalizedKeysByOriginalKey = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v15 = [experimentalizedKeysByOriginalKey objectForKeyedSubscript:keyCopy];
  v16 = [recordCopy fc_safeObjectForKey:v15];

  localizedKeysByOriginalKey = [(FCRecordSource *)self localizedKeysByOriginalKey];
  v18 = [localizedKeysByOriginalKey objectForKeyedSubscript:keyCopy];
  v19 = [recordCopy fc_safeObjectForKey:v18];

  v20 = [recordCopy objectForKeyedSubscript:keyCopy];

  experimentalizedKeysByOriginalKey2 = [(FCRecordSource *)self experimentalizedKeysByOriginalKey];
  v22 = [experimentalizedKeysByOriginalKey2 objectForKeyedSubscript:dKeyCopy];

  v23 = [recordCopy objectForKeyedSubscript:v22];

  v24 = MEMORY[0x1E69E58C0];
  activeTreatmentID = [(FCRecordSource *)self activeTreatmentID];
  v26 = [v24 nf_object:v23 isEqualToObject:activeTreatmentID];

  if (v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = v20;
  }

  if (v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v20;
  }

  if (v19)
  {
    v28 = v19;
  }

  if (v13)
  {
    v28 = v13;
  }

  if (v26)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = v29;

  return v29;
}

- (id)valueFromCKRecord:(id)record baseKey:(id)key localizedKeys:(id)keys localizedLanguageSpecificKeys:(id)specificKeys
{
  v35 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  keyCopy = key;
  keysCopy = keys;
  specificKeysCopy = specificKeys;
  if (!recordCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ckRecord"];
    *buf = 136315906;
    v28 = "[FCRecordSource valueFromCKRecord:baseKey:localizedKeys:localizedLanguageSpecificKeys:]";
    v29 = 2080;
    v30 = "FCRecordSource.m";
    v31 = 1024;
    v32 = 314;
    v33 = 2114;
    v34 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (keyCopy)
    {
      goto LABEL_6;
    }
  }

  else if (keyCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "baseKey"];
    *buf = 136315906;
    v28 = "[FCRecordSource valueFromCKRecord:baseKey:localizedKeys:localizedLanguageSpecificKeys:]";
    v29 = 2080;
    v30 = "FCRecordSource.m";
    v31 = 1024;
    v32 = 315;
    v33 = 2114;
    v34 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13 = [specificKeysCopy objectForKeyedSubscript:keyCopy];
  if (v13)
  {
    v14 = v13;
    v15 = [specificKeysCopy objectForKeyedSubscript:keyCopy];
    v16 = [recordCopy objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = specificKeysCopy;
LABEL_12:
      v22 = [v17 objectForKeyedSubscript:keyCopy];
      v23 = [recordCopy objectForKeyedSubscript:v22];

      goto LABEL_14;
    }
  }

  v18 = [keysCopy objectForKeyedSubscript:keyCopy];
  if (v18)
  {
    v19 = v18;
    v20 = [keysCopy objectForKeyedSubscript:keyCopy];
    v21 = [recordCopy objectForKeyedSubscript:v20];

    if (v21)
    {
      v17 = keysCopy;
      goto LABEL_12;
    }
  }

  v23 = [recordCopy objectForKeyedSubscript:keyCopy];
LABEL_14:

  return v23;
}

- (id)_recordFromCKRecord:(void *)record
{
  v3 = a2;
  if (record)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = MEMORY[0x1E69B6FA0];
    v6 = v3;
    v7 = objc_alloc_init(v5);
    v8 = [objc_opt_class() identifierFromCKRecord:v6];
    [v7 setIdentifier:v8];

    v9 = [objc_opt_class() changeTagFromCKRecord:v6];
    [v7 setChangeTag:v9];

    v10 = [objc_opt_class() modificationDateFromCKRecord:v6];

    pbDate = [v10 pbDate];
    [v7 setModificationDate:pbDate];

    [v7 setRecordType:{objc_msgSend(record, "pbRecordType")}];
    pbDate2 = [MEMORY[0x1E695DF00] pbDate];
    [v7 setFetchDate:pbDate2];
    [v7 setAssetURLsDate:pbDate2];

    record = [record recordFromCKRecord:v6 base:v7];

    objc_autoreleasePoolPop(v4);
  }

  return record;
}

- (NSDictionary)experimentalizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  experimentalizedKeysByOriginalKey = self->_experimentalizedKeysByOriginalKey;

  return experimentalizedKeysByOriginalKey;
}

- (NSDictionary)localizedExperimentalizedKeysByOriginalKey
{
  [(FCRecordSource *)self _deriveDesiredKeysIfNeeded];
  localizedExperimentalizedKeysByOriginalKey = self->_localizedExperimentalizedKeysByOriginalKey;

  return localizedExperimentalizedKeysByOriginalKey;
}

- (id)_localizedLanguageSpecificKeysByOriginalKeyForContentStoreFrontID:(void *)d languageCode:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([v5 length] && objc_msgSend(dCopy, "length"))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    localizableLanguageSpecificKeys = [self localizableLanguageSpecificKeys];
    v9 = [localizableLanguageSpecificKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(localizableLanguageSpecificKeys);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          v14 = FCCKLocalizedLanguageSpecificRecordKey(v13, v5, dCopy);
          [dictionary setObject:v14 forKey:v13];
        }

        v10 = [localizableLanguageSpecificKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  return dictionary;
}

- (id)_localizedKeysByOriginalKeyForContentStoreFrontID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([dCopy length])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    localizableKeys = [(FCRecordSource *)self localizableKeys];
    v7 = [localizableKeys countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(localizableKeys);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = FCCKLocalizedRecordKey(v11, dCopy);
          [dictionary setObject:v12 forKey:v11];
        }

        v8 = [localizableKeys countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    alwaysLocalizedKeys = [(FCRecordSource *)self alwaysLocalizedKeys];
    v14 = [alwaysLocalizedKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(alwaysLocalizedKeys);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          v19 = FCCKLocalizedRecordKey(v18, dCopy);
          [dictionary setObject:v19 forKey:v18];
        }

        v15 = [alwaysLocalizedKeys countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }
  }

  return dictionary;
}

- (id)_experimentalizedKeysByOriginalKeyForExperimentPostfix:(id)postfix
{
  v19 = *MEMORY[0x1E69E9840];
  postfixCopy = postfix;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([postfixCopy length])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    experimentalizableKeys = [(FCRecordSource *)self experimentalizableKeys];
    v7 = [experimentalizableKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(experimentalizableKeys);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = FCCKExperimentizedRecordKey(v11, postfixCopy);
          [dictionary setObject:v12 forKey:v11];
        }

        v8 = [experimentalizableKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return dictionary;
}

- (id)_localizedExperimentalizedKeysByOriginalKeyForContentStoreFrontID:(id)d experimentPostfix:(id)postfix
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  postfixCopy = postfix;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([dCopy length] && objc_msgSend(postfixCopy, "length"))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    localizableExperimentalizableKeys = [(FCRecordSource *)self localizableExperimentalizableKeys];
    v10 = [localizableExperimentalizableKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(localizableExperimentalizableKeys);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = FCCKLocalizedExperimentizedRecordKey(v14, dCopy, postfixCopy);
          [dictionary setObject:v15 forKey:v14];
        }

        v11 = [localizableExperimentalizableKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return dictionary;
}

- (id)fetchOperationForRecordsWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = [FCRecordsFetchOperation alloc];
  selfCopy = self;
  v7 = dsCopy;
  if (v5)
  {
    v12.receiver = v5;
    v12.super_class = FCRecordsFetchOperation;
    v8 = [(FCRecordSource *)&v12 init];
    v5 = v8;
    if (v8)
    {
      objc_storeStrong(&v8[2]._cacheCoordinator, self);
      v9 = [v7 copy];
      recordIdentifiers = v5->_recordIdentifiers;
      v5->_recordIdentifiers = v9;
    }
  }

  return v5;
}

- (id)fetchOperationForRecordsWithIDs:(id)ds ignoreCacheForRecordIDs:(id)iDs
{
  iDsCopy = iDs;
  dsCopy = ds;
  v8 = [FCRecordsFetchOperation alloc];
  selfCopy = self;
  v10 = dsCopy;
  v11 = iDsCopy;
  if (v8)
  {
    v18.receiver = v8;
    v18.super_class = FCRecordsFetchOperation;
    v12 = [(FCRecordSource *)&v18 init];
    v8 = v12;
    if (v12)
    {
      objc_storeStrong(&v12[2]._cacheCoordinator, self);
      v13 = [v10 copy];
      recordIdentifiers = v8->_recordIdentifiers;
      v8->_recordIdentifiers = v13;

      v15 = [v11 copy];
      ignoreCacheForRecordIDs = v8->_ignoreCacheForRecordIDs;
      v8->_ignoreCacheForRecordIDs = v15;
    }
  }

  return v8;
}

- (id)cachedRecordWithID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  if (d)
  {
    dCopy = d;
    v4 = MEMORY[0x1E695DEC8];
    dCopy2 = d;
    v6 = [v4 arrayWithObjects:&dCopy count:1];

    v7 = [(FCRecordSource *)self cachedRecordsWithIDs:v6, dCopy, v12];
    allRecords = [v7 allRecords];
    firstObject = [allRecords firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)cachedRecordsWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    [(FCRecordSource *)&self->super.isa _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokensForKeys:dsCopy];
    array = [MEMORY[0x1E695DF70] array];
    if (self)
    {
      v8 = self->_cacheCoordinator;
    }

    else
    {
      v8 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_2;
    v13[3] = &unk_1E7C376A0;
    v14 = dsCopy;
    selfCopy = self;
    v16 = array;
    v9 = array;
    [(FCCacheCoordinator *)v8 performCacheRead:v13];
    v10 = [v9 fc_dictionaryWithKeyBlock:&__block_literal_global_42 valueBlock:&__block_literal_global_45];
    v11 = [[FCHeldRecords alloc] initWithRecordsByID:v10 interestTokensByID:v6];
  }

  else
  {
    v11 = objc_alloc_init(FCHeldRecords);
  }

  return v11;
}

void __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 112);
        }

        else
        {
          v9 = 0;
        }

        if ([v9 cacheContainsKey:{*(*(&v15 + 1) + 8 * v6), v15}])
        {
          v10 = *(a1 + 40);
          if (v10)
          {
            v11 = *(v10 + 104);
          }

          else
          {
            v11 = 0;
          }

          v12 = [v11 objectForKey:v7];
          v13 = [(FCFaultableRecord *)v12 recordBase];
          if (([(NTPBRecordBase *)v13 hasExpiredAssetURLs]& 1) == 0)
          {
            [*(a1 + 48) addObject:v12];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v14 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v4 = v14;
    }

    while (v14);
  }
}

id __39__FCRecordSource_cachedRecordsWithIDs___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 recordBase];
  v3 = [v2 identifier];

  return v3;
}

- (id)interestTokenForRecordIDs:(id)ds
{
  dsCopy = ds;
  [(FCRecordSource *)&self->super.isa _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  v6 = [(FCCacheCoordinator *)cacheCoordinator holdTokenForKeys:dsCopy];

  return v6;
}

- (id)saveRecords:(id)records
{
  recordsCopy = records;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  if ([recordsCopy count])
  {
    [(FCRecordSource *)&self->super.isa _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__FCRecordSource_saveRecords___block_invoke;
    v9[3] = &unk_1E7C37408;
    v9[4] = self;
    v10 = recordsCopy;
    v11 = &v12;
    [(FCCacheCoordinator *)v6 performCacheWrite:v9];
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__FCRecordSource_saveRecords___block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [(FCRecordSource *)a1[4] _saveCKRecordsWithWriteLock:0 updateFetchDateForRecordIdentifiers:0 fetchContext:?];
  v3 = a1[4];
  if (v3)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectsForKeys:v2];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v7 objectForKey:{v12, v22}];
        v14 = [(FCFaultableRecord *)v13 record];
        [v6 setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = [FCHeldRecords alloc];
  v16 = a1[4];
  if (v16)
  {
    v16 = v16[14];
  }

  v17 = v16;
  v18 = [v17 holdTokensForKeys:v2];
  v19 = [(FCHeldRecords *)v15 initWithRecordsByID:v6 interestTokensByID:v18];
  v20 = *(a1[6] + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

- (id)_saveCKRecordsWithWriteLock:(void *)lock updateFetchDateForRecordIdentifiers:(void *)identifiers fetchContext:
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2;
  lockCopy = lock;
  identifiersCopy = identifiers;
  if (self)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v35 = v7;
    obj = v7;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v44)
    {
      v9 = *v46;
      v37 = *v46;
      v38 = identifiersCopy;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = [objc_opt_class() identifierFromCKRecord:v11];
          if ([self[14] cacheContainsKey:v12])
          {
            v13 = [self[13] objectForKey:v12];
            recordBase = [(FCFaultableRecord *)v13 recordBase];
            if (identifiersCopy)
            {
              LODWORD(identifiersCopy) = identifiersCopy[2] == 1 && NSClassFromString(&cfstr_Xctest.isa) != 0;
            }

            v20 = MEMORY[0x1E695DF00];
            modificationDate = [recordBase modificationDate];
            v19 = [v20 dateWithPBDate:modificationDate];

            v22 = [objc_opt_class() modificationDateFromCKRecord:v11];
            v23 = [v22 fc_isLaterThan:v19 withPrecision:1];
            if (([(NTPBRecordBase *)recordBase needsAssetURLRefresh]& 1) != 0 || (v23 & 1) != 0 || identifiersCopy)
            {
              v25 = [(FCRecordSource *)self _recordFromCKRecord:v11];
              base = [FCFaultableRecord faultableRecordWithRecord:v25];
              [dictionary setObject:base forKey:v12];
            }

            else
            {
              record = [(FCFaultableRecord *)v13 record];
              v25 = [record copy];

              base = [v25 base];
              pbDate = [MEMORY[0x1E695DF00] pbDate];
              [base setFetchDate:pbDate];

              v28 = [FCFaultableRecord faultableRecordWithRecord:v25];
              [dictionary setObject:v28 forKey:v12];
            }

            identifiersCopy = v38;

            v9 = v37;
          }

          else
          {
            v13 = [(FCRecordSource *)self _recordFromCKRecord:v11];
            recordBase = [v13 base];
            v15 = [FCFaultableRecord faultableRecordWithRecord:v13];
            [dictionary setObject:v15 forKey:v12];

            [array2 addObject:v12];
            v16 = MEMORY[0x1E696AD98];
            cacheLifetimeHint = [recordBase cacheLifetimeHint];
            if (cacheLifetimeHint == 2)
            {
              v18 = 2;
            }

            else
            {
              v18 = cacheLifetimeHint == 1;
            }

            v19 = [v16 numberWithInteger:{v18, v35}];
            [dictionary2 setObject:v19 forKey:v12];
          }

          [array addObject:v12];
        }

        v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v44);
    }

    v29 = lockCopy;
    if ([lockCopy count])
    {
      [self[13] updateObjectsForKeys:lockCopy withBlock:&__block_literal_global_104];
    }

    v30 = self[13];
    allValues = [dictionary allValues];
    allKeys = [dictionary allKeys];
    [v30 setObjects:allValues forKeys:allKeys];

    [self[14] didInsertKeysIntoCache:array2 withLifetimeHints:dictionary2];
    persistableHints = [self[14] persistableHints];
    if (persistableHints)
    {
      [self[13] setObject:persistableHints forKey:@"cacheHints"];
    }

    v7 = v35;
  }

  else
  {
    array = 0;
    v29 = lockCopy;
  }

  return array;
}

- (id)savePBRecords:(id)records
{
  recordsCopy = records;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__9;
  v17 = __Block_byref_object_dispose__9;
  v18 = 0;
  if ([recordsCopy count])
  {
    [(FCRecordSource *)&self->super.isa _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__FCRecordSource_savePBRecords___block_invoke;
    v9[3] = &unk_1E7C37408;
    v10 = recordsCopy;
    selfCopy = self;
    v12 = &v13;
    [(FCCacheCoordinator *)v6 performCacheWrite:v9];
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __32__FCRecordSource_savePBRecords___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v49 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E695DF70] array];
  v47 = [MEMORY[0x1E695DF90] dictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  v48 = a1;
  if (v3)
  {
    v4 = v3;
    v5 = *v52;
    v45 = *v52;
    v46 = v2;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v51 + 1) + 8 * v6);
        v8 = [v7 base];
        v9 = [v8 identifier];
        if (v9)
        {
          v10 = *(a1 + 40);
          if (v10)
          {
            v11 = *(v10 + 112);
          }

          else
          {
            v11 = 0;
          }

          if ([v11 cacheContainsKey:v9])
          {
            v12 = *(a1 + 40);
            if (v12)
            {
              v13 = *(v12 + 104);
            }

            else
            {
              v13 = 0;
            }

            v14 = [v13 objectForKey:v9];
            v15 = [(FCFaultableRecord *)v14 recordBase];
            v16 = MEMORY[0x1E695DF00];
            v17 = [v15 modificationDate];
            v18 = [v16 dateWithPBDate:v17];

            v19 = MEMORY[0x1E695DF00];
            v20 = [v8 modificationDate];
            v21 = [v19 dateWithPBDate:v20];

            if ([v21 fc_isLaterThan:v18 withPrecision:1])
            {
              v22 = [FCFaultableRecord faultableRecordWithRecord:v7];
              [v49 setObject:v22 forKey:v9];
            }

            v5 = v45;
            v2 = v46;
            a1 = v48;
          }

          else
          {
            v23 = [FCFaultableRecord faultableRecordWithRecord:v7];
            [v49 setObject:v23 forKey:v9];

            v24 = MEMORY[0x1E696AD98];
            v25 = [v8 cacheLifetimeHint];
            if (v25 == 2)
            {
              v26 = 2;
            }

            else
            {
              v26 = v25 == 1;
            }

            v14 = [v24 numberWithInteger:v26];
            [v47 setObject:v14 forKey:v9];
          }

          [v2 addObject:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v27 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
      v4 = v27;
    }

    while (v27);
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    v28 = v28[13];
  }

  v29 = v28;
  v30 = [v49 allValues];
  v31 = [v49 allKeys];
  [v29 setObjects:v30 forKeys:v31];

  v32 = *(v48 + 40);
  if (v32)
  {
    v32 = v32[14];
  }

  v33 = v32;
  v34 = [v49 allKeys];
  [v33 didInsertKeysIntoCache:v34 withLifetimeHints:v47];

  v35 = *(v48 + 40);
  if (v35)
  {
    v36 = *(v35 + 112);
  }

  else
  {
    v36 = 0;
  }

  v37 = [v36 persistableHints];
  if (v37)
  {
    v38 = *(v48 + 40);
    if (v38)
    {
      v39 = *(v38 + 104);
    }

    else
    {
      v39 = 0;
    }

    [v39 setObject:v37 forKey:@"cacheHints"];
  }

  v40 = *(v48 + 40);
  if (v40)
  {
    v40 = v40[14];
  }

  v41 = v40;
  v42 = [v41 holdTokenForKeys:v2];
  v43 = *(*(v48 + 48) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v42;
}

- (id)convertRecords:(id)records
{
  v23 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = recordsCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [objc_opt_class() identifierFromCKRecord:{v12, v18}];
        v15 = [(FCRecordSource *)self _recordFromCKRecord:v12];
        [dictionary setObject:v15 forKey:v14];
        [dictionary2 setObject:v14 forKey:v14];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = [[FCHeldRecords alloc] initWithRecordsByID:dictionary interestTokensByID:dictionary2];

  return v16;
}

- (id)deleteRecordsWithIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (([objc_opt_class() supportsDeletions] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only attempt to delete when the record source supports deletions"];
    *buf = 136315906;
    *&buf[4] = "[FCRecordSource deleteRecordsWithIDs:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCRecordSource.m";
    *&buf[22] = 1024;
    LODWORD(v16) = 664;
    WORD2(v16) = 2114;
    *(&v16 + 6) = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v16 = __Block_byref_object_copy__9;
  *(&v16 + 1) = __Block_byref_object_dispose__9;
  v17 = 0;
  if ([dsCopy count])
  {
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6 = cacheCoordinator;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__FCRecordSource_deleteRecordsWithIDs___block_invoke;
    v12[3] = &unk_1E7C37138;
    v14 = buf;
    v12[4] = self;
    v13 = dsCopy;
    [(FCCacheCoordinator *)v6 performCacheWrite:v12];
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v7;
  }

  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

uint64_t __39__FCRecordSource_deleteRecordsWithIDs___block_invoke(void *a1)
{
  v2 = [(FCRecordSource *)a1[4] _deleteRecordsWithWriteLockWithIDs:?];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (FCHeldRecords)_deleteRecordsWithWriteLockWithIDs:(FCHeldRecords *)ds
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = v3;
  if (!ds)
  {
    goto LABEL_15;
  }

  v4 = v3;
  if (([objc_opt_class() supportsDeletions] & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should only attempt to delete when the record source supports deletions"];
    *buf = 136315906;
    v31 = "[FCRecordSource _deleteRecordsWithWriteLockWithIDs:]";
    v32 = 2080;
    v33 = "FCRecordSource.m";
    v34 = 1024;
    v35 = 1275;
    v36 = 2114;
    v37 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!v4)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordIDs != nil", v24];
        *buf = 136315906;
        v31 = "[FCRecordSource _deleteRecordsWithWriteLockWithIDs:]";
        v32 = 2080;
        v33 = "FCRecordSource.m";
        v34 = 1024;
        v35 = 1276;
        v36 = 2114;
        v37 = v23;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!v4)
  {
    goto LABEL_5;
  }

  v5 = ds[4]._recordsByID;
  allObjects = [v4 allObjects];
  v7 = [(NSDictionary *)v5 objectsForKeys:allObjects];

  allKeys = [v7 allKeys];

  [(NSDictionary *)ds[4]._recordsByID updateObjectsForKeys:allKeys withBlock:&__block_literal_global_107];
  v9 = [(NSDictionary *)ds[4]._recordsByID objectsForKeys:allKeys];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v11 objectForKey:v16];
        record = [(FCFaultableRecord *)v17 record];
        [dictionary setObject:record forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v19 = [FCHeldRecords alloc];
  v20 = [(NSDictionary *)ds[4]._interestTokensByID holdTokensForKeys:allKeys];
  ds = [(FCHeldRecords *)v19 initWithRecordsByID:dictionary interestTokensByID:v20];

LABEL_15:

  return ds;
}

- (void)updateFetchDateForRecordIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    [(FCRecordSource *)&self->super.isa _prepareForUse];
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__FCRecordSource_updateFetchDateForRecordIDs___block_invoke;
    v6[3] = &unk_1E7C36C58;
    v6[4] = self;
    v7 = dsCopy;
    [(FCCacheCoordinator *)cacheCoordinator performCacheWrite:v6];
  }
}

- (BOOL)isRecordStale:(id)stale withCachePolicy:(id)policy
{
  v25 = *MEMORY[0x1E69E9840];
  staleCopy = stale;
  policyCopy = policy;
  v8 = policyCopy;
  if (!policyCopy || ![(FCCachePolicy *)policyCopy cachePolicy])
  {
    if (self)
    {
      defaultCachePolicy = self->_defaultCachePolicy;
    }

    else
    {
      defaultCachePolicy = 0;
    }

    v10 = defaultCachePolicy;

    v8 = v10;
  }

  cachePolicy = [(FCCachePolicy *)v8 cachePolicy];
  if (cachePolicy > 3)
  {
    if ((cachePolicy - 4) < 2)
    {
LABEL_13:
      base = [staleCopy base];
      [(FCCachePolicy *)v8 maximumCachedAge];
      v12 = [base fc_isCachedAgeGreaterThan:?];

      goto LABEL_17;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if ((cachePolicy - 2) < 2)
  {
    [(FCCachePolicy *)v8 maximumCachedAge];
    if (v13 != 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (!cachePolicy)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"record sources must provide a real cache policy as the default fallback"];
      v17 = 136315906;
      v18 = "[FCRecordSource isRecordStale:withCachePolicy:]";
      v19 = 2080;
      v20 = "FCRecordSource.m";
      v21 = 1024;
      v22 = 708;
      v23 = 2114;
      v24 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v17, 0x26u);
    }

    goto LABEL_16;
  }

  v12 = cachePolicy == 1;
LABEL_17:

  return v12;
}

- (BOOL)recognizesRecordID:(id)d
{
  dCopy = d;
  recordIDPrefixes = [(FCRecordSource *)self recordIDPrefixes];
  v6 = [FCRecordSource recognizesRecordID:dCopy inRecordIDPrefixes:recordIDPrefixes];

  return v6;
}

+ (BOOL)recognizesRecordID:(id)d inRecordIDPrefixes:(id)prefixes
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__FCRecordSource_recognizesRecordID_inRecordIDPrefixes___block_invoke;
  v8[3] = &unk_1E7C38B40;
  v9 = dCopy;
  v6 = dCopy;
  LOBYTE(prefixes) = [prefixes fc_containsObjectPassingTest:v8];

  return prefixes;
}

- (int64_t)storageSize
{
  [(FCRecordSource *)&self->super.isa _prepareForUse];
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  return [(FCKeyValueStore *)localStore storeSize];
}

- (void)save
{
  if (self)
  {
    [(NFUnfairLock *)self->_initializationLock lock];
    v4 = self->_localStore;
    initializationLock = self->_initializationLock;
  }

  else
  {
    [0 lock];
    v4 = 0;
    initializationLock = 0;
  }

  [(NFUnfairLock *)initializationLock unlock];
  [(FCKeyValueStore *)v4 save];
}

- (void)addCacheObserver:(id)observer
{
  observerCopy = observer;
  [(FCRecordSource *)&self->super.isa _prepareForUse];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  [(FCCacheCoordinator *)cacheCoordinator addObserver:observerCopy];
}

- (void)enableFlushingWithFlushingThreshold:(unint64_t)threshold
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = @"zero-interest";
  if (threshold == 1)
  {
    v5 = @"low";
  }

  if (threshold == 2)
  {
    v5 = @"high";
  }

  v6 = v5;
  v7 = FCRecordSourceLog;
  if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    recordType = [(FCRecordSource *)self recordType];
    *buf = 138543618;
    v16 = recordType;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "will enable flushing %{public}@ records with %{public}@ threshold", buf, 0x16u);
  }

  if (threshold == 2)
  {
    highThresholdDataSizeLimit = [(FCRecordSource *)self highThresholdDataSizeLimit];
  }

  else
  {
    if (threshold != 1)
    {
      v10 = threshold == 0;
      v11 = 0;
      goto LABEL_13;
    }

    highThresholdDataSizeLimit = [(FCRecordSource *)self lowThresholdDataSizeLimit];
  }

  v11 = highThresholdDataSizeLimit;
  v10 = 0;
LABEL_13:
  v13 = [[FCCacheCoordinatorFlushPolicy alloc] initWithLowWaterMark:(v11 * 0.7) highWaterMark:v11 alwaysFlushKeysWithZeroInterest:v10];
  if (self)
  {
    cacheCoordinator = self->_cacheCoordinator;
  }

  else
  {
    cacheCoordinator = 0;
  }

  [(FCCacheCoordinator *)cacheCoordinator enableFlushingWithPolicy:v13];
}

__CFString *__54__FCRecordSource_enableFlushingWithFlushingThreshold___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"zero-interest";
  if (v1 == 1)
  {
    v2 = @"low";
  }

  if (v1 == 2)
  {
    return @"high";
  }

  else
  {
    return v2;
  }
}

- (unint64_t)cacheCoordinatorCurrentSizeWithReadLock:(id)lock
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCRecordSource *)self storeSize];
}

- (void)cacheCoordinator:(id)coordinator flushKeysWithWriteLock:(id)lock
{
  v27 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  lockCopy = lock;
  v8 = FCRecordSourceLog;
  if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [lockCopy count];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v12 = localStore;
    allKeys = [(FCKeyValueStore *)v12 allKeys];
    v14 = [allKeys count] - 1;
    recordType = [(FCRecordSource *)self recordType];
    v19 = 134218754;
    v20 = v10;
    v21 = 2048;
    v22 = v14;
    v23 = 2114;
    v24 = recordType;
    v25 = 2114;
    v26 = lockCopy;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "record source is flushing %lu of %lu %{public}@ records: %{public}@", &v19, 0x2Au);
  }

  if (self)
  {
    v16 = self->_localStore;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  allObjects = [lockCopy allObjects];
  [(FCKeyValueStore *)v17 removeObjectsForKeys:allObjects];
}

- (void)fetchCoordinator:(id)coordinator filterKeysToFetch:(id)fetch isFirstAttempt:(BOOL)attempt context:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  contextCopy = context;
  v11 = objc_opt_class();
  v12 = FCCheckedDynamicCast(v11, contextCopy);
  v13 = v12;
  if (v12 && (*(v12 + 8) & 1) != 0)
  {
    v36 = contextCopy;
    v38 = v12;
    if ((*(v12 + 16) | 4) == 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"shouldn't be filtering for this cache policy"];
      *buf = 136315906;
      v49 = "[FCRecordSource fetchCoordinator:filterKeysToFetch:isFirstAttempt:context:]";
      v50 = 2080;
      v51 = "FCRecordSource.m";
      v52 = 1024;
      v53 = 865;
      v54 = 2114;
      v55 = v35;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    allObjects = [fetchCopy allObjects];
    v15 = [(FCRecordSource *)&self->super.isa _faultableRecordsWithIdentifiers:allObjects];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      v37 = *v40;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v22 = [v16 objectForKeyedSubscript:v21];
          recordBase = [(FCFaultableRecord *)v22 recordBase];
          if (([(NTPBRecordBase *)recordBase needsAssetURLRefresh]& 1) == 0)
          {
            fetchDate = [recordBase fetchDate];
            if (!fetchDate || (v25 = fetchDate, v26 = fetchCopy, v27 = MEMORY[0x1E695DF00], [recordBase fetchDate], v28 = v18, v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "dateWithPBDate:", v29), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "fc_timeIntervalUntilNow"), v32 = v31, v33 = v38[3], v30, fetchCopy = v26, v19 = v37, v29, v18 = v28, v25, v32 < v33))
            {
              [fetchCopy removeObject:v21];
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v18);
    }

    contextCopy = v36;
    v13 = v38;
  }

  else
  {
    if (self)
    {
      cacheCoordinator = self->_cacheCoordinator;
    }

    else
    {
      cacheCoordinator = 0;
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __76__FCRecordSource_fetchCoordinator_filterKeysToFetch_isFirstAttempt_context___block_invoke;
    v43[3] = &unk_1E7C37678;
    v44 = fetchCopy;
    selfCopy = self;
    attemptCopy = attempt;
    [(FCCacheCoordinator *)cacheCoordinator performCacheRead:v43];
    v16 = v44;
  }
}

void __76__FCRecordSource_fetchCoordinator_filterKeysToFetch_isFirstAttempt_context___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) copy];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v9 = *(v8 + 112);
        }

        else
        {
          v9 = 0;
        }

        if ([v9 cacheContainsKey:*(*(&v13 + 1) + 8 * v6)])
        {
          [*(a1 + 32) removeObject:v7];
        }

        v10 = [*(a1 + 40) fetchErrorsByKey];
        v11 = [v10 objectForKey:v7];

        if (v11)
        {
          if ([v11 fc_isCKUnknownItemError])
          {
            [*(a1 + 32) removeObject:v7];
          }

          if ((*(a1 + 48) & 1) == 0)
          {
            [*(a1 + 32) removeObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v12 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v4 = v12;
    }

    while (v12);
  }
}

- (id)_faultableRecordsWithIdentifiers:(id *)identifiers
{
  v3 = a2;
  if (identifiers)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__9;
    v13 = __Block_byref_object_dispose__9;
    v14 = 0;
    v4 = identifiers[14];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__FCRecordSource__faultableRecordsWithIdentifiers___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = identifiers;
    v7 = v3;
    [v4 performCacheRead:v6];

    identifiers = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return identifiers;
}

- (id)fetchCoordinator:(id)coordinator fetchOperationForKeys:(id)keys context:(id)context qualityOfService:(int64_t)service relativePriority:(int64_t)priority
{
  v109 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  contextCopy = context;
  v12 = objc_opt_class();
  v13 = FCCheckedDynamicCast(v12, contextCopy);
  v79 = v13;
  v80 = contextCopy;
  if (v13 && (*(v13 + 8) & 1) != 0)
  {
    serviceCopy = service;
    allObjects = [keysCopy allObjects];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_77;
    v90[3] = &unk_1E7C38BD8;
    v90[4] = self;
    v78 = [allObjects fc_arrayByTransformingWithBlock:v90];

    v77 = keysCopy;
    allObjects2 = [keysCopy allObjects];
    v16 = [(FCRecordSource *)&self->super.isa _faultableRecordsWithIdentifiers:allObjects2];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v87;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v87 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v86 + 1) + 8 * i);
          v24 = [v18 objectForKey:v23];
          recordBase = [(FCFaultableRecord *)v24 recordBase];
          needsAssetURLRefresh = [(NTPBRecordBase *)recordBase needsAssetURLRefresh];

          if ((needsAssetURLRefresh & 1) == 0)
          {
            recordBase2 = [(FCFaultableRecord *)v24 recordBase];
            changeTag = [recordBase2 changeTag];

            if (changeTag)
            {
              v29 = [(FCRecordSource *)self _ckRecordIDFromIdentifier:v23];
              [dictionary setObject:changeTag forKeyedSubscript:v29];
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v20);
    }

    v30 = objc_alloc_init(FCCKContentBatchedRefreshRecordsOperation);
    v31 = v30;
    if (self)
    {
      contentDatabase = self->_contentDatabase;
    }

    else
    {
      contentDatabase = 0;
    }

    v33 = v78;
    [(FCCKContentBatchedRefreshRecordsOperation *)v30 setDatabase:?];
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v34, v78, 384);
      objc_setProperty_nonatomic_copy(v31, v35, dictionary, 392);
      desiredKeys = [(FCRecordSource *)self desiredKeys];
      objc_setProperty_nonatomic_copy(v31, v37, desiredKeys, 400);
    }

    else
    {
      desiredKeys = [(FCRecordSource *)self desiredKeys];
    }

    keysCopy = v77;

    [v31 setQualityOfService:serviceCopy];
    if ([objc_opt_class() supportsDeletions])
    {
      if (v31)
      {
        v31[368] = 1;
      }

      canaryRecordName = [objc_opt_class() canaryRecordName];
      if (canaryRecordName)
      {
        v40 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:canaryRecordName];
        if (v31)
        {
          objc_setProperty_nonatomic_copy(v31, v39, v40, 408);
        }
      }
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v42 = v41;
    operationID = [v31 operationID];
    v44 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v45 = v44;
      v46 = [v78 count];
      recordType = [(FCRecordSource *)self recordType];
      *buf = 134218498;
      v104 = v46;
      v105 = 2114;
      v106 = recordType;
      v107 = 2114;
      v108 = operationID;
      _os_log_impl(&dword_1B63EF000, v45, OS_LOG_TYPE_INFO, "will refresh %lu %{public}@ records with operation ID %{public}@", buf, 0x20u);

      v33 = v78;
    }

    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_81;
    newValue[3] = &unk_1E7C38C28;
    newValue[4] = self;
    v48 = v79;
    v82 = v79;
    v83 = operationID;
    v85 = v42;
    v84 = v33;
    v49 = v33;
    v51 = operationID;
    v52 = v49;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v50, newValue, 416);
      v52 = v84;
    }

    v53 = v82;
  }

  else
  {
    allObjects3 = [keysCopy allObjects];
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke;
    v101[3] = &unk_1E7C38D38;
    v101[4] = self;
    v55 = [allObjects3 fc_arrayByTransformingWithBlock:v101];

    v56 = objc_alloc_init(FCCKContentBatchedFetchRecordsOperation);
    v31 = v56;
    if (self)
    {
      v57 = self->_contentDatabase;
    }

    else
    {
      v57 = 0;
    }

    [(FCCKContentBatchedFetchRecordsOperation *)v56 setDatabase:v57];
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v58, v55, 376);
      desiredKeys2 = [(FCRecordSource *)self desiredKeys];
      objc_setProperty_nonatomic_copy(v31, v60, desiredKeys2, 384);
    }

    else
    {
      desiredKeys2 = [(FCRecordSource *)self desiredKeys];
    }

    [v31 setQualityOfService:service];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v62 = v61;
    operationID2 = [v31 operationID];
    v64 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v65 = v64;
      v66 = [v55 count];
      recordType2 = [(FCRecordSource *)self recordType];
      *buf = 134218498;
      v104 = v66;
      v105 = 2114;
      v106 = recordType2;
      v107 = 2112;
      v108 = operationID2;
      _os_log_impl(&dword_1B63EF000, v65, OS_LOG_TYPE_INFO, "will fetch %lu %{public}@ records with operation ID %@", buf, 0x20u);
    }

    v68 = objc_opt_new();
    v69 = objc_opt_new();
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_74;
    v98[3] = &unk_1E7C38B88;
    v70 = v68;
    v99 = v70;
    v72 = v69;
    v100 = v72;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v71, v98, 416);
    }

    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2;
    v91[3] = &unk_1E7C38BB0;
    v92 = v72;
    selfCopy = self;
    v94 = v70;
    v95 = operationID2;
    v97 = v62;
    v96 = v55;
    v49 = v55;
    v51 = operationID2;
    dictionary = v70;
    v18 = v72;
    v74 = v49;
    v48 = v79;
    if (v31)
    {
      objc_setProperty_nonatomic_copy(v31, v73, v91, 424);
      v74 = v96;
    }

    v53 = v99;
  }

  return v31;
}

- (id)_ckRecordIDFromIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v2 = MEMORY[0x1E695BA70];
    v3 = a2;
    v4 = [v2 alloc];
    v5 = [v4 fc_initSafeWithRecordName:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = 32;
    v11 = v7;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = 40;
    v11 = v8;
  }

  [*(a1 + v10) setObject:v11 forKey:v12];
LABEL_6:
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [*(a1 + 32) readOnlyDictionary];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKey:v10];
        if (v11)
        {
          v12 = [(FCRecordSource *)*(a1 + 40) _identifierFromCKRecordID:v10];
          [v4 setObject:v11 forKey:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [*(a1 + 40) fetchErrorsByKey];
    [v13 addEntriesFromDictionary:v4];
  }

  if ([*(a1 + 48) count])
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) allValues];
    v16 = [v14 saveRecords:v15];

    v17 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 48);
      v19 = v17;
      v20 = [v18 count];
      v21 = [*(a1 + 40) recordType];
      v22 = *(a1 + 56);
      v23 = v3 - *(a1 + 72);
      *buf = 134218754;
      v36 = v20;
      v37 = 2114;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      v24 = "successfully fetched %lu %{public}@ records with operation ID %@, total time: %f";
      v25 = v19;
      v26 = 42;
LABEL_17:
      _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_INFO, v24, buf, v26);
    }
  }

  else
  {
    v27 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 64);
      v19 = v27;
      v29 = [v28 count];
      v21 = [*(a1 + 40) recordType];
      v30 = *(a1 + 56);
      *buf = 134218498;
      v36 = v29;
      v37 = 2114;
      v38 = v21;
      v39 = 2112;
      v40 = v30;
      v24 = "failed to fetch %lu %{public}@ records with operation ID %@";
      v25 = v19;
      v26 = 32;
      goto LABEL_17;
    }
  }
}

- (id)_identifierFromCKRecordID:(void *)d
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (d)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "ckRrecordID != nil"];
      *buf = 136315906;
      v8 = "[FCRecordSource _identifierFromCKRecordID:]";
      v9 = 2080;
      v10 = "FCRecordSource.m";
      v11 = 1024;
      v12 = 1169;
      v13 = 2114;
      v14 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    d = [v4 recordName];
  }

  return d;
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_81(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  if ([v10 count] || objc_msgSend(v9, "count") || objc_msgSend(v11, "count"))
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_2_82;
    v44[3] = &unk_1E7C38C00;
    v44[4] = *(a1 + 32);
    v15 = [v9 fc_arrayByTransformingWithBlock:v44];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_3;
    v43[3] = &unk_1E7C38C00;
    v43[4] = *(a1 + 32);
    v16 = [v11 fc_arrayByTransformingWithBlock:v43];
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = *(v17 + 112);
    }

    else
    {
      v18 = 0;
    }

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_4;
    v37[3] = &unk_1E7C376C8;
    v38 = v10;
    v39 = v15;
    v19 = *(a1 + 40);
    v40 = *(a1 + 32);
    v41 = v19;
    v42 = v16;
    v20 = v16;
    v21 = v15;
    [v18 performCacheWrite:v37];
  }

  if (v12 && [v12 code] != 2)
  {
    v33 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v34 = *(a1 + 56);
      v23 = v33;
      v35 = [v34 count];
      v25 = [*(a1 + 32) recordType];
      v36 = *(a1 + 48);
      *buf = 134218498;
      v46 = v35;
      v47 = 2114;
      v48 = v25;
      v49 = 2114;
      v50 = v36;
      v30 = "failed to refresh %lu %{public}@ records with operation ID %{public}@";
      v31 = v23;
      v32 = 32;
      goto LABEL_13;
    }
  }

  else
  {
    v22 = FCRecordSourceLog;
    if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_INFO))
    {
      v23 = v22;
      v24 = [v9 count];
      v25 = [*(a1 + 32) recordType];
      v26 = [v10 count];
      v27 = [v11 count];
      v28 = *(a1 + 48);
      v29 = v14 - *(a1 + 64);
      *buf = 134219266;
      v46 = v24;
      v47 = 2114;
      v48 = v25;
      v49 = 2048;
      v50 = v26;
      v51 = 2048;
      v52 = v27;
      v53 = 2114;
      v54 = v28;
      v55 = 2048;
      v56 = v29;
      v30 = "successfully refreshed %lu %{public}@ records with %lu changes and %lu deletions, operation ID %{public}@, total time: %f";
      v31 = v23;
      v32 = 62;
LABEL_13:
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_INFO, v30, buf, v32);
    }
  }
}

void __99__FCRecordSource_fetchCoordinator_fetchOperationForKeys_context_qualityOfService_relativePriority___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) allValues];
    v4 = [(FCRecordSource *)v2 _saveCKRecordsWithWriteLock:v3 updateFetchDateForRecordIdentifiers:*(a1 + 40) fetchContext:*(a1 + 56)];
  }

  if ([*(a1 + 64) count])
  {
    v5 = *(a1 + 48);
    v7 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 64)];
    v6 = [(FCRecordSource *)v5 _deleteRecordsWithWriteLockWithIDs:v7];
  }
}

- (void)fetchCoordinator:(id)coordinator addFetchOperation:(id)operation context:(id)context
{
  v5 = MEMORY[0x1E696ADC8];
  operationCopy = operation;
  fc_sharedConcurrentQueue = [v5 fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:operationCopy];
}

id __34__FCRecordSource__initializeStore__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [(FCFaultableRecord *)v4 record];
    v6 = [v5 dictionaryRepresentation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)forceRefreshDesiredKeys
{
  os_unfair_lock_lock(&self->_derivedKeysLock);
  [(FCRecordSource *)self _deriveDesiredKeys];

  os_unfair_lock_unlock(&self->_derivedKeysLock);
}

id __95__FCRecordSource__saveCKRecordsWithWriteLock_updateFetchDateForRecordIdentifiers_fetchContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 record];
  v3 = [v2 copy];

  v4 = [v3 base];
  v5 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setFetchDate:v5];

  v6 = [FCFaultableRecord faultableRecordWithRecord:v3];

  return v6;
}

void __51__FCRecordSource__faultableRecordsWithIdentifiers___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectsForKeys:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_fetchErrorForKey:(id)key
{
  keyCopy = key;
  if (key)
  {
    v3 = a2;
    fetchErrorsByKey = [keyCopy fetchErrorsByKey];
    keyCopy = [fetchErrorsByKey objectForKey:v3];
  }

  return keyCopy;
}

id __53__FCRecordSource__deleteRecordsWithWriteLockWithIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [(FCFaultableRecord *)a2 record];
  v3 = [v2 copy];

  v4 = [v3 base];
  [v4 setDeletedFromCloud:1];
  v5 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setModificationDate:v5];

  v6 = [MEMORY[0x1E695DF00] pbDate];
  [v4 setFetchDate:v6];

  v7 = [FCFaultableRecord faultableRecordWithRecord:v3];

  return v7;
}

- (void)t_startOverridingExperimentalizableFieldsPostfix:(id)postfix treatmentID:(id)d
{
  postfixCopy = postfix;
  dCopy = d;
  experimentalizableFieldsPostfix = self->_experimentalizableFieldsPostfix;
  self->_experimentalizableFieldsPostfix = postfixCopy;
  v12 = postfixCopy;

  activeTreatmentID = self->_activeTreatmentID;
  self->_activeTreatmentID = dCopy;
  v10 = dCopy;

  desiredKeys = self->_desiredKeys;
  self->_desiredKeys = 0;
}

- (void)t_stopOverridingExperimentalizableFieldsPostfixAndTreatmentID
{
  experimentalizableFieldsPostfix = self->_experimentalizableFieldsPostfix;
  self->_experimentalizableFieldsPostfix = 0;

  activeTreatmentID = self->_activeTreatmentID;
  self->_activeTreatmentID = 0;

  desiredKeys = self->_desiredKeys;
  self->_desiredKeys = 0;
}

- (id)jsonEncodableObject
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCRecordSource *)self jsonEncodableObject];
}

@end