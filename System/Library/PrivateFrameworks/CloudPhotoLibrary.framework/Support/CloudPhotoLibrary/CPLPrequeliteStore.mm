@interface CPLPrequeliteStore
+ (BOOL)shouldPreventWipeOnUpgrade;
+ (void)_writeStoreMarkerAtURL:(id)l reason:(id)reason;
+ (void)wipeStoreAtNextOpeningWithCloudLibraryStorageURL:(id)l reason:(id)reason;
- (BOOL)_closeWipeAndReOpenWithReason:(id)reason warnUserIfPossible:(BOOL)possible createRadar:(BOOL)radar error:(id *)error;
- (BOOL)_fix22666940;
- (BOOL)_fixStoreAfterAnyVersionChange;
- (BOOL)_hasDeactivateMarker;
- (BOOL)_initializeDB;
- (BOOL)_openWithError:(id *)error;
- (BOOL)_performWithFlags:(unsigned int)flags action:(id)action;
- (BOOL)_postUpgradeToVersion:(int64_t)version;
- (BOOL)_setupDBIfNeeded;
- (BOOL)_upgradeDB:(int64_t)b;
- (BOOL)_upgradeToVersion:(int64_t)version;
- (BOOL)_wipeIfDeactivated:(int64_t)deactivated didWipeDatabase:(BOOL *)database error:(id *)error;
- (BOOL)addGlobalVariable:(id)variable defaultValue:(id)value error:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)createStoragesDynamically:(id)dynamically error:(id *)error;
- (BOOL)deleteDynamicallyCreatedStorages:(id)storages error:(id *)error;
- (BOOL)executePostOpenWithError:(id *)error;
- (BOOL)fixupOrphanScopeIndexes:(id)indexes error:(id *)error;
- (BOOL)hasStoredChangeSessionUpdate;
- (BOOL)hasTable:(id)table;
- (BOOL)isClientInSyncWithClientCache;
- (BOOL)openWithError:(id *)error;
- (BOOL)performPostUpgradeMigrationsWithError:(id *)error;
- (BOOL)resetValueForGlobalVariable:(id)variable error:(id *)error;
- (BOOL)setValue:(id)value forGlobalVariable:(id)variable error:(id *)error;
- (BOOL)shouldUpdateDisabledFeatures;
- (BOOL)storeChangeSessionUpdate:(id)update error:(id *)error;
- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)error;
- (BOOL)storeClientIsNotInSyncWithClientCacheWithError:(id *)error;
- (BOOL)storeDerivativesFilter:(id)filter error:(id *)error;
- (BOOL)storeDisabledFeatures:(id)features error:(id *)error;
- (BOOL)storePushPullGatekeepers:(id)gatekeepers error:(id *)error;
- (BOOL)storeUserIdentifier:(id)identifier error:(id *)error;
- (BOOL)storeVersionHasChanged;
- (BOOL)table:(id)table hasColumnWithName:(id)name;
- (BOOL)table:(id)table hasRecordsMatchingQuery:(id)query;
- (BOOL)tableHasRecords:(id)records;
- (BOOL)updateLibraryOptions:(unint64_t)options error:(id *)error;
- (CPLChangeSessionUpdate)storedChangeSessionUpdate;
- (CPLPrequeliteStore)initWithAbstractObject:(id)object;
- (Class)_userIdentifierClass;
- (NSArray)pushPullGatekeepers;
- (NSString)description;
- (NSURL)deactivateMarkerURL;
- (id)_corruptionMarkerURL;
- (id)_transactionStatsDescription;
- (id)_wipeReasonFromCorruptionInfo:(id)info;
- (id)_wipeStoreMarkerURL;
- (id)clientCache;
- (id)cloudCache;
- (id)corruptionInfo;
- (id)createNewClientCacheIdentifier;
- (id)createNewLibraryVersion;
- (id)derivativesFilter;
- (id)disabledFeatures;
- (id)lastQuarantineCountReportDate;
- (id)redactedDescription;
- (id)scopeIndexesPerScopeType;
- (id)status;
- (id)transientPullRepository;
- (id)userIdentifier;
- (id)valueForGlobalVariable:(id)variable;
- (id)wipeReason;
- (int64_t)_sizeInBytes;
- (unint64_t)libraryOptions;
- (unint64_t)table:(id)table countOfRecordsMatchingQuery:(id)query;
- (unint64_t)tableCountOfRecords:(id)records;
- (void)_addPostUpgradeMigration:(id)migration;
- (void)_cacheValue:(id)value forVariable:(id)variable;
- (void)_closeUpgradeJournal;
- (void)_deleteCorruptionInfo;
- (void)_deleteWipeReason;
- (void)_markLibraryAsCorruptedWithInfo:(id)info;
- (void)_notifyVacuumDidComplete;
- (void)_openUpgradeJournal;
- (void)_scheduleClientCacheDrop;
- (void)_scheduleClientCacheDropIfNecessary;
- (void)_setupProfilingHooks;
- (void)_unsetupProfilingHooks;
- (void)_vacuum:(int64_t)_vacuum withInitialDatabaseSize:(int64_t)size;
- (void)_wipeBeforeOpeningIfNecessary;
- (void)_wipeWithReason:(id)reason;
- (void)blockWriteTransactionsWithCompletionHandler:(id)handler;
- (void)emergencyClose;
- (void)markAsCorrupted;
- (void)performBarrierTransaction:(id)transaction withBlock:(id)block;
- (void)performReadTransaction:(id)transaction withBlock:(id)block;
- (void)performWriteTransaction:(id)transaction withBlock:(id)block completionHandler:(id)handler;
- (void)recordUpgradeEvent:(id)event arguments:(char *)arguments;
- (void)startVacuumWithCompletionHandler:(id)handler;
- (void)stopVacuum;
- (void)table:(id)table enumerateCountGroupedByProperty:(id)property block:(id)block;
- (void)table:(id)table enumerateCountGroupedByUnsignedIntegerProperty:(id)property block:(id)block;
- (void)table:(id)table enumerateDistinctValuesOfProperty:(id)property block:(id)block;
- (void)triggerResetAfterUpgrade:(unint64_t)upgrade withReason:(id)reason;
- (void)wipeStoreAtNextOpeningWithReason:(id)reason completionBlock:(id)block;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteStore

- (BOOL)isClientInSyncWithClientCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002DE8;
  v5[3] = &unk_100272028;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isClientInSyncWithClientCacheQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addPostUpgradeMigration:(id)migration
{
  migrationCopy = migration;
  v8 = migrationCopy;
  if (!self->_postUpgradeMigrations)
  {
    v5 = objc_alloc_init(NSMutableArray);
    postUpgradeMigrations = self->_postUpgradeMigrations;
    self->_postUpgradeMigrations = v5;

    migrationCopy = v8;
  }

  migrationDescription = [migrationCopy migrationDescription];
  [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to perform %@", migrationDescription];

  [(NSMutableArray *)self->_postUpgradeMigrations addObject:v8];
}

+ (BOOL)shouldPreventWipeOnUpgrade
{
  if (os_variant_has_internal_content())
  {
    if ((byte_1002D2B28 & 1) == 0)
    {
      v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileslideshow"];
      byte_1002D2B29 = [v2 BOOLForKey:@"com.apple.Photos.PreventRebuild"];
      byte_1002D2B28 = 1;
    }

    v3 = byte_1002D2B29;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (CPLPrequeliteStore)initWithAbstractObject:(id)object
{
  v6.receiver = self;
  v6.super_class = CPLPrequeliteStore;
  v3 = [(CPLPrequeliteStore *)&v6 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    sub_1001BB9A0(v3);
  }

  return v4;
}

- (void)triggerResetAfterUpgrade:(unint64_t)upgrade withReason:(id)reason
{
  reasonCopy = reason;
  v7 = reasonCopy;
  if (!self->_didWipeLibrary)
  {
    sub_1001BBF78(reasonCopy, upgrade, self);
  }
}

- (id)_transactionStatsDescription
{
  v3 = [(NSMutableDictionary *)self->_transactionStatistics count];
  if (v3)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    allValues = [(NSMutableDictionary *)self->_transactionStatistics allValues];
    v6 = [allValues sortedArrayUsingSelector:"compare:"];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) description];
          [v4 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v12 = [v4 componentsJoinedByString:@"\n  "];
  }

  else
  {
    v12 = @"no SQL statements";
  }

  return v12;
}

- (void)_setupProfilingHooks
{
  if (!self->_transactionStatistics)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    transactionStatistics = self->_transactionStatistics;
    self->_transactionStatistics = v3;

    objc_initWeak(&location, self);
    db = self->_db;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100002138;
    v14 = &unk_10027B4C0;
    objc_copyWeak(&v15, &location);
    [(PQLConnection *)db setProfilingHook:&v11];
    v6 = sqlite3_trace_v2([(PQLConnection *)self->_db dbHandle:v11], 2u, sub_1000024A4, self);
    v7 = v6;
    if (v6 && (_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_100150214(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        dbHandle = [(PQLConnection *)self->_db dbHandle];
        v10 = sqlite3_errstr(v7);
        sub_1001BC0F4(dbHandle, v10, v17, v8);
      }
    }

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_unsetupProfilingHooks
{
  if (self->_transactionStatistics)
  {
    [(PQLConnection *)self->_db setProfilingHook:0];
    sqlite3_trace_v2([(PQLConnection *)self->_db dbHandle], 2u, 0, 0);
    transactionStatistics = self->_transactionStatistics;
    self->_transactionStatistics = 0;
  }
}

- (BOOL)_performWithFlags:(unsigned int)flags action:(id)action
{
  v4 = *&flags;
  actionCopy = action;
  if (self->_shouldProfile)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = [(PQLConnection *)self->_db performWithFlags:v4 action:actionCopy];
    v10 = CFAbsoluteTimeGetCurrent();
    if (self->_transactionStatistics)
    {
      v11 = v10 - Current;
      if (self->_showStatsForAllTransactions || v11 > 10.0)
      {
        self->_lastLongTransactionDate = v10;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v12 = sub_10015060C(v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            _transactionStatsDescription = [(CPLPrequeliteStore *)self _transactionStatsDescription];
            sub_1001BC1C4(_transactionStatsDescription, v15, v12, v11);
          }
        }
      }

      else if (v10 - self->_lastLongTransactionDate > 3600.0)
      {
        sub_1001BC158(v9);
        [(CPLPrequeliteStore *)self _unsetupProfilingHooks];
      }

      [(NSMutableDictionary *)self->_transactionStatistics removeAllObjects];
    }

    else if (v10 - Current > 10.0)
    {
      sub_1001BC228(self, v10);
      [(CPLPrequeliteStore *)self _setupProfilingHooks];
    }
  }

  else
  {
    v8 = [(PQLConnection *)self->_db performWithFlags:v4 action:actionCopy];
  }

  return v8 & 1;
}

- (BOOL)_fix22666940
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  selfCopy = self;
  clientCache = [(CPLPrequeliteStore *)self clientCache];
  cloudCache = [abstractObject cloudCache];
  platformObject = [cloudCache platformObject];

  idMapping = [abstractObject idMapping];
  platformObject2 = [idMapping platformObject];

  remappedRecords = [abstractObject remappedRecords];
  platformObject3 = [remappedRecords platformObject];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v46 = clientCache;
  v9 = clientCache;
  v10 = platformObject;
  obj = [v9 _badContainerRelationsIdentifiers];
  v11 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  _deleteBadRelations = v11 == 0;
  if (!v11)
  {
LABEL_36:

    goto LABEL_37;
  }

  v13 = v11;
  v41 = v11 == 0;
  v42 = abstractObject;
  v47 = 0;
  v14 = 0;
  v15 = *v55;
  v51 = CPLPrimaryScopeIdentifier;
  do
  {
    v16 = 0;
    v17 = -v14;
    v43 = &v13[v14];
    v48 = -v14;
    v49 = v13;
    do
    {
      if (*v55 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v54 + 1) + 8 * v16);
      v19 = objc_autoreleasePoolPush();
      v20 = v19;
      if (v17 == v16 && (_CPLSilentLogging & 1) == 0)
      {
        v21 = sub_100150214(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found some bad container relations to fix", buf, 2u);
        }
      }

      buf[0] = 0;
      if (v18)
      {
        v22 = v18;
        v23 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v51 identifier:v22];
      }

      else
      {
        v23 = 0;
      }

      v24 = [platformObject2 cloudScopedIdentifierForLocalScopedIdentifier:v23 isFinal:buf];

      if (v24)
      {
        identifier = [v24 identifier];
        v26 = [v10 _relatedIdentifierForRecordWithIdentifier:identifier];

        if (v26)
        {
          v27 = v15;
          v28 = [CPLScopedIdentifier alloc];
          identifier2 = [v24 identifier];
          v30 = v10;
          v31 = [v10 _relatedIdentifierForRecordWithIdentifier:identifier2];
          v32 = [v28 initWithScopeIdentifier:v51 identifier:v31];

          if (!v32)
          {
            goto LABEL_20;
          }

          v33 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v32 isFinal:buf];
          if (v33)
          {
            goto LABEL_18;
          }

          v36 = [platformObject3 realScopedIdentifierForRemappedScopedIdentifier:v32];
          v10 = v30;
          if (v36)
          {
            v37 = [platformObject2 localScopedIdentifierForCloudScopedIdentifier:v36 isFinal:buf];
            if (v37)
            {
              v33 = v37;
              if ([v46 hasRecordWithScopedIdentifier:v37])
              {
                [(CPLPrequeliteStore *)selfCopy recordUpgradeEvent:@"FIX: Cloud %@'s item: %@ => %@", v24, v32, v36];
                v38 = [v30 remapAllRecordsWithPreviousScopedIdentifier:v32 newScopedIdentifier:v36 error:0];

                if (!v38)
                {

LABEL_35:
                  objc_autoreleasePoolPop(v20);
                  abstractObject = v42;
                  v10 = v30;
                  _deleteBadRelations = v41;
                  goto LABEL_36;
                }

LABEL_18:
                [(CPLPrequeliteStore *)selfCopy recordUpgradeEvent:@"FIX: Client %@'s item: %@", v18, v33];
                identifier3 = [v33 identifier];
                v35 = [v46 _updateRelatedIdentifier:identifier3 forRecordWithIdentifier:v18];

                if ((v35 & 1) == 0)
                {
                  goto LABEL_35;
                }

                ++v47;
LABEL_20:
                v10 = v30;
LABEL_21:
                v15 = v27;
                v17 = v48;
                v13 = v49;
                goto LABEL_22;
              }
            }
          }

          goto LABEL_21;
        }
      }

LABEL_22:

      objc_autoreleasePoolPop(v20);
      ++v16;
    }

    while (v13 != v16);
    v39 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    v13 = v39;
    v14 = v43;
  }

  while (v39);

  if (v43)
  {
    abstractObject = v42;
    if (v43 == v47)
    {
      [(CPLPrequeliteStore *)selfCopy recordUpgradeEvent:@"Fixed %lu relations", v43];
      _deleteBadRelations = 1;
    }

    else
    {
      _deleteBadRelations = [v46 _deleteBadRelations];
      [(CPLPrequeliteStore *)selfCopy recordUpgradeEvent:@"Fixed %lu relations and deleted %lu", v43, v43 - v47];
    }
  }

  else
  {
    _deleteBadRelations = 1;
    abstractObject = v42;
  }

LABEL_37:

  return _deleteBadRelations;
}

- (void)_scheduleClientCacheDrop
{
  if (self->_hasScheduledClientCacheDrop)
  {
    sub_1001BC2E4(a2, self);
  }

  self->_hasScheduledClientCacheDrop = 1;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100150EE8;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = v3;
  if (byte_1002D2B2B == 1)
  {
    (v3[2])(v3);
  }

  else
  {
    v5 = dispatch_time(0, 10000000000);
    dispatch_after(v5, self->_queue, v4);
  }
}

- (void)_scheduleClientCacheDropIfNecessary
{
  if (!self->_hasScheduledClientCacheDrop)
  {
    v3 = [(PQLConnection *)self->_db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT name FROM sqlite_master WHERE type='table' AND name='clientCache'"];

    if (v3)
    {
      sub_1001BC458(self);
    }
  }
}

- (BOOL)_upgradeToVersion:(int64_t)version
{
  clientCacheMigrator = self->_clientCacheMigrator;
  if (version >= 64 && clientCacheMigrator)
  {
    v6 = 0;
LABEL_7:
    self->_clientCacheMigrator = v6;

    goto LABEL_8;
  }

  if (version <= 63 && !clientCacheMigrator)
  {
    v6 = [[CPLPrequeliteClientCacheMigrator alloc] initWithStore:self];
    clientCacheMigrator = self->_clientCacheMigrator;
    goto LABEL_7;
  }

LABEL_8:
  v7 = 1;
  if (version <= 43)
  {
    if (version > 28)
    {
      if (version == 29)
      {
        self->_mustFix22666940 = 1;
      }

      else if (version == 36)
      {
        v8 = 128;
        goto LABEL_37;
      }
    }

    else if (version == 21)
    {
      dbURL = self->_dbURL;
      v23 = 0;
      v22 = 0;
      v11 = [(NSURL *)dbURL getResourceValue:&v23 forKey:NSURLCreationDateKey error:&v22];
      v12 = v23;
      v13 = v22;
      v14 = v13;
      if ((v11 & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v15 = sub_100150214(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            path = [(NSURL *)self->_dbURL path];
            *buf = 138412546;
            v25 = path;
            v26 = 2112;
            v27 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Can't get creation date for %@: %@", buf, 0x16u);
          }
        }

        v17 = +[NSDate date];

        v12 = v17;
      }

      v7 = [(CPLPrequeliteStore *)self addGlobalVariable:self->_libraryCreationDateVar defaultValue:v12 error:0];
    }

    else if (version == 28)
    {
      v8 = 96;
      goto LABEL_37;
    }

    return v7;
  }

  if (version > 50)
  {
    switch(version)
    {
      case '3':
        if ([(CPLPrequeliteStore *)self addGlobalVariable:self->_shouldUpdateDisabledFeaturesVar defaultValue:&off_10028F0E8 error:0])
        {
          v8 = 192;
          goto LABEL_37;
        }

        return 0;
      case '=':
        v8 = 216;
        goto LABEL_37;
      case 'Q':
        v8 = 136;
LABEL_37:
        v18 = *&self->CPLPlatformObject_opaque[v8];
        selfCopy2 = self;
        v19 = 0;
        goto LABEL_38;
    }

    return v7;
  }

  if (version == 44)
  {
    v9 = 176;
  }

  else
  {
    if (version != 50)
    {
      return v7;
    }

    v9 = 224;
  }

  v18 = *&self->CPLPlatformObject_opaque[v9];
  v19 = &off_10028F0E8;
  selfCopy2 = self;
LABEL_38:

  return [(CPLPrequeliteStore *)selfCopy2 addGlobalVariable:v18 defaultValue:v19 error:0];
}

- (BOOL)_postUpgradeToVersion:(int64_t)version
{
  if (version > 81)
  {
    switch(version)
    {
      case 'R':
        v8 = objc_autoreleasePoolPush();
        v9 = CPLStoreMigrationAssistant_101386451;
        break;
      case 'V':
        v8 = objc_autoreleasePoolPush();
        v9 = CPLStoreMigrationAssistant_107137447;
        break;
      case 'W':
        v5 = [CPLStoreMigrationAssistant_110019222 alloc];
        abstractObject = [(CPLPrequeliteStore *)self abstractObject];
        resourceStorage = [(CPLStoreMigrationAssistant_110019222 *)v5 initWithStore:abstractObject];

        [(CPLPrequeliteStore *)self _addPostUpgradeMigration:resourceStorage];
LABEL_18:

        return 1;
      default:
        return 1;
    }

    v13 = [v9 alloc];
    abstractObject2 = [(CPLPrequeliteStore *)self abstractObject];
    v15 = [v13 initWithStore:abstractObject2];

    [(CPLPrequeliteStore *)self _addPostUpgradeMigration:v15];
    objc_autoreleasePoolPop(v8);
    return 1;
  }

  if (version == 31)
  {
    self->_mustMigratePushQueue = 1;
    return 1;
  }

  if (version != 40)
  {
    if (version == 63)
    {
      clientCacheMigrator = self->_clientCacheMigrator;
      self->_clientCacheMigrator = 0;

      [(CPLPrequeliteStore *)self _scheduleClientCacheDrop];
    }

    return 1;
  }

  if (self->_mustFix22666940)
  {
    [(CPLPrequeliteStore *)self _fix22666940];
  }

  if (self->_mustMigratePushQueue)
  {
    abstractObject3 = [(CPLPrequeliteStore *)self abstractObject];
    resourceStorage = [abstractObject3 resourceStorage];

    shouldCheckFilesForUpload = [(CPLStoreMigrationAssistant_110019222 *)resourceStorage shouldCheckFilesForUpload];
    [(CPLStoreMigrationAssistant_110019222 *)resourceStorage setShouldCheckFilesForUpload:0];
    v12 = [[CPLPrequeliteFlattentPipelineMigrator alloc] initWithStore:self];
    if (![(CPLPrequeliteFlattentPipelineMigrator *)v12 migrate])
    {
      sub_1001BC4D0(v12, self);
    }

    [(CPLStoreMigrationAssistant_110019222 *)resourceStorage setShouldCheckFilesForUpload:shouldCheckFilesForUpload];

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)_fixStoreAfterAnyVersionChange
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  selfCopy = self;
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  storages = [abstractObject storages];

  v6 = [storages countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    v9 = &CPLFeatureNameEPP_ptr;
    v45 = v3;
    while (2)
    {
      v10 = 0;
      v46 = v7;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(storages);
        }

        v11 = *(*(&v48 + 1) + 8 * v10);
        platformObject = [v11 platformObject];
        if (([platformObject fixStorageAfterAnyVersionChange] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BC5A4(v11, selfCopy);
          }

          goto LABEL_25;
        }

        scopeType = [v11 scopeType];
        if ([platformObject isAlive])
        {
          v14 = scopeType == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          scopeIndexes = [platformObject scopeIndexes];
          if ([scopeIndexes count])
          {
            v16 = v8;
            v17 = [v9[192] numberWithUnsignedInteger:scopeType];
            [v3 objectForKeyedSubscript:v17];
            v19 = v18 = v3;

            if (v19)
            {
              [v19 addIndexes:scopeIndexes];
            }

            else
            {
              v20 = [scopeIndexes mutableCopy];
              v21 = [v9[192] numberWithUnsignedInteger:scopeType];
              [v18 setObject:v20 forKeyedSubscript:v21];
            }

            v9 = &CPLFeatureNameEPP_ptr;
            v8 = v16;
            v3 = v45;
            v7 = v46;
          }
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [storages countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  globals = selfCopy->_globals;
  variableName = [(CPLPrequeliteVariable *)selfCopy->_mainScopeIdentifierVar variableName];
  LOBYTE(globals) = [(CPLPrequeliteStore *)selfCopy table:globals hasColumnWithName:variableName];

  if (globals)
  {
    goto LABEL_20;
  }

  pqlConnection = [(CPLPrequeliteStore *)selfCopy pqlConnection];
  v27 = [pqlConnection fetchObjectOfClass:objc_opt_class() sql:@"SELECT universeName FROM globals"];
  v28 = v27;
  v29 = CPLPrimaryScopeIdentifier;
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = CPLPrimaryScopeIdentifier;
  }

  v31 = v30;

  v32 = [v31 isEqualToString:v29];
  if (v32)
  {
    v33 = v32;
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BC66C(v31);
    }

    v34 = [(CPLPrequeliteStore *)selfCopy addGlobalVariable:selfCopy->_mainScopeIdentifierVar defaultValue:v31 error:0];

    if ((v33 & v34) == 1)
    {
      abstractObject2 = [(CPLPrequeliteStore *)selfCopy abstractObject];
      engineLibrary = [abstractObject2 engineLibrary];
      store = [engineLibrary store];
      scopes = [store scopes];
      v39 = [scopes clearAllQuotaFlagsForMainScopeWithReason:@"fix store after any version change" error:0];

      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (!v34)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v40 = sub_100150214(v32);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v53 = v31;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Database is bound to %@ and need to be wiped before opening", buf, 0xCu);
      }
    }

    v47 = 0;
    v41 = [(CPLPrequeliteStore *)selfCopy _closeWipeAndReOpenWithReason:@"upgrading parallel universe database" warnUserIfPossible:0 createRadar:0 error:&v47];
    v42 = v47;
    v43 = v42;
    if (!v41)
    {
      [pqlConnection setLastError:v42];

LABEL_25:
      v24 = 0;
      goto LABEL_26;
    }
  }

LABEL_20:
  if ([v3 count])
  {
    v24 = [(CPLPrequeliteStore *)selfCopy fixupOrphanScopeIndexes:v3 error:0];
  }

  else
  {
    v24 = 1;
  }

LABEL_26:

  return v24;
}

- (BOOL)performPostUpgradeMigrationsWithError:(id *)error
{
  if (self->_postUpgradeMigrations)
  {
    [(CPLPrequeliteStore *)self _openUpgradeJournal];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_postUpgradeMigrations;
    v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v34)
    {
      errorCopy = error;
      v5 = 0;
      v33 = *v38;
      v6 = &_CPLSilentLogging;
      v7 = &CPLFeatureNameEPP_ptr;
      v8 = &CPLFeatureNameEPP_ptr;
      while (2)
      {
        v9 = 0;
        v10 = v5;
        do
        {
          if (*v38 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * v9);
          v12 = objc_autoreleasePoolPush();
          context = v12;
          if ((*v6 & 1) == 0)
          {
            v13 = sub_100150214(v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              migrationDescription = [v11 migrationDescription];
              *buf = 138412290;
              v44 = migrationDescription;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Start migration '%@'", buf, 0xCu);
            }
          }

          v15 = v7[46];
          date = [v8[249] date];
          v17 = [v15 stringFromDate:date];
          migrationDescription2 = [v11 migrationDescription];
          [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Performing migration '%@'", v17, migrationDescription2];

          date2 = [v8[249] date];
          v36 = v10;
          v20 = [v11 performMigrationWithError:&v36];
          v5 = v36;

          if ((v20 & 1) == 0 && v5)
          {
            if ((*v6 & 1) == 0)
            {
              sub_1001BC6FC();
            }

            [(PQLConnection *)self->_db setLastError:v5];

            objc_autoreleasePoolPop(context);
            v27 = 0;
            error = errorCopy;
            goto LABEL_23;
          }

          v21 = v7[46];
          [v8[249] date];
          v23 = v22 = v6;
          v24 = [v21 stringFromDate:v23];
          migrationDescription3 = [v11 migrationDescription];
          [date2 timeIntervalSinceNow];
          [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Performed migration '%@' in %.1fs: Done", v24, migrationDescription3, -v26];

          v6 = v22;
          if ((*v22 & 1) == 0)
          {
            sub_1001BC7B4(v41, v11, &v42);
          }

          objc_autoreleasePoolPop(context);
          v9 = v9 + 1;
          v10 = v5;
          v7 = &CPLFeatureNameEPP_ptr;
          v8 = &CPLFeatureNameEPP_ptr;
        }

        while (v34 != v9);
        v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }

      error = errorCopy;
      v27 = v20;
    }

    else
    {
      v5 = 0;
      v27 = 1;
    }

LABEL_23:

    [(CPLPrequeliteStore *)self _closeUpgradeJournal];
    postUpgradeMigrations = self->_postUpgradeMigrations;
    self->_postUpgradeMigrations = 0;

    if (error && !v27)
    {
      v29 = v5;
      v27 = 0;
      *error = v5;
    }
  }

  else
  {
    v5 = 0;
    v27 = 1;
  }

  return v27;
}

- (NSURL)deactivateMarkerURL
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  clientLibraryBaseURL = [engineLibrary clientLibraryBaseURL];
  uRLByDeletingLastPathComponent = [clientLibraryBaseURL URLByDeletingLastPathComponent];
  v6 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"disableICloudPhotos" isDirectory:0];

  return v6;
}

- (BOOL)_hasDeactivateMarker
{
  v3 = +[NSFileManager defaultManager];
  deactivateMarkerURL = [(CPLPrequeliteStore *)self deactivateMarkerURL];
  path = [deactivateMarkerURL path];
  v6 = [v3 fileExistsAtPath:path];

  return v6;
}

- (BOOL)_closeWipeAndReOpenWithReason:(id)reason warnUserIfPossible:(BOOL)possible createRadar:(BOOL)radar error:(id *)error
{
  radarCopy = radar;
  possibleCopy = possible;
  reasonCopy = reason;
  failInsteadOfWipe = self->_failInsteadOfWipe;
  _hasDeactivateMarker = [(CPLPrequeliteStore *)self _hasDeactivateMarker];
  if ((_hasDeactivateMarker & 1) == 0 && failInsteadOfWipe)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100150214(_hasDeactivateMarker);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = reasonCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Trying to wipe database for reason '%@' but we were asked to prevent wipes", buf, 0xCu);
      }
    }

    v14 = [CPLErrors preventWipeErrorWithReason:reasonCopy preventedByUser:0];
    [(PQLConnection *)self->_db setLastError:v14];
    if (error)
    {
      v15 = v14;
      v16 = 0;
      *error = v14;
      goto LABEL_32;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_32;
  }

  if (((_hasDeactivateMarker ^ 1) & possibleCopy) == 1 && +[CPLPrequeliteStore shouldWarnUserBeforeWipeOnUpgrade])
  {
    v17 = [CPLPrequelitePreventWipeNotification alloc];
    abstractObject = [(CPLPrequeliteStore *)self abstractObject];
    engineLibrary = [abstractObject engineLibrary];
    libraryIdentifier = [engineLibrary libraryIdentifier];
    v21 = reasonCopy;
    if (qword_1002D2B58 != -1)
    {
      sub_1001BC840();
    }

    v22 = [qword_1002D2B50 objectForKeyedSubscript:v21];
    if (!v22)
    {
      v35 = v17;
      if ([v21 length] && (+[NSCharacterSet lowercaseLetterCharacterSet](NSCharacterSet, "lowercaseLetterCharacterSet"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "characterIsMember:", objc_msgSend(v21, "characterAtIndex:", 0)), v23, v24))
      {
        v22 = [v21 mutableCopy];
        v34 = [v21 substringToIndex:1];
        uppercaseString = [v34 uppercaseString];
        [v22 replaceCharactersInRange:0 withString:{1, uppercaseString}];
      }

      else
      {
        v22 = v21;
      }

      v17 = v35;
    }

    v14 = [(CPLPrequelitePreventWipeNotification *)v17 initWithLibraryIdentifier:libraryIdentifier reason:v22];
    if ([(CPLPrequelitePreventWipeNotification *)v14 shouldPreventWipeOnUpgradeCreateRadar:radarCopy])
    {
      sub_1001BC974(v21, self, error);
      goto LABEL_31;
    }
  }

  db = self->_db;
  v37 = 0;
  v27 = [(PQLConnection *)db close:&v37];
  v28 = v37;
  v14 = v28;
  if ((v27 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    sub_1001BC854(v28);
  }

  v29 = self->_db;
  self->_db = 0;

  [(CPLPrequeliteStore *)self _wipeWithReason:reasonCopy];
  self->_reentrencyGuard = 1;
  v36 = 0;
  v16 = [(CPLPrequeliteStore *)self _openWithError:&v36];
  v30 = v36;
  v31 = v30;
  if (!v16)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BC8E4(v30);
    }

    if (error)
    {
      v32 = v31;
      *error = v31;
    }
  }

  self->_reentrencyGuard = 0;

LABEL_32:
  return v16;
}

- (id)_wipeReasonFromCorruptionInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [infoCopy objectForKeyedSubscript:@"comment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v4 = @"corrupted database";
LABEL_7:

  return v4;
}

- (void)_wipeBeforeOpeningIfNecessary
{
  corruptionInfo = [(CPLPrequeliteStore *)self corruptionInfo];
  v4 = corruptionInfo;
  if (corruptionInfo)
  {
    sub_1001BCA70(corruptionInfo, self);
  }

  wipeReason = [(CPLPrequeliteStore *)self wipeReason];
  v6 = wipeReason;
  if (wipeReason)
  {
    sub_1001BCB3C(wipeReason, self);
  }
}

- (BOOL)_wipeIfDeactivated:(int64_t)deactivated didWipeDatabase:(BOOL *)database error:(id *)error
{
  if (deactivated < 50 || self->_reentrencyGuard || (-[CPLPrequeliteStore valueForGlobalVariable:](self, "valueForGlobalVariable:", self->_deactivatedVar), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 integerValue], v8, !v9))
  {
    *database = 0;
    return 1;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_100150214(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Database has been marked as deactivated - wiping everything", v13, 2u);
      }
    }

    *database = 1;
    return [(CPLPrequeliteStore *)self _closeWipeAndReOpenWithReason:@"wiping database because it has been marked as deactivated but not deleted afterwards" warnUserIfPossible:0 createRadar:0 error:error];
  }
}

- (void)_openUpgradeJournal
{
  if (self->_upgradeEventJournal != -1)
  {
    sub_1001BCBF4(a2, self);
  }

  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  cloudLibraryStateStorageURL = [engineLibrary cloudLibraryStateStorageURL];

  v5 = [cloudLibraryStateStorageURL URLByAppendingPathComponent:@"cpl-upgrade-events.log"];
  self->_upgradeEventJournal = open([v5 fileSystemRepresentation], 521, 420);
}

- (void)_closeUpgradeJournal
{
  upgradeEventJournal = self->_upgradeEventJournal;
  if (upgradeEventJournal != -1)
  {
    close(upgradeEventJournal);
    self->_upgradeEventJournal = -1;
  }
}

- (BOOL)_setupDBIfNeeded
{
  self->_configuringDB = 1;
  userVersion = [(PQLConnection *)self->_db userVersion];
  longLongValue = [userVersion longLongValue];

  if (!longLongValue)
  {
    self->_storeVersionHasBeenJustCreated = 1;
    _initializeDB = [(CPLPrequeliteStore *)self _initializeDB];
    if ([(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]&& [(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]!= 94)
    {
      [(CPLSimpleUpgradeHistory *)self->_history noteDatabaseWasUpgradedToVersion:94 fromVersion:[(CPLSimpleUpgradeHistory *)self->_history lastSeenDBVersion]];
    }

    goto LABEL_28;
  }

  v25 = 0;
  if ([(CPLPrequeliteStore *)self _wipeIfDeactivated:longLongValue didWipeDatabase:&v25 error:0])
  {
    if ((v25 & 1) != 0 || longLongValue == 94)
    {
      if ((v25 & 1) == 0 && [(CPLSimpleUpgradeHistory *)self->_history versionHasChanged]&& ![(CPLPrequeliteStore *)self _fixStoreAfterAnyVersionChange])
      {
        goto LABEL_27;
      }
    }

    else
    {
      [(CPLPrequeliteStore *)self _openUpgradeJournal];
      v5 = +[NSDate date];
      v6 = [CPLDateFormatter stringFromDate:v5];
      [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrading from %lld to %lld...", v6, longLongValue, 94];

      self->_failInsteadOfWipe = [objc_opt_class() shouldPreventWipeOnUpgrade];
      v7 = [(CPLPrequeliteStore *)self _upgradeDB:longLongValue];
      self->_failInsteadOfWipe = 0;
      if ((v7 & 1) == 0)
      {
        v21 = +[NSDate date];
        v22 = [CPLDateFormatter stringFromDate:v21];
        lastCPLError = [(PQLConnection *)self->_db lastCPLError];
        [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrade from %lld to %lld: Failed (%@)", v22, longLongValue, 94, lastCPLError];

        [(CPLPrequeliteStore *)self _closeUpgradeJournal];
LABEL_27:
        _initializeDB = 0;
        goto LABEL_28;
      }

      [(CPLSimpleUpgradeHistory *)self->_history noteDatabaseWasUpgradedToVersion:94 fromVersion:longLongValue];
      self->_storeVersionHasChanged = 1;
      [(PQLConnection *)self->_db setUserVersion:94];
      v8 = +[NSDate date];
      v9 = [CPLDateFormatter stringFromDate:v8];
      [(CPLPrequeliteStore *)self recordUpgradeEvent:@"%@: Upgrade from %lld to %lld: Done", v9, longLongValue, 94];

      _fixStoreAfterAnyVersionChange = [(CPLPrequeliteStore *)self _fixStoreAfterAnyVersionChange];
      [(CPLPrequeliteStore *)self _closeUpgradeJournal];
      if ((_fixStoreAfterAnyVersionChange & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    abstractObject = [(CPLPrequeliteStore *)self abstractObject];
    mainScopeIdentifier = [abstractObject mainScopeIdentifier];

    v14 = mainScopeIdentifier;
    v15 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_mainScopeIdentifierVar];
    v16 = v15;
    if (v14 && v15)
    {
      v17 = [v14 isEqual:v15];

      if ((v17 & 1) == 0)
      {
LABEL_18:
        if ((_CPLSilentLogging & 1) == 0)
        {
          v19 = sub_100150214(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_mainScopeIdentifierVar];
            *buf = 138412546;
            v27 = v20;
            v28 = 2112;
            v29 = v14;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Main scope identifier has changed (from %@ to %@)", buf, 0x16u);
          }
        }

        _initializeDB = [(CPLPrequeliteStore *)self _closeWipeAndReOpenWithReason:@"main scope identifier has changed" warnUserIfPossible:1 createRadar:0 error:0];
        goto LABEL_25;
      }
    }

    else
    {

      if (v14 | v16)
      {
        goto LABEL_18;
      }
    }

    _initializeDB = 1;
LABEL_25:

LABEL_28:
    self->_configuringDB = 0;
    return _initializeDB;
  }

  return 0;
}

- (id)_corruptionMarkerURL
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  cloudLibraryStateStorageURL = [engineLibrary cloudLibraryStateStorageURL];

  v5 = [cloudLibraryStateStorageURL URLByAppendingPathComponent:@"corruption_marker"];

  return v5;
}

- (id)corruptionInfo
{
  _corruptionMarkerURL = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  v3 = +[NSFileManager defaultManager];
  path = [_corruptionMarkerURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v6 = [NSDictionary dictionaryWithContentsOfURL:_corruptionMarkerURL];
    if (!v6)
    {
      v6 = [NSString stringWithContentsOfURL:_corruptionMarkerURL encoding:4 error:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_markLibraryAsCorruptedWithInfo:(id)info
{
  infoCopy = info;
  _corruptionMarkerURL = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  [infoCopy writeToURL:_corruptionMarkerURL atomically:1];

  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  [engineLibrary reportLibraryCorrupted];
}

- (BOOL)_openWithError:(id *)error
{
  [(CPLPrequeliteStore *)self _wipeBeforeOpeningIfNecessary];
  v6 = objc_alloc_init(PQLConnection);
  db = self->_db;
  self->_db = v6;

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_db);
  v8 = self->_db;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100153338;
  v73[3] = &unk_10027B530;
  objc_copyWeak(&v74, &location);
  v75[1] = a2;
  objc_copyWeak(v75, &from);
  [(PQLConnection *)v8 setSqliteErrorHandler:v73];
  v9 = self->_db;
  sqliteErrorHandler = [(PQLConnection *)v9 sqliteErrorHandler];
  [(PQLConnection *)v9 setAutoRollbackHandler:sqliteErrorHandler];

  uRLByDeletingLastPathComponent = [(NSURL *)self->_dbURL URLByDeletingLastPathComponent];
  v12 = +[NSFileManager defaultManager];
  path = [uRLByDeletingLastPathComponent path];
  v14 = [v12 fileExistsAtPath:path];

  if ((v14 & 1) == 0)
  {
    v72 = 0;
    v15 = [v12 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:0 attributes:0 error:&v72];
    v16 = v72;
    lastCPLError = v16;
    if (v15)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = sub_100150214(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          path2 = [uRLByDeletingLastPathComponent path];
          sub_1001BCD00(path2, v80, v18);
        }
      }
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v20 = sub_100150214(v16);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          path3 = [uRLByDeletingLastPathComponent path];
          sub_1001BCCB0(path3, lastCPLError, v80);
        }
      }

      if (lastCPLError)
      {
        goto LABEL_29;
      }
    }
  }

  v22 = self->_db;
  dbURL = self->_dbURL;
  v71 = 0;
  v24 = [(PQLConnection *)v22 openAtURL:dbURL sharedCache:0 error:&v71];
  v25 = v71;
  lastCPLError = v25;
  if (v24)
  {
    if (self->_showStatsForAllTransactions)
    {
      [(CPLPrequeliteStore *)self _setupProfilingHooks];
    }
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v26 = sub_100150214(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        path4 = [(NSURL *)self->_dbURL path];
        sub_1001BCD50(path4, lastCPLError, v79);
      }
    }

    v28 = self->_db;
    self->_db = 0;

    if (lastCPLError)
    {
      goto LABEL_29;
    }
  }

  if ([(PQLConnection *)self->_db setupPragmas]&& [(CPLPrequeliteStore *)self _setupPragmasAndFunctions])
  {
    if ([(CPLPrequeliteStore *)self _setupDBIfNeeded])
    {
      goto LABEL_30;
    }

    lastCPLError = [(PQLConnection *)self->_db lastCPLError];
    if (lastCPLError)
    {
LABEL_29:
      v30 = 0;
      goto LABEL_44;
    }

    lastCPLError2 = [CPLErrors underlyingErrorWithReason:@"Impossible to setup database"];
  }

  else
  {
    lastCPLError2 = [(PQLConnection *)self->_db lastCPLError];
  }

  lastCPLError = lastCPLError2;
  if (lastCPLError2)
  {
    goto LABEL_29;
  }

LABEL_30:
  clientCacheIdentifier = [(CPLPrequeliteStore *)self clientCacheIdentifier];
  v32 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_clientCacheIdentifierAsKnownByClient];
  v33 = clientCacheIdentifier;
  v34 = v32;
  v35 = v34;
  if (!v33 || !v34)
  {
    v40 = (v33 | v34) != 0;

    if (v40)
    {
      goto LABEL_33;
    }

LABEL_38:
    if (_CPLSilentLogging)
    {
      v39 = 1;
      goto LABEL_43;
    }

    v38 = sub_100150214(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Client is in sync with client cache", buf, 2u);
    }

    v39 = 1;
    goto LABEL_42;
  }

  v36 = [v33 isEqual:v34];

  if (v36)
  {
    goto LABEL_38;
  }

LABEL_33:
  if (_CPLSilentLogging)
  {
    v39 = 0;
    goto LABEL_43;
  }

  v38 = sub_100150214(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Client is not in sync with client cache", buf, 2u);
  }

  v39 = 0;
LABEL_42:

LABEL_43:
  self->_isClientInSyncWithClientCache = v39;

  lastCPLError = 0;
  v30 = 1;
LABEL_44:
  v41 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_libraryCreationDateVar];
  libraryCreationDate = self->_libraryCreationDate;
  self->_libraryCreationDate = v41;

  if ((v30 & 1) == 0)
  {
    corruptionInfo = [(CPLPrequeliteStore *)self corruptionInfo];
    v49 = corruptionInfo;
    if (corruptionInfo)
    {
      sub_1001BCDA0(corruptionInfo);
      v50 = [CPLErrors cplErrorWithCode:3 description:@"Library is corrupted"];

      lastCPLError = v50;
    }

    if (error)
    {
      v51 = lastCPLError;
      *error = lastCPLError;
    }

    goto LABEL_70;
  }

  if ([(CPLSimpleUpgradeHistory *)self->_history versionHasChanged])
  {
    disabledFeatures = [(CPLPrequeliteStore *)self disabledFeatures];
    v44 = [disabledFeatures count];
    if (v44)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v45 = sub_100150214(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [disabledFeatures componentsJoinedByString:{@", "}];
          sub_1001BCEB0(v46, buf, v45);
        }
      }

      v47 = [(CPLPrequeliteStore *)self setShouldUpdateDisabledFeaturesWithError:error];

      if ((v47 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
    }

LABEL_62:
    if (!-[CPLSimpleUpgradeHistory versionHasChanged](self->_history, "versionHasChanged") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 BOOLForKey:@"CPLAlwaysReidentifyScopes"], v55, !v56) || (-[CPLPrequeliteStore abstractObject](self, "abstractObject"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "scopes"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v58, "platformObject"), v59 = objc_claimAutoreleasedReturnValue(), v58, v57, v60 = objc_msgSend(v59, "forceIdentifyUknownScopesWithError:", error), v59, (v60 & 1) != 0))
    {
      if (!self->_reentrencyGuard && self->_didWipeLibrary)
      {
        abstractObject = [(CPLPrequeliteStore *)self abstractObject];
        [abstractObject noteOtherResetEvent:@"wipe" cause:self->_wipeReason];

        abstractObject2 = [(CPLPrequeliteStore *)self abstractObject];
        engineLibrary = [abstractObject2 engineLibrary];
        [engineLibrary notifyAttachedObjectsPullQueueIsFull];

        wipeReason = self->_wipeReason;
        self->_wipeReason = 0;

        self->_didWipeLibrary = 0;
      }

      abstractObject3 = [(CPLPrequeliteStore *)self abstractObject];
      engineLibrary2 = [abstractObject3 engineLibrary];
      libraryIdentifier = [engineLibrary2 libraryIdentifier];
      [CPLPrequelitePreventWipeNotification resetNotificationForLibraryIdentifier:libraryIdentifier];

      lastCPLError = 0;
      v68 = 1;
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  v52 = +[NSUserDefaults standardUserDefaults];
  v53 = [v52 BOOLForKey:@"CPLAlwaysCheckDisabledFeatures"];

  if (!v53)
  {
    goto LABEL_62;
  }

  sub_1001BCE44(v54);
  if ([(CPLPrequeliteStore *)self setShouldUpdateDisabledFeaturesWithError:error])
  {
    goto LABEL_62;
  }

LABEL_69:
  lastCPLError = 0;
LABEL_70:
  v69 = self->_db;
  if (!v69)
  {
    v68 = 0;
    goto LABEL_74;
  }

  [(PQLConnection *)v69 close:0];
  v68 = 0;
  abstractObject3 = self->_db;
  self->_db = 0;
LABEL_72:

LABEL_74:
  objc_destroyWeak(v75);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  return v68;
}

- (BOOL)openWithError:(id *)error
{
  v5 = [CPLSimpleUpgradeHistory alloc];
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v9 = [(CPLSimpleUpgradeHistory *)v5 initWithLibraryIdentifier:libraryIdentifier];
  history = self->_history;
  self->_history = v9;

  v15 = 0;
  v11 = [(CPLPrequeliteStore *)self _openWithError:&v15];
  v12 = v15;
  if (v11)
  {
    sub_1001BCFFC(_CPLSilentLogging, self);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BCF6C(v12);
    }

    if (error)
    {
      v13 = v12;
      *error = v12;
    }
  }

  return v11;
}

- (BOOL)storeVersionHasChanged
{
  if (self->_storeVersionHasBeenJustCreated)
  {
    return 0;
  }

  if (self->_storeVersionHasChanged)
  {
    return 1;
  }

  return [(CPLSimpleUpgradeHistory *)self->_history versionHasChanged];
}

- (BOOL)executePostOpenWithError:(id *)error
{
  if (self->_needsToReset)
  {
    abstractObject = [(CPLPrequeliteStore *)self abstractObject];
    v6 = abstractObject;
    resetOption = self->_resetOption;
    v8 = 1;
    if (resetOption > 1)
    {
      if (resetOption == 2)
      {
        v9 = [abstractObject resetCompleteSyncStateIncludingIDMappingWithCause:self->_resetReason error:error];
        goto LABEL_12;
      }

      if (resetOption == 3)
      {
        v9 = [abstractObject resetSyncAnchorWithCause:self->_resetReason error:error];
        goto LABEL_12;
      }
    }

    else
    {
      if (!resetOption)
      {
        v9 = [abstractObject resetLocalSyncStateWithCause:self->_resetReason error:error];
        goto LABEL_12;
      }

      if (resetOption == 1)
      {
        v9 = [abstractObject resetCompleteSyncStateWithCause:self->_resetReason error:error];
LABEL_12:
        v8 = v9;
      }
    }

    goto LABEL_14;
  }

  v8 = 1;
LABEL_14:
  self->_needsToReset = 0;
  resetReason = self->_resetReason;
  self->_resetReason = 0;

  self->_resetOption = 0;
  return v8;
}

- (void)performReadTransaction:(id)transaction withBlock:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100153BFC;
  v14[3] = &unk_100271DE0;
  v14[4] = self;
  v15 = transactionCopy;
  v16 = blockCopy;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v18 = v9;
  v10 = queue;
  v11 = blockCopy;
  v12 = transactionCopy;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

- (void)performWriteTransaction:(id)transaction withBlock:(id)block completionHandler:(id)handler
{
  transactionCopy = transaction;
  blockCopy = block;
  handlerCopy = handler;
  blocker = [transactionCopy blocker];
  v12 = blocker;
  if (blocker)
  {
    bypassQueue = [blocker bypassQueue];
  }

  else
  {
    bypassQueue = self->_writeQueue;
  }

  v14 = bypassQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100154090;
  v21[3] = &unk_100273468;
  v21[4] = self;
  v22 = transactionCopy;
  v23 = handlerCopy;
  v24 = blockCopy;
  v15 = v21;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v26 = v15;
  v16 = v14;
  v17 = blockCopy;
  v18 = handlerCopy;
  v19 = transactionCopy;
  v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v16, v20);
}

- (void)blockWriteTransactionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  writeQueue = self->_writeQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100154404;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = writeQueue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (BOOL)closeWithError:(id *)error
{
  db = self->_db;
  if (!db)
  {
    return 1;
  }

  v5 = [(PQLConnection *)db close:error];
  v6 = self->_db;
  self->_db = 0;

  return v5;
}

- (void)performBarrierTransaction:(id)transaction withBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001545F4;
  v11[3] = &unk_100271E98;
  v12 = blockCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = blockCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (unint64_t)libraryOptions
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_libraryOptionsVar];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)updateLibraryOptions:(unint64_t)options error:(id *)error
{
  libraryOptions = [(CPLPrequeliteStore *)self libraryOptions];
  v8 = libraryOptions;
  if ((libraryOptions & ~options) != 0)
  {
    options = [[NSString alloc] initWithFormat:@"downgrading library options from 0x%lx to 0x%lx", libraryOptions, options];
    if ([objc_opt_class() shouldPreventWipeOnUpgrade] && !-[CPLPrequeliteStore _hasDeactivateMarker](self, "_hasDeactivateMarker"))
    {
      if (error)
      {
        *error = [CPLErrors preventWipeErrorWithReason:options preventedByUser:0];
      }
    }

    else if (error)
    {
      v18 = CPLErrorWipeReasonKey;
      v19 = options;
      v17 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      *error = [CPLErrors cplErrorWithCode:2003 underlyingError:0 userInfo:v17 description:@"Downgrading options of a library (from 0x%lx to 0x%lx)", v8, options];
    }
  }

  else
  {
    v9 = options & ~libraryOptions;
    if (!v9)
    {
      return 1;
    }

    v10 = [NSNumber numberWithUnsignedInteger:options];
    v11 = [(CPLPrequeliteStore *)self setValue:v10 forGlobalVariable:self->_libraryOptionsVar error:error];

    if (v11)
    {
      abstractObject = [(CPLPrequeliteStore *)self abstractObject];
      scopes = [abstractObject scopes];
      v14 = [scopes upgradeScopesWithNewLibraryOptions:v9 error:error];

      return v14;
    }
  }

  return 0;
}

- (id)createNewLibraryVersion
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (void)_cacheValue:(id)value forVariable:(id)variable
{
  modifiedVariables = self->_modifiedVariables;
  variableCopy = variable;
  valueCopy = value;
  [(NSMutableSet *)modifiedVariables addObject:variableCopy];
  [variableCopy setCachedValue:valueCopy forIdentifier:self->_globalVariableCacheIdentifier];
}

- (BOOL)setValue:(id)value forGlobalVariable:(id)variable error:(id *)error
{
  valueCopy = value;
  variableCopy = variable;
  db = self->_db;
  v11 = [variableCopy bindableValueForValue:valueCopy];
  v12 = [(PQLConnection *)db cplExecute:@"UPDATE globals SET %@ = %@", variableCopy, v11];

  if (v12)
  {
    [(CPLPrequeliteStore *)self _cacheValue:valueCopy forVariable:variableCopy];
  }

  else if (error)
  {
    *error = [(PQLConnection *)self->_db lastCPLError];
  }

  return v12;
}

- (id)valueForGlobalVariable:(id)variable
{
  variableCopy = variable;
  if ([variableCopy hasCachedValueForIdentifier:self->_globalVariableCacheIdentifier])
  {
    v5 = [variableCopy cachedValueForIdentifier:self->_globalVariableCacheIdentifier];
  }

  else
  {
    db = self->_db;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100154B38;
    v9[3] = &unk_10027B218;
    v7 = variableCopy;
    v10 = v7;
    v5 = [(PQLConnection *)db cplFetchObject:v9 sql:@"SELECT %@ FROM globals", v7];
    [(CPLPrequeliteStore *)self _cacheValue:v5 forVariable:v7];
  }

  return v5;
}

- (BOOL)resetValueForGlobalVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  defaultValue = [variableCopy defaultValue];
  LOBYTE(error) = [(CPLPrequeliteStore *)self setValue:defaultValue forGlobalVariable:variableCopy error:error];

  return error;
}

- (Class)_userIdentifierClass
{
  userIdentifierClass = self->_userIdentifierClass;
  if (!userIdentifierClass)
  {
    abstractObject = [(CPLPrequeliteStore *)self abstractObject];
    engineLibrary = [abstractObject engineLibrary];
    transport = [engineLibrary transport];
    self->_userIdentifierClass = [transport userIdentifierClass];

    userIdentifierClass = self->_userIdentifierClass;
    if (!userIdentifierClass)
    {
      sub_1001BD320(a2, self);
    }
  }

  return userIdentifierClass;
}

- (id)userIdentifier
{
  v3 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_userIdentifierVar];
  if (v3)
  {
    v4 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v3 class:[(CPLPrequeliteStore *)self _userIdentifierClass]];
    if (!v4)
    {
      sub_1001BD49C(&v6);
      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)storeUserIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = [NSKeyedArchiver cpl_archivedDataWithRootObject:identifierCopy];
    if (!v8)
    {
      sub_1001BD56C(a2, self, identifierCopy);
    }
  }

  else
  {
    v8 = 0;
  }

  userIdentifierVar = self->_userIdentifierVar;
  v14 = 0;
  v10 = [(CPLPrequeliteStore *)self setValue:v8 forGlobalVariable:userIdentifierVar error:&v14];
  v11 = v14;
  if (!v10)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001BD63C();
    }

    if (error)
    {
      v12 = v11;
      *error = v11;
    }
  }

  return v10;
}

- (id)lastQuarantineCountReportDate
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_lastQuarantineCountReportDateVar];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSDate distantPast];
  }

  v5 = v4;

  return v5;
}

- (id)createNewClientCacheIdentifier
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

- (BOOL)storeClientIsInSyncWithClientCacheWithError:(id *)error
{
  if (self->_isClientInSyncWithClientCache)
  {
    return 1;
  }

  block[9] = v3;
  block[10] = v4;
  clientCacheIdentifier = [(CPLPrequeliteStore *)self clientCacheIdentifier];
  LODWORD(error) = [(CPLPrequeliteStore *)self setValue:clientCacheIdentifier forGlobalVariable:self->_clientCacheIdentifierAsKnownByClient error:error];

  if (!error)
  {
    return 0;
  }

  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  scheduler = [engineLibrary scheduler];
  [scheduler noteClientIsInSyncWithClientCache];

  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB51C;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(isClientInSyncWithClientCacheQueue, block);
  return 1;
}

- (BOOL)storeClientIsNotInSyncWithClientCacheWithError:(id *)error
{
  if (!self->_isClientInSyncWithClientCache)
  {
    return 1;
  }

  block[11] = v3;
  block[12] = v4;
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  scheduler = [engineLibrary scheduler];
  [scheduler noteClientIsNotInSyncWithClientCache];

  isClientInSyncWithClientCacheQueue = self->_isClientInSyncWithClientCacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB5A4;
  block[3] = &unk_100271F40;
  block[4] = self;
  dispatch_sync(isClientInSyncWithClientCacheQueue, block);
  return [(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:self->_clientCacheIdentifierAsKnownByClient error:error];
}

- (BOOL)storePushPullGatekeepers:(id)gatekeepers error:(id *)error
{
  gatekeepersCopy = gatekeepers;
  self->_hasCachedPushPullGatekeepers = 1;
  self->_hasModifiedPushPullGatekeepers = 1;
  if (![gatekeepersCopy count])
  {
    cachedPushPullGatekeepers = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;

    if ([(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:self->_pushPullGatekeepersVar error:error])
    {
      goto LABEL_13;
    }

LABEL_15:
    self->_hasCachedPushPullGatekeepers = 0;
    self->_hasModifiedPushPullGatekeepers = 0;
    v22 = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;

    v21 = 0;
    goto LABEL_16;
  }

  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(gatekeepersCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = gatekeepersCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v15 = [v8 copy];
  v16 = self->_cachedPushPullGatekeepers;
  self->_cachedPushPullGatekeepers = v15;

  v17 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:error];
  if (!v17)
  {

    goto LABEL_15;
  }

  v18 = v17;
  v19 = [(CPLPrequeliteStore *)self setValue:v17 forGlobalVariable:self->_pushPullGatekeepersVar error:error];

  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v21 = 1;
LABEL_16:

  return v21;
}

- (NSArray)pushPullGatekeepers
{
  selfCopy = self;
  if (self->_hasCachedPushPullGatekeepers)
  {
    v3 = self->_cachedPushPullGatekeepers;
    goto LABEL_32;
  }

  self->_hasCachedPushPullGatekeepers = 1;
  self->_hasModifiedPushPullGatekeepers = 0;
  v4 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_pushPullGatekeepersVar];
  if ([v4 length])
  {
    v30 = 0;
    v5 = [NSPropertyListSerialization propertyListWithData:v4 options:0 format:0 error:&v30];
    v6 = v30;
    v7 = v6;
    if (v5)
    {
      v22 = v6;
      v23 = v4;
      v24 = selfCopy;
      v25 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
      abstractObject = [(CPLPrequeliteStore *)selfCopy abstractObject];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v21 = v5;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = v10;
      v12 = *v27;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v15 = NSClassFromString(v14);
          if (v15 && (v16 = v15, v15 = [(objc_class *)v15 isSubclassOfClass:objc_opt_class()], v15))
          {
            v17 = [[v16 alloc] initWithStore:abstractObject];
            if (v17)
            {
              [(NSArray *)v25 addObject:v17];
            }

            else
            {
              sub_1001BD6D8(v33, v16, &v34, 0, buf);
              v17 = *buf;
            }
          }

          else
          {
            if (_CPLSilentLogging)
            {
              goto LABEL_18;
            }

            v17 = sub_100150214(v15);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v14;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid push/pull gatekeeper class: %{public}@", buf, 0xCu);
            }
          }

LABEL_18:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v18 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
        v11 = v18;
        if (!v18)
        {
LABEL_22:

          v3 = v25;
          if ([(NSArray *)v25 count])
          {
            objc_storeStrong(&v24->_cachedPushPullGatekeepers, v25);

            cachedPushPullGatekeepers = v22;
            v4 = v23;
            goto LABEL_31;
          }

          v4 = v23;
          selfCopy = v24;
          v5 = v21;
          v7 = v22;
LABEL_28:

          goto LABEL_29;
        }
      }
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v3 = sub_100150214(v6);
      if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
      {
        *v33 = 138412290;
        v34 = v7;
        _os_log_impl(&_mh_execute_header, &v3->super, OS_LOG_TYPE_ERROR, "Invalid plist for push/pull gatekeepers: %@", v33, 0xCu);
      }

      goto LABEL_28;
    }

LABEL_29:
  }

  v3 = 0;
  cachedPushPullGatekeepers = selfCopy->_cachedPushPullGatekeepers;
  selfCopy->_cachedPushPullGatekeepers = 0;
LABEL_31:

LABEL_32:

  return v3;
}

- (BOOL)hasStoredChangeSessionUpdate
{
  if (self->_hasCachedChangeSessionUpdate)
  {
    return self->_cachedChangeSessionUpdate != 0;
  }

  v3 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"SELECT count(*) FROM globals WHERE %@ IS NOT NULL", self->_changeSessionUpdateVar];
  v2 = [v3 unsignedIntegerValue] != 0;

  return v2;
}

- (CPLChangeSessionUpdate)storedChangeSessionUpdate
{
  if (self->_hasCachedChangeSessionUpdate)
  {
    v3 = self->_cachedChangeSessionUpdate;
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_changeSessionUpdateVar];
    if (v5)
    {
      v3 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v5 class:objc_opt_class()];
      if (!v3)
      {
        sub_1001BD834(&v7);
        v3 = v7;
      }
    }

    else
    {
      v3 = 0;
    }

    self->_hasCachedChangeSessionUpdate = 1;
    objc_storeStrong(&self->_cachedChangeSessionUpdate, v3);

    objc_autoreleasePoolPop(v4);
  }

  return v3;
}

- (BOOL)storeChangeSessionUpdate:(id)update error:(id *)error
{
  updateCopy = update;
  v9 = objc_autoreleasePoolPush();
  if (updateCopy)
  {
    v10 = [NSKeyedArchiver cpl_archivedDataWithRootObject:updateCopy];
    if (!v10)
    {
      sub_1001BD8A4(a2, self, updateCopy);
    }

    v11 = v10;
    changeSessionUpdateVar = self->_changeSessionUpdateVar;
    v21 = 0;
    v13 = [(CPLPrequeliteStore *)self setValue:v10 forGlobalVariable:changeSessionUpdateVar error:&v21];
    v14 = v21;

    objc_autoreleasePoolPop(v9);
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v16 = self->_changeSessionUpdateVar;
    v20 = 0;
    v17 = [(CPLPrequeliteStore *)self setValue:0 forGlobalVariable:v16 error:&v20];
    v14 = v20;
    objc_autoreleasePoolPop(v9);
    if (v17)
    {
LABEL_4:
      v15 = 1;
      self->_hasCachedChangeSessionUpdate = 1;
      objc_storeStrong(&self->_cachedChangeSessionUpdate, update);
      goto LABEL_9;
    }
  }

  if (error)
  {
    v18 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:

  return v15;
}

- (BOOL)shouldUpdateDisabledFeatures
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_shouldUpdateDisabledFeaturesVar];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)storeDisabledFeatures:(id)features error:(id *)error
{
  featuresCopy = features;
  if ([featuresCopy count])
  {
    v7 = [NSPropertyListSerialization dataWithPropertyList:featuresCopy format:200 options:0 error:error];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
  }

  if (![(CPLPrequeliteStore *)self setValue:v7 forGlobalVariable:self->_disabledFeaturesDataVar error:error])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = [(CPLPrequeliteStore *)self setValue:&off_10028F0E8 forGlobalVariable:self->_shouldUpdateDisabledFeaturesVar error:0];
LABEL_8:

  return v8;
}

- (id)disabledFeatures
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_disabledFeaturesDataVar];
  if (v2)
  {
    v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = v4;

  return v4;
}

- (id)derivativesFilter
{
  v2 = [(CPLPrequeliteStore *)self valueForGlobalVariable:self->_derivativesFilterVar];
  if (v2)
  {
    v3 = [NSKeyedUnarchiver cpl_safeUnarchiveObjectWithData:v2 class:objc_opt_class()];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)storeDerivativesFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  v8 = [NSKeyedArchiver cpl_archivedDataWithRootObject:filterCopy];
  if (!v8)
  {
    sub_1001BD974(a2, self, filterCopy);
  }

  v9 = v8;
  v10 = [(CPLPrequeliteStore *)self setValue:v8 forGlobalVariable:self->_derivativesFilterVar error:error];

  return v10;
}

- (id)_wipeStoreMarkerURL
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  cloudLibraryStateStorageURL = [engineLibrary cloudLibraryStateStorageURL];
  v5 = [CPLPrequeliteStore _wipeStoreMarkerURLWithCloudLibraryStateStorageURL:cloudLibraryStateStorageURL];

  return v5;
}

+ (void)_writeStoreMarkerAtURL:(id)l reason:(id)reason
{
  lCopy = l;
  reasonCopy = reason;
  v7 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v9 = [v7 fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    v16 = 0;
    v10 = [reasonCopy writeToURL:lCopy atomically:1 encoding:4 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v10)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_100150214(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
          path2 = [uRLByDeletingLastPathComponent path];
          *buf = 138412546;
          v18 = path2;
          v19 = 2114;
          v20 = reasonCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Will wipe CPL database at %@ at next launch: %{public}@", buf, 0x16u);

LABEL_9:
          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100150214(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        uRLByDeletingLastPathComponent = [lCopy path];
        *buf = 138412802;
        v18 = uRLByDeletingLastPathComponent;
        v19 = 2114;
        v20 = reasonCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to store wipe marker at %@ (reason: %{public}@): %@", buf, 0x20u);
        goto LABEL_9;
      }

LABEL_10:
    }
  }
}

+ (void)wipeStoreAtNextOpeningWithCloudLibraryStorageURL:(id)l reason:(id)reason
{
  reasonCopy = reason;
  v7 = [self _wipeStoreMarkerURLWithCloudLibraryStateStorageURL:l];
  [self _writeStoreMarkerAtURL:v7 reason:reasonCopy];
}

- (id)wipeReason
{
  _wipeStoreMarkerURL = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  v3 = [[NSString alloc] initWithContentsOfURL:_wipeStoreMarkerURL encoding:4 error:0];
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)wipeStoreAtNextOpeningWithReason:(id)reason completionBlock:(id)block
{
  blockCopy = block;
  reasonCopy = reason;
  _wipeStoreMarkerURL = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  [CPLPrequeliteStore _writeStoreMarkerAtURL:_wipeStoreMarkerURL reason:reasonCopy];

  blockCopy[2](blockCopy);
}

- (BOOL)fixupOrphanScopeIndexes:(id)indexes error:(id *)error
{
  indexesCopy = indexes;
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  cleanupTasks = [abstractObject cleanupTasks];
  platformObject = [cleanupTasks platformObject];

  abstractObject2 = [(CPLPrequeliteStore *)self abstractObject];
  scopes = [abstractObject2 scopes];
  platformObject2 = [scopes platformObject];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100004580;
  v26 = sub_1000053A4;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100156378;
  v17[3] = &unk_10027B5F0;
  v13 = platformObject2;
  v18 = v13;
  v20 = &v28;
  v14 = platformObject;
  v19 = v14;
  v21 = &v22;
  [indexesCopy enumerateKeysAndObjectsUsingBlock:v17];
  v15 = *(v29 + 24);
  if (error && (v29[3] & 1) == 0)
  {
    *error = v23[5];
    v15 = *(v29 + 24);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v15 & 1;
}

- (id)scopeIndexesPerScopeType
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  storages = [abstractObject storages];

  v6 = [storages countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(storages);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        scopeType = [v10 scopeType];
        if (scopeType)
        {
          v12 = scopeType;
          scopeIndexes = [v10 scopeIndexes];
          if ([scopeIndexes count])
          {
            v14 = [NSNumber numberWithUnsignedInteger:v12];
            v15 = [v3 objectForKeyedSubscript:v14];

            if (v15)
            {
              [v15 addIndexes:scopeIndexes];
            }

            else
            {
              v16 = [scopeIndexes mutableCopy];
              v17 = [NSNumber numberWithUnsignedInteger:v12];
              [v3 setObject:v16 forKeyedSubscript:v17];
            }
          }
        }
      }

      v7 = [storages countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)writeTransactionDidFail
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_modifiedVariables;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7) discardCachedValue];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_modifiedVariables removeAllObjects];
  self->_hasCachedChangeSessionUpdate = 0;
  cachedChangeSessionUpdate = self->_cachedChangeSessionUpdate;
  self->_cachedChangeSessionUpdate = 0;

  if (self->_hasModifiedPushPullGatekeepers)
  {
    self->_hasCachedPushPullGatekeepers = 0;
    cachedPushPullGatekeepers = self->_cachedPushPullGatekeepers;
    self->_cachedPushPullGatekeepers = 0;
  }
}

- (id)status
{
  v3 = [NSMutableString alloc];
  userVersion = [(PQLConnection *)self->_db userVersion];
  v5 = [v3 initWithFormat:@"db version: %@", userVersion];

  status = [(CPLSimpleUpgradeHistory *)self->_history status];
  if ([status length])
  {
    [v5 appendFormat:@"\n%@", status];
  }

  return v5;
}

- (void)recordUpgradeEvent:(id)event arguments:(char *)arguments
{
  if (self->_upgradeEventJournal != -1)
  {
    eventCopy = event;
    v11 = [[NSString alloc] initWithFormat:eventCopy arguments:arguments];

    v7 = v11;
    uTF8String = [v11 UTF8String];
    if (uTF8String)
    {
      v9 = uTF8String;
      v10 = strlen(uTF8String);
      write(self->_upgradeEventJournal, v9, v10);
      write(self->_upgradeEventJournal, "\n", 1uLL);
    }
  }
}

- (BOOL)tableHasRecords:(id)records
{
  db = self->_db;
  recordsCopy = records;
  recordsCopy = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT rowid FROM %@ LIMIT 1", recordsCopy];

  return recordsCopy != 0;
}

- (BOOL)table:(id)table hasRecordsMatchingQuery:(id)query
{
  db = self->_db;
  queryCopy = query;
  tableCopy = table;
  queryCopy = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT rowid FROM %@ WHERE %@ LIMIT 1", tableCopy, queryCopy];

  return queryCopy != 0;
}

- (unint64_t)tableCountOfRecords:(id)records
{
  db = self->_db;
  recordsCopy = records;
  recordsCopy = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(rowid) FROM %@", recordsCopy];

  unsignedIntegerValue = [recordsCopy unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)table:(id)table countOfRecordsMatchingQuery:(id)query
{
  db = self->_db;
  queryCopy = query;
  tableCopy = table;
  queryCopy = [(PQLConnection *)db cplFetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(rowid) FROM %@ WHERE %@", tableCopy, queryCopy];

  unsignedIntegerValue = [queryCopy unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)table:(id)table enumerateCountGroupedByUnsignedIntegerProperty:(id)property block:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v9 = [PQLNameInjection nameWithString:property];
  v10 = [(PQLConnection *)self->_db cplFetch:@"SELECT %@, count(%@) FROM %@ GROUP BY %@", v9, v9, tableCopy, v9];
  if ([v10 next])
  {
    do
    {
      blockCopy[2](blockCopy, [v10 intAtIndex:0], objc_msgSend(v10, "unsignedIntegerAtIndex:", 1));
    }

    while (([v10 next] & 1) != 0);
  }
}

- (void)table:(id)table enumerateCountGroupedByProperty:(id)property block:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v9 = [PQLNameInjection nameWithString:property];
  v10 = [(PQLConnection *)self->_db cplFetch:@"SELECT %@, count(%@) FROM %@ GROUP BY %@", v9, v9, tableCopy, v9];
  if ([v10 next])
  {
    do
    {
      v11 = [v10 objectAtIndex:0];
      blockCopy[2](blockCopy, v11, [v10 unsignedIntegerAtIndex:1]);
    }

    while (([v10 next] & 1) != 0);
  }
}

- (void)table:(id)table enumerateDistinctValuesOfProperty:(id)property block:(id)block
{
  tableCopy = table;
  blockCopy = block;
  v9 = [PQLNameInjection nameWithString:property];
  tableCopy = [(PQLConnection *)self->_db cplFetch:@"SELECT DISTINCT %@ FROM %@", v9, tableCopy];
  if ([tableCopy next])
  {
    do
    {
      v11 = [tableCopy objectAtIndex:0];
      blockCopy[2](blockCopy, v11);
    }

    while (([tableCopy next] & 1) != 0);
  }
}

- (BOOL)table:(id)table hasColumnWithName:(id)name
{
  nameCopy = name;
  table = [(PQLConnection *)self->_db fetch:@"PRAGMA table_info(%@)", table];
  do
  {
    next = [table next];
    if (!next)
    {
      break;
    }

    v9 = [table stringAtIndex:1];
    v10 = v9;
    if (nameCopy && v9 && ([v9 isEqual:nameCopy] & 1) != 0)
    {

      break;
    }
  }

  while (nameCopy | v10);

  return next;
}

- (BOOL)hasTable:(id)table
{
  table = [(PQLConnection *)self->_db fetch:@"PRAGMA table_info(%@)", table];
  next = [table next];

  return next;
}

- (id)clientCache
{
  clientCacheMigrator = self->_clientCacheMigrator;
  if (!clientCacheMigrator)
  {
    sub_1001BDA44(a2, self);
  }

  return [(CPLPrequeliteClientCacheMigrator *)clientCacheMigrator platformObject];
}

- (id)cloudCache
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  cloudCache = [abstractObject cloudCache];
  platformObject = [cloudCache platformObject];

  return platformObject;
}

- (id)transientPullRepository
{
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  transientPullRepository = [abstractObject transientPullRepository];
  platformObject = [transientPullRepository platformObject];

  return platformObject;
}

- (void)_notifyVacuumDidComplete
{
  dispatch_assert_queue_V2(self->_queue);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_vacuumCompletionHandlers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  vacuumCompletionHandlers = self->_vacuumCompletionHandlers;
  self->_vacuumCompletionHandlers = 0;
}

- (int64_t)_sizeInBytes
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA page_count"];
  v4 = [(PQLConnection *)self->_db fetchObjectOfClass:objc_opt_class() sql:@"PRAGMA page_size"];
  longLongValue = [v3 longLongValue];
  v6 = [v4 longLongValue] * longLongValue;

  return v6;
}

- (void)_vacuum:(int64_t)_vacuum withInitialDatabaseSize:(int64_t)size
{
  vacuumQueue = self->_vacuumQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100157500;
  v8[3] = &unk_10027B618;
  v8[4] = self;
  v8[5] = _vacuum;
  v8[6] = size;
  v5 = v8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v10 = v5;
  v6 = vacuumQueue;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v7);
}

- (void)startVacuumWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100157A00;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = handlerCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)stopVacuum
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100157BE4;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (void)emergencyClose
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_100157ED4;
  v17 = &unk_1002729E8;
  selfCopy = self;
  v19 = &v20;
  v3 = v15;
  os_unfair_lock_lock(&self->_emergencyCloseLock);
  v16(v3);
  os_unfair_lock_unlock(&self->_emergencyCloseLock);

  if (v21[3])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_100150214(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        queue = self->_queue;
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = queue;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting emergency close of %@ - suspending %@", buf, 0x16u);
      }
    }

    v7 = dispatch_queue_create("com.apple.cpl.emergencyclose", 0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v8 = dispatch_time(0, 10000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100157F04;
    block[3] = &unk_100272028;
    block[4] = self;
    block[5] = buf;
    dispatch_after(v8, v7, block);
    v9 = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001BB808;
    v11[3] = &unk_100273F80;
    v11[4] = self;
    v12 = v7;
    v13 = buf;
    v10 = v7;
    dispatch_sync(v9, v11);

    _Block_object_dispose(buf, 8);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)markAsCorrupted
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100158034;
  v6[3] = &unk_100271F40;
  v6[4] = self;
  v3 = v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002C9C;
  block[3] = &unk_100271E98;
  v8 = v3;
  v4 = queue;
  v5 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v4, v5);
}

- (BOOL)createStoragesDynamically:(id)dynamically error:(id *)error
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dynamicallyCopy = dynamically;
  v8 = [dynamicallyCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(dynamicallyCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 shouldBeCreatedDynamically] & 1) == 0)
        {
          sub_1001BDD40(a2, self, v12);
        }

        platformObject = [v12 platformObject];
        if (([platformObject createStorage] & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BDE10(v12, self);
          }

          if (error)
          {
            [(PQLConnection *)self->_db lastError];
            *error = v14 = 0;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_16;
        }
      }

      v9 = [dynamicallyCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (BOOL)deleteDynamicallyCreatedStorages:(id)storages error:(id *)error
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  storagesCopy = storages;
  v6 = [storagesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(storagesCopy);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (([v10 shouldBeCreatedDynamically] & 1) == 0)
        {
          sub_1001BDED8(a2, self, v10);
        }

        platformObject = [v10 platformObject];
        db = self->_db;
        mainTable = [platformObject mainTable];
        LOBYTE(db) = [(PQLConnection *)db cplExecute:@"DROP TABLE IF EXISTS %@", mainTable];

        if ((db & 1) == 0)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            sub_1001BDFA8(v10, &self->_db);
          }

          if (error)
          {
            [(PQLConnection *)self->_db lastError];
            *error = v14 = 0;
          }

          else
          {
            v14 = 0;
          }

          goto LABEL_16;
        }
      }

      v7 = [storagesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_16:

  return v14;
}

- (NSString)description
{
  v3 = [NSString alloc];
  path = [(NSURL *)self->_dbURL path];
  stringByAbbreviatingWithTildeInPath = [path stringByAbbreviatingWithTildeInPath];
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v9 = [v3 initWithFormat:@"<SQLDatabase %@ - %@>", stringByAbbreviatingWithTildeInPath, libraryIdentifier];

  return v9;
}

- (id)redactedDescription
{
  v3 = [NSString alloc];
  path = [(NSURL *)self->_dbURL path];
  lastPathComponent = [path lastPathComponent];
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  libraryIdentifier = [engineLibrary libraryIdentifier];
  v9 = [v3 initWithFormat:@"<SQLDatabase %@ - %@>", lastPathComponent, libraryIdentifier];

  return v9;
}

- (BOOL)_initializeDB
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v3 = sub_100150214(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412290;
      selfCopy = self;
      sub_10000FB94(&_mh_execute_header, v3, v4, "Initializing %@", &v11);
    }
  }

  sub_1000033D8();
  v7 = 3221225472;
  v8 = sub_1001BA14C;
  v9 = &unk_10027B498;
  selfCopy2 = self;
  return [(CPLPrequeliteStore *)self _performWithFlags:10 action:v6];
}

- (void)_wipeWithReason:(id)reason
{
  v4 = [reason copy];
  wipeReason = self->_wipeReason;
  self->_wipeReason = v4;

  self->_didWipeLibrary = 1;
  [(CPLSimpleUpgradeHistory *)self->_history resetVersionHasChanged];
  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  engineLibrary = [abstractObject engineLibrary];
  cloudLibraryStateStorageURL = [engineLibrary cloudLibraryStateStorageURL];

  v9 = +[NSFileManager defaultManager];
  v17 = sub_100158DF4(v9, v10, v11, v12, v13, v14, v15, v16, v23, v24);
  v18 = v25;

  if ((v17 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v20 = sub_100150214(v19);
    if (sub_1000033C0(v20))
    {
      path = [cloudLibraryStateStorageURL path];
      sub_100158D84();
      v27 = v18;
      sub_10003752C(&_mh_execute_header, v9, v22, "Error trying to delete %@: %@", v26);
    }
  }
}

- (BOOL)_upgradeDB:(int64_t)b
{
  v6 = [(PQLConnection *)self->_db setLastError:0];
  if (self->_reentrencyGuard)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100150214(v6);
      if (sub_10000FBDC(v7))
      {
        *buf = 0;
        sub_100158DCC();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
      }
    }

    return 0;
  }

  if (b < 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_100150214(v6);
      if (sub_1000033C0(v19))
      {
        *buf = 134217984;
        bCopy3 = b;
        sub_10004DA10(&_mh_execute_header, v20, v21, "Database in version %lld is too old. Wiping everything. This will require a reset sync.", buf);
      }
    }

    [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to wipe everything because the current version is really too old."];
    v22 = @"wiping everything because the current version is really too old";
    selfCopy2 = self;
    v24 = 0;
    return [(CPLPrequeliteStore *)selfCopy2 _closeWipeAndReOpenWithReason:v22 warnUserIfPossible:v24 createRadar:0 error:0];
  }

  if ((b - 95) <= 0xFFFFFFFFFFFFFFB0)
  {
    if (b <= 0xF)
    {
      if (_CPLSilentLogging)
      {
        v17 = @"wiping database because the current version is really too old";
        v18 = @"Will need to wipe database because the current version is really too old.";
        goto LABEL_38;
      }

      v38 = sub_100150214(v6);
      if (sub_1000033C0(v38))
      {
        *buf = 134217984;
        bCopy3 = b;
        sub_10004DA10(&_mh_execute_header, v39, v40, "Database in version %lld is too old. Let's clear it and request a reset sync.", buf);
      }

      v17 = @"wiping database because the current version is really too old";
      v18 = @"Will need to wipe database because the current version is really too old.";
    }

    else
    {
      if (_CPLSilentLogging)
      {
        v17 = @"wiping database because the current version is too new";
        v18 = @"Will need to wipe database because the current version is too new.";
        goto LABEL_38;
      }

      v14 = sub_100150214(v6);
      if (sub_1000033C0(v14))
      {
        *buf = 134217984;
        bCopy3 = b;
        sub_10004DA10(&_mh_execute_header, v15, v16, "Database in version %lld is too new for this engine. Let's clear it, request a reset sync and cross our fingers.", buf);
      }

      v17 = @"wiping database because the current version is too new";
      v18 = @"Will need to wipe database because the current version is too new.";
    }

LABEL_38:
    [(CPLPrequeliteStore *)self recordUpgradeEvent:v18];
    selfCopy2 = self;
    v22 = v17;
    v24 = b > 0xF;
    return [(CPLPrequeliteStore *)selfCopy2 _closeWipeAndReOpenWithReason:v22 warnUserIfPossible:v24 createRadar:0 error:0];
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v25 = sub_100150214(v6);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_100158E10();
      bCopy4 = b;
      v48 = v26;
      bCopy6 = 94;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Upgrading %@ from version %lld to %lld", buf, 0x20u);
    }
  }

  abstractObject = [(CPLPrequeliteStore *)self abstractObject];
  storages = [abstractObject storages];

  do
  {
    if (b == 94)
    {
      v13 = 1;
      goto LABEL_32;
    }

    ++b;
    v29 = objc_autoreleasePoolPush();
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1001BACA0;
    v42[3] = &unk_10027B508;
    v42[4] = self;
    bCopy5 = b;
    v43 = storages;
    v30 = [(CPLPrequeliteStore *)self _performWithFlags:10 action:v42];

    objc_autoreleasePoolPop(v29);
  }

  while ((v30 & 1) != 0);
  if ((_CPLSilentLogging & 1) == 0)
  {
    v32 = sub_100150214(v31);
    if (sub_10002B0A8(v32))
    {
      sub_100158E10();
      bCopy4 = b - 1;
      v48 = v33;
      bCopy6 = b;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to upgrade %@ from version %lld to %lld - will need to wipe the database", buf, 0x20u);
    }
  }

  [(CPLPrequeliteStore *)self recordUpgradeEvent:@"Will need to wipe everything because failed to upgrade from version %lld to %lld.", b - 1, b];
  lastCPLError = [(PQLConnection *)self->_db lastCPLError];
  v35 = [NSString alloc];
  domain = [lastCPLError domain];
  v37 = [v35 initWithFormat:@"wiping everything because database failed to upgrade from version %lld to %lld (%@/%ld)", b - 1, b, domain, objc_msgSend(lastCPLError, "code")];

  v13 = [sub_100158E24() _closeWipeAndReOpenWithReason:? warnUserIfPossible:? createRadar:? error:?];
LABEL_32:

  return v13;
}

- (void)_deleteCorruptionInfo
{
  _corruptionMarkerURL = [(CPLPrequeliteStore *)self _corruptionMarkerURL];
  v3 = +[NSFileManager defaultManager];
  v11 = sub_100158DF4(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20);
  v12 = v21;
  if (v11)
  {
LABEL_2:

    goto LABEL_4;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 cplIsFileDoesNotExistError:v12];

  if ((v14 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_100150214(v15);
    if (sub_100003448(v16))
    {
      path = [_corruptionMarkerURL path];
      sub_100158D84();
      v23 = v12;
      sub_10003752C(&_mh_execute_header, v3, v18, "Failed to remove corruption info at %@: %@", v22);
    }

    goto LABEL_2;
  }

LABEL_4:
}

- (BOOL)addGlobalVariable:(id)variable defaultValue:(id)value error:(id *)error
{
  variableCopy = variable;
  valueCopy = value;
  v10 = valueCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_100150214(valueCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      type = [(CPLPrequeliteStore *)variableCopy type];
      *buf = 138413058;
      selfCopy = self;
      v29 = 2112;
      v30 = variableCopy;
      v31 = 2112;
      v32 = type;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@ adding global variable %@ (%@ - default:%@)", buf, 0x2Au);
    }
  }

  db = self->_db;
  columnDefinition = [(CPLPrequeliteStore *)variableCopy columnDefinition];
  LODWORD(db) = [(PQLConnection *)db cplExecute:@"ALTER TABLE globals ADD COLUMN %@", columnDefinition];

  if (db)
  {
    v16 = v10;
    defaultValue = [(CPLPrequeliteStore *)variableCopy defaultValue];
    v18 = defaultValue;
    if (v16 && defaultValue)
    {
      v19 = [v16 isEqual:defaultValue];

      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {

      if (!(v16 | v18))
      {
LABEL_12:
        [(CPLPrequeliteStore *)self _cacheValue:v16 forVariable:variableCopy];
        v22 = 1;
        goto LABEL_20;
      }
    }

    v20 = self->_db;
    v21 = [(CPLPrequeliteStore *)variableCopy bindableValueForValue:v16];
    LOBYTE(v20) = [(PQLConnection *)v20 cplExecute:@"UPDATE globals SET %@ = %@", variableCopy, v21];

    if (v20)
    {
      goto LABEL_12;
    }
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v23 = sub_100150214(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      type2 = [(CPLPrequeliteStore *)variableCopy type];
      lastCPLError = [(PQLConnection *)self->_db lastCPLError];
      *buf = 138413058;
      selfCopy = variableCopy;
      v29 = 2112;
      v30 = type2;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = lastCPLError;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to add global variable %@ (%@ - default: %@) to database: %@", buf, 0x2Au);
    }
  }

  if (error)
  {
    [(PQLConnection *)self->_db lastCPLError];
    *error = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

LABEL_20:

  return v22;
}

- (void)_deleteWipeReason
{
  _wipeStoreMarkerURL = [(CPLPrequeliteStore *)self _wipeStoreMarkerURL];
  v3 = +[NSFileManager defaultManager];
  v11 = sub_100158DF4(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20);
  v12 = v21;
  if (v11)
  {
LABEL_2:

    goto LABEL_4;
  }

  v13 = +[NSFileManager defaultManager];
  v14 = [v13 cplIsFileDoesNotExistError:v12];

  if ((v14 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v16 = sub_100150214(v15);
    if (sub_100003448(v16))
    {
      path = [_wipeStoreMarkerURL path];
      sub_100158D84();
      v23 = v12;
      sub_10003752C(&_mh_execute_header, v3, v18, "Failed to remove wipe reason at %@: %@", v22);
    }

    goto LABEL_2;
  }

LABEL_4:
}

@end