@interface PFCloudKitStoreComparisonCache
- (BOOL)populate:(id *)populate;
- (PFCloudKitStoreComparisonCache)initWithStore:(id)store otherStore:(id)otherStore;
- (id)identifiersForStore:(id)store;
- (id)identityRecordNameForStoreWithIdentifier:(id)identifier;
- (id)metadataForObjectWithID:(id)d;
- (id)metadataForRecordID:(id)d inStore:(id)store;
- (id)mirroredRelationshipForObject:(id)object relatedToObject:(id)toObject byRelationship:(id)relationship;
- (id)mtmKeysForRecordZone:(id)zone inStore:(id)store;
- (id)mtmKeysForStore:(id)store;
- (id)objectIDForIdentifier:(id)identifier inStore:(id)store;
- (id)objectIDForRecordID:(id)d inStore:(id)store;
- (id)recordIDForObjectID:(id)d;
- (id)recordIDsRelatedToRecordID:(id)d byRelationshipNamed:(id)named inStore:(id)store;
- (id)recordIdsForStore:(id)store;
- (id)sharedZoneIDsForStore:(id)store;
- (int64_t)databaseScopeForStoreWithIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation PFCloudKitStoreComparisonCache

- (PFCloudKitStoreComparisonCache)initWithStore:(id)store otherStore:(id)otherStore
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PFCloudKitStoreComparisonCache;
  v6 = [(PFCloudKitStoreComparisonCache *)&v14 init];
  if (v6)
  {
    v6->_store = store;
    v6->_otherStore = otherStore;
    v6->_storeMoc = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    -[NSManagedObjectContext setPersistentStoreCoordinator:](v6->_storeMoc, "setPersistentStoreCoordinator:", [store persistentStoreCoordinator]);
    [(NSManagedObjectContext *)v6->_storeMoc _setAllowAncillaryEntities:1];
    storeMoc = v6->_storeMoc;
    v16[0] = [store identifier];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    if (storeMoc)
    {
      v9 = [v8 copy];

      storeMoc->_persistentStoreIdentifiers = v9;
    }

    v6->_otherStoreMoc = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    -[NSManagedObjectContext setPersistentStoreCoordinator:](v6->_otherStoreMoc, "setPersistentStoreCoordinator:", [otherStore persistentStoreCoordinator]);
    [(NSManagedObjectContext *)v6->_otherStoreMoc _setAllowAncillaryEntities:1];
    otherStoreMoc = v6->_otherStoreMoc;
    identifier = [otherStore identifier];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&identifier count:1];
    if (otherStoreMoc)
    {
      v12 = [v11 copy];

      otherStoreMoc->_persistentStoreIdentifiers = v12;
    }

    v6->_storeUUIDToStoreCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v6;
}

- (void)dealloc
{
  self->_storeUUIDToStoreCache = 0;

  v3.receiver = self;
  v3.super_class = PFCloudKitStoreComparisonCache;
  [(PFCloudKitStoreComparisonCache *)&v3 dealloc];
}

- (BOOL)populate:(id *)populate
{
  v51[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 1;
  v5 = dispatch_group_create();
  v6 = objc_alloc_init(PFCloudKitStoreComparisonCacheStoreCache);
  v7 = v6;
  if (v6)
  {
    v6->_checkCloudKitMetadata = self->_checkCloudKitMetadata;
  }

  [(NSMutableDictionary *)self->_storeUUIDToStoreCache setObject:v6 forKey:[(NSPersistentStore *)self->_store identifier]];
  v8 = objc_alloc_init(PFCloudKitStoreComparisonCacheStoreCache);
  v9 = v8;
  if (v8)
  {
    v8->_checkCloudKitMetadata = self->_checkCloudKitMetadata;
  }

  [(NSMutableDictionary *)self->_storeUUIDToStoreCache setObject:v8 forKey:[(NSPersistentStore *)self->_otherStore identifier]];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__15;
  v38 = __Block_byref_object_dispose__15;
  v39 = 0;
  dispatch_group_enter(v5);
  storeMoc = self->_storeMoc;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __43__PFCloudKitStoreComparisonCache_populate___block_invoke;
  v33[3] = &unk_1E6EC2808;
  v33[4] = v7;
  v33[5] = self;
  v33[7] = &v34;
  v33[8] = &v40;
  v33[6] = v5;
  [(NSManagedObjectContext *)storeMoc performBlock:v33];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__15;
  v31 = __Block_byref_object_dispose__15;
  v32 = 0;
  dispatch_group_enter(v5);
  otherStoreMoc = self->_otherStoreMoc;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__PFCloudKitStoreComparisonCache_populate___block_invoke_2;
  v26[3] = &unk_1E6EC2808;
  v26[4] = v9;
  v26[5] = self;
  v26[7] = &v27;
  v26[8] = &v40;
  v26[6] = v5;
  [(NSManagedObjectContext *)otherStoreMoc performBlock:v26];
  v12 = dispatch_time(0, 180000000000);
  if (dispatch_group_wait(v5, v12))
  {
    *(v41 + 24) = 0;
    v13 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A588];
    v51[0] = @"Failed to intialize caches in a reasonable amount of time.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v15 = [v13 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v14];
  }

  else
  {
    if (v41[3])
    {
      goto LABEL_26;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v16;
    if (v35[5])
    {
      [v16 addObject:?];
    }

    if (v28[5])
    {
      [v17 addObject:?];
    }

    if (![v17 count])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Stores failed to initialize but did not return an error.\n", buf, 2u);
      }

      v19 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Stores failed to initialize but did not return an error.", buf, 2u);
      }
    }

    v20 = MEMORY[0x1E696ABC0];
    v48 = @"NSDetailedErrors";
    v49 = v17;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v15 = [v20 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v21];
  }

  if ((v41[3] & 1) == 0)
  {
    if (v15)
    {
      if (populate)
      {
        *populate = v15;
      }
    }

    else
    {
      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparisonCache.m";
        v46 = 1024;
        v47 = 162;
        _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparisonCache.m";
        v46 = 1024;
        v47 = 162;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

LABEL_26:

  v35[5] = 0;
  v28[5] = 0;

  v24 = *(v41 + 24);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  return v24;
}

void __43__PFCloudKitStoreComparisonCache_populate___block_invoke(void *a1)
{
  if (([(PFCloudKitStoreComparisonCacheStoreCache *)a1[4] populateForStore:*(a1[5] + 40) inContext:(*(a1[7] + 8) + 40) error:?]& 1) == 0)
  {
    *(*(a1[8] + 8) + 24) = 0;
    v2 = *(*(a1[7] + 8) + 40);
  }

  v3 = a1[6];

  dispatch_group_leave(v3);
}

void __43__PFCloudKitStoreComparisonCache_populate___block_invoke_2(uint64_t *a1)
{
  if (([(PFCloudKitStoreComparisonCacheStoreCache *)a1[4] populateForStore:*(a1[5] + 48) inContext:(*(a1[7] + 8) + 40) error:?]& 1) == 0)
  {
    *(*(a1[8] + 8) + 24) = 0;
    v2 = *(*(a1[7] + 8) + 40);
  }

  v3 = a1[6];

  dispatch_group_leave(v3);
}

- (id)mirroredRelationshipForObject:(id)object relatedToObject:(id)toObject byRelationship:(id)relationship
{
  v7 = +[PFCloudKitSerializer mtmKeyForObjectWithRecordName:relatedToObjectWithRecordName:byRelationship:withInverse:](PFCloudKitSerializer, [-[PFCloudKitStoreComparisonCache recordIDForObjectID:](self recordIDForObjectID:{objc_msgSend(object, "objectID")), "recordName"}], objc_msgSend(-[PFCloudKitStoreComparisonCache recordIDForObjectID:](self, "recordIDForObjectID:", objc_msgSend(toObject, "objectID")), "recordName"), relationship, objc_msgSend(relationship, "inverseRelationship"));
  v8 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [objc_msgSend(objc_msgSend(object "objectID")]);
  if (v8)
  {
    v8 = v8[3];
  }

  return [v8 objectForKey:v7];
}

- (id)mtmKeysForStore:(id)store
{
  v3 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v3)
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return NSSet_EmptySet;
  }
}

- (id)recordIDsRelatedToRecordID:(id)d byRelationshipNamed:(id)named inStore:(id)store
{
  v7 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v7)
  {
    v7 = v7[6];
  }

  result = [objc_msgSend(v7 objectForKey:{d), "objectForKey:", named}];
  if (!result)
  {
    return NSSet_EmptySet;
  }

  return result;
}

- (id)metadataForObjectWithID:(id)d
{
  v4 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [objc_msgSend(d "persistentStore")]);
  if (v4)
  {
    v4 = v4[8];
  }

  return [v4 objectForKey:d];
}

- (id)recordIdsForStore:(id)store
{
  v3 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v3)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return NSSet_EmptySet;
  }
}

- (id)objectIDForRecordID:(id)d inStore:(id)store
{
  v5 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v5)
  {
    v5 = v5[10];
  }

  return [v5 objectForKey:d];
}

- (id)recordIDForObjectID:(id)d
{
  v4 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [objc_msgSend(d "persistentStore")]);
  if (v4)
  {
    v4 = v4[11];
  }

  return [v4 objectForKey:d];
}

- (id)identityRecordNameForStoreWithIdentifier:(id)identifier
{
  result = [(NSMutableDictionary *)self->_storeUUIDToStoreCache objectForKey:identifier];
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (int64_t)databaseScopeForStoreWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_storeUUIDToStoreCache objectForKey:identifier];
  if (v3)
  {
    v3 = v3[17];
  }

  return [v3 unsignedIntegerValue];
}

- (id)sharedZoneIDsForStore:(id)store
{
  result = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (result)
  {
    return *(result + 13);
  }

  return result;
}

- (id)mtmKeysForRecordZone:(id)zone inStore:(id)store
{
  v5 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v5)
  {
    v5 = v5[5];
  }

  result = [v5 objectForKey:zone];
  if (!result)
  {
    return NSSet_EmptySet;
  }

  return result;
}

- (id)objectIDForIdentifier:(id)identifier inStore:(id)store
{
  v5 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v5)
  {
    v5 = v5[2];
  }

  return [v5 objectForKey:identifier];
}

- (id)identifiersForStore:(id)store
{
  v3 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return NSSet_EmptySet;
  }
}

- (id)metadataForRecordID:(id)d inStore:(id)store
{
  v5 = -[NSMutableDictionary objectForKey:](self->_storeUUIDToStoreCache, "objectForKey:", [store identifier]);
  if (v5)
  {
    v5 = v5[7];
  }

  return [v5 objectForKeyedSubscript:d];
}

@end