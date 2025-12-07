@interface NSCKMetadataEntry
+ (NSManagedObject)_insertMetadataEntryWithKey:(uint64_t)key forStore:(void *)store intoManagedObjectContext:;
+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)key BOOLValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:;
+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)key stringValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:;
+ (NSString)entityPath;
+ (uint64_t)_updateOrInsertMetadataEntryWithKey:(uint64_t)key valueSettingBlock:(uint64_t)block forStore:(void *)store intoManagedObjectContext:(void *)context error:;
+ (uint64_t)entryForKey:(uint64_t)key fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(char)key BOOLValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key integerValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key stringValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:;
+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key transformedValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:;
+ (void)entriesForKeys:(uint64_t)keys fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
+ (void)entriesForKeys:(void *)keys onlyFetchingProperties:(uint64_t)properties fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
- (BOOL)BOOLValue;
- (__CFString)describeValue;
- (void)setBoolValue:(BOOL)value;
@end

@implementation NSCKMetadataEntry

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

- (BOOL)BOOLValue
{
  bOOLValueNum = [(NSCKMetadataEntry *)self BOOLValueNum];

  return [bOOLValueNum BOOLValue];
}

- (void)setBoolValue:(BOOL)value
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:value];

  [(NSCKMetadataEntry *)self setBoolValueNum:v4];
}

- (__CFString)describeValue
{
  v14 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ([(__CFString *)result stringValue])
  {

    return [(__CFString *)v1 stringValue];
  }

  if ([(__CFString *)v1 integerValue])
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [-[__CFString integerValue](v1 "integerValue")]);
  }

  if ([(__CFString *)v1 BOOLValueNum])
  {
    if ([(__CFString *)v1 BOOLValue])
    {
      return @"YES";
    }

    else
    {
      return @"NO";
    }
  }

  if ([(__CFString *)v1 transformedValue])
  {
    transformedValue = [(__CFString *)v1 transformedValue];
LABEL_17:

    return [transformedValue description];
  }

  if ([(__CFString *)v1 dateValue])
  {
    transformedValue = [(__CFString *)v1 dateValue];
    goto LABEL_17;
  }

  v3 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v5 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v6 = OS_LOG_TYPE_FAULT;
  }

  else
  {
    v6 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(Stream, v6))
  {
    v7 = objc_opt_class();
    *buf = 136315650;
    v9 = "[NSCKMetadataEntry describeValue]";
    v10 = 1024;
    v11 = 48;
    v12 = 2112;
    v13 = NSStringFromClass(v7);
    _os_log_impl(&dword_18565F000, v5, v6, "CoreData+CloudKit: %s(%d): %@ doesn't know how to handle it's specified value. Please file a bug with this outpout and send to Core Data | New Bugs.", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v3);
  return [(__CFString *)v1 description];
}

+ (uint64_t)entryForKey:(uint64_t)key fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11[0] = a2;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  objc_opt_self();
  return [+[NSCKMetadataEntry entriesForKeys:onlyFetchingProperties:fromStore:inManagedObjectContext:error:](NSCKMetadataEntry v9];
}

+ (void)entriesForKeys:(uint64_t)keys fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  objc_opt_self();

  return [NSCKMetadataEntry entriesForKeys:a2 onlyFetchingProperties:0 fromStore:keys inManagedObjectContext:store error:context];
}

+ (void)entriesForKeys:(void *)keys onlyFetchingProperties:(uint64_t)properties fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  v24[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v11 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMetadataEntry entityPath]);
  -[NSFetchRequest setPredicate:](v11, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"key IN (%@)", a2]);
  v24[0] = properties;
  -[NSFetchRequest setAffectedStores:](v11, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1]);
  if ([keys count])
  {
    [(NSFetchRequest *)v11 setPropertiesToFetch:keys];
  }

  else
  {
    [(NSFetchRequest *)v11 setReturnsObjectsAsFaults:0];
  }

  v12 = [store executeFetchRequest:v11 error:context];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (v12)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v12);
          }

          [dictionary setObject:*(*(&v19 + 1) + 8 * v17) forKey:{objc_msgSend(*(*(&v19 + 1) + 8 * v17), "key")}];
          ++v17;
        }

        while (v15 != v17);
        v15 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }
  }

  return dictionary;
}

+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)key stringValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:
{
  objc_opt_self();
  v9 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:value intoManagedObjectContext:store];
  [(NSManagedObject *)v9 setStringValue:key];
  return v9;
}

+ (NSManagedObject)_insertMetadataEntryWithKey:(uint64_t)key forStore:(void *)store intoManagedObjectContext:
{
  objc_opt_self();
  v7 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMetadataEntry entityPath], store);
  [(NSManagedObject *)v7 setKey:a2];
  [store assignObject:v7 toPersistentStore:key];
  return v7;
}

+ (NSManagedObject)insertMetadataEntryWithKey:(uint64_t)key BOOLValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:
{
  objc_opt_self();
  v9 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:value intoManagedObjectContext:store];
  [(NSManagedObject *)v9 setBoolValue:key];
  return v9;
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(char)key BOOLValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_BOOLValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &__block_descriptor_33_e27_v16__0__NSCKMetadataEntry_8l;
  keyCopy = key;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:value intoManagedObjectContext:store error:context];
}

+ (uint64_t)_updateOrInsertMetadataEntryWithKey:(uint64_t)key valueSettingBlock:(uint64_t)block forStore:(void *)store intoManagedObjectContext:(void *)context error:
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v16 = 0;
  v11 = [NSCKMetadataEntry entryForKey:a2 fromStore:block inManagedObjectContext:store error:&v16];
  if (!v11)
  {
    v11 = [NSCKMetadataEntry _insertMetadataEntryWithKey:a2 forStore:block intoManagedObjectContext:store];
    if (!v11)
    {
      if (v16)
      {
        if (context)
        {
          v12 = 0;
          *context = v16;
          return v12;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMetadataEntry.m";
          v19 = 1024;
          v20 = 237;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v15 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMetadataEntry.m";
          v19 = 1024;
          v20 = 237;
          _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      return 0;
    }
  }

  v12 = v11;
  (*(key + 16))(key, v11);
  return v12;
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key stringValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __108__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_stringValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = key;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:value intoManagedObjectContext:store error:context];
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key transformedValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __113__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_transformedValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = key;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:value intoManagedObjectContext:store error:context];
}

+ (uint64_t)updateOrInsertMetadataEntryWithKey:(uint64_t)key integerValue:(uint64_t)value forStore:(void *)store intoManagedObjectContext:(void *)context error:
{
  objc_opt_self();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __109__NSCKMetadataEntry_updateOrInsertMetadataEntryWithKey_integerValue_forStore_intoManagedObjectContext_error___block_invoke;
  v12[3] = &unk_1E6EC4300;
  v12[4] = key;
  return [NSCKMetadataEntry _updateOrInsertMetadataEntryWithKey:a2 valueSettingBlock:v12 forStore:value intoManagedObjectContext:store error:context];
}

@end