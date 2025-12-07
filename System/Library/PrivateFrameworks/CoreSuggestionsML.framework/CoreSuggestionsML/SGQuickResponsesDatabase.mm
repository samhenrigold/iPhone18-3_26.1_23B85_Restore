@interface SGQuickResponsesDatabase
+ (id)_openAnotherHandleForPath:(id)path;
+ (id)_openFreshHandleForPath:(id)path inMemory:(BOOL)memory;
- (BOOL)_handleCorruptionWithCheck:(BOOL)check path:(id)path inMemory:(BOOL)memory;
- (BOOL)_performMigrationsWithPath:(id)path inMemory:(BOOL)memory attemptIteration:(int)iteration;
- (id)initInDirectory:(id)directory inMemory:(BOOL)memory withMigration:(BOOL)migration forTools:(BOOL)tools;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version;
@end

@implementation SGQuickResponsesDatabase

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)version
{
  if (version)
  {
    *version = 0;
  }

  return MEMORY[0x277CBEBF8];
}

- (id)migrations
{
  v19[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"CREATE TABLE responses(   lang_response TEXT PRIMARY KEY,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v17[1] = @"CREATE TABLE responses_totals(   language TEXT PRIMARY KEY,     opportunities INTEGER NOT NULL DEFAULT 0,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0,     unmatched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v18[0] = &unk_28599AF48;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v19[0] = v2;
  v18[1] = &unk_28599AF60;
  v16 = @"CREATE TABLE messages(   reply TEXT NOT NULL,    language TEXT NOT NULL,     prompt TEXT NOT NULL,     recipient TEXT NOT NULL,     sent_at DOUBLE NOT NULL,     filtering BOOL NOT NULL,     filtered BOOL NOT NULL)";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v19[1] = v3;
  v18[2] = &unk_28599AF78;
  v15 = @"CREATE TABLE custom_responses(   reply TEXT NOT NULL,     language TEXT NOT NULL,     prompt_embedding BLOB NOT NULL,     decayed_times_used DOUBLE NOT NULL,     first_seen DOUBLE NOT NULL,     last_seen DOUBLE NOT NULL)";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v19[2] = v4;
  v18[3] = &unk_28599AF90;
  v14 = @"CREATE TABLE custom_responses_version(   current_version INTEGER NOT NULL,     profanity_locale TEXT NOT NULL)";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v19[3] = v5;
  v18[4] = &unk_28599AFA8;
  v13[0] = @"CREATE TABLE cr_per_recipient_counts(   reply TEXT NOT NULL,     language TEXT NOT NULL,     recipient TEXT NOT NULL,     decayed_times_used DOUBLE NOT NULL, UNIQUE(reply, language, recipient))";
  v13[1] = @"ALTER TABLE custom_responses ADD COLUMN usage_spread DOUBLE NOT NULL DEFAULT 0.0";
  v13[2] = @"UPDATE custom_responses SET usage_spread = (SELECT CAST(u AS FLOAT)/c FROM    (SELECT count(distinct(recipient)) AS u FROM messages WHERE messages.reply=custom_responses.reply AND messages.language=custom_responses.language),    (SELECT count(distinct(recipient)) AS c FROM messages));";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v19[4] = v6;
  v18[5] = &unk_28599AFC0;
  v12 = @"CREATE TABLE responses_snapshot(   lang_response TEXT PRIMARY KEY,     displayed INTEGER NOT NULL DEFAULT 0,     selected INTEGER NOT NULL DEFAULT 0,     matched INTEGER NOT NULL DEFAULT 0) WITHOUT ROWID";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v19[5] = v7;
  v18[6] = &unk_28599AFD8;
  v11[0] = @"DELETE FROM responses";
  v11[1] = @"DELETE FROM responses_totals";
  v11[2] = @"DELETE FROM responses_snapshot";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  v19[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  return v9;
}

- (BOOL)_performMigrationsWithPath:(id)path inMemory:(BOOL)memory attemptIteration:(int)iteration
{
  memoryCopy = memory;
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(SGQuickResponsesDatabase *)self _handleCorruptionWithCheck:1 path:pathCopy inMemory:memoryCopy])
  {
    v9 = (iteration + 1);
    if (iteration >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v20 = iteration + 1;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase not migrating, too many attempts (%d)", buf, 8u);
      }

      goto LABEL_5;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "SGQuickResponsesDatabase migrating db", buf, 2u);
    }

    v11 = objc_alloc(MEMORY[0x277D42588]);
    selfCopy = self;
    v10 = 1;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&selfCopy count:1];
    v13 = [v11 initWithMigrationObjects:v12];

    migrateDatabases = [v13 migrateDatabases];
    if (migrateDatabases > 2)
    {
      if ((migrateDatabases - 5) < 2)
      {
        if ([(SGQuickResponsesDatabase *)self _handleCorruptionWithCheck:0 path:pathCopy inMemory:memoryCopy])
        {

          v10 = [(SGQuickResponsesDatabase *)self _performMigrationsWithPath:pathCopy inMemory:memoryCopy attemptIteration:v9];
          v13 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        if (migrateDatabases != 3)
        {
          if (migrateDatabases != 4 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          *buf = 0;
          v15 = MEMORY[0x277D86220];
          v16 = "SGQuickResponsesDatabase got unexpected migration result of 'step completed', will not use database";
          goto LABEL_25;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v15 = MEMORY[0x277D86220];
          v16 = "SGQuickResponsesDatabase has a future schema version, cannot use database";
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (migrateDatabases)
      {
        if (migrateDatabases != 1)
        {
          if (migrateDatabases != 2 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          *buf = 0;
          v15 = MEMORY[0x277D86220];
          v16 = "SGQuickResponsesDatabase migrations failed, cannot use database";
          goto LABEL_25;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v15 = MEMORY[0x277D86220];
        v16 = "SGQuickResponsesDatabase could not perform migrations (device locked?), try again later";
LABEL_25:
        _os_log_error_impl(&dword_24799E000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      }
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

LABEL_5:
  v10 = 0;
LABEL_28:

  return v10;
}

- (BOOL)_handleCorruptionWithCheck:(BOOL)check path:(id)path inMemory:(BOOL)memory
{
  checkCopy = check;
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (memory)
  {
    v9 = 1;
  }

  else
  {
    v10 = [MEMORY[0x277D42630] corruptionMarkerPathForPath:pathCopy];
    if (checkCopy && ([MEMORY[0x277CCAA00] defaultManager], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "fileExistsAtPath:isDirectory:", v10, 0), v11, !v12))
    {
      v9 = 1;
    }

    else
    {
      db = self->_db;
      p_db = &self->_db;
      [(_PASSqliteDatabase *)db closePermanently];
      [MEMORY[0x277D42630] truncateDatabaseAtPath:pathCopy];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      v16 = [defaultManager removeItemAtPath:v10 error:&v21];
      v17 = v21;

      if ((v16 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v17 localizedDescription];
        *buf = 138412546;
        v23 = v10;
        v24 = 2112;
        v25 = localizedDescription;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase failed to remove corruption marker at %@: %@", buf, 0x16u);
      }

      v18 = [SGQuickResponsesDatabase _openFreshHandleForPath:pathCopy inMemory:0];
      v9 = v18 != 0;
      if (v18)
      {
        objc_storeStrong(p_db, v18);
      }
    }
  }

  return v9;
}

- (id)initInDirectory:(id)directory inMemory:(BOOL)memory withMigration:(BOOL)migration forTools:(BOOL)tools
{
  toolsCopy = tools;
  migrationCopy = migration;
  memoryCopy = memory;
  directoryCopy = directory;
  v21.receiver = self;
  v21.super_class = SGQuickResponsesDatabase;
  v11 = [(SGQuickResponsesDatabase *)&v21 init];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = objc_autoreleasePoolPush();
  if (!directoryCopy)
  {
    directoryCopy = [MEMORY[0x277D3A258] suggestionsDirectory];
    if (!directoryCopy)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *v20 = 0;
        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesDatabase: Unable to create directory for database", v20, 2u);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_19;
    }
  }

  v13 = [directoryCopy stringByAppendingPathComponent:@"quickresponses.db"];
  if (toolsCopy)
  {
    v14 = [SGQuickResponsesDatabase _openAnotherHandleForPath:v13];
    db = v11->_db;
    v11->_db = v14;
  }

  else
  {
    v16 = [SGQuickResponsesDatabase _openFreshHandleForPath:v13 inMemory:memoryCopy];
    v17 = v11->_db;
    v11->_db = v16;

    if (!v11->_db)
    {
LABEL_18:

      objc_autoreleasePoolPop(v12);
LABEL_19:
      v18 = 0;
      goto LABEL_20;
    }

    if (migrationCopy)
    {
      if (![(SGQuickResponsesDatabase *)v11 _performMigrationsWithPath:v13 inMemory:memoryCopy attemptIteration:0])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase: Migrations failed", v20, 2u);
        }

        goto LABEL_18;
      }
    }

    else
    {
      [(SGQuickResponsesDatabase *)v11 _handleCorruptionWithCheck:1 path:v13 inMemory:memoryCopy];
    }
  }

  if (!v11->_db)
  {
    goto LABEL_18;
  }

  objc_autoreleasePoolPop(v12);
LABEL_17:
  v18 = v11;

LABEL_20:
  return v18;
}

+ (id)_openAnotherHandleForPath:(id)path
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = [MEMORY[0x277D42630] sqliteDatabaseWithFilename:path contentProtection:3 errorHandler:0 error:&v6];
  v4 = v6;
  [v3 prepAndRunQuery:@"PRAGMA journal_mode=WAL" onPrep:0 onRow:0 onError:0];
  [v3 prepAndRunQuery:@"PRAGMA synchronous=NORMAL" onPrep:0 onRow:0 onError:0];
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesDatabase: Unable to open existing database: %@", buf, 0xCu);
  }

  return v3;
}

+ (id)_openFreshHandleForPath:(id)path inMemory:(BOOL)memory
{
  memoryCopy = memory;
  pathCopy = path;
  if (memoryCopy)
  {
    [MEMORY[0x277D42630] sqliteDatabaseInMemoryWithError:0 errorHandler:0];
  }

  else
  {
    [MEMORY[0x277D42630] initializeDatabase:pathCopy withContentProtection:3 newDatabaseCreated:0 errorHandler:0];
  }
  v6 = ;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SGQuickResponsesDatabase: Unable to initialize database.", v8, 2u);
  }

  return v6;
}

@end