@interface BCDatabase
- (BCDatabase)initWithDatabasePath:(id)path;
- (id)databaseURL;
- (id)model;
- (id)newManagedObjectContext;
- (id)persistentStoreCoordinator;
- (void)dealloc;
@end

@implementation BCDatabase

- (BCDatabase)initWithDatabasePath:(id)path
{
  v6.receiver = self;
  v6.super_class = BCDatabase;
  v4 = [(BCDatabase *)&v6 init];
  if (v4)
  {
    v4->_path = path;
  }

  return v4;
}

- (void)dealloc
{
  self->_psc = 0;

  self->_path = 0;
  v3.receiver = self;
  v3.super_class = BCDatabase;
  [(BCDatabase *)&v3 dealloc];
}

- (id)model
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v4)
  {
    sub_13774();
  }

  v5 = [NSManagedObjectModel mergedModelFromBundles:[NSArray arrayWithObject:v4]];
  if (!v5)
  {
    sub_137E4(a2, self, v4);
  }

  return v5;
}

- (id)databaseURL
{
  if (![(NSString *)self->_path length])
  {
    sub_1384C();
  }

  path = self->_path;

  return [NSURL fileURLWithPath:path isDirectory:0];
}

- (id)persistentStoreCoordinator
{
  result = self->_psc;
  if (!result)
  {
    v5 = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:1], NSMigratePersistentStoresAutomaticallyOption, [NSNumber numberWithBool:1], NSInferMappingModelAutomaticallyOption, NSFileProtectionNone, NSPersistentStoreFileProtectionKey, 0];
    model = [(BCDatabase *)self model];
    if (!model)
    {
      sub_138A4();
    }

    self->_psc = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
    databaseURL = [(BCDatabase *)self databaseURL];
    if (!databaseURL)
    {
      sub_138FC();
    }

    while (1)
    {
      v24 = 0;
      if ([(NSPersistentStoreCoordinator *)self->_psc addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:databaseURL options:v5 error:&v24])
      {
        break;
      }

      v9 = v24;
      v10 = BCDefaultLog(0, v8);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          *buf = 138412290;
          v28 = v24;
          _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed to addPersistentStoreWithType: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v11)
        {
          sub_13954(&v22, v23, v10);
        }

        v24 = [NSError errorWithDomain:NSCocoaErrorDomain code:-1 userInfo:0];
      }

      v21 = 0;
      v12 = [(NSPersistentStoreCoordinator *)self->_psc _destroyPersistentStoreAtURL:databaseURL withType:NSSQLiteStoreType options:0 error:&v21];
      if ((v12 & 1) == 0)
      {
        v14 = v21;
        v15 = BCDefaultLog(v12, v13);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (v14)
        {
          if (v16)
          {
            *buf = 138412290;
            v28 = v21;
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to destroyPersistentStoreAtURL: %@", buf, 0xCu);
          }
        }

        else if (v16)
        {
          sub_13994(&v19, v20, v15);
        }

        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"BCDatabase.m" description:111, @"_destroyPersistentStoreAtURL failed: %@ -- URL: %@", self, databaseURL];
      }

      if (![(BCDatabase *)self shouldRetryAddingPersistentStoreAfterError:v24])
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"BCDatabase.m" description:116, @"invalid Persistent Store: %@ -- URL: %@", self, databaseURL];
        break;
      }
    }

    v17 = objc_alloc_init(NSFileManager);
    v18 = [v17 attributesOfItemAtPath:objc_msgSend(databaseURL error:{"path"), 0}];
    if (v18)
    {
      if (([objc_msgSend(v18 "fileOwnerAccountName")] & 1) == 0)
      {
        v25[0] = NSFileOwnerAccountName;
        v25[1] = NSFileGroupOwnerAccountName;
        v26[0] = @"mobile";
        v26[1] = @"mobile";
        [v17 setAttributes:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary ofItemAtPath:"dictionaryWithObjects:forKeys:count:" error:{v26, v25, 2), objc_msgSend(databaseURL, "path"), 0}];
      }
    }

    return self->_psc;
  }

  return result;
}

- (id)newManagedObjectContext
{
  if (![(BCDatabase *)self persistentStoreCoordinator])
  {
    return 0;
  }

  v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  [v3 setPersistentStoreCoordinator:{-[BCDatabase persistentStoreCoordinator](self, "persistentStoreCoordinator")}];
  [v3 setUndoManager:0];
  return v3;
}

@end