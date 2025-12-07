@interface NSStoreMigrationPolicy
+ (id)destinationURLForMigrationSourceURL:(id)l createDocumentReplacementDirectory:(BOOL)directory error:(id *)error;
+ (id)migrationStoreOptionsFromStoreOptions:(uint64_t)options;
- (NSManagedObjectModel)_sourceModelForVersionHashes:(uint64_t)hashes withMetadata:(void *)metadata inBundles:(void *)bundles outPaths:;
- (id)_gatherDataAndPerformMigration:(id *)migration;
- (id)createMigrationManagerForSourceModel:(id)model destinationModel:(id)destinationModel error:(id *)error;
- (id)migrateStoreAtURL:(id)l withManager:(id)manager metadata:(id)metadata options:(id)options error:(id *)error;
- (id)setMigrationManager:(uint64_t)manager;
- (id)setSourceMetadata:(id *)result;
- (id)sourceModelForStoreAtURL:(id)l metadata:(id)metadata error:(id *)error;
- (void)dealloc;
- (void)resourceBundles;
- (void)setPersistentStoreCoordinator:(void *)coordinator sourceURL:(void *)l configuration:(void *)configuration metadata:(void *)metadata options:;
@end

@implementation NSStoreMigrationPolicy

- (void)dealloc
{
  self->_coordinator = 0;

  self->_sourceURL = 0;
  self->_sourceConfiguration = 0;

  self->_destinationConfiguration = 0;
  self->_sourceMetadata = 0;

  self->_sourceOptions = 0;
  self->_sourceModel = 0;

  self->_mappingModel = 0;
  self->_destinationURL = 0;

  self->_destinationType = 0;
  self->_destinationOptions = 0;

  self->_migrationManager = 0;
  self->_resourceBundles = 0;
  v3.receiver = self;
  v3.super_class = NSStoreMigrationPolicy;
  [(NSStoreMigrationPolicy *)&v3 dealloc];
}

- (NSManagedObjectModel)_sourceModelForVersionHashes:(uint64_t)hashes withMetadata:(void *)metadata inBundles:(void *)bundles outPaths:
{
  v50 = *MEMORY[0x1E69E9840];
  if (result)
  {
    context = objc_autoreleasePoolPush();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = [metadata countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v32)
    {
      obj = metadata;
      v8 = 0;
      v31 = *v43;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        if (v8)
        {
          break;
        }

        v10 = [objc_msgSend(*(*(&v42 + 1) + 8 * v9) pathsForResourcesOfType:@"mom" inDirectory:{0), "arrayByAddingObjectsFromArray:", objc_msgSend(*(*(&v42 + 1) + 8 * v9), "pathsForResourcesOfType:inDirectory:", @"momd", 0)}];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v11)
        {
          v12 = v11;
          v33 = v9;
          v13 = *v39;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v39 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v38 + 1) + 8 * i);
              if (([bundles containsObject:v15] & 1) == 0)
              {
                [bundles addObject:v15];
                v37 = 0;
                if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v37 == 1)
                {
                  v16 = [[NSManagedObjectModelBundle alloc] initWithPath:v15];
                  v8 = [(NSManagedObjectModelBundle *)v16 _modelForVersionHashes:a2];
                  v17 = v8;
                }

                else
                {
                  v8 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0]);
                }

                if (+[NSMappingModel migrationDebugLevel]>= 2)
                {
                  v18 = objc_autoreleasePoolPush();
                  _pflogInitialize(9);
                  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      log = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                      {
                        buf = 138412290;
                        v47 = v15;
                        _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: _sourceModelForVersionHashes: testing model at path '%@'\n", &buf, 0xCu);
                      }
                    }

                    else
                    {
                      loga = _PFLogGetLogStream(9);
                      if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
                      {
                        buf = 138412290;
                        v47 = v15;
                        _os_log_impl(&dword_18565F000, loga, OS_LOG_TYPE_INFO, "CoreData: debug: _sourceModelForVersionHashes: testing model at path '%@'\n", &buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v19 = 1;
                  }

                  else
                  {
                    v19 = 9;
                  }

                  _NSCoreDataLog_console(v19, "_sourceModelForVersionHashes: testing model at path '%@'", v15);
                  objc_autoreleasePoolPop(v18);
                }

                v20 = [(NSManagedObjectModel *)v8 isConfiguration:0 compatibleWithStoreMetadata:hashes];
                v21 = [_PFPersistentHistoryModel _hasTombstonesInUserInfo:v8];
                if (v20)
                {
                  if (v8)
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v9 = v33;
                  if (v22 == 1)
                  {
                    *&v8->_managedObjectModelFlags |= 0x10u;
                  }

                  if (+[NSMappingModel migrationDebugLevel]< 2)
                  {
                    goto LABEL_65;
                  }

                  v23 = objc_autoreleasePoolPush();
                  _pflogInitialize(9);
                  if (!_NSCoreDataIsLogEnabled(9) || _pflogging_enable_oslog < 1)
                  {
                    goto LABEL_61;
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
LABEL_56:
                      buf = 138412290;
                      v47 = v15;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   \t Choosing model at path '%@'\n", &buf, 0xCu);
                    }

LABEL_61:
                    if (_pflogging_catastrophic_mode)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v26 = 9;
                    }

                    _NSCoreDataLog_console(v26, "  \t Choosing model at path '%@'", v15);
                    objc_autoreleasePoolPop(v23);
LABEL_65:
                    v27 = v8;
                    goto LABEL_66;
                  }

                  v25 = _PFLogGetLogStream(9);
                  if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_61;
                  }

LABEL_60:
                  buf = 138412290;
                  v47 = v15;
                  _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: debug:   \t Choosing model at path '%@'\n", &buf, 0xCu);
                  goto LABEL_61;
                }

                if (v21)
                {
                  if (v8)
                  {
                    [(NSManagedObjectModel *)v8 _traverseTombstonesAndMark:?];
                  }

                  if ([(NSManagedObjectModel *)v8 isConfiguration:0 compatibleWithStoreMetadata:hashes])
                  {
                    v9 = v33;
                    if (+[NSMappingModel migrationDebugLevel]< 2)
                    {
                      goto LABEL_65;
                    }

                    v23 = objc_autoreleasePoolPush();
                    _pflogInitialize(9);
                    if (!_NSCoreDataIsLogEnabled(9) || _pflogging_enable_oslog < 1)
                    {
                      goto LABEL_61;
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      LogStream = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_56;
                      }

                      goto LABEL_61;
                    }

                    v25 = _PFLogGetLogStream(9);
                    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_60;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v8 = 0;
          v9 = v33;
        }

        else
        {
          v8 = 0;
        }

LABEL_66:
        if (++v9 == v32)
        {
          v32 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
          if (v32)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v28 = v8;
    objc_autoreleasePoolPop(context);
    return v8;
  }

  return result;
}

- (id)sourceModelForStoreAtURL:(id)l metadata:(id)metadata error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  v8 = [metadata objectForKey:@"NSStoreModelVersionHashes"];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
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
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via resourceBundles\n", buf, 2u);
        }
      }

      else
      {
        v11 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via resourceBundles\n", buf, 2u);
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

    _NSCoreDataLog_console(v12, "sourceModelForStoreAtURL: Testing models searched via resourceBundles");
    objc_autoreleasePoolPop(v9);
  }

  resourceBundles = [(NSStoreMigrationPolicy *)self resourceBundles];
  v14 = resourceBundles;
  if (resourceBundles)
  {
    array = [resourceBundles mutableCopy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
  }

  v16 = array;
  v17 = [MEMORY[0x1E695DFA8] set];
  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:metadata inBundles:v14 outPaths:v17];
  if (v18)
  {
    return v18;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v21 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v22 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via mainBundle\n", buf, 2u);
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v23, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via mainBundle\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v24 = 1;
    }

    else
    {
      v24 = 9;
    }

    _NSCoreDataLog_console(v24, "sourceModelForStoreAtURL: Testing models searched via mainBundle");
    objc_autoreleasePoolPop(v21);
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  if (mainBundle)
  {
    v26 = mainBundle;
    [v16 addObject:mainBundle];
    v84[0] = v26;
    v18 = -[NSStoreMigrationPolicy _sourceModelForVersionHashes:withMetadata:inBundles:outPaths:](self, v8, metadata, [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1], v17);
    if (v18)
    {
      return v18;
    }
  }

  if (self)
  {
    v27 = objc_msgSend_valueForKey_(self->_sourceMetadata);
  }

  else
  {
    v27 = 0;
  }

  if ([v27 isEqualToString:@"SQLite"])
  {
    if (+[NSMappingModel migrationDebugLevel]>= 2)
    {
      v28 = objc_autoreleasePoolPush();
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v29 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing model cached in database file\n", buf, 2u);
          }
        }

        else
        {
          v30 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing model cached in database file\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v31 = 1;
      }

      else
      {
        v31 = 9;
      }

      _NSCoreDataLog_console(v31, "sourceModelForStoreAtURL: Testing model cached in database file");
      objc_autoreleasePoolPop(v28);
    }

    v32 = self ? self->_sourceOptions : 0;
    v33 = [NSSQLCore cachedModelForPersistentStoreWithURL:l options:v32 error:0];
    if (v33)
    {
      v19 = v33;
      if (+[NSMappingModel migrationDebugLevel]>= 1)
      {
        v34 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v35 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              path = [l path];
              *buf = 138412290;
              v83 = path;
              _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error:   \t Choosing model from cache table in db at '%@'\n", buf, 0xCu);
            }
          }

          else
          {
            v47 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              path2 = [l path];
              *buf = 138412290;
              v83 = path2;
              _os_log_impl(&dword_18565F000, v47, OS_LOG_TYPE_INFO, "CoreData: debug:   \t Choosing model from cache table in db at '%@'\n", buf, 0xCu);
            }
          }
        }

        v49 = _pflogging_catastrophic_mode;
        path3 = [l path];
        v51 = 9;
        if (v49)
        {
          v51 = 1;
        }

        _NSCoreDataLog_console(v51, "  \t Choosing model from cache table in db at '%@'", path3);
        objc_autoreleasePoolPop(v34);
      }

      return v19;
    }
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
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
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via allBundles\n", buf, 2u);
        }
      }

      else
      {
        v39 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via allBundles\n", buf, 2u);
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

    _NSCoreDataLog_console(v40, "sourceModelForStoreAtURL: Testing models searched via allBundles");
    objc_autoreleasePoolPop(v37);
  }

  allBundles = [MEMORY[0x1E696AAE8] allBundles];
  [v16 addObjectsFromArray:allBundles];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    lCopy = l;
    v43 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        log = _PFLogGetLogStream(1);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = allBundles;
          _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: allBundles is %@\n", buf, 0xCu);
        }
      }

      else
      {
        loga = _PFLogGetLogStream(9);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = allBundles;
          _os_log_impl(&dword_18565F000, loga, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: allBundles is %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v44 = 1;
    }

    else
    {
      v44 = 9;
    }

    _NSCoreDataLog_console(v44, "sourceModelForStoreAtURL: allBundles is %@", allBundles);
    objc_autoreleasePoolPop(v43);
    l = lCopy;
  }

  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:metadata inBundles:allBundles outPaths:v17];
  if (v18)
  {
    return v18;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v45 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v46 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via allFrameworks\n", buf, 2u);
        }
      }

      else
      {
        v52 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via allFrameworks\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v53 = 1;
    }

    else
    {
      v53 = 9;
    }

    _NSCoreDataLog_console(v53, "sourceModelForStoreAtURL: Testing models searched via allFrameworks");
    objc_autoreleasePoolPop(v45);
  }

  allFrameworks = [MEMORY[0x1E696AAE8] allFrameworks];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    lCopy2 = l;
    v56 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        logb = _PFLogGetLogStream(1);
        if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = allFrameworks;
          _os_log_error_impl(&dword_18565F000, logb, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: allFrameworks is %@\n", buf, 0xCu);
        }
      }

      else
      {
        logc = _PFLogGetLogStream(9);
        if (os_log_type_enabled(logc, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v83 = allFrameworks;
          _os_log_impl(&dword_18565F000, logc, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: allFrameworks is %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v57 = 1;
    }

    else
    {
      v57 = 9;
    }

    _NSCoreDataLog_console(v57, "sourceModelForStoreAtURL: allFrameworks is %@", allFrameworks);
    objc_autoreleasePoolPop(v56);
    l = lCopy2;
  }

  [v16 addObjectsFromArray:allFrameworks];
  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:metadata inBundles:allFrameworks outPaths:v17];
  if (v18)
  {
    return v18;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v58 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(9))
    {
      if (_pflogging_catastrophic_mode)
      {
        v59 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: Last ditch review of models with skewed hashing\n", buf, 2u);
        }
      }

      else
      {
        v60 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v60, OS_LOG_TYPE_INFO, "CoreData: debug: Last ditch review of models with skewed hashing\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v61 = 1;
    }

    else
    {
      v61 = 9;
    }

    _NSCoreDataLog_console(v61, "Last ditch review of models with skewed hashing");
    objc_autoreleasePoolPop(v58);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v62 = [v17 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (v62)
  {
    v63 = v62;
    logd = l;
    v64 = *v78;
    while (2)
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v78 != v64)
        {
          objc_enumerationMutation(v17);
        }

        v66 = *(*(&v77 + 1) + 8 * i);
        buf[0] = 0;
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && buf[0] == 1)
        {
          v67 = [[NSManagedObjectModelBundle alloc] initWithPath:v66];
          v19 = [(NSManagedObjectModelBundle *)v67 _modelForVersionHashes:v8 inStyle:1];
          v68 = v19;
        }

        else
        {
          v19 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v66 isDirectory:0]);
        }

        if ([(NSManagedObjectModel *)v19 _isConfiguration:1 inStyle:metadata compatibleWithStoreMetadata:?])
        {
          v69 = v19;
          self->_workingWithSkewedSource = 1;
          v70 = [(NSDictionary *)self->_sourceMetadata mutableCopy];
          [v70 setValue:-[NSManagedObjectModel entityVersionHashesByName](v19 forKey:{"entityVersionHashesByName"), @"NSStoreModelVersionHashes"}];
          [(NSStoreMigrationPolicy *)&self->super.isa setSourceMetadata:v70];

          goto LABEL_137;
        }
      }

      v63 = [v17 countByEnumeratingWithState:&v77 objects:v81 count:16];
      if (v63)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_137:
    l = logd;
  }

  else
  {
    v19 = 0;
  }

  if (error && !v19)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134130 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Can't find model for source store", @"reason", l, @"URL", metadata, @"metadata", 0)}];
  }

  return v19;
}

- (void)resourceBundles
{
  if (result)
  {
    v1 = result;
    result = result[13];
    if (!result)
    {
      v2 = [v1[4] objectForKey:@"NSPersistentStoreCoordinatorResourceBundlesForMigration"];
      v3 = MEMORY[0x1E695E0F0];
      if (v2)
      {
        v4 = v2;
      }

      else
      {
        v4 = MEMORY[0x1E695E0F0];
      }

      v5 = [v1[4] objectForKey:@"_NSAutomaticMigrationResourceBundlesOption"];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }

      result = [v4 arrayByAddingObjectsFromArray:v6];
      v1[13] = result;
    }
  }

  return result;
}

- (id)setSourceMetadata:(id *)result
{
  if (result)
  {
    v3 = result;
    result = [result[6] isEqual:a2];
    if ((result & 1) == 0)
    {

      result = a2;
      v3[6] = result;
    }
  }

  return result;
}

- (id)createMigrationManagerForSourceModel:(id)model destinationModel:(id)destinationModel error:(id *)error
{
  migrationManagerClass = objc_opt_class();
  if (BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
  {
    goto LABEL_14;
  }

  v9 = self ? self->_mappingModel : 0;
  if (![(NSMappingModel *)v9 _isInferredMappingModel])
  {
    goto LABEL_14;
  }

  v10 = +[NSPersistentStoreCoordinator registeredStoreTypes];
  if (self)
  {
    v11 = objc_msgSend_valueForKey_(self->_sourceMetadata);
  }

  else
  {
    v11 = 0;
  }

  pointerValue = [(NSDictionary *)v10 objectForKey:v11];
  if (objc_opt_class() != pointerValue)
  {
    if (![pointerValue isNSValue])
    {
      goto LABEL_14;
    }

    pointerValue = [pointerValue pointerValue];
  }

  if (pointerValue)
  {
    [pointerValue migrationManagerClass];
    if (objc_opt_respondsToSelector())
    {
      if ([objc_msgSend(pointerValue "migrationManagerClass")])
      {
        migrationManagerClass = [pointerValue migrationManagerClass];
      }
    }
  }

LABEL_14:
  v13 = [[migrationManagerClass alloc] initWithSourceModel:model destinationModel:destinationModel];

  return v13;
}

- (id)migrateStoreAtURL:(id)l withManager:(id)manager metadata:(id)metadata options:(id)options error:(id *)error
{
  if (self)
  {
    selfCopy = self;
    v12 = *(self + 8);
    v13 = *(self + 9);
    v14 = [+[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy *(self + 4))];
    if (*(selfCopy + 14))
    {
      [v14 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSIgnorePersistentStoreVersioningOption"}];
    }

    [v14 setValue:objc_msgSend(*(selfCopy + 1) forKey:{"codableAdapterRegistry"), @"NSPersistentStoreCoordinatorCodableAdapterFactoryKey"}];
    if (manager)
    {
      if (*(selfCopy + 120))
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      *(manager + 24) = *(manager + 24) & 0xFFFFFFF7 | v15;
      v16 = *(selfCopy + 16);
      v17 = *(manager + 9);
      if (v17 != v16)
      {

        *(manager + 9) = 0;
        *(manager + 9) = [v16 copy];
      }

      v18 = *(selfCopy + 17);
      v19 = *(manager + 10);
      if (v19 != v18)
      {

        *(manager + 10) = 0;
        *(manager + 10) = [v18 copy];
      }
    }

    v20 = [NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:options];
    if ([manager migrateStoreFromURL:l type:objc_msgSend_valueForKey_(*(selfCopy + 6)) options:v14 withMappingModel:*(selfCopy + 7) toDestinationURL:v12 destinationType:v13 destinationOptions:v20 error:error])
    {
      return *(selfCopy + 8);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

+ (id)migrationStoreOptionsFromStoreOptions:(uint64_t)options
{
  v7[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 mutableCopy];
  [v3 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"NSPersistentStoreUbiquitousContentURLKey", @"NSPersistentStoreUbiquitousContentNameKey", @"NSMigratePersistentStoresAutomaticallyOption", @"NSInferMappingModelAutomaticallyOption", 0)}];
  [v3 removeObjectForKey:@"NSCoreDataCoreSpotlightExporter"];
  if ([objc_msgSend_valueForKey_(v3) isNSDictionary])
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:objc_msgSend_valueForKey_(v3)];
    v7[0] = @"NSPersistentHistoryTrackingEntitiesToExclude";
    v7[1] = @"NSPersistentHistoryTrackingEntitiesToInclude";
    [v4 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 2)}];
    [v3 setValue:v4 forKey:@"NSPersistentHistoryTrackingKey"];
  }

  [v3 removeObjectForKey:@"NSPersistentStoreRemoveStoreOnCleanup"];
  v6[0] = @"NSPersistentCloudKitContainerOptionsKey";
  v6[1] = @"NSPersistentStoreMirroringOptionsKey";
  [v3 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 2)}];
  return v3;
}

- (void)setPersistentStoreCoordinator:(void *)coordinator sourceURL:(void *)l configuration:(void *)configuration metadata:(void *)metadata options:
{
  if (result)
  {
    v11 = result;
    v12 = result[1];
    if (v12 != a2)
    {

      result = a2;
      v11[1] = result;
    }

    v13 = v11[2];
    if (v13 != coordinator)
    {

      result = coordinator;
      v11[2] = result;
    }

    v14 = v11[3];
    if (v14 != l)
    {

      result = l;
      v11[3] = result;
    }

    v15 = v11[6];
    if (v15 != configuration)
    {

      result = configuration;
      v11[6] = result;
    }

    v16 = v11[4];
    if (v16 != metadata)
    {

      result = metadata;
      v11[4] = result;
    }
  }

  return result;
}

- (id)setMigrationManager:(uint64_t)manager
{
  result = [*(manager + 96) isEqual:a2];
  if ((result & 1) == 0)
  {

    result = a2;
    *(manager + 96) = result;
  }

  return result;
}

+ (id)destinationURLForMigrationSourceURL:(id)l createDocumentReplacementDirectory:(BOOL)directory error:(id *)error
{
  directoryCopy = directory;
  path = [l path];
  lastPathComponent = [path lastPathComponent];
  if (directoryCopy)
  {
    result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (result)
    {

      return [result URLByAppendingPathComponent:lastPathComponent];
    }
  }

  else
  {
    v11 = [objc_msgSend(path "stringByDeletingLastPathComponent")];
    v12 = MEMORY[0x1E695DFF8];

    return [v12 fileURLWithPath:v11 isDirectory:0];
  }

  return result;
}

- (id)_gatherDataAndPerformMigration:(id *)migration
{
  migrationCopy = migration;
  v71 = *MEMORY[0x1E69E9840];
  if (migration)
  {
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v61 = [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _beginPowerAssertionNamed:@"CoreData: Schema migration (policy)"];
    managedObjectModel = [migrationCopy[1] managedObjectModel];
    v5 = 0;
    v6 = [managedObjectModel countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v6)
    {
      v7 = *v64;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v64 != v7)
          {
            objc_enumerationMutation(managedObjectModel);
          }

          v5 |= [(NSEntityDescription *)*(*(&v63 + 1) + 8 * i) _hasAttributesWithExternalDataReferences];
        }

        v6 = [managedObjectModel countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v6);
    }

    path = [migrationCopy[2] path];
    pathExtension = [path pathExtension];
    v11 = pathExtension;
    if (pathExtension && ![pathExtension isEqualToString:&stru_1EF3F1768])
    {
      v12 = [objc_msgSend(objc_msgSend(path "stringByDeletingPathExtension")];
    }

    else
    {
      v12 = [path stringByAppendingString:@"~"];
    }

    v13 = v12;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if (v5)
    {
      v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
      objc_msgSend_valueForKey_(migrationCopy[6]);
      v16 = [objc_msgSend(objc_msgSend_valueForKey_(+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator "registeredStoreTypes"))];
      if ([defaultManager fileExistsAtPath:{objc_msgSend(v16, "path")}])
      {
        if (([defaultManager removeItemAtURL:v16 error:0] & 1) == 0)
        {
          if (!a2)
          {
            goto LABEL_102;
          }

          v26 = MEMORY[0x1E696ABC0];
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unable to delete file (backup external data references URL)", @"reason", v16, @"URL", 0}];
          v28 = [v26 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v27];
          goto LABEL_28;
        }
      }
    }

    v17 = [migrationCopy sourceModelForStoreAtURL:migrationCopy[2] metadata:migrationCopy[6] error:a2];
    [v17 _setIsEditable:0];
    v18 = [migrationCopy[5] isEqual:v17];
    v19 = migrationCopy[5];
    if ((v18 & 1) == 0)
    {

      v19 = v17;
      migrationCopy[5] = v19;
    }

    if (!v19)
    {
      goto LABEL_102;
    }

    managedObjectModel2 = [migrationCopy[1] managedObjectModel];
    resourceBundles = [(NSStoreMigrationPolicy *)migrationCopy resourceBundles];
    v22 = [migrationCopy[4] objectForKey:@"NSInferMappingModelAutomaticallyOption"];
    v23 = v22;
    if (v22 && [v22 isNSString] && objc_msgSend(@"force", "isEqualToString:", v23))
    {
      v23 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [resourceBundles count];
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v24 = [NSMappingModel _mappingModelFromBundles:resourceBundles forSourceModel:v19 destinationModel:managedObjectModel2];
      if (v24)
      {
        goto LABEL_51;
      }

      if ([resourceBundles count])
      {
        v25 = 0;
        v24 = 0;
      }

      else
      {
        v24 = [NSMappingModel _mappingModelFromBundles:v19 forSourceModel:managedObjectModel2 destinationModel:?];
        v25 = 0;
      }
    }

    if ([v23 BOOLValue] && (*buf = 0, (v24 = +[NSMappingModel inferredMappingModelForSourceModel:destinationModel:error:](NSMappingModel, "inferredMappingModelForSourceModel:destinationModel:error:", v19, managedObjectModel2, buf)) == 0))
    {
      v31 = MEMORY[0x1E696ABC0];
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't find or automatically infer mapping model for migration", @"reason", v19, @"sourceModel", managedObjectModel2, @"destinationModel", *buf, *MEMORY[0x1E696AA08], 0}];
      v29 = [v31 errorWithDomain:*MEMORY[0x1E696A250] code:134140 userInfo:v32];
    }

    else
    {
      v29 = 0;
      if (v24)
      {
        goto LABEL_51;
      }
    }

    if ([resourceBundles count])
    {
      v30 = v25;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      v24 = 0;
    }

    else
    {
      v24 = [NSMappingModel _mappingModelFromBundles:v19 forSourceModel:managedObjectModel2 destinationModel:?];
    }

    if (!(v24 | v29))
    {
      v33 = MEMORY[0x1E696ABC0];
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't find mapping model for migration", @"reason", v19, @"sourceModel", managedObjectModel2, @"destinationModel", 0}];
      v29 = [v33 errorWithDomain:*MEMORY[0x1E696A250] code:134140 userInfo:v34];
      goto LABEL_43;
    }

    if (!v24)
    {
LABEL_43:
      if (v29)
      {
        if (a2)
        {
          v24 = 0;
          *a2 = v29;
          goto LABEL_51;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSStoreMigrationPolicy.m";
          v68 = 1024;
          LODWORD(v69) = 515;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v36 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSStoreMigrationPolicy.m";
          v68 = 1024;
          LODWORD(v69) = 515;
          _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v24 = 0;
    }

LABEL_51:
    v37 = [migrationCopy[7] isEqual:v24];
    v38 = migrationCopy[7];
    if ((v37 & 1) == 0)
    {

      v38 = v24;
      migrationCopy[7] = v38;
    }

    if (!v38)
    {
      goto LABEL_102;
    }

    v39 = migrationCopy[4];
    v40 = [migrationCopy[11] isEqual:v39];
    v41 = migrationCopy[11];
    if ((v40 & 1) == 0)
    {

      v41 = v39;
      migrationCopy[11] = v41;
    }

    if (!v41)
    {
      goto LABEL_102;
    }

    v42 = objc_msgSend_valueForKey_(migrationCopy[6]);
    v43 = [migrationCopy[9] isEqual:v42];
    v44 = migrationCopy[9];
    if ((v43 & 1) == 0)
    {

      v44 = v42;
      migrationCopy[9] = v44;
    }

    if (!v44)
    {
      goto LABEL_102;
    }

    v45 = migrationCopy[3];
    if (([migrationCopy[10] isEqual:v45] & 1) == 0)
    {

      migrationCopy[10] = v45;
    }

    v46 = [migrationCopy createMigrationManagerForSourceModel:migrationCopy[5] destinationModel:objc_msgSend(migrationCopy[1] error:{"managedObjectModel"), a2}];
    [v46 setDestinationConfigurationForCloudKitValidation:migrationCopy[17]];
    [(NSStoreMigrationPolicy *)migrationCopy setMigrationManager:v46];
    if (!migrationCopy[12])
    {
      goto LABEL_102;
    }

    v47 = [objc_opt_class() _canMigrateWithMappingModel:migrationCopy[7]];
    if (v47)
    {
      v48 = migrationCopy[2];
      if (!v48)
      {
        goto LABEL_102;
      }

      goto LABEL_70;
    }

    v48 = [objc_opt_class() destinationURLForMigrationSourceURL:migrationCopy[2] createDocumentReplacementDirectory:0 error:a2];
    if (!v48)
    {
      goto LABEL_102;
    }

    if (![migrationCopy[2] isEqual:v48])
    {
LABEL_70:
      if (([migrationCopy[8] isEqual:v48] & 1) == 0)
      {

        migrationCopy[8] = v48;
      }

      if (v5)
      {
        [objc_msgSend(objc_msgSend_valueForKey_(+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator "registeredStoreTypes"))];
      }

      v51 = [migrationCopy[11] mutableCopy];
      [v51 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreUnlinkDestroyOption"];
      [v51 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
      if ((v47 & 1) != 0 || ![objc_msgSend(v48 "path")])
      {
LABEL_84:
        if (![migrationCopy migrateStoreAtURL:migrationCopy[2] withManager:migrationCopy[12] metadata:migrationCopy[6] options:migrationCopy[11] error:a2])
        {
          if (([migrationCopy[2] isEqual:v48] & 1) == 0 && objc_msgSend(objc_msgSend(v48, "path"), "hasSuffix:", @".migrationdestination_41b5a6b5c6e848c462a8480cd24caef3"))
          {
            if (+[NSMappingModel migrationDebugLevel]< 1)
            {
              [migrationCopy[1] _destroyPersistentStoreAtURL:v48 withType:migrationCopy[9] options:v51 error:0];
              [migrationCopy[1] removePersistentStore:objc_msgSend(migrationCopy[1] error:{"persistentStoreForURL:", v48), 0}];
              [defaultManager removeItemAtPath:objc_msgSend(v48 error:{"path"), 0}];
              [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-shm", 0}];
              [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-journal", 0}];
              [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-wal", 0}];
            }

            else
            {
              v56 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(4))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v57 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v48;
                    _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)\n", buf, 0xCu);
                  }
                }

                else
                {
                  v58 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v48;
                    _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)\n", buf, 0xCu);
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

              _NSCoreDataLog_console(v59, "(migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)", v48);
              objc_autoreleasePoolPop(v56);
            }
          }

          goto LABEL_102;
        }

        [(NSStoreMigrationPolicy *)migrationCopy setMigrationManager:?];
        v54 = [NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:?];
        v55 = [+[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy migrationCopy[4])];
        [v55 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSPersistentStoreUnlinkDestroyOption"}];
        [v55 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
        if (v47 & 1) != 0 || ([migrationCopy[1] _replacePersistentStoreAtURL:migrationCopy[2] destinationOptions:v54 withPersistentStoreFromURL:v48 sourceOptions:v55 storeType:migrationCopy[9] error:a2])
        {
          migrationCopy = [migrationCopy[1] addPersistentStoreWithType:migrationCopy[9] configuration:migrationCopy[10] URL:migrationCopy[2] options:migrationCopy[11] error:a2];
          goto LABEL_103;
        }

LABEL_102:
        migrationCopy = 0;
        goto LABEL_103;
      }

      v62 = 0;
      if ([migrationCopy[1] _destroyPersistentStoreAtURL:v48 withType:migrationCopy[9] options:v51 error:&v62])
      {
LABEL_83:
        [migrationCopy[1] removePersistentStore:objc_msgSend(migrationCopy[1] error:{"persistentStoreForURL:", v48), 0}];
        [defaultManager removeItemAtPath:objc_msgSend(v48 error:{"path"), 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-shm", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-journal", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(v48 error:{"path"), "stringByAppendingString:", @"-wal", 0}];
        goto LABEL_84;
      }

      v52 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        if (_pflogging_catastrophic_mode)
        {
          v53 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_105;
          }
        }

        else
        {
          v53 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
LABEL_105:
            *buf = 138412546;
            *&buf[4] = v48;
            v68 = 2112;
            v69 = v62;
            _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) Failed to remove orphaned, partially migrated store file %@: %@\n", buf, 0x16u);
          }
        }
      }

      _NSCoreDataLog_console(1, "(migration) Failed to remove orphaned, partially migrated store file %@: %@", v48, v62);
      objc_autoreleasePoolPop(v52);
      goto LABEL_83;
    }

    if (!a2)
    {
      goto LABEL_102;
    }

    v49 = MEMORY[0x1E696ABC0];
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Migration source and destination URLs must be different", @"reason", migrationCopy[2], @"sourceURL", v48, @"destinationURL", 0}];
    v28 = [v49 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v50];
LABEL_28:
    migrationCopy = 0;
    *a2 = v28;
LABEL_103:
    [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _endPowerAssertionWithVoucher:v61];
  }

  return migrationCopy;
}

@end