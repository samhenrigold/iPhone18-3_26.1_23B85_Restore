@interface ACDDatabaseMigrator
- (ACDDatabaseMigrator)init;
- (BOOL)runReturningError:(id *)error;
- (id)_compatibleModelForStoreAtURL:(id)l;
- (id)_fetchAllAuthorizationEntitiesForModelVersion:(int64_t)version;
- (id)_fetchAllDataclassEntitles;
- (id)_setUpContextForMigration;
- (id)initForDatabaseAtURL:(id)l persistentStoreCoordinator:(id)coordinator storeOptions:(id)options;
- (int64_t)_versionForModel:(id)model;
- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(int64_t)version;
- (void)_migrateNameAttributeOfDataclassEntities;
- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(int64_t)version;
- (void)_postProcessMigrationFromVersion:(int64_t)version migrationData:(id)data;
- (void)_setUpContextForMigration;
@end

@implementation ACDDatabaseMigrator

- (ACDDatabaseMigrator)init
{
  [(ACDDatabaseMigrator *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initForDatabaseAtURL:(id)l persistentStoreCoordinator:(id)coordinator storeOptions:(id)options
{
  lCopy = l;
  coordinatorCopy = coordinator;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = ACDDatabaseMigrator;
  v12 = [(ACDDatabaseMigrator *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseURL, l);
    objc_storeStrong(&v13->_persistentStoreCoordinator, coordinator);
    v14 = [optionsCopy copy];
    storeOptions = v13->_storeOptions;
    v13->_storeOptions = v14;
  }

  return v13;
}

- (BOOL)runReturningError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:];
  }

  _setUpContextForMigration = [(ACDDatabaseMigrator *)self _setUpContextForMigration];
  migrationContext = self->_migrationContext;
  self->_migrationContext = _setUpContextForMigration;

  v8 = self->_migrationContext;
  if (!v8)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __41__ACDDatabaseMigrator_runReturningError___block_invoke;
  v23[3] = &unk_27848C158;
  v23[4] = self;
  v23[5] = &v30;
  v23[6] = &v24;
  [(NSManagedObjectContext *)v8 performBlockAndWait:v23];
  v9 = [(NSDictionary *)self->_storeOptions mutableCopy];
  v10 = _ACDLogSystem([v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE1D8]]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:];
  }

  v11 = *MEMORY[0x277CBE2E8];
  databaseURL = self->_databaseURL;
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v22 = 0;
  v14 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:v11 configuration:0 URL:databaseURL options:v9 error:&v22];
  v15 = v22;
  v16 = v15;
  if (v14)
  {

    [(ACDDatabaseMigrator *)self _postProcessMigrationFromVersion:v31[3] migrationData:v25[5]];
    v17 = 1;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = _ACDLogSystem(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator runReturningError:];
    }

    v17 = 0;
    if (!error)
    {
      goto LABEL_14;
    }
  }

  v19 = v16;
  *error = v16;
LABEL_14:

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
LABEL_15:
  v20 = _ACDLogSystem(v8);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator runReturningError:v17];
  }

  return v17;
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke(uint64_t a1)
{
  v1 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2[2] managedObjectModel];
  *(*(*(v1 + 40) + 8) + 24) = [v2 _versionForModel:v3];

  v5 = _ACDLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_1(v1 + 40);
  }

  v7 = *(*(*(v1 + 40) + 8) + 24);
  v8 = v7 < 9;
  if (v7 <= 8)
  {
    v6 = [*(v1 + 32) _migrateAccessAuthorizationsToTCCFromModelVersion:?];
    v7 = *(*(*(v1 + 40) + 8) + 24);
  }

  if (v7 == 2401802)
  {
    v9 = _ACDLogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "Performing bridge migration on a database that was created on 6.1 or earlier. Pray to the deity of your choosing that this will work.", buf, 2u);
    }

    [*(v1 + 32) _migrateNameAttributeOfDataclassEntities];
    v6 = [*(v1 + 32) _migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:*(*(*(v1 + 40) + 8) + 24)];
    v7 = *(*(*(v1 + 40) + 8) + 24);
    v8 = 1;
  }

  if (v7 < 18 || v7 == 2401802)
  {
    v11 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:*(*(v1 + 32) + 8)];
    v12 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v12 setEntity:v11];
    [v12 setReturnsObjectsAsFaults:0];
    v13 = [*(*(v1 + 32) + 8) executeFetchRequest:v12 error:0];
    v14 = _ACDLogSystem(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_2(v13);
    }

    if ([v13 count])
    {
      v29 = v12;
      v30 = v11;
      v31 = v1;
      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v13;
      v16 = v13;
      v17 = [v16 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v32 + 1) + 8 * i);
            v22 = [v21 valueForKey:@"accountProperties"];
            if (v22)
            {
              v37[0] = @"objectID";
              v23 = [v21 objectID];
              v37[1] = @"properties";
              v38[0] = v23;
              v38[1] = v22;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
              [v15 addObject:v24];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v18);
      }

      v1 = v31;
      v25 = *(*(v31 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v15;

      v12 = v29;
      v11 = v30;
      v13 = v28;
    }
  }

  v27 = _ACDLogSystem(v6);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_3();
  }

  if (v8)
  {
    [*(*(v1 + 32) + 8) save:0];
  }
}

- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(int64_t)version
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = _ACDLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _migrateAccessAuthorizationsToTCCFromModelVersion:];
  }

  v6 = [(ACDDatabaseMigrator *)self _fetchAllAuthorizationEntitiesForModelVersion:version];
  v7 = _ACDLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _migrateAccessAuthorizationsToTCCFromModelVersion:v6];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138412290;
    v24 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        bundleID = [v14 bundleID];
        v16 = _ACDLogSystem(bundleID);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = v24;
          v30 = bundleID;
          _os_log_debug_impl(&dword_221D2F000, v16, OS_LOG_TYPE_DEBUG, "Found authorization for client: %@", buf, 0xCu);
        }

        if (bundleID)
        {
          v17 = [ACDClient clientWithBundleID:bundleID];
          v18 = objc_alloc(MEMORY[0x277CB8F58]);
          accountType = [v14 accountType];
          v20 = [v18 initWithManagedAccountType:accountType];

          v21 = [v14 valueForKey:@"granted"];
          bOOLValue = [v21 BOOLValue];

          identifier = [v20 identifier];
          [ACDTCCUtilities setTCCStateForClient:v17 accountTypeID:identifier toGranted:bOOLValue];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v11);
  }
}

- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(int64_t)version
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [(ACDDatabaseMigrator *)self _fetchAllAuthorizationEntitiesForModelVersion:version];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 valueForKey:@"oldOptions"];
        v19 = [v18 mutableCopy];

        if (v19)
        {
          v20 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v19 error:0];
          v21 = [v20 decodeObjectOfClasses:v11 forKey:@"options"];
          finishDecoding = [v20 finishDecoding];
          if (v21)
          {
            [v17 setValue:v21 forKey:@"newOptions"];
          }

          else
          {
            v23 = _ACDLogSystem(finishDecoding);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(ACDDatabaseMigrator *)&buf _migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:v25, v23];
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }
}

- (void)_migrateNameAttributeOfDataclassEntities
{
  v14 = *MEMORY[0x277D85DE8];
  _fetchAllDataclassEntitles = [(ACDDatabaseMigrator *)self _fetchAllDataclassEntitles];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [_fetchAllDataclassEntitles countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(_fetchAllDataclassEntitles);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [v7 valueForKey:@"oldName"];
        if (v8)
        {
          [v7 setValue:v8 forKey:@"newName"];
        }
      }

      v4 = [_fetchAllDataclassEntitles countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)_fetchAllDataclassEntitles
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  v3 = [MEMORY[0x277CBE408] entityForName:@"Dataclass" inManagedObjectContext:self->_migrationContext];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v4 setEntity:v3];
    [v4 setReturnsObjectsAsFaults:0];
    migrationContext = self->_migrationContext;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__ACDDatabaseMigrator__fetchAllDataclassEntitles__block_invoke;
    v9[3] = &unk_27848BCD0;
    v11 = &v12;
    v9[4] = self;
    v6 = v4;
    v10 = v6;
    [(NSManagedObjectContext *)migrationContext performBlockAndWait:v9];
  }

  else
  {
    v6 = _ACDLogSystem(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _fetchAllDataclassEntitles];
    }
  }

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __49__ACDDatabaseMigrator__fetchAllDataclassEntitles__block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];

  return MEMORY[0x2821F96F8]();
}

- (id)_fetchAllAuthorizationEntitiesForModelVersion:(int64_t)version
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v4 = @"Authorization";
  if (version < 8)
  {
    v4 = @"Permission";
  }

  if (version == 8)
  {
    v5 = @"ClientAuthorization";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CBE408] entityForName:v5 inManagedObjectContext:self->_migrationContext];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v7 setEntity:v6];
    [v7 setReturnsObjectsAsFaults:0];
    migrationContext = self->_migrationContext;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ACDDatabaseMigrator__fetchAllAuthorizationEntitiesForModelVersion___block_invoke;
    v12[3] = &unk_27848BCD0;
    v14 = &v15;
    v12[4] = self;
    v9 = v7;
    v13 = v9;
    [(NSManagedObjectContext *)migrationContext performBlockAndWait:v12];
  }

  else
  {
    v9 = _ACDLogSystem(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _fetchAllAuthorizationEntitiesForModelVersion:];
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

uint64_t __69__ACDDatabaseMigrator__fetchAllAuthorizationEntitiesForModelVersion___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 8) executeFetchRequest:a1[5] error:0];

  return MEMORY[0x2821F96F8]();
}

- (id)_setUpContextForMigration
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = _ACDLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ACDDatabaseMigrator *)self _setUpContextForMigration];
  }

  v4 = [(ACDDatabaseMigrator *)self _compatibleModelForStoreAtURL:self->_databaseURL];
  if (!v4)
  {
    v8 = _ACDLogSystem(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator _setUpContextForMigration];
    }

    goto LABEL_10;
  }

  v5 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v4];
  privateCoordinator = self->_privateCoordinator;
  self->_privateCoordinator = v5;

  v7 = *MEMORY[0x277CBE178];
  v25[0] = *MEMORY[0x277CBE1D8];
  v25[1] = v7;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v9 = self->_privateCoordinator;
  v10 = *MEMORY[0x277CBE2E8];
  databaseURL = self->_databaseURL;
  v24 = 0;
  v12 = [(NSPersistentStoreCoordinator *)v9 addPersistentStoreWithType:v10 configuration:0 URL:databaseURL options:v8 error:&v24];
  v13 = v24;
  v14 = v13;
  if (v13)
  {
    v15 = _ACDLogSystem(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ACDDatabaseMigrator _setUpContextForMigration];
    }

LABEL_10:
    v16 = 0;
    goto LABEL_14;
  }

  v17 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  migrationContext = self->_migrationContext;
  self->_migrationContext = v17;

  v20 = _ACDLogSystem(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _setUpContextForMigration];
  }

  v21 = self->_migrationContext;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__ACDDatabaseMigrator__setUpContextForMigration__block_invoke;
  v23[3] = &unk_27848BF78;
  v23[4] = self;
  [(NSManagedObjectContext *)v21 performBlockAndWait:v23];
  v16 = self->_migrationContext;
LABEL_14:

  return v16;
}

- (id)_compatibleModelForStoreAtURL:(id)l
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBE2E8];
  v36 = 0;
  v6 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v5 URL:l options:0 error:&v36];
  v7 = v36;
  v8 = 0;
  if (!v7)
  {
    selfCopy = self;
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:@"accounts" ofType:@"momd"];

    v11 = [MEMORY[0x277CCA8D8] pathsForResourcesOfType:@"mom" inDirectory:v10];
    v12 = _ACDLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ACDDatabaseMigrator _compatibleModelForStoreAtURL:v11];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v30 = v10;
      v16 = *v33;
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v32 + 1) + 8 * v17);
          v19 = _ACDLogSystem(v14);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v18;
            _os_log_debug_impl(&dword_221D2F000, v19, OS_LOG_TYPE_DEBUG, "Checking MOM at path: %@", buf, 0xCu);
          }

          v20 = objc_alloc(MEMORY[0x277CBE450]);
          v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
          v8 = [v20 initWithContentsOfURL:v21];

          v22 = [v8 isConfiguration:0 compatibleWithStoreMetadata:v6];
          if (v22)
          {
            v23 = _ACDLogSystem(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              [ACDDatabaseMigrator _compatibleModelForStoreAtURL:];
            }

            goto LABEL_18;
          }

          ++v17;
        }

        while (v15 != v17);
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v39 count:16];
        v15 = v14;
        if (v14)
        {
          continue;
        }

        break;
      }

      v8 = 0;
LABEL_18:
      v10 = v30;
      v7 = 0;
    }

    else
    {
      v8 = 0;
    }

    if ([(ACDDatabaseMigrator *)selfCopy _versionForModel:v8]== 9)
    {
      [MEMORY[0x277CCA8D8] pathForResource:@"accounts-brighton-bridge" ofType:@"mom" inDirectory:v10];
      v25 = v24 = v10;
      v26 = objc_alloc(MEMORY[0x277CBE450]);
      v27 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
      v28 = [v26 initWithContentsOfURL:v27];

      v10 = v24;
      v8 = v28;
    }
  }

  return v8;
}

- (int64_t)_versionForModel:(id)model
{
  versionIdentifiers = [model versionIdentifiers];
  anyObject = [versionIdentifiers anyObject];
  integerValue = [anyObject integerValue];

  return integerValue;
}

- (void)_postProcessMigrationFromVersion:(int64_t)version migrationData:(id)data
{
  dataCopy = data;
  v7 = _ACDLogSystem(dataCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACDDatabaseMigrator _postProcessMigrationFromVersion:migrationData:];
  }

  if (version < 18 || version == 2401802)
  {
    v8 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke;
    v10[3] = &unk_27848C0B8;
    v11 = v8;
    selfCopy = self;
    v13 = dataCopy;
    v9 = v8;
    [v9 performBlockAndWait:v10];
  }
}

void __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setPersistentStoreCoordinator:*(*(a1 + 40) + 32)];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CBE460]) initWithMergeType:2];
  [v2 setMergePolicy:v3];

  v4 = *(a1 + 48);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v24 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = *(a1 + 32);
        v8 = [v6 objectForKeyedSubscript:@"objectID"];
        v9 = [v7 existingObjectWithID:v8 error:0];

        if (v9)
        {
          v25 = i;
          v10 = [v6 objectForKeyedSubscript:@"properties"];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v27 + 1) + 8 * j);
                v16 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"AccountProperty" inManagedObjectContext:*(a1 + 32)];
                [v16 setKey:v15];
                v17 = [v10 objectForKeyedSubscript:v15];
                [v16 setValue:v17];

                [v16 setOwner:v9];
              }

              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v12);
          }

          i = v25;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v18 = *(a1 + 32);
  v26 = 0;
  [v18 save:&v26];
  v19 = v26;
  v20 = v19;
  if (v19)
  {
    v21 = _ACDLogSystem(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __70__ACDDatabaseMigrator__postProcessMigrationFromVersion_migrationData___block_invoke_cold_1();
    }
  }
}

- (void)runReturningError:(char)a1 .cold.5(char a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 & 1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "ACDDatabaseMigrator finished running! Result: %@", v4, v5, v6, v7);
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*a1 + 8) + 24)];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "The model version compatible with the pre-migration store is: %@.", v4, v5, v6, v7);
}

void __41__ACDDatabaseMigrator_runReturningError___block_invoke_cold_2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "There are %@ accounts.", v4, v5, v6, v7);
}

- (void)_migrateAccessAuthorizationsToTCCFromModelVersion:(void *)a1 .cold.2(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "Found %@ authorization entities.", v4, v5, v6, v7);
}

- (void)_migrateOptionsAttributeOfAuthorizatinEntitiesFromModelVersion:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_221D2F000, log, OS_LOG_TYPE_ERROR, "Failed to transform old options attribute!", buf, 2u);
}

- (void)_fetchAllAuthorizationEntitiesForModelVersion:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "No entity was found with name: %@", v1, 0xCu);
}

- (void)_setUpContextForMigration
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(self + 24);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_221D2F000, a2, OS_LOG_TYPE_DEBUG, "Setting up a context to migrate DB at path: %@", &v3, 0xCu);
}

- (void)_compatibleModelForStoreAtURL:(void *)a1 .cold.1(void *a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_2(&dword_221D2F000, v2, v3, "Found %@ MOMs. Looking for match...", v4, v5, v6, v7);
}

@end