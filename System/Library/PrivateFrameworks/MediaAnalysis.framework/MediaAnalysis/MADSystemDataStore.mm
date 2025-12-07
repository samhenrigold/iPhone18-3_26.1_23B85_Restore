@interface MADSystemDataStore
+ (id)defaultDatabasePath;
+ (id)modelDefinitionPath;
+ (id)systemDataStore;
+ (id)systemDataStoreAtPath:(id)path;
- (BOOL)commitChangesOrRollback:(id *)rollback;
- (BOOL)commitChangesOrRollbackAndResetContext:(id *)context;
- (MADSystemDataStore)initWithManagedObjectModel:(id)model;
- (MADSystemDataStore)initWithManagedObjectModel:(id)model path:(id)path;
- (id)newManagedObjectContext;
- (void)rollbackAndResetContext;
@end

@implementation MADSystemDataStore

+ (id)modelDefinitionPath
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaAnalysis"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 pathForResource:@"SystemDataStore" ofType:@"momd"];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to load bundle", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)defaultDatabasePath
{
  v2 = [@"/var/mobile/" stringByAppendingPathComponent:@"Library/MediaAnalysis/MediaAnalysis.sqlite"];

  return v2;
}

- (MADSystemDataStore)initWithManagedObjectModel:(id)model path:(id)path
{
  v44[4] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  pathCopy = path;
  v38.receiver = self;
  v38.super_class = MADSystemDataStore;
  v8 = [(MADSystemDataStore *)&v38 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:modelCopy];
    persistentStoreCoordinator = v8->_persistentStoreCoordinator;
    v8->_persistentStoreCoordinator = v9;

    v11 = *MEMORY[0x1E695D318];
    v43[0] = *MEMORY[0x1E695D380];
    v43[1] = v11;
    v44[0] = MEMORY[0x1E695E118];
    v44[1] = MEMORY[0x1E695E118];
    v12 = *MEMORY[0x1E695D3F8];
    v43[2] = *MEMORY[0x1E695D4A0];
    v43[3] = v12;
    v13 = *MEMORY[0x1E696A388];
    v44[2] = &unk_1F49BF2E8;
    v44[3] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:4];
    if (pathCopy)
    {
      defaultDatabasePath = pathCopy;
    }

    else
    {
      defaultDatabasePath = [objc_opt_class() defaultDatabasePath];
      if (!defaultDatabasePath)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to determine database path", buf, 2u);
        }

        goto LABEL_36;
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v17 = defaultManager;
    if (pathCopy)
    {
      if (([defaultManager fileExistsAtPath:pathCopy] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v42 = pathCopy;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Provided path does not exist: %@", buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        v33 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      stringByDeletingLastPathComponent = [defaultDatabasePath stringByDeletingLastPathComponent];
      if (([v17 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) == 0)
      {
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = stringByDeletingLastPathComponent;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Creating %@", buf, 0xCu);
        }

        v39 = *MEMORY[0x1E696A370];
        v40 = &unk_1F49BC178;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v37 = 0;
        v20 = [v17 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v19 error:&v37];
        v21 = v37;

        if ((v20 & 1) == 0)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v42 = v21;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create MediaAnalysis directory for database (%@)", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }
    }

    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = defaultDatabasePath;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Opening %@", buf, 0xCu);
    }

    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:defaultDatabasePath isDirectory:0];
    storeURL = v8->_storeURL;
    v8->_storeURL = v22;

    v24 = v8->_persistentStoreCoordinator;
    v25 = *MEMORY[0x1E695D4A8];
    v26 = v8->_storeURL;
    v36 = 0;
    v27 = [(NSPersistentStoreCoordinator *)v24 addPersistentStoreWithType:v25 configuration:0 URL:v26 options:v14 error:&v36];
    v28 = v36;
    v29 = v28;
    if (v28)
    {
      code = [v28 code];
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v29;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create database (%@)", buf, 0xCu);
      }
    }

    else
    {
      v31 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
      managedObjectContext = v8->_managedObjectContext;
      v8->_managedObjectContext = v31;

      [(NSManagedObjectContext *)v8->_managedObjectContext setPersistentStoreCoordinator:v8->_persistentStoreCoordinator];
      [(NSManagedObjectContext *)v8->_managedObjectContext setMergePolicy:*MEMORY[0x1E695D378]];
      code = 0;
    }

    if (code)
    {
      goto LABEL_36;
    }
  }

  v33 = v8;
LABEL_37:
  v34 = v33;

  return v34;
}

- (MADSystemDataStore)initWithManagedObjectModel:(id)model
{
  modelCopy = model;
  v5 = [[MADSystemDataStore alloc] initWithManagedObjectModel:modelCopy path:0];

  return v5;
}

+ (id)systemDataStoreAtPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  modelDefinitionPath = [objc_opt_class() modelDefinitionPath];
  if (modelDefinitionPath)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:modelDefinitionPath];
    v6 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v5];
    if (v6)
    {
      v7 = [[MADSystemDataStore alloc] initWithManagedObjectModel:v6 path:pathCopy];
      v8 = +[MADSystemDataStore systemDataStoreAtPath:]::database;
      +[MADSystemDataStore systemDataStoreAtPath:]::database = v7;

      if (+[MADSystemDataStore systemDataStoreAtPath:]::database)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = pathCopy;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore] Successfully opened MediaAnalysis CoreData at path %@", &v14, 0xCu);
        }

        v9 = +[MADSystemDataStore systemDataStoreAtPath:]::database;
        goto LABEL_20;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        v9 = 0;
LABEL_20:

        goto LABEL_21;
      }

      v14 = 138412290;
      v15 = pathCopy;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[MADSystemDataStore] Failed to open MediaAnalysis CoreData at path %@";
      v12 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      LOWORD(v14) = 0;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "[MADSystemDataStore] Failed to load embedding model";
      v12 = 2;
    }

    _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, v11, &v14, v12);
    goto LABEL_19;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Missing model definition (%@)", &v14, 0xCu);
  }

  v9 = 0;
LABEL_21:

  return v9;
}

+ (id)systemDataStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__MADSystemDataStore_systemDataStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[MADSystemDataStore systemDataStore]::once != -1)
  {
    dispatch_once(&+[MADSystemDataStore systemDataStore]::once, block);
  }

  v2 = +[MADSystemDataStore systemDataStore]::database;

  return v2;
}

void __37__MADSystemDataStore_systemDataStore__block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() modelDefinitionPath];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v4 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v3];
    if (v4)
    {
      v5 = [[MADSystemDataStore alloc] initWithManagedObjectModel:v4];
      v6 = +[MADSystemDataStore systemDataStore]::database;
      +[MADSystemDataStore systemDataStore]::database = v5;

      if (+[MADSystemDataStore systemDataStore]::database)
      {
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADSystemDataStore] Successfully opened MediaAnalysis CoreData", &buf, 2u);
        }

        v7 = objc_autoreleasePoolPush();
        v8 = [+[MADSystemDataStore systemDataStore]::database _persistentStoreCoordinator];
        v9 = v8;
        if (!v8)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = @"[MADSystemDataStore][Migration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch store coordinator", &buf, 0xCu);
          }

          goto LABEL_48;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v57 = 0x3032000000;
        v58 = __Block_byref_object_copy__31;
        v59 = __Block_byref_object_dispose__31;
        v60 = 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_224;
        v44[3] = &unk_1E834C4B0;
        p_buf = &buf;
        v10 = v8;
        v45 = v10;
        [v10 performBlockAndWait:v44];
        if (!*(*(&buf + 1) + 40))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LODWORD(v51) = 138412290;
            *(&v51 + 4) = @"[MADSystemDataStore][Migration]";
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to fetch store with coordinator", &v51, 0xCu);
          }

          goto LABEL_47;
        }

        *&v51 = 0;
        *(&v51 + 1) = &v51;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__31;
        v54 = __Block_byref_object_dispose__31;
        v55 = 0;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_226;
        v40[3] = &unk_1E834E3C8;
        v42 = &v51;
        v11 = v10;
        v41 = v11;
        v43 = &buf;
        [v11 performBlockAndWait:v40];
        v29 = [*(*(&v51 + 1) + 40) objectForKeyedSubscript:@"ActivityScheduleMigrationDate"];
        v28 = [*(*(&v51 + 1) + 40) objectForKeyedSubscript:@"ActivityScheduleMigrationAttempts"];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          v12 = +[VCPLogManager dateFormatter];
          v13 = [v12 stringFromDate:v29];
          *v47 = 138412546;
          v48 = @"[MADSystemDataStore][Migration]";
          v49 = 2112;
          v50 = v13;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Migration date %@", v47, 0x16u);
        }

        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *v47 = 138412546;
          v48 = @"[MADSystemDataStore][Migration]";
          v49 = 2112;
          v50 = v28;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%@ Migration attempts %@", v47, 0x16u);
        }

        if (v28)
        {
          v14 = [v28 intValue];
        }

        else
        {
          v14 = 0;
        }

        if (v29 || v14 > 4)
        {
          if (!v29 || !v14)
          {
            goto LABEL_46;
          }

          v26 = [*(*(&v51 + 1) + 40) mutableCopy];
          [v26 removeObjectForKey:@"ActivityScheduleMigrationAttempts"];
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_238;
          v30[3] = &unk_1E834CE28;
          v31 = v11;
          v19 = v26;
          v32[0] = v19;
          v32[1] = &buf;
          [v31 performBlockAndWait:v30];
          v24 = &v31;
          v25 = v32;
        }

        else
        {
          v27 = [*(*(&v51 + 1) + 40) mutableCopy];
          v17 = [MEMORY[0x1E696AD98] numberWithInt:(v14 + 1)];
          [v27 setValue:v17 forKey:@"ActivityScheduleMigrationAttempts"];

          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 3221225472;
          v37[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_235;
          v37[3] = &unk_1E834CE28;
          v18 = v11;
          v38 = v18;
          v19 = v27;
          v39[0] = v19;
          v39[1] = &buf;
          [v18 performBlockAndWait:v37];
          v20 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
          [v20 setPersistentStoreCoordinator:v18];
          [v20 setMergePolicy:*MEMORY[0x1E695D378]];
          if ([MADManagedBackgroundActivitySchedule migrateDataWithManagedObjectContext:v20])
          {
            v21 = [MEMORY[0x1E695DF00] now];
            [v19 setValue:v21 forKey:@"ActivityScheduleMigrationDate"];

            [v19 removeObjectForKey:@"ActivityScheduleMigrationAttempts"];
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __37__MADSystemDataStore_systemDataStore__block_invoke_2;
            v33[3] = &unk_1E834CE28;
            v34 = v18;
            v22 = v19;
            v35 = v22;
            v36 = &buf;
            [v34 performBlockAndWait:v33];
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v22 objectForKeyedSubscript:@"ActivityScheduleMigrationDate"];
              *v47 = 138412546;
              v48 = @"[MADSystemDataStore][Migration]";
              v49 = 2112;
              v50 = v23;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ Migrated Scheduling History (%@)", v47, 0x16u);
            }
          }

          v24 = &v38;
          v25 = v39;
        }

LABEL_46:
        _Block_object_dispose(&v51, 8);

LABEL_47:
        _Block_object_dispose(&buf, 8);

LABEL_48:
        objc_autoreleasePoolPop(v7);
        goto LABEL_49;
      }

      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      LOWORD(buf) = 0;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "[MADSystemDataStore] Failed to open MediaAnalysis CoreData";
    }

    else
    {
      if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      LOWORD(buf) = 0;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "[MADSystemDataStore] Failed to load embedding model";
    }

    _os_log_impl(&dword_1C9B70000, v15, OS_LOG_TYPE_ERROR, v16, &buf, 2u);
LABEL_49:

    goto LABEL_50;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Missing model definition (%@)", &buf, 0xCu);
  }

LABEL_50:
}

void __37__MADSystemDataStore_systemDataStore__block_invoke_224(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [+[MADSystemDataStore systemDataStore]::database _storeURL];
  v3 = [v2 persistentStoreForURL:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __37__MADSystemDataStore_systemDataStore__block_invoke_226(uint64_t a1)
{
  v2 = [*(a1 + 32) metadataForPersistentStore:*(*(*(a1 + 48) + 8) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)newManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  [v3 setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  [v3 setMergePolicy:*MEMORY[0x1E695D378]];
  return v3;
}

- (void)rollbackAndResetContext
{
  [(NSManagedObjectContext *)self->_managedObjectContext rollback];
  [(NSManagedObjectContext *)self->_managedObjectContext reset];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Roll back and reset context", v3, 2u);
  }
}

- (BOOL)commitChangesOrRollback:(id *)rollback
{
  v11 = *MEMORY[0x1E69E9840];
  managedObjectContext = self->_managedObjectContext;
  v8 = 0;
  v5 = [(NSManagedObjectContext *)managedObjectContext save:&v8];
  v6 = v8;
  if (v5)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Committed changes", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to commit changes (%@)", buf, 0xCu);
    }

    if (rollback)
    {
      *rollback = [v6 copy];
    }
  }

  return v5;
}

- (BOOL)commitChangesOrRollbackAndResetContext:(id *)context
{
  v12 = *MEMORY[0x1E69E9840];
  managedObjectContext = self->_managedObjectContext;
  v9 = 0;
  v6 = [(NSManagedObjectContext *)managedObjectContext save:&v9];
  v7 = v9;
  if (v6)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MADSystemDataStore] Committed changes", buf, 2u);
    }

    [(NSManagedObjectContext *)self->_managedObjectContext reset];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStore] Failed to commit changes (%@)", buf, 0xCu);
    }

    [(MADSystemDataStore *)self rollbackAndResetContext];
    if (context)
    {
      *context = [v7 copy];
    }
  }

  return v6;
}

@end