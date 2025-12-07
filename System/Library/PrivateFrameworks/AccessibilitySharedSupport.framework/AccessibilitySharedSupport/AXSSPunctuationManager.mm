@interface AXSSPunctuationManager
+ (id)sharedDatabase;
+ (void)initialize;
- (AXSSPunctuationManager)init;
- (BOOL)_saveIfPossible;
- (BOOL)isBasePunctuationGroup:(id)group;
- (NSArray)punctuationGroups;
- (id)_databaseDirectoryPath;
- (id)_databaseFilePath;
- (id)_punctuationEntryFromManagedObject:(id)object;
- (id)_punctuationGroupForEntry:(id)entry;
- (id)_punctuationGroupFromManagedObject:(id)object;
- (id)allPunctuationGroup;
- (id)cloudRecordsToPurge:(id)purge;
- (id)mostBasePunctuationGroupForGroup:(id)group;
- (id)nextDefaultGroupName;
- (id)nonePunctuationGroup;
- (id)parentPunctuationGroup:(id)group;
- (id)punctuationEntriesForGroupUUID:(id)d;
- (id)punctuationEntryForUUID:(id)d;
- (id)punctuationEntryObjectFromLocalObjects:(id)objects;
- (id)punctuationGroupForUUID:(id)d;
- (id)punctuationGroupsForContexts;
- (id)ruleToString:(int64_t)string;
- (id)somePunctuationGroup;
- (int64_t)stringToRule:(id)rule;
- (void)_cloudKitUpdated:(id)updated;
- (void)_filterAutoswitchContexts:(id)contexts punctuationGroupsForContexts:(id)forContexts;
- (void)_initializeCloudKitHelpers;
- (void)_initializeDatabaseStartup;
- (void)_initializeSystemGroups;
- (void)_managedObjectChanged:(id)changed;
- (void)_setupDatabase;
- (void)_updateCloudKitHelpers;
- (void)addCloudRecordToPurge:(id)purge recordEntityType:(id)type;
- (void)importPunctuationGroup:(id)group;
- (void)removeAllRecordsForPurge;
- (void)removeCloudRecordForPurge:(id)purge;
- (void)removeEntry:(id)entry;
- (void)removePunctuationGroup:(id)group;
- (void)setCloudKitPushInSameProcess:(BOOL)process;
- (void)setCloudKitSync:(BOOL)sync;
- (void)updateEntry:(id)entry fromCloudKit:(BOOL)kit;
- (void)updatePunctuationGroup:(id)group fromCloudKit:(BOOL)kit;
- (void)userAuthChanged;
@end

@implementation AXSSPunctuationManager

+ (id)sharedDatabase
{
  if (sharedDatabase_onceToken != -1)
  {
    +[AXSSPunctuationManager sharedDatabase];
  }

  v3 = sharedDatabase_SharedDatabase;

  return v3;
}

- (void)_initializeDatabaseStartup
{
  if ([(AXSSPunctuationManager *)self isProtectedDataAvailable])
  {
    if (self->_finishedInitialization)
    {
      return;
    }

    [(AXSSPunctuationManager *)self _setupDatabase];
    [(AXSSPunctuationManager *)self _initializeSystemGroups];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0 userInfo:0];

    v4 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 0;
      v5 = "Finished initialization of database, posting groups have changed locally";
      v6 = &v8;
LABEL_7:
      _os_log_impl(&dword_1C0E8A000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
    }
  }

  else
  {
    v4 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 0;
      v5 = "Protected data not available, not setting up database";
      v6 = &v7;
      goto LABEL_7;
    }
  }
}

- (void)_updateCloudKitHelpers
{
  isProtectedDataAvailable = [(AXSSPunctuationManager *)self isProtectedDataAvailable];
  [(AXSSCloudKitHelper *)self->_punctuationEntryCloudKitHelper setIsProtectedDataAvailable:isProtectedDataAvailable];
  punctuationGroupCloudKitHelper = self->_punctuationGroupCloudKitHelper;

  [(AXSSCloudKitHelper *)punctuationGroupCloudKitHelper setIsProtectedDataAvailable:isProtectedDataAvailable];
}

- (void)userAuthChanged
{
  [(AXSSPunctuationManager *)self _setupDatabase];
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AXSSPunctuationManager_userAuthChanged__block_invoke;
  v4[3] = &unk_1E8134870;
  v4[4] = self;
  [managedObjectContext performBlockAndWait:v4];
}

- (void)_setupDatabase
{
  v40[1] = *MEMORY[0x1E69E9840];
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];

  if (!managedObjectContext)
  {
    context = objc_autoreleasePoolPush();
    v4 = *MEMORY[0x1E696A3A0];
    v39 = *MEMORY[0x1E696A3A0];
    v5 = *MEMORY[0x1E696A388];
    v40[0] = *MEMORY[0x1E696A388];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _databaseDirectoryPath = [(AXSSPunctuationManager *)self _databaseDirectoryPath];
    v36 = 0;
    [defaultManager createDirectoryAtPath:_databaseDirectoryPath withIntermediateDirectories:1 attributes:v6 error:&v36];
    v26 = v36;

    v9 = objc_alloc(MEMORY[0x1E695DFF8]);
    _databaseFilePath = [(AXSSPunctuationManager *)self _databaseFilePath];
    v11 = [v9 initFileURLWithPath:_databaseFilePath];

    v12 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AXSSPunctuationManager _setupDatabase];
    }

    v13 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
    [v13 setAutomaticallyMergesChangesFromParent:1];
    v14 = objc_alloc(MEMORY[0x1E695D638]);
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 URLForResource:@"AXSSPunctuationModel" withExtension:@"momd"];
    v17 = [v14 initWithContentsOfURL:v16];

    v18 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [AXSSPunctuationManager _setupDatabase];
    }

    v19 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v17];
    v20 = [MEMORY[0x1E695D6C8] persistentStoreDescriptionWithURL:v11];
    v21 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [AXSSPunctuationManager _setupDatabase];
    }

    [v20 setType:*MEMORY[0x1E695D4A8]];
    [v20 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D380]];
    [v20 setOption:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695D318]];
    [v20 setOption:MEMORY[0x1E695E0F8] forKey:*MEMORY[0x1E695D3C0]];
    [v20 setOption:v5 forKey:v4];
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x3032000000;
    v34[3] = __Block_byref_object_copy_;
    v34[4] = __Block_byref_object_dispose_;
    v35 = 0;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __40__AXSSPunctuationManager__setupDatabase__block_invoke;
    v28[3] = &unk_1E8134898;
    v33 = v34;
    v22 = v19;
    v29 = v22;
    v23 = v20;
    v30 = v23;
    v24 = v13;
    v31 = v24;
    selfCopy = self;
    [v22 addPersistentStoreWithDescription:v23 completionHandler:v28];
    [v24 setPersistentStoreCoordinator:v22];
    [v24 setMergePolicy:*MEMORY[0x1E695D370]];
    [(AXSSDatabaseManager *)self setManagedObjectContext:v24];
    self->_finishedInitialization = 1;
    v25 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = v24;
      _os_log_impl(&dword_1C0E8A000, v25, OS_LOG_TYPE_INFO, "Set up database for punctuation: %@", buf, 0xCu);
    }

    if (v24)
    {
      [(AXSSPunctuationManager *)self setCloudKitSync:[(AXSSPunctuationManager *)self cloudKitSync]];
    }

    _Block_object_dispose(v34, 8);
    objc_autoreleasePoolPop(context);
  }
}

- (BOOL)_saveIfPossible
{
  canSave = [(AXSSDatabaseManager *)self canSave];
  if (canSave)
  {
    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
    persistentStores = [persistentStoreCoordinator persistentStores];
    v7 = [persistentStores count];

    if (v7)
    {
      managedObjectContext2 = [(AXSSDatabaseManager *)self managedObjectContext];
      v12 = 0;
      [managedObjectContext2 save:&v12];
      v9 = v12;

      if (!v9)
      {
        LOBYTE(canSave) = 1;
        return canSave;
      }

      v10 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [AXSSPunctuationManager _saveIfPossible];
      }
    }

    LOBYTE(canSave) = 0;
  }

  return canSave;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000001"];
    v3 = AXSSVoiceOverPunctuationGroupAll;
    AXSSVoiceOverPunctuationGroupAll = v2;

    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000002"];
    v5 = AXSSVoiceOverPunctuationGroupSome;
    AXSSVoiceOverPunctuationGroupSome = v4;

    AXSSVoiceOverPunctuationGroupNone = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000003"];

    MEMORY[0x1EEE66BB8]();
  }
}

uint64_t __40__AXSSPunctuationManager_sharedDatabase__block_invoke()
{
  sharedDatabase_SharedDatabase = [[AXSSPunctuationManager alloc] init];

  return MEMORY[0x1EEE66BB8]();
}

- (AXSSPunctuationManager)init
{
  v9.receiver = self;
  v9.super_class = AXSSPunctuationManager;
  v2 = [(AXSSDatabaseManager *)&v9 init];
  [(AXSSPunctuationManager *)v2 _initializeDatabaseStartup];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E695D360];
  managedObjectContext = [(AXSSDatabaseManager *)v2 managedObjectContext];
  [defaultCenter addObserver:v2 selector:sel__managedObjectChanged_ name:v4 object:managedObjectContext];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 addObserver:v2 selector:sel__cloudKitUpdated_ name:@"AXSSVoiceOverPunctuationCloudKitUpdateNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, onKeybagLockStatusChange, [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69B1A70]], 0, CFNotificationSuspensionBehaviorDrop);
  return v2;
}

- (void)_initializeSystemGroups
{
  punctuationGroups = [(AXSSPunctuationManager *)self punctuationGroups];
  if (([punctuationGroups ax_containsObjectUsingBlock:&__block_literal_global_18] & 1) == 0)
  {
    v3 = objc_opt_new();
    [v3 setUuid:AXSSVoiceOverPunctuationGroupAll];
    [(AXSSPunctuationManager *)self updatePunctuationGroup:v3];
  }

  if (([punctuationGroups ax_containsObjectUsingBlock:&__block_literal_global_21] & 1) == 0)
  {
    v4 = objc_opt_new();
    [v4 setUuid:AXSSVoiceOverPunctuationGroupSome];
    [(AXSSPunctuationManager *)self updatePunctuationGroup:v4];
  }

  if (([punctuationGroups ax_containsObjectUsingBlock:&__block_literal_global_23] & 1) == 0)
  {
    v5 = objc_opt_new();
    [v5 setUuid:AXSSVoiceOverPunctuationGroupNone];
    [(AXSSPunctuationManager *)self updatePunctuationGroup:v5];
  }
}

uint64_t __49__AXSSPunctuationManager__initializeSystemGroups__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupAll];

  return v3;
}

uint64_t __49__AXSSPunctuationManager__initializeSystemGroups__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupSome];

  return v3;
}

uint64_t __49__AXSSPunctuationManager__initializeSystemGroups__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 isEqual:AXSSVoiceOverPunctuationGroupNone];

  return v3;
}

- (void)setCloudKitPushInSameProcess:(BOOL)process
{
  self->_cloudKitPushInSameProcess = process;
  [(AXSSCloudKitHelper *)self->_punctuationEntryCloudKitHelper setObserveLocalDatabaseChanges:?];
  cloudKitPushInSameProcess = self->_cloudKitPushInSameProcess;
  punctuationGroupCloudKitHelper = self->_punctuationGroupCloudKitHelper;

  [(AXSSCloudKitHelper *)punctuationGroupCloudKitHelper setObserveLocalDatabaseChanges:cloudKitPushInSameProcess];
}

- (id)punctuationEntriesForGroupUUID:(id)d
{
  dCopy = d;
  array = [MEMORY[0x1E695DF70] array];
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__AXSSPunctuationManager_punctuationEntriesForGroupUUID___block_invoke;
  v12[3] = &unk_1E8134848;
  v13 = dCopy;
  selfCopy = self;
  v7 = array;
  v15 = v7;
  v8 = dCopy;
  [managedObjectContext performBlockAndWait:v12];

  v9 = v15;
  v10 = v7;

  return v7;
}

void __57__AXSSPunctuationManager_punctuationEntriesForGroupUUID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[AXSS_PunctuationEntry fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupUUID = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v4 = [*(a1 + 40) managedObjectContext];
  v18 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v18];
  v6 = v18;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 48);
        v13 = [*(a1 + 40) _punctuationEntryFromManagedObject:*(*(&v14 + 1) + 8 * v11)];
        [v12 addObject:v13];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_initializeCloudKitHelpers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    v14 = 138412290;
    v15 = managedObjectContext;
    _os_log_impl(&dword_1C0E8A000, v3, OS_LOG_TYPE_INFO, "Initialization cloud kit helpers with object context: %@", &v14, 0xCu);
  }

  managedObjectContext2 = [(AXSSDatabaseManager *)self managedObjectContext];

  if (managedObjectContext2)
  {
    v6 = [(AXSSCloudKitHelper *)[AXSSPunctuationEntryCloudKitHelper alloc] initWithContainerIdentifier:@"com.apple.accessibility.VoiceOverPunctuation" zoneName:@"com.accessibility.voiceover.punctuation"];
    punctuationEntryCloudKitHelper = self->_punctuationEntryCloudKitHelper;
    self->_punctuationEntryCloudKitHelper = v6;

    v8 = [(AXSSCloudKitHelper *)[AXSSPunctuationGroupCloudKitHelper alloc] initWithContainerIdentifier:@"com.apple.accessibility.VoiceOverPunctuation" zoneName:@"com.accessibility.voiceover.punctuation"];
    punctuationGroupCloudKitHelper = self->_punctuationGroupCloudKitHelper;
    self->_punctuationGroupCloudKitHelper = v8;

    [(AXSSPunctuationManager *)self _updateCloudKitHelpers];
    v10 = self->_punctuationEntryCloudKitHelper;
    managedObjectContext3 = [(AXSSDatabaseManager *)self managedObjectContext];
    [(AXSSCloudKitHelper *)v10 observeChangesForManagedContext:managedObjectContext3];

    v12 = self->_punctuationGroupCloudKitHelper;
    managedObjectContext4 = [(AXSSDatabaseManager *)self managedObjectContext];
    [(AXSSCloudKitHelper *)v12 observeChangesForManagedContext:managedObjectContext4];
  }
}

- (void)setCloudKitSync:(BOOL)sync
{
  self->_cloudKitSync = sync;
  if (self->_punctuationEntryCloudKitHelper)
  {
    v4 = 1;
  }

  else
  {
    v4 = !sync;
  }

  if (v4)
  {
    if (!sync)
    {
      punctuationGroupCloudKitHelper = self->_punctuationGroupCloudKitHelper;
      self->_punctuationGroupCloudKitHelper = 0;

      punctuationEntryCloudKitHelper = self->_punctuationEntryCloudKitHelper;
      self->_punctuationEntryCloudKitHelper = 0;
    }
  }

  else
  {
    [(AXSSPunctuationManager *)self _initializeCloudKitHelpers];
  }

  [(AXSSCloudKitHelper *)self->_punctuationEntryCloudKitHelper setObserveLocalDatabaseChanges:self->_cloudKitPushInSameProcess];
  [(AXSSCloudKitHelper *)self->_punctuationGroupCloudKitHelper setObserveLocalDatabaseChanges:self->_cloudKitPushInSameProcess];
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  [managedObjectContext setStalenessInterval:0.0];
}

- (void)_cloudKitUpdated:(id)updated
{
  v4 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXSSPunctuationManager *)self _cloudKitUpdated:v4];
  }

  if (![(AXSSPunctuationManager *)self cloudKitSync])
  {
    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AXSSPunctuationManager__cloudKitUpdated___block_invoke;
    v7[3] = &unk_1E8134870;
    v7[4] = self;
    [managedObjectContext performBlock:v7];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0 userInfo:0];
  }
}

void __43__AXSSPunctuationManager__cloudKitUpdated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 refreshAllObjects];
}

- (void)_managedObjectChanged:(id)changed
{
  v48 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if ([(AXSSPunctuationManager *)self cloudKitPushInSameProcess]|| ![(AXSSPunctuationManager *)self cloudKitSync])
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695D328]];

    userInfo2 = [changedCopy userInfo];
    v37 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695D2F8]];

    v9 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      userInfo3 = [changedCopy userInfo];
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412546;
      v45 = userInfo3;
      v46 = 2112;
      v47 = callStackSymbols;
      _os_log_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_INFO, "MOC changed: %@ %@", buf, 0x16u);
    }

    v12 = [MEMORY[0x1E695DFA8] set];
    userInfo4 = [changedCopy userInfo];
    v14 = *MEMORY[0x1E695D4D0];
    v15 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x1E695D4D0]];

    if (v15)
    {
      allObjects = [v15 allObjects];
      [v12 addObjectsFromArray:allObjects];
    }

    v38 = v7;
    userInfo5 = [changedCopy userInfo];
    v18 = [userInfo5 objectForKeyedSubscript:v14];

    if (v18)
    {
      allObjects2 = [v18 allObjects];
      [v12 addObjectsFromArray:allObjects2];
    }

    v36 = v18;
    userInfo6 = [changedCopy userInfo];
    v21 = [userInfo6 objectForKeyedSubscript:v14];

    if (v21)
    {
      allObjects3 = [v21 allObjects];
      [v12 addObjectsFromArray:allObjects3];
    }

    v35 = v21;
    v23 = [MEMORY[0x1E695DFA8] set];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v24 = v12;
    v25 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v23 addObject:v29];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [(AXSSPunctuationManager *)self _punctuationGroupForEntry:v29];
              if (v30)
              {
                [v23 addObject:v30];
              }
            }
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v26);
    }

    v5 = v38;
    if (-[NSObject count](v38, "count") || [v37 count] || -[NSObject count](v23, "count"))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
      [defaultCenter2 postNotificationName:@"AXSSVoiceOverPunctuationGroupsChangedNotification" object:0];

      v33 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v45 = v38;
        v46 = 2112;
        v47 = v37;
        _os_log_impl(&dword_1C0E8A000, v33, OS_LOG_TYPE_INFO, "MOC changed - posting groups changed because inserted/deleted count: %@/%@", buf, 0x16u);
      }
    }

    v34 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v23;
      _os_log_impl(&dword_1C0E8A000, v34, OS_LOG_TYPE_INFO, "Processing changes for groups: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXSSPunctuationManager _managedObjectChanged:v5];
    }
  }
}

- (id)nextDefaultGroupName
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  punctuationGroups = [(AXSSPunctuationManager *)self punctuationGroups];
  v3 = [punctuationGroups countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(punctuationGroups);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (([v9 isSystemPunctuationGroup] & 1) == 0)
        {
          ++v5;
          v10 = MEMORY[0x1E696AE88];
          name = [v9 name];
          v12 = [v10 localizedScannerWithString:name];

          decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
          invertedSet = [decimalDigitCharacterSet invertedSet];
          [v12 setCharactersToBeSkipped:invertedSet];

          v21 = 0;
          [v12 scanInt:&v21];
          if (v6 <= v21)
          {
            v6 = v21;
          }
        }
      }

      v4 = [punctuationGroups countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
  v17 = [v16 localizedStringForKey:@"PUNCTUATION_DEFUALT_GROUP_NAME" value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
  if (v6 <= 0)
  {
    v18 = v5;
  }

  else
  {
    v18 = v6;
  }

  v19 = [v15 localizedStringWithFormat:v17, v18 + 1];

  return v19;
}

- (id)_databaseDirectoryPath
{
  v2 = [AXCPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  overrideDatabasePath = [objc_opt_class() overrideDatabasePath];

  if (overrideDatabasePath)
  {
    overrideDatabasePath2 = [objc_opt_class() overrideDatabasePath];

    v2 = overrideDatabasePath2;
  }

  v5 = [v2 stringByAppendingPathComponent:@"Accessibility"];
  v6 = [v5 stringByAppendingPathComponent:@"AXSSPunctuation"];

  return v6;
}

- (id)_databaseFilePath
{
  _databaseDirectoryPath = [(AXSSPunctuationManager *)self _databaseDirectoryPath];
  v3 = [_databaseDirectoryPath stringByAppendingPathComponent:@"AXSSPunctuation.sqlite"];

  return v3;
}

void __40__AXSSPunctuationManager__setupDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) URL];
  v7 = [v5 persistentStoreForURL:v6];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v4 || !*(*(*(a1 + 64) + 8) + 40))
  {
    v10 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __40__AXSSPunctuationManager__setupDatabase__block_invoke_cold_1();
    }

    [*(a1 + 48) setPersistentStoreCoordinator:0];
  }

  *(*(a1 + 56) + 56) = 0;
}

- (BOOL)isBasePunctuationGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isEqual:AXSSVoiceOverPunctuationGroupSome] & 1) != 0 || (objc_msgSend(groupCopy, "isEqual:", AXSSVoiceOverPunctuationGroupAll))
  {
    v4 = 1;
  }

  else
  {
    v4 = [groupCopy isEqual:AXSSVoiceOverPunctuationGroupNone];
  }

  return v4;
}

- (void)addCloudRecordToPurge:(id)purge recordEntityType:(id)type
{
  purgeCopy = purge;
  typeCopy = type;
  if (purgeCopy)
  {
    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__AXSSPunctuationManager_addCloudRecordToPurge_recordEntityType___block_invoke;
    v10[3] = &unk_1E8134848;
    v10[4] = self;
    v11 = purgeCopy;
    v12 = typeCopy;
    [managedObjectContext performBlockAndWait:v10];
  }

  else
  {
    v9 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXSSPunctuationManager addCloudRecordToPurge:v9 recordEntityType:?];
    }
  }
}

void __65__AXSSPunctuationManager_addCloudRecordToPurge_recordEntityType___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5B8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 insertNewObjectForEntityForName:@"AXSS_PunctuationCloudDeletionCache" inManagedObjectContext:v3];

  [v4 setUuid:*(a1 + 40)];
  [v4 setEntityType:*(a1 + 48)];
  v5 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1C0E8A000, v5, OS_LOG_TYPE_INFO, "Store purge record: %@ for %@", &v8, 0x16u);
  }

  [*(a1 + 32) _saveIfPossible];
}

- (id)cloudRecordsToPurge:(id)purge
{
  purgeCopy = purge;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__AXSSPunctuationManager_cloudRecordsToPurge___block_invoke;
  v9[3] = &unk_1E8134900;
  v6 = purgeCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __46__AXSSPunctuationManager_cloudRecordsToPurge___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"AXSS_PunctuationCloudDeletionCache"];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"entityType = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v4 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v12];
  v6 = v12;

  if (v6)
  {
    v7 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __46__AXSSPunctuationManager_cloudRecordsToPurge___block_invoke_cold_1();
    }
  }

  v8 = [v5 ax_filteredArrayUsingBlock:&__block_literal_global_87];

  v9 = [v8 ax_mappedArrayUsingBlock:&__block_literal_global_90];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

BOOL __46__AXSSPunctuationManager_cloudRecordsToPurge___block_invoke_84(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = v2 != 0;

  return v3;
}

- (void)removeAllRecordsForPurge
{
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke;
  v4[3] = &unk_1E8134870;
  v4[4] = self;
  [managedObjectContext performBlock:v4];
}

void __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationCloudDeletionCache fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [*(a1 + 32) managedObjectContext];
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke_2;
  v7[3] = &unk_1E8134928;
  v7[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v7];
  if (v5)
  {
    v6 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke_cold_1();
    }
  }

  [*(a1 + 32) _saveIfPossible];
}

void __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

- (void)removeCloudRecordForPurge:(id)purge
{
  purgeCopy = purge;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__AXSSPunctuationManager_removeCloudRecordForPurge___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = purgeCopy;
  selfCopy = self;
  v6 = purgeCopy;
  [managedObjectContext performBlock:v7];
}

void __52__AXSSPunctuationManager_removeCloudRecordForPurge___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationCloudDeletionCache fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v4 = [*(a1 + 40) managedObjectContext];
  v9 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v9];
  v6 = v9;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__AXSSPunctuationManager_removeCloudRecordForPurge___block_invoke_2;
  v8[3] = &unk_1E8134928;
  v8[4] = *(a1 + 40);
  [v5 enumerateObjectsUsingBlock:v8];
  if (v6)
  {
    v7 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke_cold_1();
    }
  }

  [*(a1 + 40) _saveIfPossible];
}

void __52__AXSSPunctuationManager_removeCloudRecordForPurge___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  [v4 deleteObject:v3];
}

- (id)parentPunctuationGroup:(id)group
{
  groupCopy = group;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__AXSSPunctuationManager_parentPunctuationGroup___block_invoke;
  v9[3] = &unk_1E8134900;
  v6 = groupCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __49__AXSSPunctuationManager_parentPunctuationGroup___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationGroup fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) basePunctuationUUID];
  v5 = [v3 predicateWithFormat:@"uuid = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v15 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __49__AXSSPunctuationManager_parentPunctuationGroup___block_invoke_cold_1();
    }
  }

  v10 = *(a1 + 40);
  v11 = [v7 lastObject];
  v12 = [v10 _punctuationGroupFromManagedObject:v11];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

- (id)mostBasePunctuationGroupForGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy isSystemPunctuationGroup])
  {
    uuid = [groupCopy uuid];
  }

  else
  {
    basePunctuationUUID = [groupCopy basePunctuationUUID];
    if (basePunctuationUUID)
    {
      basePunctuationUUID3 = basePunctuationUUID;
      while (1)
      {
        basePunctuationUUID2 = [groupCopy basePunctuationUUID];
        v9 = [(AXSSPunctuationManager *)self isBasePunctuationGroup:basePunctuationUUID2];

        if (v9)
        {
          break;
        }

        v10 = [(AXSSPunctuationManager *)self parentPunctuationGroup:groupCopy];
        uuid2 = [v10 uuid];
        uuid3 = [groupCopy uuid];
        v13 = [uuid2 isEqual:uuid3];

        if (v13)
        {

          break;
        }

        basePunctuationUUID3 = [v10 basePunctuationUUID];
        groupCopy = v10;
        if (!basePunctuationUUID3)
        {
          goto LABEL_11;
        }
      }
    }

    v10 = groupCopy;
LABEL_11:
    uuid = [v10 basePunctuationUUID];
    groupCopy = v10;
  }

  return uuid;
}

- (id)_punctuationGroupForEntry:(id)entry
{
  entryCopy = entry;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__AXSSPunctuationManager__punctuationGroupForEntry___block_invoke;
  v9[3] = &unk_1E8134978;
  v6 = entryCopy;
  selfCopy = self;
  v12 = &v13;
  v10 = v6;
  [managedObjectContext performBlockAndWait:v9];

  lastObject = [v14[5] lastObject];

  _Block_object_dispose(&v13, 8);

  return lastObject;
}

void __52__AXSSPunctuationManager__punctuationGroupForEntry___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationGroup fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) groupUUID];
  v5 = [v3 predicateWithFormat:@"uuid = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v12];
  v8 = v12;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8)
  {
    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__AXSSPunctuationManager__punctuationGroupForEntry___block_invoke_cold_1();
    }
  }
}

- (void)importPunctuationGroup:(id)group
{
  v26 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [groupCopy setUuid:uUID];

  v6 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [groupCopy name];
    *buf = 138412290;
    v25 = name;
    _os_log_impl(&dword_1C0E8A000, v6, OS_LOG_TYPE_DEFAULT, "Importing group: %@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  entries = [groupCopy entries];
  v9 = [entries countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    *&v10 = 138412290;
    v18 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(entries);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        uUID2 = [MEMORY[0x1E696AFB0] UUID];
        [v14 setUuid:uUID2];

        uuid = [groupCopy uuid];
        [v14 setGroupUUID:uuid];

        v17 = AXLogPunctuationStorage();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          v25 = v14;
          _os_log_impl(&dword_1C0E8A000, v17, OS_LOG_TYPE_DEFAULT, "Importing entry: %@", buf, 0xCu);
        }

        [(AXSSPunctuationManager *)self updateEntry:v14];
        ++v13;
      }

      while (v11 != v13);
      v11 = [entries countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  [(AXSSPunctuationManager *)self updatePunctuationGroup:groupCopy];
}

- (id)punctuationEntryObjectFromLocalObjects:(id)objects
{
  objectsCopy = objects;
  if ([objectsCopy count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__AXSSPunctuationManager_punctuationEntryObjectFromLocalObjects___block_invoke;
    v8[3] = &unk_1E8134978;
    selfCopy = self;
    v11 = &v12;
    v9 = objectsCopy;
    [managedObjectContext performBlockAndWait:v8];

    v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v13[5]];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __65__AXSSPunctuationManager_punctuationEntryObjectFromLocalObjects___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"AXSS_PunctuationEntry"];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) ax_mappedArrayUsingBlock:&__block_literal_global_104];
  v5 = [v3 predicateWithFormat:@"uuid IN %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v12];
  v8 = v12;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (v8)
  {
    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __46__AXSSPunctuationManager_cloudRecordsToPurge___block_invoke_cold_1();
    }
  }
}

id __65__AXSSPunctuationManager_punctuationEntryObjectFromLocalObjects___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 uuid];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __65__AXSSPunctuationManager_punctuationEntryObjectFromLocalObjects___block_invoke_2_cold_1();
    }

    v5 = [MEMORY[0x1E696AFB0] UUID];
  }

  v7 = v5;

  return v7;
}

- (void)updatePunctuationGroup:(id)group fromCloudKit:(BOOL)kit
{
  v18 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (groupCopy)
  {
    v7 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412290;
      v17 = callStackSymbols;
      _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_INFO, "1 storing entries: %@", buf, 0xCu);
    }

    managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__AXSSPunctuationManager_updatePunctuationGroup_fromCloudKit___block_invoke;
    v11[3] = &unk_1E81349C0;
    v12 = managedObjectContext;
    v13 = groupCopy;
    selfCopy = self;
    kitCopy = kit;
    v10 = managedObjectContext;
    [v10 performBlock:v11];
  }
}

void __62__AXSSPunctuationManager_updatePunctuationGroup_fromCloudKit___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) refreshAllObjects];
  v2 = +[AXSS_PunctuationGroup fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 40) uuid];
  v5 = [v3 predicateWithFormat:@"uuid = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 32);
  v35 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v35];
  v8 = v35;
  v9 = [v7 lastObject];
  v10 = v9;
  if (v9)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v14 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E695D5B8];
    v13 = [*(a1 + 48) managedObjectContext];
    v14 = [v12 insertNewObjectForEntityForName:@"AXSS_PunctuationGroup" inManagedObjectContext:v13];

    if (v8)
    {
      v15 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __62__AXSSPunctuationManager_updatePunctuationGroup_fromCloudKit___block_invoke_cold_1();
      }
    }
  }

  v16 = [*(a1 + 40) basePunctuationUUID];
  [v14 setBasePunctuationUUID:v16];

  v17 = [*(a1 + 40) uuid];
  [v14 setUuid:v17];

  v18 = *(a1 + 48);
  v19 = [*(a1 + 40) autoSwitchContexts];
  v20 = [v18 cloudObjectFromLocalObjects:v19 withTable:@"AXSS_PunctuationContext" andObjectID:@"contextIdentifier"];
  [v14 setAutoSwitchContexts:v20];

  v21 = [*(a1 + 40) name];
  [v14 setName:v21];

  [v14 setVersion:1];
  [v14 setInCloud:{objc_msgSend(*(a1 + 40), "inCloud")}];
  v22 = [MEMORY[0x1E695DF00] date];
  [v14 setLastModifiedDate:v22];

  if (*(a1 + 56))
  {
    v23 = [*(a1 + 40) ckChangeTag];
    [v14 setCkChangeTag:v23];

    v24 = [*(a1 + 40) ckRecordProcessDate];
    [v14 setCkRecordProcessDate:v24];
  }

  else
  {
    [v14 setCkChangeTag:0];
    [v14 setCkRecordProcessDate:0];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = [v14 autoSwitchContexts];
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v31 + 1) + 8 * i) setGroup:v14];
      }

      v27 = [v25 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v27);
  }

  v30 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v37 = v14;
    _os_log_impl(&dword_1C0E8A000, v30, OS_LOG_TYPE_INFO, "2 storing entries: %@", buf, 0xCu);
  }

  [*(a1 + 40) setInDatabase:1];
  [*(a1 + 48) _saveIfPossible];
}

- (void)removePunctuationGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy inCloud])
  {
    uuid = [groupCopy uuid];
    v6 = +[AXSSPunctuationGroup description];
    [(AXSSPunctuationManager *)self addCloudRecordToPurge:uuid recordEntityType:v6];
  }

  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__AXSSPunctuationManager_removePunctuationGroup___block_invoke;
  v9[3] = &unk_1E8134950;
  v10 = groupCopy;
  selfCopy = self;
  v8 = groupCopy;
  [managedObjectContext performBlockAndWait:v9];
}

void __49__AXSSPunctuationManager_removePunctuationGroup___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [*(a1 + 32) entries];
  v33 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  v2 = 0;
  if (v33)
  {
    v32 = *v44;
    do
    {
      v3 = 0;
      v4 = v2;
      do
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v3;
        v5 = *(*(&v43 + 1) + 8 * v3);
        v6 = +[AXSS_PunctuationEntry fetchRequest];
        v7 = MEMORY[0x1E696AE18];
        v8 = [v5 uuid];
        v9 = [v7 predicateWithFormat:@"uuid = %@", v8];
        [v6 setPredicate:v9];

        [v6 setReturnsObjectsAsFaults:0];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v10 = [*(a1 + 40) managedObjectContext];
        v38 = v4;
        v34 = v6;
        v11 = [v10 executeFetchRequest:v6 error:&v38];
        v36 = v38;

        v12 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v40;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v40 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v39 + 1) + 8 * i);
              if ([v16 inCloud])
              {
                v17 = *(a1 + 40);
                v18 = [v16 uuid];
                v19 = +[AXSSPunctuationEntry description];
                [v17 addCloudRecordToPurge:v18 recordEntityType:v19];
              }

              v20 = [*(a1 + 40) managedObjectContext];
              [v20 deleteObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v13);
        }

        v2 = v36;
        v3 = v35 + 1;
        v4 = v36;
      }

      while (v35 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v33);
  }

  v21 = +[AXSS_PunctuationGroup fetchRequest];
  v22 = MEMORY[0x1E696AE18];
  v23 = [*(a1 + 32) uuid];
  v24 = [v22 predicateWithFormat:@"uuid = %@", v23];
  [v21 setPredicate:v24];

  [v21 setReturnsObjectsAsFaults:0];
  v25 = [*(a1 + 40) managedObjectContext];
  v37 = v2;
  v26 = [v25 executeFetchRequest:v21 error:&v37];
  v27 = v37;

  v28 = [v26 lastObject];
  if (v28)
  {
    v29 = [*(a1 + 40) managedObjectContext];
    [v29 deleteObject:v28];
  }

  if (v27)
  {
    v30 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __50__AXSSPunctuationManager_removeAllRecordsForPurge__block_invoke_cold_1();
    }
  }

  [*(a1 + 40) _saveIfPossible];
}

- (id)_punctuationEntryFromManagedObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    v5 = [[AXSSPunctuationEntry alloc] init];
    uuid = [objectCopy uuid];
    [(AXSSPunctuationEntry *)v5 setUuid:uuid];

    punctuation = [objectCopy punctuation];
    [(AXSSPunctuationEntry *)v5 setPunctuation:punctuation];

    replacement = [objectCopy replacement];
    [(AXSSPunctuationEntry *)v5 setReplacement:replacement];

    rule = [objectCopy rule];
    [(AXSSPunctuationEntry *)v5 setRule:[(AXSSPunctuationManager *)self stringToRule:rule]];

    -[AXSSPunctuationEntry setVersion:](v5, "setVersion:", [objectCopy version]);
    -[AXSSPunctuationEntry setInCloud:](v5, "setInCloud:", [objectCopy inCloud]);
    ckChangeTag = [objectCopy ckChangeTag];
    [(AXSSPunctuationEntry *)v5 setCkChangeTag:ckChangeTag];

    lastModifiedDate = [objectCopy lastModifiedDate];
    [(AXSSPunctuationEntry *)v5 setLastModifiedDate:lastModifiedDate];

    ckRecordProcessDate = [objectCopy ckRecordProcessDate];
    [(AXSSPunctuationEntry *)v5 setCkRecordProcessDate:ckRecordProcessDate];

    groupUUID = [objectCopy groupUUID];

    [(AXSSPunctuationEntry *)v5 setGroupUUID:groupUUID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_punctuationGroupFromManagedObject:(id)object
{
  v37 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (!objectCopy)
  {
    v5 = 0;
    goto LABEL_19;
  }

  v5 = [[AXSSPunctuationGroup alloc] init];
  uuid = [objectCopy uuid];
  [(AXSSPunctuationGroup *)v5 setUuid:uuid];

  name = [objectCopy name];
  [(AXSSPunctuationGroup *)v5 setName:name];

  -[AXSSPunctuationGroup setInCloud:](v5, "setInCloud:", [objectCopy inCloud]);
  -[AXSSPunctuationGroup setVersion:](v5, "setVersion:", [objectCopy version]);
  ckRecordProcessDate = [objectCopy ckRecordProcessDate];
  [(AXSSPunctuationGroup *)v5 setCkRecordProcessDate:ckRecordProcessDate];

  name2 = [(AXSSPunctuationGroup *)v5 name];

  if (!name2)
  {
    uuid2 = [(AXSSPunctuationGroup *)v5 uuid];
    v11 = [uuid2 isEqual:AXSSVoiceOverPunctuationGroupNone];

    if (v11)
    {
      v12 = @"PUNCTUATION_GROUP_NONE";
LABEL_10:
      v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
      v18 = [v17 localizedStringForKey:v12 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];
      [(AXSSPunctuationGroup *)v5 setName:v18];

      goto LABEL_11;
    }

    uuid3 = [(AXSSPunctuationGroup *)v5 uuid];
    v14 = [uuid3 isEqual:AXSSVoiceOverPunctuationGroupSome];

    if (v14)
    {
      v12 = @"PUNCTUATION_GROUP_SOME";
      goto LABEL_10;
    }

    uuid4 = [(AXSSPunctuationGroup *)v5 uuid];
    v16 = [uuid4 isEqual:AXSSVoiceOverPunctuationGroupAll];

    if (v16)
    {
      v12 = @"PUNCTUATION_GROUP_ALL";
      goto LABEL_10;
    }
  }

LABEL_11:
  v19 = [MEMORY[0x1E695DFA8] set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  autoSwitchContexts = [objectCopy autoSwitchContexts];
  v21 = [autoSwitchContexts countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(autoSwitchContexts);
        }

        contextIdentifier = [*(*(&v32 + 1) + 8 * i) contextIdentifier];
        [v19 addObject:contextIdentifier];
      }

      v22 = [autoSwitchContexts countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  [(AXSSPunctuationGroup *)v5 setAutoSwitchContexts:v19];
  uuid5 = [(AXSSPunctuationGroup *)v5 uuid];
  v27 = [(AXSSPunctuationManager *)self punctuationEntriesForGroupUUID:uuid5];
  [(AXSSPunctuationGroup *)v5 setEntries:v27];

  basePunctuationUUID = [objectCopy basePunctuationUUID];
  [(AXSSPunctuationGroup *)v5 setBasePunctuationUUID:basePunctuationUUID];

  [(AXSSPunctuationGroup *)v5 setInDatabase:1];
  ckChangeTag = [objectCopy ckChangeTag];
  [(AXSSPunctuationGroup *)v5 setCkChangeTag:ckChangeTag];

  lastModifiedDate = [objectCopy lastModifiedDate];
  [(AXSSPunctuationGroup *)v5 setLastModifiedDate:lastModifiedDate];

LABEL_19:

  return v5;
}

- (id)punctuationGroupsForContexts
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = +[AXSS_PunctuationContext fetchRequest];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy_;
  v30[4] = __Block_byref_object_dispose_;
  v31 = 0;
  [v3 setReturnsObjectsAsFaults:0];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __54__AXSSPunctuationManager_punctuationGroupsForContexts__block_invoke;
  v20[3] = &unk_1E81349E8;
  v22 = &v24;
  v20[4] = self;
  v5 = v3;
  v21 = v5;
  v23 = v30;
  [managedObjectContext performBlockAndWait:v20];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v25[5];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v32 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        group = [v11 group];
        v13 = [(AXSSPunctuationManager *)self _punctuationGroupFromManagedObject:group];
        contextIdentifier = [v11 contextIdentifier];
        [dictionary setObject:v13 forKeyedSubscript:contextIdentifier];
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v32 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);

  return dictionary;
}

void __54__AXSSPunctuationManager_punctuationGroupsForContexts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (NSArray)punctuationGroups
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AXSSPunctuationManager_punctuationGroups__block_invoke;
  v6[3] = &unk_1E8134A30;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__AXSSPunctuationManager_punctuationGroups__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = +[AXSS_PunctuationGroup fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [*(a1 + 32) managedObjectContext];
  v20 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v20];
  v5 = v20;

  v6 = [*(a1 + 32) punctuationGroupsForContexts];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(a1 + 32) _punctuationGroupFromManagedObject:{*(*(&v16 + 1) + 8 * v14), v16}];
        [*(a1 + 32) _filterAutoswitchContexts:v15 punctuationGroupsForContexts:v6];
        [*(*(*(a1 + 40) + 8) + 40) addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v12);
  }

  [*(*(*(a1 + 40) + 8) + 40) sortUsingComparator:&__block_literal_global_130];
}

uint64_t __43__AXSSPunctuationManager_punctuationGroups__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 uuid];
  v7 = [v6 isEqual:AXSSVoiceOverPunctuationGroupAll];

  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [v5 uuid];
  v10 = [v9 isEqual:AXSSVoiceOverPunctuationGroupAll];

  if (v10)
  {
LABEL_4:
    v8 = 1;
    goto LABEL_5;
  }

  v12 = [v4 uuid];
  v13 = [v12 isEqual:AXSSVoiceOverPunctuationGroupSome];

  if ((v13 & 1) == 0)
  {
    v14 = [v5 uuid];
    v15 = [v14 isEqual:AXSSVoiceOverPunctuationGroupSome];

    if (v15)
    {
      goto LABEL_4;
    }

    v16 = [v4 uuid];
    v17 = [v16 isEqual:AXSSVoiceOverPunctuationGroupNone];

    if ((v17 & 1) == 0)
    {
      v18 = [v5 uuid];
      v19 = [v18 isEqual:AXSSVoiceOverPunctuationGroupNone];

      if ((v19 & 1) == 0)
      {
        v20 = [v4 name];
        v21 = [v5 name];
        v8 = [v20 localizedCompare:v21];

        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v8 = -1;
LABEL_5:

  return v8;
}

- (void)_filterAutoswitchContexts:(id)contexts punctuationGroupsForContexts:(id)forContexts
{
  v24 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  forContextsCopy = forContexts;
  autoSwitchContexts = [contextsCopy autoSwitchContexts];
  v17 = [autoSwitchContexts mutableCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [contextsCopy autoSwitchContexts];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [forContextsCopy objectForKeyedSubscript:{v12, v17}];
        uuid = [v13 uuid];
        uuid2 = [contextsCopy uuid];
        v16 = [uuid isEqual:uuid2];

        if ((v16 & 1) == 0)
        {
          [v17 removeObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [contextsCopy setAutoSwitchContexts:v17];
}

- (id)punctuationEntryForUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__AXSSPunctuationManager_punctuationEntryForUUID___block_invoke;
  v9[3] = &unk_1E8134900;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __50__AXSSPunctuationManager_punctuationEntryForUUID___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationEntry fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) managedObjectContext];
  v13 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __50__AXSSPunctuationManager_punctuationEntryForUUID___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  v9 = [v5 lastObject];
  v10 = [v8 _punctuationEntryFromManagedObject:v9];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)punctuationGroupForUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__AXSSPunctuationManager_punctuationGroupForUUID___block_invoke;
  v9[3] = &unk_1E8134900;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [managedObjectContext performBlockAndWait:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __50__AXSSPunctuationManager_punctuationGroupForUUID___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationGroup fetchRequest];
  [v2 setReturnsObjectsAsFaults:0];
  [v2 setShouldRefreshRefetchedObjects:1];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid = %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) managedObjectContext];
  v15 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v15];
  v6 = v15;
  v7 = [v5 firstObject];

  v8 = [*(a1 + 40) _punctuationGroupFromManagedObject:v7];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v6)
  {
    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __50__AXSSPunctuationManager_punctuationGroupForUUID___block_invoke_cold_1();
    }
  }

  v12 = *(a1 + 40);
  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [v12 punctuationGroupsForContexts];
  [v12 _filterAutoswitchContexts:v13 punctuationGroupsForContexts:v14];
}

- (id)ruleToString:(int64_t)string
{
  if (string > 2)
  {
    return 0;
  }

  else
  {
    return off_1E8134A78[string];
  }
}

- (int64_t)stringToRule:(id)rule
{
  ruleCopy = rule;
  if ([ruleCopy isEqualToString:@"AXSSPunctuationEntryRuleReplace"])
  {
    v4 = 1;
  }

  else if ([ruleCopy isEqualToString:@"AXSSPunctuationEntryRuleRemove"])
  {
    v4 = 2;
  }

  else
  {
    [ruleCopy isEqualToString:@"AXSSPunctuationEntryRuleIgnore"];
    v4 = 0;
  }

  return v4;
}

- (void)updateEntry:(id)entry fromCloudKit:(BOOL)kit
{
  entryCopy = entry;
  groupUUID = [entryCopy groupUUID];

  if (!groupUUID)
  {
    v8 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [AXSSPunctuationManager updateEntry:fromCloudKit:];
    }
  }

  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__AXSSPunctuationManager_updateEntry_fromCloudKit___block_invoke;
  v11[3] = &unk_1E8134A58;
  v12 = entryCopy;
  selfCopy = self;
  kitCopy = kit;
  v10 = entryCopy;
  [managedObjectContext performBlock:v11];
}

void __51__AXSSPunctuationManager_updateEntry_fromCloudKit___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = +[AXSS_PunctuationEntry fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 predicateWithFormat:@"uuid = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v25 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v25];
  v8 = v25;

  v9 = [v7 lastObject];
  if (v9)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = MEMORY[0x1E695D5B8];
    v12 = [*(a1 + 40) managedObjectContext];
    v13 = [v11 insertNewObjectForEntityForName:@"AXSS_PunctuationEntry" inManagedObjectContext:v12];

    v9 = v13;
  }

  v14 = [*(a1 + 32) uuid];
  [v9 setUuid:v14];

  v15 = [*(a1 + 32) replacement];
  [v9 setReplacement:v15];

  v16 = [*(a1 + 32) groupUUID];
  [v9 setGroupUUID:v16];

  v17 = [*(a1 + 32) punctuation];
  [v9 setPunctuation:v17];

  v18 = [*(a1 + 40) ruleToString:{objc_msgSend(*(a1 + 32), "rule")}];
  [v9 setRule:v18];

  [v9 setVersion:{objc_msgSend(*(a1 + 32), "version")}];
  v19 = [*(a1 + 32) ckRecordProcessDate];
  [v9 setCkRecordProcessDate:v19];

  if (*(a1 + 48))
  {
    v20 = [*(a1 + 32) ckChangeTag];
    [v9 setCkChangeTag:v20];
  }

  else
  {
    [v9 setCkChangeTag:0];
  }

  [v9 setInCloud:{objc_msgSend(*(a1 + 32), "inCloud")}];
  v21 = [MEMORY[0x1E695DF00] date];
  [v9 setLastModifiedDate:v21];

  if (v8)
  {
    v22 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __51__AXSSPunctuationManager_updateEntry_fromCloudKit___block_invoke_cold_1();
    }
  }

  v23 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 32);
    *buf = 138412290;
    v27 = v24;
    _os_log_impl(&dword_1C0E8A000, v23, OS_LOG_TYPE_INFO, "Updating entry: %@", buf, 0xCu);
  }

  [*(a1 + 40) _saveIfPossible];
}

- (void)removeEntry:(id)entry
{
  entryCopy = entry;
  if ([entryCopy inCloud])
  {
    uuid = [entryCopy uuid];
    v6 = +[AXSSPunctuationEntry description];
    [(AXSSPunctuationManager *)self addCloudRecordToPurge:uuid recordEntityType:v6];
  }

  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__AXSSPunctuationManager_removeEntry___block_invoke;
  v9[3] = &unk_1E8134950;
  v10 = entryCopy;
  selfCopy = self;
  v8 = entryCopy;
  [managedObjectContext performBlock:v9];
}

void __38__AXSSPunctuationManager_removeEntry___block_invoke(uint64_t a1)
{
  v2 = +[AXSS_PunctuationEntry fetchRequest];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 predicateWithFormat:@"uuid = %@", v4];
  [v2 setPredicate:v5];

  [v2 setReturnsObjectsAsFaults:0];
  v6 = [*(a1 + 40) managedObjectContext];
  v12 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v12];
  v8 = v12;

  v9 = [v7 lastObject];
  if (v9)
  {
    v10 = [*(a1 + 40) managedObjectContext];
    [v10 deleteObject:v9];
  }

  if (v8)
  {
    v11 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __38__AXSSPunctuationManager_removeEntry___block_invoke_cold_1();
    }
  }

  [*(a1 + 40) _saveIfPossible];
}

- (id)allPunctuationGroup
{
  v2 = allPunctuationGroup_AllPunctuationGroup;
  if (!allPunctuationGroup_AllPunctuationGroup)
  {
    v3 = [(AXSSPunctuationManager *)self punctuationGroupForUUID:AXSSVoiceOverPunctuationGroupAll];
    v4 = allPunctuationGroup_AllPunctuationGroup;
    allPunctuationGroup_AllPunctuationGroup = v3;

    v2 = allPunctuationGroup_AllPunctuationGroup;
  }

  v5 = v2;

  return v5;
}

- (id)somePunctuationGroup
{
  v2 = somePunctuationGroup_SomePunctuationGroup;
  if (!somePunctuationGroup_SomePunctuationGroup)
  {
    v3 = [(AXSSPunctuationManager *)self punctuationGroupForUUID:AXSSVoiceOverPunctuationGroupSome];
    v4 = somePunctuationGroup_SomePunctuationGroup;
    somePunctuationGroup_SomePunctuationGroup = v3;

    v2 = somePunctuationGroup_SomePunctuationGroup;
  }

  v5 = v2;

  return v5;
}

- (id)nonePunctuationGroup
{
  v2 = nonePunctuationGroup_NonePunctuationGroup;
  if (!nonePunctuationGroup_NonePunctuationGroup)
  {
    v3 = [(AXSSPunctuationManager *)self punctuationGroupForUUID:AXSSVoiceOverPunctuationGroupNone];
    v4 = nonePunctuationGroup_NonePunctuationGroup;
    nonePunctuationGroup_NonePunctuationGroup = v3;

    v2 = nonePunctuationGroup_NonePunctuationGroup;
  }

  v5 = v2;

  return v5;
}

- (void)_cloudKitUpdated:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 cloudKitSync];
  v5 = [a1 managedObjectContext];
  v6[0] = 67109378;
  v6[1] = v4;
  v7 = 2112;
  v8 = v5;
  _os_log_debug_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_DEBUG, "Cloud kit updated itself: %d, %@", v6, 0x12u);
}

void __50__AXSSPunctuationManager_punctuationGroupForUUID___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C0E8A000, v1, OS_LOG_TYPE_ERROR, "Error getting group: %@ %@", v2, 0x16u);
}

- (void)updateEntry:fromCloudKit:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_1C0E8A000, v0, OS_LOG_TYPE_FAULT, "Every entry being updated needs a group UUID: %@", v1, 0xCu);
}

@end