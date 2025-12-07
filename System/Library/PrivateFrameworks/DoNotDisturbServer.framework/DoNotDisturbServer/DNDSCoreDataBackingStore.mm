@interface DNDSCoreDataBackingStore
- (id)_initWithURL:(id)l;
- (id)newManagedObjectContext;
- (void)setupPersistentStoreIfNeeded;
@end

@implementation DNDSCoreDataBackingStore

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = DNDSCoreDataBackingStore;
  v6 = [(DNDSCoreDataBackingStore *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_setupLock._os_unfair_lock_opaque = 0;
    if (lCopy)
    {
      if (os_variant_has_internal_content())
      {
        objc_storeStrong(p_isa + 3, l);
      }
    }
  }

  return p_isa;
}

- (void)setupPersistentStoreIfNeeded
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (self->_persistentContainer)
  {
    return;
  }

  v3 = +[DNDSKeybag sharedInstance];
  hasUnlockedSinceBoot = [v3 hasUnlockedSinceBoot];

  if (hasUnlockedSinceBoot)
  {
    os_unfair_lock_lock(&self->_setupLock);
    if (self->_persistentContainer)
    {

      os_unfair_lock_unlock(&self->_setupLock);
      return;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 URLForResource:@"DNDSettingsModel" withExtension:@"momd"];

    v8 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v7];
    dnds_backingStoreRootDirectoryURL = [MEMORY[0x277CBEBC0] dnds_backingStoreRootDirectoryURL];
    v10 = [dnds_backingStoreRootDirectoryURL URLByAppendingPathComponent:@"Settings.sqlite"];

    if (os_variant_has_internal_content())
    {
      testDatabaseURL = self->_testDatabaseURL;
      if (testDatabaseURL)
      {
        lastPathComponent = [v10 lastPathComponent];
        v13 = [(NSURL *)testDatabaseURL URLByAppendingPathComponent:lastPathComponent];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
        v27 = 0;
        [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v27];
        v16 = v27;

        if (v16)
        {
          v17 = DNDSLogSettings;
          if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_ERROR))
          {
            [(DNDSCoreDataBackingStore *)v17 setupPersistentStoreIfNeeded];
          }

          os_unfair_lock_unlock(&self->_setupLock);
          goto LABEL_18;
        }

        v10 = v13;
      }
    }

    v18 = MEMORY[0x277CBE4E0];
    filePathURL = [v10 filePathURL];
    v16 = [v18 persistentStoreDescriptionWithURL:filePathURL];

    [v16 setType:*MEMORY[0x277CBE2E8]];
    [v16 setShouldInferMappingModelAutomatically:1];
    [v16 setShouldMigrateStoreAutomatically:1];
    [v16 setShouldAddStoreAsynchronously:0];
    [v16 setOption:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CBE270]];
    [v16 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE210]];
    v20 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"donotdisturbd" managedObjectModel:v8];
    v29[0] = v16;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [v20 setPersistentStoreDescriptions:v21];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke;
    v23[3] = &unk_278F8AA78;
    v24 = v20;
    v13 = v10;
    v25 = v13;
    selfCopy = self;
    v22 = v20;
    [v22 loadPersistentStoresWithCompletionHandler:v23];
    os_unfair_lock_unlock(&self->_setupLock);

LABEL_18:
    return;
  }

  v5 = DNDSLogSettings;
  if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24912E000, v5, OS_LOG_TYPE_DEFAULT, "Attempt to load persistent store before first unlock.", buf, 2u);
  }
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = DNDSLogSettings;
  if (v6)
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
    {
      __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_1(v6, v7);
    }

    v8 = [*(a1 + 32) persistentStoreCoordinator];
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277CBE2E8];
    v17 = 0;
    [v8 destroyPersistentStoreAtURL:v9 withType:v10 options:0 error:&v17];
    v11 = v17;

    v12 = DNDSLogSettings;
    if (v11)
    {
      if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_FAULT))
      {
        __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_2(v11, v12);
      }
    }

    else if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138412290;
      v19 = v16;
      _os_log_impl(&dword_24912E000, v12, OS_LOG_TYPE_DEFAULT, "Destroyed persistent store to retry load. url=%@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(DNDSLogSettings, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_24912E000, v7, OS_LOG_TYPE_DEFAULT, "Loaded persistent store with description: %@", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v15 = v13;
    v11 = *(v14 + 16);
    *(v14 + 16) = v15;
  }
}

- (id)newManagedObjectContext
{
  [(DNDSCoreDataBackingStore *)self setupPersistentStoreIfNeeded];
  newBackgroundContext = [(NSPersistentContainer *)self->_persistentContainer newBackgroundContext];
  [(NSManagedObjectContext *)newBackgroundContext setMergePolicy:*MEMORY[0x277CBE1C8]];
  return newBackgroundContext;
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Error adding persistent store: %@", &v2, 0xCu);
}

void __56__DNDSCoreDataBackingStore_setupPersistentStoreIfNeeded__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_24912E000, a2, OS_LOG_TYPE_FAULT, "Failed to destroy persistent store: %@", &v2, 0xCu);
}

@end