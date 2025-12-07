@interface ACCAnalyticsLoggerSQLiteStore
+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)path schema:(id)schema;
- (BOOL)tryToOpenDatabase;
- (NSArray)allEvents;
- (NSDate)uploadDate;
- (id)summaryCounts;
- (int64_t)successCount;
- (int64_t)wrapFailureCount;
- (void)addEventDict:(id)dict toTable:(id)table;
- (void)clearAllData;
- (void)dealloc;
- (void)incrementSuccessCount;
- (void)incrementWrapFailureCount;
- (void)setUploadDate:(id)date;
@end

@implementation ACCAnalyticsLoggerSQLiteStore

+ (ACCAnalyticsLoggerSQLiteStore)storeWithPath:(id)path schema:(id)schema
{
  pathCopy = path;
  schemaCopy = schema;
  v8 = objc_opt_class();
  objc_sync_enter(v8);
  if (storeWithPath_schema__onceToken != -1)
  {
    +[ACCAnalyticsLoggerSQLiteStore storeWithPath:schema:];
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v10 = [storeWithPath_schema__loggingStores objectForKeyedSubscript:stringByStandardizingPath];
  if (!v10)
  {
    v10 = [[self alloc] initWithPath:stringByStandardizingPath schema:schemaCopy];
    [storeWithPath_schema__loggingStores setObject:v10 forKeyedSubscript:stringByStandardizingPath];
  }

  objc_sync_exit(v8);

  return v10;
}

uint64_t __54__ACCAnalyticsLoggerSQLiteStore_storeWithPath_schema___block_invoke()
{
  storeWithPath_schema__loggingStores = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(ACCSQLite *)self close];
  v3.receiver = self;
  v3.super_class = ACCAnalyticsLoggerSQLiteStore;
  [(ACCSQLite *)&v3 dealloc];
}

- (BOOL)tryToOpenDatabase
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(ACCSQLite *)self isOpen])
  {
    return 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: db is closed, attempting to open", buf, 2u);
  }

  v6 = 0;
  v3 = [(ACCSQLite *)self openWithError:&v6];
  v4 = v6;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: failed to open db with error %@", buf, 0xCu);
  }

  return v3;
}

- (int64_t)successCount
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (![(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    return 0;
  }

  v11[0] = @"success_count";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = @"accessoryDatabaseCounts";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
  firstObject = [v5 firstObject];
  v7 = [firstObject valueForKey:@"success_count"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (int64_t)wrapFailureCount
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (![(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    return 0;
  }

  v11[0] = @"wrap_failure_count";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = @"accessoryDatabaseCounts";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v5 = [(ACCSQLite *)self select:v3 from:@"success_count" where:@"event_type = ?" bindings:v4];
  firstObject = [v5 firstObject];
  v7 = [firstObject valueForKey:@"wrap_failure_count"];
  integerValue = [v7 integerValue];

  return integerValue;
}

- (void)incrementSuccessCount
{
  v9[3] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    successCount = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    wrapFailureCount = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v9[0] = @"accessoryDatabaseCounts";
    v8[0] = @"event_type";
    v8[1] = @"success_count";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:successCount + 1];
    v9[1] = v5;
    v8[2] = @"wrap_failure_count";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:wrapFailureCount];
    v9[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }
}

- (void)incrementWrapFailureCount
{
  v9[3] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    successCount = [(ACCAnalyticsLoggerSQLiteStore *)self successCount];
    wrapFailureCount = [(ACCAnalyticsLoggerSQLiteStore *)self wrapFailureCount];
    v9[0] = @"accessoryDatabaseCounts";
    v8[0] = @"event_type";
    v8[1] = @"success_count";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:successCount];
    v9[1] = v5;
    v8[2] = @"wrap_failure_count";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:wrapFailureCount + 1];
    v9[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    [(ACCSQLite *)self insertOrReplaceInto:@"success_count" values:v7];
  }
}

- (id)summaryCounts
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ACCSQLite *)self selectAllFrom:@"success_count" where:0 bindings:0];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v18 = 0u;
    v3 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"event_type"];
          if (v8)
          {
            v21[0] = @"success_count";
            v9 = [v7 objectForKeyedSubscript:@"success_count"];
            v21[1] = @"wrap_failure_count";
            v22[0] = v9;
            v10 = [v7 objectForKeyedSubscript:@"wrap_failure_count"];
            v22[1] = v10;
            v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
            [dictionary setObject:v11 forKeyedSubscript:v8];
          }

          else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] ACCEventLogger: ignoring entry in success counts table without an event name", buf, 2u);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v4);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = dictionary;
      _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] successCountsDict: %@", buf, 0xCu);
    }
  }

  else
  {
    dictionary = objc_opt_new();
  }

  return dictionary;
}

- (NSArray)allEvents
{
  v20[1] = *MEMORY[0x277D85DE8];
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v20[0] = @"data";
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v4 = [(ACCSQLite *)self select:v3 from:@"all_events"];

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = MEMORY[0x277CCAC58];
          v12 = [*(*(&v15 + 1) + 8 * i) objectForKeyedSubscript:{@"data", v15}];
          v13 = [v11 propertyListWithData:v12 options:0 format:0 error:0];

          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = objc_opt_new();
  }

  return v5;
}

- (void)addEventDict:(id)dict toTable:(id)table
{
  v17[2] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  tableCopy = table;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v13 = 0;
    v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictCopy format:200 options:0 error:&v13];
    v9 = v13;
    v10 = v9;
    if (v9 || !v8)
    {
      if (v9 && !v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_233656000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "[#ACCEventLogger] Couldn't serialize failure record: %@", buf, 0xCu);
      }
    }

    else
    {
      v16[0] = @"timestamp";
      date = [MEMORY[0x277CBEAA8] date];
      v16[1] = @"data";
      v17[0] = date;
      v17[1] = v8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      [(ACCSQLite *)self insertOrReplaceInto:tableCopy values:v12];
    }
  }
}

- (NSDate)uploadDate
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(ACCSQLite *)self datePropertyForKey:@"upload_date"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUploadDate:(id)date
{
  dateCopy = date;
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self setDateProperty:dateCopy forKey:@"upload_date"];
  }
}

- (void)clearAllData
{
  if ([(ACCAnalyticsLoggerSQLiteStore *)self tryToOpenDatabase])
  {
    [(ACCSQLite *)self deleteFrom:@"success_count" where:@"event_type like ?" bindings:&unk_2848FBC18];

    [(ACCSQLite *)self deleteFrom:@"all_events" where:@"id >= 0" bindings:0];
  }
}

@end