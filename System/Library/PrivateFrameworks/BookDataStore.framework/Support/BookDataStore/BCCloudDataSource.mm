@interface BCCloudDataSource
+ (id)_sharedLegacyRootDirectoryURL;
+ (id)_sharedRootDirectoryURL;
+ (void)deleteCloudDataWithCompletion:(id)completion;
- (BCCloudDataSource)initWithManagedObjectModel:(id)model;
- (BCCloudDataSource)initWithManagedObjectModel:(id)model nameOnDisk:(id)disk delegate:(id)delegate;
- (BCCloudDataSource)initWithManagedObjectModel:(id)model rootDirectoryURL:(id)l legacyRootDirectoryURL:(id)rL nameOnDisk:(id)disk delegate:(id)delegate;
- (BCCloudDataSourceDelegate)delegate;
- (BOOL)_addStoreAtURL:(id)l;
- (BOOL)_deleteDirectoryForStoreAtURL:(id)l;
- (BOOL)_directoryExistsForStoreAtURL:(id)l;
- (BOOL)_setupPersistentStoreWithRootDirectoryURL:(id)l legacyRootDirectoryURL:(id)rL nameOnDisk:(id)disk;
- (id)_persistentStoreOptions;
- (void)_createDirectoryForStoreAtURL:(id)l;
- (void)_logIf:(BOOL)if error:(id)error operation:(id)operation;
- (void)_migrateAndDestroyStoreAtLegacyURL:(id)l toModernURL:(id)rL;
- (void)_setupManagedObjectContext;
@end

@implementation BCCloudDataSource

- (BCCloudDataSource)initWithManagedObjectModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = BCCloudDataSource;
  v5 = [(BCCloudDataSource *)&v12 init];
  if (v5)
  {
    v6 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:modelCopy];
    persistentStoreCoordinator = v5->_persistentStoreCoordinator;
    v5->_persistentStoreCoordinator = v6;

    v8 = v5->_persistentStoreCoordinator;
    _persistentStoreOptions = [(BCCloudDataSource *)v5 _persistentStoreOptions];
    v10 = [(NSPersistentStoreCoordinator *)v8 addPersistentStoreWithType:NSInMemoryStoreType configuration:0 URL:0 options:_persistentStoreOptions error:0];

    [(BCCloudDataSource *)v5 _setupManagedObjectContext];
  }

  return v5;
}

- (BCCloudDataSource)initWithManagedObjectModel:(id)model nameOnDisk:(id)disk delegate:(id)delegate
{
  delegateCopy = delegate;
  diskCopy = disk;
  modelCopy = model;
  v11 = +[BCCloudDataSource _sharedRootDirectoryURL];
  v12 = +[BCCloudDataSource _sharedLegacyRootDirectoryURL];
  v13 = [(BCCloudDataSource *)self initWithManagedObjectModel:modelCopy rootDirectoryURL:v11 legacyRootDirectoryURL:v12 nameOnDisk:diskCopy delegate:delegateCopy];

  return v13;
}

- (BCCloudDataSource)initWithManagedObjectModel:(id)model rootDirectoryURL:(id)l legacyRootDirectoryURL:(id)rL nameOnDisk:(id)disk delegate:(id)delegate
{
  modelCopy = model;
  lCopy = l;
  rLCopy = rL;
  diskCopy = disk;
  delegateCopy = delegate;
  kdebug_trace();
  v25.receiver = self;
  v25.super_class = BCCloudDataSource;
  v17 = [(BCCloudDataSource *)&v25 init];
  if (v17)
  {
    v18 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:modelCopy];
    v19 = *(v17 + 2);
    *(v17 + 2) = v18;

    objc_storeWeak(v17 + 3, delegateCopy);
    v20 = [v17 _setupPersistentStoreWithRootDirectoryURL:lCopy legacyRootDirectoryURL:rLCopy nameOnDisk:diskCopy];
    if (v20 && ([*(v17 + 2) persistentStores], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22))
    {
      [v17 _setupManagedObjectContext];
    }

    else
    {
      v23 = sub_100002660(v20);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0AD8(v17 + 2, v23);
      }
    }
  }

  kdebug_trace();

  return v17;
}

+ (void)deleteCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[NSFileManager defaultManager];
  _sharedLegacyRootDirectoryURL = [self _sharedLegacyRootDirectoryURL];
  [v5 removeItemAtURL:_sharedLegacyRootDirectoryURL error:0];

  v7 = +[NSFileManager defaultManager];
  _sharedRootDirectoryURL = [self _sharedRootDirectoryURL];
  v12 = 0;
  v9 = [v7 removeItemAtURL:_sharedRootDirectoryURL error:&v12];
  v10 = v12;

  v11 = objc_retainBlock(completionCopy);
  if (v11)
  {
    v11[2](v11, v9, v10);
  }
}

+ (id)_sharedRootDirectoryURL
{
  _documentsDirectoryURL = [self _documentsDirectoryURL];
  v3 = [_documentsDirectoryURL URLByAppendingPathComponent:@"BCCloudData-BookDataStoreService" isDirectory:1];

  return v3;
}

+ (id)_sharedLegacyRootDirectoryURL
{
  _documentsDirectoryURL = [self _documentsDirectoryURL];
  v3 = [_documentsDirectoryURL URLByAppendingPathComponent:@"BCCloudAsset-BookDataStoreService" isDirectory:1];

  return v3;
}

- (id)_persistentStoreOptions
{
  v4[0] = NSInferMappingModelAutomaticallyOption;
  v4[1] = NSMigratePersistentStoresAutomaticallyOption;
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanTrue;
  v4[2] = NSPersistentHistoryTrackingKey;
  v5[2] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (void)_logIf:(BOOL)if error:(id)error operation:(id)operation
{
  ifCopy = if;
  errorCopy = error;
  operationCopy = operation;
  v9 = operationCopy;
  if (ifCopy)
  {
    v10 = sub_100002660(operationCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0B54(v9, errorCopy, v10);
    }
  }
}

- (BOOL)_setupPersistentStoreWithRootDirectoryURL:(id)l legacyRootDirectoryURL:(id)rL nameOnDisk:(id)disk
{
  rLCopy = rL;
  diskCopy = disk;
  v10 = [l URLByAppendingPathComponent:diskCopy isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:diskCopy isDirectory:0];
  if (![(BCCloudDataSource *)self _directoryExistsForStoreAtURL:v11])
  {
    v12 = [rLCopy URLByAppendingPathComponent:diskCopy];
    [(BCCloudDataSource *)self _createDirectoryForStoreAtURL:v11];
    v13 = [(BCCloudDataSource *)self _directoryExistsForStoreAtURL:v12];
    if (v13)
    {
      [(BCCloudDataSource *)self _migrateAndDestroyStoreAtLegacyURL:v12 toModernURL:v11];
    }

    else
    {
      v14 = sub_100002660(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 138412290;
        v33 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Unable to migrate legacy database since file does not exist at URL %@", &v32, 0xCu);
      }
    }
  }

  if (!sub_10000CE48())
  {
    goto LABEL_14;
  }

  v15 = +[BUAppGroup books];
  userDefaults = [v15 userDefaults];

  v17 = [userDefaults stringForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  v18 = [v17 isEqual:diskCopy];
  if (!v18)
  {

LABEL_14:
    v20 = [(BCCloudDataSource *)self _addStoreAtURL:v11];
    v21 = v20;
    v22 = 0;
    goto LABEL_15;
  }

  v19 = sub_100002660(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138543874;
    v33 = diskCopy;
    v34 = 2160;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL -- Forcing store failure once for %{public}@, url: %{mask.hash}@", &v32, 0x20u);
  }

  [userDefaults removeObjectForKey:@"BDSDevelopmentForceAddStoreFailureOnce"];
  v21 = 0;
  v22 = 1;
LABEL_15:
  v23 = sub_100002660(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 138412546;
    v33 = v11;
    v34 = 1024;
    LODWORD(v35) = v21;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "_setupPersistentStoreWithRootDirectoryURL: %@, storeAdded: %d", &v32, 0x12u);
  }

  if (v21)
  {
    goto LABEL_26;
  }

  v25 = sub_100002660(v24);
  v26 = v25;
  if (v22)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0C64(v26);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    sub_1001C0C20(v26);
  }

  if ([(BCCloudDataSource *)self _deleteDirectoryForStoreAtURL:v11])
  {
    [(BCCloudDataSource *)self _createDirectoryForStoreAtURL:v11];
    delegate = [(BCCloudDataSource *)self delegate];
    [delegate dataSource:self storeDidReset:diskCopy];
  }

  v28 = [(BCCloudDataSource *)self _addStoreAtURL:v11];
  if (v28)
  {
LABEL_26:
    v29 = 1;
  }

  else
  {
    v30 = sub_100002660(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      sub_1001C0CA8(v30);
    }

    v29 = 0;
  }

  return v29;
}

- (void)_setupManagedObjectContext
{
  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = v3;

  [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:self->_persistentStoreCoordinator];
  v5 = self->_managedObjectContext;

  [(NSManagedObjectContext *)v5 setUndoManager:0];
}

- (BOOL)_directoryExistsForStoreAtURL:(id)l
{
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];
  v4 = [uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:0];

  return v4;
}

- (void)_createDirectoryForStoreAtURL:(id)l
{
  lCopy = l;
  v5 = +[NSFileManager defaultManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v8 = 0;
  LODWORD(lCopy) = [v5 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v8];
  v7 = v8;

  [(BCCloudDataSource *)self _logIf:lCopy ^ 1 error:v7 operation:@"creating directory for store"];
}

- (BOOL)_deleteDirectoryForStoreAtURL:(id)l
{
  lCopy = l;
  v5 = +[NSFileManager defaultManager];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v9 = 0;
  LODWORD(lCopy) = [v5 removeItemAtURL:uRLByDeletingLastPathComponent error:&v9];
  v7 = v9;

  [(BCCloudDataSource *)self _logIf:lCopy ^ 1 error:v7 operation:@"deleting directory for store"];
  return lCopy;
}

- (void)_migrateAndDestroyStoreAtLegacyURL:(id)l toModernURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v8 = sub_100002660(rLCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v21 = lCopy;
    v22 = 2112;
    v23 = rLCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Migrating legacy cloud data source from %@ to %@", buf, 0x16u);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  _persistentStoreOptions = [(BCCloudDataSource *)self _persistentStoreOptions];
  _persistentStoreOptions2 = [(BCCloudDataSource *)self _persistentStoreOptions];
  v19 = 0;
  v12 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator replacePersistentStoreAtURL:rLCopy destinationOptions:_persistentStoreOptions withPersistentStoreFromURL:lCopy sourceOptions:_persistentStoreOptions2 storeType:NSSQLiteStoreType error:&v19];
  v13 = v19;

  v14 = sub_100002660([(BCCloudDataSource *)self _logIf:v12 ^ 1 error:v13 operation:@"[MIGRATE] migrate legacy store"]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Destroying legacy cloud data source at %@", buf, 0xCu);
  }

  v15 = self->_persistentStoreCoordinator;
  v18 = 0;
  v16 = [(NSPersistentStoreCoordinator *)v15 destroyPersistentStoreAtURL:lCopy withType:NSSQLiteStoreType options:0 error:&v18];
  v17 = v18;
  [(BCCloudDataSource *)self _logIf:v16 ^ 1 error:v17 operation:@"[MIGRATE] destroy legacy store"];
}

- (BOOL)_addStoreAtURL:(id)l
{
  lCopy = l;
  v5 = sub_100002660(lCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    lastPathComponent = [lCopy lastPathComponent];
    *buf = 138412290;
    v19 = lastPathComponent;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Adding cloud data source persistent store for %@", buf, 0xCu);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  _persistentStoreOptions = [(BCCloudDataSource *)self _persistentStoreOptions];
  v17 = 0;
  v9 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:lCopy options:_persistentStoreOptions error:&v17];
  v10 = v17;

  if ([v9 isReadOnly])
  {
    v11 = self->_persistentStoreCoordinator;
    v16 = 0;
    v12 = [(NSPersistentStoreCoordinator *)v11 removePersistentStore:v9 error:&v16];
    v13 = v16;
    [(BCCloudDataSource *)self _logIf:v12 ^ 1 error:v13 operation:@"removing read-only cloud data source persistent store"];

    v14 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];

    v9 = 0;
    v10 = v14;
  }

  [(BCCloudDataSource *)self _logIf:v9 == 0 error:v10 operation:@"adding cloud data source persistent store"];

  return v9 != 0;
}

- (BCCloudDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end