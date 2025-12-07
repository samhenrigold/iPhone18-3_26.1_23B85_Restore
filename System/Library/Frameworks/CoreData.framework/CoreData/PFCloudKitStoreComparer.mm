@interface PFCloudKitStoreComparer
+ (id)trimExcessiveValuesForLog:(id)log;
- (BOOL)compareAttributesOnObject:(id)object toObject:(id)toObject error:(id *)error;
- (BOOL)compareCloudKitMetadataOfStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareContentOfStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareDatabaseScopeAndIdentityInStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareObjectsInStore:(id)store toStore:(id)toStore error:(id *)error;
- (BOOL)compareRelationshipsOfRecordID:(id)d withStoreObject:(id)object andOtherObject:(id)otherObject error:(id *)error;
- (BOOL)ensureContentsMatch:(id *)match;
- (BOOL)ensureContentsOfRecordStorageMatchForStorage:(id)storage andOtherStore:(id)store error:(id *)error;
- (BOOL)ensureContentsOfStore:(id)store matchContentsOfStore:(id)ofStore error:(id *)error;
- (BOOL)ensureMirroredRelationshipsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureMoveReceiptsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureRecordMetadataMatchesForRecordID:(id)d inStore:(id)store andOtherStore:(id)otherStore error:(id *)error;
- (BOOL)ensureStoresAgreeOnCloudKitTables:(id)tables error:(id *)error;
- (BOOL)isValue:(id)value equalToValue:(id)toValue forAttribute:(id)attribute;
- (BOOL)validateValue:(id)value againstOtherValue:(id)otherValue forIgnoredAttribute:(id)attribute;
- (PFCloudKitStoreComparer)initWithStore:(id)store otherStore:(id)otherStore;
- (id)getObjectMatchingRecordID:(id)d fromStore:(id)store withManagedObjectContext:(id)context;
- (id)getRecordIDsForRelationship:(id)relationship onObject:(id)object;
- (void)dealloc;
@end

@implementation PFCloudKitStoreComparer

- (PFCloudKitStoreComparer)initWithStore:(id)store otherStore:(id)otherStore
{
  v8.receiver = self;
  v8.super_class = PFCloudKitStoreComparer;
  v6 = [(PFCloudKitStoreComparer *)&v8 init];
  if (v6)
  {
    v6->_cache = [[PFCloudKitStoreComparisonCache alloc] initWithStore:store otherStore:otherStore];
    v6->_archivingUtilities = objc_alloc_init(PFCloudKitArchivingUtilities);
    v6->_onlyCompareSharedZones = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitStoreComparer;
  [(PFCloudKitStoreComparer *)&v3 dealloc];
}

- (BOOL)ensureContentsMatch:(id *)match
{
  store = [(PFCloudKitStoreComparisonCache *)self->_cache store];
  otherStore = [(PFCloudKitStoreComparisonCache *)self->_cache otherStore];

  return [(PFCloudKitStoreComparer *)self ensureContentsOfStore:store matchContentsOfStore:otherStore error:match];
}

- (BOOL)ensureContentsOfStore:(id)store matchContentsOfStore:(id)ofStore error:(id *)error
{
  v34[2] = *MEMORY[0x1E69E9840];
  v25 = 0;
  if ([objc_msgSend(store "URL")])
  {
    goto LABEL_2;
  }

  if ([store isCloudKitEnabled])
  {
    v10 = 1;
  }

  else
  {
    v10 = [objc_msgSend(objc_msgSend(store "options")];
  }

  if ([ofStore isCloudKitEnabled])
  {
    v11 = 1;
  }

  else
  {
    v11 = [objc_msgSend(objc_msgSend(ofStore "options")];
  }

  if (v10 == v11)
  {
    v34[0] = store;
    v34[1] = ofStore;
    if (!-[PFCloudKitStoreComparer ensureStoresAgreeOnCloudKitTables:error:](self, "ensureStoresAgreeOnCloudKitTables:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2], &v25) || !-[PFCloudKitStoreComparer compareContentOfStore:toStore:error:](self, "compareContentOfStore:toStore:error:", store, ofStore, &v25))
    {
LABEL_15:
      v14 = v25;
      if (!v25)
      {
        goto LABEL_16;
      }

LABEL_22:
      if (error)
      {
        LOBYTE(v9) = 0;
        *error = v14;
        return v9;
      }

LABEL_24:
      LOBYTE(v9) = 0;
      return v9;
    }

    mirroringDelegate = [store mirroringDelegate];
    mirroringDelegate2 = [ofStore mirroringDelegate];
    if (mirroringDelegate && mirroringDelegate2)
    {
      if (![(PFCloudKitStoreComparer *)self compareCloudKitMetadataOfStore:store toStore:ofStore error:&v25])
      {
        goto LABEL_15;
      }

LABEL_2:
      LOBYTE(v9) = 1;
      return v9;
    }

    if (!(mirroringDelegate | mirroringDelegate2))
    {
      goto LABEL_2;
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A250];
    v32 = *MEMORY[0x1E696A588];
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], store, mirroringDelegate, ofStore, mirroringDelegate2);
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v20 = v22;
    v21 = v23;
  }

  else
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v30 = *MEMORY[0x1E696A588];
    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], store, [store options], ofStore, objc_msgSend(ofStore, "options"));
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = v17;
    v21 = v18;
  }

  v14 = [v20 errorWithDomain:v21 code:134060 userInfo:v19];
  v25 = v14;
  if (v14)
  {
    goto LABEL_22;
  }

LABEL_16:
  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v28 = 1024;
    v29 = 123;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v16 = _PFLogGetLogStream(17);
  v9 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (v9)
  {
    *buf = 136315394;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v28 = 1024;
    v29 = 123;
    _os_log_fault_impl(&dword_18565F000, v16, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_24;
  }

  return v9;
}

- (id)getObjectMatchingRecordID:(id)d fromStore:(id)store withManagedObjectContext:(id)context
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__47;
  v12 = __Block_byref_object_dispose__47;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__PFCloudKitStoreComparer_getObjectMatchingRecordID_fromStore_withManagedObjectContext___block_invoke;
  v7[3] = &unk_1E6EC2638;
  v7[4] = self;
  v7[5] = d;
  v7[7] = context;
  v7[8] = &v8;
  v7[6] = store;
  [context performBlockAndWait:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __88__PFCloudKitStoreComparer_getObjectMatchingRecordID_fromStore_withManagedObjectContext___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectIDForRecordID:*(a1 + 40) inStore:*(a1 + 48)];
  if (v2)
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 56) objectWithID:v2];
    if ([objc_msgSend(objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "entity")])
    {
      v3 = objc_msgSend_valueForKey_(*(*(*(a1 + 64) + 8) + 40));
      if ([v3 length])
      {
        v4 = [*(*(a1 + 32) + 16) objectIDForIdentifier:v3 inStore:*(a1 + 48)];
        if ([objc_msgSend(*(a1 + 40) "recordName")])
        {
          if (([objc_msgSend(*(*(*(a1 + 64) + 8) + 40) "objectID")] & 1) == 0)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v16 = [*(*(*(a1 + 64) + 8) + 40) objectID];
              v17 = 138412546;
              v18 = v16;
              v19 = 2112;
              v20 = v4;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Record name appears to point to two different objects: %@ / %@\n", &v17, 0x16u);
            }

            v6 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
            {
              v7 = [*(*(*(a1 + 64) + 8) + 40) objectID];
              v17 = 138412546;
              v18 = v7;
              v19 = 2112;
              v20 = v4;
              v8 = "CoreData: Record name appears to point to two different objects: %@ / %@";
              v9 = v6;
LABEL_15:
              _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, v8, &v17, 0x16u);
            }
          }
        }

        else
        {
          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v12 = *(a1 + 40);
            v13 = *(*(*(a1 + 64) + 8) + 40);
            v17 = 138412546;
            v18 = v12;
            v19 = 2112;
            v20 = v13;
            _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: fault: Record name does not match recordID, even though our metadata linked this row with '%@': %@\n", &v17, 0x16u);
          }

          v11 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            v14 = *(a1 + 40);
            v15 = *(*(*(a1 + 64) + 8) + 40);
            v17 = 138412546;
            v18 = v14;
            v19 = 2112;
            v20 = v15;
            v8 = "CoreData: Record name does not match recordID, even though our metadata linked this row with '%@': %@";
            v9 = v11;
            goto LABEL_15;
          }
        }
      }
    }
  }
}

- (BOOL)compareContentOfStore:(id)store toStore:(id)toStore error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  v39 = 0;
  if ([objc_msgSend(store "URL")])
  {
    goto LABEL_2;
  }

  if (![(PFCloudKitStoreComparisonCache *)self->_cache populate:&v39]|| ![(PFCloudKitStoreComparer *)self compareDatabaseScopeAndIdentityInStore:store toStore:toStore error:&v39]|| ![(PFCloudKitStoreComparer *)self compareObjectsInStore:store toStore:toStore error:&v39])
  {
    goto LABEL_26;
  }

  if (![(PFCloudKitStoreComparisonCache *)self->_cache checkCloudKitMetadata])
  {
    goto LABEL_2;
  }

  cache = self->_cache;
  if (!self->_onlyCompareSharedZones)
  {
    v19 = [(PFCloudKitStoreComparisonCache *)cache mtmKeysForStore:store];
    v20 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForStore:toStore];
    if ([v19 isEqualToSet:v20])
    {
      goto LABEL_2;
    }

    v21 = [v19 mutableCopy];
    [v21 minusSet:v20];
    v22 = [v20 mutableCopy];
    [v22 minusSet:v19];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store URL], objc_msgSend(objc_msgSend(v21, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_), objc_msgSend(toStore, "URL"), objc_msgSend(objc_msgSend(v22, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_));
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A250];
    v47 = *MEMORY[0x1E696A588];
    v48[0] = v23;
    v26 = MEMORY[0x1E695DF20];
    v27 = v48;
    v28 = &v47;
LABEL_25:
    v39 = [v24 errorWithDomain:v25 code:134060 userInfo:{objc_msgSend(v26, "dictionaryWithObjects:forKeys:count:", v27, v28, 1)}];

LABEL_26:
    if (v39)
    {
      if (error)
      {
        LOBYTE(v9) = 0;
        *error = v39;
        return v9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v42 = 1024;
        v43 = 228;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v33 = _PFLogGetLogStream(17);
      v9 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);
      if (!v9)
      {
        return v9;
      }

      *buf = 136315394;
      v41 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
      v42 = 1024;
      v43 = 228;
      _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }

    LOBYTE(v9) = 0;
    return v9;
  }

  v11 = [(PFCloudKitStoreComparisonCache *)cache sharedZoneIDsForStore:store];
  if (![v11 isEqualToSet:{-[PFCloudKitStoreComparisonCache sharedZoneIDsForStore:](self->_cache, "sharedZoneIDsForStore:", toStore)}])
  {
    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle skewed shares yet.\n", buf, 2u);
    }

    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v30, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle skewed shares yet.", buf, 2u);
    }

    goto LABEL_2;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (!v12)
  {
LABEL_2:
    LOBYTE(v9) = 1;
    return v9;
  }

  v13 = v12;
  v14 = *v36;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v36 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v35 + 1) + 8 * i);
      v17 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForRecordZone:v16 inStore:store];
      v18 = [(PFCloudKitStoreComparisonCache *)self->_cache mtmKeysForRecordZone:v16 inStore:toStore];
      if (([v17 isEqualToSet:v18] & 1) == 0)
      {
        v21 = [v17 mutableCopy];
        [v21 minusSet:v18];
        v22 = [v18 mutableCopy];
        [v22 minusSet:v17];
        v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store URL], objc_msgSend(objc_msgSend(v21, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_), objc_msgSend(toStore, "URL"), objc_msgSend(objc_msgSend(v22, "allObjects"), "sortedArrayUsingSelector:", sel_localizedCaseInsensitiveCompare_));
        v24 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A250];
        v44 = *MEMORY[0x1E696A588];
        v45 = v31;
        v26 = MEMORY[0x1E695DF20];
        v27 = &v45;
        v28 = &v44;
        goto LABEL_25;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v35 objects:v46 count:16];
    LOBYTE(v9) = 1;
    if (v13)
    {
      continue;
    }

    return v9;
  }
}

- (BOOL)compareDatabaseScopeAndIdentityInStore:(id)store toStore:(id)toStore error:(id *)error
{
  v35[3] = *MEMORY[0x1E69E9840];
  v9 = -[PFCloudKitStoreComparisonCache databaseScopeForStoreWithIdentifier:](self->_cache, "databaseScopeForStoreWithIdentifier:", [store identifier]);
  v10 = -[PFCloudKitStoreComparisonCache databaseScopeForStoreWithIdentifier:](self->_cache, "databaseScopeForStoreWithIdentifier:", [toStore identifier]);
  if (self->_onlyCompareSharedZones || (v11 = v10, v9 == v10))
  {
    LOBYTE(v19) = 1;
    if (self->_onlyCompareSharedZones || v9 == 1)
    {
      return v19;
    }

    v20 = -[PFCloudKitStoreComparisonCache identityRecordNameForStoreWithIdentifier:](self->_cache, "identityRecordNameForStoreWithIdentifier:", [store identifier]);
    v21 = -[PFCloudKitStoreComparisonCache identityRecordNameForStoreWithIdentifier:](self->_cache, "identityRecordNameForStoreWithIdentifier:", [toStore identifier]);
    if (v20 == v21 || (v22 = v21, ([(__CFString *)v20 isEqualToString:v21]& 1) != 0))
    {
      LOBYTE(v19) = 1;
      return v19;
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v32[0] = *MEMORY[0x1E696A588];
    v33[0] = @"Store identity record names do not match.";
    v32[1] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store identifier]);
    if (v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = @"nil";
    }

    v33[1] = v25;
    v32[2] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [toStore identifier]);
    if (v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = @"nil";
    }

    v33[2] = v26;
    v15 = MEMORY[0x1E695DF20];
    v16 = v33;
    v17 = v32;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A250];
    v34[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store identifier]);
    v35[0] = softLinkCKDatabaseScopeString(v9);
    v34[1] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [toStore identifier]);
    v14 = softLinkCKDatabaseScopeString(v11);
    v34[2] = *MEMORY[0x1E696A588];
    v35[1] = v14;
    v35[2] = @"CloudKit database scope doesn't match.";
    v15 = MEMORY[0x1E695DF20];
    v16 = v35;
    v17 = v34;
  }

  v18 = [v12 errorWithDomain:v13 code:134060 userInfo:{objc_msgSend(v15, "dictionaryWithObjects:forKeys:count:", v16, v17, 3)}];
  if (v18)
  {
    if (error)
    {
      LOBYTE(v19) = 0;
      *error = v18;
      return v19;
    }

LABEL_16:
    LOBYTE(v19) = 0;
    return v19;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v30 = 1024;
    v31 = 273;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v24 = _PFLogGetLogStream(17);
  v19 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v19)
  {
    *buf = 136315394;
    v29 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v30 = 1024;
    v31 = 273;
    _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_16;
  }

  return v19;
}

- (BOOL)compareObjectsInStore:(id)store toStore:(id)toStore error:(id *)error
{
  v83[3] = *MEMORY[0x1E69E9840];
  v70 = 0;
  v9 = [(PFCloudKitStoreComparisonCache *)self->_cache identifiersForStore:?];
  v10 = [(PFCloudKitStoreComparisonCache *)self->_cache identifiersForStore:toStore];
  v11 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:store];
  v12 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:toStore];
  v65 = [(PFCloudKitStoreComparisonCache *)self->_cache sharedZoneIDsForStore:store];
  toStoreCopy = toStore;
  v61 = v12;
  v62 = [(PFCloudKitStoreComparisonCache *)self->_cache sharedZoneIDsForStore:toStore];
  v64 = v11;
  if (!self->_onlyCompareSharedZones)
  {
    v30 = [v9 count];
    if (v30 == [v10 count])
    {
      if ([v11 isEqualToSet:v12])
      {
        goto LABEL_2;
      }

      v31 = [v11 mutableCopy];
      [v31 minusSet:v12];
      v19 = [v12 mutableCopy];
      [v19 minusSet:v11];
      v58 = MEMORY[0x1E696ABC0];
      v56 = *MEMORY[0x1E696A250];
      v82[0] = *MEMORY[0x1E696A588];
      v32 = MEMORY[0x1E696AEC0];
      identifier = [store identifier];
      v34 = [v64 count];
      identifier2 = [toStoreCopy identifier];
      v51 = [v12 count];
      v36 = v32;
      v11 = v64;
      v83[0] = objc_msgSend_stringWithFormat_(v36, identifier, v34, identifier2, v51);
      v82[1] = [store identifier];
      v83[1] = v31;
      v82[2] = [toStoreCopy identifier];
      v83[2] = v19;
      v70 = [v58 errorWithDomain:v56 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v83, v82, 3)}];
    }

    else
    {
      v55 = [v9 mutableCopy];
      [v55 minusSet:v10];
      v54 = [v10 mutableCopy];
      [v54 minusSet:v9];
      v53 = [v11 mutableCopy];
      [v53 minusSet:v12];
      v19 = [v12 mutableCopy];
      [v19 minusSet:v11];
      v59 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A250];
      v80[0] = *MEMORY[0x1E696A588];
      v37 = MEMORY[0x1E696AEC0];
      identifier3 = [store identifier];
      v39 = [v9 count];
      identifier4 = [toStoreCopy identifier];
      v52 = [v10 count];
      v41 = v37;
      v11 = v64;
      v81[0] = objc_msgSend_stringWithFormat_(v41, identifier3, v39, identifier4, v52);
      v80[1] = [store identifier];
      v81[1] = v55;
      v80[2] = [toStoreCopy identifier];
      v81[2] = v54;
      v80[3] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store identifier]);
      v81[3] = v53;
      v80[4] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [toStoreCopy identifier]);
      v81[4] = v19;
      v70 = [v59 errorWithDomain:v57 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v81, v80, 5)}];
    }

LABEL_38:

    v29 = 0;
    goto LABEL_39;
  }

LABEL_2:
  if ([v11 count] && (v68 = 0u, v69 = 0u, v66 = 0u, v67 = 0u, (v13 = objc_msgSend(v11, "countByEnumeratingWithState:objects:count:", &v66, v79, 16)) != 0))
  {
    v14 = v13;
    v15 = *v67;
    errorCopy = error;
    do
    {
      v16 = 0;
      do
      {
        if (*v67 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v66 + 1) + 8 * v16);
        if (!self->_onlyCompareSharedZones || [v65 containsObject:{objc_msgSend(*(*(&v66 + 1) + 8 * v16), "zoneID")}] && objc_msgSend(v62, "containsObject:", objc_msgSend(v17, "zoneID")))
        {
          v18 = [(PFCloudKitStoreComparer *)self getObjectMatchingRecordID:v17 fromStore:store withManagedObjectContext:[(PFCloudKitStoreComparisonCache *)self->_cache storeMoc]];
          v19 = [objc_msgSend(objc_msgSend(v18 "entity")];
          if (!v18)
          {
            v42 = MEMORY[0x1E696ABC0];
            v43 = *MEMORY[0x1E696A250];
            v71 = *MEMORY[0x1E696A588];
            v72 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, store);
            v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            v45 = v43;
            v11 = v64;
            v70 = [v42 errorWithDomain:v45 code:134060 userInfo:v44];
            error = errorCopy;
            goto LABEL_38;
          }

          v20 = [(PFCloudKitStoreComparer *)self getObjectMatchingRecordID:v17 fromStore:toStoreCopy withManagedObjectContext:[(PFCloudKitStoreComparisonCache *)self->_cache otherStoreMoc]];
          if (!v20)
          {
            v46 = MEMORY[0x1E696ABC0];
            v47 = *MEMORY[0x1E696A250];
            v73 = *MEMORY[0x1E696A588];
            v74 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, toStoreCopy);
            v70 = [v46 errorWithDomain:v47 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v74, &v73, 1)}];
LABEL_37:

            error = errorCopy;
            v11 = v64;
            goto LABEL_38;
          }

          entity = [v18 entity];
          if (entity)
          {
            v22 = *(entity + 160);
          }

          else
          {
            v22 = 0;
          }

          entity2 = [v20 entity];
          if (entity2)
          {
            v24 = *(entity2 + 160);
          }

          else
          {
            v24 = 0;
          }

          if (v22 != v24)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v76 = v18;
              v77 = 2112;
              v78 = v20;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Objects appear to be from different entities:\nStore: %@\nOther Store: %@\n", buf, 0x16u);
            }

            v26 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v76 = v18;
              v77 = 2112;
              v78 = v20;
              _os_log_fault_impl(&dword_18565F000, v26, OS_LOG_TYPE_FAULT, "CoreData: Objects appear to be from different entities:\nStore: %@\nOther Store: %@", buf, 0x16u);
            }
          }

          if (![(PFCloudKitStoreComparer *)self compareAttributesOnObject:v18 toObject:v20 error:&v70])
          {
            goto LABEL_37;
          }

          v27 = [(PFCloudKitStoreComparer *)self compareRelationshipsOfRecordID:v17 withStoreObject:v18 andOtherObject:v20 error:&v70];

          v11 = v64;
          if (!v27)
          {
            v29 = 0;
            error = errorCopy;
            goto LABEL_39;
          }
        }

        ++v16;
      }

      while (v14 != v16);
      v28 = [v11 countByEnumeratingWithState:&v66 objects:v79 count:16];
      v14 = v28;
      v29 = 1;
      error = errorCopy;
    }

    while (v28);
  }

  else
  {
    v29 = 1;
  }

LABEL_39:

  if (!v29)
  {
    if (v70)
    {
      if (error)
      {
        *error = v70;
      }
    }

    else
    {
      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v76 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v77 = 1024;
        LODWORD(v78) = 403;
        _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v49 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v76 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v77 = 1024;
        LODWORD(v78) = 403;
        _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return v29;
}

- (BOOL)compareAttributesOnObject:(id)object toObject:(id)toObject error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3052000000;
  v53 = __Block_byref_object_copy__47;
  v54 = __Block_byref_object_dispose__47;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3052000000;
  v47 = __Block_byref_object_copy__47;
  v48 = __Block_byref_object_dispose__47;
  v49 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = [objc_msgSend(objc_msgSend(object "entity")];
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v64 count:16];
  if (!v8)
  {
    goto LABEL_18;
  }

  v37 = *v41;
  do
  {
    v9 = 0;
    do
    {
      if (*v41 != v37)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v40 + 1) + 8 * v9);
      v11 = [objc_msgSend(objc_msgSend(v10 "userInfo")];
      managedObjectContext = [object managedObjectContext];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke;
      v39[3] = &unk_1E6EC23F0;
      v39[5] = v10;
      v39[6] = &v50;
      v39[4] = object;
      [managedObjectContext performBlockAndWait:v39];
      managedObjectContext2 = [toObject managedObjectContext];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke_2;
      v38[3] = &unk_1E6EC23F0;
      v38[5] = v10;
      v38[6] = &v44;
      v38[4] = toObject;
      [managedObjectContext2 performBlockAndWait:v38];
      v14 = v51[5];
      if (v11)
      {
        if (![(PFCloudKitStoreComparer *)self validateValue:v14 againstOtherValue:v45[5] forIgnoredAttribute:v10])
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [objc_msgSend(v10 "entity")];
          name = [v10 name];
          v27 = [PFCloudKitStoreComparer trimExcessiveValuesForLog:v51[5]];
          v28 = objc_msgSend_stringWithFormat_(v24, v25, name, v27, [PFCloudKitStoreComparer trimExcessiveValuesForLog:v45[5]]);
          v29 = MEMORY[0x1E696ABC0];
          v62 = *MEMORY[0x1E696A588];
          v63 = v28;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v31 = [v29 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v30];
LABEL_24:
          v17 = v31;
          v18 = 0;
          goto LABEL_25;
        }

LABEL_12:

        v51[5] = 0;
        v45[5] = 0;
        goto LABEL_13;
      }

      v15 = v45[5];
      if (v14)
      {
        if (!v15 || ![PFCloudKitStoreComparer isValue:"isValue:equalToValue:forAttribute:" equalToValue:? forAttribute:?])
        {
LABEL_19:
          v19 = MEMORY[0x1E696ABC0];
          v20 = *MEMORY[0x1E696A588];
          v61[0] = @"Attribute values do not match.";
          v60[0] = v20;
          v60[1] = @"storeObjectID";
          v61[1] = [object objectID];
          v60[2] = @"otherStoreObjectID";
          v61[2] = [toObject objectID];
          v60[3] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v10 name]);
          v21 = v51[5];
          if (!v21)
          {
            v21 = @"nil";
          }

          v61[3] = v21;
          v60[4] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v10 name]);
          v22 = v45[5];
          if (!v22)
          {
            v22 = @"nil";
          }

          v61[4] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:5];
          v31 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v23];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_13:
      ++v9;
    }

    while (v8 != v9);
    v16 = [v7 countByEnumeratingWithState:&v40 objects:v64 count:16];
    v8 = v16;
  }

  while (v16);
LABEL_18:
  v17 = 0;
  v18 = 1;
LABEL_25:

  v51[5] = 0;
  v45[5] = 0;
  if (!v18)
  {
    if (v17)
    {
      if (error)
      {
        *error = v17;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v57 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v58 = 1024;
        v59 = 468;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v33 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v57 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v58 = 1024;
        v59 = 468;
        _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
  return v18;
}

id __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) name];
  result = objc_msgSend_valueForKey_(v2);
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

id __68__PFCloudKitStoreComparer_compareAttributesOnObject_toObject_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) name];
  result = objc_msgSend_valueForKey_(v2);
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue forAttribute:(id)attribute
{
  v48 = *MEMORY[0x1E69E9840];
  attributeType = [attribute attributeType];
  if (attributeType <= 699)
  {
    if (attributeType <= 299)
    {
      if (!attributeType)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Not sure what to do with undefined attributes\n", buf, 2u);
        }

        v31 = _PFLogGetLogStream(17);
        v13 = os_log_type_enabled(v31, OS_LOG_TYPE_FAULT);
        if (!v13)
        {
          return v13;
        }

        *buf = 0;
        v27 = "CoreData: Not sure what to do with undefined attributes";
        v28 = v31;
        v29 = 2;
        goto LABEL_61;
      }

      if (attributeType != 100 && attributeType != 200)
      {
        goto LABEL_53;
      }
    }

    else if (attributeType > 499)
    {
      if (attributeType != 500 && attributeType != 600)
      {
        goto LABEL_53;
      }
    }

    else if (attributeType != 300 && attributeType != 400)
    {
      goto LABEL_53;
    }

    goto LABEL_22;
  }

  if (attributeType <= 1099)
  {
    if (attributeType <= 899)
    {
      if (attributeType != 700)
      {
        if (attributeType != 800)
        {
          goto LABEL_53;
        }

LABEL_22:

        LOBYTE(v13) = [value isEqualToNumber:toValue];
        return v13;
      }

      goto LABEL_64;
    }

    if (attributeType == 900)
    {

      LOBYTE(v13) = [value isEqualToDate:toValue];
      return v13;
    }

    if (attributeType != 1000)
    {
      goto LABEL_53;
    }

LABEL_50:

    LOBYTE(v13) = [value isEqualToData:toValue];
    return v13;
  }

  if (attributeType <= 1799)
  {
    if (attributeType != 1100)
    {
      if (attributeType == 1200)
      {
        absoluteString = [value absoluteString];
        toValueCopy = [toValue absoluteString];
        valueCopy = absoluteString;
LABEL_65:

        LOBYTE(v13) = [valueCopy isEqualToString:toValueCopy];
        return v13;
      }

LABEL_53:
      v24 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        attributeType2 = [attribute attributeType];
        _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown attribute type: %lu\n", buf, 0xCu);
      }

      v25 = _PFLogGetLogStream(17);
      v13 = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
      if (!v13)
      {
        return v13;
      }

      attributeType3 = [attribute attributeType];
      *buf = 134217984;
      attributeType2 = attributeType3;
      v27 = "CoreData: Unknown attribute type: %lu";
      v28 = v25;
      v29 = 12;
LABEL_61:
      _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, v27, buf, v29);
LABEL_62:
      LOBYTE(v13) = 0;
      return v13;
    }

    goto LABEL_73;
  }

  if (attributeType == 1800)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_50;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_64:
      valueCopy = value;
      toValueCopy = toValue;
      goto LABEL_65;
    }

    getCloudKitCKRecordClass[0]();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordID = [value recordID];
      toValueCopy2 = [toValue recordID];
      valueCopy2 = recordID;
LABEL_74:

      LOBYTE(v13) = [valueCopy2 isEqual:toValueCopy2];
      return v13;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        attributeType2 = objc_opt_class();
        v46 = 2112;
        attributeCopy2 = attribute;
        _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown value type '%@' for attribute: %@\n", buf, 0x16u);
      }

      v36 = _PFLogGetLogStream(17);
      v13 = os_log_type_enabled(v36, OS_LOG_TYPE_FAULT);
      if (!v13)
      {
        return v13;
      }

      v37 = objc_opt_class();
      *buf = 138412546;
      attributeType2 = v37;
      v46 = 2112;
      attributeCopy2 = attribute;
      v27 = "CoreData: Unknown value type '%@' for attribute: %@";
      v28 = v36;
      v29 = 22;
      goto LABEL_61;
    }

LABEL_73:
    valueCopy2 = value;
    toValueCopy2 = toValue;
    goto LABEL_74;
  }

  if (attributeType != 2100)
  {
    goto LABEL_53;
  }

  elements = [attribute elements];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = [elements countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v40;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(elements);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        [v19 name];
        v20 = objc_msgSend_valueForKey_(value);
        [v19 name];
        v21 = objc_msgSend_valueForKey_(toValue);
        if (v20)
        {
          v22 = v21 == 0;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          if (v20 | v21)
          {
            goto LABEL_62;
          }
        }

        else if (![(PFCloudKitStoreComparer *)self isValue:v20 equalToValue:v21 forAttribute:v19])
        {
          goto LABEL_62;
        }
      }

      v16 = [elements countByEnumeratingWithState:&v39 objects:v43 count:16];
      LOBYTE(v13) = 1;
    }

    while (v16);
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)validateValue:(id)value againstOtherValue:(id)otherValue forIgnoredAttribute:(id)attribute
{
  result = 1;
  if (value)
  {
    if (otherValue)
    {
      return ![PFCloudKitStoreComparer isValue:"isValue:equalToValue:forAttribute:" equalToValue:? forAttribute:?];
    }
  }

  return result;
}

- (BOOL)compareRelationshipsOfRecordID:(id)d withStoreObject:(id)object andOtherObject:(id)otherObject error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  v39 = [objc_msgSend(object "objectID")];
  otherObjectCopy = otherObject;
  v38 = [objc_msgSend(otherObject "objectID")];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  objectCopy = object;
  obj = [objc_msgSend(objc_msgSend(object "entity")];
  v10 = [obj countByEnumeratingWithState:&v47 objects:v65 count:16];
  if (!v10)
  {
LABEL_30:
    LOBYTE(v32) = 1;
    return v32;
  }

  v11 = v10;
  v12 = 0;
  v44 = *v48;
  v42 = *MEMORY[0x1E696A250];
  v41 = *MEMORY[0x1E696A588];
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v48 != v44)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v47 + 1) + 8 * v13);
    if ([objc_msgSend(objc_msgSend(v14 "userInfo")])
    {
      v15 = 1;
    }

    else
    {
      v15 = [objc_msgSend(objc_msgSend(objc_msgSend(v14 "inverseRelationship")];
    }

    v16 = [(PFCloudKitStoreComparer *)self getRecordIDsForRelationship:v14 onObject:objectCopy];
    v17 = [(PFCloudKitStoreComparer *)self getRecordIDsForRelationship:v14 onObject:otherObjectCopy];
    if (![v16 isEqualToSet:v17])
    {
      v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v14 name], d, objc_msgSend(objc_msgSend(v16, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v17, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31));
      v24 = MEMORY[0x1E696ABC0];
      v55 = v41;
      v56 = v23;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v56;
      v27 = &v55;
LABEL_21:
      v12 = [v24 errorWithDomain:v42 code:134060 userInfo:{objc_msgSend(v25, "dictionaryWithObjects:forKeys:count:", v26, v27, 1)}];
      v22 = 0;
      goto LABEL_23;
    }

    if (v15)
    {
      break;
    }

    if (![v14 isToMany] || !objc_msgSend(objc_msgSend(v14, "inverseRelationship"), "isToMany") || !-[PFCloudKitStoreComparisonCache checkCloudKitMetadata](self->_cache, "checkCloudKitMetadata"))
    {
      v22 = 1;
      goto LABEL_23;
    }

    v37 = v12;
    v18 = -[PFCloudKitStoreComparisonCache recordIDsRelatedToRecordID:byRelationshipNamed:inStore:](self->_cache, "recordIDsRelatedToRecordID:byRelationshipNamed:inStore:", d, [v14 name], v39);
    v19 = -[PFCloudKitStoreComparisonCache recordIDsRelatedToRecordID:byRelationshipNamed:inStore:](self->_cache, "recordIDsRelatedToRecordID:byRelationshipNamed:inStore:", d, [v14 name], v38);
    v20 = [v18 count];
    if (v20 != [v16 count] || (objc_msgSend(v16, "isEqualToSet:", v18) & 1) == 0)
    {
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], d, [v39 URL], objc_msgSend(objc_msgSend(v16, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v18, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31));
      v24 = MEMORY[0x1E696ABC0];
      v61 = v41;
      v62 = v28;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v62;
      v27 = &v61;
      goto LABEL_21;
    }

    v21 = [v19 count];
    if (v21 != [v17 count] || (objc_msgSend(v19, "isEqualToSet:", v17) & 1) == 0)
    {
      v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], d, [v38 URL], objc_msgSend(objc_msgSend(v17, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31), objc_msgSend(objc_msgSend(v19, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31));
      v24 = MEMORY[0x1E696ABC0];
      v59 = v41;
      v60 = v29;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v60;
      v27 = &v59;
      goto LABEL_21;
    }

    if (([v18 isEqualToSet:v19] & 1) == 0)
    {
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], d, [objc_msgSend(v18 "allObjects")], objc_msgSend(objc_msgSend(v19, "allObjects"), "sortedArrayUsingComparator:", &__block_literal_global_31));
      v24 = MEMORY[0x1E696ABC0];
      v57 = v41;
      v58 = v30;
      v25 = MEMORY[0x1E695DF20];
      v26 = &v58;
      v27 = &v57;
      goto LABEL_21;
    }

    v22 = 1;
    v12 = v37;
LABEL_23:

    if (!v22)
    {
      goto LABEL_32;
    }

    if (v11 == ++v13)
    {
      v31 = [obj countByEnumeratingWithState:&v47 objects:v65 count:16];
      v11 = v31;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_3;
    }
  }

  v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [objc_msgSend(v14 "entity")], objc_msgSend(v14, "name"), v16, v17);
  v63 = v41;
  v64 = v33;
  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:v42 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v63, 1)}];
LABEL_32:
  if (v12)
  {
    if (error)
    {
      LOBYTE(v32) = 0;
      *error = v12;
      return v32;
    }

    goto LABEL_39;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v52 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v53 = 1024;
    v54 = 646;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v35 = _PFLogGetLogStream(17);
  v32 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);
  if (v32)
  {
    *buf = 136315394;
    v52 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    v53 = 1024;
    v54 = 646;
    _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_39:
    LOBYTE(v32) = 0;
  }

  return v32;
}

- (id)getRecordIDsForRelationship:(id)relationship onObject:(id)object
{
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  managedObjectContext = [object managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke;
  v10[3] = &unk_1E6EC2920;
  v10[4] = object;
  v10[5] = relationship;
  v10[6] = v7;
  v10[7] = self;
  [managedObjectContext performBlockAndWait:v10];
  return v7;
}

void *__64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) name];
  v3 = objc_msgSend_valueForKey_(v2);
  if ([*(a1 + 40) isToMany])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke_2;
    v8[3] = &unk_1E6EC5428;
    v4 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v9 = *(a1 + 48);
    v10 = v4;
    return [v3 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    result = [*(*(a1 + 56) + 16) recordIDForObjectID:{objc_msgSend(v3, "objectID")}];
    if (result)
    {
      v6 = result;
      v7 = *(a1 + 48);

      return [v7 addObject:v6];
    }
  }

  return result;
}

void __64__PFCloudKitStoreComparer_getRecordIDsForRelationship_onObject___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) addObject:{objc_msgSend(*(*(a1 + 40) + 16), "recordIDForObjectID:", objc_msgSend(a2, "objectID"))}];
  if (![*(*(a1 + 40) + 16) checkCloudKitMetadata])
  {
    return;
  }

  if (![objc_msgSend(*(a1 + 48) "inverseRelationship")])
  {
    return;
  }

  v4 = [*(*(a1 + 40) + 16) mirroredRelationshipForObject:*(a1 + 56) relatedToObject:a2 byRelationship:*(a1 + 48)];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (([objc_msgSend(objc_msgSend(*(a1 + 48) "userInfo")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 48), "inverseRelationship"), "userInfo"), "objectForKey:", @"NSCloudKitMirroringDelegateIgnoredPropertyKey"), "BOOLValue"))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship for ignored relationship: %@\n", &v20, 0xCu);
    }

    v7 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v20 = 138412290;
    v21 = v5;
    v10 = "CoreData: Found mirrored relationship for ignored relationship: %@";
    v12 = v7;
    v13 = 12;
LABEL_27:
    _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, v10, &v20, v13);
    return;
  }

  if ([v5 isUploadedBool])
  {
    if ([v5 needsDeleteBool])
    {
      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20) = 0;
        _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship that's marked deleted but the objects are linked.\n", &v20, 2u);
      }

      v9 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v20) = 0;
        v10 = "CoreData: Found mirrored relationship that's marked deleted but the objects are linked.";
LABEL_20:
        v12 = v9;
        v13 = 2;
        goto LABEL_27;
      }
    }

    else if ([v5 isPendingBool])
    {
      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(a1 + 48) name];
        v19 = *(a1 + 56);
        v20 = 138412802;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        v24 = 2112;
        v25 = a2;
        _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: fault: Found pending mirrored relationship for linked objects (%@).\n%@\n%@\n", &v20, 0x20u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = [*(a1 + 48) name];
        v17 = *(a1 + 56);
        v20 = 138412802;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = a2;
        v10 = "CoreData: Found pending mirrored relationship for linked objects (%@).\n%@\n%@";
        v12 = v15;
        v13 = 32;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: fault: Found mirrored relationship not marked uploaded, but this method is supposed to make sure store contents are equal, so shouldn't it be?\n", &v20, 2u);
    }

    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v20) = 0;
      v10 = "CoreData: Found mirrored relationship not marked uploaded, but this method is supposed to make sure store contents are equal, so shouldn't it be?";
      goto LABEL_20;
    }
  }
}

- (BOOL)ensureStoresAgreeOnCloudKitTables:(id)tables error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = [tables countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v4)
  {
    v5 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(tables);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v42 = 1;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __67__PFCloudKitStoreComparer_ensureStoresAgreeOnCloudKitTables_error___block_invoke;
        v33[3] = &unk_1E6EC3778;
        v33[4] = buf;
        v8 = [[NSSQLBlockRequestContext alloc] initWithBlock:v33 context:0 sqlCore:v7];
        [(NSSQLCore *)v7 dispatchRequest:v8 withRetries:0];
        [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", *(*&buf[8] + 24)), objc_msgSend(v7, "identifier")}];

        _Block_object_dispose(buf, 8);
      }

      v4 = [tables countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v4);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [v28 allKeys];
  v10 = 0;
  v11 = [allKeys countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = [v28 objectForKey:*(*(&v29 + 1) + 8 * j)];
        v15 = v14;
        if (v10)
        {
          bOOLValue = [v10 BOOLValue];
          if (bOOLValue != [v15 BOOLValue])
          {
            v17 = objc_alloc(MEMORY[0x1E696ABC0]);
            v38 = *MEMORY[0x1E696A588];
            v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tables, v28);
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
            v19 = [v17 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v18];
            v20 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          v10 = v14;
          -[PFCloudKitStoreComparisonCache _setCheckCloudKitMetadata:](self->_cache, "_setCheckCloudKitMetadata:", [v10 BOOLValue]);
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v11);
  }

  v19 = 0;
  v20 = 1;
LABEL_20:

  if (!v20)
  {
    v21 = v19;
    if (v21)
    {
      if (error)
      {
        *error = v21;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 744;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v23 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 744;
        _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  return v20;
}

void *__67__PFCloudKitStoreComparer_ensureStoresAgreeOnCloudKitTables_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  result = [objc_msgSend(v4 "ancillarySQLModels")];
  if (result)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = result[4];
    result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v13;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (!a2)
          {
            result = [v10 tableName];
            goto LABEL_16;
          }

          v11 = *(a2 + 24);
          result = [v10 tableName];
          if (!v11)
          {
            goto LABEL_16;
          }

          result = [(NSSQLiteConnection *)v11 _hasTableWithName:0 isTemp:?];
          if (!result)
          {
            goto LABEL_16;
          }

          v9 = (v9 + 1);
        }

        while (v7 != v9);
        result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v7 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)compareCloudKitMetadataOfStore:(id)store toStore:(id)toStore error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (![(PFCloudKitStoreComparer *)self ensureMirroredRelationshipsMatchForStore:store otherStore:toStore error:&v15]|| ![(PFCloudKitStoreComparer *)self ensureMoveReceiptsMatchForStore:store otherStore:toStore error:&v15])
  {
    v10 = v15;
    v11 = v15;
    if (v11)
    {
      if (error)
      {
        v9 = 0;
        *error = v11;
        goto LABEL_12;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v18 = 1024;
        v19 = 771;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v17 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v18 = 1024;
        v19 = 771;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (BOOL)ensureMoveReceiptsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error
{
  selfCopy = self;
  v87 = *MEMORY[0x1E69E9840];
  v70 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3052000000;
  v68 = __Block_byref_object_copy__47;
  v69 = __Block_byref_object_dispose__47;
  v8 = [(PFCloudKitStoreComparisonCache *)self->_cache recordIdsForStore:?];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v9)
  {
    v47 = *v62;
    v42 = *MEMORY[0x1E696A250];
    v43 = *MEMORY[0x1E696A588];
    storeCopy = store;
    v46 = selfCopy;
    otherStoreCopy = otherStore;
LABEL_3:
    v10 = 0;
    v48 = v9;
    while (1)
    {
      if (*v62 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v61 + 1) + 8 * v10);
      v12 = [(PFCloudKitStoreComparisonCache *)selfCopy->_cache metadataForObjectWithID:[(PFCloudKitStoreComparisonCache *)selfCopy->_cache objectIDForRecordID:v11 inStore:store]];
      v13 = [(PFCloudKitStoreComparisonCache *)selfCopy->_cache metadataForObjectWithID:[(PFCloudKitStoreComparisonCache *)selfCopy->_cache objectIDForRecordID:v11 inStore:otherStore]];
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v83 = __Block_byref_object_copy__47;
      v84 = __Block_byref_object_dispose__47;
      v85 = 0;
      managedObjectContext = [v12 managedObjectContext];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke;
      v60[3] = &unk_1E6EC3D28;
      v60[4] = v12;
      v60[5] = v14;
      v60[6] = selfCopy;
      v60[7] = buf;
      v60[8] = &v65;
      v60[9] = &v71;
      [managedObjectContext performBlockAndWait:v60];
      if (*(v72 + 24) == 1)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v54 = 0;
        v55 = &v54;
        v56 = 0x3052000000;
        v57 = __Block_byref_object_copy__47;
        v58 = __Block_byref_object_dispose__47;
        v59 = 0;
        managedObjectContext2 = [v13 managedObjectContext];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke_2;
        v53[3] = &unk_1E6EC3D28;
        v53[4] = v13;
        v53[5] = v16;
        v53[7] = &v54;
        v53[6] = v46;
        v53[8] = &v65;
        v53[9] = &v71;
        [managedObjectContext2 performBlockAndWait:v53];
        v18 = [v14 count];
        if (v18 == [v16 count])
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          allKeys = [v14 allKeys];
          v20 = [allKeys countByEnumeratingWithState:&v49 objects:v81 count:16];
          if (v20)
          {
            v21 = *v50;
            while (2)
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v50 != v21)
                {
                  objc_enumerationMutation(allKeys);
                }

                v23 = *(*(&v49 + 1) + 8 * i);
                if (([objc_msgSend(v14 objectForKeyedSubscript:{v23), "isEqualToDate:", objc_msgSend(v16, "objectForKeyedSubscript:", v23)}] & 1) == 0)
                {
                  *(v72 + 24) = 0;
                  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
                  otherStore = otherStoreCopy;
                  v79[0] = v43;
                  v79[1] = @"recordID";
                  v80[0] = @"Move receipt dates don't match.";
                  v80[1] = v11;
                  v79[2] = @"movedRecordName";
                  v80[2] = v23;
                  v79[3] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [storeCopy identifier]);
                  v80[3] = v14;
                  v79[4] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [otherStoreCopy identifier]);
                  v80[4] = v16;
                  v25 = [v26 initWithDomain:v42 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v80, v79, 5)}];
                  goto LABEL_19;
                }
              }

              v20 = [allKeys countByEnumeratingWithState:&v49 objects:v81 count:16];
              otherStore = otherStoreCopy;
              if (v20)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          *(v72 + 24) = 0;
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v77[0] = v43;
          v77[1] = @"recordID";
          v78[0] = @"Move receipts don't match.";
          v78[1] = v11;
          v77[2] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [store identifier]);
          v78[2] = v14;
          v77[3] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [otherStore identifier]);
          v78[3] = v16;
          v25 = [v24 initWithDomain:v42 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v78, v77, 4)}];
LABEL_19:
          v66[5] = v25;
        }

        store = storeCopy;
        if (*(v72 + 24) == 1)
        {
          v27 = *(*&buf[8] + 40);
          if (v27 != v55[5])
          {
            v28 = [objc_msgSend(v27 "recordID")];
            if (![v28 isEqual:{objc_msgSend(objc_msgSend(v55[5], "recordID"), "recordName")}] || (v29 = objc_msgSend(objc_msgSend(objc_msgSend(*(*&buf[8] + 40), "recordID"), "zoneID"), "zoneName"), (objc_msgSend(v29, "isEqualToString:", objc_msgSend(objc_msgSend(objc_msgSend(v55[5], "recordID"), "zoneID"), "zoneName")) & 1) == 0))
            {
              *(v72 + 24) = 0;
              v30 = objc_alloc(MEMORY[0x1E696ABC0]);
              v75[0] = v43;
              v75[1] = @"recordID";
              v76[0] = @"Shares don't match for record zone.";
              v76[1] = v11;
              v75[2] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [storeCopy identifier]);
              v31 = *(*&buf[8] + 40);
              if (!v31)
              {
                v31 = @"nil";
              }

              v76[2] = v31;
              v75[3] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [otherStore identifier]);
              v32 = v55[5];
              if (!v32)
              {
                v32 = @"nil";
              }

              v76[3] = v32;
              v33 = [v30 initWithDomain:v42 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v76, v75, 4)}];
              v66[5] = v33;
            }
          }
        }

        v55[5] = 0;
        _Block_object_dispose(&v54, 8);
        selfCopy = v46;
      }

      *(*&buf[8] + 40) = 0;
      v34 = *(v72 + 24);
      _Block_object_dispose(buf, 8);
      if (!v34)
      {
        break;
      }

      if (++v10 == v48)
      {
        v9 = [obj countByEnumeratingWithState:&v61 objects:v86 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v72[3] & 1) == 0)
  {
    v37 = v66[5];
    if (v37)
    {
      if (error)
      {
        *error = v37;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 881;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v39 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        *&buf[12] = 1024;
        *&buf[14] = 881;
        _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v66[5] = 0;
  v35 = *(v72 + 24);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v71, 8);
  return v35;
}

void __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) moveReceipts];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) setObject:objc_msgSend(*(*(&v15 + 1) + 8 * v6) forKey:{"movedAt"), objc_msgSend(*(*(&v15 + 1) + 8 * v6), "recordName")}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v7 = -[NSCKRecordZoneMetadata createRecordZoneID]([*(a1 + 32) recordZone]);
  v8 = *(*(a1 + 48) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "recordZone")];
  if (v9)
  {
    v10 = v9;
    if ([objc_msgSend(v9 "binaryData")])
    {
      v11 = [v10 binaryData];
    }

    else
    {
      v11 = [v10 externalBinaryData];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 56) + 8) + 40) = [(PFCloudKitArchivingUtilities *)v8 shareFromEncodedData:v12 inZoneWithID:v7 error:(*(*(a1 + 64) + 8) + 40)];
  v13 = *(*(*(a1 + 64) + 8) + 40);
  if (v13)
  {
    v14 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

void __76__PFCloudKitStoreComparer_ensureMoveReceiptsMatchForStore_otherStore_error___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) moveReceipts];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) setObject:objc_msgSend(*(*(&v15 + 1) + 8 * v6) forKey:{"movedAt"), objc_msgSend(*(*(&v15 + 1) + 8 * v6), "recordName")}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v7 = -[NSCKRecordZoneMetadata createRecordZoneID]([*(a1 + 32) recordZone]);
  v8 = *(*(a1 + 48) + 24);
  v9 = [objc_msgSend(*(a1 + 32) "recordZone")];
  if (v9)
  {
    v10 = v9;
    if ([objc_msgSend(v9 "binaryData")])
    {
      v11 = [v10 binaryData];
    }

    else
    {
      v11 = [v10 externalBinaryData];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *(*(*(a1 + 56) + 8) + 40) = [(PFCloudKitArchivingUtilities *)v8 shareFromEncodedData:v12 inZoneWithID:v7 error:(*(*(a1 + 64) + 8) + 40)];
  v13 = *(*(*(a1 + 64) + 8) + 40);
  if (v13)
  {
    v14 = v13;
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

- (BOOL)ensureMirroredRelationshipsMatchForStore:(id)store otherStore:(id)otherStore error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__47;
  v38 = __Block_byref_object_dispose__47;
  v39 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v54[0] = store;
  v54[1] = otherStore;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v55 count:16];
  if (v9)
  {
    v10 = *v27;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v26 + 1) + 8 * v11);
      v13 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      -[NSManagedObjectContext setPersistentStoreCoordinator:](v13, "setPersistentStoreCoordinator:", [v12 _persistentStoreCoordinator]);
      [(NSManagedObjectContext *)v13 _setAllowAncillaryEntities:1];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __85__PFCloudKitStoreComparer_ensureMirroredRelationshipsMatchForStore_otherStore_error___block_invoke;
      v25[3] = &unk_1E6EC5450;
      v25[4] = v12;
      v25[5] = self;
      v25[6] = v13;
      v25[7] = store;
      v25[8] = otherStore;
      v25[9] = &v44;
      v25[10] = &v40;
      v25[11] = &v30;
      v25[12] = &v34;
      [(NSManagedObjectContext *)v13 performBlockAndWait:v25];

      if (!*(v31 + 24))
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v55 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(v31 + 24) != 1)
  {
    errorCopy2 = error;
    v18 = v35[5];
    goto LABEL_14;
  }

  v14 = v45[3];
  v15 = v41[3];
  if (v14 != v15)
  {
    v19 = MEMORY[0x1E696ABC0];
    v52 = *MEMORY[0x1E696A588];
    errorCopy2 = error;
    v53 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, v15);
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v18 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v20];
LABEL_14:
    if (v18)
    {
      if (errorCopy2)
      {
        v16 = 0;
        *errorCopy2 = v18;
        goto LABEL_22;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v50 = 1024;
        v51 = 952;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
        v50 = 1024;
        v51 = 952;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  v16 = 1;
LABEL_22:

  v35[5] = 0;
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  return v16;
}

id __85__PFCloudKitStoreComparer_ensureMirroredRelationshipsMatchForStore_otherStore_error___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", +[NSCKMirroredRelationship entityPath]);
  v19[0] = *(a1 + 32);
  -[NSFetchRequest setAffectedStores:](v2, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1]);
  [(NSFetchRequest *)v2 setResultType:4];
  v3 = *(a1 + 40);
  if (*(v3 + 8) == 1)
  {
    v4 = [*(v3 + 16) sharedZoneIDsForStore:*(a1 + 32)];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * v9++), "zoneName")}];
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    -[NSFetchRequest setPredicate:](v2, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"recordZone.ckRecordZoneName IN %@", v5]);
  }

  v13 = 0;
  result = [*(a1 + 48) executeFetchRequest:v2 error:&v13];
  if (result)
  {
    v11 = *(a1 + 32);
    if (v11 == *(a1 + 56))
    {
      result = [objc_msgSend(result "lastObject")];
      v12 = *(a1 + 72);
    }

    else
    {
      if (v11 != *(a1 + 64))
      {
        return result;
      }

      result = [objc_msgSend(result "lastObject")];
      v12 = *(a1 + 80);
    }

    *(*(v12 + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 0;
    result = v13;
    *(*(*(a1 + 96) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)ensureRecordMetadataMatchesForRecordID:(id)d inStore:(id)store andOtherStore:(id)otherStore error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v10 = [(PFCloudKitStoreComparisonCache *)self->_cache metadataForRecordID:d inStore:store];
  v11 = [(PFCloudKitStoreComparisonCache *)self->_cache metadataForRecordID:d inStore:otherStore];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (v10 | v11)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Hmmmm I think something changed around this method because the metadata should have been verified for equivalent entries by now.\n", buf, 2u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Hmmmm I think something changed around this method because the metadata should have been verified for equivalent entries by now.", buf, 2u);
      }
    }

    goto LABEL_19;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3052000000;
  v29 = __Block_byref_object_copy__47;
  v30 = __Block_byref_object_dispose__47;
  v31 = 0;
  managedObjectContext = [v10 managedObjectContext];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke;
  v26[3] = &unk_1E6EC1860;
  v26[4] = v10;
  v26[5] = buf;
  [managedObjectContext performBlockAndWait:v26];
  v17 = [(PFCloudKitArchivingUtilities *)self->_archivingUtilities recordFromEncodedData:&v27 error:?];

  *(*&buf[8] + 40) = 0;
  if (v17)
  {
    managedObjectContext2 = [v12 managedObjectContext];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke_2;
    v25[3] = &unk_1E6EC1860;
    v25[4] = v12;
    v25[5] = buf;
    [managedObjectContext2 performBlockAndWait:v25];
    v19 = [(PFCloudKitArchivingUtilities *)self->_archivingUtilities recordFromEncodedData:&v27 error:?];

    *(*&buf[8] + 40) = 0;
    v20 = v19 && -[PFCloudKitStoreComparer ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:](self, "ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:", v17, v19, &v27) && -[PFCloudKitStoreComparer ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:](self, "ensureContentsOfRecordStorageMatchForStorage:andOtherStore:error:", [v17 encryptedValues], objc_msgSend(v19, "encryptedValues"), &v27);
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(buf, 8);
  if (v20)
  {
LABEL_19:
    LOBYTE(v21) = 1;
    return v21;
  }

  if (v27)
  {
    if (error)
    {
      LOBYTE(v21) = 0;
      *error = v27;
      return v21;
    }

LABEL_28:
    LOBYTE(v21) = 0;
    return v21;
  }

  v22 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    *&buf[12] = 1024;
    *&buf[14] = 1011;
    _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v23 = _PFLogGetLogStream(17);
  v21 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
  if (v21)
  {
    *buf = 136315394;
    *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
    *&buf[12] = 1024;
    *&buf[14] = 1011;
    _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_28;
  }

  return v21;
}

id __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) encodedRecordAsset];
  if (v2)
  {
    v3 = v2;
    if ([objc_msgSend(v2 "binaryData")])
    {
      v2 = [v3 binaryData];
    }

    else
    {
      v2 = [v3 externalBinaryData];
    }
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __94__PFCloudKitStoreComparer_ensureRecordMetadataMatchesForRecordID_inStore_andOtherStore_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) encodedRecordAsset];
  if (v2)
  {
    v3 = v2;
    if ([objc_msgSend(v2 "binaryData")])
    {
      v2 = [v3 binaryData];
    }

    else
    {
      v2 = [v3 externalBinaryData];
    }
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)ensureContentsOfRecordStorageMatchForStorage:(id)storage andOtherStore:(id)store error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{objc_msgSend(storage, "allKeys")}];
  [v8 addObjectsFromArray:{objc_msgSend(store, "allKeys")}];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  errorCopy = error;
  v11 = *v28;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (([v13 isEqualToString:@"_PFFakeCKDatabaseAncestorRecordKey"] & 1) == 0)
      {
        v14 = [storage objectForKeyedSubscript:v13];
        v15 = [store objectForKeyedSubscript:v13];
        if (v14 != v15)
        {
          v16 = v15;
          getCloudKitCKAssetClass(v15);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) == 0)
          {
            getCloudKitCKAssetClass(isKindOfClass);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && ([(__CFString *)v14 isEqual:v16]& 1) == 0)
            {
              v19 = *MEMORY[0x1E696A250];
              v35[0] = @"mismatchField";
              v35[1] = @"value";
              v20 = @"nil";
              if (v14)
              {
                v21 = v14;
              }

              else
              {
                v21 = @"nil";
              }

              v36[0] = v13;
              v36[1] = v21;
              v35[2] = @"oValue";
              if (v16)
              {
                v20 = v16;
              }

              v36[2] = v20;
              v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v19 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, v35, 3)}];

              if (v22)
              {
                if (errorCopy)
                {
                  LOBYTE(v18) = 0;
                  *errorCopy = v22;
                  return v18;
                }
              }

              else
              {
                LogStream = _PFLogGetLogStream(17);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
                  v33 = 1024;
                  v34 = 1075;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
                }

                v24 = _PFLogGetLogStream(17);
                v18 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
                if (!v18)
                {
                  return v18;
                }

                *buf = 136315394;
                v32 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitStoreComparer.m";
                v33 = 1024;
                v34 = 1075;
                _os_log_fault_impl(&dword_18565F000, v24, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }

              LOBYTE(v18) = 0;
              return v18;
            }
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v37 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_13:

  LOBYTE(v18) = 1;
  return v18;
}

+ (id)trimExcessiveValuesForLog:(id)log
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([log length] >= 0x101)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [log substringToIndex:255];
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [log fileURL]) && objc_msgSend(log, "length") >= 0x101)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [log subdataWithRange:{0, 255}];
LABEL_9:
      result = objc_msgSend_stringWithFormat_(v4, v5);
      if (result)
      {
        return result;
      }
    }
  }

  logCopy = log;

  return logCopy;
}

@end