@interface DNDSAppSpecificSettingsManager
- (BOOL)removeAppSpecificSettingsForApplicationIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeModeSpecificSettingsForModeIdentifier:(id)identifier error:(id *)error;
- (BOOL)setAppSpecificSettings:(id)settings identifier:(id)identifier type:(Class)type applicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (BOOL)setModeSpecificSettings:(id)settings identifier:(id)identifier type:(Class)type modeIdentifier:(id)modeIdentifier error:(id *)error;
- (DNDSAppSpecificSettingsManager)init;
- (DNDSAppSpecificSettingsManager)initWithIDSSyncEngine:(id)engine backingStoreURL:(id)l;
- (DNDSAppSpecificSettingsManagerDelegate)delegate;
- (id)_allAppSpecificSettingsOfType:(Class)type;
- (id)_allModeSpecificSettingsOfType:(Class)type;
- (id)_initWithBackingStoreURL:(id)l;
- (id)_perModeSettingsMOsOfType:(Class)type modeIdentifier:(id)identifier processBlock:(id)block;
- (id)appActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)appConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)appConfigurationPredicateForApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)appConfigurationTargetContentIdentifierPrefixForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)appConfigurationTargetContentIdentifierPrefixForApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)appSpecificSettingsDictinariesForModeIdentifier:(id)identifier;
- (id)appSpecificSettingsOfType:(Class)type identifier:(id)identifier modeIdentifier:(id)modeIdentifier applicationIdentifier:(id)applicationIdentifier error:(id *)error;
- (id)appSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier error:(id *)error;
- (id)appSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier error:(id *)error;
- (id)modeSpecificSettingsOfType:(Class)type identifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (id)modeSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier error:(id *)error;
- (id)recordIDsForIDSSyncEngine:(id)engine;
- (id)removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:(id)identifiers error:(id *)error;
- (id)systemActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error;
- (void)_allPerModeSettingsMOsOfType:(Class)type processBlock:(id)block;
- (void)_modesToSave:(id)save modesToDelete:(id)delete;
- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record;
- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save;
- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted;
- (void)purgeRecordsForIDSSyncEngine:(id)engine;
@end

@implementation DNDSAppSpecificSettingsManager

- (id)appActionWithIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:identifierCopy modeIdentifier:modeIdentifierCopy applicationIdentifier:applicationIdentifierCopy error:error];

  return v13;
}

- (id)appConfigurationTargetContentIdentifierPrefixForApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  v10 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() modeIdentifier:modeIdentifierCopy applicationIdentifier:identifierCopy error:error];

  anyObject = [v10 anyObject];

  return anyObject;
}

- (id)appConfigurationTargetContentIdentifierPrefixForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:identifierCopy modeIdentifier:modeIdentifierCopy applicationIdentifier:applicationIdentifierCopy error:error];

  return v13;
}

- (id)systemActionWithIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  v10 = [(DNDSAppSpecificSettingsManager *)self modeSpecificSettingsOfType:objc_opt_class() identifier:identifierCopy modeIdentifier:modeIdentifierCopy error:error];

  return v10;
}

- (id)appConfigurationPredicateForActionIdentifier:(id)identifier forApplicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  identifierCopy = identifier;
  v13 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() identifier:identifierCopy modeIdentifier:modeIdentifierCopy applicationIdentifier:applicationIdentifierCopy error:error];

  return v13;
}

- (id)appConfigurationPredicateForApplicationIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  modeIdentifierCopy = modeIdentifier;
  identifierCopy = identifier;
  v10 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsOfType:objc_opt_class() modeIdentifier:modeIdentifierCopy applicationIdentifier:identifierCopy error:error];

  anyObject = [v10 anyObject];

  return anyObject;
}

- (DNDSAppSpecificSettingsManager)init
{
  v6.receiver = self;
  v6.super_class = DNDSAppSpecificSettingsManager;
  v2 = [(DNDSAppSpecificSettingsManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(DNDSCoreDataBackingStore);
    store = v2->_store;
    v2->_store = v3;
  }

  return v2;
}

- (DNDSAppSpecificSettingsManager)initWithIDSSyncEngine:(id)engine backingStoreURL:(id)l
{
  engineCopy = engine;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = DNDSAppSpecificSettingsManager;
  v9 = [(DNDSAppSpecificSettingsManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idsSyncEngine, engine);
    [(DNDSIDSSyncEngine *)v10->_idsSyncEngine setDataSource:v10 forZone:@"DNDSAppSpecificSettings"];
    v11 = [[DNDSCoreDataBackingStore alloc] _initWithURL:lCopy];
    store = v10->_store;
    v10->_store = v11;
  }

  return v10;
}

- (id)_initWithBackingStoreURL:(id)l
{
  lCopy = l;
  v5 = [(DNDSAppSpecificSettingsManager *)self init];
  if (v5)
  {
    v6 = [[DNDSCoreDataBackingStore alloc] _initWithURL:lCopy];
    store = v5->_store;
    v5->_store = v6;
  }

  return v5;
}

- (id)modeSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__13;
  v19 = __Block_byref_object_dispose__13;
  v20 = [MEMORY[0x277CBEB58] set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_modeIdentifier_error___block_invoke;
  v14[3] = &unk_278F8B860;
  v14[4] = &v15;
  v14[5] = type;
  v9 = [(DNDSAppSpecificSettingsManager *)self _perModeSettingsMOsOfType:type modeIdentifier:identifierCopy processBlock:v14];
  if (v9)
  {
    v10 = v16[5];
    v16[5] = 0;

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  v12 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v12;
}

void __82__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_modeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) appSpecificSettingsForManagedObject:*(*(&v9 + 1) + 8 * v7)];
        if (v8)
        {
          [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)appSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier error:(id *)error
{
  v8 = MEMORY[0x277CBEB38];
  identifierCopy = identifier;
  dictionary = [v8 dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke;
  v16[3] = &unk_278F8B888;
  v11 = dictionary;
  v17 = v11;
  typeCopy = type;
  v12 = [(DNDSAppSpecificSettingsManager *)self _perModeSettingsMOsOfType:type modeIdentifier:identifierCopy processBlock:v16];

  if (v12)
  {

    if (error)
    {
      v13 = v12;
      v11 = 0;
      *error = v12;
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = v11;

  return v11;
}

void __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = objc_alloc(MEMORY[0x277D058C8]);
          v10 = [v8 application];
          v11 = [v10 bundleIdentifier];
          v12 = [v9 initWithBundleID:v11];

          v13 = [*(a1 + 32) objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
            [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
          }

          v15 = [*(a1 + 40) appSpecificSettingsForManagedObject:v8];
          if (v15)
          {
            v16 = [*(a1 + 32) objectForKeyedSubscript:v12];
            v17 = [v16 setByAddingObject:v15];
            [*(a1 + 32) setObject:v17 forKeyedSubscript:v12];
          }
        }

        else
        {
          v18 = DNDSLogAppSpecificSettingsManager;
          if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
          {
            __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke_cold_1(v23, v18, v8, &v24);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }
}

- (id)_perModeSettingsMOsOfType:(Class)type modeIdentifier:(id)identifier processBlock:(id)block
{
  v51[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__13;
  v44 = __Block_byref_object_dispose__13;
  v45 = 0;
  v10 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v10 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    store = [(DNDSAppSpecificSettingsManager *)self store];
    newManagedObjectContext = [store newManagedObjectContext];

    appSpecificSettingsEntity = [(objc_class *)type appSpecificSettingsEntity];
    persistentStoreCoordinator = [newManagedObjectContext persistentStoreCoordinator];
    managedObjectModel = [persistentStoreCoordinator managedObjectModel];
    entitiesByName = [managedObjectModel entitiesByName];
    v18 = [entitiesByName objectForKeyedSubscript:appSpecificSettingsEntity];

    if (identifierCopy)
    {
      if (v18)
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke;
        v33[3] = &unk_278F8B8B0;
        v34 = newManagedObjectContext;
        v35 = identifierCopy;
        v36 = v18;
        v38 = &v40;
        v37 = blockCopy;
        [v34 performBlockAndWait:v33];

        v19 = v34;
      }

      else
      {
        if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
        {
          [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
        }

        v29 = MEMORY[0x277CCA9B8];
        v46 = *MEMORY[0x277CCA450];
        v47 = @"Model does not contain provided entity name.";
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v30 = [v29 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
        v31 = v41[5];
        v41[5] = v30;
      }
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Mode identifier not valid.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v27 = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
      v28 = v41[5];
      v41[5] = v27;
    }

    v25 = v41[5];
  }

  else
  {
    v20 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Attempt to get mode specific settings before first unlock.", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    v51[0] = @"Attempt to get mode specific settings before first unlock.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];
    v24 = v41[5];
    v41[5] = v23;

    v25 = v41[5];
  }

  _Block_object_dispose(&v40, 8);

  return v25;
}

void __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v19 = @"MODE_ID";
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForMode" substitutionVariables:v5];

  [v6 setEntity:*(a1 + 48)];
  v7 = a1 + 64;
  v8 = *(*(a1 + 64) + 8);
  obj = *(v8 + 40);
  v9 = [v6 execute:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke_cold_1();
    }

    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D05840];
    v17 = *MEMORY[0x277CCA450];
    v18 = @"Error querying settings.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:1008 userInfo:v12];
    v14 = *(*v7 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (id)appSpecificSettingsOfType:(Class)type modeIdentifier:(id)identifier applicationIdentifier:(id)applicationIdentifier error:(id *)error
{
  v52[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  v12 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v12 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    *buf = 0;
    v42 = buf;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__13;
    v45 = __Block_byref_object_dispose__13;
    v46 = [MEMORY[0x277CBEB58] set];
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__13;
    v39 = __Block_byref_object_dispose__13;
    v40 = 0;
    bundleID = [applicationIdentifierCopy bundleID];
    v15 = bundleID == 0;

    if (v15)
    {
      v23 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50 = @"Application's bundle identifier not valid.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v24 = [v23 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v18];
    }

    else
    {
      if (identifierCopy)
      {
        store = [(DNDSAppSpecificSettingsManager *)self store];
        newManagedObjectContext = [store newManagedObjectContext];

        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke;
        v28[3] = &unk_278F8B8D8;
        v18 = newManagedObjectContext;
        v29 = v18;
        v30 = applicationIdentifierCopy;
        v31 = identifierCopy;
        v32 = &v35;
        v33 = buf;
        typeCopy = type;
        [v18 performBlockAndWait:v28];

        v19 = v29;
        goto LABEL_12;
      }

      v25 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"Mode identifier not valid.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v24 = [v25 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v18];
    }

    v19 = v36[5];
    v36[5] = v24;
LABEL_12:

    if (error)
    {
      *error = v36[5];
      if (v36[5])
      {
        v26 = *(v42 + 5);
        *(v42 + 5) = 0;
      }
    }

    error = *(v42 + 5);
    _Block_object_dispose(&v35, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_16;
  }

  v20 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v20, OS_LOG_TYPE_DEFAULT, "Attempt to get app specific settings before first unlock.", buf, 2u);
  }

  if (error)
  {
    v21 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"Attempt to get app specific settings before first unlock.";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    *error = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];

    error = 0;
  }

LABEL_16:

  return error;
}

void __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke(uint64_t a1)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v40[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v40[1] = @"MODE_ID";
  v41[0] = v4;
  v41[1] = *(a1 + 48);
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppMode" substitutionVariables:v5];

  v7 = [*(a1 + 72) appSpecificSettingsEntity];
  v8 = [*(a1 + 32) persistentStoreCoordinator];
  v9 = [v8 managedObjectModel];
  v10 = [v9 entitiesByName];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (v11)
  {
    [v6 setEntity:v11];
    v12 = a1 + 56;
    v13 = *(*(a1 + 56) + 8);
    obj = *(v13 + 40);
    v14 = [v6 execute:&obj];
    objc_storeStrong((v13 + 40), obj);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1();
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D05840];
      v36 = *MEMORY[0x277CCA450];
      v37 = @"Failed to fetch settings.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v18 = [v15 errorWithDomain:v16 code:1008 userInfo:v17];
      v19 = *(*v12 + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v14;
      v25 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v31;
        do
        {
          v28 = 0;
          do
          {
            if (*v31 != v27)
            {
              objc_enumerationMutation(v17);
            }

            v29 = [*(a1 + 72) appSpecificSettingsForManagedObject:{*(*(&v30 + 1) + 8 * v28), v30}];
            if (v29)
            {
              [*(*(*(a1 + 64) + 8) + 40) addObject:v29];
            }

            ++v28;
          }

          while (v26 != v28);
          v26 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v26);
      }

      v14 = v17;
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D05840];
    v38 = *MEMORY[0x277CCA450];
    v39 = @"Model does not contain provided entity name.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v23 = [v21 errorWithDomain:v22 code:1006 userInfo:v14];
    v24 = *(*(a1 + 56) + 8);
    v17 = *(v24 + 40);
    *(v24 + 40) = v23;
  }
}

- (id)modeSpecificSettingsOfType:(Class)type identifier:(id)identifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v12 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v12 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__13;
    v41 = __Block_byref_object_dispose__13;
    v42 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__13;
    v35 = __Block_byref_object_dispose__13;
    v36 = 0;
    if (modeIdentifierCopy)
    {
      store = [(DNDSAppSpecificSettingsManager *)self store];
      newManagedObjectContext = [store newManagedObjectContext];

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __93__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_identifier_modeIdentifier_error___block_invoke;
      v24[3] = &unk_278F8B8D8;
      v16 = newManagedObjectContext;
      v25 = v16;
      v26 = modeIdentifierCopy;
      v27 = identifierCopy;
      v28 = &v31;
      v29 = buf;
      typeCopy = type;
      [v16 performBlockAndWait:v24];

      v17 = v25;
    }

    else
    {
      v21 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"Mode identifier not valid.";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v22 = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v16];
      v17 = v32[5];
      v32[5] = v22;
    }

    if (error)
    {
      *error = v32[5];
    }

    error = *(v38 + 5);
    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v18 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24912E000, v18, OS_LOG_TYPE_DEFAULT, "Attempt to get mode specific settings before first unlock.", buf, 2u);
    }

    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"Attempt to mode app specific settings before first unlock.";
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *error = [v19 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v20];

      error = 0;
    }
  }

  return error;
}

void __93__DNDSAppSpecificSettingsManager_modeSpecificSettingsOfType_identifier_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v33[0] = @"MODE_ID";
  v33[1] = @"SETTINGS_ID";
  v34[0] = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v34[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v8 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForModeID" substitutionVariables:v7];

  if (!v5)
  {
  }

  v9 = [*(a1 + 72) appSpecificSettingsEntity];
  v10 = [*(a1 + 32) persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (!v13)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v21 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277D05840];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Model does not contain provided entity name.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v23 = [v21 errorWithDomain:v22 code:1006 userInfo:v16];
    v24 = *(*(a1 + 56) + 8);
    v19 = *(v24 + 40);
    *(v24 + 40) = v23;
    goto LABEL_16;
  }

  [v8 setEntity:v13];
  v14 = a1 + 56;
  v15 = *(*(a1 + 56) + 8);
  obj = *(v15 + 40);
  v16 = [v8 execute:&obj];
  objc_storeStrong((v15 + 40), obj);
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1();
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D05840];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"Failed to fetch settings.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v20 = [v17 errorWithDomain:v18 code:1008 userInfo:v19];
    goto LABEL_15;
  }

  if ([v16 count])
  {
    v25 = *(a1 + 72);
    v19 = [v16 firstObject];
    v20 = [v25 appSpecificSettingsForManagedObject:v19];
    v14 = a1 + 64;
LABEL_15:
    v26 = *(*v14 + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v20;

LABEL_16:
  }
}

- (id)appSpecificSettingsOfType:(Class)type identifier:(id)identifier modeIdentifier:(id)modeIdentifier applicationIdentifier:(id)applicationIdentifier error:(id *)error
{
  v55[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  applicationIdentifierCopy = applicationIdentifier;
  v15 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v15 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    *buf = 0;
    v45 = buf;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__13;
    v48 = __Block_byref_object_dispose__13;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__13;
    v42 = __Block_byref_object_dispose__13;
    v43 = 0;
    bundleID = [applicationIdentifierCopy bundleID];
    v18 = bundleID == 0;

    if (v18)
    {
      v26 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Application's bundle identifier not valid.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v27 = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v21];
    }

    else
    {
      if (modeIdentifierCopy)
      {
        store = [(DNDSAppSpecificSettingsManager *)self store];
        newManagedObjectContext = [store newManagedObjectContext];

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __114__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_identifier_modeIdentifier_applicationIdentifier_error___block_invoke;
        v30[3] = &unk_278F8B900;
        v21 = newManagedObjectContext;
        v31 = v21;
        v32 = applicationIdentifierCopy;
        v33 = modeIdentifierCopy;
        v34 = identifierCopy;
        v35 = &v38;
        v36 = buf;
        typeCopy = type;
        [v21 performBlockAndWait:v30];

        v22 = v31;
LABEL_12:

        if (error)
        {
          *error = v39[5];
        }

        error = *(v45 + 5);
        _Block_object_dispose(&v38, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_15;
      }

      v28 = MEMORY[0x277CCA9B8];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"Mode identifier not valid.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v27 = [v28 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v21];
    }

    v22 = v39[5];
    v39[5] = v27;
    goto LABEL_12;
  }

  v23 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v23, OS_LOG_TYPE_DEFAULT, "Attempt to get app specific settings before first unlock.", buf, 2u);
  }

  if (error)
  {
    v24 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55[0] = @"Attempt to get app specific settings before first unlock.";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    *error = [v24 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v25];

    error = 0;
  }

LABEL_15:

  return error;
}

void __114__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_identifier_modeIdentifier_applicationIdentifier_error___block_invoke(uint64_t a1)
{
  v35[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v34[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v35[0] = v4;
  v35[1] = v5;
  v34[1] = @"MODE_ID";
  v34[2] = @"SETTINGS_ID";
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v35[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v9 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppModeID" substitutionVariables:v8];

  if (!v6)
  {
  }

  v10 = [*(a1 + 80) appSpecificSettingsEntity];
  v11 = [*(a1 + 32) persistentStoreCoordinator];
  v12 = [v11 managedObjectModel];
  v13 = [v12 entitiesByName];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (!v14)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D05840];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"Model does not contain provided entity name.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v24 = [v22 errorWithDomain:v23 code:1006 userInfo:v17];
    v25 = *(*(a1 + 64) + 8);
    v20 = *(v25 + 40);
    *(v25 + 40) = v24;
    goto LABEL_16;
  }

  [v9 setEntity:v14];
  v15 = a1 + 64;
  v16 = *(*(a1 + 64) + 8);
  obj = *(v16 + 40);
  v17 = [v9 execute:&obj];
  objc_storeStrong((v16 + 40), obj);
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1();
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D05840];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"Failed to fetch settings.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v21 = [v18 errorWithDomain:v19 code:1008 userInfo:v20];
    goto LABEL_15;
  }

  if ([v17 count])
  {
    v26 = *(a1 + 80);
    v20 = [v17 firstObject];
    v21 = [v26 appSpecificSettingsForManagedObject:v20];
    v15 = a1 + 72;
LABEL_15:
    v27 = *(*v15 + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v21;

LABEL_16:
  }
}

- (BOOL)setModeSpecificSettings:(id)settings identifier:(id)identifier type:(Class)type modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v48[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  v15 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v15 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__13;
    v43 = __Block_byref_object_dispose__13;
    v44 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    if (modeIdentifierCopy)
    {
      store = [(DNDSAppSpecificSettingsManager *)self store];
      newManagedObjectContext = [store newManagedObjectContext];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke;
      v26[3] = &unk_278F8B928;
      v19 = newManagedObjectContext;
      v27 = v19;
      v28 = modeIdentifierCopy;
      typeCopy = type;
      v29 = identifierCopy;
      v32 = &v39;
      v33 = &v35;
      v30 = settingsCopy;
      selfCopy = self;
      [v19 performBlockAndWait:v26];

      v20 = v27;
    }

    else
    {
      v23 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46 = @"Mode identifier not valid.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v24 = [v23 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v19];
      v20 = v40[5];
      v40[5] = v24;
    }

    if (error)
    {
      *error = v40[5];
    }

    LOBYTE(error) = *(v36 + 24);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager setModeSpecificSettings:identifier:type:modeIdentifier:error:];
    }

    if (error)
    {
      v21 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48[0] = @"Attempt to set mode specific settings before first unlock.";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *error = [v21 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v22];

      LOBYTE(error) = 0;
    }
  }

  return error & 1;
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v81[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v80[0] = @"MODE_ID";
  v80[1] = @"SETTINGS_ID";
  v81[0] = v4;
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v81[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
  v8 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForModeID" substitutionVariables:v7];

  if (!v5)
  {
  }

  [v8 setFetchLimit:1];
  v9 = [*(a1 + 88) appSpecificSettingsEntity];
  v10 = [*(a1 + 32) persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v13 = [v12 objectForKeyedSubscript:v9];

  if (v13)
  {
    [v8 setEntity:v13];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 72) + 8);
    obj = *(v15 + 40);
    v16 = [v14 executeFetchRequest:v8 error:&obj];
    objc_storeStrong((v15 + 40), obj);
    v17 = DNDSLogAppSpecificSettingsManager;
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1();
      }

      if (!*(a1 + 56))
      {
        v34 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277D05840];
        v76 = *MEMORY[0x277CCA450];
        v77 = @"Failed to fetch settings to delete.";
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v37 = [v34 errorWithDomain:v35 code:1008 userInfo:v36];
        v38 = *(*(a1 + 72) + 8);
        v39 = *(v38 + 40);
        *(v38 + 40) = v37;

        v20 = 0;
        *(*(*(a1 + 80) + 8) + 24) = 0;
        v23 = v13;
LABEL_36:

        goto LABEL_37;
      }

      v18 = *(*(a1 + 72) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = 0;

      if (!*(a1 + 56))
      {
        v20 = 0;
LABEL_29:
        v23 = v13;
LABEL_30:
        if ([*(a1 + 32) hasChanges])
        {
          v47 = *(a1 + 32);
          v48 = *(*(a1 + 72) + 8);
          v64 = *(v48 + 40);
          v49 = [v47 save:&v64];
          objc_storeStrong((v48 + 40), v64);
          *(*(*(a1 + 80) + 8) + 24) = v49;
          if (*(*(*(a1 + 80) + 8) + 24) == 1 && !*(*(*(a1 + 72) + 8) + 40))
          {
            v56 = DNDSLogAppSpecificSettingsManager;
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(a1 + 40);
              v57 = *(a1 + 48);
              *buf = 138543618;
              v69 = v57;
              v70 = 2114;
              v71 = v58;
              _os_log_impl(&dword_24912E000, v56, OS_LOG_TYPE_DEFAULT, "Committed mode settings for %{public}@ in %{public}@", buf, 0x16u);
            }

            v59 = *(a1 + 64);
            if (*(a1 + 56))
            {
              v67 = *(a1 + 40);
              v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
              v61 = v59;
              v62 = v60;
              v63 = 0;
            }

            else
            {
              v66 = *(a1 + 40);
              v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
              v61 = v59;
              v62 = 0;
              v63 = v60;
            }

            [v61 _modesToSave:v62 modesToDelete:v63];
          }

          else
          {
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
            {
              __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3();
            }

            v50 = MEMORY[0x277CCA9B8];
            v51 = *MEMORY[0x277D05840];
            v72 = *MEMORY[0x277CCA450];
            v73 = @"Failed to commit settings.";
            v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            v53 = [v50 errorWithDomain:v51 code:1008 userInfo:v52];
            v54 = *(*(a1 + 72) + 8);
            v55 = *(v54 + 40);
            *(v54 + 40) = v53;

            *(*(*(a1 + 80) + 8) + 24) = 0;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v26 = MEMORY[0x277CCABB0];
        v27 = v17;
        v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        *buf = 138543362;
        v69 = v28;
        _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ settings for set/clear.", buf, 0xCu);
      }

      v29 = [v16 firstObject];
      v20 = v29;
      v30 = *(a1 + 56);
      if (!v30)
      {
        if (v29)
        {
          [*(a1 + 32) deleteObject:v29];
        }

        goto LABEL_29;
      }

      if (v29)
      {
        v23 = v13;
LABEL_22:
        [*(a1 + 88) completeManagedObject:v20 forAppSpecificSettings:v30];
        goto LABEL_30;
      }
    }

    v31 = MEMORY[0x277CBE408];
    v32 = [*(a1 + 88) appSpecificSettingsEntity];
    v23 = [v31 entityForName:v32 inManagedObjectContext:*(a1 + 32)];

    v20 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v23 insertIntoManagedObjectContext:*(a1 + 32)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(v40, v20);
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277D05840];
      v74 = *MEMORY[0x277CCA450];
      v75 = @"Unexpected managed object class for entity.";
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
      v44 = [v41 errorWithDomain:v42 code:1006 userInfo:v43];
      v45 = *(*(a1 + 72) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v44;

      goto LABEL_36;
    }

    [v20 setIdentifier:*(a1 + 48)];
    v33 = [[DNDFocusModeMO alloc] initWithContext:*(a1 + 32)];
    [(DNDFocusModeMO *)v33 setIdentifier:*(a1 + 40)];
    [*(a1 + 32) refreshObject:v33 mergeChanges:1];
    [v20 setMode:v33];

    v30 = *(a1 + 56);
    goto LABEL_22;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }

  v21 = MEMORY[0x277CCA9B8];
  v22 = *MEMORY[0x277D05840];
  v78 = *MEMORY[0x277CCA450];
  v79 = @"Model does not contain provided entity name.";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v24 = [v21 errorWithDomain:v22 code:1006 userInfo:v23];
  v25 = *(*(a1 + 72) + 8);
  v20 = *(v25 + 40);
  *(v25 + 40) = v24;
LABEL_37:
}

- (BOOL)setAppSpecificSettings:(id)settings identifier:(id)identifier type:(Class)type applicationIdentifier:(id)applicationIdentifier modeIdentifier:(id)modeIdentifier error:(id *)error
{
  v57[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  modeIdentifierCopy = modeIdentifier;
  v18 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v18 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__13;
    v50 = __Block_byref_object_dispose__13;
    v51 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 1;
    bundleID = [applicationIdentifierCopy bundleID];
    v21 = bundleID == 0;

    if (v21)
    {
      v28 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v55 = @"Application's bundle identifier not valid.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v29 = [v28 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v24];
    }

    else
    {
      if (modeIdentifierCopy)
      {
        store = [(DNDSAppSpecificSettingsManager *)self store];
        newManagedObjectContext = [store newManagedObjectContext];

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __116__DNDSAppSpecificSettingsManager_setAppSpecificSettings_identifier_type_applicationIdentifier_modeIdentifier_error___block_invoke;
        v32[3] = &unk_278F8B950;
        v24 = newManagedObjectContext;
        v33 = v24;
        v34 = applicationIdentifierCopy;
        v35 = modeIdentifierCopy;
        typeCopy = type;
        v36 = identifierCopy;
        v39 = &v46;
        v40 = &v42;
        v37 = settingsCopy;
        selfCopy = self;
        [v24 performBlockAndWait:v32];

        v25 = v33;
LABEL_12:

        if (error)
        {
          *error = v47[5];
        }

        LOBYTE(error) = *(v43 + 24);
        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);

        goto LABEL_15;
      }

      v30 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v53 = @"Mode identifier not valid.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v29 = [v30 errorWithDomain:*MEMORY[0x277D05840] code:1006 userInfo:v24];
    }

    v25 = v47[5];
    v47[5] = v29;
    goto LABEL_12;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager setAppSpecificSettings:identifier:type:applicationIdentifier:modeIdentifier:error:];
  }

  if (error)
  {
    v26 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"Attempt to set app specific settings before first unlock.";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    *error = [v26 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v27];

    LOBYTE(error) = 0;
  }

LABEL_15:

  return error & 1;
}

void __116__DNDSAppSpecificSettingsManager_setAppSpecificSettings_identifier_type_applicationIdentifier_modeIdentifier_error___block_invoke(uint64_t a1)
{
  v84[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v83[0] = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v84[0] = v4;
  v84[1] = v5;
  v83[1] = @"MODE_ID";
  v83[2] = @"SETTINGS_ID";
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v84[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  v9 = [v3 fetchRequestFromTemplateWithName:@"PerAppSettingsForAppModeID" substitutionVariables:v8];

  if (!v6)
  {
  }

  [v9 setFetchLimit:1];
  v10 = [*(a1 + 96) appSpecificSettingsEntity];
  v11 = [*(a1 + 32) persistentStoreCoordinator];
  v12 = [v11 managedObjectModel];
  v13 = [v12 entitiesByName];
  v14 = [v13 objectForKeyedSubscript:v10];

  if (v14)
  {
    [v9 setEntity:v14];
    v15 = *(a1 + 32);
    v16 = *(*(a1 + 80) + 8);
    obj = *(v16 + 40);
    v17 = [v15 executeFetchRequest:v9 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    v18 = DNDSLogAppSpecificSettingsManager;
    if (*(*(*(a1 + 80) + 8) + 40))
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1();
      }

      if (!*(a1 + 64))
      {
        v37 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277D05840];
        v79 = *MEMORY[0x277CCA450];
        v80 = @"Failed to fetch settings to delete.";
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v40 = [v37 errorWithDomain:v38 code:1008 userInfo:v39];
        v41 = *(*(a1 + 80) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        v21 = 0;
        *(*(*(a1 + 88) + 8) + 24) = 0;
        v24 = v14;
LABEL_36:

        goto LABEL_37;
      }

      v19 = *(*(a1 + 80) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = 0;

      if (!*(a1 + 64))
      {
        v21 = 0;
LABEL_29:
        v24 = v14;
LABEL_30:
        if ([*(a1 + 32) hasChanges])
        {
          v50 = *(a1 + 32);
          v51 = *(*(a1 + 80) + 8);
          v67 = *(v51 + 40);
          v52 = [v50 save:&v67];
          objc_storeStrong((v51 + 40), v67);
          *(*(*(a1 + 88) + 8) + 24) = v52;
          if (*(*(*(a1 + 88) + 8) + 24) == 1 && !*(*(*(a1 + 80) + 8) + 40))
          {
            v59 = DNDSLogAppSpecificSettingsManager;
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
            {
              v60 = *(a1 + 40);
              v61 = *(a1 + 48);
              *buf = 138543618;
              v72 = v60;
              v73 = 2114;
              v74 = v61;
              _os_log_impl(&dword_24912E000, v59, OS_LOG_TYPE_DEFAULT, "Committed settings for %{public}@ in %{public}@", buf, 0x16u);
            }

            v62 = *(a1 + 72);
            if (*(a1 + 64))
            {
              v70 = *(a1 + 48);
              v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
              v64 = v62;
              v65 = v63;
              v66 = 0;
            }

            else
            {
              v69 = *(a1 + 48);
              v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
              v64 = v62;
              v65 = 0;
              v66 = v63;
            }

            [v64 _modesToSave:v65 modesToDelete:v66];
          }

          else
          {
            if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
            {
              __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3();
            }

            v53 = MEMORY[0x277CCA9B8];
            v54 = *MEMORY[0x277D05840];
            v75 = *MEMORY[0x277CCA450];
            v76 = @"Failed to commit settings.";
            v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
            v56 = [v53 errorWithDomain:v54 code:1008 userInfo:v55];
            v57 = *(*(a1 + 80) + 8);
            v58 = *(v57 + 40);
            *(v57 + 40) = v56;

            *(*(*(a1 + 88) + 8) + 24) = 0;
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x277CCABB0];
        v28 = v18;
        v29 = [v27 numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
        *buf = 138412290;
        v72 = v29;
        _os_log_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEFAULT, "Fetched %@ settings for set/clear.", buf, 0xCu);
      }

      v30 = [v17 firstObject];
      v21 = v30;
      v31 = *(a1 + 64);
      if (!v31)
      {
        if (v30)
        {
          [*(a1 + 32) deleteObject:v30];
        }

        goto LABEL_29;
      }

      if (v30)
      {
        v24 = v14;
LABEL_22:
        [*(a1 + 96) completeManagedObject:v21 forAppSpecificSettings:v31];
        goto LABEL_30;
      }
    }

    v32 = MEMORY[0x277CBE408];
    v33 = [*(a1 + 96) appSpecificSettingsEntity];
    v24 = [v32 entityForName:v33 inManagedObjectContext:*(a1 + 32)];

    v21 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v24 insertIntoManagedObjectContext:*(a1 + 32)];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
      {
        __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(v43, v21);
      }

      *(*(*(a1 + 88) + 8) + 24) = 0;
      v44 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277D05840];
      v77 = *MEMORY[0x277CCA450];
      v78 = @"Unexpected managed object class for entity.";
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v47 = [v44 errorWithDomain:v45 code:1006 userInfo:v46];
      v48 = *(*(a1 + 80) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = v47;

      goto LABEL_36;
    }

    [v21 setIdentifier:*(a1 + 56)];
    v34 = [[DNDApplicationMO alloc] initWithContext:*(a1 + 32)];
    v35 = [*(a1 + 40) bundleID];
    [(DNDApplicationMO *)v34 setBundleIdentifier:v35];

    [*(a1 + 32) refreshObject:v34 mergeChanges:1];
    [v21 setApplication:v34];
    v36 = [[DNDFocusModeMO alloc] initWithContext:*(a1 + 32)];
    [(DNDFocusModeMO *)v36 setIdentifier:*(a1 + 48)];
    [*(a1 + 32) refreshObject:v36 mergeChanges:1];
    [v21 setMode:v36];

    v31 = *(a1 + 64);
    goto LABEL_22;
  }

  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }

  v22 = MEMORY[0x277CCA9B8];
  v23 = *MEMORY[0x277D05840];
  v81 = *MEMORY[0x277CCA450];
  v82 = @"Model does not contain provided entity name.";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  v25 = [v22 errorWithDomain:v23 code:1006 userInfo:v24];
  v26 = *(*(a1 + 80) + 8);
  v21 = *(v26 + 40);
  *(v26 + 40) = v25;
LABEL_37:
}

- (BOOL)removeModeSpecificSettingsForModeIdentifier:(id)identifier error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v7 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__13;
    v29 = __Block_byref_object_dispose__13;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    store = [(DNDSAppSpecificSettingsManager *)self store];
    newManagedObjectContext = [store newManagedObjectContext];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke;
    v15[3] = &unk_278F8B978;
    v11 = newManagedObjectContext;
    v16 = v11;
    v19 = &v25;
    v20 = &v21;
    v17 = identifierCopy;
    selfCopy = self;
    [v11 performBlockAndWait:v15];
    if (error)
    {
      *error = v26[5];
    }

    LOBYTE(error) = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v25, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifier:error:];
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32[0] = @"Attempt to remove mode specific settings before first unlock.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *error = [v12 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v13];

      LOBYTE(error) = 0;
    }
  }

  return error & 1;
}

void __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke(uint64_t a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v49 = @"MODE_ID";
  v50[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"ModeForModeIdentifier" substitutionVariables:v5];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
  [v7 setResultType:2];
  v8 = *(a1 + 32);
  v9 = a1 + 56;
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v8 executeRequest:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = DNDSLogAppSpecificSettingsManager;
  v13 = MEMORY[0x277D05840];
  if (*(*(*(a1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1();
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *v13;
    v47 = *MEMORY[0x277CCA450];
    v48 = @"Failed to remote settings.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v17 = [v14 errorWithDomain:v15 code:1008 userInfo:v16];
    v18 = *(*v9 + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*v9 + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = 0;
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v12;
    v23 = [v11 result];
    v24 = *(a1 + 40);
    *buf = 138543618;
    v44 = v23;
    v45 = 2114;
    v46 = v24;
    _os_log_impl(&dword_24912E000, v22, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ settings for mode %{public}@.", buf, 0x16u);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v25 = *(a1 + 32);
    v26 = *(*(a1 + 56) + 8);
    v38 = *(v26 + 40);
    v27 = [v25 save:&v38];
    objc_storeStrong((v26 + 40), v38);
    *(*(*(a1 + 64) + 8) + 24) = v27;
    if (*(*(*(a1 + 64) + 8) + 24) == 1 && !*(*(*v9 + 8) + 40))
    {
      v34 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 40);
        *buf = 138543362;
        v44 = v35;
        _os_log_impl(&dword_24912E000, v34, OS_LOG_TYPE_DEFAULT, "Committed settings removal for mode %{public}@", buf, 0xCu);
      }

      v36 = *(a1 + 48);
      v40 = *(a1 + 40);
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v36 _modesToSave:0 modesToDelete:v37];
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1();
      }

      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277D05840];
      v41 = *MEMORY[0x277CCA450];
      v42 = @"Failed to remove settings.";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v31 = [v28 errorWithDomain:v29 code:1008 userInfo:v30];
      v32 = *(*(a1 + 56) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      *(*(*(a1 + 64) + 8) + 24) = 0;
    }
  }
}

- (id)removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers:(id)identifiers error:(id *)error
{
  v37[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v7 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v7 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__13;
    v32 = __Block_byref_object_dispose__13;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__13;
    v26 = __Block_byref_object_dispose__13;
    v27 = 0;
    v9 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = identifiersCopy;
      _os_log_impl(&dword_24912E000, v9, OS_LOG_TYPE_DEFAULT, "Removing settings for modes not in %{public}@.", buf, 0xCu);
    }

    store = [(DNDSAppSpecificSettingsManager *)self store];
    newManagedObjectContext = [store newManagedObjectContext];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke;
    v16[3] = &unk_278F8B978;
    v17 = identifiersCopy;
    v12 = newManagedObjectContext;
    v20 = &v28;
    v21 = &v22;
    v18 = v12;
    selfCopy = self;
    [v12 performBlockAndWait:v16];
    if (error)
    {
      *error = v29[5];
    }

    error = v23[5];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeModeSpecificSettingsForModeIdentifier:error:];
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v37[0] = @"Attempt to remove mode specific settings before first unlock.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      *error = [v13 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v14];

      error = 0;
    }
  }

  return error;
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier IN (%@)", *(a1 + 32)];
  v3 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v2];

  v4 = +[DNDFocusModeMO fetchRequest];
  [v4 setPredicate:v3];
  [v4 setIncludesPendingChanges:1];
  v5 = *(v1 + 40);
  v6 = *(*(v1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v5 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (*(*(*(v1 + 56) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_1();
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D05840];
    v77 = *MEMORY[0x277CCA450];
    v78[0] = @"Failed to fetch settings to delete.";
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v10 = [v8 errorWithDomain:v9 code:1008 userInfo:?];
    v11 = *(*(v1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v46 = v1 + 56;
    v48 = v4;
    v49 = v3;
    v53 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v47 = v7;
    v50 = v7;
    v54 = [v50 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v54)
    {
      v51 = *v65;
      v52 = v1;
      do
      {
        v13 = 0;
        do
        {
          if (*v65 != v51)
          {
            objc_enumerationMutation(v50);
          }

          v57 = v13;
          v14 = *(*(&v64 + 1) + 8 * v13);
          v56 = [v14 identifier];
          v15 = [MEMORY[0x277CBEB58] set];
          v58 = [MEMORY[0x277CBEB58] set];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v55 = v14;
          v16 = [v14 settings];
          v17 = [v16 countByEnumeratingWithState:&v60 objects:v75 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v61;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v61 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v60 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = MEMORY[0x277D058C8];
                  v23 = v21;
                  v24 = [v22 alloc];
                  v25 = [v23 application];
                  v26 = [v25 bundleIdentifier];
                  v27 = [v24 initWithBundleID:v26];
                  [v15 addObject:v27];
                }

                else
                {
                  v28 = [v21 dnd_settingsType];
                  v25 = NSStringFromClass(v28);
                  if ([&unk_285C53C30 containsObject:v25])
                  {
                    v29 = [(objc_class *)v28 appSpecificSettingsForManagedObject:v21];
                    if (v29)
                    {
                      [v58 addObject:v29];
                    }
                  }

                  else
                  {
                    v30 = DNDSLogAppSpecificSettingsManager;
                    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543362;
                      v72 = v25;
                    }
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v60 objects:v75 count:16];
            }

            while (v18);
          }

          v31 = objc_opt_new();
          [v31 setApplicationIdentifiers:v15];
          [v31 setModeSpecificSettings:v58];
          [v53 setObject:v31 forKeyedSubscript:v56];
          v32 = DNDSLogAppSpecificSettingsManager;
          if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v72 = v56;
            v73 = 2114;
            v74 = v15;
            _os_log_impl(&dword_24912E000, v32, OS_LOG_TYPE_DEFAULT, "Removing settings for %{public}@; apps=%{public}@", buf, 0x16u);
          }

          v1 = v52;
          [*(v52 + 40) deleteObject:v55];

          v13 = v57 + 1;
        }

        while (v57 + 1 != v54);
        v54 = [v50 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v54);
    }

    if (![*(v1 + 40) hasChanges])
    {
      v4 = v48;
      v3 = v49;
      v7 = v47;
      goto LABEL_37;
    }

    v33 = *(v1 + 40);
    v34 = *(*(v1 + 56) + 8);
    v59 = *(v34 + 40);
    v35 = [v33 save:&v59];
    objc_storeStrong((v34 + 40), v59);
    v4 = v48;
    v3 = v49;
    if (v35 && !*(*(*v46 + 8) + 40))
    {
      v41 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24912E000, v41, OS_LOG_TYPE_DEFAULT, "Changes did commit.", buf, 2u);
      }

      v42 = [v53 copy];
      v43 = *(*(v1 + 64) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v45 = *(v1 + 48);
      v12 = [v53 allKeys];
      [v45 _modesToSave:0 modesToDelete:v12];
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_2();
      }

      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D05840];
      v69 = *MEMORY[0x277CCA450];
      v70 = @"Failed to commit changes.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
      v38 = [v36 errorWithDomain:v37 code:1008 userInfo:v12];
      v39 = *(*v46 + 8);
      v40 = *(v39 + 40);
      *(v39 + 40) = v38;
    }

    v7 = v47;
  }

LABEL_37:
}

- (BOOL)removeAppSpecificSettingsForApplicationIdentifier:(id)identifier error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v7 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__13;
    v28 = __Block_byref_object_dispose__13;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 1;
    store = [(DNDSAppSpecificSettingsManager *)self store];
    newManagedObjectContext = [store newManagedObjectContext];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke;
    v15[3] = &unk_278F8B9A0;
    v11 = newManagedObjectContext;
    v16 = v11;
    v17 = identifierCopy;
    v18 = &v24;
    v19 = &v20;
    [v11 performBlockAndWait:v15];
    if (error)
    {
      *error = v25[5];
    }

    LOBYTE(error) = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
    {
      [DNDSAppSpecificSettingsManager removeAppSpecificSettingsForApplicationIdentifier:error:];
    }

    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = @"Attempt to remove app specific settings before first unlock.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *error = [v12 errorWithDomain:*MEMORY[0x277D05840] code:1004 userInfo:v13];

      LOBYTE(error) = 0;
    }
  }

  return error & 1;
}

void __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v37 = @"BUNDLE_ID";
  v4 = [*(a1 + 40) bundleID];
  v38[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"ApplicationForBundleIdentifier" substitutionVariables:v5];

  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
  [v7 setResultType:2];
  v8 = *(a1 + 32);
  v9 = a1 + 48;
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 executeRequest:v7 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  v12 = DNDSLogAppSpecificSettingsManager;
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1();
    }

    v13 = *(*v9 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = 0;
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v12;
    v16 = [v11 result];
    v17 = *(a1 + 40);
    *buf = 138543618;
    v34 = v16;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Removed %{public}@ settings for app %{public}@.", buf, 0x16u);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v18 = *(a1 + 32);
    v19 = *(*(a1 + 48) + 8);
    v29 = *(v19 + 40);
    v20 = [v18 save:&v29];
    objc_storeStrong((v19 + 40), v29);
    *(*(*(a1 + 56) + 8) + 24) = v20;
    if (*(*(*(a1 + 56) + 8) + 24) == 1 && !*(*(*v9 + 8) + 40))
    {
      v27 = DNDSLogAppSpecificSettingsManager;
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 40);
        *buf = 138543362;
        v34 = v28;
        _os_log_impl(&dword_24912E000, v27, OS_LOG_TYPE_DEFAULT, "Removed settings for app %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
      {
        __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke_cold_2();
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277D05840];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Failed to remove app settings.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v24 = [v21 errorWithDomain:v22 code:1008 userInfo:v23];
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }
}

- (id)_allModeSpecificSettingsOfType:(Class)type
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__DNDSAppSpecificSettingsManager__allModeSpecificSettingsOfType___block_invoke;
  v8[3] = &unk_278F8B9C8;
  v6 = v5;
  v9 = v6;
  typeCopy = type;
  [(DNDSAppSpecificSettingsManager *)self _allPerModeSettingsMOsOfType:type processBlock:v8];

  return v6;
}

void __65__DNDSAppSpecificSettingsManager__allModeSpecificSettingsOfType___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 mode];
  v4 = [v3 identifier];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
  }

  v7 = [*(a1 + 40) appSpecificSettingsForManagedObject:v9];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v4];
    [v8 addObject:v7];
  }
}

- (id)_allAppSpecificSettingsOfType:(Class)type
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke;
  v8[3] = &unk_278F8B9C8;
  v6 = v5;
  v9 = v6;
  typeCopy = type;
  [(DNDSAppSpecificSettingsManager *)self _allPerModeSettingsMOsOfType:type processBlock:v8];

  return v6;
}

void __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 mode];
    v5 = [v4 identifier];

    v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
    }

    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = objc_alloc(MEMORY[0x277D058C8]);
    v10 = [v3 application];
    v11 = [v10 bundleIdentifier];
    v12 = [v9 initWithBundleID:v11];

    v13 = [v8 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
      [v8 setObject:v14 forKeyedSubscript:v12];
    }

    v15 = [*(a1 + 40) appSpecificSettingsForManagedObject:v3];
    if (v15)
    {
      v16 = [v8 objectForKeyedSubscript:v12];
      v17 = [v16 setByAddingObject:v15];
      [v8 setObject:v17 forKeyedSubscript:v12];
    }
  }

  else
  {
    v18 = DNDSLogAppSpecificSettingsManager;
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke_cold_1(v18, v3);
    }
  }
}

- (void)_allPerModeSettingsMOsOfType:(Class)type processBlock:(id)block
{
  blockCopy = block;
  store = [(DNDSAppSpecificSettingsManager *)self store];
  newManagedObjectContext = [store newManagedObjectContext];

  appSpecificSettingsEntity = [(objc_class *)type appSpecificSettingsEntity];
  persistentStoreCoordinator = [newManagedObjectContext persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];
  v13 = [entitiesByName objectForKeyedSubscript:appSpecificSettingsEntity];

  if (v13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke;
    v14[3] = &unk_278F89E80;
    v15 = appSpecificSettingsEntity;
    v16 = blockCopy;
    [newManagedObjectContext performBlockAndWait:v14];
  }

  else if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager _perModeSettingsMOsOfType:modeIdentifier:processBlock:];
  }
}

void __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*(a1 + 32)];
  v15 = 0;
  v3 = [v2 execute:&v15];
  v4 = v15;
  if (v4)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke_cold_1();
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = objc_autoreleasePoolPush();
          (*(*(a1 + 40) + 16))(*(a1 + 40));
          objc_autoreleasePoolPop(v10);
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)idsSyncEngine:(id)engine didFetchRecord:(id)record
{
  recordCopy = record;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager idsSyncEngine:didFetchRecord:];
  }
}

- (void)idsSyncEngine:(id)engine prepareRecordToSave:(id)save
{
  v12 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  v6 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = saveCopy;
    _os_log_impl(&dword_24912E000, v6, OS_LOG_TYPE_DEFAULT, "prepareRecordToSave: %@", &v10, 0xCu);
  }

  recordID = [saveCopy recordID];
  identifier = [recordID identifier];

  v9 = [(DNDSAppSpecificSettingsManager *)self appSpecificSettingsDictinariesForModeIdentifier:identifier];
  [saveCopy setObject:v9 forKey:@"DNDSAppSpecificSettingsRecord"];
}

- (id)appSpecificSettingsDictinariesForModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  array = [MEMORY[0x277CBEB18] array];
  store = [(DNDSAppSpecificSettingsManager *)self store];
  newManagedObjectContext = [store newManagedObjectContext];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__DNDSAppSpecificSettingsManager_appSpecificSettingsDictinariesForModeIdentifier___block_invoke;
  v14[3] = &unk_278F89E30;
  v15 = newManagedObjectContext;
  v16 = identifierCopy;
  v8 = array;
  v17 = v8;
  v9 = identifierCopy;
  v10 = newManagedObjectContext;
  [v10 performBlockAndWait:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

void __82__DNDSAppSpecificSettingsManager_appSpecificSettingsDictinariesForModeIdentifier___block_invoke(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 managedObjectModel];
  v4 = *(a1 + 40);
  v39 = @"MODE_ID";
  v40[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v6 = [v3 fetchRequestFromTemplateWithName:@"PerModeSettingsForMode" substitutionVariables:v5];

  v7 = +[DNDPerAppSettingsMO entity];
  [v6 setEntity:v7];

  v37 = 0;
  v8 = [v6 execute:&v37];
  v9 = v37;
  if (v9)
  {
    if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_ERROR))
    {
      __76__DNDSAppSpecificSettingsManager__allPerModeSettingsMOsOfType_processBlock___block_invoke_cold_1();
    }
  }

  else
  {
    v27 = v8;
    v28 = v6;
    v30 = a1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0x277CBE000uLL;
      v13 = *v34;
      v29 = *v34;
      do
      {
        v14 = 0;
        v15 = sel_dictionaryRepresentationForAppSpecificSettings_;
        v31 = v11;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v33 + 1) + 8 * v14);
          v17 = [*(v12 + 2872) dictionaryWithCapacity:4];
          v18 = [v16 dnd_settingsType];
          if (objc_opt_respondsToSelector())
          {
            v19 = NSStringFromClass(v18);
            v20 = [v16 identifier];
            [v16 application];
            v21 = v15;
            v23 = v22 = v12;
            v24 = [v23 bundleIdentifier];

            v25 = [(objc_class *)v18 appSpecificSettingsForManagedObject:v16];
            v26 = [(objc_class *)v18 dictionaryRepresentationForAppSpecificSettings:v25];
            [v17 setObject:v24 forKeyedSubscript:@"DNDSAppSpecificSettingsApp"];
            [v17 setObject:v20 forKeyedSubscript:@"DNDSAppSpecificSettingsIdentifier"];
            [v17 setObject:v19 forKeyedSubscript:@"DNDSAppSpecificSettingsType"];
            [v17 setObject:v26 forKeyedSubscript:@"DNDSAppSpecificSettingsPayload"];
            [*(v30 + 48) addObject:v17];

            v12 = v22;
            v15 = v21;

            v13 = v29;
            v11 = v31;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    v8 = v27;
    v6 = v28;
    v9 = 0;
  }
}

- (void)idsSyncEngine:(id)engine recordWithIDWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager idsSyncEngine:recordWithIDWasDeleted:];
  }
}

- (void)purgeRecordsForIDSSyncEngine:(id)engine
{
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_FAULT))
  {
    [DNDSAppSpecificSettingsManager purgeRecordsForIDSSyncEngine:];
  }
}

- (id)recordIDsForIDSSyncEngine:(id)engine
{
  v4 = DNDSLogAppSpecificSettingsManager;
  if (os_log_type_enabled(DNDSLogAppSpecificSettingsManager, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v4, OS_LOG_TYPE_DEFAULT, "recordIDsForIDSSyncEngine", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  store = [(DNDSAppSpecificSettingsManager *)self store];
  newManagedObjectContext = [store newManagedObjectContext];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__DNDSAppSpecificSettingsManager_recordIDsForIDSSyncEngine___block_invoke;
  v13[3] = &unk_278F89F48;
  v14 = newManagedObjectContext;
  v8 = array;
  v15 = v8;
  v9 = newManagedObjectContext;
  [v9 performBlockAndWait:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __60__DNDSAppSpecificSettingsManager_recordIDsForIDSSyncEngine___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[DNDFocusModeMO fetchRequest];
  v3 = *(a1 + 32);
  v21 = 0;
  v16 = v2;
  v4 = [v3 executeFetchRequest:? error:?];
  v15 = v21;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = *(a1 + 40);
        v12 = [DNDSIDSRecordID alloc];
        v13 = [v10 identifier];
        v14 = [(DNDSIDSRecordID *)v12 initWithIdentifier:v13 zone:@"DNDSAppSpecificSettings"];
        [v11 addObject:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_modesToSave:(id)save modesToDelete:(id)delete
{
  v32 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(saveCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = saveCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v26 + 1) + 8 * v12) zone:@"DNDSAppSpecificSettings"];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(deleteCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = deleteCopy;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[DNDSIDSRecordID alloc] initWithIdentifier:*(*(&v22 + 1) + 8 * v19) zone:@"DNDSAppSpecificSettings"];
        [v14 addObject:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [(DNDSIDSSyncEngine *)self->_idsSyncEngine addRecordIDsToSave:v7 recordIDsToDelete:v14];
}

- (DNDSAppSpecificSettingsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_error___block_invoke_cold_1(uint8_t *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_24912E000, v6, OS_LOG_TYPE_ERROR, "Unexpected result type for appSpecificSettings: %{public}@", a1, 0xCu);
}

- (void)_perModeSettingsMOsOfType:modeIdentifier:processBlock:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __88__DNDSAppSpecificSettingsManager__perModeSettingsMOsOfType_modeIdentifier_processBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Error querying settings: %{public}@", v2, v3, v4, v5);
}

void __103__DNDSAppSpecificSettingsManager_appSpecificSettingsOfType_modeIdentifier_applicationIdentifier_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to fetch settings: %{public}@", v2, v3, v4, v5);
}

- (void)setModeSpecificSettings:identifier:type:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to fetch existing settings: %{public}@", v2, v3, v4, v5);
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_2(void *a1, uint64_t a2)
{
  v2 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_6(&dword_24912E000, v5, v6, "Unexpected class for managed object: %{public}@", v7, v8, v9, v10);
}

void __95__DNDSAppSpecificSettingsManager_setModeSpecificSettings_identifier_type_modeIdentifier_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to commit settings: %{public}@", v2, v3, v4, v5);
}

- (void)setAppSpecificSettings:identifier:type:applicationIdentifier:modeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)removeModeSpecificSettingsForModeIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __84__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifier_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to remove settings for mode: %{public}@", v2, v3, v4, v5);
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to fetch modes to delete: %{public}@", v2, v3, v4, v5);
}

void __105__DNDSAppSpecificSettingsManager_removeModeSpecificSettingsForModeIdentifiersNotInModeIdentifiers_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to commit changes for modes not in: %{public}@", v2, v3, v4, v5);
}

- (void)removeAppSpecificSettingsForApplicationIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__DNDSAppSpecificSettingsManager_removeAppSpecificSettingsForApplicationIdentifier_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "Failed to remove settings for app: %{public}@", v2, v3, v4, v5);
}

void __64__DNDSAppSpecificSettingsManager__allAppSpecificSettingsOfType___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_24912E000, v2, OS_LOG_TYPE_ERROR, "Unexpected result type for appSpecificSettings: %{public}@", v5, 0xCu);
}

- (void)idsSyncEngine:didFetchRecord:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)idsSyncEngine:recordWithIDWasDeleted:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)purgeRecordsForIDSSyncEngine:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end