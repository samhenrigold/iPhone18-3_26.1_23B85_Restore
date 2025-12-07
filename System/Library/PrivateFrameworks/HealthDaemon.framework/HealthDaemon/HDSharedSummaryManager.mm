@interface HDSharedSummaryManager
- (BOOL)addMetadata:(id)metadata transactionEntity:(id)entity error:(id *)error;
- (BOOL)addOrReuseReceivedSharedSummaries:(id)summaries transactionEntity:(id)entity error:(id *)error;
- (BOOL)addSharedSummaries:(id)summaries transactionEntity:(id)entity error:(id *)error;
- (BOOL)deleteAllTransactionsWithError:(id *)error;
- (BOOL)deleteTransactions:(id)transactions error:(id *)error;
- (BOOL)discardTransactionEntity:(id)entity error:(id *)error;
- (BOOL)enumerateCommittedTransactionsWithError:(id *)error handler:(id)handler;
- (BOOL)enumerateNonCommittedTransactionsWithError:(id *)error handler:(id)handler;
- (BOOL)enumerateSummariesInTransaction:(id)transaction package:(id)package names:(id)names includedObjectTypes:(id)types error:(id *)error handler:(id)handler;
- (BOOL)enumerateSummariesInTransactionEntity:(id)entity package:(id)package names:(id)names error:(id *)error handler:(id)handler;
- (BOOL)prepareAndCommitTransactionWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata sharedSummaries:(id)summaries error:(id *)error;
- (BOOL)removeSummariesWithPackage:(id)package names:(id)names transactionEntity:(id)entity error:(id *)error;
- (BOOL)removeSummariesWithUUIDs:(id)ds transactionEntity:(id)entity error:(id *)error;
- (BOOL)reuseSharedSummariesWithPackage:(id)package names:(id)names transactionEntity:(id)entity error:(id *)error;
- (BOOL)reuseSharedSummariesWithUUIDs:(id)ds transactionEntity:(id)entity error:(id *)error;
- (HDSharedSummaryManager)initWithProfile:(id)profile;
- (id)_createTransactionWithUUID:(void *)d sourceDeviceIdentifier:(void *)identifier metadata:(void *)metadata error:;
- (id)_transactionForEntity:(void *)entity databaseTransaction:(void *)transaction error:;
- (id)commitTransactionEntity:(id)entity error:(id *)error;
- (id)createNewTransactionWithUUID:(id)d error:(id *)error;
- (id)deviceIdentifierWithError:(id *)error;
- (id)fetchAllTransactionsWithError:(id *)error;
- (id)mostRecentTransactionCreationDateWithError:(id *)error;
- (id)transactionWithUUID:(id)d requireUncommitted:(BOOL)uncommitted error:(id *)error;
- (uint64_t)performDatabaseTransactionForWriting:(void *)writing entity:(void *)entity error:(void *)error block:;
- (void)_notifyObserversOfTransactionChange;
@end

@implementation HDSharedSummaryManager

- (HDSharedSummaryManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDSharedSummaryManager;
  v5 = [(HDSharedSummaryManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = objc_alloc(MEMORY[0x277CCDA88]);
    v8 = HKLogSharing();
    v9 = [v7 initWithName:@"shared-summary-manager-observers" loggingCategory:v8];
    observers = v6->_observers;
    v6->_observers = v9;
  }

  return v6;
}

- (uint64_t)performDatabaseTransactionForWriting:(void *)writing entity:(void *)entity error:(void *)error block:
{
  errorCopy = error;
  if (!self)
  {
    database = 0;
    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained((self + 8));
  database = [WeakRetained database];

  if (database)
  {
    if ([writing protectionClass] == 2)
    {
      if (a2)
      {
        +[HDDatabaseTransactionContext contextForWritingProtectedData];
      }

      else
      {
        +[HDDatabaseTransactionContext contextForReadingProtectedData];
      }
    }

    else if (a2)
    {
      +[HDDatabaseTransactionContext contextForWriting];
    }

    else
    {
      +[HDDatabaseTransactionContext contextForReading];
    }
    v12 = ;
    v13 = v12;
    v14 = [v12 mutableCopy];
    database = 1;
    [v14 setCacheScope:1];
    v15 = objc_loadWeakRetained((self + 8));
    database2 = [v15 database];
    v23 = 0;
    v17 = [database2 performTransactionWithContext:v14 error:&v23 block:errorCopy inaccessibilityHandler:0];
    v18 = v23;

    if (v17)
    {
      goto LABEL_21;
    }

    if ([v18 hk_isDatabaseTransactionError])
    {
      v19 = objc_loadWeakRetained((self + 8));
      database3 = [v19 database];
      database = [database3 performTransactionWithContext:v13 error:entity block:errorCopy inaccessibilityHandler:0];

LABEL_20:
LABEL_21:

      goto LABEL_22;
    }

    v19 = v18;
    if (v19)
    {
      if (entity)
      {
        v21 = v19;
        database = 0;
        *entity = v19;
        goto LABEL_20;
      }

      _HKLogDroppedError();
    }

    database = 0;
    goto LABEL_20;
  }

  [MEMORY[0x277CCA9B8] hk_assignError:entity code:1500 description:@"Nil healthDatabase"];
LABEL_22:

  return database;
}

- (id)createNewTransactionWithUUID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v7 = [(HDSharedSummaryManager *)self deviceIdentifierWithError:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [(HDSharedSummaryManager *)self _createTransactionWithUUID:dCopy sourceDeviceIdentifier:self->_deviceIdentifier metadata:0 error:error];
  }

  else
  {
    v11 = v8;
    if (v11)
    {
      if (error)
      {
        v12 = v11;
        *error = v11;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)_createTransactionWithUUID:(void *)d sourceDeviceIdentifier:(void *)identifier metadata:(void *)metadata error:
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dCopy = d;
  identifierCopy = identifier;
  if (self)
  {
    _HKInitializeLogging();
    v12 = HKLogSharing();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v9;
      v13 = *&buf[4];
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Creating new transaction with UUID %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v23 = __Block_byref_object_copy__34;
    v24 = __Block_byref_object_dispose__34;
    v25 = 0;
    v14 = objc_opt_class();
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__HDSharedSummaryManager__createTransactionWithUUID_sourceDeviceIdentifier_metadata_error___block_invoke;
    v18[3] = &unk_278614288;
    v21 = buf;
    v19 = v9;
    v20 = dCopy;
    [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v14 entity:metadata error:v18 block:?];
    v15 = *(*&buf[8] + 40);
    if (identifierCopy && v15)
    {
      if (![self addMetadata:identifierCopy transactionEntity:v15 error:metadata])
      {
        v16 = 0;
        goto LABEL_10;
      }

      v15 = *(*&buf[8] + 40);
    }

    v16 = v15;
LABEL_10:

    _Block_object_dispose(buf, 8);
    goto LABEL_11;
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)transactionWithUUID:(id)d requireUncommitted:(BOOL)uncommitted error:(id *)error
{
  dCopy = d;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__34;
  v25 = __Block_byref_object_dispose__34;
  v26 = 0;
  v10 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__HDSharedSummaryManager_transactionWithUUID_requireUncommitted_error___block_invoke;
  v15[3] = &unk_278618458;
  v18 = &v21;
  v11 = dCopy;
  uncommittedCopy = uncommitted;
  v16 = v11;
  selfCopy = self;
  v19 = a2;
  if ([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v15 block:?])
  {
    v12 = v22[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);

  return v13;
}

uint64_t __71__HDSharedSummaryManager_transactionWithUUID_requireUncommitted_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v23 = 0;
  v7 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v6 databaseTransaction:v5 error:&v23];
  v8 = v23;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    if (*(a1 + 64) == 1)
    {
      v22 = v8;
      v12 = [v11 committedInDatabaseTransaction:v5 error:&v22];
      v13 = v22;

      if (v12)
      {
        v14 = MEMORY[0x277CCA9B8];
        v15 = objc_opt_class();
        v16 = *(a1 + 56);
        v17 = [*(a1 + 32) UUIDString];
        v8 = [v14 hk_error:126 class:v15 selector:v16 format:{@"Transaction with UUID %@ already committed", v17}];
      }

      else
      {
        v8 = v13;
      }
    }

    v18 = v8;
    if (v18)
    {
      if (a3)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

LABEL_12:
    v19 = 1;
    goto LABEL_13;
  }

  v18 = v8;
  if (!v18)
  {
    goto LABEL_12;
  }

  if (a3)
  {
LABEL_11:
    v20 = v18;
    v19 = 0;
    *a3 = v18;
    goto LABEL_13;
  }

LABEL_7:
  _HKLogDroppedError();
  v19 = 0;
LABEL_13:

  return v19;
}

- (BOOL)addSharedSummaries:(id)summaries transactionEntity:(id)entity error:(id *)error
{
  summariesCopy = summaries;
  entityCopy = entity;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__HDSharedSummaryManager_addSharedSummaries_transactionEntity_error___block_invoke;
  v14[3] = &unk_278615D40;
  v15 = summariesCopy;
  selfCopy = self;
  v17 = entityCopy;
  v11 = entityCopy;
  v12 = summariesCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v14 block:?];

  return error;
}

uint64_t __69__HDSharedSummaryManager_addSharedSummaries_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  LODWORD(v4) = a1;
  v71[1] = *MEMORY[0x277D85DE8];
  v56 = a2;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = *(a1 + 32);
  v54 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v54)
  {
    v53 = *v60;
    v50 = a3;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v60 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v5;
        v6 = *(*(&v59 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = v6;
        v10 = v8;
        v11 = v56;
        if (v7)
        {
          v12 = [v9 UUID];
          v13 = [v9 package];
          v14 = [v9 name];
          v15 = [v9 version];
          v16 = [v9 compatibilityVersion];
          v58 = v10;
          v17 = [v10 persistentID];
          v18 = [v9 summaryData];
          v68 = 0;
          v19 = [HDSharedSummaryEntity insertOrReplaceWithUUID:v12 package:v13 name:v14 version:v15 compatibilityVersion:v16 transactionID:v17 summaryData:v18 databaseTransaction:v11 error:&v68];
          v20 = v68;

          if (v19)
          {
            v21 = [v19 persistentID];
            v22 = [v9 authorizationIdentifiers];
            v67 = v20;
            v23 = [HDSharedSummaryAuthorizationIdentifierEntity insertWithSummaryID:v21 authorizationIdentifiers:v22 databaseTransaction:v11 error:&v67];
            v24 = v67;

            if (v23)
            {
              v25 = [v19 persistentID];
              v26 = [v9 objectTypes];
              v66 = v24;
              v27 = [HDSharedSummaryObjectTypeEntity insertWithSummaryID:v25 objectTypes:v26 databaseTransaction:v11 error:&v66];
              v28 = v66;

              v10 = v58;
              if (v27)
              {
                v51 = v27;
                v29 = [v58 persistentID];
                [v9 package];
                v31 = v30 = v11;
                v32 = [v9 name];
                v71[0] = v32;
                v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
                v65 = v28;
                v63[0] = MEMORY[0x277D85DD0];
                v63[1] = 3221225472;
                v63[2] = __88__HDSharedSummaryManager__addSharedSummary_transactionEntity_databaseTransaction_error___block_invoke;
                v63[3] = &unk_278618688;
                v64 = v30;
                LOBYTE(v29) = [HDSharedSummaryEntity enumerateEntitiesWithReuseTransactionID:v29 package:v31 names:v33 databaseTransaction:v64 error:&v65 enumerationHandler:v63];
                v7 = v65;

                if (v29)
                {
                  v4 = 0;
                  v10 = v58;
                  v27 = v51;
                  v11 = v30;
                  v34 = 1;
                }

                else
                {
                  v41 = v7;
                  v4 = v41;
                  v34 = v41 == 0;
                  if (v41)
                  {
                    v42 = v41;
                  }

                  v10 = v58;
                  v27 = v51;
                  v11 = v30;
                }

                v69 = v34;
              }

              else
              {
                v39 = v28;
                v4 = v39;
                if (v39)
                {
                  v40 = v39;
                }

                v69 = v4 == 0;
                v7 = v4;
              }
            }

            else
            {
              v37 = v24;
              v4 = v37;
              v10 = v58;
              if (v37)
              {
                v38 = v37;
              }

              v69 = v4 == 0;
              v7 = v4;
            }
          }

          else
          {
            v35 = v20;
            v4 = v35;
            if (v35)
            {
              v36 = v35;
            }

            v69 = v4 == 0;
            v7 = v4;
            v10 = v58;
          }

          LOBYTE(v7) = v69;
        }

        else
        {
          v4 = 0;
        }

        v43 = v4;
        if ((v7 & 1) == 0)
        {
          v46 = v43;
          v47 = v46;
          LODWORD(v4) = v46 == 0;
          if (v46)
          {
            if (v50)
            {
              v48 = v46;
              *v50 = v47;
            }

            else
            {
              _HKLogDroppedError();
            }
          }

          v45 = 0;
          goto LABEL_39;
        }

        v5 = v57 + 1;
      }

      while (v54 != v57 + 1);
      v44 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      v54 = v44;
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v45 = 1;
LABEL_39:

  return (v4 | v45) & 1;
}

- (BOOL)addMetadata:(id)metadata transactionEntity:(id)entity error:(id *)error
{
  metadataCopy = metadata;
  entityCopy = entity;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__HDSharedSummaryManager_addMetadata_transactionEntity_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = entityCopy;
  v16 = metadataCopy;
  v11 = metadataCopy;
  v12 = entityCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v14 block:?];

  return error;
}

BOOL __62__HDSharedSummaryManager_addMetadata_transactionEntity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = +[HDSharedSummaryTransactionMetadataEntity insertWithTransactionID:metadata:databaseTransaction:error:](HDSharedSummaryTransactionMetadataEntity, "insertWithTransactionID:metadata:databaseTransaction:error:", [v5 persistentID], *(a1 + 40), v6, a3);

  return v7 != 0;
}

- (BOOL)reuseSharedSummariesWithUUIDs:(id)ds transactionEntity:(id)entity error:(id *)error
{
  dsCopy = ds;
  entityCopy = entity;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HDSharedSummaryManager_reuseSharedSummariesWithUUIDs_transactionEntity_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = dsCopy;
  v16 = entityCopy;
  v11 = entityCopy;
  v12 = dsCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v14 block:?];

  return error;
}

uint64_t __80__HDSharedSummaryManager_reuseSharedSummariesWithUUIDs_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v8 = 0;
    v15 = 1;
    goto LABEL_20;
  }

  v7 = v6;
  v19 = a3;
  v8 = 0;
  v9 = *v24;
  while (2)
  {
    a3 = 0;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v23 + 1) + 8 * a3);
      v22 = v8;
      v11 = [HDSharedSummaryEntity entityWithUUID:v10 databaseTransaction:v5 error:&v22, v19];
      v12 = v22;

      if (!v11)
      {
        v16 = v12;
LABEL_14:
        v8 = v16;
        if (v16)
        {
          if (v19)
          {
            v17 = v16;
            LODWORD(a3) = 0;
            *v19 = v8;
          }

          else
          {
            _HKLogDroppedError();
            LODWORD(a3) = 0;
          }
        }

        else
        {
          LODWORD(a3) = 1;
        }

        v15 = 0;
        goto LABEL_20;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "persistentID")}];
      v21 = v12;
      v14 = [v11 setReuseTransactionID:v13 databaseTransaction:v5 error:&v21];
      v8 = v21;

      if ((v14 & 1) == 0)
      {
        v16 = v8;
        goto LABEL_14;
      }

      a3 = (a3 + 1);
    }

    while (v7 != a3);
    v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    v15 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_20:

  return (v15 | a3) & 1;
}

- (BOOL)reuseSharedSummariesWithPackage:(id)package names:(id)names transactionEntity:(id)entity error:(id *)error
{
  packageCopy = package;
  namesCopy = names;
  entityCopy = entity;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke;
  v18[3] = &unk_278615D40;
  v19 = packageCopy;
  v20 = namesCopy;
  v21 = entityCopy;
  v14 = entityCopy;
  v15 = namesCopy;
  v16 = packageCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v13 entity:error error:v18 block:?];

  return error;
}

BOOL __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_2;
  v20 = &unk_2786184A8;
  v21 = a1[4];
  v22 = a1[5];
  v6 = v5;
  v23 = v6;
  v25 = &v27;
  v24 = a1[6];
  v7 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v6 includeNonCommitted:0 error:&v26 enumerationHandler:&v17];
  v8 = v26;
  if (v7)
  {
    v9 = v28[3];
    v10 = a1[5];
    if (v9)
    {
      if (v9 >= [a1[5] count])
      {
        goto LABEL_10;
      }

      v11 = [MEMORY[0x277CCA9B8] hk_error:118 format:{@"Some summaries not found in package %@ with names %@", a1[4], a1[5], v17, v18, v19, v20, v21, v22, v23}];
    }

    else
    {
      if (v10)
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No summaries for reuse were found in package %@ with names %@", a1[4], v10, v17, v18, v19, v20, v21, v22, v23}];
      }

      else
      {
        [MEMORY[0x277CCA9B8] hk_error:118 format:{@"No summaries for reuse were found in package %@", a1[4]}];
      }
      v11 = ;
    }

    v12 = v11;

    v8 = v12;
  }

LABEL_10:
  v13 = v8;
  v14 = v13;
  if (v13)
  {
    if (a3)
    {
      v15 = v13;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v27, 8);
  return v14 == 0;
}

BOOL __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 persistentID];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_3;
  v13[3] = &unk_278618480;
  v14 = v8;
  v12 = *(a1 + 56);
  v9 = v12;
  v15 = v12;
  v10 = [HDSharedSummaryEntity enumerateEntitiesWithTransactionID:v5 package:v6 names:v7 databaseTransaction:v14 error:a3 enumerationHandler:v13];

  return v10;
}

uint64_t __88__HDSharedSummaryManager_reuseSharedSummariesWithPackage_names_transactionEntity_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v18 = 0;
  v7 = [v5 nameInDatabaseTransaction:v6 error:&v18];
  v8 = v18;
  v9 = v8;
  if (!v7)
  {
    v13 = v8;
    if (v13)
    {
      if (!a3)
      {
LABEL_9:
        _HKLogDroppedError();
        v14 = 0;
        goto LABEL_11;
      }

LABEL_6:
      v15 = v13;
      v14 = 0;
      *a3 = v13;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "persistentID")}];
  v11 = *(a1 + 32);
  v17 = v9;
  v12 = [v5 setReuseTransactionID:v10 databaseTransaction:v11 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v13 = v13;
    if (v13)
    {
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (BOOL)removeSummariesWithUUIDs:(id)ds transactionEntity:(id)entity error:(id *)error
{
  dsCopy = ds;
  entityCopy = entity;
  v11 = objc_opt_class();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HDSharedSummaryManager_removeSummariesWithUUIDs_transactionEntity_error___block_invoke;
  v15[3] = &unk_278613550;
  v16 = dsCopy;
  v17 = entityCopy;
  selfCopy = self;
  v19 = a2;
  v12 = entityCopy;
  v13 = dsCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v11 entity:error error:v15 block:?];

  return error;
}

uint64_t __75__HDSharedSummaryManager_removeSummariesWithUUIDs_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = [v5 databaseForEntityClass:objc_opt_class()];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v35 = a1;
  obj = *(a1 + 32);
  v34 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v34)
  {
    v6 = 0;
    v18 = 1;
    goto LABEL_43;
  }

  v30 = a3;
  v6 = 0;
  v7 = *v42;
  v33 = v5;
  while (2)
  {
    for (i = 0; i != v34; ++i)
    {
      if (*v42 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v41 + 1) + 8 * i);
      v40 = v6;
      v10 = [HDSharedSummaryEntity entityWithUUID:v9 databaseTransaction:v5 error:&v40];
      v11 = v40;

      if (!v10)
      {
        v19 = v11;
        v10 = v19;
        LODWORD(a3) = v19 == 0;
        if (v19)
        {
          if (v30)
          {
            v20 = v19;
            *v30 = v10;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v6 = v10;
        goto LABEL_42;
      }

      v39 = v11;
      v12 = [v10 transactionIDInDatabaseTransaction:v5 error:&v39];
      a3 = v39;

      if (!v12)
      {
        v21 = a3;
        goto LABEL_25;
      }

      v13 = [*(v35 + 40) persistentID];
      if (v13 == [v12 unsignedLongLongValue])
      {
        v38 = a3;
        v14 = [v10 deleteFromDatabase:v31 error:&v38];
        v6 = v38;

        if ((v14 & 1) == 0)
        {
          v21 = v6;
LABEL_25:
          v15 = v21;
          if (v21)
          {
            if (v30)
            {
              v22 = v21;
              LODWORD(a3) = 0;
              *v30 = v15;
            }

            else
            {
              _HKLogDroppedError();
              LODWORD(a3) = 0;
            }

            v6 = v15;
            goto LABEL_39;
          }

          v6 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        v37 = a3;
        v15 = [v10 reuseTransactionIDInDatabaseTransaction:v5 error:&v37];
        v16 = v37;

        if (!v15 || (v17 = [*(v35 + 40) persistentID], v17 != objc_msgSend(v15, "unsignedLongLongValue")))
        {
          if (v16)
          {
            v6 = v16;
LABEL_33:
            if (v30)
            {
              v28 = v6;
              LODWORD(a3) = 0;
              *v30 = v6;
            }

            else
            {
              _HKLogDroppedError();
              LODWORD(a3) = 0;
            }

LABEL_36:

LABEL_39:
            v5 = v33;
LABEL_42:

            v18 = 0;
            goto LABEL_43;
          }

          v23 = MEMORY[0x277CCA9B8];
          v24 = objc_opt_class();
          v25 = *(v35 + 56);
          v26 = [v9 UUIDString];
          v27 = [v23 hk_error:126 class:v24 selector:v25 format:{@"Summary %@ not in transaction", v26}];

          v6 = v27;
          if (v6)
          {
            goto LABEL_33;
          }

LABEL_29:
          LODWORD(a3) = 1;
          goto LABEL_39;
        }

        v36 = v16;
        LODWORD(a3) = [v10 setReuseTransactionID:0 databaseTransaction:v33 error:&v36];
        v6 = v36;

        if ((a3 & 1) == 0)
        {
          v6 = v6;
          if (v6)
          {
            goto LABEL_33;
          }

          LODWORD(a3) = 1;
          goto LABEL_36;
        }

        v5 = v33;
      }
    }

    v18 = 1;
    v34 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v34)
    {
      continue;
    }

    break;
  }

LABEL_43:

  return (v18 | a3) & 1;
}

- (BOOL)removeSummariesWithPackage:(id)package names:(id)names transactionEntity:(id)entity error:(id *)error
{
  packageCopy = package;
  namesCopy = names;
  entityCopy = entity;
  v13 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke;
  v18[3] = &unk_278615D40;
  v19 = entityCopy;
  v20 = packageCopy;
  v21 = namesCopy;
  v14 = namesCopy;
  v15 = packageCopy;
  v16 = entityCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v13 entity:error error:v18 block:?];

  return error;
}

BOOL __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];
  v7 = [*(a1 + 32) persistentID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke_2;
  v32[3] = &unk_2786184D0;
  v34 = &v36;
  v35 = 0;
  v10 = v6;
  v33 = v10;
  LOBYTE(v7) = [HDSharedSummaryEntity enumerateEntitiesWithTransactionID:v7 package:v8 names:v9 databaseTransaction:v5 error:&v35 enumerationHandler:v32];
  v11 = v35;
  v12 = v11;
  if ((v7 & 1) == 0)
  {
    v19 = v11;
    v20 = v19;
    if (v19)
    {
      if (a3)
      {
        v21 = v19;
        v22 = 0;
        *a3 = v20;
      }

      else
      {
        _HKLogDroppedError();
        v22 = 0;
      }

      v23 = v20;
    }

    else
    {
      v23 = 0;
      v22 = 1;
    }

    goto LABEL_19;
  }

  v13 = [*(a1 + 32) persistentID];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__HDSharedSummaryManager_removeSummariesWithPackage_names_transactionEntity_error___block_invoke_3;
  v28[3] = &unk_2786184D0;
  v30 = &v36;
  v31 = v12;
  v29 = v5;
  LODWORD(v13) = [HDSharedSummaryEntity enumerateEntitiesWithReuseTransactionID:v13 package:v14 names:v15 databaseTransaction:v29 error:&v31 enumerationHandler:v28];
  v16 = v31;

  if (v13)
  {
    v17 = v37[3];
    if (!v17)
    {
      v18 = @"No summaries to remove were found with package %@ and names %@";
      goto LABEL_13;
    }

    if (v17 < [*(a1 + 48) count])
    {
      v18 = @"Some summaries to remove were not found with package %@ and names %@";
LABEL_13:
      v24 = [MEMORY[0x277CCA9B8] hk_error:118 format:{v18, *(a1 + 40), *(a1 + 48)}];

      v16 = v24;
    }
  }

  v25 = v16;
  v23 = v25;
  v22 = v25 == 0;
  if (v25)
  {
    if (a3)
    {
      v26 = v25;
      *a3 = v23;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = v29;
LABEL_19:

  _Block_object_dispose(&v36, 8);
  return v22;
}

- (id)commitTransactionEntity:(id)entity error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v8 = *(&buf + 4);
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Committing transaction", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__34;
  v38 = __Block_byref_object_dispose__34;
  v39 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v9 = objc_opt_class();
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke;
  v22 = &unk_2786184F8;
  v10 = entityCopy;
  v23 = v10;
  selfCopy = self;
  v25 = &v27;
  p_buf = &buf;
  if ([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v9 entity:error error:&v19 block:?])
  {
    _HKInitializeLogging();
    v11 = HKLogSharing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v28[3];
      *v31 = 138543618;
      v32 = v12;
      v33 = 2048;
      v34 = v13;
      v14 = v12;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Successfully committing transaction with %ld summaries", v31, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogSharing();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      if (error)
      {
        localizedDescription = [*error localizedDescription];
      }

      else
      {
        localizedDescription = @"<lost>";
      }

      *v31 = 138543618;
      v32 = v15;
      v33 = 2114;
      v34 = localizedDescription;
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Failed to commit transaction - %{public}@", v31, 0x16u);
      if (error)
      {
      }
    }
  }

  v17 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&buf, 8);

  return v17;
}

BOOL __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) persistentID];
  v56 = 0;
  v7 = [HDSharedSummaryEntity reuseSummariesForTransactionID:v6 databaseTransaction:v5 error:&v56];
  v8 = v56;
  v9 = v8;
  if (v7)
  {
    v10 = *(a1 + 32);
    v55 = v9;
    v11 = [v10 sourceDeviceIdentiferInDatabaseTransaction:v5 error:&v55];
    v12 = v55;

    if (v11)
    {
      v13 = *(a1 + 40);
      v54 = v12;
      v14 = v5;
      v15 = v11;
      if (v13)
      {
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __107__HDSharedSummaryManager__deleteCommittedTransactionsWithDatabaseTransaction_sourceDeviceIdentifier_error___block_invoke;
        v57[3] = &unk_278618638;
        v57[4] = v13;
        v16 = v14;
        v58 = v16;
        v59 = v15;
        v17 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v16 includeNonCommitted:0 error:&v54 enumerationHandler:v57];
      }

      else
      {
        v17 = 0;
      }

      v18 = v54;
      if (v17)
      {
        v19 = *(a1 + 32);
        v53 = v18;
        v20 = [v19 setCommitted:1 databaseTransaction:v14 error:&v53];
        v21 = v53;

        if (v20)
        {
          v22 = [*(a1 + 32) persistentID];
          v52 = v21;
          v23 = [HDSharedSummaryTransactionMetadataEntity metadataForTransactionID:v22 databaseTransaction:v14 error:&v52];
          v24 = v52;

          if (v23)
          {
            v25 = [*(a1 + 32) persistentID];
            WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
            v26 = [WeakRetained database];
            v51 = v24;
            v47 = [HDSharedSummaryEntity countOfObjectsForTransactionID:v25 healthDatabase:v26 error:&v51];
            v27 = v51;

            *(*(*(a1 + 48) + 8) + 24) = v47;
            if (v27)
            {
              if (a3)
              {
                v28 = v27;
                v29 = 0;
                *a3 = v27;
              }

              else
              {
                _HKLogDroppedError();
                v29 = 0;
              }
            }

            else
            {
              v35 = *(a1 + 32);
              v50 = 0;
              v36 = [v35 uuidInDatabaseTransaction:v14 error:&v50];
              v37 = v50;
              v27 = v37;
              if (v36)
              {
                v38 = [objc_alloc(MEMORY[0x277CCD940]) initWithUUID:v36 sourceDeviceIdentifier:v15 metadata:v23];
                v39 = *(*(a1 + 56) + 8);
                v40 = *(v39 + 40);
                *(v39 + 40) = v38;

                v41 = objc_loadWeakRetained((*(a1 + 40) + 8));
                v42 = [v41 profileType];

                if (v42 == 1)
                {
                  v43 = objc_loadWeakRetained((*(a1 + 40) + 8));
                  v44 = [v43 sharingAuthorizationManager];
                  [v44 deleteMarkedSharingAuthorizations];
                }

                v49[0] = MEMORY[0x277D85DD0];
                v49[1] = 3221225472;
                v49[2] = __56__HDSharedSummaryManager_commitTransactionEntity_error___block_invoke_2;
                v49[3] = &unk_278613968;
                v49[4] = *(a1 + 40);
                [v14 onCommit:v49 orRollback:{0, v47}];
                v29 = 1;
              }

              else
              {
                v45 = v37;
                v29 = v45 == 0;
                if (v45)
                {
                  if (a3)
                  {
                    v46 = v45;
                    *a3 = v45;
                  }

                  else
                  {
                    _HKLogDroppedError();
                  }
                }
              }
            }
          }

          else
          {
            v27 = v24;
            v29 = v27 == 0;
            if (v27)
            {
              if (a3)
              {
                v34 = v27;
                *a3 = v27;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            v23 = 0;
          }

          goto LABEL_26;
        }

        v31 = v21;
      }

      else
      {
        v31 = v18;
      }
    }

    else
    {
      v31 = v12;
    }

    v23 = v31;
    if (v31)
    {
      if (a3)
      {
        v32 = v31;
        v29 = 0;
        *a3 = v23;
      }

      else
      {
        _HKLogDroppedError();
        v29 = 0;
      }

      v27 = v23;
    }

    else
    {
      v27 = 0;
      v29 = 1;
    }

LABEL_26:

    goto LABEL_27;
  }

  v11 = v8;
  if (v11)
  {
    if (a3)
    {
      v30 = v11;
      v29 = 0;
      *a3 = v11;
    }

    else
    {
      _HKLogDroppedError();
      v29 = 0;
    }

    v27 = v11;
  }

  else
  {
    v27 = 0;
    v29 = 1;
  }

LABEL_27:

  return v29;
}

- (void)_notifyObserversOfTransactionChange
{
  if (result)
  {
    v1 = result[3];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __61__HDSharedSummaryManager__notifyObserversOfTransactionChange__block_invoke;
    v2[3] = &unk_278618660;
    v2[4] = result;
    return [v1 notifyObservers:v2];
  }

  return result;
}

- (BOOL)discardTransactionEntity:(id)entity error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_opt_class();
    v8 = v17;
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Discarding transaction", buf, 0xCu);
  }

  v9 = objc_opt_class();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__HDSharedSummaryManager_discardTransactionEntity_error___block_invoke;
  v13[3] = &unk_278613218;
  v14 = entityCopy;
  selfCopy = self;
  v10 = entityCopy;
  v11 = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v9 entity:error error:v13 block:?];

  return v11;
}

BOOL __57__HDSharedSummaryManager_discardTransactionEntity_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v13 = 0;
  v6 = [v5 deleteWithDatabaseTransaction:a2 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    [(HDSharedSummaryManager *)*(a1 + 40) _notifyObserversOfTransactionChange];
    v9 = 1;
  }

  else
  {
    v10 = v7;
    v9 = v10 == 0;
    if (v10)
    {
      if (a3)
      {
        v11 = v10;
        *a3 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v9;
}

- (id)fetchAllTransactionsWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HDSharedSummaryManager_fetchAllTransactionsWithError___block_invoke;
  v9[3] = &unk_278618520;
  v6 = v5;
  v10 = v6;
  if ([(HDSharedSummaryManager *)self enumerateCommittedTransactionsWithError:error handler:v9])
  {
    v7 = objc_msgSend_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)enumerateCommittedTransactionsWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke;
  v10[3] = &unk_278618368;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:error error:v10 block:?];

  return error;
}

BOOL __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke_2;
  v10[3] = &unk_278618548;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v5;
  v8 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v7 includeNonCommitted:0 error:a3 enumerationHandler:v10];

  return v8;
}

uint64_t __74__HDSharedSummaryManager_enumerateCommittedTransactionsWithError_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v4 = [(HDSharedSummaryManager *)a1[4] _transactionForEntity:a2 databaseTransaction:a1[5] error:a3];
  if (v4)
  {
    (*(a1[6] + 16))();
  }

  return 1;
}

- (id)_transactionForEntity:(void *)entity databaseTransaction:(void *)transaction error:
{
  v7 = a2;
  entityCopy = entity;
  if (self)
  {
    v23 = 0;
    v9 = [v7 uuidInDatabaseTransaction:entityCopy error:&v23];
    v10 = v23;
    v11 = v10;
    if (!v9)
    {
      v12 = v10;
      if (v12)
      {
        if (transaction)
        {
          v17 = v12;
          v16 = 0;
          *transaction = v12;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }

        v15 = v12;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      goto LABEL_25;
    }

    v22 = v10;
    v12 = [v7 sourceDeviceIdentiferInDatabaseTransaction:entityCopy error:&v22];
    v13 = v22;

    if (v12)
    {
      v21 = v13;
      v14 = +[HDSharedSummaryTransactionMetadataEntity metadataForTransactionID:databaseTransaction:error:](HDSharedSummaryTransactionMetadataEntity, "metadataForTransactionID:databaseTransaction:error:", [v7 persistentID], entityCopy, &v21);
      v15 = v21;

      if (v14)
      {
        v16 = [objc_alloc(MEMORY[0x277CCD940]) initWithUUID:v9 sourceDeviceIdentifier:v12 metadata:v14];
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v15 = v15;
      if (v15)
      {
        if (transaction)
        {
          v19 = v15;
          *transaction = v15;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v14 = 0;
    }

    else
    {
      v14 = v13;
      if (v14)
      {
        if (transaction)
        {
          v18 = v14;
          v16 = 0;
          *transaction = v14;
        }

        else
        {
          _HKLogDroppedError();
          v16 = 0;
        }

        v15 = v14;
        goto LABEL_24;
      }

      v15 = 0;
    }

    v16 = 0;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (BOOL)enumerateNonCommittedTransactionsWithError:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_opt_class();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke;
  v10[3] = &unk_278618368;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:error error:v10 block:?];

  return error;
}

BOOL __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke_2;
  v11[3] = &unk_278618548;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v8 = v5;
  v9 = [HDSharedSummaryTransactionEntity enumerateTransactionsWithDatabaseTransaction:v8 includeNonCommitted:1 error:a3 enumerationHandler:v11];

  return v9;
}

BOOL __77__HDSharedSummaryManager_enumerateNonCommittedTransactionsWithError_handler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a1[4];
  v24 = 0;
  v7 = [v5 committedInDatabaseTransaction:v6 error:&v24];
  v8 = v24;
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      v10 = v8;
      v11 = 0;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
      v11 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  if ((v7 & 1) == 0)
  {
    v13 = a1[4];
    v12 = a1[5];
    v23 = 0;
    v14 = [(HDSharedSummaryManager *)v12 _transactionForEntity:v5 databaseTransaction:v13 error:&v23];
    v15 = v23;
    v16 = v15;
    if (v14)
    {
      v17 = a1[4];
      v22 = v15;
      v18 = [v5 creationDateInDatabaseTransaction:v17 error:&v22];
      v9 = v22;

      if (v18)
      {
        [v14 _setCreationDate:v18];
        (*(a1[6] + 16))();

        v11 = 1;
      }

      else
      {
        v9 = v9;
        v11 = v9 == 0;
        if (v9)
        {
          if (a3)
          {
            v20 = v9;
            *a3 = v9;
          }

          else
          {
            _HKLogDroppedError();
          }
        }
      }
    }

    else
    {
      v9 = v15;
      v11 = v9 == 0;
      if (v9)
      {
        if (a3)
        {
          v19 = v9;
          *a3 = v9;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    goto LABEL_20;
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (BOOL)enumerateSummariesInTransaction:(id)transaction package:(id)package names:(id)names includedObjectTypes:(id)types error:(id *)error handler:(id)handler
{
  transactionCopy = transaction;
  packageCopy = package;
  namesCopy = names;
  typesCopy = types;
  handlerCopy = handler;
  v19 = objc_opt_class();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke;
  v26[3] = &unk_278618598;
  v27 = transactionCopy;
  v28 = packageCopy;
  v29 = namesCopy;
  v30 = typesCopy;
  v31 = handlerCopy;
  v20 = handlerCopy;
  v21 = typesCopy;
  v22 = namesCopy;
  v23 = packageCopy;
  v24 = transactionCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v19 entity:error error:v26 block:?];

  return error;
}

BOOL __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) UUID];
  v30 = 0;
  v7 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v6 databaseTransaction:v5 error:&v30];
  v8 = v30;

  if (v7)
  {
    v9 = [v7 persistentID];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) allObjects];
    v12 = *(a1 + 56);
    v29 = v8;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke_2;
    v26[3] = &unk_278618570;
    v27 = *(a1 + 32);
    v28 = *(a1 + 64);
    v13 = [HDSharedSummaryEntity enumerateSummariesWithTransactionID:v9 package:v10 names:v11 includedObjectTypes:v12 databaseTransaction:v5 error:&v29 enumerationHandler:v26];
    v14 = v29;

    if (v13)
    {
      v15 = 1;
    }

    else
    {
      v17 = v14;
      v18 = v17;
      v15 = v17 == 0;
      if (v17)
      {
        if (a3)
        {
          v19 = v17;
          *a3 = v18;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

    v16 = v27;
  }

  else
  {
    if (v8)
    {
      v16 = v8;
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = [*(a1 + 32) UUID];
      v22 = [v21 UUIDString];
      v23 = [v20 hk_error:118 format:{@"Transaction with UUID %@ not found", v22}];

      v16 = v23;
      if (!v16)
      {
        v14 = 0;
        v15 = 1;
        goto LABEL_18;
      }
    }

    if (a3)
    {
      v24 = v16;
      v15 = 0;
      *a3 = v16;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }

    v14 = v16;
  }

LABEL_18:
  return v15;
}

uint64_t __106__HDSharedSummaryManager_enumerateSummariesInTransaction_package_names_includedObjectTypes_error_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _setTransaction:v3];
  (*(*(a1 + 40) + 16))();

  return 1;
}

- (BOOL)enumerateSummariesInTransactionEntity:(id)entity package:(id)package names:(id)names error:(id *)error handler:(id)handler
{
  entityCopy = entity;
  packageCopy = package;
  namesCopy = names;
  handlerCopy = handler;
  v16 = objc_opt_class();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke;
  v22[3] = &unk_2786185E8;
  v23 = entityCopy;
  v24 = packageCopy;
  v25 = namesCopy;
  v26 = handlerCopy;
  v17 = handlerCopy;
  v18 = namesCopy;
  v19 = packageCopy;
  v20 = entityCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v16 entity:error error:v22 block:?];

  return error;
}

BOOL __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 persistentID];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __92__HDSharedSummaryManager_enumerateSummariesInTransactionEntity_package_names_error_handler___block_invoke_2;
  v12[3] = &unk_2786185C0;
  v13 = *(a1 + 56);
  v10 = [HDSharedSummaryEntity enumerateSummariesWithTransactionID:v7 package:v8 names:v9 includedObjectTypes:0 databaseTransaction:v6 error:a3 enumerationHandler:v12];

  return v10;
}

- (id)mostRecentTransactionCreationDateWithError:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__34;
  v13 = __Block_byref_object_dispose__34;
  v14 = 0;
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__HDSharedSummaryManager_mostRecentTransactionCreationDateWithError___block_invoke;
  v8[3] = &unk_278618610;
  v8[4] = &v9;
  if (([(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v5 entity:error error:v8 block:?]& 1) != 0)
  {
    v6 = v10[5];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __69__HDSharedSummaryManager_mostRecentTransactionCreationDateWithError___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = 0;
  v5 = [HDSharedSummaryTransactionEntity mostRecentTransactionCreationDateWithDatabaseTransaction:a2 error:&v13];
  v6 = v13;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  v10 = v9;
  if (!v9)
  {
    if (a3)
    {
      v11 = v6;
      *a3 = v6;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v10;
}

- (BOOL)prepareAndCommitTransactionWithUUID:(id)d sourceDeviceIdentifier:(id)identifier metadata:(id)metadata sharedSummaries:(id)summaries error:(id *)error
{
  summariesCopy = summaries;
  v26 = 0;
  v13 = [(HDSharedSummaryManager *)self createReceivedTransactionWithUUID:d sourceDeviceIdentifier:identifier metadata:metadata error:&v26];
  v14 = v26;
  v15 = v14;
  if (!v13)
  {
    v18 = v14;
    if (v18)
    {
      if (!error)
      {
LABEL_12:
        _HKLogDroppedError();
        v20 = 0;
        goto LABEL_13;
      }

LABEL_9:
      v22 = v18;
      v20 = 0;
      *error = v18;
LABEL_13:
      v19 = v18;
      goto LABEL_18;
    }

LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v25 = v14;
  v16 = [(HDSharedSummaryManager *)self addOrReuseReceivedSharedSummaries:summariesCopy transactionEntity:v13 error:&v25];
  v17 = v25;

  if (!v16)
  {
    v18 = v17;
    if (v18)
    {
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v24 = v17;
  v18 = [(HDSharedSummaryManager *)self commitTransactionEntity:v13 error:&v24];
  v19 = v24;

  if (v18)
  {
LABEL_15:
    v20 = 1;
    goto LABEL_18;
  }

  v19 = v19;
  v20 = v19 == 0;
  if (v19)
  {
    if (error)
    {
      v21 = v19;
      *error = v19;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = 0;
LABEL_18:

  return v20;
}

- (BOOL)addOrReuseReceivedSharedSummaries:(id)summaries transactionEntity:(id)entity error:(id *)error
{
  summariesCopy = summaries;
  entityCopy = entity;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__HDSharedSummaryManager_addOrReuseReceivedSharedSummaries_transactionEntity_error___block_invoke;
  v14[3] = &unk_278615D40;
  v15 = summariesCopy;
  selfCopy = self;
  v17 = entityCopy;
  v11 = entityCopy;
  v12 = summariesCopy;
  LOBYTE(error) = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v14 block:?];

  return error;
}

uint64_t __84__HDSharedSummaryManager_addOrReuseReceivedSharedSummaries_transactionEntity_error___block_invoke(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = a1;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v6)
  {
    v19 = 1;
    goto LABEL_39;
  }

  v7 = v6;
  v8 = *v37;
  v30 = v5;
  v31 = v4;
  while (2)
  {
    a1 = 0;
    do
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v36 + 1) + 8 * a1);
      v10 = [v9 UUID];
      v35 = 0;
      v11 = [HDSharedSummaryEntity entityWithUUID:v10 databaseTransaction:v4 error:&v35];
      v12 = v35;

      if (!v11)
      {
        if (objc_msgSend_hk_isObjectNotFoundError(v12))
        {
          v15 = v32[5];
          v40 = v9;
          v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
          v17 = v32[6];
          v34 = 0;
          LODWORD(v15) = [v15 addSharedSummaries:v16 transactionEntity:v17 error:&v34];
          v18 = v34;

          if (!v15)
          {
            v26 = v18;
            v22 = v26;
            if (v26)
            {
              if (a3)
              {
                v27 = v26;
                LODWORD(a1) = 0;
                *a3 = v22;
              }

              else
              {
                _HKLogDroppedError();
                LODWORD(a1) = 0;
              }

              v11 = v22;
            }

            else
            {
              v11 = 0;
              LODWORD(a1) = 1;
            }

            v5 = v30;
            v4 = v31;
            goto LABEL_37;
          }

          v4 = v31;
          v5 = v30;
          goto LABEL_13;
        }

        v24 = v12;
        if (!v12)
        {
          LODWORD(a1) = 1;
LABEL_38:

          v19 = 0;
          goto LABEL_39;
        }

LABEL_22:
        if (a3)
        {
          v25 = v12;
          LODWORD(a1) = 0;
          *a3 = v12;
        }

        else
        {
          _HKLogDroppedError();
          LODWORD(a1) = 0;
        }

        v22 = v12;
        goto LABEL_37;
      }

      if (v12)
      {
        v20 = v12;
        goto LABEL_22;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v32[6], "persistentID")}];
      v33 = 0;
      v14 = [v11 setReuseTransactionID:v13 databaseTransaction:v4 error:&v33];
      v12 = v33;

      if ((v14 & 1) == 0)
      {
        v21 = v12;
        v22 = v21;
        if (v21)
        {
          if (a3)
          {
            v23 = v21;
            LODWORD(a1) = 0;
            *a3 = v22;
          }

          else
          {
            _HKLogDroppedError();
            LODWORD(a1) = 0;
          }

          v12 = v22;
        }

        else
        {
          v12 = 0;
          LODWORD(a1) = 1;
        }

LABEL_37:

        goto LABEL_38;
      }

LABEL_13:

      a1 = (a1 + 1);
    }

    while (v7 != a1);
    v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v19 = 1;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_39:

  return (v19 | a1) & 1;
}

BOOL __91__HDSharedSummaryManager__createTransactionWithUUID_sourceDeviceIdentifier_metadata_error___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v15 = 0;
  v7 = [HDSharedSummaryTransactionEntity insertWithUUID:v5 sourceDevice:v6 databaseTransaction:a2 error:&v15];
  v8 = v15;
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (*(*(a1[6] + 8) + 40))
  {
    v11 = 1;
  }

  else
  {
    v12 = v8;
    v11 = v12 == 0;
    if (v12)
    {
      if (a3)
      {
        v13 = v12;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  return v11;
}

- (BOOL)deleteAllTransactionsWithError:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting all transactions", &v9, 0xCu);
  }

  v7 = objc_opt_class();
  return [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v7 entity:error error:&__block_literal_global_38 block:?];
}

uint64_t __57__HDSharedSummaryManager_deleteAllTransactionsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v14 = 0;
  v5 = [HDSharedSummaryTransactionEntity deleteAllEntriesWithDatabaseTransaction:v4 error:&v14];
  v6 = v14;
  v7 = v6;
  if (!v5)
  {
    v9 = v6;
    if (v9)
    {
      if (!a3)
      {
LABEL_9:
        _HKLogDroppedError();
        v10 = 0;
        goto LABEL_11;
      }

LABEL_6:
      v11 = v9;
      v10 = 0;
      *a3 = v9;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_11;
  }

  v13 = v6;
  v8 = [HDSharedSummaryEntity deleteAllSummariesWithDatabaseTransaction:v4 error:&v13];
  v9 = v13;

  if (!v8)
  {
    v9 = v9;
    if (v9)
    {
      if (!a3)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (BOOL)deleteTransactions:(id)transactions error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  _HKInitializeLogging();
  v7 = HKLogSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    *buf = 138543618;
    v18 = v8;
    v19 = 2048;
    v20 = [transactionsCopy count];
    _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[summary-sharing] %{public}@: Deleting %ld transactions", buf, 0x16u);
  }

  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke;
  v14[3] = &unk_278613218;
  v15 = transactionsCopy;
  selfCopy = self;
  v11 = transactionsCopy;
  v12 = [(HDSharedSummaryManager *)self performDatabaseTransactionForWriting:v10 entity:error error:v14 block:?];

  return v12;
}

uint64_t __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = a1;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) UUID];
        v19 = 0;
        v12 = [HDSharedSummaryTransactionEntity transactionEntityWithUUID:v11 databaseTransaction:v5 error:&v19];
        v13 = v19;

        if (v12)
        {
          if (![v12 deleteWithDatabaseTransaction:v5 error:a3])
          {
            goto LABEL_16;
          }
        }

        else if (v13)
        {
          if (a3)
          {
            v15 = v13;
            *a3 = v13;
          }

          else
          {
            _HKLogDroppedError();
          }

LABEL_16:

          v14 = 0;
          goto LABEL_17;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__HDSharedSummaryManager_deleteTransactions_error___block_invoke_2;
  v18[3] = &unk_278613968;
  v18[4] = *(v17 + 40);
  [v5 onCommit:v18 orRollback:0];
  v14 = 1;
LABEL_17:

  return v14;
}

- (id)deviceIdentifierWithError:(id *)error
{
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    v4 = deviceIdentifier;
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v20 = 0;
  v9 = [sourceManager localDeviceSourceWithError:&v20];
  v10 = v20;

  if (!v9)
  {
    v12 = v10;
    if (v12)
    {
      if (error)
      {
        v16 = v12;
        v4 = 0;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
        v4 = 0;
      }

      v13 = v12;
      goto LABEL_18;
    }

    v13 = 0;
    goto LABEL_17;
  }

  v11 = objc_loadWeakRetained(&self->_profile);
  v19 = v10;
  v12 = [v9 sourceWithProfile:v11 error:&v19];
  v13 = v19;

  if (!v12)
  {
    v13 = v13;
    if (v13)
    {
      if (error)
      {
        v17 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
LABEL_17:
    v4 = 0;
    goto LABEL_18;
  }

  bundleIdentifier = [v12 bundleIdentifier];
  v15 = self->_deviceIdentifier;
  self->_deviceIdentifier = bundleIdentifier;

  v4 = self->_deviceIdentifier;
LABEL_18:

LABEL_19:

  return v4;
}

uint64_t __107__HDSharedSummaryManager__deleteCommittedTransactionsWithDatabaseTransaction_sourceDeviceIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v7 = [WeakRetained profileType];

  if (v7 == 1)
  {
LABEL_4:
    v13 = [v5 deleteWithDatabaseTransaction:*(a1 + 40) error:a3];
    goto LABEL_11;
  }

  v8 = *(a1 + 40);
  v17 = 0;
  v9 = [v5 sourceDeviceIdentiferInDatabaseTransaction:v8 error:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = [*(a1 + 48) isEqualToString:v9];

    if (!v12)
    {
      v13 = 1;
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v14 = v10;
  v13 = v14 == 0;
  if (v14)
  {
    if (a3)
    {
      v15 = v14;
      *a3 = v14;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_11:
  return v13;
}

@end