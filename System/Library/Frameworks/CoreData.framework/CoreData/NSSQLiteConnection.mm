@interface NSSQLiteConnection
+ (BOOL)_destroyPersistentStoreAtURL:(void *)l options:(uint64_t *)options error:;
+ (BOOL)_rekeyPersistentStoreAtURL:(void *)l options:(void *)options withKey:(uint64_t *)key error:;
+ (BOOL)_replacePersistentStoreAtURL:(uint64_t)l destinationOptions:withPersistentStoreFromURL:sourceOptions:error:;
+ (uint64_t)openAtPath:(void *)path withKey:(sqlite3 *)key handle:(int)handle flags:(const char *)flags module:(char)module checkpointOnClose:;
+ (uint64_t)readMagicWordFromPath:(void *)path options:;
+ (void)initialize;
- (BOOL)_tableHasRows:(uint64_t)rows;
- (BOOL)addTombstoneColumnsForRange:(unint64_t)range;
- (BOOL)addTransactionStringColumnsToTransactionTable;
- (BOOL)databaseIsEmpty;
- (BOOL)deleteRow:(uint64_t)row forRequestContext:;
- (BOOL)finishDeferredLightweightMigration:(uint64_t)migration;
- (BOOL)hasHistoryRows;
- (BOOL)hasHistoryTransactionWithNumber:(id *)number;
- (BOOL)hasTransactionStringColumnsInTransactionTable;
- (BOOL)registerMigrationUpdateFunctionWithMigrator:(uint64_t)migrator;
- (CFMutableArrayRef)copyRawIntegerRowsForSQL:(uint64_t)l;
- (NSObject)_clearCachedStatements;
- (NSObject)_clearOtherStatements;
- (NSObject)_clearSaveGeneratedCachedStatements;
- (NSObject)saveCachedModel:(NSObject *)result;
- (NSSQLitePrefetchRequestCache)prefetchRequestCache;
- (NSSQLiteStatementCache)statementCacheForEntity:(uint64_t)entity;
- (_PFSQLiteSnapshotWrapper)_currentQueryGenerationSnapshot:(_PFSQLiteSnapshotWrapper *)result;
- (_PFSQLiteSnapshotWrapper)currentQueryGenerationIdentifier;
- (char)_registerNewQueryGenerationSnapshot:(uint64_t)snapshot;
- (id)_activeGenerations;
- (id)_setSaveRequest:(id *)result;
- (id)createArrayOfObjectIDsFromTableWithName:(void *)name usingPrimaryKeyColumn:(void *)column entityIDColumn:(void *)dColumn matchingWhereClause:(uint64_t)clause limit:(uint64_t)limit offset:;
- (id)createArrayOfObjectIDsMatchingSelectStatement:(void *)statement forColumns:(uint64_t)columns primaryKeyIndex:(uint64_t)index entityIDIndex:;
- (id)createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:(id *)entity metadataEntity:;
- (id)fetchCreationSQLForType:(void *)type containing:;
- (id)fetchTableCreationSQL;
- (id)fetchTableCreationSQLContaining:(id)result;
- (id)gatherObjectIDsFromTable:(void *)table;
- (id)hasAncillaryEntitiesInHistory;
- (id)initAsQueryGenerationTrackingConnectionForSQLCore:(id)core;
- (id)initForSQLCore:(id)core;
- (id)sqlStatement;
- (sqlite3)_hasOldHistoryTrackingTablesV0;
- (sqlite3)_hasOldHistoryTrackingTablesV1;
- (sqlite3_int64)_fetchMaxPrimaryKeyForEntity:(uint64_t)entity;
- (sqlite3_int64)fetchMaxPrimaryKeyForEntity:(sqlite3_int64)result;
- (sqlite3_int64)generatePrimaryKeysForEntity:(unsigned int)entity batch:;
- (uint64_t)_adoptQueryGenerationWithSnapshot:(uint64_t)snapshot;
- (uint64_t)_countOfVMCachedStatements;
- (uint64_t)_dropTableWithName:(uint64_t)result;
- (uint64_t)_hasHistoryTransactionStringTable;
- (uint64_t)_hasOldHistoryTrackingTables;
- (uint64_t)_hasPersistentHistoryTables;
- (uint64_t)_hasTableWithName:(int)name isTemp:;
- (uint64_t)_insertTransactionForRequestContext:(void *)context andStrings:;
- (uint64_t)_insertTransactionStringsForRequestContext:(sqlite3_int64)context;
- (uint64_t)_int64ResultForSQL:(uint64_t)l;
- (uint64_t)_restoreBusyTimeOutSettings;
- (uint64_t)_transactionsStringAndPKsForStrings:(sqlite3_int64)strings;
- (uint64_t)_validateProperty:(void *)property withValue:(void *)value;
- (uint64_t)_walCheckpointWithMode:(uint64_t)mode;
- (uint64_t)addVMCachedStatement:(uint64_t)result;
- (uint64_t)adoptQueryGenerationWithIdentifier:(uint64_t)result;
- (uint64_t)canConnect;
- (uint64_t)executeCorrelationChangesForValue1:(sqlite3_int64)value1 value2:(sqlite3_int64)value2 value3:(sqlite3_int64)value3 value4:;
- (uint64_t)fetchBufferResultSet:(uint64_t)set usingFetchPlan:;
- (uint64_t)freeQueryGenerationWithIdentifier:(uint64_t)identifier;
- (uint64_t)gatherHistoryChangesFromTable:(uint64_t)table;
- (uint64_t)hasAttributeChanges:(void *)changes;
- (uint64_t)hasIndexTrackingTable;
- (uint64_t)insertArray:(uint64_t)array forEntity:(char)entity includeOnConflict:;
- (uint64_t)insertDictionaryBlock:(id *)block forEntity:(int)entity includeOnConflict:;
- (uint64_t)insertManagedObjectBlock:(void *)block forEntity:(int)entity includeOnConflict:;
- (uint64_t)insertRow:(uint64_t)result;
- (uint64_t)numberOfTombstones;
- (uint64_t)percentageUsedByPersistentHistory;
- (uint64_t)recreateIndices;
- (uint64_t)registerCurrentQueryGenerationWithStore:(uint64_t)store retries:;
- (uint64_t)selectCountWithStatement:(uint64_t)result;
- (uint64_t)setUpIndexTracking;
- (uint64_t)updateConstrainedValuesForRow:(uint64_t)result;
- (uint64_t)updateRow:(uint64_t)row forRequestContext:;
- (unint64_t)_ensureWalFileExists;
- (unint64_t)fetchResultSet:(uint64_t)set usingFetchPlan:;
- (void)_batchInsertThrowWithErrorCode:(int)code andMessage:(void *)message forKey:(void *)key andValue:(void *)value additionalDetail:(uint64_t)detail;
- (void)_clearBindVariablesForInsertedRow;
- (void)_clearTransactionCaches;
- (void)_createIndexesForEntities:(void *)entities;
- (void)_createInsertStatementsForEntities:(void *)entities;
- (void)_dropAllDATriggers;
- (void)_dropAllTriggers;
- (void)_dropKnownHistoryTrackingTables;
- (void)_dropOldHistoryTrackingTables;
- (void)_endFetch;
- (void)_ensureDatabaseOpen;
- (void)_ensureNoFetchInProgress;
- (void)_ensureNoStatementPrepared;
- (void)_ensureNoTransactionOpen;
- (void)_executeSQLString:(uint64_t)string;
- (void)_finalizeStatement;
- (void)_forceDisconnectOnError;
- (void)_performBlock:(uint64_t)block;
- (void)_performPostSaveTasks:(int)tasks andForceFullVacuum:;
- (void)beginReadTransaction;
- (void)beginTransaction;
- (void)bindTempTableForBindIntarray:(uint64_t)intarray;
- (void)bindTempTablesForStatementIfNecessary:(void *)result;
- (void)cacheCurrentDBStatementOn:(uint64_t)on;
- (void)cacheUpdateConstrainedValuesStatement:(void *)key forEntity:;
- (void)cacheUpdateStatement:(void *)key forEntity:(const void *)entity andDeltasMask:;
- (void)clearTempTablesBindingsForStatement:(void *)result;
- (void)commitTransaction;
- (void)connect;
- (void)createIndexesForEntity:(void *)entity;
- (void)createManyToManyTablesForEntity:(void *)entity;
- (void)createMetadata;
- (void)createMissingHistoryTables;
- (void)createTableForEntity:(void *)entity;
- (void)createTablesForEntities:(void *)result;
- (void)createTriggersForEntities:(void *)result;
- (void)currentStats;
- (void)dealloc;
- (void)dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:(void *)result;
- (void)derivedAttributeUpdatedInsertedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:(uint64_t)key columnName:(uint64_t)name newValue:;
- (void)derivedAttributeUpdatedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:(uint64_t)key columnName:(uint64_t)name newValue:;
- (void)didCreateSchema;
- (void)disconnect;
- (void)dropHistoryBeforeTransactionID:(id *)d;
- (void)dropHistoryTrackingTables;
- (void)dropIndexTrackingTable;
- (void)endFetchAndRecycleStatement:(uint64_t)statement;
- (void)execute;
- (void)executeAttributeUniquenessCheckSQLStatement:(void *)statement returningColumns:;
- (void)executeMulticolumnUniquenessCheckSQLStatement:(void *)statement returningColumns:;
- (void)fetchCachedModel;
- (void)fetchMetadata;
- (void)fetchTableNames;
- (void)handleCorruptedDB:(uint64_t)b;
- (void)harvestUsedIndexes;
- (void)insertChanges:(uint64_t)changes type:(sqlite3_int64)type transactionID:(uint64_t)d context:;
- (void)insertUpdates:(sqlite3_int64)updates transactionID:(void *)d updatedAttributes:;
- (void)newFetchedArray;
- (void)performAndWait:(uint64_t)wait;
- (void)prepareAndExecuteSQLStatement:(uint64_t)statement;
- (void)prepareInsertStatementForAncillaryEntity:(uint64_t)entity;
- (void)prepareInsertStatementForEntity:(uint64_t)entity includeConstraints:(void *)constraints includeOnConflict:(int)conflict onConflictKeys:(void *)keys;
- (void)prepareSQLStatement:(uint64_t)statement;
- (void)processDeleteRequest:(sqlite3_int64)request;
- (void)processExternalDataReferenceFilesDeletedByRequest:(uint64_t)request;
- (void)processInsertRequest:(sqlite3_int64)request;
- (void)processMigrationRequestForHash:(uint64_t)hash stageLabel:;
- (void)processSaveRequest:(sqlite3_int64)request;
- (void)processUpdateRequest:(void *)request withOIDs:(void *)ds forAttributes:;
- (void)releaseSQLStatement;
- (void)reopenQueryGenerationWithIdentifier:(void *)identifier error:;
- (void)resetSQLStatement;
- (void)rollbackTransaction;
- (void)saveMetadata:(void *)metadata;
- (void)scheduleWALCheckpointAfter:(double)after retry:;
- (void)selectRowsWithStatement:(int)statement cached:;
- (void)setColumnsToFetch:(void *)result;
- (void)setExclusiveLockingMode:(BOOL)mode;
- (void)setSecureDeleteMode:(uint64_t)mode;
- (void)triggerUpdatedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:columnName:newValue:;
- (void)writeCorrelationChangesFromTracker:(void *)tracker;
- (void)writeCorrelationDeletesFromTracker:(void *)tracker;
- (void)writeCorrelationInsertsFromTracker:(void *)tracker;
- (void)writeCorrelationMasterReordersFromTracker:(void *)tracker;
- (void)writeCorrelationReordersFromTracker:(void *)tracker;
@end

@implementation NSSQLiteConnection

- (void)connect
{
  v187[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    if (!*(result + 24))
    {
      *(result + 24) = [*(result + 16) URL];
    }

    path = *(result + 32);
    if (!path)
    {
      path = [*(result + 24) path];
      *(result + 32) = path;
    }

    v155 = (result + 72);
    if (!*(result + 72) && (*(result + 312) & 0x80) == 0)
    {
      v154 = *(result + 376);
      __s1 = [path fileSystemRepresentation];
      v4 = *(result + 16);
      if (!v4 || (*(v4 + 201) & 0x40) == 0)
      {
        goto LABEL_12;
      }

      if (!strcmp(__s1, "/dev/null"))
      {
        v5 = 1;
        __s1 = ":memory:";
      }

      else
      {
        v6 = [*(result + 32) stringByReplacingOccurrencesOfString:@"/dev/null/" withString:&stru_1EF3F1768];
        if (!v6 || (v7 = v6, ![v6 length]))
        {
LABEL_12:
          v5 = 0;
          goto LABEL_18;
        }

        __s1 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v7)];
        v5 = 1;
      }

LABEL_18:
      if (+[NSSQLCore debugDefault])
      {
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v10 = *(result + 32);
              buf.f_bsize = 138412290;
              *&buf.f_iosize = v10;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Connecting to sqlite database file at %@\n", &buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(result + 32);
              buf.f_bsize = 138412290;
              *&buf.f_iosize = v12;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Connecting to sqlite database file at %@\n", &buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v13 = 1;
        }

        else
        {
          v13 = 4;
        }

        _NSCoreDataLog_console(v13, "Connecting to sqlite database file at %@", *(result + 32));
        objc_autoreleasePoolPop(v8);
      }

      if (v5)
      {
        v14 = 1;
      }

      else
      {
        memset(&buf, 0, 144);
        if (stat(__s1, &buf))
        {
          v15 = 1;
        }

        else
        {
          v15 = *&buf.f_mntonname[8] == 0;
        }

        v14 = v15;
      }

      v166 = v14;
      if ([*(result + 16) isReadOnly])
      {
        v16 = 1;
      }

      else
      {
        v16 = 6;
      }

      v162 = v16;
      v17 = [v154 objectForKey:?];
      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v171 = 0u;
        v172 = 0u;
        v169 = 0u;
        v170 = 0u;
        v19 = [v17 countByEnumeratingWithState:&v169 objects:v182 count:16];
        if (v19)
        {
          v20 = *v170;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v170 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v169 + 1) + 8 * i);
              if (v22 != NSKeyValueCoding_NullValue)
              {
                [v18 setObject:objc_msgSend(v17 forKey:{"objectForKey:", *(*(&v169 + 1) + 8 * i)), objc_msgSend(v22, "lowercaseString")}];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v169 objects:v182 count:16];
          }

          while (v19);
        }

        [*(result + 160) setDictionary:v18];
      }

      [*(result + 160) removeObjectForKey:@"recursive_triggers"];
      if (v5)
      {
        v23 = *(result + 312) & 0xFFFFFFF3;
      }

      else
      {
        memset(&buf, 0, 512);
        if (!statfs(__s1, &buf))
        {
          f_flags = buf.f_flags;
          if ((buf.f_flags & 0x1000) != 0)
          {
            v41 = *(result + 312) & 0xFFFFFFF3 | 4;
          }

          else
          {
            v39 = *buf.f_fstypename == 1684170103 && *&buf.f_fstypename[3] == 7758180;
            v40 = *(result + 312);
            if (v39)
            {
              v41 = v40 | 0xC;
            }

            else
            {
              v41 = v40 & 0xFFFFFFF3 | 8;
            }
          }

          *(result + 312) = v41;
          if (f_flags)
          {
            v92 = 1;
          }

          else
          {
            v92 = v162;
          }

          v162 = v92;
LABEL_57:
          v24 = [*(result + 160) objectForKey:@"lock_proxy_file"];
          if (v24 != [MEMORY[0x1E695DFB0] null] && (v24 || BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88) == 1))
          {
            v162 |= 0x20u;
            *(result + 312) |= 0x10u;
          }

          *(result + 312) &= ~0x40u;
          v25 = [*(result + 160) objectForKey:@"journal_mode"];
          if (dword_1ED4BEEC0)
          {
            v26 = @"wal";
          }

          else
          {
            v26 = 0;
          }

          if (v25)
          {
            v26 = v25;
          }

          v27 = *(result + 312);
          v28 = @"delete";
          if ((v27 & 8) == 0)
          {
            v28 = v26;
          }

          if ((v27 & 0x10) != 0)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          if (v5)
          {
            v30 = @"memory";
          }

          else
          {
            v30 = v29;
          }

          if (v30 && v30 != [MEMORY[0x1E695DFB0] null])
          {
            [*(result + 160) setObject:v30 forKey:@"journal_mode"];
            *(result + 312) = *(result + 312) & 0xFFFFFFBF | (([(__CFString *)v30 compare:@"wal" options:1]== 0) << 6);
          }

          if ((v5 & 1) == 0)
          {
            v31 = *(result + 16);
            if (v31)
            {
              v32 = ((*(v31 + 200) >> 2) & 7) - 1;
              if (v32 > 6)
              {
                LODWORD(v31) = 0;
              }

              else
              {
                LODWORD(v31) = dword_18592E71C[v32];
              }
            }

            v162 |= v31;
          }

          if ([objc_msgSend(*(result + 24) "query")])
          {
            v33 = *(result + 24);
            objc_opt_self();
            __s1 = [objc_msgSend(v33 "absoluteString")];
          }

          v34 = *(result + 16);
          if (v34)
          {
            v35 = *(v34 + 248);
          }

          else
          {
            v35 = 0;
          }

          v36 = +[NSSQLiteConnection openAtPath:withKey:handle:flags:module:checkpointOnClose:](NSSQLiteConnection, __s1, v35, v155, v162, [0 UTF8String], 0);
          if (v36)
          {
            v42 = *v155;
            if (*v155)
            {
LABEL_153:
              v59 = sqlite3_errmsg(v42);
LABEL_154:
              if (+[NSSQLCore debugDefault]< 1)
              {
                goto LABEL_213;
              }

              v60 = *(result + 42);
              v61 = objc_autoreleasePoolPush();
              IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
              if (v60)
              {
                if (IsOSLogEnabled)
                {
                  v63 = _pflogging_catastrophic_mode == 0;
                  v64 = _PFLogGetLogStream(1);
                  v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
                  if (v63)
                  {
                    if (v65)
                    {
                      goto LABEL_207;
                    }
                  }

                  else if (v65)
                  {
LABEL_207:
                    buf.f_bsize = 67109378;
                    buf.f_iosize = v36;
                    LOWORD(buf.f_blocks) = 2080;
                    *(&buf.f_blocks + 2) = v59;
                    _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", &buf, 0x12u);
                  }
                }

                _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_212:
                objc_autoreleasePoolPop(v61);
LABEL_213:
                if (v36 == 26)
                {
                  v93 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(result + 32));
                  v94 = 259;
                }

                else
                {
                  v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v59];
                  v94 = 256;
                }

                if (*v155)
                {
                  sqlite3_close_v2(*v155);
                  *v155 = 0;
                }

                v141 = MEMORY[0x1E695DF20];
                v143 = *(result + 32);
                v142 = (result + 32);
                v144 = [MEMORY[0x1E696AD98] numberWithInt:v36];
                v145 = [v141 dictionaryWithObjectsAndKeys:{v143, *MEMORY[0x1E696A368], v144, @"NSSQLiteErrorDomain", 0}];
                v146 = [_NSCoreDataException exceptionWithName:v94 code:v93 reason:v145 userInfo:?];

                *v142 = 0;
                objc_exception_throw(v146);
              }

              if (IsOSLogEnabled)
              {
                v66 = _pflogging_catastrophic_mode == 0;
                v67 = _PFLogGetLogStream(1);
                v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
                if (v66)
                {
                  if (v68)
                  {
                    goto LABEL_210;
                  }
                }

                else if (v68)
                {
LABEL_210:
                  buf.f_bsize = 67109378;
                  buf.f_iosize = v36;
                  LOWORD(buf.f_blocks) = 2080;
                  *(&buf.f_blocks + 2) = v59;
                  _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", &buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "(%d) %s");
              goto LABEL_212;
            }
          }

          else
          {
            if ((*(result + 313) & 8) != 0)
            {
              sqlite3_db_config(*v155, 1001, 0, 512, 20);
            }

            if (v5)
            {
              v36 = 0;
            }

            else
            {
              v37 = *(result + 16);
              if (v37 && *(v37 + 248))
              {
                v36 = 0;
              }

              else if (readMagicWordFromDBHandle(*v155))
              {
                v36 = 26;
              }

              else
              {
                v36 = 0;
              }

              sqlite3_wal_hook(*(result + 72), _NSSQLiteConnectionWalHook, result);
            }

            v42 = *v155;
            if (*v155 && !v36)
            {
              if (!*(result + 328) || (v43 = sqlite3_db_config(v42, 1006, 1, 0)) == 0)
              {
LABEL_116:
                if (![objc_msgSend(v154 objectForKey:{@"NSPersistentStoreServiceConfigurationOptionKey", "intValue"}])
                {
                  goto LABEL_125;
                }

                v48 = sqlite3_db_config(*v155, 1001, 0, 1200, 32);
                if (!v48)
                {
LABEL_124:
                  [(NSSQLiteConnection *)result _executeSQLString:?];
LABEL_125:
                  *(result + 304) = objc_alloc_init(MEMORY[0x1E695DF70]);
                  *(result + 312) &= ~2u;
                  v53 = *(result + 8);
                  if (v53)
                  {
                    dispatch_assert_queue_V2(v53);
                  }

                  if (NSSQLiteRegisterFunctions(*(result + 72), result))
                  {
                    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An internal error occurred while configuring functions in the SQLite database." userInfo:0]);
                  }

                  sqlite3_extended_result_codes(*(result + 72), 1);
                  [(NSSQLiteConnection *)result _restoreBusyTimeOutSettings];
                  *(result + 312) |= 0x80u;
                  if ((v162 & 1) == 0)
                  {
                    [*(result + 160) objectForKey:@"synchronous"];
                  }

                  if (v166)
                  {
                    v54 = 1;
                  }

                  else
                  {
                    v54 = [(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?]^ 1;
                  }

                  v55 = [*(result + 160) objectForKey:@"integrity_check"];
                  if ([v55 isNSString])
                  {
                    if (([v55 isEqualToString:@"1"] & 1) != 0 || !objc_msgSend(v55, "caseInsensitiveCompare:", @"YES"))
                    {
                      goto LABEL_136;
                    }
                  }

                  else if (v55 == [MEMORY[0x1E695DFB0] null])
                  {
LABEL_136:
                    [*(result + 160) setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"integrity_check"}];
                    goto LABEL_139;
                  }

                  [*(result + 160) removeObjectForKey:@"integrity_check"];
LABEL_139:
                  v153 = v54;
                  if (!v54)
                  {
                    [*(result + 160) setValue:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"auto_vacuum"}];
                    goto LABEL_234;
                  }

                  if (v162)
                  {
                    v150 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(result + 32));
                    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(result + 32), *MEMORY[0x1E696A368], 0}];
                    v152 = [_NSCoreDataException exceptionWithName:257 code:v150 reason:v151 userInfo:?];
                    objc_exception_throw(v152);
                  }

                  v56 = *(result + 8);
                  if (v56)
                  {
                    dispatch_assert_queue_V2(v56);
                  }

                  if (+[NSSQLCore debugDefault]>= 1)
                  {
                    v57 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v58 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(buf.f_bsize) = 0;
                          _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: creating schema.\n", &buf, 2u);
                        }
                      }

                      else
                      {
                        v69 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(buf.f_bsize) = 0;
                          _os_log_impl(&dword_18565F000, v69, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: creating schema.\n", &buf, 2u);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v70 = 1;
                    }

                    else
                    {
                      v70 = 4;
                    }

                    _NSCoreDataLog_console(v70, "creating schema.");
                    objc_autoreleasePoolPop(v57);
                  }

                  model = [*(result + 16) model];
                  v72 = *(result + 16);
                  if (v72)
                  {
                    [*(v72 + 216) lock];
                  }

                  v73 = [*(result + 160) objectForKey:@"lock_proxy_file"];
                  if (v73 && v73 != [MEMORY[0x1E695DFB0] null] && (objc_msgSend(v73, "isEqual:", @":auto:") & 1) == 0)
                  {
                    adapter = [result adapter];
                    v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v73);
                    v76 = [(NSSQLiteAdapter *)adapter newStatementWithSQLString:v75];
                    [(NSSQLiteConnection *)result prepareAndExecuteSQLStatement:v76];
                  }

                  v77 = *(result + 376);
                  v78 = [objc_msgSend(v77 objectForKey:{0x1EF3FD3A8), "intValue"}];
                  if (!v78)
                  {
                    v78 = [objc_msgSend(objc_msgSend(v77 objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"page_size", "intValue"}];
                    if (!v78)
                    {
                      if ((*(result + 312) & 0xC) == 8)
                      {
                        v78 = 0x2000;
                      }

                      else
                      {
                        v78 = 4096;
                      }
                    }
                  }

                  adapter2 = [result adapter];
                  v80 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v78);
                  v81 = [(NSSQLiteAdapter *)adapter2 newStatementWithSQLString:v80];
                  [(NSSQLiteConnection *)result prepareAndExecuteSQLStatement:v81];

                  v82 = [objc_msgSend(objc_msgSend(*(result + 376) objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"auto_vacuum", "lowercaseString"}];
                  if (!v82 || v82 == [MEMORY[0x1E695DFB0] null])
                  {
                    v82 = @"2";
                  }

                  v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma auto_vacuum=%@", v82];
                  v84 = -[NSSQLiteAdapter newStatementWithSQLString:]([result adapter], v83);

                  [(NSSQLiteConnection *)result prepareAndExecuteSQLStatement:v84];
                  if (([(__CFString *)v82 isEqualToString:@"2"]& 1) != 0)
                  {
                    v85 = 0;
                  }

                  else
                  {
                    v86 = [(__CFString *)v82 isEqualToString:@"incremental"];
                    v85 = 0x7FFFFFFFFFFFFFFFLL;
                    if (v86)
                    {
                      v85 = 0;
                    }
                  }

                  *(result + 296) = v85;
                  *(result + 312) &= ~0x20u;
                  v186 = @"_NSAutoVacuumLevel";
                  v187[0] = v82;
                  -[NSSQLCore _updateAutoVacuumMetadataWithValues:](*(result + 16), [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:&v186 count:1]);
                  [(NSSQLiteConnection *)result beginTransaction];
                  if ([(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?])
                  {
                    [(NSSQLiteConnection *)result commitTransaction];
                    [(NSSQLiteConnection *)result didCreateSchema];
                    v87 = *(result + 16);
                    if (!v87)
                    {
                      goto LABEL_233;
                    }
                  }

                  else
                  {
                    if (model)
                    {
                      v88 = model[4];
                    }

                    else
                    {
                      v88 = 0;
                    }

                    [(NSSQLiteConnection *)result createTablesForEntities:v88];
                    v89 = *(result + 8);
                    if (v89)
                    {
                      dispatch_assert_queue_V2(v89);
                    }

                    if (+[NSSQLCore debugDefault]>= 1)
                    {
                      v90 = objc_autoreleasePoolPush();
                      _pflogInitialize(4);
                      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v91 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                          {
                            LOWORD(buf.f_bsize) = 0;
                            _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Creating primary key table.\n", &buf, 2u);
                          }
                        }

                        else
                        {
                          v95 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf.f_bsize) = 0;
                            _os_log_impl(&dword_18565F000, v95, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Creating primary key table.\n", &buf, 2u);
                          }
                        }
                      }

                      if (_pflogging_catastrophic_mode)
                      {
                        v96 = 1;
                      }

                      else
                      {
                        v96 = 4;
                      }

                      _NSCoreDataLog_console(v96, "Creating primary key table.");
                      objc_autoreleasePoolPop(v90);
                    }

                    adapter3 = [result adapter];
                    PrimaryKeyTable = [(NSSQLiteAdapter *)adapter3 newCreatePrimaryKeyTableStatement];
                    [(NSSQLiteConnection *)result prepareAndExecuteSQLStatement:?];

                    if (model)
                    {
                      v99 = model[4];
                    }

                    else
                    {
                      v99 = 0;
                    }

                    v101 = [v99 count];
                    if (v101)
                    {
                      for (j = 0; j != v101; ++j)
                      {
                        v103 = objc_autoreleasePoolPush();
                        v104 = -[NSSQLiteAdapter newPrimaryKeyInitializeStatementForEntity:withInitialMaxPK:](adapter3, [v99 objectAtIndex:j], 0);
                        [(NSSQLiteConnection *)result prepareAndExecuteSQLStatement:v104];

                        objc_autoreleasePoolPop(v103);
                      }
                    }

                    [(NSSQLiteConnection *)result createMetadata];
                    -[NSSQLiteConnection saveMetadata:](result, [*(result + 16) _updatedMetadataWithSeed:objc_msgSend(*(result + 16) includeVersioning:{"metadata"), 1}]);
                    -[NSSQLiteConnection saveCachedModel:](result, [model managedObjectModel]);
                    v105 = *(result + 16);
                    if (v105 && (*(v105 + 201) & 4) != 0)
                    {
                      v106 = objc_autoreleasePoolPush();
                      v107 = [objc_msgSend(*(result + 16) "ancillarySQLModels")];
                      if (v107)
                      {
                        v108 = *(v107 + 32);
                      }

                      else
                      {
                        v108 = 0;
                      }

                      [(NSSQLiteConnection *)result createTablesForEntities:v108];
                      objc_autoreleasePoolPop(v106);
                    }

                    [(NSSQLiteConnection *)result commitTransaction];
                    [(NSSQLiteConnection *)result didCreateSchema];
                    v87 = *(result + 16);
                    if (!v87)
                    {
                      goto LABEL_233;
                    }
                  }

                  [*(v87 + 216) unlock];
LABEL_233:
                  LOBYTE(v54) = v153;
                  [(NSSQLiteConnection *)result endFetchAndRecycleStatement:?];
LABEL_234:
                  v109 = [*(result + 160) objectForKey:@"page_size"];
                  if (v109)
                  {
                    if (v109 == [MEMORY[0x1E695DFB0] null])
                    {
                      v110 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"page_size");
                    }

                    else
                    {
                      v110 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"page_size", v109);
                    }

                    [(NSSQLiteConnection *)result _executeSQLString:v110];
                  }

                  if ((v162 & 1) == 0)
                  {
                    v111 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0]);
                    [(NSSQLiteConnection *)result _executeSQLString:v111];
                  }

                  v159 = (v54 & 1) == 0 && [*(result + 376) objectForKey:@"NSSQLiteManualVacuumOption"] != 0;
                  v175 = 0u;
                  v176 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  obj = *(result + 160);
                  v112 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
                  if (v112)
                  {
                    v161 = *v174;
                    do
                    {
                      v165 = 0;
                      v163 = v112;
                      do
                      {
                        if (*v174 != v161)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v113 = *(*(&v173 + 1) + 8 * v165);
                        v114 = [*(result + 160) objectForKey:v113];
                        if (((v162 & 1) == 0 || ([v113 isEqualToString:@"journal_mode"] & 1) == 0 && (objc_msgSend(v113, "isEqualToString:", @"synchronous") & 1) == 0) && (objc_msgSend(v113, "isEqualToString:", @"page_size") & 1) == 0 && (!v159 || (objc_msgSend(v113, "isEqualToString:", @"journal_mode") & 1) == 0) && (+[NSSQLCore debugDefault](NSSQLCore, "debugDefault") || v114 != objc_msgSend(MEMORY[0x1E695DFB0], "null") || (objc_msgSend(v113, "isEqualToString:", @"journal_mode") & 1) == 0))
                        {
                          if (![v113 isEqualToString:@"integrity_check"])
                          {
                            if ([v113 isEqualToString:@"lock_proxy_file"])
                            {
                              null = [MEMORY[0x1E695DFB0] null];
                              v133 = MEMORY[0x1E696AEC0];
                              if (v114 == null)
                              {
                                goto LABEL_310;
                              }

LABEL_302:
                              v136 = objc_msgSend_stringWithFormat_(v133, v113, v114);
                              goto LABEL_311;
                            }

                            if (![v113 isEqualToString:@"auto_vacuum"])
                            {
                              null2 = [MEMORY[0x1E695DFB0] null];
                              v133 = MEMORY[0x1E696AEC0];
                              if (v114 != null2)
                              {
                                goto LABEL_302;
                              }

LABEL_310:
                              v136 = objc_msgSend_stringWithFormat_(v133, v113);
LABEL_311:
                              [(NSSQLiteConnection *)result _executeSQLString:v136];
                              goto LABEL_318;
                            }

                            if ([*(result + 16) isReadOnly])
                            {
                              goto LABEL_300;
                            }

                            v137 = [objc_msgSend(*(result + 16) "metadata")];
                            if (!v137)
                            {
LABEL_312:
                              *(result + 312) |= 0x20u;
                              goto LABEL_318;
                            }

                            v138 = [*(result + 160) objectForKey:@"auto_vacuum"];
                            if ([MEMORY[0x1E695DFB0] null] == v138 || (v139 = objc_msgSend(v138, "lowercaseString")) == 0)
                            {
                              if (([@"2" isEqualToString:v137] & 1) == 0)
                              {
                                goto LABEL_314;
                              }
                            }

                            else
                            {
                              if (![v139 isEqualToString:v137])
                              {
                                goto LABEL_312;
                              }

                              if (([@"2" isEqualToString:v137] & 1) == 0)
                              {
LABEL_314:
                                if (![@"incremental" isEqualToString:v137])
                                {
LABEL_300:
                                  *(result + 296) = 0x7FFFFFFFFFFFFFFFLL;
                                  goto LABEL_318;
                                }
                              }
                            }

                            *(result + 296) = 0;
                            goto LABEL_318;
                          }

                          v115 = *(result + 8);
                          if (v115)
                          {
                            dispatch_assert_queue_V2(v115);
                          }

                          v116 = -[NSSQLiteAdapter newStatementWithSQLString:]([result adapter], @"pragma integrity_check");
                          v157 = [[NSSQLColumn alloc] initWithColumnName:@"*" sqlType:6];
                          v158 = v116;
                          v156 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v157, 0}];
                          [(NSSQLiteConnection *)result prepareSQLStatement:v116];
                          [result execute];
                          [(NSSQLiteConnection *)result setColumnsToFetch:v156];
                          v117 = 0;
                          v118 = 1;
                          while (1)
                          {
                            newFetchedArray = [(NSSQLiteConnection *)result newFetchedArray];
                            if (!newFetchedArray)
                            {
                              break;
                            }

                            v167 = newFetchedArray;
                            v120 = [newFetchedArray objectAtIndex:0];
                            v121 = v120;
                            if (!v117 && (v118 & [v120 isEqualToString:@"ok"] & 1) != 0)
                            {
                              v118 = 1;
                              goto LABEL_290;
                            }

                            if (!+[NSSQLCore debugDefault])
                            {
                              LOBYTE(v118) = 0;
                              v134 = v167;
                              goto LABEL_317;
                            }

                            v122 = [v121 componentsSeparatedByString:@"\n"];
                            v179 = 0u;
                            v180 = 0u;
                            v177 = 0u;
                            v178 = 0u;
                            v123 = [v122 countByEnumeratingWithState:&v177 objects:&buf count:16];
                            if (v123)
                            {
                              v164 = v117;
                              v124 = *v178;
                              while (1)
                              {
                                v125 = 0;
                                do
                                {
                                  if (*v178 != v124)
                                  {
                                    objc_enumerationMutation(v122);
                                  }

                                  v126 = *(*(&v177 + 1) + 8 * v125);
                                  v127 = *(result + 42);
                                  v128 = objc_autoreleasePoolPush();
                                  _pflogInitialize(1);
                                  if (v127)
                                  {
                                    if (_pflogging_enable_oslog >= 1)
                                    {
                                      if (_pflogging_catastrophic_mode)
                                      {
                                        v129 = _PFLogGetLogStream(1);
                                        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                                        {
LABEL_285:
                                          *v184 = 138412290;
                                          v185 = v126;
                                          _os_log_error_impl(&dword_18565F000, v129, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m\n", v184, 0xCu);
                                        }
                                      }

                                      else
                                      {
                                        v129 = _PFLogGetLogStream(1);
                                        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
                                        {
                                          goto LABEL_285;
                                        }
                                      }
                                    }

                                    _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m", v126);
                                    goto LABEL_283;
                                  }

                                  if (_pflogging_enable_oslog >= 1)
                                  {
                                    if (_pflogging_catastrophic_mode)
                                    {
                                      v130 = _PFLogGetLogStream(1);
                                      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                                      {
                                        goto LABEL_286;
                                      }
                                    }

                                    else
                                    {
                                      v130 = _PFLogGetLogStream(1);
                                      if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                                      {
LABEL_286:
                                        *v184 = 138412290;
                                        v185 = v126;
                                        _os_log_error_impl(&dword_18565F000, v130, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", v184, 0xCu);
                                      }
                                    }
                                  }

                                  _NSCoreDataLog_console(1, "%@", v126);
LABEL_283:
                                  objc_autoreleasePoolPop(v128);
                                  ++v125;
                                }

                                while (v123 != v125);
                                v131 = [v122 countByEnumeratingWithState:&v177 objects:&buf count:16];
                                v123 = v131;
                                if (!v131)
                                {
                                  v118 = 0;
                                  v117 = v164;
                                  goto LABEL_290;
                                }
                              }
                            }

                            v118 = 0;
LABEL_290:

                            ++v117;
                          }

                          v134 = 0;
LABEL_317:

                          [(NSSQLiteConnection *)result releaseSQLStatement];
                          [(NSSQLiteConnection *)result setColumnsToFetch:?];
                          *(result + 312) &= ~2u;
                          *(result + 100) = 0;
                          *(result + 92) = 0;
                          *(result + 108) = 0;

                          if ((v118 & 1) == 0)
                          {
                            v147 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(result + 32));
                            v148 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(result + 32), *MEMORY[0x1E696A368], v147, @"message", 0}];
                            v149 = [_NSCoreDataException exceptionWithName:259 code:v147 reason:v148 userInfo:?];
                            objc_exception_throw(v149);
                          }
                        }

LABEL_318:
                        ++v165;
                      }

                      while (v165 != v163);
                      v112 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
                    }

                    while (v112);
                  }

                  if (v162)
                  {
                    goto LABEL_333;
                  }

                  if ((v153 & 1) == 0)
                  {
                    if ([v154 objectForKey:@"NSSQLiteAnalyzeOption"])
                    {
                      [(NSSQLiteConnection *)result _executeSQLString:?];
                    }

                    if ([v154 objectForKey:@"NSSQLiteManualVacuumOption"])
                    {
                      [(NSSQLiteConnection *)result _executeSQLString:?];
                    }
                  }

                  if ((*(result + 312) & 0x40) == 0)
                  {
                    goto LABEL_333;
                  }

                  buf.f_bsize = 0;
                  v140 = [v154 objectForKey:@"NSSQLitePersistWALOption"];
                  if (v140)
                  {
                    if ([v140 intValue] != 1)
                    {
LABEL_332:
                      sqlite3_file_control(*v155, 0, 10, &buf);
                      goto LABEL_333;
                    }
                  }

                  else if (dword_1ED4BEEC0 != 1)
                  {
LABEL_333:
                    *(result + 312) &= ~0x80u;
                    return;
                  }

                  buf.f_bsize = 1;
                  goto LABEL_332;
                }

                v49 = objc_autoreleasePoolPush();
                _pflogInitialize(1);
                if (_pflogging_enable_oslog >= 1)
                {
                  v50 = _pflogging_catastrophic_mode == 0;
                  v51 = _PFLogGetLogStream(1);
                  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
                  if (v50)
                  {
                    if (v52)
                    {
                      buf.f_bsize = 67109120;
                      buf.f_iosize = v48;
                      goto LABEL_342;
                    }
                  }

                  else if (v52)
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v48;
LABEL_342:
                    _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_LOOKASIDE failed: %d\n", &buf, 8u);
                  }
                }

                _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_LOOKASIDE failed: %d", v48);
                objc_autoreleasePoolPop(v49);
                goto LABEL_124;
              }

              v44 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog >= 1)
              {
                v45 = _pflogging_catastrophic_mode == 0;
                v46 = _PFLogGetLogStream(1);
                v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
                if (v45)
                {
                  if (v47)
                  {
                    buf.f_bsize = 67109120;
                    buf.f_iosize = v43;
                    goto LABEL_340;
                  }
                }

                else if (v47)
                {
                  buf.f_bsize = 67109120;
                  buf.f_iosize = v43;
LABEL_340:
                  _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed (_qGTC): %d\n", &buf, 8u);
                }
              }

              _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed (_qGTC): %d", v43);
              objc_autoreleasePoolPop(v44);
              goto LABEL_116;
            }

            if (v42)
            {
              goto LABEL_153;
            }
          }

          v59 = "unknown";
          goto LABEL_154;
        }

        v23 = *(result + 312) | 0xC;
      }

      *(result + 312) = v23;
      goto LABEL_57;
    }
  }
}

- (void)_ensureNoFetchInProgress
{
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if ((*(self + 312) & 2) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to perform another operation with a fetch already in progress" userInfo:0]);
  }
}

- (void)_ensureDatabaseOpen
{
  v2 = self[1];
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (!self[9])
  {
    v3 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134060, @"Attempted to perform an operation without an open database", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{self[4], *MEMORY[0x1E696A368], 0}]);
    objc_exception_throw(v3);
  }
}

- (void)execute
{
  selfCopy = self;
  v141 = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  sqliteConnectionFlags = selfCopy->_sqliteConnectionFlags;
  if ((*&sqliteConnectionFlags & 1) == 0)
  {
    v5 = sqlite3_reset(selfCopy->_vmstatement);
    sqlite3_clear_bindings(selfCopy->_vmstatement);
    sqliteConnectionFlags = selfCopy->_sqliteConnectionFlags;
    if (v5)
    {
      selfCopy->_sqliteConnectionFlags = (*&sqliteConnectionFlags & 0xFFFFFFFD);
      [(NSSQLiteConnection *)selfCopy releaseSQLStatement];
      v122 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(selfCopy->_db)];
      v123 = *MEMORY[0x1E695D930];
      v112 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v5), @"NSSQLiteErrorDomain"}];
      v114 = v123;
      v113 = v122;
LABEL_187:
      v115 = [_NSCoreDataException exceptionWithName:v114 code:134180 reason:v113 userInfo:v112];
      objc_exception_throw(v115);
    }
  }

  selfCopy->_sqliteConnectionFlags = (*&sqliteConnectionFlags & 0xFFFFFFFE);
  v135 = [-[NSSQLiteConnection sqlStatement](selfCopy "sqlStatement")];
  v134 = [v135 count];
  if (v134)
  {
    v6 = 0;
    v133 = selfCopy;
    while (1)
    {
      v7 = [v135 objectAtIndex:v6];
      sqlType = [v7 sqlType];
      if ([v7 hasObjectValue])
      {
        value = [v7 value];
        v10 = value;
        if (value && [value isNSString] && objc_msgSend(v7, "allowsCoercion"))
        {
          v11 = [@"<null>" isEqualToString:v10];
        }

        else
        {
          v11 = 0;
        }

        int64 = 0;
      }

      else
      {
        int64 = [v7 int64];
        v11 = 0;
        v10 = 0;
      }

      if (+[NSSQLCore debugDefault]>= 2)
      {
        break;
      }

LABEL_101:
      if (!int64)
      {
        if (!v10)
        {
          goto LABEL_112;
        }

        if (sqlType)
        {
          if (!v11)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v68 = [(NSSQLiteAdapter *)[(NSSQLiteConnection *)selfCopy adapter] sqlTypeForExpressionConstantValue:v10];
          if (v68)
          {
            sqlType = v68;
            if (!v11)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v10 = [v10 description];
            sqlType = 6;
            if (!v11)
            {
LABEL_117:
              switch(sqlType)
              {
                case 1:
                  vmstatement = selfCopy->_vmstatement;
                  intValue = [v10 intValue];
                  v65 = vmstatement;
                  v66 = v6 + 1;
                  goto LABEL_111;
                case 2:
                case 3:
                  v71 = selfCopy->_vmstatement;
                  longLongValue = [v10 longLongValue];
                  v58 = v71;
                  v59 = v6 + 1;
                  goto LABEL_104;
                case 4:
                  v69 = selfCopy->_vmstatement;
                  stringValue = [v10 stringValue];
                  goto LABEL_146;
                case 5:
                case 6:
                case 9:
                  v69 = selfCopy->_vmstatement;
                  stringValue = v10;
LABEL_146:
                  uTF8String = [stringValue UTF8String];
                  v62 = v69;
                  goto LABEL_147;
                case 7:
                  v94 = selfCopy->_vmstatement;
                  [v10 doubleValue];
                  goto LABEL_155;
                case 8:
                  v94 = selfCopy->_vmstatement;
                  [v10 timeIntervalSinceReferenceDate];
LABEL_155:
                  v61 = sqlite3_bind_double(v94, v6 + 1, v95);
                  goto LABEL_149;
                case 10:
                case 17:
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    bytes = [v10 bytes];
                    v73 = selfCopy->_vmstatement;
                    if (bytes)
                    {
                      v74 = bytes;
                    }

                    else
                    {
                      v74 = v10;
                    }

                    _bytesLengthForStore = [v10 length];
                    v76 = v73;
                    v77 = v6 + 1;
                    v78 = v74;
                    goto LABEL_142;
                  }

                  if (v10)
                  {
                    [(_PFEvanescentData *)v10 _openMapping];
                  }

                  [v10 length];
                  v61 = sqlite3_bind_blob_b();
                  goto LABEL_149;
                case 11:
                  v98 = v10;
                  if ([v10 isNSString])
                  {
                    v98 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    goto LABEL_193;
                  }

                  v99 = malloc_type_malloc(0x10uLL, 0x1F702DCEuLL);
                  [v98 getUUIDBytes:v99];
                  v76 = selfCopy->_vmstatement;
                  v93 = MEMORY[0x1E69E9B38];
                  v77 = v6 + 1;
                  v78 = v99;
                  _bytesLengthForStore = 16;
                  goto LABEL_160;
                case 12:
                  objc_opt_class();
                  absoluteString = v10;
                  if (objc_opt_isKindOfClass())
                  {
                    absoluteString = [v10 absoluteString];
                  }

                  if (([absoluteString isNSString] & 1) == 0)
                  {
LABEL_193:
                    v127 = MEMORY[0x1E695DF30];
                    v128 = *MEMORY[0x1E695D940];
                    v129 = MEMORY[0x1E696AEC0];
                    v130 = objc_opt_class();
                    v132 = NSStringFromClass(v130);
                    v118 = objc_msgSend_stringWithFormat_(v129, v132);
                    v121 = MEMORY[0x1E695E0F8];
                    v119 = v127;
                    v120 = v128;
LABEL_190:
                    objc_exception_throw([v119 exceptionWithName:v120 reason:v118 userInfo:v121]);
                  }

                  v80 = selfCopy->_vmstatement;
                  uTF8String = [absoluteString UTF8String];
                  v62 = v80;
LABEL_147:
                  v63 = v6 + 1;
                  goto LABEL_148;
                case 13:
                  v81 = objc_alloc(MEMORY[0x1E696AEC0]);
                  rangeValue = [v10 rangeValue];
                  [v10 rangeValue];
                  v84 = [v81 initWithFormat:@"%lu/%lu", rangeValue, v83];
                  v85 = sqlite3_bind_text(selfCopy->_vmstatement, v6 + 1, [v84 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

                  goto LABEL_150;
                case 15:
                  tombstonedPropertyDescription = [v7 tombstonedPropertyDescription];
                  if (!tombstonedPropertyDescription)
                  {
                    tombstonedPropertyDescription = [v7 propertyDescription];
                  }

                  v87 = [_PFRoutines retainedEncodeObjectValue:v10 forTransformableAttribute:tombstonedPropertyDescription];
                  v85 = sqlite3_bind_blob(selfCopy->_vmstatement, v6 + 1, [v87 bytes], objc_msgSend(v87, "length"), 0xFFFFFFFFFFFFFFFFLL);

                  [v7 setTombstonedPropertyDescription:0];
                  goto LABEL_150;
                case 16:
                  _bytesPtrForStore = [v10 _bytesPtrForStore];
                  _bytesLengthForStore = [v10 _bytesLengthForStore];
                  v76 = selfCopy->_vmstatement;
                  v77 = v6 + 1;
                  v78 = _bytesPtrForStore;
                  v93 = 0;
                  goto LABEL_160;
                case 18:
                  tombstonedPropertyDescription2 = [v7 tombstonedPropertyDescription];
                  if (!tombstonedPropertyDescription2)
                  {
                    tombstonedPropertyDescription2 = [v7 propertyDescription];
                  }

                  *buf = 0;
                  v89 = [tombstonedPropertyDescription2 encode:v10 withRegistry:objc_msgSend(objc_msgSend(objc_msgSend(-[NSSQLiteConnection adapter](selfCopy error:{"adapter"), "sqlCore"), "persistentStoreCoordinator"), "codableAdapterRegistry"), buf}];
                  if (!v89)
                  {
                    v124 = MEMORY[0x1E695DF30];
                    v125 = *MEMORY[0x1E695D940];
                    v126 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, *buf);
                    v136 = *MEMORY[0x1E696AA08];
                    v137 = *buf;
                    v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
                    v119 = v124;
                    v120 = v125;
                    v118 = v126;
                    goto LABEL_190;
                  }

                  v90 = v89;
                  v91 = selfCopy->_vmstatement;
                  bytes2 = [v89 bytes];
                  _bytesLengthForStore = [v90 length];
                  v76 = v91;
                  v77 = v6 + 1;
                  v78 = bytes2;
LABEL_142:
                  v93 = -1;
LABEL_160:
                  v61 = sqlite3_bind_blob(v76, v77, v78, _bytesLengthForStore, v93);
                  goto LABEL_149;
                default:
                  goto LABEL_189;
              }
            }
          }
        }

        v62 = selfCopy->_vmstatement;
        v63 = v6 + 1;
        uTF8String = "<null>";
LABEL_148:
        v61 = sqlite3_bind_text(v62, v63, uTF8String, -1, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_149;
      }

LABEL_102:
      if ((sqlType - 2) < 2)
      {
        v58 = selfCopy->_vmstatement;
        v59 = v6 + 1;
        longLongValue = int64;
        goto LABEL_104;
      }

      if (sqlType != 1)
      {
LABEL_189:
        v116 = MEMORY[0x1E695DF30];
        v117 = *MEMORY[0x1E695D930];
        v118 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], sqlType);
        v119 = v116;
        v120 = v117;
        v121 = 0;
        goto LABEL_190;
      }

      v65 = selfCopy->_vmstatement;
      v66 = v6 + 1;
      intValue = int64;
LABEL_111:
      v61 = sqlite3_bind_int(v65, v66, intValue);
LABEL_149:
      v85 = v61;
LABEL_150:
      if (v85)
      {
        v111 = *MEMORY[0x1E695D930];
        v112 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v85), @"NSSQLiteErrorDomain"}];
        v113 = @"sqlite3_bind* failed";
        v114 = v111;
        goto LABEL_187;
      }

      if (v134 == ++v6)
      {
        goto LABEL_162;
      }
    }

    if (!v10)
    {
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      IsLogEnabled = _NSCoreDataIsLogEnabled(7);
      v24 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (!int64)
      {
        if (v24)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v6;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = nil\n", buf, 0xCu);
            }
          }

          else
          {
            v50 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              *&buf[4] = v6;
              _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = nil\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v51 = 1;
        }

        else
        {
          v51 = 7;
        }

        _NSCoreDataLog_console(v51, "SQLite bind[%ld] = nil", v6);
        objc_autoreleasePoolPop(v22);
LABEL_112:
        v58 = selfCopy->_vmstatement;
        v59 = v6 + 1;
        if (sqlType != 3)
        {
          v61 = sqlite3_bind_null(v58, v59);
          goto LABEL_149;
        }

        longLongValue = 0;
LABEL_104:
        v61 = sqlite3_bind_int64(v58, v59, longLongValue);
        goto LABEL_149;
      }

      if (v24)
      {
        if (_pflogging_catastrophic_mode)
        {
          v25 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            v139 = 2048;
            v140 = int64;
            _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = (int64)%qd\n", buf, 0x16u);
          }
        }

        else
        {
          v36 = _PFLogGetLogStream(7);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            *&buf[4] = v6;
            v139 = 2048;
            v140 = int64;
            _os_log_impl(&dword_18565F000, v36, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = (int64)%qd\n", buf, 0x16u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v37 = 1;
      }

      else
      {
        v37 = 7;
      }

      _NSCoreDataLog_console(v37, "SQLite bind[%ld] = (int64)%qd", v6, int64);
      objc_autoreleasePoolPop(v22);
      goto LABEL_102;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v14 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      v15 = _NSCoreDataIsLogEnabled(7);
      v17 = _pflogging_enable_oslog > 0 && v15;
      if (isKindOfClass)
      {
        if (v17)
        {
          if (_pflogging_catastrophic_mode)
          {
            v18 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = MEMORY[0x1E696AEC0];
              Property = objc_getProperty(v10, v16, 16, 1);
              v21 = objc_msgSend_stringWithFormat_(v19, Property);
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v21;
              _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v38 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = MEMORY[0x1E696AEC0];
              v40 = objc_getProperty(v10, v16, 16, 1);
              v41 = objc_msgSend_stringWithFormat_(v39, v40);
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v41;
              _os_log_impl(&dword_18565F000, v38, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        v42 = _pflogging_catastrophic_mode;
        v43 = MEMORY[0x1E696AEC0];
        v131 = objc_getProperty(v10, v16, 16, 1);
        v44 = objc_msgSend_stringWithFormat_(v43, v131);
      }

      else
      {
        if (v17)
        {
          if (_pflogging_catastrophic_mode)
          {
            v27 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v10 length]);
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v28;
              _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v45 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v46 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v10 length]);
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v46;
              _os_log_impl(&dword_18565F000, v45, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        v42 = _pflogging_catastrophic_mode;
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v10 length]);
      }

      v47 = 7;
      if (v42)
      {
        v47 = 1;
      }

      _NSCoreDataLog_console(v47, "SQLite bind[%ld] = %@", v6, v44);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(7);
        if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v26 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v10;
              _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v48 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v10;
              _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v49 = 1;
        }

        else
        {
          v49 = 7;
        }

        _NSCoreDataLog_console(v49, "SQLite bind[%ld] = %@", v6, v10);
        goto LABEL_100;
      }

      objc_opt_class();
      v29 = objc_opt_isKindOfClass();
      v14 = objc_autoreleasePoolPush();
      _pflogInitialize(7);
      v30 = _NSCoreDataIsLogEnabled(7);
      v31 = _pflogging_enable_oslog > 0 && v30;
      if ((v29 & 1) == 0)
      {
        if (v31)
        {
          if (_pflogging_catastrophic_mode)
          {
            v35 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v10;
              _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }

          else
          {
            v56 = _PFLogGetLogStream(7);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              *&buf[4] = v6;
              v139 = 2112;
              v140 = v10;
              _os_log_impl(&dword_18565F000, v56, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = %@\n", buf, 0x16u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v57 = 1;
        }

        else
        {
          v57 = 7;
        }

        _NSCoreDataLog_console(v57, "SQLite bind[%ld] = %@", v6, v10);
        goto LABEL_100;
      }

      if (v31)
      {
        if (_pflogging_catastrophic_mode)
        {
          v32 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [v10 timeIntervalSinceReferenceDate];
            *buf = 134218240;
            *&buf[4] = v6;
            v139 = 2048;
            v140 = v33;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: SQLite bind[%ld] = (timestamp)%f\n", buf, 0x16u);
          }
        }

        else
        {
          v52 = _PFLogGetLogStream(7);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            [v10 timeIntervalSinceReferenceDate];
            *buf = 134218240;
            *&buf[4] = v6;
            v139 = 2048;
            v140 = v53;
            _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_INFO, "CoreData: details: SQLite bind[%ld] = (timestamp)%f\n", buf, 0x16u);
          }
        }
      }

      v54 = _pflogging_catastrophic_mode;
      [v10 timeIntervalSinceReferenceDate];
      if (v54)
      {
        v55 = 1;
      }

      else
      {
        v55 = 7;
      }

      _NSCoreDataLog_console(v55, "SQLite bind[%ld] = (timestamp)%f");
    }

    selfCopy = v133;
LABEL_100:
    objc_autoreleasePoolPop(v14);
    goto LABEL_101;
  }

LABEL_162:
  if ((*(&selfCopy->_sqliteConnectionFlags + 1) & 0x10) != 0 && +[NSSQLCore debugDefault]>= 4 && !sqlite3_stmt_explain())
  {
    v100 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SQLite: %s", sqlite3_sql(selfCopy->_vmstatement)];
    while (sqlite3_step(selfCopy->_vmstatement) == 100)
    {
      v101 = sqlite3_column_int(selfCopy->_vmstatement, 0);
      v102 = sqlite3_column_int(selfCopy->_vmstatement, 1);
      v103 = sqlite3_column_int(selfCopy->_vmstatement, 2);
      [v100 appendFormat:@"\n     %d %d %d %s", v101, v102, v103, sqlite3_column_text(selfCopy->_vmstatement, 3)];
    }

    v104 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v105 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v100;
          _os_log_error_impl(&dword_18565F000, v105, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v106 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v100;
          _os_log_impl(&dword_18565F000, v106, OS_LOG_TYPE_INFO, "CoreData: details: %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v107 = 1;
    }

    else
    {
      v107 = 7;
    }

    _NSCoreDataLog_console(v107, "%@", v100);
    objc_autoreleasePoolPop(v104);

    sqlite3_reset(selfCopy->_vmstatement);
    sqlite3_stmt_explain();
  }

  _execute(selfCopy);
  if ((*&selfCopy->_sqliteConnectionFlags & 2) != 0 && !selfCopy->_columnsToFetch)
  {
    v108 = [-[NSSQLiteConnection sqlStatement](selfCopy "sqlStatement")];
    while (v108)
    {
      v109 = v108;
      v108 = *(v108 + 168);
      if (v108 == v109)
      {
        v110 = *(v109 + 72);
        goto LABEL_184;
      }
    }

    v110 = 0;
LABEL_184:
    [(NSSQLiteConnection *)selfCopy setColumnsToFetch:v110];
  }
}

- (id)sqlStatement
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  return self->_sqlStatement;
}

- (void)_finalizeStatement
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = *(result + 80);
    if (v3)
    {
      v4 = *(result + 48);
      if (v4)
      {
        v4 = *(v4 + 8);
      }

      if (v4 == v3)
      {
        sqlite3_reset(v3);
        sqlite3_clear_bindings(*(result + 80));
      }

      else
      {
        sqlite3_finalize(v3);
      }

      *(result + 80) = 0;
    }

    [(NSSQLiteConnection *)result clearTempTablesBindingsForStatement:?];
    v5 = *(result + 48);

    [(NSSQLiteStatement *)v5 clearCaches:?];
  }
}

- (void)releaseSQLStatement
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [(NSSQLiteConnection *)self _finalizeStatement];
    [(NSSQLiteStatement *)*(self + 48) clearCaches:?];

    *(self + 48) = 0;
  }
}

- (void)resetSQLStatement
{
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = *(self + 80);
  if (v3)
  {
    sqlite3_reset(v3);
    sqlite3_clear_bindings(*(self + 80));
    *(self + 80) = 0;
  }

  [(NSSQLiteConnection *)self clearTempTablesBindingsForStatement:?];

  *(self + 48) = 0;
}

- (void)_clearTransactionCaches
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(self + 216);
  v4 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(v3);
        }

        Value = CFDictionaryGetValue(*(self + 216), *(*(&v32 + 1) + 8 * i));
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [Value countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(Value);
              }

              v13 = CFDictionaryGetValue(Value, *(*(&v28 + 1) + 8 * j));
              [(NSSQLiteStatement *)v13 clearCaches:?];
              v14 = *(self + 152);
              if (v13)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 1;
              }

              if (!v15)
              {
                CFDictionaryRemoveValue(v14, v13);
              }
            }

            v10 = [Value countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v10);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  CFDictionaryRemoveAllValues(*(self + 216));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = *(self + 224);
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = CFDictionaryGetValue(*(self + 224), *(*(&v24 + 1) + 8 * k));
        [(NSSQLiteStatement *)v21 clearCaches:?];
        v22 = *(self + 152);
        if (v21)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          CFDictionaryRemoveValue(v22, v21);
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v18);
  }

  CFDictionaryRemoveAllValues(*(self + 224));
}

- (void)_ensureNoStatementPrepared
{
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (*(self + 80))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to perform another operation with a statement prepared" userInfo:0]);
  }
}

- (void)commitTransaction
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = objc_autoreleasePoolPush();
  if ((*(self + 312) & 2) != 0)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = NSStringFromSelector(sel_commitTransaction);
    v6 = objc_opt_class();
    [v3 raise:v4 format:{@"%@ -- %@ %p: attempted to commit a transaction while a fetch was in progress", v5, NSStringFromClass(v6), self}];
  }

  if ((*(self + 41) & 1) == 0 && (*(self + 312) & 0x20) != 0)
  {
    v7 = [objc_msgSend(*(self + 376) objectForKey:{@"NSSQLitePragmasOption", "objectForKey:", @"auto_vacuum"}];
    if (!v7 || (lowercaseString = v7, [MEMORY[0x1E695DFB0] null] == v7))
    {
      lowercaseString = @"2";
    }

    else if ([(__CFString *)lowercaseString isNSString])
    {
      lowercaseString = [(__CFString *)lowercaseString lowercaseString];
    }

    v9 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:?];
    if (v9)
    {
      v10 = v9;
      if (CFArrayGetCount(v9) && *CFArrayGetValueAtIndex(v10, 0))
      {
        v11 = *CFArrayGetValueAtIndex(v10, 1);
        CFRelease(v10);
        if (v11)
        {
          v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], lowercaseString);
          v13 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:v12];
          if (v13)
          {
            CFRelease(v13);
          }

          if ([@"2" isEqualToString:lowercaseString])
          {
            v14 = 0;
          }

          else
          {
            v18 = [@"incremental" isEqualToString:lowercaseString];
            v14 = 0x7FFFFFFFFFFFFFFFLL;
            if (v18)
            {
              v14 = 0;
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        CFRelease(v10);
      }
    }

    lowercaseString = @"0";
    v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_21:
    *(self + 296) = v14;
    v19 = @"_NSAutoVacuumLevel";
    v20[0] = lowercaseString;
    -[NSSQLCore _updateAutoVacuumMetadataWithValues:](*(self + 16), [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1]);
    *(self + 312) &= ~0x20u;
  }

  [(NSSQLiteConnection *)self _ensureNoStatementPrepared];
  v15 = *(self + 136);
  if (!v15)
  {
    v15 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"COMMIT"];
    *(self + 136) = v15;
  }

  [(NSSQLiteConnection *)self prepareSQLStatement:v15];
  v16 = *(self + 136);
  if (v16)
  {
    v17 = *(v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (*(self + 80) != v17)
  {
    [(NSSQLiteConnection *)self cacheCurrentDBStatementOn:v16];
  }

  _execute(self);
  [(NSSQLiteConnection *)self resetSQLStatement];
  *(self + 41) = 0;
  [(NSSQLiteConnection *)self _clearTransactionCaches];
  if (*(self + 40) == 1)
  {
    *(self + 40) = 0;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_ensureNoTransactionOpen
{
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  if (*(self + 40) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Nested transactions are not supported" userInfo:0]);
  }
}

- (void)beginTransaction
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    [(NSSQLiteConnection *)self connect];
    [(NSSQLiteConnection *)self _ensureNoTransactionOpen];
    [(NSSQLiteConnection *)self _ensureNoStatementPrepared];
    v3 = *(self + 128);
    if (!v3)
    {
      v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"BEGIN EXCLUSIVE"];
      *(self + 128) = v3;
    }

    [(NSSQLiteConnection *)self prepareSQLStatement:v3];
    v4 = *(self + 128);
    if (v4)
    {
      v5 = *(v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    if (*(self + 80) != v5)
    {
      [(NSSQLiteConnection *)self cacheCurrentDBStatementOn:v4];
    }

    _execute(self);
    [(NSSQLiteConnection *)self resetSQLStatement];
    *(self + 41) = 0;
    if ((*(self + 40) & 1) == 0)
    {
      *(self + 40) = 1;
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (NSObject)_clearSaveGeneratedCachedStatements
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    result = [(NSSQLiteConnection *)v1 _countOfVMCachedStatements];
    v3 = v1[25];
    if (v3)
    {
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v8;
        do
        {
          v6 = 0;
          do
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(v3);
            }

            [(NSSQLiteStatementCache *)[v1[25] objectForKey:*(*(&v7 + 1) + 8 * v6)] _clearSaveGeneratedCachedStatements];
            v6 = (v6 + 1);
          }

          while (v4 != v6);
          result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)_countOfVMCachedStatements
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 152);
  if (!v2)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v2);
  v4 = Count;
  if (Count <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = Count;
  }

  if (Count >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = (v14 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Count >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    CFDictionaryGetKeysAndValues(*(self + 152), v7, 0);
  }

  else
  {
    bzero(v14 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    CFDictionaryGetKeysAndValues(*(self + 152), v7, 0);
    if (!v4)
    {
      return 0;
    }
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = v7[v9];
    Value = CFDictionaryGetValue(*(self + 152), v10);
    if (Value && (WeakRetained = objc_loadWeakRetained(Value + 1)) != 0)
    {
      ++v8;
    }

    else
    {
      CFDictionaryRemoveValue(*(self + 152), v10);
    }

    ++v9;
  }

  while (v4 != v9);
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v8;
}

- (void)newFetchedArray
{
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = objc_autoreleasePoolPush();
  null = [MEMORY[0x1E695DFB0] null];
  if ((*(self + 312) & 2) != 0)
  {
    v6 = null;
    v61 = v3;
    v7 = *(self + 56);
    v8 = [v7 count];
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = v6;
        if (sqlite3_column_type(*(self + 80), i) != 5)
        {
          v11 = [v7 objectAtIndex:i];
          v12 = *(self + 80);
          v13 = *(self + 8);
          if (v13)
          {
            dispatch_assert_queue_V2(v13);
          }

          sqlType = [v11 sqlType];
          v63 = 0;
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          if (sqlite3_column_type(v12, i) == 5)
          {
LABEL_12:
            v10 = 0;
          }

          else
          {
            switch(sqlType)
            {
              case 0:
                if (v11)
                {
                  v46 = v11[24];
                  if (v46 == 7 || v46 == 4)
                  {
                    goto LABEL_34;
                  }
                }

                goto LABEL_56;
              case 1:
                LODWORD(valuePtr) = sqlite3_column_int(v12, i);
                p_valuePtr = &valuePtr;
                v45 = kCFNumberIntType;
                goto LABEL_36;
              case 2:
              case 3:
LABEL_34:
                v63 = sqlite3_column_int64(v12, i);
                p_valuePtr = &v63;
                v45 = kCFNumberLongLongType;
                goto LABEL_36;
              case 4:
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{sqlite3_column_text(v12, i)}];
                v43 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v42];
                goto LABEL_30;
              case 5:
              case 6:
              case 9:
                v16 = sqlite3_column_text(v12, i);
                v17 = CFStringCreateWithCString(0, v16, 0x8000100u);
                goto LABEL_37;
              case 7:
                valuePtr = sqlite3_column_double(v12, i);
                p_valuePtr = &valuePtr;
                v45 = kCFNumberDoubleType;
LABEL_36:
                v17 = CFNumberCreate(0, v45, p_valuePtr);
                goto LABEL_37;
              case 8:
                v47 = sqlite3_column_double(v12, i);
                v17 = CFDateCreate(0, v47);
                goto LABEL_37;
              case 10:
              case 17:
                v18 = objc_alloc(MEMORY[0x1E695DEF0]);
                v19 = sqlite3_column_blob(v12, i);
                v17 = [v18 initWithBytes:v19 length:{sqlite3_column_bytes(v12, i)}];
                goto LABEL_37;
              case 11:
                if (sqlite3_column_bytes(v12, i) != 16)
                {
                  goto LABEL_12;
                }

                v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{sqlite3_column_blob(v12, i)}];
                goto LABEL_37;
              case 12:
                v20 = sqlite3_column_text(v12, i);
                v21 = CFStringCreateWithCString(0, v20, 0x8000100u);
                v10 = [MEMORY[0x1E695DFF8] URLWithString:v21];
                v22 = v21;
                goto LABEL_20;
              case 13:
                v23 = sqlite3_column_text(v12, i);
                v24 = CFStringCreateWithCString(0, v23, 0x8000100u);
                ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v24, @"/");
                ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
                IntValue = CFStringGetIntValue(ValueAtIndex);
                v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
                v10 = [MEMORY[0x1E696B098] valueWithRange:{IntValue, CFStringGetIntValue(v28)}];
                CFRelease(v24);
                v22 = ArrayBySeparatingStrings;
LABEL_20:
                CFRelease(v22);
                break;
              case 15:
                v40 = objc_alloc(MEMORY[0x1E695DEF0]);
                v41 = sqlite3_column_blob(v12, i);
                v42 = [v40 initWithBytes:v41 length:{sqlite3_column_bytes(v12, i)}];
                v43 = +[_PFRoutines retainedDecodeValue:forTransformableAttribute:](_PFRoutines, v42, [v11 propertyDescription]);
LABEL_30:
                v10 = v43;

                break;
              case 16:
                v29 = sqlite3_column_blob(v12, i);
                v30 = sqlite3_column_bytes(v12, i);
                if (v30 < 1)
                {
                  goto LABEL_12;
                }

                v31 = v30;
                v32 = *v29;
                if (v32 == 3)
                {
                  fileBackedFuturesDirectory = [*(self + 16) fileBackedFuturesDirectory];
                  v49 = [MEMORY[0x1E695DEF0] dataWithBytes:v29 length:v31];
                  v50 = [_NSDataFileBackedFuture alloc];
                  v17 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v50, "initWithStoreMetadata:directory:", v49, [MEMORY[0x1E695DFF8] fileURLWithPath:fileBackedFuturesDirectory isDirectory:1]);
                }

                else
                {
                  if (v32 == 1)
                  {
                    v33 = [_PFExternalReferenceData alloc];
                    v34 = *(self + 16);
                    if (v34)
                    {
                      v35 = (*(v34 + 200) >> 2) & 7;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v31;
                    v37 = v29;
                    v38 = 0;
                    v39 = 0;
                  }

                  else
                  {
                    v51 = [defaultManager stringWithFileSystemRepresentation:v29 + 1 length:{strnlen(v29 + 1, (v30 - 1))}];
                    externalDataReferencesDirectory = [*(self + 16) externalDataReferencesDirectory];
                    v53 = *(self + 16);
                    if (v53)
                    {
                      if (!atomic_load(v53 + 21))
                      {
                        v59 = externalDataReferencesDirectory;
                        [v53 externalDataReferencesDirectory];
                        externalDataReferencesDirectory = v59;
                      }

                      v53 = atomic_load(v53 + 22);
                    }

                    v60 = [externalDataReferencesDirectory stringByAppendingPathComponent:v51];
                    v55 = [v53 stringByAppendingPathComponent:v51];
                    v33 = [_PFExternalReferenceData alloc];
                    v56 = *(self + 16);
                    if (v56)
                    {
                      v35 = (*(v56 + 200) >> 2) & 7;
                    }

                    else
                    {
                      v35 = 0;
                    }

                    v36 = v31;
                    v37 = v29;
                    v38 = v60;
                    v39 = v55;
                  }

                  v17 = [(_PFExternalReferenceData *)v33 initWithStoreBytes:v37 length:v36 externalLocation:v38 safeguardLocation:v39 protectionLevel:v35];
                }

LABEL_37:
                v10 = v17;
                break;
              default:
LABEL_56:
                v58 = [_NSCoreDataException exceptionWithName:256 code:@"fetching not implemented for this value type" reason:0 userInfo:?];
                objc_exception_throw(v58);
            }
          }
        }

        [v5 addObject:v10];
      }
    }

    ++*(self + 88);
    _execute(self);
    v3 = v61;
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (void)disconnect
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [*(v1 + 328) removeAllObjects];
    v25 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: SQLite disconnection"];
    [(NSSQLiteConnection *)v1 _finalizeStatement];
    if (*(v1 + 40) == 1)
    {
      [(NSSQLiteConnection *)v1 rollbackTransaction];
    }

    [(NSSQLiteConnection *)v1 _clearTransactionCaches];
    [(NSSQLiteConnection *)v1 _clearCachedStatements];
    if (!*(v1 + 72))
    {
LABEL_44:

      *(v1 + 304) = 0;
      *(v1 + 312) &= ~2u;
      *(v1 + 72) = 0;
      *(v1 + 80) = 0;

      *(v1 + 24) = 0;
      *(v1 + 32) = 0;
      return [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v25];
    }

    if (+[NSSQLCore debugDefault])
    {
      v3 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Disconnecting from sqlite database.\n", buf, 2u);
          }
        }

        else
        {
          v5 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Disconnecting from sqlite database.\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      _NSCoreDataLog_console(v6, "Disconnecting from sqlite database.");
      objc_autoreleasePoolPop(v3);
    }

    if (![*(v1 + 16) _persistentStoreCoordinator] || objc_msgSend(objc_msgSend(*(v1 + 16), "options"), "objectForKey:", @"NSReadOnlyPersistentStoreOption"))
    {
LABEL_21:
      if (sqlite3_close_v2(*(v1 + 72)))
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v1 + 72))];
        v8 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v9 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v9 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
LABEL_52:
              v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7);
              *buf = 138412290;
              v27 = v24;
              _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
            }
          }
        }

        v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7);
        _NSCoreDataLog_console(1, "%@\n", v16);
        objc_autoreleasePoolPop(v8);
        stmt = 0;
        while (1)
        {
          stmt = sqlite3_next_stmt(*(v1 + 72), stmt);
          if (!stmt)
          {
            goto LABEL_44;
          }

          v18 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v19 = _PFLogGetLogStream(1);
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_42;
              }
            }

            else
            {
              v19 = _PFLogGetLogStream(1);
              if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_42;
              }
            }

            v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], stmt);
            *buf = 138412290;
            v27 = v21;
            _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
          }

LABEL_42:
          v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], stmt);
          _NSCoreDataLog_console(1, "%@\n", v20);
          objc_autoreleasePoolPop(v18);
        }
      }

      goto LABEL_44;
    }

    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = atomic_load((v10 + 208));
      v12 = *(v1 + 72);
      if (v11)
      {
        FileSizeFromJournalHandle = readFileSizeFromJournalHandle(v12);
        if (FileSizeFromJournalHandle >= 41943041)
        {
          v14 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v15 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v27 = FileSizeFromJournalHandle;
                _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)\n", buf, 0xCu);
              }
            }

            else
            {
              v22 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v27 = FileSizeFromJournalHandle;
                _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v23 = 1;
          }

          else
          {
            v23 = 4;
          }

          _NSCoreDataLog_console(v23, "Marking -wal eligible for checkpointing in -disconnect due to its large size (%lld)", FileSizeFromJournalHandle);
          objc_autoreleasePoolPop(v14);
          sqlite3_db_config(*(v1 + 72), 1006, 0, 0);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = *(v1 + 72);
    }

    sqlite3_db_config(v12, 1006, 0, 0);
    goto LABEL_21;
  }

  return result;
}

- (NSObject)_clearCachedStatements
{
  v24 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result[1];
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = *(v1 + 152);
  if (v3)
  {
    Count = CFDictionaryGetCount(v3);
    v5 = Count;
    if (Count <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = Count;
    }

    if (Count >= 0x201)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = (&v19 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (Count >= 0x201)
    {
      v8 = NSAllocateScannedUncollectable();
      CFDictionaryGetKeysAndValues(*(v1 + 152), v8, 0);
    }

    else
    {
      bzero(&v19 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v6);
      CFDictionaryGetKeysAndValues(*(v1 + 152), v8, 0);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    do
    {
      v10 = v8[v9];
      Value = CFDictionaryGetValue(*(v1 + 152), v10);
      if (Value && (WeakRetained = objc_loadWeakRetained(Value + 1)) != 0)
      {
        v13 = WeakRetained;
        [(NSSQLiteStatement *)WeakRetained clearCaches:?];
      }

      else
      {
        CFDictionaryRemoveValue(*(v1 + 152), v10);
      }

      ++v9;
    }

    while (v5 != v9);
    if (v5 >= 0x201)
    {
      NSZoneFree(0, v8);
    }
  }

LABEL_23:
  v14 = *(v1 + 200);
  if (v14)
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v19 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          -[NSSQLiteStatementCache clearCachedStatements]([*(v1 + 200) objectForKey:*(*(&v19 + 1) + 8 * i)]);
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }
  }

  return [(NSSQLiteConnection *)v1 _clearOtherStatements];
}

- (NSObject)_clearOtherStatements
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = *(v1 + 14);
    if (v3)
    {
      sqlite3_finalize(v3);
    }

    *(v1 + 14) = 0;
    v4 = *(v1 + 15);
    if (v4)
    {
      sqlite3_finalize(v4);
    }

    *(v1 + 15) = 0;
    result = *(v1 + 46);
    if (result)
    {
      result = sqlite3_finalize(result);
    }

    *(v1 + 46) = 0;
  }

  return result;
}

- (void)dealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__NSSQLiteConnection_dealloc__block_invoke;
  block[3] = &unk_1E6EC16F0;
  block[4] = self;
  current_queue = dispatch_get_current_queue();
  if (dispatch_get_context(current_queue) == self)
  {
    __29__NSSQLiteConnection_dealloc__block_invoke(block);
  }

  else
  {
    dispatch_sync(self->_queue, block);
  }

  dispatch_release(self->_queue);
  self->_queue = 0;
  v4.receiver = self;
  v4.super_class = NSSQLiteConnection;
  [(NSSQLiteConnection *)&v4 dealloc];
}

void __29__NSSQLiteConnection_dealloc__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
    v3 = *(a1 + 32);
  }

  *(v3 + 16) = 0;

  *(*(a1 + 32) + 376) = 0;
  [(NSSQLiteConnection *)*(a1 + 32) releaseSQLStatement];

  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 64) = 0;
  v5 = *(a1 + 32);
  if (v5[9])
  {
    [(NSSQLiteConnection *)v5 disconnect];
  }

  for (i = 0; i != 5; ++i)
  {
    v7 = *(*(a1 + 32) + 8 * i + 248);
    if (v7)
    {
      for (j = 0; j != 32; j += 8)
      {
        v9 = *(v7 + j);
        if (v9)
        {
          if ((i & 3) == 0)
          {
          }

          *(v7 + j) = 0;
        }
      }

      PF_FREE_OBJECT_ARRAY(*(*(a1 + 32) + 8 * i + 248));
      *(*(a1 + 32) + 8 * i + 248) = 0;
    }
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 200);
  if (v11)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          -[NSSQLiteStatementCache clearCachedStatements]([*(*(a1 + 32) + 200) objectForKey:*(*(&v21 + 1) + 8 * v15++)]);
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    CFRelease(*(*(a1 + 32) + 200));
    v10 = *(a1 + 32);
  }

  *(*(a1 + 32) + 208) = 0;
  *(*(a1 + 32) + 128) = 0;
  *(*(a1 + 32) + 136) = 0;
  *(*(a1 + 32) + 144) = 0;
  v16 = *(a1 + 32);
  v17 = *(v16 + 152);
  if (v17)
  {
    CFRelease(v17);
    v16 = *(a1 + 32);
  }

  *(v16 + 152) = 0;

  *(*(a1 + 32) + 160) = 0;
  *(*(a1 + 32) + 304) = 0;

  *(*(a1 + 32) + 216) = 0;
  *(*(a1 + 32) + 224) = 0;
  v18 = *(a1 + 32);
  v19 = *(v18 + 288);
  if (v19)
  {
    CFRelease(v19);
    *(*(a1 + 32) + 288) = 0;
    v18 = *(a1 + 32);
  }

  *(*(a1 + 32) + 176) = 0;
  *(*(a1 + 32) + 184) = 0;

  *(*(a1 + 32) + 168) = 0;
  *(*(a1 + 32) + 328) = 0;

  *(*(a1 + 32) + 336) = 0;
  *(*(a1 + 32) + 344) = 0;
  v20 = *(*(a1 + 32) + 360);
  if (v20)
  {
    dispatch_block_cancel(v20);
    _Block_release(*(*(a1 + 32) + 360));
    *(*(a1 + 32) + 360) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    objc_opt_self();

    objc_opt_class();
  }
}

- (uint64_t)canConnect
{
  if (result)
  {
    v1 = result;
    if (!*(result + 24))
    {
      *(result + 24) = [*(result + 16) URL];
    }

    if (!*(v1 + 32))
    {
      *(v1 + 32) = [*(v1 + 24) path];
    }

    if (*(v1 + 72))
    {
      return 1;
    }

    v2 = *(v1 + 16);
    if (v2 && (*(v2 + 201) & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v4 = *(v1 + 32);

      return [defaultManager fileExistsAtPath:v4];
    }
  }

  return result;
}

- (uint64_t)_restoreBusyTimeOutSettings
{
  v1 = *(self + 232) * 0.125;
  v2 = 30.0;
  if (v1 >= 30.0)
  {
    v3 = 30000;
  }

  else
  {
    v2 = 2.0;
    if (v1 >= 2.0)
    {
      v2 = ceil(v1);
      v3 = 1000 * vcvtpd_s64_f64(v1);
    }

    else
    {
      v3 = 2000;
    }
  }

  *(self + 240) = v2;
  return sqlite3_busy_timeout(*(self + 72), v3);
}

- (void)fetchMetadata
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_VERSION", @"Z_UUID", @"Z_PLIST", @"Z_METADATA");
  v5 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v4);
  [(NSSQLiteConnection *)self prepareSQLStatement:v5];
  [self execute];
  v6 = *(self + 64);
  if (!v6)
  {
    v7 = [[NSSQLColumn alloc] initWithColumnName:@"Z_VERSION" sqlType:1];
    v8 = [[NSSQLColumn alloc] initWithColumnName:@"Z_UUID" sqlType:6];
    v9 = [[NSSQLColumn alloc] initWithColumnName:@"Z_PLIST" sqlType:10];
    *(self + 64) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, v8, v9, 0}];

    v6 = *(self + 64);
  }

  [(NSSQLiteConnection *)self setColumnsToFetch:v6];
  newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
  v11 = newFetchedArray;
  if (newFetchedArray)
  {
    v12 = [newFetchedArray objectAtIndex:2];
    if (v12 == NSKeyValueCoding_NullValue)
    {
      goto LABEL_13;
    }

    v13 = [v11 objectAtIndex:2];
    v14 = v13;
    if (!v13 || ![v13 length])
    {
      goto LABEL_13;
    }

    v25 = 0;
    v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:&v25];
    v16 = v15;
    if (v15 && ([v15 isNSDictionary] & 1) != 0)
    {
      [v3 setDictionary:v16];
LABEL_13:
      v17 = [v11 objectAtIndex:1];
      if (!v17)
      {
        v24 = [_NSCoreDataException exceptionWithName:259 code:@"Metadata table is missing database UUID." reason:0 userInfo:?];
        objc_exception_throw(v24);
      }

      [v3 setObject:v17 forKey:@"NSStoreUUID"];
      goto LABEL_15;
    }

    v19 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v27 = v14;
      }

      else
      {
        LogStream = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v27 = v14;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: failure reading metadata plist with data bytes: %@\n", buf, 0xCu);
    }

LABEL_24:
    _NSCoreDataLog_console(1, "failure reading metadata plist with data bytes: %@", v14);
    objc_autoreleasePoolPop(v19);
    v21 = v25;
    if (!v25)
    {
      v21 = @"<null>";
    }

    v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, v14);
    v23 = [_NSCoreDataException exceptionWithName:259 code:v22 reason:0 userInfo:?];
    objc_exception_throw(v23);
  }

LABEL_15:

  [(NSSQLiteConnection *)self setColumnsToFetch:?];
  *(self + 312) &= ~2u;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 108) = 0;
  [(NSSQLiteConnection *)self releaseSQLStatement];

  return v3;
}

- (unint64_t)_ensureWalFileExists
{
  if (!self)
  {
    return 0;
  }

  v2 = *(self + 72);
  if (!v2)
  {
    return -1;
  }

  FileSizeFromJournalHandle = readFileSizeFromJournalHandle(v2);
  if (FileSizeFromJournalHandle <= 0x3FF)
  {
    [(NSSQLiteConnection *)self _executeSQLString:?];
    [(NSSQLiteConnection *)self _executeSQLString:?];
    [(NSSQLiteConnection *)self _executeSQLString:?];
    [(NSSQLiteConnection *)self _executeSQLString:?];
  }

  return FileSizeFromJournalHandle;
}

- (void)beginReadTransaction
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    [(NSSQLiteConnection *)self connect];
    [(NSSQLiteConnection *)self _ensureNoTransactionOpen];
    [(NSSQLiteConnection *)self _ensureNoStatementPrepared];
    v3 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"BEGIN TRANSACTION"];
    [(NSSQLiteConnection *)self prepareSQLStatement:v3];
    _execute(self);
    [(NSSQLiteConnection *)self releaseSQLStatement];
    *(self + 41) = 1;

    if ((*(self + 40) & 1) == 0)
    {
      *(self + 40) = 1;
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (void)rollbackTransaction
{
  if (self)
  {
    if (*(self + 72))
    {
      if ((*(self + 312) & 2) != 0)
      {
        v2 = MEMORY[0x1E695DF30];
        v3 = *MEMORY[0x1E695D930];
        v4 = NSStringFromSelector(sel_rollbackTransaction);
        v5 = objc_opt_class();
        [v2 raise:v3 format:{@"%@ -- %@ %p: attempted to rollback a transaction while a fetch was in progress", v4, NSStringFromClass(v5), self}];
      }

      [(NSSQLiteConnection *)self resetSQLStatement];
      v6 = *(self + 144);
      if (!v6)
      {
        v6 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:@"ROLLBACK"];
        *(self + 144) = v6;
      }

      [(NSSQLiteConnection *)self prepareSQLStatement:v6];
      v7 = *(self + 144);
      if (v7)
      {
        v8 = *(v7 + 8);
      }

      else
      {
        v8 = 0;
      }

      if (*(self + 80) != v8)
      {
        [(NSSQLiteConnection *)self cacheCurrentDBStatementOn:v7];
      }

      _execute(self);
      [(NSSQLiteConnection *)self resetSQLStatement];
      *(self + 41) = 0;
      [(NSSQLiteConnection *)self _clearTransactionCaches];
    }

    if (*(self + 40) == 1)
    {
      *(self + 40) = 0;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"NSSQLConnectionRollbackTransactionNotification" object:self];
    }
  }
}

- (_PFSQLiteSnapshotWrapper)currentQueryGenerationIdentifier
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  s = result->_s;
  if (s)
  {
    dispatch_assert_queue_V2(s);
  }

  if ([*(v1 + 41) count])
  {
    lastObject = [*(v1 + 41) lastObject];
    goto LABEL_38;
  }

  v20 = 0;
  v4 = 5;
  do
  {
    [(NSSQLiteConnection *)v1 connect];
    if (([(NSSQLiteConnection *)v1 _ensureWalFileExists]& 0x8000000000000000) != 0)
    {
      v7 = 14;
      goto LABEL_24;
    }

    [(NSSQLiteConnection *)v1 beginReadTransaction];
    v20 = 0;
    lastObject = [(NSSQLiteConnection *)v1 _currentQueryGenerationSnapshot:?];
    if (!lastObject)
    {
      v10 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
LABEL_27:
            *buf = 138412290;
            v22 = v20;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to get a currentQueryGeneration: %@\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "Failed to get a currentQueryGeneration: %@", v20);
      v7 = 0;
      objc_autoreleasePoolPop(v10);
      goto LABEL_23;
    }

    v5 = [(NSSQLiteConnection *)v1 _adoptQueryGenerationWithSnapshot:lastObject];
    v6 = v5;
    if (!v5)
    {
      [*(v1 + 41) addObject:lastObject];

      goto LABEL_38;
    }

    v7 = v5;
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_20;
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        *buf = 67109120;
        LODWORD(v22) = v6;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: currentQueryGenerationIdentifier failed to adopt currentQueryGeneration: %d\n", buf, 8u);
      }
    }

LABEL_20:
    _NSCoreDataLog_console(1, "currentQueryGenerationIdentifier failed to adopt currentQueryGeneration: %d", v6);
    objc_autoreleasePoolPop(v8);

LABEL_23:
    [(NSSQLiteConnection *)v1 rollbackTransaction];
LABEL_24:
    --v4;
  }

  while (v4);
  v12 = v20 == 0;
  v13 = _PFLogGetLogStream(17);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (v12)
  {
    if (v14)
    {
      *buf = 67109120;
      LODWORD(v22) = v7;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: currentQueryGenerationIdentifier failed with sqlite error: %d\n", buf, 8u);
    }

    v19 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v22) = v7;
      v16 = "CoreData: currentQueryGenerationIdentifier failed with sqlite error: %d";
      v17 = v19;
      v18 = 8;
LABEL_43:
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, v16, buf, v18);
    }
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v22 = v20;
      _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: fault: currentQueryGenerationIdentifier failed with NSError: %@\n", buf, 0xCu);
    }

    v15 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v22 = v20;
      v16 = "CoreData: currentQueryGenerationIdentifier failed with NSError: %@";
      v17 = v15;
      v18 = 12;
      goto LABEL_43;
    }
  }

  lastObject = 0;
LABEL_38:
  if (lastObject)
  {
    atomic_fetch_add_explicit(&lastObject->_externalReferences, 1u, memory_order_relaxed);
  }

  return lastObject;
}

- (BOOL)databaseIsEmpty
{
  if (result)
  {
    v1 = *(result + 32);
    memset(&v3.st_size, 0, 48);
    return stat([v1 fileSystemRepresentation], &v3) || v3.st_size == 0;
  }

  return result;
}

- (uint64_t)_hasPersistentHistoryTables
{
  if (!self)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = 0;
  if ([(NSSQLiteConnection *)self _hasTableWithName:0 isTemp:?])
  {
    v3 = [(NSSQLiteConnection *)self _hasTableWithName:0 isTemp:?];
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

- (void)_clearBindVariablesForInsertedRow
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(self + 8);
  if (v2)
  {
    dispatch_assert_queue_V2(v2);
  }

  entity = [*(self + 48) entity];
  attributeColumns = [entity attributeColumns];
  bindVariables = [*(self + 48) bindVariables];
  v6 = [objc_msgSend(entity "foreignEntityKeyColumns")];
  v35 = 0u;
  v36 = 0u;
  v7 = v6 + [objc_msgSend(entity "foreignOrderKeyColumns")] + 3;
  v37 = 0u;
  v38 = 0u;
  foreignKeyColumns = [entity foreignKeyColumns];
  v9 = [foreignKeyColumns countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(foreignKeyColumns);
        }

        v7 += [objc_msgSend(*(*(&v35 + 1) + 8 * i) "toOneRelationship")] ^ 1;
      }

      v10 = [foreignKeyColumns countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  result = [attributeColumns countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (result)
  {
    v14 = result;
    v15 = *v32;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(attributeColumns);
        }

        if (([*(*(&v31 + 1) + 8 * v16) isConstrained] & 1) == 0)
        {
          if (byte_1ED4BEEC7)
          {
            if (([bindVariables isNSArray] & 1) == 0)
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                bindVariables2 = [*(self + 48) bindVariables];
                *buf = 138412290;
                v40 = bindVariables2;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: rdar://145887349, bindings is not an NSArray. %@\n", buf, 0xCu);
              }

              v20 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
              {
                bindVariables3 = [*(self + 48) bindVariables];
                *buf = 138412290;
                v40 = bindVariables3;
                v22 = "CoreData: rdar://145887349, bindings is not an NSArray. %@";
                v23 = v20;
                v24 = 12;
                goto LABEL_31;
              }

LABEL_32:
              __break(1u);
            }

            if (CFArrayGetCount(bindVariables) < v7)
            {
              v25 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                sqlString = [*(self + 48) sqlString];
                bindVariables4 = [*(self + 48) bindVariables];
                *buf = 138412546;
                v40 = sqlString;
                v41 = 2112;
                v42 = bindVariables4;
                _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: rdar://145887349, bidx > bindings. Statement: %@ bindings: %@\n", buf, 0x16u);
              }

              v28 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                sqlString2 = [*(self + 48) sqlString];
                bindVariables5 = [*(self + 48) bindVariables];
                *buf = 138412546;
                v40 = sqlString2;
                v41 = 2112;
                v42 = bindVariables5;
                v22 = "CoreData: rdar://145887349, bidx > bindings. Statement: %@ bindings: %@";
                v23 = v28;
                v24 = 22;
LABEL_31:
                _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, v22, buf, v24);
              }

              goto LABEL_32;
            }
          }

          v17 = v7++;
          [CFArrayGetValueAtIndex(bindVariables v17)];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      result = [attributeColumns countByEnumeratingWithState:&v31 objects:v43 count:16];
      v14 = result;
    }

    while (result);
  }

  return result;
}

- (void)currentStats
{
  v44 = *MEMORY[0x1E69E9840];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (!self)
  {
    return;
  }

  *pHiwtr = 0;
  v3 = sqlite3_db_status(*(self + 72), 8, pHiwtr, &pHiwtr[1], 0);
  if (!v3)
  {
    *a2 = pHiwtr[0];
    goto LABEL_10;
  }

  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v5 = _pflogging_catastrophic_mode == 0;
    LogStream = _PFLogGetLogStream(1);
    v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v7)
      {
LABEL_46:
        v31 = sqlite3_errmsg(*(self + 72));
        *buf = 136315394;
        v41 = v31;
        v42 = 1024;
        v43 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_MISS: %s (%d)\n\n", buf, 0x12u);
      }
    }

    else if (v7)
    {
      goto LABEL_46;
    }
  }

  v8 = sqlite3_errmsg(*(self + 72));
  _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_MISS: %s (%d)\n", v8, v3);
  objc_autoreleasePoolPop(v4);
LABEL_10:
  *pCur = 0;
  v9 = sqlite3_db_status(*(self + 72), 7, pCur, &pCur[1], 0);
  if (!v9)
  {
    *(a2 + 8) = pCur[0];
    goto LABEL_18;
  }

  v10 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v11 = _pflogging_catastrophic_mode == 0;
    v12 = _PFLogGetLogStream(1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
LABEL_47:
        v32 = sqlite3_errmsg(*(self + 72));
        *buf = 136315394;
        v41 = v32;
        v42 = 1024;
        v43 = v9;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_HIT: %s (%d)\n\n", buf, 0x12u);
      }
    }

    else if (v13)
    {
      goto LABEL_47;
    }
  }

  v14 = sqlite3_errmsg(*(self + 72));
  _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_HIT: %s (%d)\n", v14, v9);
  objc_autoreleasePoolPop(v10);
LABEL_18:
  *v37 = 0;
  v15 = sqlite3_db_status(*(self + 72), 12, v37, &v37[1], 0);
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v17 = _pflogging_catastrophic_mode == 0;
      v18 = _PFLogGetLogStream(1);
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v19)
        {
LABEL_48:
          v33 = sqlite3_errmsg(*(self + 72));
          *buf = 136315394;
          v41 = v33;
          v42 = 1024;
          v43 = v15;
          _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to get SQLITE_DBSTATUS_CACHE_SPILL: %s (%d)\n\n", buf, 0x12u);
        }
      }

      else if (v19)
      {
        goto LABEL_48;
      }
    }

    v20 = sqlite3_errmsg(*(self + 72));
    _NSCoreDataLog_console(1, "Unable to get SQLITE_DBSTATUS_CACHE_SPILL: %s (%d)\n", v20, v15);
    objc_autoreleasePoolPop(v16);
    goto LABEL_26;
  }

  *(a2 + 16) = v37[0];
LABEL_26:
  v21 = *(self + 352);
  if (!v21)
  {
    v22 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], @"pragma page_size");
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = v22;
    v23 = [[NSSQLColumn alloc] initWithColumnName:@"page_size" sqlType:2];
    [v35 addObject:v23];

    [(NSSQLiteConnection *)self prepareSQLStatement:v22];
    [(NSSQLiteConnection *)self setColumnsToFetch:v35];
    [self execute];
    v21 = 0;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (1)
    {
      newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
      if (!newFetchedArray)
      {
        break;
      }

      v26 = newFetchedArray;
      if ([newFetchedArray count] == 1)
      {
        v21 = [objc_msgSend(v26 objectAtIndex:{0), "longLongValue"}];
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v27 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v28 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v41 = v21;
                _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: error: Fetched page size: %lld\n", buf, 0xCu);
              }
            }

            else
            {
              v29 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v41 = v21;
                _os_log_impl(&dword_18565F000, v29, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Fetched page size: %lld\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v30 = 1;
          }

          else
          {
            v30 = 4;
          }

          _NSCoreDataLog_console(v30, "Fetched page size: %lld", v21);
          objc_autoreleasePoolPop(v27);
        }
      }
    }

    [(NSSQLiteConnection *)self releaseSQLStatement];
    [(NSSQLiteConnection *)self setColumnsToFetch:?];
    *(self + 312) &= ~2u;
    *(self + 100) = 0;
    *(self + 92) = 0;
    *(self + 108) = 0;

    *(self + 352) = v21;
  }

  *(a2 + 24) = v21;
}

- (uint64_t)_hasHistoryTransactionStringTable
{
  if (result)
  {
    v1 = result;
    if ((*(result + 313) & 4) != 0)
    {
      return 1;
    }

    else
    {
      result = [(NSSQLiteConnection *)result _hasTableWithName:0 isTemp:?];
      if (result)
      {
        v2 = 1024;
      }

      else
      {
        v2 = 0;
      }

      *(v1 + 312) = *(v1 + 312) & 0xFFFFFBFF | v2;
    }
  }

  return result;
}

- (NSSQLitePrefetchRequestCache)prefetchRequestCache
{
  if (result)
  {
    v1 = result;
    result = result[6]._length;
    if (!result)
    {
      result = [[NSSQLitePrefetchRequestCache alloc] initWithSQLCore:v1->_length];
      v1[6]._length = result;
    }
  }

  return result;
}

- (id)fetchTableCreationSQL
{
  if (result)
  {
    return [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
  }

  return result;
}

- (id)_activeGenerations
{
  if (result)
  {
    v1 = [result[41] copy];
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __40__NSSQLiteConnection__activeGenerations__block_invoke;
    v3[3] = &unk_1E6EC40B0;
    v3[4] = v2;
    [v1 enumerateObjectsUsingBlock:v3];

    return v2;
  }

  return result;
}

- (void)_endFetch
{
  if (result)
  {
    v1 = result;
    result = [(NSSQLiteConnection *)result setColumnsToFetch:?];
    *(v1 + 78) &= ~2u;
    *(v1 + 100) = 0;
    *(v1 + 92) = 0;
    *(v1 + 27) = 0;
  }

  return result;
}

- (uint64_t)setUpIndexTracking
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self || ![self[2] _persistentStoreCoordinator])
  {
    return 0;
  }

  if ([self[2] isReadOnly])
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v5 = "CoreData: error: index tracking enabled on read-only store\n";
LABEL_52:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v5, buf, 2u);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v5 = "CoreData: warning: index tracking enabled on read-only store\n";
          goto LABEL_52;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    _NSCoreDataLog_console(v9, "index tracking enabled on read-only store");
    objc_autoreleasePoolPop(v3);
    return 0;
  }

  v6 = self[2];
  if (v6 && (v6[202] & 1) != 0 && ([(NSSQLiteConnection *)self hasIndexTrackingTable]& 1) == 0)
  {
    [(NSSQLiteConnection *)self beginTransaction];
    if (![(NSSQLiteConnection *)self hasIndexTrackingTable])
    {
      v11 = [objc_msgSend(self[2] "ancillarySQLModels")];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 24);
      }

      else
      {
        v13 = 0;
      }

      v14 = objc_opt_class();
      v31 = [v13 objectForKeyedSubscript:NSStringFromClass(v14)];
      if (v12)
      {
        v15 = *(v12 + 32);
      }

      else
      {
        v15 = 0;
      }

      [(NSSQLiteConnection *)self createTablesForEntities:v15];
      v16 = [(NSSQLiteConnection *)self fetchCreationSQLForType:0 containing:?];
      v17 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](self, v31, [v16 count]);
      v18 = v17 != 0;
      v19 = [v16 count];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v16;
      v20 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v20)
      {
        v21 = v17 - v19 + 1;
        v32 = *v38;
LABEL_28:
        v22 = 0;
        while (1)
        {
          if (*v38 != v32)
          {
            objc_enumerationMutation(obj);
          }

          if (!v18)
          {
            break;
          }

          v23 = strstr([objc_msgSend(*(*(&v37 + 1) + 8 * v22) objectAtIndexedSubscript:{1), "UTF8String"}], " INDEX ");
          if (sscanf(v23 + 7, "%1023s", buf))
          {
            [(NSSQLiteConnection *)self prepareInsertStatementForAncillaryEntity:v31];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            bindVariables = [self[6] bindVariables];
            v25 = [bindVariables countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v25)
            {
              v26 = *v34;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v34 != v26)
                  {
                    objc_enumerationMutation(bindVariables);
                  }

                  v28 = *(*(&v33 + 1) + 8 * i);
                  index = [v28 index];
                  if (index)
                  {
                    if (index == 4)
                    {
                      [v28 setValue:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", buf), "uppercaseString")}];
                    }
                  }

                  else
                  {
                    [v28 setInt64:v21++];
                  }
                }

                v25 = [bindVariables countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v25);
            }

            [self execute];
            v18 = 1;
            [(NSSQLiteConnection *)self _clearBindVariablesForInsertedRow];
            [(NSSQLiteConnection *)self releaseSQLStatement];
          }

          else
          {
            v18 = 1;
          }

          if (++v22 == v20)
          {
            v20 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
            if (v20)
            {
              goto LABEL_28;
            }

            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_48:
        if (v18)
        {
          v8 = 1;
          [(NSSQLiteConnection *)self commitTransaction];
          return v8;
        }
      }

      v8 = 0;
      [(NSSQLiteConnection *)self rollbackTransaction];
      return v8;
    }

    [(NSSQLiteConnection *)self rollbackTransaction];
  }

  return 1;
}

- (void)harvestUsedIndexes
{
  if (result)
  {
    v1 = result[43];
    result[43] = objc_alloc_init(MEMORY[0x1E695DF90]);

    return v1;
  }

  return result;
}

- (uint64_t)_walCheckpointWithMode:(uint64_t)mode
{
  v42 = *MEMORY[0x1E69E9840];
  if (!mode)
  {
    return 0;
  }

  v4 = *(mode + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (!*(mode + 72))
  {
    return 26;
  }

  v5 = *(mode + 16);
  if (!v5 || !os_unfair_lock_trylock(v5 + 39))
  {
    return 5;
  }

  *pnCkpt = 0;
  sqlite3_busy_timeout(*(mode + 72), 1);
  v6 = clock_gettime_nsec_np(_CLOCK_REALTIME);
  v7 = sqlite3_wal_checkpoint_v2(*(mode + 72), "main", a2, &pnCkpt[1], pnCkpt);
  v8 = clock_gettime_nsec_np(_CLOCK_REALTIME) - v6;
  if (v8 >= 0x3B9ACA00 && byte_1ED4BEECC == 1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v8 / 0xF4240;
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v12 = qos_class_self();
          *buf = 134218752;
          *v36 = v10;
          *&v36[8] = 1024;
          v37 = v12;
          v38 = 1024;
          v39 = pnCkpt[1];
          v40 = 1024;
          v41 = pnCkpt[0];
          v13 = "CoreData: error: WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d\n";
LABEL_67:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v13, buf, 0x1Eu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v33 = qos_class_self();
          *buf = 134218752;
          *v36 = v10;
          *&v36[8] = 1024;
          v37 = v33;
          v38 = 1024;
          v39 = pnCkpt[1];
          v40 = 1024;
          v41 = pnCkpt[0];
          v13 = "CoreData: warning: WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d\n";
          goto LABEL_67;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v14 = qos_class_self();
      v15 = 1;
    }

    else
    {
      v14 = qos_class_self();
      v15 = 2;
    }

    _NSCoreDataLog_console(v15, "WAL checkpoint: Checkpoint took %llu ms. Requested QoS: %d. Log size: %d checkpointed: %d", v10, v14, pnCkpt[1], pnCkpt[0]);
    objc_autoreleasePoolPop(v9);
  }

  v16 = objc_autoreleasePoolPush();
  switch(v7)
  {
    case 6:
      _pflogInitialize(9);
      IsLogEnabled = _NSCoreDataIsLogEnabled(9);
      v19 = "WAL checkpoint: Database locked";
      if (IsLogEnabled && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v22 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database locked\n", buf, 2u);
          }
        }

        else
        {
          v26 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database locked\n", buf, 2u);
          }
        }

        v19 = "WAL checkpoint: Database locked";
      }

      break;
    case 5:
      _pflogInitialize(9);
      v18 = _NSCoreDataIsLogEnabled(9);
      v19 = "WAL checkpoint: Database busy";
      if (v18 && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v20 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database busy\n", buf, 2u);
          }
        }

        else
        {
          v25 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database busy\n", buf, 2u);
          }
        }

        v19 = "WAL checkpoint: Database busy";
      }

      break;
    case 0:
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v17 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            *v36 = pnCkpt[1];
            *&v36[4] = 1024;
            *&v36[6] = pnCkpt[0];
            _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d\n", buf, 0xEu);
          }
        }

        else
        {
          v28 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 67109376;
            *v36 = pnCkpt[1];
            *&v36[4] = 1024;
            *&v36[6] = pnCkpt[0];
            _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_INFO, "CoreData: debug: WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d\n", buf, 0xEu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v29 = 1;
      }

      else
      {
        v29 = 9;
      }

      _NSCoreDataLog_console(v29, "WAL checkpoint: Database did checkpoint. Log size: %d checkpointed: %d", pnCkpt[1], pnCkpt[0]);
      goto LABEL_61;
    default:
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_65;
          }
        }

        else
        {
          v23 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
LABEL_65:
            v32 = sqlite3_errmsg(*(mode + 72));
            *buf = 136315138;
            *v36 = v32;
            _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: WAL checkpoint: Failed: %s\n", buf, 0xCu);
          }
        }
      }

      v24 = sqlite3_errmsg(*(mode + 72));
      _NSCoreDataLog_console(1, "WAL checkpoint: Failed: %s", v24);
      objc_autoreleasePoolPop(v16);
      goto LABEL_62;
  }

  if (_pflogging_catastrophic_mode)
  {
    v27 = 1;
  }

  else
  {
    v27 = 9;
  }

  _NSCoreDataLog_console(v27, v19);
LABEL_61:
  objc_autoreleasePoolPop(v16);
  [(NSSQLiteConnection *)mode _restoreBusyTimeOutSettings];
LABEL_62:
  v30 = *(mode + 16);
  if (v30)
  {
    os_unfair_lock_unlock(v30 + 39);
  }

  return v7;
}

+ (uint64_t)openAtPath:(void *)path withKey:(sqlite3 *)key handle:(int)handle flags:(const char *)flags module:(char)module checkpointOnClose:
{
  v46 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  ppDb = 0;
  v13 = sqlite3_open_v2(a2, &ppDb, handle, flags);
  if (!ppDb)
  {
    goto LABEL_35;
  }

  if ((module & 1) == 0)
  {
    v14 = sqlite3_db_config(ppDb, 1006, 1, 0);
    if (v14)
    {
      if (!v13)
      {
        v15 = v14;
        v16 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v17 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v19 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v17)
          {
            if (v19)
            {
              *buf = 67109120;
              v45 = v15;
LABEL_54:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed: %d\n", buf, 8u);
            }
          }

          else if (v19)
          {
            *buf = 67109120;
            v45 = v15;
            goto LABEL_54;
          }
        }

        _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_NO_CKPT_ON_CLOSE failed: %d", v15);
        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = sqlite3_db_config(ppDb, 1022, 0, 0);
  if (v20 && !v13)
  {
    v21 = v20;
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v23 = _pflogging_catastrophic_mode;
      v24 = _PFLogGetLogStream(1);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        if (v25)
        {
          *buf = 67109120;
          v45 = v21;
LABEL_46:
          _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_COMMENTS failed: %d\n", buf, 8u);
        }
      }

      else if (v25)
      {
        *buf = 67109120;
        v45 = v21;
        goto LABEL_46;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_COMMENTS failed: %d", v21);
    objc_autoreleasePoolPop(v22);
  }

  v26 = sqlite3_db_config(ppDb, 1020, 0, 0);
  if (v26 && !v13)
  {
    v27 = v26;
    v28 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v29 = _pflogging_catastrophic_mode;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          *buf = 67109120;
          v45 = v27;
LABEL_48:
          _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_CREATE failed: %d\n", buf, 8u);
        }
      }

      else if (v31)
      {
        *buf = 67109120;
        v45 = v27;
        goto LABEL_48;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_CREATE failed: %d", v27);
    objc_autoreleasePoolPop(v28);
  }

  v32 = sqlite3_db_config(ppDb, 1021, 0, 0);
  if (v32 && !v13)
  {
    v33 = v32;
    v34 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v35 = _pflogging_catastrophic_mode;
      v36 = _PFLogGetLogStream(1);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      if (v35)
      {
        if (v37)
        {
          *buf = 67109120;
          v45 = v33;
LABEL_50:
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_WRITE failed: %d\n", buf, 8u);
        }
      }

      else if (v37)
      {
        *buf = 67109120;
        v45 = v33;
        goto LABEL_50;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_db_config for SQLITE_DBCONFIG_ENABLE_ATTACH_WRITE failed: %d", v33);
    objc_autoreleasePoolPop(v34);
  }

LABEL_35:
  if (path)
  {
    if (!v13)
    {
      [path bytes];
      [path length];
      v13 = sqlite3_key_v2();
      if (v13 == 21)
      {
        v38 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v39 = _pflogging_catastrophic_mode;
          v40 = _PFLogGetLogStream(1);
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_ERROR);
          if (v39)
          {
            if (v41)
            {
              *buf = 0;
LABEL_52:
              _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to activate SQLite encryption extension\n", buf, 2u);
            }
          }

          else if (v41)
          {
            *buf = 0;
            goto LABEL_52;
          }
        }

        _NSCoreDataLog_console(1, "Failed to activate SQLite encryption extension");
        objc_autoreleasePoolPop(v38);
        v13 = 21;
      }
    }
  }

  *key = ppDb;
  return v13;
}

- (id)initForSQLCore:(id)core
{
  v21.receiver = self;
  v21.super_class = NSSQLiteConnection;
  v4 = [(NSSQLiteConnection *)&v21 init];
  if (v4)
  {
    if ([objc_msgSend(core "URL")] && (v5 = objc_msgSend(objc_msgSend(core, "URL"), "path")) != 0)
    {
      lastPathComponent = [v5 lastPathComponent];
    }

    else
    {
      lastPathComponent = @"nil";
    }

    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, lastPathComponent);
    _persistentStoreCoordinator = [core _persistentStoreCoordinator];
    if (_persistentStoreCoordinator && (v9 = *(_persistentStoreCoordinator + 24), (v9 >> 2)))
    {
      v10 = dispatch_queue_attr_make_with_qos_class(0, (v9 >> 2), 0);
    }

    else
    {
      v10 = 0;
    }

    v11 = dispatch_queue_create([v7 fileSystemRepresentation], v10);
    v4->_queue = v11;
    dispatch_set_context(v11, v4);
    v4->_sqlCore = core;
    v4->_useSyntaxColoredLogging = +[NSSQLCore coloredLoggingDefault];
    v12 = *MEMORY[0x1E695E480];
    v13 = MEMORY[0x1E695E9E8];
    v4->_vmCachedStatements = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    v4->_pragmaSettings = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    keyCallBacks.version = *MEMORY[0x1E695E9D8];
    *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
    v14 = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.equal = 0;
    keyCallBacks.hash = 0;
    keyCallBacks.copyDescription = v14;
    v4->_cachedEntityUpdateStatements = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_cachedEntityConstrainedValuesUpdateStatements = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_statementCachesByEntity = CFDictionaryCreateMutable(v12, 0, &keyCallBacks, v13);
    v4->_mObjectIDsUpdatedByTriggers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4->_mObjectIDsInsertedByDATriggers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_mObjectIDsUpdatededByDATriggers = objc_alloc_init(MEMORY[0x1E695DF70]);
    options = [(NSPersistentStore *)v4->_sqlCore options];
    v4->_sqlCoreOptions = options;
    v4->_timeOutOption = 0.0;
    v16 = [(NSDictionary *)options objectForKey:@"NSPersistentStoreTimeoutOption"];
    if (v16)
    {
      [v16 doubleValue];
    }

    else
    {
      if (BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
      {
        goto LABEL_15;
      }

      v17 = 0x406E000000000000;
    }

    *&v4->_timeOutOption = v17;
LABEL_15:
    for (i = 0; i != 5; ++i)
    {
      v4->_extraBuffersForRegisteredFunctions[i] = PF_CALLOC_OBJECT_ARRAY(4);
    }

    v4->_dbPathRegisteredWithBackupd = 0;
    *&v4->_sqliteConnectionFlags |= 0x100u;
    v4->_transactionStringName = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_usedIndexes = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (id)initAsQueryGenerationTrackingConnectionForSQLCore:(id)core
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(NSSQLiteConnection *)self initForSQLCore:core];
  if (v3)
  {
    v4 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Initializing query generations"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__NSSQLiteConnection_initAsQueryGenerationTrackingConnectionForSQLCore___block_invoke;
    v6[3] = &unk_1E6EC1330;
    v6[4] = v3;
    v6[5] = &v7;
    [(NSSQLiteConnection *)v3 performAndWait:v6];
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v4];
    if ((v8[3] & 1) == 0)
    {

      v3 = 0;
    }
  }

  if (!*(v8 + 24))
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void *__72__NSSQLiteConnection_initAsQueryGenerationTrackingConnectionForSQLCore___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 312) |= 0x800u;
  *(*(a1 + 32) + 328) = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0;
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSSQLiteConnection *)*(a1 + 32) connect];
  v3 = *(a1 + 32);
  if (v3)
  {
    [(NSSQLiteConnection *)v3 _hasTableWithName:0 isTemp:?];
    v3 = *(a1 + 32);
  }

  v4 = [(NSSQLiteConnection *)v3 _ensureWalFileExists];
  v5 = v4;
  if (v4 >= 41943041)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v19 = v5;
          v8 = "CoreData: error: Force checkpointing -wal while initializing query generations due to its large size (%lld)\n";
LABEL_29:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(2);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v19 = v5;
          v8 = "CoreData: warning: Force checkpointing -wal while initializing query generations due to its large size (%lld)\n";
          goto LABEL_29;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    _NSCoreDataLog_console(v13, "Force checkpointing -wal while initializing query generations due to its large size (%lld)", v5);
    objc_autoreleasePoolPop(v6);
    [(NSSQLiteConnection *)*(a1 + 32) _performPostSaveTasks:0 andForceFullVacuum:?];
    [(NSSQLiteConnection *)*(a1 + 32) _ensureWalFileExists];
LABEL_23:
    *(*(a1 + 32) + 312) |= 0x200u;
    goto LABEL_26;
  }

  if (v4 < 0)
  {
    v15 = [_NSCoreDataException exceptionWithName:14 code:@"failed to open journal file" reason:0 userInfo:?];
    [(_NSCoreDataException *)v15 _setDomain:?];
    objc_exception_throw(v15);
  }

  v9 = sqlite3_snapshot_recover(*(*(a1 + 32) + 72), "main");
  if (v9)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_23;
  }

  v11 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v12 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v19) = v9;
LABEL_31:
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
      }
    }

    else
    {
      v12 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v19) = v9;
        goto LABEL_31;
      }
    }
  }

  _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v9);
  objc_autoreleasePoolPop(v11);
LABEL_26:
  [(NSSQLiteConnection *)*(a1 + 32) _executeSQLString:?];
  [(NSSQLiteConnection *)*(a1 + 32) beginReadTransaction];
  v14 = [(NSSQLiteConnection *)*(a1 + 32) _currentQueryGenerationSnapshot:?];
  [(NSSQLiteConnection *)*(a1 + 32) rollbackTransaction];
  if (v14)
  {

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  [v2 drain];
  result = 0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    return [(NSSQLiteConnection *)*(a1 + 32) disconnect];
  }

  return result;
}

- (void)_performPostSaveTasks:(int)tasks andForceFullVacuum:
{
  v56 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = *(self + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    if (*(self + 72) && ([*(self + 16) isReadOnly] & 1) == 0)
    {
      FileSizeFromJournalHandle = readFileSizeFromJournalHandle(*(self + 72));
      v8 = FileSizeFromJournalHandle <= 0x800000;
      if (FileSizeFromJournalHandle > 0x800000)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v53 = FileSizeFromJournalHandle;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: fileSize %lld greater than prune threshold\n", buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v53 = FileSizeFromJournalHandle;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: PostSaveMaintenance: fileSize %lld greater than prune threshold\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v12 = 1;
        }

        else
        {
          v12 = 9;
        }

        _NSCoreDataLog_console(v12, "PostSaveMaintenance: fileSize %lld greater than prune threshold", FileSizeFromJournalHandle);
        objc_autoreleasePoolPop(v9);
        if (*(self + 296) != 0x7FFFFFFFFFFFFFFFLL)
        {
          *(self + 296) = 0;
        }
      }

      if ((a2 & 1) != 0 || tasks)
      {
        v15 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v16 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              if (a2)
              {
                v17 = @"forceWalCheckpoint";
              }

              else
              {
                v17 = @"forceVacuum";
              }

              *buf = 138412290;
              v53 = v17;
              _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: %@ override\n", buf, 0xCu);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              if (a2)
              {
                v19 = @"forceWalCheckpoint";
              }

              else
              {
                v19 = @"forceVacuum";
              }

              *buf = 138412290;
              v53 = v19;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: %@ override\n", buf, 0xCu);
            }
          }
        }

        if (a2)
        {
          v20 = @"forceWalCheckpoint";
        }

        else
        {
          v20 = @"forceVacuum";
        }

        if (_pflogging_catastrophic_mode)
        {
          v21 = 1;
        }

        else
        {
          v21 = 4;
        }

        _NSCoreDataLog_console(v21, "PostSaveMaintenance: %@ override", v20);
        objc_autoreleasePoolPop(v15);
        if (*(self + 296) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_82:
          v37 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v38 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: wal_checkpoint(TRUNCATE) \n", buf, 2u);
              }
            }

            else
            {
              v39 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: wal_checkpoint(TRUNCATE) \n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v40 = 1;
          }

          else
          {
            v40 = 4;
          }

          _NSCoreDataLog_console(v40, "PostSaveMaintenance: wal_checkpoint(TRUNCATE) ");
          objc_autoreleasePoolPop(v37);
          if ([(NSSQLiteConnection *)self _walCheckpointWithMode:?]- 5 <= 1)
          {
            if (*(self + 8))
            {
              [(NSSQLiteConnection *)self scheduleWALCheckpointAfter:0.1 retry:?];
            }
          }

          return;
        }

        v8 = 0;
        v14 = (self + 296);
        *(self + 296) = 0;
      }

      else
      {
        v13 = *(self + 296);
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_81;
        }

        v14 = (self + 296);
        if (v13)
        {
          *v14 = v13 - 1;
          if (FileSizeFromJournalHandle <= 0x800000)
          {
            return;
          }

          goto LABEL_82;
        }
      }

      if (tasks)
      {
        v22 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
        {
          goto LABEL_75;
        }

        if (_pflogging_catastrophic_mode)
        {
          v23 = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          *buf = 0;
          v24 = "CoreData: error: PostSaveMaintenance: Full Vacuum\n";
        }

        else
        {
          v23 = _PFLogGetLogStream(2);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          *buf = 0;
          v24 = "CoreData: warning: PostSaveMaintenance: Full Vacuum\n";
        }

        _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
LABEL_75:
        if (_pflogging_catastrophic_mode)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        _NSCoreDataLog_console(v35, "PostSaveMaintenance: Full Vacuum");
        objc_autoreleasePoolPop(v22);
        v36 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:?];
        if (v36)
        {
          CFRelease(v36);
        }

        goto LABEL_80;
      }

      v25 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:?];
      v26 = v25;
      if (v25)
      {
        if (CFArrayGetCount(v25))
        {
          v27 = *CFArrayGetValueAtIndex(v26, 0);
          if (!v27)
          {
            *v14 = 10;
            CFRelease(v26);
            v26 = 0;
          }

          v28 = *CFArrayGetValueAtIndex(v26, 1);
          if (v26)
          {
            CFRelease(v26);
          }

          if (v27)
          {
            v29 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:?];
            v30 = v29;
            if (v29)
            {
              if (CFArrayGetCount(v29))
              {
                v31 = *CFArrayGetValueAtIndex(v30, 0);
                if (!v31)
                {
                  *v14 = 10;
                  CFRelease(v30);
                  v30 = 0;
                }

                v32 = *CFArrayGetValueAtIndex(v30, 1);
                if (v30)
                {
                  CFRelease(v30);
                }

                *v14 = 10;
                if (v32)
                {
                  if (a2)
                  {
                    v33 = objc_autoreleasePoolPush();
                    if (_NSCoreDataIsOSLogEnabled(4))
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v34 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 134217984;
                          v53 = v32;
                          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: forced incremental_vacuum - %lld\n", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v45 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 134217984;
                          v53 = v32;
                          _os_log_impl(&dword_18565F000, v45, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: PostSaveMaintenance: forced incremental_vacuum - %lld\n", buf, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v46 = 1;
                    }

                    else
                    {
                      v46 = 4;
                    }

                    _NSCoreDataLog_console(v46, "PostSaveMaintenance: forced incremental_vacuum - %lld", v32);
                    objc_autoreleasePoolPop(v33);
                    v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma incremental_vacuum(%d)", v32];
                    v48 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:v47];

                    if (v48)
                    {
LABEL_115:
                      CFRelease(v48);
                    }
                  }

                  else if (v31)
                  {
                    v41 = (v28 - v32) / v28;
                    if (v32 > 1023 || v41 <= 0.85)
                    {
                      if (v41 >= 0.4)
                      {
                        v42 = v32 / 5;
                      }

                      else
                      {
                        v42 = v32 - (v28 - v32);
                      }

                      v43 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(9))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v44 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 134218240;
                            v53 = v32;
                            v54 = 2048;
                            v55 = v42;
                            _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld\n", buf, 0x16u);
                          }
                        }

                        else
                        {
                          v49 = _PFLogGetLogStream(9);
                          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                          {
                            *buf = 134218240;
                            v53 = v32;
                            v54 = 2048;
                            v55 = v42;
                            _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_INFO, "CoreData: debug: PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld\n", buf, 0x16u);
                          }
                        }
                      }

                      v50 = _pflogging_catastrophic_mode ? 1 : 9;
                      _NSCoreDataLog_console(v50, "PostSaveMaintenance: incremental_vacuum with freelist_count - %lld and pages_to_free %lld", v32, v42);
                      objc_autoreleasePoolPop(v43);
                      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"pragma incremental_vacuum(%d)", v42];
                      v48 = [(NSSQLiteConnection *)self copyRawIntegerRowsForSQL:v51];

                      if (v48)
                      {
                        goto LABEL_115;
                      }
                    }
                  }
                }

LABEL_81:
                if (v8)
                {
                  return;
                }

                goto LABEL_82;
              }

              *v14 = 10;
              CFRelease(v30);
LABEL_80:
              *v14 = 10;
              goto LABEL_81;
            }
          }
        }

        else
        {
          *v14 = 10;
          CFRelease(v26);
        }
      }

      else
      {
        *v14 = 10;
      }

      *v14 = 10;
      goto LABEL_80;
    }
  }
}

- (void)_executeSQLString:(uint64_t)string
{
  *&v97[5] = *MEMORY[0x1E69E9840];
  if (string)
  {
    v4 = *(string + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    context = objc_autoreleasePoolPush();
    ppStmt = 0;
    v94 = 0;
    [(NSSQLiteConnection *)string _ensureDatabaseOpen];
    [(NSSQLiteConnection *)string _ensureNoStatementPrepared];
    [(NSSQLiteConnection *)string _ensureNoFetchInProgress];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v5 = *(string + 42);
      v6 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      v8 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (v5 == 1)
      {
        if (v8)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v97 = a2;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v97 = a2;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v12 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v8)
        {
          if (_pflogging_catastrophic_mode)
          {
            v10 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v97 = a2;
              _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v13 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v97 = a2;
              _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v12 = "%@";
      }

      if (_pflogging_catastrophic_mode)
      {
        v14 = 1;
      }

      else
      {
        v14 = 6;
      }

      _NSCoreDataLog_console(v14, v12, a2);
      objc_autoreleasePoolPop(v6);
    }

    uTF8String = [a2 UTF8String];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0.0;
    while (1)
    {
      for (i = 3 * v17 - 29999; ; i += 3)
      {
        v21 = sqlite3_prepare_v3(*(string + 72), uTF8String, -1, 0, &ppStmt, 0);
        v22 = v21;
        if (v21 > 5u)
        {
          if (v21 <= 0x1Au)
          {
            if (v21 == 14)
            {
              if (v16 > 2)
              {
                goto LABEL_98;
              }

              if (*(string + 232) > 0.0 && v19 == 0.0)
              {
                v19 = CFAbsoluteTimeGetCurrent() + *(string + 232);
              }

              ++v16;
LABEL_51:
              if (v17 <= 0xA)
              {
                v23 = 3 * v17 + 1;
              }

              else
              {
                v23 = v17 + 1101;
              }

LABEL_54:
              usleep(v23);
              goto LABEL_55;
            }

            if (((1 << v21) & 0x220480) != 0)
            {
              goto LABEL_98;
            }

            if (((1 << v21) & 0x4000800) != 0)
            {
              goto LABEL_104;
            }
          }

          if (v21 != 6)
          {
            goto LABEL_122;
          }

          if (*(string + 232) > 0.0 && v19 == 0.0)
          {
            v19 = CFAbsoluteTimeGetCurrent() + *(string + 232);
          }

          goto LABEL_51;
        }

        if (v21 != 5)
        {
          if (!v21)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = 0.0;
            while (1)
            {
              for (j = 3 * v26 - 29999; ; j += 3)
              {
                v30 = sqlite3_step(ppStmt);
                v22 = v30;
                if (v30 > 6u)
                {
                  if (v30 > 0x1Au)
                  {
                    goto LABEL_94;
                  }

                  if (v30 != 14)
                  {
                    if (((1 << v30) & 0x220480) == 0)
                    {
                      if (((1 << v30) & 0x4000800) == 0)
                      {
LABEL_94:
                        if (v30 - 100 < 2)
                        {
                          sqlite3_finalize(ppStmt);
                          objc_autoreleasePoolPop(context);
                          return;
                        }

LABEL_134:
                        v41 = 0;
                        contexta = 0;
LABEL_135:
                        uTF8String2 = sqlite3_errmsg(*(string + 72));
                        v37 = 0;
                        v43 = 1;
LABEL_136:
                        v60 = *(string + 42);
                        v45 = objc_autoreleasePoolPush();
                        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
                        if (v60 == 1)
                        {
                          if (IsOSLogEnabled)
                          {
                            v62 = _pflogging_catastrophic_mode;
                            v48 = _PFLogGetLogStream(1);
                            v63 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
                            if (v62)
                            {
                              if (v63)
                              {
                                goto LABEL_146;
                              }
                            }

                            else if (v63)
                            {
LABEL_146:
                              *buf = 67109378;
                              v97[0] = v22;
                              LOWORD(v97[1]) = 2080;
                              *(&v97[1] + 2) = uTF8String2;
                              _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                            }
                          }

LABEL_147:
                          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_151:
                          objc_autoreleasePoolPop(v45);
                          if (v43)
                          {
                            v37 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], uTF8String, uTF8String2);
                            v41 = 256;
                          }

                          if (ppStmt)
                          {
                            sqlite3_finalize(ppStmt);
                          }

                          v66 = *MEMORY[0x1E695D930];
                          v67 = MEMORY[0x1E695DF20];
                          v68 = *(string + 32);
                          v69 = *MEMORY[0x1E696A368];
                          v70 = [MEMORY[0x1E696AD98] numberWithInt:v22];
                          if (v94)
                          {
                            v71 = [MEMORY[0x1E696AD98] numberWithInteger:?];
                          }

                          else
                          {
                            v71 = 0;
                          }

                          v72 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v66, v41, v37, [v67 dictionaryWithObjectsAndKeys:{v68, v69, v70, @"NSSQLiteErrorDomain", v71, *MEMORY[0x1E696A798], 0}]);
                          v73 = v72;
                          if (contexta)
                          {
                            [(_NSCoreDataException *)v72 _setDomain:?];
                          }

                          objc_exception_throw(v73);
                        }

                        if (IsOSLogEnabled)
                        {
                          v64 = _pflogging_catastrophic_mode;
                          v51 = _PFLogGetLogStream(1);
                          v65 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
                          if (v64)
                          {
                            if (v65)
                            {
                              goto LABEL_149;
                            }
                          }

                          else if (v65)
                          {
LABEL_149:
                            *buf = 67109378;
                            v97[0] = v22;
                            LOWORD(v97[1]) = 2080;
                            *(&v97[1] + 2) = uTF8String2;
                            _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
                          }
                        }

LABEL_150:
                        _NSCoreDataLog_console(1, "(%d) %s");
                        goto LABEL_151;
                      }

LABEL_130:
                      v57 = MEMORY[0x1E696AEC0];
                      v58 = *(string + 32);
                      v59 = sqlite3_errmsg(*(string + 72));
                      v37 = objc_msgSend_stringWithFormat_(v57, v58, v22, v59);
                      v41 = v22;
                      contexta = @"NSSQLiteErrorDomain";
LABEL_132:
                      sqlite3_finalize(ppStmt);
                      ppStmt = 0;
                      [(NSSQLiteConnection *)string _forceDisconnectOnError];
                      if (!v37)
                      {
                        goto LABEL_135;
                      }

                      uTF8String2 = [v37 UTF8String];
                      v43 = 0;
                      goto LABEL_136;
                    }

LABEL_124:
                    v53 = v30;
                    v54 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(string + 72))];
                    if (v53 == 10)
                    {
                      sqlite3_file_control(*(string + 72), 0, 4, &v94);
                    }

                    v55 = *(string + 32);
                    if (v94)
                    {
                      v56 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, v22, v54, v94);
                    }

                    else
                    {
                      v56 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v55, v22, v54);
                    }

                    v37 = v56;
                    if (!v56)
                    {
                      goto LABEL_130;
                    }

                    contexta = 0;
                    v41 = 256;
                    goto LABEL_132;
                  }

                  if (v25 > 2)
                  {
                    goto LABEL_124;
                  }

                  if (*(string + 232) > 0.0 && v28 == 0.0)
                  {
                    v28 = CFAbsoluteTimeGetCurrent() + *(string + 232);
                  }

                  ++v25;
                  goto LABEL_76;
                }

                if (v30 != 5)
                {
                  if (v30 != 6)
                  {
                    if (v30 != 1)
                    {
                      goto LABEL_134;
                    }

                    goto LABEL_124;
                  }

                  sqlite3_reset(ppStmt);
                  if (*(string + 232) > 0.0 && v28 == 0.0)
                  {
                    v28 = CFAbsoluteTimeGetCurrent() + *(string + 232);
                  }

LABEL_76:
                  if (v26 <= 0xA)
                  {
                    v31 = 3 * v26 + 1;
                  }

                  else
                  {
                    v31 = v26 + 1101;
                  }

LABEL_86:
                  usleep(v31);
                  goto LABEL_87;
                }

                sqlite3_reset(ppStmt);
                if (*(string + 232) > 0.0 && v28 == 0.0)
                {
                  v28 = CFAbsoluteTimeGetCurrent() + *(string + 232);
                }

                if (v26 >= 0x2711)
                {
                  if (v26 - 10000 >= 0xB)
                  {
                    v31 = v26 - 8899;
                  }

                  else
                  {
                    v31 = j;
                  }

                  goto LABEL_86;
                }

LABEL_87:
                if (v28 != 0.0)
                {
                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current > v28)
                  {
                    break;
                  }
                }

                ++v26;
              }

              if (v27 > 7)
              {
                v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], Current - v28 + *(string + 232));
                if (+[NSSQLCore debugDefault]< 1)
                {
                  goto LABEL_192;
                }

                v81 = *(string + 42);
                v76 = objc_autoreleasePoolPush();
                v82 = _NSCoreDataIsOSLogEnabled(1);
                if (v81 == 1)
                {
                  if (v82)
                  {
                    v83 = _pflogging_catastrophic_mode;
                    v79 = _PFLogGetLogStream(1);
                    v84 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
                    if (v83)
                    {
                      if (v84)
                      {
                        goto LABEL_186;
                      }
                    }

                    else if (v84)
                    {
                      goto LABEL_186;
                    }
                  }

LABEL_187:
                  _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v22, v74);
LABEL_191:
                  objc_autoreleasePoolPop(v76);
LABEL_192:
                  if (ppStmt)
                  {
                    sqlite3_finalize(ppStmt);
                  }

                  v90 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v74);
                  v91 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v90, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v22), @"NSSQLiteErrorDomain"}]);
                  objc_exception_throw(v91);
                }

                if (v82)
                {
                  v88 = _pflogging_catastrophic_mode;
                  v86 = _PFLogGetLogStream(1);
                  v89 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
                  if (v88)
                  {
                    if (v89)
                    {
                      goto LABEL_189;
                    }
                  }

                  else if (v89)
                  {
                    goto LABEL_189;
                  }
                }

LABEL_190:
                _NSCoreDataLog_console(1, "(%d) %@", v22, v74);
                goto LABEL_191;
              }

              ++v26;
              v28 = Current + *(string + 240);
              ++v27;
            }
          }

          if (v21 == 1)
          {
LABEL_98:
            v33 = v21;
            v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(string + 72))];
            if (v33 == 10)
            {
              sqlite3_file_control(*(string + 72), 0, 4, &v94);
            }

            v35 = *(string + 32);
            if (v94)
            {
              v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, v22, v34, v94);
            }

            else
            {
              v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v35, v22, v34);
            }

            v37 = v36;
            if (v36)
            {
              contexta = 0;
              v41 = 256;
            }

            else
            {
LABEL_104:
              v38 = MEMORY[0x1E696AEC0];
              v39 = *(string + 32);
              v40 = sqlite3_errmsg(*(string + 72));
              v37 = objc_msgSend_stringWithFormat_(v38, v39, v22, v40);
              v41 = v22;
              contexta = @"NSSQLiteErrorDomain";
            }

            sqlite3_finalize(ppStmt);
            ppStmt = 0;
            [(NSSQLiteConnection *)string _forceDisconnectOnError];
            if (v37)
            {
              uTF8String2 = [v37 UTF8String];
              v43 = 0;
            }

            else
            {
LABEL_107:
              uTF8String2 = sqlite3_errmsg(*(string + 72));
              v37 = 0;
              v43 = 1;
            }

            v44 = *(string + 42);
            v45 = objc_autoreleasePoolPush();
            v46 = _NSCoreDataIsOSLogEnabled(1);
            if (v44 == 1)
            {
              if (v46)
              {
                v47 = _pflogging_catastrophic_mode;
                v48 = _PFLogGetLogStream(1);
                v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
                if (v47)
                {
                  if (v49)
                  {
                    goto LABEL_146;
                  }
                }

                else if (v49)
                {
                  goto LABEL_146;
                }
              }

              goto LABEL_147;
            }

            if (v46)
            {
              v50 = _pflogging_catastrophic_mode;
              v51 = _PFLogGetLogStream(1);
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
              if (v50)
              {
                if (v52)
                {
                  goto LABEL_149;
                }
              }

              else if (v52)
              {
                goto LABEL_149;
              }
            }

            goto LABEL_150;
          }

LABEL_122:
          v41 = 0;
          contexta = 0;
          goto LABEL_107;
        }

        if (*(string + 232) > 0.0 && v19 == 0.0)
        {
          v19 = CFAbsoluteTimeGetCurrent() + *(string + 232);
        }

        if (v17 >= 0x2711)
        {
          if (v17 - 10000 >= 0xB)
          {
            v23 = v17 - 8899;
          }

          else
          {
            v23 = i;
          }

          goto LABEL_54;
        }

LABEL_55:
        if (v19 != 0.0)
        {
          v24 = CFAbsoluteTimeGetCurrent();
          if (v24 > v19)
          {
            break;
          }
        }

        ++v17;
      }

      if (v18 > 7)
      {
        v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24 - v19 + *(string + 232));
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_192;
        }

        v75 = *(string + 42);
        v76 = objc_autoreleasePoolPush();
        v77 = _NSCoreDataIsOSLogEnabled(1);
        if (v75 == 1)
        {
          if (v77)
          {
            v78 = _pflogging_catastrophic_mode;
            v79 = _PFLogGetLogStream(1);
            v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
            if (v78)
            {
              if (v80)
              {
LABEL_186:
                *buf = 67109378;
                v97[0] = v22;
                LOWORD(v97[1]) = 2112;
                *(&v97[1] + 2) = v74;
                _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            else if (v80)
            {
              goto LABEL_186;
            }
          }

          goto LABEL_187;
        }

        if (v77)
        {
          v85 = _pflogging_catastrophic_mode;
          v86 = _PFLogGetLogStream(1);
          v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
          if (v85)
          {
            if (v87)
            {
LABEL_189:
              *buf = 67109378;
              v97[0] = v22;
              LOWORD(v97[1]) = 2112;
              *(&v97[1] + 2) = v74;
              _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          else if (v87)
          {
            goto LABEL_189;
          }
        }

        goto LABEL_190;
      }

      ++v17;
      v19 = v24 + *(string + 240);
      ++v18;
    }
  }
}

- (_PFSQLiteSnapshotWrapper)_currentQueryGenerationSnapshot:(_PFSQLiteSnapshotWrapper *)result
{
  v29 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  s = result->_s;
  if (s)
  {
    dispatch_assert_queue_V2(s);
  }

  isa = v3[3].super.isa;
  if (!isa)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
  }

  ppSnapshot = 0;
  v6 = sqlite3_snapshot_get(isa, "main", &ppSnapshot);
  v7 = v6 == 0;
  if (v6 != 517 && v6 != 0)
  {
    if (v6 != 5)
    {
      goto LABEL_18;
    }

    while (1)
    {
      usleep(0x64u);
      v6 = sqlite3_snapshot_get(v3[3].super.isa, "main", &ppSnapshot);
      v7 = v6 == 0;
      if (v6 == 517 || v6 == 0)
      {
        break;
      }

      if (v6 != 5)
      {
        goto LABEL_18;
      }
    }
  }

  if (!v7)
  {
LABEL_18:
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSSQLiteErrorDomain" code:v6 userInfo:0];
    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:
  if (+[NSSQLCore debugDefault]>= 1)
  {
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v13 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
          v14 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
          *buf = 134218754;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          v25 = 2112;
          v26 = v14;
          v27 = 2048;
          v28 = ppSnapshot;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
        }
      }

      else
      {
        v15 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
          v17 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
          *buf = 134218754;
          *&buf[4] = v3;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          v25 = 2112;
          v26 = v17;
          v27 = 2048;
          v28 = ppSnapshot;
          _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
        }
      }
    }

    v18 = _pflogging_catastrophic_mode;
    v19 = [MEMORY[0x1E695DEF0] dataWithBytes:ppSnapshot length:48];
    v20 = [MEMORY[0x1E696B098] valueWithPointer:ppSnapshot];
    v21 = 4;
    if (v18)
    {
      v21 = 1;
    }

    _NSCoreDataLog_console(v21, "connection %p created snapshot:\n\tss %@ value: \n\tpointer value:%@\n\tpointer: %p", v3, v19, v20, ppSnapshot);
    objc_autoreleasePoolPop(v11);
  }

  if (readFileSizeFromJournalHandle(v3[3].super.isa))
  {
    if (ppSnapshot)
    {
      result = [_PFSQLiteSnapshotWrapper alloc];
      if (result)
      {
        v22 = ppSnapshot;
        *buf = result;
        *&buf[8] = _PFSQLiteSnapshotWrapper;
        result = objc_msgSendSuper2(buf, sel_init);
        if (result)
        {
          result->_s = v22;
          result->_flags = 1;
        }
      }
    }

    else
    {
      result = 0;
      if (a2 && v9)
      {
        result = 0;
        *a2 = v9;
      }
    }
  }

  else
  {
    if (a2)
    {
      *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134181 userInfo:0];
    }

    sqlite3_snapshot_free(ppSnapshot);
    return 0;
  }

  return result;
}

- (void)performAndWait:(uint64_t)wait
{
  if (wait)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__30;
    v12 = __Block_byref_object_dispose__30;
    v13 = 0;
    v3 = *(wait + 8);
    if (v3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__NSSQLiteConnection_performAndWait___block_invoke;
      v7[3] = &unk_1E6EC1790;
      v7[4] = a2;
      v7[5] = &v8;
      dispatch_sync(v3, v7);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      (*(a2 + 16))(a2);
      objc_autoreleasePoolPop(v4);
    }

    v5 = v9[5];
    if (v5)
    {
      v6 = v5;
      objc_exception_throw(v9[5]);
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __37__NSSQLiteConnection_performAndWait___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

- (void)_performBlock:(uint64_t)block
{
  if (block)
  {
    v3 = *(block + 8);
    if (v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__NSSQLiteConnection__performBlock___block_invoke;
      block[3] = &unk_1E6EC3ED0;
      block[4] = a2;
      dispatch_async(v3, block);
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      (*(a2 + 16))(a2);
      objc_autoreleasePoolPop(v4);
      v5 = 0;
    }
  }
}

void __36__NSSQLiteConnection__performBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
}

- (CFMutableArrayRef)copyRawIntegerRowsForSQL:(uint64_t)l
{
  *(&v147[3] + 4) = *MEMORY[0x1E69E9840];
  if (!l)
  {
    return 0;
  }

  v4 = *(l + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  callBacks = *byte_1EF3F0ED0;
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
  context = objc_autoreleasePoolPush();
  ppStmt = 0;
  pzTail = 0;
  v142 = 0;
  [(NSSQLiteConnection *)l connect];
  [(NSSQLiteConnection *)l _ensureNoStatementPrepared];
  [(NSSQLiteConnection *)l _ensureNoFetchInProgress];
  if (+[NSSQLCore debugDefault]< 1)
  {
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v6 = *(l + 42);
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    IsLogEnabled = _NSCoreDataIsLogEnabled(6);
    v9 = _pflogging_enable_oslog > 0 && IsLogEnabled;
    if (v6)
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&v147[0] = a2;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&v147[0] = a2;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }
      }

      v13 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
    }

    else
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          v11 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&v147[0] = a2;
            _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&v147[0] = a2;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }
      }

      v13 = "%@";
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 6;
    }

    _NSCoreDataLog_console(v15, v13, a2);
    objc_autoreleasePoolPop(v7);
  }

  uTF8String = [a2 UTF8String];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0.0;
LABEL_29:
  for (i = 3 * v18 - 29999; ; i += 3)
  {
    v22 = strlen(uTF8String);
    v23 = sqlite3_prepare_v2(*(l + 72), uTF8String, v22, &ppStmt, &pzTail);
    if (v23 > 5u)
    {
      if (v23 <= 0x1Au)
      {
        if (v23 == 14)
        {
          if (v17 > 2)
          {
            goto LABEL_130;
          }

          if (*(l + 232) > 0.0 && v20 == 0.0)
          {
            v20 = CFAbsoluteTimeGetCurrent() + *(l + 232);
          }

          ++v17;
LABEL_52:
          if (v18 <= 0xA)
          {
            v24 = 3 * v18 + 1;
          }

          else
          {
            v24 = v18 + 1101;
          }

LABEL_55:
          usleep(v24);
          goto LABEL_56;
        }

        if (((1 << v23) & 0x220480) != 0)
        {
          goto LABEL_130;
        }

        if (((1 << v23) & 0x4000800) != 0)
        {
          goto LABEL_136;
        }
      }

      if (v23 != 6)
      {
        goto LABEL_140;
      }

      if (*(l + 232) > 0.0 && v20 == 0.0)
      {
        v20 = CFAbsoluteTimeGetCurrent() + *(l + 232);
      }

      goto LABEL_52;
    }

    if (v23 != 5)
    {
      break;
    }

    if (*(l + 232) > 0.0 && v20 == 0.0)
    {
      v20 = CFAbsoluteTimeGetCurrent() + *(l + 232);
    }

    if (v18 >= 0x2711)
    {
      if (v18 - 10000 >= 0xB)
      {
        v24 = v18 - 8899;
      }

      else
      {
        v24 = i;
      }

      goto LABEL_55;
    }

LABEL_56:
    if (v20 != 0.0)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 > v20)
      {
        if (v19 <= 7)
        {
          ++v18;
          v20 = v25 + *(l + 240);
          ++v19;
          goto LABEL_29;
        }

        v110 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25 - v20 + *(l + 232));
        if (+[NSSQLCore debugDefault]< 1)
        {
          goto LABEL_246;
        }

        v111 = *(l + 42);
        v112 = objc_autoreleasePoolPush();
        IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
        if (v111)
        {
          if (IsOSLogEnabled)
          {
            v114 = _pflogging_catastrophic_mode == 0;
            v115 = _PFLogGetLogStream(1);
            v116 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);
            if (v114)
            {
              if (v116)
              {
LABEL_240:
                *buf = 67109378;
                LODWORD(v147[0]) = v23;
                WORD2(v147[0]) = 2112;
                *(v147 + 6) = v110;
                _os_log_error_impl(&dword_18565F000, v115, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            else if (v116)
            {
              goto LABEL_240;
            }
          }

          _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v23, v110);
LABEL_245:
          objc_autoreleasePoolPop(v112);
LABEL_246:
          if (ppStmt)
          {
            sqlite3_finalize(ppStmt);
          }

          v130 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v110);
          CFRelease(theArray);
          v131 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v23), @"NSSQLiteErrorDomain"}];
          v132 = [_NSCoreDataException exceptionWithName:134090 code:v130 reason:v131 userInfo:?];
          objc_exception_throw(v132);
        }

        if (IsOSLogEnabled)
        {
          v124 = _pflogging_catastrophic_mode == 0;
          v125 = _PFLogGetLogStream(1);
          v126 = os_log_type_enabled(v125, OS_LOG_TYPE_ERROR);
          if (v124)
          {
            if (v126)
            {
LABEL_243:
              *buf = 67109378;
              LODWORD(v147[0]) = v23;
              WORD2(v147[0]) = 2112;
              *(v147 + 6) = v110;
              _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          else if (v126)
          {
            goto LABEL_243;
          }
        }

        _NSCoreDataLog_console(1, "(%d) %@", v23, v110);
        goto LABEL_245;
      }
    }

    ++v18;
  }

  if (v23)
  {
    if (v23 == 1)
    {
LABEL_130:
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(l + 72))];
      if (v23 == 10)
      {
        sqlite3_file_control(*(l + 72), 0, 4, &v142);
      }

      v50 = *(l + 32);
      if (v142)
      {
        v51 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v50, v23, v49, v142);
      }

      else
      {
        v51 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v50, v23, v49);
      }

      v52 = v51;
      if (v51)
      {
        v139 = 0;
        v56 = 256;
      }

      else
      {
LABEL_136:
        v53 = MEMORY[0x1E696AEC0];
        v54 = *(l + 32);
        v55 = sqlite3_errmsg(*(l + 72));
        v52 = objc_msgSend_stringWithFormat_(v53, v54, v23, v55);
        v56 = v23;
        v139 = @"NSSQLiteErrorDomain";
      }

      sqlite3_finalize(ppStmt);
      ppStmt = 0;
      [(NSSQLiteConnection *)l _forceDisconnectOnError];
      if (v52)
      {
        uTF8String2 = [v52 UTF8String];
        v58 = 0;
        goto LABEL_142;
      }
    }

    else
    {
LABEL_140:
      v56 = 0;
      v139 = 0;
    }

    uTF8String2 = sqlite3_errmsg(*(l + 72));
    v52 = 0;
    v58 = 1;
LABEL_142:
    v59 = *(l + 42);
    v60 = objc_autoreleasePoolPush();
    v61 = _NSCoreDataIsOSLogEnabled(1);
    if (v59)
    {
      if (v61)
      {
        v62 = _pflogging_catastrophic_mode == 0;
        v63 = _PFLogGetLogStream(1);
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
        if (v62)
        {
          if (v64)
          {
            goto LABEL_152;
          }
        }

        else if (v64)
        {
LABEL_152:
          *buf = 67109378;
          LODWORD(v147[0]) = v23;
          WORD2(v147[0]) = 2080;
          *(v147 + 6) = uTF8String2;
          _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
        }
      }

      _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
      goto LABEL_157;
    }

    if (v61)
    {
      v65 = _pflogging_catastrophic_mode == 0;
      v66 = _PFLogGetLogStream(1);
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (v65)
      {
        if (v67)
        {
          goto LABEL_155;
        }
      }

      else if (v67)
      {
LABEL_155:
        *buf = 67109378;
        LODWORD(v147[0]) = v23;
        WORD2(v147[0]) = 2080;
        *(v147 + 6) = uTF8String2;
        _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
      }
    }

    _NSCoreDataLog_console(1, "(%d) %s");
LABEL_157:
    objc_autoreleasePoolPop(v60);
    if (v58)
    {
      v52 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], uTF8String, uTF8String2);
      v56 = 256;
    }

    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    v68 = MEMORY[0x1E695DF20];
    v69 = *(l + 32);
    v70 = [MEMORY[0x1E696AD98] numberWithInt:v23];
    if (v142)
    {
      v71 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    }

    else
    {
      v71 = 0;
    }

    v104 = [v68 dictionaryWithObjectsAndKeys:{v69, *MEMORY[0x1E696A368], v70, @"NSSQLiteErrorDomain", v71, *MEMORY[0x1E696A798], 0}];
    v105 = [_NSCoreDataException exceptionWithName:v56 code:v52 reason:v104 userInfo:?];
    v106 = v105;
    if (v139)
    {
      [(_NSCoreDataException *)v105 _setDomain:v139];
    }

    CFRelease(theArray);
    objc_exception_throw(v106);
  }

  v26 = 0;
  v137 = 0;
  v27 = 0;
  v28 = 0;
  v138 = 0;
  v29 = 0;
  while (2)
  {
    v30 = 0.0;
LABEL_64:
    for (j = 3 * v28 - 29999; ; j += 3)
    {
      v32 = sqlite3_step(ppStmt);
      if (v32 > 6u)
      {
        break;
      }

      if (v32 != 5)
      {
        if (v32 == 6)
        {
          if (!v29)
          {
            sqlite3_reset(ppStmt);
          }

          if (*(l + 232) > 0.0 && v30 == 0.0)
          {
            v30 = CFAbsoluteTimeGetCurrent() + *(l + 232);
          }

LABEL_80:
          if (v28 > 10)
          {
            v33 = v28 + 1101;
          }

          else
          {
            v33 = 3 * (v28 % 11) + 1;
          }

LABEL_92:
          usleep(v33);
          goto LABEL_93;
        }

        if (v32 == 1)
        {
LABEL_164:
          v72 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(l + 72))];
          if (v32 == 10)
          {
            sqlite3_file_control(*(l + 72), 0, 4, &v142);
          }

          v73 = *(l + 32);
          if (v142)
          {
            v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v73, v32, v72, v142);
          }

          else
          {
            v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v73, v32, v72);
          }

          v75 = v74;
          if (v74)
          {
            v140 = 0;
            v79 = 256;
          }

          else
          {
LABEL_170:
            v76 = MEMORY[0x1E696AEC0];
            v77 = *(l + 32);
            v78 = sqlite3_errmsg(*(l + 72));
            v75 = objc_msgSend_stringWithFormat_(v76, v77, v32, v78);
            v79 = v32;
            v140 = @"NSSQLiteErrorDomain";
          }

          sqlite3_finalize(ppStmt);
          ppStmt = 0;
          [(NSSQLiteConnection *)l _forceDisconnectOnError];
          if (v75)
          {
            uTF8String3 = [v75 UTF8String];
            v81 = 0;
            goto LABEL_176;
          }

LABEL_175:
          uTF8String3 = sqlite3_errmsg(*(l + 72));
          v75 = 0;
          v81 = 1;
LABEL_176:
          v82 = *(l + 42);
          v83 = objc_autoreleasePoolPush();
          v84 = _NSCoreDataIsOSLogEnabled(1);
          if (v82)
          {
            if (v84)
            {
              v85 = _pflogging_catastrophic_mode == 0;
              v86 = _PFLogGetLogStream(1);
              v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
              if (v85)
              {
                if (v87)
                {
LABEL_186:
                  *buf = 67109378;
                  LODWORD(v147[0]) = v32;
                  WORD2(v147[0]) = 2080;
                  *(v147 + 6) = uTF8String3;
                  _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
                }
              }

              else if (v87)
              {
                goto LABEL_186;
              }
            }

            _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_191:
            objc_autoreleasePoolPop(v83);
            if (v81)
            {
              v75 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], uTF8String, uTF8String3);
              v79 = 256;
            }

            if (theArray)
            {
              CFRelease(theArray);
            }

            if (ppStmt)
            {
              sqlite3_finalize(ppStmt);
            }

            v91 = MEMORY[0x1E695DF20];
            v92 = *(l + 32);
            v93 = [MEMORY[0x1E696AD98] numberWithInt:v32];
            if (v142)
            {
              v94 = [MEMORY[0x1E696AD98] numberWithInteger:?];
            }

            else
            {
              v94 = 0;
            }

            v107 = [v91 dictionaryWithObjectsAndKeys:{v92, *MEMORY[0x1E696A368], v93, @"NSSQLiteErrorDomain", v94, *MEMORY[0x1E696A798], 0}];
            v108 = [_NSCoreDataException exceptionWithName:v79 code:v75 reason:v107 userInfo:?];
            v109 = v108;
            if (v140)
            {
              [(_NSCoreDataException *)v108 _setDomain:v140];
            }

            objc_exception_throw(v109);
          }

          if (v84)
          {
            v88 = _pflogging_catastrophic_mode == 0;
            v89 = _PFLogGetLogStream(1);
            v90 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
            if (v88)
            {
              if (v90)
              {
LABEL_189:
                *buf = 67109378;
                LODWORD(v147[0]) = v32;
                WORD2(v147[0]) = 2080;
                *(v147 + 6) = uTF8String3;
                _os_log_error_impl(&dword_18565F000, v89, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
              }
            }

            else if (v90)
            {
              goto LABEL_189;
            }
          }

          _NSCoreDataLog_console(1, "(%d) %s");
          goto LABEL_191;
        }

LABEL_174:
        v79 = 0;
        v140 = 0;
        goto LABEL_175;
      }

      if (!v29)
      {
        sqlite3_reset(ppStmt);
      }

      if (*(l + 232) > 0.0 && v30 == 0.0)
      {
        v30 = CFAbsoluteTimeGetCurrent() + *(l + 232);
      }

      if (v28 >= 10001)
      {
        if ((v28 - 10000) >= 0xB)
        {
          v33 = v28 - 8899;
        }

        else
        {
          v33 = j;
        }

        goto LABEL_92;
      }

LABEL_93:
      if (v30 != 0.0)
      {
        v34 = CFAbsoluteTimeGetCurrent();
        if (v34 > v30)
        {
          if (v138 > 7)
          {
            v117 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34 - v30 + *(l + 232));
            if (+[NSSQLCore debugDefault]< 1)
            {
              goto LABEL_256;
            }

            v118 = *(l + 42);
            v119 = objc_autoreleasePoolPush();
            v120 = _NSCoreDataIsOSLogEnabled(1);
            if (v118)
            {
              if (v120)
              {
                v121 = _pflogging_catastrophic_mode == 0;
                v122 = _PFLogGetLogStream(1);
                v123 = os_log_type_enabled(v122, OS_LOG_TYPE_ERROR);
                if (v121)
                {
                  if (v123)
                  {
                    goto LABEL_250;
                  }
                }

                else if (v123)
                {
LABEL_250:
                  *buf = 67109378;
                  LODWORD(v147[0]) = v32;
                  WORD2(v147[0]) = 2112;
                  *(v147 + 6) = v117;
                  _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
                }
              }

              _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v32, v117);
LABEL_255:
              objc_autoreleasePoolPop(v119);
LABEL_256:
              if (theArray)
              {
                CFRelease(theArray);
              }

              if (ppStmt)
              {
                sqlite3_finalize(ppStmt);
              }

              v133 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v117);
              v134 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v32), @"NSSQLiteErrorDomain"}];
              v135 = [_NSCoreDataException exceptionWithName:134090 code:v133 reason:v134 userInfo:?];
              objc_exception_throw(v135);
            }

            if (v120)
            {
              v127 = _pflogging_catastrophic_mode == 0;
              v128 = _PFLogGetLogStream(1);
              v129 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
              if (v127)
              {
                if (v129)
                {
                  goto LABEL_253;
                }
              }

              else if (v129)
              {
LABEL_253:
                *buf = 67109378;
                LODWORD(v147[0]) = v32;
                WORD2(v147[0]) = 2112;
                *(v147 + 6) = v117;
                _os_log_error_impl(&dword_18565F000, v128, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "(%d) %@", v32, v117);
            goto LABEL_255;
          }

          ++v28;
          v30 = v34 + *(l + 240);
          ++v138;
          goto LABEL_64;
        }
      }

      ++v28;
    }

    if (v32 > 0x1Au)
    {
      goto LABEL_100;
    }

    if (v32 == 14)
    {
      if (v27 > 2)
      {
        goto LABEL_164;
      }

      if (*(l + 232) > 0.0 && v30 == 0.0)
      {
        v30 = CFAbsoluteTimeGetCurrent() + *(l + 232);
      }

      ++v27;
      goto LABEL_80;
    }

    if (((1 << v32) & 0x220480) != 0)
    {
      goto LABEL_164;
    }

    if (((1 << v32) & 0x4000800) != 0)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v32 == 100)
    {
      if (!v26)
      {
        v35 = sqlite3_column_count(ppStmt);
        v36 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v36 = malloc_default_zone();
        }

        v26 = malloc_type_zone_malloc(v36, 8uLL, 0x100004000313F17uLL);
        *v26 = v35;
        CFArrayAppendValue(theArray, v26);
        v29 = 1;
        v137 = v35;
      }

      if (v137 > 0)
      {
        v37 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v37 = malloc_default_zone();
        }

        v26 = malloc_type_zone_malloc(v37, 8 * v137, 0x100004000313F17uLL);
        for (k = 0; k != v137; ++k)
        {
          v26[k] = sqlite3_column_int64(ppStmt, k);
        }

        CFArrayAppendValue(theArray, v26);
      }

      continue;
    }

    break;
  }

  if (v32 != 101)
  {
    goto LABEL_174;
  }

  if (!CFArrayGetCount(theArray))
  {
    v39 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v39 = malloc_default_zone();
    }

    v40 = malloc_type_zone_malloc(v39, 8uLL, 0x100004000313F17uLL);
    *v40 = 0;
    CFArrayAppendValue(theArray, v40);
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v41 = *(l + 42);
    v42 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    v43 = _NSCoreDataIsLogEnabled(4);
    v44 = _pflogging_enable_oslog > 0 && v43;
    if (v41)
    {
      if (v44)
      {
        if (_pflogging_catastrophic_mode)
        {
          v45 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v46 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v147[0] = v46 - Current;
            _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: sql execution time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }

        else
        {
          v95 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v96 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v147[0] = v96 - Current;
            _os_log_impl(&dword_18565F000, v95, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql execution time: \x1B[31m%.4f\x1B[0ms\n", buf, 0xCu);
          }
        }
      }

      v97 = "sql execution time: \x1B[31m%.4f\x1B[0ms";
    }

    else
    {
      if (v44)
      {
        if (_pflogging_catastrophic_mode)
        {
          v47 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v48 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v147[0] = v48 - Current;
            _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error: sql execution time: %.4fs\n", buf, 0xCu);
          }
        }

        else
        {
          v98 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
          {
            v99 = CFAbsoluteTimeGetCurrent();
            *buf = 134217984;
            v147[0] = v99 - Current;
            _os_log_impl(&dword_18565F000, v98, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: sql execution time: %.4fs\n", buf, 0xCu);
          }
        }
      }

      v97 = "sql execution time: %.4fs";
    }

    v100 = _pflogging_catastrophic_mode == 0;
    v101 = CFAbsoluteTimeGetCurrent() - Current;
    if (v100)
    {
      v102 = 4;
    }

    else
    {
      v102 = 1;
    }

    _NSCoreDataLog_console(v102, v97, *&v101);
    objc_autoreleasePoolPop(v42);
  }

  sqlite3_finalize(ppStmt);
  objc_autoreleasePoolPop(context);
  return theArray;
}

- (void)_forceDisconnectOnError
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    [*(v1 + 328) removeAllObjects];
    v3 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: SQLite disconnection (forced error)"];
    *(v1 + 40) = 0;
    [(NSSQLiteConnection *)v1 releaseSQLStatement];
    [(NSSQLiteConnection *)v1 _clearTransactionCaches];
    [(NSSQLiteConnection *)v1 _clearCachedStatements];
    if (*(v1 + 72))
    {
      if (+[NSSQLCore debugDefault])
      {
        v4 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Disconnecting from sqlite database due to an error.\n", buf, 2u);
            }
          }

          else
          {
            v6 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              *v8 = 0;
              _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Disconnecting from sqlite database due to an error.\n", v8, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v7 = 1;
        }

        else
        {
          v7 = 4;
        }

        _NSCoreDataLog_console(v7, "Disconnecting from sqlite database due to an error.");
        objc_autoreleasePoolPop(v4);
      }

      sqlite3_close_v2(*(v1 + 72));
    }

    *(v1 + 304) = 0;
    *(v1 + 312) &= ~2u;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    return [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v3];
  }

  return result;
}

- (sqlite3_int64)_fetchMaxPrimaryKeyForEntity:(uint64_t)entity
{
  v39 = *MEMORY[0x1E69E9840];
  if (!entity)
  {
    return 0;
  }

  v4 = *(entity + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(%@) FROM %@", @"Z_PK", objc_msgSend(a2, "tableName")];
  if (+[NSSQLCore debugDefault]>= 1)
  {
    v6 = *(entity + 42);
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    IsLogEnabled = _NSCoreDataIsLogEnabled(6);
    v9 = _pflogging_enable_oslog > 0 && IsLogEnabled;
    if (v6 == 1)
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }
      }

      v13 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
    }

    else
    {
      if (v9)
      {
        if (_pflogging_catastrophic_mode)
        {
          v11 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v14 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v5;
            _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }
      }

      v13 = "%@";
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 6;
    }

    _NSCoreDataLog_console(v15, v13, v5);
    objc_autoreleasePoolPop(v7);
  }

  *buf = 0;
  uTF8String = [v5 UTF8String];
  v17 = v5;
  [(NSSQLiteConnection *)entity _ensureDatabaseOpen];
  [(NSSQLiteConnection *)entity _ensureNoStatementPrepared];
  [(NSSQLiteConnection *)entity _ensureNoFetchInProgress];
  v18 = sqlite3_prepare_v3(*(entity + 72), uTF8String, -1, 0, buf, 0);
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 1;
    while (v19 - 5 <= 1)
    {
      if (v20 >= 0xB)
      {
        v22 = v20 + 1101;
      }

      else
      {
        v22 = v21;
      }

      usleep(v22);
      v19 = sqlite3_prepare_v3(*(entity + 72), uTF8String, -1, 0, buf, 0);
      v21 += 3;
      ++v20;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(entity + 72))];
    if (*buf)
    {
      sqlite3_finalize(*buf);
      *buf = 0;
    }

    goto LABEL_49;
  }

LABEL_34:
  if (!*buf)
  {
    return -1;
  }

  v23 = sqlite3_step(*buf);
  if (v23 != 100)
  {
    v24 = v23;
    v25 = 0;
    v26 = 1;
    while (v24 - 5 <= 1)
    {
      if (v25 >= 0xB)
      {
        v27 = v25 + 1101;
      }

      else
      {
        v27 = v26;
      }

      usleep(v27);
      v24 = sqlite3_step(*buf);
      v26 += 3;
      ++v25;
      if (v24 == 100)
      {
        goto LABEL_42;
      }
    }

    if (*buf)
    {
      sqlite3_finalize(*buf);
      *buf = 0;
    }

    v36 = *MEMORY[0x1E695D930];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v24), @"NSSQLiteErrorDomain"}];
    v35 = @"Fetching maximum primary key for entity failed";
    v34 = v36;
LABEL_53:
    v37 = [_NSCoreDataException exceptionWithName:v34 code:256 reason:v35 userInfo:v33];
    objc_exception_throw(v37);
  }

LABEL_42:
  if (!*buf)
  {
    v19 = 100;
    goto LABEL_56;
  }

  v28 = sqlite3_column_int64(*buf, 0);
  v29 = sqlite3_finalize(*buf);
  *buf = 0;
  if (v29)
  {
    v19 = v29;
LABEL_56:
    v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(entity + 72))];
LABEL_49:
    v32 = *MEMORY[0x1E695D930];
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v19), @"NSSQLiteErrorDomain"}];
    v34 = v32;
    v35 = v31;
    goto LABEL_53;
  }

  return v28;
}

- (sqlite3_int64)fetchMaxPrimaryKeyForEntity:(sqlite3_int64)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    return [(NSSQLiteConnection *)v3 _fetchMaxPrimaryKeyForEntity:a2];
  }

  return result;
}

+ (uint64_t)readMagicWordFromPath:(void *)path options:
{
  objc_opt_self();
  v14 = 0;
  memset(&v13, 0, sizeof(v13));
  v5 = stat(a2, &v13);
  MagicWordFromDBHandle = 0;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v13.st_size == 0;
  }

  v8 = v7;
  if (v5 != 2 && (v8 & 1) == 0)
  {
    if (!strncmp("/dev/null", a2, 9uLL))
    {
      return 0;
    }

    else
    {
      v9 = [NSSQLCore databaseKeyFromOptionsDictionary:path];
      v10 = [NSSQLiteConnection openAtPath:a2 withKey:v9 handle:&v14 flags:1 module:0 checkpointOnClose:0];
      v11 = v14;
      if (v10 == 26)
      {
        MagicWordFromDBHandle = 92;
        if (!v14)
        {
          return MagicWordFromDBHandle;
        }

        goto LABEL_19;
      }

      if (v14)
      {
        if (v10)
        {
          MagicWordFromDBHandle = 92;
        }

        else
        {
          MagicWordFromDBHandle = readMagicWordFromDBHandle(v14);
        }

LABEL_19:
        sqlite3_close_v2(v11);
        return MagicWordFromDBHandle;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return MagicWordFromDBHandle;
}

- (void)createTableForEntity:(void *)entity
{
  if (entity && a2 && !a2[20])
  {
    v3 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([entity adapter], a2);
    [(NSSQLiteConnection *)entity prepareAndExecuteSQLStatement:v3];
  }
}

- (void)prepareAndExecuteSQLStatement:(uint64_t)statement
{
  if (statement)
  {
    v4 = *(statement + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2)
    {
      v5 = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)statement bindTempTablesForStatementIfNecessary:a2];
      [(NSSQLiteConnection *)statement prepareSQLStatement:a2];
      [statement execute];
      [(NSSQLiteConnection *)statement setColumnsToFetch:?];
      *(statement + 312) &= ~2u;
      *(statement + 100) = 0;
      *(statement + 92) = 0;
      *(statement + 108) = 0;
      [(NSSQLiteConnection *)statement releaseSQLStatement];

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (void)createManyToManyTablesForEntity:(void *)entity
{
  if (entity)
  {
    manyToManyRelationships = [a2 manyToManyRelationships];
    v5 = [manyToManyRelationships count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [manyToManyRelationships objectAtIndex:i];
        if (v8)
        {
          v9 = v8;
          if (v8[2].isa)
          {
            if ([(__CFString *)v8 entity]== a2)
            {
              v10 = -[NSSQLiteAdapter newCreateTableStatementForManyToMany:]([entity adapter], v9);
              [(NSSQLiteConnection *)entity prepareAndExecuteSQLStatement:v10];
            }
          }
        }
      }
    }
  }
}

- (void)_createIndexesForEntities:(void *)entities
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [(NSSQLiteConnection *)entities createIndexesForEntity:v8];
        if (v8)
        {
          if (![*(v8 + 152) count])
          {
            goto LABEL_10;
          }

          v9 = *(v8 + 152);
LABEL_9:
          [(NSSQLiteConnection *)entities _createIndexesForEntities:v9];
          goto LABEL_10;
        }

        v10 = [0 count];
        v9 = 0;
        if (v10)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)createIndexesForEntity:(void *)entity
{
  v22 = *MEMORY[0x1E69E9840];
  if (entity)
  {
    v4 = +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSMappingModel migrationDebugLevel]> 0;
    adapter = [entity adapter];
    if (adapter)
    {
      v6 = [(NSSQLiteAdapter *)adapter newCreateIndexStatementsForEntity:a2 defaultIndicesOnly:0];
    }

    else
    {
      v6 = 0;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          if (v4)
          {
            v11 = objc_autoreleasePoolPush();
            _pflogInitialize(4);
            if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v20 = v10;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute create index statement: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v13 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v20 = v10;
                  _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute create index statement: %@\n", buf, 0xCu);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v14 = 1;
            }

            else
            {
              v14 = 4;
            }

            _NSCoreDataLog_console(v14, "  Execute create index statement: %@", v10);
            objc_autoreleasePoolPop(v11);
          }

          [(NSSQLiteConnection *)entity prepareAndExecuteSQLStatement:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }
  }
}

- (void)createTriggersForEntities:(void *)result
{
  v50 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = +[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSMappingModel migrationDebugLevel]> 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    result = [a2 countByEnumeratingWithState:&v39 objects:v49 count:16];
    v28 = result;
    if (result)
    {
      v27 = *v40;
      do
      {
        v30 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(a2);
          }

          v29 = *(*(&v39 + 1) + 8 * v30);
          derivedAttributesExtension = [(NSSQLEntity *)v29 derivedAttributesExtension];
          v5 = derivedAttributesExtension;
          if (!derivedAttributesExtension || ([(NSSQLEntity_DerivedAttributesExtension *)derivedAttributesExtension _generateTriggerSQL], (triggerSQL = v5->_triggerSQL) == 0))
          {
            v24 = MEMORY[0x1E695DF30];
            v47 = @"entity";
            entityDescription = [(NSSQLEntity_DerivedAttributesExtension *)v29 entityDescription];
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&entityDescription forKeys:&v47 count:1];
            objc_exception_throw([v24 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported derivedAttribute" userInfo:v25]);
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v7 = [(NSMutableArray *)triggerSQL countByEnumeratingWithState:&v35 objects:v46 count:16];
          if (v7)
          {
            v8 = *v36;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v36 != v8)
                {
                  objc_enumerationMutation(triggerSQL);
                }

                v10 = *(*(&v35 + 1) + 8 * i);
                if (v3)
                {
                  v11 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      LogStream = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v45 = v10;
                        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute DA trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v13 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v45 = v10;
                        _os_log_impl(&dword_18565F000, v13, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute DA trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v14 = 1;
                  }

                  else
                  {
                    v14 = 4;
                  }

                  _NSCoreDataLog_console(v14, "  Execute DA trigger creation statement: %@", v10);
                  objc_autoreleasePoolPop(v11);
                }

                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v10];
              }

              v7 = [(NSMutableArray *)triggerSQL countByEnumeratingWithState:&v35 objects:v46 count:16];
            }

            while (v7);
          }

          v15 = -[NSSQLiteAdapter newCreateTriggersForEntity:existingRtreeTables:]([v2 adapter], &v29->super.isa, 0);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v16)
          {
            v17 = *v32;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v31 + 1) + 8 * j);
                if (v3)
                {
                  v20 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v21 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v45 = v19;
                        _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v22 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v45 = v19;
                        _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute trigger creation statement: %@\n", buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v23 = 1;
                  }

                  else
                  {
                    v23 = 4;
                  }

                  _NSCoreDataLog_console(v23, "  Execute trigger creation statement: %@", v19);
                  objc_autoreleasePoolPop(v20);
                }

                [(NSSQLiteConnection *)v2 prepareAndExecuteSQLStatement:v19];
              }

              v16 = [v15 countByEnumeratingWithState:&v31 objects:v43 count:16];
            }

            while (v16);
          }

          v30 = v30 + 1;
        }

        while (v30 != v28);
        result = [a2 countByEnumeratingWithState:&v39 objects:v49 count:16];
        v28 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)createTablesForEntities:(void *)result
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          [(NSSQLiteConnection *)v3 createTableForEntity:v8];
          [(NSSQLiteConnection *)v3 createManyToManyTablesForEntity:v8];
        }

        v5 = [a2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(a2);
          }

          [(NSSQLiteConnection *)v3 createIndexesForEntity:?];
        }

        v10 = [a2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }

    return [(NSSQLiteConnection *)v3 createTriggersForEntities:a2];
  }

  return result;
}

- (void)createMetadata
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"CREATE TABLE %@ (%@ INTEGER PRIMARY KEY, %@ VARCHAR(255), %@ BLOB)", @"Z_METADATA", @"Z_VERSION", @"Z_UUID", @"Z_PLIST");
  v4 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v3);
  [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v4];
}

- (void)createMissingHistoryTables
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_msgSend(self[2] "ancillarySQLModels")];
    v4 = v3;
    if (v3)
    {
      v3 = v3[3];
    }

    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    if (v4)
    {
      v4 = v4[4];
    }

    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if ((-[NSSQLiteConnection _hasTableWithName:isTemp:](self, [v10 tableName], 0) & 1) == 0)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      [(NSSQLiteConnection *)self createTablesForEntities:v5];
    }

    objc_autoreleasePoolPop(v2);
  }
}

+ (BOOL)_replacePersistentStoreAtURL:(uint64_t)l destinationOptions:withPersistentStoreFromURL:sourceOptions:error:
{
  MEMORY[0x1EEE9AC00](l);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v103 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  path = [v6 path];
  path2 = [v10 path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  fileSystemRepresentation2 = [path2 fileSystemRepresentation];
  if ([_PFRoutines _isInMemoryStoreURL:v6])
  {
    if (v2)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A250];
      v17 = MEMORY[0x1E695DF20];
      path3 = [v6 path];
      v19 = [v17 dictionaryWithObjectsAndKeys:{path3, *MEMORY[0x1E696A368], 0}];
      v20 = v15;
      v21 = v16;
      v22 = 258;
LABEL_77:
      v59 = [v20 errorWithDomain:v21 code:v22 userInfo:v19];
      result = 0;
LABEL_78:
      *v2 = v59;
      return result;
    }

    return 0;
  }

  if ([_PFRoutines _isInMemoryStoreURL:v10])
  {
    if (v2)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      v25 = MEMORY[0x1E695DF20];
      path4 = [v10 path];
      v19 = [v25 dictionaryWithObjectsAndKeys:{path4, *MEMORY[0x1E696A368], 0}];
      v20 = v23;
      v21 = v24;
      v22 = 514;
      goto LABEL_77;
    }

    return 0;
  }

  v90 = fileSystemRepresentation2;
  v27 = _NSSQLiteConnectionLockProxyValueFromPragmas([v4 objectForKey:?]);
  if (v27)
  {
    v28 = 34;
  }

  else
  {
    v28 = 2;
  }

  v94 = v4;
  v29 = objc_msgSend_valueForKey_(v4);
  if (v29)
  {
    v30 = v29;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v29])
    {
      v28 |= 0x400000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v30])
    {
      v28 |= 0x300000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v30])
    {
      v28 |= 0x200000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v30])
    {
      v28 |= 0x100000u;
      goto LABEL_27;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v30])
    {
      v28 |= 0x700000u;
      goto LABEL_27;
    }

    context = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_26;
    }

    v86 = _pflogging_catastrophic_mode;
    log = _PFLogGetLogStream(1);
    v31 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v86)
    {
      if (v31)
      {
        v102.f_bsize = 138412290;
        *&v102.f_iosize = v30;
LABEL_116:
        _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", &v102, 0xCu);
      }
    }

    else if (v31)
    {
      v102.f_bsize = 138412290;
      *&v102.f_iosize = v30;
      goto LABEL_116;
    }

LABEL_26:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v30);
    objc_autoreleasePoolPop(context);
  }

LABEL_27:
  v96 = 0;
  if ([objc_msgSend(v6 "query")])
  {
    objc_opt_self();
    fileSystemRepresentation = [objc_msgSend(v6 "absoluteString")];
  }

  v32 = [NSSQLCore databaseKeyFromOptionsDictionary:v94];
  v33 = [NSSQLiteConnection openAtPath:fileSystemRepresentation withKey:v32 handle:&v96 flags:v28 module:0 checkpointOnClose:0];
  if (v33)
  {
    v34 = MEMORY[0x1E696ABC0];
    v35 = v33;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open source database", @"reason", path, *MEMORY[0x1E696A368], 0}];
    v37 = v34;
LABEL_31:
    v38 = [v37 errorWithDomain:@"NSSQLiteErrorDomain" code:v35 userInfo:v36];
    v39 = 0;
    goto LABEL_37;
  }

  v40 = v96;
  sqlite3_busy_timeout(v96, 120000);
  if (v27)
  {
    if (([(__CFString *)v27 isEqualToString:@":auto:"]& 1) == 0)
    {
      v41 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v27)];
      v42 = sqlite3_exec(v40, v41, 0, 0, 0);
      if (v42)
      {
        LODWORD(v35) = v42;
        sqlite3_close_v2(v40);
        v96 = 0;
        v43 = MEMORY[0x1E696ABC0];
        v35 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to set file locking on source database", @"reason", v27, @"lock_proxy_file", 0}];
        v37 = v43;
        goto LABEL_31;
      }
    }
  }

  v38 = 0;
  v39 = 1;
LABEL_37:
  v93 = _NSSQLiteConnectionLockProxyValueFromPragmas([v8 objectForKey:@"NSSQLitePragmasOption"]);
  if (v93)
  {
    v44 = 38;
  }

  else
  {
    v44 = 6;
  }

  v45 = objc_msgSend_valueForKey_(v8);
  if (v45)
  {
    v46 = v45;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v45])
    {
      v44 |= 0x400000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v46])
    {
      v44 |= 0x300000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v46])
    {
      v44 |= 0x200000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v46])
    {
      v44 |= 0x100000u;
      goto LABEL_57;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v46])
    {
      v44 |= 0x700000u;
      goto LABEL_57;
    }

    contexta = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_56;
    }

    v91 = v38;
    v47 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v48 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      v38 = v91;
      if (v48)
      {
        v102.f_bsize = 138412290;
        *&v102.f_iosize = v46;
LABEL_118:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", &v102, 0xCu);
      }
    }

    else
    {
      v38 = v91;
      if (v48)
      {
        v102.f_bsize = 138412290;
        *&v102.f_iosize = v46;
        goto LABEL_118;
      }
    }

LABEL_56:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v46);
    objc_autoreleasePoolPop(contexta);
  }

LABEL_57:
  v95 = 0;
  memset(&v102, 0, 512);
  memset(&v101, 0, 512);
  if (!v39)
  {
    goto LABEL_69;
  }

  v92 = v38;
  if (statfs([path UTF8String], &v102) || statfs(objc_msgSend(objc_msgSend(path2, "stringByDeletingLastPathComponent"), "UTF8String"), &v101) || strcmp(v102.f_mntonname, v101.f_mntonname) || (v102.f_flags & 0x1001) != 0x1000 || (v49 = v96, objc_msgSend(path2, "UTF8String"), _sqlite3_db_clone()))
  {
    if ([objc_msgSend(v10 "query")])
    {
      objc_opt_self();
      v50 = [objc_msgSend(v10 "absoluteString")];
    }

    else
    {
      v50 = v90;
    }

    v51 = [NSSQLCore databaseKeyFromOptionsDictionary:v8];
    v52 = [NSSQLiteConnection openAtPath:v50 withKey:v51 handle:&v95 flags:v44 module:0 checkpointOnClose:1];
    if (v52)
    {
      v53 = MEMORY[0x1E696ABC0];
      v54 = v52;
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open destination database", @"reason", path2, *MEMORY[0x1E696A368], 0}];
      v56 = v53;
      v57 = v54;
LABEL_68:
      v38 = [v56 errorWithDomain:@"NSSQLiteErrorDomain" code:v57 userInfo:v55];
LABEL_69:
      if (v96)
      {
        sqlite3_close_v2(v96);
      }

      if (v95)
      {
        sqlite3_close_v2(v95);
      }

      if (v2)
      {
        if (v38)
        {
          result = 0;
          *v2 = v38;
          return result;
        }

        v20 = MEMORY[0x1E696ABC0];
        v21 = *MEMORY[0x1E696A250];
        v22 = 255;
        v19 = 0;
        goto LABEL_77;
      }

      return 0;
    }

    v60 = v95;
    sqlite3_busy_timeout(v95, 120000);
    if (v93)
    {
      if (([(__CFString *)v93 isEqualToString:@":auto:"]& 1) == 0)
      {
        v61 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v93)];
        v62 = sqlite3_exec(v60, v61, 0, 0, 0);
        if (v62)
        {
          v63 = v62;
          sqlite3_close_v2(v60);
          v95 = 0;
          v64 = MEMORY[0x1E696ABC0];
          v55 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to set file locking on destination database", @"reason", v93, @"lock_proxy_file", 0}];
          v56 = v64;
          v57 = v63;
          goto LABEL_68;
        }
      }
    }

    v49 = v96;
    v65 = sqlite3_file_control(v60, 0, 102, v96);
    if (v65)
    {
      v92 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSSQLiteErrorDomain" code:v65 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to replace destination database", @"reason", path2, *MEMORY[0x1E696A368], path, @"Source database Path", 0)}];
      v66 = 0;
      goto LABEL_87;
    }
  }

  else
  {
    v60 = 0;
  }

  v66 = 1;
LABEL_87:
  if (!sqlite3_close_v2(v60))
  {
    goto LABEL_94;
  }

  v67 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v68 = v66;
    v69 = _pflogging_catastrophic_mode;
    v70 = _PFLogGetLogStream(1);
    v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
    if (v69)
    {
      v66 = v68;
      if (v71)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v66 = v68;
      if (v71)
      {
LABEL_113:
        v83 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
        *buf = 138412546;
        v98 = v83;
        v99 = 2112;
        v100 = path2;
        _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error: %@ failed to close destination database %@\n", buf, 0x16u);
      }
    }
  }

  v72 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
  _NSCoreDataLog_console(1, "%@ failed to close destination database %@", v72, path2);
  objc_autoreleasePoolPop(v67);
LABEL_94:
  v73 = sqlite3_close_v2(v49);
  v74 = v94;
  if (!v73)
  {
    goto LABEL_101;
  }

  v75 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v76 = _pflogging_catastrophic_mode;
    v77 = _PFLogGetLogStream(1);
    v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
    if (v76)
    {
      v74 = v94;
      if (v78)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v74 = v94;
      if (v78)
      {
LABEL_114:
        v84 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
        *buf = 138412546;
        v98 = v84;
        v99 = 2112;
        v100 = path2;
        _os_log_error_impl(&dword_18565F000, v77, OS_LOG_TYPE_ERROR, "CoreData: error: %@ failed to close source database %@\n", buf, 0x16u);
      }
    }
  }

  v79 = NSStringFromSelector(sel__replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_error_);
  _NSCoreDataLog_console(1, "%@ failed to close source database %@", v79, path2);
  objc_autoreleasePoolPop(v75);
LABEL_101:
  if ((v66 & 1) == 0)
  {
    if (v2)
    {
      result = 0;
      v59 = v92;
      goto LABEL_78;
    }

    return 0;
  }

  v80 = [v74 objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
  if (v80)
  {
    bOOLValue = [v80 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v82 = [v74 objectForKey:@"NSPersistentStoreForceDestroyOption"];
  if (v82)
  {
    LODWORD(v82) = [v82 BOOLValue];
  }

  return ((bOOLValue | v82) & 1) == 0 || [NSSQLiteConnection _destroyPersistentStoreAtURL:v6 options:v74 error:v2];
}

+ (BOOL)_destroyPersistentStoreAtURL:(void *)l options:(uint64_t *)options error:
{
  v123 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  path = [a2 path];
  fileSystemRepresentation = [path fileSystemRepresentation];
  if (([_PFRoutines _isInMemoryStoreURL:a2]& 1) != 0)
  {
    return 1;
  }

  v11 = [objc_msgSend(path stringByAppendingString:{@"-journal", "fileSystemRepresentation"}];
  v12 = [objc_msgSend(path stringByAppendingString:{@"-wal", "fileSystemRepresentation"}];
  memset(&v116, 0, sizeof(v116));
  if (stat(fileSystemRepresentation, &v116))
  {
    v13 = *__error() == 2;
  }

  else
  {
    v13 = v116.st_size == 0;
  }

  v14 = v13;
  log = v14;
  optionsCopy = options;
  memset(&v119, 0, 512);
  v15 = statfs(fileSystemRepresentation, &v119);
  v16 = (v15 | v119.f_flags & 0x1000) == 0;
  if (stat(v11, &v116))
  {
    v17 = *__error() == 2;
  }

  else
  {
    v17 = v116.st_size == 0;
  }

  v18 = v17;
  v107 = v12;
  v19 = path;
  if (stat(v12, &v116))
  {
    v20 = *__error() == 2;
  }

  else
  {
    v20 = v116.st_size == 0;
  }

  v21 = v20;
  v22 = v11;
  v115 = 0;
  v23 = [l objectForKey:@"NSSQLitePragmasOption"];
  v24 = v23;
  if (v23)
  {
    v25 = _NSSQLiteConnectionLockProxyValueFromPragmas(v23);
  }

  else
  {
    v25 = 0;
  }

  v26 = [v24 objectForKey:@"journal_mode"];
  if (v26 == NSKeyValueCoding_NullValue)
  {
    v26 = 0;
  }

  if (v25)
  {
    v16 = 0;
  }

  if (v16)
  {
    goto LABEL_33;
  }

  if (!v26)
  {
    if (dword_1ED4BEEC0 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if ([@"wal" isEqualToString:{objc_msgSend(v26, "lowercaseString")}])
  {
LABEL_32:
    v115 |= 1u;
  }

LABEL_33:
  if ((log & v18 & v21) == 1 && (v115 & 1) == 0)
  {
    return 1;
  }

  v27 = 6;
  v106 = v25;
  if (!v24)
  {
    v29 = v22;
    v30 = v19;
    v31 = a2;
    goto LABEL_75;
  }

  if (v25)
  {
    v27 = 38;
  }

  else
  {
    v27 = 6;
  }

  v28 = [v24 objectForKey:@"page_size"];
  v29 = v22;
  v30 = v19;
  v31 = a2;
  if (v28)
  {
    v32 = v28;
    HIDWORD(v34) = [v28 intValue] - 1024;
    LODWORD(v34) = HIDWORD(v34);
    v33 = v34 >> 10;
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v35 = v115 | 0x30;
        goto LABEL_57;
      }

      if (v33 == 7)
      {
        v35 = v115 | 0x40;
        goto LABEL_57;
      }
    }

    else
    {
      if (!v33)
      {
        v35 = v115 | 0x10;
        goto LABEL_57;
      }

      if (v33 == 1)
      {
        v35 = v115 | 0x20;
LABEL_57:
        v115 = v35;
        goto LABEL_58;
      }
    }

    v36 = objc_autoreleasePoolPush();
    _pflogInitialize(5);
    IsLogEnabled = _NSCoreDataIsLogEnabled(5);
    v38 = &unk_1EA8C8000;
    if (!IsLogEnabled || _pflogging_enable_oslog < 1)
    {
      goto LABEL_99;
    }

    if (_pflogging_catastrophic_mode)
    {
      loga = _PFLogGetLogStream(1);
      v39 = os_log_type_enabled(loga, OS_LOG_TYPE_ERROR);
      v38 = &unk_1EA8C8000;
      if (v39)
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_error_impl(&dword_18565F000, loga, OS_LOG_TYPE_ERROR, "CoreData: error: ignoring unsupported page_size specified as truncate option: %@\n", buf, 0xCu);
LABEL_98:
        v38 = &unk_1EA8C8000;
      }
    }

    else
    {
      logc = _PFLogGetLogStream(5);
      v54 = os_log_type_enabled(logc, OS_LOG_TYPE_DEFAULT);
      v38 = &unk_1EA8C8000;
      if (v54)
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&dword_18565F000, logc, OS_LOG_TYPE_DEFAULT, "CoreData: warning: ignoring unsupported page_size specified as truncate option: %@\n", buf, 0xCu);
        goto LABEL_98;
      }
    }

LABEL_99:
    if (v38[530])
    {
      v55 = 1;
    }

    else
    {
      v55 = 5;
    }

    _NSCoreDataLog_console(v55, "ignoring unsupported page_size specified as truncate option: %@", v32);
    objc_autoreleasePoolPop(v36);
  }

LABEL_58:
  v40 = [v24 objectForKey:@"auto_vacuum"];
  if (!v40)
  {
    v44 = v115 | 0xC;
LABEL_74:
    v115 = v44;
    goto LABEL_75;
  }

  v41 = v40;
  if ([v40 isNSString])
  {
    lowercaseString = [v41 lowercaseString];
    if ([@"incremental" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"2", "isEqualToString:", lowercaseString))
    {
      intValue = 2;
LABEL_73:
      v44 = v115 | dword_18592E710[intValue];
      goto LABEL_74;
    }

    if ([@"full" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"1", "isEqualToString:", lowercaseString))
    {
      intValue = 1;
      goto LABEL_73;
    }

    if ([@"off" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"0", "isEqualToString:", lowercaseString))
    {
      intValue = 0;
      goto LABEL_73;
    }
  }

  else
  {
    intValue = [v41 intValue];
    if (intValue <= 2)
    {
      goto LABEL_73;
    }
  }

  v45 = objc_autoreleasePoolPush();
  _pflogInitialize(5);
  if (_NSCoreDataIsLogEnabled(5) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: unsupported auto_vacuum setting specified as truncate option: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v52 = _PFLogGetLogStream(5);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_DEFAULT, "CoreData: warning: unsupported auto_vacuum setting specified as truncate option: %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v53 = 1;
  }

  else
  {
    v53 = 5;
  }

  _NSCoreDataLog_console(v53, "unsupported auto_vacuum setting specified as truncate option: %@", v41);
  objc_autoreleasePoolPop(v45);
LABEL_75:
  v47 = objc_msgSend_valueForKey_(l);
  if (!v47)
  {
    goto LABEL_108;
  }

  v48 = v47;
  if ([*MEMORY[0x1E696A3A8] isEqualToString:v47])
  {
    v27 |= 0x400000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A388] isEqualToString:v48])
  {
    v27 |= 0x300000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A380] isEqualToString:v48])
  {
    v27 |= 0x200000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A378] isEqualToString:v48])
  {
    v27 |= 0x100000u;
    goto LABEL_108;
  }

  if ([*MEMORY[0x1E696A398] isEqualToString:v48])
  {
    v27 |= 0x700000u;
    goto LABEL_108;
  }

  v49 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    v50 = _pflogging_catastrophic_mode;
    logb = _PFLogGetLogStream(1);
    v51 = os_log_type_enabled(logb, OS_LOG_TYPE_ERROR);
    if (v50)
    {
      if (v51)
      {
        *buf = 138412290;
        *&buf[4] = v48;
LABEL_202:
        _os_log_error_impl(&dword_18565F000, logb, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else if (v51)
    {
      *buf = 138412290;
      *&buf[4] = v48;
      goto LABEL_202;
    }
  }

  _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v48);
  objc_autoreleasePoolPop(v49);
LABEL_108:
  logd = v29;
  v114 = 0;
  if ([objc_msgSend(v31 "query")])
  {
    objc_opt_self();
    fileSystemRepresentation = [objc_msgSend(v31 "absoluteString")];
  }

  v56 = -6;
  do
  {
    v57 = [NSSQLCore databaseKeyFromOptionsDictionary:l];
    v58 = [NSSQLiteConnection openAtPath:fileSystemRepresentation withKey:v57 handle:&v114 flags:v27 module:0 checkpointOnClose:1];
    if (v58 != 14)
    {
      break;
    }

    if (v114)
    {
      sqlite3_close_v2(v114);
      v114 = 0;
    }

    usleep(0x4E20u);
  }

  while (!__CFADD__(v56++, 1));
  v60 = [l objectForKey:@"NSPersistentStoreForceDestroyOption"];
  if (v60)
  {
    bOOLValue = [v60 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v62 = v114;
  v63 = v16 | bOOLValue;
  if (!v58)
  {
    sqlite3_busy_timeout(v114, 120000);
    v118 = 0;
    v64 = sqlite3_file_control(v62, 0, 7, &v118);
    if (!v118 || v64)
    {
LABEL_128:
      v67 = v106;
      goto LABEL_134;
    }

    if (*v118)
    {
      v65 = (*(*v118 + 16))();
      if (!v65)
      {
        if (*buf != 0x66206574694C5153 || *&buf[7] != 0x332074616D726F66)
        {
          goto LABEL_128;
        }

        v67 = v106;
        if (v121 != 2 || v122 != 2)
        {
          goto LABEL_134;
        }

LABEL_133:
        v115 |= 1u;
LABEL_134:
        if (v67)
        {
          v69 = v67;
          if (([(__CFString *)v67 isEqualToString:@":auto:"]& 1) == 0)
          {
            v70 = [objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] v69)];
            sqlite3_exec(v62, v70, 0, 0, 0);
          }
        }

        if (v63)
        {
          v115 |= 0x80u;
        }

        v71 = -6;
        while (1)
        {
          v72 = sqlite3_file_control(v62, 0, 101, &v115);
          if ((v72 & 0x7F) != 5)
          {
            v58 = v72;
            if ((v72 & 0x7F) != 6)
            {
              goto LABEL_144;
            }

            usleep(0x4E20u);
          }

          v58 = 5;
LABEL_144:
          if (v71)
          {
            ++v71;
            if (v58 == 5)
            {
              continue;
            }
          }

          goto LABEL_146;
        }
      }
    }

    else
    {
      v65 = 1;
    }

    v117 = 0;
    v68 = sqlite3_file_control(v62, 0, 4, &v117);
    v67 = v106;
    if (v65 == 522 || v117 || v68 != 1)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

LABEL_146:
  if (v62)
  {
    sqlite3_close_v2(v62);
  }

  v73 = [l objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
  if (v73)
  {
    v16 |= [v73 BOOLValue];
  }

  v9 = v58 == 0;
  if (v58)
  {
    v74 = v63;
  }

  else
  {
    v74 = 1;
  }

  v75 = optionsCopy;
  if (!v16 || !v74)
  {
    if (!v58)
    {
      return v9;
    }

    v83 = MEMORY[0x1E696ABC0];
    v84 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to truncate database", @"reason", v30, *MEMORY[0x1E696A368], 0}];
    v85 = v83;
    v86 = @"NSSQLiteErrorDomain";
    v87 = v58;
    goto LABEL_183;
  }

  if ((unlink(fileSystemRepresentation) & 0x80000000) == 0 || *__error() == 2)
  {
    v76 = 0;
LABEL_158:
    v77 = 0;
    goto LABEL_159;
  }

  v76 = *__error();
  if (!v76)
  {
    goto LABEL_158;
  }

  v102 = MEMORY[0x1E696ABC0];
  v103 = *MEMORY[0x1E696A798];
  v104 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v30, *MEMORY[0x1E696A368], 0}];
  v105 = v103;
  v29 = logd;
  v77 = [v102 errorWithDomain:v105 code:v76 userInfo:v104];
LABEL_159:
  if ((unlink(v29) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_167;
    }

LABEL_161:
    if (!v77)
    {
      v78 = MEMORY[0x1E696ABC0];
      v79 = *MEMORY[0x1E696A798];
      v80 = MEMORY[0x1E695DF20];
      v81 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
      v82 = v80;
      v75 = optionsCopy;
      v77 = [v78 errorWithDomain:v79 code:v76 userInfo:{objc_msgSend(v82, "dictionaryWithObjectsAndKeys:", v81, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_167;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_167;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_161;
  }

LABEL_167:
  if ((unlink(v107) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_173;
    }

LABEL_169:
    if (!v77)
    {
      v88 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A798];
      v90 = MEMORY[0x1E695DF20];
      v91 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v107];
      v77 = [v88 errorWithDomain:v89 code:v76 userInfo:{objc_msgSend(v90, "dictionaryWithObjectsAndKeys:", v91, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_173;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_173;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_169;
  }

LABEL_173:
  v92 = [objc_msgSend(v30 stringByAppendingString:{@"-shm", "fileSystemRepresentation"}];
  if ((unlink(v92) & 0x80000000) == 0)
  {
    if (!v76)
    {
      goto LABEL_179;
    }

LABEL_175:
    if (!v77)
    {
      v93 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A798];
      v95 = MEMORY[0x1E695DF20];
      v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v92];
      v77 = [v93 errorWithDomain:v94 code:v76 userInfo:{objc_msgSend(v95, "dictionaryWithObjectsAndKeys:", v96, *MEMORY[0x1E696A368], 0)}];
    }

    goto LABEL_179;
  }

  if (*__error() == 2)
  {
    v76 = 0;
    goto LABEL_179;
  }

  v76 = *__error();
  if (v76)
  {
    goto LABEL_175;
  }

LABEL_179:
  v97 = [objc_msgSend(objc_msgSend(v30 "stringByDeletingLastPathComponent")];
  if (unlink(v97) < 0)
  {
    if (*__error() == 2)
    {
      goto LABEL_184;
    }

    v76 = *__error();
    if (!v76)
    {
      goto LABEL_184;
    }
  }

  else if (!v76)
  {
    goto LABEL_184;
  }

  if (!v77)
  {
    v98 = MEMORY[0x1E696ABC0];
    v99 = *MEMORY[0x1E696A798];
    v100 = MEMORY[0x1E695DF20];
    v101 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v97];
    v84 = [v100 dictionaryWithObjectsAndKeys:{v101, *MEMORY[0x1E696A368], 0}];
    v85 = v98;
    v86 = v99;
    v87 = v76;
LABEL_183:
    v77 = [v85 errorWithDomain:v86 code:v87 userInfo:v84];
  }

LABEL_184:
  if (v75 && v77)
  {
    *v75 = v77;
  }

  return v9;
}

+ (BOOL)_rekeyPersistentStoreAtURL:(void *)l options:(void *)options withKey:(uint64_t *)key error:
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = [objc_msgSend(a2 "path")];
  if ([_PFRoutines _isInMemoryStoreURL:a2])
  {
    if (key)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"In-memory stores do not support rekeying", *MEMORY[0x1E696A578], 0}];
LABEL_14:
      v17 = [v10 errorWithDomain:v11 code:134060 userInfo:v12];
      result = 0;
      *key = v17;
      return result;
    }

    return 0;
  }

  if (![options length])
  {
    if (key)
    {
      v10 = MEMORY[0x1E696ABC0];
      v11 = *MEMORY[0x1E696A250];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"New key value must not be empty", *MEMORY[0x1E696A578], 0}];
      goto LABEL_14;
    }

    return 0;
  }

  v13 = [l objectForKey:@"NSSQLitePragmasOption"];
  v14 = 6;
  if (v13)
  {
    if (_NSSQLiteConnectionLockProxyValueFromPragmas(v13))
    {
      v14 = 38;
    }

    else
    {
      v14 = 6;
    }
  }

  v15 = objc_msgSend_valueForKey_(l);
  if (v15)
  {
    v16 = v15;
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v15])
    {
      v14 |= 0x400000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v16])
    {
      v14 |= 0x300000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v16])
    {
      v14 |= 0x200000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v16])
    {
      v14 |= 0x100000u;
      goto LABEL_30;
    }

    if ([*MEMORY[0x1E696A398] isEqualToString:v16])
    {
      v14 |= 0x700000u;
      goto LABEL_30;
    }

    v19 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_29;
    }

    v20 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v22 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        *buf = 138412290;
        *&buf[4] = v16;
LABEL_53:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else if (v22)
    {
      *buf = 138412290;
      *&buf[4] = v16;
      goto LABEL_53;
    }

LABEL_29:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v16);
    objc_autoreleasePoolPop(v19);
  }

LABEL_30:
  *buf = 0;
  if ([objc_msgSend(a2 "query")])
  {
    objc_opt_self();
    v9 = [objc_msgSend(a2 "absoluteString")];
  }

  v23 = [NSSQLCore databaseKeyFromOptionsDictionary:l];
  v24 = [NSSQLiteConnection openAtPath:v9 withKey:v23 handle:buf flags:v14 module:0 checkpointOnClose:1];
  if (v24 == 14)
  {
    optionsCopy = options;
    v25 = -6;
    while (1)
    {
      v26 = *buf;
      if (*buf)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*buf)];
        sqlite3_close_v2(v26);
        *buf = 0;
      }

      else
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(14)];
      }

      usleep(0x4E20u);
      if (__CFADD__(v25++, 1))
      {
        break;
      }

      v29 = [NSSQLCore databaseKeyFromOptionsDictionary:l];
      v30 = [NSSQLiteConnection openAtPath:v9 withKey:v29 handle:buf flags:v14 module:0 checkpointOnClose:1];
      if (v30 != 14)
      {
        v31 = v30;
        options = optionsCopy;
        goto LABEL_41;
      }
    }

    v32 = 0;
  }

  else
  {
    v31 = v24;
    v27 = 0;
LABEL_41:
    v32 = *buf;
    if (v31)
    {
      goto LABEL_46;
    }

    [options bytes];
    [options length];
    if (!sqlite3_rekey_v2())
    {
      v31 = 0;
      goto LABEL_46;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(v32)];
  }

  v31 = 1;
LABEL_46:
  sqlite3_close_v2(v32);
  if (key)
  {
    if (v31)
    {
      *key = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134180 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v27, *MEMORY[0x1E696A578], 0)}];
    }
  }

  return v31 == 0;
}

- (void)clearTempTablesBindingsForStatement:(void *)result
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    result = [a2 bindIntarrays];
    if (result)
    {
      v5 = result;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      result = [result countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v22;
        do
        {
          v8 = 0;
          do
          {
            if (*v22 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v21 + 1) + 8 * v8);
            v10 = v3[1];
            if (v10)
            {
              dispatch_assert_queue_V2(v10);
            }

            index = [v9 index];
            if (index < [v3[38] count])
            {
              [v3[38] objectAtIndex:index];
              v12 = sqlite3_intarray_bind();
              if (v12)
              {
                v17 = v12;
                v18 = *MEMORY[0x1E695D930];
                v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12);
                v20 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v18, 134180, v19, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v17), @"NSSQLiteErrorDomain"}]);
                objc_exception_throw(v20);
              }

              if (+[NSSQLCore debugDefault]>= 1)
              {
                v13 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray values.\n", buf, 2u);
                    }
                  }

                  else
                  {
                    v15 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_18565F000, v15, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray values.\n", buf, 2u);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v16 = 1;
                }

                else
                {
                  v16 = 4;
                }

                _NSCoreDataLog_console(v16, "Bound intarray values.");
                objc_autoreleasePoolPop(v13);
              }
            }

            v8 = (v8 + 1);
          }

          while (v6 != v8);
          result = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
          v6 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)prepareSQLStatement:(uint64_t)statement
{
  v86[1] = *MEMORY[0x1E69E9840];
  if (!statement)
  {
    return;
  }

  v4 = *(statement + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = *(statement + 48);
  if (v5)
  {
    if ([v5 description])
    {
      null = [*(statement + 48) description];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v25 = null;
    v26 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v27 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v29 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v84[0] = v25;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_43;
        }

        *buf = 138412290;
        v84[0] = v25;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: SQL statement is still active / leaked.  sql:'%@'\n", buf, 0xCu);
    }

LABEL_43:
    _NSCoreDataLog_console(1, "SQL statement is still active / leaked.  sql:'%@'", v25);
    objc_autoreleasePoolPop(v26);
    v30 = *MEMORY[0x1E695D930];
    v85 = @"Statement";
    v86[0] = v25;
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v30 reason:@"statement is still active" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v86, &v85, 1)}]);
  }

  *(statement + 48) = a2;
  sqlString = [a2 sqlString];
  v82 = 0;
  [(NSSQLiteConnection *)statement _ensureDatabaseOpen];
  [(NSSQLiteConnection *)statement _ensureNoFetchInProgress];
  v7 = 0;
  if ((*(statement + 313) & 0x10) != 0)
  {
    v7 = +[NSSQLCore debugDefault]> 3;
  }

  v9 = (statement + 80);
  v8 = *(statement + 80);
  *(statement + 88) = 0;
  if (v8)
  {
    return;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    v10 = *(statement + 42);
    v11 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    IsLogEnabled = _NSCoreDataIsLogEnabled(6);
    v13 = _pflogging_enable_oslog > 0 && IsLogEnabled;
    if (v10 == 1)
    {
      if (v13)
      {
        if (_pflogging_catastrophic_mode)
        {
          v14 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }

        else
        {
          v16 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
          }
        }
      }

      v17 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
    }

    else
    {
      if (v13)
      {
        if (_pflogging_catastrophic_mode)
        {
          v15 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v18 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v84[0] = [a2 sqlString];
            _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }
      }

      v17 = "%@";
    }

    v19 = _pflogging_catastrophic_mode;
    sqlString2 = [a2 sqlString];
    v21 = 6;
    if (v19)
    {
      v21 = 1;
    }

    _NSCoreDataLog_console(v21, v17, sqlString2);
    objc_autoreleasePoolPop(v11);
  }

  if (a2)
  {
    v22 = a2[8];
    *v9 = v22;
    if (v22)
    {
      v23 = *(statement + 312) & 0xFFFFFFFE;
      goto LABEL_82;
    }
  }

  else
  {
    *v9 = 0;
  }

  v80 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0.0;
LABEL_46:
  for (i = 3 * v32 - 29999; ; i += 3)
  {
    v35 = sqlite3_prepare_v3(*(statement + 72), [sqlString UTF8String], -1, 1u, (statement + 80), 0);
    v36 = v35;
    if (v35 > 5u)
    {
      if (v35 <= 0x1Au)
      {
        if (v35 == 14)
        {
          if (v31 > 2)
          {
            goto LABEL_85;
          }

          if (*(statement + 232) > 0.0 && v33 == 0.0)
          {
            v33 = CFAbsoluteTimeGetCurrent() + *(statement + 232);
          }

          ++v31;
LABEL_69:
          if (v32 <= 0xA)
          {
            v37 = 3 * v32 + 1;
          }

          else
          {
            v37 = v32 + 1101;
          }

LABEL_72:
          usleep(v37);
          goto LABEL_73;
        }

        if (((1 << v35) & 0x220480) != 0)
        {
          goto LABEL_85;
        }

        if (((1 << v35) & 0x4000800) != 0)
        {
          goto LABEL_91;
        }
      }

      if (v35 != 6)
      {
        goto LABEL_95;
      }

      if (*(statement + 232) > 0.0 && v33 == 0.0)
      {
        v33 = CFAbsoluteTimeGetCurrent() + *(statement + 232);
      }

      goto LABEL_69;
    }

    if (v35 != 5)
    {
      break;
    }

    if (*(statement + 232) > 0.0 && v33 == 0.0)
    {
      v33 = CFAbsoluteTimeGetCurrent() + *(statement + 232);
    }

    if (v32 >= 0x2711)
    {
      if (v32 - 10000 >= 0xB)
      {
        v37 = v32 - 8899;
      }

      else
      {
        v37 = i;
      }

      goto LABEL_72;
    }

LABEL_73:
    if (v33 != 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current > v33)
      {
        if (v80 > 7)
        {
          v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], Current - v33 + *(statement + 232));
          if (+[NSSQLCore debugDefault]< 1)
          {
            goto LABEL_137;
          }

          v69 = *(statement + 42);
          v70 = objc_autoreleasePoolPush();
          IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
          if (v69 == 1)
          {
            if (IsOSLogEnabled)
            {
              v72 = _pflogging_catastrophic_mode;
              v73 = _PFLogGetLogStream(1);
              v74 = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
              if (v72)
              {
                if (v74)
                {
                  goto LABEL_131;
                }
              }

              else if (v74)
              {
LABEL_131:
                *buf = 67109378;
                LODWORD(v84[0]) = v36;
                WORD2(v84[0]) = 2112;
                *(v84 + 6) = v68;
                _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m\n", buf, 0x12u);
              }
            }

            _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %@\x1B[0m", v36, v68);
LABEL_136:
            objc_autoreleasePoolPop(v70);
LABEL_137:
            v78 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v68);
            *(statement + 312) &= ~2u;
            [(NSSQLiteConnection *)statement releaseSQLStatement];
            v79 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134090, v78, [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v36), @"NSSQLiteErrorDomain"}]);
            objc_exception_throw(v79);
          }

          if (IsOSLogEnabled)
          {
            v75 = _pflogging_catastrophic_mode;
            v76 = _PFLogGetLogStream(1);
            v77 = os_log_type_enabled(v76, OS_LOG_TYPE_ERROR);
            if (v75)
            {
              if (v77)
              {
                goto LABEL_134;
              }
            }

            else if (v77)
            {
LABEL_134:
              *buf = 67109378;
              LODWORD(v84[0]) = v36;
              WORD2(v84[0]) = 2112;
              *(v84 + 6) = v68;
              _os_log_error_impl(&dword_18565F000, v76, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %@\n", buf, 0x12u);
            }
          }

          _NSCoreDataLog_console(1, "(%d) %@", v36, v68);
          goto LABEL_136;
        }

        ++v32;
        v33 = Current + *(statement + 240);
        ++v80;
        goto LABEL_46;
      }
    }

    ++v32;
  }

  if (v35)
  {
    if (v35 != 1)
    {
LABEL_95:
      v48 = 0;
      v81 = 0;
LABEL_96:
      uTF8String = sqlite3_errmsg(*(statement + 72));
      v44 = 0;
      v50 = 1;
LABEL_97:
      v51 = *(statement + 42);
      v52 = objc_autoreleasePoolPush();
      v53 = _NSCoreDataIsOSLogEnabled(1);
      if (v51 == 1)
      {
        if (v53)
        {
          v54 = _pflogging_catastrophic_mode;
          v55 = _PFLogGetLogStream(1);
          v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
          if (v54)
          {
            if (v56)
            {
LABEL_107:
              *buf = 67109378;
              LODWORD(v84[0]) = v36;
              WORD2(v84[0]) = 2080;
              *(v84 + 6) = uTF8String;
              _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
            }
          }

          else if (v56)
          {
            goto LABEL_107;
          }
        }

        _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
        goto LABEL_112;
      }

      if (v53)
      {
        v57 = _pflogging_catastrophic_mode;
        v58 = _PFLogGetLogStream(1);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
        if (v57)
        {
          if (v59)
          {
LABEL_110:
            *buf = 67109378;
            LODWORD(v84[0]) = v36;
            WORD2(v84[0]) = 2080;
            *(v84 + 6) = uTF8String;
            _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
          }
        }

        else if (v59)
        {
          goto LABEL_110;
        }
      }

      _NSCoreDataLog_console(1, "(%d) %s");
LABEL_112:
      objc_autoreleasePoolPop(v52);
      if (v50)
      {
        v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [*(statement + 48) sqlString], uTF8String);
        v48 = 256;
      }

      *(statement + 312) &= 0xFFFFEFFD;
      [(NSSQLiteConnection *)statement releaseSQLStatement];
      v60 = *MEMORY[0x1E695D930];
      v61 = MEMORY[0x1E695DF20];
      v62 = *(statement + 32);
      v63 = *MEMORY[0x1E696A368];
      v64 = [MEMORY[0x1E696AD98] numberWithInt:v36];
      if (v82)
      {
        v65 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      }

      else
      {
        v65 = 0;
      }

      v66 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v60, v48, v44, [v61 dictionaryWithObjectsAndKeys:{v62, v63, v64, @"NSSQLiteErrorDomain", v65, *MEMORY[0x1E696A798], 0}]);
      v67 = v66;
      if (v81)
      {
        [(_NSCoreDataException *)v66 _setDomain:v81];
      }

      objc_exception_throw(v67);
    }

LABEL_85:
    v39 = v35;
    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(statement + 72))];
    if (v39 == 10)
    {
      sqlite3_file_control(*(statement + 72), 0, 4, &v82);
      v41 = MEMORY[0x1E696AEC0];
      v42 = *(statement + 32);
      if (v82)
      {
        v43 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, v36, v40, v82);
        goto LABEL_90;
      }
    }

    else
    {
      v41 = MEMORY[0x1E696AEC0];
      v42 = *(statement + 32);
    }

    v43 = objc_msgSend_stringWithFormat_(v41, v42, v36, v40);
LABEL_90:
    v44 = v43;
    if (v43)
    {
      [(NSSQLiteConnection *)statement _forceDisconnectOnError];
      v81 = 0;
      v48 = 256;
    }

    else
    {
LABEL_91:
      v45 = MEMORY[0x1E696AEC0];
      v46 = *(statement + 32);
      v47 = sqlite3_errmsg(*(statement + 72));
      v44 = objc_msgSend_stringWithFormat_(v45, v46, v36, v47);
      v48 = v36;
      v81 = @"NSSQLiteErrorDomain";
      [(NSSQLiteConnection *)statement _forceDisconnectOnError];
      if (!v44)
      {
        goto LABEL_96;
      }
    }

    uTF8String = [v44 UTF8String];
    v50 = 0;
    goto LABEL_97;
  }

  if (v7)
  {
    sqlite3_stmt_explain();
  }

  v23 = *(statement + 312) | 1;
LABEL_82:
  *(statement + 312) = v23;
}

- (void)cacheCurrentDBStatementOn:(uint64_t)on
{
  if (on)
  {
    v4 = *(on + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = *(on + 80);
    if (v5)
    {
      [(NSSQLiteStatement *)a2 setCachedSQLiteStatement:v5 forConnection:on];

      [(NSSQLiteConnection *)on addVMCachedStatement:a2];
    }
  }
}

- (uint64_t)insertRow:(uint64_t)result
{
  v93 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      _storeInfo1 = 0;
    }

    else
    {
      v5 = atomic_load((a2 + 40));
      _storeInfo1 = [*(v5 + 16) _storeInfo1];
    }

    v7 = [(NSSQLiteConnection *)v3 statementCacheForEntity:_storeInfo1];
    v70 = v3;
    v68 = v7;
    if (v7 && (insertStatementCache = v7->_insertStatementCache) != 0 && (cachedSQLiteStatement = insertStatementCache->_cachedSQLiteStatement) != 0)
    {
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v9 = *(v3 + 42);
        v10 = objc_autoreleasePoolPush();
        _pflogInitialize(6);
        IsLogEnabled = _NSCoreDataIsLogEnabled(6);
        v12 = _pflogging_enable_oslog > 0 && IsLogEnabled;
        if (v9 == 1)
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }

            else
            {
              v17 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }
          }

          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              v16 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v19 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
              }
            }
          }

          v18 = "%@";
        }

        v20 = _pflogging_catastrophic_mode == 0;
        sqlString2 = [(NSSQLiteStatement *)insertStatementCache sqlString];
        v22 = 6;
        if (!v20)
        {
          v22 = 1;
        }

        _NSCoreDataLog_console(v22, v18, sqlString2);
        objc_autoreleasePoolPop(v10);
        v3 = v70;
      }

      *(v3 + 48) = insertStatementCache;
      v23 = *(v3 + 8);
      if (v23)
      {
        dispatch_assert_queue_V2(v23);
      }

      context = objc_autoreleasePoolPush();
      if (!a2 || (*(a2 + 16) & 1) != 0)
      {
        _storeInfo12 = 0;
      }

      else
      {
        v24 = atomic_load((a2 + 40));
        _storeInfo12 = [*(v24 + 16) _storeInfo1];
      }

      foreignKeyColumns = [_storeInfo12 foreignKeyColumns];
      foreignEntityKeyColumns = [_storeInfo12 foreignEntityKeyColumns];
      foreignOrderKeyColumns = [_storeInfo12 foreignOrderKeyColumns];
      obj = [_storeInfo12 attributeColumns];
      bindVariables = [*(v70 + 48) bindVariables];
      ValueAtIndex = CFArrayGetValueAtIndex(bindVariables, 0);
      if (a2)
      {
        v31 = atomic_load((a2 + 40));
        _referenceData64 = [*(v31 + 16) _referenceData64];
      }

      else
      {
        _referenceData64 = 0;
      }

      [ValueAtIndex setInt64:_referenceData64];
      v33 = CFArrayGetValueAtIndex(bindVariables, 1);
      if (a2 && (v34 = atomic_load((a2 + 40)), (v35 = [*(v34 + 16) _storeInfo1]) != 0))
      {
        v36 = *(v35 + 184);
      }

      else
      {
        v36 = 0;
      }

      [v33 setUnsignedInt:v36];
      v37 = CFArrayGetValueAtIndex(bindVariables, 2);
      if (a2)
      {
        v38 = atomic_load((a2 + 40));
        v39 = *(v38 + 12);
      }

      else
      {
        v39 = 0;
      }

      [v37 setInt64:v39];
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v40 = [foreignKeyColumns countByEnumeratingWithState:&v84 objects:buf count:16];
      if (v40)
      {
        v41 = *v85;
        v42 = 3;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v85 != v41)
            {
              objc_enumerationMutation(foreignKeyColumns);
            }

            v44 = *(*(&v84 + 1) + 8 * i);
            if (([objc_msgSend(v44 "toOneRelationship")] & 1) == 0)
            {
              v45 = -[NSSQLRow foreignKeyForSlot:](a2, [v44 slot]);
              [CFArrayGetValueAtIndex(bindVariables v42++)];
            }
          }

          v40 = [foreignKeyColumns countByEnumeratingWithState:&v84 objects:buf count:16];
        }

        while (v40);
      }

      else
      {
        v42 = 3;
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v46 = [foreignEntityKeyColumns countByEnumeratingWithState:&v80 objects:v90 count:16];
      if (v46)
      {
        v47 = *v81;
        do
        {
          v48 = 0;
          do
          {
            if (*v81 != v47)
            {
              objc_enumerationMutation(foreignEntityKeyColumns);
            }

            slot = [*(*(&v80 + 1) + 8 * v48) slot];
            if (a2)
            {
              v50 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + ((*(a2 + 16) >> 13) & 0xFFFC) + 2 * slot);
            }

            else
            {
              v50 = 0;
            }

            [CFArrayGetValueAtIndex(bindVariables v42++)];
            ++v48;
          }

          while (v46 != v48);
          v51 = [foreignEntityKeyColumns countByEnumeratingWithState:&v80 objects:v90 count:16];
          v46 = v51;
        }

        while (v51);
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v52 = [foreignOrderKeyColumns countByEnumeratingWithState:&v76 objects:v89 count:16];
      if (v52)
      {
        v53 = *v77;
        do
        {
          v54 = 0;
          do
          {
            if (*v77 != v53)
            {
              objc_enumerationMutation(foreignOrderKeyColumns);
            }

            slot2 = [*(*(&v76 + 1) + 8 * v54) slot];
            if (a2)
            {
              v56 = *(a2 + _NSSQLRowInstanceSize + ((4 * *(a2 + 16)) & 0x1FFF8) + 4 * slot2);
            }

            else
            {
              v56 = 0;
            }

            [CFArrayGetValueAtIndex(bindVariables v42++)];
            ++v54;
          }

          while (v52 != v54);
          v57 = [foreignOrderKeyColumns countByEnumeratingWithState:&v76 objects:v89 count:16];
          v52 = v57;
        }

        while (v57);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v58 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      if (v58)
      {
        v59 = *v73;
        do
        {
          for (j = 0; j != v58; ++j)
          {
            if (*v73 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v61 = *(*(&v72 + 1) + 8 * j);
            if (([v61 isConstrained] & 1) == 0)
            {
              attributeDescription = [v61 attributeDescription];
              if (attributeDescription && [attributeDescription superCompositeAttribute])
              {
                v63 = -[NSPropertyDescription _elementPath]([v61 propertyDescription]);
                v64 = [-[NSSQLRow attributeValueForSlot:](a2 objc_msgSend(v61];
              }

              else
              {
                v64 = -[NSSQLRow attributeValueForSlot:](a2, [v61 slot]);
              }

              [CFArrayGetValueAtIndex(bindVariables v42++)];
            }
          }

          v58 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
        }

        while (v58);
      }

      objc_autoreleasePoolPop(context);
      *(v70 + 80) = cachedSQLiteStatement;
      v65 = *(v70 + 48);
      v3 = v70;
    }

    else
    {
      v14 = v7;
      v15 = -[NSSQLiteAdapter newInsertStatementWithRow:]([v3 adapter], a2);
      [(NSSQLiteConnection *)v3 prepareSQLStatement:v15];
      [(NSSQLiteStatement *)*(v3 + 48) setCachedSQLiteStatement:v3 forConnection:?];
      [(NSSQLiteStatementCache *)v14 cacheInsertStatement:?];

      [(NSSQLiteConnection *)v3 addVMCachedStatement:?];
    }

    [v3 execute];
    if (!*(v3 + 80))
    {
      [(NSSQLiteStatementCache *)v68 cacheInsertStatement:?];
      v3 = v70;
    }

    [(NSSQLiteConnection *)v3 _clearBindVariablesForInsertedRow];
    [(NSSQLiteConnection *)v70 resetSQLStatement];
    v66 = v70;
    result = *(v70 + 72);
    if (result)
    {
      result = sqlite3_changes(result);
      v66 = v70;
    }

    *(v66 + 88) = result;
  }

  return result;
}

- (NSSQLiteStatementCache)statementCacheForEntity:(uint64_t)entity
{
  if (!entity)
  {
    return 0;
  }

  v4 = *(entity + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (!a2)
  {
    return 0;
  }

  v5 = [*(entity + 200) objectForKey:a2];
  if (!v5)
  {
    v5 = [[NSSQLiteStatementCache alloc] initWithEntity:a2];
    CFDictionarySetValue(*(entity + 200), a2, v5);
  }

  return v5;
}

- (uint64_t)addVMCachedStatement:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [[_PFWeakReference alloc] initWithObject:a2];
    if (v4)
    {
      CFDictionarySetValue(*(v3 + 152), a2, v4);
    }

    return MEMORY[0x1EEE66BE0]();
  }

  return result;
}

- (void)cacheUpdateStatement:(void *)key forEntity:(const void *)entity andDeltasMask:
{
  v8 = *(self + 8);
  if (v8)
  {
    dispatch_assert_queue_V2(v8);
  }

  Value = CFDictionaryGetValue(*(self + 216), key);
  if (!Value)
  {
    if (!a2)
    {
      return;
    }

    v11.version = *MEMORY[0x1E695E9D8];
    *&v11.retain = *(MEMORY[0x1E695E9D8] + 8);
    v11.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v11.equal = PFVectorEqual;
    v11.hash = PFVectorHash;
    v10 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &v11, MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(*(self + 216), key, v10);

    goto LABEL_10;
  }

  v10 = Value;
  if (a2)
  {
LABEL_10:
    CFDictionarySetValue(v10, entity, a2);
    return;
  }

  CFDictionaryRemoveValue(Value, entity);
}

- (void)cacheUpdateConstrainedValuesStatement:(void *)key forEntity:
{
  v6 = *(self + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  v7 = *(self + 224);
  if (value)
  {

    CFDictionarySetValue(v7, key, value);
  }

  else
  {

    CFDictionaryRemoveValue(v7, key);
  }
}

- (uint64_t)updateRow:(uint64_t)row forRequestContext:
{
  v185 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    key = 0;
  }

  else
  {
    v7 = atomic_load((a2 + 40));
    key = [*(v7 + 16) _storeInfo1];
  }

  objectID = [a2 objectID];
  v9 = [(NSSQLSaveChangesRequestContext *)row originalRowForObjectID:objectID];
  if (row)
  {
    v10 = *(row + 32);
  }

  else
  {
    v10 = 0;
  }

  v147 = objectID;
  v11 = [v10 objectRegisteredForID:objectID];
  v12 = v11;
  v13 = 0;
  if (v11 && v9)
  {
    if ([v11 _versionReference])
    {
      _versionReference = [v12 _versionReference];
      v15 = atomic_load(v9 + 5);
      v13 = *(v15 + 12) != _versionReference;
    }

    else
    {
      v13 = 0;
    }
  }

  rowCopy = row;
  v149 = v9;
  v155 = a2;
  if (!v9 || v13)
  {
    if ([(NSSQLStoreRequestContext *)row debugLogLevel]<= 1)
    {
      if ([(NSSQLStoreRequestContext *)row debugLogLevel]< 1)
      {
        goto LABEL_215;
      }

      v128 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            sqlString = v147;
            v183 = 2048;
            *v184 = v149;
            *&v184[8] = 1024;
            *&v184[10] = v13;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d\n", buf, 0x1Cu);
          }
        }

        else
        {
          v144 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            sqlString = v147;
            v183 = 2048;
            *v184 = v149;
            *&v184[8] = 1024;
            *&v184[10] = v13;
            _os_log_impl(&dword_18565F000, v144, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v136 = 1;
      }

      else
      {
        v136 = 4;
      }

      _NSCoreDataLog_console(v136, "Optimistic locking failure for %@. During updateRow.  Original row = %p context version match = %d", v147, v149, v13);
    }

    else
    {
      v128 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v129 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
          {
            *buf = 138413058;
            sqlString = v147;
            v183 = 2112;
            *v184 = v9;
            *&v184[8] = 2112;
            *&v184[10] = v155;
            *&v184[18] = 1024;
            *&v184[20] = v13;
            _os_log_error_impl(&dword_18565F000, v129, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
          }
        }

        else
        {
          v143 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138413058;
            sqlString = v147;
            v183 = 2112;
            *v184 = v9;
            *&v184[8] = 2112;
            *&v184[10] = v155;
            *&v184[18] = 1024;
            *&v184[20] = v13;
            _os_log_impl(&dword_18565F000, v143, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v130 = 1;
      }

      else
      {
        v130 = 4;
      }

      _NSCoreDataLog_console(v130, "Optimistic locking failure for %@.  During updateRow.  Original row = %@ New Row = %@ context version match = %d", v147, v9, v155, v13);
    }

    objc_autoreleasePoolPop(v128);
LABEL_215:
    v137 = &unk_1EF435DD0;
    if (v13)
    {
      _versionReference2 = [v12 _versionReference];
      v139 = v149;
      if (v149)
      {
        v140 = atomic_load((v149 + 40));
        v139 = *(v140 + 12);
      }

      if (v139 >= _versionReference2)
      {
        v137 = &unk_1EF435DE8;
      }
    }

    v175 = v147;
    v176[0] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    v141 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v175 count:1];
    v176[1] = @"_NSCoreDataOptimisticLockingFailureMismatchWithObject";
    v177[0] = v141;
    v177[1] = v137;
    v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:v176 count:2];
    objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v142]);
  }

  if (a2)
  {
    v16 = [(NSSQLRow *)a2 newColumnMaskFrom:v9 columnInclusionOptions:0x1EuLL];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v5 + 8);
  if (v17)
  {
    dispatch_assert_queue_V2(v17);
  }

  Value = CFDictionaryGetValue(*(v5 + 216), key);
  v151 = v5;
  if (Value && (v19 = CFDictionaryGetValue(Value, v16)) != 0 && (v20 = v19, v19[8]))
  {
    v146 = v19[8];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v21 = *(v5 + 42);
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      v24 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (v21 == 1)
      {
        if (v24)
        {
          if (_pflogging_catastrophic_mode)
          {
            v25 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              sqlString = [v20 sqlString];
              _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v28 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              sqlString = [v20 sqlString];
              _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v29 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v24)
        {
          if (_pflogging_catastrophic_mode)
          {
            v27 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              sqlString = [v20 sqlString];
              _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v30 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              sqlString = [v20 sqlString];
              _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v29 = "%@";
      }

      v31 = _pflogging_catastrophic_mode == 0;
      sqlString2 = [v20 sqlString];
      v33 = 6;
      if (!v31)
      {
        v33 = 1;
      }

      _NSCoreDataLog_console(v33, v29, sqlString2);
      objc_autoreleasePoolPop(v22);
      v5 = v151;
    }

    *(v5 + 48) = v20;
    v34 = *(v5 + 8);
    if (v34)
    {
      dispatch_assert_queue_V2(v34);
    }

    context = objc_autoreleasePoolPush();
    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      _storeInfo1 = 0;
    }

    else
    {
      v35 = atomic_load((a2 + 40));
      _storeInfo1 = [*(v35 + 16) _storeInfo1];
    }

    foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
    obj = [_storeInfo1 foreignEntityKeyColumns];
    foreignOrderKeyColumns = [_storeInfo1 foreignOrderKeyColumns];
    attributeColumns = [_storeInfo1 attributeColumns];
    bindVariables = [*(v151 + 48) bindVariables];
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v39 = 0;
    v40 = 0;
    v41 = [foreignKeyColumns countByEnumeratingWithState:&v168 objects:buf count:16];
    if (v41)
    {
      v42 = *v169;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v169 != v42)
          {
            objc_enumerationMutation(foreignKeyColumns);
          }

          v44 = *(*(&v168 + 1) + 8 * i);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            v45 = -[NSSQLRow foreignKeyForSlot:](v155, [v44 slot]);
            [CFArrayGetValueAtIndex(bindVariables v40++)];
          }

          ++v39;
        }

        v41 = [foreignKeyColumns countByEnumeratingWithState:&v168 objects:buf count:16];
      }

      while (v41);
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v46 = [obj countByEnumeratingWithState:&v164 objects:v180 count:16];
    if (v46)
    {
      v47 = *v165;
      do
      {
        v48 = 0;
        do
        {
          if (*v165 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v49 = *(*(&v164 + 1) + 8 * v48);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            slot = [v49 slot];
            if (v155)
            {
              v51 = *(v155 + _NSSQLRowInstanceSize + ((4 * *(v155 + 16)) & 0x1FFF8) + ((*(v155 + 16) >> 13) & 0xFFFC) + 2 * slot);
            }

            else
            {
              v51 = 0;
            }

            [CFArrayGetValueAtIndex(bindVariables v40++)];
          }

          ++v48;
          ++v39;
        }

        while (v46 != v48);
        v52 = [obj countByEnumeratingWithState:&v164 objects:v180 count:16];
        v46 = v52;
      }

      while (v52);
    }

    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v53 = [foreignOrderKeyColumns countByEnumeratingWithState:&v160 objects:v179 count:16];
    if (v53)
    {
      v54 = *v161;
      do
      {
        v55 = 0;
        do
        {
          if (*v161 != v54)
          {
            objc_enumerationMutation(foreignOrderKeyColumns);
          }

          v56 = *(*(&v160 + 1) + 8 * v55);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            slot2 = [v56 slot];
            if (v155)
            {
              v58 = *(v155 + _NSSQLRowInstanceSize + ((4 * *(v155 + 16)) & 0x1FFF8) + 4 * slot2);
            }

            else
            {
              v58 = 0;
            }

            [CFArrayGetValueAtIndex(bindVariables v40++)];
          }

          ++v55;
          ++v39;
        }

        while (v53 != v55);
        v59 = [foreignOrderKeyColumns countByEnumeratingWithState:&v160 objects:v179 count:16];
        v53 = v59;
      }

      while (v59);
    }

    v158 = 0u;
    v159 = 0u;
    v156 = 0u;
    v157 = 0u;
    v60 = [attributeColumns countByEnumeratingWithState:&v156 objects:v178 count:16];
    if (v60)
    {
      v61 = *v157;
      do
      {
        v62 = 0;
        do
        {
          if (*v157 != v61)
          {
            objc_enumerationMutation(attributeColumns);
          }

          v63 = *(*(&v156 + 1) + 8 * v62);
          if (CFBitVectorGetBitAtIndex(v16, v39))
          {
            if ([v63 isConstrained])
            {
              v64 = 0;
            }

            else
            {
              attributeDescription = [v63 attributeDescription];
              if (attributeDescription)
              {
                v66 = [attributeDescription superCompositeAttribute] != 0;
              }

              else
              {
                v66 = 0;
              }

              v64 = -[NSSQLRow attributeValueForSlot:](v155, [v63 slot]);
              if (v66)
              {
                v64 = [v64 valueForKeyPath:{-[NSPropertyDescription _elementPath](objc_msgSend(v63, "propertyDescription"))}];
              }
            }

            [CFArrayGetValueAtIndex(bindVariables v40++)];
          }

          ++v62;
          ++v39;
        }

        while (v60 != v62);
        v67 = [attributeColumns countByEnumeratingWithState:&v156 objects:v178 count:16];
        v60 = v67;
      }

      while (v67);
    }

    if (v149)
    {
      v68 = atomic_load((v149 + 40));
      v69 = *(v68 + 12) + 1;
    }

    else
    {
      v69 = 1;
    }

    [v155 setOptLock:v69];
    ValueAtIndex = CFArrayGetValueAtIndex(bindVariables, v40);
    if (v155)
    {
      v71 = v155;
      v72 = atomic_load((v155 + 40));
      v73 = *(v72 + 12);
    }

    else
    {
      v73 = 0;
      v71 = 0;
    }

    v74 = v71 == 0;
    [ValueAtIndex setInt64:v73];
    v75 = CFArrayGetValueAtIndex(bindVariables, v40 + 1);
    if (v74)
    {
      _referenceData64 = 0;
    }

    else
    {
      v76 = atomic_load((v155 + 40));
      _referenceData64 = [*(v76 + 16) _referenceData64];
    }

    [v75 setInt64:_referenceData64];
    v78 = CFArrayGetValueAtIndex(bindVariables, v40 + 2);
    if (v149)
    {
      v79 = atomic_load((v149 + 40));
      v80 = *(v79 + 12);
    }

    else
    {
      v80 = 0;
    }

    [v78 setInt64:v80];
    objc_autoreleasePoolPop(context);
    *(v151 + 80) = v146;
    v81 = *(v151 + 48);
    v5 = v151;
  }

  else
  {
    v26 = -[NSSQLiteAdapter newUpdateStatementWithRow:originalRow:withMask:]([v5 adapter], a2, v9, v16);
    [(NSSQLiteConnection *)v5 prepareSQLStatement:v26];
    [(NSSQLiteStatement *)*(v5 + 48) setCachedSQLiteStatement:v5 forConnection:?];
    [(NSSQLiteConnection *)v5 cacheUpdateStatement:key forEntity:v16 andDeltasMask:?];

    [(NSSQLiteConnection *)v5 addVMCachedStatement:?];
  }

  [v5 execute];
  if (!*(v5 + 80))
  {
    [(NSSQLiteConnection *)v5 cacheUpdateStatement:key forEntity:v16 andDeltasMask:?];
    v5 = v151;
  }

  v82 = *(v5 + 48);
  v83 = *(v5 + 8);
  if (v83)
  {
    dispatch_assert_queue_V2(v83);
  }

  entity = [v82 entity];
  foreignKeyColumns2 = [entity foreignKeyColumns];
  foreignEntityKeyColumns = [entity foreignEntityKeyColumns];
  foreignOrderKeyColumns2 = [entity foreignOrderKeyColumns];
  attributeColumns2 = [entity attributeColumns];
  bindVariables2 = [*(v151 + 48) bindVariables];
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v90 = 0;
  v91 = 0;
  v92 = [foreignKeyColumns2 countByEnumeratingWithState:&v168 objects:buf count:16];
  if (v92)
  {
    v93 = *v169;
    while (1)
    {
      if (*v169 != v93)
      {
        objc_enumerationMutation(foreignKeyColumns2);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v92)
      {
        v92 = [foreignKeyColumns2 countByEnumeratingWithState:&v168 objects:buf count:16];
        if (!v92)
        {
          break;
        }
      }
    }
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v95 = [foreignEntityKeyColumns countByEnumeratingWithState:&v164 objects:v180 count:16];
  if (v95)
  {
    v96 = *v165;
    while (1)
    {
      if (*v165 != v96)
      {
        objc_enumerationMutation(foreignEntityKeyColumns);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v95)
      {
        v95 = [foreignEntityKeyColumns countByEnumeratingWithState:&v164 objects:v180 count:16];
        if (!v95)
        {
          break;
        }
      }
    }
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v98 = [foreignOrderKeyColumns2 countByEnumeratingWithState:&v160 objects:v179 count:16];
  if (v98)
  {
    v99 = *v161;
    while (1)
    {
      if (*v161 != v99)
      {
        objc_enumerationMutation(foreignOrderKeyColumns2);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90++))
      {
        ++v91;
      }

      if (!--v98)
      {
        v98 = [foreignOrderKeyColumns2 countByEnumeratingWithState:&v160 objects:v179 count:16];
        if (!v98)
        {
          break;
        }
      }
    }
  }

  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v101 = [attributeColumns2 countByEnumeratingWithState:&v156 objects:v178 count:16];
  if (v101)
  {
    v102 = *v157;
    while (1)
    {
      if (*v157 != v102)
      {
        objc_enumerationMutation(attributeColumns2);
      }

      if (CFBitVectorGetBitAtIndex(v16, v90))
      {
        [CFArrayGetValueAtIndex(bindVariables2 v91++)];
      }

      ++v90;
      if (!--v101)
      {
        v101 = [attributeColumns2 countByEnumeratingWithState:&v156 objects:v178 count:16];
        if (!v101)
        {
          break;
        }
      }
    }
  }

  [(NSSQLiteConnection *)v151 resetSQLStatement];
  v103 = v151;
  v104 = *(v151 + 16);
  if (v104 && (*(v104 + 201) & 4) != 0)
  {
    if (v155)
    {
      v105 = [(NSSQLRow *)v155 newColumnMaskFrom:v149 columnInclusionOptions:0x1EuLL];
    }

    else
    {
      v105 = 0;
    }

    v106 = [_NSPersistentHistoryChange _dataMaskForEntity:v105 andDeltaMask:?];
    if (v106)
    {
      v107 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (key)
      {
        v108 = key[46];
      }

      else
      {
        v108 = 0;
      }

      if (v155)
      {
        v109 = atomic_load((v155 + 40));
        _referenceData642 = [*(v109 + 16) _referenceData64];
      }

      else
      {
        _referenceData642 = 0;
      }

      v110 = [v107 initWithFormat:@"%u-%lld", v108, _referenceData642];
      [(NSSQLSaveChangesRequestContext *)rowCopy addDataMask:v106 forEntityKey:v110];
    }

    v103 = v151;
    if (v105)
    {
      CFRelease(v105);
      v103 = v151;
    }
  }

  if (v16)
  {
    CFRelease(v16);
    v103 = v151;
  }

  v112 = *(v103 + 72);
  if (!v112)
  {
    *(v103 + 88) = 0;
    v114 = (v103 + 88);
    result = rowCopy;
    goto LABEL_170;
  }

  v113 = sqlite3_changes(v112);
  *(v151 + 88) = v113;
  v114 = (v151 + 88);
  v115 = v113 == 1;
  result = rowCopy;
  if (!v115)
  {
LABEL_170:
    if ([(NSSQLStoreRequestContext *)result debugLogLevel]< 2)
    {
      if ([(NSSQLStoreRequestContext *)rowCopy debugLogLevel]< 1)
      {
        goto LABEL_189;
      }

      v116 = objc_autoreleasePoolPush();
      v123 = v114;
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v124 = _PFLogGetLogStream(1);
          v123 = v114;
          if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
          {
            v125 = *v114;
            *buf = 138412546;
            sqlString = v147;
            v183 = 1024;
            *v184 = v125;
            _os_log_error_impl(&dword_18565F000, v124, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow, rows processed = %d.\n", buf, 0x12u);
          }
        }

        else
        {
          v133 = _PFLogGetLogStream(4);
          v123 = v114;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            v134 = *v114;
            *buf = 138412546;
            sqlString = v147;
            v183 = 1024;
            *v184 = v134;
            _os_log_impl(&dword_18565F000, v133, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow, rows processed = %d.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v126 = 1;
      }

      else
      {
        v126 = 4;
      }

      _NSCoreDataLog_console(v126, "Optimistic locking failure for %@.  During updateRow, rows processed = %d.", v147, *v123);
    }

    else
    {
      v116 = objc_autoreleasePoolPush();
      v117 = v149;
      v118 = v155;
      v119 = v114;
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v120 = _PFLogGetLogStream(1);
          v117 = v149;
          v118 = v155;
          v119 = v114;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
          {
            v121 = *v114;
            *buf = 138413058;
            sqlString = v147;
            v183 = 1024;
            *v184 = v121;
            *&v184[4] = 2112;
            *&v184[6] = v149;
            *&v184[14] = 2112;
            *&v184[16] = v155;
            _os_log_error_impl(&dword_18565F000, v120, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@\n", buf, 0x26u);
          }
        }

        else
        {
          v131 = _PFLogGetLogStream(4);
          v117 = v149;
          v118 = v155;
          v119 = v114;
          if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
          {
            v132 = *v114;
            *buf = 138413058;
            sqlString = v147;
            v183 = 1024;
            *v184 = v132;
            *&v184[4] = 2112;
            *&v184[6] = v149;
            *&v184[14] = 2112;
            *&v184[16] = v155;
            _os_log_impl(&dword_18565F000, v131, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@\n", buf, 0x26u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v122 = 1;
      }

      else
      {
        v122 = 4;
      }

      _NSCoreDataLog_console(v122, "Optimistic locking failure for %@.  During updateRow, rows processed = %d.  Original row = %@ New row = %@", v147, *v119, v117, v118);
    }

    objc_autoreleasePoolPop(v116);
LABEL_189:
    v172 = v147;
    v173 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    v174[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v172 count:1];
    v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v174 forKeys:&v173 count:1];
    objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v127]);
  }

  return result;
}

- (uint64_t)updateConstrainedValuesForRow:(uint64_t)result
{
  v92 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (!a2 || (*(a2 + 16) & 1) != 0)
    {
      key = 0;
    }

    else
    {
      v5 = atomic_load((a2 + 40));
      key = [*(v5 + 16) _storeInfo1];
    }

    objectID = [a2 objectID];
    v6 = *(v3 + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    Value = CFDictionaryGetValue(*(v3 + 224), key);
    v73 = v3;
    if (Value && (v8 = Value, Value[8]))
    {
      v70 = Value[8];
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v9 = *(v3 + 42);
        v10 = objc_autoreleasePoolPush();
        _pflogInitialize(6);
        IsLogEnabled = _NSCoreDataIsLogEnabled(6);
        v12 = _pflogging_enable_oslog > 0 && IsLogEnabled;
        if (v9 == 1)
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                sqlString = [v8 sqlString];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }

            else
            {
              v16 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                sqlString = [v8 sqlString];
                _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
              }
            }
          }

          v17 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          if (v12)
          {
            if (_pflogging_catastrophic_mode)
            {
              v15 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                sqlString = [v8 sqlString];
                _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v18 = _PFLogGetLogStream(6);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                sqlString = [v8 sqlString];
                _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
              }
            }
          }

          v17 = "%@";
        }

        v19 = _pflogging_catastrophic_mode == 0;
        sqlString2 = [v8 sqlString];
        v21 = 6;
        if (!v19)
        {
          v21 = 1;
        }

        _NSCoreDataLog_console(v21, v17, sqlString2);
        objc_autoreleasePoolPop(v10);
      }

      *(v3 + 48) = v8;
      v22 = *(v3 + 8);
      if (v22)
      {
        dispatch_assert_queue_V2(v22);
      }

      context = objc_autoreleasePoolPush();
      if (!a2 || (*(a2 + 16) & 1) != 0)
      {
        _storeInfo1 = 0;
      }

      else
      {
        v23 = atomic_load((a2 + 40));
        _storeInfo1 = [*(v23 + 16) _storeInfo1];
      }

      attributeColumns = [_storeInfo1 attributeColumns];
      foreignKeyColumns = [_storeInfo1 foreignKeyColumns];
      bindVariables = [*(v3 + 48) bindVariables];
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v28 = 0;
      v29 = [foreignKeyColumns countByEnumeratingWithState:&v78 objects:buf count:16];
      if (v29)
      {
        v30 = *v79;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v79 != v30)
            {
              objc_enumerationMutation(foreignKeyColumns);
            }

            v32 = *(*(&v78 + 1) + 8 * i);
            if ([objc_msgSend(v32 "toOneRelationship")])
            {
              ValueAtIndex = CFArrayGetValueAtIndex(bindVariables, v28);
              [ValueAtIndex setInt64:{-[NSSQLRow foreignKeyForSlot:](a2, objc_msgSend(v32, "slot"))}];
              ++v28;
            }
          }

          v29 = [foreignKeyColumns countByEnumeratingWithState:&v78 objects:buf count:16];
        }

        while (v29);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v34 = [attributeColumns countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v34)
      {
        v35 = *v75;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v75 != v35)
            {
              objc_enumerationMutation(attributeColumns);
            }

            v37 = *(*(&v74 + 1) + 8 * j);
            if ([v37 isConstrained])
            {
              v38 = -[NSSQLRow attributeValueForSlot:](a2, [v37 slot]);
              [CFArrayGetValueAtIndex(bindVariables v28++)];
            }
          }

          v34 = [attributeColumns countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v34);
      }

      v39 = CFArrayGetValueAtIndex(bindVariables, v28);
      if (a2)
      {
        v40 = atomic_load((a2 + 40));
        _referenceData64 = [*(v40 + 16) _referenceData64];
      }

      else
      {
        _referenceData64 = 0;
      }

      [v39 setInt64:_referenceData64];
      objc_autoreleasePoolPop(context);
      *(v73 + 80) = v70;
      v42 = *(v73 + 48);
      v3 = v73;
    }

    else
    {
      v14 = -[NSSQLiteAdapter newConstrainedValuesUpdateStatementWithRow:]([v3 adapter], a2);
      [(NSSQLiteConnection *)v3 prepareSQLStatement:v14];
      [(NSSQLiteStatement *)*(v3 + 48) setCachedSQLiteStatement:v3 forConnection:?];
      [(NSSQLiteConnection *)v3 cacheUpdateConstrainedValuesStatement:key forEntity:?];

      [(NSSQLiteConnection *)v3 addVMCachedStatement:?];
    }

    [v3 execute];
    if (!*(v3 + 80))
    {
      [(NSSQLiteConnection *)v3 cacheUpdateConstrainedValuesStatement:key forEntity:?];
      v3 = v73;
    }

    v43 = *(v3 + 8);
    if (v43)
    {
      dispatch_assert_queue_V2(v43);
      v3 = v73;
    }

    entity = [*(v3 + 48) entity];
    bindVariables2 = [*(v3 + 48) bindVariables];
    foreignKeyColumns2 = [entity foreignKeyColumns];
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v47 = 0;
    v48 = [foreignKeyColumns2 countByEnumeratingWithState:&v78 objects:buf count:16];
    if (v48)
    {
      v49 = *v79;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v79 != v49)
          {
            objc_enumerationMutation(foreignKeyColumns2);
          }

          if ([objc_msgSend(*(*(&v78 + 1) + 8 * k) "toOneRelationship")])
          {
            [CFArrayGetValueAtIndex(bindVariables2 v47++)];
          }
        }

        v48 = [foreignKeyColumns2 countByEnumeratingWithState:&v78 objects:buf count:16];
      }

      while (v48);
    }

    attributeColumns2 = [entity attributeColumns];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v52 = [attributeColumns2 countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v52)
    {
      v53 = *v75;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(attributeColumns2);
          }

          if ([*(*(&v74 + 1) + 8 * m) isConstrained])
          {
            [CFArrayGetValueAtIndex(bindVariables2 v47++)];
          }
        }

        v52 = [attributeColumns2 countByEnumeratingWithState:&v74 objects:v85 count:16];
      }

      while (v52);
    }

    [CFArrayGetValueAtIndex(bindVariables2 v47)];
    [(NSSQLiteConnection *)v73 resetSQLStatement];
    v55 = *(v73 + 72);
    if (v55)
    {
      result = sqlite3_changes(v55);
      *(v73 + 88) = result;
      if (result == 1)
      {
        return result;
      }
    }

    else
    {
      *(v73 + 88) = 0;
    }

    v56 = objc_opt_class();
    if (+[NSSQLCore debugDefault]< 2)
    {
      if (+[NSSQLCore debugDefault]< 1)
      {
        goto LABEL_107;
      }

      v57 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v61 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = *(v73 + 88);
            *buf = 138412546;
            sqlString = objectID;
            v88 = 1024;
            v89 = v62;
            _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.\n", buf, 0x12u);
          }
        }

        else
        {
          v67 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = *(v73 + 88);
            *buf = 138412546;
            sqlString = objectID;
            v88 = 1024;
            v89 = v68;
            _os_log_impl(&dword_18565F000, v67, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v63 = 1;
      }

      else
      {
        v63 = 4;
      }

      _NSCoreDataLog_console(v63, "Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  Row was updated.", objectID, *(v73 + 88));
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(4))
      {
        if (_pflogging_catastrophic_mode)
        {
          v58 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v59 = *(v73 + 88);
            *buf = 138412802;
            sqlString = objectID;
            v88 = 1024;
            v89 = v59;
            v90 = 2112;
            v91 = a2;
            _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@\n", buf, 0x1Cu);
          }
        }

        else
        {
          v65 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = *(v73 + 88);
            *buf = 138412802;
            sqlString = objectID;
            v88 = 1024;
            v89 = v66;
            v90 = 2112;
            v91 = a2;
            _os_log_impl(&dword_18565F000, v65, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@\n", buf, 0x1Cu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v60 = 1;
      }

      else
      {
        v60 = 4;
      }

      _NSCoreDataLog_console(v60, "Optimistic locking failure for %@.  During updateConstrainedValuesForRow, rows processed = %d.  New Row = %@", objectID, *(v73 + 88), a2);
    }

    objc_autoreleasePoolPop(v57);
LABEL_107:
    v83 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
    objectID2 = [a2 objectID];
    v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&objectID2 count:1];
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    objc_exception_throw([v56 exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v64]);
  }

  return result;
}

- (BOOL)deleteRow:(uint64_t)row forRequestContext:
{
  v63 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2 || (*(a2 + 16) & 1) != 0)
  {
    _storeInfo1 = 0;
  }

  else
  {
    v7 = atomic_load((a2 + 40));
    _storeInfo1 = [*(v7 + 16) _storeInfo1];
  }

  objectID = [a2 objectID];
  v10 = -[NSSQLSaveChangesRequestContext originalRowForObjectID:](row, [a2 objectID]);
  if (row)
  {
    v11 = *(row + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 objectRegisteredForID:{objc_msgSend(a2, "objectID")}];
  if (v12)
  {
    if (v10)
    {
      v13 = v12;
      if ([v12 _versionReference])
      {
        _versionReference = [v13 _versionReference];
        v15 = atomic_load(v10 + 5);
        if (*(v15 + 12) != _versionReference)
        {
          if ([(NSSQLStoreRequestContext *)row debugLogLevel]<= 1)
          {
            if ([(NSSQLStoreRequestContext *)row debugLogLevel]< 1)
            {
              goto LABEL_75;
            }

            v43 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  sqlString = objectID;
                  v57 = 1024;
                  LODWORD(v58) = 1;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@. During deleteRow. version match = %d\n", buf, 0x12u);
                }
              }

              else
              {
                v51 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  sqlString = objectID;
                  v57 = 1024;
                  LODWORD(v58) = 1;
                  _os_log_impl(&dword_18565F000, v51, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@. During deleteRow. version match = %d\n", buf, 0x12u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v47 = 1;
            }

            else
            {
              v47 = 4;
            }

            _NSCoreDataLog_console(v47, "Optimistic locking failure for %@. During deleteRow. version match = %d", objectID, 1);
          }

          else
          {
            v43 = objc_autoreleasePoolPush();
            if (_NSCoreDataIsOSLogEnabled(4))
            {
              if (_pflogging_catastrophic_mode)
              {
                v44 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138413058;
                  sqlString = objectID;
                  v57 = 2112;
                  v58 = v10;
                  v59 = 2112;
                  v60 = a2;
                  v61 = 1024;
                  v62 = 1;
                  _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
                }
              }

              else
              {
                v50 = _PFLogGetLogStream(4);
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  sqlString = objectID;
                  v57 = 2112;
                  v58 = v10;
                  v59 = 2112;
                  v60 = a2;
                  v61 = 1024;
                  v62 = 1;
                  _os_log_impl(&dword_18565F000, v50, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d\n", buf, 0x26u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v45 = 1;
            }

            else
            {
              v45 = 4;
            }

            _NSCoreDataLog_console(v45, "Optimistic locking failure for %@.  During deleteRow.  Original row = %@ New Row = %@ context version match = %d", objectID, v10, a2, 1);
          }

          objc_autoreleasePoolPop(v43);
LABEL_75:
          v48 = *MEMORY[0x1E695D930];
          v52 = objectID;
          v53[0] = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
          v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
          v53[1] = @"_NSCoreDataOptimisticLockingFailureMismatchWithObject";
          v54[0] = v49;
          v54[1] = &unk_1EF435DE8;
          objc_exception_throw(+[_NSCoreDataOptimisticLockingException exceptionWithName:reason:userInfo:](_NSCoreDataOptimisticLockingException, "exceptionWithName:reason:userInfo:", v48, @"optimistic locking failure", [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2]));
        }
      }
    }
  }

  v16 = [(NSSQLiteConnection *)v5 statementCacheForEntity:_storeInfo1];
  v17 = v16;
  if (v16 && (deletionStatementCache = v16->_deletionStatementCache) != 0 && (cachedSQLiteStatement = deletionStatementCache->_cachedSQLiteStatement) != 0)
  {
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v20 = *(v5 + 42);
      v21 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      v23 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (v20 == 1)
      {
        if (v23)
        {
          if (_pflogging_catastrophic_mode)
          {
            v24 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              sqlString = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v27 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              sqlString = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }
        }

        v28 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
      }

      else
      {
        if (v23)
        {
          if (_pflogging_catastrophic_mode)
          {
            v26 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              sqlString = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
            }
          }

          else
          {
            v29 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              sqlString = [(NSSQLiteStatement *)deletionStatementCache sqlString];
              _os_log_impl(&dword_18565F000, v29, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
            }
          }
        }

        v28 = "%@";
      }

      v30 = _pflogging_catastrophic_mode;
      sqlString2 = [(NSSQLiteStatement *)deletionStatementCache sqlString];
      v32 = 6;
      if (v30)
      {
        v32 = 1;
      }

      _NSCoreDataLog_console(v32, v28, sqlString2);
      objc_autoreleasePoolPop(v21);
    }

    *(v5 + 48) = deletionStatementCache;
    v33 = *(v5 + 8);
    if (v33)
    {
      dispatch_assert_queue_V2(v33);
      deletionStatementCache = *(v5 + 48);
    }

    bindVariables = [(NSSQLiteStatement *)deletionStatementCache bindVariables];
    v35 = [bindVariables objectAtIndex:0];
    if (a2)
    {
      v36 = atomic_load((a2 + 40));
      _referenceData64 = [*(v36 + 16) _referenceData64];
    }

    else
    {
      _referenceData64 = 0;
    }

    [v35 setInt64:_referenceData64];
    v38 = [bindVariables objectAtIndex:1];
    if (a2)
    {
      v39 = atomic_load((a2 + 40));
      v40 = *(v39 + 12);
    }

    else
    {
      v40 = 0;
    }

    [v38 setInt64:v40];
    *(v5 + 80) = cachedSQLiteStatement;
    v41 = *(v5 + 48);
  }

  else
  {
    v25 = -[NSSQLiteAdapter newDeleteStatementWithRow:]([v5 adapter], a2);
    [(NSSQLiteConnection *)v5 prepareSQLStatement:v25];
    [(NSSQLiteStatement *)*(v5 + 48) setCachedSQLiteStatement:v5 forConnection:?];
    [(NSSQLiteStatementCache *)v17 cacheDeletionStatement:?];

    [(NSSQLiteConnection *)v5 addVMCachedStatement:?];
  }

  [v5 execute];
  if (!*(v5 + 80))
  {
    [(NSSQLiteStatementCache *)v17 cacheDeletionStatement:?];
  }

  [(NSSQLiteConnection *)v5 resetSQLStatement];
  v42 = *(v5 + 72);
  if (v42)
  {
    LODWORD(v42) = sqlite3_changes(v42);
  }

  *(v5 + 88) = v42;
  return v42 == 1;
}

- (void)writeCorrelationInsertsFromTracker:(void *)tracker
{
  if (tracker)
  {
    v4 = tracker[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 16))
    {
      v5 = *(a2 + 8);
      v6 = [(NSSQLiteConnection *)tracker statementCacheForEntity:?];
      v7 = v6;
      if (v6 && (correlationInsertCache = v6->_correlationInsertCache) != 0 && (Value = CFDictionaryGetValue(correlationInsertCache, v5)) != 0 && (v10 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
      {
        v12 = 0;
        tracker[10] = cachedSQLiteStatement;
      }

      else
      {
        v10 = -[NSSQLiteAdapter newCorrelationInsertStatementForRelationship:]([tracker adapter], v5);
        [(NSSQLiteConnection *)tracker prepareSQLStatement:v10];
        [(NSSQLiteStatement *)v10 setCachedSQLiteStatement:tracker forConnection:?];
        [(NSSQLiteStatementCache *)v7 cacheCorrelationInsertStatement:v10 forRelationship:v5];

        v12 = 1;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = __Block_byref_object_copy__30;
      v18 = __Block_byref_object_dispose__30;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__NSSQLiteConnection_writeCorrelationInsertsFromTracker___block_invoke;
      v13[3] = &unk_1E6EC3EF8;
      v13[4] = tracker;
      v13[5] = &v20;
      v13[6] = &v14;
      [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateInsertsUsingBlock:v13];
      if (v12)
      {
        [(NSSQLiteConnection *)tracker addVMCachedStatement:v10];
      }

      if (*(v21 + 24) == 1)
      {
        objc_exception_throw(v15[5]);
      }

      [(NSSQLiteConnection *)tracker resetSQLStatement];
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

uint64_t __57__NSSQLiteConnection_writeCorrelationInsertsFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4, sqlite3_int64 a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218752;
          v16 = a2;
          v17 = 2048;
          v18 = a3;
          v19 = 2048;
          v20 = a4;
          v21 = 2048;
          v22 = a5;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu, %qu\n", buf, 0x2Au);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 134218752;
          v16 = a2;
          v17 = 2048;
          v18 = a3;
          v19 = 2048;
          v20 = a4;
          v21 = 2048;
          v22 = a5;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu, %qu\n", buf, 0x2Au);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 7;
    }

    _NSCoreDataLog_console(v13, "correlation bindings: %qu, %qu, %qu, %qu", a2, a3, a4, a5);
    objc_autoreleasePoolPop(v10);
  }

  return [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:a5];
}

- (uint64_t)executeCorrelationChangesForValue1:(sqlite3_int64)value1 value2:(sqlite3_int64)value2 value3:(sqlite3_int64)value3 value4:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = *(result + 8);
  if (v10)
  {
    dispatch_assert_queue_V2(v10);
  }

  v11 = *(v9 + 312);
  if ((v11 & 1) == 0)
  {
    v12 = sqlite3_reset(*(v9 + 80));
    sqlite3_clear_bindings(*(v9 + 80));
    v11 = *(v9 + 312);
    if (v12)
    {
      *(v9 + 312) = v11 & 0xFFFFEFFD;
      [(NSSQLiteConnection *)v9 releaseSQLStatement];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(v9 + 72))];
      v20 = *MEMORY[0x1E695D930];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v12), @"NSSQLiteErrorDomain"}];
      v17 = v20;
      v16 = v19;
LABEL_16:
      v18 = [_NSCoreDataException exceptionWithName:v17 code:134180 reason:v16 userInfo:v15];
      objc_exception_throw(v18);
    }
  }

  *(v9 + 312) = v11 & 0xFFFFFFFE;
  v13 = sqlite3_bind_int64(*(v9 + 80), 1, a2);
  if (v13 || (v13 = sqlite3_bind_int64(*(v9 + 80), 2, value1), v13) || value2 && (v13 = sqlite3_bind_int64(*(v9 + 80), 3, value2), v13) || value3 && (v13 = sqlite3_bind_int64(*(v9 + 80), 4, value3), v13))
  {
    v14 = *MEMORY[0x1E695D930];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v13), @"NSSQLiteErrorDomain"}];
    v16 = @"sqlite3_bind* failed";
    v17 = v14;
    goto LABEL_16;
  }

  return _execute(v9);
}

- (void)writeCorrelationDeletesFromTracker:(void *)tracker
{
  if (tracker)
  {
    v4 = tracker[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 24))
    {
      v5 = *(a2 + 8);
      v6 = [(NSSQLiteConnection *)tracker statementCacheForEntity:?];
      v7 = v6;
      if (v6 && (correlationDeleteCache = v6->_correlationDeleteCache) != 0 && (Value = CFDictionaryGetValue(correlationDeleteCache, v5)) != 0 && (v10 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
      {
        v12 = 0;
        tracker[10] = cachedSQLiteStatement;
      }

      else
      {
        v10 = -[NSSQLiteAdapter newCorrelationDeleteStatementForRelationship:]([tracker adapter], v5);
        [(NSSQLiteConnection *)tracker prepareSQLStatement:v10];
        [(NSSQLiteStatement *)v10 setCachedSQLiteStatement:tracker forConnection:?];
        [(NSSQLiteStatementCache *)v7 cacheCorrelationDeleteStatement:v10 forRelationship:v5];

        v12 = 1;
      }

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = __Block_byref_object_copy__30;
      v18 = __Block_byref_object_dispose__30;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__NSSQLiteConnection_writeCorrelationDeletesFromTracker___block_invoke;
      v13[3] = &unk_1E6EC3F20;
      v13[4] = tracker;
      v13[5] = &v20;
      v13[6] = &v14;
      [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateDeletesUsingBlock:v13];
      if (v12)
      {
        [(NSSQLiteConnection *)tracker addVMCachedStatement:v10];
      }

      if (*(v21 + 24) == 1)
      {
        objc_exception_throw(v15[5]);
      }

      [(NSSQLiteConnection *)tracker resetSQLStatement];
      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }
  }
}

uint64_t __57__NSSQLiteConnection_writeCorrelationDeletesFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v6 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v12 = a2;
          v13 = 2048;
          v14 = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings:  %qu, %qu\n", buf, 0x16u);
        }
      }

      else
      {
        v8 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v12 = a2;
          v13 = 2048;
          v14 = a3;
          _os_log_impl(&dword_18565F000, v8, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings:  %qu, %qu\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v9 = 1;
    }

    else
    {
      v9 = 7;
    }

    _NSCoreDataLog_console(v9, "correlation bindings:  %qu, %qu", a2, a3);
    objc_autoreleasePoolPop(v6);
  }

  return [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:0 value4:0];
}

- (void)writeCorrelationMasterReordersFromTracker:(void *)tracker
{
  if (tracker)
  {
    v4 = tracker[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 32))
    {
      v5 = *(a2 + 8);
      v6 = v5 ? [*(a2 + 8) propertyDescription] : 0;
      if ([v6 isOrdered])
      {
        v7 = [(NSSQLiteConnection *)tracker statementCacheForEntity:?];
        v8 = v7;
        if (v7 && (correlationMasterReorderCache = v7->_correlationMasterReorderCache) != 0 && (Value = CFDictionaryGetValue(correlationMasterReorderCache, v5)) != 0 && (v11 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
        {
          v13 = 0;
          tracker[10] = cachedSQLiteStatement;
        }

        else
        {
          v11 = -[NSSQLiteAdapter newCorrelationMasterReorderStatementForRelationship:]([tracker adapter], v5);
          [(NSSQLiteConnection *)tracker prepareSQLStatement:v11];
          [(NSSQLiteStatement *)v11 setCachedSQLiteStatement:tracker forConnection:?];
          [(NSSQLiteStatementCache *)v8 cacheCorrelationMasterReorderStatement:v11 forRelationship:v5];

          v13 = 1;
        }

        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        v21 = 0;
        v22 = &v21;
        v23 = 0x3052000000;
        v24 = __Block_byref_object_copy__30;
        v25 = __Block_byref_object_dispose__30;
        v26 = 0;
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke;
        v20[3] = &unk_1E6EC3F48;
        v20[4] = tracker;
        v20[5] = &v27;
        v20[6] = &v21;
        [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateMasterReordersUsingBlock:v20];
        if ((v28[3] & 1) == 0)
        {
          if (v13)
          {
            [(NSSQLiteConnection *)tracker addVMCachedStatement:v11];
          }

          [(NSSQLiteConnection *)tracker resetSQLStatement];
          if (!v5 || v5[1].length != v5 || ![-[__CFString propertyDescription](v5 "propertyDescription")])
          {
            goto LABEL_31;
          }

          if (v8 && (correlationMasterReorderCachePart2 = v8->_correlationMasterReorderCachePart2) != 0 && (v15 = CFDictionaryGetValue(correlationMasterReorderCachePart2, v5), (v16 = v15) != 0) && (v17 = v15->_cachedSQLiteStatement) != 0)
          {
            v18 = 0;
            tracker[10] = v17;
          }

          else
          {
            v16 = -[NSSQLiteAdapter newCorrelationMasterReorderStatementPart2ForRelationship:]([tracker adapter], v5);
            [(NSSQLiteConnection *)tracker prepareSQLStatement:v16];
            [(NSSQLiteStatement *)v16 setCachedSQLiteStatement:tracker forConnection:?];
            [(NSSQLiteStatementCache *)v8 cacheCorrelationMasterReorderStatement:v16 forRelationship:v5];

            v18 = 1;
          }

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke_387;
          v19[3] = &unk_1E6EC3F48;
          v19[4] = tracker;
          v19[5] = &v27;
          v19[6] = &v21;
          [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateMasterReordersPart2UsingBlock:v19];
          if (*(v28 + 24) != 1)
          {
            if (v18)
            {
              [(NSSQLiteConnection *)tracker addVMCachedStatement:v16];
            }

            [(NSSQLiteConnection *)tracker resetSQLStatement];
LABEL_31:
            _Block_object_dispose(&v21, 8);
            _Block_object_dispose(&v27, 8);
            return;
          }
        }

        objc_exception_throw(v22[5]);
      }
    }
  }
}

uint64_t __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v14 = a2;
          v15 = 2048;
          v16 = a3;
          v17 = 2048;
          v18 = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v14 = a2;
          v15 = 2048;
          v16 = a3;
          v17 = 2048;
          v18 = a4;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a2, a3, a4);
    objc_autoreleasePoolPop(v8);
  }

  return [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:0];
}

uint64_t __64__NSSQLiteConnection_writeCorrelationMasterReordersFromTracker___block_invoke_387(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v14 = a2;
          v15 = 2048;
          v16 = a3;
          v17 = 2048;
          v18 = a4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v14 = a2;
          v15 = 2048;
          v16 = a3;
          v17 = 2048;
          v18 = a4;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a2, a3, a4);
    objc_autoreleasePoolPop(v8);
  }

  return [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a2 value2:a3 value3:a4 value4:0];
}

- (void)writeCorrelationReordersFromTracker:(void *)tracker
{
  if (tracker)
  {
    v4 = tracker[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (a2 && *(a2 + 40))
    {
      v5 = *(a2 + 8);
      v6 = v5 ? [*(a2 + 8) propertyDescription] : 0;
      if ([objc_msgSend(v6 "inverseRelationship")])
      {
        v7 = [(NSSQLiteConnection *)tracker statementCacheForEntity:?];
        v8 = v7;
        if (v7 && (correlationReorderCache = v7->_correlationReorderCache) != 0 && (Value = CFDictionaryGetValue(correlationReorderCache, v5)) != 0 && (v11 = Value, (cachedSQLiteStatement = Value->_cachedSQLiteStatement) != 0))
        {
          v13 = 0;
          tracker[10] = cachedSQLiteStatement;
        }

        else
        {
          v11 = -[NSSQLiteAdapter newCorrelationReorderStatementForRelationship:]([tracker adapter], v5);
          [(NSSQLiteConnection *)tracker prepareSQLStatement:v11];
          [(NSSQLiteStatement *)v11 setCachedSQLiteStatement:tracker forConnection:?];
          [(NSSQLiteStatementCache *)v8 cacheCorrelationReorderStatement:v11 forRelationship:v5];

          v13 = 1;
        }

        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = 0;
        v15 = 0;
        v16 = &v15;
        v17 = 0x3052000000;
        v18 = __Block_byref_object_copy__30;
        v19 = __Block_byref_object_dispose__30;
        v20 = 0;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __58__NSSQLiteConnection_writeCorrelationReordersFromTracker___block_invoke;
        v14[3] = &unk_1E6EC3F48;
        v14[4] = tracker;
        v14[5] = &v21;
        v14[6] = &v15;
        [(NSSQLCorrelationTableUpdateTracker *)a2 enumerateReordersUsingBlock:v14];
        if (v13)
        {
          [(NSSQLiteConnection *)tracker addVMCachedStatement:v11];
        }

        if (*(v22 + 24) == 1)
        {
          objc_exception_throw(v16[5]);
        }

        [(NSSQLiteConnection *)tracker resetSQLStatement];
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v21, 8);
      }
    }
  }
}

uint64_t __58__NSSQLiteConnection_writeCorrelationReordersFromTracker___block_invoke(uint64_t a1, sqlite3_int64 a2, sqlite3_int64 a3, sqlite3_int64 a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (+[NSSQLCore debugDefault]>= 3)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(7);
    if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218496;
          v14 = a4;
          v15 = 2048;
          v16 = a2;
          v17 = 2048;
          v18 = a3;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(7);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 134218496;
          v14 = a4;
          v15 = 2048;
          v16 = a2;
          v17 = 2048;
          v18 = a3;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_INFO, "CoreData: details: correlation bindings: %qu, %qu, %qu\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v11 = 1;
    }

    else
    {
      v11 = 7;
    }

    _NSCoreDataLog_console(v11, "correlation bindings: %qu, %qu, %qu", a4, a2, a3);
    objc_autoreleasePoolPop(v8);
  }

  return [(NSSQLiteConnection *)*(a1 + 32) executeCorrelationChangesForValue1:a4 value2:a2 value3:a3 value4:0];
}

- (void)writeCorrelationChangesFromTracker:(void *)tracker
{
  if (tracker)
  {
    [(NSSQLiteConnection *)tracker writeCorrelationInsertsFromTracker:a2];
    [(NSSQLiteConnection *)tracker writeCorrelationDeletesFromTracker:a2];
    [(NSSQLiteConnection *)tracker writeCorrelationMasterReordersFromTracker:a2];

    [(NSSQLiteConnection *)tracker writeCorrelationReordersFromTracker:a2];
  }
}

- (void)bindTempTablesForStatementIfNecessary:(void *)result
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    result = [a2 bindIntarrays];
    if (result)
    {
      v5 = result;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [result countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v5);
            }

            [(NSSQLiteConnection *)v3 bindTempTableForBindIntarray:?];
            v8 = (v8 + 1);
          }

          while (v6 != v8);
          result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v6 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)bindTempTableForBindIntarray:(uint64_t)intarray
{
  v52 = *MEMORY[0x1E69E9840];
  if (intarray)
  {
    v4 = *(intarray + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    index = [a2 index];
    v46 = 0;
    if (index >= [*(intarray + 304) count])
    {
      tableName = [a2 tableName];
      [tableName UTF8String];
      v9 = sqlite3_intarray_create();
      if (v9)
      {
        v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9);
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v9), @"NSSQLiteErrorDomain"}];
        v41 = [_NSCoreDataException exceptionWithName:134180 code:v39 reason:v40 userInfo:?];
        objc_exception_throw(v41);
      }

      if (+[NSSQLCore debugDefault]>= 1)
      {
        v10 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = tableName;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray %@\n", buf, 0xCu);
            }
          }

          else
          {
            v12 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v48 = tableName;
              _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray %@\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v13 = 1;
        }

        else
        {
          v13 = 4;
        }

        _NSCoreDataLog_console(v13, "Bound intarray %@", tableName);
        objc_autoreleasePoolPop(v10);
      }

      v14 = objc_alloc_init(NSSQLiteIntarrayTable);
      v16 = v14;
      if (v14)
      {
        objc_setProperty_nonatomic(v14, v15, tableName, 16);
        v16->_intarrayTable = v46;
      }

      [*(intarray + 304) addObject:v16];
    }

    else
    {
      v6 = [*(intarray + 304) objectAtIndex:index];
      if (v6)
      {
        v7 = *(v6 + 8);
      }

      else
      {
        v7 = 0;
      }

      v46 = v7;
    }

    value = [a2 value];
    v18 = sqlite3_malloc(8 * [value count]);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = [value countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v19)
    {
      v20 = 0;
      v21 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(value);
          }

          v23 = *(*(&v42 + 1) + 8 * i);
          if ([v23 isNSNumber])
          {
            longLongValue = [v23 longLongValue];
          }

          else
          {
            longLongValue = [v23 _referenceData64];
          }

          v18[v20] = longLongValue;
          if (+[NSSQLCore debugDefault]>= 3)
          {
            v25 = objc_autoreleasePoolPush();
            _pflogInitialize(7);
            if (_NSCoreDataIsLogEnabled(7) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v26 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = v18[v20];
                  *buf = 134218240;
                  v48 = v27;
                  v49 = 1024;
                  v50 = v20;
                  _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray value %lu at %d\n", buf, 0x12u);
                }
              }

              else
              {
                v28 = _PFLogGetLogStream(7);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v29 = v18[v20];
                  *buf = 134218240;
                  v48 = v29;
                  v49 = 1024;
                  v50 = v20;
                  _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_INFO, "CoreData: details: Bound intarray value %lu at %d\n", buf, 0x12u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v30 = 1;
            }

            else
            {
              v30 = 7;
            }

            _NSCoreDataLog_console(v30, "Bound intarray value %lu at %d", v18[v20], v20);
            objc_autoreleasePoolPop(v25);
          }

          ++v20;
        }

        v19 = [value countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v19);
    }

    v31 = sqlite3_intarray_bind();
    if (v31)
    {
      v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31);
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v31), @"NSSQLiteErrorDomain"}];
      v38 = [_NSCoreDataException exceptionWithName:134180 code:v36 reason:v37 userInfo:?];
      objc_exception_throw(v38);
    }

    if (+[NSSQLCore debugDefault]>= 1)
    {
      v32 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v33 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: Bound intarray values.\n", buf, 2u);
          }
        }

        else
        {
          v34 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v34, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Bound intarray values.\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v35 = 1;
      }

      else
      {
        v35 = 4;
      }

      _NSCoreDataLog_console(v35, "Bound intarray values.");
      objc_autoreleasePoolPop(v32);
    }
  }
}

- (void)selectRowsWithStatement:(int)statement cached:
{
  if (result)
  {
    v5 = result;
    *(result + 78) |= 0x1000u;
    [(NSSQLiteConnection *)result bindTempTablesForStatementIfNecessary:a2];
    [(NSSQLiteConnection *)v5 prepareSQLStatement:a2];
    if (statement && (!a2 || !a2[8]))
    {
      [(NSSQLiteConnection *)v5 cacheCurrentDBStatementOn:a2];
    }

    return [v5 execute];
  }

  return result;
}

- (uint64_t)selectCountWithStatement:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (a2 && (a2[40] & 1) != 0)
    {
      return 0;
    }

    else
    {
      [(NSSQLiteConnection *)result bindTempTablesForStatementIfNecessary:a2];
      [(NSSQLiteConnection *)v3 prepareSQLStatement:a2];
      [v3 execute];
      return 1;
    }
  }

  return result;
}

- (void)setColumnsToFetch:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[7];
    if (v4 != a2)
    {

      result = a2;
      v3[7] = result;
    }
  }

  return result;
}

- (void)endFetchAndRecycleStatement:(uint64_t)statement
{
  v49 = *MEMORY[0x1E69E9840];
  if (statement)
  {
    v3 = *(statement + 8);
    if (v3)
    {
      dispatch_assert_queue_V2(v3);
    }

    context = objc_autoreleasePoolPush();
    v4 = *(statement + 80);
    if (v4)
    {
      v5 = *(statement + 16);
      if (v5)
      {
        if (*(v5 + 202))
        {
          v6 = *(statement + 8);
          if (v6)
          {
            dispatch_assert_queue_V2(v6);
          }

          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v8 = *(statement + 368);
          if (v8)
          {
            sqlite3_reset(v8);
          }

          else if (sqlite3_prepare_v3(*(statement + 72), "SELECT name FROM tables_used(?) WHERE type = 'index'", -1, 0, (statement + 368), 0))
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v33 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v33;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to prepare statement to fetched used indexes: %s\n", buf, 0xCu);
            }

            v13 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
            {
              v34 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v34;
              _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Failed to prepare statement to fetched used indexes: %s", buf, 0xCu);
            }

            goto LABEL_37;
          }

          if (sqlite3_bind_pointer(*(statement + 368), 1, v4, "stmt-pointer", 0))
          {
            sqlite3_clear_bindings(*(statement + 368));

            v9 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              v32 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v32;
              _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to bind statement pointer: %s\n", buf, 0xCu);
            }

            v10 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
            {
              v11 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v11;
              _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Failed to bind statement pointer: %s", buf, 0xCu);
            }
          }

          else
          {
            v14 = objc_autoreleasePoolPush();
            while (1)
            {
              v15 = sqlite3_step(*(statement + 368));
              if (v15 != 100)
              {
                break;
              }

              [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", sqlite3_column_text(*(statement + 368), 0), context)}];
            }

            if (v15 == 101)
            {
              objc_autoreleasePoolPop(v14);
              if (sqlite3_clear_bindings(*(statement + 368)))
              {
                v16 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v37 = sqlite3_errmsg(*(statement + 72));
                  *buf = 136315138;
                  v48 = v37;
                  _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to clear bindings. %s\n", buf, 0xCu);
                }

                v17 = _PFLogGetLogStream(17);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
                {
                  v38 = sqlite3_errmsg(*(statement + 72));
                  *buf = 136315138;
                  v48 = v38;
                  _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Failed to clear bindings. %s", buf, 0xCu);
                }
              }

              v18 = v7;
              goto LABEL_38;
            }

            sqlite3_clear_bindings(*(statement + 368));

            v19 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v35 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v35;
              _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to fetch used indexes. %s\n", buf, 0xCu);
            }

            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              v36 = sqlite3_errmsg(*(statement + 72));
              *buf = 136315138;
              v48 = v36;
              _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Failed to fetch used indexes. %s", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v14);
          }

LABEL_37:
          v18 = 0;
LABEL_38:
          v21 = sqlite3_stmt_status(*(statement + 80), 4, 1);
          v22 = *(statement + 88);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v23 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (!v23)
          {
            goto LABEL_49;
          }

          v24 = v23;
          v25 = *v43;
          v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
          v26.i64[1] = v21;
          v41 = v26;
          do
          {
            v27 = 0;
            do
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v18);
              }

              v28 = *(*(&v42 + 1) + 8 * v27);
              v29 = objc_autoreleasePoolPush();
              v30 = [*(statement + 344) objectForKeyedSubscript:v28];
              if (v30)
              {
                v31 = v30;
              }

              else
              {
                v31 = -[NSSQLiteIndexStatistics initWithName:storeID:]([NSSQLiteIndexStatistics alloc], "initWithName:storeID:", v28, [*(statement + 16) identifier]);
                [*(statement + 344) setObject:v31 forKeyedSubscript:v28];

                if (!v31)
                {
                  goto LABEL_47;
                }
              }

              *&v31->_executionCount = vaddq_s64(*&v31->_executionCount, v41);
              v31->_rowCount += v22;
LABEL_47:
              objc_autoreleasePoolPop(v29);
              ++v27;
            }

            while (v24 != v27);
            v24 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
          }

          while (v24);
        }
      }
    }

LABEL_49:
    if ((*(statement + 312) & 2) != 0)
    {
      [(NSSQLiteConnection *)statement setColumnsToFetch:?];
      *(statement + 312) &= ~2u;
      *(statement + 100) = 0;
      *(statement + 92) = 0;
      *(statement + 108) = 0;
    }

    if (a2)
    {
      [(NSSQLiteConnection *)statement resetSQLStatement];
    }

    else
    {
      [(NSSQLiteConnection *)statement releaseSQLStatement];
    }

    objc_autoreleasePoolPop(context);
  }
}

- (void)handleCorruptedDB:(uint64_t)b
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSSQLiteConnection *)b _forceDisconnectOnError];
  if (+[NSSQLCore debugDefault]< 1)
  {
LABEL_20:
    v12 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 259, a2, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(b + 32), *MEMORY[0x1E696A368], 0, *buf, *&buf[8]}]);
    objc_exception_throw(v12);
  }

  v4 = *(b + 42);
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (v4 == 1)
  {
    if (_pflogging_enable_oslog >= 1)
    {
      v6 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v6)
      {
        if (v8)
        {
          *buf = 138412290;
          *&buf[4] = a2;
          goto LABEL_13;
        }
      }

      else if (v8)
      {
        *buf = 138412290;
        *&buf[4] = a2;
LABEL_13:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m %@\x1B[0m", a2);
LABEL_19:
    objc_autoreleasePoolPop(v5);
    goto LABEL_20;
  }

  if (_pflogging_enable_oslog >= 1)
  {
    v9 = _pflogging_catastrophic_mode;
    v10 = _PFLogGetLogStream(1);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        *&buf[4] = a2;
        goto LABEL_17;
      }
    }

    else if (v11)
    {
      *buf = 138412290;
      *&buf[4] = a2;
LABEL_17:
      _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "%@", a2);
  goto LABEL_19;
}

- (unint64_t)fetchResultSet:(uint64_t)set usingFetchPlan:
{
  v126 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = *(set + 16);
  if (!v6)
  {
    v6 = 0x7FFFFFFF;
  }

  v117 = v6;
  v7 = *(set + 48);
  if (v7)
  {
    v113 = *(v7 + 42) >> 7;
  }

  else
  {
    v113 = 0;
  }

  v8 = *(set + 72);
  model = [*(set + 40) model];
  if (v117 < 1)
  {
    result = 0;
    goto LABEL_143;
  }

  v9 = 0;
  v10 = 0;
  v116 = v8 & 0x18;
  v115 = v8;
  while ((v4[39] & 2) != 0)
  {
    fetchResultSetPrepareNextRow(a2);
    v11 = *(a2 + 24);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 0;
      if ((v8 & 1) == 0)
      {
LABEL_13:
        v13 = *(set + 40);
        if (v13)
        {
          v14 = *(v13 + 184);
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v12 = *(*(a2 + 64) + 8 * v11) + *(a2 + 32);
      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v15 = sqlite3_column_int(v4[10], 0);
    if (!v15)
    {
      v109 = @"The database appears corrupt.  (invalid entity key)";
      goto LABEL_148;
    }

    v14 = v15;
    if (v15 == *(v4 + 23))
    {
      v13 = v4[13];
    }

    else
    {
      v13 = (*(set + 64))(model, sel_entityForID_, v15);
      v4[13] = v13;
      *(v4 + 23) = v14;
    }

LABEL_20:
    *(v12 + 8) = v14;
    v121 = v9;
    v120 = v10;
    if (v116 == 16)
    {
      *(v12 + 24) = 0;
      if ((v8 & 2) != 0)
      {
        goto LABEL_133;
      }

      plan_for_entity = _sql_read_only_fetch_plan_for_entity(v13);
      goto LABEL_27;
    }

    v17 = sqlite3_column_int64(v4[10], 1);
    *(v12 + 24) = v17;
    if (!v17)
    {
      v109 = @"The database appears corrupt.  (invalid primary key)";
LABEL_148:
      [(NSSQLiteConnection *)v4 handleCorruptedDB:v109];
    }

    if ((v8 & 2) == 0)
    {
      plan_for_entity = _sql_fetch_plan_for_entity(v13);
LABEL_27:
      v18 = plan_for_entity;
      v19 = *plan_for_entity;
      if (*(a2 + 80) - *(a2 + 88) + *(a2 + 16) < v19)
      {
        fetchResultSetReallocCurrentRow(a2, v19);
      }

      v20 = v18[1];
      if (v20)
      {
        v118 = v12;
        v21 = 0;
        v22 = v18 + 3;
        while (1)
        {
          if (*(v22 + 8) - 2 > 6)
          {
            v23 = 3;
          }

          else
          {
            v23 = qword_18592E738[(*(v22 + 8) - 2)];
          }

          v24 = ~v23;
          v25 = (v23 + *(a2 + 88)) & ~v23;
          if (*(a2 + 80) - v25 + *(a2 + 16) > 15)
          {
            *(a2 + 88) = v25;
          }

          else
          {
            fetchResultSetReallocCurrentRow(a2, 16);
            v26 = *(a2 + 80);
            v27 = (v23 + *(a2 + 88)) & v24;
            *(a2 + 88) = v27;
            if (v26 - v27 + *(a2 + 16) <= 15)
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                v91 = *(a2 + 80) - *(a2 + 88) + *(a2 + 16);
                *buf = 134218240;
                v123 = v91;
                v124 = 1024;
                v125 = 16;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: less space allocated for fetch result (%ld) than we asked for (%u)!\n", buf, 0x12u);
              }

              v29 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
              {
                v30 = *(a2 + 80) - *(a2 + 88) + *(a2 + 16);
                *buf = 134218240;
                v123 = v30;
                v124 = 1024;
                v125 = 16;
                _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: less space allocated for fetch result (%ld) than we asked for (%u)!", buf, 0x12u);
              }
            }
          }

          [*(v22 + 3) propertyDescription];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [objc_msgSend(*(v22 + 3) "propertyDescription")];
          }

          v31 = *(v22 + 8);
          if (v31 > 0x10)
          {
            goto LABEL_77;
          }

          if (((1 << v31) & 0x7270) != 0)
          {
            v32 = sqlite3_column_text(v4[10], *v22);
            v33 = v32;
            if (v22[1])
            {
              v34 = *(a2 + 88);
              v35 = (!v32 || !*v32) && sqlite3_column_type(v4[10], *v22) == 5;
              *v34 = v35;
              v40 = *(a2 + 88) + 1;
              *(a2 + 88) = v40;
              if (*v34)
              {
                goto LABEL_115;
              }

              *(a2 + 88) = (v40 + v23) & v24;
            }

            if (v33)
            {
              v41 = strlen(v33) + 1;
              v42 = *(a2 + 88);
              *v42 = v41;
              v43 = v42 + 1;
              *(a2 + 88) = v43;
              v44 = v41;
              if (*(a2 + 80) - v43 + *(a2 + 16) < v41)
              {
                fetchResultSetReallocCurrentRow(a2, v41);
                v43 = *(a2 + 88);
              }

              memcpy(v43, v33, v44);
              *(a2 + 88) += v44;
              goto LABEL_115;
            }

            v45 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v46 = _pflogging_catastrophic_mode;
              v47 = _PFLogGetLogStream(1);
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
              if (v46)
              {
                if (v48)
                {
LABEL_130:
                  v101 = MEMORY[0x1E696AEC0];
                  v102 = *(v118 + 24);
                  v103 = [objc_msgSend(_sqlEntityForEntityID(model *(v118 + 8))];
                  v104 = objc_msgSend_stringWithFormat_(v101, v102, v103, [objc_msgSend(*(v22 + 3) "propertyDescription")]);
                  *buf = 138412290;
                  v123 = v104;
                  _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
                }
              }

              else if (v48)
              {
                goto LABEL_130;
              }
            }

            v79 = MEMORY[0x1E696AEC0];
            v80 = *(v118 + 24);
            v81 = [objc_msgSend(_sqlEntityForEntityID(model *(v118 + 8))];
            v82 = objc_msgSend_stringWithFormat_(v79, v80, v81, [objc_msgSend(*(v22 + 3) "propertyDescription")]);
            _NSCoreDataLog_console(1, "%@\n", v82);
            objc_autoreleasePoolPop(v45);
            v83 = *(a2 + 24);
            if ((v83 & 0x80000000) != 0)
            {
              v84 = 0;
            }

            else
            {
              v84 = *(*(a2 + 64) + 8 * v83) + *(a2 + 32);
            }

            v20 = 0;
            *v84 = -1;
            *(v84 + 24) = 0;
            *(v84 + 8) = 0;
            --*a2;
            *(a2 + 88) = v84;
            --v121;
            goto LABEL_115;
          }

          if (((1 << v31) & 0x180) == 0)
          {
            break;
          }

          v36 = sqlite3_column_double(v4[10], *v22);
          v37 = v36;
          v38 = *(a2 + 88);
          if (v22[1])
          {
            v39 = v36 == 0.0 && sqlite3_column_type(v4[10], *v22) == 5;
            *v38 = v39;
            v87 = *(a2 + 88) + 1;
            *(a2 + 88) = v87;
            if (*v38)
            {
              goto LABEL_115;
            }

            v38 = ((v87 + v23) & v24);
          }

          *v38 = v37;
          *(a2 + 88) = v38 + 1;
LABEL_115:
          ++v21;
          v22 += 6;
          if (v21 >= v20)
          {
            goto LABEL_133;
          }
        }

        if (v31 == 16)
        {
          if (v113)
          {
            if (([objc_msgSend(*(v22 + 3) "propertyDescription")] & 1) == 0)
            {
              v49 = sqlite3_column_blob(v4[10], *v22);
              v50 = sqlite3_column_bytes(v4[10], *v22);
              v51 = (v50 - 1);
              if (v50 >= 1)
              {
                v52 = v50;
                v112 = v20;
                result = [MEMORY[0x1E696AC08] defaultManager];
                v53 = *v49;
                if (v53 == 1)
                {
                  v59 = [_PFExternalReferenceData alloc];
                  v93 = v4[2];
                  if (v93)
                  {
                    v61 = (*(v93 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = v52;
                  v63 = v49;
                  v64 = 0;
                  v65 = 0;
                }

                else
                {
                  if (v53 == 3)
                  {
                    __break(1u);
                    return result;
                  }

                  v54 = [result stringWithFileSystemRepresentation:v49 + 1 length:{strnlen(v49 + 1, v51)}];
                  externalDataReferencesDirectory = [v4[2] externalDataReferencesDirectory];
                  v56 = v4[2];
                  if (v56)
                  {
                    if (!atomic_load(v56 + 21))
                    {
                      v110 = externalDataReferencesDirectory;
                      [v56 externalDataReferencesDirectory];
                      externalDataReferencesDirectory = v110;
                    }

                    v56 = atomic_load(v56 + 22);
                  }

                  v111 = [externalDataReferencesDirectory stringByAppendingPathComponent:v54];
                  v58 = [v56 stringByAppendingPathComponent:v54];
                  v59 = [_PFExternalReferenceData alloc];
                  v60 = v4[2];
                  if (v60)
                  {
                    v61 = (*(v60 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v62 = v52;
                  v63 = v49;
                  v64 = v111;
                  v65 = v58;
                }

                v94 = [(_PFExternalReferenceData *)v59 initWithStoreBytes:v63 length:v62 externalLocation:v64 safeguardLocation:v65 protectionLevel:v61];
                v95 = [(_PFExternalReferenceData *)v94 length];
                v96 = v95;
                v97 = *(a2 + 88);
                if (v22[1])
                {
                  if (v95)
                  {
                    v98 = 0;
                  }

                  else
                  {
                    v98 = sqlite3_column_type(v4[10], *v22) == 5;
                  }

                  *v97 = v98;
                  v99 = *(a2 + 88) + 1;
                  *(a2 + 88) = v99;
                  if (!*v97)
                  {
                    v97 = ((v99 + v23) & v24);
                    goto LABEL_126;
                  }
                }

                else
                {
LABEL_126:
                  *v97 = v96;
                  v100 = v97 + 4;
                  *(a2 + 88) = v100;
                  if (*(a2 + 80) - v100 + *(a2 + 16) < v96)
                  {
                    fetchResultSetReallocCurrentRow(a2, v96);
                    v100 = *(a2 + 88);
                  }

                  memcpy(v100, [(_PFExternalReferenceData *)v94 bytes], v96);
                  *(a2 + 88) += v96;
                }

                v20 = v112;
                goto LABEL_115;
              }
            }
          }
        }

        else
        {
LABEL_77:
          if (v31 - 2 < 2)
          {
            v66 = v20;
            v67 = sqlite3_column_int64(v4[10], *v22);
            v68 = v67;
            v69 = *(a2 + 88);
            if (v22[1])
            {
              if (v67)
              {
                v70 = 0;
              }

              else
              {
                v70 = sqlite3_column_type(v4[10], *v22) == 5;
              }

              *v69 = v70;
              v85 = *(a2 + 88) + 1;
              *(a2 + 88) = v85;
              if (*v69)
              {
                goto LABEL_114;
              }

              v69 = ((v85 + v23) & v24);
            }

            *v69 = v68;
            v86 = v69 + 8;
            goto LABEL_113;
          }

          if (v31 == 1)
          {
            v66 = v20;
            v71 = sqlite3_column_int(v4[10], *v22);
            v72 = v71;
            v73 = *(a2 + 88);
            if (v22[1])
            {
              if (v71)
              {
                v78 = 0;
              }

              else
              {
                v78 = sqlite3_column_type(v4[10], *v22) == 5;
              }

              *v73 = v78;
              v92 = *(a2 + 88) + 1;
              *(a2 + 88) = v92;
              if (!*v73)
              {
                v73 = ((v92 + v23) & v24);
                goto LABEL_112;
              }
            }

            else
            {
LABEL_112:
              *v73 = v72;
              v86 = v73 + 4;
LABEL_113:
              *(a2 + 88) = v86;
            }

LABEL_114:
            v20 = v66;
            goto LABEL_115;
          }
        }

        v74 = sqlite3_column_bytes(v4[10], *v22);
        v75 = v74;
        v76 = *(a2 + 88);
        if ((v22[1] & 1) == 0)
        {
          goto LABEL_105;
        }

        if (v74)
        {
          v77 = 0;
        }

        else
        {
          v77 = sqlite3_column_type(v4[10], *v22) == 5;
        }

        *v76 = v77;
        v88 = *(a2 + 88) + 1;
        *(a2 + 88) = v88;
        if (!*v76)
        {
          v76 = ((v88 + v23) & v24);
LABEL_105:
          *v76 = v75;
          v89 = v76 + 4;
          *(a2 + 88) = v89;
          if (*(a2 + 80) - v89 + *(a2 + 16) < v75)
          {
            fetchResultSetReallocCurrentRow(a2, v75);
            v89 = *(a2 + 88);
          }

          v90 = sqlite3_column_blob(v4[10], *v22);
          memcpy(v89, v90, v75);
          *(a2 + 88) += v75;
          goto LABEL_115;
        }

        goto LABEL_115;
      }
    }

LABEL_133:
    v105 = *(a2 + 28);
    if (v105 != -1)
    {
      v106 = *(*(a2 + 64) + 8 * v105);
      if (v106)
      {
        v107 = *(a2 + 32);
        v108 = v106 + *(a2 + 40);
        *(v108 + 4) = *(a2 + 24);
        *(v108 + 16) = v107;
      }
    }

    ++*(v4 + 22);
    v9 = v121 + 1;
    _execute(v4);
    v10 = v120 + 1;
    LOBYTE(v8) = v115;
    if (v120 + 1 == v117)
    {
      break;
    }
  }

  if (v9 <= 0x40000000)
  {
    result = v9;
  }

  else
  {
    result = 0;
  }

LABEL_143:
  *(a2 + 4) = result;
  if ((v4[39] & 2) == 0)
  {
    *(a2 + 48) |= 1u;
  }

  return result;
}

- (uint64_t)fetchBufferResultSet:(uint64_t)set usingFetchPlan:
{
  v159 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  v6 = *(set + 16);
  if (!v6)
  {
    v6 = 0x7FFFFFFF;
  }

  v141 = v6;
  v139 = *(set + 72);
  model = [*(set + 40) model];
  v7 = *(set + 48);
  if (v7)
  {
    v140 = *(v7 + 42) >> 7;
  }

  else
  {
    v140 = 0;
  }

  v8 = *(set + 40);
  if (v8)
  {
    v9 = *(v8 + 240);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 length];
  v11 = *(set + 40);
  if (v11)
  {
    v12 = *(v11 + 184);
  }

  else
  {
    v12 = 0;
  }

  setCopy = set;
  v145 = *(set + 64);
  v138 = *(set + 40);
  plan_for_entity = _sql_read_only_fetch_plan_for_entity(v11);
  v14 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v14);
  v143 = plan_for_entity;
  if (((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v10 + *plan_for_entity <= 0x800)
  {
    v16 = 2048;
  }

  else
  {
    v16 = ((InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8) + 8 * v10 + *plan_for_entity;
  }

  v157 = v16;
  v17 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v17 = malloc_default_zone();
  }

  v18 = malloc_type_zone_calloc(v17, 1uLL, v16, 0x856CF55FuLL);
  if (!v18)
  {
    v131 = [_NSCoreDataException exceptionWithName:134183 code:@"PF_CALLOC failed" reason:0 userInfo:?];
    objc_exception_throw(v131);
  }

  v19 = v18;
  if (v141 < 1)
  {
    v142 = 0;
    goto LABEL_186;
  }

  v142 = 0;
  v20 = 0;
  v137 = 8 * v10;
  v147 = v4;
  do
  {
    if ((*(v4 + 312) & 2) == 0)
    {
      break;
    }

    if ((v139 & 1) == 0)
    {
      goto LABEL_24;
    }

    v21 = sqlite3_column_int(*(v4 + 80), 0);
    v22 = v21;
    if (!v21)
    {
      [(NSSQLiteConnection *)v4 handleCorruptedDB:?];
    }

    v12 = v21;
    if (v21 != *(v4 + 92))
    {
      v138 = (*(setCopy + 64))(model, sel_entityForID_, v21);
      *(v4 + 104) = v138;
      *(v4 + 92) = v22;
      v23 = _sql_read_only_fetch_plan_for_entity(v138);
    }

    else
    {
LABEL_24:
      v23 = v143;
    }

    v24 = *(v23 + 4);
    bzero(v19 + 8, v157 - 8);
    *(v19 + 5) = 0;
    v144 = v12;
    *(v19 + 3) = v12;
    *(v19 + 4) = 0;
    bzero(v19 + 40, v137);
    v25 = &v19[v137 + 40];
    v150 = v24;
    v143 = v23;
    if (!v24)
    {
      v154 = 0;
LABEL_174:
      *(v19 + 5) = v154;
      bufferResultSetIngestRow(a2, v19, ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) - v19);
      ++*(v4 + 88);
      ++v142;
      goto LABEL_175;
    }

    v26 = 0;
    v152 = 0;
    v149 = 0;
    v153 = 0;
    v154 = 0;
    v27 = 0;
    v151 = v23 + 8;
    v156 = &v19[v137 + 40];
    v148 = v20;
    while (1)
    {
      v155 = v27;
      v28 = v151 + 24 * v26;
      v29 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
      sqlType = *(v28 + 12);
      if (v29 - v25 >= 1)
      {
        *&v156[8 * (v27 - v10) - 8] += v29 - v25;
      }

      if (v19 - v29 + v157 <= 0xF)
      {
        v157 += 16;
        v31 = bufferResultSetRealloc(v19, &v157);
        v156 = &v31[v156 - v19];
        v29 = (&v31[v25 - v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        v19 = v31;
      }

      if (v26 >= 7 && (v152 & 1) != 0)
      {
        v32 = v153;
        if (!v153)
        {
          v32 = v145([*(v4 + 16) model], sel_entityForID_, v149);
        }

        v153 = v32;
        v33 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v32];
        v34 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v28 + 16) "propertyDescription")];
        if (v34 < [v33 count])
        {
          v35 = [v33 objectAtIndexedSubscript:v34];
          if (v153)
          {
            v36 = [v153[5] objectForKey:v35];
          }

          else
          {
            v36 = 0;
          }

          sqlType = [v36 sqlType];
        }
      }

      if (sqlType > 0x10)
      {
        goto LABEL_87;
      }

      if (((1 << sqlType) & 0x7270) == 0)
      {
        if (((1 << sqlType) & 0x180) != 0)
        {
          v39 = sqlite3_column_double(*(v4 + 80), *(v28 + 4));
          v40 = v39;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_117;
          }

          if (v39 != 0.0)
          {
            *v29 = 0;
LABEL_117:
            *v29 = v40;
            v25 = v29 + 8;
            goto LABEL_124;
          }

          v85 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v85 == 5;
          if (v85 != 5)
          {
            goto LABEL_117;
          }

          goto LABEL_51;
        }

        if (sqlType == 16)
        {
          if (v140)
          {
            if (([objc_msgSend(*(v28 + 16) "propertyDescription")] & 1) == 0)
            {
              v136 = sqlite3_column_blob(*(v4 + 80), *(v28 + 4));
              v56 = sqlite3_column_bytes(*(v4 + 80), *(v28 + 4));
              if (v56 >= 1)
              {
                defaultManager = [MEMORY[0x1E696AC08] defaultManager];
                v58 = *v136;
                if (v58 == 1)
                {
                  v103 = [_PFExternalReferenceData alloc];
                  v104 = *(v4 + 16);
                  if (v104)
                  {
                    v105 = (*(v104 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v70 = [(_PFExternalReferenceData *)v103 initWithStoreBytes:v136 length:v56 externalLocation:0 safeguardLocation:0 protectionLevel:v105];
                }

                else
                {
                  if (v58 == 3)
                  {
                    __break(1u);
                  }

                  v59 = [defaultManager stringWithFileSystemRepresentation:v136 + 1 length:{strnlen(v136 + 1, (v56 - 1))}];
                  externalDataReferencesDirectory = [*(v4 + 16) externalDataReferencesDirectory];
                  v61 = *(v4 + 16);
                  if (v61)
                  {
                    if (!atomic_load((v61 + 168)))
                    {
                      [*(v4 + 16) externalDataReferencesDirectory];
                    }

                    v63 = v59;
                    v64 = atomic_load((v61 + 176));
                    v133 = v64;
                  }

                  else
                  {
                    v63 = v59;
                    v133 = 0;
                  }

                  v20 = v148;
                  v65 = v63;
                  v132 = [externalDataReferencesDirectory stringByAppendingPathComponent:v63];
                  v66 = [v133 stringByAppendingPathComponent:v65];
                  v67 = [_PFExternalReferenceData alloc];
                  v68 = *(v4 + 16);
                  if (v68)
                  {
                    v69 = (*(v68 + 200) >> 2) & 7;
                  }

                  else
                  {
                    v69 = 0;
                  }

                  v70 = [(_PFExternalReferenceData *)v67 initWithStoreBytes:v136 length:v56 externalLocation:v132 safeguardLocation:v66 protectionLevel:v69];
                }

                v106 = v70;
                v107 = [(_PFExternalReferenceData *)v70 length];
                v108 = objc_opt_class();
                if ((((class_getInstanceSize(v108) + 7) & 0xFFFFFFFFFFFFFFF8) + v107) >> 31)
                {
                  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Data is larger than 2GB" userInfo:0]);
                }

                v109 = [(_PFExternalReferenceData *)v106 length];
                v110 = v109;
                if ((*(v28 + 8) & 1) == 0)
                {
                  goto LABEL_159;
                }

                if (v109)
                {
                  *v29 = 0;
LABEL_159:
                  v112 = objc_opt_class();
                  v113 = ((class_getInstanceSize(v112) + 7) & 0xFFFFFFF8) + v110;
                  v114 = v19;
                  v115 = (v29 - v19);
                  if (v157 - v115 >= v113)
                  {
                    v19 = v114;
                  }

                  else
                  {
                    v157 += v113;
                    v116 = bufferResultSetRealloc(v114, &v157);
                    v29 = &v115[v116];
                    v156 = &v116[v156 - v114];
                    v19 = v116;
                  }

                  if (!v29)
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134217984;
                      *&buf[4] = v157;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: bufferResultSetRealloc failed to realloc buffer to %ld bytes\n", buf, 0xCu);
                    }

                    v129 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 134217984;
                      *&buf[4] = v157;
                      _os_log_fault_impl(&dword_18565F000, v129, OS_LOG_TYPE_FAULT, "CoreData: bufferResultSetRealloc failed to realloc buffer to %ld bytes", buf, 0xCu);
                    }

                    v130 = [_NSCoreDataException exceptionWithName:134183 code:@"realloc failed" reason:0 userInfo:?];
                    objc_exception_throw(v130);
                  }

                  *v29 = 0;
                  *(v29 + 3) = v110;
                  memcpy(v29 + 24, [(_PFExternalReferenceData *)v106 bytes], v110);

                  ++v154;
                  v25 = &v29[v110 + 24];
LABEL_125:
                  v42 = v155;
                  *&v156[8 * (v155 - v10)] = v25 - v29;
                  goto LABEL_126;
                }

                v111 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
                *v29 = v111 == 5;
                if (v111 != 5)
                {
                  goto LABEL_159;
                }

                goto LABEL_51;
              }
            }
          }

          goto LABEL_96;
        }

LABEL_87:
        if (sqlType - 2 < 2)
        {
          v71 = sqlite3_column_int64(*(v4 + 80), *(v28 + 4));
          v72 = v71;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_109;
          }

          if (v71)
          {
            *v29 = 0;
LABEL_109:
            v81 = v29;
            if (*(v28 + 13) == 3)
            {
              v82 = [objc_msgSend(*(v28 + 16) "toOneRelationship")];
              if (v82)
              {
                v83 = *(v82 + 184);
              }

              else
              {
                v83 = 0;
              }

              *v29 = v83;
              v81 = (v29 + 8);
            }

            *v81 = v72;
            v25 = (v81 + 1);
            v84 = v149;
            if ((v152 & (v26 == 5)) != 0)
            {
              v84 = v72;
            }

            v149 = v84;
LABEL_124:
            ++v154;
            goto LABEL_125;
          }

          v80 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v80 == 5;
          if (v80 != 5)
          {
            goto LABEL_109;
          }

          goto LABEL_51;
        }

        if (sqlType != 1)
        {
LABEL_96:
          v76 = sqlite3_column_bytes(*(v4 + 80), *(v28 + 4));
          v77 = v76;
          if ((*(v28 + 8) & 1) == 0)
          {
            goto LABEL_119;
          }

          if (v76)
          {
            *v29 = 0;
LABEL_119:
            v87 = objc_opt_class();
            v88 = ((class_getInstanceSize(v87) + 7) & 0xFFFFFFF8) + v77;
            v89 = v19;
            v90 = (v29 - v19);
            if (v157 - v90 >= v88)
            {
              v19 = v89;
            }

            else
            {
              v157 += v88;
              v91 = bufferResultSetRealloc(v89, &v157);
              v29 = &v90[v91];
              v156 = &v91[v156 - v89];
              v19 = v91;
            }

            if (!v29)
            {
              v125 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v157;
                _os_log_error_impl(&dword_18565F000, v125, OS_LOG_TYPE_ERROR, "CoreData: fault: bufferResultSetRealloc failed to realloc buffer to %ld bytes\n", buf, 0xCu);
              }

              v126 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
              {
                *buf = 134217984;
                *&buf[4] = v157;
                _os_log_fault_impl(&dword_18565F000, v126, OS_LOG_TYPE_FAULT, "CoreData: bufferResultSetRealloc failed to realloc buffer to %ld bytes", buf, 0xCu);
              }

              v127 = [_NSCoreDataException exceptionWithName:134183 code:@"realloc failed" reason:0 userInfo:?];
              objc_exception_throw(v127);
            }

            *v29 = 0;
            *(v29 + 3) = v77;
            v92 = sqlite3_column_blob(*(v4 + 80), *(v28 + 4));
            memcpy(v29 + 24, v92, v77);
            v25 = &v29[v77 + 24];
            goto LABEL_124;
          }

          v86 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v86 == 5;
          if (v86 != 5)
          {
            goto LABEL_119;
          }

          goto LABEL_51;
        }

        v73 = sqlite3_column_int(*(v4 + 80), *(v28 + 4));
        v74 = v73;
        v75 = *(v28 + 8);
        if (*(v28 + 13) != 4)
        {
          if ((v75 & 1) == 0)
          {
            goto LABEL_136;
          }

          if (v73)
          {
            *v29 = 0;
LABEL_136:
            *v29 = v74;
            if (v138)
            {
              v99 = *(v138 + 184) == 16001;
            }

            else
            {
              v99 = 0;
            }

            if (v26 != 3)
            {
              v99 = 0;
            }

            if (v74 != 2)
            {
              v99 = 0;
            }

            v152 |= v99;
            ++v154;
            v25 = v29 + 4;
            goto LABEL_125;
          }

          v98 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
          *v29 = v98 == 5;
          if (v98 != 5)
          {
            goto LABEL_136;
          }

          goto LABEL_51;
        }

        if (v75)
        {
          if (v73)
          {
            *v29 = 0;
          }

          else
          {
            v93 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
            *v29 = v93 == 5;
            if (v93 == 5)
            {
              ++v26;
              v25 = v29;
              goto LABEL_125;
            }
          }
        }

        v94 = v19;
        *v29 = v74;
        v25 = v29 + 8;
        v95 = v151 + 24 * ++v26;
        v96 = sqlite3_column_int64(*(v4 + 80), *(v95 + 4));
        v97 = v96;
        if ((*(v95 + 8) & 1) == 0)
        {
          goto LABEL_148;
        }

        if (v96)
        {
          *v25 = 0;
          goto LABEL_148;
        }

        v100 = sqlite3_column_type(*(v4 + 80), *(v95 + 4));
        *v25 = v100 == 5;
        if (v100 == 5)
        {
          v101 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v102 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
LABEL_166:
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v102, OS_LOG_TYPE_ERROR, "CoreData: error: BufferAllocations found a bad Object ID\n", buf, 2u);
              }
            }

            else
            {
              v102 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_166;
              }
            }
          }

          _NSCoreDataLog_console(1, "BufferAllocations found a bad Object ID");
          objc_autoreleasePoolPop(v101);
        }

        else
        {
LABEL_148:
          *(v29 + 1) = v97;
          v25 = v29 + 16;
          ++v154;
        }

        v19 = v94;
        goto LABEL_125;
      }

      v37 = sqlite3_column_text(*(v4 + 80), *(v28 + 4));
      v38 = v37;
      if ((*(v28 + 8) & 1) == 0)
      {
        break;
      }

      if (v37 && *v37)
      {
        *v29 = 0;
        goto LABEL_53;
      }

      v41 = sqlite3_column_type(*(v4 + 80), *(v28 + 4));
      *v29 = v41 == 5;
      if (v41 != 5)
      {
        break;
      }

LABEL_51:
      v25 = v29;
      v42 = v155;
LABEL_126:
      ++v26;
      v27 = v42 + 1;
      if (v26 >= v150)
      {
        goto LABEL_174;
      }
    }

    if (v38)
    {
LABEL_53:
      objc_opt_self();
      LOBYTE(v43) = *v38;
      if (*v38)
      {
        v44 = 0;
        v45 = 0;
        do
        {
          if ((v43 & 0x80u) != 0)
          {
            v44 = 1;
          }

          v43 = v38[++v45];
        }

        while (v43);
        v46 = v44 == 0;
        if (v44)
        {
          v47 = v44;
        }

        else
        {
          v47 = 0;
        }

        v48 = off_1E6EC0C60;
        if (!v46)
        {
          v48 = off_1E6EC0C68;
        }

        v49 = v45;
      }

      else
      {
        v49 = 0;
        v45 = 0;
        v47 = 0;
        v48 = off_1E6EC0C60;
      }

      v50 = v10;
      bufferOffset = [(__objc2_class *)*v48 bufferOffset];
      v52 = bufferOffset + (((v45 << 32) + 0x100000000) >> 32);
      if (v157 - (v29 - v19) >= v52)
      {
        v54 = v19;
      }

      else
      {
        v157 += v52;
        v53 = bufferResultSetRealloc(v19, &v157);
        v29 = &v53[v29 - v19];
        v156 = &v53[v156 - v19];
        v54 = v53;
      }

      if (v49 > 7 || (v47 & 1) != 0)
      {
        *v29 = -v47;
        *(v29 + 4) = v49;
        memcpy(&v29[bufferOffset], v38, v45);
        v55 = &v29[bufferOffset + v45];
      }

      else
      {
        if ((*(a2 + 40) & 2) == 0)
        {
          *buf = 0;
          __memmove_chk();
          v4 = v147;
          if ((*buf & 0x8080808080808080) != 0)
          {
            v25 = v29;
            goto LABEL_101;
          }

          v78 = (8 * v45) | (*buf << 7) | 0x8000000000000002;
          v79 = *MEMORY[0x1E69E5910] ^ v78;
          if ((~v79 & 0xC000000000000007) == 0)
          {
            v19 = v54;
            goto LABEL_129;
          }

          v25 = v29;
          v78 = v79 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v79 & 7));
          v19 = v54;
          if (v78)
          {
LABEL_129:
            *v29 = v78;
            v25 = v29 + 8;
          }

LABEL_102:
          ++v154;
          v10 = v50;
          v20 = v148;
          goto LABEL_125;
        }

        memcpy(v29, v38, v45);
        v55 = &v29[v45];
      }

      *v55 = 0;
      v25 = v55 + 1;
      v4 = v147;
LABEL_101:
      v19 = v54;
      goto LABEL_102;
    }

    v117 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v118 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
LABEL_183:
          v122 = MEMORY[0x1E696AEC0];
          v123 = [objc_msgSend(_sqlEntityForEntityID(model v144)];
          v124 = objc_msgSend_stringWithFormat_(v122, 0, v123, [objc_msgSend(*(v28 + 16) "propertyDescription")]);
          *buf = 138412290;
          *&buf[4] = v124;
          _os_log_error_impl(&dword_18565F000, v118, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n\n", buf, 0xCu);
        }
      }

      else
      {
        v118 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_183;
        }
      }
    }

    v119 = MEMORY[0x1E696AEC0];
    v120 = [objc_msgSend(_sqlEntityForEntityID(model v144)];
    v121 = objc_msgSend_stringWithFormat_(v119, 0, v120, [objc_msgSend(*(v28 + 16) "propertyDescription")]);
    _NSCoreDataLog_console(1, "%@\n", v121);
    objc_autoreleasePoolPop(v117);
LABEL_175:
    v12 = v144;
    _execute(v4);
    ++v20;
  }

  while (v20 != v141);
LABEL_186:
  PF_FREE_OBJECT_ARRAY(v19);
  if (v142 <= 0x40000000)
  {
    result = v142;
  }

  else
  {
    result = 0;
  }

  if ((*(v4 + 312) & 2) == 0)
  {
    *(a2 + 40) |= 1u;
  }

  return result;
}

- (void)setSecureDeleteMode:(uint64_t)mode
{
  if (mode)
  {
    if (a2)
    {
      v2 = @"pragma secure_delete=1";
    }

    else
    {
      v2 = @"pragma secure_delete=0";
    }

    [(NSSQLiteConnection *)mode _executeSQLString:v2];
  }
}

- (void)setExclusiveLockingMode:(BOOL)mode
{
  if (mode)
  {
    v4 = @"pragma locking_mode=EXCLUSIVE";
  }

  else
  {
    v4 = @"pragma locking_mode=NORMAL";
  }

  [(NSSQLiteConnection *)self _executeSQLString:v4];
  [(NSSQLiteConnection *)self beginTransaction];
  [(NSSQLiteConnection *)self commitTransaction];
  [(NSSQLiteConnection *)self endFetchAndRecycleStatement:?];
}

- (void)fetchTableNames
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    v3 = 0;
    v4 = 0;
    for (i = 3; (v3 & 1) == 0 && (i & 0x80000000) == 0; --i)
    {
      [(NSSQLiteConnection *)v1 connect];
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
      v6 = -[NSSQLiteAdapter newStatementWithSQLString:]([v1 adapter], @"SELECT TBL_NAME FROM SQLITE_MASTER WHERE TYPE = table ORDER BY TBL_NAME");
      v7 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      [(NSSQLiteConnection *)v1 prepareSQLStatement:v6];
      [v1 execute];
      [(NSSQLiteConnection *)v1 setColumnsToFetch:v8];
      while (1)
      {
        newFetchedArray = [(NSSQLiteConnection *)v1 newFetchedArray];
        v10 = newFetchedArray;
        if (!newFetchedArray)
        {
          break;
        }

        [v5 addObject:{objc_msgSend(objc_msgSend(newFetchedArray, "objectAtIndex:", 0), "uppercaseString")}];
      }

      v3 = 1;
      [(NSSQLiteConnection *)v1 releaseSQLStatement];
      [(NSSQLiteConnection *)v1 setColumnsToFetch:?];
      *(v1 + 78) &= ~2u;
      *(v1 + 100) = 0;
      *(v1 + 92) = 0;
      *(v1 + 27) = 0;

      v4 = v5;
    }

    return v4;
  }

  return result;
}

- (id)fetchCreationSQLForType:(void *)type containing:
{
  v4 = *(self + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v5 = 0;
  v6 = 0;
  for (i = 3; (v5 & 1) == 0 && (i & 0x80000000) == 0; --i)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:8];
    v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT TBL_NAME, SQL FROM SQLITE_MASTER WHERE TYPE = %@", a2];
    if ([type length])
    {
      [v9 appendFormat:@" AND SQL LIKE %%%@%%", type];
    }

    [v9 appendString:@" ORDER BY TBL_NAME"];
    v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v9);
    v11 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
    v12 = [[NSSQLColumn alloc] initWithColumnName:@"SQL" sqlType:6];
    v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, v12, 0}];

    [(NSSQLiteConnection *)self connect];
    [(NSSQLiteConnection *)self prepareSQLStatement:v10];
    [self execute];
    [(NSSQLiteConnection *)self setColumnsToFetch:v13];
    while (1)
    {
      newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
      v15 = newFetchedArray;
      if (!newFetchedArray)
      {
        break;
      }

      if ([newFetchedArray count] == 2)
      {
        v16 = [v15 objectAtIndex:0];
        v17 = [v15 objectAtIndex:1];
        if ([v16 isNSString])
        {
          if ([v17 isNSString])
          {
            v18 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(v16, "uppercaseString"), objc_msgSend(v17, "uppercaseString"), 0}];
            [v8 addObject:v18];
          }
        }
      }
    }

    v5 = 1;
    v6 = v8;
    [(NSSQLiteConnection *)self releaseSQLStatement];
    [(NSSQLiteConnection *)self setColumnsToFetch:?];
    *(self + 312) &= ~2u;
    *(self + 100) = 0;
    *(self + 92) = 0;
    *(self + 108) = 0;
  }

  return v6;
}

- (id)fetchTableCreationSQLContaining:(id)result
{
  if (result)
  {
    return [(NSSQLiteConnection *)result fetchCreationSQLForType:a2 containing:?];
  }

  return result;
}

- (uint64_t)_hasTableWithName:(int)name isTemp:
{
  if (self)
  {
    v5 = *(self + 8);
    if (v5)
    {
      dispatch_assert_queue_V2(v5);
    }

    context = objc_autoreleasePoolPush();
    v6 = 0;
    v17 = 0;
    if ((*(self + 312) & 0x80) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    v8 = @"SQLITE_TEMP_MASTER";
    if (!name)
    {
      v8 = @"SQLITE_MASTER";
    }

    v18 = v8;
    while ((v6 & 1) == 0 && (v7 & 0x80000000) == 0)
    {
      [(NSSQLiteConnection *)self connect];
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT TBL_NAME FROM %@ WHERE TBL_NAME = '%@'", v18, a2];
      v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v9);

      v11 = [[NSSQLColumn alloc] initWithColumnName:@"TBL_NAME" sqlType:6];
      v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v11, 0}];

      [(NSSQLiteConnection *)self prepareSQLStatement:v10];
      [self execute];
      [(NSSQLiteConnection *)self setColumnsToFetch:v12];

      newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
      if (newFetchedArray)
      {
        v17 = 1;

        v14 = v10;
        v6 = 1;
      }

      else
      {
        v6 = 1;
        v14 = v10;
      }

      [(NSSQLiteConnection *)self releaseSQLStatement];
      [(NSSQLiteConnection *)self setColumnsToFetch:?];
      *(self + 312) &= ~2u;
      *(self + 100) = 0;
      *(self + 92) = 0;
      *(self + 108) = 0;

      --v7;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

- (void)_createInsertStatementsForEntities:(void *)entities
{
  v61 = *MEMORY[0x1E69E9840];
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = a2;
  v40 = [a2 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v40)
  {
    v39 = *v47;
    do
    {
      v3 = 0;
      do
      {
        if (*v47 != v39)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v43 = v3;
        v45 = *(*(&v46 + 1) + 8 * v3);
        v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = v45;
        if (v45)
        {
          while (v7)
          {
            v8 = v7;
            v7 = *(v7 + 168);
            if (v7 == v8)
            {
              v9 = *(v8 + 72);
              goto LABEL_10;
            }
          }
        }

        v9 = 0;
LABEL_10:
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v10 = [v9 sortedArrayUsingFunction:sortColumnsByType context:0];
        v11 = [v10 countByEnumeratingWithState:&v54 objects:v60 count:16];
        if (v11)
        {
          v12 = *v55;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v55 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v54 + 1) + 8 * i);
              [v5 addObject:{objc_msgSend(v14, "columnName")}];
              [v6 addObject:{objc_msgSend(v14, "columnName")}];
            }

            v11 = [v10 countByEnumeratingWithState:&v54 objects:v60 count:16];
          }

          while (v11);
        }

        v15 = [v5 componentsJoinedByString:{@", "}];
        tableName = [v45 tableName];
        v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName);
        if (v45 && (*(v45 + 160) || (v28 = *(v45 + 152)) != 0 && [v28 count]))
        {
          v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@" WHERE "];
          [v18 appendString:v17];
          [v18 appendString:@"."];
          [v18 appendString:@"Z_ENT"];
          [v18 appendString:@" = "];
          v19 = [objc_msgSend(objc_msgSend(v45 "entityDescription")];
          if (!v19)
          {
            goto LABEL_35;
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v20 = *(v45 + 152);
          v21 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (!v21)
          {
            goto LABEL_35;
          }

          v37 = v17;
          v38 = v15;
          v22 = 0;
          v23 = *v51;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v51 != v23)
              {
                objc_enumerationMutation(v20);
              }

              if (!v22)
              {
                v25 = *(*(&v50 + 1) + 8 * j);
                v26 = [objc_msgSend(v25 "name")];
                if (v25)
                {
                  v27 = v26;
                }

                else
                {
                  v27 = 0;
                }

                if (v27 == 1)
                {
                  v22 = v25[46];
                }

                else
                {
                  v22 = 0;
                }
              }
            }

            v21 = [v20 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v21);
          v17 = v37;
          v15 = v38;
          if (!v22)
          {
LABEL_35:
            v22 = *(v45 + 184);
          }

          [v18 appendFormat:@"%d", v22];
        }

        else
        {
          v18 = 0;
        }

        v29 = [v6 componentsJoinedByString:{@", "}];
        v30 = v17;
        v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"INSERT INTO "];
        [v31 appendString:{objc_msgSend(v45, "tableName")}];
        objc_msgSend(v31, "appendString:", @" (");
        [v31 appendString:v15];
        [v31 appendString:@" SELECT "]);
        [v31 appendString:v29];
        [v31 appendString:@" FROM "];
        [v31 appendString:v30];
        if (v18)
        {
          [v31 appendString:v18];
        }

        v32 = -[NSSQLiteAdapter newStatementWithSQLString:]([entities adapter], v31);
        [(NSSQLiteAdapter *)v32 _useModel:v44];

        [v42 addObject:v32];
        if (v45)
        {
          if (![*(v45 + 152) count])
          {
            goto LABEL_46;
          }

          v33 = *(v45 + 152);
          goto LABEL_45;
        }

        if ([0 count])
        {
          v33 = 0;
LABEL_45:
          [v42 addObjectsFromArray:{-[NSSQLiteConnection _createInsertStatementsForEntities:](entities, v33)}];
        }

LABEL_46:
        v3 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v34 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      v40 = v34;
    }

    while (v34);
  }

  return v42;
}

- (BOOL)finishDeferredLightweightMigration:(uint64_t)migration
{
  v331 = *MEMORY[0x1E69E9840];
  if (migration)
  {
    v3 = *(migration + 8);
    if (v3)
    {
      dispatch_assert_queue_V2(v3);
    }

    migrationCopy = migration;
    if (+[NSSQLCore debugDefault]< 1)
    {
      v5 = +[NSMappingModel migrationDebugLevel];
      v6 = getprogname();
      v4 = v6;
      if (v5 < 1)
      {
        v252 = 0;
        if (!v6)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v4 = getprogname();
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v9 = @"with";
          }

          else
          {
            v9 = @"without";
          }

          *buf = 138412290;
          v326 = v9;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Deferred Lightweight Migration %@ all tasks\n", buf, 0xCu);
        }
      }

      else
      {
        v10 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (a2)
          {
            v11 = @"with";
          }

          else
          {
            v11 = @"without";
          }

          *buf = 138412290;
          v326 = v11;
          _os_log_impl(&dword_18565F000, v10, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Deferred Lightweight Migration %@ all tasks\n", buf, 0xCu);
        }
      }
    }

    if (a2)
    {
      v12 = @"with";
    }

    else
    {
      v12 = @"without";
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    _NSCoreDataLog_console(v13, "Deferred Lightweight Migration %@ all tasks", v12);
    objc_autoreleasePoolPop(v7);
    v252 = 1;
    if (!v4)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (!strncmp("assetsd", v4, 7uLL) || !strncmp("photolibraryd", v4, 0xDuLL))
    {
      v241 = 1;
      goto LABEL_31;
    }

LABEL_29:
    v241 = 0;
LABEL_31:
    v14 = 3;
    while (1)
    {
      v243 = v14 >= 0;
      if (v14 < 0)
      {
        return v243;
      }

      v246 = v14;
      context = objc_autoreleasePoolPush();
      [(NSSQLiteConnection *)migrationCopy connect];
      if (migrationCopy[9])
      {
        break;
      }

      v239 = 0;
LABEL_478:
      [(NSSQLiteConnection *)migrationCopy endFetchAndRecycleStatement:?];
      objc_autoreleasePoolPop(context);
      v14 = v246 - 1;
      if (v239)
      {
        return v243;
      }
    }

    v15 = [MEMORY[0x1E695DFA8] set];
    v16 = [(NSSQLiteConnection *)migrationCopy fetchCreationSQLForType:0 containing:?];
    obj = [MEMORY[0x1E695DF70] array];
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v282 objects:v322 count:16];
    if (v17)
    {
      v18 = *v283;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v283 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v282 + 1) + 8 * i);
          if ([v20 count] == 2 && objc_msgSend(objc_msgSend(v20, "lastObject"), "containsString:", @"_DEFERRED_"))
          {
            [obj addObject:{objc_msgSend(v20, "firstObject")}];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v282 objects:v322 count:16];
      }

      while (v17);
    }

    v280 = 0u;
    v281 = 0u;
    v278 = 0u;
    v279 = 0u;
    v21 = [obj countByEnumeratingWithState:&v278 objects:v321 count:16];
    if (v21)
    {
      v248 = *v279;
      do
      {
        v22 = 0;
        do
        {
          if (*v279 != v248)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v278 + 1) + 8 * v22);
          v274 = 0u;
          v275 = 0u;
          v276 = 0u;
          v277 = 0u;
          v24 = [objc_msgSend(objc_msgSend(migrationCopy "adapter")];
          if (v24)
          {
            v25 = *(v24 + 32);
          }

          else
          {
            v25 = 0;
          }

          v26 = [v25 countByEnumeratingWithState:&v274 objects:v320 count:16];
          if (v26)
          {
            v27 = *v275;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v275 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v274 + 1) + 8 * j);
                if (v29 && !*(v29 + 160) && [objc_msgSend(*(*(&v274 + 1) + 8 * j) "tableName")])
                {
                  [v15 addObject:v29];
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v274 objects:v320 count:16];
            }

            while (v26);
          }

          ++v22;
        }

        while (v22 != v21);
        v30 = [obj countByEnumeratingWithState:&v278 objects:v321 count:16];
        v21 = v30;
      }

      while (v30);
    }

    allObjects = [v15 allObjects];
    if (![allObjects count])
    {
LABEL_476:
      v239 = 1;
      goto LABEL_478;
    }

    obja = allObjects;
    if ((a2 & 1) == 0)
    {
      obja = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(allObjects, "firstObject")}];
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v32 = v31;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v252)
    {
      v33 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v34 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *v322 = 0;
            _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning lightweight migration on connection\n", v322, 2u);
          }
        }

        else
        {
          v35 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *v322 = 0;
            _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning lightweight migration on connection\n", v322, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v36 = 1;
      }

      else
      {
        v36 = 4;
      }

      _NSCoreDataLog_console(v36, "Beginning lightweight migration on connection");
      objc_autoreleasePoolPop(v33);
      if ((v241 & 1) == 0)
      {
LABEL_96:
        v41 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v42 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *v322 = 0;
              _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning creation of deferred schema migration statements\n", v322, 2u);
            }
          }

          else
          {
            v43 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *v322 = 0;
              _os_log_impl(&dword_18565F000, v43, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning creation of deferred schema migration statements\n", v322, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v44 = 1;
        }

        else
        {
          v44 = 4;
        }

        _NSCoreDataLog_console(v44, "Beginning creation of deferred schema migration statements");
        objc_autoreleasePoolPop(v41);
LABEL_107:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v46 = v45;
        if (v252)
        {
          v47 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v48 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *v322 = 0;
                _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: error: Create alter table migration statements\n", v322, 2u);
              }
            }

            else
            {
              v49 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *v322 = 0;
                _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create alter table migration statements\n", v322, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v50 = 1;
          }

          else
          {
            v50 = 4;
          }

          _NSCoreDataLog_console(v50, "Create alter table migration statements");
          objc_autoreleasePoolPop(v47);
        }

        v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v288 = 0u;
        v289 = 0u;
        v286 = 0u;
        v287 = 0u;
        v52 = [obja countByEnumeratingWithState:&v286 objects:v323 count:16];
        if (v52)
        {
          v53 = *v287;
          do
          {
            for (k = 0; k != v52; ++k)
            {
              if (*v287 != v53)
              {
                objc_enumerationMutation(obja);
              }

              v55 = *(*(&v286 + 1) + 8 * k);
              tableName = [v55 tableName];
              v57 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName);
              v58 = -[NSSQLiteAdapter newRenameTableStatementFrom:to:]([migrationCopy adapter], objc_msgSend(v55, "tableName"), v57);
              [v51 addObject:v58];
            }

            v52 = [obja countByEnumeratingWithState:&v286 objects:v323 count:16];
          }

          while (v52);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v319[0] = @"Creation of alter table migration statements";
        v319[1] = [MEMORY[0x1E696AD98] numberWithDouble:v59 - v46];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v319, 2), @"1.1"}];
        if (v252)
        {
          v60 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v61 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *v323 = 0;
                _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: Create create table migration statements\n", v323, 2u);
              }
            }

            else
            {
              v62 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                *v323 = 0;
                _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create create table migration statements\n", v323, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v63 = 1;
          }

          else
          {
            v63 = 4;
          }

          _NSCoreDataLog_console(v63, "Create create table migration statements");
          objc_autoreleasePoolPop(v60);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v65 = v64;
        v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v292 = 0u;
        v293 = 0u;
        v290 = 0u;
        v291 = 0u;
        v67 = [obja countByEnumeratingWithState:&v290 objects:v324 count:16];
        if (v67)
        {
          v68 = *v291;
          do
          {
            for (m = 0; m != v67; ++m)
            {
              if (*v291 != v68)
              {
                objc_enumerationMutation(obja);
              }

              v70 = -[NSSQLiteAdapter newCreateTableStatementForEntity:]([migrationCopy adapter], *(*(&v290 + 1) + 8 * m));
              [v66 addObject:v70];
            }

            v67 = [obja countByEnumeratingWithState:&v290 objects:v324 count:16];
          }

          while (v67);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v318[0] = @"Creation of create table migration statements";
        v318[1] = [MEMORY[0x1E696AD98] numberWithDouble:v71 - v65];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v318, 2), @"1.2"}];
        if (v252)
        {
          v72 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v73 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *v324 = 0;
                _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: Create insert migration statements\n", v324, 2u);
              }
            }

            else
            {
              v74 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *v324 = 0;
                _os_log_impl(&dword_18565F000, v74, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create insert migration statements\n", v324, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v75 = 1;
          }

          else
          {
            v75 = 4;
          }

          _NSCoreDataLog_console(v75, "Create insert migration statements");
          objc_autoreleasePoolPop(v72);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v77 = v76;
        v249 = [(NSSQLiteConnection *)migrationCopy _createInsertStatementsForEntities:?];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v317[0] = @"Creation of insert migration statements";
        v317[1] = [MEMORY[0x1E696AD98] numberWithDouble:v78 - v77];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v317, 2), @"1.3"}];
        if (v252)
        {
          v79 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v80 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
              {
                *v324 = 0;
                _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: Create drop table migration statements\n", v324, 2u);
              }
            }

            else
            {
              v81 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
              {
                *v324 = 0;
                _os_log_impl(&dword_18565F000, v81, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Create drop table migration statements\n", v324, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v82 = 1;
          }

          else
          {
            v82 = 4;
          }

          _NSCoreDataLog_console(v82, "Create drop table migration statements");
          objc_autoreleasePoolPop(v79);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v84 = v83;
        v85 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obja, "count")}];
        v296 = 0u;
        v297 = 0u;
        v294 = 0u;
        v295 = 0u;
        v86 = [obja countByEnumeratingWithState:&v294 objects:buf count:16];
        if (v86)
        {
          v87 = *v295;
          do
          {
            for (n = 0; n != v86; ++n)
            {
              if (*v295 != v87)
              {
                objc_enumerationMutation(obja);
              }

              tableName2 = [*(*(&v294 + 1) + 8 * n) tableName];
              v90 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName2);
              v91 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([migrationCopy adapter], v90);
              [v85 addObject:v91];
            }

            v86 = [obja countByEnumeratingWithState:&v294 objects:buf count:16];
          }

          while (v86);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v316[0] = @"Creation of drop table migration statements";
        v316[1] = [MEMORY[0x1E696AD98] numberWithDouble:v92 - v84];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v316, 2), @"1.4"}];
        if (v252)
        {
          v93 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v94 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: error: Finished creating deferred schema migration statements\n", buf, 2u);
              }
            }

            else
            {
              v95 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v95, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished creating deferred schema migration statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v96 = 1;
          }

          else
          {
            v96 = 4;
          }

          _NSCoreDataLog_console(v96, "Finished creating deferred schema migration statements");
          objc_autoreleasePoolPop(v93);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v315[0] = @"Total preparation time for schema migration statements";
        v315[1] = [MEMORY[0x1E696AD98] numberWithDouble:v97 - v46];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v315, 2), @"1.0"}];
        if (v252)
        {
          v98 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v99 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v99, OS_LOG_TYPE_ERROR, "CoreData: error: Beginning formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v100 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v100, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Beginning formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v101 = 1;
          }

          else
          {
            v101 = 4;
          }

          _NSCoreDataLog_console(v101, "Beginning formal transaction");
          objc_autoreleasePoolPop(v98);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v103 = v102;
        v104 = migrationCopy[2];
        if (v104)
        {
          [*(v104 + 216) lock];
        }

        [(NSSQLiteConnection *)migrationCopy beginTransaction];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v106 = v105;
        v314[0] = @"Beginning formal transaction";
        v314[1] = [MEMORY[0x1E696AD98] numberWithDouble:v105 - v103];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v314, 2), @"2.1"}];
        if (v252)
        {
          v107 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v108 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v108, OS_LOG_TYPE_ERROR, "CoreData: error: Execute alter table statements\n", buf, 2u);
              }
            }

            else
            {
              v109 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v109, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute alter table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v110 = 1;
          }

          else
          {
            v110 = 4;
          }

          _NSCoreDataLog_console(v110, "Execute alter table statements");
          objc_autoreleasePoolPop(v107);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v112 = v111;
        v272 = 0u;
        v273 = 0u;
        v270 = 0u;
        v271 = 0u;
        v113 = [v51 countByEnumeratingWithState:&v270 objects:v313 count:16];
        if (v113)
        {
          v114 = *v271;
          do
          {
            for (ii = 0; ii != v113; ++ii)
            {
              if (*v271 != v114)
              {
                objc_enumerationMutation(v51);
              }

              v116 = *(*(&v270 + 1) + 8 * ii);
              if (v252)
              {
                v117 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v118 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v326 = v116;
                      _os_log_error_impl(&dword_18565F000, v118, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute alter table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v119 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v326 = v116;
                      _os_log_impl(&dword_18565F000, v119, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute alter table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v120 = 1;
                }

                else
                {
                  v120 = 4;
                }

                _NSCoreDataLog_console(v120, "  Execute alter table statement: %@", v116);
                objc_autoreleasePoolPop(v117);
              }

              [(NSSQLiteConnection *)migrationCopy prepareAndExecuteSQLStatement:v116];
            }

            v113 = [v51 countByEnumeratingWithState:&v270 objects:v313 count:16];
          }

          while (v113);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v312[0] = @"Execute alter table statements";
        v312[1] = [MEMORY[0x1E696AD98] numberWithDouble:v121 - v112];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v312, 2), @"2.2"}];
        if (v252)
        {
          v122 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v123 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create table statements\n", buf, 2u);
              }
            }

            else
            {
              v124 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v124, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v125 = 1;
          }

          else
          {
            v125 = 4;
          }

          _NSCoreDataLog_console(v125, "Execute create table statements");
          objc_autoreleasePoolPop(v122);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v127 = v126;
        v268 = 0u;
        v269 = 0u;
        v266 = 0u;
        v267 = 0u;
        v128 = [v66 countByEnumeratingWithState:&v266 objects:v311 count:16];
        if (v128)
        {
          v129 = *v267;
          do
          {
            for (jj = 0; jj != v128; ++jj)
            {
              if (*v267 != v129)
              {
                objc_enumerationMutation(v66);
              }

              v131 = *(*(&v266 + 1) + 8 * jj);
              if (v252)
              {
                v132 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v133 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v326 = v131;
                      _os_log_error_impl(&dword_18565F000, v133, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute create table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v134 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v326 = v131;
                      _os_log_impl(&dword_18565F000, v134, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute create table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v135 = 1;
                }

                else
                {
                  v135 = 4;
                }

                _NSCoreDataLog_console(v135, "  Execute create table statement: %@", v131);
                objc_autoreleasePoolPop(v132);
              }

              [(NSSQLiteConnection *)migrationCopy prepareAndExecuteSQLStatement:v131];
            }

            v128 = [v66 countByEnumeratingWithState:&v266 objects:v311 count:16];
          }

          while (v128);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v310[0] = @"Execute create table statements";
        v310[1] = [MEMORY[0x1E696AD98] numberWithDouble:v136 - v127];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v310, 2), @"2.3"}];
        if (v252)
        {
          v137 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v138 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, "CoreData: error: Execute insert statements\n", buf, 2u);
              }
            }

            else
            {
              v139 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v139, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute insert statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v140 = 1;
          }

          else
          {
            v140 = 4;
          }

          _NSCoreDataLog_console(v140, "Execute insert statements");
          objc_autoreleasePoolPop(v137);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v142 = v141;
        v264 = 0u;
        v265 = 0u;
        v262 = 0u;
        v263 = 0u;
        v143 = [v249 countByEnumeratingWithState:&v262 objects:v309 count:16];
        if (v143)
        {
          v144 = *v263;
          do
          {
            for (kk = 0; kk != v143; ++kk)
            {
              if (*v263 != v144)
              {
                objc_enumerationMutation(v249);
              }

              v146 = *(*(&v262 + 1) + 8 * kk);
              if (v252)
              {
                v147 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v148 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v326 = v146;
                      _os_log_error_impl(&dword_18565F000, v148, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute insert statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v149 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v326 = v146;
                      _os_log_impl(&dword_18565F000, v149, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute insert statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v150 = 1;
                }

                else
                {
                  v150 = 4;
                }

                _NSCoreDataLog_console(v150, "  Execute insert statement: %@", v146);
                objc_autoreleasePoolPop(v147);
              }

              [(NSSQLiteConnection *)migrationCopy prepareAndExecuteSQLStatement:v146];
            }

            v143 = [v249 countByEnumeratingWithState:&v262 objects:v309 count:16];
          }

          while (v143);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v308[0] = @"Execute insert statements";
        v308[1] = [MEMORY[0x1E696AD98] numberWithDouble:v151 - v142];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v308, 2), @"2.4"}];
        if (v252)
        {
          v152 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v153 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v153, OS_LOG_TYPE_ERROR, "CoreData: error: Execute drop table statements\n", buf, 2u);
              }
            }

            else
            {
              v154 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v154, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute drop table statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v155 = 1;
          }

          else
          {
            v155 = 4;
          }

          _NSCoreDataLog_console(v155, "Execute drop table statements");
          objc_autoreleasePoolPop(v152);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v157 = v156;
        v260 = 0u;
        v261 = 0u;
        v258 = 0u;
        v259 = 0u;
        v158 = [v85 countByEnumeratingWithState:&v258 objects:v307 count:16];
        if (v158)
        {
          v159 = *v259;
          do
          {
            for (mm = 0; mm != v158; ++mm)
            {
              if (*v259 != v159)
              {
                objc_enumerationMutation(v85);
              }

              v161 = *(*(&v258 + 1) + 8 * mm);
              if (v252)
              {
                v162 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v163 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v163, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v326 = v161;
                      _os_log_error_impl(&dword_18565F000, v163, OS_LOG_TYPE_ERROR, "CoreData: error:   Execute drop table statement: %@\n", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v164 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v326 = v161;
                      _os_log_impl(&dword_18565F000, v164, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:   Execute drop table statement: %@\n", buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v165 = 1;
                }

                else
                {
                  v165 = 4;
                }

                _NSCoreDataLog_console(v165, "  Execute drop table statement: %@", v161);
                objc_autoreleasePoolPop(v162);
              }

              [(NSSQLiteConnection *)migrationCopy prepareAndExecuteSQLStatement:v161];
            }

            v158 = [v85 countByEnumeratingWithState:&v258 objects:v307 count:16];
          }

          while (v158);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v306[0] = @"Execute drop table statements";
        v306[1] = [MEMORY[0x1E696AD98] numberWithDouble:v166 - v157];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v306, 2), @"2.5"}];
        if (v252)
        {
          v167 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v168 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v168, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create indexes statements\n", buf, 2u);
              }
            }

            else
            {
              v169 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v169, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create indexes statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v170 = 1;
          }

          else
          {
            v170 = 4;
          }

          _NSCoreDataLog_console(v170, "Execute create indexes statements");
          objc_autoreleasePoolPop(v167);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v172 = v171;
        [(NSSQLiteConnection *)migrationCopy _createIndexesForEntities:?];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v305[0] = @"Execute create indexes statements";
        v305[1] = [MEMORY[0x1E696AD98] numberWithDouble:v173 - v172];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v305, 2), @"2.6"}];
        if (v252)
        {
          v174 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v175 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v175, OS_LOG_TYPE_ERROR, "CoreData: error: Execute create trigger statements\n", buf, 2u);
              }
            }

            else
            {
              v176 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v176, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Execute create trigger statements\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v177 = 1;
          }

          else
          {
            v177 = 4;
          }

          _NSCoreDataLog_console(v177, "Execute create trigger statements");
          objc_autoreleasePoolPop(v174);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v179 = v178;
        v180 = [objc_msgSend(objc_msgSend(migrationCopy "adapter")];
        if (v180)
        {
          v181 = *(v180 + 32);
        }

        else
        {
          v181 = 0;
        }

        [(NSSQLiteConnection *)migrationCopy createTriggersForEntities:v181];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v304[0] = @"Execute create trigger statements";
        v304[1] = [MEMORY[0x1E696AD98] numberWithDouble:v182 - v179];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v304, 2), @"2.7"}];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v184 = v183;
        if (v252)
        {
          v185 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v186 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v186, OS_LOG_TYPE_ERROR, "CoreData: error: Updating metadata\n", buf, 2u);
              }
            }

            else
            {
              v187 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v187, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Updating metadata\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v188 = 1;
          }

          else
          {
            v188 = 4;
          }

          _NSCoreDataLog_console(v188, "Updating metadata");
          objc_autoreleasePoolPop(v185);
        }

        v189 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:-[NSSQLiteConnection fetchMetadata](migrationCopy)];
        if ((a2 & 1) != 0 || [allObjects count] < 2)
        {
          [(__CFString *)v189 removeObjectForKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
        }

        else
        {
          [(__CFString *)v189 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreDeferredLightweightMigrationOptionKey"];
        }

        [(NSSQLiteConnection *)migrationCopy saveMetadata:v189];
        if (v252)
        {
          v190 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v191 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v191, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v191, OS_LOG_TYPE_ERROR, "CoreData: error: Finished updating metadata\n", buf, 2u);
              }
            }

            else
            {
              v192 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v192, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished updating metadata\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v193 = 1;
          }

          else
          {
            v193 = 4;
          }

          _NSCoreDataLog_console(v193, "Finished updating metadata");
          objc_autoreleasePoolPop(v190);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v195 = v194;
        v303[0] = @"Update store metadata";
        v303[1] = [MEMORY[0x1E696AD98] numberWithDouble:v194 - v184];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v303, 2), @"2.15"}];
        if (v252)
        {
          v196 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v197 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v197, OS_LOG_TYPE_ERROR, "CoreData: error: Committing formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v198 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v198, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Committing formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v199 = 1;
          }

          else
          {
            v199 = 4;
          }

          _NSCoreDataLog_console(v199, "Committing formal transaction");
          objc_autoreleasePoolPop(v196);
        }

        [(NSSQLiteConnection *)migrationCopy commitTransaction];
        if (v252)
        {
          v200 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v201 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v201, OS_LOG_TYPE_ERROR, "CoreData: error: Finished committing formal transaction\n", buf, 2u);
              }
            }

            else
            {
              v202 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v202, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished committing formal transaction\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v203 = 1;
          }

          else
          {
            v203 = 4;
          }

          _NSCoreDataLog_console(v203, "Finished committing formal transaction");
          objc_autoreleasePoolPop(v200);
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v205 = v204;
        v302[0] = @"Time for COMMIT";
        v302[1] = [MEMORY[0x1E696AD98] numberWithDouble:v204 - v195];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v302, 2), @"2.16"}];
        v301[0] = @"Total formal transaction time";
        v301[1] = [MEMORY[0x1E696AD98] numberWithDouble:v205 - v106];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v301, 2), @"2.0"}];
        if (v252)
        {
          v206 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v207 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v207, OS_LOG_TYPE_ERROR, "CoreData: error: Checkpointing WAL journal\n", buf, 2u);
              }
            }

            else
            {
              v208 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v208, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Checkpointing WAL journal\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v209 = 1;
          }

          else
          {
            v209 = 4;
          }

          _NSCoreDataLog_console(v209, "Checkpointing WAL journal");
          objc_autoreleasePoolPop(v206);
        }

        v210 = [(NSSQLiteConnection *)migrationCopy copyRawIntegerRowsForSQL:?];
        if (v210)
        {
          CFRelease(v210);
        }

        v211 = migrationCopy[2];
        if (v211)
        {
          [*(v211 + 216) unlock];
        }

        if (v252)
        {
          v212 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v213 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v213, OS_LOG_TYPE_ERROR, "CoreData: error: Finished checkpointing WAL journal\n", buf, 2u);
              }
            }

            else
            {
              v214 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v214, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Finished checkpointing WAL journal\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v215 = 1;
          }

          else
          {
            v215 = 4;
          }

          _NSCoreDataLog_console(v215, "Finished checkpointing WAL journal");
          objc_autoreleasePoolPop(v212);
          v216 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v217 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v217, OS_LOG_TYPE_ERROR, "CoreData: error: Successfully completed deferred lightweight migration on connection\n", buf, 2u);
              }
            }

            else
            {
              v218 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v218, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Successfully completed deferred lightweight migration on connection\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v219 = 1;
          }

          else
          {
            v219 = 4;
          }

          _NSCoreDataLog_console(v219, "Successfully completed deferred lightweight migration on connection");
          objc_autoreleasePoolPop(v216);
          if ((v241 & 1) == 0)
          {
            goto LABEL_456;
          }

          v220 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v221 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, v221, OS_LOG_TYPE_ERROR, "CoreData: error: Reset SQLite cache size\n", buf, 2u);
              }
            }

            else
            {
              v222 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v222, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Reset SQLite cache size\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v223 = 1;
          }

          else
          {
            v223 = 4;
          }

          _NSCoreDataLog_console(v223, "Reset SQLite cache size");
          objc_autoreleasePoolPop(v220);
        }

        else if ((v241 & 1) == 0)
        {
          goto LABEL_456;
        }

        [(NSSQLiteConnection *)migrationCopy _executeSQLString:?];
LABEL_456:
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v225 = v224;
        v300[0] = @"Checkpoint time";
        v300[1] = [MEMORY[0x1E696AD98] numberWithDouble:v224 - v205];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v300, 2), @"3.0"}];
        v299[0] = @"Total migration time (on connection)";
        v299[1] = [MEMORY[0x1E696AD98] numberWithDouble:v225 - v32];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v299, 2), @"0.0"}];
        if (v252)
        {
          v226 = [objc_msgSend(dictionary "allKeys")];
          v256 = 0u;
          v257 = 0u;
          v254 = 0u;
          v255 = 0u;
          v227 = [v226 countByEnumeratingWithState:&v254 objects:v298 count:16];
          if (v227)
          {
            v228 = *v255;
            do
            {
              for (nn = 0; nn != v227; ++nn)
              {
                if (*v255 != v228)
                {
                  objc_enumerationMutation(v226);
                }

                v230 = *(*(&v254 + 1) + 8 * nn);
                v231 = [dictionary objectForKey:v230];
                firstObject = [v231 firstObject];
                [objc_msgSend(v231 "lastObject")];
                v234 = v233;
                if (v233 > 0.01)
                {
                  v235 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v236 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412802;
                        v326 = v230;
                        v327 = 2112;
                        v328 = firstObject;
                        v329 = 2048;
                        v330 = v234;
                        _os_log_error_impl(&dword_18565F000, v236, OS_LOG_TYPE_ERROR, "CoreData: error:     Deferred Migration step %@ '%@' took %2.2f seconds\n", buf, 0x20u);
                      }
                    }

                    else
                    {
                      v237 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v326 = v230;
                        v327 = 2112;
                        v328 = firstObject;
                        v329 = 2048;
                        v330 = v234;
                        _os_log_impl(&dword_18565F000, v237, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:     Deferred Migration step %@ '%@' took %2.2f seconds\n", buf, 0x20u);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v238 = 1;
                  }

                  else
                  {
                    v238 = 4;
                  }

                  _NSCoreDataLog_console(v238, "    Deferred Migration step %@ '%@' took %2.2f seconds", v230, firstObject, *&v234);
                  objc_autoreleasePoolPop(v235);
                }
              }

              v227 = [v226 countByEnumeratingWithState:&v254 objects:v298 count:16];
            }

            while (v227);
          }
        }

        goto LABEL_476;
      }

      v37 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v38 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *v322 = 0;
            _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Increasing SQLite cache size to 148MB\n", v322, 2u);
          }
        }

        else
        {
          v39 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *v322 = 0;
            _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Increasing SQLite cache size to 148MB\n", v322, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v40 = 1;
      }

      else
      {
        v40 = 4;
      }

      _NSCoreDataLog_console(v40, "Increasing SQLite cache size to 148MB");
      objc_autoreleasePoolPop(v37);
    }

    else if ((v241 & 1) == 0)
    {
      goto LABEL_107;
    }

    [(NSSQLiteConnection *)migrationCopy _executeSQLString:?];
    if (!v252)
    {
      goto LABEL_107;
    }

    goto LABEL_96;
  }

  return 0;
}

- (void)saveMetadata:(void *)metadata
{
  v48 = *MEMORY[0x1E69E9840];
  if (!metadata)
  {
    return;
  }

  v4 = metadata[1];
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (([(NSSQLiteConnection *)metadata _hasTableWithName:0 isTemp:?]& 1) == 0)
  {
    [(NSSQLiteConnection *)metadata createMetadata];
  }

  if (([(__CFString *)a2 isNSDictionary]& 1) == 0)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = @"<null>";
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v32 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v34 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v34)
        {
          if (a2)
          {
            v41 = a2;
          }

          else
          {
            v41 = @"<null>";
          }

          *buf = 138412290;
          v45 = v41;
          goto LABEL_51;
        }
      }

      else if (v34)
      {
        if (a2)
        {
          v35 = a2;
        }

        else
        {
          v35 = @"<null>";
        }

        *buf = 138412290;
        v45 = v35;
LABEL_51:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: metadata is not a dictionary: %@\n", buf, 0xCu);
      }
    }

    if (a2)
    {
      v31 = a2;
    }

    _NSCoreDataLog_console(1, "metadata is not a dictionary: %@", v31);
    objc_autoreleasePoolPop(v30);
    v38 = *MEMORY[0x1E695D940];
    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31);
LABEL_55:
    v42 = [_NSCoreDataException exceptionWithName:v38 code:134030 reason:v40 userInfo:0];
    objc_exception_throw(v42);
  }

  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_METADATA", @"Z_VERSION");
  v7 = -[NSSQLiteAdapter newStatementWithSQLString:]([metadata adapter], v6);
  v8 = [NSSQLBindVariable alloc];
  v9 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:](v8, "initWithValue:sqlType:propertyDescription:", [MEMORY[0x1E696AD98] numberWithInt:1], 1, 0);
  [(NSSQLiteStatement *)v7 addBindVariable:v9];
  [(NSSQLiteConnection *)metadata prepareAndExecuteSQLStatement:v7];

  v10 = [(__CFString *)a2 objectForKey:@"NSStoreUUID"];
  v11 = [(__CFString *)a2 mutableCopy];
  [v11 removeObjectForKey:@"NSStoreUUID"];
  v43 = 0;
  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:&v43];

  if (!v12 || ([(__CFString *)v12 isNSData]& 1) == 0)
  {

    v25 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v26 = _pflogging_catastrophic_mode;
      v27 = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v28)
        {
          v36 = @"<null>";
          if (v12)
          {
            v36 = v12;
          }

          *buf = 138412290;
          v45 = v36;
          goto LABEL_39;
        }
      }

      else if (v28)
      {
        v29 = @"<null>";
        if (v12)
        {
          v29 = v12;
        }

        *buf = 138412290;
        v45 = v29;
LABEL_39:
        _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: failure writing metadata plist with data bytes: %@\n", buf, 0xCu);
      }
    }

    if (v12)
    {
      v37 = v12;
    }

    else
    {
      v37 = @"<null>";
    }

    _NSCoreDataLog_console(1, "failure writing metadata plist with data bytes: %@", v37);
    objc_autoreleasePoolPop(v25);
    v38 = *MEMORY[0x1E695D940];
    v39 = v43;
    if (!v43)
    {
      v39 = @"<null>";
    }

    v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v39, v37);
    goto LABEL_55;
  }

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_METADATA", @"Z_VERSION", @"Z_UUID", @"Z_PLIST");
  v14 = -[NSSQLiteAdapter newStatementWithSQLString:]([metadata adapter], v13);
  v15 = [[NSSQLBindVariable alloc] initWithValue:v10 sqlType:6 propertyDescription:0];
  v16 = [[NSSQLBindVariable alloc] initWithValue:v12 sqlType:10 propertyDescription:0];
  [(NSSQLiteStatement *)v14 addBindVariable:v9];
  [(NSSQLiteStatement *)v14 addBindVariable:v15];
  [(NSSQLiteStatement *)v14 addBindVariable:v16];
  [(NSSQLiteConnection *)metadata prepareAndExecuteSQLStatement:v14];
  if (+[NSSQLCore debugDefault]>= 2)
  {
    v17 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v18 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          value = [(NSSQLBindVariable *)v9 value];
          *buf = 138412546;
          v45 = value;
          v46 = 2112;
          v47 = v10;
          _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: error: Saving new meta data; version = %@ ; UUID = %@\n", buf, 0x16u);
        }
      }

      else
      {
        v20 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          value2 = [(NSSQLBindVariable *)v9 value];
          *buf = 138412546;
          v45 = value2;
          v46 = 2112;
          v47 = v10;
          _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Saving new meta data; version = %@ ; UUID = %@\n", buf, 0x16u);
        }
      }
    }

    v22 = _pflogging_catastrophic_mode;
    value3 = [(NSSQLBindVariable *)v9 value];
    v24 = 4;
    if (v22)
    {
      v24 = 1;
    }

    _NSCoreDataLog_console(v24, "Saving new meta data; version = %@ ; UUID = %@", value3, v10);
    objc_autoreleasePoolPop(v17);
  }
}

- (uint64_t)_dropTableWithName:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = 0;
    for (i = 3; (v5 & 1) == 0 && (i & 0x80000000) == 0; --i)
    {
      [(NSSQLiteConnection *)v3 connect];
      if (*(v3 + 72))
      {
        [(NSSQLiteConnection *)v3 beginTransaction];
        v5 = 1;
        v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
        [(NSSQLiteConnection *)v3 _executeSQLString:v7];
        [(NSSQLiteConnection *)v3 commitTransaction];
      }

      else
      {
        v5 = 0;
      }

      [(NSSQLiteConnection *)v3 endFetchAndRecycleStatement:?];
    }

    return v8;
  }

  return result;
}

- (id)_setSaveRequest:(id *)result
{
  if (result)
  {
    v3 = result;

    result = a2;
    v3[24] = result;
  }

  return result;
}

- (void)fetchCachedModel
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result[1];
  if (v3)
  {
    dispatch_assert_queue_V2(v3);
  }

  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SELECT %@ FROM %@", @"Z_CONTENT", @"Z_MODELCACHE");
  if (![(NSSQLiteConnection *)v2 _hasTableWithName:0 isTemp:?])
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = -[NSSQLiteAdapter newStatementWithSQLString:]([v2 adapter], v4);
  [(NSSQLiteConnection *)v2 prepareSQLStatement:v6];
  [v2 execute];
  v21 = [[NSSQLColumn alloc] initWithColumnName:@"Z_CONTENT" sqlType:10];
  -[NSSQLiteConnection setColumnsToFetch:](v2, [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1]);
  newFetchedArray = [(NSSQLiteConnection *)v2 newFetchedArray];
  v8 = newFetchedArray;
  if (!newFetchedArray || ![newFetchedArray count])
  {
    v16 = 0;
    goto LABEL_23;
  }

  v9 = [v8 objectAtIndex:0];
  if (v9 == NSKeyValueCoding_NullValue || (v10 = [v8 objectAtIndex:0], (v11 = v10) == 0))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v12 = [v10 length];
  if (!v12)
  {
    goto LABEL_22;
  }

  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
  {
    v18 = @"Could not initialize compression decoder.";
LABEL_26:
    v19 = [_NSCoreDataException exceptionWithName:134060 code:v18 reason:0 userInfo:?];
    objc_exception_throw(v19);
  }

  data = [MEMORY[0x1E695DF88] data];
  stream.src_ptr = [v11 bytes];
  stream.src_size = [v11 length];
  do
  {
    stream.dst_ptr = v22;
    stream.dst_size = 1024;
    v14 = compression_stream_process(&stream, 1);
    if (v14 > COMPRESSION_STATUS_END)
    {
      compression_stream_destroy(&stream);
      v18 = @"Failed to decompress model cache.";
      goto LABEL_26;
    }

    if (stream.dst_size != 1024)
    {
      [data appendBytes:v22 length:1024 - stream.dst_size];
    }
  }

  while (v14 == COMPRESSION_STATUS_OK);
  compression_stream_destroy(&stream);
  if (!data)
  {
    goto LABEL_21;
  }

  v12 = [data length];
  if (v12)
  {
    v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v12 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v15 fromData:data error:0];
  }

LABEL_22:
  v16 = v12;
LABEL_23:

  [(NSSQLiteConnection *)v2 releaseSQLStatement];
  [(NSSQLiteConnection *)v2 setColumnsToFetch:?];
  *(v2 + 78) &= ~2u;
  *(v2 + 100) = 0;
  *(v2 + 92) = 0;
  *(v2 + 27) = 0;

  [v5 drain];
  v17 = 0;
  return v16;
}

- (NSObject)saveCachedModel:(NSObject *)result
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[1];
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (([(NSSQLiteConnection *)v3 _hasTableWithName:0 isTemp:?]& 1) != 0)
    {
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_MODELCACHE");
    }

    else
    {
      v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_MODELCACHE", @"Z_CONTENT");
    }

    v7 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], v6);
    [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v7];

    v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
    v10 = v9;
    if (v9 && [v9 length])
    {
      memset(&stream, 0, sizeof(stream));
      if (compression_stream_init(&stream, COMPRESSION_STREAM_ENCODE, COMPRESSION_ZLIB))
      {
        v22 = @"Could not initialize compression encoder.";
      }

      else
      {
        data = [MEMORY[0x1E695DF88] data];
        stream.src_ptr = [v10 bytes];
        stream.src_size = [v10 length];
        while (1)
        {
          stream.dst_ptr = buf;
          stream.dst_size = 1024;
          v12 = compression_stream_process(&stream, 1);
          if (v12 > COMPRESSION_STATUS_END)
          {
            break;
          }

          if (stream.dst_size != 1024)
          {
            [data appendBytes:buf length:1024 - stream.dst_size];
          }

          if (v12)
          {
            compression_stream_destroy(&stream);
            goto LABEL_17;
          }
        }

        compression_stream_destroy(&stream);
        v22 = @"Failed to decompress model cache.";
      }

      v23 = [_NSCoreDataException exceptionWithName:134060 code:v22 reason:0 userInfo:?];
      objc_exception_throw(v23);
    }

    data = 0;
LABEL_17:
    v13 = data;
    [v8 drain];
    v14 = data;
    if (v14)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"Z_MODELCACHE", @"Z_CONTENT");
      v16 = -[NSSQLiteAdapter newStatementWithSQLString:]([v3 adapter], v15);
      v17 = [[NSSQLBindVariable alloc] initWithValue:v14 sqlType:10 propertyDescription:0];
      [(NSSQLiteStatement *)v16 addBindVariable:v17];
      [(NSSQLiteConnection *)v3 prepareAndExecuteSQLStatement:v16];
      if (+[NSSQLCore debugDefault]>= 2)
      {
        v18 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Saving new model cache\n", buf, 2u);
            }
          }

          else
          {
            v20 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Saving new model cache\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v21 = 1;
        }

        else
        {
          v21 = 4;
        }

        _NSCoreDataLog_console(v21, "Saving new model cache");
        objc_autoreleasePoolPop(v18);
      }
    }

    return [v5 drain];
  }

  return result;
}

- (sqlite3_int64)generatePrimaryKeysForEntity:(unsigned int)entity batch:
{
  v95 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v6 = *(self + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if ((*(selfCopy + 40) & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"primary keys must be generated within a transaction" userInfo:0]);
  }

  if (a2)
  {
    v7 = *(a2 + 184);
  }

  else
  {
    v7 = 0;
  }

  v9 = (selfCopy + 112);
  v8 = *(selfCopy + 112);
  p_vtable = NSSQLStoreRequestContext.vtable;
  if (!v8)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE %@ = ?", @"Z_MAX", @"Z_PRIMARYKEY", @"Z_ENT"];
    if (+[NSSQLCore debugDefault]>= 1)
    {
      v12 = *(selfCopy + 42);
      v13 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      IsLogEnabled = _NSCoreDataIsLogEnabled(6);
      v15 = _pflogging_enable_oslog > 0 && IsLogEnabled;
      if (v12 == 1)
      {
        if (v15)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          else
          {
            v19 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
            }
          }

          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }

        else
        {
          v18 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
        }
      }

      else if (v15)
      {
        if (_pflogging_catastrophic_mode)
        {
          v17 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v20 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
          }
        }

        v18 = "%@";
      }

      else
      {
        v18 = "%@";
      }

      if (_pflogging_catastrophic_mode)
      {
        v21 = 1;
      }

      else
      {
        v21 = 6;
      }

      _NSCoreDataLog_console(v21, v18, v11);
      objc_autoreleasePoolPop(v13);
    }

    pzTail = 0;
    uTF8String = [v11 UTF8String];
    v23 = v11;
    [(NSSQLiteConnection *)selfCopy _ensureDatabaseOpen];
    v24 = sqlite3_prepare_v3(*(selfCopy + 72), uTF8String, -1, 1u, (selfCopy + 112), &pzTail);
    if (!v24)
    {
      v8 = *v9;
      goto LABEL_35;
    }

    v75 = v24;
    v76 = sqlite3_errmsg(*(selfCopy + 72));
    if (+[NSSQLCore debugDefault]< 1)
    {
LABEL_126:
      *v9 = 0;
      v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
      v70 = *MEMORY[0x1E695D930];
      v83 = MEMORY[0x1E695DF20];
      v84 = MEMORY[0x1E696AD98];
      v85 = v75;
      goto LABEL_127;
    }

    v77 = *(selfCopy + 42);
    v78 = objc_autoreleasePoolPush();
    IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
    if (v77 == 1)
    {
      if (IsOSLogEnabled)
      {
        v80 = _pflogging_catastrophic_mode;
        v81 = _PFLogGetLogStream(1);
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
        if (v80)
        {
          if (v82)
          {
LABEL_120:
            *buf = 67109378;
            *&buf[4] = v75;
            *&buf[8] = 2080;
            *&buf[10] = v76;
            _os_log_error_impl(&dword_18565F000, v81, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m\n", buf, 0x12u);
          }
        }

        else if (v82)
        {
          goto LABEL_120;
        }
      }

      _NSCoreDataLog_console(1, "\x1B[31m\x1B[47mERROR:\x1B[0m\x1B[31m (%d) %s\x1B[0m");
LABEL_125:
      objc_autoreleasePoolPop(v78);
      goto LABEL_126;
    }

    if (IsOSLogEnabled)
    {
      v86 = _pflogging_catastrophic_mode;
      v87 = _PFLogGetLogStream(1);
      v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
      if (v86)
      {
        if (v88)
        {
LABEL_123:
          *buf = 67109378;
          *&buf[4] = v75;
          *&buf[8] = 2080;
          *&buf[10] = v76;
          _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error: (%d) %s\n", buf, 0x12u);
        }
      }

      else if (v88)
      {
        goto LABEL_123;
      }
    }

    _NSCoreDataLog_console(1, "(%d) %s");
    goto LABEL_125;
  }

LABEL_35:
  sqlite3_bind_int(v8, 1, v7);
  if (+[NSSQLCore debugDefault]>= 2)
  {
    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v26 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: getting max pk for entityID = %u\n", buf, 8u);
        }
      }

      else
      {
        v27 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: getting max pk for entityID = %u\n", buf, 8u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v28 = 1;
    }

    else
    {
      v28 = 4;
    }

    _NSCoreDataLog_console(v28, "getting max pk for entityID = %u", v7);
    objc_autoreleasePoolPop(v25);
  }

  v29 = sqlite3_step(*v9);
  if (v29 == 100)
  {
    v31 = sqlite3_column_int64(*v9, 0);
  }

  else
  {
    v30 = v29;
    v90 = (selfCopy + 112);
    if (v29 != 101)
    {
      sqlite3_reset(*v90);
      sqlite3_clear_bindings(*v90);
      v74 = *MEMORY[0x1E695D930];
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v30), @"NSSQLiteErrorDomain"}];
      v68 = @"Fetching maximum primary key failed";
      v67 = v74;
      goto LABEL_129;
    }

    v31 = [(NSSQLiteConnection *)selfCopy fetchMaxPrimaryKeyForEntity:a2];
    v32 = MEMORY[0x1E696AEC0];
    name = [a2 name];
    if (a2)
    {
      v34 = *(a2 + 160);
      if (v34)
      {
        v34 = *(v34 + 184);
      }
    }

    else
    {
      v34 = 0;
    }

    v9 = (selfCopy + 112);
    v35 = objc_msgSend_stringWithFormat_(v32, @"Z_PRIMARYKEY", @"Z_ENT", @"Z_NAME", @"Z_SUPER", @"Z_MAX", v7, name, v34, v31);
    [(NSSQLiteConnection *)selfCopy _executeSQLString:v35];
    p_vtable = (NSSQLStoreRequestContext + 24);
  }

  v36 = sqlite3_reset(*v9);
  sqlite3_clear_bindings(*v9);
  if (v36)
  {
    goto LABEL_114;
  }

  v37 = (selfCopy + 120);
  if (*(selfCopy + 120))
  {
    goto LABEL_83;
  }

  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ SET %@ = ? WHERE %@ = ? AND %@ = ?", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_ENT", @"Z_MAX"];
  if ([p_vtable + 447 debugDefault] < 1)
  {
    goto LABEL_82;
  }

  v39 = *(selfCopy + 42);
  v40 = objc_autoreleasePoolPush();
  _pflogInitialize(6);
  v41 = _NSCoreDataIsLogEnabled(6);
  v42 = _pflogging_enable_oslog > 0 && v41;
  if (v39 == 1)
  {
    if (v42)
    {
      v43 = a2;
      v44 = selfCopy;
      if (_pflogging_catastrophic_mode)
      {
        v45 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
        }
      }

      else
      {
        v48 = _PFLogGetLogStream(6);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
        }
      }

      v47 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
LABEL_77:
      selfCopy = v44;
      a2 = v43;
      goto LABEL_78;
    }

    v47 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
  }

  else
  {
    if (v42)
    {
      v43 = a2;
      v44 = selfCopy;
      if (_pflogging_catastrophic_mode)
      {
        v46 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v49 = _PFLogGetLogStream(6);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v38;
          _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
        }
      }

      v47 = "%@";
      goto LABEL_77;
    }

    v47 = "%@";
  }

LABEL_78:
  if (_pflogging_catastrophic_mode)
  {
    v50 = 1;
  }

  else
  {
    v50 = 6;
  }

  _NSCoreDataLog_console(v50, v47, v38);
  objc_autoreleasePoolPop(v40);
LABEL_82:
  *buf = 0;
  uTF8String2 = [v38 UTF8String];
  v52 = v38;
  [(NSSQLiteConnection *)selfCopy _ensureDatabaseOpen];
  v53 = sqlite3_prepare_v3(*(selfCopy + 72), uTF8String2, -1, 1u, v37, buf);
  if (v53)
  {
    v36 = v53;
    *(selfCopy + 120) = 0;
LABEL_114:
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(selfCopy + 72))];
    v70 = *MEMORY[0x1E695D930];
    v83 = MEMORY[0x1E695DF20];
    v84 = MEMORY[0x1E696AD98];
    v85 = v36;
LABEL_127:
    v72 = [v84 numberWithInt:v85];
    v73 = v83;
    goto LABEL_128;
  }

LABEL_83:
  v54 = v31;
  if (v31 == -1)
  {
    v54 = [(NSSQLiteConnection *)selfCopy fetchMaxPrimaryKeyForEntity:a2];
  }

  v55 = v54 + entity;
  sqlite3_bind_int64(*v37, 1, v55);
  sqlite3_bind_int(*v37, 2, v7);
  sqlite3_bind_int64(*v37, 3, v31);
  if ([p_vtable + 447 debugDefault] >= 2)
  {
    v56 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v57 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          *&buf[4] = v7;
          *&buf[8] = 2048;
          *&buf[10] = v31;
          v93 = 2048;
          v94 = v55;
          _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: error: updating max pk for entityID = %u with old = %qd and new = %qd\n", buf, 0x1Cu);
        }
      }

      else
      {
        v58 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *&buf[4] = v7;
          *&buf[8] = 2048;
          *&buf[10] = v31;
          v93 = 2048;
          v94 = v55;
          _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: updating max pk for entityID = %u with old = %qd and new = %qd\n", buf, 0x1Cu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v59 = 1;
    }

    else
    {
      v59 = 4;
    }

    _NSCoreDataLog_console(v59, "updating max pk for entityID = %u with old = %qd and new = %qd", v7, v31, v55);
    objc_autoreleasePoolPop(v56);
  }

  v60 = sqlite3_step(*v37);
  v61 = sqlite3_reset(*v37);
  sqlite3_clear_bindings(*v37);
  if (v60 != 101)
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(selfCopy + 72))];
    v64 = *MEMORY[0x1E695D930];
    v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v63);
    v66 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v60), @"NSSQLiteErrorDomain"}];
    v67 = v64;
    v68 = v65;
    goto LABEL_129;
  }

  if (v61)
  {
    v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errmsg(*(selfCopy + 72))];
    v70 = *MEMORY[0x1E695D930];
    v71 = MEMORY[0x1E695DF20];
    v72 = [MEMORY[0x1E696AD98] numberWithInt:v61];
    v73 = v71;
LABEL_128:
    v66 = [v73 dictionaryWithObject:v72 forKey:@"NSSQLiteErrorDomain"];
    v67 = v70;
    v68 = v69;
LABEL_129:
    v89 = [_NSCoreDataException exceptionWithName:v67 code:134030 reason:v68 userInfo:v66];
    objc_exception_throw(v89);
  }

  return v55;
}

- (void)didCreateSchema
{
  if ((self[312] & 0x40) != 0)
  {
    v3 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], @"pragma journal_mode=wal");
    [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v3];
  }
}

- (uint64_t)recreateIndices
{
  v36 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      dispatch_assert_queue_V2(v2);
    }

    if (+[NSSQLCore debugDefault]>= 1)
    {
      v3 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: re-adding all missing indices\n", buf, 2u);
          }
        }

        else
        {
          v5 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: re-adding all missing indices\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v6 = 1;
      }

      else
      {
        v6 = 4;
      }

      _NSCoreDataLog_console(v6, "re-adding all missing indices");
      objc_autoreleasePoolPop(v3);
    }

    model = [v1[2] model];
    v8 = [(NSSQLiteConnection *)v1 fetchCreationSQLForType:0 containing:?];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __37__NSSQLiteConnection_recreateIndices__block_invoke;
    v32[3] = &unk_1E6EC3F98;
    v32[4] = v9;
    [v8 enumerateObjectsUsingBlock:v32];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    if (model)
    {
      model = model[4];
    }

    v10 = [model countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v10)
    {
      obj = model;
      v21 = *v29;
      do
      {
        v11 = 0;
        v22 = v10;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          adapter = [v1 adapter];
          if (adapter)
          {
            v14 = [(NSSQLiteAdapter *)adapter newCreateIndexStatementsForEntity:v12 defaultIndicesOnly:0];
          }

          else
          {
            v14 = 0;
          }

          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
          v23 = v11;
          if (v15)
          {
            v16 = *v25;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v25 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v24 + 1) + 8 * i);
                if (([v9 containsObject:{objc_msgSend(objc_msgSend(v18, "sqlString"), "stringByReplacingOccurrencesOfString:withString:", @"IF NOT EXISTS ", &stru_1EF3F1768)}] & 1) == 0)
                {
                  [(NSSQLiteConnection *)v1 beginTransaction];
                  [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v18];
                  [(NSSQLiteConnection *)v1 commitTransaction];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v24 objects:v34 count:16];
            }

            while (v15);
          }

          v11 = v23 + 1;
        }

        while (v23 + 1 != v22);
        v19 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
        v10 = v19;
      }

      while (v19);
    }

    [(NSSQLiteConnection *)v1 endFetchAndRecycleStatement:?];

    if (v10)
    {
      objc_exception_rethrow();
    }

    return 1;
  }

  return result;
}

void *__37__NSSQLiteConnection_recreateIndices__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  if (result == 2)
  {
    v5 = *(a1 + 32);
    v6 = [a2 objectAtIndexedSubscript:1];

    return [v5 addObject:v6];
  }

  return result;
}

- (void)scheduleWALCheckpointAfter:(double)after retry:
{
  if (self)
  {
    v6 = *(self + 8);
    if (v6)
    {
      dispatch_assert_queue_V2(v6);
    }

    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = __Block_byref_object_copy__30;
    v9[4] = __Block_byref_object_dispose__30;
    v9[5] = self;
    if (!*(self + 360))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__NSSQLiteConnection_scheduleWALCheckpointAfter_retry___block_invoke;
      block[3] = &unk_1E6EC3FC0;
      block[4] = v9;
      block[5] = a2;
      *&block[6] = after;
      *(self + 360) = dispatch_block_create(0, block);
      v7 = dispatch_time(0, (after * 1000000000.0));
      dispatch_after(v7, *(self + 8), *(self + 360));
    }

    _Block_object_dispose(v9, 8);
  }
}

uint64_t __55__NSSQLiteConnection_scheduleWALCheckpointAfter_retry___block_invoke(uint64_t a1)
{
  _Block_release(*(*(*(*(a1 + 32) + 8) + 40) + 360));
  *(*(*(*(a1 + 32) + 8) + 40) + 360) = 0;
  v2 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: WAL checkpoint"];
  if (readFileSizeFromJournalHandle(*(*(*(*(a1 + 32) + 8) + 40) + 72)) > 0x800000)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (v3)
    {
      if ([(NSSQLiteConnection *)v3 _walCheckpointWithMode:?]- 5 <= 1)
      {
        v4 = *(a1 + 40);
        if (v4)
        {
          [(NSSQLiteConnection *)*(*(*(a1 + 32) + 8) + 40) scheduleWALCheckpointAfter:*(a1 + 48) retry:?];
        }
      }
    }
  }

  return [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v2];
}

- (uint64_t)hasIndexTrackingTable
{
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    uppercaseString = [NSStringFromClass(v4) uppercaseString];
    v6 = objc_msgSend_stringWithFormat_(v3, uppercaseString);

    return [(NSSQLiteConnection *)v2 _hasTableWithName:v6 isTemp:0];
  }

  return result;
}

- (void)dropIndexTrackingTable
{
  if (self)
  {
    adapter = [self adapter];
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    uppercaseString = [NSStringFromClass(v4) uppercaseString];
    v6 = objc_msgSend_stringWithFormat_(v3, uppercaseString);
    v7 = [(NSSQLiteAdapter *)adapter newDropTableStatementForTableNamed:v6];
    [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v7];
  }
}

- (void)prepareInsertStatementForAncillaryEntity:(uint64_t)entity
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = [(NSSQLiteConnection *)entity statementCacheForEntity:a2];
  v5 = v4;
  if (v4)
  {
    insertStatementCache = v4->_insertStatementCache;
    if (insertStatementCache)
    {
      cachedSQLiteStatement = insertStatementCache->_cachedSQLiteStatement;
      if (cachedSQLiteStatement)
      {
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v8 = *(entity + 42);
          v9 = objc_autoreleasePoolPush();
          _pflogInitialize(6);
          IsLogEnabled = _NSCoreDataIsLogEnabled(6);
          v11 = _pflogging_enable_oslog > 0 && IsLogEnabled;
          if (v8 == 1)
          {
            if (v11)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }

              else
              {
                v20 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v20, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }
            }

            v21 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
          }

          else
          {
            if (v11)
            {
              if (_pflogging_catastrophic_mode)
              {
                v19 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v22 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)insertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
                }
              }
            }

            v21 = "%@";
          }

          v23 = _pflogging_catastrophic_mode;
          sqlString2 = [(NSSQLiteStatement *)insertStatementCache sqlString];
          v25 = 6;
          if (v23)
          {
            v25 = 1;
          }

          _NSCoreDataLog_console(v25, v21, sqlString2);
          objc_autoreleasePoolPop(v9);
        }

        *(entity + 48) = insertStatementCache;
        *(entity + 80) = cachedSQLiteStatement;
        v26 = insertStatementCache;
        return;
      }
    }
  }

  v13 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(entity "adapter")];
  v27 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow a2)];
  v14 = -[NSSQLiteAdapter newStatementWithEntity:]([entity adapter], a2);
  v15 = -[NSSQLiteAdapter newGeneratorWithStatement:]([entity adapter], v14);
  name = [a2 name];
  if (v15)
  {
    [(_NSSQLGenerator *)v15 prepareInsertStatementWithRow:v27 includeConstraints:name == @"TRANSACTIONSTRING" includeOnConflict:0 onConflictKeys:NSArray_EmptyArray];
    v17 = v15[3];
    if (v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
    if (v14)
    {
LABEL_15:
      sqlString = v14->_sqlString;
      if (sqlString != v17)
      {

        v14->_sqlString = [(NSString *)v17 copy];
      }
    }
  }

  [(NSSQLiteConnection *)entity prepareSQLStatement:v14];
  [(NSSQLiteStatement *)*(entity + 48) setCachedSQLiteStatement:entity forConnection:?];
  [(NSSQLiteStatementCache *)v5 cacheInsertStatement:?];
  [(NSSQLiteConnection *)entity addVMCachedStatement:?];
}

- (BOOL)hasHistoryRows
{
  if (result)
  {
    return [(NSSQLiteConnection *)result _tableHasRows:?];
  }

  return result;
}

- (BOOL)_tableHasRows:(uint64_t)rows
{
  if (!rows)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT count(*) FROM (SELECT 0 FROM %@ LIMIT 1)", a2];
  v4 = [(NSSQLiteConnection *)rows copyRawIntegerRowsForSQL:v3];
  v5 = v4;
  if (v4)
  {
    v6 = CFArrayGetCount(v4) >= 1 && *CFArrayGetValueAtIndex(v5, 0) && *CFArrayGetValueAtIndex(v5, 1) > 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_dropKnownHistoryTrackingTables
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v17[0] = @"CHANGE";
    v17[1] = @"TRANSACTION";
    v17[2] = @"TRANSACTIONSTRING";
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    result = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v13;
      do
      {
        v4 = 0;
        do
        {
          if (*v13 != v3)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v12 + 1) + 8 * v4);
          adapter = [v1 adapter];
          v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5);
          v8 = [(NSSQLiteAdapter *)adapter newDropTableStatementForTableNamed:v7];
          [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v8];

          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UPDATE OR FAIL %@ set %@=0 where %@ = '%@'", @"Z_PRIMARYKEY", @"Z_MAX", @"Z_NAME", v5];
          v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([v1 adapter], v9);

          [(NSSQLiteConnection *)v1 prepareAndExecuteSQLStatement:v10];
          v4 = v4 + 1;
        }

        while (v2 != v4);
        result = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)processSaveRequest:(sqlite3_int64)request
{
  v210 = *MEMORY[0x1E69E9840];
  if (!request)
  {
    return;
  }

  if (!a2)
  {
    obj = [(NSSQLSavePlan *)0 newInsertedRows];
    goto LABEL_244;
  }

  v2 = *(a2 + 96);
  obj = [(NSSQLSavePlan *)v2 newInsertedRows];
  if (!v2)
  {
LABEL_244:
    v134 = 0;
    v135 = 0;
    v154 = 0;
    goto LABEL_5;
  }

  v154 = [v2[6] mutableCopy];
  v134 = [v2[7] mutableCopy];
  v135 = v2[5];
LABEL_5:
  v130 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (![obj count])
  {
    goto LABEL_28;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v4 = [obj countByEnumeratingWithState:&v167 objects:v198 count:16];
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = *v168;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v168 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v167 + 1) + 8 * i);
      v8 = *(request + 16);
      if (v8)
      {
        v9 = [*(v8 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v9 = 0;
      }

      if ([v9 count])
      {
        v10 = *(request + 16);
        if (v10)
        {
          v11 = [*(v10 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          if (v7)
          {
            goto LABEL_16;
          }

LABEL_20:
          _storeInfo1 = 0;
        }

        else
        {
          v11 = 0;
          if (!v7)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (*(v7 + 16))
          {
            goto LABEL_20;
          }

          v12 = atomic_load((v7 + 40));
          _storeInfo1 = [*(v12 + 16) _storeInfo1];
        }

        if ([v11 containsObject:{objc_msgSend(_storeInfo1, "name")}])
        {
          continue;
        }
      }

      [v3 addObject:v7];
    }

    v4 = [obj countByEnumeratingWithState:&v167 objects:v198 count:16];
  }

  while (v4);
LABEL_25:
  if ([v3 count])
  {
    [v130 setValue:v3 forKey:@"inserted"];
  }

LABEL_28:
  if ([v154 count])
  {
    v132 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v154, "count")}];
    v150 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v147 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a2)
    {
      v14 = *(a2 + 96);
    }

    else
    {
      v14 = 0;
    }

    newCorrelationTableUpdates = [(NSSQLSavePlan *)v14 newCorrelationTableUpdates];
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v15 = [newCorrelationTableUpdates countByEnumeratingWithState:&v191 objects:v209 count:16];
    if (v15)
    {
      v16 = *v192;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v192 != v16)
          {
            objc_enumerationMutation(newCorrelationTableUpdates);
          }

          v18 = *(*(&v191 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          if (v18)
          {
            if (v18[2])
            {
              v190[0] = MEMORY[0x1E69E9820];
              v190[1] = 3221225472;
              v190[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke;
              v190[3] = &unk_1E6EC3FE8;
              v190[4] = request;
              v190[5] = v150;
              v190[6] = v18;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateInsertsOIDsUsingBlock:v190];
            }

            if (v18[5])
            {
              v189[0] = MEMORY[0x1E69E9820];
              v189[1] = 3221225472;
              v189[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_2;
              v189[3] = &unk_1E6EC4010;
              v189[4] = request;
              v189[5] = v150;
              v189[6] = v18;
              v189[7] = v147;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateReordersOIDsUsingBlock:v189];
            }

            if (v18[4])
            {
              v188[0] = MEMORY[0x1E69E9820];
              v188[1] = 3221225472;
              v188[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_3;
              v188[3] = &unk_1E6EC4010;
              v188[4] = request;
              v188[5] = v150;
              v188[6] = v18;
              v188[7] = v147;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateMasterReordersOIDsUsingBlock:v188];
            }

            if (v18[3])
            {
              v187[0] = MEMORY[0x1E69E9820];
              v187[1] = 3221225472;
              v187[2] = __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_4;
              v187[3] = &unk_1E6EC3FE8;
              v187[4] = request;
              v187[5] = v150;
              v187[6] = v18;
              [(NSSQLCorrelationTableUpdateTracker *)v18 enumerateDeletesOIDsUsingBlock:v187];
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [newCorrelationTableUpdates countByEnumeratingWithState:&v191 objects:v209 count:16];
      }

      while (v15);
    }

    v185 = 0u;
    v186 = 0u;
    v183 = 0u;
    v184 = 0u;
    if (a2 && (v20 = *(a2 + 96)) != 0)
    {
      v21 = *(v20 + 128);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 countByEnumeratingWithState:&v183 objects:v208 count:16];
    if (v22)
    {
      v23 = *v184;
      do
      {
        v24 = 0;
        do
        {
          if (*v184 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v183 + 1) + 8 * v24);
          v26 = objc_autoreleasePoolPush();
          v27 = [v150 objectForKey:v25];
          if (a2 && (v28 = *(a2 + 96)) != 0)
          {
            v29 = *(v28 + 128);
          }

          else
          {
            v29 = 0;
          }

          v30 = [v29 objectForKey:v25];
          if (v27)
          {
            [v27 unionSet:v30];
          }

          else
          {
            [v150 setValue:v30 forKey:v25];
          }

          objc_autoreleasePoolPop(v26);
          ++v24;
        }

        while (v22 != v24);
        v31 = [v21 countByEnumeratingWithState:&v183 objects:v208 count:16];
        v22 = v31;
      }

      while (v31);
    }

    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
    v32 = [v150 countByEnumeratingWithState:&v179 objects:&v204 count:16];
    if (v32)
    {
      v33 = *v180;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v180 != v33)
          {
            objc_enumerationMutation(v150);
          }

          v35 = *(*(&v179 + 1) + 8 * k);
          v36 = objc_autoreleasePoolPush();
          v37 = _sqlEntityForEntityID([*(request + 16) model], objc_msgSend(objc_msgSend(objc_msgSend(v35, "componentsSeparatedByString:", @"-"), "firstObject"), "longLongValue"));
          v38 = +[_NSPersistentHistoryChange _propertyDataForEntity:withSetOfPropertyNames:](_NSPersistentHistoryChange, v37, [v150 objectForKey:v35]);
          [(NSSQLSaveChangesRequestContext *)a2 addDataMask:v38 forEntityKey:v35];

          objc_autoreleasePoolPop(v36);
        }

        v32 = [v150 countByEnumeratingWithState:&v179 objects:&v204 count:16];
      }

      while (v32);
    }

    if ([v147 count])
    {
      v39 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v147, "count")}];
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v40 = [v147 countByEnumeratingWithState:&v175 objects:&v200 count:16];
      if (!v40)
      {
        goto LABEL_103;
      }

      v141 = v40;
      v131 = v39;
      v138 = *v176;
      while (1)
      {
        for (m = 0; m != v141; m = m + 1)
        {
          if (*v176 != v138)
          {
            objc_enumerationMutation(v147);
          }

          v41 = *(*(&v175 + 1) + 8 * m);
          context = objc_autoreleasePoolPush();
          v42 = [v41 componentsSeparatedByString:@"-"];
          v43 = _sqlEntityForEntityID([*(request + 16) model], objc_msgSend(objc_msgSend(v42, "firstObject"), "longLongValue"));
          v44 = [v147 objectForKey:v41];
          if (a2 && [*(a2 + 144) objectForKey:v41])
          {
            v44 = [MEMORY[0x1E695DFA8] setWithSet:v44];
            [v44 addObjectsFromArray:{objc_msgSend(objc_msgSend(v150, "objectForKey:", v41), "allObjects")}];
          }

          v45 = [_NSPersistentHistoryChange _propertyDataForEntity:v43 withSetOfPropertyNames:v44];
          [(NSSQLSaveChangesRequestContext *)a2 addDataMask:v45 forEntityKey:v41];

          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v46 = [v154 countByEnumeratingWithState:&v171 objects:v199 count:16];
          if (!v46)
          {
            goto LABEL_97;
          }

          v47 = *v172;
          do
          {
            v48 = 0;
            do
            {
              if (*v172 != v47)
              {
                objc_enumerationMutation(v154);
              }

              v49 = *(*(&v171 + 1) + 8 * v48);
              if (v49 && (v50 = atomic_load(v49 + 5), (v51 = [*(v50 + 16) _storeInfo1]) != 0))
              {
                v52 = *(v51 + 184);
                if (!v43)
                {
                  goto LABEL_95;
                }
              }

              else
              {
                v52 = 0;
                if (!v43)
                {
LABEL_95:
                  v53 = 0;
                  goto LABEL_90;
                }
              }

              v53 = v43[46];
LABEL_90:
              if (v52 == v53)
              {
                v54 = [objc_msgSend(v49 "objectID")];
                if (v54 == [objc_msgSend(v42 "lastObject")])
                {
                  goto LABEL_98;
                }
              }

              ++v48;
            }

            while (v46 != v48);
            v55 = [v154 countByEnumeratingWithState:&v171 objects:v199 count:16];
            v46 = v55;
          }

          while (v55);
LABEL_97:
          [v131 setValue:v44 forKey:v41];
LABEL_98:
          objc_autoreleasePoolPop(context);
        }

        v141 = [v147 countByEnumeratingWithState:&v175 objects:&v200 count:16];
        if (!v141)
        {
          v39 = v131;
          goto LABEL_103;
        }
      }
    }

    v39 = 0;
LABEL_103:

    if (![v39 count])
    {

      v39 = 0;
    }

    v151 = v39;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v56 = [v154 countByEnumeratingWithState:&v163 objects:v197 count:16];
    if (v56)
    {
      v57 = *v164;
      do
      {
        v58 = 0;
        do
        {
          if (*v164 != v57)
          {
            objc_enumerationMutation(v154);
          }

          v59 = *(*(&v163 + 1) + 8 * v58);
          v60 = objc_autoreleasePoolPush();
          v61 = *(request + 16);
          if (v61)
          {
            v62 = [*(v61 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          }

          else
          {
            v62 = 0;
          }

          if ([v62 count])
          {
            v63 = *(request + 16);
            if (v63)
            {
              v64 = [*(v63 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
              if (v59)
              {
                goto LABEL_115;
              }

LABEL_119:
              _storeInfo12 = 0;
            }

            else
            {
              v64 = 0;
              if (!v59)
              {
                goto LABEL_119;
              }

LABEL_115:
              if (*(v59 + 16))
              {
                goto LABEL_119;
              }

              v65 = atomic_load((v59 + 40));
              _storeInfo12 = [*(v65 + 16) _storeInfo1];
            }

            if ([v64 containsObject:{objc_msgSend(_storeInfo12, "name")}])
            {
              goto LABEL_128;
            }
          }

          v67 = MEMORY[0x1E696AEC0];
          if (v59)
          {
            v68 = atomic_load((v59 + 40));
            _storeInfo13 = [*(v68 + 16) _storeInfo1];
            if (_storeInfo13)
            {
              v70 = *(_storeInfo13 + 184);
            }

            else
            {
              v70 = 0;
            }

            v71 = atomic_load((v59 + 40));
            v72 = objc_msgSend_stringWithFormat_(v67, v70, [*(v71 + 16) _referenceData64]);
          }

          else
          {
            v72 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], 0, 0);
          }

          if (a2 && [*(a2 + 144) objectForKey:v72])
          {
            [v132 addObject:v59];
          }

LABEL_128:
          objc_autoreleasePoolPop(v60);
          ++v58;
        }

        while (v56 != v58);
        v73 = [v154 countByEnumeratingWithState:&v163 objects:v197 count:16];
        v56 = v73;
      }

      while (v73);
    }

    if ([v132 count])
    {
      [v130 setValue:v132 forKey:@"updated"];
    }
  }

  else
  {
    v151 = 0;
  }

  if (![v134 count])
  {
    goto LABEL_170;
  }

  v148 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v134, "count")}];
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v74 = [v134 countByEnumeratingWithState:&v159 objects:v196 count:16];
  if (!v74)
  {
    goto LABEL_165;
  }

  v75 = *v160;
  while (2)
  {
    v76 = 0;
    while (2)
    {
      if (*v160 != v75)
      {
        objc_enumerationMutation(v134);
      }

      v77 = *(*(&v159 + 1) + 8 * v76);
      v78 = objc_autoreleasePoolPush();
      v79 = *(request + 16);
      if (v79)
      {
        v80 = [*(v79 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v80 = 0;
      }

      if (![v80 count])
      {
        goto LABEL_153;
      }

      v81 = *(request + 16);
      if (v81)
      {
        v82 = [*(v81 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
        if (v77)
        {
          goto LABEL_147;
        }

LABEL_151:
        _storeInfo14 = 0;
      }

      else
      {
        v82 = 0;
        if (!v77)
        {
          goto LABEL_151;
        }

LABEL_147:
        if (*(v77 + 16))
        {
          goto LABEL_151;
        }

        v83 = atomic_load((v77 + 40));
        _storeInfo14 = [*(v83 + 16) _storeInfo1];
      }

      if (([v82 containsObject:{objc_msgSend(_storeInfo14, "name")}] & 1) == 0)
      {
LABEL_153:
        v85 = MEMORY[0x1E696AEC0];
        if (v77)
        {
          v86 = atomic_load((v77 + 40));
          _storeInfo15 = [*(v86 + 16) _storeInfo1];
          if (_storeInfo15)
          {
            v88 = *(_storeInfo15 + 184);
          }

          else
          {
            v88 = 0;
          }

          v89 = atomic_load((v77 + 40));
          v90 = objc_msgSend_stringWithFormat_(v85, v88, [*(v89 + 16) _referenceData64]);
        }

        else
        {
          v90 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], 0, 0);
        }

        if (a2)
        {
          v91 = v90;
          if ([*(a2 + 144) objectForKey:v90])
          {
            [v148 addObject:v77];
            [v151 removeObjectForKey:v91];
          }
        }
      }

      objc_autoreleasePoolPop(v78);
      if (v74 != ++v76)
      {
        continue;
      }

      break;
    }

    v92 = [v134 countByEnumeratingWithState:&v159 objects:v196 count:16];
    v74 = v92;
    if (v92)
    {
      continue;
    }

    break;
  }

LABEL_165:
  if ([v148 count])
  {
    v93 = [v130 objectForKey:@"updated"];
    if (v93)
    {
      [v93 addObjectsFromArray:{objc_msgSend(v148, "allObjects")}];
    }

    else
    {
      [v130 setValue:v148 forKey:@"updated"];
    }
  }

LABEL_170:
  if (![v135 count])
  {
    goto LABEL_193;
  }

  v94 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v135, "count")}];
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v95 = [v135 countByEnumeratingWithState:&v155 objects:v195 count:16];
  if (!v95)
  {
    goto LABEL_190;
  }

  v96 = *v156;
  while (2)
  {
    v97 = 0;
    while (2)
    {
      if (*v156 != v96)
      {
        objc_enumerationMutation(v135);
      }

      v98 = *(*(&v155 + 1) + 8 * v97);
      v99 = *(request + 16);
      if (v99)
      {
        v100 = [*(v99 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
      }

      else
      {
        v100 = 0;
      }

      if (![v100 count])
      {
        goto LABEL_187;
      }

      v101 = *(request + 16);
      if (v101)
      {
        v102 = [*(v101 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
        if (v98)
        {
          goto LABEL_181;
        }

LABEL_185:
        _storeInfo16 = 0;
      }

      else
      {
        v102 = 0;
        if (!v98)
        {
          goto LABEL_185;
        }

LABEL_181:
        if (*(v98 + 16))
        {
          goto LABEL_185;
        }

        v103 = atomic_load((v98 + 40));
        _storeInfo16 = [*(v103 + 16) _storeInfo1];
      }

      if (([v102 containsObject:{objc_msgSend(_storeInfo16, "name")}] & 1) == 0)
      {
LABEL_187:
        [v94 addObject:v98];
      }

      if (v95 != ++v97)
      {
        continue;
      }

      break;
    }

    v95 = [v135 countByEnumeratingWithState:&v155 objects:v195 count:16];
    if (v95)
    {
      continue;
    }

    break;
  }

LABEL_190:
  if ([v94 count])
  {
    [v130 setValue:v94 forKey:@"deleted"];
  }

LABEL_193:
  if ([v130 count])
  {
    v137 = [(NSSQLiteConnection *)request _insertTransactionStringsForRequestContext:a2];
    v105 = [(NSSQLiteConnection *)request _insertTransactionForRequestContext:a2 andStrings:v137];
    if ([v130 objectForKey:@"inserted"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](request, [v130 objectForKey:@"inserted"], 0, v105, a2);
    }

    if ([v130 objectForKey:@"updated"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](request, [v130 objectForKey:@"updated"], 1, v105, a2);
    }

    if ([v130 objectForKey:@"deleted"])
    {
      -[NSSQLiteConnection insertChanges:type:transactionID:context:](request, [v130 objectForKey:@"deleted"], 2, v105, a2);
    }

    if ([v151 count])
    {
      v106 = *(request + 8);
      if (v106)
      {
        dispatch_assert_queue_V2(v106);
      }

      if ([v151 count])
      {
        v133 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        contexta = [objc_msgSend(objc_msgSend(*(request + 16) "ancillarySQLModels")];
        v107 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](request, contexta, [v151 count]);
        if (!v107)
        {
          v127 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
          objc_exception_throw(v127);
        }

        v108 = [v151 count];
        v207 = 0u;
        v206 = 0u;
        v205 = 0u;
        v204 = 0u;
        v109 = [v151 countByEnumeratingWithState:&v204 objects:v209 count:16];
        if (v109)
        {
          v142 = v109;
          v110 = v107 - v108;
          v139 = *v205;
          do
          {
            for (n = 0; n != v142; n = n + 1)
            {
              if (*v205 != v139)
              {
                objc_enumerationMutation(v151);
              }

              v111 = *(*(&v204 + 1) + 8 * n);
              v146 = objc_autoreleasePoolPush();
              v112 = [v111 componentsSeparatedByString:@"-"];
              [(NSSQLiteConnection *)request prepareInsertStatementForAncillaryEntity:?];
              v203 = 0u;
              v202 = 0u;
              v201 = 0u;
              v200 = 0u;
              bindVariables = [*(request + 48) bindVariables];
              v114 = [bindVariables countByEnumeratingWithState:&v200 objects:v208 count:16];
              ++v110;
              if (v114)
              {
                v115 = *v201;
                do
                {
                  v116 = 0;
                  do
                  {
                    if (*v201 != v115)
                    {
                      objc_enumerationMutation(bindVariables);
                    }

                    v117 = *(*(&v200 + 1) + 8 * v116);
                    v118 = objc_autoreleasePoolPush();
                    if (![v117 index])
                    {
                      sqlType = [v117 sqlType];
                      v120 = v110;
                      if (sqlType == 2)
                      {
LABEL_221:
                        [v117 setInt64:v120];
                        goto LABEL_229;
                      }
                    }

                    if ([v117 index] != 1 && objc_msgSend(v117, "index") != 2)
                    {
                      if ([v117 index] == 3)
                      {
                        sqlType2 = [v117 sqlType];
                        v120 = v105;
                        if (sqlType2 == 2)
                        {
                          goto LABEL_221;
                        }
                      }

                      if ([v117 index] == 4)
                      {
                        firstObject = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
LABEL_224:
                        [v117 setValue:firstObject];
                        goto LABEL_229;
                      }

                      if ([v117 index] == 5)
                      {
                        if (a2)
                        {
                          v123 = [*(a2 + 144) objectForKey:v111];
                        }

                        else
                        {
                          v123 = 0;
                        }

                        [v117 setValue:v123];
                      }

                      else
                      {
                        if ([v117 index] == 6)
                        {
                          firstObject = [v112 firstObject];
                          goto LABEL_224;
                        }

                        if ([v117 index] == 7)
                        {
                          firstObject = [v112 lastObject];
                          goto LABEL_224;
                        }
                      }
                    }

LABEL_229:
                    objc_autoreleasePoolPop(v118);
                    ++v116;
                  }

                  while (v114 != v116);
                  v124 = [bindVariables countByEnumeratingWithState:&v200 objects:v208 count:16];
                  v114 = v124;
                }

                while (v124);
              }

              [request execute];
              if (!*(request + 80))
              {
                v125 = [(NSSQLiteConnection *)request statementCacheForEntity:?];
                [(NSSQLiteStatementCache *)v125 cacheInsertStatement:?];
              }

              [(NSSQLiteConnection *)request _clearBindVariablesForInsertedRow];
              [(NSSQLiteConnection *)request resetSQLStatement];
              objc_autoreleasePoolPop(v146);
            }

            v142 = [v151 countByEnumeratingWithState:&v204 objects:v209 count:16];
          }

          while (v142);
        }

        [v133 drain];
        v128 = 0;
      }
    }

    v129 = [MEMORY[0x1E696AD98] numberWithLongLong:v105];
    if (a2)
    {
      *(a2 + 72) = v129;
    }

    v126 = v137;
  }

  else
  {
    v126 = 0;
  }
}

- (uint64_t)_insertTransactionStringsForRequestContext:(sqlite3_int64)context
{
  if (a2 && (v4 = *(a2 + 32)) != 0 && (v4[42] & 0x80) != 0)
  {
    v5 = -[NSPersistentStoreCoordinator _xpcBundleIdentifier]([v4 persistentStoreCoordinator]);
    v11 = -[NSPersistentStoreCoordinator _xpcProcessName]([*(a2 + 32) persistentStoreCoordinator]);
    v7 = v11;
    v8 = v11 != 0;
    if (v5 == 0 && v8)
    {
      v5 = v11;
    }
  }

  else
  {
    v5 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v6 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v7 = v6;
    v8 = v6 != 0;
    if (v5 == 0 && v8)
    {
      v5 = v6;
    }

    if (!a2)
    {
      name = [0 name];
      v10 = 0;
      goto LABEL_11;
    }
  }

  name = [*(a2 + 32) name];
  v10 = *(a2 + 32);
LABEL_11:
  transactionAuthor = [v10 transactionAuthor];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  v14 = v13;
  if (v5)
  {
    [v13 setValue:v5 forKey:@"BUNDLEIDTS"];
  }

  if (v8)
  {
    [v14 setValue:v7 forKey:@"PROCESSIDTS"];
  }

  if (name)
  {
    [v14 setValue:name forKey:@"CONTEXTNAMETS"];
  }

  if (transactionAuthor)
  {
    [v14 setValue:transactionAuthor forKey:@"AUTHORTS"];
  }

  v15 = [(NSSQLiteConnection *)context _transactionsStringAndPKsForStrings:v14];

  return v15;
}

- (uint64_t)_insertTransactionForRequestContext:(void *)context andStrings:
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [objc_msgSend(objc_msgSend(*(self + 16) "ancillarySQLModels")];
  v8 = [(NSSQLiteConnection *)self generatePrimaryKeysForEntity:v7 batch:1u];
  if (!v8)
  {
    v31 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for transaction" reason:0 userInfo:?];
    objc_exception_throw(v31);
  }

  v9 = v8;
  v33 = v6;
  selfCopy = self;
  [(NSSQLiteConnection *)self prepareInsertStatementForAncillaryEntity:v7];
  if (a2)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
  }

  if ([objc_msgSend(v10 "_queryGenerationToken")] && (!a2 ? (v11 = 0) : (v11 = *(a2 + 32)), (v12 = -[_NSQueryGenerationToken _generationalComponentForStore:](objc_msgSend(v11, "_queryGenerationToken"), *(self + 16))) == 0 ? (v13 = 0) : (v13 = *(v12 + 3)), objc_opt_class(), (objc_opt_isKindOfClass() & (v13 != 0)) == 1))
  {
    v36 = [MEMORY[0x1E695DEF0] dataWithBytes:*(v13 + 8) length:48];
  }

  else
  {
    v36 = 0;
  }

  v14 = objc_msgSend_valueForKey_(context);
  v15 = objc_msgSend_valueForKey_(context);
  v16 = objc_msgSend_valueForKey_(context);
  v35 = objc_msgSend_valueForKey_(context);
  v32 = v7;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  bindVariables = [*(self + 48) bindVariables];
  v18 = [bindVariables countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v18)
  {
    v19 = *v38;
    do
    {
      v20 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(bindVariables);
        }

        v21 = *(*(&v37 + 1) + 8 * v20);
        index = [v21 index];
        if (index <= 4)
        {
          longLongValue = v9;
          if (!index)
          {
            goto LABEL_26;
          }

          v23 = v14;
          if (index == 3)
          {
            goto LABEL_25;
          }

          v23 = v15;
          if (index == 4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (index <= 10)
          {
            v23 = v16;
            if (index != 5)
            {
              if (index != 6)
              {
                goto LABEL_27;
              }

              v23 = v35;
            }

LABEL_25:
            longLongValue = [v23 longLongValue];
LABEL_26:
            [v21 setInt64:longLongValue];
            goto LABEL_27;
          }

          if (index == 11)
          {
            if (v36)
            {
              [v21 setValue:v36];
            }
          }

          else if (index == 12)
          {
            v25 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            [v21 setValue:{objc_msgSend(v25, "numberWithDouble:")}];
          }
        }

LABEL_27:
        ++v20;
      }

      while (v18 != v20);
      v26 = [bindVariables countByEnumeratingWithState:&v37 objects:v41 count:16];
      v18 = v26;
    }

    while (v26);
  }

  [selfCopy execute];
  if (!*(selfCopy + 80))
  {
    v27 = [(NSSQLiteConnection *)selfCopy statementCacheForEntity:v32];
    [(NSSQLiteStatementCache *)v27 cacheInsertStatement:?];
  }

  v28 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(*(selfCopy + 72))), "intValue"}];
  [(NSSQLiteConnection *)selfCopy _clearBindVariablesForInsertedRow];
  [(NSSQLiteConnection *)selfCopy resetSQLStatement];
  [v33 drain];
  v29 = 0;
  return v28;
}

- (void)insertChanges:(uint64_t)changes type:(sqlite3_int64)type transactionID:(uint64_t)d context:
{
  v80 = *MEMORY[0x1E69E9840];
  v6 = *(self + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (changes == 2)
  {
    v53 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v53 = 0;
  }

  v7 = objc_msgSend_valueForKey_([*(self + 16) options]);
  if ([v7 isNSDictionary])
  {
    bOOLValue = [objc_msgSend_valueForKey_(v7) BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v50 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v58 = [objc_msgSend(objc_msgSend(*(self + 16) "ancillarySQLModels")];
  v8 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](self, v58, [a2 count]);
  if (!v8)
  {
    v48 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
    objc_exception_throw(v48);
  }

  v9 = [a2 count];
  if (d)
  {
    v51 = *(d + 32);
  }

  else
  {
    v51 = 0;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v10 = [a2 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (v10)
  {
    v11 = v8 - v9;
    v54 = *v75;
    v55 = v10;
    dCopy = d;
    do
    {
      v62 = 0;
      do
      {
        if (*v75 != v54)
        {
          objc_enumerationMutation(a2);
        }

        v66 = *(*(&v74 + 1) + 8 * v62);
        context = objc_autoreleasePoolPush();
        if (!v66 || (*(v66 + 16) & 1) != 0)
        {
          v14 = 0;
        }

        else
        {
          v12 = atomic_load((v66 + 40));
          _storeInfo1 = [*(v12 + 16) _storeInfo1];
          v14 = _storeInfo1;
          if (_storeInfo1)
          {
            v60 = 0;
            v67 = *(_storeInfo1 + 184);
            goto LABEL_23;
          }
        }

        v67 = 0;
        v60 = 1;
LABEL_23:
        if (changes == 2)
        {
          v64 = [v53 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v67)}];
          if (!v64)
          {
            v64 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v14];
            if (v60)
            {
              v15 = 0;
            }

            else
            {
              v15 = *(v14 + 184);
            }

            [v53 setObject:v64 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v15)}];
          }

          if ((([v64 count] != 0) & bOOLValue) == 1)
          {
            v16 = [v51 objectRegisteredForID:{objc_msgSend(v66, "objectID")}];
            if ([v16 isDeleted])
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
          v64 = 0;
        }

        [(NSSQLiteConnection *)self prepareInsertStatementForAncillaryEntity:v58];
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        bindVariables = [*(self + 48) bindVariables];
        v19 = [bindVariables countByEnumeratingWithState:&v70 objects:v78 count:16];
        v59 = v14;
        ++v11;
        if (v19)
        {
          v20 = *v71;
          v21 = v66;
          if (bOOLValue)
          {
            v21 = v17;
          }

          v56 = v21;
          do
          {
            v22 = 0;
            do
            {
              if (*v71 != v20)
              {
                objc_enumerationMutation(bindVariables);
              }

              v23 = *(*(&v70 + 1) + 8 * v22);
              v24 = objc_autoreleasePoolPush();
              if (![v23 index])
              {
                sqlType = [v23 sqlType];
                typeCopy = v11;
                if (sqlType == 2)
                {
LABEL_47:
                  [v23 setInt64:typeCopy];
                  goto LABEL_51;
                }
              }

              if ([v23 index] != 1 && objc_msgSend(v23, "index") != 2)
              {
                if ([v23 index] == 3)
                {
                  sqlType2 = [v23 sqlType];
                  typeCopy = type;
                  if (sqlType2 == 2)
                  {
                    goto LABEL_47;
                  }
                }

                if ([v23 index] == 4)
                {
                  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:changes];
LABEL_50:
                  [v23 setValue:v28];
                  goto LABEL_51;
                }

                if ([v23 index] == 5)
                {
                  if (changes == 1)
                  {
                    v29 = dCopy;
                    v30 = objc_alloc(MEMORY[0x1E696AEC0]);
                    if (v66)
                    {
                      v31 = atomic_load((v66 + 40));
                      _referenceData64 = [*(v31 + 16) _referenceData64];
                    }

                    else
                    {
                      _referenceData64 = 0;
                    }

                    v33 = [v30 initWithFormat:@"%u-%lld", v67, _referenceData64];
                    if (dCopy)
                    {
                      v29 = [*(dCopy + 144) objectForKey:v33];
                    }

                    [v23 setValue:v29];
                  }
                }

                else
                {
                  if ([v23 index] == 6)
                  {
                    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v67];
                    goto LABEL_50;
                  }

                  if ([v23 index] == 7)
                  {
                    v34 = MEMORY[0x1E696AD98];
                    if (v66)
                    {
                      v35 = atomic_load((v66 + 40));
                      _referenceData642 = [*(v35 + 16) _referenceData64];
                    }

                    else
                    {
                      _referenceData642 = 0;
                    }

                    v28 = [v34 numberWithLongLong:_referenceData642];
                    goto LABEL_50;
                  }

                  v37 = [objc_msgSend(v23 "propertyDescription")];
                  if (changes == 2)
                  {
                    v38 = v37;
                    if ([v64 count])
                    {
                      if ([v38 containsString:@"TOMBSTONE"])
                      {
                        v39 = [objc_msgSend(v38 stringByReplacingOccurrencesOfString:@"TOMBSTONE" withString:{&stru_1EF3F1768), "intValue"}];
                        if (v39 < [v64 count])
                        {
                          v40 = [v64 objectAtIndexedSubscript:v39];
                          if (v60)
                          {
                            v41 = 0;
                          }

                          else
                          {
                            v41 = [*(v59 + 40) objectForKey:v40];
                          }

                          [v23 setSQLType:{objc_msgSend(v41, "sqlType")}];
                          if ([v41 sqlType] == 15 || objc_msgSend(v41, "sqlType") == 18)
                          {
                            [v23 setTombstonedPropertyDescription:{objc_msgSend(v41, "propertyDescription")}];
                          }

                          v42 = objc_msgSend_valueForKey_(v56);
                          if (v42)
                          {
                            if ([objc_msgSend(v41 "propertyDescription")])
                            {
                              v43 = [v40 componentsSeparatedByString:@"."];
                              for (i = 1; [v43 count] > i; ++i)
                              {
                                v42 = [v42 objectForKey:{objc_msgSend(v43, "objectAtIndex:", i)}];
                              }
                            }

                            [v23 setValue:v42];
                          }
                        }
                      }
                    }
                  }
                }
              }

LABEL_51:
              objc_autoreleasePoolPop(v24);
              ++v22;
            }

            while (v22 != v19);
            v45 = [bindVariables countByEnumeratingWithState:&v70 objects:v78 count:16];
            v19 = v45;
          }

          while (v45);
        }

        [self execute];
        if (!*(self + 80))
        {
          v46 = [(NSSQLiteConnection *)self statementCacheForEntity:v58];
          [(NSSQLiteStatementCache *)v46 cacheInsertStatement:?];
        }

        [(NSSQLiteConnection *)self _clearBindVariablesForInsertedRow];
        [(NSSQLiteConnection *)self resetSQLStatement];
        objc_autoreleasePoolPop(context);
        ++v62;
      }

      while (v62 != v55);
      v47 = [a2 countByEnumeratingWithState:&v74 objects:v79 count:16];
      v55 = v47;
    }

    while (v47);
  }

  [v50 drain];
  v49 = 0;
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 40) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 40) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 56) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 56) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15 && (v16 = *(v15 + 8)) != 0)
    {
      v17 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    [v14 addObject:{objc_msgSend(v17, "name")}];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x1E695DFA8]);
    v19 = *(a1 + 48);
    if (v19 && (v20 = *(v19 + 8)) != 0)
    {
      v21 = *(v20 + 56);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v18 initWithObjects:{objc_msgSend(v21, "name"), 0}];
    [*(a1 + 56) setValue:v22 forKey:v12];
  }

  v23 = *(*(a1 + 32) + 16);
  v24 = [a3 entity];
  if (v23 && v24)
  {
    v25 = _sqlCoreLookupSQLEntityForEntityDescription(v23, v24);
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v25)
    {
      v25 = *(v25 + 184);
    }
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E696AEC0]);
    v25 = 0;
  }

  v35 = [v26 initWithFormat:@"%u-%lld", v25, objc_msgSend(a3, "_referenceData64")];
  v27 = [*(a1 + 40) objectForKey:?];
  if (v27)
  {
    v28 = v27;
    v29 = *(a1 + 48);
    if (v29)
    {
      v30 = *(v29 + 8);
    }

    else
    {
      v30 = 0;
    }

    [v28 addObject:{objc_msgSend(v30, "name")}];
  }

  else
  {
    v31 = objc_alloc(MEMORY[0x1E695DFA8]);
    v32 = *(a1 + 48);
    if (v32)
    {
      v33 = *(v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v31 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 56) setValue:v34 forKey:v35];
  }
}

void __67__NSSQLiteConnection_processRelationshipUpdates_forRequestContext___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(*(a1 + 32) + 16);
  v7 = [a2 entity];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = 0;
  }

  else
  {
    v10 = _sqlCoreLookupSQLEntityForEntityDescription(v6, v7);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = v11;
    if (v10)
    {
      v10 = *(v10 + 184);
    }
  }

  v12 = [v9 initWithFormat:@"%u-%lld", v10, objc_msgSend(a2, "_referenceData64")];
  v13 = [*(a1 + 40) objectForKey:v12];
  if (v13)
  {
    v14 = v13;
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = *(v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    [v14 addObject:{objc_msgSend(v16, "name")}];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x1E695DFA8]);
    v18 = *(a1 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v17 initWithObjects:{objc_msgSend(v19, "name"), 0}];
    [*(a1 + 40) setValue:v20 forKey:v12];
  }

  v21 = *(*(a1 + 32) + 16);
  v22 = [a3 entity];
  if (v21 && v22)
  {
    v23 = _sqlCoreLookupSQLEntityForEntityDescription(v21, v22);
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v23)
    {
      v23 = *(v23 + 184);
    }
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = 0;
  }

  v35 = [v24 initWithFormat:@"%u-%lld", v23, objc_msgSend(a3, "_referenceData64")];
  v25 = [*(a1 + 40) objectForKey:?];
  if (v25)
  {
    v26 = v25;
    v27 = *(a1 + 48);
    if (v27 && (v28 = *(v27 + 8)) != 0)
    {
      v29 = *(v28 + 56);
    }

    else
    {
      v29 = 0;
    }

    [v26 addObject:{objc_msgSend(v29, "name")}];
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x1E695DFA8]);
    v31 = *(a1 + 48);
    if (v31 && (v32 = *(v31 + 8)) != 0)
    {
      v33 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
    }

    v34 = [v30 initWithObjects:{objc_msgSend(v33, "name"), 0}];
    [*(a1 + 40) setValue:v34 forKey:v35];
  }
}

- (void)processInsertRequest:(sqlite3_int64)request
{
  v71 = *MEMORY[0x1E69E9840];
  if (!request)
  {
    return;
  }

  v4 = *(request + 16);
  v5 = v4 ? [*(v4 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"] : 0;
  if ([v5 count])
  {
    v6 = *(request + 16);
    v7 = v6 ? [*(v6 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"] : 0;
    if ([v7 containsObject:{objc_msgSend(objc_msgSend(a2, "persistentStoreRequest"), "entityName")}])
    {
      return;
    }
  }

  if (a2)
  {
    v8 = a2;
    v9 = a2[11];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  requestCopy = request;
  v10 = [(NSSQLiteConnection *)request gatherHistoryChangesFromTable:v9];
  v11 = objc_msgSend_valueForKey_(v10);
  v12 = objc_msgSend_valueForKey_(v10);
  obj = v11;
  if ([v11 count] || objc_msgSend(v12, "count"))
  {
    if (![v11 count] && objc_msgSend(v12, "count") && (-[NSSQLiteConnection hasAttributeChanges:](v12) & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            persistentStoreRequest = [v8 persistentStoreRequest];
            v69 = 2112;
            v70 = v12;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Insert resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
          }
        }

        else
        {
          v41 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            persistentStoreRequest = [v8 persistentStoreRequest];
            v69 = 2112;
            v70 = v12;
            _os_log_impl(&dword_18565F000, v41, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Insert resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
          }
        }
      }

      v42 = _pflogging_catastrophic_mode == 0;
      persistentStoreRequest2 = [v8 persistentStoreRequest];
      v44 = 9;
      if (!v42)
      {
        v44 = 1;
      }

      _NSCoreDataLog_console(v44, "Batch Insert resulted in updates with no updated properties - %@ - %@", persistentStoreRequest2, v12);
      objc_autoreleasePoolPop(v35);
      return;
    }

    v51 = v12;
    v49 = [(NSSQLiteConnection *)requestCopy _insertTransactionStringsForRequestContext:v8];
    v50 = v8;
    v13 = [(NSSQLiteConnection *)requestCopy _insertTransactionForRequestContext:v8 andStrings:v49];
    v14 = *(requestCopy + 8);
    if (v14)
    {
      dispatch_assert_queue_V2(v14);
    }

    if ([v11 count])
    {
      v48 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v55 = [objc_msgSend(objc_msgSend(*(requestCopy + 16) "ancillarySQLModels")];
      v15 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](requestCopy, v55, [v11 count]);
      if (!v15)
      {
        v45 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
        objc_exception_throw(v45);
      }

      v16 = [v11 count];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v17 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
      if (v17)
      {
        v18 = v15 - v16;
        v53 = *v63;
        do
        {
          v19 = 0;
          v54 = v17;
          do
          {
            if (*v63 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v62 + 1) + 8 * v19);
            v21 = objc_autoreleasePoolPush();
            v22 = _sqlCoreLookupSQLEntityForEntityDescription(*(requestCopy + 16), [v20 entity]);
            if (v22)
            {
              v23 = *(v22 + 184);
            }

            else
            {
              v23 = 0;
            }

            [(NSSQLiteConnection *)requestCopy prepareInsertStatementForAncillaryEntity:v55];
            v56 = v19;
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            bindVariables = [*(requestCopy + 48) bindVariables];
            v25 = [bindVariables countByEnumeratingWithState:&v58 objects:v66 count:16];
            ++v18;
            if (v25)
            {
              v26 = *v59;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v59 != v26)
                  {
                    objc_enumerationMutation(bindVariables);
                  }

                  v28 = *(*(&v58 + 1) + 8 * i);
                  if (![v28 index])
                  {
                    sqlType = [v28 sqlType];
                    v30 = v18;
                    if (sqlType == 2)
                    {
LABEL_35:
                      [v28 setInt64:v30];
                      continue;
                    }
                  }

                  if ([v28 index] != 1 && objc_msgSend(v28, "index") != 2)
                  {
                    if ([v28 index] == 3)
                    {
                      sqlType2 = [v28 sqlType];
                      v30 = v13;
                      if (sqlType2 == 2)
                      {
                        goto LABEL_35;
                      }
                    }

                    if ([v28 index] == 4)
                    {
                      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
                    }

                    else if ([v28 index] == 6)
                    {
                      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v23];
                    }

                    else
                    {
                      if ([v28 index] != 7)
                      {
                        continue;
                      }

                      v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v20, "_referenceData64")}];
                    }

                    [v28 setValue:v32];
                  }
                }

                v25 = [bindVariables countByEnumeratingWithState:&v58 objects:v66 count:16];
              }

              while (v25);
            }

            [requestCopy execute];
            if (!*(requestCopy + 80))
            {
              v33 = [(NSSQLiteConnection *)requestCopy statementCacheForEntity:v55];
              [(NSSQLiteStatementCache *)v33 cacheInsertStatement:?];
            }

            [(NSSQLiteConnection *)requestCopy _clearBindVariablesForInsertedRow];
            [(NSSQLiteConnection *)requestCopy resetSQLStatement];
            objc_autoreleasePoolPop(v21);
            v19 = v56 + 1;
          }

          while (v56 + 1 != v54);
          v34 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
          v17 = v34;
        }

        while (v34);
      }

      v46 = 0;
    }

    -[NSSQLiteConnection insertUpdates:transactionID:updatedAttributes:](requestCopy, v51, v13, [objc_msgSend(objc_msgSend(objc_msgSend(v50 "persistentStoreRequest")]);
    v47 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
    if (v50)
    {
      v50[9] = v47;
    }
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v38 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          persistentStoreRequest = obj;
          v69 = 2112;
          v70 = v12;
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Insert resulted in no changes - %@ - %@\n", buf, 0x16u);
        }
      }

      else
      {
        v39 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          persistentStoreRequest = obj;
          v69 = 2112;
          v70 = v12;
          _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Insert resulted in no changes - %@ - %@\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v40 = 1;
    }

    else
    {
      v40 = 9;
    }

    _NSCoreDataLog_console(v40, "Batch Insert resulted in no changes - %@ - %@", obj, v12);
    objc_autoreleasePoolPop(v37);
  }
}

- (uint64_t)gatherHistoryChangesFromTable:(uint64_t)table
{
  v60 = *MEMORY[0x1E69E9840];
  if (!table)
  {
    return 0;
  }

  tableCopy = table;
  if ([(NSSQLiteConnection *)table _tableHasRows:a2])
  {
    v45 = tableCopy;
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
    v5 = -[NSSQLiteAdapter newStatementWithSQLString:]([tableCopy adapter], v4);
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[NSSQLColumn alloc] initWithColumnName:@"ENTITYID" sqlType:2];
    [v38 addObject:v6];

    v7 = [[NSSQLColumn alloc] initWithColumnName:@"PRIMEKEY" sqlType:2];
    [v38 addObject:v7];

    v8 = [[NSSQLColumn alloc] initWithColumnName:@"TYPE" sqlType:2];
    [v38 addObject:v8];

    v9 = [[NSSQLColumn alloc] initWithColumnName:@"ATTRIBUTENAME" sqlType:6];
    [v38 addObject:v9];

    [(NSSQLiteConnection *)tableCopy prepareSQLStatement:v5];
    [(NSSQLiteConnection *)tableCopy setColumnsToFetch:v38];
    [tableCopy execute];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = v5;
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v42, @"inserts", v39, @"updates", v40, @"deletes", 0}];
    while (1)
    {
      newFetchedArray = [(NSSQLiteConnection *)tableCopy newFetchedArray];
      if (!newFetchedArray)
      {
        v35 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v41];

        v34 = v35;
        [(NSSQLiteConnection *)tableCopy releaseSQLStatement];
        [(NSSQLiteConnection *)tableCopy setColumnsToFetch:?];
        *(tableCopy + 312) &= ~2u;
        *(tableCopy + 100) = 0;
        *(tableCopy + 92) = 0;
        *(tableCopy + 108) = 0;

        return v34;
      }

      v11 = newFetchedArray;
      v12 = objc_autoreleasePoolPush();
      if ([v11 count] == 4)
      {
        break;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: incorrect number of results\n", buf, 2u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: incorrect number of results", buf, 2u);
      }

LABEL_35:

      objc_autoreleasePoolPop(v12);
    }

    v43 = [v11 objectAtIndex:0];
    unsignedLongValue = [v43 unsignedLongValue];
    v14 = [v11 objectAtIndex:1];
    v15 = [v11 objectAtIndex:2];
    v44 = [v11 objectAtIndex:3];
    if (unsignedLongValue >> 7 < 0x7D)
    {
      v20 = [objc_msgSend(*(tableCopy + 16) "model")];
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      ancillarySQLModels = [*(tableCopy + 16) ancillarySQLModels];
      v17 = [ancillarySQLModels countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v17)
      {
        v18 = *v47;
LABEL_9:
        v19 = 0;
        while (1)
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(ancillarySQLModels);
          }

          v20 = [objc_msgSend(objc_msgSend(*(v45 + 16) "ancillarySQLModels")];
          if (v20)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [ancillarySQLModels countByEnumeratingWithState:&v46 objects:v59 count:16];
            v20 = 0;
            if (v17)
            {
              goto LABEL_9;
            }

            break;
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }

    tableCopy = v45;
    v23 = [*(v45 + 16) newObjectIDForEntity:v20 pk:{objc_msgSend(v14, "unsignedLongLongValue")}];
    if (v23)
    {
      longLongValue = [v15 longLongValue];
      v25 = v42;
      if (longLongValue)
      {
        if ([v15 longLongValue] == 1)
        {
          if (v44)
          {
            v58[0] = v23;
            v58[1] = v44;
            [v39 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v58, 2)}];
LABEL_34:

            goto LABEL_35;
          }

          v32 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v23;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: fault: History Update for %@ without any updated columns.\n", buf, 0xCu);
          }

          v33 = _PFLogGetLogStream(17);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_34;
          }

          *buf = 138412290;
          v51 = v23;
          v28 = v33;
          v29 = "CoreData: History Update for %@ without any updated columns.";
          v30 = 12;
LABEL_31:
          _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, v29, buf, v30);
          goto LABEL_34;
        }

        longLongValue2 = [v15 longLongValue];
        v25 = v40;
        if (longLongValue2 != 2)
        {
          goto LABEL_34;
        }
      }

      [v25 addObject:v23];
      goto LABEL_34;
    }

    v26 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v51 = v43;
      v52 = 2112;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
      v56 = 2112;
      v57 = v44;
      _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: fault: Unable to construct objectID for History Change: %@-%@-%@-%@\n", buf, 0x2Au);
    }

    v27 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_34;
    }

    *buf = 138413058;
    v51 = v43;
    v52 = 2112;
    v53 = v14;
    v54 = 2112;
    v55 = v15;
    v56 = 2112;
    v57 = v44;
    v28 = v27;
    v29 = "CoreData: Unable to construct objectID for History Change: %@-%@-%@-%@";
    v30 = 42;
    goto LABEL_31;
  }

  return MEMORY[0x1E695E0F8];
}

- (uint64_t)hasAttributeChanges:(void *)changes
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [changes countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(changes);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        lastObject = [v6 lastObject];
        if ([lastObject isNSString] && objc_msgSend(lastObject, "length"))
        {
          objc_autoreleasePoolPop(v7);
          return 1;
        }

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v3 != v5);
      result = [changes countByEnumeratingWithState:&v9 objects:v13 count:16];
      v3 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)insertUpdates:(sqlite3_int64)updates transactionID:(void *)d updatedAttributes:
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = *(self + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  if ([a2 count])
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v34 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v39 = [objc_msgSend_valueForKey_(d) componentsJoinedByString:{@", "}];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:1];
    v7 = [objc_msgSend(objc_msgSend(*(self + 16) "ancillarySQLModels")];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (!v8)
    {
      goto LABEL_48;
    }

    v36 = v7;
    v37 = *v52;
    while (1)
    {
      v41 = 0;
      v38 = v8;
      do
      {
        if (*v52 != v37)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v51 + 1) + 8 * v41);
        context = objc_autoreleasePoolPush();
        firstObject = [v9 firstObject];
        lastObject = [v9 lastObject];
        v11 = v39;
        if ([lastObject isNSString])
        {
          v11 = lastObject;
          if (![lastObject length])
          {
            v11 = v39;
          }
        }

        v12 = [(NSSQLiteConnection *)self generatePrimaryKeysForEntity:v7 batch:1u];
        if (!v12)
        {
          v32 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
          objc_exception_throw(v32);
        }

        v13 = _sqlCoreLookupSQLEntityForEntityDescription(*(self + 16), [firstObject entity]);
        v14 = v13;
        if (v13)
        {
          v15 = *(v13 + 184);
        }

        else
        {
          v15 = 0;
        }

        [(NSSQLiteConnection *)self prepareInsertStatementForAncillaryEntity:v7];
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        bindVariables = [*(self + 48) bindVariables];
        v17 = [bindVariables countByEnumeratingWithState:&v47 objects:v55 count:16];
        v44 = v14;
        if (v17)
        {
          v18 = *v48;
          do
          {
            v19 = 0;
            do
            {
              if (*v48 != v18)
              {
                objc_enumerationMutation(bindVariables);
              }

              v20 = *(*(&v47 + 1) + 8 * v19);
              if (![v20 index])
              {
                sqlType = [v20 sqlType];
                updatesCopy = v12;
                if (sqlType == 2)
                {
LABEL_26:
                  [v20 setInt64:updatesCopy];
                  goto LABEL_38;
                }
              }

              if ([v20 index] != 1 && objc_msgSend(v20, "index") != 2)
              {
                if ([v20 index] == 3)
                {
                  sqlType2 = [v20 sqlType];
                  updatesCopy = updates;
                  if (sqlType2 == 2)
                  {
                    goto LABEL_26;
                  }
                }

                index = [v20 index];
                v25 = v6;
                if (index == 4)
                {
                  goto LABEL_37;
                }

                if ([v20 index] != 5 || !v11)
                {
                  if ([v20 index] == 6)
                  {
                    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
                  }

                  else
                  {
                    if ([v20 index] != 7)
                    {
                      goto LABEL_38;
                    }

                    v26 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(firstObject, "_referenceData64")}];
                  }

                  v25 = v26;
LABEL_37:
                  [v20 setValue:v25];
                  goto LABEL_38;
                }

                v25 = [v45 objectForKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, v11)}];
                if (v25)
                {
                  goto LABEL_37;
                }

                v27 = [v11 componentsSeparatedByString:{@", "}];
                v28 = +[_NSPersistentHistoryChange _propertyDataForEntity:withSetOfPropertyNames:](_NSPersistentHistoryChange, v44, [MEMORY[0x1E695DFD8] setWithArray:v27]);
                [v45 setObject:v28 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v15)}];
                [v20 setValue:v28];
              }

LABEL_38:
              ++v19;
            }

            while (v17 != v19);
            v29 = [bindVariables countByEnumeratingWithState:&v47 objects:v55 count:16];
            v17 = v29;
          }

          while (v29);
        }

        [self execute];
        v7 = v36;
        if (!*(self + 80))
        {
          v30 = [(NSSQLiteConnection *)self statementCacheForEntity:v36];
          [(NSSQLiteStatementCache *)v30 cacheInsertStatement:?];
        }

        [(NSSQLiteConnection *)self _clearBindVariablesForInsertedRow];
        [(NSSQLiteConnection *)self resetSQLStatement];
        objc_autoreleasePoolPop(context);
        ++v41;
      }

      while (v41 != v38);
      v31 = [a2 countByEnumeratingWithState:&v51 objects:v56 count:16];
      v8 = v31;
      if (!v31)
      {
LABEL_48:

        v33 = 0;
        return;
      }
    }
  }
}

- (void)processUpdateRequest:(void *)request withOIDs:(void *)ds forAttributes:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = *(self + 16);
    v9 = v8 ? [*(v8 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"] : 0;
    if (![v9 count] || ((v10 = *(self + 16)) == 0 ? (v11 = 0) : (v11 = objc_msgSend(*(v10 + 240), "objectForKey:", @"NSPersistentHistoryTrackingEntitiesToExclude")), (objc_msgSend(v11, "containsObject:", objc_msgSend(objc_msgSend(a2, "request"), "entityName")) & 1) == 0))
    {
      if ([NSSQLiteConnection hasAttributeChanges:request])
      {
        v20 = [(NSSQLiteConnection *)self _insertTransactionStringsForRequestContext:a2];
        v12 = [(NSSQLiteConnection *)self _insertTransactionForRequestContext:a2 andStrings:v20];
        [(NSSQLiteConnection *)self insertUpdates:request transactionID:v12 updatedAttributes:ds];
        v13 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
        if (a2)
        {
          a2[9] = v13;
        }
      }

      else
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              persistentStoreRequest = [a2 persistentStoreRequest];
              v23 = 2112;
              requestCopy2 = request;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Batch Update resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
            }
          }

          else
          {
            v16 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              persistentStoreRequest = [a2 persistentStoreRequest];
              v23 = 2112;
              requestCopy2 = request;
              _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: debug: Batch Update resulted in updates with no updated properties - %@ - %@\n", buf, 0x16u);
            }
          }
        }

        v17 = _pflogging_catastrophic_mode;
        persistentStoreRequest2 = [a2 persistentStoreRequest];
        v19 = 9;
        if (v17)
        {
          v19 = 1;
        }

        _NSCoreDataLog_console(v19, "Batch Update resulted in updates with no updated properties - %@ - %@", persistentStoreRequest2, request);
        objc_autoreleasePoolPop(v14);
      }
    }
  }
}

- (uint64_t)_hasOldHistoryTrackingTables
{
  if (result)
  {
    v1 = result;
    if (([(NSSQLiteConnection *)result _hasOldHistoryTrackingTablesV0]& 1) != 0)
    {
      return 1;
    }

    else
    {

      return [(NSSQLiteConnection *)v1 _hasOldHistoryTrackingTablesV1];
    }
  }

  return result;
}

- (sqlite3)_hasOldHistoryTrackingTablesV0
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([(NSSQLiteConnection *)self _hasTableWithName:0 isTemp:?]& 1) == 0 && ![(NSSQLiteConnection *)selfCopy _hasTableWithName:0 isTemp:?])
    {
      return 0;
    }

    errmsg = 0;
    v2 = objc_opt_new();
    if (!sqlite3_exec(*(selfCopy + 72), "select sql from sqlite_master where name = 'ZCHANGETRACK'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
    {
      if (![objc_msgSend(v2 "firstObject")] || !objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZBUNDLEID VARCHAR") || (objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCONTEXTNAME VARCHAR") & 1) == 0)
      {
        goto LABEL_26;
      }

      v3 = [objc_msgSend(v2 "firstObject")];

      if (v3)
      {
        v2 = objc_opt_new();
        if (!sqlite3_exec(*(selfCopy + 72), "select sql from sqlite_master where name = 'ZCHANGETRACKHISTORY'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
        {
          if ([objc_msgSend(v2 "firstObject")] && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYENTITY INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYENTITYVERSION INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKINGHISTORYTRANSACTIONID INTEGER") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETRACKHISTORYTOMBSTONE BLOB"))
          {
            selfCopy = [objc_msgSend(v2 "firstObject")];
LABEL_27:

            return selfCopy;
          }

LABEL_26:
          selfCopy = 0;
          goto LABEL_27;
        }

        v4 = objc_autoreleasePoolPush();
        if (!_NSCoreDataIsOSLogEnabled(1))
        {
          goto LABEL_36;
        }

        v9 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v11 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          if (v11)
          {
            *buf = 136315138;
            v14 = errmsg;
LABEL_38:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 2 Exists - %s\n", buf, 0xCu);
          }
        }

        else if (v11)
        {
          *buf = 136315138;
          v14 = errmsg;
          goto LABEL_38;
        }

LABEL_36:
        _NSCoreDataLog_console(1, "Unable to determine if old history table 2 Exists - %s");
        goto LABEL_25;
      }

      return 0;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      v6 = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 136315138;
          v14 = errmsg;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 1 Exists - %s\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 136315138;
        v14 = errmsg;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if old history table 1 Exists - %s");
LABEL_25:
    objc_autoreleasePoolPop(v4);
    goto LABEL_26;
  }

  return selfCopy;
}

- (sqlite3)_hasOldHistoryTrackingTablesV1
{
  selfCopy = self;
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (([(NSSQLiteConnection *)self _hasTableWithName:0 isTemp:?]& 1) == 0 && ![(NSSQLiteConnection *)selfCopy _hasTableWithName:0 isTemp:?])
    {
      return 0;
    }

    errmsg = 0;
    v2 = objc_opt_new();
    if (!sqlite3_exec(*(selfCopy + 72), "select sql from sqlite_master where name = 'ZCHANGE'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
    {
      if (![objc_msgSend(v2 "firstObject")] || !objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCHANGETYPE INTEGER") || (objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCOLUMNS BLOB") & 1) == 0)
      {
        goto LABEL_24;
      }

      v3 = [objc_msgSend(v2 "firstObject")];

      if (v3)
      {
        v2 = objc_opt_new();
        if (!sqlite3_exec(*(selfCopy + 72), "select sql from sqlite_master where name = 'ZTRANSACTION'", sqlite3Callback, v2, &errmsg) && [v2 count] == 1)
        {
          if ([objc_msgSend(v2 "firstObject")] && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZCONTEXTNAME VARCHAR") && objc_msgSend(objc_msgSend(v2, "firstObject"), "containsString:", @"ZPROCESSID VARCHAR"))
          {
            selfCopy = [objc_msgSend(v2 "firstObject")];
LABEL_25:

            return selfCopy;
          }

LABEL_24:
          selfCopy = 0;
          goto LABEL_25;
        }

        v4 = objc_autoreleasePoolPush();
        if (!_NSCoreDataIsOSLogEnabled(1))
        {
          goto LABEL_34;
        }

        v9 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v11 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v9)
        {
          if (v11)
          {
            *buf = 136315138;
            v14 = errmsg;
LABEL_36:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 2 Exists - %s\n", buf, 0xCu);
          }
        }

        else if (v11)
        {
          *buf = 136315138;
          v14 = errmsg;
          goto LABEL_36;
        }

LABEL_34:
        _NSCoreDataLog_console(1, "Unable to determine if old history table 2 Exists - %s");
        goto LABEL_23;
      }

      return 0;
    }

    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v5 = _pflogging_catastrophic_mode;
      v6 = _PFLogGetLogStream(1);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v7)
        {
          *buf = 136315138;
          v14 = errmsg;
LABEL_28:
          _os_log_error_impl(&dword_18565F000, v6, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if old history table 1 Exists - %s\n", buf, 0xCu);
        }
      }

      else if (v7)
      {
        *buf = 136315138;
        v14 = errmsg;
        goto LABEL_28;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if old history table 1 Exists - %s");
LABEL_23:
    objc_autoreleasePoolPop(v4);
    goto LABEL_24;
  }

  return selfCopy;
}

- (void)_dropOldHistoryTrackingTables
{
  if (self)
  {
    if ([(NSSQLiteConnection *)self _hasOldHistoryTrackingTablesV0])
    {
      [(NSSQLiteConnection *)self _executeSQLString:?];
      [(NSSQLiteConnection *)self _executeSQLString:?];
    }

    if ([(NSSQLiteConnection *)self _hasOldHistoryTrackingTablesV1])
    {
      [(NSSQLiteConnection *)self _executeSQLString:?];

      [(NSSQLiteConnection *)self _executeSQLString:?];
    }
  }
}

- (BOOL)hasHistoryTransactionWithNumber:(id *)number
{
  if (!number)
  {
    return 0;
  }

  v4 = [objc_msgSend(objc_msgSend(number[2] "ancillarySQLModels")];
  v5 = v4;
  if (v4)
  {
    v6 = [*(v4 + 40) objectForKey:@"_pk"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT COUNT(Z_PK) FROM %@ WHERE %@ = %@", objc_msgSend(v5, "tableName"), objc_msgSend(v6, "columnName"), a2];
  v8 = [[NSSQLiteStatement alloc] initWithEntity:v5 sqlString:v7];
  [(NSSQLiteConnection *)number prepareSQLStatement:v8];
  [number execute];
  newFetchedArray = [(NSSQLiteConnection *)number newFetchedArray];
  v10 = newFetchedArray;
  if (newFetchedArray)
  {
    v11 = [newFetchedArray objectAtIndex:0];
    if (v11 == NSKeyValueCoding_NullValue)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v10 objectAtIndex:0];
    }

    v13 = [v12 integerValue] > 0;
  }

  else
  {
    v13 = 0;
  }

  [(NSSQLiteConnection *)number endFetchAndRecycleStatement:?];

  return v13;
}

- (BOOL)addTombstoneColumnsForRange:(unint64_t)range
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    model = [self[2] model];
    [self[2] options];
    v17 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:model options:?];
    v7 = [v17 entityNamed:@"CHANGE"];
    v18 = v7 != 0;
    if (v7)
    {
      v8 = a2 >= range;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = v7;
      do
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD Z%@%lu BLOB;", objc_msgSend(v9, "tableName"), @"TOMBSTONE", a2];
        v11 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v10);
        if (+[NSMappingModel migrationDebugLevel]>= 1)
        {
          v12 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v20 = v11;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Executing new tombstone column statement: %@\n", buf, 0xCu);
              }
            }

            else
            {
              v14 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v20 = v11;
                _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Executing new tombstone column statement: %@\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v15 = 1;
          }

          else
          {
            v15 = 4;
          }

          _NSCoreDataLog_console(v15, "Executing new tombstone column statement: %@", v11);
          objc_autoreleasePoolPop(v12);
        }

        [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v11];

        ++a2;
      }

      while (range != a2);
    }
  }

  else
  {
    return 0;
  }

  return v18;
}

- (uint64_t)numberOfTombstones
{
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  if (self)
  {
    model = [*(self + 16) model];
    [*(selfCopy + 16) options];
    v3 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:model options:?];
    v4 = [v3 entityNamed:@"CHANGE"];
    if (!-[NSSQLiteConnection _hasTableWithName:isTemp:](selfCopy, [v4 tableName], 0))
    {
      selfCopy = 0;
LABEL_22:

      return selfCopy;
    }

    errmsg = 0;
    v5 = objc_opt_new();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v4 tableName]);
    if (!sqlite3_exec(*(selfCopy + 72), [v6 UTF8String], sqlite3Callback, v5, &errmsg) && objc_msgSend(v5, "count") == 1)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [objc_msgSend(v5 "firstObject")];
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        v11 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v10 += [*(*(&v18 + 1) + 8 * i) containsString:@"TOMBSTONE"];
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v25 count:16];
        }

        while (v9);
        selfCopy = v10;
        goto LABEL_21;
      }

LABEL_20:
      selfCopy = 0;
LABEL_21:

      goto LABEL_22;
    }

    v13 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v14 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v16 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v14)
      {
        if (v16)
        {
          *buf = 136315138;
          v24 = errmsg;
LABEL_25:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if tombstones for change table - %s\n", buf, 0xCu);
        }
      }

      else if (v16)
      {
        *buf = 136315138;
        v24 = errmsg;
        goto LABEL_25;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if tombstones for change table - %s", errmsg);
    objc_autoreleasePoolPop(v13);
    goto LABEL_20;
  }

  return selfCopy;
}

- (BOOL)hasTransactionStringColumnsInTransactionTable
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  model = [*(self + 16) model];
  [*(self + 16) options];
  v3 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:model options:?];
  v4 = [v3 entityNamed:@"TRANSACTION"];
  v5 = 0;
  if (-[NSSQLiteConnection _hasTableWithName:isTemp:](self, [v4 tableName], 0))
  {
    errmsg = 0;
    v6 = objc_opt_new();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v4 tableName]);
    if (!sqlite3_exec(*(self + 72), [v7 UTF8String], sqlite3Callback, v6, &errmsg) && objc_msgSend(v6, "count") == 1)
    {
      v28[0] = @"AUTHORTS";
      v28[1] = @"BUNDLEIDTS";
      v28[2] = @"CONTEXTNAMETS";
      v28[3] = @"PROCESSIDTS";
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = [objc_msgSend(v6 "firstObject")];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 += [v8 containsObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "stringByReplacingCharactersInRange:withString:", 0, 1, &stru_1EF3F1768)}];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v11);
        v5 = v12 == 4;
        goto LABEL_20;
      }

LABEL_19:
      v5 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v16 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v18)
        {
          *buf = 136315138;
          v26 = errmsg;
LABEL_24:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to determine if tombstones for change table - %s\n", buf, 0xCu);
        }
      }

      else if (v18)
      {
        *buf = 136315138;
        v26 = errmsg;
        goto LABEL_24;
      }
    }

    _NSCoreDataLog_console(1, "Unable to determine if tombstones for change table - %s", errmsg);
    objc_autoreleasePoolPop(v15);
    goto LABEL_19;
  }

LABEL_21:

  return v5;
}

- (BOOL)addTransactionStringColumnsToTransactionTable
{
  v20[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    model = [self[2] model];
    [self[2] options];
    v13 = [_PFPersistentHistoryModel newPersistentHistorySQLModelForSQLModel:model options:?];
    v3 = [v13 entityNamed:@"TRANSACTION"];
    v14 = v3 != 0;
    if (v3)
    {
      v4 = v3;
      v20[0] = @"AUTHORTS";
      v20[1] = @"BUNDLEIDTS";
      v20[2] = @"CONTEXTNAMETS";
      v20[3] = @"PROCESSIDTS";
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ALTER TABLE %@ ADD Z%@ INTEGER;", objc_msgSend(v4, "tableName"), *(*(&v15 + 1) + 8 * v9)];
            v11 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v10);
            [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v11];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    return 0;
  }

  return v14;
}

- (void)dropHistoryTrackingTables
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_msgSend(self[2] "ancillarySQLModels")];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (v3)
    {
      v4 = *(v3 + 32);
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = -[NSSQLiteAdapter newDropTableStatementForTableNamed:]([self adapter], objc_msgSend(v9, "tableName"));
          [(NSSQLiteConnection *)self prepareAndExecuteSQLStatement:v11];

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v2);
  }
}

- (id)hasAncillaryEntitiesInHistory
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_msgSend(result[2] "ancillarySQLModels")];
    v3 = v2;
    if (v2)
    {
      v4 = [*(v2 + 40) objectForKey:@"ENTITY"];
      v5 = [v3[5] objectForKey:@"TRANSACTIONID"];
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT MAX(%@) FROM %@ WHERE %@ >= 16000", objc_msgSend(v5, "columnName"), objc_msgSend(v3, "tableName"), objc_msgSend(v4, "columnName")];
    v7 = [[NSSQLiteStatement alloc] initWithEntity:v3 sqlString:v6];
    [(NSSQLiteConnection *)v1 prepareSQLStatement:v7];
    [v1 execute];
    newFetchedArray = [(NSSQLiteConnection *)v1 newFetchedArray];
    v9 = newFetchedArray;
    if (newFetchedArray)
    {
      if ([newFetchedArray count])
      {
        v10 = [v9 objectAtIndex:0];
        if (v10 == NSKeyValueCoding_NullValue)
        {
          v11 = 0;
        }

        else
        {
          v11 = [v9 objectAtIndex:0];
        }

        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    [(NSSQLiteConnection *)v1 endFetchAndRecycleStatement:?];

    return v12;
  }

  return result;
}

- (void)dropHistoryBeforeTransactionID:(id *)d
{
  if (d)
  {
    v4 = [objc_msgSend(objc_msgSend(d[2] "ancillarySQLModels")];
    v5 = [objc_msgSend(objc_msgSend(d[2] "ancillarySQLModels")];
    v6 = v5;
    if (v5)
    {
      v7 = [*(v5 + 40) objectForKey:@"TRANSACTIONID"];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE Z_PK <= %@", objc_msgSend(v4, "tableName"), a2];
    v9 = -[NSSQLiteAdapter newStatementWithSQLString:]([d adapter], v8);
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DELETE FROM %@ WHERE %@ <= %@", objc_msgSend(v6, "tableName"), objc_msgSend(v7, "columnName"), a2];
    v10 = -[NSSQLiteAdapter newStatementWithSQLString:]([d adapter], v11);
    [(NSSQLiteConnection *)d prepareAndExecuteSQLStatement:v9];
    [(NSSQLiteConnection *)d prepareAndExecuteSQLStatement:v10];
  }
}

- (void)processDeleteRequest:(sqlite3_int64)request
{
  v92 = *MEMORY[0x1E69E9840];
  if (request)
  {
    requestCopy = request;
    v3 = [objc_msgSend(objc_msgSend(*(request + 16) "ancillarySQLModels")];
    tempTableName = [(NSSQLEntity *)v3 tempTableName];
    if ([(NSSQLiteConnection *)requestCopy _hasTableWithName:tempTableName isTemp:1])
    {
      tempTableName2 = [(NSSQLEntity *)v3 tempTableName];
      if ([(NSSQLiteConnection *)requestCopy _tableHasRows:tempTableName2])
      {
        v65 = [(NSSQLiteConnection *)requestCopy _insertTransactionStringsForRequestContext:a2];
        v67 = [(NSSQLiteConnection *)requestCopy _insertTransactionForRequestContext:a2 andStrings:v65];
        v8 = *(requestCopy + 8);
        if (v8)
        {
          dispatch_assert_queue_V2(v8);
        }

        v66 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        v9 = [objc_msgSend(objc_msgSend(*(requestCopy + 16) "ancillarySQLModels")];
        tempTableName3 = [(NSSQLEntity *)v9 tempTableName];
        if ([(NSSQLiteConnection *)requestCopy _tableHasRows:tempTableName3])
        {
          if (v9)
          {
            v12 = [*(v9 + 40) objectForKey:@"ENTITY"];
          }

          else
          {
            v12 = 0;
          }

          v13 = *(requestCopy + 16);
          if (v13)
          {
            v14 = [*(v13 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
          }

          else
          {
            v14 = 0;
          }

          p_vtable = (NSSQLStoreRequestContext + 24);
          v71 = requestCopy;
          if ([v14 count])
          {
            v16 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithString:", @"(");
            v63 = v12;
            v64 = v9;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v17 = *(requestCopy + 16);
            if (v17)
            {
              obj = [*(v17 + 240) objectForKey:@"NSPersistentHistoryTrackingEntitiesToExclude"];
              v18 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
            }

            else
            {
              obj = 0;
              v18 = [0 countByEnumeratingWithState:&v84 objects:v91 count:16];
            }

            v19 = v18;
            if (v18)
            {
              v20 = 0;
              v21 = *v85;
              do
              {
                v22 = 0;
                do
                {
                  if (*v85 != v21)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v23 = *(*(&v84 + 1) + 8 * v22);
                  v24 = [objc_msgSend(*(requestCopy + 16) "model")];
                  if (!v24)
                  {
                    v82 = 0u;
                    v83 = 0u;
                    v80 = 0u;
                    v81 = 0u;
                    requestCopy = v71;
                    v26 = [objc_msgSend(*(v71 + 16) "ancillarySQLModels")];
                    v27 = [v26 countByEnumeratingWithState:&v80 objects:v90 count:16];
                    if (!v27)
                    {
                      goto LABEL_24;
                    }

                    v28 = *v81;
LABEL_28:
                    v29 = 0;
                    while (1)
                    {
                      if (*v81 != v28)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v24 = [*(*(&v80 + 1) + 8 * v29) entityNamed:v23];
                      if (v24)
                      {
                        break;
                      }

                      if (v27 == ++v29)
                      {
                        v27 = [v26 countByEnumeratingWithState:&v80 objects:v90 count:16];
                        if (v27)
                        {
                          goto LABEL_28;
                        }

                        goto LABEL_23;
                      }
                    }
                  }

                  v25 = *(v24 + 184);
                  if (v20)
                  {
                    [v16 appendFormat:@", "];
                  }

                  [v16 appendFormat:@"%lld", v25];
                  ++v20;
LABEL_23:
                  requestCopy = v71;
LABEL_24:
                  ++v22;
                }

                while (v22 != v19);
                v30 = [obj countByEnumeratingWithState:&v84 objects:v91 count:16];
                v19 = v30;
              }

              while (v30);
            }

            [v16 appendFormat:@""]);
            v9 = v64;
            p_vtable = NSSQLStoreRequestContext.vtable;
            v31 = objc_alloc(MEMORY[0x1E696AD60]);
            v33 = [v31 initWithFormat:@"DELETE FROM %@ WHERE %@ IN %@", -[NSSQLEntity tempTableName](v64, v32), objc_msgSend(v63, "columnName"), v16];
            v34 = [[NSSQLiteStatement alloc] initWithEntity:0 sqlString:v33];
            [(NSSQLiteConnection *)requestCopy prepareAndExecuteSQLStatement:v34];
          }

          v35 = objc_alloc(MEMORY[0x1E696AD60]);
          v37 = [v35 initWithFormat:@"UPDATE %@ SET Z%@ = %lld", -[NSSQLEntity tempTableName](v9, v36), @"TRANSACTIONID", v67];
          v38 = [objc_alloc((p_vtable + 72)) initWithEntity:0 sqlString:v37];
          [(NSSQLiteConnection *)requestCopy prepareAndExecuteSQLStatement:v38];

          tempTableName4 = [(NSSQLEntity *)v9 tempTableName];
          v41 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SELECT count(*) FROM "];
          [v41 appendString:tempTableName4];
          v42 = [(NSSQLiteConnection *)requestCopy copyRawIntegerRowsForSQL:v41];
          v43 = v42;
          if (v42)
          {
            if (CFArrayGetCount(v42) >= 1 && *CFArrayGetValueAtIndex(v43, 0))
            {
              v44 = *CFArrayGetValueAtIndex(v43, 1);
            }

            else
            {
              LODWORD(v44) = -1;
            }

            obja = v44;
            CFRelease(v43);
          }

          else
          {
            obja = -1;
          }

          v45 = objc_alloc(MEMORY[0x1E696AD60]);
          if (v9)
          {
            v46 = *(v9 + 136);
          }

          else
          {
            v46 = 0;
          }

          v47 = [v45 initWithFormat:@"%@", objc_msgSend(v46, "columnName")];
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          attributeColumns = [v9 attributeColumns];
          v49 = [attributeColumns countByEnumeratingWithState:&v76 objects:v89 count:16];
          if (v49)
          {
            v50 = *v77;
            do
            {
              for (i = 0; i != v49; ++i)
              {
                if (*v77 != v50)
                {
                  objc_enumerationMutation(attributeColumns);
                }

                [v47 appendFormat:@", %@", objc_msgSend(*(*(&v76 + 1) + 8 * i), "columnName")];
              }

              v49 = [attributeColumns countByEnumeratingWithState:&v76 objects:v89 count:16];
            }

            while (v49);
          }

          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          foreignKeyColumns = [v9 foreignKeyColumns];
          v53 = [foreignKeyColumns countByEnumeratingWithState:&v72 objects:v88 count:16];
          if (v53)
          {
            v54 = *v73;
            do
            {
              for (j = 0; j != v53; ++j)
              {
                if (*v73 != v54)
                {
                  objc_enumerationMutation(foreignKeyColumns);
                }

                [v47 appendFormat:@", %@", objc_msgSend(*(*(&v72 + 1) + 8 * j), "columnName")];
              }

              v53 = [foreignKeyColumns countByEnumeratingWithState:&v72 objects:v88 count:16];
            }

            while (v53);
          }

          v56 = objc_alloc(MEMORY[0x1E696AD60]);
          tableName = [v9 tableName];
          v59 = [v56 initWithFormat:@"INSERT INTO %@ (%@) SELECT %@ FROM %@", tableName, v47, v47, -[NSSQLEntity tempTableName](v9, v58)];
          v60 = [objc_alloc((p_vtable + 72)) initWithEntity:0 sqlString:v59];
          [(NSSQLiteConnection *)requestCopy prepareAndExecuteSQLStatement:v60];

          [(NSSQLiteConnection *)requestCopy generatePrimaryKeysForEntity:v9 batch:obja];
        }

        [v66 drain];
        v61 = 0;
        v62 = [MEMORY[0x1E696AD98] numberWithLongLong:v67];
        if (a2)
        {
          *(a2 + 72) = v62;
        }
      }
    }
  }
}

- (void)processMigrationRequestForHash:(uint64_t)hash stageLabel:
{
  if (self)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E696AEC0];
    if (hash)
    {
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], hash);
    }

    else
    {
      v8 = &stru_1EF3F1768;
    }

    v9 = objc_msgSend_stringWithFormat_(v7, a2, v8);
    v10 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    v11 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v12 = v11;
    if (v11)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = v11;
    }

    else
    {
      v14 = v10;
    }

    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    v16 = v15;
    if (v14)
    {
      [v15 setValue:v14 forKey:@"BUNDLEIDTS"];
    }

    if (v12)
    {
      [v16 setValue:v12 forKey:@"PROCESSIDTS"];
    }

    if (v9)
    {
      [v16 setValue:v9 forKey:@"AUTHORTS"];
    }

    v17 = [(NSSQLiteConnection *)self _transactionsStringAndPKsForStrings:v16];

    [(NSSQLiteConnection *)self _insertTransactionForRequestContext:v17 andStrings:?];

    objc_autoreleasePoolPop(v6);
  }
}

- (void)processExternalDataReferenceFilesDeletedByRequest:(uint64_t)request
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (request)
  {
    if (a2)
    {
      if (([(NSSQLiteConnection *)request _hasTableWithName:1 isTemp:?]& 1) == 0 || ![(NSSQLiteConnection *)request _tableHasRows:?])
      {
        return;
      }

      v4 = a2[16];
    }

    else
    {
      if (([(NSSQLiteConnection *)request _hasTableWithName:1 isTemp:?]& 1) == 0)
      {
        return;
      }

      v9 = [(NSSQLiteConnection *)request _tableHasRows:?];
      v4 = 0;
      if (!v9)
      {
        return;
      }
    }

    -[NSSQLiteConnection prepareSQLStatement:](request, [objc_msgSend(v4 objectAtIndexedSubscript:{2), "objectAtIndexedSubscript:", 0}]);
    [request execute];
    v5 = [[NSSQLColumn alloc] initWithColumnName:@"externalRef" sqlType:16];
    v28[0] = v5;
    -[NSSQLiteConnection setColumnsToFetch:](request, [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1]);

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (1)
    {
      newFetchedArray = [(NSSQLiteConnection *)request newFetchedArray];
      v8 = newFetchedArray;
      if (!newFetchedArray)
      {
        break;
      }

      [v6 addObject:{objc_msgSend(newFetchedArray, "objectAtIndexedSubscript:", 0)}];
    }

    [(NSSQLiteConnection *)request setColumnsToFetch:?];
    *(request + 312) &= ~2u;
    *(request + 100) = 0;
    *(request + 92) = 0;
    *(request + 108) = 0;
    [(NSSQLiteConnection *)request releaseSQLStatement];
    if (v6)
    {
      if ([v6 count])
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v6);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              objc_opt_self();
              isKindOfClass = objc_opt_isKindOfClass();
              v17 = v11;
              if (isKindOfClass)
              {
                uUID = [v15 UUID];
                v17 = v10;
                if (!uUID)
                {
                  continue;
                }
              }

              [v17 addObject:v15];
            }

            v12 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v12);
        }

        v19 = [v10 count];
        if (a2 && v19)
        {
          objc_setProperty_nonatomic(a2, v20, v10, 136);
        }

        v21 = [v11 count];
        if (a2)
        {
          if (v21)
          {
            objc_setProperty_nonatomic(a2, v22, v11, 144);
          }
        }
      }
    }
  }
}

- (uint64_t)_transactionsStringAndPKsForStrings:(sqlite3_int64)strings
{
  v52 = *MEMORY[0x1E69E9840];
  if (![a2 count])
  {
    return 0;
  }

  v37 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = a2;
  obj = [a2 allKeys];
  v40 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v40)
  {
    v38 = *v43;
    v34 = *MEMORY[0x1E695D930];
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v42 + 1) + 8 * v4);
        v5 = [v39 objectForKey:?];
        v6 = [*(strings + 336) objectForKey:v5];
        if (v6)
        {
          [v37 setValue:v6 forKey:v41];
        }

        else
        {
          v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          v7 = [objc_msgSend(objc_msgSend(*(strings + 16) "ancillarySQLModels")];
          v8 = [(NSSQLiteConnection *)strings generatePrimaryKeysForEntity:v7 batch:1u];
          if (!v8)
          {
            v30 = [_NSCoreDataException exceptionWithName:v34 code:134030 reason:@"unable to generate primary keys for transaction" userInfo:0];
            objc_exception_throw(v30);
          }

          [(NSSQLiteConnection *)strings prepareInsertStatementForAncillaryEntity:v7];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          bindVariables = [*(strings + 48) bindVariables];
          v10 = [bindVariables countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v10)
          {
            v11 = *v47;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v47 != v11)
                {
                  objc_enumerationMutation(bindVariables);
                }

                v13 = *(*(&v46 + 1) + 8 * i);
                index = [v13 index];
                if (index)
                {
                  if (index == 3)
                  {
                    [v13 setValue:v5];
                  }
                }

                else
                {
                  [v13 setInt64:v8];
                }
              }

              v10 = [bindVariables countByEnumeratingWithState:&v46 objects:v51 count:16];
            }

            while (v10);
          }

          [strings execute];
          v15 = *(strings + 72);
          if (v15 && sqlite3_changes(v15) >= 1)
          {
            v16 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_last_insert_rowid(*(strings + 72))), "copy"}];
          }

          else
          {
            v16 = 0;
          }

          if (!*(strings + 80))
          {
            v17 = [(NSSQLiteConnection *)strings statementCacheForEntity:v7];
            [(NSSQLiteStatementCache *)v17 cacheInsertStatement:?];
          }

          [(NSSQLiteConnection *)strings _clearBindVariablesForInsertedRow];
          [(NSSQLiteConnection *)strings resetSQLStatement];
          [v36 drain];
          v18 = 0;
          if (v16)
          {
            goto LABEL_40;
          }

          v19 = [objc_msgSend(objc_msgSend(*(strings + 16) "ancillarySQLModels")];
          v20 = v19;
          v21 = v19 ? [*(v19 + 40) objectForKey:@"NAME"] : 0;
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT Z_PK FROM %@ WHERE %@ = ?", objc_msgSend(v20, "tableName"), objc_msgSend(v21, "columnName")];
          v23 = [[NSSQLiteStatement alloc] initWithEntity:v20 sqlString:v22];
          v24 = -[NSSQLBindVariable initWithValue:sqlType:propertyDescription:]([NSSQLBindVariable alloc], "initWithValue:sqlType:propertyDescription:", v5, 5, [v21 attributeDescription]);
          [(NSSQLiteStatement *)v23 addBindVariable:v24];

          [(NSSQLiteConnection *)strings prepareSQLStatement:v23];
          [strings execute];
          newFetchedArray = [(NSSQLiteConnection *)strings newFetchedArray];
          v26 = newFetchedArray;
          if (newFetchedArray)
          {
            if ([newFetchedArray count])
            {
              v27 = [v26 objectAtIndex:0];
              v28 = v27 == NSKeyValueCoding_NullValue ? 0 : [v26 objectAtIndex:0];
              v29 = v28;
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
          }

          [(NSSQLiteConnection *)strings endFetchAndRecycleStatement:?];

          v16 = [v29 copy];
          if (v16)
          {
LABEL_40:
            [*(strings + 336) setValue:v16 forKey:v5];
            [v37 setValue:v16 forKey:v41];
          }
        }

        ++v4;
      }

      while (v4 != v40);
      v31 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      v40 = v31;
    }

    while (v31);
  }

  v32 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v37];

  return v32;
}

- (void)prepareInsertStatementForEntity:(uint64_t)entity includeConstraints:(void *)constraints includeOnConflict:(int)conflict onConflictKeys:(void *)keys
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = [(NSSQLiteConnection *)entity statementCacheForEntity:constraints];
  v9 = v8;
  if (v8)
  {
    batchInsertStatementCache = v8->_batchInsertStatementCache;
    if (batchInsertStatementCache)
    {
      cachedSQLiteStatement = batchInsertStatementCache->_cachedSQLiteStatement;
      if (cachedSQLiteStatement)
      {
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v12 = *(entity + 42);
          v13 = objc_autoreleasePoolPush();
          _pflogInitialize(6);
          IsLogEnabled = _NSCoreDataIsLogEnabled(6);
          v15 = _pflogging_enable_oslog > 0 && IsLogEnabled;
          if (v12 == 1)
          {
            if (v15)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }

              else
              {
                v23 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_INFO, "CoreData: sql: \x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m\n", buf, 0xCu);
                }
              }
            }

            v24 = "\x1B[32msql: \x1B[34m\x1B[47m%@\x1B[0m";
          }

          else
          {
            if (v15)
            {
              if (_pflogging_catastrophic_mode)
              {
                v22 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
                }
              }

              else
              {
                v25 = _PFLogGetLogStream(6);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  sqlString = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
                  _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: sql: %@\n", buf, 0xCu);
                }
              }
            }

            v24 = "%@";
          }

          v26 = _pflogging_catastrophic_mode;
          sqlString2 = [(NSSQLiteStatement *)batchInsertStatementCache sqlString];
          v28 = 6;
          if (v26)
          {
            v28 = 1;
          }

          _NSCoreDataLog_console(v28, v24, sqlString2);
          objc_autoreleasePoolPop(v13);
        }

        *(entity + 48) = batchInsertStatementCache;
        *(entity + 80) = cachedSQLiteStatement;
        v29 = batchInsertStatementCache;
        return;
      }
    }
  }

  v17 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(entity "adapter")];
  v30 = [+[NSSQLRow allocForSQLEntity:](NSSQLRow constraints)];
  v18 = -[NSSQLiteAdapter newStatementWithEntity:]([entity adapter], constraints);
  v19 = -[NSSQLiteAdapter newGeneratorWithStatement:]([entity adapter], v18);
  [(_NSSQLGenerator *)v19 prepareInsertStatementWithRow:v30 includeConstraints:1 includeOnConflict:conflict onConflictKeys:keys];
  if (v19)
  {
    v20 = v19[3];
    if (v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
    if (v18)
    {
LABEL_15:
      sqlString = v18->_sqlString;
      if (sqlString != v20)
      {

        v18->_sqlString = [(NSString *)v20 copy];
      }
    }
  }

  [(NSSQLiteConnection *)entity prepareSQLStatement:v18];
  [(NSSQLiteStatement *)*(entity + 48) setCachedSQLiteStatement:entity forConnection:?];
  if ((conflict & 1) == 0)
  {
    [(NSSQLiteStatementCache *)v9 cacheBatchInsertStatement:?];
  }

  [(NSSQLiteConnection *)entity addVMCachedStatement:?];
}

- (uint64_t)insertArray:(uint64_t)array forEntity:(char)entity includeOnConflict:
{
  if (!self)
  {
    return 0;
  }

  v8 = *(self + 8);
  if (v8)
  {
    dispatch_assert_queue_V2(v8);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke;
  v11[3] = &unk_1E6EC4060;
  v11[5] = array;
  v11[6] = &v13;
  v11[4] = self;
  entityCopy = entity;
  [a2 enumerateObjectsUsingBlock:v11];
  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v4 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke_2;
  v2[3] = &unk_1E6EC4038;
  v2[4] = a2;
  v2[5] = v3;
  *(*(*(a1 + 48) + 8) + 24) += [(NSSQLiteConnection *)*(a1 + 32) insertDictionaryBlock:v2 forEntity:*(a1 + 40) includeOnConflict:*(a1 + 56)];
  _Block_object_dispose(v3, 8);
}

uint64_t __62__NSSQLiteConnection_insertArray_forEntity_includeOnConflict___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if ((v2 & 1) == 0)
  {
    [a2 addEntriesFromDictionary:*(a1 + 32)];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v2;
}

- (uint64_t)insertDictionaryBlock:(id *)block forEntity:(int)entity includeOnConflict:
{
  v67 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = *(self + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  v40 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  obj = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v48, "count")}];
  v5 = 0;
  v42 = 0;
  while (1)
  {
    v43 = v5;
    if (v5)
    {
      break;
    }

    v47 = objc_autoreleasePoolPush();
    [v48 removeAllObjects];
    [obj removeAllObjects];
    v46 = (*(a2 + 16))(a2, v48);
    if ((v46 & 1) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v48];
      while ([v6 count])
      {
        context = objc_autoreleasePoolPush();
        v7 = [_PFRoutines anyObjectFromCollection:v6];
        v8 = [v6 objectForKey:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
          if (v9)
          {
            v10 = *v61;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v61 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v60 + 1) + 8 * i);
                v13 = objc_autoreleasePoolPush();
                v14 = [v8 objectForKey:v12];
                [v6 setObject:v14 forKey:{objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, v12)}];
                objc_autoreleasePoolPop(v13);
              }

              v9 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
            }

            while (v9);
          }
        }

        else
        {
          [obj setObject:v8 forKey:v7];
        }

        [v6 removeObjectForKey:v7];
        objc_autoreleasePoolPop(context);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v15 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v15)
      {
        v16 = *v57;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v57 != v16)
            {
              objc_enumerationMutation(obj);
            }

            if (dword_1ED4BEEC8 == 1)
            {
              v18 = *(*(&v56 + 1) + 8 * j);
              if (!block || ![block[5] objectForKey:*(*(&v56 + 1) + 8 * j)])
              {
                v32 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{objc_msgSend(block, "name"), @"NSValidationErrorObject", v18, @"NSValidationErrorKey", 0}];
                v33 = [_NSCoreDataException exceptionWithName:1605 code:@"property not found for entity" reason:v32 userInfo:?];
                objc_exception_throw(v33);
              }
            }
          }

          v15 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v15);
      }

      v19 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](self, [block rootEntity], 1u);
      if (!v19)
      {
        v37 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for batch insert" reason:0 userInfo:?];
        objc_exception_throw(v37);
      }

      -[NSSQLiteConnection prepareInsertStatementForEntity:includeConstraints:includeOnConflict:onConflictKeys:](self, block, entity, [obj allKeys]);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      bindVariables = [*(self + 48) bindVariables];
      v21 = [bindVariables countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v21)
      {
        v22 = *v53;
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v53 != v22)
            {
              objc_enumerationMutation(bindVariables);
            }

            v24 = *(*(&v52 + 1) + 8 * k);
            if ([v24 index])
            {
              if ([v24 index] == 2)
              {
                [v24 setUnsignedInt:1];
              }

              else
              {
                propertyDescription = [v24 propertyDescription];
                v26 = propertyDescription;
                if (propertyDescription)
                {
                  v27 = [obj objectForKey:{objc_msgSend(propertyDescription, "_qualifiedName")}];
                  if (!v27 || (v28 = objc_opt_class(), v28 == objc_opt_class()))
                  {
                    if ([v26 defaultValue])
                    {
                      if ([v26 _propertyType] == 7)
                      {
                        _buildDefaultValue = [v26 _buildDefaultValue];
                      }

                      else
                      {
                        _buildDefaultValue = [v26 defaultValue];
                      }

                      v30 = _buildDefaultValue;
                    }

                    else
                    {
                      if (([v26 isOptional] & 1) == 0)
                      {
                        v34 = MEMORY[0x1E695DF90];
                        entityDescription = [block entityDescription];
                        name = [v26 name];
                        -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1570, @"mandatory property not set", v26, v27, [v34 dictionaryWithObjectsAndKeys:{entityDescription, @"NSValidationErrorObject", name, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSValidationErrorValue", 0}]);
                      }

                      v30 = 0;
                    }

                    [v24 setValue:v30];
                  }

                  else
                  {
                    [NSSQLiteConnection _validateProperty:v26 withValue:v27];
                    [v24 setValue:v27];
                  }
                }
              }
            }

            else
            {
              [v24 setInt64:v19];
            }
          }

          v21 = [bindVariables countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v21);
      }

      [self execute];
      v42 += sqlite3_changes(*(self + 72));
      if (!*(self + 80))
      {
        v31 = [(NSSQLiteConnection *)self statementCacheForEntity:block];
        [(NSSQLiteStatementCache *)v31 cacheBatchInsertStatement:?];
      }

      [(NSSQLiteConnection *)self _clearBindVariablesForInsertedRow];
      [(NSSQLiteConnection *)self resetSQLStatement];
    }

    objc_autoreleasePoolPop(v47);
    v5 = v46;
  }

  [v40 drain];
  v38 = 0;
  if ((v43 & 1) == 0)
  {
    objc_exception_rethrow();
  }

  return v42;
}

- (void)_batchInsertThrowWithErrorCode:(int)code andMessage:(void *)message forKey:(void *)key andValue:(void *)value additionalDetail:(uint64_t)detail
{
  v10 = MEMORY[0x1E695DF90];
  entity = [key entity];
  name = [key name];
  if (!value)
  {
    value = [MEMORY[0x1E695DFB0] null];
  }

  v13 = [v10 dictionaryWithObjectsAndKeys:{entity, @"NSValidationErrorObject", name, @"NSValidationErrorKey", value, @"NSValidationErrorValue", 0}];
  if ([message length])
  {
    [v13 setValue:message forKey:@"reason"];
  }

  v14 = [objc_msgSend(MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:code userInfo:{0), "localizedDescription"}];
  v15 = [objc_msgSend(objc_msgSend(key "entity")];
  v16 = [v15 localizedEntityNameForEntity:{objc_msgSend(key, "entity")}];
  v17 = [v15 localizedPropertyNameForProperty:key];
  if (v16 | v17)
  {
    v18 = v17;
    v19 = [v14 mutableCopyWithZone:0];
    v20 = v19;
    if (v16)
    {
      [v19 replaceOccurrencesOfString:@"%{ENTITY}@" withString:v16 options:2 range:{0, objc_msgSend(v19, "length")}];
    }

    if (v18)
    {
      [v20 replaceOccurrencesOfString:@"%{PROPERTY}@" withString:v18 options:2 range:{0, objc_msgSend(v20, "length")}];
    }

    v21 = v20;
    [v13 setObject:v20 forKey:*MEMORY[0x1E696A578]];
  }

  [v13 addEntriesFromDictionary:detail];
  v22 = [_NSCoreDataException exceptionWithName:code code:message reason:v13 userInfo:?];
  objc_exception_throw(v22);
}

- (uint64_t)_validateProperty:(void *)property withValue:(void *)value
{
  valueCopy = value;
  if ([property _propertyType] != 2)
  {
    _propertyType = [property _propertyType];
    v27 = MEMORY[0x1E696AEC0];
    if (_propertyType != 6)
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = objc_msgSend_stringWithFormat_(v27, v33);
      [NSSQLiteConnection _batchInsertThrowWithErrorCode:v34 andMessage:property forKey:value andValue:0 additionalDetail:?];
    }

    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [property name], objc_msgSend(objc_msgSend(property, "entity"), "name"), value);
LABEL_60:
    -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1550, v7, property, value, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(property, "name"), @"key", value, @"value", 0}]);
  }

  attributeType = [property attributeType];
  if (attributeType > 599)
  {
    if (attributeType <= 799)
    {
      if (attributeType != 600)
      {
        if (attributeType == 700 && ([value isNSString] & 1) != 0)
        {
          goto LABEL_34;
        }

        goto LABEL_22;
      }
    }

    else if (attributeType != 800)
    {
      if (attributeType == 900)
      {
        if ([value isNSDate])
        {
          goto LABEL_34;
        }
      }

      else if (attributeType == 1000)
      {
        if ([property isFileBackedFuture])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_34;
          }
        }

        else if ([value isNSData])
        {
          goto LABEL_34;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (attributeType > 299)
  {
    if (attributeType != 300 && attributeType != 500)
    {
      goto LABEL_22;
    }

LABEL_21:
    if ([value isNSNumber])
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  if (attributeType == 100 || attributeType == 200)
  {
    goto LABEL_21;
  }

LABEL_22:
  if ([property isFileBackedFuture])
  {
    v30 = MEMORY[0x1E696AEC0];
    name = [property name];
    v37 = objc_opt_class();
    valueCopy3 = value;
    v36 = @"A class implementing the NSFileBackedFuture protocol";
LABEL_59:
    v7 = objc_msgSend_stringWithFormat_(v30, name, v36, v37, valueCopy3);
    goto LABEL_60;
  }

  _attributeValueClass = [property _attributeValueClass];
  if (_attributeValueClass)
  {
    v6 = _attributeValueClass;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_34;
    }

    if ([value isNSNumber] && objc_msgSend(v6, "isSubclassOfClass:", objc_opt_class()))
    {
      valueCopy = [MEMORY[0x1E696AB90] decimalNumberWithString:{objc_msgSend(value, "stringValue")}];
      goto LABEL_34;
    }

    v30 = MEMORY[0x1E696AEC0];
    name = [property name];
    attributeValueClassName = [property attributeValueClassName];
    v37 = objc_opt_class();
    valueCopy3 = value;
    v36 = attributeValueClassName;
    goto LABEL_59;
  }

  if (([property isTransient] & 1) == 0 && objc_msgSend(property, "attributeType") != 1800)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [property name], objc_msgSend(property, "entity"), value);
    goto LABEL_60;
  }

LABEL_34:
  v39 = 0;
  if (([property _nonPredicateValidateValue:&valueCopy forKey:objc_msgSend(property inObject:"name") error:{0, &v39}] & 1) == 0)
  {
    code = [v39 code];
    localizedDescription = [v39 localizedDescription];
    -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](code, localizedDescription, property, valueCopy, [v39 userInfo]);
  }

  _rawValidationPredicates = [property _rawValidationPredicates];
  _rawValidationWarnings = [property _rawValidationWarnings];
  result = [_rawValidationPredicates count];
  if (result)
  {
    v11 = result;
    for (i = 0; v11 != i; ++i)
    {
      v13 = [_rawValidationPredicates objectAtIndex:i];
      result = [v13 evaluateWithObject:valueCopy];
      if ((result & 1) == 0)
      {
        v14 = [_rawValidationWarnings objectAtIndex:i];
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(_rawValidationPredicates, "objectAtIndex:", i), @"NSValidationErrorPredicate", 0}];
        if (!v14)
        {
          v16 = valueCopy;
          intValue = 1550;
          goto LABEL_46;
        }

        if ([v14 isNSString])
        {
          v19 = [objc_msgSend(objc_msgSend(objc_msgSend(property "entity")];
          if (v19)
          {
            v18 = v19;
          }

          else
          {
            v18 = v14;
          }

          v16 = valueCopy;
          intValue = 1550;
          goto LABEL_51;
        }

        if ([v14 isNSNumber])
        {
          intValue = [v14 intValue];
          v16 = valueCopy;
LABEL_46:
          v18 = 0;
LABEL_51:
          [NSSQLiteConnection _batchInsertThrowWithErrorCode:intValue andMessage:v18 forKey:property andValue:v16 additionalDetail:v15];
        }

        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if ((result & 1) == 0)
        {
          intValue2 = [v14 intValue];
          v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [property name], i, v14);
          v22 = valueCopy;
          v23 = MEMORY[0x1E695DF20];
          name2 = [property name];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:i];
          -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](intValue2, v21, property, v22, [v23 dictionaryWithObjectsAndKeys:{name2, @"NSValidationErrorKey", v25, @"index", v14, @"warning", valueCopy, @"NSValidationErrorValue", 0}]);
        }
      }
    }
  }

  return result;
}

- (uint64_t)insertManagedObjectBlock:(void *)block forEntity:(int)entity includeOnConflict:
{
  v43 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v5 = *(self + 8);
  if (v5)
  {
    dispatch_assert_queue_V2(v5);
  }

  v29 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v33 = 0;
  blockCopy = block;
  while (1)
  {
    v6 = -[NSManagedObject initWithEntity:insertIntoManagedObjectContext:]([NSManagedObject alloc], "initWithEntity:insertIntoManagedObjectContext:", [block entityDescription], 0);
    v35 = v6;
    v7 = v6 ? [(NSManagedObject *)v6 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?]: 0;
    [(NSManagedObject *)v35 _setOriginalSnapshot__:v7];

    if ((*(a2 + 16))(a2, v35))
    {
      break;
    }

    v36 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](self, [block rootEntity], 1u);
    if (!v36)
    {
      v26 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys for batch insert" reason:0 userInfo:?];
      objc_exception_throw(v26);
    }

    [NSSQLiteConnection prepareInsertStatementForEntity:self includeConstraints:block includeOnConflict:entity onConflictKeys:[(NSDictionary *)[(NSManagedObject *)v35 changedValues] allKeys]];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    bindVariables = [*(self + 48) bindVariables];
    v9 = [bindVariables countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v9)
    {
      v10 = *v39;
      obj = bindVariables;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          if ([v12 index])
          {
            if ([v12 index] == 2)
            {
              [v12 setUnsignedInt:1];
            }

            else
            {
              propertyDescription = [v12 propertyDescription];
              v14 = propertyDescription;
              if (propertyDescription)
              {
                v15 = [objc_msgSend(objc_msgSend(propertyDescription "_qualifiedName")];
                [v15 firstObject];
                v16 = objc_msgSend_valueForKey_(v35);
                [v15 removeObjectAtIndex:0];
                for (j = 0; j < [v15 count]; ++j)
                {
                  v18 = [v15 objectAtIndex:j];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = [v16 objectForKey:v18];
                  }
                }

                if (!v16 || (v19 = objc_opt_class(), v19 == objc_opt_class()))
                {
                  if ([v14 defaultValue])
                  {
                    if ([v14 _propertyType] == 7)
                    {
                      _buildDefaultValue = [v14 _buildDefaultValue];
                    }

                    else
                    {
                      _buildDefaultValue = [v14 defaultValue];
                    }

                    v21 = _buildDefaultValue;
                  }

                  else
                  {
                    if (([v14 isOptional] & 1) == 0)
                    {
                      v23 = MEMORY[0x1E695DF90];
                      entityDescription = [blockCopy entityDescription];
                      name = [v14 name];
                      -[NSSQLiteConnection _batchInsertThrowWithErrorCode:andMessage:forKey:andValue:additionalDetail:](1570, @"mandatory property not set", v14, v16, [v23 dictionaryWithObjectsAndKeys:{entityDescription, @"NSValidationErrorObject", name, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSValidationErrorValue", 0}]);
                    }

                    v21 = 0;
                  }

                  [v12 setValue:v21];
                }

                else
                {
                  [NSSQLiteConnection _validateProperty:v14 withValue:v16];
                  [v12 setValue:v16];
                }
              }
            }
          }

          else
          {
            [v12 setInt64:v36];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v9);
    }

    [self execute];
    block = blockCopy;
    v33 += sqlite3_changes(*(self + 72));
    if (!*(self + 80))
    {
      v22 = [(NSSQLiteConnection *)self statementCacheForEntity:blockCopy];
      [(NSSQLiteStatementCache *)v22 cacheBatchInsertStatement:?];
    }

    [(NSSQLiteConnection *)self _clearBindVariablesForInsertedRow];
    [(NSSQLiteConnection *)self resetSQLStatement];
  }

  [v29 drain];
  v27 = 0;
  return v33;
}

- (id)gatherObjectIDsFromTable:(void *)table
{
  tableCopy = table;
  v8[2] = *MEMORY[0x1E69E9840];
  if (table)
  {
    if ([(NSSQLiteConnection *)table _tableHasRows:a2])
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2);
      v5 = [[NSSQLColumn alloc] initWithColumnName:@"ENTITYID" sqlType:2];
      v6 = [[NSSQLColumn alloc] initWithColumnName:@"PRIMEKEY" sqlType:2];
      v8[0] = v5;
      v8[1] = v6;
      tableCopy = -[NSSQLiteConnection createArrayOfObjectIDsMatchingSelectStatement:forColumns:primaryKeyIndex:entityIDIndex:](tableCopy, v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2], 1, 0);
    }

    else
    {
      return NSArray_EmptyArray;
    }
  }

  return tableCopy;
}

- (id)createArrayOfObjectIDsMatchingSelectStatement:(void *)statement forColumns:(uint64_t)columns primaryKeyIndex:(uint64_t)index entityIDIndex:
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], a2);
  [(NSSQLiteConnection *)self prepareSQLStatement:v9];
  [(NSSQLiteConnection *)self setColumnsToFetch:statement];
  [self execute];
  v22 = v9;
  while (1)
  {
    newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
    v11 = newFetchedArray;
    if (!newFetchedArray)
    {
      break;
    }

    if ([newFetchedArray count] == 2)
    {
      v12 = [v11 objectAtIndex:columns];
      v13 = [v11 objectAtIndex:index];
      if ([v13 unsignedLongValue] >> 7 < 0x7D)
      {
        v18 = [objc_msgSend(*(self + 16) "model")];
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [objc_msgSend(*(self + 16) "ancillarySQLModels")];
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          v16 = *v25;
LABEL_7:
          v17 = 0;
          while (1)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [*(*(&v24 + 1) + 8 * v17) entityForID:{objc_msgSend(v13, "unsignedLongValue")}];
            if (v18)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
              v18 = 0;
              if (v15)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      v9 = v22;
      v19 = [*(self + 16) newObjectIDForEntity:v18 pk:{objc_msgSend(v12, "unsignedLongLongValue")}];
      [v23 addObject:v19];
    }
  }

  [(NSSQLiteConnection *)self releaseSQLStatement];
  [(NSSQLiteConnection *)self setColumnsToFetch:?];
  *(self + 312) &= ~2u;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 108) = 0;

  return v23;
}

- (uint64_t)_int64ResultForSQL:(uint64_t)l
{
  v2 = [(NSSQLiteConnection *)l copyRawIntegerRowsForSQL:a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFArrayGetCount(v2) && *CFArrayGetValueAtIndex(v3, 0))
  {
    v4 = *CFArrayGetValueAtIndex(v3, 1);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

- (uint64_t)percentageUsedByPersistentHistory
{
  v38 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result _int64ResultForSQL:?];
    v3 = [(NSSQLiteConnection *)v1 _int64ResultForSQL:?];
    v4 = v2 - v3;
    if (v2 - v3 < 1)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v33 = v2;
        v34 = 2048;
        v35 = v3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Percentage History calculation error. Total Pages - %lld  Free Pages - %lld\n", buf, 0x16u);
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v33 = v2;
        v34 = 2048;
        v35 = v3;
        _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Percentage History calculation error. Total Pages - %lld  Free Pages - %lld", buf, 0x16u);
      }

      return 0;
    }

    else
    {
      v5 = [objc_msgSend(*(v1 + 16) "ancillarySQLModels")];
      if (v5)
      {
        v5 = v5[4];
      }

      v6 = objc_msgSend_valueForKey_(v5);
      v7 = [v6 count];
      v8 = 0x1E696A000uLL;
      if (v7)
      {
        v25 = v2 - v3;
        v26 = v3;
        v27 = v2;
        v9 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = [v6 countByEnumeratingWithState:&v28 objects:buf count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          v13 = 1;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v6);
              }

              v15 = *(*(&v28 + 1) + 8 * i);
              if ((v13 & 1) == 0)
              {
                [v9 appendString:{@", "}];
              }

              [v9 appendFormat:@"'%@'", v15];
              v13 = 0;
            }

            v11 = [v6 countByEnumeratingWithState:&v28 objects:buf count:16];
            v13 = 0;
          }

          while (v11);
        }

        [v9 appendString:@""]);
        v3 = v26;
        v2 = v27;
        v4 = v25;
        v8 = 0x1E696A000;
      }

      else
      {
        v9 = 0;
      }

      v18 = [objc_alloc(*(v8 + 3424)) initWithFormat:@"SELECT sum(pageno) FROM dbstat d, sqlite_master m WHERE d.name = m.name AND d.aggregate = TRUE"];
      v19 = v18;
      if (v9)
      {
        [v18 appendFormat:@" AND m.tbl_name IN %@", v9];
      }

      v20 = [(NSSQLiteConnection *)v1 _int64ResultForSQL:v19];

      v21 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v22 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v33 = v2;
            v34 = 2048;
            v35 = v3;
            v36 = 2048;
            v37 = v20;
            _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld\n", buf, 0x20u);
          }
        }

        else
        {
          v23 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            v33 = v2;
            v34 = 2048;
            v35 = v3;
            v36 = 2048;
            v37 = v20;
            _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld\n", buf, 0x20u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v24 = 1;
      }

      else
      {
        v24 = 4;
      }

      _NSCoreDataLog_console(v24, "Percentage History: total pages - %lld, free pages - %lld, historyPages - %lld", v2, v3, v20);
      objc_autoreleasePoolPop(v21);
      return 100 * v20 / v4;
    }
  }

  return result;
}

- (BOOL)registerMigrationUpdateFunctionWithMigrator:(uint64_t)migrator
{
  if (migrator)
  {
    v4 = *(migrator + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if (NSSQLiteRegisterMigrationFunctions(*(migrator + 72), pApp))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An internal error occurred while configuring migration functions in the SQLite database." userInfo:0]);
    }
  }

  return migrator != 0;
}

- (void)executeAttributeUniquenessCheckSQLStatement:(void *)statement returningColumns:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  [(NSSQLiteConnection *)self prepareSQLStatement:a2];
  [self execute];
  array2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [statement countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(statement);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v11 && *(v11 + 24) == 7)
        {
          [array2 addObject:*(*(&v14 + 1) + 8 * i)];
          if (*(v11 + 72))
          {
            [array2 addObject:?];
          }
        }

        else
        {
          [array2 addObject:*(*(&v14 + 1) + 8 * i)];
        }
      }

      v8 = [statement countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSSQLiteConnection *)self setColumnsToFetch:array2];
  while (1)
  {
    newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
    if (!newFetchedArray)
    {
      break;
    }

    [array addObject:newFetchedArray];
  }

  [(NSSQLiteConnection *)self setColumnsToFetch:?];
  *(self + 312) &= ~2u;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 108) = 0;
  [(NSSQLiteConnection *)self _finalizeStatement];
  [(NSSQLiteConnection *)self resetSQLStatement];
  return array;
}

- (void)executeMulticolumnUniquenessCheckSQLStatement:(void *)statement returningColumns:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  [(NSSQLiteConnection *)self prepareSQLStatement:a2];
  [self execute];
  array2 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [statement countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(statement);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (v11 && *(v11 + 24) == 7)
        {
          [array2 addObject:*(*(&v14 + 1) + 8 * i)];
          if (*(v11 + 72))
          {
            [array2 addObject:?];
          }
        }

        else
        {
          [array2 addObject:*(*(&v14 + 1) + 8 * i)];
        }
      }

      v8 = [statement countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(NSSQLiteConnection *)self setColumnsToFetch:array2];
  while (1)
  {
    newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
    if (!newFetchedArray)
    {
      break;
    }

    [array addObject:newFetchedArray];
  }

  [(NSSQLiteConnection *)self setColumnsToFetch:?];
  *(self + 312) &= ~2u;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 108) = 0;
  [(NSSQLiteConnection *)self _finalizeStatement];
  [(NSSQLiteConnection *)self resetSQLStatement];
  return array;
}

- (uint64_t)_adoptQueryGenerationWithSnapshot:(uint64_t)snapshot
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(snapshot + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if (a2)
  {
    if (!*(snapshot + 72))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
    }

    bytes = [a2 bytes];
    if (bytes)
    {
      v6 = bytes;
      if (+[NSSQLCore debugDefault]>= 1)
      {
        v7 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218754;
              snapshotCopy2 = snapshot;
              v24 = 2112;
              v25 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
              v26 = 2112;
              v27 = a2;
              v28 = 2048;
              v29 = v6;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
            }
          }

          else
          {
            v11 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              snapshotCopy2 = snapshot;
              v24 = 2112;
              v25 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
              v26 = 2112;
              v27 = a2;
              v28 = 2048;
              v29 = v6;
              _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p\n", buf, 0x2Au);
            }
          }
        }

        v12 = _pflogging_catastrophic_mode;
        v13 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:48];
        v14 = 4;
        if (v12)
        {
          v14 = 1;
        }

        _NSCoreDataLog_console(v14, "connection %p adopting snapshot:\n\tss value: %@\n\tpointer value:%@\n\tpointer: %p", snapshot, v13, a2, v6);
        objc_autoreleasePoolPop(v7);
      }

      while (1)
      {
        if (*(snapshot + 16))
        {
          os_unfair_lock_lock_with_options();
        }

        a2 = sqlite3_snapshot_open(*(snapshot + 72), "main", v6);
        v15 = *(snapshot + 16);
        if (v15)
        {
          os_unfair_lock_unlock(v15 + 39);
        }

        if (a2 == 517 || a2 == 0)
        {
          break;
        }

        if (a2 != 5)
        {
          goto LABEL_33;
        }

        usleep(0x64u);
      }

      if (!a2)
      {
        return a2;
      }

LABEL_33:
      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_38;
      }

      v18 = _pflogging_catastrophic_mode;
      v19 = _PFLogGetLogStream(1);
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      if (v18)
      {
        if (v20)
        {
          *buf = 134217984;
          snapshotCopy2 = a2;
LABEL_41:
          _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_open failed with %ld\n", buf, 0xCu);
        }
      }

      else if (v20)
      {
        *buf = 134217984;
        snapshotCopy2 = a2;
        goto LABEL_41;
      }

LABEL_38:
      _NSCoreDataLog_console(1, "sqlite3_snapshot_open failed with %ld", a2);
      objc_autoreleasePoolPop(v17);
      return a2;
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: sqlite3_snapshot data was unexpectedly NULL\n", buf, 2u);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: sqlite3_snapshot data was unexpectedly NULL", buf, 2u);
    }

    return 7;
  }

  return a2;
}

- (char)_registerNewQueryGenerationSnapshot:(uint64_t)snapshot
{
  v16 = *MEMORY[0x1E69E9840];
  if (!snapshot)
  {
    return 0;
  }

  v4 = *(snapshot + 8);
  if (v4)
  {
    dispatch_assert_queue_V2(v4);
  }

  if ([*(snapshot + 328) count])
  {
    v5 = [*(snapshot + 328) count];
    v6 = v5;
    if (v5)
    {
      v7 = 0;
      v8 = v5 - 1;
      while (1)
      {
        v9 = [a2 compare:{objc_msgSend(*(snapshot + 328), "objectAtIndex:", v7)}];
        if (v9 < 0)
        {
          break;
        }

        if (v9)
        {
          if (v8 == v7)
          {
            [*(snapshot + 328) addObject:a2];
          }

          if (v6 != ++v7)
          {
            continue;
          }
        }

        return 0;
      }

      [*(snapshot + 328) insertObject:a2 atIndex:v7];
      if (v7)
      {
        return 0;
      }

      v10 = [(NSSQLiteConnection *)snapshot _adoptQueryGenerationWithSnapshot:a2];
      v6 = v10;
      if (!v10)
      {
        return v6;
      }

      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v15 = v10;
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v15 = v10;
        }

        goto LABEL_31;
      }

      goto LABEL_21;
    }
  }

  else
  {
    [(NSSQLiteConnection *)snapshot beginReadTransaction];
    [*(snapshot + 328) addObject:a2];
    v10 = [(NSSQLiteConnection *)snapshot _adoptQueryGenerationWithSnapshot:a2];
    v6 = v10;
    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v15 = v10;
        }

        else
        {
          LogStream = _PFLogGetLogStream(1);
          if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = 67109120;
          v15 = v10;
        }

LABEL_31:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _registerNewQueryGenerationSnapshot failed to adopt query generation with error %d\n", buf, 8u);
      }

LABEL_21:
      _NSCoreDataLog_console(1, "_registerNewQueryGenerationSnapshot failed to adopt query generation with error %d", v10);
      objc_autoreleasePoolPop(v11);
    }
  }

  return v6;
}

- (uint64_t)registerCurrentQueryGenerationWithStore:(uint64_t)store retries:
{
  if (!self)
  {
    return 0;
  }

  [(NSSQLiteConnection *)self connect];
  if (([(NSSQLiteConnection *)self _ensureWalFileExists]& 0x8000000000000000) != 0)
  {
    return 14;
  }

  [(NSSQLiteConnection *)self beginReadTransaction];
  v10 = 0;
  v6 = [(NSSQLiteConnection *)self _currentQueryGenerationSnapshot:?];
  if (v6)
  {
    v7 = [(NSSQLCore *)a2 _registerNewQueryGenerationSnapshot:v6];
  }

  else
  {
    v7 = 0;
  }

  [(NSSQLiteConnection *)self rollbackTransaction];
  if (!v6)
  {
    if (v10)
    {
      code = [v10 code];
      if (store)
      {
        if (code == 134181)
        {
          v7 = [(NSSQLiteConnection *)self registerCurrentQueryGenerationWithStore:a2 retries:0];
        }
      }
    }
  }

  return v7;
}

- (uint64_t)freeQueryGenerationWithIdentifier:(uint64_t)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v4 = *(identifier + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    v5 = *(identifier + 328);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__NSSQLiteConnection_freeQueryGenerationWithIdentifier___block_invoke;
    v27[3] = &unk_1E6EC4088;
    v27[4] = a2;
    v6 = [v5 indexOfObjectPassingTest:v27];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [*(identifier + 328) objectAtIndex:v6];
      v8 = v7;
      if (!v7 || atomic_fetch_add_explicit(v7 + 4, 0xFFFFFFFF, memory_order_relaxed) <= 1)
      {
        v9 = *(identifier + 328);
        if (!v6)
        {
          if ([v9 count] < 2)
          {
            [*(identifier + 328) removeObject:v8];
            v16 = *(identifier + 16);
            if (v16)
            {
              [(NSGenerationalRowCache *)*(v16 + 136) removeRowCacheForGenerationWithIdentifier:v8];
            }

            v11 = 1;
          }

          else
          {
            for (i = 1; i < [*(identifier + 328) count]; ++i)
            {
              v15 = [*(identifier + 328) objectAtIndex:i];
              if (v15)
              {
                if (*(v15 + 16) > 0)
                {
                  break;
                }
              }
            }

            v17 = [*(identifier + 328) subarrayWithRange:{0, i}];
            v18 = [*(identifier + 328) copy];
            [*(identifier + 328) removeObjectsInRange:{0, i}];
            if ([*(identifier + 328) count] && -[NSSQLiteConnection _adoptQueryGenerationWithSnapshot:](identifier, objc_msgSend(*(identifier + 328), "firstObject")))
            {
              v11 = 0;
              [*(identifier + 328) setArray:v18];
            }

            else
            {
              v25 = 0u;
              v26 = 0u;
              v23 = 0u;
              v24 = 0u;
              v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
              if (v19)
              {
                v20 = *v24;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v24 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(identifier + 16);
                    if (v22)
                    {
                      [(NSGenerationalRowCache *)*(v22 + 136) removeRowCacheForGenerationWithIdentifier:?];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
                }

                while (v19);
              }

              v11 = [*(identifier + 328) count] == 0;
            }
          }

          goto LABEL_13;
        }

        if (v6 < [v9 count] - 1)
        {
          [*(identifier + 328) removeObject:v8];
        }

        v10 = *(identifier + 16);
        if (v10)
        {
          [(NSGenerationalRowCache *)*(v10 + 136) removeRowCacheForGenerationWithIdentifier:v8];
        }
      }

      v11 = 0;
LABEL_13:

      if (v11)
      {
        v12 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: WAL checkpoint"];
        [(NSSQLiteConnection *)identifier rollbackTransaction];
        [(NSSQLiteConnection *)identifier _performPostSaveTasks:0 andForceFullVacuum:?];
        [(NSSQLiteConnection *)identifier _ensureWalFileExists];
        [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v12];
      }
    }
  }

  return 0;
}

- (uint64_t)adoptQueryGenerationWithIdentifier:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      dispatch_assert_queue_V2(v4);
    }

    if ((*(v3 + 313) & 2) != 0)
    {
      return [(NSSQLiteConnection *)v3 _adoptQueryGenerationWithSnapshot:a2];
    }

    v5 = sqlite3_snapshot_recover(*(v3 + 72), "main");
    if (!v5 || (v6 = v5, readFileSizeFromJournalHandle(*(v3 + 72)) < 1))
    {
      *(v3 + 312) |= 0x200u;
      return [(NSSQLiteConnection *)v3 _adoptQueryGenerationWithSnapshot:a2];
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v12 = v6;
LABEL_17:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
        }
      }

      else if (v10)
      {
        *buf = 67109120;
        v12 = v6;
        goto LABEL_17;
      }
    }

    _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v6);
    objc_autoreleasePoolPop(v7);
    return [(NSSQLiteConnection *)v3 _adoptQueryGenerationWithSnapshot:a2];
  }

  return result;
}

- (void)reopenQueryGenerationWithIdentifier:(void *)identifier error:
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = *(self + 8);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  if (!a2)
  {
    return a2;
  }

  if (!*(self + 72))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"database connection must not be nil here" userInfo:0]);
  }

  v7 = *(self + 40);
  bytes = [a2 bytes];
  if (!bytes)
  {
    return 0;
  }

  if (+[NSSQLCore debugDefault]>= 1)
  {
    NSLog(@"connection %p attempting to reopen snapshot: %p", self, bytes);
  }

  if ((v7 & 1) == 0)
  {
    [(NSSQLiteConnection *)self beginReadTransaction];
  }

  if ((*(self + 313) & 2) == 0)
  {
    v9 = sqlite3_snapshot_recover(*(self + 72), "main");
    if (!v9 || readFileSizeFromJournalHandle(*(self + 72)) < 1)
    {
      *(self + 312) |= 0x200u;
      goto LABEL_22;
    }

    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_21;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = v9;
LABEL_51:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sqlite3_snapshot_recover failed with %d\n", buf, 8u);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = v9;
        goto LABEL_51;
      }
    }

LABEL_21:
    _NSCoreDataLog_console(1, "sqlite3_snapshot_recover failed with %d", v9);
    objc_autoreleasePoolPop(v10);
    goto LABEL_22;
  }

  while (1)
  {
LABEL_22:
    if (*(self + 16))
    {
      os_unfair_lock_lock_with_options();
    }

    v12 = sqlite3_snapshot_open(*(self + 72), "main", bytes);
    v13 = *(self + 16);
    if (v13)
    {
      os_unfair_lock_unlock(v13 + 39);
    }

    if (v12 == 517 || v12 == 0)
    {
      break;
    }

    if (v12 != 5)
    {
      goto LABEL_33;
    }

    usleep(0x64u);
  }

  if (v12)
  {
LABEL_33:
    v15 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_42;
    }

    if (_pflogging_catastrophic_mode)
    {
      v16 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 67109120;
      v21 = v12;
    }

    else
    {
      v16 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      *buf = 67109120;
      v21 = v12;
    }

    _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error: Attempt to reopen sqlite3_snapshot_open failed %d\n", buf, 8u);
LABEL_42:
    _NSCoreDataLog_console(1, "Attempt to reopen sqlite3_snapshot_open failed %d", v12);
    objc_autoreleasePoolPop(v15);
    if (identifier)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v12), @"NSSQLiteErrorDomain", 0}];
      a2 = 0;
      *identifier = [v17 errorWithDomain:*MEMORY[0x1E696A250] code:134180 userInfo:v18];
      if (v7)
      {
        return a2;
      }
    }

    else
    {
      a2 = 0;
      if (v7)
      {
        return a2;
      }
    }

    goto LABEL_46;
  }

  if ([(NSSQLCore *)*(self + 16) _registerNewQueryGenerationSnapshot:a2]< 0)
  {
    a2 = 0;
  }

  if ((v7 & 1) == 0)
  {
LABEL_46:
    [(NSSQLiteConnection *)self rollbackTransaction];
  }

  return a2;
}

- (void)_dropAllTriggers
{
  v14 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
    result = [v2 count];
    if (result)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v10;
        do
        {
          v5 = 0;
          do
          {
            if (*v10 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v9 + 1) + 8 * v5);
            if ([v6 count] == 2)
            {
              v7 = [objc_msgSend(v6 "lastObject")];
              if ([v7 count] >= 4)
              {
                if ([objc_msgSend(v7 objectAtIndexedSubscript:{2), "hasPrefix:", @"Z"}])
                {
                  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v7 objectAtIndexedSubscript:2]);
                  [(NSSQLiteConnection *)v1 _executeSQLString:v8];
                }
              }
            }

            v5 = v5 + 1;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_dropAllDATriggers
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [(NSSQLiteConnection *)result fetchCreationSQLForType:0 containing:?];
    result = [v2 count];
    if (result)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v11;
        do
        {
          v5 = 0;
          do
          {
            if (*v11 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = *(*(&v10 + 1) + 8 * v5);
            if ([v6 count] == 2)
            {
              v7 = [objc_msgSend(v6 "lastObject")];
              if ([v7 count] >= 4)
              {
                v8 = [v7 objectAtIndexedSubscript:2];
                if (([v8 hasPrefix:@"Z_DA_"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"Z") && (objc_msgSend(v8, "hasPrefix:", @"Z_RT_") & 1) == 0 && (objc_msgSend(v8, "hasPrefix:", @"ZT_") & 1) == 0 && ((objc_msgSend(v8, "hasSuffix:", @"INSERT") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"UPDATE") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"DELETE") & 1) != 0 || (objc_msgSend(v8, "hasSuffix:", @"SET") & 1) != 0 || objc_msgSend(v8, "hasSuffix:", @"UNSET")))
                {
                  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8);
                  [(NSSQLiteConnection *)v1 _executeSQLString:v9];
                }
              }
            }

            v5 = v5 + 1;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v3 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)triggerUpdatedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:columnName:newValue:
{
  if (self)
  {
    v6 = [objc_msgSend(*(self + 16) "model")];
    if (v6)
    {
      v7 = [*(self + 16) newObjectIDForEntity:v6 pk:d];
      [*(self + 168) addObject:v7];
    }
  }
}

- (void)derivedAttributeUpdatedInsertedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:(uint64_t)key columnName:(uint64_t)name newValue:
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = [objc_msgSend(*(self + 16) "model")];
    if (v10)
    {
      v11 = [*(self + 16) newObjectIDForEntity:v10 pk:d];
      v12 = *(self + 176);
      v13[0] = v11;
      v13[1] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], key);
      if (!name)
      {
        name = [MEMORY[0x1E695DFB0] null];
      }

      v13[2] = name;
      [v12 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 3)}];
    }
  }
}

- (void)derivedAttributeUpdatedRowInTable:(uint64_t)table withEntityID:(uint64_t)d primaryKey:(uint64_t)key columnName:(uint64_t)name newValue:
{
  v13[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = [objc_msgSend(*(self + 16) "model")];
    if (v10)
    {
      v11 = [*(self + 16) newObjectIDForEntity:v10 pk:d];
      v12 = *(self + 184);
      v13[0] = v11;
      v13[1] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], key);
      if (!name)
      {
        name = [MEMORY[0x1E695DFB0] null];
      }

      v13[2] = name;
      [v12 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v13, 3)}];
    }
  }
}

- (id)createArrayOfPrimaryKeysAndEntityIDsForRowsWithoutRecordMetadataWithEntity:(id *)entity metadataEntity:
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSSQLiteConnection *)self connect];
  if (a2)
  {
    v6 = a2[16];
    v7 = a2[17];
    if (entity)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (entity)
    {
LABEL_4:
      v26 = [entity[5] objectForKey:@"entityPK"];
      v8 = [entity[5] objectForKey:@"entityId"];
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_5;
    }
  }

  v26 = 0;
  v8 = 0;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_5:
  if (!v7 || !v26 || !v8)
  {
LABEL_22:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Missing one or more columns to query record metadata for missing rows" userInfo:0]);
  }

  v25 = [objc_msgSend(a2 "tableName")];
  v24 = [objc_msgSend(a2 "tableName")];
  v9 = [objc_msgSend(entity "tableName")];
  v10 = [objc_msgSend(entity "tableName")];
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, v24, v9, v10, [a2 tableName], objc_msgSend(entity, "tableName"), v25, v9, v24, v10);
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v6 columnName], objc_msgSend(v7, "columnName"), v11, objc_msgSend(v26, "columnName"), objc_msgSend(v8, "columnName"));
  v13 = -[NSSQLiteAdapter newStatementWithSQLString:]([self adapter], v12);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [[NSSQLColumn alloc] initWithColumnName:v25 sqlType:2];
  [v14 addObject:v15];

  v16 = [[NSSQLColumn alloc] initWithColumnName:v24 sqlType:2];
  [v14 addObject:v16];

  [(NSSQLiteConnection *)self _ensureDatabaseOpen];
  [(NSSQLiteConnection *)self _ensureNoStatementPrepared];
  [(NSSQLiteConnection *)self _ensureNoTransactionOpen];
  [(NSSQLiteConnection *)self _ensureNoFetchInProgress];
  [(NSSQLiteConnection *)self beginReadTransaction];
  [(NSSQLiteConnection *)self setColumnsToFetch:v14];
  [(NSSQLiteConnection *)self prepareSQLStatement:v13];
  [self execute];
  while (1)
  {
    newFetchedArray = [(NSSQLiteConnection *)self newFetchedArray];
    v18 = newFetchedArray;
    if (!newFetchedArray)
    {
      break;
    }

    if ([newFetchedArray count] == 2)
    {
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v18 objectAtIndexedSubscript:1];
      v30[0] = v19;
      v30[1] = v20;
      [v27 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v30, 2)}];
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Missing metadata query got an unexpected number of columns in the result: %@\n", buf, 0xCu);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Missing metadata query got an unexpected number of columns in the result: %@", buf, 0xCu);
      }
    }
  }

  [(NSSQLiteConnection *)self releaseSQLStatement];
  [(NSSQLiteConnection *)self setColumnsToFetch:?];
  *(self + 312) &= ~2u;
  *(self + 100) = 0;
  *(self + 92) = 0;
  *(self + 108) = 0;
  [(NSSQLiteConnection *)self rollbackTransaction];

  return v27;
}

- (void)dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity:(void *)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (a2)
    {
      if ([*(a2 + 208) count])
      {
LABEL_10:
        v7 = *(a2 + 216);
LABEL_11:
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity___block_invoke;
        v9[3] = &unk_1E6EC1510;
        v9[4] = v3;
        v9[5] = a2;
        return [v7 enumerateObjectsUsingBlock:v9];
      }

      v4 = *(a2 + 216);
    }

    else
    {
      v8 = [0 count];
      v4 = 0;
      v7 = 0;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    if ([v4 count])
    {
      goto LABEL_9;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Entity marked as needing unique constraint coalescing but does not appear to be uniqued: %@\n", buf, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = a2;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Entity marked as needing unique constraint coalescing but does not appear to be uniqued: %@", buf, 0xCu);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
LABEL_9:
      if (a2)
      {
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  return result;
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraintsInCloudKitMetadataEntity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v5;
    if (v4)
    {
      v7 = v4[16];
    }

    else
    {
      v7 = 0;
    }

    [v5 addObject:v7];
    v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SELECT %@, ", objc_msgSend(objc_msgSend(v6, "objectAtIndexedSubscript:", 0), "columnName")];
    v9 = objc_alloc(MEMORY[0x1E696AD60]);
    if (v4)
    {
      v10 = [v4[16] columnName];
      v11 = [v4[16] columnName];
      v12 = v4[16];
    }

    else
    {
      v10 = [0 columnName];
      v11 = [0 columnName];
      v12 = 0;
    }

    v13 = [v9 initWithFormat:@"SELECT COUNT(DISTINCT(%@)) AS COUNT, MIN(%@) AS %@, ", v10, v11, objc_msgSend(v12, "columnName")];
    v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"GROUP BY "];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke;
    v19[3] = &unk_1E6EC40D8;
    v19[4] = v6;
    v19[5] = v13;
    v19[6] = v14;
    v19[7] = v8;
    [a2 enumerateObjectsUsingBlock:v19];
    [v13 appendFormat:@" FROM %@ %@ ORDER BY COUNT DESC", objc_msgSend(v4, "tableName"), v14];
    [v8 appendFormat:@" FROM (%@) WHERE COUNT > 1;", v13];
    v15 = [[NSSQLiteStatement alloc] initWithEntity:v4 sqlString:v8];
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSSQLiteConnection *)v2 prepareSQLStatement:v15];
    [v2 execute];
    [(NSSQLiteConnection *)v2 setColumnsToFetch:v6];
    while (1)
    {
      v17 = [(NSSQLiteConnection *)v2 newFetchedArray];
      if (!v17)
      {
        break;
      }

      [v16 addObject:v17];
    }

    [(NSSQLiteConnection *)v2 setColumnsToFetch:?];
    *(v2 + 312) &= ~2u;
    *(v2 + 100) = 0;
    *(v2 + 92) = 0;
    *(v2 + 108) = 0;
    [(NSSQLiteConnection *)v2 _finalizeStatement];
    [(NSSQLiteConnection *)v2 resetSQLStatement];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_2;
    v18[3] = &unk_1E6EC4100;
    v18[4] = v4;
    v18[5] = v6;
    v18[6] = v2;
    [v16 enumerateObjectsUsingBlock:v18];
  }
}

uint64_t __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke(id *a1, void *a2, uint64_t a3)
{
  [a1[4] addObject:a2];
  if (a3)
  {
    [a1[5] appendString:{@", "}];
    [a1[6] appendString:{@", "}];
    [a1[7] appendString:{@", "}];
  }

  [a1[5] appendString:{objc_msgSend(a2, "columnName")}];
  [a1[6] appendString:{objc_msgSend(a2, "columnName")}];
  v6 = a1[7];
  v7 = [a2 columnName];

  return [v6 appendString:v7];
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"DELETE FROM %@ WHERE ", objc_msgSend(*(a1 + 32), "tableName")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_3;
  v6[3] = &unk_1E6EC1510;
  v6[4] = *(a1 + 40);
  v6[5] = v4;
  [a2 enumerateObjectsUsingBlock:v6];
  v5 = [[NSSQLiteStatement alloc] initWithEntity:*(a1 + 32) sqlString:v4];
  [(NSSQLiteConnection *)*(a1 + 48) prepareAndExecuteSQLStatement:v5];
}

void __77__NSSQLiteConnection_dedupeRowsForUniqueConstraint_inCloudKitMetadataEntity___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) objectAtIndexedSubscript:?];
  if (a3)
  {
    [*(a1 + 40) appendString:@" AND "];
  }

  if ([a2 isNSString])
  {
    [*(a1 + 40) appendFormat:@"%@ = '%@'", objc_msgSend(v6, "columnName"), a2];
  }

  else if ([a2 isNSNumber])
  {
    [*(a1 + 40) appendFormat:@"%@ = %@", objc_msgSend(v6, "columnName"), a2];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: CloudKit: Deduping for metadata entity doesn't know how to handle this type of object yet: %@ - %@\n", buf, 0x16u);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = a2;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: CloudKit: Deduping for metadata entity doesn't know how to handle this type of object yet: %@ - %@", buf, 0x16u);
    }
  }
}

- (id)createArrayOfObjectIDsFromTableWithName:(void *)name usingPrimaryKeyColumn:(void *)column entityIDColumn:(void *)dColumn matchingWhereClause:(uint64_t)clause limit:(uint64_t)limit offset:
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v13 = result;
    if ([(NSSQLiteConnection *)result _tableHasRows:a2])
    {
      v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], [name columnName], objc_msgSend(column, "columnName"), a2);
      if ([dColumn length])
      {
        [v14 appendFormat:@" WHERE %@", dColumn];
      }

      if ((clause - 1) <= 0x7FFFFFFFFFFFFFFDLL)
      {
        [v14 appendFormat:@" LIMIT %lu", clause];
        if ((limit - 1) <= 0x7FFFFFFFFFFFFFFDLL)
        {
          [v14 appendFormat:@" OFFSET %lu", limit];
        }
      }

      v16[0] = name;
      v16[1] = column;
      return -[NSSQLiteConnection createArrayOfObjectIDsMatchingSelectStatement:forColumns:primaryKeyIndex:entityIDIndex:](v13, v14, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2], 0, 1);
    }

    else
    {
      v15 = NSArray_EmptyArray;

      return v15;
    }
  }

  return result;
}

@end