@interface CallDBManagerServer
+ (id)downgradeDatabaseAtLocation:(id)location toVersion:(int64_t)version;
+ (id)getDestinationModel:(int64_t)model;
+ (id)getDestinationModelForVersion:(int64_t)version;
+ (id)getObjectIdsForAllRecords:(id)records;
+ (id)getObjectIdsForDuplicateRecordsWithUniqueIds:(id)ids andHavingObjectIds:(id)objectIds;
+ (id)getUniqueIdsForAllRecords:(id)records;
+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to;
+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to withSourceVersion:(int64_t)version;
+ (int64_t)getNextVersionToMigrateToCurrentVersion:(int64_t)version;
- (BOOL)bootUpDBAtLocation:(id)location isEncrypted:(BOOL)encrypted;
- (BOOL)bootUpDBAtLocationWithRecovery:(id)recovery isEncrypted:(BOOL)encrypted;
- (BOOL)createCallDBProperties;
- (BOOL)dbShouldBePrunedForVersion:(int64_t)version;
- (BOOL)handleBootUpFailure:(id)failure;
- (BOOL)handleDatabaseMigration:(id)migration isEncrypted:(BOOL)encrypted isRetry:(BOOL)retry;
- (BOOL)removeDuplicatesFromDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (CallDBManagerServer)init;
- (CallDBManagerServer)initWithDeviceObserver:(id)observer;
- (id)createMOCForDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (id)getUUIDsOfNMostRecentRecords:(unint64_t)records fromManagedObjectContext:(id)context;
- (id)permDBLocation:(unsigned __int8 *)location;
- (id)uniqueIDsFromCallRecords:(id)records forFaceTimeCalls:(BOOL)calls;
- (id)uniqueIDsOfCallsToKeepFromManagedObjectContext:(id)context forFaceTimeCalls:(BOOL)calls;
- (void)createCallDBProperties;
- (void)createPermanent;
- (void)createTemporary;
- (void)deleteObjectsWithPredicate:(id)predicate fromManagedObjectContext:(id)context;
- (void)modifyCallRecordForDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted modifyCallRecord:(id)record;
- (void)moveCallsFromTempDatabase;
- (void)populateHandleType:(id)type dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (void)populateRecentCallRemoteParticipantHandles:(id)handles dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (void)populateServiceProviderAndCallCategory:(id)category dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (void)prepareDatabaseForNextStepInMigration:(id)migration dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted;
- (void)prepareForMigrationDBAtURL:(id)l withModelAtURL:(id)rL andIsEncrypted:(BOOL)encrypted;
- (void)pruneDBFromManagedContext:(id)context version:(unint64_t)version;
@end

@implementation CallDBManagerServer

+ (id)getDestinationModelForVersion:(int64_t)version
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:version];
  v5 = [v3 stringWithFormat:@"%@.%@/%@ %@", @"CallHistory", @"momd", @"CallHistory", v4];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 URLForResource:v5 withExtension:@"mom"];

  v8 = +[CHLogServer sharedInstance];
  v9 = [v8 logHandleForDomain:"ch.calldbm"];

  v10 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [v7 path];
    *buf = 138543362;
    v14 = path;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Got destination model URL %{public}@", buf, 0xCu);
  }

  return v7;
}

+ (int64_t)getNextVersionToMigrateToCurrentVersion:(int64_t)version
{
  if ((version - 5) >= 0x26)
  {
    v3 = &kCHUnknownDBVersion;
  }

  else
  {
    v3 = (&unk_1C40363C8 + 8 * version - 40);
  }

  return *v3;
}

+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to
{
  if ((to - 8) > 0x22)
  {
    return 5;
  }

  else
  {
    return qword_1C40364F8[to - 8];
  }
}

+ (int64_t)getNextVersionToDowngradeTo:(int64_t)to withSourceVersion:(int64_t)version
{
  if (version == to)
  {
    return version;
  }

  else
  {
    return [CallDBManagerServer getNextVersionToDowngradeTo:version];
  }
}

+ (id)getDestinationModel:(int64_t)model
{
  v4 = [CallDBManagerServer getNextVersionToMigrateToCurrentVersion:model];

  return [self getDestinationModelForVersion:v4];
}

+ (id)downgradeDatabaseAtLocation:(id)location toVersion:(int64_t)version
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CallDBManagerServer_downgradeDatabaseAtLocation_toVersion___block_invoke;
  v6[3] = &__block_descriptor_40_e15___NSURL_16__0q8l;
  v6[4] = version;
  v4 = [DBManager migrateDataStoreAtLocation:location withGetDestinationModel:v6 isEncrypted:0];

  return v4;
}

id __61__CallDBManagerServer_downgradeDatabaseAtLocation_toVersion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [CallDBManagerServer getNextVersionToDowngradeTo:*(a1 + 32) withSourceVersion:a2];

  return [CallDBManagerServer getDestinationModelForVersion:v2];
}

- (CallDBManagerServer)init
{
  v3 = objc_alloc_init(CHDeviceObserver);
  v4 = [(CallDBManagerServer *)self initWithDeviceObserver:v3];

  return v4;
}

- (CallDBManagerServer)initWithDeviceObserver:(id)observer
{
  v7.receiver = self;
  v7.super_class = CallDBManagerServer;
  v3 = [(CallDBManager *)&v7 initWithDeviceObserver:observer];
  if (v3)
  {
    v4 = objc_alloc_init(CHFeatureFlags);
    featureFlags = v3->_featureFlags;
    v3->_featureFlags = v4;
  }

  return v3;
}

- (void)createPermanent
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CallDBManagerServer *)self permDBLocation:0];
  v4 = 42;
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v3;
    v14 = 2048;
    v15 = 42;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Creating permanent data store: %{public}@ for version: %ld", &v12, 0x16u);
  }

  if ([(CallDBManagerServer *)self bootUpDBAtLocationWithRecovery:v3 isEncrypted:1])
  {
    [(CallDBManager *)self handlePermanentCreated];
    if (![(CallDBManagerServer *)self createCallDBProperties])
    {
      v7 = +[CHLogServer sharedInstance];
      v8 = [v7 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create call db properties object for permanent store", &v12, 2u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v9 = [CallDBMetaInfo alloc];
  uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
  v11 = [(CallDBMetaInfo *)v9 initWithURL:uRLByDeletingLastPathComponent];

  [(CallDBMetaInfo *)v11 writeDatabaseVersion:v4 isTemp:0];
}

- (void)createTemporary
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(CallDBManagerServer *)self tempDBLocation:0];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Creating temporary data store: %{public}@", &v12, 0xCu);
  }

  if ([(CallDBManagerServer *)self bootUpDBAtLocationWithRecovery:v3 isEncrypted:0])
  {
    v6 = 42;
    [(CallDBManager *)self handleTemporaryCreated];
    if (![(CallDBManagerServer *)self createCallDBProperties])
    {
      v7 = +[CHLogServer sharedInstance];
      v8 = [v7 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Failed to create call db properties object for temporary store", &v12, 2u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = [CallDBMetaInfo alloc];
  uRLByDeletingLastPathComponent = [v3 URLByDeletingLastPathComponent];
  v11 = [(CallDBMetaInfo *)v9 initWithURL:uRLByDeletingLastPathComponent];

  [(CallDBMetaInfo *)v11 writeDatabaseVersion:v6 isTemp:1];
}

- (id)permDBLocation:(unsigned __int8 *)location
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "CallDBManagerServer: fetching permDBURL", &v10, 2u);
  }

  v6 = [CallDBManager getDBLocationIsSandboxed:0 isTemporary:0 error:location];
  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "CallDBManagerServer: permDBURL: %@", &v10, 0xCu);
  }

  return v6;
}

- (void)moveCallsFromTempDatabase
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"kMoveCallRecordsFromTemporaryStoreNotitification" object:self];
}

- (BOOL)bootUpDBAtLocationWithRecovery:(id)recovery isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  recoveryCopy = recovery;
  if ([(CallDBManagerServer *)self bootUpDBAtLocation:recoveryCopy isEncrypted:encryptedCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CallDBManagerServer *)self handleBootUpFailure:recoveryCopy];
    v9 = +[CHLogServer sharedInstance];
    v10 = [v9 logHandleForDomain:"ch.calldbm"];

    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v11)
      {
        [CallDBManagerServer bootUpDBAtLocationWithRecovery:isEncrypted:];
      }

      v7 = [(CallDBManagerServer *)self bootUpDBAtLocation:recoveryCopy isEncrypted:encryptedCopy];
    }

    else
    {
      if (v11)
      {
        [CallDBManagerServer bootUpDBAtLocationWithRecovery:isEncrypted:];
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)handleBootUpFailure:(id)failure
{
  failureCopy = failure;
  v4 = [failureCopy URLByAppendingPathExtension:@"backup"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v4 path];
  v7 = [defaultManager fileExistsAtPath:path];

  v8 = (!v7 || [DBManager destroyDBAtLocation:v4 withModelAtLocation:0]) && [DBManager moveDBAtLocation:failureCopy toLocation:v4 withModelAtLocation:0]&& [DBManager destroyDBAtLocation:failureCopy withModelAtLocation:0];
  return v8;
}

+ (id)getObjectIdsForDuplicateRecordsWithUniqueIds:(id)ids andHavingObjectIds:(id)objectIds
{
  v26 = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  objectIdsCopy = objectIds;
  v7 = [objectIdsCopy count];
  if (v7 == [idsCopy count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = idsCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      v14 = -1;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          ++v14;
          if ([v16 length])
          {
            if ([v16 isEqualToString:v12])
            {
              v17 = [objectIdsCopy objectAtIndex:v14];
              [v8 addObject:v17];
            }

            else
            {
              v18 = v16;
              v17 = v12;
              v12 = v18;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v19 = +[CHLogServer sharedInstance];
    v12 = [v19 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[CallDBManagerServer getObjectIdsForDuplicateRecordsWithUniqueIds:andHavingObjectIds:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)getUniqueIdsForAllRecords:(id)records
{
  v27 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v4 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
  [v4 setResultType:2];
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"unique_id" ascending:1];
  v7 = [v5 arrayWithObjects:{v6, 0}];
  [v4 setSortDescriptors:v7];

  v20 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:recordsCopy];
  propertiesByName = [v20 propertiesByName];
  v9 = [propertiesByName objectForKey:@"unique_id"];

  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v9, 0}];
  [v4 setPropertiesToFetch:v10];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = recordsCopy;
  v12 = [recordsCopy executeFetchRequest:v4 error:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v22 + 1) + 8 * i) objectForKey:@"unique_id"];
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = &stru_1F438BFD8;
        }

        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)getObjectIdsForAllRecords:(id)records
{
  v3 = MEMORY[0x1E695D5E0];
  recordsCopy = records;
  v5 = [v3 fetchRequestWithEntityName:@"CallRecord"];
  v6 = MEMORY[0x1E695DEC8];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"unique_id" ascending:1];
  v8 = [v6 arrayWithObjects:{v7, 0}];
  [v5 setSortDescriptors:v8];

  [v5 setResultType:1];
  v9 = [recordsCopy executeFetchRequest:v5 error:0];

  return v9;
}

- (id)createMOCForDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  locationCopy = location;
  v8 = [CallDBManagerServer getDestinationModelForVersion:version];
  v9 = [DBManager instanceWithModelURL:v8];
  if ([v9 addDataStoreAtLocation:locationCopy isEncrypted:encryptedCopy])
  {
    createManagedObjectContext = [v9 createManagedObjectContext];
    v11 = createManagedObjectContext;
    if (createManagedObjectContext)
    {
      v11 = createManagedObjectContext;
      v12 = v11;
    }

    else
    {
      v14 = +[CHLogServer sharedInstance];
      v15 = [v14 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createMOCForDBAtLocation:dbVersion:isEncrypted:];
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = +[CHLogServer sharedInstance];
    v11 = [v13 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerClient willMoveCallsFromTempDatabase];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)removeDuplicatesFromDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  v28 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Removing the records with duplicate unique ids", buf, 2u);
  }

  v11 = [(CallDBManagerServer *)self createMOCForDBAtLocation:locationCopy dbVersion:version isEncrypted:encryptedCopy];

  if (v11)
  {
    v12 = [CallDBManagerServer getUniqueIdsForAllRecords:v11];
    v13 = [CallDBManagerServer getObjectIdsForAllRecords:v11];
    v14 = [CallDBManagerServer getObjectIdsForDuplicateRecordsWithUniqueIds:v12 andHavingObjectIds:v13];
    if ([v14 count])
    {
      v15 = [objc_alloc(MEMORY[0x1E695D538]) initWithObjectIDs:v14];
      [v15 setResultType:2];
      v25 = 0;
      v16 = [v11 executeRequest:v15 error:&v25];
      v17 = v25;
      v18 = v17 == 0;
      v19 = +[CHLogServer sharedInstance];
      v20 = [v19 logHandleForDomain:"ch.calldbm"];

      if (v17)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CallDBManagerServer removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:];
        }
      }

      else
      {
        v22 = v20;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          result = [v16 result];
          *buf = 138543362;
          v27 = result;
          _os_log_impl(&dword_1C3E90000, v22, OS_LOG_TYPE_DEFAULT, "Number of records deleted: %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      v21 = +[CHLogServer sharedInstance];
      v15 = [v21 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C3E90000, v15, OS_LOG_TYPE_DEFAULT, "There exist no duplicate records in the database", buf, 2u);
      }

      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)modifyCallRecordForDBAtLocation:(id)location dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted modifyCallRecord:(id)record
{
  encryptedCopy = encrypted;
  v32 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v11 = [(CallDBManagerServer *)self createMOCForDBAtLocation:location dbVersion:version isEncrypted:encryptedCopy];
  if (v11)
  {
    v12 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
    v30 = 0;
    v13 = [v11 executeFetchRequest:v12 error:&v30];
    v14 = v30;
    if (v14)
    {
      v15 = v14;
      v16 = +[CHLogServer sharedInstance];
      v17 = [v16 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:];
      }
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v13;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          v22 = 0;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            recordCopy[2](recordCopy, *(*(&v26 + 1) + 8 * v22++));
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v20);
      }

      v25 = 0;
      v23 = [v11 save:&v25];
      v15 = v25;
      if (v23)
      {
        goto LABEL_16;
      }

      v24 = +[CHLogServer sharedInstance];
      v17 = [v24 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:];
      }
    }

LABEL_16:
  }
}

- (void)populateServiceProviderAndCallCategory:(id)category dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  categoryCopy = category;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Populating service provider and call category information", v11, 2u);
  }

  [(CallDBManagerServer *)self modifyCallRecordForDBAtLocation:categoryCopy dbVersion:version isEncrypted:encryptedCopy modifyCallRecord:&__block_literal_global_1];
}

void __84__CallDBManagerServer_populateServiceProviderAndCallCategory_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 calltype];
  v4 = [v3 integerValue];

  v5 = [CHRecentCall serviceProviderForCallType:v4];
  [v2 setService_provider:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{+[CHRecentCall categoryForCallType:](CHRecentCall, "categoryForCallType:", v4)}];
  [v2 setCall_category:v6];
}

- (void)populateRecentCallRemoteParticipantHandles:(id)handles dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  handlesCopy = handles;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Populating remote participant handles", v11, 2u);
  }

  [(CallDBManagerServer *)self modifyCallRecordForDBAtLocation:handlesCopy dbVersion:version isEncrypted:encryptedCopy modifyCallRecord:&__block_literal_global_39];
}

void __88__CallDBManagerServer_populateRecentCallRemoteParticipantHandles_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = [v14 address];
  v3 = [v14 handle_type];
  v4 = [v3 integerValue];

  if (v4 && v2)
  {
    if (v4 == 2)
    {
      v5 = [CHPhoneNumber alloc];
      v6 = [v14 iso_country_code];
      v7 = [(CHPhoneNumber *)v5 initWithDigits:v2 isoCountryCode:v6];

      v8 = [(CHPhoneNumber *)v7 normalizedRepresentation];
    }

    else
    {
      v8 = 0;
    }

    v9 = MEMORY[0x1E695DFD8];
    v10 = [[CHHandle alloc] initWithType:v4 value:v2 normalizedValue:v8];
    v11 = [v9 setWithObject:v10];

    v12 = [v14 managedObjectContext];
    v13 = [CHManagedHandle managedHandlesForHandles:v11 inManagedObjectContext:v12];
    [v14 setRemoteParticipantHandles:v13];
  }
}

- (void)populateHandleType:(id)type dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  typeCopy = type;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Populating handle type", v11, 2u);
  }

  [(CallDBManagerServer *)self modifyCallRecordForDBAtLocation:typeCopy dbVersion:version isEncrypted:encryptedCopy modifyCallRecord:&__block_literal_global_45];
}

void __64__CallDBManagerServer_populateHandleType_dbVersion_isEncrypted___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = a2;
  v5 = [v3 address];
  v4 = [v2 numberWithInteger:{+[CHHandle handleTypeForValue:](CHHandle, "handleTypeForValue:", v5)}];
  [v3 setHandle_type:v4];
}

- (void)prepareDatabaseForNextStepInMigration:(id)migration dbVersion:(int64_t)version isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  migrationCopy = migration;
  switch(version)
  {
    case 17:
      v8 = objc_autoreleasePoolPush();
      [(CallDBManagerServer *)self populateRecentCallRemoteParticipantHandles:migrationCopy dbVersion:17 isEncrypted:encryptedCopy];
      break;
    case 13:
      v8 = objc_autoreleasePoolPush();
      [(CallDBManagerServer *)self populateHandleType:migrationCopy dbVersion:13 isEncrypted:encryptedCopy];
      break;
    case 12:
      v8 = objc_autoreleasePoolPush();
      [(CallDBManagerServer *)self populateServiceProviderAndCallCategory:migrationCopy dbVersion:12 isEncrypted:encryptedCopy];
      break;
    default:
      goto LABEL_8;
  }

  objc_autoreleasePoolPop(v8);
LABEL_8:
}

- (BOOL)handleDatabaseMigration:(id)migration isEncrypted:(BOOL)encrypted isRetry:(BOOL)retry
{
  encryptedCopy = encrypted;
  v27 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  v9 = +[CHLogServer sharedInstance];
  v10 = [v9 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Performing necessary steps for migration", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__CallDBManagerServer_handleDatabaseMigration_isEncrypted_isRetry___block_invoke;
  aBlock[3] = &unk_1E81DC020;
  aBlock[4] = self;
  v11 = migrationCopy;
  v23 = v11;
  v24 = encryptedCopy;
  v12 = _Block_copy(aBlock);
  v13 = [DBManager migrateDataStoreAtLocation:v11 withGetDestinationModel:v12 isEncrypted:encryptedCopy];
  v14 = +[CHLogServer sharedInstance];
  v15 = [v14 logHandleForDomain:"ch.calldbm"];

  v16 = v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = getDBMErrorCodeAsString([v13 errorCode]);
    *buf = 138543362;
    v26 = v17;
    _os_log_impl(&dword_1C3E90000, v16, OS_LOG_TYPE_DEFAULT, "Migration result is: %{public}@", buf, 0xCu);
  }

  if ([v13 errorCode])
  {
    v18 = 0;
    if ([v13 errorCode] == 4 && !retry)
    {
      if (-[CallDBManagerServer removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:](self, "removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:", v11, [v13 dbVersion], encryptedCopy))
      {
        v18 = [(CallDBManagerServer *)self handleDatabaseMigration:v11 isEncrypted:encryptedCopy isRetry:1];
      }

      else
      {
        v19 = +[CHLogServer sharedInstance];
        v20 = [v19 logHandleForDomain:"ch.calldbm"];

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [CallDBManagerServer handleDatabaseMigration:isEncrypted:isRetry:];
        }

        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

id __67__CallDBManagerServer_handleDatabaseMigration_isEncrypted_isRetry___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) prepareDatabaseForNextStepInMigration:*(a1 + 40) dbVersion:a2 isEncrypted:*(a1 + 48)];

  return [CallDBManagerServer getDestinationModel:a2];
}

- (id)getUUIDsOfNMostRecentRecords:(unint64_t)records fromManagedObjectContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
  v7 = MEMORY[0x1E695DEC8];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"date" ascending:0];
  v9 = [v7 arrayWithObjects:{v8, 0}];
  [v6 setSortDescriptors:v9];

  [v6 setFetchLimit:records];
  v23 = [DBManager entityDescriptionHavingName:@"CallRecord" forContext:contextCopy];
  propertiesByName = [v23 propertiesByName];
  v11 = [propertiesByName objectForKey:@"unique_id"];

  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, 0}];
  [v6 setPropertiesToFetch:v12];

  [v6 setResultType:2];
  v13 = [contextCopy executeFetchRequest:v6 error:0];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) objectForKey:@"unique_id"];
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = &stru_1F438BFD8;
        }

        [v14 addObject:v21];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  return v14;
}

- (void)prepareForMigrationDBAtURL:(id)l withModelAtURL:(id)rL andIsEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  v47 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  v10 = +[CHLogServer sharedInstance];
  v11 = [v10 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v44 = lCopy;
    v45 = 2114;
    v46 = rLCopy;
    _os_log_impl(&dword_1C3E90000, v11, OS_LOG_TYPE_DEFAULT, "Restricting number of records before performing migration: %{public}@ %{public}@", buf, 0x16u);
  }

  v12 = [DBManager instanceWithModelURL:rLCopy];
  v13 = v12;
  if (v12)
  {
    if ([v12 addDataStoreAtLocation:lCopy isEncrypted:encryptedCopy])
    {
      createManagedObjectContext = [v13 createManagedObjectContext];
      if (!createManagedObjectContext)
      {
        v32 = +[CHLogServer sharedInstance];
        v17 = [v32 logHandleForDomain:"ch.calldbm"];

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [CallDBManagerServer createMOCForDBAtLocation:dbVersion:isEncrypted:];
        }

LABEL_26:

        goto LABEL_27;
      }

      featureFlags = [(CallDBManagerServer *)self featureFlags];
      increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

      if ((increaseCallHistoryEnabled & 1) == 0)
      {
        v36 = v13;
        v37 = rLCopy;
        v38 = lCopy;
        v17 = [(CallDBManagerServer *)self getUUIDsOfNMostRecentRecords:1000 fromManagedObjectContext:createManagedObjectContext];
        v39 = 0;
        unsignedIntegerValue = 0;
        while (1)
        {
          v19 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CallRecord"];
          v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"unique_id", v17];
          [v19 setPredicate:v20];

          [v19 setFetchLimit:1000];
          v21 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v19];
          [v21 setResultType:2];
          v42 = 0;
          v22 = [createManagedObjectContext executeRequest:v21 error:&v42];
          v23 = v22;
          v24 = v42;
          if (v42)
          {
            v25 = v17;
            v26 = +[CHLogServer sharedInstance];
            v27 = [v26 logHandleForDomain:"ch.calldbm"];

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [CallDBManagerServer prepareForMigrationDBAtURL:v41 withModelAtURL:v27 andIsEncrypted:?];
            }

            v17 = v25;
          }

          else
          {
            result = [v22 result];
            unsignedIntegerValue = [result unsignedIntegerValue];

            v39 += unsignedIntegerValue;
          }

          if (v24)
          {
            break;
          }

          v29 = unsignedIntegerValue == 1000;
          unsignedIntegerValue = 1000;
          if (!v29)
          {
            v33 = +[CHLogServer sharedInstance];
            v34 = [v33 logHandleForDomain:"ch.calldbm"];

            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v44 = v39;
              _os_log_impl(&dword_1C3E90000, v34, OS_LOG_TYPE_DEFAULT, "Total number of records deleted are: %lu", buf, 0xCu);
            }

            break;
          }
        }

        rLCopy = v37;
        lCopy = v38;
        v13 = v36;
        goto LABEL_26;
      }
    }

    else
    {
      v31 = +[CHLogServer sharedInstance];
      createManagedObjectContext = [v31 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(createManagedObjectContext, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerClient willMoveCallsFromTempDatabase];
      }
    }
  }

  else
  {
    v30 = +[CHLogServer sharedInstance];
    createManagedObjectContext = [v30 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(createManagedObjectContext, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerServer prepareForMigrationDBAtURL:withModelAtURL:andIsEncrypted:];
    }
  }

LABEL_27:
}

- (BOOL)createCallDBProperties
{
  dbManager = [(CallDBManager *)self dbManager];
  createManagedObjectContext = [dbManager createManagedObjectContext];

  if (createManagedObjectContext)
  {
    v4 = [DBManager entityDescriptionHavingName:@"CallDBProperties" forContext:createManagedObjectContext];
    if (!v4)
    {
      v13 = +[CHLogServer sharedInstance];
      v5 = [v13 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v11 = 0;
      goto LABEL_29;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    [v5 setEntity:v4];
    v23 = 0;
    v6 = [createManagedObjectContext executeFetchRequest:v5 error:&v23];
    v7 = v23;
    if (v7)
    {
      v8 = v7;
      v9 = +[CHLogServer sharedInstance];
      v10 = [v9 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v11 = 0;
      goto LABEL_28;
    }

    if (v6 && [v6 count])
    {
      v14 = +[CHLogServer sharedInstance];
      v8 = [v14 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "Call DB properties object already exist, not creating again", buf, 2u);
      }

      v11 = 1;
      goto LABEL_28;
    }

    v15 = [[CallDBProperties alloc] initWithEntity:v4 insertIntoManagedObjectContext:createManagedObjectContext];
    if (v15)
    {
      v21 = 0;
      v16 = [createManagedObjectContext save:&v21];
      v8 = v21;
      if (v16)
      {
        v11 = 1;
LABEL_27:

LABEL_28:
LABEL_29:

        goto LABEL_30;
      }

      v19 = +[CHLogServer sharedInstance];
      v18 = [v19 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }
    }

    else
    {
      v17 = +[CHLogServer sharedInstance];
      v18 = [v17 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createCallDBProperties];
      }

      v8 = 0;
    }

    v11 = 0;
    goto LABEL_27;
  }

  v12 = +[CHLogServer sharedInstance];
  v4 = [v12 logHandleForDomain:"ch.calldbm"];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CallDBManagerServer createMOCForDBAtLocation:dbVersion:isEncrypted:];
  }

  v11 = 0;
LABEL_30:

  return v11;
}

- (BOOL)bootUpDBAtLocation:(id)location isEncrypted:(BOOL)encrypted
{
  encryptedCopy = encrypted;
  locationCopy = location;
  v7 = [DBManager versionForDBAtLocation:locationCopy];
  createManagedObjectContext = +[CallDBManager modelURL];
  v9 = [DBManager isDataStoreAtURLInitialized:locationCopy withModelAtURL:createManagedObjectContext];
  if (v9 == 3)
  {
    v16 = +[CHLogServer sharedInstance];
    v17 = [v16 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerServer bootUpDBAtLocation:isEncrypted:];
    }

    goto LABEL_24;
  }

  v10 = v9;
  if (v9 == 2)
  {
    v13 = [CallDBManagerServer getDestinationModelForVersion:v7];
    [(CallDBManagerServer *)self prepareForMigrationDBAtURL:locationCopy withModelAtURL:v13 andIsEncrypted:encryptedCopy];
    v14 = [(CallDBManagerServer *)self handleDatabaseMigration:locationCopy isEncrypted:encryptedCopy isRetry:0];

    v15 = 0;
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "No data store intialization required", buf, 2u);
    }

    goto LABEL_13;
  }

  dbManager = [(CallDBManager *)self dbManager];
  v19 = [dbManager addDataStoreAtLocation:locationCopy isEncrypted:encryptedCopy];

  if ((v19 & 1) == 0)
  {
    v28 = +[CHLogServer sharedInstance];
    v17 = [v28 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerClient willMoveCallsFromTempDatabase];
    }

LABEL_24:

LABEL_25:
    v15 = 0;
LABEL_26:

    goto LABEL_27;
  }

  if (v10)
  {
    goto LABEL_21;
  }

LABEL_13:
  dbManager2 = [(CallDBManager *)self dbManager];
  v21 = [dbManager2 addDataStoreAtLocation:locationCopy isEncrypted:encryptedCopy];

  if ((v21 & 1) == 0)
  {
    v27 = +[CHLogServer sharedInstance];
    createManagedObjectContext = [v27 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(createManagedObjectContext, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerClient willMoveCallsFromTempDatabase];
    }

    goto LABEL_25;
  }

  featureFlags = [(CallDBManagerServer *)self featureFlags];
  increaseCallHistoryEnabled = [featureFlags increaseCallHistoryEnabled];

  if (increaseCallHistoryEnabled)
  {
    v24 = +[CHLogServer sharedInstance];
    v25 = [v24 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&dword_1C3E90000, v25, OS_LOG_TYPE_DEFAULT, "Received success from migration. Checking if we need to prune", v32, 2u);
    }

    dbManager3 = [(CallDBManager *)self dbManager];
    createManagedObjectContext = [dbManager3 createManagedObjectContext];

    if (createManagedObjectContext)
    {
      [(CallDBManagerServer *)self pruneDBFromManagedContext:createManagedObjectContext version:v7];
    }

    else
    {
      v30 = +[CHLogServer sharedInstance];
      v31 = [v30 logHandleForDomain:"ch.calldbm"];

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CallDBManagerServer createMOCForDBAtLocation:dbVersion:isEncrypted:];
      }
    }

    v15 = 1;
    goto LABEL_26;
  }

LABEL_21:
  v15 = 1;
LABEL_27:

  return v15;
}

- (void)pruneDBFromManagedContext:(id)context version:(unint64_t)version
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if ([(CallDBManagerServer *)self dbShouldBePrunedForVersion:version])
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134217984;
      versionCopy = version;
      _os_log_impl(&dword_1C3E90000, v8, OS_LOG_TYPE_DEFAULT, "DB needs to be pruned for version: %lu", &v24, 0xCu);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [(CallDBManagerServer *)self uniqueIDsOfCallsToKeepFromManagedObjectContext:contextCopy forFaceTimeCalls:1];
    [v9 addObjectsFromArray:v10];
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.calldbm"];

    v13 = v12;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 count];
      v24 = 134217984;
      versionCopy = v14;
      _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Calls visible in FT App to user: %lu", &v24, 0xCu);
    }

    v15 = [(CallDBManagerServer *)self uniqueIDsOfCallsToKeepFromManagedObjectContext:contextCopy forFaceTimeCalls:0];
    [v9 addObjectsFromArray:v15];
    v16 = +[CHLogServer sharedInstance];
    v17 = [v16 logHandleForDomain:"ch.calldbm"];

    v18 = v17;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 count];
      v24 = 134217984;
      versionCopy = v19;
      _os_log_impl(&dword_1C3E90000, v18, OS_LOG_TYPE_DEFAULT, "Calls visible in Phone App to user: %lu", &v24, 0xCu);
    }

    v20 = MEMORY[0x1E696AB28];
    v21 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v9];
    v22 = [v20 notPredicateWithSubpredicate:v21];

    [(CallDBManagerServer *)self deleteObjectsWithPredicate:v22 fromManagedObjectContext:contextCopy];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:@"CHDBLimitIncreasedPruned"];
  }
}

- (id)uniqueIDsOfCallsToKeepFromManagedObjectContext:(id)context forFaceTimeCalls:(BOOL)calls
{
  callsCopy = calls;
  v17[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v8 = [v6 fetchRequestWithEntityName:@"CallRecord"];
  [v8 setReturnsObjectsAsFaults:0];
  if (callsCopy)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"service_provider == %@", @"com.apple.FaceTime"];
    [v8 setPredicate:v9];
  }

  v17[0] = @"remoteParticipantHandles";
  v17[1] = @"emergencyMediaItems";
  v17[2] = @"initiatorHandle";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
  [v8 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"date" ascending:0];
  v16 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v8 setSortDescriptors:v12];

  [v8 setFetchLimit:200];
  v13 = [contextCopy executeFetchRequest:v8 error:0];

  v14 = [(CallDBManagerServer *)self uniqueIDsFromCallRecords:v13 forFaceTimeCalls:callsCopy];

  return v14;
}

- (id)uniqueIDsFromCallRecords:(id)records forFaceTimeCalls:(BOOL)calls
{
  callsCopy = calls;
  v34 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v6 = kCHCoalescingStrategyCollapseIfEqual;
  if (!callsCopy)
  {
    v6 = kCHCoalescingStrategyRecents;
  }

  v28 = *v6;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = recordsCopy;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v30;
    obj = v8;
    while (2)
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * v14);
        v17 = objc_autoreleasePoolPush();
        chRecentCall = [v16 chRecentCall];
        v19 = chRecentCall;
        if (v15)
        {
          v20 = [v15 coalescedCallWithCall:chRecentCall usingStrategy:v28];
        }

        else
        {
          v20 = chRecentCall;
        }

        v21 = v20;
        if (v20)
        {
          v22 = v20;
        }

        else
        {
          ++v12;
          v22 = v19;
          if (v12 == 100)
          {
            v24 = v7;

            objc_autoreleasePoolPop(v17);
            v8 = obj;

            goto LABEL_20;
          }
        }

        v11 = v22;

        uniqueId = [v19 uniqueId];
        [v7 addObject:uniqueId];

        objc_autoreleasePoolPop(v17);
        ++v14;
        v15 = v11;
      }

      while (v10 != v14);
      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v25 = v7;
  v15 = v11;
LABEL_20:

  return v7;
}

- (void)deleteObjectsWithPredicate:(id)predicate fromManagedObjectContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v8 = [v5 fetchRequestWithEntityName:@"CallRecord"];
  [v8 setPredicate:predicateCopy];

  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  [v9 setResultType:2];
  v16 = 0;
  v10 = [contextCopy executeRequest:v9 error:&v16];

  if (v16)
  {
    v11 = +[CHLogServer sharedInstance];
    v12 = [v11 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CallDBManagerServer removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:];
    }
  }

  else
  {
    result = [v10 result];
    unsignedIntegerValue = [result unsignedIntegerValue];

    v15 = +[CHLogServer sharedInstance];
    v12 = [v15 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v18 = unsignedIntegerValue;
      _os_log_impl(&dword_1C3E90000, v12, OS_LOG_TYPE_DEFAULT, "Deleted %ld calls from the data store.", buf, 0xCu);
    }
  }
}

- (BOOL)dbShouldBePrunedForVersion:(int64_t)version
{
  v14 = *MEMORY[0x1E69E9840];
  if (version < 27)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [standardUserDefaults BOOLForKey:@"CHDBLimitIncreasedPruned"]^ 1;
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"ch.calldbm"];

    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v12 = 138543362;
      versionCopy = v10;
      _os_log_impl(&dword_1C3E90000, v9, OS_LOG_TYPE_DEFAULT, "DB version was eligible for pruning. shouldBePruned: %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    v4 = +[CHLogServer sharedInstance];
    standardUserDefaults = [v4 logHandleForDomain:"ch.calldbm"];

    if (os_log_type_enabled(standardUserDefaults, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      versionCopy = version;
      _os_log_impl(&dword_1C3E90000, standardUserDefaults, OS_LOG_TYPE_DEFAULT, "DB does not need to be pruned as version: %lu is greater than kCHDBVersionTwentySeven", &v12, 0xCu);
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)bootUpDBAtLocationWithRecovery:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bootUpDBAtLocationWithRecovery:isEncrypted:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getObjectIdsForDuplicateRecordsWithUniqueIds:andHavingObjectIds:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&dword_1C3E90000, v1, OS_LOG_TYPE_ERROR, "Objects ids(%lu) and unique ids(%lu) count mismatch", v2, 0x16u);
}

- (void)createMOCForDBAtLocation:dbVersion:isEncrypted:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeDuplicatesFromDBAtLocation:dbVersion:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)modifyCallRecordForDBAtLocation:dbVersion:isEncrypted:modifyCallRecord:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleDatabaseMigration:isEncrypted:isRetry:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)prepareForMigrationDBAtURL:(uint8_t *)buf withModelAtURL:(_BYTE *)a2 andIsEncrypted:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Failed to execute the delete request", buf, 2u);
}

- (void)prepareForMigrationDBAtURL:withModelAtURL:andIsEncrypted:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createCallDBProperties
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)bootUpDBAtLocation:isEncrypted:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end