@interface PersistentStore
- (BOOL)_loadStoreCoordinatorWithIntegrityCheck:(BOOL)check error:(id *)error;
- (BOOL)loadStoreCoordinatorWithOptions:(id)options error:(id *)error;
- (BOOL)performLightweightMigration:(id *)migration;
- (BOOL)resetStore:(id *)store;
- (NSURL)databaseFileURL;
- (NSURL)modelFileURL;
- (PersistentStore)initWithConfiguration:(id)configuration error:(id *)error;
- (PersistentStoreConfiguration)configuration;
- (id)_baseFilePath;
- (id)_newLegacyManagedObjectModel;
- (id)beginThreadContextSession;
- (id)managedObjectModel;
- (void)checkIntegrityWithInitializationBlock:(id)block;
- (void)dealloc;
- (void)endThreadContextSession;
@end

@implementation PersistentStore

- (PersistentStore)initWithConfiguration:(id)configuration error:(id *)error
{
  if (!configuration)
  {
    sub_100272248(a2, self);
  }

  v10.receiver = self;
  v10.super_class = PersistentStore;
  v7 = [(PersistentStore *)&v10 init];
  if (v7)
  {
    v7->_configuration = [configuration copy];
    if ([(PersistentStore *)v7 _loadStoreCoordinatorWithIntegrityCheck:0 error:error])
    {
      storeType = [(PersistentStoreConfiguration *)v7->_configuration storeType];
      v7->_threadContextKey = [[NSString alloc] initWithFormat:@"itunesstored.store-context.%d", storeType];
      v7->_threadCountKey = [[NSString alloc] initWithFormat:@"itunesstored.store-count.%d", storeType];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PersistentStore;
  [(PersistentStore *)&v3 dealloc];
}

- (id)beginThreadContextSession
{
  threadDictionary = [+[NSThread currentThread](NSThread threadDictionary];
  v4 = [(NSMutableDictionary *)threadDictionary objectForKey:self->_threadContextKey];
  if (!v4)
  {
    v5 = [NSManagedObjectContext alloc];
    v6 = [v5 initWithConcurrencyType:_NSBackgroundThreadConfinementConcurrencyType];
    v4 = v6;
    if (!v6)
    {
      return v4;
    }

    [v6 setPersistentStoreCoordinator:self->_storeCoordinator];
    [v4 setUndoManager:0];
    [(NSMutableDictionary *)threadDictionary setObject:v4 forKey:self->_threadContextKey];
  }

  v7 = [(NSMutableDictionary *)threadDictionary objectForKey:self->_threadCountKey];
  v8 = [NSNumber alloc];
  if (v7)
  {
    v9 = [v7 integerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v8 initWithInteger:v9];
  [(NSMutableDictionary *)threadDictionary setObject:v10 forKey:self->_threadCountKey];

  return v4;
}

- (void)checkIntegrityWithInitializationBlock:(id)block
{
  v5 = [-[PersistentStore _baseFilePath](self "_baseFilePath")];
  if (v5)
  {
    v6 = v5;
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v25 = 138412546;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = v6;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking integrity with cookie: %@", &v25, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v23 = v13;
        SSFileLog();
      }
    }

    v14 = objc_alloc_init(NSFileManager);
    if ([v14 fileExistsAtPath:v6])
    {
      v15 = +[SSLogConfig sharedDaemonConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        LODWORD(v17) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v17) = shouldLog2;
      }

      oSLogObject2 = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v17;
      }

      else
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v19 = objc_opt_class();
        v25 = 138412290;
        v26 = v19;
        LODWORD(v24) = 12;
        v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Found integrity cookie, reloading store coordinator", &v25, v24);
        if (v20)
        {
          v21 = v20;
          v22 = [NSString stringWithCString:v20 encoding:4];
          free(v21);
          v23 = v22;
          SSFileLog();
        }
      }

      self->_storeCoordinator = 0;
      [(PersistentStore *)self _loadStoreCoordinatorWithIntegrityCheck:1 error:0];
    }

    [v14 createFileAtPath:v6 contents:0 attributes:{0, v23}];
    (*(block + 2))(block);
    [v14 removeItemAtPath:v6 error:0];
  }
}

- (PersistentStoreConfiguration)configuration
{
  v2 = [(PersistentStoreConfiguration *)self->_configuration copy];

  return v2;
}

- (NSURL)databaseFileURL
{
  result = [-[PersistentStore _baseFilePath](self "_baseFilePath")];
  if (result)
  {

    return [NSURL fileURLWithPath:result];
  }

  return result;
}

- (void)endThreadContextSession
{
  threadDictionary = [+[NSThread currentThread](NSThread threadDictionary];
  v4 = [-[NSMutableDictionary objectForKey:](threadDictionary objectForKey:{self->_threadCountKey), "integerValue"}];
  if (v4 >= 1)
  {
    if (v4 == 1)
    {
      [(NSMutableDictionary *)threadDictionary removeObjectForKey:self->_threadCountKey];
      threadContextKey = self->_threadContextKey;

      [(NSMutableDictionary *)threadDictionary removeObjectForKey:threadContextKey];
    }

    else
    {
      v6 = [[NSNumber alloc] initWithInteger:v4 - 1];
      [(NSMutableDictionary *)threadDictionary setObject:v6 forKey:self->_threadCountKey];
    }
  }
}

- (NSURL)modelFileURL
{
  result = [objc_msgSend(-[NSArray objectAtIndex:](-[NSProcessInfo arguments](+[NSProcessInfo processInfo](NSProcessInfo "processInfo")];
  if (result)
  {

    return [NSURL fileURLWithPath:result];
  }

  return result;
}

- (BOOL)performLightweightMigration:(id *)migration
{
  v45 = 0;
  managedObjectModel = [(PersistentStore *)self managedObjectModel];
  _newLegacyManagedObjectModel = [(PersistentStore *)self _newLegacyManagedObjectModel];
  if (!_newLegacyManagedObjectModel)
  {
    v22 = +[SSLogConfig sharedDaemonConfig];
    if (!v22)
    {
      v22 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v22 shouldLog];
    if ([v22 shouldLogToDisk])
    {
      LODWORD(v24) = shouldLog | 2;
    }

    else
    {
      LODWORD(v24) = shouldLog;
    }

    oSLogObject = [v22 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v46 = 138412290;
      v47 = objc_opt_class();
      v26 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not load old model for migration", &v46, 12);
LABEL_36:
      v21 = v26;
      if (!v26)
      {
        goto LABEL_61;
      }

      [NSString stringWithCString:v26 encoding:4];
      free(v21);
      SSFileLog();
    }

LABEL_38:
    LOBYTE(v21) = 0;
    goto LABEL_61;
  }

  v7 = [NSMappingModel inferredMappingModelForSourceModel:_newLegacyManagedObjectModel destinationModel:managedObjectModel error:&v45];
  if (!v7)
  {
    v27 = +[SSLogConfig sharedDaemonConfig];
    if (!v27)
    {
      v27 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v27 shouldLog];
    if ([v27 shouldLogToDisk])
    {
      LODWORD(v29) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v29) = shouldLog2;
    }

    oSLogObject2 = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v29;
    }

    else
    {
      v29 &= 2u;
    }

    if (v29)
    {
      v31 = objc_opt_class();
      v46 = 138412546;
      v47 = v31;
      v48 = 2112;
      v49 = v45;
      v26 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not create inferred mapping model: %@", &v46, 22);
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v8 = v7;
  migrationCopy = migration;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v10 = [(NSURL *)databaseFileURL URLByAppendingPathExtension:@"migrated"];
  v11 = objc_alloc_init(NSFileManager);
  [v11 removeItemAtURL:v10 error:0];
  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v13) = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    LODWORD(v13) = v13 | 2;
  }

  oSLogObject3 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (v13)
  {
    v15 = objc_opt_class();
    v46 = 138412546;
    v47 = v15;
    v48 = 2112;
    v49 = databaseFileURL;
    v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Performing lightweight migration for %@", &v46, 22);
    if (v16)
    {
      v17 = v16;
      v18 = [NSString stringWithCString:v16 encoding:4];
      free(v17);
      v42 = v18;
      SSFileLog();
    }
  }

  registeredStoreTypes = [objc_alloc(objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator registeredStoreTypes];
  if (([registeredStoreTypes migrateStoreFromURL:databaseFileURL type:NSSQLiteStoreType options:0 withMappingModel:v8 toDestinationURL:v10 destinationType:NSSQLiteStoreType destinationOptions:0 error:&v45] & 1) == 0)
  {
    v32 = +[SSLogConfig sharedDaemonConfig];
    v20 = v11;
    if (!v32)
    {
      v32 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v33) = [v32 shouldLog];
    if ([v32 shouldLogToDisk])
    {
      LODWORD(v33) = v33 | 2;
    }

    oSLogObject4 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v33;
    }

    else
    {
      v33 &= 2u;
    }

    migration = migrationCopy;
    if (!v33)
    {
      goto LABEL_59;
    }

    v35 = objc_opt_class();
    v46 = 138412546;
    v47 = v35;
    v48 = 2112;
    v49 = v45;
    LODWORD(v43) = 22;
    v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Could not migrate: %@", &v46, v43);
    goto LABEL_57;
  }

  v20 = v11;
  [v11 removeItemAtURL:databaseFileURL error:0];
  if (([v11 moveItemAtURL:v10 toURL:databaseFileURL error:&v45] & 1) == 0)
  {
    v37 = +[SSLogConfig sharedDaemonConfig];
    if (!v37)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v38) = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      LODWORD(v38) = v38 | 2;
    }

    oSLogObject5 = [v37 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v38;
    }

    else
    {
      v38 &= 2u;
    }

    migration = migrationCopy;
    if (!v38)
    {
      goto LABEL_59;
    }

    v40 = objc_opt_class();
    v46 = 138412546;
    v47 = v40;
    v48 = 2112;
    v49 = v45;
    LODWORD(v43) = 22;
    v36 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Could not move migrated store: %@", &v46, v43);
LABEL_57:
    v21 = v36;
    if (!v36)
    {
      goto LABEL_60;
    }

    [NSString stringWithCString:v36 encoding:4];
    free(v21);
    SSFileLog();
LABEL_59:
    LOBYTE(v21) = 0;
    goto LABEL_60;
  }

  LOBYTE(v21) = 1;
  migration = migrationCopy;
LABEL_60:

LABEL_61:
  if (migration)
  {
    *migration = v45;
  }

  return v21;
}

- (BOOL)resetStore:(id *)store
{
  v27 = 0;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v6 = databaseFileURL;
  if (self->_storeCoordinator)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = shouldLog | 2;
    }

    else
    {
      LODWORD(v9) = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v28 = 138412546;
      v29 = objc_opt_class();
      v30 = 2112;
      p_isa = &v6->super.isa;
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Destroy persistent store: %@", &v28, 22);
      if (v11)
      {
        v12 = v11;
        v13 = [NSString stringWithCString:v11 encoding:4];
        free(v12);
        v26 = v13;
        SSFileLog();
      }
    }

    v14 = [(NSPersistentStoreCoordinator *)self->_storeCoordinator destroyPersistentStoreAtURL:v6 withType:NSSQLiteStoreType options:0 error:&v27, v26];
    if (store)
    {
LABEL_14:
      *store = v27;
    }
  }

  else
  {
    path = [(NSURL *)databaseFileURL path];
    v17 = objc_alloc_init(NSFileManager);
    v18 = [(NSString *)path stringByAppendingPathExtension:@"bad"];
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v28 = 138412802;
      v29 = objc_opt_class();
      v30 = 2112;
      p_isa = path;
      v32 = 2112;
      v33 = v18;
      v23 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Moving %@ to %@", &v28, 32);
      if (v23)
      {
        v24 = v23;
        v25 = [NSString stringWithCString:v23 encoding:4];
        free(v24);
        v26 = v25;
        SSFileLog();
      }
    }

    [v17 removeItemAtPath:v18 error:{0, v26}];
    v14 = [v17 moveItemAtPath:path toPath:v18 error:&v27];

    if (store)
    {
      goto LABEL_14;
    }
  }

  return v14;
}

- (BOOL)loadStoreCoordinatorWithOptions:(id)options error:(id *)error
{
  v50 = 0;
  managedObjectModel = [(PersistentStore *)self managedObjectModel];
  if (!managedObjectModel)
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog;
    }

    oSLogObject = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      goto LABEL_44;
    }

    v53 = 138412290;
    v54 = objc_opt_class();
    v25 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not load model", &v53, 12);
    if (!v25)
    {
      goto LABEL_44;
    }

    v26 = v25;
    [NSString stringWithCString:v25 encoding:4];
    free(v26);
LABEL_43:
    SSFileLog();
LABEL_44:
    if (error)
    {
      *error = v50;
    }

    return self->_storeCoordinator != 0;
  }

  v8 = managedObjectModel;
  databaseFileURL = [(PersistentStore *)self databaseFileURL];
  v10 = [NSFileManager ensureDirectoryExists:[(NSString *)[(NSURL *)databaseFileURL path] stringByDeletingLastPathComponent]];
  v11 = +[SSLogConfig sharedDaemonConfig];
  v12 = v11;
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v28) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v28) = shouldLog2;
    }

    oSLogObject2 = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v28;
    }

    else
    {
      v28 &= 2u;
    }

    if (!v28)
    {
      goto LABEL_44;
    }

    v53 = 138412546;
    v54 = objc_opt_class();
    v55 = 2112;
    v56 = databaseFileURL;
    v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not create directory for file: %@", &v53, 22);
    if (!v30)
    {
      goto LABEL_44;
    }

    v31 = v30;
    [NSString stringWithCString:v30 encoding:4];
    free(v31);
    goto LABEL_43;
  }

  if (!v11)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    LODWORD(v14) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v14) = shouldLog3;
  }

  oSLogObject3 = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v14 = v14;
  }

  else
  {
    v14 &= 2u;
  }

  if (v14)
  {
    v53 = 138412546;
    v54 = objc_opt_class();
    v55 = 2112;
    v56 = databaseFileURL;
    v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Loading persistent store: %@", &v53, 22);
    if (v16)
    {
      v17 = v16;
      [NSString stringWithCString:v16 encoding:4];
      free(v17);
      SSFileLog();
    }
  }

  v18 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v8];
  v19 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{NSFileProtectionCompleteUntilFirstUserAuthentication, NSPersistentStoreFileProtectionKey, 0}];
  v20 = v19;
  if (options)
  {
    [v19 addEntriesFromDictionary:options];
  }

  if (([objc_msgSend(v20 objectForKeyedSubscript:{NSPersistentStoreFileProtectionKey), "isEqualToString:", NSFileProtectionNone}] & 1) != 0 || MKBDeviceUnlockedSinceBoot())
  {
    if ([v18 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:databaseFileURL options:v20 error:&v50])
    {
      goto LABEL_19;
    }

    if (!ISErrorIsEqual())
    {
      goto LABEL_62;
    }

    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      LODWORD(v35) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v35) = shouldLog4;
    }

    oSLogObject4 = [v33 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
    {
      v35 = v35;
    }

    else
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v37 = objc_opt_class();
      v53 = 138412290;
      v54 = v37;
      LODWORD(v49) = 12;
      v38 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, oSLogObject4, 1, "%@: Detected incompatible model, attempting migration", &v53, v49);
      if (v38)
      {
        v39 = v38;
        v40 = [NSString stringWithCString:v38 encoding:4];
        free(v39);
        v48 = v40;
        SSFileLog();
      }
    }

    if (-[PersistentStore performLightweightMigration:](self, "performLightweightMigration:", &v50, v48) && [v18 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:databaseFileURL options:0 error:&v50])
    {
LABEL_19:

      self->_storeCoordinator = v18;
    }

    else
    {
LABEL_62:
      v41 = +[SSLogConfig sharedDaemonConfig];
      if (!v41)
      {
        v41 = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [v41 shouldLog];
      if ([v41 shouldLogToDisk])
      {
        LODWORD(v43) = shouldLog5 | 2;
      }

      else
      {
        LODWORD(v43) = shouldLog5;
      }

      oSLogObject5 = [v41 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v43;
      }

      else
      {
        v43 &= 2u;
      }

      if (v43)
      {
        v45 = objc_opt_class();
        v53 = 138412546;
        v54 = v45;
        v55 = 2112;
        v56 = v50;
        LODWORD(v49) = 22;
        v46 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Could not add persistent store: %@", &v53, v49);
        if (v46)
        {
          v47 = v46;
          [NSString stringWithCString:v46 encoding:4];
          free(v47);
          SSFileLog();
        }
      }
    }

    goto LABEL_44;
  }

  if (error)
  {
    v51 = NSSQLiteErrorDomain;
    v52 = &off_10034BE98;
    *error = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:[NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1]];
  }

  return 0;
}

- (id)managedObjectModel
{
  if (!self->_model)
  {
    v3 = +[SSLogConfig sharedDaemonConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      LODWORD(v5) = shouldLog | 2;
    }

    else
    {
      LODWORD(v5) = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v5 = v5;
    }

    else
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v22 = 138412546;
      v23 = objc_opt_class();
      v24 = 2112;
      modelFileURL = [(PersistentStore *)self modelFileURL];
      v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Loading model: %@", &v22, 22);
      if (v7)
      {
        v8 = v7;
        v9 = [NSString stringWithCString:v7 encoding:4];
        free(v8);
        v20 = v9;
        SSFileLog();
      }
    }

    v10 = [[NSManagedObjectModel alloc] initWithContentsOfURL:{-[PersistentStore modelFileURL](self, "modelFileURL")}];
    self->_model = v10;
    if (!v10)
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        LODWORD(v14) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v14) = shouldLog2;
      }

      oSLogObject2 = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v16 = objc_opt_class();
        modelFileURL2 = [(PersistentStore *)self modelFileURL];
        v22 = 138412546;
        v23 = v16;
        v24 = 2112;
        modelFileURL = modelFileURL2;
        LODWORD(v21) = 22;
        v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not load model: %@", &v22, v21);
        if (v18)
        {
          v19 = v18;
          [NSString stringWithCString:v18 encoding:4];
          free(v19);
          SSFileLog();
        }
      }
    }
  }

  return self->_model;
}

- (id)_baseFilePath
{
  v2 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];

  return [v2 stringByAppendingPathComponent:@"com.apple.itunesstored"];
}

- (BOOL)_loadStoreCoordinatorWithIntegrityCheck:(BOOL)check error:(id *)error
{
  v6 = 0;
  v10 = 0;
  if (check)
  {
    v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNull null](NSNull, "null"), @"integrity_check", 0}];
    v6 = [[NSDictionary alloc] initWithObjectsAndKeys:{v7, NSSQLitePragmasOption, 0}];
  }

  if ([(PersistentStore *)self loadStoreCoordinatorWithOptions:v6 error:&v10])
  {
    v8 = 1;
  }

  else if (ISErrorIsEqual() && [objc_msgSend(objc_msgSend(v10 "userInfo")] == 23)
  {
    v8 = 0;
  }

  else
  {
    [(PersistentStore *)self resetStore:0];
    v8 = [(PersistentStore *)self loadStoreCoordinatorWithOptions:v6 error:&v10];
  }

  if (error)
  {
    *error = v10;
  }

  return v8;
}

- (id)_newLegacyManagedObjectModel
{
  v3 = [(NSDictionary *)[NSPersistentStoreCoordinator metadataForPersistentStoreOfType:[(PersistentStore *)self databaseFileURL] URL:0 options:0 error:?], "objectForKey:", @"NSStoreModelVersionHashes"];
  if (v3)
  {
    v4 = v3;
    legacyModelVersionIdentifiers = [(PersistentStoreConfiguration *)self->_configuration legacyModelVersionIdentifiers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(NSArray *)legacyModelVersionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(legacyModelVersionIdentifiers);
          }

          v10 = [[NSManagedObjectModel alloc] initWithContentsOfURL:{-[NSURL URLByAppendingPathExtension:](-[NSURL URLByAppendingPathComponent:](-[PersistentStore modelFileURL](self, "modelFileURL"), "URLByAppendingPathComponent:", *(*(&v13 + 1) + 8 * v9)), "URLByAppendingPathExtension:", @"mom"}];
          if ([objc_msgSend(v10 "entityVersionHashesByName")])
          {
            v11 = v10;

            if (v11)
            {
              return v11;
            }
          }

          else
          {
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)legacyModelVersionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return 0;
}

@end