@interface ASCompetitionStore
- (ASCompetitionStore)initWithDatabaseClient:(id)client;
- (BOOL)_removeCompetitionsWithFriendFromDatabase:(id)database type:(int64_t)type error:(id *)error;
- (BOOL)_saveCompetitionListToDatabase:(id)database owner:(int64_t)owner error:(id *)error;
- (BOOL)_saveCompetitionLists:(id)lists owner:(int64_t)owner;
- (BOOL)_saveCompetitionsToDatabase:(id)database friendUUID:(id)d type:(int64_t)type error:(id *)error;
- (BOOL)loadCachedCompetitions;
- (BOOL)saveRemoteCompetitionList:(id)list;
- (id)_cachedCompetitionListForFriendWithUUID:(id)d type:(int64_t)type owner:(int64_t)owner;
- (id)_queue_competitionListCacheForType:(int64_t)type owner:(int64_t)owner;
- (id)currentRemoteCompetitionForContact:(id)contact;
- (void)_queue_saveCompetitionListsToCache:(id)cache owner:(int64_t)owner;
- (void)deleteCachedCompetitions;
@end

@implementation ASCompetitionStore

- (ASCompetitionStore)initWithDatabaseClient:(id)client
{
  clientCopy = client;
  v17.receiver = self;
  v17.super_class = ASCompetitionStore;
  v6 = [(ASCompetitionStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databaseClient, client);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    currentCompetitionListCache = v7->_currentCompetitionListCache;
    v7->_currentCompetitionListCache = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    archivedCompetitionListCache = v7->_archivedCompetitionListCache;
    v7->_archivedCompetitionListCache = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    remoteCompetitionListCache = v7->_remoteCompetitionListCache;
    v7->_remoteCompetitionListCache = dictionary3;

    v14 = HKCreateSerialUtilityDispatchQueue();
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v14;
  }

  return v7;
}

- (BOOL)loadCachedCompetitions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__ASCompetitionStore_loadCachedCompetitions__block_invoke;
  v5[3] = &unk_278C4BC10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CompetitionStore loading cached competitions", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v69 = 0;
  v4 = [v3 allCodableDatabaseCompetitionsWithError:&v69];
  v5 = v69;
  v56 = v4;
  if (v4)
  {
    v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(*(a1 + 32) + 8);
    v68 = v5;
    v7 = [v6 allCodableDatabaseCompetitionListEntriesWithError:&v68];
    v50 = v68;

    v49 = v7;
    if (v7)
    {
      v51 = a1;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v7;
      v57 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
      if (v57)
      {
        v55 = *v65;
        do
        {
          v8 = 0;
          do
          {
            if (*v65 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v58 = v8;
            v9 = *(*(&v64 + 1) + 8 * v8);
            v10 = [v9 type];
            ASLoggingInitialize();
            v11 = *MEMORY[0x277CE8FE0];
            if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEBUG))
            {
              __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_1(buf, v11, v9, &v74);
            }

            v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v12 = v56;
            v13 = [v12 countByEnumeratingWithState:&v60 objects:v72 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v61;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v61 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v60 + 1) + 8 * i);
                  if ([v17 type] == v10)
                  {
                    v18 = [v17 friendUUID];
                    v19 = [v9 friendUUID];
                    v20 = [v18 isEqual:v19];

                    if (v20)
                    {
                      [v59 addObject:v17];
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v60 objects:v72 count:16];
              }

              while (v14);
            }

            v21 = [MEMORY[0x277CE90E0] competitionListFromCodableDatabaseCompetitionList:v9 codableCompetitions:v59 withType:v10];
            if (![v9 owner])
            {
              [v52 addObject:v21];
            }

            if ([v9 owner] == 1)
            {
              [v53 addObject:v21];
            }

            v8 = v58 + 1;
          }

          while (v58 + 1 != v57);
          v57 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
        }

        while (v57);
      }

      [*(v51 + 32) _queue_saveCompetitionListsToCache:v52 owner:0];
      [*(v51 + 32) _queue_saveCompetitionListsToCache:v53 owner:1];
      ASLoggingInitialize();
      v22 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(*(v51 + 32) + 24);
        v24 = v22;
        v25 = [v23 count];
        *v70 = 134217984;
        v71 = v25;
        _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached current competition lists", v70, 0xCu);
      }

      ASLoggingInitialize();
      v26 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(v51 + 32) + 32);
        v28 = v26;
        v29 = [v27 count];
        *v70 = 134217984;
        v71 = v29;
        _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached archived competition lists", v70, 0xCu);
      }

      ASLoggingInitialize();
      v30 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(*(v51 + 32) + 40);
        v32 = v30;
        v33 = [v31 count];
        *v70 = 134217984;
        v71 = v33;
        _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "Loaded %lu cached remote competitions", v70, 0xCu);
      }
    }

    else
    {
      ASLoggingInitialize();
      v42 = *MEMORY[0x277CE8FE0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
      {
        __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_2(v50, v42, v43, v44, v45, v46, v47, v48);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v5 = v50;
  }

  else
  {
    v34 = a1;
    ASLoggingInitialize();
    v35 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_3(v5, v35, v36, v37, v38, v39, v40, v41);
    }

    *(*(*(v34 + 40) + 8) + 24) = 0;
  }
}

- (void)deleteCachedCompetitions
{
  v14 = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__ASCompetitionStore_deleteCachedCompetitions__block_invoke;
  v11[3] = &unk_278C4CC38;
  v11[4] = self;
  v3 = MEMORY[0x23EF0EB00](v11, a2);
  databaseClient = self->_databaseClient;
  v10 = 0;
  v5 = [(ASDatabaseClient *)databaseClient performDatabaseCompetitionWriteTransactionBlock:v3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (!v5 || v6 != 0)
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FD8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Error deleting all cached competitions: %{public}@", buf, 0xCu);
    }
  }
}

uint64_t __46__ASCompetitionStore_deleteCachedCompetitions__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v16 = 0;
  v5 = [v4 removeAllCodableDatabaseCompetitionListsWithError:&v16];
  v6 = v16;
  v7 = *(*(a1 + 32) + 8);
  v15 = 0;
  v8 = [v7 removeAllCodableDatabaseCompetitionsWithError:&v15];
  v9 = v15;
  v10 = v9;
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;
  if (v12)
  {
    if (a2)
    {
      v13 = v12;
      *a2 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  return v5 & v8;
}

- (id)currentRemoteCompetitionForContact:(id)contact
{
  primaryRemoteRelationship = [contact primaryRemoteRelationship];
  uUID = [primaryRemoteRelationship UUID];
  v6 = [(ASCompetitionStore *)self _cachedCompetitionListForFriendWithUUID:uUID type:0 owner:1];

  currentCompetition = [v6 currentCompetition];

  return currentCompetition;
}

- (BOOL)saveRemoteCompetitionList:(id)list
{
  v9 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v4 = MEMORY[0x277CBEA60];
  listCopy2 = list;
  v6 = [v4 arrayWithObjects:&listCopy count:1];

  LOBYTE(self) = [(ASCompetitionStore *)self _saveCompetitionLists:v6 owner:1, listCopy, v9];
  return self;
}

- (BOOL)_saveCompetitionLists:(id)lists owner:(int64_t)owner
{
  listsCopy = lists;
  dispatch_assert_queue_not_V2(self->_serialQueue);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke;
  v27[3] = &unk_278C4CC60;
  v7 = listsCopy;
  selfCopy = self;
  ownerCopy = owner;
  v28 = v7;
  v8 = MEMORY[0x23EF0EB00](v27);
  databaseClient = self->_databaseClient;
  v26 = 0;
  v10 = [(ASDatabaseClient *)databaseClient performDatabaseCompetitionWriteTransactionBlock:v8 error:&v26];
  v11 = v26;
  v12 = v11;
  if (!v10 || v11)
  {
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
    {
      [(ASCompetitionStore *)v12 _saveCompetitionLists:v13 owner:v14, v15, v16, v17, v18, v19];
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke_303;
  block[3] = &unk_278C4B608;
  block[4] = self;
  v24 = v7;
  ownerCopy2 = owner;
  v21 = v7;
  dispatch_async(serialQueue, block);

  return v10;
}

uint64_t __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 32);
  v41 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v41)
  {
    v39 = *v48;
    LODWORD(v5) = 1;
    v6 = MEMORY[0x277CE8FE0];
    *&v4 = 138412290;
    v37 = v4;
    v40 = a2;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v5;
        v8 = *(*(&v47 + 1) + 8 * i);
        ASLoggingInitialize();
        v9 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(v3 + 48);
          *buf = 134218242;
          v52 = v10;
          v53 = 2112;
          v54 = v8;
          _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "CompetitionStore persisting competition list to database for owner: %lu, competitionList: %@", buf, 0x16u);
        }

        v11 = *(v3 + 40);
        v12 = *(v3 + 48);
        v46 = 0;
        v42 = [v11 _saveCompetitionListToDatabase:v8 owner:v12 error:{&v46, v37}];
        v13 = v46;
        ASLoggingInitialize();
        v14 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v8 type];
          v17 = [v8 friendUUID];
          *buf = 134218242;
          v52 = v16;
          v53 = 2112;
          v54 = v17;
          _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "CompetitionStore removing competitions of type %lu with friend %@", buf, 0x16u);
        }

        v18 = *(v3 + 40);
        v19 = [v8 friendUUID];
        v20 = [v8 type];
        v45 = 0;
        v21 = [v18 _removeCompetitionsWithFriendFromDatabase:v19 type:v20 error:&v45];
        v22 = v45;

        ASLoggingInitialize();
        v23 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          v25 = [v8 competitions];
          *buf = v37;
          v52 = v25;
          _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "CompetitionStore saving competitions [%@]", buf, 0xCu);
        }

        v26 = v3;
        v27 = *(v3 + 40);
        v28 = [v8 competitions];
        v29 = [v8 friendUUID];
        v30 = [v8 type];
        v44 = 0;
        v31 = [v27 _saveCompetitionsToDatabase:v28 friendUUID:v29 type:v30 error:&v44];
        v32 = v44;

        if (v22)
        {
          v33 = v22;
        }

        else
        {
          v33 = v32;
        }

        if (v13)
        {
          v33 = v13;
        }

        v34 = v33;
        if (v34)
        {
          if (v40)
          {
            v35 = v34;
            *v40 = v34;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        v5 = v43 & v42 & v21 & v31;

        v3 = v26;
        v6 = MEMORY[0x277CE8FE0];
      }

      v41 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v41);
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __50__ASCompetitionStore__saveCompetitionLists_owner___block_invoke_303(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) copy];
  [v2 _queue_saveCompetitionListsToCache:v3 owner:*(a1 + 48)];
}

- (BOOL)_saveCompetitionListToDatabase:(id)database owner:(int64_t)owner error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v9 = [databaseCopy codableDatabaseCompetitionListEntryForOwner:owner];
  v10 = [(ASDatabaseClient *)self->_databaseClient saveCodableDatabaseCompetitionListEntry:v9 error:error];
  if (!v10)
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *error;
      v14 = 138412546;
      v15 = databaseCopy;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Persisting competition list [%@] failed with error [%@]", &v14, 0x16u);
    }
  }

  return v10;
}

- (BOOL)_removeCompetitionsWithFriendFromDatabase:(id)database type:(int64_t)type error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v9 = [(ASDatabaseClient *)self->_databaseClient removeCodableDatabaseCompetitionsWithFriendUUID:databaseCopy type:type error:error];
  if (!v9)
  {
    ASLoggingInitialize();
    v10 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      v13 = 134218498;
      typeCopy = type;
      v15 = 2112;
      v16 = databaseCopy;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Removing competitions of type %lu for friend with UUID [%@] failed with error [%@]", &v13, 0x20u);
    }
  }

  return v9;
}

- (BOOL)_saveCompetitionsToDatabase:(id)database friendUUID:(id)d type:(int64_t)type error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  v11 = [MEMORY[0x277CE90D8] codableDatabaseCompetitionsFromCompetitions:databaseCopy withFriendWithUUID:d withType:type];
  v12 = [(ASDatabaseClient *)self->_databaseClient saveCodableDatabaseCompetitions:v11 error:error];
  if (!v12)
  {
    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FE0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *error;
      v16 = 138412546;
      v17 = databaseCopy;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "CompetitionStore: Persisting competitions to database [%@] failed with error [%@]", &v16, 0x16u);
    }
  }

  return v12;
}

- (void)_queue_saveCompetitionListsToCache:(id)cache owner:(int64_t)owner
{
  v27 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  dispatch_assert_queue_V2(self->_serialQueue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = cacheCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    v12 = MEMORY[0x277CE8FE0];
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        friendUUID = [v14 friendUUID];

        if (friendUUID)
        {
          v16 = -[ASCompetitionStore _queue_competitionListCacheForType:owner:](self, "_queue_competitionListCacheForType:owner:", [v14 type], owner);
          friendUUID2 = [v14 friendUUID];
          [v16 setObject:v14 forKeyedSubscript:friendUUID2];
        }

        else
        {
          ASLoggingInitialize();
          v18 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v14;
            _os_log_error_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_ERROR, "Unable to cache competition list with no friend UUID: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }
}

- (id)_cachedCompetitionListForFriendWithUUID:(id)d type:(int64_t)type owner:(int64_t)owner
{
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ASCompetitionStore__cachedCompetitionListForFriendWithUUID_type_owner___block_invoke;
  block[3] = &unk_278C4CC88;
  typeCopy = type;
  ownerCopy = owner;
  v14 = dCopy;
  v15 = &v18;
  block[4] = self;
  v10 = dCopy;
  dispatch_sync(serialQueue, block);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

void __73__ASCompetitionStore__cachedCompetitionListForFriendWithUUID_type_owner___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _queue_competitionListCacheForType:*(a1 + 56) owner:*(a1 + 64)];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_queue_competitionListCacheForType:(int64_t)type owner:(int64_t)owner
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (owner != 1)
  {
    if (owner)
    {
      goto LABEL_14;
    }

    if (type == 1)
    {
      archivedCompetitionListCache = self->_archivedCompetitionListCache;
    }

    else
    {
      if (type)
      {
        goto LABEL_14;
      }

      archivedCompetitionListCache = self->_currentCompetitionListCache;
    }

LABEL_10:
    dictionary = archivedCompetitionListCache;
    goto LABEL_14;
  }

  if (type != 1)
  {
    if (type)
    {
      goto LABEL_14;
    }

    archivedCompetitionListCache = self->_remoteCompetitionListCache;
    goto LABEL_10;
  }

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_ERROR))
  {
    [ASCompetitionStore _queue_competitionListCacheForType:v9 owner:?];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
LABEL_14:

  return dictionary;
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 friendUUID];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEBUG, "Filtering for competition list with friendUUID: %@", a1, 0xCu);
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Unable to load cached competition lists: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __44__ASCompetitionStore_loadCachedCompetitions__block_invoke_cold_3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Unable to load cached competitions: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_saveCompetitionLists:(uint64_t)a3 owner:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Error saving competition lists: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end