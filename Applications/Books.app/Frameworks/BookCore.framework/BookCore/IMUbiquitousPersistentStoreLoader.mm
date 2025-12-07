@interface IMUbiquitousPersistentStoreLoader
+ (id)databaseFolderURL;
- (BOOL)storeFileExists;
- (IMUbiquitousPersistentStoreLoader)init;
- (IMUbiquitousPersistentStoreLoader)initWithIdentifier:(id)identifier;
- (IMUbiquitousPersistentStoreLoader)initWithPersistentStoreURL:(id)l;
- (NSURL)storeURL;
- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator;
- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator withType:(id)type configuration:(id)configuration URL:(id)l options:(id)options;
- (void)deletePersistentStore;
@end

@implementation IMUbiquitousPersistentStoreLoader

- (IMUbiquitousPersistentStoreLoader)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = IMUbiquitousPersistentStoreLoader;
  v5 = [(IMUbiquitousPersistentStoreLoader *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (IMUbiquitousPersistentStoreLoader)initWithPersistentStoreURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = IMUbiquitousPersistentStoreLoader;
  v6 = [(IMUbiquitousPersistentStoreLoader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistentStoreURL, l);
  }

  return v7;
}

- (IMUbiquitousPersistentStoreLoader)init
{
  v3 = NSStringFromSelector("initWithIdentifier:");
  v4 = NSStringFromSelector("initWithPersistentStoreURL:");
  [NSException raise:NSGenericException format:@"Please use one of the defaultInitializers {%@} or {%@}", v3, v4];

  return 0;
}

- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [NSNumber numberWithBool:1];
  [v5 setValue:v6 forKey:NSMigratePersistentStoresAutomaticallyOption];

  v7 = [NSNumber numberWithBool:1];
  [v5 setValue:v7 forKey:NSInferMappingModelAutomaticallyOption];

  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  v9 = [(IMUbiquitousPersistentStoreLoader *)self addPersistentStoreToPersistentStoreCoordinator:coordinatorCopy withType:NSSQLiteStoreType configuration:0 URL:storeURL options:v5];
  if (!v9)
  {
    v10 = BCIMLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v15 = "[IMUbiquitousPersistentStoreLoader addPersistentStoreToPersistentStoreCoordinator:]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Database/BCUbiquitousPersistentStoreLoader.m";
      v18 = 1024;
      v19 = 78;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v12 = BCIMLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v15 = coordinatorCopy;
      v16 = 2112;
      v17 = storeURL;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "@Failed to add persistentStore at URL: %@ Error: %@ -- Crashing to avoid data loss", buf, 0x16u);
    }

    [NSException raise:NSGenericException format:@"%@ failed to add persistentStore to PSC: %@ at URL: %@", @"self", coordinatorCopy, storeURL];
  }

  return v9;
}

- (id)addPersistentStoreToPersistentStoreCoordinator:(id)coordinator withType:(id)type configuration:(id)configuration URL:(id)l options:(id)options
{
  coordinatorCopy = coordinator;
  typeCopy = type;
  configurationCopy = configuration;
  lCopy = l;
  optionsCopy = options;
  v92 = 0;
  v17 = [coordinatorCopy addPersistentStoreWithType:typeCopy configuration:configurationCopy URL:lCopy options:optionsCopy error:&v92];
  v18 = v92;
  v76 = v18;
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    object = self;
    v71 = configurationCopy;
    v74 = optionsCopy;
    v72 = typeCopy;
    v20 = BCIMLog(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v96 = @"self";
      v97 = 2112;
      v98 = coordinatorCopy;
      v99 = 2112;
      v100 = lCopy;
      v101 = 2112;
      v102 = v76;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%@ failed to add persistentStore to PSC: %@ at URL: %@ -- Error: %@", buf, 0x2Au);
    }

    v73 = coordinatorCopy;

    v75 = lCopy;
    path = [(__CFString *)lCopy path];
    v22 = +[NSFileManager defaultManager];
    stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
    v80 = v22;
    v24 = [v22 enumeratorAtPath:stringByDeletingLastPathComponent];
    v81 = objc_opt_new();
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v88 objects:v94 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v89;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v89 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:*(*(&v88 + 1) + 8 * i)];
          if ([v30 hasPrefix:path] && (objc_msgSend(v30, "hasSuffix:", @"bak") & 1) == 0)
          {
            v31 = [NSURL fileURLWithPath:v30];
            [v81 addObject:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v88 objects:v94 count:16];
      }

      while (v27);
    }

    v32 = [v81 count];
    v33 = BCIMLog(v32);
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "There is an existing persistentStore. Maybe the files are somehow corrupted -- Attempting Move and Retry", buf, 2u);
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v79 = [NSString stringWithFormat:@"%ld.%@", v35, @"bak"];
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      obj = v81;
      v36 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v85;
        v39 = v76;
        while (2)
        {
          v40 = 0;
          v41 = v39;
          do
          {
            if (*v85 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v84 + 1) + 8 * v40);
            v43 = [v42 URLByAppendingPathExtension:v79];
            v83 = v41;
            v44 = [v80 moveItemAtURL:v42 toURL:v43 error:&v83];
            v39 = v83;

            if (!v44)
            {

              v46 = BCIMLog(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                sub_1EAB54();
              }

              v17 = 0;
              typeCopy = v72;
              coordinatorCopy = v73;
              configurationCopy = v71;
              goto LABEL_49;
            }

            v40 = v40 + 1;
            v41 = v39;
          }

          while (v37 != v40);
          v37 = [obj countByEnumeratingWithState:&v84 objects:v93 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v39 = v76;
      }

      v63 = [(__CFString *)v75 URLByAppendingPathExtension:v79];
      v64 = BCIMLog(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v96 = v75;
        v97 = 2112;
        v98 = v63;
        _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "Successfully moved existing persistingStore from URL: %@ to URL: %@", buf, 0x16u);
      }

      obja = v63;

      v65 = objc_getAssociatedObject(object, @"kIMDidRetryAddPersistentStore");
      bOOLValue = [v65 BOOLValue];
      typeCopy = v72;
      coordinatorCopy = v73;
      configurationCopy = v71;
      if (bOOLValue)
      {
        v67 = BCIMLog(bOOLValue);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          sub_1EABBC(v67);
        }

        v17 = 0;
      }

      else
      {
        v68 = [NSNumber numberWithBool:1];

        v65 = v68;
        objc_setAssociatedObject(object, @"kIMDidRetryAddPersistentStore", v68, &stru_2E8.segname[9]);
        v17 = [(IMUbiquitousPersistentStoreLoader *)object addPersistentStoreToPersistentStoreCoordinator:v73 withType:v72 configuration:v71 URL:v75 options:v74];
        if (v17)
        {
          objc_setAssociatedObject(object, @"kIMDidRetryAddPersistentStore", 0, &stru_2E8.segname[9]);
        }
      }

      v46 = obja;

LABEL_49:
      v52 = v39;
    }

    else
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1EAC00(v34);
      }

      path2 = [(__CFString *)lCopy path];
      v48 = [v80 isWritableFileAtPath:path2];

      typeCopy = v72;
      if (v48)
      {
        path3 = [(__CFString *)lCopy path];
        v82 = v76;
        v51 = [v80 attributesOfFileSystemForPath:path3 error:&v82];
        v52 = v82;

        v54 = BCIMLog(v53);
        v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
        coordinatorCopy = v73;
        v79 = v51;
        if (v51)
        {
          configurationCopy = v71;
          if (v55)
          {
            sub_1EACAC();
          }
        }

        else
        {
          configurationCopy = v71;
          if (v55)
          {
            sub_1EAD14(v54, v56, v57, v58, v59, v60, v61, v62);
          }
        }

        v17 = 0;
      }

      else
      {
        v79 = BCIMLog(v49);
        coordinatorCopy = v73;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          sub_1EAC44();
        }

        v17 = 0;
        v52 = v76;
        configurationCopy = v71;
      }
    }

    v19 = v52;
    optionsCopy = v74;
    lCopy = v75;
  }

  return v17;
}

- (BOOL)storeFileExists
{
  v3 = +[NSFileManager defaultManager];
  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  path = [storeURL path];
  v6 = [v3 fileExistsAtPath:path];

  return v6;
}

- (void)deletePersistentStore
{
  storeURL = [(IMUbiquitousPersistentStoreLoader *)self storeURL];
  v3 = +[NSFileManager defaultManager];
  path = [storeURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v10 = 0;
    v6 = [v3 removeItemAtURL:storeURL error:&v10];
    v7 = v10;
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      v9 = BCIMLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1EAD84();
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

+ (id)databaseFolderURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [NSURL fileURLWithPath:lastObject isDirectory:1];
  v5 = [v4 URLByAppendingPathComponent:@"storeFiles"];

  return v5;
}

- (NSURL)storeURL
{
  persistentStoreURL = self->_persistentStoreURL;
  if (!persistentStoreURL)
  {
    databaseFolderURL = [objc_opt_class() databaseFolderURL];
    v5 = +[NSFileManager defaultManager];
    path = [databaseFolderURL path];
    v16 = 0;
    v7 = [v5 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v16];
    v8 = v16;

    if ((v7 & 1) == 0)
    {
      v10 = BCIMLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1EADEC();
      }
    }

    storeName = [(IMUbiquitousPersistentStoreLoader *)self storeName];
    identifier = [(IMUbiquitousPersistentStoreLoader *)self identifier];
    v13 = [NSString stringWithFormat:@"%@_%@.sqlite", storeName, identifier];
    v14 = [databaseFolderURL URLByAppendingPathComponent:v13];
    [(IMUbiquitousPersistentStoreLoader *)self setPersistentStoreURL:v14];

    persistentStoreURL = self->_persistentStoreURL;
  }

  return persistentStoreURL;
}

@end