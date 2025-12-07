@interface _NSXPCStoreUtilities
+ (_PFArray)_decodeResultSetData:(NSFetchRequest *)data forFetchRequest:(uint64_t)request options:(NSPersistentStore *)options store:(NSManagedObjectContext *)store context:(void *)context rowCacheRows:(void *)rows error:;
+ (_PFResultArray)_decodeBufferResultSetData:(void *)data forFetchRequest:(uint64_t)request options:(uint64_t)options store:(uint64_t)store context:(uint64_t)context rowCacheRows:(uint64_t *)rows error:;
+ (id)newSecureArchivedDataWithRootObject:(uint64_t)object;
+ (uint64_t)classesForErrorArchive;
+ (uint64_t)classesForFetchArchive;
+ (uint64_t)classesForSaveArchive;
+ (uint64_t)decodeSecureArchivedData:(uint64_t)data usingDelegate:(uint64_t)delegate classes:;
+ (uint64_t)newUserInfoFromException:(uint64_t)exception;
+ (void)logMessage:(uint64_t)message forComponent:(uint64_t)component;
@end

@implementation _NSXPCStoreUtilities

+ (uint64_t)classesForFetchArchive
{
  objc_opt_self();
  if (!classesForFetchArchive_archiveClasses)
  {
    v1 = objc_alloc(MEMORY[0x1E695DFA8]);
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = NSClassFromString(@"_NSPredicateUtilities");
    [v11 unionSet:{-[objc_class _compoundPredicateClassesForSecureCoding](NSClassFromString(@"_NSPredicateUtilities"), "_compoundPredicateClassesForSecureCoding")}];
    [v11 unionSet:{-[objc_class _extendedExpressionClassesForSecureCoding](v12, "_extendedExpressionClassesForSecureCoding")}];
    [v11 unionSet:{-[objc_class _operatorClassesForSecureCoding](v12, "_operatorClassesForSecureCoding")}];
    [v11 unionSet:{-[objc_class _constantValueClassesForSecureCoding](v12, "_constantValueClassesForSecureCoding")}];
    [v11 addObject:NSClassFromString(@"NSBoundedByPredicateOperator")];
    [v11 addObjectsFromArray:{+[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")}];
    v13 = NSClassFromString(@"_NSXPCStoreObjectIDArrayConstantValueExpression");
    if (v13)
    {
      [v11 addObject:v13];
    }

    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v11];

    v15 = 0;
    atomic_compare_exchange_strong(&classesForFetchArchive_archiveClasses, &v15, v14);
    if (v15)
    {
    }
  }

  return classesForFetchArchive_archiveClasses;
}

+ (uint64_t)classesForSaveArchive
{
  objc_opt_self();
  if (!classesForSaveArchive_archiveClasses)
  {
    v22 = objc_alloc(MEMORY[0x1E695DFA8]);
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v16 = objc_opt_class();
    v15 = objc_opt_class();
    v1 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v22 initWithObjects:{v21, v20, v19, v18, v17, v16, v15, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
    [v11 addObjectsFromArray:{+[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")}];
    [v11 unionSet:{-[objc_class _constantValueClassesForSecureCoding](NSClassFromString(@"_NSPredicateUtilities"), "_constantValueClassesForSecureCoding")}];
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v11];

    v13 = 0;
    atomic_compare_exchange_strong(&classesForSaveArchive_archiveClasses, &v13, v12);
    if (v13)
    {
    }
  }

  return classesForSaveArchive_archiveClasses;
}

+ (id)newSecureArchivedDataWithRootObject:(uint64_t)object
{
  objc_opt_self();
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:a2 forKey:@"root"];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (void)logMessage:(uint64_t)message forComponent:(uint64_t)component
{
  objc_opt_self();
  if (component)
  {
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], component);
    NSLog(@"%@", v3);
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Someone tried to log something but failed because they didn't tell me what to log.\n", buf, 2u);
        }
      }

      else
      {
        v6 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Someone tried to log something but failed because they didn't tell me what to log.\n", v8, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 8;
    }

    _NSCoreDataLog_console(v7, "Someone tried to log something but failed because they didn't tell me what to log.");
    objc_autoreleasePoolPop(v4);
  }
}

+ (uint64_t)classesForErrorArchive
{
  objc_opt_self();
  if (!classesForErrorArchive_archiveClasses)
  {
    v1 = objc_alloc(MEMORY[0x1E695DFA8]);
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = [v1 initWithObjects:{v2, v3, objc_opt_class(), 0}];
    [v4 unionSet:+[_NSXPCStoreUtilities classesForSaveArchive](_NSXPCStoreUtilities)];
    [v4 unionSet:+[_NSXPCStoreUtilities classesForFetchArchive](_NSXPCStoreUtilities)];
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v4];

    v6 = 0;
    atomic_compare_exchange_strong(&classesForErrorArchive_archiveClasses, &v6, v5);
    if (v6)
    {
    }
  }

  return classesForErrorArchive_archiveClasses;
}

+ (uint64_t)decodeSecureArchivedData:(uint64_t)data usingDelegate:(uint64_t)delegate classes:
{
  objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a2 error:0];
  [v7 setDelegate:data];
  v8 = [v7 decodeObjectOfClasses:delegate forKey:@"root"];

  return v8;
}

+ (uint64_t)newUserInfoFromException:(uint64_t)exception
{
  v28 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:objc_msgSend(a2 forKey:{"name"), @"exception name"}];
  [v3 setValue:objc_msgSend(a2 forKey:{"reason"), @"exception reason"}];
  if (objc_msgSend_valueForKey_([a2 userInfo]))
  {
    [v3 setObject:objc_msgSend_valueForKey_(objc_msgSend(a2 forKey:{"userInfo")), @"NSSQLiteErrorDomain"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setValue:MEMORY[0x1E695E118] forKey:@"controlled exception"];
  }

  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error: Exception raised: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v6 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = a2;
        _os_log_impl(&dword_18565F000, v6, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: Exception raised: %@\n", buf, 0xCu);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v7 = 1;
  }

  else
  {
    v7 = 8;
  }

  _NSCoreDataLog_console(v7, "Error: Exception raised: %@", a2);
  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v9 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [a2 callStackSymbols];
        *buf = 138412290;
        v27 = callStackSymbols;
        _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error: Error: Callstack: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v11 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        callStackSymbols2 = [a2 callStackSymbols];
        *buf = 138412290;
        v27 = callStackSymbols2;
        _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: Callstack: %@\n", buf, 0xCu);
      }
    }
  }

  v13 = _pflogging_catastrophic_mode;
  callStackSymbols3 = [a2 callStackSymbols];
  v15 = 8;
  if (v13)
  {
    v15 = 1;
  }

  _NSCoreDataLog_console(v15, "Error: Callstack: %@", callStackSymbols3);
  objc_autoreleasePoolPop(v8);
  v16 = objc_autoreleasePoolPush();
  _pflogInitialize(8);
  if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      v17 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        userInfo = [a2 userInfo];
        *buf = 138412290;
        v27 = userInfo;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: error: Error: UserInfo: %@\n", buf, 0xCu);
      }
    }

    else
    {
      v19 = _PFLogGetLogStream(8);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        userInfo2 = [a2 userInfo];
        *buf = 138412290;
        v27 = userInfo2;
        _os_log_impl(&dword_18565F000, v19, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Error: UserInfo: %@\n", buf, 0xCu);
      }
    }
  }

  v21 = _pflogging_catastrophic_mode;
  userInfo3 = [a2 userInfo];
  v23 = 8;
  if (v21)
  {
    v23 = 1;
  }

  _NSCoreDataLog_console(v23, "Error: UserInfo: %@", userInfo3);
  objc_autoreleasePoolPop(v16);
  v24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v3, @"exception info", 0}];

  return v24;
}

+ (_PFResultArray)_decodeBufferResultSetData:(void *)data forFetchRequest:(uint64_t)request options:(uint64_t)options store:(uint64_t)store context:(uint64_t)context rowCacheRows:(uint64_t *)rows error:
{
  v56 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  bytes = [a2 bytes];
  v13 = [a2 length];
  if (v13 <= 7)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (bad size)", @"Reason"}];
    if (!v14)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
        v54 = 1024;
        v55 = 1292;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      *buf = 136315394;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v54 = 1024;
      v55 = 1292;
      goto LABEL_51;
    }

LABEL_16:
    if (rows)
    {
      v18 = 0;
      *rows = v14;
      return v18;
    }

    return 0;
  }

  if (v13 <= 0)
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (no result)", @"Reason"}];
    if (v14)
    {
      goto LABEL_16;
    }

    v44 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v54 = 1024;
      v55 = 1308;
      _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v16 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 136315394;
    v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
    v54 = 1024;
    v55 = 1308;
LABEL_51:
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  if (*bytes == 1)
  {
    if (v13 <= 0x13)
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (missing size)", @"Reason"}];
      if (v14)
      {
        goto LABEL_16;
      }

      v17 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
        v54 = 1024;
        v55 = 1321;
        _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v16 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      *buf = 136315394;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/XPCStore/_NSXPCStoreUtilities.m";
      v54 = 1024;
      v55 = 1321;
      goto LABEL_51;
    }

    v19 = *(bytes + 16);
    if (v19)
    {
      v20 = *(bytes + 24);
      v21 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v21 = malloc_default_zone();
      }

      v22 = malloc_type_zone_malloc(v21, v20, 0x11BB7B26uLL);
      memcpy(v22, (bytes + 32), v20);
      v23 = objc_opt_class();
      object_setClass(v22 + 8, v23);
      v24 = bufferResultSetAllocateWithBuffer(v20, v22);
      *(v24 + 10) |= 2u;
      propertiesToFetch = [data propertiesToFetch];
      if (![propertiesToFetch count])
      {
        entity = [data entity];
        v27 = entity ? [objc_msgSend(entity "propertiesByName")] : 0;
        propertiesToFetch = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v48;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v48 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v47 + 1) + 8 * i);
              entity2 = [data entity];
              if (entity2)
              {
                v34 = [objc_msgSend(entity2 "propertiesByName")];
                if (v34)
                {
                  v35 = v34;
                  if (([v34 isTransient] & 1) == 0 && (objc_msgSend(v35, "_isRelationship") & 1) == 0)
                  {
                    [propertiesToFetch addObject:v35];
                  }
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v29);
        }
      }

      v36 = [[NSKnownKeysMappingStrategy alloc] initForKeys:objc_msgSend_valueForKey_(propertiesToFetch)];
      v37 = [propertiesToFetch count];
      v38 = v37;
      if (v37 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v37;
      }

      if (v37 >= 0x201)
      {
        v40 = 1;
      }

      else
      {
        v40 = v39;
      }

      v41 = &v47 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v37 > 0x200)
      {
        v41 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v47 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v39);
      }

      if ([propertiesToFetch count])
      {
        v45 = 0;
        do
        {
          *&v41[8 * v45] = [propertiesToFetch objectAtIndexedSubscript:v45];
          ++v45;
        }

        while ([propertiesToFetch count] > v45);
      }

      v46 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v36];
      [(NSKnownKeysDictionary *)v46 setValues:v41];
      if (v38 >= 0x201)
      {
        NSZoneFree(0, v41);
      }

      v18 = [[_PFResultArray alloc] initWithObjects:v24 count:v19 store:options metadata:v46];

      return v18;
    }
  }

  v42 = NSArray_EmptyArray;

  return v42;
}

+ (_PFArray)_decodeResultSetData:(NSFetchRequest *)data forFetchRequest:(uint64_t)request options:(NSPersistentStore *)options store:(NSManagedObjectContext *)store context:(void *)context rowCacheRows:(void *)rows error:
{
  v329[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  bytes = [a2 bytes];
  v16 = [a2 length];
  if (v16 <= 7)
  {
    if (rows)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = MEMORY[0x1E695DF20];
      v20 = @"CoreData: XPC: Suspect response from server (bad size)";
LABEL_11:
      v22 = [v19 dictionaryWithObject:v20 forKey:@"Reason"];
      v23 = v17;
      v24 = v18;
LABEL_12:
      v25 = 0;
      *rows = [v23 errorWithDomain:v24 code:134060 userInfo:v22];
      return v25;
    }

    return 0;
  }

  v21 = v16;
  if (v16 <= 0)
  {
    if (rows)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = MEMORY[0x1E695DF20];
      v20 = @"CoreData: XPC: Suspect response from server (no result)";
      goto LABEL_11;
    }

    return 0;
  }

  if (*bytes != 1)
  {
    goto LABEL_17;
  }

  if (v16 <= 0x13)
  {
    if (rows)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = MEMORY[0x1E695DF20];
      v20 = @"CoreData: XPC: Suspect response from server (missing size)";
      goto LABEL_11;
    }

    return 0;
  }

  if (!*(bytes + 16))
  {
LABEL_17:
    v26 = NSArray_EmptyArray;

    return v26;
  }

  if ((v16 - 16) <= 0x6F)
  {
    if (rows)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = MEMORY[0x1E695DF20];
      v20 = @"CoreData: XPC: Suspect response from server (not enough room for fetch results header)";
      goto LABEL_11;
    }

    return 0;
  }

  *(bytes + 40) = *(bytes + 40);
  *(bytes + 96) = bytes + 128;
  v28 = *(bytes + 52);
  if (v16 - 128 < 8 * ((v28 + 1) + v28))
  {
    if (rows)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = MEMORY[0x1E695DF20];
      v20 = @"CoreData: XPC: Suspect response from server (not enough room for buffers and sizes)";
      goto LABEL_11;
    }

    return 0;
  }

  v29 = bytes + 128 + 8 * v28 + 8;
  *(bytes + 104) = v29;
  if (v28)
  {
    v30 = 0;
    v31 = 8 * v28;
    v32 = v29 + v31;
    do
    {
      *(*(bytes + 96) + v30) = bytes + *(v32 + v30);
      v30 += 8;
    }

    while (v31 != v30);
    v33 = **(bytes + 96);
    *(bytes + 112) = v33;
    *(bytes + 120) = v33;
  }

  requestCopy = request;
  contextCopy = context;
  *(bytes + 80) |= 2u;
  if (*(bytes + 36) >> 30)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(bytes + 36);
  }

  v35 = PF_ALLOCATE_OBJECT_ARRAY(v34);
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v299 = v36;
  storeCopy = store;
  Initialize = fetchPlanAllocateInitialize(data, options, store);
  if ([(NSFetchRequest *)data resultType]!= 2 && ([(NSFetchRequest *)data resultType]|| ![(NSArray *)[(NSFetchRequest *)data propertiesToFetch] count]))
  {
    v49 = Initialize;
    v298 = v35;
    v42 = 0;
    propertyMapping = 0;
    v308 = 0;
    v285 = 0;
    v311 = 0;
    v306 = 1;
    goto LABEL_44;
  }

  v38 = objc_opt_class();
  v39 = objc_opt_class();
  optionsCopy = options;
  if (v38 != v39)
  {
    optionsCopy = [(NSPersistentStore *)options sqlCore];
  }

  v41 = optionsCopy;
  if (!v41)
  {
    if (rows)
    {
      v324[0] = @"Reason";
      v324[1] = @"FetchRequest";
      v325[0] = @"CoreData: XPC: Store is missing core";
      if (data)
      {
        v76 = [(NSFetchRequest *)data description];
      }

      else
      {
        v76 = @"no fetch request";
      }

      v325[1] = v76;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v325 forKeys:v324 count:2];
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      goto LABEL_12;
    }

    return 0;
  }

  v42 = v41;
  v298 = v35;
  v43 = [(NSFetchRequest *)data copy];
  [v43 setPredicate:0];
  v44 = [(NSSQLiteAdapter *)[(NSPersistentStore *)v42 adapter] newSelectStatementWithFetchRequest:v43 ignoreInheritance:0];
  if (!v44)
  {
    if (rows)
    {
      v328[0] = @"Reason";
      v328[1] = @"FetchRequest";
      v329[0] = @"CoreData: XPC: Suspect fetch request failed to generate statement";
      if (v43)
      {
        v77 = [v43 description];
      }

      else
      {
        v77 = @"no fetch request";
      }

      v329[1] = v77;
      v225 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v329 forKeys:v328 count:2];
      *rows = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v225];
    }

    if (Initialize)
    {
    }

    goto LABEL_399;
  }

  v45 = v44;
  v46 = *(v44 + 48);
  if (!v46)
  {
    if (rows)
    {
      v326[0] = @"Reason";
      v326[1] = @"FetchRequest";
      v327[0] = @"CoreData: XPC: Suspect statement generated - entity missing";
      if (v43)
      {
        v102 = [v43 description];
      }

      else
      {
        v102 = @"no fetch request";
      }

      v327[1] = v102;
      v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v327 forKeys:v326 count:2];
      *rows = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v241];
    }

    if (Initialize)
    {
    }

LABEL_399:
    return 0;
  }

  Initialize->statement_entity = v46;
  *&Initialize->flags &= ~1u;
  v311 = v46;
  plan_for_entity = _sql_read_only_fetch_plan_for_entity(v46);
  statement_entity = Initialize->statement_entity;
  v285 = v45;
  if (statement_entity)
  {
    propertyMapping = statement_entity->_propertyMapping;
  }

  else
  {
    propertyMapping = 0;
  }

  v49 = Initialize;
  v308 = plan_for_entity;

  v306 = 0;
LABEL_44:
  model = [(NSPersistentStore *)options model];
  if (model)
  {
    v51 = model;
    v52 = *(model + 60);
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v312 = v42;
  p_isa = &v49->super.isa;
  model2 = [(NSSQLEntity *)v311 model];
  if (model2)
  {
    v54 = *(model2 + 60);
  }

  else
  {
    v54 = 0;
  }

  v55 = v51;
  if (v52 != v54)
  {
    v319 = 0u;
    v320 = 0u;
    v317 = 0u;
    v318 = 0u;
    ancillarySQLModels = [(NSPersistentStore *)v312 ancillarySQLModels];
    v61 = [ancillarySQLModels countByEnumeratingWithState:&v317 objects:v323 count:16];
    if (!v61)
    {
      goto LABEL_66;
    }

    v62 = v61;
    v63 = *v318;
    while (1)
    {
      v64 = 0;
      do
      {
        if (*v318 != v63)
        {
          objc_enumerationMutation(ancillarySQLModels);
        }

        v55 = [-[NSPersistentStore ancillarySQLModels](v312 "ancillarySQLModels")];
        model3 = [(NSSQLEntity *)v311 model];
        if (model3)
        {
          v66 = *(model3 + 60);
          if (v55)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v66 = 0;
          if (v55)
          {
LABEL_59:
            v67 = *(v55 + 60);
            goto LABEL_60;
          }
        }

        v67 = 0;
LABEL_60:
        if (v66 == v67)
        {
          goto LABEL_49;
        }

        ++v64;
      }

      while (v62 != v64);
      v68 = [ancillarySQLModels countByEnumeratingWithState:&v317 objects:v323 count:16];
      v62 = v68;
      if (!v68)
      {
LABEL_66:
        v69 = p_isa;
        v70 = v312;
        v71 = v285;
        if (rows)
        {
          v322[0] = @"CoreData: XPC: Unable to find entity in model";
          v321[0] = @"Reason";
          v321[1] = @"EntityOffset";
          v72 = MEMORY[0x1E696AD98];
          model4 = [(NSSQLEntity *)v311 model];
          if (model4)
          {
            v74 = *(model4 + 60);
          }

          else
          {
            v74 = 0;
          }

          v322[1] = [v72 numberWithUnsignedInt:v74];
          v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v322 forKeys:v321 count:2];
          *rows = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v75];
        }

        if (v69)
        {
        }

        return 0;
      }
    }
  }

LABEL_49:
  v286 = v55;
  defaultFaultHandler = 0;
  v290 = *(p_isa + 18);
  v57 = (v290 >> 2) & 7;
  v58 = **(bytes + 96);
  v274 = v57;
  if (options)
  {
    v59 = requestCopy;
    v60 = v308;
    if (v57 == 3)
    {
      defaultFaultHandler = options->_defaultFaultHandler;
    }
  }

  else
  {
    v59 = requestCopy;
    v60 = v308;
  }

  v270 = defaultFaultHandler;
  _disablePersistentStoreResultCaching = [p_isa[1] _disablePersistentStoreResultCaching];
  v269 = _disablePersistentStoreResultCaching;
  v79 = (v59 & 1) != 0 || (p_isa[9] & 1) == 0;
  v279 = &v252;
  if ((v290 & 2) != 0)
  {
    v80 = 0;
  }

  else
  {
    v80 = v306;
  }

  v287 = v80;
  v81 = v306 & v79;
  MEMORY[0x1EEE9AC00](_disablePersistentStoreResultCaching);
  v280 = v84;
  if (v84 > 0x200)
  {
    v85 = NSAllocateScannedUncollectable();
    v291 = v85;
  }

  else
  {
    v291 = &v252 - v83;
    bzero(&v252 - v83, 8 * v82);
  }

  MEMORY[0x1EEE9AC00](v85);
  v88 = 8 * v86;
  v281 = v89;
  if (v89 > 0x200)
  {
    v284 = NSAllocateScannedUncollectable();
    v278 = NSAllocateScannedUncollectable();
  }

  else
  {
    v284 = &v252 - v87;
    bzero(&v252 - v87, 8 * v86);
    MEMORY[0x1EEE9AC00](v90);
    v278 = &v252 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v278, v88);
  }

  v297 = bytes + v21;
  v91 = v81 & (v291 == 0);
  v92 = v286;
  if ((v91 & 1) != 0 || v287 && (!v284 || !v278))
  {
    PF_FREE_OBJECT_ARRAY(v298);
    v298 = 0;
    v299 = 0;
  }

  if (v297 - v58 <= 31)
  {
    v93 = v280;
    v94 = v312;
    v95 = v281;
    if (rows)
    {
      *rows = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"CoreData: XPC: Suspect response from server (not enough room for first row)", @"Reason"}];
    }

    goto LABEL_436;
  }

  if (v306)
  {
    v268 = [(NSPersistentStore *)options objectIDFactoryForSQLEntity:p_isa[5]];
  }

  else
  {
    v268 = 0;
  }

  v259 = sel_setForeignEntityKeySlot_entityKey_;
  v258 = [NSSQLRow instanceMethodForSelector:?];
  v257 = sel_setForeignOrderKeySlot_orderKey_;
  v256 = [NSSQLRow instanceMethodForSelector:?];
  v263 = sel_setForeignKeySlot_int64_;
  v262 = [NSSQLRow instanceMethodForSelector:?];
  v261 = sel_setOptLock_;
  v96 = [NSSQLRow instanceMethodForSelector:?];
  v260 = v96;
  if ((v306 & 1) == 0)
  {
    v101 = p_isa[8];
    v275 = sel_entityForID_;
    v276 = v101;
    goto LABEL_121;
  }

  if (!v79)
  {
    v275 = 0;
    v276 = 0;
LABEL_121:
    v103 = v299;
    if (!v299)
    {
      v224 = v298;
      if (!v298)
      {
LABEL_421:
        v249 = v280;
        v250 = v312;
        if (v281 >= 0x201 && v284)
        {
          NSZoneFree(0, v284);
          NSZoneFree(0, v278);
        }

        if (v249 >= 0x201 && v291)
        {
          NSZoneFree(0, v291);
        }

        return NSArray_EmptyArray;
      }

LABEL_420:
      PF_FREE_OBJECT_ARRAY(v224);
      goto LABEL_421;
    }

    goto LABEL_122;
  }

  v97 = v299;
  v96 = [(objc_class *)v268 allocateBatch:v291 count:v299];
  if (v97 != v96)
  {
    v99 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(8))
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v316[0]) = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding failed: No oids.\n", v316, 2u);
        }
      }

      else
      {
        v246 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v316[0]) = 0;
          _os_log_impl(&dword_18565F000, v246, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding failed: No oids.\n", v316, 2u);
        }
      }
    }

    v247 = "Decoding failed: No oids.";
    goto LABEL_415;
  }

  v98 = v299;
  if ((v290 & 2) != 0 || !v299)
  {
    if (!v299)
    {
LABEL_419:
      v224 = v298;
      goto LABEL_420;
    }
  }

  else
  {
    v96 = [NSSQLRow newBatchRowAllocation:v284 count:v299 forSQLEntity:p_isa[5] withOwnedObjectIDs:v291 andTimestamp:*(bytes + 40)];
    if (v98 != v96)
    {
      v99 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(8))
      {
        if (_pflogging_catastrophic_mode)
        {
          v100 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v316[0]) = 0;
            _os_log_error_impl(&dword_18565F000, v100, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding failed: No rows.\n", v316, 2u);
          }
        }

        else
        {
          v251 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v251, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v316[0]) = 0;
            _os_log_impl(&dword_18565F000, v251, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding failed: No rows.\n", v316, 2u);
          }
        }
      }

      v247 = "Decoding failed: No rows.";
LABEL_415:
      if (_pflogging_catastrophic_mode)
      {
        v248 = 1;
      }

      else
      {
        v248 = 8;
      }

      _NSCoreDataLog_console(v248, v247);
      objc_autoreleasePoolPop(v99);
      goto LABEL_419;
    }
  }

  v275 = 0;
  v276 = 0;
  v103 = v299;
LABEL_122:
  v264 = v79;
  if (v103 < 1)
  {
LABEL_373:
    if (v274 > 5)
    {
      v227 = 10;
    }

    else
    {
      v227 = dword_18592E310[v274];
    }

    v228 = v280;
    v229 = [_PFArray alloc];
    v25 = [(_PFArray *)v229 initWithObjects:v298 count:v299 andFlags:v227 andContext:storeCopy];
    v230 = v287 ^ 1;
    if ((v287 ^ 1 | v269))
    {
      v231 = 0;
    }

    else
    {
      v232 = contextCopy;
      v231 = contextCopy != 0;
      if (contextCopy)
      {
        v233 = [_PFArray alloc];
        *v232 = [(_PFArray *)v233 initWithObjects:v278 count:v299 andFlags:26 andContext:storeCopy];
      }

      if (v299 < 1)
      {
        goto LABEL_387;
      }

      v234 = v299;
      v235 = v284;
      do
      {
        v236 = *v235++;

        --v234;
      }

      while (v234);
    }

    if (((v231 | v230) & 1) == 0 && v299 >= 1)
    {
      v237 = v299;
      v238 = v278;
      do
      {
        v239 = *v238++;

        --v237;
      }

      while (v237);
    }

LABEL_387:
    if (v281 >= 0x201)
    {
      NSZoneFree(0, v284);
      NSZoneFree(0, v278);
    }

    if (v228 >= 0x201)
    {
      NSZoneFree(0, v291);
    }

    v240 = v312;
    if (p_isa)
    {
    }

    return v25;
  }

  v104 = 0;
  v252 = 0;
  v253 = 0;
  v265 = 0;
  v105 = 0;
  v254 = 0;
  v294 = @"TOMBSTONE";
  v266 = v299;
  while (1)
  {
    if (v306)
    {
      v106 = 0;
    }

    else
    {
      v106 = v60[1];
    }

    v289 = v104;
    v277 = &v252;
    MEMORY[0x1EEE9AC00](v96);
    v109 = &v252 - v108;
    if (v106 > 0x200)
    {
      v96 = NSAllocateScannedUncollectable();
      v109 = v96;
    }

    else
    {
      bzero(&v252 - v108, 8 * v107);
    }

    v305 = v109;
    isa = v58->isa;
    v273 = v106;
    if (isa < 0)
    {
      do
      {
        v58 = &v58->data[*(*(bytes + 96) + 8 * HIDWORD(v58->isa))];
      }

      while ((v58->isa & 0x80000000) != 0);
    }

    v111 = v297 - v58;
    if (v297 - v58 <= 31)
    {
      v93 = v280;
      v94 = v312;
      if (!rows)
      {
        goto LABEL_435;
      }

      goto LABEL_405;
    }

    if (!v306)
    {
      if ((v290 & 2) == 0)
      {
        v105 = 0;
        v118 = v311;
        v267 = 0;
        v255 = 0;
        v282 = 0;
        goto LABEL_149;
      }

      v123 = v274;
      v117 = v289;
      v124 = 0;
      goto LABEL_347;
    }

    v112 = _sqlEntityForEntityID(v92, LODWORD(v58->info));
    if (v112 != v265)
    {
      v268 = [(NSPersistentStore *)options objectIDFactoryForSQLEntity:v112];
      v265 = v112;
    }

    v304 = v112;
    if (v264)
    {
      v308 = v60;
      v310 = v105;
      v113 = v291;
      v114 = v289;
      v115 = *&v291[8 * v289];
      v96 = _PFSetPrimaryKey(v115, v58->length);
      if (v115 == v96)
      {
        v92 = v286;
        v105 = v310;
        if ((v290 & 2) == 0)
        {
          goto LABEL_147;
        }

        v124 = v115;
        v123 = v274;
        v117 = v289;
      }

      else
      {
        v116 = v96;
        *&v113[8 * v114] = v96;
        v117 = v114;
        if ((v290 & 2) == 0)
        {
          [*&v284[8 * v114] setObjectID:v96];
          v115 = v116;
          v105 = v310;
LABEL_147:
          v122 = *&v284[8 * v289];
          v255 = v115;
          v118 = v304;
          goto LABEL_148;
        }

        v92 = v286;
        v123 = v274;
        v105 = v310;
        v124 = v96;
      }

      v60 = v308;
LABEL_347:
      if (v123 > 2)
      {
        if (v123 != 3 && v123 != 5)
        {
          goto LABEL_356;
        }

LABEL_353:
        v220 = [NSManagedObjectContext _retainedObjectWithID:storeCopy optionalHandler:v124 withInlineStorage:v270];

        v117 = v289;
        v124 = v220;
        goto LABEL_357;
      }

      if (!v123)
      {
        goto LABEL_353;
      }

      if (v123 != 1)
      {
        goto LABEL_356;
      }

      goto LABEL_357;
    }

    v96 = [[v268 alloc] initWithPK64:v58->length];
    v119 = v96;
    if ((v290 & 2) != 0)
    {
      v123 = v274;
      v117 = v289;
      v124 = v96;
      goto LABEL_347;
    }

    v118 = v304;
    v120 = [NSSQLRow allocForSQLEntity:v304];
    v121 = *(bytes + 40);
    v255 = v119;
    v122 = [v120 initWithSQLEntity:v118 ownedObjectID:v119 andTimestamp:v121];
    *&v284[8 * v289] = v122;
LABEL_148:
    v267 = v122;
    v125 = atomic_load(v122 + 5);
    v282 = v125;
    v60 = _sql_fetch_plan_for_entity(v118);
LABEL_149:
    if (v111 < *v60)
    {
      v93 = v280;
      v94 = v312;
      if (!rows)
      {
        goto LABEL_435;
      }

LABEL_405:
      v242 = MEMORY[0x1E696ABC0];
      v243 = *MEMORY[0x1E696A250];
      v244 = MEMORY[0x1E695DF20];
      v245 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v289);
      goto LABEL_434;
    }

    v126 = v60[1];
    v127 = v305;
    if (v126)
    {
      break;
    }

LABEL_331:
    if (v306)
    {
      v214 = v267;
      [v267 knownKeyValuesPointer];
      v215 = v289;
      *&v278[8 * v289] = v214;
      v216 = v282;
      v96 = v282;
      *&v284[8 * v215] = v96;
      v92 = v286;
      if (requestCopy)
      {
        v96 = v216;
      }

      else
      {
        if (v274 > 2)
        {
          v124 = v255;
          if (v274 != 3 && v274 != 5)
          {
            v117 = v215;
LABEL_356:
            v124 = 0;
            goto LABEL_357;
          }
        }

        else
        {
          v124 = v255;
          if (v274)
          {
            if (v274 == 1)
            {
              v96 = _PFfastOidRetain(0, v255);
            }

            else
            {
              v124 = 0;
            }

            goto LABEL_344;
          }
        }

        v96 = [NSManagedObjectContext _retainedObjectWithID:storeCopy optionalHandler:v124 withInlineStorage:v270];
      }

      v124 = v96;
LABEL_344:
      v117 = v289;
      goto LABEL_357;
    }

    v217 = [NSKnownKeysDictionary alloc];
    v218 = [(NSKnownKeysDictionary *)v217 initWithSearchStrategy:propertyMapping];
    v219 = v127;
    v124 = v218;
    v96 = [(NSKnownKeysDictionary *)v218 _setValues:v219 retain:0];
    v117 = v289;
    v92 = v286;
LABEL_357:
    *(v298 + v117) = v124;
    isa_high = HIDWORD(v58->isa);
    if ((isa_high & 0x80000000) == 0)
    {
      v222 = *(*(bytes + 96) + 8 * isa_high);
      if (v222)
      {
        data = v58->data;
        if (v273 >= 0x201)
        {
          NSZoneFree(0, v305);
          v117 = v289;
        }

        v58 = &data[v222];
        v104 = v117 + 1;
        if (v104 != v266)
        {
          continue;
        }
      }
    }

    goto LABEL_373;
  }

  ancillarySQLModels = 0;
  v303 = 0;
  v304 = v118;
  intValue = 0;
  v314 = 0;
  v295 = 0;
  v308 = v60;
  v309 = v58 + 1;
  v301 = v305 != 0;
  v272 = v282 + 28;
  v300 = 24 * v126;
  v128 = 0;
  v302 = v58;
  while (1)
  {
    v310 = v105;
    v313 = v128;
    v129 = (v60 + v128);
    v130 = *(v60 + v128 + 20);
    if ((v130 - 2) > 6)
    {
      v131 = 3;
    }

    else
    {
      v131 = qword_18592E2D8[(v130 - 2)];
    }

    v132 = ((v309 + v131) & ~v131);
    if (v129[4])
    {
      isa_low = LOBYTE(v132->isa);
      v132 = (v132 + 1);
      v133 = isa_low != 0;
    }

    else
    {
      v133 = 0;
    }

    v135 = 0;
    v307 = v129;
    if (((ancillarySQLModels > 6) & v314) == 1 && (v133 & 1) == 0)
    {
      LODWORD(v309) = v133;
      v136 = v132;
      v137 = v303;
      if (!v303)
      {
        model5 = [(NSPersistentStore *)options model];
        v137 = v276(model5, v275, intValue);
      }

      v139 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v137];
      v140 = [objc_msgSend(*(v308 + v313 + 24) "propertyDescription")];
      v141 = [objc_msgSend(v140 stringByReplacingOccurrencesOfString:v294 withString:{&stru_1EF3F1768), "intValue"}];
      v142 = [v139 count];
      v303 = v137;
      if (v141 >= v142)
      {
        v135 = 0;
      }

      else
      {
        v143 = [v139 objectAtIndexedSubscript:v141];
        if (v137)
        {
          v135 = [*(v137 + 40) objectForKey:v143];
        }

        else
        {
          v135 = 0;
        }

        v130 = 17;
      }

      v132 = v136;
      v133 = v309;
    }

    v144 = ~v131;
    if (v130 <= 6)
    {
      if ((v130 - 4) < 3)
      {
        goto LABEL_209;
      }

      if ((v130 - 2) < 2)
      {
        v316[0] = 0;
        v149 = ((v132 + v131) & v144);
        if (!v133)
        {
          v132 = (v149 + 1);
        }

        v150 = v316;
        if (!v133)
        {
          v150 = v149;
        }

        v60 = v308;
        v151 = v313;
        v152 = *(v308 + v313 + 21);
        v309 = v132;
        if (v152 == 6)
        {
          v58 = v302;
          v147 = v304;
          if (v306)
          {
            v260(v267, v261, *v150);
          }

          v148 = v310;
          goto LABEL_238;
        }

        v58 = v302;
        v147 = v304;
        if (v152 == 3)
        {
          v148 = v310;
          if (v306)
          {
            v262(v267, v263, v307[2], *v150);
LABEL_238:
            v127 = v305;
            goto LABEL_319;
          }

          if (v295)
          {
            v194 = v305[v310 - 1];
            v148 = v310 - 1;
          }

          else
          {
            v196 = v133;
            v197 = [objc_msgSend(*(v308 + v313 + 24) "toOneRelationship")];
            LOBYTE(v133) = v196;
            v194 = v197;
          }

          if ((v133 & 1) != 0 || !*v149)
          {
            v199 = 0;
          }

          else
          {
            if (v194 != v252)
            {
              v198 = [(NSPersistentStore *)options objectIDFactoryForSQLEntity:v194];
              v252 = v194;
              v253 = v198;
            }

            v199 = [[v253 alloc] initWithPK64:*v149];
          }

          v295 = 0;
          v127 = v305;
          v305[v148] = v199;
          goto LABEL_243;
        }

        v148 = v310;
        if (v152 != 1)
        {
          goto LABEL_238;
        }

        if (v306)
        {
          v153 = v307[2];
          if (v133)
          {
            v272[v153 >> 3] |= 1 << (v153 & 7);
          }

          else
          {
            snapshot_set_int64(v282, v153, *v149);
          }

          goto LABEL_238;
        }

        if (byte_1ED4BEEC6 & v133)
        {
          v176 = 0;
        }

        else
        {
          if (byte_1ED4BEEC6)
          {
            v200 = v149;
          }

          else
          {
            v200 = v150;
          }

          v176 = CFNumberCreate(0, kCFNumberLongLongType, v200);
        }

        v295 = 0;
        v127 = v305;
        goto LABEL_318;
      }

      if (v130 == 1)
      {
        LODWORD(v316[0]) = 0;
        v162 = ((v132 + v131) & v144);
        if (!v133)
        {
          v132 = (v162 + 1);
        }

        v163 = v316;
        if (!v133)
        {
          v163 = v162;
        }

        v60 = v308;
        v151 = v313;
        v164 = *(v308 + v313 + 21);
        v309 = v132;
        if (v164 == 10)
        {
          v58 = v302;
          v127 = v305;
          if (v306)
          {
            v256(v267, v257, v307[2], *v163);
          }

          v148 = v310;
          goto LABEL_243;
        }

        v58 = v302;
        v127 = v305;
        if (v164 == 4)
        {
          v148 = v310;
          if (v306)
          {
            v258(v267, v259, v307[2], *v163);
          }

          else
          {
            if (v133)
            {
              v305[v310] = 0;
            }

            else
            {
              v127[v148] = v276(v286, v275, *v162);
            }

            v295 = 1;
          }

          goto LABEL_243;
        }

        v148 = v310;
        if (v164 != 1)
        {
          goto LABEL_243;
        }

        if (v306)
        {
          v165 = v307[2];
          if (v133)
          {
            v272[v165 >> 3] |= 1 << (v165 & 7);
          }

          else
          {
            type = snapshot_get_type(v282, v165);
            v210 = v307[2];
            v211 = *v162;
            if (type == 115)
            {
              snapshot_set_int16(v282, v210, v211);
            }

            else if (type == 99)
            {
              snapshot_set_int8(v282, v210, v211);
            }

            else
            {
              snapshot_set_int32(v282, v210, v211);
            }
          }

          goto LABEL_243;
        }

        if (byte_1ED4BEEC6 & v133)
        {
          v176 = 0;
        }

        else
        {
          if (byte_1ED4BEEC6)
          {
            v212 = v162;
          }

          else
          {
            v212 = v163;
          }

          v176 = CFNumberCreate(0, kCFNumberIntType, v212);
        }

LABEL_316:
        v147 = v304;
        goto LABEL_317;
      }

      goto LABEL_216;
    }

    if (v130 > 11)
    {
      break;
    }

    if ((v130 - 7) < 2)
    {
      if (!v306)
      {
        v60 = v308;
        v147 = v304;
        if (v133)
        {
          v309 = v132;
          v176 = 0;
          v58 = v302;
        }

        else
        {
          v177 = ((v132 + v131) & v144);
          v309 = (v177 + 1);
          v58 = v302;
          if (*(v307 + 20) == 7)
          {
            v176 = CFNumberCreate(0, kCFNumberDoubleType, v177);
          }

          else
          {
            v176 = CFDateCreate(0, *v177);
          }
        }

        v148 = v310;
        v127 = v305;
        goto LABEL_266;
      }

      v60 = v308;
      if ((v133 & 1) == 0)
      {
        v154 = ((v132 + v131) & v144);
        v309 = (v154 + 1);
        v155 = v307;
        v156 = v307[2];
        v58 = v302;
        if (*(v307 + 20) == 7)
        {
          v157 = v282;
          v158 = snapshot_get_type(v282, v156);
          v159 = v155[2];
          v160 = *v154;
          v148 = v310;
          v127 = v305;
          if (v158 == 102)
          {
            v161 = v160;
            snapshot_set_float(v157, v159, v161);
          }

          else
          {
            snapshot_set_double(v157, v159, v160);
          }

          goto LABEL_300;
        }

        snapshot_set_double(v282, v156, *v154);
LABEL_213:
        v148 = v310;
        goto LABEL_299;
      }

LABEL_211:
      v309 = v132;
      v272[v307[2] >> 3] |= 1 << (v307[2] & 7);
      goto LABEL_212;
    }

    if (v130 == 9)
    {
LABEL_209:
      if (v306)
      {
        v60 = v308;
        if ((v133 & 1) == 0)
        {
          v167 = ((v132 + v131) & v144);
          v168 = (v167 + 4);
          v58 = v302;
          if (v297 - (v167 + 4) < *v167)
          {
            v93 = v280;
            v94 = v312;
            if (!rows)
            {
              goto LABEL_435;
            }

            goto LABEL_433;
          }

          v169 = CFStringCreateWithCString(0, v167 + 4, 0x8000100u);
          v170 = *v167;
          v171 = *(v307 + 20);
          v148 = v310;
          if (v171 == 12)
          {
            v172 = [MEMORY[0x1E695DFF8] URLWithString:v169];
          }

          else
          {
            if (v171 != 4)
            {
              goto LABEL_298;
            }

            v172 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v169];
          }

LABEL_297:
          v309 = v172;
          CFRelease(v169);
          v169 = v309;
          goto LABEL_298;
        }

        goto LABEL_211;
      }

      v60 = v308;
      if (v133)
      {
        v309 = v132;
        v166 = 0;
        v58 = v302;
        v148 = v310;
        v151 = v313;
LABEL_242:
        v295 = 0;
        v127 = v305;
        v305[v148] = v166;
LABEL_243:
        v147 = v304;
        goto LABEL_319;
      }

      v173 = ((v132 + v131) & v144);
      v58 = v302;
      if (v297 - (v173 + 4) < *v173)
      {
        v93 = v280;
        v94 = v312;
        if (!rows)
        {
          goto LABEL_435;
        }

        goto LABEL_433;
      }

      v166 = CFStringCreateWithCString(0, v173 + 4, 0x8000100u);
      v309 = &v173[*v173 + 4];
      v174 = *(v307 + 20);
      v148 = v310;
      if (v174 == 12)
      {
        v175 = [MEMORY[0x1E695DFF8] URLWithString:v166];
        v151 = v313;
      }

      else
      {
        v151 = v313;
        if (v174 != 4)
        {
          goto LABEL_242;
        }

        v175 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v166];
      }

      CFRelease(v166);
      v166 = v175;
      goto LABEL_242;
    }

LABEL_216:
    if (v306)
    {
      if (v133)
      {
        v309 = v132;
        v272[v307[2] >> 3] |= 1 << (v307[2] & 7);
        goto LABEL_196;
      }

      v178 = ((v132 + v131) & v144);
      v168 = (v178 + 4);
      v179 = *v178;
      v60 = v308;
      if (v297 - (v178 + 4) < v179)
      {
        v93 = v280;
        v94 = v312;
        if (!rows)
        {
          goto LABEL_435;
        }

        goto LABEL_433;
      }

      v180 = CFDataCreate(0, v178 + 4, v179);
      v169 = v180;
      v170 = *v178;
      v181 = *(v307 + 20);
      v58 = v302;
      if (v181 == 11)
      {
        v201 = [(__CFData *)v180 length];
        v148 = v310;
        if (v201 == 16)
        {
          v309 = objc_alloc(MEMORY[0x1E696AFB0]);
          bytes2 = [(__CFString *)v169 bytes];
          v172 = [(__CFString *)v309 initWithUUIDBytes:bytes2];
          goto LABEL_297;
        }
      }

      else
      {
        v148 = v310;
        if (v181 == 15)
        {
          v172 = +[PFFaultingTransformedValue transformedValueWithData:forAttribute:](PFFaultingTransformedValue, v180, [*(v60 + v313 + 24) propertyDescription]);
          goto LABEL_297;
        }
      }

LABEL_298:
      v309 = (v168 + v170);
      snapshot_set_object(v282, v307[2], v169);
LABEL_299:
      v127 = v305;
      goto LABEL_300;
    }

    if ((v133 & 1) == 0)
    {
      v182 = ((v132 + v131) & v144);
      v183 = *v182;
      if (v297 - (v182 + 4) < v183)
      {
        v93 = v280;
        v94 = v312;
        if (!rows)
        {
          goto LABEL_435;
        }

        goto LABEL_433;
      }

      v176 = CFDataCreate(0, v182 + 4, v183);
      v309 = &v182[*v182 + 4];
      if (v130 != 17 || (v184 = v176, v185 = [v135 sqlType] == 10, v176 = v184, v185))
      {
        v60 = v308;
        v186 = *(v307 + 20);
        v127 = v305;
        v151 = v313;
        if (v186 == 11)
        {
          v307 = v176;
          v207 = [(__CFNumber *)v176 length];
          v58 = v302;
          if (v207 != 16)
          {
            v148 = v310;
            v147 = v304;
            v176 = v307;
            goto LABEL_317;
          }

          v208 = objc_alloc(MEMORY[0x1E696AFB0]);
          v206 = [v208 initWithUUIDBytes:{objc_msgSend(v307, "bytes")}];
        }

        else
        {
          v58 = v302;
          if (v186 != 15)
          {
            v148 = v310;
            v147 = v304;
            if (v186 == 18)
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Codable is not supported in the XPC store" userInfo:0]);
            }

            goto LABEL_317;
          }

          v204 = v176;
          propertyDescription = [*(v308 + v313 + 24) propertyDescription];
          v307 = v204;
          v206 = [_PFRoutines retainedDecodeValue:v204 forTransformableAttribute:propertyDescription];
        }

        v203 = v206;
        v148 = v310;
      }

      else
      {
        v60 = v308;
        v151 = v313;
        [*(v308 + v313 + 24) propertyDescription];
        v307 = v184;
        v203 = _swizzleManifestTypeDataXPC(v184, v135);
        v58 = v302;
        v148 = v310;
        v127 = v305;
      }

      CFRelease(v307);
      v176 = v203;
      goto LABEL_316;
    }

    v309 = v132;
    v176 = 0;
    v60 = v308;
    v58 = v302;
    v148 = v310;
    v147 = v304;
    v127 = v305;
LABEL_266:
    v151 = v313;
LABEL_317:
    v295 = 0;
LABEL_318:
    v127[v148] = v176;
LABEL_319:
    if (v147 && v151 == 72 && *(v147 + 46) == 16001)
    {
      v213 = [v127[v148] intValue] == 2;
      v314 |= v213;
    }

    else if (v151 == 120 && (v314 & 1) != 0)
    {
      intValue = [v127[v148] intValue];
      v314 = 1;
    }

    v105 = (v148 + v301);
    ++ancillarySQLModels;
    v128 = v151 + 24;
    if (v300 == v128)
    {
      goto LABEL_331;
    }
  }

  if ((v130 - 13) < 2)
  {
    v309 = v132;
    v295 = 0;
LABEL_196:
    v60 = v308;
LABEL_212:
    v58 = v302;
    goto LABEL_213;
  }

  if (v130 == 12)
  {
    goto LABEL_209;
  }

  if (v130 != 16)
  {
    goto LABEL_216;
  }

  v145 = v133;
  v146 = [objc_msgSend(*(v308 + v313 + 24) "propertyDescription")];
  LOBYTE(v133) = v145;
  if (!v146)
  {
    goto LABEL_216;
  }

  if (v145)
  {
    v309 = v132;
    v147 = v304;
    if (v306)
    {
      v60 = v308;
      v272[v307[2] >> 3] |= 1 << (v307[2] & 7);
      v58 = v302;
      v148 = v310;
      v127 = v305;
    }

    else
    {
      v295 = 0;
      v195 = v310;
      v127 = v305;
      v305[v310] = 0;
      v60 = v308;
      v58 = v302;
      v148 = v195;
    }

    goto LABEL_301;
  }

  v187 = ((v132 + v131) & v144);
  v188 = v187 + 1;
  if (v297 - (v187 + 1) >= *v187)
  {
    v189 = [MEMORY[0x1E695DEF0] dataWithBytes:v187 + 1 length:?];
    v190 = *v187;
    v60 = v308;
    fileBackedFuturesDirectory = v254;
    if (!v254)
    {
      fileBackedFuturesDirectory = [(NSPersistentStore *)options fileBackedFuturesDirectory];
    }

    v309 = (v188 + v190);
    v192 = [_NSDataFileBackedFuture alloc];
    v254 = fileBackedFuturesDirectory;
    v193 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v192, "initWithStoreMetadata:directory:", v189, [MEMORY[0x1E695DFF8] fileURLWithPath:fileBackedFuturesDirectory isDirectory:1]);
    v58 = v302;
    if (v306)
    {
      snapshot_set_object(v282, v307[2], v193);
      goto LABEL_213;
    }

    v295 = 0;
    v148 = v310;
    v127 = v305;
    v305[v310] = v193;
LABEL_300:
    v147 = v304;
LABEL_301:
    v151 = v313;
    goto LABEL_319;
  }

  v93 = v280;
  v94 = v312;
  if (!rows)
  {
    goto LABEL_435;
  }

LABEL_433:
  v242 = MEMORY[0x1E696ABC0];
  v243 = *MEMORY[0x1E696A250];
  v244 = MEMORY[0x1E695DF20];
  v245 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], *(v308 + v313 + 24));
LABEL_434:
  *rows = [v242 errorWithDomain:v243 code:134060 userInfo:{objc_msgSend(v244, "dictionaryWithObject:forKey:", v245, @"Reason"}];
LABEL_435:
  v95 = v281;
LABEL_436:
  if (v95 >= 0x201)
  {
    NSZoneFree(0, v284);
    NSZoneFree(0, v278);
  }

  if (v93 >= 0x201)
  {
    NSZoneFree(0, v291);
  }

  PF_FREE_OBJECT_ARRAY(v298);

  if (p_isa)
  {
  }

  return 0;
}

@end