@interface NoteContext
+ (BOOL)databaseIsCorrupt:(id)corrupt;
+ (BOOL)isDataProtectionError:(id)error;
+ (BOOL)isTooLowOnDiskSpace;
+ (BOOL)shouldLogIndexing;
+ (NSFetchRequest)newFetchRequestForNotes;
+ (NSManagedObjectModel)managedObjectModel;
+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context;
+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context fetchLimit:(unint64_t)limit;
+ (id)backupsDirectoryURL;
+ (id)generateGUID;
+ (id)mainContextObjectFromObject:(id)object;
+ (id)newFetchRequestForAccounts;
+ (id)newFetchRequestForStores;
+ (id)newManagedObjectContext;
+ (id)persistentStoreCoordinator;
+ (id)searchIndexerDataSource;
+ (id)sharedContext;
+ (id)storeOptions;
+ (id)urlForPersistentStore;
+ (id)visibleNotesIncludingEmptyBodyContentPredicate;
+ (id)visibleNotesPredicate;
+ (unint64_t)countOfVisibleNotesInCollection:(id)collection;
+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)content;
+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate includingNoteWithoutBodyContent:(BOOL)content context:(id)context;
+ (void)backupPersistentStore:(id)store;
+ (void)clearTestsNotesRootPath;
+ (void)isTooLowOnDiskSpace;
+ (void)removeConflictingSqliteAndIdxFiles;
+ (void)removeSqliteAndIdxFiles;
- (BOOL)deleteAccount:(id)account;
- (BOOL)deleteStore:(id)store;
- (BOOL)forceDeleteAccount:(id)account;
- (BOOL)hasMultipleEnabledStores;
- (BOOL)save:(id *)save;
- (BOOL)saveSilently:(id *)silently;
- (BOOL)setUpCoreDataStack;
- (BOOL)setUpLastIndexTid;
- (BOOL)setUpLocalAccountAndStore;
- (BOOL)shouldDisableLocalStore;
- (NSManagedObjectContext)managedObjectContext;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NoteContext)init;
- (NoteContext)initWithAccountUtilities:(id)utilities inMigrator:(BOOL)migrator isMainContext:(BOOL)context usePrivateQueue:(BOOL)queue;
- (NoteContext)initWithPrivateQueue;
- (NoteContext)initWithPrivateQueue:(BOOL)queue;
- (id)_notePropertyObjectForKey:(id)key;
- (id)accountForAccountId:(id)id;
- (id)allAccountsAsFaults:(BOOL)faults prefechedRelationshipKeyPaths:(id)paths;
- (id)allNotes;
- (id)allNotesInCollection:(id)collection;
- (id)allNotesMatchingPredicate:(id)predicate;
- (id)allNotesWithoutBodiesInCollection:(id)collection;
- (id)allStores;
- (id)allVisibleNotesInCollection:(id)collection sorted:(BOOL)sorted;
- (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted;
- (id)collectionForInfo:(id)info;
- (id)collectionForObjectID:(id)d;
- (id)defaultStoreForNewNote;
- (id)faultedInStoresForAccounts:(id)accounts;
- (id)getNextIdObject;
- (id)initForMainContext;
- (id)initForMigrator;
- (id)liveNotesNeedingBodiesPredicate;
- (id)localAccount;
- (id)localStore;
- (id)mostRecentlyModifiedNoteInCollection:(id)collection;
- (id)newFRCForAccountsWithDelegate:(id)delegate;
- (id)newFRCForCollection:(id)collection delegate:(id)delegate performFetch:(BOOL)fetch;
- (id)newFRCForFetchRequest:(id)request delegate:(id)delegate performFetch:(BOOL)fetch;
- (id)newFRCForStoresWithDelegate:(id)delegate;
- (id)newFetchRequestForNotes;
- (id)newlyAddedAccount;
- (id)newlyAddedAttachment;
- (id)newlyAddedNote;
- (id)newlyAddedNoteWithGUID:(id)d;
- (id)newlyAddedStore;
- (id)newlyCreatedNoteFromDefaultStore;
- (id)nextIndex;
- (id)noteChangeWithType:(int)type store:(id)store;
- (id)noteForGUID:(id)d;
- (id)noteForObjectID:(id)d;
- (id)notesForIntegerIds:(id)ids;
- (id)propertyValueForKey:(id)key;
- (id)storeForExternalIdentifier:(id)identifier;
- (id)storeForObjectID:(id)d;
- (id)storesInCollection:(id)collection;
- (id)visibleNoteForObjectID:(id)d;
- (id)visibleNotesForIntegerIds:(id)ids;
- (id)visibleNotesPredicate;
- (unint64_t)countOfNotes;
- (unint64_t)countOfNotesInCollection:(id)collection;
- (unint64_t)countOfNotesMatchingPredicate:(id)predicate;
- (unint64_t)countOfStores;
- (unint64_t)countOfVisibleNotesInCollection:(id)collection;
- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate;
- (void)_createLocalAccount:(id *)account andStore:(id *)store;
- (void)allStores;
- (void)batchFaultNotes:(id)notes;
- (void)cleanUpLocks;
- (void)countOfStores;
- (void)dealloc;
- (void)deleteChanges:(id)changes;
- (void)deleteNote:(id)note;
- (void)deleteNoteRegardlessOfConstraints:(id)constraints;
- (void)forceSetUpUniqueObjects;
- (void)getNextIdObject;
- (void)handleMigration;
- (void)invalidate;
- (void)localAccount;
- (void)managedObjectContext;
- (void)managedObjectContextWillSaveNotification:(id)notification;
- (void)nextIndex;
- (void)postNotesChangedExternally;
- (void)receiveDarwinNotificationWithChangeLogging:(BOOL)logging;
- (void)setHasPriorityInSaveConflicts:(BOOL)conflicts;
- (void)setPropertyValue:(id)value forKey:(id)key;
- (void)setUpLastIndexTid;
- (void)setUpLocalAccountAndStore;
- (void)setUpUniqueObjects;
- (void)sortNotes:(id)notes;
- (void)tearDownCoreDataStack;
- (void)trackChanges:(id)changes;
- (void)updateForRecentChanges;
@end

@implementation NoteContext

+ (id)sharedContext
{
  if (sharedContext_once != -1)
  {
    +[NoteContext(SharedContext) sharedContext];
  }

  v3 = sharedContext_sharedContext;

  return v3;
}

uint64_t __43__NoteContext_SharedContext__sharedContext__block_invoke()
{
  sharedContext_sharedContext = [[NoteContext alloc] initForMainContext];

  return MEMORY[0x2821F96F8]();
}

- (id)initForMainContext
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0 isMainContext:1 usePrivateQueue:0];

  return v4;
}

+ (void)removeConflictingSqliteAndIdxFiles
{
  v5 = NoteStoreCopyPath();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v5];

  if (v4)
  {
    [self removeSqliteAndIdxFiles];
  }
}

+ (NSManagedObjectModel)managedObjectModel
{
  if (managedObjectModel_onceToken != -1)
  {
    +[NoteContext managedObjectModel];
  }

  v3 = managedObjectModel__defaultNotesModel;

  return v3;
}

- (BOOL)setUpCoreDataStack
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextWillSetUpCoreDataStackNotification" object:self];

  [objc_opt_class() removeConflictingSqliteAndIdxFiles];
  managedObjectModel = [objc_opt_class() managedObjectModel];

  if (managedObjectModel && ([objc_opt_class() persistentStoreCoordinator], v5 = objc_claimAutoreleasedReturnValue(), v5, v5) && (-[NoteContext managedObjectContext](self, "managedObjectContext"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __33__NoteContext_setUpCoreDataStack__block_invoke;
    v23[3] = &unk_2799AC828;
    v23[4] = self;
    v7 = MEMORY[0x25F88B080](v23);
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    concurrencyType = [managedObjectContext concurrencyType];

    if (concurrencyType)
    {
      managedObjectContext2 = [(NoteContext *)self managedObjectContext];
      [managedObjectContext2 performBlockAndWait:v7];
    }

    else
    {
      v7[2](v7);
    }

    if (!self->_inMigrator)
    {
      if ([(NoteContext *)self shouldObserveDarwinNotifications])
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __ReceiveNotification, @"NoteContextDarwinNotificationWithLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
        v14 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(v14, self, __ReceiveNotification, @"NoteContextDarwinNotificationWithoutLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v15 = objc_alloc(MEMORY[0x277D36210]);
      managedObjectContext3 = [(NoteContext *)self managedObjectContext];
      v17 = [v15 initWithStore:0 context:managedObjectContext3];
      [(NoteContext *)self setMocUpdater:v17];

      v18 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel_postNotesChangedExternally delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
      [(NoteContext *)self setExternalChangeNotificationDelayer:v18];
    }

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v20 = *MEMORY[0x277CBE1C0];
    managedObjectContext4 = [(NoteContext *)self managedObjectContext];
    [defaultCenter2 addObserver:self selector:sel_managedObjectContextWillSaveNotification_ name:v20 object:managedObjectContext4];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

    return 1;
  }

  else
  {
    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 postNotificationName:@"NoteContextDidSetUpCoreDataStackNotification" object:self];

    return 0;
  }
}

void __33__NoteContext_managedObjectModel__block_invoke()
{
  v5 = NoteContextManagedObjectModelPath();
  v0 = objc_alloc(MEMORY[0x277CBE450]);
  v1 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v2 = [v0 initWithContentsOfURL:v1];
  v3 = managedObjectModel__defaultNotesModel;
  managedObjectModel__defaultNotesModel = v2;

  if (managedObjectModel__defaultNotesModel)
  {
  }

  else
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __33__NoteContext_managedObjectModel__block_invoke_cold_1();
    }

    __break(1u);
  }
}

+ (id)urlForPersistentStore
{
  v2 = MEMORY[0x277CBEBC0];
  pathForPersistentStore = [self pathForPersistentStore];
  v4 = [v2 fileURLWithPath:pathForPersistentStore];

  return v4;
}

+ (id)storeOptions
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277CBE178];
  v7[0] = *MEMORY[0x277CBE1D8];
  v7[1] = v3;
  v8[0] = MEMORY[0x277CBEC38];
  v8[1] = MEMORY[0x277CBEC38];
  v7[2] = *MEMORY[0x277CBE240];
  fileProtectionOption = [objc_opt_class() fileProtectionOption];
  v7[3] = *MEMORY[0x277CBE210];
  v8[2] = fileProtectionOption;
  v8[3] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];

  return v5;
}

+ (id)persistentStoreCoordinator
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (persistentStoreCoordinator_onceToken != -1)
  {
    dispatch_once(&persistentStoreCoordinator_onceToken, block);
  }

  v2 = persistentStoreCoordinator__persistentStoreCoordinator;

  return v2;
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) urlForPersistentStore];
  v36 = [*v2 managedObjectModel];
  obj = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v36];
  v4 = [*v2 storeOptions];
  v5 = [v4 mutableCopy];

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (ICUseCoreDataCoreSpotlightIntegration())
  {
    v6 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v3];
    [v6 setType:*MEMORY[0x277CBE2E8]];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = [v5 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v8)
    {
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:{v11, v36}];
          [v6 setOption:v12 forKey:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = objc_opt_class();
  objc_sync_enter(v13);
  v14 = objc_alloc_init(NotesMigrationManager);
  v15 = ICUseCoreDataCoreSpotlightIntegration();
  v16 = *MEMORY[0x277CBE2E8];
  if (v15)
  {
    v44 = 0;
    v17 = [(NotesMigrationManager *)v14 migrateNotesStoreAtURL:v3 storeType:v16 managedObjectModel:v36 options:v5 error:&v44];
    v18 = v44;
    *(v50 + 24) = v17;
    if (v6)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke_2;
      v43[3] = &unk_2799AC898;
      v43[4] = &v49;
      [obj addPersistentStoreWithDescription:v6 completionHandler:v43];
    }
  }

  else
  {
    v19 = [*(a1 + 32) managedObjectModel];
    v42 = 0;
    v20 = [(NotesMigrationManager *)v14 migrateNotesStoreAtURL:v3 storeType:v16 managedObjectModel:v19 options:v5 error:&v42];
    v21 = v42;
    *(v50 + 24) = v20;

    v41 = v21;
    v22 = [obj addPersistentStoreWithType:v16 configuration:0 URL:v3 options:v5 error:&v41];
    v23 = v41;

    *(v50 + 24) = v22 != 0;
    v18 = v23;
  }

  if ((v50[3] & 1) == 0)
  {
    if ([*(a1 + 32) isTooLowOnDiskSpace])
    {
      v24 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_5();
      }
    }

    else
    {
      v25 = [*(a1 + 32) isDataProtectionError:v18];
      v26 = os_log_create("com.apple.notes", "HTML");
      v24 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25C69C000, v24, OS_LOG_TYPE_INFO, "Data protection prevented loading persistent store, because device has not been unlocked since boot", buf, 2u);
        }
      }

      else
      {
        v27 = v26;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          [v18 userInfo];
          objc_claimAutoreleasedReturnValue();
          __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_1();
        }

        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"+[NoteContext persistentStoreCoordinator]_block_invoke" simulateCrash:1 showAlert:1 format:@"Failed to open HTML notes database."];
        v28 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *v40 = 0;
          _os_log_impl(&dword_25C69C000, v28, OS_LOG_TYPE_INFO, "Destroying old persistent store and creating a new one", v40, 2u);
        }

        [*(a1 + 32) backupPersistentStore:obj];
        v29 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_2();
        }

        if (ICUseCoreDataCoreSpotlightIntegration())
        {
          if (v6)
          {
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __41__NoteContext_persistentStoreCoordinator__block_invoke_236;
            v39[3] = &unk_2799AC898;
            v39[4] = &v49;
            [obj addPersistentStoreWithDescription:v6 completionHandler:v39];
          }
        }

        else
        {
          v30 = *MEMORY[0x277CBE2E8];
          v38 = v18;
          v31 = [obj addPersistentStoreWithType:v30 configuration:0 URL:v3 options:v5 error:&v38];
          v32 = v38;

          *(v50 + 24) = v31 != 0;
          v18 = v32;
        }

        v33 = os_log_create("com.apple.notes", "HTML");
        v24 = v33;
        if (v18)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_3();
          }
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_4();
          }

          v18 = 0;
        }
      }
    }
  }

  objc_sync_exit(v13);

  if (*(v50 + 24) == 1)
  {
    objc_storeStrong(&persistentStoreCoordinator__persistentStoreCoordinator, obj);
    if (ICUseCoreDataCoreSpotlightIntegration())
    {
      v34 = [objc_alloc(MEMORY[0x277D361C0]) initForStoreWithDescription:v6 coordinator:obj indexingPriority:1];
      if (v34)
      {
        v35 = [MEMORY[0x277D361A8] sharedReindexer];
        [v35 registerCoreDataCoreSpotlightDelegate:v34];

        [v34 startSpotlightIndexing];
      }
    }
  }

  _Block_object_dispose(&v49, 8);
}

- (NSManagedObjectContext)managedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  if (managedObjectContext)
  {
    v3 = managedObjectContext;
    goto LABEL_17;
  }

  persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
  if (persistentStoreCoordinator)
  {
    if ([(NoteContext *)self isMainContext])
    {
      v6 = objc_alloc(MEMORY[0x277CBE440]);
      v7 = 2;
    }

    else
    {
      if (![(NoteContext *)self usePrivateQueue])
      {
        v8 = objc_alloc_init(MEMORY[0x277CBE440]);
        goto LABEL_10;
      }

      v6 = objc_alloc(MEMORY[0x277CBE440]);
      v7 = 1;
    }

    v8 = [v6 initWithConcurrencyType:v7];
LABEL_10:
    v9 = self->_managedObjectContext;
    self->_managedObjectContext = v8;

    [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
  }

  [(NSManagedObjectContext *)self->_managedObjectContext setUndoManager:0];
  [(NSManagedObjectContext *)self->_managedObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
  [(NSManagedObjectContext *)self->_managedObjectContext setStalenessInterval:0.0];
  [(NSManagedObjectContext *)self->_managedObjectContext _setDelegate:self];
  if (self->_managedObjectContext)
  {
    searchIndexerDataSource = [objc_opt_class() searchIndexerDataSource];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NoteContext managedObjectContext];
    }
  }

  v3 = self->_managedObjectContext;

LABEL_17:

  return v3;
}

+ (id)searchIndexerDataSource
{
  if (searchIndexerDataSource_onceToken != -1)
  {
    +[NoteContext searchIndexerDataSource];
  }

  v3 = searchIndexerDataSource_sDataSource;

  return v3;
}

void __38__NoteContext_searchIndexerDataSource__block_invoke()
{
  v4 = [MEMORY[0x277D36248] sharedIndexer];
  v0 = objc_alloc_init(ICHTMLSearchIndexerDataSource);
  v1 = searchIndexerDataSource_sDataSource;
  searchIndexerDataSource_sDataSource = v0;

  [v4 addDataSource:searchIndexerDataSource_sDataSource];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  if ((([v3 isEqualToString:@"dataaccessd"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"exchangesyncd")) && (objc_msgSend(v4, "isObservingChanges") & 1) == 0)
  {
    [v4 setDisabled:0];
    [v4 startObservingChanges];
  }
}

uint64_t __33__NoteContext_setUpCoreDataStack__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUpUniqueObjects];
  v2 = *(a1 + 32);

  return [v2 handleMigration];
}

- (void)setUpUniqueObjects
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleMigration
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Error: Failed to delete earlier notes.db: %@, %@", v4, v5);
}

- (NoteContext)initWithPrivateQueue
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0 isMainContext:0 usePrivateQueue:1];

  return v4;
}

+ (id)newFetchRequestForAccounts
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Account"];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setSortDescriptors:v4];

  return v2;
}

+ (id)newFetchRequestForStores
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Store"];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setSortDescriptors:v4];

  return v2;
}

- (void)dealloc
{
  [(NoteContext *)self tearDownCoreDataStack];
  v3.receiver = self;
  v3.super_class = NoteContext;
  [(NoteContext *)&v3 dealloc];
}

- (void)tearDownCoreDataStack
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  localStore = self->_localStore;
  self->_localStore = 0;

  localAccount = self->_localAccount;
  self->_localAccount = 0;

  nextId = self->_nextId;
  self->_nextId = 0;

  nextIdContext = self->_nextIdContext;
  self->_nextIdContext = 0;

  managedObjectContext = self->_managedObjectContext;
  self->_managedObjectContext = 0;
}

+ (BOOL)shouldLogIndexing
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ShouldLogIndexing"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)databaseIsCorrupt:(id)corrupt
{
  corruptCopy = corrupt;
  userInfo = [corruptCopy userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277CBE2C8]];

  if (v5)
  {
    v6 = [v5 intValue] == 11;
  }

  else
  {
    v6 = 0;
  }

  if ([corruptCopy code] == 259)
  {
    domain = [corruptCopy domain];
    v8 = [domain isEqual:*MEMORY[0x277CCA050]];

    v6 |= v8;
  }

  return v6 & 1;
}

+ (void)clearTestsNotesRootPath
{
  v2 = s_testsNotesRootPath;
  s_testsNotesRootPath = 0;
}

+ (id)generateGUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)_createLocalAccount:(id *)account andStore:(id *)store
{
  obj = [(NoteContext *)self newlyAddedAccount];
  accountUtilities = [(NoteContext *)self accountUtilities];
  localAccountDisplayName = [accountUtilities localAccountDisplayName];
  [obj setName:localAccountDisplayName];

  [obj setAccountIdentifier:@"local://local/account"];
  newlyAddedStore = [(NoteContext *)self newlyAddedStore];
  [newlyAddedStore setName:@"LOCAL_NOTES_STORE"];
  [newlyAddedStore setExternalIdentifier:@"local://local/store"];
  [newlyAddedStore setAccount:obj];
  [obj setDefaultStore:newlyAddedStore];
  if (account)
  {
    objc_storeStrong(account, obj);
  }

  if (store)
  {
    objc_storeStrong(store, newlyAddedStore);
  }
}

- (BOOL)setUpLocalAccountAndStore
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Account" inManagedObjectContext:managedObjectContext];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
  [v3 setPredicate:v7];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v34 = 0;
  v9 = [managedObjectContext2 executeFetchRequest:v3 error:&v34];
  v10 = v34;

  v11 = v10 == 0;
  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext setUpLocalAccountAndStore];
    }

    managedObjectContext3 = v12;
LABEL_18:

    goto LABEL_19;
  }

  if ([v9 count] >= 2)
  {
    v14 = os_log_create("com.apple.notes", "Accounts");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(NoteContext *)v9 setUpLocalAccountAndStore];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = v9;
    v15 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v12);
          }

          if (v17)
          {
            [(NoteContext *)self forceDeleteAccount:*(*(&v30 + 1) + 8 * i)];
          }

          v17 = 1;
        }

        v16 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v29 = 0;
    v9 = [managedObjectContext3 executeFetchRequest:v3 error:&v29];
    v10 = v29;
    goto LABEL_18;
  }

  v10 = 0;
  v11 = 0;
LABEL_19:
  p_localAccount = &self->_localAccount;
  localAccount = self->_localAccount;
  self->_localAccount = 0;

  p_localStore = &self->_localStore;
  localStore = self->_localStore;
  self->_localStore = 0;

  if ([v9 count])
  {
    lastObject = [v9 lastObject];
    v25 = *p_localAccount;
    *p_localAccount = lastObject;

    defaultStore = [*p_localAccount defaultStore];
    v27 = *p_localStore;
    *p_localStore = defaultStore;
  }

  else
  {
    [(NoteContext *)self _createLocalAccount:&self->_localAccount andStore:&self->_localStore];
    v11 = 1;
  }

  return v11;
}

- (BOOL)setUpLastIndexTid
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Property" inManagedObjectContext:managedObjectContext];

  [v3 setEntity:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", @"LastTransactionID"];
  [v3 setPredicate:v7];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v35 = 0;
  v9 = [managedObjectContext2 executeFetchRequest:v3 error:&v35];
  v10 = v35;

  v11 = v10 == 0;
  if (v10)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext setUpLastIndexTid];
    }
  }

  else
  {
    v14 = [v9 count];
    v15 = v14 > 1;
    if (v14 >= 2)
    {
      v28 = v14 > 1;
      v29 = v10 == 0;
      v16 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(NoteContext *)v9 setUpLastIndexTid];
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v9;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v17);
            }

            if (v20)
            {
              v23 = *(*(&v31 + 1) + 8 * i);
              managedObjectContext3 = [(NoteContext *)self managedObjectContext];
              [managedObjectContext3 deleteObject:v23];
            }

            v20 = 1;
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v19);
      }

      managedObjectContext4 = [(NoteContext *)self managedObjectContext];
      v30 = 0;
      v9 = [managedObjectContext4 executeFetchRequest:v3 error:&v30];
      v10 = v30;

      if (v10)
      {
        v11 = 1;
        goto LABEL_6;
      }

      v15 = v28;
      v11 = v29;
    }

    if ([v9 count])
    {
      v10 = 0;
      v11 = v15;
      goto LABEL_6;
    }

    v26 = MEMORY[0x277CBE408];
    managedObjectContext5 = [(NoteContext *)self managedObjectContext];
    v12 = [v26 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:managedObjectContext5];

    [v12 setPropertyKey:@"LastTransactionID"];
    v10 = 0;
  }

LABEL_6:
  return v11;
}

- (void)forceSetUpUniqueObjects
{
  persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
  urlForPersistentStore = [objc_opt_class() urlForPersistentStore];
  v8 = [persistentStoreCoordinator persistentStoreForURL:urlForPersistentStore];

  metadata = [v8 metadata];
  v6 = [metadata mutableCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:0];
  [v6 setObject:v7 forKey:@"LocalAccountAndStoreAlreadySetUp"];

  [v8 setMetadata:v6];
  [(NoteContext *)self setUpUniqueObjects];
}

+ (void)removeSqliteAndIdxFiles
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (NoteContext)init
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:0];

  return v4;
}

- (id)initForMigrator
{
  v3 = +[AccountUtilities sharedAccountUtilities];
  v4 = [(NoteContext *)self initWithAccountUtilities:v3 inMigrator:1];

  return v4;
}

- (NoteContext)initWithPrivateQueue:(BOOL)queue
{
  queueCopy = queue;
  v5 = +[AccountUtilities sharedAccountUtilities];
  v6 = [(NoteContext *)self initWithAccountUtilities:v5 inMigrator:0 isMainContext:0 usePrivateQueue:queueCopy];

  return v6;
}

- (NoteContext)initWithAccountUtilities:(id)utilities inMigrator:(BOOL)migrator isMainContext:(BOOL)context usePrivateQueue:(BOOL)queue
{
  utilitiesCopy = utilities;
  v21.receiver = self;
  v21.super_class = NoteContext;
  v12 = [(NoteContext *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_isMainContext = context;
    v12->_inMigrator = migrator;
    objc_storeStrong(&v12->_accountUtilities, utilities);
    v13->_usePrivateQueue = queue;
    *&v13->_logChanges = 0;
    v14 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
    v15 = [v14 stringByAppendingPathComponent:@"Caches"];

    v16 = [objc_alloc(MEMORY[0x277D361E8]) initWithName:@"com.apple.notes.autoincrement.lock" cachePath:v15];
    nextIdLock = v13->_nextIdLock;
    v13->_nextIdLock = v16;

    v18 = [objc_alloc(MEMORY[0x277D361E8]) initWithName:@"com.apple.notes.objectcreation.lock" cachePath:v15];
    objectCreationLock = v13->_objectCreationLock;
    v13->_objectCreationLock = v18;

    if (![(NoteContext *)v13 setUpCoreDataStack])
    {

      v13 = 0;
    }
  }

  return v13;
}

- (id)visibleNotesPredicate
{
  v2 = objc_opt_class();

  return [v2 visibleNotesPredicate];
}

+ (id)visibleNotesPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [v2 predicateWithFormat:@"((deletedFlag == %@) AND (body.content != nil) AND (isBookkeepingEntry == %@))", v3, v4];

  return v5;
}

+ (id)visibleNotesIncludingEmptyBodyContentPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v5 = [v2 predicateWithFormat:@"((deletedFlag == %@) AND (isBookkeepingEntry == %@))", v3, v4];

  return v5;
}

- (id)liveNotesNeedingBodiesPredicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v4 = [v2 predicateWithFormat:@"((body.content = nil) AND (isBookkeepingEntry == %@))", v3];

  return v4;
}

- (id)newFRCForAccountsWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[NoteContext newFetchRequestForAccounts];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:delegateCopy performFetch:1];

  return v6;
}

- (id)newFRCForStoresWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[NoteContext newFetchRequestForStores];
  [v5 setFetchBatchSize:100];
  v6 = [(NoteContext *)self newFRCForFetchRequest:v5 delegate:delegateCopy performFetch:1];

  return v6;
}

- (id)newFRCForCollection:(id)collection delegate:(id)delegate performFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  collectionCopy = collection;
  delegateCopy = delegate;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  v11 = MEMORY[0x277CCA920];
  v12 = MEMORY[0x277CBEA60];
  if (collectionCopy)
  {
    predicateForNotes = [collectionCopy predicateForNotes];
    visibleNotesPredicate = [(NoteContext *)self visibleNotesPredicate];
    v15 = [v12 arrayWithObjects:{predicateForNotes, visibleNotesPredicate, 0}];
    v16 = [v11 andPredicateWithSubpredicates:v15];
  }

  else
  {
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"store != nil"];
    visibleNotesPredicate2 = [(NoteContext *)self visibleNotesPredicate];
    v19 = [v12 arrayWithObjects:{v17, visibleNotesPredicate2, 0}];
    v16 = [v11 andPredicateWithSubpredicates:v19];

    sortDescriptors = [newFetchRequestForNotes sortDescriptors];
    predicateForNotes = [sortDescriptors mutableCopy];

    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"store.name" ascending:1];
    [predicateForNotes ic_addNonNilObject:v21];

    [newFetchRequestForNotes setSortDescriptors:predicateForNotes];
  }

  [newFetchRequestForNotes setPredicate:v16];
  [newFetchRequestForNotes setFetchBatchSize:100];
  v22 = [(NoteContext *)self newFRCForFetchRequest:newFetchRequestForNotes delegate:delegateCopy performFetch:fetchCopy];

  return v22;
}

- (id)newFRCForFetchRequest:(id)request delegate:(id)delegate performFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  delegateCopy = delegate;
  requestCopy = request;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v11 = [objc_alloc(MEMORY[0x277CBE430]) initWithFetchRequest:requestCopy managedObjectContext:managedObjectContext sectionNameKeyPath:0 cacheName:0];

  [v11 setDelegate:delegateCopy];
  if (fetchCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke;
    v13[3] = &unk_2799AC828;
    v14 = v11;
    [managedObjectContext performBlockAndWait:v13];
  }

  return v11;
}

void __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v2 = [v1 performFetch:&v5];
  v3 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke_cold_1();
    }
  }
}

- (id)newFetchRequestForNotes
{
  v2 = objc_opt_class();

  return [v2 newFetchRequestForNotes];
}

+ (NSFetchRequest)newFetchRequestForNotes
{
  v3 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Note"];
  defaultNotesSortDescriptors = [self defaultNotesSortDescriptors];
  [(NSFetchRequest *)v3 setSortDescriptors:defaultNotesSortDescriptors];

  return v3;
}

- (void)sortNotes:(id)notes
{
  notesCopy = notes;
  defaultNotesSortDescriptors = [objc_opt_class() defaultNotesSortDescriptors];
  [notesCopy sortUsingDescriptors:defaultNotesSortDescriptors];
}

- (void)batchFaultNotes:(id)notes
{
  notesCopy = notes;
  if ([notesCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"Note"];
    [v5 setReturnsObjectsAsFaults:0];
    notesCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", notesCopy];
    [v5 setPredicate:notesCopy];

    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v11 = 0;
    v8 = [managedObjectContext executeFetchRequest:v5 error:&v11];
    v9 = v11;

    if (!v8)
    {
      v10 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [NoteContext batchFaultNotes:];
      }
    }
  }
}

- (id)newlyAddedNote
{
  v3 = +[NoteContext generateGUID];
  v4 = [(NoteContext *)self newlyAddedNoteWithGUID:v3];

  return v4;
}

- (id)newlyAddedNoteWithGUID:(id)d
{
  v4 = MEMORY[0x277CBE408];
  dCopy = d;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [v4 insertNewObjectForEntityForName:@"Note" inManagedObjectContext:managedObjectContext];

  v8 = MEMORY[0x277CBE408];
  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v10 = [v8 insertNewObjectForEntityForName:@"NoteBody" inManagedObjectContext:managedObjectContext2];
  [v7 setBody:v10];

  nextIndex = [(NoteContext *)self nextIndex];
  [v7 setIntegerId:nextIndex];

  [v7 setGuid:dCopy];

  return v7;
}

- (id)newlyCreatedNoteFromDefaultStore
{
  newlyAddedNote = [(NoteContext *)self newlyAddedNote];
  date = [MEMORY[0x277CBEAA8] date];
  [newlyAddedNote setCreationDate:date];

  ic_modificationDateForNoteBeingEdited = [MEMORY[0x277CBEAA8] ic_modificationDateForNoteBeingEdited];
  [newlyAddedNote setModificationDate:ic_modificationDateForNoteBeingEdited];

  [newlyAddedNote setContent:&stru_286E2F780];
  [newlyAddedNote setTitle:0];
  defaultStoreForNewNote = [(NoteContext *)self defaultStoreForNewNote];
  [newlyAddedNote setStore:defaultStoreForNewNote];

  return newlyAddedNote;
}

- (id)newlyAddedAttachment
{
  v3 = objc_opt_class();
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [v3 newlyAddedAttachmentInContext:managedObjectContext];

  return v5;
}

- (id)collectionForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)storeForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)deleteNote:(id)note
{
  noteCopy = note;
  objectID = [noteCopy objectID];
  if (objectID)
  {
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [managedObjectContext existingObjectWithID:objectID error:0];

    if (([noteCopy isInserted] & 1) == 0)
    {
      if (v7)
      {
        store = [v7 store];
        objectID2 = [store objectID];
        v10 = [(NoteContext *)self storeForObjectID:objectID2];

        if (v10)
        {
          managedObjectContext2 = [(NoteContext *)self managedObjectContext];
          account = [v10 account];
          objectID3 = [account objectID];
          v14 = [managedObjectContext2 existingObjectWithID:objectID3 error:0];

          if (v14)
          {
            shouldMarkNotesAsDeleted = [v14 shouldMarkNotesAsDeleted];

            if (shouldMarkNotesAsDeleted)
            {
              [noteCopy markForDeletion];
LABEL_13:

              goto LABEL_14;
            }
          }

          else
          {
            managedObjectContext3 = [(NoteContext *)self managedObjectContext];
            [managedObjectContext3 deleteObject:v10];
          }
        }
      }
    }

    [(NoteContext *)self deleteNoteRegardlessOfConstraints:noteCopy];
    goto LABEL_13;
  }

  v16 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [NoteContext deleteNote:];
  }

LABEL_14:
}

- (void)deleteNoteRegardlessOfConstraints:(id)constraints
{
  constraintsCopy = constraints;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  [managedObjectContext deleteObject:constraintsCopy];
}

- (void)deleteChanges:(id)changes
{
  v16 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [changesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(changesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        managedObjectContext = [(NoteContext *)self managedObjectContext];
        [managedObjectContext deleteObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [changesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)invalidate
{
  localStore = self->_localStore;
  self->_localStore = 0;

  localAccount = self->_localAccount;
  self->_localAccount = 0;

  notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  self->_notePropertyObjectsRealized = 0;

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  [managedObjectContext reset];
}

- (BOOL)save:(id *)save
{
  if (![(NSManagedObjectContext *)self->_managedObjectContext hasChanges])
  {
    return 1;
  }

  if (![(NoteContext *)self saveSilently:save])
  {
    return 0;
  }

  if ([(NoteContext *)self shouldObserveDarwinNotifications])
  {
    ++self->_notificationCount;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (self->_logChanges)
  {
    v6 = @"NoteContextDarwinNotificationWithLoggedChanges";
  }

  else
  {
    v6 = @"NoteContextDarwinNotificationWithoutLoggedChanges";
  }

  v7 = 1;
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v6, 0, 0, 1u);
  return v7;
}

- (BOOL)saveSilently:(id *)silently
{
  v5 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NoteContext saveSilently:];
  }

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v7 = [managedObjectContext save:&v13];
  v8 = v13;

  if ((v7 & 1) == 0)
  {
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [NoteContext saveSilently:];
    }

    if ([NoteContext databaseIsCorrupt:v8])
    {
      v10 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [NoteContext saveSilently:];
      }
    }
  }

  if (silently)
  {
    v11 = v8;
    *silently = v8;
  }

  return v7;
}

- (id)allVisibleNotesInCollection:(id)collection sorted:(BOOL)sorted
{
  sortedCopy = sorted;
  predicateForNotes = [collection predicateForNotes];
  v7 = [(NoteContext *)self allVisibleNotesMatchingPredicate:predicateForNotes sorted:sortedCopy];

  return v7;
}

- (unint64_t)countOfVisibleNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self countOfVisibleNotesMatchingPredicate:predicateForNotes];

  return v5;
}

+ (unint64_t)countOfVisibleNotesInCollectionIncludingNotesWithoutBodyContent:(id)content
{
  contentCopy = content;
  predicateForNotes = [contentCopy predicateForNotes];
  managedObjectContext = [contentCopy managedObjectContext];

  v7 = [self countOfVisibleNotesMatchingPredicate:predicateForNotes includingNoteWithoutBodyContent:1 context:managedObjectContext];
  return v7;
}

+ (unint64_t)countOfVisibleNotesInCollection:(id)collection
{
  collectionCopy = collection;
  predicateForNotes = [collectionCopy predicateForNotes];
  managedObjectContext = [collectionCopy managedObjectContext];

  v7 = [self countOfVisibleNotesMatchingPredicate:predicateForNotes context:managedObjectContext];
  return v7;
}

- (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted
{
  sortedCopy = sorted;
  predicateCopy = predicate;
  v7 = objc_opt_class();
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v9 = [v7 allVisibleNotesMatchingPredicate:predicateCopy sorted:sortedCopy context:managedObjectContext];

  return v9;
}

+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context
{
  sortedCopy = sorted;
  contextCopy = context;
  predicateCopy = predicate;
  v9 = [objc_opt_class() allVisibleNotesMatchingPredicate:predicateCopy sorted:sortedCopy context:contextCopy fetchLimit:0];

  return v9;
}

+ (id)allVisibleNotesMatchingPredicate:(id)predicate sorted:(BOOL)sorted context:(id)context fetchLimit:(unint64_t)limit
{
  sortedCopy = sorted;
  predicateCopy = predicate;
  contextCopy = context;
  if (predicateCopy)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = MEMORY[0x277CBEA60];
    visibleNotesPredicate = [self visibleNotesPredicate];
    v15 = [v13 arrayWithObjects:{visibleNotesPredicate, predicateCopy, 0}];
    visibleNotesPredicate2 = [v12 andPredicateWithSubpredicates:v15];
  }

  else
  {
    visibleNotesPredicate2 = [self visibleNotesPredicate];
  }

  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:visibleNotesPredicate2];
  if (sortedCopy)
  {
    defaultNotesSortDescriptors = [self defaultNotesSortDescriptors];
    [newFetchRequestForNotes setSortDescriptors:defaultNotesSortDescriptors];
  }

  if (limit)
  {
    [newFetchRequestForNotes setFetchLimit:limit];
  }

  v19 = [contextCopy executeFetchRequest:newFetchRequestForNotes error:0];

  return v19;
}

- (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = objc_opt_class();
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [v5 countOfVisibleNotesMatchingPredicate:predicateCopy context:managedObjectContext];

  return v7;
}

+ (unint64_t)countOfVisibleNotesMatchingPredicate:(id)predicate includingNoteWithoutBodyContent:(BOOL)content context:(id)context
{
  predicateCopy = predicate;
  contextCopy = context;
  if (content)
  {
    [self visibleNotesIncludingEmptyBodyContentPredicate];
  }

  else
  {
    [self visibleNotesPredicate];
  }
  v10 = ;
  v11 = v10;
  if (predicateCopy)
  {
    v12 = MEMORY[0x277CCA920];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:{v10, predicateCopy, 0}];
    v14 = [v12 andPredicateWithSubpredicates:v13];
  }

  else
  {
    v14 = v10;
  }

  newFetchRequestForNotes = [self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:v14];
  v16 = [contextCopy countForFetchRequest:newFetchRequestForNotes error:0];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)visibleNoteForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    objc_opt_class();
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];

    v7 = ICCheckedDynamicCast();

    if (([v7 isMarkedForDeletion] & 1) != 0 || (objc_msgSend(v7, "body"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "content"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)visibleNotesForIntegerIds:(id)ids
{
  idsCopy = ids;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  v6 = MEMORY[0x277CCA920];
  v7 = MEMORY[0x277CBEA60];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", idsCopy];

  visibleNotesPredicate = [(NoteContext *)self visibleNotesPredicate];
  v10 = [v7 arrayWithObjects:{idsCopy, visibleNotesPredicate, 0}];
  v11 = [v6 andPredicateWithSubpredicates:v10];

  [newFetchRequestForNotes setPredicate:v11];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v17];
  v14 = v17;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v13;
}

- (id)mostRecentlyModifiedNoteInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  if (predicateForNotes)
  {
    v5 = predicateForNotes;
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    visibleNotesPredicate = [(NoteContext *)self visibleNotesPredicate];
    v9 = [v7 arrayWithObjects:{visibleNotesPredicate, v5, 0}];
    visibleNotesPredicate2 = [v6 andPredicateWithSubpredicates:v9];
  }

  else
  {
    visibleNotesPredicate2 = [(NoteContext *)self visibleNotesPredicate];
  }

  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:visibleNotesPredicate2];
  defaultNotesSortDescriptors = [objc_opt_class() defaultNotesSortDescriptors];
  [newFetchRequestForNotes setSortDescriptors:defaultNotesSortDescriptors];

  [newFetchRequestForNotes setFetchLimit:1];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v14 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  lastObject = [v14 lastObject];

  return lastObject;
}

- (id)allNotes
{
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  return v5;
}

- (unint64_t)countOfNotes
{
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v5 = [managedObjectContext countForFetchRequest:newFetchRequestForNotes error:0];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (id)allNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self allNotesMatchingPredicate:predicateForNotes];

  return v5;
}

- (unint64_t)countOfNotesInCollection:(id)collection
{
  predicateForNotes = [collection predicateForNotes];
  v5 = [(NoteContext *)self countOfNotesMatchingPredicate:predicateForNotes];

  return v5;
}

- (id)allNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:predicateCopy];

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:0];

  return v7;
}

- (unint64_t)countOfNotesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  [newFetchRequestForNotes setPredicate:predicateCopy];

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v7 = [managedObjectContext countForFetchRequest:newFetchRequestForNotes error:0];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)noteForObjectID:(id)d
{
  if (d)
  {
    dCopy = d;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v6 = [managedObjectContext existingObjectWithID:dCopy error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)notesForIntegerIds:(id)ids
{
  idsCopy = ids;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  idsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(integerId IN %@)", idsCopy];

  [newFetchRequestForNotes setPredicate:idsCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v12 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v8;
}

- (id)noteForGUID:(id)d
{
  dCopy = d;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(guid ==[c] %@)", dCopy];
  [newFetchRequestForNotes setPredicate:dCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext noteForGUID:];
    }
  }

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)storeForExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  newFetchRequestForStores = [objc_opt_class() newFetchRequestForStores];
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(externalIdentifier == %@)", identifierCopy];
  [newFetchRequestForStores setPredicate:identifierCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v13 = 0;
  v8 = [managedObjectContext executeFetchRequest:newFetchRequestForStores error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [NoteContext storeForExternalIdentifier:];
    }
  }

  firstObject = [v8 firstObject];

  return firstObject;
}

- (id)allNotesWithoutBodiesInCollection:(id)collection
{
  collectionCopy = collection;
  newFetchRequestForNotes = [(NoteContext *)self newFetchRequestForNotes];
  if (collectionCopy)
  {
    v6 = MEMORY[0x277CCA920];
    v7 = MEMORY[0x277CBEA60];
    predicateForNotes = [collectionCopy predicateForNotes];
    liveNotesNeedingBodiesPredicate = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
    v10 = [v7 arrayWithObjects:{predicateForNotes, liveNotesNeedingBodiesPredicate, 0}];
    liveNotesNeedingBodiesPredicate2 = [v6 andPredicateWithSubpredicates:v10];
  }

  else
  {
    liveNotesNeedingBodiesPredicate2 = [(NoteContext *)self liveNotesNeedingBodiesPredicate];
  }

  [newFetchRequestForNotes setPredicate:liveNotesNeedingBodiesPredicate2];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v13 = [managedObjectContext executeFetchRequest:newFetchRequestForNotes error:&v17];
  v14 = v17;

  if (v14)
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext visibleNotesForIntegerIds:];
    }
  }

  return v13;
}

- (id)collectionForInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy && ([infoCopy objectForKey:@"NoteCollectionPrimaryIdentifier"], v6 = objc_claimAutoreleasedReturnValue(), -[NoteContext accountForAccountId:](self, "accountForAccountId:", v6), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [v5 objectForKey:@"NoteCollectionType"];
    v9 = [v8 isEqualToString:@"Account"];

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v11 = [v5 objectForKey:@"NoteCollectionSecondaryIdentifier"];
      v10 = [v7 storeForExternalId:v11];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)newlyAddedStore
{
  v2 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Store" inManagedObjectContext:managedObjectContext];

  return v4;
}

- (id)allStores
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:managedObjectContext];
  [v3 setEntity:v6];

  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  v8 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
  [v3 setSortDescriptors:v8];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v18 = 0;
  v10 = [managedObjectContext2 executeFetchRequest:v3 error:&v18];
  v11 = v18;

  if (v11)
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

    managedObjectContext3 = v12;
LABEL_5:

    goto LABEL_7;
  }

  if (![v10 count])
  {
    v15 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

    [(NoteContext *)self forceSetUpUniqueObjects];
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v16 = [managedObjectContext3 executeFetchRequest:v3 error:&v17];
    v11 = v17;
    v12 = v10;
    v10 = v16;
    goto LABEL_5;
  }

LABEL_7:

  return v10;
}

- (id)storesInCollection:(id)collection
{
  collectionCopy = collection;
  allStores = [(NoteContext *)self allStores];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NoteContext_storesInCollection___block_invoke;
  v9[3] = &unk_2799AC850;
  v10 = collectionCopy;
  v6 = collectionCopy;
  v7 = [allStores ic_objectsPassingTest:v9];

  return v7;
}

BOOL __34__NoteContext_storesInCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [v3 parentStore];

  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = v5 == v6;

  return v7;
}

- (id)faultedInStoresForAccounts:(id)accounts
{
  v4 = MEMORY[0x277CBE428];
  accountsCopy = accounts;
  v6 = [[v4 alloc] initWithEntityName:@"Store"];
  [v6 setReturnsObjectsAsFaults:0];
  accountsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"account", accountsCopy];

  [v6 setPredicate:accountsCopy];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v14 = 0;
  v9 = [managedObjectContext executeFetchRequest:v6 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [NoteContext faultedInStoresForAccounts:];
    }
  }

  return v9;
}

- (unint64_t)countOfStores
{
  v3 = objc_alloc_init(MEMORY[0x277CBE428]);
  v4 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v6 = [v4 entityForName:@"Store" inManagedObjectContext:managedObjectContext];
  [v3 setEntity:v6];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v15 = 0;
  v8 = [managedObjectContext2 countForFetchRequest:v3 error:&v15];
  v9 = v15;

  if (v9)
  {
    managedObjectContext3 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(managedObjectContext3, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allStores];
    }

LABEL_5:
    goto LABEL_7;
  }

  if (!v8)
  {
    v13 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NoteContext countOfStores];
    }

    [(NoteContext *)self forceSetUpUniqueObjects];
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v14 = 0;
    v8 = [managedObjectContext3 countForFetchRequest:v3 error:&v14];
    v9 = v14;
    goto LABEL_5;
  }

LABEL_7:
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

- (id)allAccountsAsFaults:(BOOL)faults prefechedRelationshipKeyPaths:(id)paths
{
  faultsCopy = faults;
  pathsCopy = paths;
  v7 = +[NoteContext newFetchRequestForAccounts];
  [v7 setReturnsObjectsAsFaults:faultsCopy];
  if (pathsCopy)
  {
    [v7 setRelationshipKeyPathsForPrefetching:pathsCopy];
  }

  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v17 = 0;
  v9 = [managedObjectContext executeFetchRequest:v7 error:&v17];
  v10 = v17;

  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allAccountsAsFaults:prefechedRelationshipKeyPaths:];
    }

    managedObjectContext2 = v11;
LABEL_7:

    goto LABEL_9;
  }

  if (![v9 count])
  {
    v14 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [NoteContext allAccountsAsFaults:prefechedRelationshipKeyPaths:];
    }

    [(NoteContext *)self forceSetUpUniqueObjects];
    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v16 = 0;
    v15 = [managedObjectContext2 executeFetchRequest:v7 error:&v16];
    v10 = v16;
    v11 = v9;
    v9 = v15;
    goto LABEL_7;
  }

LABEL_9:

  return v9;
}

- (id)newlyAddedAccount
{
  v2 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"Account" inManagedObjectContext:managedObjectContext];

  return v4;
}

- (id)accountForAccountId:(id)id
{
  idCopy = id;
  v5 = objc_alloc_init(MEMORY[0x277CBE428]);
  v6 = MEMORY[0x277CBE408];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v8 = [v6 entityForName:@"Account" inManagedObjectContext:managedObjectContext];
  [v5 setEntity:v8];

  idCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", idCopy];
  [v5 setPredicate:idCopy];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  v16 = 0;
  v11 = [managedObjectContext2 executeFetchRequest:v5 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [NoteContext accountForAccountId:];
    }
  }

  lastObject = [v11 lastObject];

  return lastObject;
}

- (id)defaultStoreForNewNote
{
  v21 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(@"com.apple.mobilenotes");
  v3 = CFPreferencesCopyAppValue(@"DefaultNotesAccount", @"com.apple.mobilenotes");
  accountUtilities = [(NoteContext *)self accountUtilities];
  v5 = [accountUtilities defaultStoreSyncIdWithDesiredSyncId:v3];

  v6 = [(NoteContext *)self accountForAccountId:v5];
  v7 = v6;
  if (v6 && ![v6 didChooseToMigrate])
  {
LABEL_13:
    defaultStore = [v7 defaultStore];

    goto LABEL_15;
  }

  [(NoteContext *)self allAccounts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if (![v13 didChooseToMigrate])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v7 = v13;

    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:

LABEL_14:
  defaultStore = [(NoteContext *)self localStore];
LABEL_15:

  return defaultStore;
}

- (id)localStore
{
  localStore = self->_localStore;
  if (!localStore)
  {
    localAccount = [(NoteContext *)self localAccount];
    defaultStore = [localAccount defaultStore];
    v6 = self->_localStore;
    self->_localStore = defaultStore;

    localStore = self->_localStore;
  }

  return localStore;
}

- (id)localAccount
{
  localAccount = self->_localAccount;
  if (!localAccount)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBE428]);
    v5 = MEMORY[0x277CBE408];
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [v5 entityForName:@"Account" inManagedObjectContext:managedObjectContext];

    [v4 setEntity:v7];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
    [v4 setPredicate:v8];
    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v17 = 0;
    v10 = [managedObjectContext2 executeFetchRequest:v4 error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [NoteContext localAccount];
      }
    }

    else if ([v10 count] == 1)
    {
      lastObject = [v10 lastObject];
      v14 = self->_localAccount;
      self->_localAccount = lastObject;
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(NoteContext *)v10 localAccount];
      }

      [(NoteContext *)self forceSetUpUniqueObjects];
    }

    localAccount = self->_localAccount;
  }

  return localAccount;
}

- (BOOL)forceDeleteAccount:(id)account
{
  v48 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
  v34 = accountCopy;
  accountCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"note.store.account == %@", accountCopy];
  [v5 setPredicate:accountCopy];

  v33 = v5;
  v7 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v5];
  [v7 setResultType:1];
  selfCopy = self;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v44 = 0;
  v31 = v7;
  v9 = [managedObjectContext executeRequest:v7 error:&v44];
  v10 = v44;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = v9;
  obj = [v9 result];
  v11 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        v39 = v10;
        v16 = [NoteAttachmentObject attachmentDirectoryURLForAttachmentObjectID:v15 error:&v39];
        v17 = v39;

        if (v17)
        {
          v18 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v46 = v17;
            _os_log_fault_impl(&dword_25C69C000, v18, OS_LOG_TYPE_FAULT, "Error getting file directory URL for attachment: %@", buf, 0xCu);
          }
        }

        if (v16)
        {
          v38 = v17;
          v19 = [defaultManager removeItemAtURL:v16 error:&v38];
          v10 = v38;

          if (v19)
          {
            goto LABEL_18;
          }

          v20 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v46 = v10;
            _os_log_fault_impl(&dword_25C69C000, v20, OS_LOG_TYPE_FAULT, "Error removing attachment file: %@", buf, 0xCu);
          }
        }

        else
        {
          v20 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v46 = v15;
            _os_log_fault_impl(&dword_25C69C000, v20, OS_LOG_TYPE_FAULT, "Failed to get attachment folder URL for object ID: %@", buf, 0xCu);
          }

          v10 = v17;
        }

LABEL_18:
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v12);
  }

  newFetchRequestForNotes = [(NoteContext *)selfCopy newFetchRequestForNotes];
  predicateForNotes = [v34 predicateForNotes];
  [newFetchRequestForNotes setPredicate:predicateForNotes];

  v23 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:newFetchRequestForNotes];
  managedObjectContext2 = [(NoteContext *)selfCopy managedObjectContext];
  v37 = v10;
  v25 = [managedObjectContext2 executeRequest:v23 error:&v37];
  v26 = v37;

  if (v26)
  {
    v27 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [NoteContext forceDeleteAccount:];
    }
  }

  managedObjectContext3 = [(NoteContext *)selfCopy managedObjectContext];
  [managedObjectContext3 deleteObject:v34];

  return 1;
}

- (BOOL)deleteAccount:(id)account
{
  accountCopy = account;
  localAccount = [(NoteContext *)self localAccount];

  v6 = localAccount != accountCopy && [(NoteContext *)self forceDeleteAccount:accountCopy];
  return v6;
}

- (BOOL)deleteStore:(id)store
{
  v18 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  localStore = [(NoteContext *)self localStore];

  if (localStore != storeCopy)
  {
    v6 = [(NoteContext *)self allNotesInCollection:storeCopy];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(NoteContext *)self deleteNoteRegardlessOfConstraints:*(*(&v13 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    managedObjectContext = [(NoteContext *)self managedObjectContext];
    [managedObjectContext deleteObject:storeCopy];
  }

  return localStore != storeCopy;
}

- (BOOL)shouldDisableLocalStore
{
  if ([(NoteContext *)self countOfStores]< 2)
  {
    return 0;
  }

  localStore = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:localStore]== 0;

  return v4;
}

- (BOOL)hasMultipleEnabledStores
{
  countOfStores = [(NoteContext *)self countOfStores];
  if (countOfStores > 2)
  {
    return 1;
  }

  if (countOfStores != 2)
  {
    return 0;
  }

  localStore = [(NoteContext *)self localStore];
  v4 = [(NoteContext *)self countOfNotesInCollection:localStore]!= 0;

  return v4;
}

- (id)_notePropertyObjectForKey:(id)key
{
  keyCopy = key;
  notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  if (!notePropertyObjectsRealized)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_notePropertyObjectsRealized;
    self->_notePropertyObjectsRealized = v6;

    notePropertyObjectsRealized = self->_notePropertyObjectsRealized;
  }

  v8 = [(NSMutableDictionary *)notePropertyObjectsRealized objectForKey:keyCopy];
  if (v8)
  {
    lastObject = v8;
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    [managedObjectContext refreshObject:lastObject mergeChanges:1];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBE428]);
    v12 = MEMORY[0x277CBE408];
    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v14 = [v12 entityForName:@"Property" inManagedObjectContext:managedObjectContext2];
    [v11 setEntity:v14];

    keyCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"propertyKey == %@", keyCopy];
    [v11 setPredicate:keyCopy];
    [v11 setFetchLimit:1];
    managedObjectContext3 = [(NoteContext *)self managedObjectContext];
    v21 = 0;
    v17 = [managedObjectContext3 executeFetchRequest:v11 error:&v21];
    v18 = v21;

    if (v18)
    {
      v19 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [NoteContext _notePropertyObjectForKey:];
      }
    }

    lastObject = [v17 lastObject];
    if (lastObject)
    {
      [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:lastObject forKey:keyCopy];
    }
  }

  return lastObject;
}

- (void)setPropertyValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [(NoteContext *)self _notePropertyObjectForKey:keyCopy];
  if (!v7)
  {
    v8 = MEMORY[0x277CBE408];
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v7 = [v8 insertNewObjectForEntityForName:@"Property" inManagedObjectContext:managedObjectContext];

    [v7 setPropertyKey:keyCopy];
    [(NSMutableDictionary *)self->_notePropertyObjectsRealized setObject:v7 forKey:keyCopy];
  }

  [v7 setPropertyValue:valueCopy];
}

- (id)propertyValueForKey:(id)key
{
  v3 = [(NoteContext *)self _notePropertyObjectForKey:key];
  propertyValue = [v3 propertyValue];

  return propertyValue;
}

- (id)getNextIdObject
{
  if (!self->_nextIdContext)
  {
    persistentStoreCoordinator = [objc_opt_class() persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBE440]);
      nextIdContext = self->_nextIdContext;
      self->_nextIdContext = v4;

      [(NSManagedObjectContext *)self->_nextIdContext setPersistentStoreCoordinator:persistentStoreCoordinator];
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBE428]);
  v7 = [MEMORY[0x277CBE408] entityForName:@"NextId" inManagedObjectContext:self->_nextIdContext];
  [v6 setEntity:v7];
  v8 = self->_nextIdContext;
  v39 = 0;
  v9 = [(NSManagedObjectContext *)v8 executeFetchRequest:v6 error:&v39];
  v10 = v39;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [NoteContext getNextIdObject];
    }
  }

  if ([v9 count])
  {
    lastObject = [v9 lastObject];
    v13 = v10;
  }

  else
  {
    v37 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"NextId" inManagedObjectContext:self->_nextIdContext];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    v15 = MEMORY[0x277CBE408];
    managedObjectContext = [(NoteContext *)self managedObjectContext];
    v17 = [v15 entityForName:@"Note" inManagedObjectContext:managedObjectContext];

    v36 = v17;
    [v14 setEntity:v17];
    [v14 setResultType:2];
    v18 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"integerId"];
    v19 = MEMORY[0x277CCA9C0];
    v35 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    v21 = [v19 expressionForFunction:@"max:" arguments:v20];

    v22 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v22 setName:@"maxId"];
    v34 = v21;
    [v22 setExpression:v21];
    [v22 setExpressionResultType:200];
    v23 = [MEMORY[0x277CBEA60] arrayWithObject:v22];
    [v14 setPropertiesToFetch:v23];

    managedObjectContext2 = [(NoteContext *)self managedObjectContext];
    v38 = v10;
    v25 = [managedObjectContext2 executeFetchRequest:v14 error:&v38];
    v13 = v38;

    if (v13 || !v25 || ![v25 count])
    {
      v26 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [NoteContext getNextIdObject];
      }
    }

    lastObject2 = [v25 lastObject];
    v28 = [lastObject2 valueForKey:@"maxId"];
    unsignedIntValue = [v28 unsignedIntValue];

    v30 = 10 * (unsignedIntValue / 0xA) + 10;
    if (v30 > 0xFFFFFFF5)
    {
      v30 = 0;
    }

    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = 10;
    }

    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31];
    lastObject = v37;
    [v37 setValue:v32 forKey:@"counter"];
  }

  return lastObject;
}

- (id)nextIndex
{
  v20[4] = *MEMORY[0x277D85DE8];
  nextId = self->_nextId;
  if (!nextId || (HIDWORD(v4) = -858993459 * [(NSNumber *)nextId unsignedIntValue], LODWORD(v4) = HIDWORD(v4), (v4 >> 1) <= 0x19999999))
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    [(ICExclusiveLock *)self->_nextIdLock lock];
    getNextIdObject = [(NoteContext *)self getNextIdObject];
    v7 = [getNextIdObject valueForKey:@"counter"];
    v8 = self->_nextId;
    self->_nextId = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[NSNumber unsignedIntValue](self->_nextId, "unsignedIntValue") + 10}];
    [getNextIdObject setValue:v9 forKey:@"counter"];

    nextIdContext = self->_nextIdContext;
    v20[0] = 0;
    v11 = [(NSManagedObjectContext *)nextIdContext save:v20];
    v12 = v20[0];
    if (!v11)
    {
      v13 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [v12 userInfo];
        objc_claimAutoreleasedReturnValue();
        [NoteContext nextIndex];
      }
    }

    [(NSManagedObjectContext *)self->_nextIdContext reset];

    [(ICExclusiveLock *)self->_nextIdLock unlock];
    objc_sync_exit(v5);
  }

  v15 = self->_nextId;
  p_nextId = &self->_nextId;
  v16 = [(NSNumber *)v15 copy];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v16, "unsignedIntValue") + 1}];
  v18 = *p_nextId;
  *p_nextId = v17;

  return v16;
}

+ (id)backupsDirectoryURL
{
  urlForPersistentStore = [self urlForPersistentStore];
  uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
  v4 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"Backups" isDirectory:1];

  return v4;
}

+ (void)backupPersistentStore:(id)store
{
  v59 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  v5 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[NoteContext backupPersistentStore:];
  }

  urlForPersistentStore = [self urlForPersistentStore];
  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v7 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v7 stringFromDate:date];

  v10 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v48 = v9;
  v13 = [v10 stringWithFormat:@"Backup-%@-%@", v9, uUIDString];

  backupsDirectoryURL = [self backupsDirectoryURL];
  v47 = v13;
  v15 = [backupsDirectoryURL URLByAppendingPathComponent:v13 isDirectory:1];

  lastPathComponent = [urlForPersistentStore lastPathComponent];
  v50 = [v15 URLByAppendingPathComponent:lastPathComponent isDirectory:0];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v54 = 0;
  LOBYTE(uUID) = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v54];
  v18 = v54;

  if ((uUID & 1) == 0)
  {
    v19 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    v18 = 0;
  }

  storeOptions = [self storeOptions];
  storeOptions2 = [self storeOptions];
  v22 = *MEMORY[0x277CBE2E8];
  v53 = v18;
  v49 = storeCopy;
  v23 = [storeCopy replacePersistentStoreAtURL:v50 destinationOptions:storeOptions withPersistentStoreFromURL:urlForPersistentStore sourceOptions:storeOptions2 storeType:v22 error:&v53];
  v24 = v53;

  v25 = os_log_create("com.apple.notes", "HTML");
  v26 = v25;
  if ((v23 & 1) == 0)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v56 = urlForPersistentStore;
    v57 = 2112;
    v58 = v50;
    _os_log_impl(&dword_25C69C000, v26, OS_LOG_TYPE_INFO, "Backed up old persistent store from %@ to %@", buf, 0x16u);
  }

  v52 = v24;
  v27 = [urlForPersistentStore checkResourceIsReachableAndReturnError:&v52];
  v28 = v52;

  v26 = os_log_create("com.apple.notes", "HTML");
  v29 = os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG);
  v30 = v49;
  if (v27)
  {
    if (v29)
    {
      +[NoteContext backupPersistentStore:];
    }

    storeOptions3 = [self storeOptions];
    v51 = v28;
    v32 = [v49 destroyPersistentStoreAtURL:urlForPersistentStore withType:v22 options:storeOptions3 error:&v51];
    v24 = v51;

    v33 = os_log_create("com.apple.notes", "HTML");
    v26 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        +[NoteContext backupPersistentStore:];
      }

      goto LABEL_27;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext backupPersistentStore:];
    }

    v34 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      +[NoteContext backupPersistentStore:];
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtURL:urlForPersistentStore error:0];

    lastPathComponent2 = [urlForPersistentStore lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
    v26 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"sqlite-wal"];

    uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
    v39 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v26 isDirectory:0];

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager3 removeItemAtURL:v39 error:0];

    lastPathComponent3 = [urlForPersistentStore lastPathComponent];
    stringByDeletingPathExtension2 = [lastPathComponent3 stringByDeletingPathExtension];
    v43 = [stringByDeletingPathExtension2 stringByAppendingPathExtension:@"sqlite-shm"];

    uRLByDeletingLastPathComponent2 = [urlForPersistentStore URLByDeletingLastPathComponent];
    v45 = [uRLByDeletingLastPathComponent2 URLByAppendingPathComponent:v43 isDirectory:0];

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager4 removeItemAtURL:v45 error:0];

LABEL_26:
    v30 = v49;
    goto LABEL_27;
  }

  if (v29)
  {
    +[NoteContext backupPersistentStore:];
  }

  v24 = v28;
LABEL_27:
}

+ (BOOL)isTooLowOnDiskSpace
{
  v34 = *MEMORY[0x277D85DE8];
  urlForPersistentStore = [self urlForPersistentStore];
  uRLByDeletingPathExtension = [urlForPersistentStore URLByDeletingPathExtension];
  v4 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"sqlite-wal"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [urlForPersistentStore URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v29 = 0;
  v8 = [defaultManager attributesOfFileSystemForPath:path error:&v29];
  v9 = v29;

  if (v9)
  {
    v10 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(NoteContext *)urlForPersistentStore];
    }

    unsignedIntegerValue = 0;
  }

  else
  {
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
  }

  v28 = 0;
  v12 = *MEMORY[0x277CBE838];
  v27 = 0;
  v13 = [urlForPersistentStore getResourceValue:&v28 forKey:v12 error:&v27];
  v14 = v28;
  v15 = v27;

  if (v13)
  {
    unsignedIntegerValue2 = [v14 unsignedIntegerValue];
  }

  else
  {
    v17 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }

    unsignedIntegerValue2 = 0;
  }

  v25 = 0;
  v26 = 0;
  v18 = [v4 getResourceValue:&v26 forKey:v12 error:&v25];
  v19 = v26;

  v20 = v25;
  if (v18)
  {
    unsignedIntegerValue2 += [v19 unsignedIntegerValue];
  }

  else if ([v20 code] != 260)
  {
    v21 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[NoteContext isTooLowOnDiskSpace];
    }
  }

  v22 = 3 * unsignedIntegerValue2 + 0x100000;
  v23 = os_log_create("com.apple.notes", "HTML");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v31 = v22;
    v32 = 2048;
    v33 = unsignedIntegerValue;
    _os_log_impl(&dword_25C69C000, v23, OS_LOG_TYPE_INFO, "Minimum free space to open database: %lu, current free space: %lu", buf, 0x16u);
  }

  return unsignedIntegerValue < v22;
}

+ (BOOL)isDataProtectionError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];
  v6 = *MEMORY[0x277CBE2C8];
  if ([domain isEqualToString:*MEMORY[0x277CBE2C8]])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:v6];
  }

  v9 = *MEMORY[0x277CCA5B8];
  if ([domain isEqualToString:*MEMORY[0x277CCA5B8]])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  }

  else
  {
    userInfo2 = [errorCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:v9];
  }

  v12 = [v7 intValue] == 23 || objc_msgSend(v10, "intValue") == 1;

  return v12;
}

- (void)setHasPriorityInSaveConflicts:(BOOL)conflicts
{
  conflictsCopy = conflicts;
  self->_hasPriorityInSaveConflicts = conflicts;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  if (conflictsCopy)
  {
    v4 = +[NoteResurrectionMergePolicy sharedNoteResurrectionMergePolicy];
    [managedObjectContext setMergePolicy:v4];
  }

  else
  {
    [managedObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
  }
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v2 = objc_opt_class();

  return [v2 persistentStoreCoordinator];
}

+ (id)newManagedObjectContext
{
  v3 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
  persistentStoreCoordinator = [self persistentStoreCoordinator];
  [v3 setPersistentStoreCoordinator:persistentStoreCoordinator];

  [v3 setMergePolicy:*MEMORY[0x277CBE1C8]];
  [v3 setUndoManager:0];
  return v3;
}

- (void)receiveDarwinNotificationWithChangeLogging:(BOOL)logging
{
  notificationCount = self->_notificationCount;
  if (notificationCount)
  {
    self->_notificationCount = notificationCount - 1;
  }

  else
  {
    mocUpdater = [(NoteContext *)self mocUpdater];
    [mocUpdater requestUpdate];
  }
}

- (id)noteChangeWithType:(int)type store:(id)store
{
  v4 = *&type;
  v6 = MEMORY[0x277CBE408];
  storeCopy = store;
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  v9 = [v6 insertNewObjectForEntityForName:@"NoteChange" inManagedObjectContext:managedObjectContext];

  [v9 setStore:storeCopy];
  v10 = [MEMORY[0x277CBEB58] set];
  [v9 setNoteIntegerIds:v10];

  v11 = [MEMORY[0x277CBEB58] set];
  [v9 setNoteServerIds:v11];

  v12 = [MEMORY[0x277CBEB58] set];
  [v9 setNoteServerIntIds:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  [v9 setChangeType:v13];

  return v9;
}

- (void)managedObjectContextWillSaveNotification:(id)notification
{
  notificationCopy = notification;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  userInfo = [notificationCopy userInfo];
  [defaultCenter postNotificationName:@"NoteContextWillSaveNotification" object:self userInfo:userInfo];

  if (self->_logChanges)
  {
    [(NoteContext *)self trackChanges:notificationCopy];
  }
}

- (void)trackChanges:(id)changes
{
  v122 = *MEMORY[0x277D85DE8];
  managedObjectContext = [(NoteContext *)self managedObjectContext];
  deletedObjects = [managedObjectContext deletedObjects];
  v94 = [deletedObjects mutableCopy];

  managedObjectContext2 = [(NoteContext *)self managedObjectContext];
  updatedObjects = [managedObjectContext2 updatedObjects];
  v8 = [updatedObjects mutableCopy];

  managedObjectContext3 = [(NoteContext *)self managedObjectContext];
  insertedObjects = [managedObjectContext3 insertedObjects];
  v92 = [insertedObjects mutableCopy];

  v11 = MEMORY[0x277CBE408];
  selfCopy = self;
  managedObjectContext4 = [(NoteContext *)self managedObjectContext];
  v13 = [v11 entityForName:@"Note" inManagedObjectContext:managedObjectContext4];

  v101 = [MEMORY[0x277CBEB58] set];
  v98 = [MEMORY[0x277CBEB58] set];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v114 objects:v121 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v115;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v115 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v114 + 1) + 8 * i);
        entity = [v19 entity];
        v21 = [entity isEqual:v13];

        if (v21)
        {
          v22 = v19;
          if ([v22 isMarkedForDeletion])
          {
            [v98 addObject:v22];
          }

          v23 = [MEMORY[0x277CBEA60] arrayWithObject:@"store"];
          v24 = [v22 committedValuesForKeys:v23];
          v25 = [v24 objectForKey:@"store"];

          store = [v22 store];

          if (v25 != store)
          {
            [v101 addObject:v22];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v114 objects:v121 count:16];
    }

    while (v16);
  }

  [v14 minusSet:v98];
  v27 = v94;
  [v94 unionSet:v98];
  [v14 minusSet:v101];
  [v94 unionSet:v101];
  [v92 unionSet:v101];
  v96 = v14;
  if ([v92 count])
  {
    v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v28 = v92;
    v29 = [v28 countByEnumeratingWithState:&v110 objects:v120 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v111;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v111 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v110 + 1) + 8 * j);
          entity2 = [v33 entity];
          v35 = [entity2 isEqual:v13];

          if (v35)
          {
            v36 = v33;
            store2 = [v36 store];
            v38 = store2;
            if (store2)
            {
              objectID = [store2 objectID];
              v40 = [v99 objectForKey:objectID];

              if (!v40)
              {
                v40 = [(NoteContext *)selfCopy noteChangeWithType:0 store:v38];
                objectID2 = [v38 objectID];
                [v99 setObject:v40 forKey:objectID2];
              }

              noteIntegerIds = [v40 noteIntegerIds];
              integerId = [v36 integerId];
              [noteIntegerIds addObject:integerId];

              v14 = v96;
            }
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v110 objects:v120 count:16];
      }

      while (v30);
    }

    v27 = v94;
  }

  if ([v14 count])
  {
    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v45 = v14;
    v46 = [v45 countByEnumeratingWithState:&v106 objects:v119 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v107;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v107 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = *(*(&v106 + 1) + 8 * k);
          entity3 = [v50 entity];
          v52 = [entity3 isEqual:v13];

          if (v52)
          {
            v53 = v50;
            store3 = [v53 store];
            objectID3 = [store3 objectID];
            v56 = [v44 objectForKey:objectID3];

            if (!v56)
            {
              store4 = [v53 store];
              v56 = [(NoteContext *)selfCopy noteChangeWithType:1 store:store4];

              store5 = [v56 store];
              objectID4 = [store5 objectID];
              [v44 setObject:v56 forKey:objectID4];
            }

            noteIntegerIds2 = [v56 noteIntegerIds];
            integerId2 = [v53 integerId];
            [noteIntegerIds2 addObject:integerId2];

            serverId = [v53 serverId];

            if (serverId)
            {
              noteServerIds = [v56 noteServerIds];
              serverId2 = [v53 serverId];
              [noteServerIds addObject:serverId2];
            }

            if ([v53 serverIntId])
            {
              noteServerIntIds = [v56 noteServerIntIds];
              v66 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v53, "serverIntId")}];
              [noteServerIntIds addObject:v66];
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v106 objects:v119 count:16];
      }

      while (v47);
    }

    v27 = v94;
    v14 = v96;
  }

  if ([v27 count])
  {
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"NoteContextDeletedNotesNotification" object:v27];

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v68 = v27;
    v69 = [v68 countByEnumeratingWithState:&v102 objects:v118 count:16];
    if (!v69)
    {
      goto LABEL_67;
    }

    v70 = v69;
    v71 = *v103;
    v95 = v68;
    while (1)
    {
      for (m = 0; m != v70; ++m)
      {
        if (*v103 != v71)
        {
          objc_enumerationMutation(v68);
        }

        v73 = *(*(&v102 + 1) + 8 * m);
        entity4 = [v73 entity];
        v75 = [entity4 isEqual:v13];

        if (v75)
        {
          v76 = v73;
          v77 = [MEMORY[0x277CBEA60] arrayWithObject:@"store"];
          v78 = [v76 committedValuesForKeys:v77];

          v79 = [v78 objectForKey:@"store"];
          if (v79)
          {
            null = [MEMORY[0x277CBEB68] null];
            if (v79 == null)
            {
              goto LABEL_63;
            }

            v81 = [v68 containsObject:v79];

            if ((v81 & 1) == 0)
            {
              objectID5 = [v79 objectID];
              null = [v100 objectForKey:objectID5];

              if (!null)
              {
                null = [(NoteContext *)selfCopy noteChangeWithType:2 store:v79];
                store6 = [null store];
                objectID6 = [store6 objectID];
                [v100 setObject:null forKey:objectID6];
              }

              noteIntegerIds3 = [null noteIntegerIds];
              integerId3 = [v76 integerId];
              [noteIntegerIds3 addObject:integerId3];

              serverId3 = [v76 serverId];

              if (serverId3)
              {
                noteServerIds2 = [null noteServerIds];
                serverId4 = [v76 serverId];
                [noteServerIds2 addObject:serverId4];
              }

              if ([v76 serverIntId])
              {
                noteServerIntIds2 = [null noteServerIntIds];
                v91 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v76, "serverIntId")}];
                [noteServerIntIds2 addObject:v91];
              }

              v68 = v95;
LABEL_63:
            }
          }

          continue;
        }
      }

      v70 = [v68 countByEnumeratingWithState:&v102 objects:v118 count:16];
      if (!v70)
      {
LABEL_67:

        v27 = v94;
        v14 = v96;
        break;
      }
    }
  }
}

- (void)cleanUpLocks
{
  [(ICExclusiveLock *)self->_nextIdLock unlock];
  [(ICExclusiveLock *)self->_objectCreationLock unlock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextDidUnlockObjectCreationNotification" object:self];
}

- (void)updateForRecentChanges
{
  mocUpdater = [(NoteContext *)self mocUpdater];
  [mocUpdater requestUpdate];
}

- (void)postNotesChangedExternally
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NoteContextChangedElsewhereNotification" object:self userInfo:0];
}

+ (id)mainContextObjectFromObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    sharedContext = [self sharedContext];
    managedObjectContext = [sharedContext managedObjectContext];

    managedObjectContext2 = [objectCopy managedObjectContext];

    v8 = objectCopy;
    if (managedObjectContext2 != managedObjectContext)
    {
      objectID = [objectCopy objectID];
      v8 = [managedObjectContext existingObjectWithID:objectID error:0];

      managedObjectContext3 = [v8 managedObjectContext];

      if (managedObjectContext3 != managedObjectContext)
      {
        v11 = os_log_create("com.apple.notes", "HTML");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(NoteContext(SharedContext) *)objectCopy mainContextObjectFromObject:v11];
        }

        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setUpLocalAccountAndStore
{
  [self count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)setUpLastIndexTid
{
  [self count];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __59__NoteContext_newFRCForFetchRequest_delegate_performFetch___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)batchFaultNotes:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_25C69C000, v1, OS_LOG_TYPE_FAULT, "Can't batch fault objects: %@, with error: %@", v2, 0x16u);
}

- (void)saveSilently:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveSilently:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)saveSilently:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)visibleNotesForIntegerIds:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)noteForGUID:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)storeForExternalIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)allStores
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)faultedInStoresForAccounts:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)countOfStores
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)allAccountsAsFaults:prefechedRelationshipKeyPaths:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)allAccountsAsFaults:prefechedRelationshipKeyPaths:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)accountForAccountId:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)localAccount
{
  v4 = *MEMORY[0x277D85DE8];
  [self count];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_25C69C000, a2, OS_LOG_TYPE_ERROR, "Serious error: should have exactly one default notes account but have %lu instead.  Recovering.", v3, 0xCu);
}

- (void)forceDeleteAccount:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_notePropertyObjectForKey:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v1 = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)getNextIdObject
{
  OUTLINED_FUNCTION_7();
  userInfo = [v0 userInfo];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)nextIndex
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Error: Couldn't save next ID: %@, %@", v4, v5);
}

+ (void)backupPersistentStore:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)backupPersistentStore:.cold.7()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)backupPersistentStore:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)isTooLowOnDiskSpace
{
  v9 = *MEMORY[0x277D85DE8];
  path = [self path];
  OUTLINED_FUNCTION_5();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25C69C000, a3, OS_LOG_TYPE_ERROR, "Error getting free space for filesystem at path: %@, error: %@", v6, 0x16u);
}

- (void)managedObjectContext
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __33__NoteContext_managedObjectModel__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_10(&dword_25C69C000, "Unexpected error while opening database %@, %@", v4, v5);
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __41__NoteContext_persistentStoreCoordinator__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end