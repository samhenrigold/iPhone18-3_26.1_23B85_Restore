@interface HDAuthorizationEntity
+ (BOOL)_shouldSkipAuthorizationInsertionForBloodPressureMismatch:(id)mismatch sourceEntity:(id)entity;
+ (BOOL)resetAuthorizationStatusesForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error;
+ (BOOL)setAuthorizationStatuses:(id)statuses authorizationRequests:(id)requests authorizationModes:(id)modes sourceEntity:(id)entity options:(unint64_t)options profile:(id)profile error:(id *)error;
+ (id)_maxObjectPersistentIDForProfile:(void *)profile error:;
+ (id)_predicateForBundleIdentifier:(void *)identifier profile:(uint64_t)profile error:;
+ (id)_predicateForSourceEntities:(uint64_t)entities;
+ (id)_predicateForTypes:(uint64_t)types;
+ (id)allSourcesRequestingTypes:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationRecordsBySourceForType:(id)type profile:(id)profile error:(id *)error;
+ (id)authorizationRecordsByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationRequestsForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)authorizationStatusesForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)foreignKeys;
+ (id)modificationDateForSourceEntity:(id)entity type:(id)type profile:(id)profile error:(id *)error;
+ (id)readAuthorizationStatusesByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error;
+ (id)uniquedColumns;
+ (uint64_t)_insertAuthorizationWithSourceIdentifier:(uint64_t)identifier dataTypeCode:(uint64_t)code authorizationStatus:(uint64_t)status authorizationRequest:(uint64_t)request authorizationMode:(void *)mode modificationDate:(void *)date currentDate:(uint64_t)currentDate syncProvenance:(uint64_t)self0 syncIdentity:(uint64_t)self1 objectAnchor:(void *)self2 modificationEpoch:(char)self3 options:(void *)self4 profile:(void *)self5 database:(uint64_t)self6 error:;
+ (uint64_t)_insertCodableSourceAuthorizations:(char)authorizations overwriteExisting:(void *)existing syncStore:(void *)store profile:(uint64_t)profile error:;
+ (uint64_t)_resetAuthorizationStatusesWithPredicate:(void *)predicate profile:(uint64_t)profile error:;
@end

@implementation HDAuthorizationEntity

+ (id)authorizationStatusesForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [self authorizationRecordsByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v17}];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "status")}];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)authorizationRequestsForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [self authorizationRecordsByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:{v13, v17}];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "request")}];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)authorizationRecordsByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v6 = [self readAuthorizationStatusesByTypeForBundleIdentifier:identifier types:types profile:profile error:error];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__HDAuthorizationEntity_authorizationRecordsByTypeForBundleIdentifier_types_profile_error___block_invoke;
    v11[3] = &unk_27862FDB8;
    v12 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v11];
    v9 = objc_msgSend_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __91__HDAuthorizationEntity_authorizationRecordsByTypeForBundleIdentifier_types_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 authorizationRecord];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)readAuthorizationStatusesByTypeForBundleIdentifier:(id)identifier types:(id)types profile:(id)profile error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  typesCopy = types;
  profileCopy = profile;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  sourceManager = [profileCopy sourceManager];
  v15 = [sourceManager allSourcesForBundleIdentifier:identifierCopy error:error];

  if (v15)
  {
    if ([v15 count])
    {
      v56 = profileCopy;
      v57 = identifierCopy;
      v55 = typesCopy;
      v16 = [MEMORY[0x277CCD720] _typesIncludingParentTypes:typesCopy];
      allObjects = [v15 allObjects];
      v18 = [allObjects hk_map:&__block_literal_global_245];
      v19 = [v18 componentsJoinedByString:{@", "}];

      v54 = v19;
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ in (%@)", @"source_id", v19];
      if ([v16 count])
      {
        allObjects2 = [v16 allObjects];
        v22 = [allObjects2 hk_map:&__block_literal_global_354_0];
        v23 = [v22 componentsJoinedByString:{@", "}];

        v24 = [v20 stringByAppendingFormat:@" AND %@ in (%@)", @"object_type", v23];

        v20 = v24;
      }

      v25 = MEMORY[0x277CCACA8];
      disambiguatedDatabaseTable = [self disambiguatedDatabaseTable];
      v53 = v20;
      v27 = [v25 stringWithFormat:@"SELECT %@, %@, %@, %@, %@, %@, %@ FROM %@ WHERE %@ ORDER BY %@ ASC, %@ DESC, %@ DESC, %@ DESC", @"object_type", @"status", @"request", @"mode", @"deleted_object_anchor", @"object_limit_anchor", @"object_limit_modified", disambiguatedDatabaseTable, v20, @"object_type", @"modification_epoch", @"date_modified", @"status"];

      v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
      database = [profileCopy database];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_3;
      v62[3] = &unk_278625F78;
      selfCopy = self;
      v52 = v27;
      v63 = v52;
      v64 = v15;
      v51 = v16;
      v65 = v51;
      v30 = v28;
      v66 = v30;
      v67 = v57;
      v50 = [self performReadTransactionWithHealthDatabase:database error:error block:v62];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      allKeys = [v30 allKeys];
      v32 = [allKeys countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v59;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v59 != v34)
            {
              objc_enumerationMutation(allKeys);
            }

            v36 = *(*(&v58 + 1) + 8 * i);
            parentType = [v36 parentType];

            if (parentType)
            {
              v38 = [v30 objectForKeyedSubscript:v36];
              parentType2 = [v36 parentType];
              v40 = [v30 objectForKeyedSubscript:parentType2];

              if (v40 && ([v40 authorizationRequest] == 203 || (v41 = objc_msgSend(v38, "authorizationRequest"), v41 == objc_msgSend(v40, "authorizationRequest"))))
              {
                authorizationRecord = [v40 authorizationRecord];
                readingEnabled = [authorizationRecord readingEnabled];

                if ((readingEnabled & 1) == 0)
                {
                  [v38 disableReading];
                }

                authorizationRecord2 = [v40 authorizationRecord];
                sharingEnabled = [authorizationRecord2 sharingEnabled];

                if ((sharingEnabled & 1) == 0)
                {
                  [v38 disableSharing];
                }
              }

              else
              {
                [v30 removeObjectForKey:v36];
              }
            }
          }

          v33 = [allKeys countByEnumeratingWithState:&v58 objects:v69 count:16];
        }

        while (v33);
      }

      if (v50)
      {
        v46 = v30;
      }

      else
      {
        v46 = 0;
      }

      v47 = v46;

      profileCopy = v56;
      identifierCopy = v57;
      typesCopy = v55;
    }

    else
    {
      v47 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

uint64_t __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 72)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_4;
  v13[3] = &unk_278613038;
  v6 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_5;
  v9[3] = &unk_27861A5B8;
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 40);
  v7 = [v5 executeSQL:v6 error:a3 bindingHandler:v13 enumerationHandler:v9];

  return v7;
}

void __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_4(uint64_t a1, sqlite3_stmt *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_int64(a2, v10++, [*(*(&v21 + 1) + 8 * v9++) persistentID]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(a1 + 40);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      v16 = v8;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v8 = v16 + 1;
        sqlite3_bind_int64(a2, v16++, [*(*(&v17 + 1) + 8 * v15++) code]);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

BOOL __96__HDAuthorizationEntity_readAuthorizationStatusesByTypeForBundleIdentifier_types_profile_error___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = HDSQLiteColumnAsInt64();
  v7 = [MEMORY[0x277CCD720] dataTypeWithCode:v6];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];

    if (!v8)
    {
      v9 = HDSQLiteColumnAsInt64();
      v10 = HDSQLiteColumnAsInt64();
      v11 = [HDAuthorizationStatusRecord alloc];
      v12 = HDSQLiteColumnAsInt64();
      if (v9 == 102)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v15 = MEMORY[0x22AAC6C80](a2, 4);
      if (v10 == 1)
      {
        v16 = MEMORY[0x22AAC6C80](a2, 5);
        v17 = MEMORY[0x22AAC6C40](a2, 6);
        v18 = v11;
        v19 = v17;
        v20 = [(HDAuthorizationStatusRecord *)v18 initWithReadAuthorizationStatus:v9 authorizationRequest:v12 authorizationMode:1 restrictedBundleIdentifier:v13 restrictedSourceEntities:v14 deletedObjectBaselineAnchor:v15 objectLimitAnchor:v16 objectLimitModifiedDate:v17];
      }

      else
      {
        v20 = [(HDAuthorizationStatusRecord *)v11 initWithReadAuthorizationStatus:v9 authorizationRequest:v12 authorizationMode:v10 restrictedBundleIdentifier:v13 restrictedSourceEntities:v14 deletedObjectBaselineAnchor:v15 objectLimitAnchor:0 objectLimitModifiedDate:0];
      }

      [*(a1 + 32) setObject:v20 forKeyedSubscript:v7];
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:100 format:{@"Unable to instantiate object type for code: %ld", v6}];
  }

  return v7 != 0;
}

+ (id)modificationDateForSourceEntity:(id)entity type:(id)type profile:(id)profile error:(id *)error
{
  entityCopy = entity;
  typeCopy = type;
  profileCopy = profile;
  if (typeCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:263 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];

    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:264 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

LABEL_3:
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__208;
  v30 = __Block_byref_object_dispose__208;
  v31 = 0;
  database = [profileCopy database];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__HDAuthorizationEntity_modificationDateForSourceEntity_type_profile_error___block_invoke;
  v21[3] = &unk_278626C38;
  selfCopy = self;
  v15 = entityCopy;
  v22 = v15;
  v16 = typeCopy;
  v23 = v16;
  v24 = &v26;
  [self performReadTransactionWithHealthDatabase:database error:error block:v21];

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

uint64_t __76__HDAuthorizationEntity_modificationDateForSourceEntity_type_profile_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 databaseForEntityClass:*(a1 + 56)];
  v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v7 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v8 = v6;
  v9 = objc_opt_self();
  v10 = [(HDAuthorizationEntity *)v9 _predicateForSourceEntities:v8];

  v11 = [(HDAuthorizationEntity *)v9 _predicateForTypes:v7];

  v12 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v10];

  v13 = [*(a1 + 56) anyInDatabase:v5 predicate:v12 error:a3];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 dateForProperty:@"date_modified" database:v5];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  return 1;
}

+ (id)_maxObjectPersistentIDForProfile:(void *)profile error:
{
  v4 = a2;
  objc_opt_self();
  v11 = 0;
  v5 = [(HDKeyValueEntity *)HDUnprotectedKeyValueEntity numberForKey:@"HDMaxObjectPersistentID" domain:&stru_283BF39C8 category:0 profile:v4 entity:0 error:&v11];

  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v5;
  }

  else if (v6)
  {
    if (profile)
    {
      v10 = v6;
      v8 = 0;
      *profile = v7;
    }

    else
    {
      _HKLogDroppedError();
      v8 = 0;
    }
  }

  else
  {
    v8 = &unk_283CB42A8;
  }

  return v8;
}

+ (BOOL)setAuthorizationStatuses:(id)statuses authorizationRequests:(id)requests authorizationModes:(id)modes sourceEntity:(id)entity options:(unint64_t)options profile:(id)profile error:(id *)error
{
  statusesCopy = statuses;
  requestsCopy = requests;
  modesCopy = modes;
  entityCopy = entity;
  profileCopy = profile;
  if (!statusesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatuses != nil"}];
  }

  if (!entityCopy)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

    if (profileCopy)
    {
      goto LABEL_5;
    }

LABEL_7:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"profile !=nil"}];

    goto LABEL_5;
  }

  if (!profileCopy)
  {
    goto LABEL_7;
  }

LABEL_5:
  date = [MEMORY[0x277CBEAA8] date];
  database = [profileCopy database];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __126__HDAuthorizationEntity_setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_options_profile_error___block_invoke;
  v34[3] = &unk_278614530;
  v35 = entityCopy;
  v36 = profileCopy;
  v37 = statusesCopy;
  v38 = requestsCopy;
  v39 = modesCopy;
  v40 = date;
  selfCopy = self;
  optionsCopy = options;
  v23 = date;
  v24 = modesCopy;
  v25 = requestsCopy;
  v26 = statusesCopy;
  v27 = profileCopy;
  v28 = entityCopy;
  v29 = [self performWriteTransactionWithHealthDatabase:database error:error block:v34];

  return v29;
}

uint64_t __126__HDAuthorizationEntity_setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_options_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v120 = *MEMORY[0x277D85DE8];
  v78 = a2;
  v77 = [v78 databaseForEntityClass:*(a1 + 80)];
  if (![*(a1 + 32) existsInDatabase:?])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Source %lld does not exist", objc_msgSend(*(a1 + 32), "persistentID")}];
    goto LABEL_66;
  }

  v5 = [(HDAuthorizationEntity *)*(a1 + 80) _maxObjectPersistentIDForProfile:a3 error:?];
  if (!v5)
  {
LABEL_66:
    v61 = 0;
    goto LABEL_85;
  }

  v75 = v5;
  v76 = a3;
  v6 = a1;
  v7 = *(a1 + 48);
  v8 = v6[7];
  v9 = v6[8];
  v10 = v6[4];
  v11 = v6[9];
  v12 = [v5 longLongValue];
  v87 = v6[11];
  v88 = v12;
  v73 = v6;
  v13 = v6[5];
  v14 = v7;
  v92 = v8;
  v98 = v9;
  v15 = v10;
  v91 = v11;
  v16 = v13;
  v90 = v77;
  v74 = v78;
  v89 = objc_opt_self();
  if (!v15)
  {
    v68 = [MEMORY[0x277CCA890] currentHandler];
    [v68 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v89 file:@"HDAuthorizationEntity.m" lineNumber:874 description:{@"Invalid parameter not satisfying: %@", @"sourceEntity != nil"}];

    if (v14)
    {
      goto LABEL_5;
    }

LABEL_87:
    v69 = [MEMORY[0x277CCA890] currentHandler];
    [v69 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v89 file:@"HDAuthorizationEntity.m" lineNumber:875 description:{@"Invalid parameter not satisfying: %@", @"authorizationStatuses != nil"}];

    goto LABEL_5;
  }

  if (!v14)
  {
    goto LABEL_87;
  }

LABEL_5:
  v17 = v92;
  if (!v92)
  {
    v70 = [MEMORY[0x277CCA890] currentHandler];
    [v70 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v89 file:@"HDAuthorizationEntity.m" lineNumber:876 description:{@"Invalid parameter not satisfying: %@", @"authorizationRequests != nil"}];
  }

  if (!v98)
  {
    v71 = [MEMORY[0x277CCA890] currentHandler];
    [v71 handleFailureInMethod:sel__setAuthorizationStatuses_authorizationRequests_authorizationModes_sourceEntity_dateModified_syncProvenance_objectAnchor_options_profile_database_transaction_error_ object:v89 file:@"HDAuthorizationEntity.m" lineNumber:877 description:{@"Invalid parameter not satisfying: %@", @"authorizationModes != nil"}];
  }

  v18 = [MEMORY[0x277CBEB58] set];
  v19 = [v14 allKeys];
  [v18 addObjectsFromArray:v19];

  v20 = [v92 allKeys];
  [v18 addObjectsFromArray:v20];

  v21 = [v98 allKeys];
  [v18 addObjectsFromArray:v21];

  v22 = [v16 sourceManager];
  v23 = [v22 clientSourceForSourceEntity:v15 error:v76];

  v24 = v23;
  if (v23)
  {
    v72 = v23;
    v25 = [v23 bundleIdentifier];
    v97 = [v89 readAuthorizationStatusesByTypeForBundleIdentifier:v25 types:v18 profile:v16 error:v76];

    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = objc_msgSend_copy(v18);
    v85 = v15;
    v86 = v14;
    v103 = v16;
    v80 = v18;
    v95 = [obj countByEnumeratingWithState:&v112 objects:v119 count:16];
    if (v95)
    {
      v93 = *v113;
LABEL_12:
      v26 = 0;
      while (1)
      {
        if (*v113 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v112 + 1) + 8 * v26);
        v28 = [v97 objectForKeyedSubscript:v27];
        if (v28)
        {
          break;
        }

LABEL_37:
        if (v95 == ++v26)
        {
          v44 = [obj countByEnumeratingWithState:&v112 objects:v119 count:16];
          v95 = v44;
          if (v44)
          {
            goto LABEL_12;
          }

          goto LABEL_42;
        }
      }

      v29 = v28;
      v30 = [v14 objectForKeyedSubscript:v27];
      if (v30 || ([v17 objectForKeyedSubscript:v27], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v43 = [v98 objectForKeyedSubscript:v27];

        if (!v43)
        {
          v32 = 0;
          goto LABEL_20;
        }
      }

      v31 = [v16 syncIdentityManager];
      v32 = [v31 currentSyncIdentity];

LABEL_20:
      v104 = v32;
      v101 = [v15 persistentID];
      v99 = [v27 code];
      v33 = [v14 objectForKeyedSubscript:v27];
      if (v33)
      {
        v84 = [v14 objectForKeyedSubscript:v27];
        v34 = [v84 intValue];
      }

      else
      {
        v34 = 100;
      }

      v35 = [v17 objectForKeyedSubscript:v27];
      if (v35)
      {
        v83 = [v17 objectForKeyedSubscript:v27];
        v36 = [v83 intValue];
      }

      else
      {
        v36 = [v29 authorizationRequest];
      }

      v37 = [v98 objectForKeyedSubscript:v27];
      if (v37)
      {
        v81 = [v98 objectForKeyedSubscript:v27];
        v38 = [v81 intValue];
      }

      else
      {
        v38 = [v29 authorizationMode];
      }

      v39 = [v104 entity];
      v40 = [v39 persistentID];
      v111 = 0;
      v41 = [(HDAuthorizationEntity *)v89 _insertAuthorizationWithSourceIdentifier:v101 dataTypeCode:v99 authorizationStatus:v34 authorizationRequest:v36 authorizationMode:v38 modificationDate:v91 currentDate:v91 syncProvenance:0 syncIdentity:v40 objectAnchor:v88 modificationEpoch:0 options:v87 profile:v103 database:v90 error:&v111];
      v42 = v111;

      if (v37)
      {
      }

      v14 = v86;
      v17 = v92;
      if (v35)
      {
      }

      if (v33)
      {
      }

      v15 = v85;
      if ((v41 & 1) == 0)
      {
        v62 = v42;
        v47 = v62;
        v16 = v103;
        v18 = v80;
        if (v62)
        {
          if (v76)
          {
            v63 = v62;
            *v76 = v47;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v82 = obj;
        v64 = v104;
LABEL_80:

        v61 = 0;
        goto LABEL_81;
      }

      v18 = v80;
      [v80 removeObject:v27];

      v16 = v103;
      goto LABEL_37;
    }

LABEL_42:

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v82 = v18;
    v96 = [v82 countByEnumeratingWithState:&v107 objects:v118 count:16];
    if (v96)
    {
      v94 = *v108;
      while (2)
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v108 != v94)
          {
            objc_enumerationMutation(v82);
          }

          v46 = *(*(&v107 + 1) + 8 * i);
          v47 = [v17 objectForKeyedSubscript:v46];
          if (v47)
          {
            v105 = [v15 persistentID];
            v102 = [v46 code];
            v48 = [v14 objectForKeyedSubscript:v46];
            if (v48)
            {
              v84 = [v14 objectForKeyedSubscript:v46];
              v49 = [v84 intValue];
            }

            else
            {
              v49 = 100;
            }

            v100 = v49;
            v52 = [v47 intValue];
            v53 = [v98 objectForKeyedSubscript:v46];
            if (v53)
            {
              v83 = [v98 objectForKeyedSubscript:v46];
              v54 = [v83 intValue];
            }

            else
            {
              v54 = 0;
            }

            v55 = v52;
            v56 = [v103 syncIdentityManager];
            v57 = [v56 currentSyncIdentity];
            v58 = [v57 entity];
            v59 = [v58 persistentID];
            v106 = 0;
            v60 = [(HDAuthorizationEntity *)v89 _insertAuthorizationWithSourceIdentifier:v105 dataTypeCode:v102 authorizationStatus:v100 authorizationRequest:v55 authorizationMode:v54 modificationDate:v91 currentDate:v91 syncProvenance:0 syncIdentity:v59 objectAnchor:v88 modificationEpoch:0 options:v87 profile:v103 database:v90 error:&v106];
            v51 = v106;

            if (v53)
            {
            }

            v17 = v92;
            v15 = v85;
            if (v48)
            {
            }

            v14 = v86;
            if ((v60 & 1) == 0)
            {
              v64 = v51;
              if (v64)
              {
                v16 = v103;
                v18 = v80;
                if (v76)
                {
                  v65 = v64;
                  *v76 = v64;
                }

                else
                {
                  _HKLogDroppedError();
                }

                v29 = v64;
              }

              else
              {
                v29 = 0;
                v16 = v103;
                v18 = v80;
              }

              goto LABEL_80;
            }
          }

          else
          {
            _HKInitializeLogging();
            v50 = HKLogAuthorization();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v117 = v46;
              _os_log_error_impl(&dword_228986000, v50, OS_LOG_TYPE_ERROR, "Not creating an auth row for %{public}@ since an authorization request was not passed", buf, 0xCu);
            }

            v51 = 0;
          }
        }

        v61 = 1;
        v96 = [v82 countByEnumeratingWithState:&v107 objects:v118 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }

      v16 = v103;
      v18 = v80;
    }

    else
    {
      v61 = 1;
    }

LABEL_81:

    v24 = v72;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:v76 code:100 format:{@"Unable to find client source for entity: %@", v15}];
    v61 = 0;
  }

  if (v61)
  {
    v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"Authorization status changed for source %lld", objc_msgSend(v73[4], "persistentID")];
    HDSetHealthInUseDefaultWithReason(v66);
  }

LABEL_85:
  return v61;
}

+ (id)authorizationRecordsBySourceForType:(id)type profile:(id)profile error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  profileCopy = profile;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"type != nil"}];
  }

  sourceManager = [profileCopy sourceManager];
  v11 = [sourceManager allSourcesWithError:error];

  if (v11)
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = v11;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          bundleIdentifier = [v16 bundleIdentifier];
          v18 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
          v19 = [self authorizationRecordsByTypeForBundleIdentifier:bundleIdentifier types:v18 profile:profileCopy error:error];

          if (!v19)
          {

            v22 = 0;
            v21 = v27;
            goto LABEL_16;
          }

          v20 = [v19 objectForKeyedSubscript:typeCopy];
          if (v20)
          {
            [v27 setObject:v20 forKeyedSubscript:v16];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v21 = v27;
    v22 = v27;
LABEL_16:

    v11 = v25;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)allSourcesRequestingTypes:(id)types profile:(id)profile error:(id *)error
{
  typesCopy = types;
  profileCopy = profile;
  v9 = objc_opt_self();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__208;
  v26 = __Block_byref_object_dispose__208;
  v27 = 0;
  database = [profileCopy database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke;
  v16[3] = &unk_27861DAA8;
  v21 = v9;
  v11 = typesCopy;
  v17 = v11;
  v18 = 0;
  v12 = profileCopy;
  v19 = v12;
  v20 = &v22;
  LODWORD(error) = [v9 performReadTransactionWithHealthDatabase:database error:error block:v16];

  if (error)
  {
    v13 = v23[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  _Block_object_dispose(&v22, 8);

  return v14;
}

BOOL __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = [(HDAuthorizationEntity *)*(a1 + 64) _predicateForTypes:?];
  v6 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v5 otherPredicate:*(a1 + 40)];
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = *(a1 + 64);
  v21[0] = @"source_id";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v10 = [*(a1 + 48) database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke_2;
  v19[3] = &unk_278615128;
  v11 = v7;
  v20 = v11;
  LODWORD(v8) = [v8 enumerateProperties:v9 withPredicate:v6 healthDatabase:v10 error:a3 enumerationHandler:v19];

  if (v8)
  {
    v12 = [*(a1 + 48) sourceManager];
    v13 = [v11 allObjects];
    v14 = [v12 clientSourcesForSourceIDs:v13 error:a3];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v17 = *(*(*(a1 + 56) + 8) + 40) != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_predicateForTypes:(uint64_t)types
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if ([v2 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "code", v12)}];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"object_type" values:v3];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __86__HDAuthorizationEntity__allSourcesRequestingTypes_additionalPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HDSQLiteColumnWithNameAsNumber();
  [*(a1 + 32) addObject:v5];

  return 1;
}

+ (BOOL)resetAuthorizationStatusesForBundleIdentifier:(id)identifier profile:(id)profile error:(id *)error
{
  identifierCopy = identifier;
  profileCopy = profile;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDAuthorizationEntity.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
  }

  v11 = [(HDAuthorizationEntity *)self _predicateForBundleIdentifier:identifierCopy profile:profileCopy error:error];
  if (v11)
  {
    v12 = [(HDAuthorizationEntity *)self _resetAuthorizationStatusesWithPredicate:v11 profile:profileCopy error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_predicateForBundleIdentifier:(void *)identifier profile:(uint64_t)profile error:
{
  identifierCopy = identifier;
  v7 = a2;
  v8 = objc_opt_self();
  sourceManager = [identifierCopy sourceManager];

  v10 = [sourceManager allSourcesForBundleIdentifier:v7 error:profile];

  if (v10)
  {
    v11 = [(HDAuthorizationEntity *)v8 _predicateForSourceEntities:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (uint64_t)_resetAuthorizationStatusesWithPredicate:(void *)predicate profile:(uint64_t)profile error:
{
  v6 = a2;
  predicateCopy = predicate;
  v8 = objc_opt_self();
  database = [predicateCopy database];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke;
  v14[3] = &unk_278614698;
  v16 = predicateCopy;
  v17 = v8;
  v15 = v6;
  v10 = predicateCopy;
  v11 = v6;
  v12 = [v8 performWriteTransactionWithHealthDatabase:database error:profile block:v14];

  return v12;
}

+ (uint64_t)_insertCodableSourceAuthorizations:(char)authorizations overwriteExisting:(void *)existing syncStore:(void *)store profile:(uint64_t)profile error:
{
  v10 = a2;
  existingCopy = existing;
  storeCopy = store;
  v13 = objc_opt_self();
  database = [storeCopy database];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke;
  v20[3] = &unk_27862FE08;
  v21 = storeCopy;
  v22 = v10;
  v23 = existingCopy;
  v24 = v13;
  authorizationsCopy = authorizations;
  v15 = existingCopy;
  v16 = v10;
  v17 = storeCopy;
  v18 = [v13 performWriteTransactionWithHealthDatabase:database error:profile block:v20];

  return v18;
}

uint64_t __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v16 = [v5 databaseForEntityClass:*(a1 + 56)];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [(HDAuthorizationEntity *)*(a1 + 56) _maxObjectPersistentIDForProfile:a3 error:?];
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = *(a1 + 40);
    v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(a1 + 48);
          v18 = *(a1 + 32);
          v19 = v16;
          v20 = v7;
          v21 = v6;
          v22 = v5;
          v12 = HKWithAutoreleasePool();

          if (!v12)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __102__HDAuthorizationEntity__insertCodableSourceAuthorizations_overwriteExisting_syncStore_profile_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v137 = *MEMORY[0x277D85DE8];
  v110 = [*(a1 + 32) decodedSourceUUID];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v123 = 0;
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  objc_opt_self();
  v11 = [v7 decodedSourceUUID];
  v12 = v11;
  if (!v11)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:&v123 code:100 description:@"Missing source UUID on codable source authorization"];
    v14 = 0;
    goto LABEL_13;
  }

  v13 = HDSourceEntityPredicateForSourceWithUUID(v11, 0);
  *v132 = 0;
  v14 = [HDSourceEntity firstSourceWithPredicate:v13 database:v10 error:v132];
  v15 = *v132;
  v16 = v15;
  if (!v14)
  {
    if (v15)
    {
      v17 = v15;
      v14 = 0;
      v123 = v16;
    }

    else
    {
      if ([v7 hasSource])
      {
        LOBYTE(v126) = 0;
        v118 = [v9 sourceManager];
        v18 = [v7 source];
        v14 = [v118 sourceForCodableSource:v18 provenance:objc_msgSend(v8 createIfNecessary:"syncProvenance") isDeleted:1 error:{&v126, &v123}];

        if (!v14 || v126 != 1)
        {
          goto LABEL_12;
        }

        v115 = v14;
        v19 = MEMORY[0x277CCA9B8];
        v20 = [v12 UUIDString];
        [v19 hk_assignError:&v123 code:100 format:{@"Source %@ is deleted", v20}];
      }

      else
      {
        v21 = MEMORY[0x277CCA9B8];
        v22 = [v12 UUIDString];
        [v21 hk_assignError:&v123 code:100 format:{@"Failed to find source for UUID %@", v22}];
      }

      v14 = 0;
    }
  }

LABEL_12:

LABEL_13:
  v23 = v123;
  v24 = v23;
  v116 = v14;
  if (!v14)
  {
    _HKInitializeLogging();
    v65 = *MEMORY[0x277CCC2A0];
    v66 = v110;
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
LABEL_61:
      v64 = 1;
      goto LABEL_79;
    }

    v88 = v65;
    v89 = objc_opt_class();
    v90 = v89;
    v91 = [v110 UUIDString];
    *v132 = 138543874;
    *&v132[4] = v89;
    v133 = 2114;
    v134 = v91;
    v135 = 2114;
    v136 = v24;
    v92 = "%{public}@: Failed to find source for UUID %{public}@: %{public}@";
LABEL_81:
    _os_log_error_impl(&dword_228986000, v88, OS_LOG_TYPE_ERROR, v92, v132, 0x20u);

    goto LABEL_61;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v67 = *(a1 + 56);
    v122 = v23;
    v68 = [v14 sourceBundleIdentifierInDatabase:v67 error:&v122];
    v69 = v122;
    v70 = v24;
    v24 = v69;

    if (v68)
    {
      v71 = *(a1 + 88);
      v72 = *(a1 + 48);
      v121 = v24;
      v73 = [(HDAuthorizationEntity *)v71 _predicateForBundleIdentifier:v68 profile:v72 error:&v121];
      v74 = v121;

      if (v73)
      {
        v75 = MEMORY[0x277D10B18];
        v76 = [*(a1 + 88) propertyForSyncProvenance];
        v77 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "syncProvenance")}];
        v78 = [v75 predicateWithProperty:v76 notEqualToValue:v77];

        v79 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v73 otherPredicate:v78];
        v80 = *(a1 + 88);
        v81 = *(a1 + 56);
        v120 = v74;
        v82 = [v80 anyInDatabase:v81 predicate:v79 error:&v120];
        v83 = v120;

        if (!v82)
        {
          if (!v83)
          {

            v101 = 0;
            goto LABEL_16;
          }

          _HKInitializeLogging();
          v84 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            v97 = v84;
            v98 = objc_opt_class();
            *v132 = 138543874;
            *&v132[4] = v98;
            v133 = 2114;
            v134 = v68;
            v135 = 2114;
            v136 = v83;
            v99 = v98;
            _os_log_error_impl(&dword_228986000, v97, OS_LOG_TYPE_ERROR, "%{public}@: Failed to look up existing authorizations for %{public}@: %{public}@", v132, 0x20u);
          }
        }

        v64 = 1;
        v66 = v110;
        v24 = v83;
        goto LABEL_79;
      }

      _HKInitializeLogging();
      v86 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v94 = v86;
        v95 = objc_opt_class();
        *v132 = 138543874;
        *&v132[4] = v95;
        v133 = 2114;
        v134 = v68;
        v135 = 2114;
        v136 = v74;
        v96 = v95;
        _os_log_error_impl(&dword_228986000, v94, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create source authorization predicate for %{public}@: %{public}@", v132, 0x20u);
      }

      v64 = 1;
      v24 = v74;
LABEL_78:
      v66 = v110;
      goto LABEL_79;
    }

    _HKInitializeLogging();
    v85 = *MEMORY[0x277CCC2A0];
    if (!os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v64 = 1;
      goto LABEL_78;
    }

    v88 = v85;
    v93 = objc_opt_class();
    v90 = v93;
    v66 = v110;
    v91 = [v110 UUIDString];
    *v132 = 138543874;
    *&v132[4] = v93;
    v133 = 2114;
    v134 = v91;
    v135 = 2114;
    v136 = v24;
    v92 = "%{public}@: Failed to get source bundle identifier for UUID %{public}@: %{public}@";
    goto LABEL_81;
  }

  v101 = v23;
LABEL_16:
  v25 = [*(a1 + 32) authorizations];
  v108 = [*(a1 + 40) syncProvenance];
  v107 = [*(a1 + 64) longLongValue];
  v26 = *(a1 + 48);
  v27 = *(a1 + 56);
  v28 = *(a1 + 72);
  v29 = *(a1 + 80);
  v30 = v25;
  v31 = v116;
  v113 = v28;
  v119 = v26;
  v112 = v27;
  v103 = v29;
  v32 = objc_opt_self();
  v105 = [v31 persistentID];
  v106 = v32;
  v100 = v31;
  v33 = [v32 _shouldSkipAuthorizationInsertionForBloodPressureMismatch:v30 sourceEntity:v31];
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v34 = v30;
  v35 = [v34 countByEnumeratingWithState:&v126 objects:v132 count:16];
  if (!v35)
  {
    v64 = 1;
    goto LABEL_72;
  }

  v36 = v35;
  v37 = *v127;
  v104 = v34;
  v109 = v33;
  v114 = *v127;
  while (2)
  {
    v38 = 0;
    v111 = v36;
    do
    {
      if (*v127 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v126 + 1) + 8 * v38);
      if (((([v39 _dataTypeCode] & 0xFFFFFFFFFFFFFFFELL) == 16) & v33) == 0)
      {
        v40 = v39;
        v41 = [v40 hasObjectType] && (objc_msgSend(v40, "_dataTypeCode"), _HKValidDataTypeCode()) && objc_msgSend(v40, "hasAuthorizationStatus") && objc_msgSend(v40, "_authorizationStatus") >= 100 && objc_msgSend(v40, "_authorizationStatus") <= 104 && objc_msgSend(v40, "hasAuthorizationRequest") && objc_msgSend(v40, "_authorizationRequest") >= 201 && objc_msgSend(v40, "_authorizationRequest") < 204;
        if ([v40 hasAuthorizationMode])
        {
          if (!v41 || [v40 _authorizationMode] < 0 || objc_msgSend(v40, "_authorizationMode") >= 2)
          {
LABEL_69:
            [MEMORY[0x277CCA9B8] hk_assignError:a2 code:3 format:{@"Invalid codable authorization %@", v40}];
            v44 = v40;
LABEL_70:

            v64 = 0;
            goto LABEL_72;
          }
        }

        else if (!v41)
        {
          goto LABEL_69;
        }

        if (([v40 hasModificationDate] & 1) == 0)
        {
          goto LABEL_69;
        }

        if ([v40 hasAuthorizationMode])
        {
          v42 = [v40 _authorizationMode];
        }

        else
        {
          v42 = 0;
        }

        v43 = [v119 syncIdentityManager];
        v44 = [v43 legacySyncIdentity];

        if (![v40 hasSyncIdentity])
        {
          goto LABEL_45;
        }

        v45 = [v40 syncIdentity];
        v125 = 0;
        v46 = [HDSyncIdentity syncIdentityWithCodable:v45 error:&v125];
        v47 = v125;

        if (v46)
        {
          v48 = [v119 syncIdentityManager];
          v124 = v47;
          v49 = [v48 concreteIdentityForIdentity:v46 shouldCreate:1 transaction:v103 error:&v124];
          v50 = v124;

          if (v49)
          {

            v44 = v49;
LABEL_45:
            v51 = [v40 _dataTypeCode];
            v52 = [v40 _authorizationStatus];
            v53 = [v40 _authorizationRequest];
            [v40 modificationDate];
            v54 = HDDecodeDateForValue();
            v55 = [v44 entity];
            v56 = [v55 persistentID];
            if ([v40 hasModificationEpoch])
            {
              v102 = v44;
              v57 = v42;
              v58 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v40, "modificationEpoch")}];
              v59 = v57;
              v44 = v102;
              v60 = [(HDAuthorizationEntity *)v106 _insertAuthorizationWithSourceIdentifier:v105 dataTypeCode:v51 authorizationStatus:v52 authorizationRequest:v53 authorizationMode:v59 modificationDate:v54 currentDate:v113 syncProvenance:v108 syncIdentity:v56 objectAnchor:v107 modificationEpoch:v58 options:0 profile:v119 database:v112 error:a2];

              v34 = v104;
              v33 = v109;
              v36 = v111;
              if ((v60 & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v61 = [(HDAuthorizationEntity *)v106 _insertAuthorizationWithSourceIdentifier:v105 dataTypeCode:v51 authorizationStatus:v52 authorizationRequest:v53 authorizationMode:v42 modificationDate:v54 currentDate:v113 syncProvenance:v108 syncIdentity:v56 objectAnchor:v107 modificationEpoch:0 options:0 profile:v119 database:v112 error:a2];

              v34 = v104;
              v33 = v109;
              v36 = v111;
              if (!v61)
              {
                goto LABEL_70;
              }
            }

            goto LABEL_56;
          }

          _HKInitializeLogging();
          v63 = *MEMORY[0x277CCC2A0];
          v36 = v111;
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v131 = v50;
            _os_log_fault_impl(&dword_228986000, v63, OS_LOG_TYPE_FAULT, "ConcreteSyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }

          v44 = 0;
          v47 = v50;
          v33 = v109;
        }

        else
        {
          _HKInitializeLogging();
          v62 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v131 = v47;
            _os_log_fault_impl(&dword_228986000, v62, OS_LOG_TYPE_FAULT, "SyncIdentity from received codable is nil %{public}@", buf, 0xCu);
          }
        }

LABEL_56:
        v37 = v114;
      }

      ++v38;
    }

    while (v36 != v38);
    v36 = [v34 countByEnumeratingWithState:&v126 objects:v132 count:16];
    v64 = 1;
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_72:

  v66 = v110;
  v24 = v101;
LABEL_79:

  return v64;
}

+ (BOOL)_shouldSkipAuthorizationInsertionForBloodPressureMismatch:(id)mismatch sourceEntity:(id)entity
{
  v34 = *MEMORY[0x277D85DE8];
  mismatchCopy = mismatch;
  entityCopy = entity;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [mismatchCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(mismatchCopy);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        _dataTypeCode = [v13 _dataTypeCode];
        if (_dataTypeCode == 16)
        {
          v15 = v10;
          v10 = v13;
        }

        else
        {
          if (_dataTypeCode != 17)
          {
            continue;
          }

          v15 = v9;
          v9 = v13;
        }

        v16 = v13;
      }

      v8 = [mismatchCopy countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = 0;
  v10 = 0;
LABEL_15:
  if (v10 | v9 && (v17 = [v10 _authorizationStatus], v18 = objc_msgSend(v9, "_authorizationStatus"), v17 != v18))
  {
    v20 = v18;
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v28 = v17;
      v29 = 2048;
      v30 = v20;
      v31 = 2112;
      v32 = entityCopy;
      _os_log_impl(&dword_228986000, v21, OS_LOG_TYPE_DEFAULT, "Skipping authorization insertion: systolic (%ld) and diastolic (%ld) authorization statuses don't match for source %@", buf, 0x20u);
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (uint64_t)_insertAuthorizationWithSourceIdentifier:(uint64_t)identifier dataTypeCode:(uint64_t)code authorizationStatus:(uint64_t)status authorizationRequest:(uint64_t)request authorizationMode:(void *)mode modificationDate:(void *)date currentDate:(uint64_t)currentDate syncProvenance:(uint64_t)self0 syncIdentity:(uint64_t)self1 objectAnchor:(void *)self2 modificationEpoch:(char)self3 options:(void *)self4 profile:(void *)self5 database:(uint64_t)self6 error:
{
  modeCopy = mode;
  obj = date;
  dateCopy = date;
  anchorCopy = anchor;
  optionsCopy = options;
  profileCopy = profile;
  v23 = objc_opt_self();
  v24 = v23;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__208;
  v72 = __Block_byref_object_dispose__208;
  v73 = 0;
  requestCopy = request;
  if (request == 1)
  {
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke;
    v67[3] = &__block_descriptor_40_e15___NSString_8__0l;
    v67[4] = v23;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_2;
    v66[3] = &__block_descriptor_48_e23_v16__0__sqlite3_stmt__8l;
    v66[4] = a2;
    v66[5] = identifier;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_3;
    v65[3] = &unk_278615C30;
    v65[4] = &v74;
    v65[5] = &v68;
    if (![profileCopy executeCachedStatementForKey:&_insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error__lookupKey error:database SQLGenerator:v67 bindingHandler:v66 enumerationHandler:v65])
    {
      goto LABEL_19;
    }
  }

  v25 = anchorCopy;
  if (!v25)
  {
    v41 = optionsCopy;
    v43 = profileCopy;
    v26 = objc_opt_self();
    v42 = [(HDSQLiteEntity *)[HDSourceEntity alloc] initWithPersistentID:a2];
    v44 = [(HDSourceEntity *)v42 sourceBundleIdentifierInDatabase:v43 error:database];
    if (v44)
    {
      sourceManager = [v41 sourceManager];
      v40 = [sourceManager allSourcesForBundleIdentifier:v44 error:database];

      v28 = v40;
      if (v40)
      {
        allObjects = [v40 allObjects];
        v30 = [allObjects hk_map:&__block_literal_global_417_2];
        v39 = [v30 componentsJoinedByString:{@", "}];

        v31 = MEMORY[0x277CCACA8];
        disambiguatedDatabaseTable = [v26 disambiguatedDatabaseTable];
        v33 = [v31 stringWithFormat:@"SELECT COALESCE(MAX(%@ + 1), 0) FROM %@ WHERE %@ in (%@) AND %@ = ?", @"modification_epoch", disambiguatedDatabaseTable, @"source_id", v39, @"object_type"];

        v82 = 0;
        v83 = &v82;
        v84 = 0x3032000000;
        v85 = __Block_byref_object_copy__208;
        v86 = __Block_byref_object_dispose__208;
        v87 = 0;
        v79[0] = MEMORY[0x277D85DD0];
        v79[1] = 3221225472;
        v79[2] = __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_2;
        v79[3] = &unk_278613B58;
        v80 = v40;
        identifierCopy = identifier;
        v78[0] = MEMORY[0x277D85DD0];
        v78[1] = 3221225472;
        v78[2] = __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_3;
        v78[3] = &unk_278614620;
        v78[4] = &v82;
        v34 = [v43 executeSQL:v33 error:database bindingHandler:v79 enumerationHandler:v78] ? v83[5] : 0;
        v28 = v40;
        v25 = v34;

        _Block_object_dispose(&v82, 8);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    if (!v25)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:database code:3 format:@"finalModificationEpoch cannot be nil"];
LABEL_19:
      v37 = 0;
      goto LABEL_20;
    }
  }

  v35 = requestCopy;
  if (requestCopy == 1 && (epoch & 1) != 0)
  {
    v75[3] = identity;
    objc_storeStrong(v69 + 5, obj);
    v35 = 1;
  }

  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_4;
  v64[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v64[4] = v24;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_5;
  v51[3] = &unk_27862FE30;
  v56 = a2;
  identifierCopy2 = identifier;
  codeCopy = code;
  statusCopy = status;
  v60 = v35;
  provenanceCopy = provenance;
  identityCopy = identity;
  v52 = modeCopy;
  v54 = &v74;
  currentDateCopy = currentDate;
  v55 = &v68;
  v36 = v25;
  v53 = v36;
  v37 = [profileCopy executeCachedStatementForKey:&_insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error__insertKey error:database SQLGenerator:v64 bindingHandler:v51 enumerationHandler:0];

LABEL_20:
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
  return v37;
}

id __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) disambiguatedDatabaseTable];
  v3 = [v1 stringWithFormat:@"SELECT %@, %@ FROM %@ WHERE %@ = ? AND %@ = ?", @"object_limit_anchor", @"object_limit_modified", v2, @"source_id", @"object_type", 0];

  return v3;
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = HDSQLiteColumnAsInt64();
  v4 = MEMORY[0x22AAC6C40](a2, 1);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

id __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_4(uint64_t a1)
{
  v5[12] = *MEMORY[0x277D85DE8];
  v5[0] = @"source_id";
  v5[1] = @"object_type";
  v5[2] = @"status";
  v5[3] = @"request";
  v5[4] = @"mode";
  v5[5] = @"date_modified";
  v5[6] = @"provenance";
  v5[7] = @"sync_identity";
  v5[8] = @"deleted_object_anchor";
  v5[9] = @"object_limit_anchor";
  v5[10] = @"object_limit_modified";
  v5[11] = @"modification_epoch";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:12];
  v3 = [*(a1 + 32) insertSQLForProperties:v2 shouldReplace:1];

  return v3;
}

uint64_t __257__HDAuthorizationEntity__insertAuthorizationWithSourceIdentifier_dataTypeCode_authorizationStatus_authorizationRequest_authorizationMode_modificationDate_currentDate_syncProvenance_syncIdentity_objectAnchor_modificationEpoch_options_profile_database_error___block_invoke_5(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 64));
  sqlite3_bind_int64(a2, 2, *(a1 + 72));
  sqlite3_bind_int64(a2, 3, *(a1 + 80));
  sqlite3_bind_int64(a2, 4, *(a1 + 88));
  sqlite3_bind_int64(a2, 5, *(a1 + 96));
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 6, v4);
  sqlite3_bind_int64(a2, 7, *(a1 + 104));
  sqlite3_bind_int64(a2, 8, *(a1 + 112));
  sqlite3_bind_int64(a2, 9, *(a1 + 120));
  sqlite3_bind_int64(a2, 10, *(*(*(a1 + 48) + 8) + 24));
  HDSQLiteBindFoundationValueToStatement();
  v5 = [*(a1 + 40) longLongValue];

  return sqlite3_bind_int64(a2, 12, v5);
}

uint64_t __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        sqlite3_bind_int64(a2, v10++, [*(*(&v12 + 1) + 8 * v9++) persistentID]);
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  return sqlite3_bind_int64(a2, v8, *(a1 + 40));
}

uint64_t __95__HDAuthorizationEntity__nextModificationEpochForSourceIdentifier_type_profile_database_error___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x22AAC6C80](a2, 0);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

uint64_t __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = [a2 databaseForEntityClass:*(a1 + 48)];
  v6 = [MEMORY[0x277CBEAA8] date];
  v24[0] = @"source_id";
  v24[1] = @"object_type";
  v24[2] = @"request";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v8 = *(a1 + 48);
  v23 = 0;
  v9 = [v8 maxPersistentIDWithPredicate:0 database:v5 error:&v23];
  v10 = v23;
  v11 = v10;
  if (v9)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    v9 = &unk_283CB42A8;
LABEL_2:
    v12 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10A40] lessThanOrEqualToValue:v9];
    v13 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v12 otherPredicate:*(a1 + 32)];
    v14 = [*(a1 + 48) queryWithDatabase:v5 predicate:v13];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke_2;
    v18[3] = &unk_27862FE58;
    v22 = *(a1 + 48);
    v19 = v6;
    v20 = *(a1 + 40);
    v21 = v5;
    v15 = [v14 enumeratePersistentIDsAndProperties:v7 error:a3 enumerationHandler:v18];

    goto LABEL_3;
  }

  if (a3)
  {
    v17 = v10;
    v15 = 0;
    *a3 = v11;
  }

  else
  {
    _HKLogDroppedError();
    v15 = 0;
  }

LABEL_3:

  return v15;
}

uint64_t __80__HDAuthorizationEntity__resetAuthorizationStatusesWithPredicate_profile_error___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HDSQLiteColumnAsInt64();
  v8 = HDSQLiteColumnAsInt64();
  v9 = HDSQLiteColumnAsInt64();
  return +[HDAuthorizationEntity _insertAuthorizationWithSourceIdentifier:dataTypeCode:authorizationStatus:authorizationRequest:authorizationMode:modificationDate:currentDate:syncProvenance:syncIdentity:objectAnchor:modificationEpoch:options:profile:database:error:](*(a1 + 56), v7, v8, 100, v9, 0, *(a1 + 32), *(a1 + 32), 0, [*(a1 + 40) currentSyncIdentityPersistentID], 0, 0, 0, *(a1 + 40), *(a1 + 48), a5);
}

+ (id)_predicateForSourceEntities:(uint64_t)entities
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 hk_map:&__block_literal_global_434_0];

  v4 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"source_id" values:v3];

  return v4;
}

uint64_t __53__HDAuthorizationEntity__predicateForSourceEntities___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 persistentID];

  return [v2 numberWithLongLong:v3];
}

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"source_id";
  v2 = +[(HDHealthEntity *)HDSourceEntity];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)uniquedColumns
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"source_id";
  v4[1] = @"object_type";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end