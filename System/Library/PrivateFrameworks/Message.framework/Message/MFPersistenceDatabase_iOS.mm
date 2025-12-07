@interface MFPersistenceDatabase_iOS
+ (OS_os_log)log;
- (BOOL)_migrateWithDatabaseConnection:(id)connection migrator:(id)migrator;
- (BOOL)mailMessageLibraryMigrator:(id)migrator attachProtectedDatabaseWithName:(id)name connection:(id)connection error:(id *)error;
- (MFPersistenceDatabase_iOS)initWithBasePath:(id)path databaseName:(id)name minimumCachedReaderConnections:(unint64_t)connections schema:(id)schema protectedSchema:(id)protectedSchema propertyMapper:(id)mapper protectedDatabasePersistence:(id)persistence;
- (id)checkOutConnectionIsWriter:(BOOL)writer;
- (id)journalManagerForMailMessageLibraryMigrator:(id)migrator;
- (id)openConnectionIsWriter:(BOOL)writer;
- (void)addPostMigrationStep:(Class)step;
- (void)checkInConnection:(id)connection;
- (void)handleExceptionDuringDatabaseBlock:(id)block;
- (void)mailMessageLibraryMigrator:(id)migrator detachProtectedDatabaseWithConnection:(id)connection;
- (void)mailMessageLibraryMigrator:(id)migrator isInitializingDatabaseWithConnection:(id)connection;
- (void)mailMessageLibraryMigratorScheduleSpotlightReindex:(id)reindex;
@end

@implementation MFPersistenceDatabase_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFPersistenceDatabase_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_28 != -1)
  {
    dispatch_once(&log_onceToken_28, block);
  }

  v2 = log_log_28;

  return v2;
}

- (MFPersistenceDatabase_iOS)initWithBasePath:(id)path databaseName:(id)name minimumCachedReaderConnections:(unint64_t)connections schema:(id)schema protectedSchema:(id)protectedSchema propertyMapper:(id)mapper protectedDatabasePersistence:(id)persistence
{
  pathCopy = path;
  nameCopy = name;
  schemaCopy = schema;
  protectedSchemaCopy = protectedSchema;
  mapperCopy = mapper;
  persistenceCopy = persistence;
  v27.receiver = self;
  v27.super_class = MFPersistenceDatabase_iOS;
  v21 = [(EDPersistenceDatabase *)&v27 initWithBasePath:pathCopy databaseName:nameCopy minimumCachedReaderConnections:connections schema:schemaCopy protectedSchema:protectedSchemaCopy propertyMapper:mapperCopy protectedDatabasePersistence:persistenceCopy];
  if (v21)
  {
    v22 = objc_opt_new();
    migrationLock = v21->_migrationLock;
    v21->_migrationLock = v22;

    v24 = objc_opt_new();
    postMigrationSteps = v21->_postMigrationSteps;
    v21->_postMigrationSteps = v24;
  }

  return v21;
}

- (id)checkOutConnectionIsWriter:(BOOL)writer
{
  writerCopy = writer;
  if (!+[MFMailMessageLibrary canUsePersistence])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFPersistenceDatabase_iOS.m" lineNumber:47 description:@"Trying to access the database in MobileMail"];
  }

  v11.receiver = self;
  v11.super_class = MFPersistenceDatabase_iOS;
  v6 = [(EDPersistenceDatabase *)&v11 checkOutConnectionIsWriter:writerCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MFPersistenceDatabase_iOS.m" lineNumber:50 description:@"Got wrong type of connection"];
  }

  ECBeginDisallowingNetworkActivity();
  v7 = +[MFMailMessageLibrary defaultInstance];
  [v7 reloadMailboxCacheIfNecessaryWithConnection:v6];

  return v6;
}

- (void)checkInConnection:(id)connection
{
  connectionCopy = connection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFPersistenceDatabase_iOS.m" lineNumber:60 description:@"Got wrong type of connection"];
  }

  ECEndDisallowingNetworkActivity();
  v7.receiver = self;
  v7.super_class = MFPersistenceDatabase_iOS;
  [(EDPersistenceDatabase *)&v7 checkInConnection:connectionCopy];
}

- (id)openConnectionIsWriter:(BOOL)writer
{
  writerCopy = writer;
  v5 = [MFPersistenceDatabaseConnection_iOS alloc];
  basePath = [(EDPersistenceDatabase *)self basePath];
  databaseName = [(EDPersistenceDatabase *)self databaseName];
  v8 = [(EDPersistenceDatabaseConnection *)v5 initWithBasePath:basePath databaseName:databaseName isWriter:writerCopy delegate:self];

  [(EDPersistenceDatabaseConnection *)v8 open];
  migrationLock = [(MFPersistenceDatabase_iOS *)self migrationLock];
  objc_sync_enter(migrationLock);
  if (![(MFPersistenceDatabase_iOS *)self migrationHasRun])
  {
    v10 = [[MFMailMessageLibraryMigrator alloc] initWithDelegate:self];
    if (![(EDPersistenceDatabaseConnection *)v8 isValid]|| ![(MFPersistenceDatabase_iOS *)self _migrateWithDatabaseConnection:v8 migrator:v10])
    {
      [(EDPersistenceDatabaseConnection *)v8 close];

      v11 = +[MFMailMessageLibrary defaultInstance];
      [v11 handleFailedMigration];

      v8 = 0;
    }

    [(MFPersistenceDatabase_iOS *)self setMigrationHasRun:1];
  }

  if (![(MFPersistenceDatabase_iOS *)self createdTempTable]&& writerCopy)
  {
    sqlite3_exec([(EDPersistenceDatabaseConnection *)v8 sqlDB], "CREATE TEMPORARY TABLE temp_selected_messages (message_id INTEGER);", 0, 0, 0);
    [(MFPersistenceDatabase_iOS *)self setCreatedTempTable:1];
  }

  objc_sync_exit(migrationLock);

  return v8;
}

- (BOOL)_migrateWithDatabaseConnection:(id)connection migrator:(id)migrator
{
  v22 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  migratorCopy = migrator;
  schema = [(EDPersistenceDatabase *)self schema];
  v9 = [migratorCopy migrateWithDatabaseConnection:connectionCopy schema:schema];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    postMigrationSteps = [(MFPersistenceDatabase_iOS *)self postMigrationSteps];
    v11 = [postMigrationSteps countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(postMigrationSteps);
          }

          v14 = [*(*(&v17 + 1) + 8 * i) runWithConnection:connectionCopy];
        }

        v15 = v14;
        v11 = [postMigrationSteps countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
      LOBYTE(v9) = v15 == 0;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)addPostMigrationStep:(Class)step
{
  postMigrationSteps = [(MFPersistenceDatabase_iOS *)self postMigrationSteps];
  [postMigrationSteps addObject:step];
}

- (void)handleExceptionDuringDatabaseBlock:(id)block
{
  blockCopy = block;
  v5.receiver = self;
  v5.super_class = MFPersistenceDatabase_iOS;
  [(EDPersistenceDatabase *)&v5 handleExceptionDuringDatabaseBlock:blockCopy];
  objc_exception_throw(blockCopy);
}

- (BOOL)mailMessageLibraryMigrator:(id)migrator attachProtectedDatabaseWithName:(id)name connection:(id)connection error:(id *)error
{
  nameCopy = name;
  connectionCopy = connection;
  v11 = [(EDPersistenceDatabase *)self urlFileProtectionTypeForDatabaseType:1];
  if ([v11 isEqualToString:*MEMORY[0x1E695DAD8]])
  {
    v12 = *MEMORY[0x1E695DAE0];

    v11 = v12;
  }

  protectedDatabasePath = [(EDPersistenceDatabase *)self protectedDatabasePath];
  v14 = [(EDPersistenceDatabase *)self urlForDatabasePath:protectedDatabasePath type:1 fileProtection:v11];

  v15 = [connectionCopy attachProtectedDatabaseWithName:nameCopy url:v14 error:error];
  return v15;
}

- (void)mailMessageLibraryMigrator:(id)migrator detachProtectedDatabaseWithConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  [connection detachProtectedDatabase];
  v5 = [(EDPersistenceDatabase *)self urlFileProtectionTypeForDatabaseType:1];
  if (v5)
  {
    protectedDatabasePath = [(EDPersistenceDatabase *)self protectedDatabasePath];
    v7 = [(EDPersistenceDatabase *)self urlForDatabasePath:protectedDatabasePath type:1];

    v16 = 0;
    v8 = [MEMORY[0x1E699B8E0] setFileProtection:v5 forDatabaseAtURL:v7 error:&v16];
    v9 = v16;
    v10 = v9;
    if (v8)
    {
LABEL_11:

      goto LABEL_12;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:*MEMORY[0x1E699B770]])
    {
      v12 = [v10 code] == 23;

      if (v12)
      {
        v13 = +[MFPersistenceDatabase_iOS log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          ef_publicDescription = [v10 ef_publicDescription];
          *buf = 138543362;
          v18 = ef_publicDescription;
          _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_INFO, "Couldn't reset file protection of protected database. The device is probably locked. %{public}@", buf, 0xCu);
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = +[MFPersistenceDatabase_iOS log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription2 = [v10 ef_publicDescription];
      [(MFPersistenceDatabase_iOS *)ef_publicDescription2 mailMessageLibraryMigrator:buf detachProtectedDatabaseWithConnection:v13];
    }

    goto LABEL_10;
  }

LABEL_12:
}

- (void)mailMessageLibraryMigrator:(id)migrator isInitializingDatabaseWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = +[MFMailMessageLibrary defaultInstance];
  hookRegistry = [v4 hookRegistry];
  [hookRegistry persistenceIsInitializingDatabaseWithConnection:connectionCopy];
}

- (void)mailMessageLibraryMigratorScheduleSpotlightReindex:(id)reindex
{
  v5 = +[MFMailMessageLibrary defaultInstance];
  persistence = [v5 persistence];
  searchableIndexManager = [persistence searchableIndexManager];
  [searchableIndexManager setNeedsToRedonate];
}

- (id)journalManagerForMailMessageLibraryMigrator:(id)migrator
{
  protectedDatabasePersistence = [(EDPersistenceDatabase *)self protectedDatabasePersistence];
  journalManager = [protectedDatabasePersistence journalManager];

  return journalManager;
}

- (void)mailMessageLibraryMigrator:(os_log_t)log detachProtectedDatabaseWithConnection:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to reset file protection of protected database: %{public}@", buf, 0xCu);
}

@end