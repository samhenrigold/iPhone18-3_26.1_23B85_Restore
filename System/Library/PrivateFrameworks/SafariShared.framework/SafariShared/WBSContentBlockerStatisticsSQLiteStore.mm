@interface WBSContentBlockerStatisticsSQLiteStore
+ (BOOL)storeExistsForProfileWithIdentifier:(id)identifier;
+ (NSArray)allStores;
+ (WBSContentBlockerStatisticsSQLiteStore)standardStore;
+ (id)_databaseURLForProfileWithIdentifier:(id)identifier;
+ (id)_defaultDatabaseURL;
+ (id)storeForProfileWithIdentifier:(id)identifier;
- (BOOL)_createDatabaseSchemaIfNeeded;
- (BOOL)_openDatabaseIfNeededFallingBackToInMemory:(BOOL)memory;
- (BOOL)_tryOpenDatabase:(id *)database;
- (WBSContentBlockerStatisticsSQLiteStore)initWithDatabaseURL:(id)l;
- (int64_t)_idForFirstPartyWithHighLevelDomain:(id)domain;
- (int64_t)_idForThirdPartyWithHighLevelDomain:(id)domain;
- (int64_t)_schemaVersion;
- (void)_clearStatisticsAfter:(id)after before:(id)before;
- (void)_clearStatisticsForDomain:(id)domain;
- (void)_closeDatabaseOnDatabaseQueue;
- (void)_deleteDatabase;
- (void)_deleteUnusedDomains;
- (void)blockedThirdPartiesAfter:(id)after before:(id)before onFirstParty:(id)party completionHandler:(id)handler;
- (void)clearAllStatisticsWithCompletionHandler:(id)handler;
- (void)clearStatisticsAfter:(id)after before:(id)before;
- (void)clearStatisticsForDomains:(id)domains;
- (void)closeDatabase;
- (void)dealloc;
- (void)recordThirdPartyResourceBlocked:(id)blocked onFirstParty:(id)party completionHandler:(id)handler;
@end

@implementation WBSContentBlockerStatisticsSQLiteStore

+ (WBSContentBlockerStatisticsSQLiteStore)standardStore
{
  if (+[WBSContentBlockerStatisticsSQLiteStore standardStore]::onceToken != -1)
  {
    +[WBSContentBlockerStatisticsSQLiteStore standardStore];
  }

  v3 = +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore;

  return v3;
}

void __55__WBSContentBlockerStatisticsSQLiteStore_standardStore__block_invoke()
{
  v0 = [WBSContentBlockerStatisticsSQLiteStore alloc];
  v3 = +[WBSContentBlockerStatisticsSQLiteStore _defaultDatabaseURL];
  v1 = [(WBSContentBlockerStatisticsSQLiteStore *)v0 initWithDatabaseURL:?];
  v2 = +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore;
  +[WBSContentBlockerStatisticsSQLiteStore standardStore]::sharedStore = v1;
}

+ (NSArray)allStores
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  standardStore = [self standardStore];
  v5 = [v3 arrayWithObject:standardStore];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = allProfileDatabaseIdentifiers(v6);
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [self storeForProfileWithIdentifier:*(*(&v15 + 1) + 8 * i)];
        [v5 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

+ (id)storeForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy isEqualToString:*MEMORY[0x1E69C8B58]];
  if (v5)
  {
    standardStore = [self standardStore];
  }

  else
  {
    v7 = storesByProfileIdentifier(v5);
    standardStore = [v7 objectForKey:identifierCopy];

    if (!standardStore)
    {
      v8 = [self _databaseURLForProfileWithIdentifier:identifierCopy];
      standardStore = [[WBSContentBlockerStatisticsSQLiteStore alloc] initWithDatabaseURL:v8];
      v9 = storesByProfileIdentifier(standardStore);
      [v9 setObject:standardStore forKey:identifierCopy];

      v11 = allProfileDatabaseIdentifiers(v10);
      [v11 addObject:identifierCopy];
    }
  }

  return standardStore;
}

+ (BOOL)storeExistsForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy isEqualToString:*MEMORY[0x1E69C8B58]];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = allProfileDatabaseIdentifiers(v4);
    v5 = [v6 containsObject:identifierCopy];
  }

  return v5;
}

- (WBSContentBlockerStatisticsSQLiteStore)initWithDatabaseURL:(id)l
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = WBSContentBlockerStatisticsSQLiteStore;
  v6 = [(WBSContentBlockerStatisticsSQLiteStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseURL, l);
    v8 = dispatch_get_global_queue(17, 0);
    v9 = dispatch_queue_create_with_target_V2("com.apple.SafariShared.WBSContentBlockerStatisticsSQLiteStore", 0, v8);
    databaseQueue = v7->_databaseQueue;
    v7->_databaseQueue = v9;

    v11 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_database;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSContentBlockerStatisticsSQLiteStore_dealloc__block_invoke;
  block[3] = &unk_1E7FB6F80;
  v8 = v3;
  v5 = v3;
  dispatch_async(databaseQueue, block);

  v6.receiver = self;
  v6.super_class = WBSContentBlockerStatisticsSQLiteStore;
  [(WBSContentBlockerStatisticsSQLiteStore *)&v6 dealloc];
}

- (void)recordThirdPartyResourceBlocked:(id)blocked onFirstParty:(id)party completionHandler:(id)handler
{
  blockedCopy = blocked;
  partyCopy = party;
  handlerCopy = handler;
  host = [blockedCopy host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];

  host2 = [partyCopy host];
  safari_highLevelDomainFromHost2 = [host2 safari_highLevelDomainFromHost];

  databaseQueue = self->_databaseQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __105__WBSContentBlockerStatisticsSQLiteStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke;
  v19[3] = &unk_1E7FB6F58;
  v19[4] = self;
  v20 = safari_highLevelDomainFromHost;
  v21 = safari_highLevelDomainFromHost2;
  v22 = handlerCopy;
  v16 = safari_highLevelDomainFromHost2;
  v17 = safari_highLevelDomainFromHost;
  v18 = handlerCopy;
  dispatch_async(databaseQueue, v19);
}

uint64_t __105__WBSContentBlockerStatisticsSQLiteStore_recordThirdPartyResourceBlocked_onFirstParty_completionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _openDatabaseIfNeeded])
  {
    v15 = [*(a1 + 32) _idForThirdPartyWithHighLevelDomain:*(a1 + 40)];
    v14 = [*(a1 + 32) _idForFirstPartyWithHighLevelDomain:*(a1 + 48)];
    v2 = [MEMORY[0x1E695DF00] date];
    [v2 timeIntervalSince1970];
    v4 = v3;

    v13 = v4;
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<long &,long &,double &>(*(*(a1 + 32) + 24), 0, @"INSERT INTO BlockedResources (thirdPartyDomainID, firstPartyDomainID, lastSeen) VALUES (?,?,?) ON CONFLICT(thirdPartyDomainID, firstPartyDomainID) DO UPDATE SET lastSeen = excluded.lastSeen", &v15, &v14, &v13);
    v7 = v5;
    if (v5 != 101)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(*(a1 + 32) + 24) lastErrorWithMethodName:"-[WBSContentBlockerStatisticsSQLiteStore recordThirdPartyResourceBlocked:onFirstParty:completionHandler:]_block_invoke"];
        v12 = [v11 safari_privacyPreservingDescription];
        *buf = 138543618;
        v17 = v12;
        v18 = 1024;
        v19 = v7;
        _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to insert into BlockedResources table: %{public}@ (%d)", buf, 0x12u);
      }
    }

    result = *(a1 + 56);
    if (result)
    {
      return (*(result + 16))(result, v7 == 101);
    }
  }

  else
  {
    result = *(a1 + 56);
    if (result)
    {
      v10 = *(result + 16);

      return v10();
    }
  }

  return result;
}

- (void)blockedThirdPartiesAfter:(id)after before:(id)before onFirstParty:(id)party completionHandler:(id)handler
{
  afterCopy = after;
  beforeCopy = before;
  partyCopy = party;
  handlerCopy = handler;
  [afterCopy timeIntervalSince1970];
  v15 = v14;
  [beforeCopy timeIntervalSince1970];
  v17 = v16;
  v18 = [partyCopy length];
  databaseQueue = self->_databaseQueue;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __105__WBSContentBlockerStatisticsSQLiteStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke;
  v22[3] = &unk_1E7FC48C8;
  v23 = partyCopy;
  v24 = handlerCopy;
  v27 = v18 != 0;
  v25 = v15;
  v26 = v17;
  v22[4] = self;
  v20 = partyCopy;
  v21 = handlerCopy;
  dispatch_async(databaseQueue, v22);
}

void __105__WBSContentBlockerStatisticsSQLiteStore_blockedThirdPartiesAfter_before_onFirstParty_completionHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _openDatabaseIfNeeded])
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    if (*(a1 + 72))
    {
      v3 = @" AND FirstPartyDomains.domain = ?";
    }

    else
    {
      v3 = &stru_1F3A5E418;
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WHERE lastSeen >= ? AND lastSeen <= ?%@", v3];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ThirdPartyDomains.domain, FirstPartyDomains.domain, lastSeen FROM BlockedResources JOIN ThirdPartyDomains on BlockedResources.thirdPartyDomainID = ThirdPartyDomains.thirdPartyDomainID JOIN FirstPartyDomains on BlockedResources.firstPartyDomainID = FirstPartyDomains.firstPartyDomainID %@", v16];
    v4 = *(*(a1 + 32) + 24);
    if (*(a1 + 72) == 1)
    {
      SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&,NSString * const {__strong}&>(v4, v17, (a1 + 56), (a1 + 64), (a1 + 40));
    }

    else
    {
      SafariShared::WBSSQLiteDatabaseFetch<double const&,double const&>(v4, v17, (a1 + 56), (a1 + 64));
    }
    v6 = ;
    while (1)
    {
      v7 = [v6 nextObject];
      v8 = v7;
      if (!v7)
      {
        break;
      }

      v9 = [v7 stringAtIndex:0];
      v10 = [WBSContentBlockerStatisticsFirstParty alloc];
      v11 = [v8 stringAtIndex:1];
      [v8 doubleAtIndex:2];
      v12 = [(WBSContentBlockerStatisticsFirstParty *)v10 initWithDomain:v11 lastSeen:?];

      v13 = [v2 objectForKeyedSubscript:v9];
      LOBYTE(v11) = v13 == 0;

      if (v11)
      {
        v19[0] = v12;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
        v15 = [v14 mutableCopy];
        [v2 setObject:v15 forKeyedSubscript:v9];
      }

      else
      {
        v14 = [v2 objectForKeyedSubscript:v9];
        [v14 addObject:v12];
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 48);
    v18 = [MEMORY[0x1E695DF20] dictionary];
    (*(v5 + 16))(v5);
  }
}

- (void)clearAllStatisticsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSContentBlockerStatisticsSQLiteStore_clearAllStatisticsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(databaseQueue, v7);
}

uint64_t __82__WBSContentBlockerStatisticsSQLiteStore_clearAllStatisticsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _openDatabaseIfNeededFallingBackToInMemory:0];
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E695DF00] distantPast];
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 _clearStatisticsAfter:v5 before:v6];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Failed to open database to clear statistics. Deleting.", v9, 2u);
    }

    [*(a1 + 32) _deleteDatabase];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearStatisticsAfter:(id)after before:(id)before
{
  afterCopy = after;
  beforeCopy = before;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsAfter_before___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = afterCopy;
  v13 = beforeCopy;
  v9 = beforeCopy;
  v10 = afterCopy;
  dispatch_async(databaseQueue, block);
}

uint64_t __70__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsAfter_before___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _clearStatisticsAfter:v3 before:v4];
}

- (void)clearStatisticsForDomains:(id)domains
{
  domainsCopy = domains;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsForDomains___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = domainsCopy;
  v6 = domainsCopy;
  dispatch_async(databaseQueue, v7);
}

uint64_t __68__WBSContentBlockerStatisticsSQLiteStore_clearStatisticsForDomains___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNeeded];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v5 = *v16;
    *&v4 = 138477827;
    v14 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 safari_highLevelDomainFromHost];
        v9 = [v7 isEqualToString:v8];

        if (v9)
        {
          [*(a1 + 32) _clearStatisticsForDomain:v7];
        }

        else
        {
          v12 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v10, v11);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v20 = v7;
            _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Could not remove content blocker statistics for non high-level domain %{private}@", buf, 0xCu);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v3);
  }

  return [*(a1 + 32) _deleteUnusedDomains];
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__WBSContentBlockerStatisticsSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

+ (id)_defaultDatabaseURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  safari_settingsDirectoryURL = [defaultManager safari_settingsDirectoryURL];
  v4 = [safari_settingsDirectoryURL URLByAppendingPathComponent:@"ContentBlockerStatistics.db" isDirectory:0];

  return v4;
}

+ (id)_databaseURLForProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager safari_profileDirectoryURLWithID:identifierCopy createIfNeeded:0];
  v6 = [v5 URLByAppendingPathComponent:@"ContentBlockerStatistics.db" isDirectory:0];

  return v6;
}

- (void)_closeDatabaseOnDatabaseQueue
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)_openDatabaseIfNeededFallingBackToInMemory:(BOOL)memory
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_database)
  {
    memoryCopy = memory;
    v24 = 0;
    v5 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v24];
    v6 = v24;
    v7 = v6;
    if (v5)
    {
      LOBYTE(memoryCopy) = 1;
LABEL_21:

      return memoryCopy;
    }

    if (([v6 safari_isSQLiteCorruptionError] & 1) != 0 || objc_msgSend(v7, "safari_isSQLiteError") && objc_msgSend(v7, "code") == 26)
    {
      [(WBSContentBlockerStatisticsSQLiteStore *)self _deleteDatabase];
      v23 = v7;
      v8 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v23];
      v9 = v23;

      if (v8)
      {
        LOBYTE(memoryCopy) = 1;
        v7 = v9;
        goto LABEL_21;
      }

      v7 = v9;
      if (!memoryCopy)
      {
        goto LABEL_21;
      }
    }

    else if (!memoryCopy)
    {
      goto LABEL_21;
    }

    inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    databaseURL = self->_databaseURL;
    self->_databaseURL = inMemoryDatabaseURL;

    v14 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      safari_privacyPreservingDescription = [v7 safari_privacyPreservingDescription];
      [(WBSContentBlockerStatisticsSQLiteStore *)safari_privacyPreservingDescription _openDatabaseIfNeededFallingBackToInMemory:buf, v14];
    }

    v22 = v7;
    v16 = [(WBSContentBlockerStatisticsSQLiteStore *)self _tryOpenDatabase:&v22];
    v17 = v22;

    if (v16)
    {
      LOBYTE(memoryCopy) = 1;
    }

    else
    {
      v20 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [WBSContentBlockerStatisticsSQLiteStore _openDatabaseIfNeededFallingBackToInMemory:v20];
      }

      LOBYTE(memoryCopy) = 0;
    }

    v7 = v17;
    goto LABEL_21;
  }

  LOBYTE(memoryCopy) = 1;
  return memoryCopy;
}

- (void)_deleteDatabase
{
  databaseURL = self->_databaseURL;
  inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  LOBYTE(databaseURL) = [(NSURL *)databaseURL isEqual:?];

  if ((databaseURL & 1) == 0)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    absoluteString = [(NSURL *)self->_databaseURL absoluteString];
    [defaultManager removeItemAtURL:self->_databaseURL error:0];
    v5 = MEMORY[0x1E695DFF8];
    v6 = [absoluteString stringByAppendingString:@"-lock"];
    v7 = [v5 URLWithString:v6];
    [defaultManager removeItemAtURL:v7 error:0];

    v8 = MEMORY[0x1E695DFF8];
    v9 = [absoluteString stringByAppendingString:@"-shm"];
    v10 = [v8 URLWithString:v9];
    [defaultManager removeItemAtURL:v10 error:0];

    v11 = MEMORY[0x1E695DFF8];
    v12 = [absoluteString stringByAppendingString:@"-wal"];
    v13 = [v11 URLWithString:v12];
    [defaultManager removeItemAtURL:v13 error:0];
  }
}

- (BOOL)_tryOpenDatabase:(id *)database
{
  v35 = *MEMORY[0x1E69E9840];
  p_databaseURL = &self->_databaseURL;
  v6 = [objc_alloc(MEMORY[0x1E69C89E8]) initWithURL:self->_databaseURL queue:self->_databaseQueue];
  database = self->_database;
  self->_database = v6;

  v8 = self->_database;
  v33 = 0;
  v9 = [(WBSSQLiteDatabase *)v8 openWithAccessType:3 error:&v33];
  v10 = v33;
  v12 = v10;
  if ((v9 & 1) == 0)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v10, v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *p_databaseURL;
      safari_privacyPreservingDescription = [v12 safari_privacyPreservingDescription];
      [(WBSContentBlockerStatisticsSQLiteStore *)v20 _tryOpenDatabase:safari_privacyPreservingDescription, v34];
    }

    v22 = self->_database;
    self->_database = 0;

    if (database)
    {
      v23 = v12;
      v18 = 0;
      *database = v12;
      goto LABEL_21;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v13 = *p_databaseURL;
  inMemoryDatabaseURL = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
  LOBYTE(v13) = [(NSURL *)v13 isEqual:inMemoryDatabaseURL];

  if ((v13 & 1) == 0)
  {
    SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA locking_mode = EXCLUSIVE");
  }

  v15 = self->_database;
  v32 = v12;
  v16 = [(WBSSQLiteDatabase *)v15 enableWAL:&v32];
  v17 = v32;

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    code = [v17 code];
    if (code == 5)
    {
      v26 = WBS_LOG_CHANNEL_PREFIXContentBlockers(5, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(WBSContentBlockerStatisticsSQLiteStore *)&self->_databaseURL _tryOpenDatabase:v26];
      }
    }

    else
    {
      v27 = WBS_LOG_CHANNEL_PREFIXContentBlockers(code, v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *p_databaseURL;
        safari_privacyPreservingDescription2 = [v17 safari_privacyPreservingDescription];
        [(WBSContentBlockerStatisticsSQLiteStore *)v28 _tryOpenDatabase:safari_privacyPreservingDescription2, v34];
      }
    }

    if (database)
    {
      v30 = v17;
      *database = v17;
    }

    goto LABEL_19;
  }

  SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA foreign_keys = ON");
  if (![(WBSContentBlockerStatisticsSQLiteStore *)self _createDatabaseSchemaIfNeeded])
  {
LABEL_19:
    [(WBSContentBlockerStatisticsSQLiteStore *)self _closeDatabaseOnDatabaseQueue];
    goto LABEL_20;
  }

  v18 = 1;
LABEL_21:

  return v18;
}

- (BOOL)_createDatabaseSchemaIfNeeded
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(WBSContentBlockerStatisticsSQLiteStore *)self _schemaVersion])
  {
    return 1;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS FirstPartyDomains (firstPartyDomainID INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE ON CONFLICT FAIL)");
  if (v4 == 101)
  {
    v6 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS ThirdPartyDomains (thirdPartyDomainID INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL UNIQUE ON CONFLICT FAIL)");
    if (v6 == 101)
    {
      v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS BlockedResources (firstPartyDomainID INTEGER NOT NULL,thirdPartyDomainID INTEGER NOT NULL,lastSeen REAL NOT NULL,FOREIGN KEY (firstPartyDomainID) REFERENCES FirstPartyDomains(firstPartyDomainID) ON DELETE CASCADE,FOREIGN KEY (thirdPartyDomainID) REFERENCES ThirdPartyDomains(thirdPartyDomainID) ON DELETE CASCADE,PRIMARY KEY (firstPartyDomainID, thirdPartyDomainID))");
      if (v8 == 101)
      {
        v10 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"PRAGMA user_version = 1");
        if (v10 == 101)
        {
          return 1;
        }

        v12 = v10;
        v13 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v10, v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
          safari_privacyPreservingDescription = [v14 safari_privacyPreservingDescription];
          v25 = 138543618;
          v26 = safari_privacyPreservingDescription;
          v27 = 1024;
          v28 = v12;
          _os_log_error_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_ERROR, "Failed to set Content Blocker Statistics database schema version: %{public}@ (%d)", &v25, 0x12u);
        }
      }

      else
      {
        v22 = v8;
        v13 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v8, v9);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v23 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
          safari_privacyPreservingDescription2 = [v23 safari_privacyPreservingDescription];
          v25 = 138543618;
          v26 = safari_privacyPreservingDescription2;
          v27 = 1024;
          v28 = v22;
          _os_log_error_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_ERROR, "Failed to create BlockedResources table: %{public}@, (%d)", &v25, 0x12u);
        }
      }
    }

    else
    {
      v19 = v6;
      v13 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v6, v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
        safari_privacyPreservingDescription3 = [v20 safari_privacyPreservingDescription];
        v25 = 138543618;
        v26 = safari_privacyPreservingDescription3;
        v27 = 1024;
        v28 = v19;
        _os_log_error_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_ERROR, "Failed to create ThirdPartyDomains table: %{public}@ (%d)", &v25, 0x12u);
      }
    }
  }

  else
  {
    v16 = v4;
    v13 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v4, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _createDatabaseSchemaIfNeeded]"];
      safari_privacyPreservingDescription4 = [v17 safari_privacyPreservingDescription];
      v25 = 138543618;
      v26 = safari_privacyPreservingDescription4;
      v27 = 1024;
      v28 = v16;
      _os_log_error_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_ERROR, "Failed to create FirstPartyDomains table: %{public}@ (%d)", &v25, 0x12u);
    }
  }

  return 0;
}

- (int64_t)_schemaVersion
{
  v2 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  nextObject = [v2 nextObject];
  v4 = [nextObject intAtIndex:0];

  statement = [v2 statement];
  [statement invalidate];

  return v4;
}

- (int64_t)_idForThirdPartyWithHighLevelDomain:(id)domain
{
  v20 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT thirdPartyDomainID FROM ThirdPartyDomains WHERE domain = ?", &domainCopy);
  nextObject = [v4 nextObject];
  v6 = nextObject;
  if (nextObject)
  {
    lastInsertRowID = [nextObject intAtIndex:0];
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"INSERT INTO ThirdPartyDomains (domain) VALUES (?)", &domainCopy);
    v10 = v8;
    if (v8 == 101)
    {
      lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _idForThirdPartyWithHighLevelDomain:]"];
        safari_privacyPreservingDescription = [v13 safari_privacyPreservingDescription];
        *buf = 138543618;
        v17 = safari_privacyPreservingDescription;
        v18 = 1024;
        v19 = v10;
        _os_log_error_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_ERROR, "Failed to insert row into ThirdPartyDomains: %{public}@ (%d)", buf, 0x12u);
      }

      lastInsertRowID = 0x7FFFFFFFFFFFFFFFLL;
      v6 = v11;
    }
  }

  return lastInsertRowID;
}

- (int64_t)_idForFirstPartyWithHighLevelDomain:(id)domain
{
  v20 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT firstPartyDomainID FROM FirstPartyDomains WHERE domain = ?", &domainCopy);
  nextObject = [v4 nextObject];
  v6 = nextObject;
  if (nextObject)
  {
    lastInsertRowID = [nextObject intAtIndex:0];
  }

  else
  {
    v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"INSERT INTO FirstPartyDomains (domain) VALUES (?)", &domainCopy);
    v10 = v8;
    if (v8 == 101)
    {
      lastInsertRowID = [(WBSSQLiteDatabase *)self->_database lastInsertRowID];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _idForFirstPartyWithHighLevelDomain:]"];
        safari_privacyPreservingDescription = [v13 safari_privacyPreservingDescription];
        *buf = 138543618;
        v17 = safari_privacyPreservingDescription;
        v18 = 1024;
        v19 = v10;
        _os_log_error_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_ERROR, "Failed to insert row into FirstPartyDomains: %{public}@ (%d)", buf, 0x12u);
      }

      lastInsertRowID = 0x7FFFFFFFFFFFFFFFLL;
      v6 = v11;
    }
  }

  return lastInsertRowID;
}

- (void)_clearStatisticsAfter:(id)after before:(id)before
{
  v21 = *MEMORY[0x1E69E9840];
  afterCopy = after;
  beforeCopy = before;
  database = self->_database;
  [afterCopy timeIntervalSince1970];
  *buf = v9;
  [beforeCopy timeIntervalSince1970];
  v17 = v10;
  v11 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<double,double>(database, 0, @"DELETE FROM BlockedResources WHERE lastSeen >= ? AND lastSeen <= ?", buf, &v17);
  v13 = v11;
  if (v11 != 101)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _clearStatisticsAfter:before:]"];
      safari_privacyPreservingDescription = [v15 safari_privacyPreservingDescription];
      *buf = 138543618;
      *&buf[4] = safari_privacyPreservingDescription;
      v19 = 1024;
      v20 = v13;
      _os_log_error_impl(&dword_1BB6F3000, v14, OS_LOG_TYPE_ERROR, "Unable to clear rows from Blocked Resources: %{public}@ (%d)", buf, 0x12u);
    }
  }

  [(WBSContentBlockerStatisticsSQLiteStore *)self _deleteUnusedDomains];
}

- (void)_clearStatisticsForDomain:(id)domain
{
  v15 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}&>(self->_database, 0, @"DELETE FROM FirstPartyDomains WHERE domain = ?", &domainCopy);
  v6 = v4;
  if (v4 != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _clearStatisticsForDomain:]"];
      safari_privacyPreservingDescription = [v8 safari_privacyPreservingDescription];
      *buf = 138543618;
      v12 = safari_privacyPreservingDescription;
      v13 = 1024;
      v14 = v6;
      _os_log_error_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_ERROR, "Unable to clear row from First Party Domains: %{public}@ (%d)", buf, 0x12u);
    }
  }
}

- (void)_deleteUnusedDomains
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM FirstPartyDomains WHERE (SELECT COUNT(rowid) FROM BlockedResources WHERE BlockedResources.firstPartyDomainID = FirstPartyDomains.firstPartyDomainID) = 0");
  if (v3 != 101)
  {
    v5 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _deleteUnusedDomains]"];
      safari_privacyPreservingDescription = [v11 safari_privacyPreservingDescription];
      v15 = 138543618;
      v16 = safari_privacyPreservingDescription;
      v17 = 1024;
      v18 = v5;
      _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Unable to clear rows from First Party Domains: %{public}@ (%d)", &v15, 0x12u);
    }
  }

  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"DELETE FROM ThirdPartyDomains WHERE (SELECT COUNT(rowid) FROM BlockedResources WHERE BlockedResources.thirdPartyDomainID = ThirdPartyDomains.thirdPartyDomainID) = 0");
  v9 = v7;
  if (v7 != 101)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXContentBlockers(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(WBSSQLiteDatabase *)self->_database lastErrorWithMethodName:"[WBSContentBlockerStatisticsSQLiteStore _deleteUnusedDomains]"];
      safari_privacyPreservingDescription2 = [v13 safari_privacyPreservingDescription];
      v15 = 138412546;
      v16 = safari_privacyPreservingDescription2;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Unable to clear rows from Third Party Domains: %@ (%d)", &v15, 0x12u);
    }
  }
}

- (void)_openDatabaseIfNeededFallingBackToInMemory:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_FAULT, "Failling back to in-memory database: %{public}@", buf, 0xCu);
}

- (void)_tryOpenDatabase:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to open Content Blocker Statistics SQLite store at %{private}@. Error: %{public}@", v4, 0x16u);
}

- (void)_tryOpenDatabase:(uint64_t)a3 .cold.2(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.8081e-34);
  _os_log_error_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_ERROR, "Failed to enable write-ahead logging on Content Blocker Statistics SQLite store at %{private}@: %{public}@", v4, 0x16u);
}

- (void)_tryOpenDatabase:(uint64_t *)a1 .cold.3(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138477827;
  v4 = v2;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to acquire exclusive access to Content Blocker Statistics SQLite store at %{private}@.", &v3, 0xCu);
}

@end