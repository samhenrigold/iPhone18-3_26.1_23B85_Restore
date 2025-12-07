@interface CPLSimpleUpgradeHistory
+ (void)cleanupUnusedUpgradeHistoriesWithUsedBlock:(id)block;
- (CPLSimpleUpgradeHistory)initWithLibraryIdentifier:(id)identifier;
- (NSDate)lastCPLUpgradeDate;
- (NSDate)lastDBUpgradeDate;
- (NSDate)lastOSBuildUpgradeDate;
- (NSString)lastSeenCPLVersion;
- (NSString)lastSeenOSBuildVersion;
- (NSString)previousCPLVersion;
- (NSString)previousOSBuildVersion;
- (NSString)status;
- (id)_valueForKey:(id)key class:(Class)class;
- (int64_t)lastSeenDBVersion;
- (int64_t)previousDBVersion;
- (void)_save;
- (void)noteDatabaseWasUpgradedToVersion:(int64_t)version fromVersion:(int64_t)fromVersion;
@end

@implementation CPLSimpleUpgradeHistory

- (CPLSimpleUpgradeHistory)initWithLibraryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v43.receiver = self;
  v43.super_class = CPLSimpleUpgradeHistory;
  v5 = [(CPLSimpleUpgradeHistory *)&v43 init];
  if (!v5)
  {
    goto LABEL_67;
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [identifierCopy copy];
  libraryIdentifier = v5->_libraryIdentifier;
  v5->_libraryIdentifier = v7;

  _defaultsKey = [(CPLSimpleUpgradeHistory *)v5 _defaultsKey];
  v10 = [v6 objectForKey:_defaultsKey];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v12 = sub_10017AAD4(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = v5->_libraryIdentifier;
      *buf = 138412546;
      v45 = v13;
      v46 = 2112;
      v47 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "At opening time, history for %@ is %@", buf, 0x16u);
    }
  }

  if ([identifierCopy isEqualToString:CPLLibraryIdentifierSystemLibrary])
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    history = v5->_history;
    v5->_history = v16;

    v18 = [v6 objectForKey:@"_CPLLastOSBuildVersion"];
    if (v18)
    {
      [(NSMutableDictionary *)v5->_history setObject:v18 forKeyedSubscript:@"lastSeenOSBuildVersion"];
      [v6 removeObjectForKey:@"_CPLLastOSBuildVersion"];
    }

    v19 = [v6 objectForKey:@"_CPLPreviousOSBuildVersion"];
    if (v19)
    {
      [(NSMutableDictionary *)v5->_history setObject:v19 forKeyedSubscript:@"previousOSBuildVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousOSBuildVersion"];
    }

    v20 = [v6 objectForKey:@"_CPLLastOSUpgrade"];
    if (v20)
    {
      [(NSMutableDictionary *)v5->_history setObject:v20 forKeyedSubscript:@"lastOSBuildUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastOSUpgrade"];
    }

    v21 = [v6 objectForKey:@"_CPLLastDBVersion"];
    if (v21)
    {
      [(NSMutableDictionary *)v5->_history setObject:v21 forKeyedSubscript:@"lastSeenDBVersion"];
      [v6 removeObjectForKey:@"_CPLLastDBVersion"];
    }

    v22 = [v6 objectForKey:@"_CPLPreviousDBVersion"];
    if (v22)
    {
      [(NSMutableDictionary *)v5->_history setObject:v22 forKeyedSubscript:@"previousDBVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousDBVersion"];
    }

    v23 = [v6 objectForKey:@"_CPLLastDBUpgrade"];
    if (v23)
    {
      [(NSMutableDictionary *)v5->_history setObject:v23 forKeyedSubscript:@"lastDBUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastDBUpgrade"];
    }

    v24 = [v6 objectForKey:@"_CPLLastCPLVersion"];
    if (v24)
    {
      [(NSMutableDictionary *)v5->_history setObject:v24 forKeyedSubscript:@"lastSeenCPLVersion"];
      [v6 removeObjectForKey:@"_CPLLastCPLVersion"];
    }

    v25 = [v6 objectForKey:@"_CPLPreviousCPLVersion"];
    if (v25)
    {
      [(NSMutableDictionary *)v5->_history setObject:v25 forKeyedSubscript:@"previousCPLVersion"];
      [v6 removeObjectForKey:@"_CPLPreviousCPLVersion"];
    }

    v26 = [v6 objectForKey:@"_CPLLastCPLUpgrade"];
    if (v26)
    {
      [(NSMutableDictionary *)v5->_history setObject:v26 forKeyedSubscript:@"lastCPLUpgradeDate"];
      [v6 removeObjectForKey:@"_CPLLastCPLUpgrade"];
    }

    [(CPLSimpleUpgradeHistory *)v5 _save];
  }

  else
  {
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v10 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(NSMutableDictionary);
    }

    v27 = v5->_history;
    v5->_history = v15;
  }

  v28 = __CPLBuildVersion();
  lastSeenOSBuildVersion = [(CPLSimpleUpgradeHistory *)v5 lastSeenOSBuildVersion];
  v30 = lastSeenOSBuildVersion;
  if (lastSeenOSBuildVersion && v28)
  {
    lastSeenOSBuildVersion = [lastSeenOSBuildVersion isEqual:v28];
    if (lastSeenOSBuildVersion)
    {
      goto LABEL_50;
    }

LABEL_40:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v31 = sub_10017AAD4(lastSeenOSBuildVersion);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"unknown";
        if (v30)
        {
          v32 = v30;
        }

        *buf = 138543618;
        v45 = v32;
        v46 = 2114;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "OS Build version has changed since last launch, from %{public}@ to %{public}@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)v5->_history setObject:v28 forKeyedSubscript:@"lastSeenOSBuildVersion"];
    v5->_versionHasChanged = 1;
    goto LABEL_47;
  }

  if (!(lastSeenOSBuildVersion | v28))
  {
    goto LABEL_50;
  }

  if (v28)
  {
    goto LABEL_40;
  }

  sub_1001C58A4(v5);
LABEL_47:
  v33 = +[NSDate date];
  [(NSMutableDictionary *)v5->_history setObject:v33 forKeyedSubscript:@"lastOSBuildUpgradeDate"];

  v34 = v5->_history;
  if (v30)
  {
    [(NSMutableDictionary *)v34 setObject:v30 forKeyedSubscript:@"previousOSBuildVersion"];
  }

  else
  {
    [(NSMutableDictionary *)v34 removeObjectForKey:@"previousOSBuildVersion"];
  }

LABEL_50:
  v35 = __CPLVersion();
  lastSeenCPLVersion = [(CPLSimpleUpgradeHistory *)v5 lastSeenCPLVersion];
  v37 = lastSeenCPLVersion;
  if (lastSeenCPLVersion && v35)
  {
    lastSeenCPLVersion = [lastSeenCPLVersion isEqual:v35];
    if (lastSeenCPLVersion)
    {
      goto LABEL_64;
    }

LABEL_55:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v38 = sub_10017AAD4(lastSeenCPLVersion);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = @"unknown";
        if (v37)
        {
          v39 = v37;
        }

        *buf = 138412546;
        v45 = v39;
        v46 = 2112;
        v47 = v35;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "CPL version has changed since last launch, from %@ to %@", buf, 0x16u);
      }
    }

    v5->_versionHasChanged = 1;
    [(NSMutableDictionary *)v5->_history setObject:v35 forKeyedSubscript:@"lastSeenCPLVersion"];
    v40 = +[NSDate date];
    [(NSMutableDictionary *)v5->_history setObject:v40 forKeyedSubscript:@"lastCPLUpgradeDate"];

    v41 = v5->_history;
    if (v37)
    {
      [(NSMutableDictionary *)v41 setObject:v37 forKeyedSubscript:@"previousCPLVersion"];
    }

    else
    {
      [(NSMutableDictionary *)v41 removeObjectForKey:@"previousCPLVersion"];
    }

    goto LABEL_64;
  }

  if (lastSeenCPLVersion | v35)
  {
    goto LABEL_55;
  }

LABEL_64:
  if (v5->_versionHasChanged)
  {
    [(CPLSimpleUpgradeHistory *)v5 _save];
  }

LABEL_67:
  return v5;
}

- (id)_valueForKey:(id)key class:(Class)class
{
  v4 = [(NSMutableDictionary *)self->_history objectForKeyedSubscript:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteDatabaseWasUpgradedToVersion:(int64_t)version fromVersion:(int64_t)fromVersion
{
  lastSeenDBVersion = [(CPLSimpleUpgradeHistory *)self lastSeenDBVersion];
  if (lastSeenDBVersion)
  {
    fromVersionCopy = lastSeenDBVersion;
  }

  else
  {
    fromVersionCopy = fromVersion;
  }

  if (fromVersionCopy != version)
  {
    v9 = [NSNumber numberWithLongLong:?];
    [(NSMutableDictionary *)self->_history setObject:v9 forKeyedSubscript:@"previousDBVersion"];

    v10 = +[NSDate date];
    [(NSMutableDictionary *)self->_history setObject:v10 forKeyedSubscript:@"lastDBUpgradeDate"];

    v11 = [NSNumber numberWithLongLong:version];
    [(NSMutableDictionary *)self->_history setObject:v11 forKeyedSubscript:@"lastSeenDBVersion"];

    [(CPLSimpleUpgradeHistory *)self _save];
  }
}

- (NSString)lastSeenOSBuildVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenOSBuildVersion" class:v3];
}

- (NSString)previousOSBuildVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousOSBuildVersion" class:v3];
}

- (NSDate)lastOSBuildUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastOSBuildUpgradeDate" class:v3];
}

- (int64_t)lastSeenDBVersion
{
  v2 = [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenDBVersion" class:objc_opt_class()];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (int64_t)previousDBVersion
{
  v2 = [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousDBVersion" class:objc_opt_class()];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (NSDate)lastDBUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastDBUpgradeDate" class:v3];
}

- (NSString)lastSeenCPLVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastSeenCPLVersion" class:v3];
}

- (NSString)previousCPLVersion
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"previousCPLVersion" class:v3];
}

- (NSDate)lastCPLUpgradeDate
{
  v3 = objc_opt_class();

  return [(CPLSimpleUpgradeHistory *)self _valueForKey:@"lastCPLUpgradeDate" class:v3];
}

- (NSString)status
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  v37 = +[NSDate date];
  lastOSBuildUpgradeDate = [(CPLSimpleUpgradeHistory *)self lastOSBuildUpgradeDate];
  if (lastOSBuildUpgradeDate)
  {
    v5 = [NSString alloc];
    previousOSBuildVersion = [(CPLSimpleUpgradeHistory *)self previousOSBuildVersion];
    v7 = previousOSBuildVersion;
    if (previousOSBuildVersion)
    {
      v8 = previousOSBuildVersion;
    }

    else
    {
      v8 = @"unknown";
    }

    lastSeenOSBuildVersion = [(CPLSimpleUpgradeHistory *)self lastSeenOSBuildVersion];
    v10 = lastSeenOSBuildVersion;
    if (lastSeenOSBuildVersion)
    {
      v11 = lastSeenOSBuildVersion;
    }

    else
    {
      v11 = @"unknown";
    }

    v12 = [CPLDateFormatter stringFromDateAgo:lastOSBuildUpgradeDate now:v37];
    v13 = [v5 initWithFormat:@"last upgrade from %@ to %@, %@", v8, v11, v12];
    [v3 addObject:v13];
  }

  lastCPLUpgradeDate = [(CPLSimpleUpgradeHistory *)self lastCPLUpgradeDate];
  if (lastCPLUpgradeDate)
  {
    v15 = [NSString alloc];
    previousCPLVersion = [(CPLSimpleUpgradeHistory *)self previousCPLVersion];
    v17 = previousCPLVersion;
    if (previousCPLVersion)
    {
      v18 = previousCPLVersion;
    }

    else
    {
      v18 = @"unknown";
    }

    lastSeenCPLVersion = [(CPLSimpleUpgradeHistory *)self lastSeenCPLVersion];
    v20 = lastSeenCPLVersion;
    v21 = v3;
    v22 = lastOSBuildUpgradeDate;
    if (lastSeenCPLVersion)
    {
      v23 = lastSeenCPLVersion;
    }

    else
    {
      v23 = @"unknown";
    }

    [CPLDateFormatter stringFromDateAgo:lastCPLUpgradeDate now:v37];
    v24 = v36 = lastCPLUpgradeDate;
    v35 = v23;
    lastOSBuildUpgradeDate = v22;
    v3 = v21;
    v25 = [v15 initWithFormat:@"last CPL upgrade from %@ to %@, %@", v18, v35, v24];
    [v21 addObject:v25];

    lastCPLUpgradeDate = v36;
  }

  lastDBUpgradeDate = [(CPLSimpleUpgradeHistory *)self lastDBUpgradeDate];
  if (lastDBUpgradeDate)
  {
    v27 = [NSString alloc];
    previousDBVersion = [(CPLSimpleUpgradeHistory *)self previousDBVersion];
    lastSeenDBVersion = [(CPLSimpleUpgradeHistory *)self lastSeenDBVersion];
    [CPLDateFormatter stringFromDateAgo:lastDBUpgradeDate now:v37];
    v31 = v30 = lastCPLUpgradeDate;
    v32 = [v27 initWithFormat:@"last DB upgrade from %lld to %lld, %@", previousDBVersion, lastSeenDBVersion, v31];
    [v3 addObject:v32];

    lastCPLUpgradeDate = v30;
  }

  v33 = [v3 componentsJoinedByString:@"\n"];

  return v33;
}

+ (void)cleanupUnusedUpgradeHistoriesWithUsedBlock:(id)block
{
  blockCopy = block;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [@"_CPLUpgradeHistory-" length];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = v4;
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v8 = allKeys;
  v9 = [allKeys countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v31 = 0;
    v11 = *v37;
    v12 = (blockCopy + 2);
    v29 = blockCopy;
    v30 = *v37;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        if ([v14 hasPrefix:@"_CPLUpgradeHistory-"])
        {
          v15 = [v14 substringFromIndex:v5];
          v16 = blockCopy[2](blockCopy, v15);
          if ((v16 & 1) == 0)
          {
            v17 = v12;
            v18 = v8;
            v19 = v5;
            v20 = v31;
            if ((_CPLSilentLogging & 1) == 0)
            {
              v21 = sub_10017AAD4(v16);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v42 = v15;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing unused history for %@", buf, 0xCu);
              }
            }

            if (!v31)
            {
              v20 = objc_alloc_init(NSMutableArray);
            }

            v31 = v20;
            [v20 addObject:v14];
            v5 = v19;
            v8 = v18;
            v12 = v17;
            blockCopy = v29;
            v11 = v30;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v10);
  }

  else
  {
    v31 = 0;
  }

  v22 = v31;
  if ([v31 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v31;
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [v28 removeObjectForKey:*(*(&v32 + 1) + 8 * j)];
        }

        v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v25);
    }

    [v28 synchronize];
    v22 = v31;
  }
}

- (void)_save
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_10017AAD4(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      libraryIdentifier = self->_libraryIdentifier;
      history = self->_history;
      v9 = 138412546;
      v10 = libraryIdentifier;
      v11 = 2112;
      v12 = history;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving upgrade history for %@: %@", &v9, 0x16u);
    }
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = self->_history;
  _defaultsKey = [(CPLSimpleUpgradeHistory *)self _defaultsKey];
  [v6 setObject:v7 forKey:_defaultsKey];
}

@end