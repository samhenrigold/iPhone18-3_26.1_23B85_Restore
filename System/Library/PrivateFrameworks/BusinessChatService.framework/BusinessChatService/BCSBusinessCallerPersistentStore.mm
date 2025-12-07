@interface BCSBusinessCallerPersistentStore
- (BCSBusinessCallerPersistentStore)init;
- (id)databasePath;
- (id)itemMatching:(id)matching;
- (void)deleteExpiredItemsOfType:(int64_t)type;
- (void)deleteItemMatching:(id)matching;
- (void)deleteItemsOfType:(int64_t)type;
- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion;
- (void)updateItem:(id)item withItemIdentifier:(id)identifier;
@end

@implementation BCSBusinessCallerPersistentStore

- (BCSBusinessCallerPersistentStore)init
{
  if (self)
  {
    v2.receiver = self;
    v2.super_class = BCSBusinessCallerPersistentStore;
    self = [(BCSPersistentStore *)&v2 init];
    if (self)
    {
      self->_schemaVersion = 2;
    }
  }

  return self;
}

- (id)databasePath
{
  if (![databasePath_databasePath_3 length])
  {
    v2 = +[BCSPathProvider sharedInstance];
    documentsURL = [v2 documentsURL];
    path = [documentsURL path];

    v5 = [path stringByAppendingPathComponent:@"business_caller_items.db"];
    v6 = databasePath_databasePath_3;
    databasePath_databasePath_3 = v5;
  }

  v7 = databasePath_databasePath_3;

  return v7;
}

- (void)schemaVersionWillChangeForDatabase:(sqlite3 *)database fromSchemaVersion:(int64_t)version toSchemaVersion:(int64_t)schemaVersion
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[BCSBusinessCallerPersistentStore schemaVersionWillChangeForDatabase:fromSchemaVersion:toSchemaVersion:]";
    v14 = 2048;
    versionCopy = version;
    v16 = 2048;
    schemaVersionCopy = schemaVersion;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s schema version will change from '%ld' to '%ld', dropping link_items table", buf, 0x20u);
  }

  ppStmt = 0;
  if (!sqlite3_prepare_v2(database, "DROP TABLE IF EXISTS business_caller_items", -1, &ppStmt, 0))
  {
    if (sqlite3_step(ppStmt) != 101)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = sqlite3_errmsg(database);
        *buf = 136315138;
        v13 = v10;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "error while dropping link_items table: %s", buf, 0xCu);
      }
    }

    sqlite3_finalize(ppStmt);
  }
}

- (void)deleteExpiredItemsOfType:(int64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessCallerPersistentStore deleteExpiredItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (type == 3)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = MEMORY[0x277CCACA8];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v9 = [v6 stringWithFormat:@"DELETE FROM business_caller_items WHERE expiration_date <= %f", v8];
    uTF8String = [v9 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }
}

- (void)deleteItemMatching:(id)matching
{
  v9 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessCallerPersistentStore deleteItemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] == 3)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM business_caller_items WHERE phone_hash = %lld", objc_msgSend(matchingCopy, "truncatedHash")];
    uTF8String = [v6 UTF8String];

    *buf = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      sqlite3_step(*buf);
      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }
}

- (void)deleteItemsOfType:(int64_t)type
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *pStmt = 136315138;
    *&pStmt[4] = "[BCSBusinessCallerPersistentStore deleteItemsOfType:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", pStmt, 0xCu);
  }

  if (type == 3)
  {
    [(BCSPersistentStore *)self beginBatch];
    *pStmt = 0;
    if (!sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@"DELETE FROM business_caller_items" UTF8String], -1, pStmt, 0))
    {
      sqlite3_step(*pStmt);
      sqlite3_finalize(*pStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }
}

- (id)itemMatching:(id)matching
{
  v11 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = ABSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BCSBusinessCallerPersistentStore itemMatching:]";
    _os_log_impl(&dword_242072000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([matchingCopy type] == 3)
  {
    [(BCSPersistentStore *)self beginBatch];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT phone_hash, phone, message, expiration_date    FROM business_caller_items    WHERE phone_hash = %lld", objc_msgSend(matchingCopy, "truncatedHash")];
    uTF8String = [v6 UTF8String];

    *buf = 0;
    v8 = 0;
    if (!sqlite3_prepare_v2([(BCSPersistentStore *)self openedDatabase], uTF8String, -1, buf, 0))
    {
      if (sqlite3_step(*buf) == 100)
      {
        v8 = [BCSBusinessCallerItem itemFromStatement:*buf];
      }

      else
      {
        v8 = 0;
      }

      sqlite3_finalize(*buf);
    }

    [(BCSPersistentStore *)self endBatch];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateItem:(id)item withItemIdentifier:(id)identifier
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v18 = "[BCSBusinessCallerPersistentStore updateItem:withItemIdentifier:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if ([identifierCopy type] == 3)
  {
    v9 = itemCopy;
    [(BCSPersistentStore *)self beginBatch];
    ppStmt = 0;
    if (sqlite3_prepare_v2(-[BCSPersistentStore openedDatabase](self, "openedDatabase"), [@""INSERT OR REPLACE INTO business_caller_items    (phone_hash phone], -1, &ppStmt, 0)
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
        *buf = 136315138;
        *v18 = v14;
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "Failed to update item: %s", buf, 0xCu);
      }
    }

    else
    {
      [v9 updateStatementValues:ppStmt withItemIdentifier:identifierCopy];
      v11 = sqlite3_step(ppStmt);
      if (v11 != 101)
      {
        v12 = v11;
        v13 = ABSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = sqlite3_errmsg([(BCSPersistentStore *)self openedDatabase]);
          *buf = 67109378;
          v18[0] = v12;
          LOWORD(v18[1]) = 2080;
          *(&v18[1] + 2) = v15;
          _os_log_error_impl(&dword_242072000, v13, OS_LOG_TYPE_ERROR, "Failed to insert business caller item: %d (%s)", buf, 0x12u);
        }
      }

      sqlite3_finalize(ppStmt);
    }

    [(BCSPersistentStore *)self endBatch];
  }
}

@end