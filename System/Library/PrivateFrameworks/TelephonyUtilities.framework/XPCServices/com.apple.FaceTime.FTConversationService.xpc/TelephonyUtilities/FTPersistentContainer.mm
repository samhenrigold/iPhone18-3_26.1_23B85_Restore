@interface FTPersistentContainer
- (FTPersistentContainer)initWithStoreType:(int64_t)type;
- (NSManagedObjectContext)managedObjectContext;
- (void)loadPersistentStoresWithCompletionHandler:(id)handler;
@end

@implementation FTPersistentContainer

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (!managedObjectContext)
  {
    newBackgroundContext = [(FTPersistentContainer *)self newBackgroundContext];
    v5 = self->_managedObjectContext;
    self->_managedObjectContext = newBackgroundContext;

    managedObjectContext = self->_managedObjectContext;
  }

  return managedObjectContext;
}

- (FTPersistentContainer)initWithStoreType:(int64_t)type
{
  v25.receiver = self;
  v25.super_class = FTPersistentContainer;
  v4 = [(FTPersistentContainer *)&v25 initWithName:@"FaceTime"];
  if (v4)
  {
    v5 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v4->_userConfiguration;
    v4->_userConfiguration = v5;

    if (type == 1)
    {
      v22 = FTCServiceLog(v7, v8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C688();
      }

      v12 = +[NSPersistentStoreDescription inMemoryPersistentStoreDescription];
    }

    else if (type)
    {
      v12 = 0;
    }

    else
    {
      v9 = FTCServiceLog(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C6BC();
      }

      v11 = FTGetUserDataStoreClassCFileURL(v10);
      v12 = [NSPersistentStoreDescription persistentStoreDescriptionWithURL:v11];

      v15 = FTCServiceLog(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C6F0();
      }

      v16 = [v12 setOption:NSFileProtectionCompleteUntilFirstUserAuthentication forKey:NSPersistentStoreFileProtectionKey];
      v18 = FTCServiceLog(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C724();
      }

      v19 = [v12 setValue:@"1" forPragmaNamed:@"secure_delete"];
      v21 = FTCServiceLog(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10000C758();
      }

      [v12 setShouldMigrateStoreAutomatically:1];
    }

    v26 = v12;
    v23 = [NSArray arrayWithObjects:&v26 count:1];
    [(FTPersistentContainer *)v4 setPersistentStoreDescriptions:v23];
  }

  return v4;
}

- (void)loadPersistentStoresWithCompletionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001890;
  v5[3] = &unk_1000183F0;
  selfCopy = self;
  handlerCopy = handler;
  v4.receiver = selfCopy;
  v4.super_class = FTPersistentContainer;
  v3 = handlerCopy;
  [(FTPersistentContainer *)&v4 loadPersistentStoresWithCompletionHandler:v5];
}

@end