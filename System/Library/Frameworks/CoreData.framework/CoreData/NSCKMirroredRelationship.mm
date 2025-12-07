@interface NSCKMirroredRelationship
+ (BOOL)updateMirroredRelationshipsMatchingRecords:(uint64_t)records forStore:(void *)store withManagedObjectContext:(uint64_t)context usingBlock:(void *)block error:;
+ (NSManagedObject)insertMirroredRelationshipForManyToMany:(uint64_t)many inZoneWithMetadata:(uint64_t)metadata inStore:(void *)store withManagedObjectContext:;
+ (NSString)entityPath;
+ (id)fetchMirroredRelationshipsMatchingRelatingRecords:(void *)records andRelatingRecordIDs:(uint64_t)ds fromStore:(void *)store inManagedObjectContext:(void *)context error:;
+ (id)markRelationshipsForDeletedRecordIDs:(uint64_t)ds inStore:(void *)store withManagedObjectContext:(void *)context error:;
+ (uint64_t)countMirroredRelationshipsInStore:(uint64_t)store matchingPredicate:(unint64_t)predicate withManagedObjectContext:(id *)context error:;
+ (uint64_t)fetchMirroredRelationshipsMatchingPredicate:(uint64_t)predicate fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:;
+ (uint64_t)fetchPendingMirroredRelationshipsInStore:(void *)store withManagedObjectContext:(void *)context error:;
+ (uint64_t)purgeMirroredRelationshipsWithRecordIDs:(uint64_t)ds fromStore:(void *)store withManagedObjectContext:(void *)context error:;
+ (void)mirroredRelationshipForManyToMany:(uint64_t)many inStore:(void *)store withManagedObjectContext:(uint64_t)context error:;
- (BOOL)isPendingBool;
- (BOOL)isUploadedBool;
- (BOOL)needsDeleteBool;
- (BOOL)updateRelationshipValueUsingImportContext:(void *)context andManagedObjectContext:(int)objectContext isDelete:(uint64_t *)delete error:;
- (void)createRecordID;
- (void)createRecordIDForRecord;
- (void)createRecordIDForRelatedRecord;
- (void)destroySystemFieldsData;
- (void)setIsPendingBool:(BOOL)bool;
- (void)setIsUploadedBool:(BOOL)bool;
- (void)setNeedsDeleteBool:(BOOL)bool;
- (void)updateSystemFieldsWithData:(id)data;
@end

@implementation NSCKMirroredRelationship

- (BOOL)isPendingBool
{
  isPending = [(NSCKMirroredRelationship *)self isPending];

  return [isPending BOOLValue];
}

- (void)setIsPendingBool:(BOOL)bool
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:bool];

  [(NSCKMirroredRelationship *)self setIsPending:v4];
}

- (BOOL)needsDeleteBool
{
  needsDelete = [(NSCKMirroredRelationship *)self needsDelete];

  return [needsDelete BOOLValue];
}

- (void)setNeedsDeleteBool:(BOOL)bool
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:bool];

  [(NSCKMirroredRelationship *)self setNeedsDelete:v4];
}

- (BOOL)isUploadedBool
{
  isUploaded = [(NSCKMirroredRelationship *)self isUploaded];

  return [isUploaded BOOLValue];
}

- (void)setIsUploadedBool:(BOOL)bool
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:bool];

  [(NSCKMirroredRelationship *)self setIsUploaded:v4];
}

- (void)createRecordID
{
  selfCopy = self;
  if (self)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([self recordZone]);
    if (v2)
    {
      selfCopy = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(selfCopy zoneID:{"ckRecordID"), v2}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)createRecordIDForRecord
{
  selfCopy = self;
  if (self)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([self recordZone]);
    if (v2)
    {
      selfCopy = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(selfCopy zoneID:{"recordName"), v2}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)createRecordIDForRelatedRecord
{
  selfCopy = self;
  if (self)
  {
    v2 = -[NSCKRecordZoneMetadata createRecordZoneID]([self recordZone]);
    if (v2)
    {
      selfCopy = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(selfCopy zoneID:{"relatedRecordName"), v2}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (BOOL)updateRelationshipValueUsingImportContext:(void *)context andManagedObjectContext:(int)objectContext isDelete:(uint64_t *)delete error:
{
  v33 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [objc_msgSend(context "persistentStoreCoordinator")];
  v11 = [objc_msgSend(objc_msgSend(objc_msgSend(v10 "entitiesByName")];
  createRecordIDForRecord = [(NSCKMirroredRelationship *)v9 createRecordIDForRecord];
  createRecordIDForRelatedRecord = [(NSCKMirroredRelationship *)v9 createRecordIDForRelatedRecord];
  v14 = [objc_msgSend(v11 "entity")];
  if (a2)
  {
    v15 = [objc_msgSend(*(a2 + 64) objectForKey:{v14), "objectForKey:", createRecordIDForRecord}];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_msgSend(objc_msgSend(v11 "inverseRelationship")];
  if (a2)
  {
    v17 = [objc_msgSend(*(a2 + 64) objectForKey:{v16), "objectForKey:", createRecordIDForRelatedRecord}];
    if (v15)
    {
      v18 = v17;
      if (v17)
      {
        v19 = [context objectWithID:v15];
        v20 = [context objectWithID:v18];
        [v11 name];
        v21 = [objc_msgSend_valueForKey_(v19) mutableCopy];
        if (!v21)
        {
          v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        if (objectContext)
        {
          [v21 removeObject:v20];
        }

        else
        {
          [v21 addObject:v20];
        }

        [v19 setValue:v21 forKey:{objc_msgSend(v11, "name")}];

        v22 = 0;
        v23 = 1;
        goto LABEL_18;
      }

      goto LABEL_15;
    }

LABEL_16:
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A250];
    v26 = 134413;
    goto LABEL_17;
  }

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_15:
  v24 = MEMORY[0x1E696ABC0];
  v25 = *MEMORY[0x1E696A250];
  v26 = 134412;
LABEL_17:
  v22 = [v24 errorWithDomain:v25 code:v26 userInfo:0];
  v23 = 0;
LABEL_18:

  if (v23)
  {
    return 1;
  }

  if (v22)
  {
    if (delete)
    {
      result = 0;
      *delete = v22;
      return result;
    }

    return 0;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v29 = 136315394;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
    v31 = 1024;
    v32 = 145;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v29, 0x12u);
  }

  v28 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v28, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v29 = 136315394;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
    v31 = 1024;
    v32 = 145;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v29, 0x12u);
    return 0;
  }

  return result;
}

+ (id)fetchMirroredRelationshipsMatchingRelatingRecords:(void *)records andRelatingRecordIDs:(uint64_t)ds fromStore:(void *)store inManagedObjectContext:(void *)context error:
{
  v58 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v49 = 0;
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = [records countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v9)
  {
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(records);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v8 objectForKey:{objc_msgSend(v12, "zoneID")}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v13 forKey:{objc_msgSend(v12, "zoneID")}];
        }

        [v13 addObject:{objc_msgSend(v12, "recordName")}];
      }

      v9 = [records countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v9);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = [a2 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v14)
  {
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v41 + 1) + 8 * j);
        v18 = [v8 objectForKey:{objc_msgSend(objc_msgSend(v17, "recordID"), "zoneID")}];
        if (!v18)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v18 forKey:{objc_msgSend(objc_msgSend(v17, "recordID"), "zoneID")}];
        }

        [v18 addObject:{objc_msgSend(objc_msgSend(v17, "recordID"), "recordName")}];
      }

      v14 = [a2 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v14);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [v8 countByEnumeratingWithState:&v37 objects:v55 count:16];
  if (v19)
  {
    v20 = *v38;
LABEL_21:
    v21 = 0;
    while (1)
    {
      if (*v38 != v20)
      {
        objc_enumerationMutation(v8);
      }

      v22 = *(*(&v37 + 1) + 8 * v21);
      v23 = objc_autoreleasePoolPush();
      v24 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
      v25 = [v8 objectForKey:v22];
      -[NSFetchRequest setPredicate:](v24, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(ckRecordID IN %@ OR recordName IN %@ OR relatedRecordName IN %@) AND recordZone.ckRecordZoneName = %@ AND recordZone.ckOwnerName = %@", v25, v25, v25, objc_msgSend(v22, "zoneName"), objc_msgSend(v22, "ownerName")]);
      dsCopy = ds;
      -[NSFetchRequest setAffectedStores:](v24, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&dsCopy count:1]);
      [(NSFetchRequest *)v24 setRelationshipKeyPathsForPrefetching:&unk_1EF43D6C0];
      [(NSFetchRequest *)v24 setReturnsObjectsAsFaults:0];
      v26 = [store executeFetchRequest:v24 error:&v49];
      if (v26)
      {
        [v36 addObjectsFromArray:v26];
      }

      else
      {
        v27 = v49;

        v36 = 0;
      }

      objc_autoreleasePoolPop(v23);
      if (!v26)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v8 countByEnumeratingWithState:&v37 objects:v55 count:16];
        if (v19)
        {
          goto LABEL_21;
        }

        break;
      }
    }
  }

  if (!v36)
  {
    v28 = v49;
    if (v28)
    {
      if (context)
      {
        v36 = 0;
        *context = v28;
        goto LABEL_39;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v51 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v52 = 1024;
        v53 = 203;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v30 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v51 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v52 = 1024;
        v53 = 203;
        _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v36 = 0;
  }

LABEL_39:

  v49 = 0;
  v31 = v36;
  return v36;
}

+ (uint64_t)fetchPendingMirroredRelationshipsInStore:(void *)store withManagedObjectContext:(void *)context error:
{
  v17[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v12 = 0;
  v7 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v17[0] = a2;
  -[NSFetchRequest setAffectedStores:](v7, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1]);
  -[NSFetchRequest setPredicate:](v7, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"isPending == 1"]);
  v8 = [store executeFetchRequest:v7 error:&v12];
  if (!v8)
  {
    if (v12)
    {
      if (context)
      {
        *context = v12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v15 = 1024;
        v16 = 224;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v11 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v15 = 1024;
        v16 = 224;
        _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return v8;
}

+ (void)mirroredRelationshipForManyToMany:(uint64_t)many inStore:(void *)store withManagedObjectContext:(uint64_t)context error:
{
  v19[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v19[0] = many;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1]);
  if (a2)
  {
    v10 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
  }

  -[NSFetchRequest setPredicate:](v9, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"ckRecordID = %@", objc_msgSend(v10, "recordName")]);
  result = [store executeFetchRequest:v9 error:context];
  if (result)
  {
    v12 = result;
    if ([result count] >= 2)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = a2;
        v17 = 2112;
        v18 = v12;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found more than one mirrored relationship matching a many to many: %@\n%@\n", buf, 0x16u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v16 = a2;
        v17 = 2112;
        v18 = v12;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Found more than one mirrored relationship matching a many to many: %@\n%@", buf, 0x16u);
      }
    }

    return [v12 lastObject];
  }

  return result;
}

+ (NSManagedObject)insertMirroredRelationshipForManyToMany:(uint64_t)many inZoneWithMetadata:(uint64_t)metadata inStore:(void *)store withManagedObjectContext:
{
  objc_opt_self();
  v9 = +[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMirroredRelationship entityPath], store);
  [store assignObject:v9 toPersistentStore:metadata];
  if (a2)
  {
    -[NSManagedObject setCkRecordID:](v9, "setCkRecordID:", [*(a2 + 32) recordName]);
    v10 = *(a2 + 16);
  }

  else
  {
    -[NSManagedObject setCkRecordID:](v9, "setCkRecordID:", [0 recordName]);
    v10 = 0;
  }

  -[NSManagedObject setCdEntityName:](v9, "setCdEntityName:", [objc_msgSend(v10 "entity")]);
  if (a2)
  {
    -[NSManagedObject setRecordName:](v9, "setRecordName:", [*(a2 + 48) recordName]);
    v11 = *(a2 + 24);
  }

  else
  {
    -[NSManagedObject setRecordName:](v9, "setRecordName:", [0 recordName]);
    v11 = 0;
  }

  -[NSManagedObject setRelatedEntityName:](v9, "setRelatedEntityName:", [objc_msgSend(v11 "entity")]);
  if (a2)
  {
    -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [*(a2 + 56) recordName]);
    v12 = *(a2 + 16);
  }

  else
  {
    -[NSManagedObject setRelatedRecordName:](v9, "setRelatedRecordName:", [0 recordName]);
    v12 = 0;
  }

  -[NSManagedObject setRelationshipName:](v9, "setRelationshipName:", [v12 name]);
  v13 = MEMORY[0x1E695E110];
  [(NSManagedObject *)v9 setIsPending:MEMORY[0x1E695E110]];
  [(NSManagedObject *)v9 setIsUploaded:v13];
  [(NSManagedObject *)v9 setNeedsDelete:v13];
  [(NSManagedObject *)v9 setRecordZone:many];
  return v9;
}

+ (uint64_t)purgeMirroredRelationshipsWithRecordIDs:(uint64_t)ds fromStore:(void *)store withManagedObjectContext:(void *)context error:
{
  v61 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v51 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v9)
  {
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [v8 objectForKey:{objc_msgSend(v12, "zoneID")}];
        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v8 setObject:v13 forKey:{objc_msgSend(v12, "zoneID")}];
        }

        [v13 addObject:{objc_msgSend(v12, "recordName")}];
      }

      v9 = [a2 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v9);
  }

  v14 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  dsCopy = ds;
  -[NSFetchRequest setAffectedStores:](v14, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&dsCopy count:1]);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = [v8 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v15)
  {
    v16 = *v44;
LABEL_12:
    v17 = 0;
    while (1)
    {
      if (*v44 != v16)
      {
        objc_enumerationMutation(v8);
      }

      v18 = *(*(&v43 + 1) + 8 * v17);
      v19 = [v8 objectForKey:v18];
      -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"((recordZone.ckRecordZoneName = %@) AND (recordZone.ckOwnerName = %@) AND (ckRecordID IN %@))", objc_msgSend(v18, "zoneName"), objc_msgSend(v18, "ownerName"), v19]);
      v20 = [store executeFetchRequest:v14 error:&v51];
      v21 = v20;
      if (!v20)
      {
        goto LABEL_34;
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v22 = [v20 countByEnumeratingWithState:&v39 objects:v57 count:16];
      if (v22)
      {
        v23 = *v40;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v40 != v23)
            {
              objc_enumerationMutation(v21);
            }

            [store deleteObject:*(*(&v39 + 1) + 8 * j)];
          }

          v22 = [v21 countByEnumeratingWithState:&v39 objects:v57 count:16];
        }

        while (v22);
      }

      if (++v17 == v15)
      {
        v15 = [v8 countByEnumeratingWithState:&v43 objects:v58 count:16];
        if (v15)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  -[NSFetchRequest setPredicate:](v14, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"(needsDelete = 1 AND isUploaded = 1)"]);
  v25 = [store executeFetchRequest:v14 error:&v51];
  v26 = v25;
  if (!v25)
  {
LABEL_34:
    v30 = 0;
    goto LABEL_35;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = [v25 countByEnumeratingWithState:&v35 objects:v56 count:16];
  if (v27)
  {
    v28 = *v36;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [store deleteObject:*(*(&v35 + 1) + 8 * k)];
      }

      v27 = [v26 countByEnumeratingWithState:&v35 objects:v56 count:16];
    }

    while (v27);
  }

  v30 = 1;
LABEL_35:

  if ((v30 & 1) == 0)
  {
    if (v51)
    {
      if (context)
      {
        *context = v51;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v54 = 1024;
        v55 = 363;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v32 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v54 = 1024;
        v55 = 363;
        _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return v30;
}

+ (id)markRelationshipsForDeletedRecordIDs:(uint64_t)ds inStore:(void *)store withManagedObjectContext:(void *)context error:
{
  v61 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v52 = 0;
  if ([a2 count])
  {
    contextCopy = context;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v10 = [a2 countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v10)
    {
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(a2);
          }

          v13 = *(*(&v48 + 1) + 8 * i);
          v14 = [v9 objectForKey:{objc_msgSend(v13, "zoneID")}];
          if (!v14)
          {
            v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v9 setObject:v14 forKey:{objc_msgSend(v13, "zoneID")}];
          }

          [v14 addObject:{objc_msgSend(v13, "recordName")}];
        }

        v10 = [a2 countByEnumeratingWithState:&v48 objects:v60 count:16];
      }

      while (v10);
    }

    v15 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
    dsCopy = ds;
    -[NSFetchRequest setAffectedStores:](v15, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:&dsCopy count:1]);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v16 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v16)
    {
      v37 = *v45;
      v17 = MEMORY[0x1E695E118];
      v18 = MEMORY[0x1E695E110];
      v35 = v15;
LABEL_13:
      v19 = 0;
      v36 = v16;
      while (1)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v9);
        }

        v39 = v19;
        v20 = *(*(&v44 + 1) + 8 * v19);
        v21 = [v9 objectForKey:v20];
        -[NSFetchRequest setPredicate:](v15, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"((recordZone.ckRecordZoneName = %@) AND (recordZone.ckOwnerName = %@) AND ((recordName IN %@) OR (relatedRecordName IN %@))) OR needsDelete = 1", objc_msgSend(v20, "zoneName"), objc_msgSend(v20, "ownerName"), v21, v21]);
        v22 = [store executeFetchRequest:v15 error:&v52];
        v23 = v22;
        if (!v22)
        {
          break;
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v24 = [v22 countByEnumeratingWithState:&v40 objects:v57 count:16];
        if (v24)
        {
          v25 = *v41;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v40 + 1) + 8 * j);
              createRecordID = [(NSCKMirroredRelationship *)v27 createRecordID];
              [v8 addObject:createRecordID];

              [v27 setNeedsDelete:v17];
              [v27 setIsUploaded:v18];
            }

            v24 = [v23 countByEnumeratingWithState:&v40 objects:v57 count:16];
          }

          while (v24);
        }

        v19 = v39 + 1;
        v15 = v35;
        if (v39 + 1 == v36)
        {
          v16 = [v9 countByEnumeratingWithState:&v44 objects:v58 count:16];
          if (v16)
          {
            goto LABEL_13;
          }

          goto LABEL_26;
        }
      }

      if (v52)
      {
        if (contextCopy)
        {
          v29 = 0;
          *contextCopy = v52;
          goto LABEL_38;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
          v55 = 1024;
          v56 = 417;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v33 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v54 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
          v55 = 1024;
          v56 = 417;
          _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v29 = 0;
    }

    else
    {
LABEL_26:
      v29 = [v8 copy];
    }

LABEL_38:

    return v29;
  }

  else
  {
    v30 = NSSet_EmptySet;

    return v30;
  }
}

+ (BOOL)updateMirroredRelationshipsMatchingRecords:(uint64_t)records forStore:(void *)store withManagedObjectContext:(uint64_t)context usingBlock:(void *)block error:
{
  v59 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v51 = 0;
  obj = [NSCKMirroredRelationship fetchMirroredRelationshipsMatchingRelatingRecords:a2 andRelatingRecordIDs:MEMORY[0x1E695E0F0] fromStore:records inManagedObjectContext:store error:&v51];
  if (!obj)
  {
LABEL_32:
    if (v51)
    {
      if (block)
      {
        result = 0;
        *block = v51;
        return result;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
        v54 = 1024;
        v55 = 487;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v34 = _PFLogGetLogStream(17);
      result = os_log_type_enabled(v34, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136315394;
      v53 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCKMirroredRelationship.m";
      v54 = 1024;
      v55 = 487;
      _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    return 0;
  }

  blockCopy = block;
  contextCopy = context;
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v13 = [a2 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v15)
        {
          objc_enumerationMutation(a2);
        }

        v17 = *(*(&v47 + 1) + 8 * i);
        if ([objc_msgSend(v17 recordType])
        {
          [v12 setObject:v17 forKey:{objc_msgSend(v17, "recordID")}];
          [v11 addObject:{objc_msgSend(v17, "recordID")}];
        }

        else
        {
          v18 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v17;
            _os_log_error_impl(&dword_18565F000, v18, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempted to update a mirrored relationship with a non-mirrored-relationship record: %@\n", buf, 0xCu);
          }

          v19 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v53 = v17;
            _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Attempted to update a mirrored relationship with a non-mirrored-relationship record: %@", buf, 0xCu);
          }
        }
      }

      v14 = [a2 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v14);
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v21 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v43 + 1) + 8 * j);
        v26 = [objc_alloc(getCloudKitCKRecordZoneIDClass[0]()) initWithZoneName:objc_msgSend(objc_msgSend(v25 ownerName:{"recordZone"), "ckRecordZoneName"), objc_msgSend(objc_msgSend(v25, "recordZone"), "ckOwnerName")}];
        v27 = [objc_alloc(getCloudKitCKRecordIDClass()) initWithRecordName:objc_msgSend(v25 zoneID:{"ckRecordID"), v26}];
        [v20 setObject:v25 forKey:v27];
        [v11 addObject:v27];
      }

      v22 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = [v11 countByEnumeratingWithState:&v39 objects:v56 count:{16, blockCopy}];
  if (v28)
  {
    v29 = v28;
    v30 = *v40;
    while (2)
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(v11);
        }

        if (!(*(contextCopy + 16))(contextCopy, [v20 objectForKey:*(*(&v39 + 1) + 8 * k)], objc_msgSend(v12, "objectForKey:", *(*(&v39 + 1) + 8 * k)), &v51))
        {

          block = v36;
          goto LABEL_32;
        }
      }

      v29 = [v11 countByEnumeratingWithState:&v39 objects:v56 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

+ (uint64_t)fetchMirroredRelationshipsMatchingPredicate:(uint64_t)predicate fromStore:(void *)store inManagedObjectContext:(uint64_t)context error:
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v11[0] = predicate;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1]);
  [(NSFetchRequest *)v9 setFetchBatchSize:1000];
  [(NSFetchRequest *)v9 setPredicate:a2];
  return [store executeFetchRequest:v9 error:context];
}

+ (NSString)entityPath
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[PFCloudKitMetadataModel ancillaryModelNamespace];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return objc_msgSend_stringWithFormat_(v2, v3, v5);
}

+ (uint64_t)countMirroredRelationshipsInStore:(uint64_t)store matchingPredicate:(unint64_t)predicate withManagedObjectContext:(id *)context error:
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  [(NSFetchRequest *)v9 setPredicate:store];
  [(NSFetchRequest *)v9 setResultType:4];
  v12[0] = a2;
  -[NSFetchRequest setAffectedStores:](v9, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1]);
  if (predicate)
  {
    v10 = [(NSManagedObjectContext *)predicate _countForFetchRequest_:v9 error:context];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
}

- (void)updateSystemFieldsWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    if (![(NSCKMirroredRelationship *)self systemFieldsAsset])
    {
      [(NSCKMirroredRelationship *)self setSystemFieldsAsset:+[NSEntityDescription insertNewObjectForEntityForName:inManagedObjectContext:](NSEntityDescription, "insertNewObjectForEntityForName:inManagedObjectContext:", +[NSCKMirroredRelationshipSystemFieldsAsset entityPath], [(NSManagedObject *)self managedObjectContext])];
      -[NSManagedObjectContext assignObject:toPersistentStore:](-[NSManagedObject managedObjectContext](self, "managedObjectContext"), "assignObject:toPersistentStore:", [objc_opt_self() systemFieldsAsset], -[NSManagedObjectID persistentStore](-[NSManagedObject objectID](self, "objectID"), "persistentStore"));
    }

    systemFieldsAsset = [(NSCKMirroredRelationship *)self systemFieldsAsset];
    if (systemFieldsAsset)
    {
      v6 = systemFieldsAsset;
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

    [(NSCKMirroredRelationship *)self destroySystemFieldsData];
  }
}

- (void)destroySystemFieldsData
{
  if ([(NSCKMirroredRelationship *)self systemFieldsAsset])
  {
    managedObjectContext = [(NSManagedObject *)self managedObjectContext];
    systemFieldsAsset = [(NSCKMirroredRelationship *)self systemFieldsAsset];

    [(NSManagedObjectContext *)managedObjectContext deleteObject:systemFieldsAsset];
  }
}

@end