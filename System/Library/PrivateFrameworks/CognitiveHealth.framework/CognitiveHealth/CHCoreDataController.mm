@interface CHCoreDataController
- (NSPersistentContainer)persistentContainer;
- (void)addPersistentStoreFromDatabase;
@end

@implementation CHCoreDataController

- (void)addPersistentStoreFromDatabase
{
  v26[1] = *MEMORY[0x277D85DE8];
  persistentStoreCoordinator = [(NSPersistentContainer *)self->_persistentContainer persistentStoreCoordinator];
  v3 = objc_alloc_init(CHMobileAssetBridge);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__176;
  v23 = __Block_byref_object_dispose__177;
  v24 = 0;
  v4 = dispatch_semaphore_create(0);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__CHCoreDataController_addPersistentStoreFromDatabase__block_invoke;
  v16[3] = &unk_278DE5050;
  v18 = &v19;
  v5 = v4;
  v17 = v5;
  [(CHMobileAssetBridge *)v3 autoAssetLockContentForAssetType:@"com.apple.MobileAsset.CognitiveHealth" assetSpecifier:@"SupplementalCategoryDatabase" lockReason:@"Locking to load sqlite file into CoreData" completion:v16];
  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  if (v20[5])
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v8 = [v7 URLByAppendingPathComponent:@"CustomCategoryMapping.sqlite"];

    NSLog(&cfstr_CustomCateogry.isa, v8);
    v9 = [persistentStoreCoordinator persistentStoreForURL:v8];
    LODWORD(v7) = v9 == 0;

    if (v7)
    {
      v25 = *MEMORY[0x277CBE2B0];
      v26[0] = MEMORY[0x277CBEC38];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v11 = *MEMORY[0x277CBE2E8];
      v15 = 0;
      v12 = [persistentStoreCoordinator addPersistentStoreWithType:v11 configuration:0 URL:v8 options:v10 error:&v15];
      v13 = v15;

      if (!v12)
      {
        userInfo = [v13 userInfo];
        NSLog(&cfstr_UnresolvedErro.isa, v13, userInfo);
      }
    }

    else
    {
      NSLog(&cfstr_PersistentStor.isa);
    }
  }

  _Block_object_dispose(&v19, 8);
}

void __54__CHCoreDataController_addPersistentStoreFromDatabase__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  NSLog(&cfstr_AssetDirectory.isa, v7, [a3 count], v8);

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v11 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (NSPersistentContainer)persistentContainer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_persistentContainer)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"CustomCategoryModel" withExtension:@"momd"];
    v5 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v4];
    v6 = [objc_alloc(MEMORY[0x277CBE4A0]) initWithName:@"CSVToCoreData" managedObjectModel:v5];
    persistentContainer = selfCopy->_persistentContainer;
    selfCopy->_persistentContainer = v6;

    [(NSPersistentContainer *)selfCopy->_persistentContainer loadPersistentStoresWithCompletionHandler:&__block_literal_global_193];
  }

  [(CHCoreDataController *)selfCopy addPersistentStoreFromDatabase];
  objc_sync_exit(selfCopy);

  v8 = selfCopy->_persistentContainer;

  return v8;
}

void __43__CHCoreDataController_persistentContainer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = [v3 description];
    v4 = [v3 userInfo];

    NSLog(&cfstr_FailedToLoadPe.isa, v5, v4);
  }
}

@end