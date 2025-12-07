@interface NSSQLiteInPlaceMigrationManager
- (BOOL)migrateStoreFromURL:(id)l type:(id)type options:(id)options withMappingModel:(id)model toDestinationURL:(id)rL destinationType:(id)destinationType destinationOptions:(id)destinationOptions error:(id *)self0;
- (void)dealloc;
@end

@implementation NSSQLiteInPlaceMigrationManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSSQLiteInPlaceMigrationManager;
  [(NSMigrationManager *)&v2 dealloc];
}

- (BOOL)migrateStoreFromURL:(id)l type:(id)type options:(id)options withMappingModel:(id)model toDestinationURL:(id)rL destinationType:(id)destinationType destinationOptions:(id)destinationOptions error:(id *)self0
{
  v94 = *MEMORY[0x1E69E9840];
  if (([l isEqual:rL] & 1) == 0)
  {
    if ([rL isFileURL])
    {
      memset(&v93, 0, sizeof(v93));
      if (!stat([objc_msgSend(rL "path")], &v93) && v93.st_size >= 1)
      {
        if (error)
        {
          v16 = MEMORY[0x1E696ABC0];
          v91 = *MEMORY[0x1E696A368];
          path = [rL path];
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&path forKeys:&v91 count:1];
          v18 = 0;
          *error = [v16 errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:v17];
        }

        else
        {
          v18 = 0;
        }

        return v18 & 1;
      }
    }
  }

  v75 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v19 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self sourceModel]];
  v20 = objc_msgSend_valueForKey_(options);
  [(NSPersistentStoreCoordinator *)v19 _setIsMigrating:?];
  if (v20)
  {
    [(NSPersistentStoreCoordinator *)v19 setCodableAdapterRegistry:v20];
  }

  v78 = v19;
  v21 = [l isEqual:rL];
  v81 = 0;
  v82 = 0;
  rLCopy = rL;
  v22 = [destinationOptions mutableCopy];
  v23 = MEMORY[0x1E695E118];
  [v22 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
  [v22 setObject:v23 forKey:@"NSPersistentStoreUnlinkDestroyOption"];
  lCopy = l;
  if ((v21 & 1) == 0)
  {
    lCopy = rLCopy;
    if (![(NSPersistentStoreCoordinator *)v78 replacePersistentStoreAtURL:rLCopy destinationOptions:destinationOptions withPersistentStoreFromURL:l sourceOptions:options storeType:type error:&v82])
    {
      v29 = 0;
      v30 = 0;
      v79 = 0;
      v18 = 0;
LABEL_21:
      v26 = 0.0;
LABEL_22:
      v31 = 1;
      goto LABEL_23;
    }
  }

  v79 = v21 ^ 1;
  if (![@"SQLite" isEqualToString:type] || (objc_msgSend(@"SQLite", "isEqualToString:", destinationType) & 1) == 0)
  {

    v71 = MEMORY[0x1E695DF30];
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", model, @"mappingModel", 0}];
    objc_exception_throw([v71 exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSQLiteInPlaceMigrationManager requires that the source and destination stores to be NSSQLiteStoreType" userInfo:v72]);
  }

  if (([(NSMappingModel *)model _isInferredMappingModel]& 1) == 0)
  {
    if (v21)
    {
      v27 = MEMORY[0x1E696ABC0];
      v89 = @"sourceStore";
      lCopy2 = l;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&lCopy2 forKeys:&v89 count:1];
      v29 = 0;
      v30 = 0;
      v79 = 0;
      v18 = 0;
      v82 = [v27 errorWithDomain:*MEMORY[0x1E696A250] code:134182 userInfo:v28];
    }

    else
    {
      v80.receiver = self;
      v80.super_class = NSSQLiteInPlaceMigrationManager;
      v79 = 1;
      v18 = [(NSMigrationManager *)&v80 migrateStoreFromURL:lCopy type:type options:options withMappingModel:model toDestinationURL:rLCopy destinationType:destinationType destinationOptions:destinationOptions error:&v82];
      v29 = 0;
      v30 = 0;
    }

    goto LABEL_21;
  }

  if (([NSMigrationManager _performSanityCheckForMapping:model fromSourceModel:[(NSMigrationManager *)self sourceModel] toDestinationModel:[(NSMigrationManager *)self destinationModel]]& 1) == 0)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", model, @"mappingModel", 0}];
    objc_exception_throw([v73 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatch between mapping and source/destination models" userInfo:v74]);
  }

  if (+[NSMappingModel migrationDebugLevel]< 1)
  {
    v26 = 0.0;
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v26 = v25;
  }

  if (destinationOptions)
  {
    v39 = [destinationOptions objectForKey:@"NSSQLitePragmasOption"];
    v40 = [destinationOptions mutableCopy];
    if (v39)
    {
      v41 = [v39 mutableCopy];
      [v41 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
    }

    else
    {
      v87 = @"journal_mode";
      null = [MEMORY[0x1E695DFB0] null];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&null forKeys:&v87 count:1];
    }

    [v40 setObject:v41 forKey:@"NSSQLitePragmasOption"];
  }

  else
  {
    v85 = @"NSSQLitePragmasOption";
    v83 = @"journal_mode";
    null2 = [MEMORY[0x1E695DFB0] null];
    v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&null2 forKeys:&v83 count:1];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
  }

  v42 = [(NSPersistentStoreCoordinator *)v78 addPersistentStoreWithType:@"SQLite" configuration:0 URL:lCopy options:v40 error:&v81];

  if (!v42)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open the store", @"reason", v81, *MEMORY[0x1E696AA08], 0}];
      v55 = [v53 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v54];
LABEL_64:
      v29 = 0;
      v30 = 0;
      v18 = 0;
      v82 = v55;
      goto LABEL_22;
    }

LABEL_65:
    v29 = 0;
    v30 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  destinationModel = [(NSMigrationManager *)self destinationModel];
  [(NSManagedObjectModel *)destinationModel _setIsEditable:0];
  v44 = [[NSSQLModel alloc] initWithManagedObjectModel:destinationModel];
  if (!v44)
  {
    if (error)
    {
      v56 = MEMORY[0x1E696ABC0];
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Invalid destination data model", @"reason", 0}];
      v55 = [v56 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v57];
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v29 = v44;
  v30 = [[_NSSQLiteStoreMigrator alloc] initWithStore:v42 destinationModel:v44 mappingModel:model];
  [v30 setDestinationConfigurationForCloudKitValidation:{-[NSMigrationManager destinationConfigurationForCloudKitValidation](self, "destinationConfigurationForCloudKitValidation")}];
  if (self)
  {
    v46 = (*&self->super._migrationManagerFlags >> 3) & 1;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  LOBYTE(v46) = 0;
  if (v30)
  {
LABEL_50:
    v30[218] = v46;
  }

LABEL_51:
  if (!self)
  {
    stageLabel = 0;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  stageLabel = self->super._stageLabel;
  if (v30)
  {
LABEL_53:
    objc_setProperty_nonatomic_copy(v30, v45, stageLabel, 232);
  }

LABEL_54:
  v48 = [(_NSSQLiteStoreMigrator *)v30 performMigration:?];
  v49 = v48;
  if (error)
  {
    v50 = v48;
  }

  else
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0)
  {
    v51 = [objc_msgSend(v81 "userInfo")];
    if (v51)
    {
      v52 = [@"Cannot migrate store in-place: " stringByAppendingString:v51];
    }

    else
    {
      v52 = @"Cannot migrate store in-place";
    }

    v64 = MEMORY[0x1E696ABC0];
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v52, @"reason", v81, *MEMORY[0x1E696AA08], l, @"sourceURL", l, @"destinationURL", 0}];
    v82 = [v64 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v65];
  }

  if (self)
  {
    *&self->super._migrationManagerFlags |= 4u;
  }

  [(_NSSQLiteStoreMigrator *)v30 _disconnect];
  v31 = 0;
  v18 = 0;
  v79 = v49;
LABEL_23:
  v32 = v82;

  [(NSPersistentStoreCoordinator *)v78 _removeAllPersistentStores:0];
  if (v79)
  {
    if (+[NSMappingModel migrationDebugLevel]< 1)
    {
      goto LABEL_94;
    }

    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v93.st_dev = 134217984;
          *&v93.st_mode = v35 - v26;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) in-place migration completed successfully in %2.2f seconds\n", &v93, 0xCu);
        }
      }

      else
      {
        v58 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v93.st_dev = 134217984;
          *&v93.st_mode = v59 - v26;
          _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) in-place migration completed successfully in %2.2f seconds\n", &v93, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v61 = 1;
    }

    else
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v61 = 4;
    }

    _NSCoreDataLog_console(v61, "(migration) in-place migration completed successfully in %2.2f seconds", v60 - v26);
  }

  else
  {
    if (+[NSMappingModel migrationDebugLevel]< 1)
    {
      if (([l isEqual:rLCopy] & 1) == 0)
      {
        [(NSPersistentStoreCoordinator *)v78 _destroyPersistentStoreAtURL:rLCopy withType:@"SQLite" options:v22 error:0];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtPath:objc_msgSend(rLCopy error:{"path"), 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-shm", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-journal", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-wal", 0}];
      }

      goto LABEL_94;
    }

    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          if (v81)
          {
            v37 = [v81 description];
          }

          else
          {
            v37 = @"unknown error";
          }

          v93.st_dev = 138412546;
          *&v93.st_mode = rLCopy;
          WORD2(v93.st_ino) = 2112;
          *(&v93.st_ino + 6) = v37;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)\n", &v93, 0x16u);
        }
      }

      else
      {
        v62 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          if (v81)
          {
            v63 = [v81 description];
          }

          else
          {
            v63 = @"unknown error";
          }

          v93.st_dev = 138412546;
          *&v93.st_mode = rLCopy;
          WORD2(v93.st_ino) = 2112;
          *(&v93.st_ino + 6) = v63;
          _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)\n", &v93, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      if (v81)
      {
        v66 = [v81 description];
      }

      else
      {
        v66 = @"unknown error";
      }

      v67 = 1;
    }

    else
    {
      if (v81)
      {
        v66 = [v81 description];
      }

      else
      {
        v66 = @"unknown error";
      }

      v67 = 4;
    }

    _NSCoreDataLog_console(v67, "(migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)", rLCopy, v66);
  }

  objc_autoreleasePoolPop(v33);
LABEL_94:

  [v75 drain];
  v68 = 0;
  v69 = v82;
  if (error && v82)
  {
    *error = v82;
  }

  if ((v31 | 2) == 2)
  {
    v18 = v79;
  }

  return v18 & 1;
}

@end