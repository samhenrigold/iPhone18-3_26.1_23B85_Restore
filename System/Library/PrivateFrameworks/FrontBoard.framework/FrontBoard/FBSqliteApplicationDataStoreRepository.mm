@interface FBSqliteApplicationDataStoreRepository
+ (BOOL)_objectRequiresSerialization:(id)serialization;
+ (id)_generateParameterizedQuery:(id)query forKeyList:(id)list outBindings:(id *)bindings;
+ (id)_objectForResultRow:(id)row index:(unint64_t)index;
- (BOOL)_dbQueue_containsKey:(id)key forApplication:(id)application;
- (BOOL)_dbQueue_databaseIntegrityCheck;
- (BOOL)_dbQueue_executeStatement:(id)statement bindings:(id)bindings resultRowHandler:(id)handler;
- (BOOL)_dbQueue_executeStatement:(id)statement bindings:(id)bindings resultRowHandler:(id)handler error:(id *)error;
- (BOOL)_dbQueue_loadDatabase;
- (BOOL)_dbQueue_truncateDamagedDatabase;
- (BOOL)_dbQueue_tryPreserveDamagedDatabase;
- (BOOL)_inAlternateSystemApp;
- (BOOL)_isEligibleForSaving:(id)saving;
- (BOOL)_preserveFileAtURL:(id)l;
- (BOOL)containsKey:(id)key forApplication:(id)application;
- (FBApplicationDataStoreRepositoryDelegate)delegate;
- (FBSqliteApplicationDataStoreRepository)initWithStorePath:(id)path;
- (id)_dbQueue_applicationIdentifiersWithState;
- (id)_dbQueue_keysForApplication:(id)application;
- (id)_dbQueue_objectForKey:(id)key forApplication:(id)application;
- (id)_dbQueue_objectsForKeys:(id)keys;
- (id)_dbQueue_openDatabase;
- (id)allObjectsForKeys:(id)keys;
- (id)applicationIdentifiersWithState;
- (id)keysForApplication:(id)application;
- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (id)objectForKey:(id)key forApplication:(id)application;
- (id)urlByAppendingString:(id)string toURL:(id)l;
- (int64_t)_dbQueue_databaseVersion;
- (void)_dbQueue_createTables;
- (void)_dbQueue_load;
- (void)_dbQueue_notifyDelegateOfChangeForKeys:(id)keys application:(id)application;
- (void)_dbQueue_notifyDelegateOfLateLoad;
- (void)_dbQueue_notifyDelegateOfStoreInvalidationForIdentifier:(id)identifier;
- (void)_dbQueue_openDatabase;
- (void)_dbQueue_performWithSavepoint:(id)savepoint handler:(id)handler;
- (void)beginBatchedUpdate;
- (void)close;
- (void)dealloc;
- (void)endBatchedUpdate;
- (void)flushSynchronously;
- (void)removeAllObjectsForApplication:(id)application;
- (void)removeObjectForKey:(id)key forApplication:(id)application;
- (void)removeObjectsForKeys:(id)keys forApplication:(id)application;
- (void)setDelegate:(id)delegate;
- (void)setObject:(id)object forKey:(id)key forApplication:(id)application;
@end

@implementation FBSqliteApplicationDataStoreRepository

- (void)flushSynchronously
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__FBSqliteApplicationDataStoreRepository_flushSynchronously__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

- (FBSqliteApplicationDataStoreRepository)initWithStorePath:(id)path
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = FBSqliteApplicationDataStoreRepository;
  v6 = [(FBSqliteApplicationDataStoreRepository *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeURL, path);
    Serial = BSDispatchQueueCreateSerial();
    dbQueue = v7->_dbQueue;
    v7->_dbQueue = Serial;

    v10 = BSDispatchQueueCreateSerial();
    calloutQueue = v7->_calloutQueue;
    v7->_calloutQueue = v10;

    v7->_dbQueue_firstUnlockToken = -1;
    v12 = v7->_dbQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FBSqliteApplicationDataStoreRepository_initWithStorePath___block_invoke;
    block[3] = &unk_1E783B580;
    v15 = v7;
    dispatch_async(v12, block);
  }

  return v7;
}

- (void)dealloc
{
  notify_cancel(self->_dbQueue_firstUnlockToken);
  v3 = self->_dbQueue_dbConnection;
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FBSqliteApplicationDataStoreRepository_dealloc__block_invoke;
  block[3] = &unk_1E783B580;
  v8 = v3;
  v5 = v3;
  dispatch_async(dbQueue, block);

  v6.receiver = self;
  v6.super_class = FBSqliteApplicationDataStoreRepository;
  [(FBSqliteApplicationDataStoreRepository *)&v6 dealloc];
}

- (FBApplicationDataStoreRepositoryDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__FBSqliteApplicationDataStoreRepository_delegate__block_invoke;
  v5[3] = &unk_1E783BF48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__FBSqliteApplicationDataStoreRepository_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dbQueue = self->_dbQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FBSqliteApplicationDataStoreRepository_setDelegate___block_invoke;
  v7[3] = &unk_1E783B240;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(dbQueue, v7);
}

- (id)applicationIdentifiersWithState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  dbQueue = self->_dbQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__FBSqliteApplicationDataStoreRepository_applicationIdentifiersWithState__block_invoke;
  v5[3] = &unk_1E783BF48;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dbQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __73__FBSqliteApplicationDataStoreRepository_applicationIdentifiersWithState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbQueue_applicationIdentifiersWithState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)keysForApplication:(id)application
{
  applicationCopy = application;
  v5 = applicationCopy;
  if (applicationCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    dbQueue = self->_dbQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__FBSqliteApplicationDataStoreRepository_keysForApplication___block_invoke;
    block[3] = &unk_1E783BFC0;
    v11 = &v12;
    block[4] = self;
    v10 = applicationCopy;
    dispatch_sync(dbQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

void __61__FBSqliteApplicationDataStoreRepository_keysForApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbQueue_keysForApplication:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)containsKey:(id)key forApplication:(id)application
{
  keyCopy = key;
  applicationCopy = application;
  v8 = applicationCopy;
  v9 = 0;
  if (keyCopy && applicationCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    dbQueue = self->_dbQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__FBSqliteApplicationDataStoreRepository_containsKey_forApplication___block_invoke;
    v12[3] = &unk_1E783BF98;
    v15 = &v16;
    v12[4] = self;
    v13 = keyCopy;
    v14 = v8;
    dispatch_sync(dbQueue, v12);
    v9 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  return v9 & 1;
}

void *__69__FBSqliteApplicationDataStoreRepository_containsKey_forApplication___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _dbQueue_containsKey:*(a1 + 40) forApplication:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)objectForKey:(id)key forApplication:(id)application
{
  keyCopy = key;
  applicationCopy = application;
  v8 = applicationCopy;
  v9 = 0;
  if (keyCopy && applicationCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = 0;
    dbQueue = self->_dbQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__FBSqliteApplicationDataStoreRepository_objectForKey_forApplication___block_invoke;
    v12[3] = &unk_1E783BF98;
    v15 = &v16;
    v12[4] = self;
    v13 = keyCopy;
    v14 = v8;
    dispatch_sync(dbQueue, v12);
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  return v9;
}

void __70__FBSqliteApplicationDataStoreRepository_objectForKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbQueue_objectForKey:*(a1 + 40) forApplication:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)allObjectsForKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__3;
    v15 = __Block_byref_object_dispose__3;
    v16 = 0;
    dbQueue = self->_dbQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FBSqliteApplicationDataStoreRepository_allObjectsForKeys___block_invoke;
    block[3] = &unk_1E783BFC0;
    v10 = &v11;
    block[4] = self;
    v9 = keysCopy;
    dispatch_sync(dbQueue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __60__FBSqliteApplicationDataStoreRepository_allObjectsForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbQueue_objectsForKeys:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)close
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__FBSqliteApplicationDataStoreRepository_close__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(dbQueue, block);
}

void __47__FBSqliteApplicationDataStoreRepository_close__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) close];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)setObject:(id)object forKey:(id)key forApplication:(id)application
{
  objectCopy = object;
  keyCopy = key;
  applicationCopy = application;
  v12 = applicationCopy;
  if (objectCopy)
  {
    if (keyCopy && applicationCopy && [(FBSqliteApplicationDataStoreRepository *)self _isEligibleForSaving:objectCopy])
    {
      v13 = objectCopy;
      if ([objc_opt_class() _objectRequiresSerialization:v13])
      {
        v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:0];

        v13 = v14;
        if (!v14)
        {
          [FBSqliteApplicationDataStoreRepository setObject:a2 forKey:? forApplication:?];
        }
      }

      dbQueue = self->_dbQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__FBSqliteApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke;
      v17[3] = &unk_1E783B2D8;
      v17[4] = self;
      v18 = keyCopy;
      v19 = v12;
      v20 = v13;
      v16 = v13;
      dispatch_async(dbQueue, v17);
    }
  }

  else
  {
    [(FBSqliteApplicationDataStoreRepository *)self removeObjectForKey:keyCopy forApplication:applicationCopy];
  }
}

void __74__FBSqliteApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__FBSqliteApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke_2;
  v7[3] = &unk_1E783C708;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _dbQueue_performWithSavepoint:@"setObject" handler:v7];
}

uint64_t __74__FBSqliteApplicationDataStoreRepository_setObject_forKey_forApplication___block_invoke_2(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _dbQueue_containsKey:*(a1 + 40) forApplication:*(a1 + 48)])
  {
    v2 = @"UPDATE kvs SET value = :value WHERE     application_identifier IN (SELECT id FROM application_identifier_tab WHERE application_identifier = :application_identifier)     AND key IN (SELECT id FROM key_tab WHERE key = :key);";
  }

  else
  {
    v2 = @"INSERT OR IGNORE INTO application_identifier_tab (application_identifier) VALUES (:application_identifier);INSERT OR IGNORE INTO key_tab (key) VALUES (:key);INSERT INTO kvs (application_identifier, key, value)    SELECT application_identifier_tab.id, key_tab.id, :value FROM application_identifier_tab, key_tab WHERE         application_identifier_tab.application_identifier = :application_identifier        AND key_tab.key = :key;";
  }

  v11[0] = @":application_identifier";
  v11[1] = @":key";
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v12[0] = *(a1 + 48);
  v12[1] = v3;
  v11[2] = @":value";
  v12[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v4 _dbQueue_executeStatement:v2 bindings:v6 resultRowHandler:0];

  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v7 _dbQueue_notifyDelegateOfChangeForKeys:v8 application:*(a1 + 48)];

  return 1;
}

- (void)removeObjectForKey:(id)key forApplication:(id)application
{
  keyCopy = key;
  applicationCopy = application;
  v8 = applicationCopy;
  if (keyCopy && applicationCopy)
  {
    dbQueue = self->_dbQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__FBSqliteApplicationDataStoreRepository_removeObjectForKey_forApplication___block_invoke;
    block[3] = &unk_1E783B300;
    block[4] = self;
    v11 = applicationCopy;
    v12 = keyCopy;
    dispatch_async(dbQueue, block);
  }
}

void __76__FBSqliteApplicationDataStoreRepository_removeObjectForKey_forApplication___block_invoke(void *a1)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v9[0] = @":application_identifier";
  v9[1] = @":key";
  v4 = a1[6];
  v10[0] = v2;
  v10[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 _dbQueue_executeStatement:@"DELETE FROM kvs WHERE     application_identifier IN (SELECT id FROM application_identifier_tab WHERE application_identifier = :application_identifier)     AND key IN (SELECT id FROM key_tab WHERE key = :key);" bindings:v5 resultRowHandler:0];

  v6 = a1[4];
  v8 = a1[6];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  [v6 _dbQueue_notifyDelegateOfChangeForKeys:v7 application:a1[5]];
}

- (void)removeObjectsForKeys:(id)keys forApplication:(id)application
{
  keysCopy = keys;
  applicationCopy = application;
  v8 = [keysCopy count];
  if (applicationCopy && v8)
  {
    dbQueue = self->_dbQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__FBSqliteApplicationDataStoreRepository_removeObjectsForKeys_forApplication___block_invoke;
    block[3] = &unk_1E783B300;
    block[4] = self;
    v11 = keysCopy;
    v12 = applicationCopy;
    dispatch_async(dbQueue, block);
  }
}

void __78__FBSqliteApplicationDataStoreRepository_removeObjectsForKeys_forApplication___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 _generateParameterizedQuery:@"DELETE FROM kvs WHERE     application_identifier IN (SELECT id FROM application_identifier_tab WHERE application_identifier = :application_identifier)     AND key IN (SELECT id FROM key_tab WHERE key IN (%@))" forKeyList:v3 outBindings:&v6];;
  v5 = v6;
  [v5 setObject:*(a1 + 48) forKeyedSubscript:@":application_identifier"];
  [*(a1 + 32) _dbQueue_executeStatement:v4 bindings:v5 resultRowHandler:0];
  [*(a1 + 32) _dbQueue_notifyDelegateOfChangeForKeys:*(a1 + 40) application:*(a1 + 48)];
}

- (void)removeAllObjectsForApplication:(id)application
{
  applicationCopy = application;
  v5 = applicationCopy;
  if (applicationCopy)
  {
    dbQueue = self->_dbQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__FBSqliteApplicationDataStoreRepository_removeAllObjectsForApplication___block_invoke;
    v7[3] = &unk_1E783B240;
    v7[4] = self;
    v8 = applicationCopy;
    dispatch_async(dbQueue, v7);
  }
}

uint64_t __73__FBSqliteApplicationDataStoreRepository_removeAllObjectsForApplication___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = @":application_identifier";
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v3 _dbQueue_executeStatement:@"DELETE FROM kvs WHERE     application_identifier IN (SELECT id FROM application_identifier_tab WHERE application_identifier = :application_identifier);" bindings:v4 resultRowHandler:0];

  return [*(a1 + 32) _dbQueue_notifyDelegateOfStoreInvalidationForIdentifier:*(a1 + 40)];
}

- (void)beginBatchedUpdate
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__FBSqliteApplicationDataStoreRepository_beginBatchedUpdate__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void *__60__FBSqliteApplicationDataStoreRepository_beginBatchedUpdate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[5];
  if (!v3)
  {
    [result _dbQueue_executeStatement:@"PRAGMA cache_size=2000;BEGIN TRANSACTION;" bindings:0 resultRowHandler:0];
    result = *(a1 + 32);
    v3 = result[5];
  }

  result[5] = v3 + 1;
  return result;
}

- (void)endBatchedUpdate
{
  dbQueue = self->_dbQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FBSqliteApplicationDataStoreRepository_endBatchedUpdate__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_async(dbQueue, block);
}

void *__58__FBSqliteApplicationDataStoreRepository_endBatchedUpdate__block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = v2 - 1;
    result = result[4];
    if (!result[5])
    {
      return [result _dbQueue_executeStatement:@"COMMIT;PRAGMA cache_size=10;" bindings:0 resultRowHandler:0];
    }
  }

  return result;
}

- (id)migrateIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  [(FBSqliteApplicationDataStoreRepository *)self beginBatchedUpdate];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  dbQueue = self->_dbQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke;
  v16 = &unk_1E783C038;
  selfCopy = self;
  v9 = identifierCopy;
  v18 = v9;
  v20 = &v21;
  v10 = toIdentifierCopy;
  v19 = v10;
  dispatch_sync(dbQueue, &v13);
  [(FBSqliteApplicationDataStoreRepository *)self endBatchedUpdate:v13];
  v11 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v26 = [*(a1 + 32) _dbQueue_keysForApplication:*(a1 + 40)];
  if ([v26 count])
  {
    v25 = [*(a1 + 32) _dbQueue_keysForApplication:*(a1 + 48)];
    if ([v25 count])
    {
      v2 = MEMORY[0x1E696ABC0];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_3;
      v40[3] = &unk_1E783BC58;
      v41 = *(a1 + 48);
      v3 = [v2 bs_errorWithDomain:@"FBApplicationDataStore" code:1 configuration:v40];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v26;
      v11 = [obj countByEnumeratingWithState:&v36 objects:v51 count:16];
      if (v11)
      {
        v28 = *v37;
        do
        {
          v12 = 0;
          do
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v36 + 1) + 8 * v12);
            v30 = 0;
            v31 = &v30;
            v32 = 0x3032000000;
            v33 = __Block_byref_object_copy__3;
            v34 = __Block_byref_object_dispose__3;
            v35 = 0;
            v15 = *(a1 + 32);
            v14 = *(a1 + 40);
            v49[0] = @":application_identifier";
            v49[1] = @":key";
            v50[0] = v14;
            v50[1] = v13;
            v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_4;
            v29[3] = &unk_1E783C730;
            v29[4] = &v30;
            [v15 _dbQueue_executeStatement:@"SELECT value FROM kvs bindings:application_identifier_tab resultRowHandler:{key_tab WHERE    application_identifier_tab.application_identifier = :application_identifier    AND key_tab.key = :key    AND kvs.application_identifier = application_identifier_tab.id    AND kvs.key = key_tab.id;", v16, v29}];

            v17 = *(a1 + 32);
            v18 = *(a1 + 48);
            v47[0] = @":application_identifier";
            v47[1] = @":key";
            v48[0] = v18;
            v48[1] = v13;
            v47[2] = @":value";
            v48[2] = v31[5];
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
            [v17 _dbQueue_executeStatement:@"INSERT OR IGNORE INTO application_identifier_tab (application_identifier) VALUES (:application_identifier);INSERT OR IGNORE INTO key_tab (key) VALUES (:key);INSERT INTO kvs (application_identifier bindings:key resultRowHandler:{value)    SELECT application_identifier_tab.id, key_tab.id, :value FROM application_identifier_tab, key_tab WHERE         application_identifier_tab.application_identifier = :application_identifier        AND key_tab.key = :key;", v19, 0}];

            _Block_object_dispose(&v30, 8);
            ++v12;
          }

          while (v11 != v12);
          v11 = [obj countByEnumeratingWithState:&v36 objects:v51 count:16];
        }

        while (v11);
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v45 = @":application_identifier";
      v46 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      [v20 _dbQueue_executeStatement:@"DELETE FROM kvs WHERE     application_identifier IN (SELECT id FROM application_identifier_tab WHERE application_identifier = :application_identifier);" bindings:v22 resultRowHandler:0];

      v23 = *(a1 + 32);
      v44 = obj;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      [v23 _dbQueue_notifyDelegateOfChangeForKeys:v24 application:*(a1 + 48)];

      [*(a1 + 32) _dbQueue_notifyDelegateOfStoreInvalidationForIdentifier:*(a1 + 40)];
    }

    v10 = v25;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_2;
    v42[3] = &unk_1E783BC58;
    v43 = *(a1 + 40);
    v7 = [v6 bs_errorWithDomain:@"FBApplicationDataStore" code:1 configuration:v42];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = v43;
  }
}

void __73__FBSqliteApplicationDataStoreRepository_migrateIdentifier_toIdentifier___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 objectAtIndex:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)_isEligibleForSaving:(id)saving
{
  v14 = *MEMORY[0x1E69E9840];
  savingCopy = saving;
  if (_isEligibleForSaving__onceToken_0 != -1)
  {
    [FBSqliteApplicationDataStoreRepository _isEligibleForSaving:];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = _isEligibleForSaving____eligibleClassTypes_0;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

void __63__FBSqliteApplicationDataStoreRepository__isEligibleForSaving___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DEC8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = _isEligibleForSaving____eligibleClassTypes_0;
  _isEligibleForSaving____eligibleClassTypes_0 = v6;
}

+ (BOOL)_objectRequiresSerialization:(id)serialization
{
  serializationCopy = serialization;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = objc_opt_isKindOfClass() ^ 1;
  }

  return v4 & 1;
}

+ (id)_objectForResultRow:(id)row index:(unint64_t)index
{
  v4 = [row objectAtIndex:index];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)_dbQueue_load
{
  _dbQueue_loadDatabase = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_loadDatabase];
  v4 = FBLogAppDataStore();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_dbQueue_loadDatabase)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "Successfully loaded application data store.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "Waiting to load application data store for first unlock.", buf, 2u);
    }

    objc_initWeak(buf, self);
    dbQueue = self->_dbQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__FBSqliteApplicationDataStoreRepository__dbQueue_load__block_invoke;
    v7[3] = &unk_1E783C758;
    objc_copyWeak(&v8, buf);
    v7[4] = self;
    notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_dbQueue_firstUnlockToken, dbQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __55__FBSqliteApplicationDataStoreRepository__dbQueue_load__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dbQueue_loadDatabase];
  v6 = FBLogAppDataStore();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A89DD000, v7, OS_LOG_TYPE_DEFAULT, "Successfully loaded application data store after first unlock.", v8, 2u);
    }

    [*(a1 + 32) _dbQueue_notifyDelegateOfLateLoad];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __55__FBSqliteApplicationDataStoreRepository__dbQueue_load__block_invoke_cold_1(v7);
    }
  }

  WeakRetained[12] = -1;
  notify_cancel(a2);
}

- (BOOL)_dbQueue_databaseIntegrityCheck
{
  dispatch_assert_queue_V2(self->_dbQueue);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__FBSqliteApplicationDataStoreRepository__dbQueue_databaseIntegrityCheck__block_invoke;
  v11[3] = &unk_1E783C780;
  v4 = v3;
  v12 = v4;
  v10 = 0;
  v5 = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA quick_check;" bindings:0 resultRowHandler:v11 error:&v10];
  v6 = v10;
  if (!v5)
  {
    v8 = FBLogAppDataStore();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBSqliteApplicationDataStoreRepository _dbQueue_databaseIntegrityCheck];
    }

    goto LABEL_8;
  }

  if (([v4 isEqualToArray:&unk_1F1C10978] & 1) == 0)
  {
    v8 = FBLogAppDataStore();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBSqliteApplicationDataStoreRepository _dbQueue_databaseIntegrityCheck];
    }

LABEL_8:
    v7 = !v5;

    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

void __73__FBSqliteApplicationDataStoreRepository__dbQueue_databaseIntegrityCheck__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringAtIndex:0];
  [v2 addObject:v3];
}

- (id)_dbQueue_openDatabase
{
  dispatch_assert_queue_V2(self->_dbQueue);
  storeURL = self->_storeURL;
  p_storeURL = &self->_storeURL;
  v5 = objc_alloc(MEMORY[0x1E698E788]);
  if (storeURL)
  {
    initWithInMemoryDatabase = [v5 initWithFileURL:*p_storeURL dataProtectionClass:1];
  }

  else
  {
    initWithInMemoryDatabase = [v5 initWithInMemoryDatabase];
  }

  v7 = initWithInMemoryDatabase;
  if (!initWithInMemoryDatabase)
  {
    v8 = FBLogAppDataStore();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(FBSqliteApplicationDataStoreRepository *)p_storeURL _dbQueue_openDatabase:v8];
    }
  }

  return v7;
}

- (id)urlByAppendingString:(id)string toURL:(id)l
{
  lCopy = l;
  stringCopy = string;
  lastPathComponent = [lCopy lastPathComponent];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v9 = [lastPathComponent stringByAppendingString:stringCopy];

  v10 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];

  return v10;
}

- (BOOL)_preserveFileAtURL:(id)l
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (MEMORY[0x1AC572820]("[FBSqliteApplicationDataStoreRepository _preserveFileAtURL:]"))
  {
    v4 = [lCopy URLByAppendingPathExtension:@"damaged"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v4 error:0];
    v15 = 0;
    v6 = [defaultManager copyItemAtURL:lCopy toURL:v4 error:&v15];
    v7 = v15;
    v8 = v7;
    if (v6)
    {
      v9 = *MEMORY[0x1E695DB80];
      v14 = v7;
      v10 = [v4 setResourceValue:MEMORY[0x1E695E118] forKey:v9 error:&v14];
      v11 = v14;

      if (v10)
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = FBLogAppDataStore();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [FBSqliteApplicationDataStoreRepository _preserveFileAtURL:];
      }
    }

    else
    {
      v12 = FBLogAppDataStore();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v17 = lCopy;
        v18 = 2114;
        v19 = v4;
        v20 = 2114;
        v21 = v8;
        _os_log_error_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_ERROR, "Error copying damaged database file from URL %{public}@ to URL %{public}@: %{public}@", buf, 0x20u);
      }

      v11 = v8;
    }

    goto LABEL_11;
  }

  LOBYTE(v6) = 1;
LABEL_12:

  return v6;
}

- (BOOL)_dbQueue_tryPreserveDamagedDatabase
{
  if (self->_storeURL)
  {
    v3 = [(FBSqliteApplicationDataStoreRepository *)self urlByAppendingString:@"-wal" toURL:?];
    v4 = [(FBSqliteApplicationDataStoreRepository *)self urlByAppendingString:@"-shm" toURL:self->_storeURL];
    v5 = [(FBSqliteApplicationDataStoreRepository *)self _preserveFileAtURL:self->_storeURL];
    v6 = [(FBSqliteApplicationDataStoreRepository *)self _preserveFileAtURL:v3];
    v7 = [(FBSqliteApplicationDataStoreRepository *)self _preserveFileAtURL:v4]&& v6 && v5;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)_dbQueue_truncateDamagedDatabase
{
  dbQueue_dbConnection = self->_dbQueue_dbConnection;
  v7 = 0;
  v3 = [(BSSqliteDatabaseConnection *)dbQueue_dbConnection truncateDatabaseAndReturnError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = FBLogAppDataStore();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FBSqliteApplicationDataStoreRepository _dbQueue_truncateDamagedDatabase];
    }
  }

  return v3;
}

- (BOOL)_dbQueue_loadDatabase
{
  dispatch_assert_queue_V2(self->_dbQueue);
  _dbQueue_openDatabase = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_openDatabase];
  dbQueue_dbConnection = self->_dbQueue_dbConnection;
  self->_dbQueue_dbConnection = _dbQueue_openDatabase;

  if (!self->_dbQueue_dbConnection)
  {
    goto LABEL_14;
  }

  if (![(FBSqliteApplicationDataStoreRepository *)self _inAlternateSystemApp]&& ![(FBSqliteApplicationDataStoreRepository *)self _dbQueue_databaseIntegrityCheck])
  {
    ADClientAddValueForScalarKey();
    [(BSSqliteDatabaseConnection *)self->_dbQueue_dbConnection close];
    v6 = self->_dbQueue_dbConnection;
    self->_dbQueue_dbConnection = 0;

    [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_tryPreserveDamagedDatabase];
    _dbQueue_openDatabase2 = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_openDatabase];
    v8 = self->_dbQueue_dbConnection;
    self->_dbQueue_dbConnection = _dbQueue_openDatabase2;

    if (self->_dbQueue_dbConnection)
    {
      _dbQueue_truncateDamagedDatabase = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_truncateDamagedDatabase];
      if (!_dbQueue_truncateDamagedDatabase)
      {
        return _dbQueue_truncateDamagedDatabase;
      }

      _dbQueue_databaseIntegrityCheck = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_databaseIntegrityCheck];
      v10 = FBLogAppDataStore();
      v11 = v10;
      if (_dbQueue_databaseIntegrityCheck)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "Successfully truncated damaged database", buf, 2u);
        }

        ADClientAddValueForScalarKey();
        goto LABEL_4;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(FBSqliteApplicationDataStoreRepository *)v11 _dbQueue_loadDatabase];
      }
    }

LABEL_14:
    LOBYTE(_dbQueue_truncateDamagedDatabase) = 0;
    return _dbQueue_truncateDamagedDatabase;
  }

LABEL_4:
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA busy_timeout=1000000" bindings:0 resultRowHandler:0];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA journal_mode=WAL;" bindings:0 resultRowHandler:0];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA synchronous=NORMAL;" bindings:0 resultRowHandler:0];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA cache_size=10;" bindings:0 resultRowHandler:0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__FBSqliteApplicationDataStoreRepository__dbQueue_loadDatabase__block_invoke;
  v13[3] = &unk_1E783C7A8;
  v13[4] = self;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_performWithSavepoint:@"schema" handler:v13];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"PRAGMA foreign_keys=ON;" bindings:0 resultRowHandler:0];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"DELETE FROM application_identifier_tab WHERE application_identifier_tab.id NOT IN (SELECT DISTINCT application_identifier FROM kvs);DELETE FROM key_tab WHERE key_tab.id NOT IN (SELECT DISTINCT key FROM kvs);" bindings:0 resultRowHandler:0];
  LOBYTE(_dbQueue_truncateDamagedDatabase) = 1;
  return _dbQueue_truncateDamagedDatabase;
}

uint64_t __63__FBSqliteApplicationDataStoreRepository__dbQueue_loadDatabase__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _dbQueue_databaseVersion] <= 0)
  {
    [*(a1 + 32) _dbQueue_createTables];
  }

  return 1;
}

- (id)_dbQueue_objectForKey:(id)key forApplication:(id)application
{
  v20[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_dbQueue);
  if (!keyCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_objectForKey:a2 forApplication:?];
  }

  if (!applicationCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_objectForKey:a2 forApplication:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v19[0] = @":application_identifier";
  v19[1] = @":key";
  v20[0] = applicationCopy;
  v20[1] = keyCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__FBSqliteApplicationDataStoreRepository__dbQueue_objectForKey_forApplication___block_invoke;
  v12[3] = &unk_1E783C7D0;
  v12[4] = self;
  v12[5] = &v13;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"SELECT value FROM kvs bindings:application_identifier_tab resultRowHandler:key_tab WHERE    application_identifier_tab.application_identifier = :application_identifier    AND key_tab.key = :key    AND kvs.application_identifier = application_identifier_tab.id    AND kvs.key = key_tab.id;", v9, v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __79__FBSqliteApplicationDataStoreRepository__dbQueue_objectForKey_forApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _objectForResultRow:v3 index:0];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_dbQueue_containsKey:(id)key forApplication:(id)application
{
  v18[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_dbQueue);
  if (!keyCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_containsKey:a2 forApplication:?];
  }

  if (!applicationCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_containsKey:a2 forApplication:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v17[0] = @":application_identifier";
  v17[1] = @":key";
  v18[0] = applicationCopy;
  v18[1] = keyCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__FBSqliteApplicationDataStoreRepository__dbQueue_containsKey_forApplication___block_invoke;
  v12[3] = &unk_1E783C730;
  v12[4] = &v13;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"SELECT 1 FROM kvs bindings:application_identifier_tab resultRowHandler:key_tab WHERE    application_identifier_tab.application_identifier = :application_identifier    AND key_tab.key = :key    AND kvs.application_identifier = application_identifier_tab.id    AND kvs.key = key_tab.id;", v9, v12];

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v10 & 1;
}

- (id)_dbQueue_applicationIdentifiersWithState
{
  dispatch_assert_queue_V2(self->_dbQueue);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__FBSqliteApplicationDataStoreRepository__dbQueue_applicationIdentifiersWithState__block_invoke;
  v7[3] = &unk_1E783C780;
  v8 = v3;
  v4 = v3;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"SELECT application_identifier_tab.application_identifier FROM application_identifier_tab WHERE    application_identifier_tab.id IN (SELECT DISTINCT application_identifier FROM kvs)" bindings:0 resultRowHandler:v7];
  v5 = [v4 copy];

  return v5;
}

void __82__FBSqliteApplicationDataStoreRepository__dbQueue_applicationIdentifiersWithState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringAtIndex:0];
  [v2 addObject:v3];
}

- (id)_dbQueue_keysForApplication:(id)application
{
  v17[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  dispatch_assert_queue_V2(self->_dbQueue);
  if (!applicationCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_keysForApplication:a2];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = @":application_identifier";
  v17[0] = applicationCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __70__FBSqliteApplicationDataStoreRepository__dbQueue_keysForApplication___block_invoke;
  v14 = &unk_1E783C780;
  v15 = v6;
  v8 = v6;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"SELECT key_tab.key FROM kvs bindings:key_tab resultRowHandler:application_identifier_tab WHERE    application_identifier_tab.application_identifier = :application_identifier    AND kvs.application_identifier = application_identifier_tab.id    AND kvs.key = key_tab.id;", v7, &v11];

  v9 = [v8 copy];

  return v9;
}

void __70__FBSqliteApplicationDataStoreRepository__dbQueue_keysForApplication___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringAtIndex:0];
  [v2 addObject:v3];
}

+ (id)_generateParameterizedQuery:(id)query forKeyList:(id)list outBindings:(id *)bindings
{
  v33 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  listCopy = list;
  if (!bindings)
  {
    [FBSqliteApplicationDataStoreRepository _generateParameterizedQuery:a2 forKeyList:? outBindings:?];
  }

  v11 = listCopy;
  if (![listCopy count])
  {
    [FBSqliteApplicationDataStoreRepository _generateParameterizedQuery:a2 forKeyList:self outBindings:?];
  }

  v27 = queryCopy;
  v12 = [v11 count];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v12];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@":k%lu", v17];
        ++v17;
        [v13 setObject:v20 forKeyedSubscript:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  allKeys = [v13 allKeys];
  v23 = [allKeys componentsJoinedByString:{@", "}];
  v24 = [v27 stringByReplacingOccurrencesOfString:@"%@" withString:v23];

  v25 = v13;
  *bindings = v13;

  return v24;
}

- (id)_dbQueue_objectsForKeys:(id)keys
{
  keysCopy = keys;
  dispatch_assert_queue_V2(self->_dbQueue);
  if (!keysCopy)
  {
    [FBSqliteApplicationDataStoreRepository _dbQueue_objectsForKeys:a2];
  }

  v6 = [MEMORY[0x1E695DF90] sharedKeySetForKeys:keysCopy];
  v21 = 0;
  v7 = [objc_opt_class() _generateParameterizedQuery:@"SELECT application_identifier_tab.application_identifier forKeyList:key_tab.key outBindings:{kvs.value FROM kvs, application_identifier_tab, key_tab WHERE    key_tab.key IN (%@)    AND kvs.application_identifier = application_identifier_tab.id    AND kvs.key = key_tab.id", keysCopy, &v21}];;
  v8 = v21;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __66__FBSqliteApplicationDataStoreRepository__dbQueue_objectsForKeys___block_invoke;
  v17 = &unk_1E783C7F8;
  selfCopy = self;
  v19 = v9;
  v20 = v6;
  v10 = v6;
  v11 = v9;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:v7 bindings:v8 resultRowHandler:&v14];
  v12 = [v11 copy];

  return v12;
}

void __66__FBSqliteApplicationDataStoreRepository__dbQueue_objectsForKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [v3 stringAtIndex:0];
  v4 = [v3 stringAtIndex:1];
  v5 = [objc_opt_class() _objectForResultRow:v3 index:2];

  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v9 != 0)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v9];
    if (!v8)
    {
      v8 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:*(a1 + 48)];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v9];
    }

    [v8 setObject:v5 forKeyedSubscript:v4];
  }
}

- (void)_dbQueue_notifyDelegateOfChangeForKeys:(id)keys application:(id)application
{
  keysCopy = keys;
  applicationCopy = application;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__FBSqliteApplicationDataStoreRepository__dbQueue_notifyDelegateOfChangeForKeys_application___block_invoke;
    block[3] = &unk_1E783B300;
    v12 = WeakRetained;
    v13 = keysCopy;
    v14 = applicationCopy;
    dispatch_async(calloutQueue, block);
  }
}

- (void)_dbQueue_notifyDelegateOfStoreInvalidationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    calloutQueue = self->_calloutQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__FBSqliteApplicationDataStoreRepository__dbQueue_notifyDelegateOfStoreInvalidationForIdentifier___block_invoke;
    v8[3] = &unk_1E783B240;
    v9 = WeakRetained;
    v10 = identifierCopy;
    dispatch_async(calloutQueue, v8);
  }
}

- (void)_dbQueue_notifyDelegateOfLateLoad
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_applicationIdentifiersWithState];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_keysForApplication:v8];
          calloutQueue = self->_calloutQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __75__FBSqliteApplicationDataStoreRepository__dbQueue_notifyDelegateOfLateLoad__block_invoke;
          block[3] = &unk_1E783B300;
          v14 = WeakRetained;
          v15 = v9;
          v16 = v8;
          v11 = v9;
          dispatch_async(calloutQueue, block);
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }
  }
}

- (BOOL)_dbQueue_executeStatement:(id)statement bindings:(id)bindings resultRowHandler:(id)handler error:(id *)error
{
  bindingsCopy = bindings;
  handlerCopy = handler;
  v12 = [(BSSqliteDatabaseConnection *)self->_dbQueue_dbConnection prepareStatement:statement];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 executeWithBindings:bindingsCopy resultRowHandler:handlerCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_dbQueue_executeStatement:(id)statement bindings:(id)bindings resultRowHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  statementCopy = statement;
  bindingsCopy = bindings;
  v14 = 0;
  v10 = [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:statementCopy bindings:bindingsCopy resultRowHandler:handler error:&v14];
  v11 = v14;
  if (!v10)
  {
    v12 = FBLogAppDataStore();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = statementCopy;
      v19 = 2112;
      v20 = bindingsCopy;
      _os_log_error_impl(&dword_1A89DD000, v12, OS_LOG_TYPE_ERROR, "Received unexpected query error %{public}@ for query %{public}@ bindings %@", buf, 0x20u);
    }
  }

  return v10;
}

- (void)_dbQueue_performWithSavepoint:(id)savepoint handler:(id)handler
{
  v6 = MEMORY[0x1E696AEC0];
  handlerCopy = handler;
  savepointCopy = savepoint;
  savepointCopy = [v6 stringWithFormat:@"SAVEPOINT %@", savepointCopy];
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:savepointCopy bindings:0 resultRowHandler:0];

  LODWORD(savepointCopy) = handlerCopy[2](handlerCopy);
  if (savepointCopy)
  {
    v10 = @"RELEASE SAVEPOINT %@";
  }

  else
  {
    v10 = @"ROLLBACK TO SAVEPOINT %@";
  }

  savepointCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, savepointCopy];

  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:savepointCopy2 bindings:0 resultRowHandler:0];
}

- (int64_t)_dbQueue_databaseVersion
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__FBSqliteApplicationDataStoreRepository__dbQueue_databaseVersion__block_invoke;
  v4[3] = &unk_1E783C730;
  v4[4] = &v5;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_executeStatement:@"SELECT version FROM schema" bindings:0 resultRowHandler:v4 error:0];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__66__FBSqliteApplicationDataStoreRepository__dbQueue_databaseVersion__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 integerAtIndex:0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)_dbQueue_createTables
{
  v3 = FBLogAppDataStore();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "Creating new database tables.", buf, 2u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__FBSqliteApplicationDataStoreRepository__dbQueue_createTables__block_invoke;
  v4[3] = &unk_1E783C7A8;
  v4[4] = self;
  [(FBSqliteApplicationDataStoreRepository *)self _dbQueue_performWithSavepoint:@"createTables" handler:v4];
}

uint64_t __63__FBSqliteApplicationDataStoreRepository__dbQueue_createTables__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0;
  v2 = [v1 _dbQueue_executeStatement:@"CREATE TABLE schema(version INT NOT NULL);INSERT INTO schema (version) VALUES (1);CREATE TABLE key_tab (id INTEGER PRIMARY KEY bindings:key TEXT NOT NULL resultRowHandler:UNIQUE(key));CREATE TABLE application_identifier_tab (id INTEGER PRIMARY KEY error:{application_identifier TEXT NOT NULL, UNIQUE(application_identifier));CREATE TABLE kvs(   id INTEGER PRIMARY KEY, application_identifier INT REFERENCES application_identifier_tab(id), key INT REFERENCES key_tab(id), value BLOB, UNIQUE(application_identifier, key));CREATE INDEX kvs_keys ON kvs(key);CREATE INDEX kvs_application_identifiers ON kvs(application_identifier);CREATE VIEW kvs_debug AS     SELECT application_identifier_tab.application_identifier, key_tab.key, value FROM application_identifier_tab, key_tab, kvs WHERE         kvs.application_identifier=application_identifier_tab.id         AND kvs.key=key_tab.id;", 0, 0, &v6}];
  v3 = v6;
  if ((v2 & 1) == 0)
  {
    v4 = FBLogAppDataStore();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__FBSqliteApplicationDataStoreRepository__dbQueue_createTables__block_invoke_cold_1(v3, v4);
    }
  }

  return v2;
}

- (BOOL)_inAlternateSystemApp
{
  if (_inAlternateSystemApp_onceToken != -1)
  {
    [FBSqliteApplicationDataStoreRepository _inAlternateSystemApp];
  }

  return _inAlternateSystemApp_inAlternateSystemApp;
}

void __63__FBSqliteApplicationDataStoreRepository__inAlternateSystemApp__block_invoke()
{
  v2 = [MEMORY[0x1E698F498] defaultShellMachName];
  v0 = [MEMORY[0x1E698E6D0] environmentAliases];
  v1 = [v0 resolveMachService:v2];

  _inAlternateSystemApp_inAlternateSystemApp = [v2 isEqualToString:v1] ^ 1;
}

- (void)setObject:(char *)a1 forKey:forApplication:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"objectToStore != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_openDatabase
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_2_1(&dword_1A89DD000, a2, a3, "Failed to open application data store %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_preserveFileAtURL:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1A89DD000, v1, OS_LOG_TYPE_ERROR, "Error marking URL %{public}@ as excluded from backup %{public}@", v2, 0x16u);
}

- (void)_dbQueue_objectForKey:(char *)a1 forApplication:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_objectForKey:(char *)a1 forApplication:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"key"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_containsKey:(char *)a1 forApplication:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_containsKey:(char *)a1 forApplication:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"key"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_keysForApplication:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_generateParameterizedQuery:(char *)a1 forKeyList:(uint64_t)a2 outBindings:.cold.1(char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"key list must contain at least one key"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_12();
    v6 = NSStringFromClass(v5);
    v7 = 138544642;
    v8 = a1;
    v9 = 2114;
    v10 = v6;
    v11 = 2048;
    v12 = a2;
    v13 = 2114;
    v14 = @"FBSqliteApplicationDataStoreRepository.m";
    v15 = 1024;
    v16 = 692;
    v17 = 2114;
    v18 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_generateParameterizedQuery:(char *)a1 forKeyList:outBindings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outBindings"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_dbQueue_objectsForKeys:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"keys"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __63__FBSqliteApplicationDataStoreRepository__dbQueue_createTables__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = "[FBSqliteApplicationDataStoreRepository _dbQueue_createTables]_block_invoke";
  v4 = 2114;
  v5 = a1;
  v6 = 2114;
  v7 = @"CREATE TABLE schema(version INT NOT NULL);INSERT INTO schema (version) VALUES (1);CREATE TABLE key_tab (id INTEGER PRIMARY KEY, key TEXT NOT NULL, UNIQUE(key));CREATE TABLE application_identifier_tab (id INTEGER PRIMARY KEY, application_identifier TEXT NOT NULL, UNIQUE(application_identifier));CREATE TABLE kvs(   id INTEGER PRIMARY KEY,    application_identifier INT REFERENCES application_identifier_tab(id),    key INT REFERENCES key_tab(id),    value BLOB,    UNIQUE(application_identifier, key));CREATE INDEX kvs_keys ON kvs(key);CREATE INDEX kvs_application_identifiers ON kvs(application_identifier);CREATE VIEW kvs_debug AS     SELECT application_identifier_tab.application_identifier, key_tab.key, value FROM application_identifier_tab, key_tab, kvs WHERE         kvs.application_identifier=application_identifier_tab.id         AND kvs.key=key_tab.id;";
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "%s: received error %{public}@ creating tables (query = %{public}@)", &v2, 0x20u);
}

@end