@interface NSCKRecordZoneMetadata
+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)d inDatabaseWithScope:(void *)scope forStore:(void *)store inContext:(int)context createIfMissing:(uint64_t)missing error:;
+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)d inDatabaseWithScope:(void *)scope forStore:(void *)store inContext:(uint64_t)context error:;
+ (NSString)entityPath;
+ (id)countZonesInStore:(id)store matchingPredicate:(id)predicate withManagedObjectContext:(id)context error:(id *)error;
+ (id)fetchZoneIDsAssignedToObjectsWithIDs:(id)ds fromStore:(id)store inContext:(id)context error:(id *)error;
- (BOOL)hasRecordZone;
- (BOOL)hasSubscription;
- (void)createRecordZoneID;
- (void)destroyEncodedShareData;
- (void)setHasRecordZone:(BOOL)zone;
- (void)setHasSubscription:(BOOL)subscription;
- (void)updateEncodedShareWithData:(id)data;
@end

@implementation NSCKRecordZoneMetadata

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

- (BOOL)hasRecordZone
{
  hasRecordZoneNum = [(NSCKRecordZoneMetadata *)self hasRecordZoneNum];

  return [hasRecordZoneNum BOOLValue];
}

- (void)setHasRecordZone:(BOOL)zone
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:zone];

  [(NSCKRecordZoneMetadata *)self setHasRecordZoneNum:v4];
}

- (BOOL)hasSubscription
{
  hasSubscriptionNum = [(NSCKRecordZoneMetadata *)self hasSubscriptionNum];

  return [hasSubscriptionNum BOOLValue];
}

- (void)setHasSubscription:(BOOL)subscription
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:subscription];

  [(NSCKRecordZoneMetadata *)self setHasSubscriptionNum:v4];
}

- (void)createRecordZoneID
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (![result ckRecordZoneName] || !objc_msgSend(v1, "ckOwnerName") || (result = objc_msgSend(objc_alloc(getCloudKitCKRecordZoneIDClass[0]()), "initWithZoneName:ownerName:", objc_msgSend(v1, "ckRecordZoneName"), objc_msgSend(v1, "ckOwnerName"))) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v4 = 138412290;
        v5 = v1;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: createRecordZoneID called before object has an owner name and zone name: %@\n", &v4, 0xCu);
      }

      v3 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = 138412290;
        v5 = v1;
        _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: createRecordZoneID called before object has an owner name and zone name: %@", &v4, 0xCu);
      }

      return 0;
    }
  }

  return result;
}

+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)d inDatabaseWithScope:(void *)scope forStore:(void *)store inContext:(uint64_t)context error:
{
  objc_opt_self();

  return [NSCKRecordZoneMetadata zoneMetadataForZoneID:a2 inDatabaseWithScope:d forStore:scope inContext:store createIfMissing:1 error:context];
}

+ (NSManagedObject)zoneMetadataForZoneID:(uint64_t)d inDatabaseWithScope:(void *)scope forStore:(void *)store inContext:(int)context createIfMissing:(uint64_t)missing error:
{
  v31[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (d == 3)
  {
    if (([objc_msgSend(a2 "zoneName")] & 1) != 0 || (v12 = objc_msgSend(a2, "zoneName"), objc_msgSend(v12, "isEqualToString:", getCloudKitCKRecordZoneDefaultName())))
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        scopeCopy2 = scope;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to work with the core-data or default zone in the shared database: %@\n", buf, 0xCu);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        scopeCopy2 = scope;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to work with the core-data or default zone in the shared database: %@", buf, 0xCu);
      }
    }
  }

  v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  v31[0] = scope;
  -[NSFetchRequest setAffectedStores:](v15, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1]);
  v16 = MEMORY[0x1E696AE18];
  zoneName = [a2 zoneName];
  ownerName = [a2 ownerName];
  -[NSFetchRequest setPredicate:](v15, "setPredicate:", [v16 predicateWithFormat:@"%K = %@ AND %K = %@ AND database.databaseScopeNum = %@", @"ckRecordZoneName", zoneName, @"ckOwnerName", ownerName, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", d)]);
  v19 = [store executeFetchRequest:v15 error:missing];
  lastObject = v19;
  if (v19)
  {
    if ([(NSManagedObject *)v19 count]>= 2)
    {
      v21 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        scopeCopy2 = a2;
        v29 = 2112;
        v30 = lastObject;
        _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: fault: Multiple zone entires discovered for a single record zone: %@\n%@\n", buf, 0x16u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        scopeCopy2 = a2;
        v29 = 2112;
        v30 = lastObject;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Multiple zone entires discovered for a single record zone: %@\n%@", buf, 0x16u);
      }
    }

    lastObject = [(NSManagedObject *)lastObject lastObject];
    if (!lastObject && context)
    {
      v23 = [NSCKDatabaseMetadata databaseMetadataForScope:d forStore:scope inContext:store error:missing];
      if (v23)
      {
        v24 = v23;
        lastObject = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMetadata entityPath], store);
        -[NSManagedObject setCkRecordZoneName:](lastObject, "setCkRecordZoneName:", [a2 zoneName]);
        -[NSManagedObject setCkOwnerName:](lastObject, "setCkOwnerName:", [a2 ownerName]);
        [(NSManagedObject *)lastObject setDatabase:v24];
        [store assignObject:lastObject toPersistentStore:scope];
      }

      else
      {
        return 0;
      }
    }
  }

  return lastObject;
}

+ (id)fetchZoneIDsAssignedToObjectsWithIDs:(id)ds fromStore:(id)store inContext:(id)context error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [PFCloudKitMetadataModel createMapOfEntityIDToPrimaryKeySetForObjectIDs:ds];
  v8 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v8)
  {
    errorCopy = error;
    v23 = *v34;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = [obj objectForKey:v10];
        v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordMetadata entityPath]);
        -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"entityId = %@ and entityPK IN %@", v10, v11]);
        [(NSFetchRequest *)v12 setResultType:2];
        [(NSFetchRequest *)v12 setPropertiesToFetch:&unk_1EF43D510];
        [(NSFetchRequest *)v12 setPropertiesToGroupBy:&unk_1EF43D528];
        storeCopy = store;
        -[NSFetchRequest setAffectedStores:](v12, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&storeCopy count:1]);
        v13 = [context executeFetchRequest:v12 error:&v37];
        v14 = v13;
        if (!v13)
        {
          if (v37)
          {
            if (errorCopy)
            {
              *errorCopy = v37;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
              v40 = 1024;
              v41 = 172;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
            }

            v20 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              *buf = 136315394;
              v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
              v40 = 1024;
              v41 = 172;
              _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
            }
          }

          v28 = 0;
          goto LABEL_25;
        }

        v27 = v9;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v29 objects:v42 count:16];
        if (v15)
        {
          v16 = *v30;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v30 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(*(*(&v29 + 1) + 8 * i) ownerName:{"objectForKey:", @"recordZone.ckRecordZoneName", objc_msgSend(*(*(&v29 + 1) + 8 * i), "objectForKey:", @"recordZone.ckOwnerName"}];
              [v28 addObject:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v29 objects:v42 count:16];
          }

          while (v15);
        }

        v9 = v27 + 1;
      }

      while (v27 + 1 != v8);
      v8 = [obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  return v28;
}

+ (id)countZonesInStore:(id)store matchingPredicate:(id)predicate withManagedObjectContext:(id)context error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v10 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKRecordZoneMetadata entityPath]);
  [(NSFetchRequest *)v10 setPredicate:predicate];
  [(NSFetchRequest *)v10 setResultType:4];
  v20[0] = store;
  -[NSFetchRequest setAffectedStores:](v10, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1]);
  v11 = [context executeFetchRequest:v10 error:&v15];
  if (!v11 || (result = [v11 lastObject]) == 0)
  {
    if (v15)
    {
      if (error)
      {
        result = 0;
        *error = v15;
        return result;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
        v18 = 1024;
        v19 = 202;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKRecordZoneMetadata.m";
        v18 = 1024;
        v19 = 202;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    return 0;
  }

  return result;
}

- (void)updateEncodedShareWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    if (![(NSCKRecordZoneMetadata *)self encodedShareAsset])
    {
      [(NSCKRecordZoneMetadata *)self setEncodedShareAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKRecordZoneMetadataEncodedShareAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      [(NSManagedObjectContext *)[(NSManagedObject *)self managedObjectContext] assignObject:[(NSCKRecordZoneMetadata *)self encodedShareAsset] toPersistentStore:[(NSManagedObjectID *)[(NSManagedObject *)self objectID] persistentStore]];
    }

    encodedShareAsset = [(NSCKRecordZoneMetadata *)self encodedShareAsset];
    if (encodedShareAsset)
    {
      v6 = encodedShareAsset;
      v7 = [dataCopy length];
      if (v7 <= 0x4000)
      {
        v8 = dataCopy;
      }

      else
      {
        v8 = 0;
      }

      if (v7 <= 0x4000)
      {
        dataCopy = 0;
      }

      [v6 setBinaryData:v8];

      [v6 setExternalBinaryData:dataCopy];
    }
  }

  else
  {

    [(NSCKRecordZoneMetadata *)self destroyEncodedShareData];
  }
}

- (void)destroyEncodedShareData
{
  if ([(NSCKRecordZoneMetadata *)self encodedShareAsset])
  {
    managedObjectContext = [(NSManagedObject *)self managedObjectContext];
    encodedShareAsset = [(NSCKRecordZoneMetadata *)self encodedShareAsset];

    [(NSManagedObjectContext *)managedObjectContext deleteObject:encodedShareAsset];
  }
}

@end