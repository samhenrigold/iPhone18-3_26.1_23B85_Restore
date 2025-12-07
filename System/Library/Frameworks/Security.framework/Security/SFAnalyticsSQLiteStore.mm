@interface SFAnalyticsSQLiteStore
+ (SFAnalyticsSQLiteStore)storeWithPath:(id)path schema:(id)schema;
- (BOOL)tryToOpenDatabase;
- (NSArray)allEvents;
- (NSArray)hardFailures;
- (NSArray)rockwells;
- (NSArray)samples;
- (NSArray)softFailures;
- (NSDate)uploadDate;
- (NSString)databaseBasename;
- (NSString)metricsAccountID;
- (id)dataPropertyForKey:(id)key;
- (id)summaryCounts;
- (int64_t)hardFailureCountForEventType:(id)type;
- (int64_t)softFailureCountForEventType:(id)type;
- (int64_t)successCountForEventType:(id)type;
- (void)addEventDict:(id)dict toTable:(id)table timestampBucket:(unsigned int)bucket;
- (void)addRockwellDict:(id)dict userinfo:(id)userinfo toTable:(id)table timestampBucket:(unsigned int)bucket;
- (void)addSample:(id)sample forName:(id)name;
- (void)clearAllData;
- (void)dealloc;
- (void)incrementHardFailureCountForEventType:(id)type;
- (void)incrementSoftFailureCountForEventType:(id)type;
- (void)incrementSuccessCountForEventType:(id)type;
- (void)removeAllSamplesForName:(id)name;
- (void)setDataProperty:(id)property forKey:(id)key;
- (void)setMetricsAccountID:(id)d;
- (void)setUploadDate:(id)date;
- (void)streamEventsWithLimit:(id)limit fromTable:(id)table eventHandler:(id)handler;
@end

@implementation SFAnalyticsSQLiteStore

- (BOOL)tryToOpenDatabase
{
  v13 = *MEMORY[0x1E69E9840];
  if (![(SFSQLite *)self isOpen])
  {
    v10 = 0;
    v3 = [(SFSQLite *)self openWithError:&v10];
    v4 = v10;
    if (v3)
    {
      v5 = secLogObjForScope("SFAnalytics");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "successfully opened analytics db";
        v7 = v5;
        v8 = 2;
LABEL_8:
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v4;
        v6 = "SFAnalytics: failed to open analytics db: %@";
        v7 = v5;
        v8 = 12;
        goto LABEL_8;
      }
    }

    return v3;
  }

  return 1;
}

- (void)streamEventsWithLimit:(id)limit fromTable:(id)table eventHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  limitCopy = limit;
  tableCopy = table;
  handlerCopy = handler;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v14[0] = @"data";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__SFAnalyticsSQLiteStore_streamEventsWithLimit_fromTable_eventHandler___block_invoke;
    v12[3] = &unk_1E70D70E8;
    v13 = handlerCopy;
    [(SFSQLite *)self select:v11 from:tableCopy where:0 bindings:0 orderBy:&unk_1EFAAC640 limit:limitCopy forEachRow:v12];
  }
}

void __71__SFAnalyticsSQLiteStore_streamEventsWithLimit_fromTable_eventHandler___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 indexForColumnName:@"data"];
  v6 = v8;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v8 blobAtIndex:?];
    if (v7)
    {
      *a3 = (*(*(a1 + 32) + 16))() ^ 1;
    }

    v6 = v8;
  }
}

- (void)clearAllData
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self deleteFrom:@"success_count" where:@"event_type like ?" bindings:&unk_1EFAAC610];
    [(SFSQLite *)self deleteFrom:@"hard_failures" where:@"id >= 0" bindings:0];
    [(SFSQLite *)self deleteFrom:@"soft_failures" where:@"id >= 0" bindings:0];
    [(SFSQLite *)self deleteFrom:@"samples" where:@"id >= 0" bindings:0];

    [(SFSQLite *)self deleteFrom:@"rockwell" where:@"event_type like ?" bindings:&unk_1EFAAC628];
  }
}

- (id)dataPropertyForKey:(id)key
{
  v3 = [(SFSQLite *)self propertyForKey:key];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDataProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  v7 = [property base64EncodedStringWithOptions:0];
  [(SFSQLite *)self setProperty:v7 forKey:keyCopy];
}

- (void)setMetricsAccountID:(id)d
{
  dCopy = d;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    if (dCopy)
    {
      [(SFSQLite *)self setProperty:dCopy forKey:@"account_id"];
    }

    else
    {
      [(SFSQLite *)self removePropertyForKey:@"account_id"];
    }
  }
}

- (NSString)metricsAccountID
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(SFSQLite *)self propertyForKey:@"account_id"];
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
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self setDateProperty:dateCopy forKey:@"upload_date"];
  }
}

- (NSDate)uploadDate
{
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v3 = [(SFSQLite *)self datePropertyForKey:@"upload_date"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeAllSamplesForName:(id)name
{
  nameCopy = name;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"name == '%@'", nameCopy];
    [(SFSQLite *)self deleteFrom:@"samples" where:nameCopy bindings:0];
  }
}

- (void)addSample:(id)sample forName:(id)name
{
  v13[3] = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  nameCopy = name;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v12[0] = @"timestamp";
    v8 = MEMORY[0x1E696AD98];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
    v13[0] = v10;
    v13[1] = nameCopy;
    v12[1] = @"name";
    v12[2] = @"value";
    v13[2] = sampleCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
    [(SFSQLite *)self insertOrReplaceInto:@"samples" values:v11];
  }
}

- (void)addRockwellDict:(id)dict userinfo:(id)userinfo toTable:(id)table timestampBucket:(unsigned int)bucket
{
  v6 = *&bucket;
  v26 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  userinfoCopy = userinfo;
  tableCopy = table;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    if (([MEMORY[0x1E696ACB0] isValidJSONObject:userinfoCopy] & 1) == 0)
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = userinfoCopy;
        _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "Couldn't json validate rockwell record: %@", buf, 0xCu);
      }

      goto LABEL_10;
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970WithBucket:v6];
    v15 = v14;

    v21 = 0;
    v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:userinfoCopy options:0 error:&v21];
    v17 = v21;
    v18 = v17;
    if (v17 || !v16)
    {
      if (!v17 || v16)
      {
        goto LABEL_7;
      }

      v19 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v18;
        _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "Couldn't serialize rockwell record: %@", buf, 0xCu);
      }
    }

    else
    {
      v23[0] = dictCopy;
      v22[0] = @"event_type";
      v22[1] = @"timestamp";
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v15];
      v22[2] = @"data";
      v23[1] = v19;
      v23[2] = v16;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
      [(SFSQLite *)self insertOrReplaceInto:tableCopy values:v20];
    }

LABEL_7:
LABEL_10:
  }
}

- (void)addEventDict:(id)dict toTable:(id)table timestampBucket:(unsigned int)bucket
{
  v5 = *&bucket;
  v30 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  tableCopy = table;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictCopy])
    {
LABEL_7:
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970WithBucket:v5];
      v17 = v16;

      v23 = 0;
      v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictCopy options:0 error:&v23];
      v19 = v23;
      v20 = v19;
      if (v19 || !v18)
      {
        if (!v19 || v18)
        {
          goto LABEL_11;
        }

        v21 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v20;
          _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "Couldn't serialize json record: %@", buf, 0xCu);
        }
      }

      else
      {
        v24[0] = @"timestamp";
        v21 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
        v24[1] = @"data";
        v25[0] = v21;
        v25[1] = v18;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
        [(SFSQLite *)self insertOrReplaceInto:tableCopy values:v22];
      }

LABEL_11:
      goto LABEL_12;
    }

    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = dictCopy;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Couldn't validate json record: %@", buf, 0xCu);
    }

    v11 = [dictCopy objectForKeyedSubscript:@"eventType"];
    if (v11)
    {
      v12 = v11;
      v26[0] = @"eventType";
      v26[1] = @"errorDescription";
      v27[0] = @"errorEvent";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"JSON:%@", v11];
      v27[1] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

      dictCopy = v14;
      goto LABEL_7;
    }
  }

LABEL_12:
}

- (NSArray)samples
{
  v6[2] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v6[0] = @"name";
    v6[1] = @"value";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    v4 = [(SFSQLite *)self select:v3 from:@"samples"];
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (NSArray)allEvents
{
  v20[2] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    [(SFSQLite *)self begin];
    v3 = objc_opt_new();
    v20[0] = @"timestamp";
    v20[1] = @"data";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v5 = [(SFSQLite *)self select:v4 from:@"rockwell" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v5];
    v19[0] = @"timestamp";
    v19[1] = @"data";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v7 = [(SFSQLite *)self select:v6 from:@"hard_failures" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v7];
    v18[0] = @"timestamp";
    v18[1] = @"data";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v9 = [(SFSQLite *)self select:v8 from:@"soft_failures" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v9];
    v17[0] = @"timestamp";
    v17[1] = @"data";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v11 = [(SFSQLite *)self select:v10 from:@"notes" mapEachRow:&__block_literal_global_47];

    [v3 addObjectsFromArray:v11];
    [(SFSQLite *)self end];
    v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"timestamp" ascending:1];
    v16 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [v3 sortUsingDescriptors:v13];

    v14 = [v3 valueForKey:@"record"];
  }

  else
  {
    v14 = objc_opt_new();
  }

  return v14;
}

id __35__SFAnalyticsSQLiteStore_allEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFAnalyticsEvent alloc] initFromRow:v2];

  return v3;
}

- (NSArray)softFailures
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v6[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"soft_failures" mapEachRow:&__block_literal_global_44];
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (NSArray)hardFailures
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v6[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"hard_failures" mapEachRow:&__block_literal_global_42_5774];
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (NSArray)rockwells
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v6[0] = @"data";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    v4 = [(SFSQLite *)self select:v3 from:@"rockwell" mapEachRow:&__block_literal_global_5776];
  }

  else
  {
    v4 = objc_opt_new();
  }

  return v4;
}

- (id)summaryCounts
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(SFSQLite *)self selectAllFrom:@"success_count" where:0 bindings:0];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = v20 = 0u;
    v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"event_type"];
          if (v8)
          {
            v21[0] = @"success_count";
            v9 = [v7 objectForKeyedSubscript:?];
            v22[0] = v9;
            v21[1] = @"hard_failure_count";
            v10 = [v7 objectForKeyedSubscript:@"hard_failure_count"];
            v22[1] = v10;
            v21[2] = @"soft_failure_count";
            v11 = [v7 objectForKeyedSubscript:@"soft_failure_count"];
            v22[2] = v11;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
            [dictionary setObject:v12 forKeyedSubscript:v8];
          }

          else
          {
            v9 = secLogObjForScope("SFAnalytics");
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "ignoring entry in success counts table without an event name", buf, 2u);
            }
          }
        }

        v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v4);
    }
  }

  else
  {
    dictionary = objc_opt_new();
  }

  return dictionary;
}

- (void)incrementSoftFailureCountForEventType:(id)type
{
  v13[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v13[0] = typeCopy;
    v12[0] = @"event_type";
    v12[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v13[1] = v8;
    v12[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v13[2] = v9;
    v12[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7 + 1];
    v13[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }
}

- (void)incrementHardFailureCountForEventType:(id)type
{
  v13[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v13[0] = typeCopy;
    v12[0] = @"event_type";
    v12[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v13[1] = v8;
    v12[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6 + 1];
    v13[2] = v9;
    v12[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v13[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }
}

- (int64_t)softFailureCountForEventType:(id)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v13[0] = @"soft_failure_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"soft_failure_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)hardFailureCountForEventType:(id)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v13[0] = @"hard_failure_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"hard_failure_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)incrementSuccessCountForEventType:(id)type
{
  v13[4] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v5 = [(SFAnalyticsSQLiteStore *)self successCountForEventType:typeCopy];
    v6 = [(SFAnalyticsSQLiteStore *)self hardFailureCountForEventType:typeCopy];
    v7 = [(SFAnalyticsSQLiteStore *)self softFailureCountForEventType:typeCopy];
    v13[0] = typeCopy;
    v12[0] = @"event_type";
    v12[1] = @"success_count";
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5 + 1];
    v13[1] = v8;
    v12[2] = @"hard_failure_count";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    v13[2] = v9;
    v12[3] = @"soft_failure_count";
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    v13[3] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    [(SFSQLite *)self insertOrReplaceInto:@"success_count" values:v11];
  }
}

- (int64_t)successCountForEventType:(id)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([(SFAnalyticsSQLiteStore *)self tryToOpenDatabase])
  {
    v13[0] = @"success_count";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    v7 = [(SFSQLite *)self select:v5 from:@"success_count" where:@"event_type = ?" bindings:v6];
    firstObject = [v7 firstObject];
    v9 = [firstObject valueForKey:@"success_count"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (NSString)databaseBasename
{
  path = [(SFSQLite *)self path];
  lastPathComponent = [path lastPathComponent];
  pathExtension = [lastPathComponent pathExtension];
  stringByDeletingPathExtension = [pathExtension stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (void)dealloc
{
  [(SFSQLite *)self close];
  v3.receiver = self;
  v3.super_class = SFAnalyticsSQLiteStore;
  [(SFSQLite *)&v3 dealloc];
}

+ (SFAnalyticsSQLiteStore)storeWithPath:(id)path schema:(id)schema
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  schemaCopy = schema;
  if (![pathCopy length])
  {
    stringByStandardizingPath = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(stringByStandardizingPath, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cannot init db with empty path";
LABEL_14:
      _os_log_impl(&dword_1887D2000, stringByStandardizingPath, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (![schemaCopy length])
  {
    stringByStandardizingPath = secLogObjForScope("SecCritical");
    if (os_log_type_enabled(stringByStandardizingPath, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Cannot init db without schema";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v9 = [[self alloc] initWithPath:stringByStandardizingPath schema:schemaCopy];
  v16 = 0;
  v10 = [v9 openWithError:&v16];
  v11 = v16;
  v12 = v11;
  if ((v10 & 1) == 0 && (!v11 || [v11 code] != 23))
  {
    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "SFAnalytics: could not open db at init, will try again later. Error: %@", buf, 0xCu);
    }
  }

LABEL_16:

  return v9;
}

@end