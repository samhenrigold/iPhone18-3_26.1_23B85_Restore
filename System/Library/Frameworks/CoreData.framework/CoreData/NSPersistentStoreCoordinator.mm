@interface NSPersistentStoreCoordinator
+ (BOOL)removePersistentHistoryFromPersistentStoreAtURL:(id)l options:(id)options error:(id *)error;
+ (BOOL)removeUbiquitousContentAndPersistentStoreAtURL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error;
+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url error:(NSError *)error;
+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error;
+ (NSDictionary)registeredStoreTypes;
+ (const)_classForPersistentStoreAtURL:(uint64_t)l;
+ (uint64_t)_setMetadata:(void *)metadata forPersistentStoreOfType:(void *)type URL:(uint64_t)l options:(void *)options error:;
+ (uint64_t)_storeClassForStoreType:(uint64_t)type;
+ (void)_registerCoreDataStoreClass:(Class)class forStoreType:(id)type;
+ (void)initialize;
+ (void)registerStoreClass:(Class)storeClass forStoreType:(NSString *)storeType;
- (BOOL)_canRouteToStore:(void *)store forContext:;
- (BOOL)_destroyPersistentStoreAtURL:(id)l withType:(id)type options:(id)options error:(id *)error;
- (BOOL)_refreshTriggerValuesInStore:(id)store error:(id *)error;
- (BOOL)_rekeyPersistentStoreAtURL:(id)l type:(id)type options:(id)options withKey:(id)key error:(id *)error;
- (BOOL)_removeAllPersistentStores:(id *)stores;
- (BOOL)_removePersistentStore:(unint64_t)store;
- (BOOL)_replacePersistentStoreAtURL:(id)l destinationOptions:(id)options withPersistentStoreFromURL:(id)rL sourceOptions:(id)sourceOptions storeType:(id)type error:(id *)error;
- (BOOL)_validateQueryGeneration:(id)generation error:(id *)error;
- (BOOL)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (BOOL)removePersistentStore:(NSPersistentStore *)store error:(NSError *)error;
- (BOOL)setURL:(NSURL *)url forPersistentStore:(NSPersistentStore *)store;
- (NSArray)persistentStores;
- (NSDictionary)metadataForPersistentStore:(NSPersistentStore *)store;
- (NSManagedObjectID)managedObjectIDForURIRepresentation:(NSURL *)url;
- (NSMergeConflict)_conflictsWithRowCacheForObject:(void *)object withContext:(void *)context andStore:;
- (NSMergeConflict)_newConflictRecordForObject:(unint64_t)object andOriginalRow:(void *)row withContext:;
- (NSPersistentHistoryToken)currentPersistentHistoryTokenFromStores:(NSArray *)stores;
- (NSPersistentStore)addPersistentStoreWithType:(NSString *)storeType configuration:(NSString *)configuration URL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error;
- (NSPersistentStore)migratePersistentStore:(NSPersistentStore *)store toURL:(NSURL *)URL options:(NSDictionary *)options withType:(NSString *)storeType error:(NSError *)error;
- (NSPersistentStore)persistentStoreForURL:(NSURL *)URL;
- (NSPersistentStoreCoordinator)init;
- (NSPersistentStoreCoordinator)initWithManagedObjectModel:(NSManagedObjectModel *)model;
- (NSString)name;
- (NSTemporaryObjectID)managedObjectIDForURIRepresentation:(void *)representation error:;
- (NSTemporaryObjectID)managedObjectIDFromUTF8String:(uint64_t)string length:(void *)length error:;
- (NSURL)URLForPersistentStore:(NSPersistentStore *)store;
- (_NSPersistentHistoryToken)_retainedChangeTokenFromStores:(_NSPersistentHistoryToken *)result;
- (_NSQueryGenerationToken)_retainedIdentifierFromStores:(_NSQueryGenerationToken *)result;
- (char)_storeClassForStoreWithType:(char *)result URL:(uint64_t)l options:(void *)options;
- (char)_xpcBundleIdentifier;
- (char)_xpcProcessName;
- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error;
- (id)_doAddPersistentStoreWithDescription:(void *)description privateCopy:(int)copy completeOnMainThread:(uint64_t)thread withHandler:;
- (id)_exceptionNoStoreSaveFailureForError:(id)error recommendedFrame:(int *)frame;
- (id)_lastOpenError;
- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)_reopenQueryGenerationWithIdentifier:(uint64_t)identifier inStoreWithIdentifier:(void *)withIdentifier error:;
- (id)_retainedCurrentQueryGeneration:(id)generation;
- (id)currentQueryGenerationTokenFromStores:(id)stores;
- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)persistentStoreForIdentifier:(id)identifier;
- (id)restoreOriginalRequestIfNecessary:(uint64_t)necessary store:(void *)store swizzledResults:(uint64_t)results originalRequestType:(uint64_t)type originalResultType:;
- (uint64_t)_canSaveGraphRootedAtObject:(void *)value intoStore:(void *)store withPreviouslyChecked:(CFSetRef)theSet withAcceptableEntities:(const __CFSet *)entities;
- (uint64_t)_checkForTombstoneSkew:(uint64_t)skew metadata:(uint64_t)metadata configuration:;
- (uint64_t)_finishDeferredLightweightMigrationTasks:(void *)tasks withError:;
- (uint64_t)_handleFaultingError:(uint64_t)error fromContext:;
- (uint64_t)_hasHistoryTracking:(uint64_t)result;
- (uint64_t)_removePersistentStore:(void *)store error:;
- (uint64_t)applyMigrationStage:(void *)stage withContext:(void *)context error:;
- (unint64_t)migrateStoreWithContext:(void *)context error:;
- (void)_addPersistentStore:(uint64_t)store identifier:;
- (void)_checkForSkewedEntityHashes:(void *)result metadata:(void *)metadata;
- (void)_copyMetadataFromStore:(void *)store toStore:(uint64_t)toStore migrationManager:;
- (void)_doPreSaveAssignmentsForObjects:(void *)objects intoStores:;
- (void)_introspectLastErrorAndThrow;
- (void)_persistentStoreForIdentifier:(uint64_t)identifier;
- (void)_postStoreRemoteChangeNotificationsForStore:(uint64_t)store andState:;
- (void)_postStoresChangedNotificationsForStores:(uint64_t)stores changeKey:(void *)key options:;
- (void)_repairIndiciesForStoreWithIdentifier:(uint64_t)identifier synchronous:;
- (void)_retainedPersistentStores;
- (void)_routeHeavyweightBlock:(unint64_t)block;
- (void)_routeLightweightBlock:(uint64_t)block toStore:;
- (void)_setIsMigrating:(unint64_t)migrating;
- (void)_setXPCBundleIdentifier:(uint64_t)identifier;
- (void)_setXPCProcessName:(uint64_t)name;
- (void)addPersistentStoreWithDescription:(NSPersistentStoreDescription *)storeDescription completionHandler:(void *)block;
- (void)createPersistentContainerForMigrationContext:(void *)context withModel:(uint64_t)model andExecuteBlock:(uint64_t)block;
- (void)dealloc;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)performBlock:(void *)block;
- (void)performBlockAndWait:(void *)block;
- (void)replaceResultTypeOfRequestIfNecessary:(unsigned __int8 *)necessary store:(uint64_t)store requestType:(void *)type originalResultType:;
- (void)setCodableAdapterRegistry:(id)registry;
- (void)setMetadata:(NSDictionary *)metadata forPersistentStore:(NSPersistentStore *)store;
- (void)setName:(NSString *)name;
@end

@implementation NSPersistentStoreCoordinator

- (void)_retainedPersistentStores
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v2 = *(self + 48);
  v3 = v2;
  os_unfair_lock_unlock((self + 32));
  return v2;
}

- (NSArray)persistentStores
{
  os_unfair_lock_lock_with_options();
  persistentStores = self->_persistentStores;
  v4 = persistentStores;
  os_unfair_lock_unlock(&self->_miniLock);

  return persistentStores;
}

- (void)dealloc
{
  MEMORY[0x1865FAAC0](self, a2);
  os_unfair_lock_lock_with_options();
  persistentStores = self->_persistentStores;
  self->_persistentStores = 0;
  __dmb(0xBu);
  os_unfair_lock_unlock(&self->_miniLock);
  if (persistentStores)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke;
    v5[3] = &unk_1E6EC1600;
    v5[4] = persistentStores;
    v5[5] = self;
    _perform_0(self, v5);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke_313;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_async(self->_dispatchQueue, block);
  }
}

uint64_t __39__NSPersistentStoreCoordinator_dealloc__block_invoke(void *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v1 = a1;
    v25 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ([(NSPersistentStoreCoordinator *)v1[5] _hasHistoryTracking:?])
    {
      +[_PFPersistentHistoryModel resetCaches];
    }

    v26 = v1;
    v2 = *(v1[5] + 64);
    if (v2 || v1[4])
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v3)
      {
        v4 = *v36;
        do
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v36 != v4)
            {
              objc_enumerationMutation(v2);
            }

            [+[_PFGarbageManager defaultInstance](_PFGarbageManager doCleanupForURL:*(*(&v35 + 1) + 8 * i)];
          }

          v3 = [v2 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v3);
      }

      *(v26[5] + 64) = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v6 = v26[4];
      v7 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v7)
      {
        v8 = *v32;
        do
        {
          for (j = 0; j != v7; ++j)
          {
            if (*v32 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v31 + 1) + 8 * j);
            v11 = [v10 type];
            if (v10)
            {
              v12 = v11 == @"SQLite";
            }

            else
            {
              v12 = 0;
            }

            if (v12)
            {
              v13 = atomic_load(v10 + 22);
              if (v13)
              {
                v14 = +[_PFGarbageManager defaultInstance];
                -[_PFGarbageManager doCleanupForURL:](v14, [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1]);
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
        }

        while (v7);
      }
    }

    context = objc_autoreleasePoolPush();
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v26[4];
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v16)
    {
      v17 = *v28;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v27 + 1) + 8 * k);
          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          v39 = @"removed";
          v40 = v19;
          [v20 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v40, &v39, 1)}];
          [v19 willRemoveFromPersistentStoreCoordinator:0];
          if (v19)
          {
            if (atomic_load(v19 + 1))
            {
              atomic_store(0, v19 + 1);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v27 objects:v41 count:16];
      }

      while (v16);
    }

    v22 = v26[4];
    if (v22)
    {
      CFRelease(v22);
    }

    objc_autoreleasePoolPop(context);

    *(v26[5] + 72) = 0;
    *(v26[5] + 80) = 0;

    *(v26[5] + 88) = 0;
    *(v26[5] + 96) = 0;

    *(v26[5] + 40) = 0;
    *(v26[5] + 112) = 0;
    objc_storeWeak((v26[5] + 104), 0);
    a1 = [v25 drain];
  }

  return MEMORY[0x1865FAAD0](a1);
}

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_self();
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"SQLite"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"Binary"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"InMemory"];
    [v3 _registerCoreDataStoreClass:objc_opt_class() forStoreType:@"NSXPCStore"];
    v4 = getprogname();
    if (v4)
    {
      if (*v4)
      {
        if (!strncmp("WhatsApp", v4, 8uLL))
        {
          _MergedGlobals_77 = 1;
        }
      }
    }
  }
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__NSPersistentStoreCoordinator_name__block_invoke;
    v5[3] = &unk_1E6EC1860;
    v5[4] = self;
    v5[5] = &v6;
    [(NSPersistentStoreCoordinator *)self performBlockAndWait:v5];
    v2 = v7[5];
  }

  else
  {
    v2 = [(NSString *)self->_queueLabel copy];
    v7[5] = v2;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__NSPersistentStoreCoordinator_dealloc__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_set_context(v2, 0);
    dispatch_release(*(a1 + 32));
  }

  v3 = *(a1 + 40);

  _PFDeallocateObject(v3);
}

void *__36__NSPersistentStoreCoordinator_name__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)performBlock:(void *)block
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlock: on an NSPersistentStoreCoordinator that was created with a queue." userInfo:0]);
  }

  v5 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
  *v5 = _Block_copy(block);
  v5[1] = CFRetain(self);
  v5[2] = 8199;
  v5[3] = 0;
  v5[4] = 0;
  dispatchQueue = self->_dispatchQueue;

  dispatch_async_f(dispatchQueue, v5, developerSubmittedBlockToNSPersistentStoreCoordinatorPerform);
}

- (void)performBlockAndWait:(void *)block
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSPersistentStoreCoordinator that was created with a queue." userInfo:0]);
  }

  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  v12[0] = block;
  v12[1] = self;
  v12[2] = 8196;
  v12[3] = v3;
  v13 = 0;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3;
    while (v6 != self)
    {
      if (v6 == v4)
      {
        goto LABEL_11;
      }

      if (!v4)
      {
        v4 = v6;
      }

      v6 = atomic_load((v6 + 8));
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    v5 = 1;
LABEL_11:
    if (v5)
    {
LABEL_21:
      gutsOfBlockToNSPersistentStoreCoordinatorPerform(v12);
      goto LABEL_23;
    }

LABEL_12:
    v7 = 0;
    v8 = 0;
    selfCopy = self;
    while (selfCopy != v3)
    {
      if (selfCopy == v7)
      {
        goto LABEL_20;
      }

      if (!v7)
      {
        v7 = selfCopy;
      }

      selfCopy = atomic_load(&selfCopy->_queueOwner);
      if (!selfCopy)
      {
        goto LABEL_22;
      }
    }

    v8 = 1;
LABEL_20:
    if (v8)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  dispatch_sync_f(self->_dispatchQueue, v12, developerSubmittedBlockToNSPersistentStoreCoordinatorPerform);
LABEL_23:
  v10 = v13;
  if (v13)
  {
    v11 = v13;
    objc_exception_throw(v10);
  }
}

- (void)_routeLightweightBlock:(uint64_t)block toStore:
{
  if (self)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3052000000;
    v10 = __Block_byref_object_copy__19;
    v11 = __Block_byref_object_dispose__19;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__NSPersistentStoreCoordinator__routeLightweightBlock_toStore___block_invoke;
    v6[3] = &unk_1E6EC2B28;
    v6[4] = self;
    v6[5] = block;
    v6[7] = &v13;
    v6[8] = &v7;
    v6[6] = a2;
    _perform_0(self, v6);
    if (*(v14 + 24) == 1)
    {
      if (v8[5])
      {
        v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        (*(a2 + 16))(a2, v8[5]);

        [v4 drain];
        v5 = 0;
      }
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v13, 8);
  }
}

void __63__NSPersistentStoreCoordinator__routeLightweightBlock_toStore___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 24) & 2) == 0)
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
    return;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  os_unfair_lock_lock_with_options();
  if ([*(*(a1 + 32) + 48) indexOfObjectIdenticalTo:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(*(a1 + 64) + 8) + 40) = *(a1 + 40);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_13;
    }

    v4 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) _persistentStoreCoordinator];
    *buf = 134218240;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  API Misuse: Attempt to serialize store access on non-owning coordinator (PSC = %p, store PSC = %p)\n", buf, 0x16u);
LABEL_13:
    _NSCoreDataLog_console(1, " API Misuse: Attempt to serialize store access on non-owning coordinator (PSC = %p, store PSC = %p)", *(a1 + 32), [*(a1 + 40) _persistentStoreCoordinator]);
    objc_autoreleasePoolPop(v3);
    if ((dword_1ED4BEEC0 & 0x1000000) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_routeHeavyweightBlock:(unint64_t)block
{
  if (block)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__19;
    v10 = __Block_byref_object_dispose__19;
    v11 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__NSPersistentStoreCoordinator__routeHeavyweightBlock___block_invoke;
    v5[3] = &unk_1E6EC2B50;
    v5[6] = &v12;
    v5[7] = &v6;
    v5[4] = block;
    v5[5] = a2;
    _perform_0(block, v5);
    if (*(v13 + 24) == 1)
    {
      if (v7[5])
      {
        v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        (*(a2 + 16))(a2, v7[5]);

        [v3 drain];
        v4 = 0;
      }
    }

    _Block_object_dispose(&v6, 8);
    _Block_object_dispose(&v12, 8);
  }
}

void __55__NSPersistentStoreCoordinator__routeHeavyweightBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  if ((*(v2 + 24) & 2) != 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    os_unfair_lock_lock_with_options();
    *(*(a1[7] + 8) + 40) = [*(a1[4] + 48) mutableCopy];
    v4 = (a1[4] + 32);

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v3 = [(NSPersistentStoreCoordinator *)v2 _retainedPersistentStores];
    (*(a1[5] + 16))();
  }
}

- (void)setName:(NSString *)name
{
  v4 = [(NSString *)name copy];
  v5 = v4;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__NSPersistentStoreCoordinator_setName___block_invoke;
    v6[3] = &unk_1E6EC1600;
    v6[4] = self;
    v6[5] = v4;
    [(NSPersistentStoreCoordinator *)self performBlockAndWait:v6];
  }

  else
  {

    self->_queueLabel = v5;
  }
}

void __40__NSPersistentStoreCoordinator_setName___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];

  v2 = *(a1 + 40);
  *(*(a1 + 32) + 56) = v2;
  __str[0] = 0;
  if (v2)
  {
    snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p: ", *(a1 + 32));
    [*(a1 + 40) UTF8String];
    __strlcat_chk();
  }

  else
  {
    snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p", *(a1 + 32));
  }

  v3 = strdup(__str);
  __dmb(0xBu);
  v4 = *(*(*(a1 + 32) + 16) + *(MEMORY[0x1E69E9790] + 2));
  v5 = v4;
  atomic_compare_exchange_strong((*(*(a1 + 32) + 16) + *(MEMORY[0x1E69E9790] + 2)), &v5, v3);
  if (v5 == v4)
  {
    if (!v4)
    {
      return;
    }

    v6 = v8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v7 = __40__NSPersistentStoreCoordinator_setName___block_invoke_3;
  }

  else
  {
    v6 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v7 = __40__NSPersistentStoreCoordinator_setName___block_invoke_2;
    v4 = v3;
  }

  v6[2] = v7;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)_registerCoreDataStoreClass:(Class)class forStoreType:(id)type
{
  if (!qword_1ED4BEA70)
  {
    qword_1ED4BEA70 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  }

  v6 = [MEMORY[0x1E696B098] valueWithPointer:class];
  v7 = qword_1ED4BEA70;

  [v7 setObject:v6 forKey:type];
}

+ (void)registerStoreClass:(Class)storeClass forStoreType:(NSString *)storeType
{
  if (!storeType)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot register a store class using a 'nil' type." userInfo:0]);
  }

  objc_sync_enter(self);
  if (qword_1ED4BEA70 && [qword_1ED4BEA70 objectForKey:storeType])
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{storeType), 0}];
    objc_exception_throw(v9);
  }

  v7 = qword_1ED4BEA78;
  if (qword_1ED4BEA78)
  {
    if (storeClass)
    {
LABEL_6:
      v8 = [MEMORY[0x1E696B098] valueWithPointer:storeClass];
      [qword_1ED4BEA78 setObject:v8 forKey:storeType];
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    qword_1ED4BEA78 = v7;
    if (storeClass)
    {
      goto LABEL_6;
    }
  }

  [v7 removeObjectForKey:storeType];
LABEL_9:

  objc_sync_exit(self);
}

+ (NSDictionary)registeredStoreTypes
{
  objc_sync_enter(self);
  if (qword_1ED4BEA78)
  {
    v3 = [qword_1ED4BEA78 mutableCopy];
    [v3 addEntriesFromDictionary:qword_1ED4BEA70];
  }

  else
  {
    v3 = [qword_1ED4BEA70 copy];
  }

  objc_sync_exit(self);

  return v3;
}

+ (const)_classForPersistentStoreAtURL:(uint64_t)l
{
  v7[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a2 isFileURL])
  {
    result = [objc_msgSend(a2 "path")];
    if (!result)
    {
      return result;
    }

    v4 = open(result, 0);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      v6 = read(v4, v7, 8uLL);
      close(v5);
      if (v6 == 8 && (v7[0] == 0x66206574694C5153 || v7[0] == 0x6174614465726F43))
      {
        return objc_opt_class();
      }
    }
  }

  return 0;
}

+ (uint64_t)_storeClassForStoreType:(uint64_t)type
{
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = [qword_1ED4BEA70 objectForKey:a2];
  if (!v4)
  {
    v4 = [qword_1ED4BEA78 objectForKey:a2];
  }

  objc_sync_exit(v3);

  return [v4 pointerValue];
}

+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url error:(NSError *)error
{
  if ([@"NSXPCStore" isEqual:?])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"This API is not available on the NSXPCStore" code:3328 userInfo:0];
    }

    return 0;
  }

  else
  {

    return [self metadataForPersistentStoreOfType:storeType URL:url options:0 error:error];
  }
}

+ (NSDictionary)metadataForPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error
{
  v47 = *MEMORY[0x1E69E9840];
  if ([@"NSXPCStore" isEqual:?])
  {
    v10 = [[NSXPCStore alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:url options:options];
    if (v10)
    {
      v11 = v10;
      if ([(NSXPCStore *)v10 loadMetadata:error])
      {
        metadata = [(NSXPCStore *)v11 metadata];

        return metadata;
      }
    }

    else if (error)
    {
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
      result = 0;
      *error = v19;
      return result;
    }

    return 0;
  }

  if ([(NSString *)storeType length])
  {
    v14 = storeType;
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_opt_self();
  if (!url)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
  }

  v16 = v15;
  objc_opt_class();
  objc_opt_class();
  v17 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v45 = 0;
  if ((_MergedGlobals_77 & 1) != 0 || [(NSString *)v14 isEqualToString:@"NSXPCStore"])
  {
    v18 = 0;
  }

  else
  {
    v18 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Retrieving metadata for persistent store"];
  }

  v40 = v18;
  if ([(NSURL *)url isFileURL])
  {
    path = [(NSURL *)url path];
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E695DF20]);
        v26 = [v25 initWithObjectsAndKeys:{url, *MEMORY[0x1E696A998], 0}];
        v45 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v26];
        *error = v45;
      }

      v27 = 0;
      v28 = 0;
      goto LABEL_54;
    }

    memset(&v46, 0, sizeof(v46));
    if (stat([(NSString *)path fileSystemRepresentation], &v46))
    {
      v21 = 1;
    }

    else
    {
      v21 = v46.st_size == 0;
    }

    v22 = !v21;
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v22 = 1;
    if (!v14)
    {
LABEL_28:
      v23 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:?];
      goto LABEL_29;
    }
  }

  v23 = [NSPersistentStoreCoordinator _storeClassForStoreType:v14];
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (((v23 != 0) & v22) == 1)
  {
    v24 = ((objc_opt_respondsToSelector() & 1) != 0 ? [v23 metadataForPersistentStoreWithURL:url options:options error:&v45] : objc_msgSend(v23, "metadataForPersistentStoreWithURL:error:", url, &v45));
    v27 = v24;
    if (v27)
    {
      goto LABEL_51;
    }
  }

  if (((-[NSString length](v14, "length") == 0) & v22) != 1 || (objc_sync_enter(v16), v29 = [qword_1ED4BEA78 allKeys], objc_sync_exit(v16), v41 = 0u, v42 = 0u, v43 = 0u, v44 = 0u, (v30 = objc_msgSend(v29, "countByEnumeratingWithState:objects:count:", &v41, &v46, 16)) == 0))
  {
    v27 = 0;
LABEL_51:
    v28 = 1;
    goto LABEL_54;
  }

  v39 = v17;
  v31 = *v42;
  while (2)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v42 != v31)
      {
        objc_enumerationMutation(v29);
      }

      v33 = *(*(&v41 + 1) + 8 * i);
      v45 = 0;
      v34 = [NSPersistentStoreCoordinator _storeClassForStoreType:v33];
      if (objc_opt_respondsToSelector())
      {
        v35 = [v34 metadataForPersistentStoreWithURL:url options:options error:&v45];
      }

      else
      {
        v35 = [v34 metadataForPersistentStoreWithURL:url error:&v45];
      }

      v27 = v35;
      if (v27)
      {
        v45 = 0;
        v28 = 1;
        goto LABEL_53;
      }
    }

    v30 = [v29 countByEnumeratingWithState:&v41 objects:&v46 count:16];
    v28 = 1;
    if (v30)
    {
      continue;
    }

    break;
  }

  v27 = 0;
LABEL_53:
  v17 = v39;
LABEL_54:
  if ((_MergedGlobals_77 & 1) == 0)
  {
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v40];
  }

  v36 = v45;
  [v17 drain];
  v37 = v45;
  if (!v28)
  {
    return 0;
  }

  if (error && !v27)
  {
    v38 = v45;
    if (!v45)
    {
      v38 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:0];
    }

    *error = v38;
  }

  return v27;
}

+ (BOOL)setMetadata:(NSDictionary *)metadata forPersistentStoreOfType:(NSString *)storeType URL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)error
{
  if ([(NSString *)storeType isEqualToString:@"NSXPCStore"])
  {
    v12 = [[NSXPCStore alloc] initWithPersistentStoreCoordinator:0 configurationName:0 URL:url options:options];
    if (v12)
    {
      v13 = v12;
      v18 = 0;
      if ([(NSXPCStore *)v12 loadMetadata:&v18])
      {
        [(NSXPCStore *)v13 setMetadata:metadata];
        v14 = [(NSXPCStore *)v13 executeRequest:objc_alloc_init(NSSaveChangesRequest) withContext:0 error:error];

        return [v14 BOOLValue];
      }

      if (error)
      {
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          v17 = @"Unknown";
        }

        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v17, *MEMORY[0x1E696AA08])}];
      }
    }

    else if (error)
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
      result = 0;
      *error = v16;
      return result;
    }

    return 0;
  }

  else
  {

    return [NSPersistentStoreCoordinator _setMetadata:storeType forPersistentStoreOfType:url URL:options options:error error:?];
  }
}

+ (uint64_t)_setMetadata:(void *)metadata forPersistentStoreOfType:(void *)type URL:(uint64_t)l options:(void *)options error:
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = objc_opt_self();
  if (!type)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
  }

  v12 = v11;
  objc_opt_class();
  objc_opt_class();
  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v35 = 0;
  optionsCopy = options;
  v29 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Setting metadata for persistent store"];
  if (metadata && (v14 = [NSPersistentStoreCoordinator _storeClassForStoreType:metadata]) != 0 || (v14 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:type]) != 0)
  {
    v15 = (objc_opt_respondsToSelector() & 1) != 0 ? [v14 setMetadata:a2 forPersistentStoreWithURL:type options:l error:&v35] : objc_msgSend(v14, "setMetadata:forPersistentStoreWithURL:error:", a2, type, &v35);
    if (v15)
    {
      v16 = 1;
LABEL_13:
      v17 = optionsCopy;
      goto LABEL_29;
    }
  }

  v28 = v13;
  if (![metadata length])
  {
    objc_sync_enter(v12);
    allKeys = [qword_1ED4BEA78 allKeys];
    objc_sync_exit(v12);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = [allKeys countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = *v32;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(allKeys);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          v35 = 0;
          v24 = [NSPersistentStoreCoordinator _storeClassForStoreType:v23];
          if (objc_opt_respondsToSelector())
          {
            v25 = [v24 setMetadata:a2 forPersistentStoreWithURL:type options:l error:&v35];
          }

          else
          {
            v25 = [v24 setMetadata:a2 forPersistentStoreWithURL:type error:&v35];
          }

          if (v25)
          {
            v16 = 1;
            v17 = optionsCopy;
            goto LABEL_28;
          }
        }

        v20 = [allKeys countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = optionsCopy;
  if (optionsCopy)
  {
    v13 = v28;
    v18 = v35;
    v16 = 0;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_28:
  v13 = v28;
LABEL_29:
  [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v29];
  [v13 drain];
  if (v17)
  {
    v26 = v16;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0)
  {
    *v17 = v35;
  }

  return v16;
}

- (void)setMetadata:(NSDictionary *)metadata forPersistentStore:(NSPersistentStore *)store
{
  if ([(NSPersistentStore *)store isReadOnly])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set metadata in read-only store." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", store), @"NSAffectedStoresErrorKey", 0)}]);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__NSPersistentStoreCoordinator_setMetadata_forPersistentStore___block_invoke;
  v7[3] = &unk_1E6EC2B78;
  v7[4] = metadata;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v7 toStore:store];
}

- (NSDictionary)metadataForPersistentStore:(NSPersistentStore *)store
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__NSPersistentStoreCoordinator_metadataForPersistentStore___block_invoke;
  v5[3] = &unk_1E6EC2BA0;
  v5[4] = &v6;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v5 toStore:store];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __59__NSPersistentStoreCoordinator_metadataForPersistentStore___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 metadata];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return v3;
}

- (uint64_t)_hasHistoryTracking:(uint64_t)result
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    result = [a2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v7;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(a2);
          }

          if ([objc_msgSend(*(*(&v6 + 1) + 8 * v5) "options")])
          {
            return 1;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [a2 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v3 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

void __39__NSPersistentStoreCoordinator_dealloc__block_invoke_313(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(v2 + 56) = 0;
  v3 = *(v2 + 16);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 712);
  if (v5 == v2)
  {
    *(StatusReg + 712) = 0;
  }

  else
  {
    if (v5)
    {
      v6 = atomic_load((v5 + 8));
    }

    else
    {
      v6 = 0;
    }

    if (v6 == v2)
    {
      _PF_actor_set_owner(v6, v5, 0);
    }
  }

  do
  {
    v7 = atomic_load((v2 + 8));
  }

  while (!_PF_actor_set_owner(v7, v2, 0));
  __dmb(0xBu);
  *(v2 + 16) = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__NSPersistentStoreCoordinator_dealloc__block_invoke_2;
  v10[3] = &unk_1E6EC2720;
  v9 = *(a1 + 32);
  v10[4] = v3;
  v10[5] = v9;
  dispatch_async(global_queue, v10);
}

- (NSPersistentStoreCoordinator)init
{
  v3 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
  {
    goto LABEL_7;
  }

  if (_pflogging_catastrophic_mode)
  {
    LogStream = _PFLogGetLogStream(1);
    if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v5 = "CoreData: error: client failed to call designated initializer on NSPersistentStoreCoordinator\n";
    v6 = &v12;
  }

  else
  {
    LogStream = _PFLogGetLogStream(2);
    if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v5 = "CoreData: warning: client failed to call designated initializer on NSPersistentStoreCoordinator\n";
    v6 = &v11;
  }

  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v5, v6, 2u);
LABEL_7:
  if (_pflogging_catastrophic_mode)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  _NSCoreDataLog_console(v7, "client failed to call designated initializer on NSPersistentStoreCoordinator", v11);
  objc_autoreleasePoolPop(v3);
  v8 = objc_alloc_init(NSManagedObjectModel);
  v9 = [(NSPersistentStoreCoordinator *)self initWithManagedObjectModel:v8];

  return v9;
}

- (NSPersistentStoreCoordinator)initWithManagedObjectModel:(NSManagedObjectModel *)model
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v12.receiver = self;
  v12.super_class = NSPersistentStoreCoordinator;
  v5 = [(NSPersistentStoreCoordinator *)&v12 init];
  if (v5)
  {
    if (!model)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot create an NSPersistentStoreCoordinator with a nil model" userInfo:0]);
    }

    v6 = objc_autoreleasePoolPush();
    v5->_persistentStores = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v5->_miniLock._os_unfair_lock_opaque = 0;
    v5->_managedObjectModel = model;
    __str[0] = 0;
    name = [(NSPersistentStoreCoordinator *)v5 name];
    if (name)
    {
      snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p: ", v5);
      [(NSString *)name UTF8String];
      __strlcat_chk();
    }

    else
    {
      snprintf(__str, 0x1FFuLL, "NSPersistentStoreCoordinator %p", v5);
    }

    flags = v5->_flags;
    if ((*&flags >> 2))
    {
      v9 = dispatch_queue_attr_make_with_qos_class(0, (*&flags >> 2), 0);
    }

    else
    {
      v9 = 0;
    }

    v10 = dispatch_queue_create(__str, v9);
    dispatch_set_context(v10, v5);
    v5->_dispatchQueue = v10;
    [(NSManagedObjectModel *)v5->_managedObjectModel _setIsEditable:0];
    *&v5->_flags |= 2u;
    v5->_modelMap = [[_PFModelMap alloc] initWithClientModel:?];
    v5->_codableAdapterRegistry = objc_alloc_init(NSCoreDataCodableAdapterRegistry);
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)_checkForSkewedEntityHashes:(void *)result metadata:(void *)metadata
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    [objc_msgSend(metadata objectForKey:{@"NSPersistenceFrameworkVersion", "floatValue"}];
    if (v4 <= 386)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      managedObjectModel = [v3 managedObjectModel];
      result = [managedObjectModel countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v6 = result;
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(managedObjectModel);
            }

            if (([(NSEntityDescription *)*(*(&v10 + 1) + 8 * i) _hasPotentialHashSkew]& 1) != 0)
            {
              v9 = -[NSManagedObjectModel _entityVersionHashesByNameInStyle:]([v3 managedObjectModel], 1);
              return [v9 isEqual:objc_msgSend_valueForKey_(metadata)];
            }
          }

          v6 = [managedObjectModel countByEnumeratingWithState:&v10 objects:v14 count:16];
          result = 0;
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_checkForTombstoneSkew:(uint64_t)skew metadata:(uint64_t)metadata configuration:
{
  if (!self)
  {
    return 0;
  }

  v7 = [a2 mutableCopy];
  v8 = v7;
  if (v7)
  {
    [(NSManagedObjectModel *)v7 _traverseTombstonesAndMark:?];
  }

  if ([v8 isConfiguration:metadata compatibleWithStoreMetadata:skew])
  {
    v9 = 1;
  }

  else
  {

    v10 = [a2 mutableCopy];
    v8 = v10;
    if (v10)
    {
      [(NSManagedObjectModel *)v10 _traverseTombstonesAndMark:?];
    }

    v9 = [v8 isConfiguration:metadata compatibleWithStoreMetadata:skew];
  }

  return v9;
}

- (id)_doAddPersistentStoreWithDescription:(void *)description privateCopy:(int)copy completeOnMainThread:(uint64_t)thread withHandler:
{
  v59 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v47 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v49 = 0;
  if ([objc_msgSend(description "mirroringOptions")])
  {
    mirroringDelegate = [description mirroringDelegate];
  }

  else
  {
    if (![description cloudKitContainerOptions])
    {
      mirroringDelegate = 0;
      v46 = 1;
      goto LABEL_13;
    }

    [description cloudKitContainerOptions];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = -[NSCloudKitMirroringDelegate initWithOptions:]([NSCloudKitMirroringDelegate alloc], "initWithOptions:", [description cloudKitContainerOptions]);
    }

    else
    {
      v11 = -[NSCloudKitMirroringDelegate initWithCloudKitContainerOptions:]([NSCloudKitMirroringDelegate alloc], "initWithCloudKitContainerOptions:", [description cloudKitContainerOptions]);
    }

    mirroringDelegate = v11;
    [description setMirroringDelegate:v11];
  }

  if (!mirroringDelegate)
  {
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"NSPersistentStoreMirroringDelegateOptionKey", [description mirroringOptions]);
    v14 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A588];
    v52 = v13;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v16 = [v14 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v15];
    mirroringDelegate = 0;
    v49 = v16;
    goto LABEL_17;
  }

  if (-[NSCloudKitMirroringDelegate validateManagedObjectModel:forUseWithStoreWithDescription:error:](mirroringDelegate, "validateManagedObjectModel:forUseWithStoreWithDescription:error:", [v9 managedObjectModel], description, &v49))
  {
    v46 = 0;
LABEL_13:
    v12 = [v9 addPersistentStoreWithType:objc_msgSend(description configuration:"type") URL:objc_msgSend(description options:"configuration") error:{objc_msgSend(description, "URL"), objc_msgSend(description, "options"), &v49}];
    if (v12)
    {
      goto LABEL_14;
    }

    v21 = v49;
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v23 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v25 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v23)
      {
        if (!v25)
        {
          goto LABEL_30;
        }
      }

      else if (!v25)
      {
        goto LABEL_30;
      }

      *buf = 138412802;
      descriptionCopy4 = v9;
      v55 = 2048;
      descriptionCopy = description;
      v57 = 2112;
      v58 = v21;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@: Attempting recovery from error encountered during addPersistentStore: %p %@\n", buf, 0x20u);
    }

LABEL_30:
    _NSCoreDataLog_console(1, "%@: Attempting recovery from error encountered during addPersistentStore: %p %@", v9, description, v21);
    objc_autoreleasePoolPop(v22);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v45 = [objc_msgSend(objc_msgSend(description "URL")];
    domain = [v21 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      if ([v21 code] != 512 && objc_msgSend(v21, "code") != 4 && objc_msgSend(v21, "code") != 514)
      {
        goto LABEL_17;
      }
    }

    else
    {
      domain2 = [v21 domain];
      if (![domain2 isEqualToString:*MEMORY[0x1E696A798]] || objc_msgSend(v21, "code") != 2)
      {
        goto LABEL_17;
      }
    }

    if (([description isReadOnly] & 1) == 0)
    {
      v29 = [defaultManager fileExistsAtPath:v45];
      context = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v29)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          v30 = _pflogging_catastrophic_mode;
          v31 = _PFLogGetLogStream(1);
          v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
          if (v30)
          {
            if (v32)
            {
              *buf = 0;
LABEL_74:
              _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, parent directory path reported to exist\n", buf, 2u);
            }
          }

          else if (v32)
          {
            *buf = 0;
            goto LABEL_74;
          }
        }

        _NSCoreDataLog_console(1, "During recovery, parent directory path reported to exist");
        objc_autoreleasePoolPop(context);
        goto LABEL_57;
      }

      if (_pflogging_enable_oslog >= 1)
      {
        v33 = _pflogging_catastrophic_mode;
        v34 = _PFLogGetLogStream(1);
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_50;
          }

          *buf = 0;
        }

        else
        {
          if (!v35)
          {
            goto LABEL_50;
          }

          *buf = 0;
        }

        _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, parent directory path reported as missing\n", buf, 2u);
      }

LABEL_50:
      _NSCoreDataLog_console(1, "During recovery, parent directory path reported as missing");
      objc_autoreleasePoolPop(context);
      v50 = 0;
      if ([defaultManager createDirectoryAtPath:v45 withIntermediateDirectories:1 attributes:0 error:&v50])
      {
        goto LABEL_57;
      }

      v36 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v37 = _pflogging_catastrophic_mode;
        v38 = _PFLogGetLogStream(1);
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        if (v37)
        {
          if (v39)
          {
            goto LABEL_78;
          }
        }

        else if (v39)
        {
LABEL_78:
          userInfo = [v21 userInfo];
          *buf = 138412802;
          descriptionCopy4 = v45;
          v55 = 2112;
          descriptionCopy = v21;
          v57 = 2112;
          v58 = userInfo;
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: During recovery, failed to create directory structure '%@' with error %@ and userInfo %@\n", buf, 0x20u);
        }
      }

      _NSCoreDataLog_console(1, "During recovery, failed to create directory structure '%@' with error %@ and userInfo %@", v45, v21, [v21 userInfo]);
      objc_autoreleasePoolPop(v36);
LABEL_57:
      v49 = 0;
      v12 = [v9 addPersistentStoreWithType:objc_msgSend(description configuration:"type") URL:objc_msgSend(description options:"configuration") error:{objc_msgSend(description, "URL"), objc_msgSend(description, "options"), &v49}];
      v40 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v12)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              descriptionCopy4 = description;
LABEL_72:
              _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: Recovery attempt while adding %@ was successful!\n", buf, 0xCu);
            }
          }

          else
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              descriptionCopy4 = description;
              goto LABEL_72;
            }
          }
        }

        _NSCoreDataLog_console(1, "Recovery attempt while adding %@ was successful!", description);
        objc_autoreleasePoolPop(v40);
LABEL_14:
        if ((v46 & 1) == 0)
        {
          [(NSCloudKitMirroringDelegate *)mirroringDelegate persistentStoreCoordinator:v9 didSuccessfullyAddPersistentStore:v12 withDescription:description];
        }

        goto LABEL_17;
      }

      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_69;
      }

      if (_pflogging_catastrophic_mode)
      {
        v42 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_77;
        }
      }

      else
      {
        v42 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
LABEL_77:
          *buf = 138412546;
          descriptionCopy4 = description;
          v55 = 2112;
          descriptionCopy = v49;
          _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Recovery attempt while adding %@ FAILED with error %@\n", buf, 0x16u);
        }
      }

LABEL_69:
      _NSCoreDataLog_console(1, "Recovery attempt while adding %@ FAILED with error %@", description, v49);
      objc_autoreleasePoolPop(v40);
    }
  }

LABEL_17:
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (([description shouldInvokeCompletionHandlerConcurrently] | isMainThread ^ copy))
  {
    v18 = v49;
    v19 = a2;
    if (copy)
    {
      global_queue = MEMORY[0x1E69E96A0];
    }

    else
    {
      global_queue = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __114__NSPersistentStoreCoordinator__doAddPersistentStoreWithDescription_privateCopy_completeOnMainThread_withHandler___block_invoke;
    block[3] = &unk_1E6EC2FF0;
    block[4] = a2;
    block[5] = v49;
    block[6] = thread;
    dispatch_async(global_queue, block);
  }

  else
  {
    (*(thread + 16))(thread, a2, v49);
  }

  [v47 drain];
  return 0;
}

void __114__NSPersistentStoreCoordinator__doAddPersistentStoreWithDescription_privateCopy_completeOnMainThread_withHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  (*(*(a1 + 48) + 16))();
  [v2 drain];
}

- (void)addPersistentStoreWithDescription:(NSPersistentStoreDescription *)storeDescription completionHandler:(void *)block
{
  v7 = [(NSPersistentStoreDescription *)storeDescription copy];
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8 = ![(NSPersistentStoreDescription *)storeDescription shouldInvokeCompletionHandlerConcurrently];
  }

  else
  {
    v8 = 0;
  }

  if ([v7 shouldAddStoreAsynchronously])
  {
    global_queue = dispatch_get_global_queue(0, 0);
    blocka[0] = MEMORY[0x1E69E9820];
    blocka[1] = 3221225472;
    blocka[2] = __84__NSPersistentStoreCoordinator_addPersistentStoreWithDescription_completionHandler___block_invoke;
    blocka[3] = &unk_1E6EC2BC8;
    blocka[4] = self;
    blocka[5] = storeDescription;
    v11 = v8;
    blocka[6] = v7;
    blocka[7] = block;
    dispatch_async(global_queue, blocka);
  }

  else
  {
    [(NSPersistentStoreCoordinator *)self _doAddPersistentStoreWithDescription:v7 privateCopy:v8 completeOnMainThread:block withHandler:?];
  }
}

- (NSPersistentStore)addPersistentStoreWithType:(NSString *)storeType configuration:(NSString *)configuration URL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error
{
  v79 = *MEMORY[0x1E69E9840];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = __Block_byref_object_copy__19;
  v71 = __Block_byref_object_dispose__19;
  v72 = configuration;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3052000000;
  v64 = __Block_byref_object_copy__19;
  v65 = __Block_byref_object_dispose__19;
  v66 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3052000000;
  v58 = __Block_byref_object_copy__19;
  v59 = __Block_byref_object_dispose__19;
  v60 = 0;
  managedObjectModel = [(NSPersistentStoreCoordinator *)self managedObjectModel];
  v14 = [-[NSDictionary objectForKey:](options objectForKey:{@"NSPersistentStoreForceLightweightMigrationOption", "BOOLValue"}];
  v15 = v14;
  if (v14)
  {
    v16 = [(NSDictionary *)options mutableCopy];
    [v16 removeObjectForKey:@"NSPersistentStoreForceLightweightMigrationOption"];
    options = [v16 copy];
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke;
  v53[3] = &unk_1E6EC2BF0;
  v53[4] = options;
  v53[5] = self;
  v53[6] = managedObjectModel;
  v53[7] = storeType;
  v53[8] = storeURL;
  v53[9] = &v55;
  v53[10] = &v67;
  v53[11] = &v61;
  v53[12] = error;
  v54 = v15;
  _perform_0(self, v53);
  v17 = v62[5];
  if (v56[5])
  {
    v18 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_9;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v50 = NSStringFromSelector(a2);
    domain = [v56[5] domain];
    code = [v56[5] code];
    *buf = 138412802;
    v74 = v50;
    v75 = 2112;
    v76 = domain;
    v77 = 2048;
    v78 = code;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@ returned error %@ (%ld)\n", buf, 0x20u);
LABEL_9:
    v20 = NSStringFromSelector(a2);
    domain2 = [v56[5] domain];
    _NSCoreDataLog_console(1, "%@ returned error %@ (%ld)", v20, domain2, [v56[5] code]);
    objc_autoreleasePoolPop(v18);
    if (![objc_msgSend(v56[5] "userInfo")])
    {
      goto LABEL_16;
    }

    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
LABEL_88:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: userInfo:\n", buf, 2u);
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          goto LABEL_88;
        }
      }
    }

    _NSCoreDataLog_console(1, "userInfo:");
    objc_autoreleasePoolPop(v22);
    [objc_msgSend(v56[5] "userInfo")];
LABEL_16:
    v24 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_21;
    }

    if (_pflogging_catastrophic_mode)
    {
      v25 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v74 = storeType;
    }

    else
    {
      v25 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v74 = storeType;
    }

    _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: storeType: %@\n", buf, 0xCu);
LABEL_21:
    _NSCoreDataLog_console(1, "storeType: %@", storeType);
    objc_autoreleasePoolPop(v24);
    v26 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_26;
    }

    if (_pflogging_catastrophic_mode)
    {
      v27 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v28 = v68[5];
      *buf = 138412290;
      v74 = v28;
    }

    else
    {
      v27 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v47 = v68[5];
      *buf = 138412290;
      v74 = v47;
    }

    _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: configuration: %@\n", buf, 0xCu);
LABEL_26:
    _NSCoreDataLog_console(1, "configuration: %@", v68[5]);
    objc_autoreleasePoolPop(v26);
    v29 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_31;
    }

    if (_pflogging_catastrophic_mode)
    {
      v30 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v74 = storeURL;
    }

    else
    {
      v30 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v74 = storeURL;
    }

    _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: URL: %@\n", buf, 0xCu);
LABEL_31:
    _NSCoreDataLog_console(1, "URL: %@", storeURL);
    objc_autoreleasePoolPop(v29);
    if ([(NSDictionary *)options count])
    {
      v31 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v32 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: options:\n", buf, 2u);
          }
        }

        else
        {
          v33 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v33, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: options:\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v34 = 1;
      }

      else
      {
        v34 = 4;
      }

      _NSCoreDataLog_console(v34, "options:");
      objc_autoreleasePoolPop(v31);
      [(NSDictionary *)options enumerateKeysAndObjectsUsingBlock:&__block_literal_global_423];
    }

    if ([v56[5] code] != 134130 && objc_msgSend(v56[5], "code") != 134020)
    {
      goto LABEL_51;
    }

    v35 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_86;
        }
      }

      else
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
LABEL_86:
          entityVersionHashesByName = [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)self managedObjectModel] entityVersionHashesByName];
          *buf = 138412290;
          v74 = entityVersionHashesByName;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentStoreCoordinator's current model hashes are %@\n", buf, 0xCu);
        }
      }
    }

    _NSCoreDataLog_console(1, "NSPersistentStoreCoordinator's current model hashes are %@", [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)self managedObjectModel] entityVersionHashesByName]);
    objc_autoreleasePoolPop(v35);
LABEL_51:
    v37 = v56[5];
    if (error)
    {
      *error = v37;
    }

    else
    {

      v56[5] = 0;
    }
  }

  if (v62[5])
  {
    v38 = objc_msgSend_valueForKey_(options);
    if (v38)
    {
      [(NSCoreDataCoreSpotlightDelegate *)v38 _initializePersistentStore];
    }

    if ([objc_msgSend(v62[5] "type")])
    {
      [(NSSQLCore *)v62[5] _initializeQueryGenerationConnectionForProtectionClasses];
    }

    if (([v62[5] isReadOnly] & 1) == 0 && objc_msgSend(objc_msgSend(objc_msgSend(v62[5], "metadata"), "objectForKey:", @"NSPersistentStoreRebuildIndicies"), "BOOLValue"))
    {
      v39 = getprogname();
      if (v39 && (!strncmp("assetsd", v39, 7uLL) || !strncmp("photolibraryd", v39, 0xDuLL)))
      {
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_430;
        v52[3] = &unk_1E6EC1330;
        v52[4] = self;
        v52[5] = &v61;
        [(NSPersistentStoreCoordinator *)self performBlockAndWait:v52];
      }

      else if (objc_msgSend_valueForKey_(options))
      {
        v40 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v41 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: error: Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).\n", buf, 2u);
            }
          }

          else
          {
            v42 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v42, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v43 = 1;
        }

        else
        {
          v43 = 4;
        }

        _NSCoreDataLog_console(v43, "Deferring index repair until after migration is complete (NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey is set).");
        objc_autoreleasePoolPop(v40);
      }

      else
      {
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_2;
        v51[3] = &unk_1E6EC1330;
        v51[4] = self;
        v51[5] = &v61;
        [(NSPersistentStoreCoordinator *)self performBlock:v51];
      }
    }
  }

  v44 = v62[5];
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);
  return v44;
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke(uint64_t a1)
{
  v193 = *MEMORY[0x1E69E9840];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v176[0] = @"NSPersistentStoreUbiquitousContentNameKey";
  v176[1] = @"NSPersistentStoreUbiquitousContentURLKey";
  v176[2] = @"NSPersistentStoreUbiquitousPeerTokenOption";
  v176[3] = @"NSPersistentStoreRemoveUbiquitousMetadataOption";
  v176[4] = @"NSPersistentStoreUbiquitousContainerIdentifierKey";
  v176[5] = @"NSPersistentStoreRebuildFromUbiquitousContentOption";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v176 count:6];
  v2 = [v1 countByEnumeratingWithState:&v155 objects:v177 count:16];
  if (v2)
  {
    v3 = *v156;
    do
    {
      v4 = 0;
      do
      {
        if (*v156 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v155 + 1) + 8 * v4);
        if ([*(a1 + 32) objectForKey:v5])
        {
          if (byte_1ED4BEECF == 1)
          {
            v46 = objc_alloc(MEMORY[0x1E696ABC0]);
            v174 = *MEMORY[0x1E696A588];
            v47 = MEMORY[0x1E696AEC0];
            v48 = objc_opt_class();
            v49 = NSStringFromClass(v48);
            v175 = objc_msgSend_stringWithFormat_(v47, v5, v49);
            v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
            *(*(*(a1 + 72) + 8) + 40) = [v46 initWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:v50];
            v51 = *(*(*(a1 + 72) + 8) + 40);
            if (v51)
            {
              v52 = *(a1 + 96);
              if (v52)
              {
                *v52 = v51;
              }
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
                v189 = 1024;
                LODWORD(v190) = 1510;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
              }

              v61 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
                v189 = 1024;
                LODWORD(v190) = 1510;
                _os_log_fault_impl(&dword_18565F000, v61, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
              }
            }

            return;
          }

          v6 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v7 = _pflogging_catastrophic_mode == 0;
            v8 = _PFLogGetLogStream(1);
            v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              if (v9)
              {
                goto LABEL_16;
              }
            }

            else if (v9)
            {
LABEL_16:
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              *buf = 138412546;
              *&buf[4] = v5;
              v189 = 2112;
              v190 = v13;
              _os_log_error_impl(&dword_18565F000, v8, OS_LOG_TYPE_ERROR, "CoreData: error: Deprecated option '%@' is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.\n", buf, 0x16u);
            }
          }

          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          _NSCoreDataLog_console(1, "Deprecated option '%@' is no longer supported and the symbol will be removed in a future release. Please adopt %@ instead.", v5, v11);
          objc_autoreleasePoolPop(v6);
        }

        ++v4;
      }

      while (v2 != v4);
      v14 = [v1 countByEnumeratingWithState:&v155 objects:v177 count:16];
      v2 = v14;
    }

    while (v14);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v15 = [&unk_1EF43D4F8 countByEnumeratingWithState:&v151 objects:v173 count:16];
  if (v15)
  {
    v16 = *v152;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v152 != v16)
        {
          objc_enumerationMutation(&unk_1EF43D4F8);
        }

        v18 = *(*(&v151 + 1) + 8 * i);
        if (objc_msgSend_valueForKey_(*(a1 + 32)))
        {
          v53 = MEMORY[0x1E696AEC0];
          v54 = NSStringFromSelector(sel_setOption_forMirroringKey_);
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          v57 = objc_msgSend_stringWithFormat_(v53, v18, v54, v56);
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v171 = *MEMORY[0x1E696A588];
          v172 = v57;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
          *(*(*(a1 + 72) + 8) + 40) = [v58 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v59];
          return;
        }
      }

      v15 = [&unk_1EF43D4F8 countByEnumeratingWithState:&v151 objects:v173 count:16];
    }

    while (v15);
  }

  if (![*(a1 + 32) objectForKey:@"NSPersistentHistoryTrackingKey"])
  {
LABEL_78:
    v187[0] = 0;
    v72 = *(a1 + 56);
    v73 = *(a1 + 64);
    if ([v72 isEqualToString:@"NSXPCStore"])
    {
      v74 = 0;
      if (v72)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v74 = [_PFRunningBoardBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Adding persistent store"];
      if (v72)
      {
        goto LABEL_86;
      }
    }

    if (*(a1 + 40))
    {
      v72 = *(a1 + 56);
      v75 = *(a1 + 32);
      *buf = 0;
      v76 = [objc_opt_class() metadataForPersistentStoreOfType:v72 URL:v73 options:v75 error:buf];
      if (v76)
      {
        v72 = [v76 objectForKey:@"NSStoreType"];
      }

      else
      {
        v95 = [*buf domain];
        if (![v95 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(*buf, "code") != 4 && objc_msgSend(*buf, "code") != 260)
        {
          v96 = *buf;
          v187[0] = *buf;
LABEL_116:
          if (!v96)
          {
            v96 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:&unk_1EF435378];
          }

          v85 = 0;
          *(*(*(a1 + 72) + 8) + 40) = v96;
          goto LABEL_184;
        }
      }

      if (v72)
      {
LABEL_86:
        v77 = [NSPersistentStoreCoordinator _storeClassForStoreType:v72];
        if (!v77)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unsupported store type." userInfo:0]);
        }

        if (([objc_msgSend(*(a1 + 32) objectForKey:{@"NSIgnorePersistentStoreVersioningOption", "BOOLValue"}] & 1) != 0 || z9dsptsiQ80etb9782fsrs98bfdle88 != 1)
        {
          v78 = 0;
          v79 = 1;
        }

        else
        {
          v78 = [objc_msgSend(*(a1 + 32) objectForKey:{@"NSMigratePersistentStoresAutomaticallyOption", "BOOLValue"}];
          v79 = 0;
        }

        if (*(*(*(a1 + 80) + 8) + 40) && [@"Default" isEqual:?] && !objc_msgSend(*(a1 + 48), "entitiesForConfiguration:", *(*(*(a1 + 80) + 8) + 40)))
        {
          *(*(*(a1 + 80) + 8) + 40) = 0;
        }

        *(*(*(a1 + 88) + 8) + 40) = [objc_allocWithZone(v77) initWithPersistentStoreCoordinator:*(a1 + 40) configurationName:*(*(*(a1 + 80) + 8) + 40) URL:v73 options:*(a1 + 32)];
        v80 = *(*(*(a1 + 88) + 8) + 40);
        if (v80)
        {
          v81 = atomic_load((v80 + 60));
          v82 = *(*(*(a1 + 88) + 8) + 40);
        }

        else
        {
          v82 = 0;
          v81 = 0;
        }

        v83 = [v82 loadMetadata:v187];
        v84 = *(*(a1 + 88) + 8);
        v85 = *(v84 + 40);
        if (v83)
        {
          [*(v84 + 40) _didLoadMetadata];
          [*(*(*(a1 + 88) + 8) + 40) _setMetadataDirty:v81 & 1];
          v85 = 0;
          v86 = (a1 + 88);
          v87 = *(*(*(a1 + 88) + 8) + 40);
          if (!v87)
          {
LABEL_184:
            [_PFRunningBoardBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v74];
            v131 = *(*(*(a1 + 88) + 8) + 40);
            if (v85)
            {
              [v85 willRemoveFromPersistentStoreCoordinator:0];
            }

            v132 = a1;
            v133 = *(*(*(a1 + 72) + 8) + 40);
            if (v133)
            {
              v134 = v133;
              v135 = a1;
              v136 = *(*(a1 + 40) + 72);
              if (v136 != *(*(*(a1 + 72) + 8) + 40))
              {

                v135 = a1;
                *(*(a1 + 40) + 72) = 0;
              }

              if ([*(v135 + 64) isFileURL])
              {
                v137 = MEMORY[0x1E695DF90];
                v138 = [*(a1 + 64) path];
                v139 = [v137 dictionaryWithObjectsAndKeys:{v138, *MEMORY[0x1E696A368], 0}];
              }

              else
              {
                v139 = 0;
              }

              v140 = [objc_msgSend(*(*(*(a1 + 72) + 8) + 40) "userInfo")];
              if (v140)
              {
                if (!v139)
                {
                  v139 = [MEMORY[0x1E695DF90] dictionary];
                }

                [v139 setObject:v140 forKey:@"NSSQLiteErrorDomain"];
              }

              v141 = [*(*(*(a1 + 72) + 8) + 40) userInfo];
              v142 = *MEMORY[0x1E696A798];
              v143 = [v141 objectForKey:*MEMORY[0x1E696A798]];
              if (v143)
              {
                if (!v139)
                {
                  v139 = [MEMORY[0x1E695DF90] dictionary];
                }

                [v139 setObject:v143 forKey:v142];
              }

              v144 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(*(*(*(a1 + 72) + 8) + 40) code:"domain") userInfo:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "code"), v139}];
              v132 = a1;
              *(*(a1 + 40) + 72) = v144;
            }

            if (*(*(*(v132 + 88) + 8) + 40))
            {

              *(*(a1 + 40) + 72) = 0;
            }

            v145 = *(*(*(a1 + 88) + 8) + 40);
            if (v145 && ([v145 supportsConcurrentRequestHandling] & 1) == 0)
            {
              *(*(a1 + 40) + 24) &= ~2u;
            }

            return;
          }

          v88 = [objc_msgSend(v87 "metadata")];
          v89 = v88;
          if (!v88 && *(a1 + 96))
          {
            v101 = MEMORY[0x1E696ABC0];
            v102 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't read store metadata.", @"reason", 0}];
            *(*(*(a1 + 72) + 8) + 40) = [v101 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v102];
            v100 = *(a1 + 88);
LABEL_125:
            v90 = *(v100 + 8);
            if (*(v90 + 40))
            {
              v85 = *(v90 + 40);
            }

LABEL_143:
            *(v90 + 40) = 0;
            goto LABEL_184;
          }

          if (([v72 isEqual:{-[NSString objectForKey:](v88, "objectForKey:", @"NSStoreType"}] & 1) == 0)
          {
            if (!*(a1 + 96))
            {
LABEL_122:
              v100 = *v86;
              goto LABEL_125;
            }

            v97 = MEMORY[0x1E696ABC0];
            v98 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The store type in the metadata does not match the specified store type.", @"reason", v89, @"metadata", 0}];
            v99 = [v97 errorWithDomain:*MEMORY[0x1E696A250] code:134010 userInfo:v98];
LABEL_121:
            *(*(*(a1 + 72) + 8) + 40) = v99;
            goto LABEL_122;
          }

          if ((v79 & 1) == 0)
          {
            v103 = [(NSString *)v89 objectForKey:@"NSStoreModelVersionHashesVersion"];
            if ([v103 intValue] >= 4)
            {
              if (*(a1 + 96))
              {
                v107 = MEMORY[0x1E696ABC0];
                v108 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The version hash version (and associated hashes) are incompatible with the current Core Data version.", @"reason", v89, @"metadata", 0}];
                *(*(*(a1 + 72) + 8) + 40) = [v107 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v108];
              }

              v90 = *(*v86 + 8);
              v109 = *(v90 + 40);
              if (v109)
              {
                *(v90 + 40) = 0;
                v90 = *(*v86 + 8);
                v85 = v109;
              }

              goto LABEL_143;
            }

            if (v103)
            {
              if ([(NSString *)v89 objectForKey:@"NSStoreModelVersionHashes"])
              {
                v104 = [*(a1 + 48) isConfiguration:*(*(*(a1 + 80) + 8) + 40) compatibleWithStoreMetadata:v89];
                if (((*(a1 + 104) & 1) != 0 || v104 != 1) && ((*(a1 + 104) & 1) != 0 || ([NSPersistentStoreCoordinator _checkForSkewedEntityHashes:v89 metadata:?]& 1) == 0 && (![_PFPersistentHistoryModel _hasTombstonesInUserInfo:?]|| ([(NSPersistentStoreCoordinator *)*(a1 + 40) _checkForTombstoneSkew:v89 metadata:*(*(*(a1 + 80) + 8) + 40) configuration:?]& 1) == 0)))
                {
                  if (!objc_msgSend_valueForKey_(*(a1 + 32)))
                  {
                    if (+[NSMappingModel migrationDebugLevel])
                    {
                      v112 = @" NOT ";
                      if (v78)
                      {
                        v112 = @" ";
                      }

                      v149 = v112;
                      v113 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(4))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v114 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                          {
                            v115 = [*(a1 + 48) entityVersionHashesByName];
                            *buf = 138412802;
                            *&buf[4] = v73;
                            v189 = 2112;
                            v190 = v89;
                            v191 = 2112;
                            v192 = v115;
                            _os_log_error_impl(&dword_18565F000, v114, OS_LOG_TYPE_ERROR, "CoreData: error: Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@\n", buf, 0x20u);
                          }
                        }

                        else
                        {
                          v116 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                          {
                            v117 = [*(a1 + 48) entityVersionHashesByName];
                            *buf = 138412802;
                            *&buf[4] = v73;
                            v189 = 2112;
                            v190 = v89;
                            v191 = 2112;
                            v192 = v117;
                            _os_log_impl(&dword_18565F000, v116, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@\n", buf, 0x20u);
                          }
                        }
                      }

                      v118 = *(a1 + 48);
                      if (_pflogging_catastrophic_mode)
                      {
                        v119 = [v118 entityVersionHashesByName];
                        v120 = 1;
                      }

                      else
                      {
                        v119 = [v118 entityVersionHashesByName];
                        v120 = 4;
                      }

                      _NSCoreDataLog_console(v120, "Incompatible version schema for persistent store '%@'.  store metadata = %@ and current model versions = %@", v73, v89, v119);
                      objc_autoreleasePoolPop(v113);
                      v121 = objc_autoreleasePoolPush();
                      if (_NSCoreDataIsOSLogEnabled(4))
                      {
                        if (_pflogging_catastrophic_mode)
                        {
                          v122 = _PFLogGetLogStream(1);
                          if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            *&buf[4] = v149;
                            _os_log_error_impl(&dword_18565F000, v122, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t will%@attempt automatic schema migration\n", buf, 0xCu);
                          }
                        }

                        else
                        {
                          v123 = _PFLogGetLogStream(4);
                          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = v149;
                            _os_log_impl(&dword_18565F000, v123, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t will%@attempt automatic schema migration\n", buf, 0xCu);
                          }
                        }
                      }

                      if (_pflogging_catastrophic_mode)
                      {
                        v124 = 1;
                      }

                      else
                      {
                        v124 = 4;
                      }

                      _NSCoreDataLog_console(v124, "(migration)\t will%@attempt automatic schema migration", v149);
                      objc_autoreleasePoolPop(v121);
                    }

                    v125 = *(*v86 + 8);
                    v126 = *(v125 + 40);
                    if (v126)
                    {
                      *(v125 + 40) = 0;
                      v85 = v126;
                    }

                    if (v78)
                    {
                      v127 = [*(a1 + 32) mutableCopy];
                      [v127 setValue:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreCoordinatorIsMigratingStoreWithStagedMigrationOptionKey"];
                      v128 = [[NSPersistentStoreCoordinatorMigrationContext alloc] initWithStoreURL:v73 type:v72 options:v127];

                      [(NSPersistentStoreCoordinatorMigrationContext *)v128 setConfigurationName:*(*(*(a1 + 80) + 8) + 40)];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v128 setDestinationConfigurationForCloudKitValidation:*(*(*(a1 + 80) + 8) + 40)];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v128 setMetadata:v89];
                      [(NSPersistentStoreCoordinatorMigrationContext *)v128 setForceMigration:*(a1 + 104)];
                      if ([(NSPersistentStoreCoordinator *)*(a1 + 40) migrateStoreWithContext:v128 error:(*(*(a1 + 72) + 8) + 40)])
                      {
                        *(*(*v86 + 8) + 40) = [(NSPersistentStoreCoordinatorMigrationContext *)v128 migratedStore];
                      }

                      goto LABEL_184;
                    }

                    if (*(a1 + 96))
                    {
                      v129 = MEMORY[0x1E696ABC0];
                      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"The model used to open the store is incompatible with the one used to create the store", @"reason", v89, @"metadata", 0}];
                      *(*(*(a1 + 72) + 8) + 40) = [v129 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v130];
                    }

                    v90 = *(*v86 + 8);
                    goto LABEL_143;
                  }

                  if (!*(a1 + 96))
                  {
                    goto LABEL_122;
                  }

                  v105 = MEMORY[0x1E696ABC0];
                  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Incompatible metadata after migration because the store version hashes didn't migrate.", @"reason", v89, @"metadata", -[NSString objectForKeyedSubscript:](v89, "objectForKeyedSubscript:", @"NSStoreModelVersionChecksumKey", @"source checksum", objc_msgSend(*(a1 + 48), "versionChecksum"), @"destination checksum", 0}];
                  v99 = [v105 errorWithDomain:*MEMORY[0x1E696A250] code:134100 userInfo:v106];
                  goto LABEL_121;
                }
              }
            }
          }

          v90 = *(*v86 + 8);
          v91 = *(v90 + 40);
          if (!v91)
          {
            if (*(a1 + 96))
            {
              *(*(*(a1 + 72) + 8) + 40) = v187[0];
              v90 = *(*(a1 + 88) + 8);
            }

            goto LABEL_143;
          }

          if ([v91 load:v187])
          {
            -[NSPersistentStoreCoordinator _addPersistentStore:identifier:](*(a1 + 40), *(*(*(a1 + 88) + 8) + 40), [*(*(*(a1 + 88) + 8) + 40) identifier]);

            [(NSPersistentStore *)*(*(*v86 + 8) + 40) _updateMetadata];
            [*(*(*(a1 + 88) + 8) + 40) _setupObserver:*(a1 + 40)];
            [*(*(*(a1 + 88) + 8) + 40) didAddToPersistentStoreCoordinator:*(a1 + 40)];
            v92 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(*(*v86 + 8) + 40), 0}];
            [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v92 changeKey:@"added" options:*(a1 + 32)];

            goto LABEL_184;
          }

          [*(*(*v86 + 8) + 40) _unload:0];
          v110 = *(*v86 + 8);
          v111 = *(v110 + 40);
          if (v111)
          {
            *(v110 + 40) = 0;
            v85 = v111;
          }
        }

        else if (v85)
        {
          *(v84 + 40) = 0;
        }

        else if (!v187[0])
        {
          v93 = MEMORY[0x1E696ABC0];
          v94 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unable to initialize store.", @"reason", 0}];
          v187[0] = [v93 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v94];
        }

        if (*(a1 + 96))
        {
          *(*(*(a1 + 72) + 8) + 40) = v187[0];
        }

        goto LABEL_184;
      }
    }

    v96 = v187[0];
    goto LABEL_116;
  }

  v19 = a1;
  if (!*(a1 + 40))
  {
    goto LABEL_76;
  }

  v20 = *(a1 + 48);
  v146 = *(*(a1 + 72) + 8);
  v21 = [*(a1 + 32) objectForKey:@"NSPersistentHistoryTrackingKey"];
  if (![v21 isNSDictionary])
  {
    if (([v21 isNSNumber] & 1) == 0)
    {
      v62 = MEMORY[0x1E696ABC0];
      v182 = *MEMORY[0x1E696A588];
      v63 = MEMORY[0x1E696AEC0];
      v64 = objc_opt_class();
      v65 = NSStringFromClass(v64);
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      v183 = objc_msgSend_stringWithFormat_(v63, @"NSPersistentHistoryTrackingKey", v65, v67);
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
      v45 = [v62 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v68];
      if (v45)
      {
        goto LABEL_61;
      }

      goto LABEL_72;
    }

    goto LABEL_78;
  }

  v148 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = [v20 entities];
  v22 = [obj countByEnumeratingWithState:&v167 objects:buf count:16];
  if (!v22)
  {
    goto LABEL_52;
  }

  v23 = *v168;
  do
  {
    for (j = 0; j != v22; ++j)
    {
      if (*v168 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v167 + 1) + 8 * j);
      v26 = [objc_msgSend(v25 "userInfo")];
      v27 = v26;
      if (!v26)
      {
        continue;
      }

      if (![v26 isNSString])
      {
        v32 = MEMORY[0x1E696AEC0];
        v33 = [v25 name];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = objc_msgSend_stringWithFormat_(v32, v33, v35, v37);
LABEL_49:
        [v148 addObject:v38];
        continue;
      }

      if (![v27 length])
      {
        v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v25 name]);
        goto LABEL_49;
      }

      v28 = [v27 componentsSeparatedByString:{@", "}];
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v29 = [v28 countByEnumeratingWithState:&v163 objects:v187 count:16];
      if (v29)
      {
        v30 = *v164;
        while (2)
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v164 != v30)
            {
              objc_enumerationMutation(v28);
            }

            if (![objc_msgSend(v25 "attributesByName")])
            {
              v38 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v25 name], v27);
              goto LABEL_49;
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v163 objects:v187 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }
    }

    v22 = [obj countByEnumeratingWithState:&v167 objects:buf count:16];
  }

  while (v22);
LABEL_52:
  if (![v148 count])
  {

    goto LABEL_78;
  }

  [v148 sortUsingSelector:sel_localizedCaseInsensitiveCompare_];
  v39 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"The following entities did not have a valid configuration for %@. It should be a string of comma separated attribute names to tombstone on delete.", @"NSPersistentHistoryTombstoneAttributes"];
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v40 = [v148 countByEnumeratingWithState:&v159 objects:v186 count:16];
  if (v40)
  {
    v41 = *v160;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v160 != v41)
        {
          objc_enumerationMutation(v148);
        }

        [v39 appendFormat:@"\n%@", *(*(&v159 + 1) + 8 * m)];
      }

      v40 = [v148 countByEnumeratingWithState:&v159 objects:v186 count:16];
    }

    while (v40);
  }

  v43 = MEMORY[0x1E696ABC0];
  v184 = *MEMORY[0x1E696A588];
  v185 = v39;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v185 forKeys:&v184 count:1];
  v45 = [v43 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v44];

  if (v45)
  {
LABEL_61:
    *(v146 + 40) = v45;
    v19 = a1;
    goto LABEL_76;
  }

LABEL_72:
  v69 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    *v178 = 136315394;
    v179 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v180 = 1024;
    v181 = 6278;
    _os_log_error_impl(&dword_18565F000, v69, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", v178, 0x12u);
  }

  v70 = _PFLogGetLogStream(17);
  v19 = a1;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
  {
    *v178 = 136315394;
    v179 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v180 = 1024;
    v181 = 6278;
    _os_log_fault_impl(&dword_18565F000, v70, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", v178, 0x12u);
  }

LABEL_76:
  v71 = *(*(*(v19 + 72) + 8) + 40);
}

- (unint64_t)migrateStoreWithContext:(void *)context error:
{
  selfCopy = self;
  v68[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    configurationName = [a2 configurationName];
    [a2 setConfigurationName:0];
    v54 = 0;
    v7 = [objc_msgSend(a2 "options")];
    if (v7 && (![objc_msgSend(objc_msgSend(a2 "options")] || (objc_msgSend(objc_msgSend(objc_msgSend(a2, "options"), "objectForKey:", @"NSInferMappingModelAutomaticallyOption"), "BOOLValue") & 1) == 0))
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = *MEMORY[0x1E696A250];
      v67 = *MEMORY[0x1E696A578];
      v68[0] = @"Staged Migration was requested with NSPersistentStoreStagedMigrationManagerOptionKey but without setting NSMigratePersistentStoresAutomaticallyOption and NSInferMappingModelAutomaticallyOption to YES.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      v13 = 134100;
LABEL_8:
      v14 = v10;
      v15 = v11;
LABEL_9:
      v54 = [v14 initWithDomain:v15 code:v13 userInfo:v12];
      goto LABEL_10;
    }

    [v7 _validateStages:&v54];
    v8 = v54;
    if (v54)
    {
LABEL_6:
      v9 = v8;
      goto LABEL_10;
    }

    [a2 setStagedMigrationManager:v7];
    if (![objc_msgSend(v7 "stages")])
    {
      v25 = 0;
LABEL_36:
      *(selfCopy + 24) |= 0x400u;
      if ([v25 count])
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v31 = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v51;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v51 != v33)
              {
                objc_enumerationMutation(v25);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                v37 = [v25 countByEnumeratingWithState:&v46 objects:v59 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v47;
                  while (2)
                  {
                    for (j = 0; j != v38; ++j)
                    {
                      if (*v47 != v39)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v41 = *(*(&v46 + 1) + 8 * j);
                      v42 = objc_autoreleasePoolPush();
                      if (([(NSPersistentStoreCoordinator *)selfCopy applyMigrationStage:v41 withContext:a2 error:&v54]& 1) == 0)
                      {
                        v45 = v54;
                        objc_autoreleasePoolPop(v42);
                        goto LABEL_62;
                      }

                      objc_autoreleasePoolPop(v42);
                    }

                    v38 = [v25 countByEnumeratingWithState:&v46 objects:v59 count:16];
                    if (v38)
                    {
                      continue;
                    }

                    break;
                  }
                }

                goto LABEL_57;
              }
            }

            v32 = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        lastObject = [v25 lastObject];
        v36 = selfCopy;
      }

      else
      {
        v36 = selfCopy;
        lastObject = 0;
      }

      if (([(NSPersistentStoreCoordinator *)v36 applyMigrationStage:lastObject withContext:a2 error:&v54]& 1) != 0)
      {
LABEL_57:
        *(selfCopy + 24) &= ~0x400u;
        -[NSPersistentStoreCoordinator _removePersistentStore:](selfCopy, [selfCopy persistentStoreForURL:{objc_msgSend(a2, "storeURL")}]);
        v43 = [selfCopy addPersistentStoreWithType:objc_msgSend(a2 configuration:"storeType") URL:configurationName options:objc_msgSend(a2 error:{"storeURL"), objc_msgSend(a2, "options"), &v54}];
        v8 = v54;
        if (v43 && !v54)
        {
          [a2 setMigratedStore:v43];
          selfCopy = 1;
          goto LABEL_18;
        }

        goto LABEL_6;
      }

      v44 = v54;
LABEL_62:
      *(selfCopy + 24) &= ~0x400u;
LABEL_10:
      v16 = v54;
      if (v16)
      {
        if (context)
        {
          selfCopy = 0;
          *context = v16;
LABEL_18:

          return selfCopy;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v56 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
          v57 = 1024;
          v58 = 3684;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v56 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
          v57 = 1024;
          v58 = 3684;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      selfCopy = 0;
      goto LABEL_18;
    }

    v20 = [objc_msgSend(a2 "metadata")];
    if (!v20)
    {
      goto LABEL_65;
    }

    v21 = v20;
    v22 = [v7 _findCurrentMigrationStageFromModelChecksum:v20];
    if (([v7 _shouldAttemptStagedMigrationWithStoreModelVersionChecksum:v21 coordinatorModelVersionChecksum:objc_msgSend(objc_msgSend(selfCopy error:{"managedObjectModel"), "versionChecksum"), &v54}] & 1) == 0)
    {
      v8 = v54;
      goto LABEL_6;
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_65:
      if ([objc_msgSend(a2 "storeType")])
      {
        v23 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", [a2 storeURL], objc_msgSend(a2, "options"), &v54);
        [v23 _setIsEditable:0];
        if (v23)
        {
          v24 = [v7 _findCurrentMigrationStageFromModelChecksum:{objc_msgSend(v23, "versionChecksum")}];
          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = objc_alloc(MEMORY[0x1E696ABC0]);
            v11 = *MEMORY[0x1E696A250];
            v65 = *MEMORY[0x1E696A578];
            v66 = @"Cannot use staged migration with an unknown model version.";
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
            v13 = 134504;
            goto LABEL_8;
          }

          v22 = v24;
          goto LABEL_35;
        }

        v8 = v54;
        if (v54)
        {
          goto LABEL_6;
        }

        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E696A250];
        v63 = *MEMORY[0x1E696A578];
        v64 = @"The store must be opened one time without Staged Migration to update store metadata to be able to use Staged Migration.";
        v28 = MEMORY[0x1E695DF20];
        v29 = &v64;
        v30 = &v63;
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E696A250];
        v61 = *MEMORY[0x1E696A578];
        v62 = @"The store must be opened one time without Staged Migration to update store metadata to be able to use Staged Migration.";
        v28 = MEMORY[0x1E695DF20];
        v29 = &v62;
        v30 = &v61;
      }

      v12 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];
      v14 = v26;
      v15 = v27;
      v13 = 134505;
      goto LABEL_9;
    }

LABEL_35:
    v25 = [objc_msgSend(v7 "stages")];
    goto LABEL_36;
  }

  return selfCopy;
}

- (void)_addPersistentStore:(uint64_t)store identifier:
{
  if (self)
  {
    v6 = [a2 URL];
    if (v6 && [self persistentStoreForURL:v6] || -[NSPersistentStoreCoordinator _persistentStoreForIdentifier:](self, store))
    {
      v9 = [_NSCoreDataException exceptionWithName:134081 code:@"Can't add the same store twice" reason:0 userInfo:?];
      objc_exception_throw(v9);
    }

    __dmb(0xBu);
    while (1)
    {
      os_unfair_lock_lock_with_options();
      v7 = *(self + 48);
      v8 = [v7 arrayByAddingObject:a2];
      CFRetain(v8);
      if (*(self + 48) == v7)
      {
        break;
      }

      os_unfair_lock_unlock((self + 32));
      if (v8)
      {
        CFRelease(v8);
      }
    }

    *(self + 48) = v8;
    os_unfair_lock_unlock((self + 32));
    if (v7)
    {

      CFRelease(v7);
    }
  }
}

- (void)_postStoresChangedNotificationsForStores:(uint64_t)stores changeKey:(void *)key options:
{
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    if (!a2)
    {
      a2 = [MEMORY[0x1E695DEC8] array];
    }

    v10 = [v9 initWithObjectsAndKeys:{a2, stores, 0}];
    if (!key || (v11 = [key objectForKey:@"_NSNotifyObserversOfStoreChange"]) == 0 || (objc_msgSend(v11, "BOOLValue")) && (*(self + 24) & 0x400) == 0)
    {
      [defaultCenter postNotificationName:@"_NSPersistentStoreCoordinatorStoresDidChangePrivateNotification" object:self userInfo:v10];
      [defaultCenter postNotificationName:@"NSPersistentStoreCoordinatorStoresDidChangeNotification" object:self userInfo:v10];
    }
  }
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v6 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v8 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        goto LABEL_7;
      }
    }

    else if (v8)
    {
LABEL_7:
      *buf = 138412546;
      *&buf[4] = a2;
      *&buf[12] = 2112;
      *&buf[14] = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \t%@ : %@\n", buf, 0x16u);
    }
  }

  _NSCoreDataLog_console(1, "\t%@ : %@", a2, a3, *buf, *&buf[8], v10);
  objc_autoreleasePoolPop(v5);
}

void __91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_421(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  _pflogInitialize(4);
  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v10 = a2;
        v11 = 2112;
        v12 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: \t%@ : %@\n", buf, 0x16u);
      }
    }

    else
    {
      v7 = _PFLogGetLogStream(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = a2;
        v11 = 2112;
        v12 = a3;
        _os_log_impl(&dword_18565F000, v7, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: \t%@ : %@\n", buf, 0x16u);
      }
    }
  }

  if (_pflogging_catastrophic_mode)
  {
    v8 = 1;
  }

  else
  {
    v8 = 4;
  }

  _NSCoreDataLog_console(v8, "\t%@ : %@", a2, a3);
  objc_autoreleasePoolPop(v5);
}

void *__91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_430(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) identifier];

  return [(NSPersistentStoreCoordinator *)v1 _repairIndiciesForStoreWithIdentifier:v2 synchronous:1];
}

- (void)_repairIndiciesForStoreWithIdentifier:(uint64_t)identifier synchronous:
{
  if (result)
  {
    v4 = [result persistentStoreForIdentifier:a2];
    result = [v4 isReadOnly];
    if ((result & 1) == 0)
    {
      result = [objc_msgSend(objc_msgSend(v4 "metadata")];
      if (result)
      {

        return [v4 _rebuildIndiciesSynchronously:identifier];
      }
    }
  }

  return result;
}

void *__91__NSPersistentStoreCoordinator_addPersistentStoreWithType_configuration_URL_options_error___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) identifier];

  return [(NSPersistentStoreCoordinator *)v1 _repairIndiciesForStoreWithIdentifier:v2 synchronous:0];
}

- (BOOL)removePersistentStore:(NSPersistentStore *)store error:(NSError *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (store)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = @"removed";
    v10[0] = store;
    [defaultCenter postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  }

  return [(NSPersistentStoreCoordinator *)self _removePersistentStore:error error:?];
}

- (uint64_t)_removePersistentStore:(void *)store error:
{
  if (self)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__19;
    v16 = __Block_byref_object_dispose__19;
    v17 = 0;
    if ([objc_msgSend(a2 "type")])
    {
      v6 = a2;
      [a2 _prepareStoreForRemovalFromCoordinator:self];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__NSPersistentStoreCoordinator__removePersistentStore_error___block_invoke;
    v11[3] = &unk_1E6EC1A00;
    v11[4] = a2;
    v11[5] = self;
    v11[6] = &v18;
    v11[7] = &v12;
    _perform_0(self, v11);
    v7 = v13[5];
    if (v7)
    {
      v8 = v7;
      if (store)
      {
        *store = v13[5];
      }
    }

    v9 = *(v19 + 24);
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)_removeAllPersistentStores:(id *)stores
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__19;
  v13 = __Block_byref_object_dispose__19;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__NSPersistentStoreCoordinator__removeAllPersistentStores___block_invoke;
  v8[3] = &unk_1E6EC1EB8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  [(NSPersistentStoreCoordinator *)self performBlockAndWait:v8];
  v4 = v10[5];
  if (stores)
  {
    v5 = v10[5];
    if (v5)
    {
      *stores = v5;
    }
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
  return v6;
}

void __59__NSPersistentStoreCoordinator__removeAllPersistentStores___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) persistentStores];
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

        if (([*(a1 + 32) removePersistentStore:*(*(&v9 + 1) + 8 * v7) error:*(*(a1 + 40) + 8) + 40] & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  objc_autoreleasePoolPop(v2);
}

void __61__NSPersistentStoreCoordinator__removePersistentStore_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && [objc_msgSend(*(a1 + 40) "persistentStores")] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = *(a1 + 32);
    *(*(*(a1 + 48) + 8) + 24) = [(NSPersistentStoreCoordinator *)*(a1 + 40) _removePersistentStore:?];
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v2 count:1];
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v4 changeKey:@"removed" options:0];

    if ([*(a1 + 32) type] == @"SQLite" && !*(*(a1 + 40) + 64))
    {
      *(*(a1 + 40) + 64) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = atomic_load((v5 + 176));
        if (v6)
        {
          [*(*(a1 + 40) + 64) addObject:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", v6, 1)}];
        }
      }
    }

    v7 = *v2;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4353A0];
  }
}

- (BOOL)_removePersistentStore:(unint64_t)store
{
  if (store)
  {
    if (_PF_Threading_Debugging_level)
    {
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v10 = *(StatusReg + 712);
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = 0;
      v12 = 0;
      while (v10 != store)
      {
        if (v10 == v11)
        {
          goto LABEL_23;
        }

        if (!v11)
        {
          v11 = v10;
        }

        v10 = atomic_load((v10 + 8));
        if (!v10)
        {
          goto LABEL_24;
        }
      }

      v12 = 1;
LABEL_23:
      if (v12)
      {
        goto LABEL_3;
      }

LABEL_24:
      v13 = *(StatusReg + 712);
      if (!v13)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      storeCopy = store;
      while (storeCopy != v13)
      {
        if (storeCopy == v14)
        {
          goto LABEL_33;
        }

        if (!v14)
        {
          v14 = storeCopy;
        }

        storeCopy = atomic_load((storeCopy + 8));
        if (!storeCopy)
        {
          goto LABEL_32;
        }
      }

      v15 = 1;
LABEL_33:
      while (!v15)
      {
LABEL_32:
        objc_opt_self();
        __break(1u);
      }
    }

LABEL_3:
    [a2 willRemoveFromPersistentStoreCoordinator:store];
    __dmb(0xBu);
    while (1)
    {
      os_unfair_lock_lock_with_options();
      v4 = *(store + 48);
      v5 = [v4 mutableCopy];
      [v5 removeObjectIdenticalTo:a2];
      v6 = [v5 copy];

      CFRetain(v6);
      if (*(store + 48) == v4)
      {
        break;
      }

      os_unfair_lock_unlock((store + 32));
      if (v6)
      {
        CFRelease(v6);
      }
    }

    *(store + 48) = v6;
    os_unfair_lock_unlock((store + 32));
    if (a2)
    {
      if (atomic_load(a2 + 1))
      {
        atomic_store(0, a2 + 1);
      }
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return store != 0;
}

- (NSPersistentStore)persistentStoreForURL:(NSURL *)URL
{
  if (!URL)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:0]);
  }

  _retainedPersistentStores = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v5 = [_retainedPersistentStores count];
  if (v5 < 1)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [_retainedPersistentStores objectAtIndex:v7];
      if ([(NSURL *)[(NSPersistentStore *)v8 URL] isEqual:URL])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  return v8;
}

- (NSURL)URLForPersistentStore:(NSPersistentStore *)store
{
  if (!store)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid store." userInfo:0]);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__NSPersistentStoreCoordinator_URLForPersistentStore___block_invoke;
  v5[3] = &unk_1E6EC2BA0;
  v5[4] = &v6;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v5 toStore:store];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __54__NSPersistentStoreCoordinator_URLForPersistentStore___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 URL];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (BOOL)setURL:(NSURL *)url forPersistentStore:(NSPersistentStore *)store
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__NSPersistentStoreCoordinator_setURL_forPersistentStore___block_invoke;
  v6[3] = &unk_1E6EC2C38;
  v6[4] = url;
  v6[5] = &v7;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v6 toStore:store];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__58__NSPersistentStoreCoordinator_setURL_forPersistentStore___block_invoke(void *result, void *a2)
{
  if (result[4])
  {
    v2 = result;
    result = [a2 setURL:?];
    *(*(v2[5] + 8) + 24) = 1;
  }

  return result;
}

- (NSPersistentStore)migratePersistentStore:(NSPersistentStore *)store toURL:(NSURL *)URL options:(NSDictionary *)options withType:(NSString *)storeType error:(NSError *)error
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  if (!store)
  {
    v17 = @"nil is not a valid persistent store";
    goto LABEL_10;
  }

  if (!URL && ![(NSString *)storeType isEqualToString:@"InMemory"])
  {
    v17 = @"nil is not a valid persistent store URL";
LABEL_10:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:{0, storeType, error}]);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke;
  v18[3] = &unk_1E6EC2C60;
  v18[4] = store;
  v18[5] = self;
  v18[6] = options;
  v18[7] = storeType;
  v18[8] = URL;
  v18[9] = &v25;
  v18[10] = &v19;
  v18[11] = error;
  _perform_0(self, v18);
  v13 = v26[5];
  if (error)
  {
    v14 = v26[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v15;
}

void __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v47 = [*(a1 + 32) configurationName];
  v2 = *(a1 + 32);
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v4 = qword_1ED4BEA70;
  v5 = [qword_1ED4BEA70 countByEnumeratingWithState:&v54 objects:&v61 count:16];
  if (!v5)
  {
LABEL_9:
    v10 = qword_1ED4BEA78;
    if (qword_1ED4BEA78)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v11 = [qword_1ED4BEA78 countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v11)
      {
        v12 = *v51;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v51 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v8 = *(*(&v50 + 1) + 8 * i);
            v14 = objc_opt_class();
            if (v14 == [objc_msgSend(qword_1ED4BEA78 objectForKey:{v8), "pointerValue"}])
            {
              goto LABEL_19;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v11);
      }
    }

    objc_sync_exit(v3);
    v15 = MEMORY[0x1E695DF30];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = [v15 exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(v16 userInfo:{v2, v17, objc_msgSend(v3, "registeredStoreTypes")), 0}];
    objc_exception_throw(v18);
  }

  v6 = *v55;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v55 != v6)
    {
      objc_enumerationMutation(v4);
    }

    v8 = *(*(&v54 + 1) + 8 * v7);
    v9 = objc_opt_class();
    if (v9 == [objc_msgSend(qword_1ED4BEA70 objectForKey:{v8), "pointerValue"}])
    {
      break;
    }

    if (v5 == ++v7)
    {
      v5 = [v4 countByEnumeratingWithState:&v54 objects:&v61 count:16];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

LABEL_19:
  objc_sync_exit(v3);
  v19 = v8;
  v20 = [*(a1 + 32) URL];
  v21 = [objc_allocWithZone(NSPersistentStoreCoordinator) initWithManagedObjectModel:{objc_msgSend(*(a1 + 40), "managedObjectModel")}];
  [v21 setCodableAdapterRegistry:{objc_msgSend(*(a1 + 40), "codableAdapterRegistry")}];
  v22 = *(a1 + 48);
  if (v22)
  {
    v23 = [v22 mutableCopy];
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v24 = v23;
  [v23 removeObjectForKey:@"NSReadOnlyPersistentStoreOption"];
  v25 = [v21 addPersistentStoreWithType:*(a1 + 56) configuration:v47 URL:*(a1 + 64) options:v24 error:&v49];

  if (!v25)
  {
    if (*(a1 + 88))
    {
      *(*(*(a1 + 72) + 8) + 40) = v49;
    }

    v32 = 0;
    v33 = 80;
    goto LABEL_30;
  }

  v26 = v25;
  v27 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3052000000;
  v64 = __Block_byref_object_copy__19;
  v65 = __Block_byref_object_dispose__19;
  v66 = 0;
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke_2;
  v48[3] = &unk_1E6EC2748;
  v28 = *(a1 + 32);
  v48[4] = v21;
  v48[5] = v28;
  v48[6] = v25;
  v48[7] = &v61;
  [v21 performBlockAndWait:v48];
  v29 = v62[5];
  _Block_object_dispose(&v61, 8);
  v30 = v49;

  [v27 drain];
  if (v49)
  {
    v31 = v49;
    if (*(a1 + 88))
    {
      *(*(*(a1 + 72) + 8) + 40) = v49;
    }

    *(*(*(a1 + 80) + 8) + 40) = 0;
    goto LABEL_48;
  }

  if (!v29)
  {

    if (!*(a1 + 88))
    {
      goto LABEL_48;
    }

    v43 = MEMORY[0x1E696ABC0];
    if (v49)
    {
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObject:v49 forKey:*MEMORY[0x1E696AA08]];
    }

    else
    {
      v44 = 0;
    }

    v32 = [v43 errorWithDomain:*MEMORY[0x1E696A250] code:134030 userInfo:v44];
    v33 = 72;
LABEL_30:
    *(*(*(a1 + v33) + 8) + 40) = v32;
    goto LABEL_48;
  }

  v34 = *(a1 + 32);
  v35 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:*(a1 + 48)];
  [v35 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 0), @"_NSNotifyObserversOfStoreChange"}];
  if ([*(a1 + 56) isEqualToString:@"InMemory"])
  {
    [v35 setObject:-[NSDictionaryStoreMap _archivedData](v25[13]) forKey:0x1EF3FC108];
  }

  *(*(*(a1 + 80) + 8) + 40) = [*(a1 + 40) addPersistentStoreWithType:*(a1 + 56) configuration:v47 URL:*(a1 + 64) options:v35 error:&v49];

  if (v49)
  {
    *(*(*(a1 + 72) + 8) + 40) = v49;
  }

  v36 = [v29 count];
  if (v36 >= 2)
  {
    for (j = 1; j < v36; j += 2)
    {
      [v29 replaceObjectAtIndex:j withObject:{objc_msgSend(*(a1 + 40), "managedObjectIDForURIRepresentation:", objc_msgSend(objc_msgSend(objc_msgSend(v29, "objectAtIndex:", j), "objectID"), "URIRepresentation"))}];
    }
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v38 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{*(a1 + 32), *(*(*(a1 + 80) + 8) + 40), v29, 0}];
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _postStoresChangedNotificationsForStores:v38 changeKey:@"changedUUID" options:0];

    if (*(a1 + 32))
    {
      v39 = [MEMORY[0x1E696AD88] defaultCenter];
      v40 = *(a1 + 32);
      v41 = *(a1 + 40);
      v58 = @"removed";
      v59 = v40;
      [v39 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:v41 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v59, &v58, 1)}];
      v42 = *(a1 + 32);
    }

    else
    {
      v42 = 0;
    }

    [(NSPersistentStoreCoordinator *)*(a1 + 40) _removePersistentStore:v42 error:&v49];
  }

  else
  {
  }

LABEL_48:
  v45 = *(*(*(a1 + 72) + 8) + 40);
  if (v45)
  {
    v46 = v45;
  }
}

void __84__NSPersistentStoreCoordinator_migratePersistentStore_toURL_options_withType_error___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v110 = *MEMORY[0x1E69E9840];
  -[NSPersistentStoreCoordinator _addPersistentStore:identifier:](*(a1 + 32), *(a1 + 40), [*(a1 + 40) identifier]);
  v2 = v1[4];
  if (!v2)
  {
    v59 = 0;
    goto LABEL_72;
  }

  v3 = v1[5];
  v86 = v1[6];
  v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  [(NSManagedObjectContext *)v4 setPersistentStoreCoordinator:v2];
  [(NSManagedObjectContext *)v4 setRetainsRegisteredObjects:1];
  [(NSManagedObjectContext *)v4 setUndoManager:0];
  if (_PF_Threading_Debugging_level)
  {
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v70 = *(StatusReg + 712);
    if (!v70)
    {
      goto LABEL_95;
    }

    v71 = 0;
    v72 = 0;
    while (v70 != v2)
    {
      if (v70 == v71)
      {
        goto LABEL_86;
      }

      if (!v71)
      {
        v71 = v70;
      }

      v70 = atomic_load((v70 + 8));
      if (!v70)
      {
        goto LABEL_87;
      }
    }

    v72 = 1;
LABEL_86:
    if (v72)
    {
      goto LABEL_3;
    }

LABEL_87:
    v73 = *(StatusReg + 712);
    if (!v73)
    {
      goto LABEL_95;
    }

    v74 = 0;
    v75 = 0;
    v76 = v2;
    while (v76 != v73)
    {
      if (v76 == v74)
      {
        goto LABEL_96;
      }

      if (!v74)
      {
        v74 = v76;
      }

      v76 = atomic_load((v76 + 8));
      if (!v76)
      {
        goto LABEL_95;
      }
    }

    v75 = 1;
LABEL_96:
    while (!v75)
    {
LABEL_95:
      objc_opt_self();
      __break(1u);
    }
  }

LABEL_3:
  v89 = v3;
  v90 = v4;
  v85 = v1;
  v5 = objc_alloc_init(NSFetchRequest);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v6 = *(v2 + 40);
  v7 = [v6 countByEnumeratingWithState:&v106 objects:v105 count:16];
  v87 = v2;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v107;
    v11 = *MEMORY[0x1E695D930];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v107 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v106 + 1) + 8 * i);
        if (![v13 superentity])
        {
          v99 = 0;
          [(NSFetchRequest *)v5 setEntity:v13];
          -[NSFetchRequest setAffectedStores:](v5, "setAffectedStores:", [MEMORY[0x1E695DEC8] arrayWithObject:v89]);
          if (![(NSManagedObjectContext *)v4 executeFetchRequest:v5 error:&v99])
          {
            v9 = [MEMORY[0x1E695DF30] exceptionWithName:v11 reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v13, v89, v99), 0}];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v106 objects:v105 count:16];
    }

    while (v8);

    v14 = v4;
    if (v9)
    {
      goto LABEL_101;
    }
  }

  else
  {

    v14 = v4;
  }

  v15 = [(NSManagedObjectContext *)v14 registeredObjects];
  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSSet count](v15, "count")}];
  v84 = [(NSSet *)[(NSManagedObjectContext *)v14 deletedObjects] count];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v17 = [(NSSet *)v15 countByEnumeratingWithState:&v95 objects:&v101 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v96;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v96 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v95 + 1) + 8 * j);
        if ([objc_msgSend(v21 "objectID")] == v89)
        {
          [v16 addObject:v21];
          if (v21)
          {
            v22 = _insertion_fault_handler;
          }

          else
          {
            v22 = 0;
          }

          [NSFaultHandler _fireFirstAndSecondLevelFaultsForObject:v22 withContext:v21];
        }
      }

      v18 = [(NSSet *)v15 countByEnumeratingWithState:&v95 objects:&v101 count:16];
    }

    while (v18);
  }

  obj = v16;
  v23 = [(NSManagedObjectContext *)v14 registeredObjects];
  v24 = [(NSSet *)[(NSManagedObjectContext *)v14 deletedObjects] count];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v25 = [(NSSet *)v23 countByEnumeratingWithState:&v91 objects:v100 count:16];
  if (!v25)
  {
    v27 = 0;
    goto LABEL_46;
  }

  v26 = v25;
  v27 = 0;
  v28 = *v92;
  do
  {
    for (k = 0; k != v26; ++k)
    {
      if (*v92 != v28)
      {
        objc_enumerationMutation(v23);
      }

      v30 = *(*(&v91 + 1) + 8 * k);
      if ([objc_msgSend(v30 "objectID")] == v89)
      {
        ++v27;
        if (([obj containsObject:v30] & 1) == 0)
        {
          v31 = [v30 objectID];
          if (v30[16] & 0x12) != 0 || (v32 = v31, ([v31 isTemporaryID]))
          {
LABEL_42:
            v34 = *MEMORY[0x1E695D930];
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v30, @"object", 0}];
            v36 = @"Save failed during during migratePersistentStore:toURL:options:withType:error:, object added to store during fetch.";
            v37 = v34;
            v38 = 134030;
          }

          else
          {
            v99 = 0;
            v33 = [v89 newValuesForObjectWithID:v32 withContext:v14 error:&v99];
            if (v33)
            {

              goto LABEL_42;
            }

            v60 = v99;
            v61 = *MEMORY[0x1E696A778];
            v62 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32);
            v63 = MEMORY[0x1E695DF20];
            v64 = [MEMORY[0x1E695DEC8] arrayWithObject:v30];
            if (v60)
            {
              v65 = [v63 dictionaryWithObjectsAndKeys:{v64, @"NSAffectedObjectsErrorKey", v99, *MEMORY[0x1E696AA08], 0}];
            }

            else
            {
              v65 = [v63 dictionaryWithObjectsAndKeys:{v64, @"NSAffectedObjectsErrorKey", 0, v82, v83}];
            }

            v66 = [_NSCoreDataException exceptionWithName:v61 code:133000 reason:v62 userInfo:v65];
            v67 = *MEMORY[0x1E695D930];
            v68 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [v66 reason]);
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v66, @"NSUnderlyingException", 0}];
            v37 = v67;
            v38 = 133000;
            v36 = v68;
          }

          v9 = [_NSCoreDataException exceptionWithName:v37 code:v38 reason:v36 userInfo:v35];
          if (!v9)
          {
            goto LABEL_46;
          }

LABEL_101:

          objc_exception_throw(v9);
        }
      }
    }

    v26 = [(NSSet *)v23 countByEnumeratingWithState:&v91 objects:v100 count:16];
  }

  while (v26);
LABEL_46:
  if ([obj count] == v27)
  {
    if (v24 != v84)
    {
      v39 = *MEMORY[0x1E695D930];
      v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v24 - v84);
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  v39 = *MEMORY[0x1E695D930];
  v40 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [obj count] - v27);
LABEL_50:
  v9 = [_NSCoreDataException exceptionWithName:v39 code:134030 reason:v40 userInfo:0];
  if (v9)
  {
    goto LABEL_101;
  }

LABEL_51:
  v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v44 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v102;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v102 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v101 + 1) + 8 * m);
        v49 = [v48 objectID];
        [v41 addObject:v49];
        v50 = -[NSTemporaryObjectID initWithEntity:]([NSTemporaryObjectID alloc], "initWithEntity:", [v48 entity]);
        [v41 addObject:v48];
        [v42 addObject:v48];
        [v43 addObject:v50];

        [(NSManagedObjectContext *)v90 _insertObjectWithGlobalID:v48 globalID:v49];
      }

      v45 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    }

    while (v45);
  }

  if ([v42 count])
  {

    v51 = [v42 count];
    v52 = [*(v87 + 40) entitiesForConfiguration:{objc_msgSend(v86, "configurationName")}];
    if (v51)
    {
      v53 = v52;
      v54 = 0;
      while (1)
      {
        v55 = [v42 objectAtIndex:v54];
        v56 = v55;
        if (_PF_Threading_Debugging_level)
        {
          _PFAssertSafeMultiThreadedAccess_impl([v55 managedObjectContext], sel__assignObject_toPersistentStore_forConfiguration_);
        }

        v57 = [v56 objectID];
        if (![v57 isTemporaryID])
        {
          break;
        }

        if ([v53 indexOfObjectIdenticalTo:{objc_msgSend(v57, "entity")}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v77 = MEMORY[0x1E695DF30];
          v78 = *MEMORY[0x1E695D940];
          v79 = @"Can't assign an object to a store that does not contain the object's entity.";
          goto LABEL_100;
        }

        [v57 _setPersistentStore:v86];
        if (v51 == ++v54)
        {
          goto LABEL_66;
        }
      }

      v77 = MEMORY[0x1E695DF30];
      v78 = *MEMORY[0x1E695D940];
      v79 = @"Can't reassign an object to a different store once it has been saved.";
LABEL_100:
      objc_exception_throw([v77 exceptionWithName:v78 reason:v79 userInfo:0]);
    }
  }

LABEL_66:

  [(NSPersistentStoreCoordinator *)v87 _copyMetadataFromStore:v89 toStore:v86 migrationManager:0];
  if (v89)
  {
    v58 = [MEMORY[0x1E696AD88] defaultCenter];
    *&v106 = @"removed";
    v100[0] = v89;
    [v58 postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:v87 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v100, &v106, 1)}];
  }

  [(NSPersistentStoreCoordinator *)v87 _removePersistentStore:v89];
  *&v95 = 0;
  [v90 save:&v95];
  v1 = v85;
  if (v95)
  {

    v80 = v90;
    v81 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134030, @"Save failed.", [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v95, @"NSCoreDataPrimaryError", 0}]);
    objc_exception_throw(v81);
  }

  [v90 reset];

  if (v95)
  {
    v59 = 0;
  }

  else
  {
    v59 = v41;
  }

LABEL_72:
  *(*(v1[7] + 8) + 40) = v59;
}

- (NSPersistentHistoryToken)currentPersistentHistoryTokenFromStores:(NSArray *)stores
{
  if (!stores || (persistentStores = stores, ![(NSArray *)stores count]))
  {
    persistentStores = [(NSPersistentStoreCoordinator *)self persistentStores];
  }

  v5 = [(NSPersistentStoreCoordinator *)self _retainedChangeTokenFromStores:persistentStores];

  return v5;
}

- (_NSPersistentHistoryToken)_retainedChangeTokenFromStores:(_NSPersistentHistoryToken *)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (result)
  {
    result = [a2 count];
    if (result)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v4 = [a2 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v25;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v25 != v6)
            {
              objc_enumerationMutation(a2);
            }

            v8 = *(*(&v24 + 1) + 8 * i);
            currentChangeToken = [v8 currentChangeToken];
            if (currentChangeToken)
            {
              [dictionary setObject:currentChangeToken forKey:{objc_msgSend(v8, "identifier")}];
            }
          }

          v5 = [a2 countByEnumeratingWithState:&v24 objects:v30 count:16];
        }

        while (v5);
      }

      v23 = 0;
      if ([dictionary count] == 1)
      {
        [dictionary getObjects:&v23 andKeys:0 count:1];
        v10 = v23;
        return v23;
      }

      else
      {
        result = [dictionary count];
        if (result)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v12 = [dictionary countByEnumeratingWithState:&v19 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(dictionary);
                }

                v16 = *(*(&v19 + 1) + 8 * j);
                v17 = [dictionary objectForKey:v16];
                memset(v18, 0, sizeof(v18));
                if ([objc_msgSend(v17 storeTokens])
                {
                  [dictionary2 setObject:objc_msgSend(objc_msgSend(v17 forKey:{"storeTokens"), "objectForKey:", **(&v18[0] + 1)), v16}];
                }
              }

              v13 = [dictionary countByEnumeratingWithState:&v19 objects:v29 count:16];
            }

            while (v13);
          }

          return [[_NSPersistentHistoryToken alloc] initWithDictionary:dictionary2];
        }
      }
    }
  }

  return result;
}

- (NSManagedObjectID)managedObjectIDForURIRepresentation:(NSURL *)url
{
  if (!url)
  {
    return 0;
  }

  v7 = 0;
  v4 = [(NSPersistentStoreCoordinator *)self managedObjectIDForURIRepresentation:&v7 error:?];
  if (!v4 && (!v7 || [v7 code] != 134000))
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{url), 0}];
    objc_exception_throw(v5);
  }

  return &v4->super;
}

- (NSTemporaryObjectID)managedObjectIDForURIRepresentation:(void *)representation error:
{
  v3 = 0;
  v26 = *MEMORY[0x1E69E9840];
  if (self && url)
  {
    v20 = 0;
    v7 = buffer;
    v8 = CFURLGetBytes(url, buffer, 511);
    if (v8 < 0)
    {
      v9 = CFURLGetBytes(url, 0, 0);
      v7 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
      v8 = CFURLGetBytes(url, v7, v9);
    }

    if (v8 <= 0)
    {
      if (v7 != buffer)
      {
        free(v7);
      }

      return 0;
    }

    else
    {
      v7[v8] = 0;
      if (representation)
      {
        v10 = &v20;
      }

      else
      {
        v10 = 0;
      }

      v3 = [(NSPersistentStoreCoordinator *)self managedObjectIDFromUTF8String:v7 length:v8 error:v10];
      if (v7 != buffer)
      {
        free(v7);
      }

      if (representation && !v3)
      {
        v11 = MEMORY[0x1E696ABC0];
        if (v20)
        {
          domain = [v20 domain];
          code = [v20 code];
          v23 = @"URI is not a valid Core Data URI";
          v24 = url;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
          v15 = v11;
          v16 = domain;
          v17 = code;
        }

        else
        {
          v18 = *MEMORY[0x1E696A250];
          v21 = @"URI is not a valid Core Data URI";
          v22 = url;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v15 = v11;
          v16 = v18;
          v17 = 134060;
        }

        v3 = 0;
        *representation = [v15 errorWithDomain:v16 code:v17 userInfo:{v14, v20}];
      }
    }
  }

  return v3;
}

- (uint64_t)_finishDeferredLightweightMigrationTasks:(void *)tasks withError:
{
  if (self)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__19;
    v14 = __Block_byref_object_dispose__19;
    v15 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __113__NSPersistentStoreCoordinator_DeferredLightweightMigration___finishDeferredLightweightMigrationTasks_withError___block_invoke;
    v8[3] = &unk_1E6EC2F30;
    v9 = a2;
    v8[4] = self;
    v8[5] = &v10;
    v8[6] = &v16;
    [self performBlockAndWait:v8];
    v4 = v11[5];
    v5 = v17;
    v6 = *(v17 + 24);
    if (tasks && (v17[3] & 1) == 0)
    {
      *tasks = v11[5];
      v6 = *(v5 + 24);
    }

    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)_exceptionNoStoreSaveFailureForError:(id)error recommendedFrame:(int *)frame
{
  v34 = *MEMORY[0x1E69E9840];
  if (frame)
  {
    *frame = 0;
  }

  if (error)
  {
    code = [error code];
    domain = [error domain];
    if ([domain isEqualToString:@"NSSQLiteErrorDomain"])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:code];
    }

    else
    {
      v8 = [objc_msgSend(error "userInfo")];
    }

    v14 = v8;
    v15 = *MEMORY[0x1E696A798];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [MEMORY[0x1E696AD98] numberWithInteger:code];
    }

    else
    {
      v16 = [objc_msgSend(error "userInfo")];
    }

    v17 = v16;
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      if (code == 134020 || code == 134100)
      {
        if (!frame)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v18 = code - 134171;
      if (frame && v18 >= 0xFFFFFFFFFFFFFFB9)
      {
LABEL_21:
        *frame = 2;
LABEL_22:
        v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(schema mismatch or migration failure)");
        goto LABEL_57;
      }

      if (v18 > 0xFFFFFFFFFFFFFFB8)
      {
        goto LABEL_22;
      }
    }

    if (v14)
    {
      integerValue = [v14 integerValue];
      if (integerValue <= 0xC)
      {
        switch(integerValue)
        {
          case 3:
            if (frame)
            {
              *frame = 5;
            }

            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(permission denied)");
            goto LABEL_57;
          case 10:
            if (frame)
            {
              *frame = 8;
            }

            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(I/O error)");
            goto LABEL_57;
          case 11:
LABEL_42:
            if (frame)
            {
              *frame = 1;
            }

            v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(corrupt file)");
            goto LABEL_57;
        }
      }

      else
      {
        if (integerValue <= 22)
        {
          if (integerValue != 13)
          {
            if (integerValue == 14)
            {
              if (frame)
              {
                *frame = 6;
              }

              v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(can't open)");
              goto LABEL_57;
            }

            goto LABEL_37;
          }

          if (frame)
          {
            *frame = 7;
          }

          v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(disk full)");
LABEL_57:
          v9 = v19;
          v10 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v21 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v23 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v21)
            {
              if (v23)
              {
                goto LABEL_64;
              }
            }

            else if (v23)
            {
LABEL_64:
              *buf = 138413058;
              *&buf[4] = v9;
              *&buf[12] = 2112;
              *&buf[14] = [error domain];
              *&buf[22] = 2048;
              code2 = [error code];
              LOWORD(v33) = 2112;
              *(&v33 + 2) = [error userInfo];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal attempt to save to a file that was never opened.  %@.  Last recorded error = %@(%ld) / %@\n\n", buf, 0x2Au);
            }
          }

          domain2 = [error domain];
          code3 = [error code];
          userInfo = [error userInfo];
          _NSCoreDataLog_console(1, "Illegal attempt to save to a file that was never opened.  %@.  Last recorded error = %@(%ld) / %@\n", v9, domain2, code3, userInfo, *buf, *&buf[8], code2, v33);
          goto LABEL_63;
        }

        if (integerValue == 23)
        {
          if (frame)
          {
            *frame = 3;
          }

          v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(device locked)");
          goto LABEL_57;
        }

        if (integerValue == 26)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_37:
    if (v17)
    {
      [v17 integerValue];
    }

    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"(unknown)");
    goto LABEL_57;
  }

  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"This NSPersistentStoreCoordinator has no persistent stores %@.  It cannot perform a save operation.", @"(unknown)");
  v10 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v11 = _pflogging_catastrophic_mode;
    v12 = _PFLogGetLogStream(1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        *buf = 138412290;
        *&buf[4] = v9;
LABEL_66:
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: Illegal attempt to save to a file that was never opened. %@. No last error recorded.\n", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138412290;
      *&buf[4] = v9;
      goto LABEL_66;
    }
  }

  _NSCoreDataLog_console(1, "Illegal attempt to save to a file that was never opened. %@. No last error recorded.", v9, v27, v28, v29, *buf, *&buf[8], code2, v33);
LABEL_63:
  objc_autoreleasePoolPop(v10);
  return v9;
}

- (void)_introspectLastErrorAndThrow
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    v2 = [result _exceptionNoStoreSaveFailureForError:result[9] recommendedFrame:&v3];
    if (v3 > 4)
    {
      if (v3 > 6)
      {
        if (v3 == 7)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_disk_full:v2];
        }

        if (v3 == 8)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_io_error:v2];
        }

        return [v1 _coordinator_you_never_successfully_opened_the_database_so_saving_back_to_it_is_kinda_hard:v2];
      }

      if (v3 == 5)
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_no_permission:v2];
      }

      else
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_cant_open:v2];
      }
    }

    else
    {
      if (v3 <= 2)
      {
        if (v3 == 1)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_corrupted:v2];
        }

        if (v3 == 2)
        {
          return [v1 _coordinator_you_never_successfully_opened_the_database_schema_mismatch:v2];
        }

        return [v1 _coordinator_you_never_successfully_opened_the_database_so_saving_back_to_it_is_kinda_hard:v2];
      }

      if (v3 == 3)
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_device_locked:v2];
      }

      else
      {
        return [v1 _coordinator_you_never_successfully_opened_the_database_missing_directory:v2];
      }
    }
  }

  return result;
}

- (BOOL)_canRouteToStore:(void *)store forContext:
{
  if (result)
  {
    _queryGenerationToken = [store _queryGenerationToken];
    if ([_queryGenerationToken _isEnabled])
    {
      return +[NSQueryGenerationToken nostoresQueryGenerationToken]!= _queryGenerationToken && [(_NSQueryGenerationToken *)_queryGenerationToken _generationalComponentForStore:a2]!= 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (id)executeRequest:(NSPersistentStoreRequest *)request withContext:(NSManagedObjectContext *)context error:(NSError *)error
{
  v86 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3052000000;
  v76 = __Block_byref_object_copy__19;
  v77 = __Block_byref_object_dispose__19;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = __Block_byref_object_copy__19;
  v71 = __Block_byref_object_dispose__19;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  requestType = [(NSPersistentStoreRequest *)request requestType];
  v9 = requestType;
  v53 = 0;
  if (requestType <= 4)
  {
    if (requestType == NSFetchRequestType)
    {
      resultType = [(NSPersistentStoreRequest *)request resultType];
      LOBYTE(isDelete) = [(NSPersistentStoreRequest *)request _isAsyncRequest];
      v53 = 0;
      v50 = 0;
      if (resultType == 4)
      {
        v9 = 3;
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_9;
    }

    if (requestType != NSSaveRequestType)
    {
      goto LABEL_68;
    }

LABEL_8:
    v50 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Executing write request"];
    LOBYTE(isDelete) = 0;
    v53 = 1;
    goto LABEL_9;
  }

  if (requestType - 5 < 3)
  {
    goto LABEL_8;
  }

  if (requestType == 8)
  {
    isDelete = [(NSPersistentStoreRequest *)request isDelete];
    if (!isDelete)
    {
      v53 = 0;
      v50 = 0;
      v9 = 8;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_68:
  v50 = 0;
  LOBYTE(isDelete) = 0;
LABEL_9:
  if (context && (isDelete & 1) == 0 && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(context, a2);
  }

  if (!PFInstrumentsRecordingEnabled())
  {
    goto LABEL_25;
  }

  if (v9 == 1 || v9 == 3)
  {
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496;
    v62[3] = &unk_1E6EC2C88;
    v62[4] = request;
    spid = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496(v62);
    goto LABEL_27;
  }

  if (v9 != 2)
  {
LABEL_25:
    spid = 0;
LABEL_27:
    v61 = 0;
    v12 = 1;
    if (v9 > 7 || ((1 << v9) & 0xE4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  spid = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v11 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Save", &unk_1859905C6, buf, 2u);
  }

  v61 = 0;
LABEL_29:
  v12 = 0;
LABEL_30:
  if (context)
  {
    persistentStoreIdentifiers = context->_persistentStoreIdentifiers;
  }

  else
  {
    persistentStoreIdentifiers = 0;
  }

  v14 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v14 != [(NSManagedObjectContext *)context _queryGenerationToken])
  {
    v15 = 1;
    goto LABEL_34;
  }

  v25 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:?];
  if (v25)
  {
    v26 = [(NSManagedObjectContext *)context _setQueryGenerationFromToken:v25 error:&v61];

    if (v26)
    {
      v15 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v61 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
  }

  if (!v12)
  {
    [(NSManagedObjectContext *)context _setQueryGenerationFromToken:+[NSQueryGenerationToken error:"unpinnedQueryGenerationToken"], 0];
    v15 = 0;
LABEL_34:
    if (v9 != 8 || ![(NSPersistentStoreRequest *)request token])
    {
LABEL_48:
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_503;
      v55[3] = &unk_1E6EC2CB0;
      v55[4] = request;
      v55[5] = persistentStoreIdentifiers;
      v55[6] = self;
      v55[7] = context;
      v56 = v15;
      v55[8] = &v67;
      v55[9] = &v63;
      v55[10] = &v73;
      v55[11] = v9;
      v55[12] = spid;
      v55[13] = error;
      [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v55];
      if (v64[3])
      {
        pthread_yield_np();
        v24 = [(NSPersistentStoreCoordinator *)self executeRequest:request withContext:context error:error];
LABEL_93:
        v35 = v24;
        goto LABEL_94;
      }

      if (request && v9 == 2)
      {
        request[3].super.isa = (request[3].super.isa & 0xFFFFFF00);
      }

      v27 = v74[5];
      if (error && !v68[5])
      {
        *error = v74[5];
      }

      if (spid)
      {
        if (v9 == 1 || v9 == 3)
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          if (spid == -1)
          {
            goto LABEL_87;
          }

          v39 = PFInstrumentsGetLog_coreDataInstrumentsLog;
          if (!os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
          {
            goto LABEL_87;
          }

          v40 = [v68[5] count];
          *buf = 67109120;
          LODWORD(v83) = v40;
          v29 = "Fetch";
          v30 = "%d";
          v31 = v39;
          v32 = spid;
          v33 = 8;
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_87;
          }

          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          if (spid == -1)
          {
            goto LABEL_87;
          }

          v28 = PFInstrumentsGetLog_coreDataInstrumentsLog;
          if (!os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
          {
            goto LABEL_87;
          }

          *buf = 0;
          v29 = "Save";
          v30 = &unk_1859905C6;
          v31 = v28;
          v32 = spid;
          v33 = 2;
        }

        _os_signpost_emit_with_name_impl(&dword_18565F000, v31, OS_SIGNPOST_INTERVAL_END, v32, v29, v30, buf, v33);
      }

LABEL_87:
      if ((v68[5] == 0) == (v74[5] == 0))
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error\n", buf, 2u);
        }

        v42 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v42, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error", buf, 2u);
        }
      }

      v24 = v68[5];
      goto LABEL_93;
    }

    exception_object = [(NSPersistentStoreRequest *)request token];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[_Unwind_Exception storeTokens](exception_object, "storeTokens"), "count")}];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[_Unwind_Exception storeTokens](exception_object, "storeTokens"), "count")}];
    v47 = v15;
    v48 = persistentStoreIdentifiers;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v57 = 0u;
    storeTokens = [(_Unwind_Exception *)exception_object storeTokens];
    v19 = [storeTokens countByEnumeratingWithState:&v57 objects:v81 count:16];
    if (v19)
    {
      v20 = *v58;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v58 != v20)
          {
            objc_enumerationMutation(storeTokens);
          }

          v22 = *(*(&v57 + 1) + 8 * i);
          v23 = [(NSPersistentStoreCoordinator *)self persistentStoreForIdentifier:v22];
          if (v23)
          {
            [v16 addObject:v23];
          }

          else
          {
            [v17 addObject:v22];
          }
        }

        v19 = [storeTokens countByEnumeratingWithState:&v57 objects:v81 count:16];
      }

      while (v19);
    }

    persistentStoreIdentifiers = v48;
    v15 = v47;
    if ([v16 count])
    {
      [(NSPersistentStoreRequest *)request setAffectedStores:v16];
      goto LABEL_48;
    }

    v36 = MEMORY[0x1E696ABC0];
    v79 = @"Reason";
    v80 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], exception_object, v17);
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v38 = [v36 errorWithDomain:*MEMORY[0x1E696A250] code:134501 userInfo:v37];
    v74[5] = v38;
    if (v38)
    {
      if (error)
      {
        v35 = 0;
        *error = v38;
        goto LABEL_94;
      }

      goto LABEL_104;
    }

    v46 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v84 = 1024;
      v85 = 2715;
      _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v45 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_104;
    }

    *buf = 136315394;
    v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v84 = 1024;
    v85 = 2715;
LABEL_106:
    _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_104;
  }

  if (v61)
  {
    if (error)
    {
      v35 = 0;
      *error = v61;
      goto LABEL_94;
    }

    goto LABEL_104;
  }

  v44 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v84 = 1024;
    v85 = 2692;
    _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v45 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v83 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
    v84 = 1024;
    v85 = 2692;
    goto LABEL_106;
  }

LABEL_104:
  v35 = 0;
LABEL_94:
  if (v53)
  {
    [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v50];
  }

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);
  return v35;
}

os_signpost_id_t __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_496(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v2 = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v3 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v4 = [objc_msgSend(*(a1 + 32) "entity")];
    v6 = 138412290;
    v7 = v4;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Fetch", "%@", &v6, 0xCu);
  }

  return v2;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_503(uint64_t a1, void *a2)
{
  v401 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) affectedStores];
  v297 = a1;
  if ([v4 count])
  {
    obj = [MEMORY[0x1E695DF70] array];
    v349 = 0u;
    v350 = 0u;
    v351 = 0u;
    v352 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v349 objects:v392 count:16];
    if (v5)
    {
      v6 = *v350;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v350 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v349 + 1) + 8 * i);
          if ([a2 containsObject:v8])
          {
            [obj addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v349 objects:v392 count:16];
      }

      while (v5);
    }
  }

  else if ([*(a1 + 40) count])
  {
    obj = [MEMORY[0x1E695DF70] array];
    v353 = 0u;
    v354 = 0u;
    v355 = 0u;
    v356 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v353 objects:v393 count:16];
    if (v9)
    {
      v10 = *v354;
      do
      {
        for (j = 0; j != v9; ++j)
        {
          if (*v354 != v10)
          {
            objc_enumerationMutation(a2);
          }

          v12 = *(*(&v353 + 1) + 8 * j);
          if ([*(v297 + 40) containsObject:{objc_msgSend(v12, "identifier")}])
          {
            [obj addObject:v12];
          }
        }

        v9 = [a2 countByEnumeratingWithState:&v353 objects:v393 count:16];
      }

      while (v9);
    }
  }

  else
  {
    obj = a2;
  }

  v13 = *(v297 + 88);
  v14 = v13 > 7;
  v15 = (1 << v13) & 0xE4;
  if (v14 || v15 == 0)
  {
    if (!*(v297 + 48))
    {
      obj = 0;
      v17 = [0 count];
      goto LABEL_29;
    }

    v28 = [*(v297 + 56) _queryGenerationToken];
    if ([v28 _isEnabled])
    {
      if (+[NSQueryGenerationToken nostoresQueryGenerationToken]== v28)
      {
        obj = NSArray_EmptyArray;
        v17 = [NSArray_EmptyArray count];
      }

      else
      {
        obj = [(_NSQueryGenerationToken *)v28 _storesForRequestRoutingFrom:0 error:?];
        v17 = [obj count];
      }

      goto LABEL_29;
    }
  }

  v17 = [obj count];
LABEL_29:
  v292 = v17;
  if (![obj count] || (*(v297 + 88) | 2) == 3 && ((v18 = objc_msgSend(*(v297 + 32), "entity"), v19 = objc_msgSend(v18, "managedObjectModel"), v20 = *(v297 + 48), v19 != *(v20 + 40)) && ((v21 = *(v20 + 96), v22 = _PFModelMapPathForEntity(v18), !v21) || !objc_msgSend(*(v21 + 56), "objectForKey:", v22)) || (*(v297 + 112) & 1) == 0))
  {
    v23 = *(v297 + 88);
    if (v23 > 7)
    {
      if (v23 <= 9)
      {
        if (v23 != 8)
        {
          *buf = 0;
          v25 = [*(v297 + 48) _exceptionNoStoreSaveFailureForError:*(*(v297 + 48) + 72) recommendedFrame:buf];
          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v390 = @"reason";
          v391 = v25;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v391 forKeys:&v390 count:1];
          *(*(*(v297 + 80) + 8) + 40) = [v26 initWithDomain:*MEMORY[0x1E696A250] code:134098 userInfo:v27];
          *(*(*(v297 + 64) + 8) + 40) = 0;
          return;
        }

        v193 = [NSPersistentHistoryResult alloc];
        v194 = [*(v297 + 32) resultType];
        v24 = [(NSPersistentHistoryResult *)v193 initWithResultType:v194 andResult:NSArray_EmptyArray];
        goto LABEL_366;
      }

      if (v23 == 10)
      {
        v195 = [NSSQLiteIndexStatisticsResult alloc];
        v24 = [(NSSQLiteIndexStatisticsResult *)v195 initWithResult:NSArray_EmptyArray];
        goto LABEL_366;
      }

      if (v23 == 11)
      {
        v115 = [NSPersistentCloudKitContainerEventResult alloc];
        v24 = -[NSPersistentCloudKitContainerEventResult initWithResult:ofType:](v115, "initWithResult:ofType:", NSArray_EmptyArray, [*(v297 + 32) resultType]);
        goto LABEL_366;
      }

LABEL_393:
      [*(v297 + 48) _coordinator_no_idea_what_kind_of_request_that_was_supposed_to_be];
      goto LABEL_49;
    }

    if (v23 <= 4)
    {
      if (v23 == 1)
      {
LABEL_40:
        v24 = NSArray_EmptyArray;
LABEL_366:
        *(*(*(v297 + 64) + 8) + 40) = v24;
        return;
      }

      if (v23 != 2)
      {
        if (v23 == 3)
        {
          goto LABEL_40;
        }

        goto LABEL_393;
      }

      v196 = *(v297 + 32);
      if (v196)
      {
        v197 = *(v196 + 48);
        if (v197)
        {
          goto LABEL_48;
        }

        *(v196 + 48) = v197 & 0xFFFFFF00 | 1;
      }

      *(*(*(v297 + 72) + 8) + 24) = 1;
      return;
    }

LABEL_48:
    [(NSPersistentStoreCoordinator *)*(v297 + 48) _introspectLastErrorAndThrow];
  }

LABEL_49:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(v297 + 32) _incrementInUseCounter];
  }

  if (v292 < 2)
  {
    goto LABEL_85;
  }

  v29 = *(v297 + 88);
  if (v29 <= 7 && ((1 << v29) & 0xEA) != 0)
  {
    v30 = [obj mutableCopy];
    v31 = *(v297 + 32);
    if (*(v297 + 88) == 7)
    {
      v31 = [v31 fetchRequest];
    }

    v32 = [v31 entity];
    if ([objc_msgSend(v32 "managedObjectModel")] < 15001)
    {
      v343 = 0uLL;
      v344 = 0uLL;
      v341 = 0uLL;
      v342 = 0uLL;
      v38 = [obj countByEnumeratingWithState:&v341 objects:v388 count:16];
      if (v38)
      {
        v39 = 0;
        v40 = *v342;
        do
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v342 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = [*(*(&v341 + 1) + 8 * k) configurationName];
            if ([v42 isEqualToString:@"PF_DEFAULT_CONFIGURATION_NAME"] || objc_msgSend(objc_msgSend(*(*(v297 + 48) + 40), "entitiesForConfiguration:", v42), "indexOfObjectIdenticalTo:", v32) != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v39;
            }

            else
            {
              [v30 removeObjectAtIndex:v39];
            }
          }

          v38 = [obj countByEnumeratingWithState:&v341 objects:v388 count:16];
        }

        while (v38);
      }
    }

    else
    {
      v347 = 0uLL;
      v348 = 0uLL;
      v345 = 0uLL;
      v346 = 0uLL;
      v33 = [obj countByEnumeratingWithState:&v345 objects:v389 count:16];
      if (v33)
      {
        v34 = 0;
        v35 = *v346;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v346 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v345 + 1) + 8 * m);
            if ([objc_msgSend(v37 "type")] && v37 && (v37[201] & 4) != 0)
            {
              ++v34;
            }

            else
            {
              [v30 removeObjectAtIndex:v34];
            }
          }

          v33 = [obj countByEnumeratingWithState:&v345 objects:v389 count:16];
        }

        while (v33);
      }
    }

    if ([v30 count] == v292)
    {
    }

    else
    {
      obj = v30;
      v292 = [obj count];
    }

LABEL_85:
    v340 = 0;
    if (v292 == 1)
    {
      v308 = [obj objectAtIndex:0];
      v43 = v297;
      v44 = *(v297 + 88);
      if (v44 != 2)
      {
        *buf = 0;
        [(NSPersistentStoreCoordinator *)*(v297 + 48) replaceResultTypeOfRequestIfNecessary:v308 store:v44 requestType:buf originalResultType:?];
        *(*(*(v297 + 64) + 8) + 40) = [v308 executeRequest:*(v297 + 32) withContext:*(v297 + 56) error:&v340];
        if (*(v297 + 88) == 1 && *(v297 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v43 = v297;
          v111 = *(v297 + 96);
          if (v111 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v112 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              v113 = [*(*(*(v297 + 64) + 8) + 40) count];
              *v396 = 67109120;
              v397 = v113;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v112, OS_SIGNPOST_INTERVAL_END, v111, "Fetch", "%d", v396, 8u);
              v43 = v297;
            }
          }
        }

        if (*(v43 + 48))
        {
          if (*(*(*(v43 + 64) + 8) + 40))
          {
            v114 = *(v43 + 88);
            if ([objc_msgSend(v308 "type")])
            {
              if ([v308 coreSpotlightExporter] && (v114 - 5) <= 2)
              {
                -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]([v308 coreSpotlightExporter], *(*(*(v43 + 64) + 8) + 40));
                *(*(*(v43 + 64) + 8) + 40) = [(NSPersistentStoreCoordinator *)*(v43 + 48) restoreOriginalRequestIfNecessary:v308 store:*(*(*(v43 + 64) + 8) + 40) swizzledResults:*(v43 + 88) originalRequestType:*buf originalResultType:?];
              }
            }
          }
        }

        if (!*(*(*(v43 + 64) + 8) + 40) && *(v43 + 104))
        {
          *(*(*(v43 + 80) + 8) + 40) = v340;
        }

        goto LABEL_455;
      }

      if ([v308 isReadOnly])
      {
        if (*(v297 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v45 = *(v297 + 96);
          if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v46 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v46, OS_SIGNPOST_INTERVAL_END, v45, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        if ([objc_msgSend(v308 "options")])
        {
          v47 = @"Unable to write to file opened Read Only.";
        }

        else
        {
          v47 = @"File is in Read Only mode due to Persistent History being detected but NSPersistentHistoryTrackingKey was not included.";
        }

        v48 = MEMORY[0x1E695DF20];
        v49 = [objc_msgSend(v308 "URL")];
        v50 = [v308 options];
        if (!v50)
        {
          v50 = [MEMORY[0x1E695DFB0] null];
        }

        v51 = [v48 dictionaryWithObjectsAndKeys:{v49, @"storeURL", v50, @"NSPersistentStoreOptions", v47, @"reason", 0}];
        *(*(*(v297 + 80) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:513 userInfo:v51];
        v52 = *(v297 + 64);
        goto LABEL_411;
      }

      [v308 _preflightCrossCheck];
      contextb = [MEMORY[0x1E695DF70] array];
      v160 = *(v297 + 48);
      if (!v160)
      {
LABEL_390:
        if ([contextb count])
        {
          if (*(v297 + 96))
          {
            if (PFInstrumentsGetLog_logtoken != -1)
            {
              dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
            }

            v281 = *(v297 + 96);
            if (v281 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v282 = PFInstrumentsGetLog_coreDataInstrumentsLog;
              if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_18565F000, v282, OS_SIGNPOST_INTERVAL_END, v281, "Save", &unk_1859905C6, buf, 2u);
              }
            }
          }

          v283 = [MEMORY[0x1E695DF20] dictionaryWithObject:contextb forKey:@"conflictList"];
          objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v283]);
        }

        v206 = [v308 _prepareForExecuteRequest:*(v297 + 32) withContext:*(v297 + 56) error:&v340];
        if (v206)
        {
          v207 = [v308 executeRequest:*(v297 + 32) withContext:*(v297 + 56) error:&v340];
        }

        else
        {
          v207 = 0;
        }

        if (*(v297 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v208 = *(v297 + 96);
          if (v208 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v209 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v209, OS_SIGNPOST_INTERVAL_END, v208, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        if (v207)
        {
          if ([v308 coreSpotlightExporter])
          {
            -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]([v308 coreSpotlightExporter], *(v297 + 32));
          }
        }

        else
        {
          if (v340)
          {
            v211 = v206;
          }

          else
          {
            v211 = 0;
          }

          if (v211 == 1 && [v340 code] == 134050)
          {
            v288 = [v340 userInfo];
            objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v288]);
          }

          if (*(v297 + 104))
          {
            *(*(*(v297 + 80) + 8) + 40) = v340;
          }
        }

        *(*(*(v297 + 64) + 8) + 40) = v207;
        goto LABEL_455;
      }

      v161 = *(v297 + 56);
      v301 = *(v297 + 32);
      if (_PF_Threading_Debugging_level)
      {
        _PFAssertSafeMultiThreadedAccess_impl(v161, sel__checkRequestForStore_withContext_originalRequest_andOptimisticLocking_);
      }

      v162 = [v308 isReadOnly];
      if ((([objc_msgSend(v301 "insertedObjects")] != 0) & v162) == 1)
      {
        v279 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v308), @"NSAffectedStoresErrorKey", 0}];
        v280 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot insert objects into a read only store." reason:v279 userInfo:?];
        objc_exception_throw(v280);
      }

      [v161 stalenessInterval];
      v164 = v163;
      if (v161)
      {
        v161[18] = NSSQLDistantPastTimeInterval;
      }

      v293 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v295 = [v161 _queryGenerationToken];
      v299 = [v295 _isEnabled];
      if (v299)
      {
        [v161 _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
      }

      v165 = [v301 insertedObjects];
      if ([v165 count])
      {
        if ([v308 configurationName])
        {
          v166 = [v308 _entitiesForConfiguration];
          v372 = 0u;
          v371 = 0u;
          v369 = 0u;
          v370 = 0u;
          v167 = [v165 countByEnumeratingWithState:&v369 objects:buf count:16];
          if (v167)
          {
            v168 = *v370;
            do
            {
              for (n = 0; n != v167; ++n)
              {
                if (*v370 != v168)
                {
                  objc_enumerationMutation(v165);
                }

                v170 = *(*(&v369 + 1) + 8 * n);
                if (!CFSetContainsValue(v166, [v170 entity]))
                {
                  v262 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v170, @"NSAffectedObjectsErrorKey", 0}];
                  v263 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v308, [v170 entity]);
                  v264 = [_NSCoreDataException exceptionWithName:134020 code:v263 reason:v262 userInfo:?];
                  objc_exception_throw(v264);
                }
              }

              v167 = [v165 countByEnumeratingWithState:&v369 objects:buf count:16];
            }

            while (v167);
          }
        }
      }

      v171 = [v301 updatedObjects];
      if ([v171 count])
      {
        if (v162)
        {
          v284 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v308), @"NSAffectedStoresErrorKey", 0}];
          v285 = *MEMORY[0x1E695D940];
          v286 = @"Cannot update objects into a read only store.";
          goto LABEL_545;
        }

        v367 = 0u;
        v368 = 0u;
        v365 = 0u;
        v366 = 0u;
        v172 = [v171 countByEnumeratingWithState:&v365 objects:v396 count:16];
        if (v172)
        {
          v173 = *v366;
          do
          {
            for (ii = 0; ii != v172; ++ii)
            {
              if (*v366 != v173)
              {
                objc_enumerationMutation(v171);
              }

              v175 = *(*(&v365 + 1) + 8 * ii);
              v176 = objc_autoreleasePoolPush();
              if ([objc_msgSend(v175 "objectID")])
              {
                v256 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v175), @"NSAffectedObjectsErrorKey", 0}];
                v257 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot update object that was never inserted." reason:v256 userInfo:?];
                objc_exception_throw(v257);
              }

              v177 = [(NSPersistentStoreCoordinator *)v160 _conflictsWithRowCacheForObject:v175 withContext:v161 andStore:v308];
              if (v177)
              {
                [contextb addObject:v177];
              }

              objc_autoreleasePoolPop(v176);
            }

            v172 = [v171 countByEnumeratingWithState:&v365 objects:v396 count:16];
          }

          while (v172);
        }
      }

      v178 = [v301 deletedObjects];
      if (![v178 count])
      {
        goto LABEL_370;
      }

      if (!v162)
      {
        v363 = 0u;
        v364 = 0u;
        v361 = 0u;
        v362 = 0u;
        v179 = [v178 countByEnumeratingWithState:&v361 objects:v395 count:16];
        if (v179)
        {
          v303 = 0;
          v180 = *v362;
          do
          {
            for (jj = 0; jj != v179; ++jj)
            {
              if (*v362 != v180)
              {
                objc_enumerationMutation(v178);
              }

              v182 = *(*(&v361 + 1) + 8 * jj);
              v183 = objc_autoreleasePoolPush();
              if ([objc_msgSend(v182 "objectID")])
              {
                v258 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v182), @"NSAffectedObjectsErrorKey", 0}];
                v259 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot delete object that was never inserted." reason:v258 userInfo:?];
                objc_exception_throw(v259);
              }

              v184 = [(NSPersistentStoreCoordinator *)v160 _conflictsWithRowCacheForObject:v182 withContext:v161 andStore:v308];
              v185 = v184;
              if (v184)
              {
                if ([-[NSMergeConflict objectForKey:](v184 objectForKey:{@"newVersion", "intValue"}])
                {
                  [contextb addObject:v185];
                }

                else
                {
                  v186 = v303;
                  if (!v303)
                  {
                    v186 = [objc_msgSend(v301 "deletedObjects")];
                  }

                  v303 = v186;
                  [v186 removeObject:v182];
                }
              }

              objc_autoreleasePoolPop(v183);
            }

            v179 = [v178 countByEnumeratingWithState:&v361 objects:v395 count:16];
          }

          while (v179);
          goto LABEL_371;
        }

LABEL_370:
        v303 = 0;
LABEL_371:
        if (v161)
        {
          v161[18] = v164;
        }

        v198 = [v301 lockedObjects];
        if ([v198 count])
        {
          v359 = 0u;
          v360 = 0u;
          v357 = 0u;
          v358 = 0u;
          v199 = [v198 countByEnumeratingWithState:&v357 objects:v394 count:16];
          if (v199)
          {
            v200 = *v358;
            do
            {
              for (kk = 0; kk != v199; ++kk)
              {
                if (*v358 != v200)
                {
                  objc_enumerationMutation(v198);
                }

                v202 = *(*(&v357 + 1) + 8 * kk);
                v203 = objc_autoreleasePoolPush();
                if ([objc_msgSend(v202 "objectID")])
                {
                  v260 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v202), @"NSAffectedObjectsErrorKey", 0}];
                  v261 = [_NSCoreDataException exceptionWithName:134030 code:@"Cannot lock object that was never inserted." reason:v260 userInfo:?];
                  objc_exception_throw(v261);
                }

                v204 = [(NSPersistentStoreCoordinator *)v160 _conflictsWithRowCacheForObject:v202 withContext:v161 andStore:v308];
                if (v204)
                {
                  [contextb addObject:v204];
                }

                objc_autoreleasePoolPop(v203);
              }

              v199 = [v198 countByEnumeratingWithState:&v357 objects:v394 count:16];
            }

            while (v199);
          }
        }

        if (v161)
        {
          v161[18] = v164;
        }

        if (v299)
        {
          [v161 _setQueryGenerationFromToken:v295 error:0];
        }

        [v293 drain];
        v205 = 0;
        if (v303)
        {
          [(NSSaveChangesRequest *)v301 setDeletedObjects:v303];
        }

        goto LABEL_390;
      }

      v284 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v308), @"NSAffectedStoresErrorKey", 0}];
      v285 = *MEMORY[0x1E695D940];
      v286 = @"Cannot delete objects into a read only store.";
LABEL_545:
      v287 = [_NSCoreDataException exceptionWithName:v285 code:134030 reason:v286 userInfo:v284];
      objc_exception_throw(v287);
    }

    v29 = *(v297 + 88);
    goto LABEL_101;
  }

  v340 = 0;
LABEL_101:
  if (v29 != 1)
  {
    if (v29 == 3)
    {
      *(*(*(v297 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v292];
      if (v292)
      {
        v116 = 0;
        v117 = 0;
        do
        {
          v118 = [objc_msgSend(obj objectAtIndex:{v116), "executeRequest:withContext:error:", *(v297 + 32), *(v297 + 56), *(*(v297 + 80) + 8) + 40}];
          v119 = v118;
          if (v118 && [v118 count])
          {
            v117 = [objc_msgSend(v119 "lastObject")] + v117;
          }

          ++v116;
        }

        while (v292 != v116);
      }

      else
      {
        v117 = 0;
      }

      v210 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v117)}];
      goto LABEL_454;
    }

    if (v29 == 2)
    {
      if (v292)
      {
        for (mm = 0; mm != v292; ++mm)
        {
          [objc_msgSend(obj objectAtIndex:{mm), "_preflightCrossCheck"}];
        }
      }

      -[NSPersistentStoreCoordinator _doPreSaveAssignmentsForObjects:intoStores:](*(v297 + 48), [*(v297 + 32) insertedObjects], obj);
      v290 = [MEMORY[0x1E695DF70] arrayWithCapacity:v292];
      v300 = [MEMORY[0x1E695DF70] array];
      if (v292)
      {
        v54 = 0;
        v289 = *MEMORY[0x1E695D940];
        do
        {
          v291 = v54;
          v55 = [obj objectAtIndex:?];
          v302 = *(v297 + 48);
          if (v302)
          {
            v56 = *(v297 + 56);
            v294 = *(v297 + 32);
            if (_PF_Threading_Debugging_level)
            {
              _PFAssertSafeMultiThreadedAccess_impl(v56, sel__saveRequestForStore_withContext_originalRequest_andOptimisticLocking_);
            }

            v57 = [v55 isReadOnly];
            [v56 stalenessInterval];
            v59 = v58;
            if (v56)
            {
              v56[18] = NSSQLDistantPastTimeInterval;
            }

            context = v56;
            v60 = [v294 insertedObjects];
            v372 = 0u;
            v371 = 0u;
            v369 = 0u;
            v370 = 0u;
            v61 = [v60 countByEnumeratingWithState:&v369 objects:buf count:16];
            if (v61)
            {
              v309 = 0;
              v62 = *v370;
              do
              {
                for (nn = 0; nn != v61; ++nn)
                {
                  if (*v370 != v62)
                  {
                    objc_enumerationMutation(v60);
                  }

                  v64 = *(*(&v369 + 1) + 8 * nn);
                  if ([objc_msgSend(v64 "objectID")] == v55)
                  {
                    if (v57)
                    {

                      v102 = MEMORY[0x1E695DF20];
                      v103 = [MEMORY[0x1E695DEC8] arrayWithObject:v55];
                      v104 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v289, 134030, @"Cannot insert objects into a read only store.", [v102 dictionaryWithObjectsAndKeys:{v103, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v64), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v104);
                    }

                    v65 = v309;
                    if (!v309)
                    {
                      v65 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v294, "insertedObjects"), "count")}];
                    }

                    v309 = v65;
                    [v65 addObject:v64];
                  }
                }

                v61 = [v60 countByEnumeratingWithState:&v369 objects:buf count:16];
              }

              while (v61);
            }

            else
            {
              v309 = 0;
            }

            v66 = [v294 updatedObjects];
            v367 = 0u;
            v368 = 0u;
            v365 = 0u;
            v366 = 0u;
            v67 = [v66 countByEnumeratingWithState:&v365 objects:v396 count:16];
            if (v67)
            {
              v298 = 0;
              v68 = *v366;
              do
              {
                for (i1 = 0; i1 != v67; ++i1)
                {
                  if (*v366 != v68)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v70 = *(*(&v365 + 1) + 8 * i1);
                  v71 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v70 "objectID")] == v55)
                  {
                    if (v57)
                    {

                      v105 = MEMORY[0x1E695DF20];
                      v106 = [MEMORY[0x1E695DEC8] arrayWithObject:v55];
                      v107 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v289, 134030, @"Cannot update objects into a read only store.", [v105 dictionaryWithObjectsAndKeys:{v106, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v70), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v107);
                    }

                    v72 = [(NSPersistentStoreCoordinator *)v302 _conflictsWithRowCacheForObject:v70 withContext:context andStore:v55];
                    if (v72)
                    {
                      [v300 addObject:v72];
                    }

                    else
                    {
                      v73 = v298;
                      if (!v298)
                      {
                        v73 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v294, "updatedObjects"), "count")}];
                      }

                      v298 = v73;
                      [v73 addObject:v70];
                    }
                  }

                  objc_autoreleasePoolPop(v71);
                }

                v67 = [v66 countByEnumeratingWithState:&v365 objects:v396 count:16];
              }

              while (v67);
            }

            else
            {
              v298 = 0;
            }

            v74 = [v294 deletedObjects];
            v363 = 0u;
            v364 = 0u;
            v361 = 0u;
            v362 = 0u;
            v75 = 0;
            v76 = [v74 countByEnumeratingWithState:&v361 objects:v395 count:16];
            if (v76)
            {
              v77 = *v362;
              do
              {
                v78 = 0;
                do
                {
                  if (*v362 != v77)
                  {
                    objc_enumerationMutation(v74);
                  }

                  v79 = *(*(&v361 + 1) + 8 * v78);
                  v80 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v79 "objectID")] == v55)
                  {
                    if (v57)
                    {

                      v108 = MEMORY[0x1E695DF20];
                      v109 = [MEMORY[0x1E695DEC8] arrayWithObject:v55];
                      v110 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v289, 134030, @"Cannot delete objects into a read only store.", [v108 dictionaryWithObjectsAndKeys:{v109, @"NSAffectedStoresErrorKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", v79), @"NSAffectedObjectsErrorKey", 0}]);
                      objc_exception_throw(v110);
                    }

                    v81 = [(NSPersistentStoreCoordinator *)v302 _conflictsWithRowCacheForObject:v79 withContext:context andStore:v55];
                    v82 = v81;
                    if (v81)
                    {
                      if ([-[NSMergeConflict objectForKey:](v81 objectForKey:{@"newVersion", "intValue"}])
                      {
                        [v300 addObject:v82];
                      }

                      else if (!v75)
                      {
                        v75 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v294, "deletedObjects"), "count")}];
                      }
                    }

                    else
                    {
                      if (!v75)
                      {
                        v75 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v294, "deletedObjects"), "count")}];
                      }

                      [v75 addObject:v79];
                    }
                  }

                  objc_autoreleasePoolPop(v80);
                  ++v78;
                }

                while (v76 != v78);
                v83 = [v74 countByEnumeratingWithState:&v361 objects:v395 count:16];
                v76 = v83;
              }

              while (v83);
            }

            if (context)
            {
              context[18] = v59;
            }

            v84 = [v294 lockedObjects];
            v359 = 0u;
            v360 = 0u;
            v357 = 0u;
            v358 = 0u;
            v85 = [v84 countByEnumeratingWithState:&v357 objects:v394 count:16];
            if (v85)
            {
              v86 = 0;
              v87 = *v358;
              do
              {
                for (i2 = 0; i2 != v85; ++i2)
                {
                  if (*v358 != v87)
                  {
                    objc_enumerationMutation(v84);
                  }

                  v89 = *(*(&v357 + 1) + 8 * i2);
                  v90 = objc_autoreleasePoolPush();
                  if ([objc_msgSend(v89 "objectID")] == v55)
                  {
                    v91 = [(NSPersistentStoreCoordinator *)v302 _conflictsWithRowCacheForObject:v89 withContext:context andStore:v55];
                    if (v91)
                    {
                      [v300 addObject:v91];
                    }

                    else
                    {
                      if (!v86)
                      {
                        v86 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(objc_msgSend(v294, "lockedObjects"), "count")}];
                      }

                      [v86 addObject:v89];
                    }
                  }

                  objc_autoreleasePoolPop(v90);
                }

                v85 = [v84 countByEnumeratingWithState:&v357 objects:v394 count:16];
              }

              while (v85);
            }

            else
            {
              v86 = 0;
            }

            if (context)
            {
              context[18] = v59;
            }

            v92 = [v300 count];
            v93 = [NSSaveChangesRequest alloc];
            if (v92)
            {
              v94 = 0;
            }

            else
            {
              v94 = v309;
            }

            if (v92)
            {
              v95 = 0;
            }

            else
            {
              v95 = v298;
            }

            if (v92)
            {
              v96 = 0;
            }

            else
            {
              v96 = v75;
            }

            if (v92)
            {
              v97 = 0;
            }

            else
            {
              v97 = v86;
            }

            v98 = [(NSSaveChangesRequest *)v93 initWithInsertedObjects:v94 updatedObjects:v95 deletedObjects:v96 lockedObjects:v97];

            v99 = v98;
          }

          else
          {
            v99 = 0;
          }

          if (([v55 isReadOnly] & 1) == 0)
          {
            if ([(NSSaveChangesRequest *)v99 hasChanges]& 1) != 0 || v55 && (v100 = atomic_load(v55 + 60), (v100))
            {
              v101 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v55, 0}];
              [(NSPersistentStoreRequest *)v99 setAffectedStores:v101];

              [v290 addObject:v99];
            }
          }

          v54 = v291 + 1;
        }

        while (v291 + 1 != v292);
      }

      if ([v300 count])
      {
        v276 = [MEMORY[0x1E695DF20] dictionaryWithObject:v300 forKey:@"conflictList"];
        if (*(v297 + 96))
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          v277 = *(v297 + 96);
          if (v277 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v278 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v278, OS_SIGNPOST_INTERVAL_END, v277, "Save", &unk_1859905C6, buf, 2u);
            }
          }
        }

        objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v276]);
      }

      v138 = [v290 count];
      *(*(*(v297 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v138];
      if (!v138)
      {
        goto LABEL_455;
      }

      v139 = 0;
      v140 = 1;
      contexta = *MEMORY[0x1E696A250];
      v310 = *MEMORY[0x1E696AA08];
      v141 = MEMORY[0x1E695E0F0];
      while (1)
      {
        v142 = [v290 objectAtIndex:v139];
        v143 = [objc_msgSend(v142 "affectedStores")];
        if ([v143 _prepareForExecuteRequest:v142 withContext:*(v297 + 56) error:*(*(v297 + 80) + 8) + 40])
        {
          break;
        }

LABEL_305:
        ++v139;
        ++v140;
        if (v139 == v138)
        {
          goto LABEL_455;
        }
      }

      v144 = [v143 executeRequest:v142 withContext:*(v297 + 56) error:*(*(v297 + 80) + 8) + 40];
      if (v144)
      {
        [*(*(*(v297 + 64) + 8) + 40) addObject:v144];
        if ([v143 coreSpotlightExporter])
        {
          -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromSaveRequest:]([v143 coreSpotlightExporter], v142);
        }

        if (v142)
        {
          if (v142[7])
          {
            v145 = v142[7];
          }

          else
          {
            v145 = v141;
          }
        }

        else
        {
          v145 = 0;
        }

        if ([v145 count])
        {
          v338 = 0u;
          v339 = 0u;
          v336 = 0u;
          v337 = 0u;
          v146 = [v145 countByEnumeratingWithState:&v336 objects:v385 count:16];
          if (v146)
          {
            v147 = *v337;
            do
            {
              for (i3 = 0; i3 != v146; ++i3)
              {
                if (*v337 != v147)
                {
                  objc_enumerationMutation(v145);
                }

                [(NSSaveChangesRequest *)*(v297 + 32) _addChangedObjectIDsNotification:?];
              }

              v146 = [v145 countByEnumeratingWithState:&v336 objects:v385 count:16];
            }

            while (v146);
          }
        }

        if (!v142)
        {
          goto LABEL_305;
        }

        v149 = v142 + 7;
        goto LABEL_304;
      }

      if (*(*(*(v297 + 80) + 8) + 40))
      {
LABEL_301:
        if (v138 != 1)
        {
          v267 = *(v297 + 80);
          if (!v139)
          {
            v268 = [*(*(v267 + 8) + 40) code];
            v267 = *(v297 + 80);
            if (v268 == 134050)
            {
              v269 = [*(*(v267 + 8) + 40) userInfo];
              v270 = [_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v269];
              *(*(*(v297 + 80) + 8) + 40) = 0;
              objc_exception_throw(v270);
            }
          }

          v271 = [*(*(v267 + 8) + 40) code];
          v272 = [*(*(*(v297 + 80) + 8) + 40) localizedFailureReason];
          v386 = v310;
          v387 = *(*(*(v297 + 80) + 8) + 40);
          v273 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v387 forKeys:&v386 count:1];
          if (v272)
          {
            v274 = v272;
          }

          else
          {
            v274 = @"Save failed";
          }

          v275 = [_NSCoreDataException exceptionWithName:v271 code:v274 reason:v273 userInfo:?];
          -[_NSCoreDataException _setDomain:](v275, [*(*(*(v297 + 80) + 8) + 40) domain]);
          *(*(*(v297 + 80) + 8) + 40) = 0;
          objc_exception_throw(v275);
        }

        if ([*(*(*(v297 + 80) + 8) + 40) code] == 134050)
        {
          v265 = [*(*(*(v297 + 80) + 8) + 40) userInfo];
          v266 = [_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v265];
          *(*(*(v297 + 80) + 8) + 40) = 0;
          objc_exception_throw(v266);
        }

        v149 = (*(*(v297 + 64) + 8) + 40);
LABEL_304:
        *v149 = 0;
        goto LABEL_305;
      }

      if ([objc_msgSend(v143 type])
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v143;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: A sqlite store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v151 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v143;
        v152 = v151;
        v153 = "CoreData: A sqlite store save failed but did not return an error: %@";
      }

      else if ([objc_msgSend(v143 "type")])
      {
        v154 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v143;
          _os_log_error_impl(&dword_18565F000, v154, OS_LOG_TYPE_ERROR, "CoreData: fault: A xpc store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v155 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v155, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v143;
        v152 = v155;
        v153 = "CoreData: A xpc store save failed but did not return an error: %@";
      }

      else if ([objc_msgSend(v143 "type")])
      {
        v156 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v143;
          _os_log_error_impl(&dword_18565F000, v156, OS_LOG_TYPE_ERROR, "CoreData: fault: A binary store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v157 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v157, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v143;
        v152 = v157;
        v153 = "CoreData: A binary store save failed but did not return an error: %@";
      }

      else
      {
        if (![objc_msgSend(v143 "type")])
        {
          goto LABEL_300;
        }

        v158 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v143;
          _os_log_error_impl(&dword_18565F000, v158, OS_LOG_TYPE_ERROR, "CoreData: fault: An in-memory store save failed but did not return an error: %@\n", buf, 0xCu);
        }

        v159 = _PFLogGetLogStream(17);
        if (!os_log_type_enabled(v159, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_300;
        }

        *buf = 138412290;
        *&buf[4] = v143;
        v152 = v159;
        v153 = "CoreData: An in-memory store save failed but did not return an error: %@";
      }

      _os_log_fault_impl(&dword_18565F000, v152, OS_LOG_TYPE_FAULT, v153, buf, 0xCu);
LABEL_300:
      *(*(*(v297 + 80) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:contexta code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Unknown", v310)}];
      goto LABEL_301;
    }

    v122 = *(v297 + 32);
    if (v29 != 8)
    {
LABEL_238:
      *(*(*(v297 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v292];
      v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v292)
      {
        goto LABEL_252;
      }

      v125 = 0;
      v126 = *MEMORY[0x1E696A250];
      while (1)
      {
        v127 = [obj objectAtIndex:v125];
        *buf = 0;
        [(NSPersistentStoreCoordinator *)*(v297 + 48) replaceResultTypeOfRequestIfNecessary:v122 store:v127 requestType:*(v297 + 88) originalResultType:buf];
        v128 = [v127 executeRequest:v122 withContext:*(v297 + 56) error:*(*(v297 + 80) + 8) + 40];
        if (v128)
        {
          if (*(v297 + 48))
          {
            v129 = *(v297 + 88);
            if ([objc_msgSend(v127 "type")])
            {
              if ([v127 coreSpotlightExporter] && (v129 - 5) <= 2)
              {
                -[NSCoreDataCoreSpotlightDelegate _updateSpotlightIndexFromBatchResult:]([v127 coreSpotlightExporter], v128);
                v128 = [(NSPersistentStoreCoordinator *)*(v297 + 48) restoreOriginalRequestIfNecessary:v122 store:v127 swizzledResults:v128 originalRequestType:*(v297 + 88) originalResultType:*buf];
              }
            }
          }

          v130 = *(*(*(v297 + 64) + 8) + 40);
        }

        else
        {
          v131 = *(*(*(v297 + 80) + 8) + 40);
          if (v131)
          {
            v132 = [v131 code];
            v133 = *(*(v297 + 80) + 8);
            v128 = *(v133 + 40);
            if (v132 != 134091)
            {
              [v124 addObject:*(v133 + 40)];
LABEL_252:
              if ([v123 count] == v292)
              {
                v136 = objc_autoreleasePoolPush();
                _pflogInitialize(1);
                if (_pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v137 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
LABEL_513:
                      v255 = *(v297 + 32);
                      *buf = 138412546;
                      *&buf[4] = v255;
                      v399 = 2112;
                      v400 = obj;
                      _os_log_error_impl(&dword_18565F000, v137, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentStoreRequest failed unsupported by all stores on this coordinator.  Request: '%@' and stores [%@]\n", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v137 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_513;
                    }
                  }
                }

                _NSCoreDataLog_console(1, "NSPersistentStoreRequest failed unsupported by all stores on this coordinator.  Request: '%@' and stores [%@]", *(v297 + 32), obj);
                objc_autoreleasePoolPop(v136);
                v212 = MEMORY[0x1E696ABC0];
                v213 = *(v297 + 32);
                v379[0] = @"NSPersistentStoreRequest";
                v379[1] = @"NSPersistentStores";
                v380[0] = v213;
                v380[1] = obj;
                v379[2] = @"reason";
                v380[2] = @"Operation unsupported by all stores on this coordinator.";
                v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v380 forKeys:v379 count:3];
                [v124 addObject:{objc_msgSend(v212, "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 134091, v214)}];
              }

              if ([v124 count])
              {
                *(*(*(v297 + 64) + 8) + 40) = 0;
                if (*(v297 + 104))
                {
                  v215 = MEMORY[0x1E696ABC0];
                  v216 = *(v297 + 32);
                  v377[0] = @"NSPersistentStoreRequest";
                  v377[1] = @"Underlying errors";
                  v378[0] = v216;
                  v378[1] = v124;
                  v377[2] = @"reason";
                  v378[2] = @"One or more stores returned an error.";
                  v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v378 forKeys:v377 count:3];
                  *(*(*(v297 + 80) + 8) + 40) = [v215 errorWithDomain:*MEMORY[0x1E696A250] code:134070 userInfo:v217];
                }

                goto LABEL_455;
              }

              if (*(v297 + 48))
              {
                v218 = *(*(*(v297 + 64) + 8) + 40);
                v219 = [*(v297 + 32) requestType];
                if (v219 <= 7)
                {
                  switch(v219)
                  {
                    case 5:
                      v220 = off_1E6EC0940;
                      break;
                    case 6:
                      v220 = off_1E6EC0950;
                      break;
                    case 7:
                      v220 = off_1E6EC0930;
                      break;
                    default:
LABEL_443:
                      if ([v218 count] == 1)
                      {
LABEL_442:
                        v210 = [v218 lastObject];
LABEL_454:
                        *(*(*(v297 + 64) + 8) + 40) = v210;
                        goto LABEL_455;
                      }

                      v220 = off_1E6EC0BE0;
                      break;
                  }

LABEL_452:
                  v223 = [objc_alloc(*v220) initWithSubresults:v218];
LABEL_453:
                  v210 = v223;
                  goto LABEL_454;
                }

                if (v219 != 8)
                {
                  if (v219 == 10)
                  {
                    v220 = off_1E6EC0BC8;
                  }

                  else
                  {
                    if (v219 != 11)
                    {
                      goto LABEL_443;
                    }

                    v220 = off_1E6EC0AE8;
                  }

                  goto LABEL_452;
                }

                if (v218)
                {
                  if ([v218 count] == 1)
                  {
                    goto LABEL_442;
                  }

                  v223 = [[NSPersistentHistoryResult alloc] initWithSubresults:v218];
                  goto LABEL_453;
                }
              }

              v210 = 0;
              goto LABEL_454;
            }

            v130 = v123;
          }

          else
          {
            v134 = MEMORY[0x1E696ABC0];
            v382[0] = *(v297 + 32);
            v381[0] = @"NSPersistentStoreRequest";
            v381[1] = @"NSPersistentStore";
            v135 = [obj objectAtIndex:v125];
            v381[2] = @"reason";
            v382[1] = v135;
            v382[2] = @"Store returned nil but no error.";
            v128 = [v134 errorWithDomain:v126 code:134070 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v382, v381, 3)}];
            v130 = v124;
          }
        }

        [v130 addObject:v128];
        *(*(*(v297 + 80) + 8) + 40) = 0;
        if (v292 == ++v125)
        {
          goto LABEL_252;
        }
      }
    }

    if ([*(v297 + 32) resultType] != 4)
    {
      if ([v122 fetchBatchSize])
      {
        v122 = [v122 copy];
        [v122 setFetchBatchSize:0];
      }

      goto LABEL_238;
    }

    v221 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (_pflogging_catastrophic_mode)
      {
        v222 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_512;
        }

        *buf = 138412290;
        *&buf[4] = obj;
      }

      else
      {
        v222 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_512;
        }

        *buf = 138412290;
        *&buf[4] = obj;
      }

      _os_log_error_impl(&dword_18565F000, v222, OS_LOG_TYPE_ERROR, "CoreData: error: NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores [%@]\n", buf, 0xCu);
    }

LABEL_512:
    _NSCoreDataLog_console(1, "NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores [%@]", obj);
    objc_autoreleasePoolPop(v221);
    v383 = @"NSAffectedStoresErrorKey";
    v384 = obj;
    v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
    v254 = [_NSCoreDataException exceptionWithName:134091 code:@"NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores" reason:v253 userInfo:?];
    objc_exception_throw(v254);
  }

  v120 = [*(v297 + 32) sortDescriptors];
  v121 = ![v120 count] || !objc_msgSend(*(v297 + 32), "includesPropertyValues") || objc_msgSend(*(v297 + 32), "resultType") == 1;
  [objc_msgSend(*(v297 + 32) "propertiesToGroupBy")];
  *(*(*(v297 + 64) + 8) + 40) = [MEMORY[0x1E695DF70] arrayWithCapacity:v292];
  if (v292)
  {
    v187 = 0;
    v188 = 0;
    while (1)
    {
      v189 = [objc_msgSend(obj objectAtIndex:{v187), "executeRequest:withContext:error:", *(v297 + 32), *(v297 + 56), &v340}];
      v190 = v189;
      if (!v189)
      {
        break;
      }

      if ([v189 count])
      {
        v191 = [*(*(*(v297 + 64) + 8) + 40) count] != 0;
        [*(*(*(v297 + 64) + 8) + 40) addObjectsFromArray:v190];
        v188 |= v191;
      }

      if (v292 == ++v187)
      {
        v192 = v188 ^ 1;
        goto LABEL_408;
      }
    }

    *(*(*(v297 + 80) + 8) + 40) = v340;
    v52 = *(v297 + 64);
LABEL_411:
    *(*(v52 + 8) + 40) = 0;
    goto LABEL_455;
  }

  v192 = 1;
LABEL_408:
  if (!(([*(*(*(v297 + 64) + 8) + 40) count] < 2) | (v192 | v121) & 1))
  {
    [*(*(*(v297 + 64) + 8) + 40) sortUsingDescriptors:v120];
  }

LABEL_455:
  v224 = *(v297 + 88);
  if (v224 <= 7 && ((1 << v224) & 0xE4) != 0)
  {
    if (*(*(*(v297 + 64) + 8) + 40))
    {
      v226 = *(v297 + 56);
      if (v226)
      {
        if (v224 == 2 && [objc_msgSend(v226 "_queryGenerationToken")])
        {
          v330[0] = MEMORY[0x1E69E9820];
          v330[1] = 3221225472;
          v331 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_555;
          v332 = &unk_1E6EC19D8;
          v227 = *(v297 + 56);
          v333 = *(v297 + 48);
          v334 = obj;
          v335 = v227;
          if ([v227 concurrencyType])
          {
            [*(v297 + 48) performBlockAndWait:v330];
          }

          else
          {
            v331(v330);
          }
        }

        else
        {
          v328 = 0u;
          v329 = 0u;
          v326 = 0u;
          v327 = 0u;
          v228 = [obj countByEnumeratingWithState:&v326 objects:v376 count:16];
          if (v228)
          {
            v229 = *v327;
            do
            {
              for (i4 = 0; i4 != v228; ++i4)
              {
                if (*v327 != v229)
                {
                  objc_enumerationMutation(obj);
                }

                v231 = *(*(&v326 + 1) + 8 * i4);
                if ([v231 supportsGenerationalQuerying] && objc_msgSend(v231, "_hasActiveGenerations"))
                {
                  v321[0] = MEMORY[0x1E69E9820];
                  v321[1] = 3221225472;
                  v322 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_557;
                  v323 = &unk_1E6EC1600;
                  v232 = *(v297 + 56);
                  v324 = *(v297 + 48);
                  v325 = v231;
                  if ([v232 concurrencyType])
                  {
                    [*(v297 + 48) performBlockAndWait:v321];
                  }

                  else
                  {
                    v322(v321);
                  }
                }
              }

              v228 = [obj countByEnumeratingWithState:&v326 objects:v376 count:16];
            }

            while (v228);
          }
        }

        if ([(NSPersistentStoreCoordinator *)*(v297 + 48) _hasHistoryTracking:?])
        {
          v315[0] = MEMORY[0x1E69E9820];
          v315[1] = 3221225472;
          v316 = __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_2;
          v317 = &unk_1E6EC19D8;
          v233 = *(v297 + 56);
          v318 = *(v297 + 48);
          v319 = obj;
          v320 = v233;
          if ([v233 concurrencyType])
          {
            [*(v297 + 48) performBlockAndWait:v315];
          }

          else
          {
            v316(v315);
          }
        }
      }
    }
  }

  v234 = *(*(*(v297 + 80) + 8) + 40);
  if (v234)
  {
    v235 = v234;
  }

  v236 = *(*(*(v297 + 64) + 8) + 40);
  if (v236)
  {
    v237 = v236;
  }

  if (*(v297 + 88) == 2)
  {
    v238 = *(v297 + 32);
    if (v238)
    {
      v239 = *(v238 + 56) ? *(v238 + 56) : MEMORY[0x1E695E0F0];
    }

    else
    {
      v239 = 0;
    }

    if ([v239 count])
    {
      v240 = [v239 firstObject];
      if ([v239 count] >= 2)
      {
        contextc = objc_autoreleasePoolPush();
        v241 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v313 = 0u;
        v314 = 0u;
        v311 = 0u;
        v312 = 0u;
        v242 = [v239 countByEnumeratingWithState:&v311 objects:v375 count:16];
        if (v242)
        {
          v243 = *v312;
          do
          {
            for (i5 = 0; i5 != v242; ++i5)
            {
              if (*v312 != v243)
              {
                objc_enumerationMutation(v239);
              }

              v245 = *(*(&v311 + 1) + 8 * i5);
              v246 = objc_autoreleasePoolPush();
              v247 = [objc_msgSend(v245 "userInfo")];
              if ([v247 count])
              {
                [v241 addEntriesFromDictionary:v247];
              }

              objc_autoreleasePoolPop(v246);
            }

            v242 = [v239 countByEnumeratingWithState:&v311 objects:v375 count:16];
          }

          while (v242);
        }

        v248 = objc_alloc(MEMORY[0x1E696AD80]);
        v249 = [v240 name];
        v250 = [v240 object];
        v373 = @"_NSManagedObjectContextObjectIDMutationMappingKey";
        v374 = v241;
        v251 = [v248 initWithName:v249 object:v250 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v374, &v373, 1)}];

        objc_autoreleasePoolPop(contextc);
        v240 = v251;
      }

      v252 = objc_autoreleasePoolPush();
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      if (v238)
      {

        *(v238 + 56) = 0;
      }

      objc_autoreleasePoolPop(v252);
    }
  }
}

- (void)replaceResultTypeOfRequestIfNecessary:(unsigned __int8 *)necessary store:(uint64_t)store requestType:(void *)type originalResultType:
{
  if (result)
  {
    result = [objc_msgSend(necessary "type")];
    if (result)
    {
      result = [necessary coreSpotlightExporter];
      if (result)
      {
        if (necessary)
        {
          v9 = (necessary[201] >> 2) & 1;
        }

        else
        {
          LOBYTE(v9) = 0;
        }

        if ((store - 8) >= 0xFFFFFFFFFFFFFFFDLL && (v9 & 1) == 0)
        {
          *type = [a2 resultType];

          return [a2 setResultType:1];
        }
      }
    }
  }

  return result;
}

- (id)restoreOriginalRequestIfNecessary:(uint64_t)necessary store:(void *)store swizzledResults:(uint64_t)results originalRequestType:(uint64_t)type originalResultType:
{
  if (!self)
  {
    return 0;
  }

  if (necessary && (*(necessary + 201) & 4) != 0)
  {
    return store;
  }

  if (results == 5 && type != 1)
  {
    [a2 setResultType:type];
    v8 = [objc_msgSend(store "result")];
    if (type == 2)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      if (v12)
      {
        v9 = v12;
LABEL_27:
        v13 = off_1E6EC0940;
        goto LABEL_34;
      }
    }

    else if (!type)
    {
      if (v8)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }

      goto LABEL_27;
    }

    return store;
  }

  if (results != 6 || type == 1)
  {
    if (results != 7 || type == 1)
    {
      return store;
    }

    [a2 setResultType:type];
    v11 = [objc_msgSend(store "result")];
    if (type == 2)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      if (!v15)
      {
        return store;
      }

      v9 = v15;
    }

    else
    {
      if (type)
      {
        return store;
      }

      if (v11)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }
    }

    v13 = off_1E6EC0930;
  }

  else
  {
    [a2 setResultType:type];
    v10 = [objc_msgSend(store "result")];
    if (type == 2)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      if (!v14)
      {
        return store;
      }

      v9 = v14;
    }

    else
    {
      if (type)
      {
        return store;
      }

      if (v10)
      {
        v9 = MEMORY[0x1E695E118];
      }

      else
      {
        v9 = MEMORY[0x1E695E110];
      }
    }

    v13 = off_1E6EC0950;
  }

LABEL_34:
  v16 = [objc_alloc(*v13) initWithResultType:type andObject:v9];
  if (!v16)
  {
    return store;
  }

  return v16;
}

- (void)_doPreSaveAssignmentsForObjects:(void *)objects intoStores:
{
  v57 = *MEMORY[0x1E69E9840];
  v34 = result;
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      if (objc_opt_respondsToSelector())
      {
        anyObject = [a2 anyObject];
      }

      else
      {
        anyObject = [a2 lastObject];
      }

      _PFAssertSafeMultiThreadedAccess_impl([anyObject managedObjectContext], sel__doPreSaveAssignmentsForObjects_intoStores_);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    result = [a2 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v46;
      allocator = *MEMORY[0x1E695E480];
      v29 = *v46;
      v30 = a2;
      do
      {
        v6 = 0;
        v31 = v4;
        do
        {
          if (*v46 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v45 + 1) + 8 * v6);
          if (![objc_msgSend(v7 objectID])
          {
            v32 = v6;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v8 = [objects countByEnumeratingWithState:&v41 objects:v54 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v42;
              do
              {
                v11 = 0;
                v35 = v9;
                do
                {
                  if (*v42 != v10)
                  {
                    objc_enumerationMutation(objects);
                  }

                  v12 = *(*(&v41 + 1) + 8 * v11);
                  if (([v12 isReadOnly] & 1) == 0)
                  {
                    v13 = v7;
                    v14 = [objc_msgSend(v34 "managedObjectModel")];
                    Mutable = CFSetCreateMutable(allocator, 0, 0);
                    v16 = CFSetCreateMutable(allocator, 0, 0);
                    v37 = 0u;
                    v38 = 0u;
                    v39 = 0u;
                    v40 = 0u;
                    v17 = [v14 countByEnumeratingWithState:&v37 objects:v53 count:16];
                    if (v17)
                    {
                      v18 = v17;
                      v19 = *v38;
                      do
                      {
                        for (i = 0; i != v18; ++i)
                        {
                          if (*v38 != v19)
                          {
                            objc_enumerationMutation(v14);
                          }

                          CFSetAddValue(v16, *(*(&v37 + 1) + 8 * i));
                        }

                        v18 = [v14 countByEnumeratingWithState:&v37 objects:v53 count:16];
                      }

                      while (v18);
                    }

                    v7 = v13;
                    v21 = [NSPersistentStoreCoordinator _canSaveGraphRootedAtObject:v13 intoStore:v12 withPreviouslyChecked:Mutable withAcceptableEntities:v16];
                    CFRelease(v16);
                    if (v21)
                    {
                      v49 = 0u;
                      v50 = 0u;
                      v51 = 0u;
                      v52 = 0u;
                      v22 = [(__CFSet *)Mutable countByEnumeratingWithState:&v49 objects:v56 count:16];
                      if (v22)
                      {
                        v23 = v22;
                        v24 = *v50;
                        do
                        {
                          for (j = 0; j != v23; ++j)
                          {
                            if (*v50 != v24)
                            {
                              objc_enumerationMutation(Mutable);
                            }

                            objectID = [*(*(&v49 + 1) + 8 * j) objectID];
                            if ([objectID isTemporaryID])
                            {
                              if (![objectID persistentStore])
                              {
                                [objectID _setPersistentStore:v12];
                              }
                            }
                          }

                          v23 = [(__CFSet *)Mutable countByEnumeratingWithState:&v49 objects:v56 count:16];
                        }

                        while (v23);
                      }

                      CFRelease(Mutable);
                      v5 = v29;
                      a2 = v30;
                      v4 = v31;
                      v6 = v32;
                      goto LABEL_38;
                    }

                    CFRelease(Mutable);
                    v9 = v35;
                  }

                  ++v11;
                }

                while (v11 != v9);
                v9 = [objects countByEnumeratingWithState:&v41 objects:v54 count:16];
              }

              while (v9);
            }

            v27 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D930], 134020, @"Can't resolve how to assign objects to stores; some objects may have been assigned to stores; use [[managedObject objectID] persistentStore] to find out what is going where now; use [managedObjectContext assignObject:toStore:] to straighten things out", [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:@"problemObject"]);
            objc_exception_throw(v27);
          }

LABEL_38:
          v6 = v6 + 1;
        }

        while (v6 != v4);
        result = [a2 countByEnumeratingWithState:&v45 objects:v55 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_555(uint64_t a1)
{
  v2 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _retainedIdentifierFromStores:?];
  if (!v2)
  {
    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          v9 = 0;
          v7 = &v9;
LABEL_10:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Coordinator failed to create a new query generation post save\n", v7, 2u);
        }
      }

      else if (v6)
      {
        LOWORD(v8) = 0;
        v7 = &v8;
        goto LABEL_10;
      }
    }

    _NSCoreDataLog_console(1, "Coordinator failed to create a new query generation post save", v8);
    objc_autoreleasePoolPop(v3);
    v2 = +[NSQueryGenerationToken currentQueryGenerationToken];
  }

  [*(a1 + 48) _setQueryGenerationFromToken:v2 error:0];
}

- (_NSQueryGenerationToken)_retainedIdentifierFromStores:(_NSQueryGenerationToken *)result
{
  v20 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (![a2 count])
  {
    v13 = +[NSQueryGenerationToken nostoresQueryGenerationToken];

    return v13;
  }

  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = *v16;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(a2);
      }

      currentQueryGeneration = [*(*(&v15 + 1) + 8 * i) currentQueryGeneration];
      if (!currentQueryGeneration)
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v10 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v12 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v10)
          {
            if (v12)
            {
              *v14 = 0;
LABEL_27:
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Store currentQueryGeneration returned nil unexpectedly\n", v14, 2u);
            }
          }

          else if (v12)
          {
            *v14 = 0;
            goto LABEL_27;
          }
        }

        _NSCoreDataLog_console(1, "Store currentQueryGeneration returned nil unexpectedly", *v14);
        objc_autoreleasePoolPop(v9);
        return 0;
      }

      [array addObject:currentQueryGeneration];
    }

    v5 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:
  if ([array count] == 1)
  {
    return [array lastObject];
  }

  result = [_NSQueryGenerationToken alloc];
  if (result)
  {
    result = [(_NSQueryGenerationToken *)result _initWithValue:array singleton:0];
    if (result)
    {
      *&result->_flags |= 1u;
    }
  }

  return result;
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_557(uint64_t a1)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 40);
}

void __65__NSPersistentStoreCoordinator_executeRequest_withContext_error___block_invoke_2(uint64_t a1)
{
  v2 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _retainedChangeTokenFromStores:?];
  [*(a1 + 48) _setChangeTrackingTokenFromToken:v2 error:0];
}

+ (BOOL)removeUbiquitousContentAndPersistentStoreAtURL:(NSURL *)storeURL options:(NSDictionary *)options error:(NSError *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = objc_msgSend_stringWithFormat_(v6, v8);
  v10 = *MEMORY[0x1E696A250];
  v19 = *MEMORY[0x1E696A588];
  v20[0] = v9;
  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, &v19, 1)}];
  if (v11)
  {
    if (error)
    {
      *error = v11;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v17 = 1024;
      v18 = 3532;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
      v17 = 1024;
      v18 = 3532;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  return 0;
}

- (uint64_t)applyMigrationStage:(void *)stage withContext:(void *)context error:
{
  v117 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 1;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3052000000;
  v104 = __Block_byref_object_copy__19;
  v105 = __Block_byref_object_dispose__19;
  v106 = 0;
  v8 = objc_opt_class();
  storeType = [stage storeType];
  storeURL = [stage storeURL];
  options = [stage options];
  [stage setMetadata:{objc_msgSend(v8, "metadataForPersistentStoreOfType:URL:options:error:", storeType, storeURL, options, v102 + 5)}];
  v12 = v102;
  if (v102[5])
  {
    *(v108 + 24) = 0;
    v13 = v12[5];
  }

  if (*(v108 + 24) != 1)
  {
    goto LABEL_123;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a2 subsequentStage])
    {
      [a2 subsequentStage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        subsequentStage = [a2 subsequentStage];
        currentModel = [subsequentStage currentModel];
        if ([currentModel resolve:v102 + 5])
        {
          v16 = [objc_msgSend(subsequentStage "currentModel")];
LABEL_15:
          v19 = v16;
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v112 = a2;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know what to do with lightweight stages that aren't followed by a custom stage yet: %@\n", buf, 0xCu);
      }

      v21 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v112 = a2;
      v22 = "CoreData: I don't know what to do with lightweight stages that aren't followed by a custom stage yet: %@";
      goto LABEL_25;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v112 = a2;
        _os_log_error_impl(&dword_18565F000, v20, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of stage yet: %@\n", buf, 0xCu);
      }

      v21 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v112 = a2;
      v22 = "CoreData: I don't know how to handle this type of stage yet: %@";
LABEL_25:
      _os_log_fault_impl(&dword_18565F000, v21, OS_LOG_TYPE_FAULT, v22, buf, 0xCu);
      goto LABEL_27;
    }

    currentModel2 = [a2 currentModel];
    if (![currentModel2 resolve:v102 + 5] || (v18 = objc_msgSend(a2, "nextModel"), !objc_msgSend(v18, "resolve:", v102 + 5)))
    {
LABEL_26:
      *(v108 + 24) = 0;
      v24 = v102[5];
      goto LABEL_27;
    }

    if (([objc_msgSend(objc_msgSend(objc_msgSend(a2 "nextModel")] & 1) == 0)
    {
      v16 = [objc_msgSend(a2 "nextModel")];
      goto LABEL_15;
    }
  }

LABEL_27:
  v19 = 0;
LABEL_28:
  v25 = objc_alloc_init(NSStoreMigrationPolicy);
  v27 = [objc_msgSend(objc_msgSend(stage "stagedMigrationManager")] != a2 || v19 != 0;
  objc_opt_class();
  v90 = v27;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 willMigrateHandler])
  {
    selfCopy = self;
    contextCopy = context;
    v29 = [objc_msgSend(objc_msgSend(a2 "currentModel")];
    v30 = v29;
    if (v29)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v31 = [v29 countByEnumeratingWithState:&v97 objects:v116 count:16];
      if (v31)
      {
        v32 = *v98;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v98 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v97 + 1) + 8 * i);
            if (v34)
            {

              *(v34 + 48) = 0;
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v97 objects:v116 count:16];
        }

        while (v31);
      }
    }

    stagedMigrationManager = [stage stagedMigrationManager];
    self = selfCopy;
    context = contextCopy;
    v96[0] = MEMORY[0x1E69E9820];
    v96[1] = 3221225472;
    v96[2] = __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke;
    v96[3] = &unk_1E6EC2D00;
    v96[4] = stagedMigrationManager;
    v96[5] = a2;
    v96[6] = stage;
    v96[7] = &v101;
    v96[8] = &v107;
    [NSPersistentStoreCoordinator createPersistentContainerForMigrationContext:stage withModel:v30 andExecuteBlock:v96];
  }

  contextCopy2 = context;
  if (*(v108 + 24) == 1)
  {
    if (v19)
    {
      selfCopy2 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v19];
      -[NSPersistentStoreCoordinator setCodableAdapterRegistry:](selfCopy2, "setCodableAdapterRegistry:", [self codableAdapterRegistry]);
    }

    else
    {
      selfCopy2 = self;
    }

    v37 = selfCopy2;
    [(NSPersistentStoreCoordinator *)selfCopy2 _setIsMigrating:?];
    -[NSStoreMigrationPolicy setPersistentStoreCoordinator:sourceURL:configuration:metadata:options:](v25, selfCopy2, [stage storeURL], objc_msgSend(stage, "configurationName"), objc_msgSend(stage, "metadata"), objc_msgSend(stage, "options"));
    forceMigration = [stage forceMigration];
    if (v25)
    {
      v25->_forcedMigration = forceMigration;
    }

    label = [a2 label];
    if (v25)
    {
      v40 = label;
      stageLabel = v25->_stageLabel;
      if (stageLabel != label)
      {

        v25->_stageLabel = 0;
        v25->_stageLabel = [v40 copy];
      }
    }

    destinationConfigurationForCloudKitValidation = [stage destinationConfigurationForCloudKitValidation];
    if (v25)
    {
      v43 = destinationConfigurationForCloudKitValidation;
      destinationConfigurationForCloudKitValidation = v25->_destinationConfigurationForCloudKitValidation;
      if (destinationConfigurationForCloudKitValidation != destinationConfigurationForCloudKitValidation)
      {

        v25->_destinationConfigurationForCloudKitValidation = 0;
        v25->_destinationConfigurationForCloudKitValidation = [v43 copy];
      }
    }

    v45 = [(NSStoreMigrationPolicy *)&v25->super.isa _gatherDataAndPerformMigration:?];
    if (v45)
    {
      [stage setMigratedStore:v45];
      v46 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(stage, "storeURL"), @"storeURL", 0}];
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 didMigrateHandler])
      {
        selfCopy3 = self;
        v48 = [objc_msgSend(objc_msgSend(a2 "nextModel")];
        v49 = v48;
        if (v48)
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v50 = [v48 countByEnumeratingWithState:&v92 objects:v115 count:16];
          if (v50)
          {
            v51 = *v93;
            do
            {
              for (j = 0; j != v50; ++j)
              {
                if (*v93 != v51)
                {
                  objc_enumerationMutation(v49);
                }

                v53 = *(*(&v92 + 1) + 8 * j);
                if (v53)
                {

                  *(v53 + 48) = 0;
                }
              }

              v50 = [v49 countByEnumeratingWithState:&v92 objects:v115 count:16];
            }

            while (v50);
          }
        }

        stagedMigrationManager2 = [stage stagedMigrationManager];
        self = selfCopy3;
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke_2;
        v91[3] = &unk_1E6EC2D00;
        v91[4] = stagedMigrationManager2;
        v91[5] = a2;
        v91[6] = stage;
        v91[7] = &v101;
        v91[8] = &v107;
        [NSPersistentStoreCoordinator createPersistentContainerForMigrationContext:stage withModel:v49 andExecuteBlock:v91];
      }

      if (+[NSMappingModel migrationDebugLevel])
      {
        v55 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        IsLogEnabled = _NSCoreDataIsLogEnabled(4);
        v57 = _pflogging_enable_oslog > 0 && IsLogEnabled;
        if (a2)
        {
          if (v57)
          {
            if (_pflogging_catastrophic_mode)
            {
              v58 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                storeURL2 = [stage storeURL];
                *buf = 138412546;
                v112 = storeURL2;
                v113 = 2112;
                v114 = a2;
                _os_log_error_impl(&dword_18565F000, v58, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@\n", buf, 0x16u);
              }
            }

            else
            {
              v70 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                storeURL3 = [stage storeURL];
                *buf = 138412546;
                v112 = storeURL3;
                v113 = 2112;
                v114 = a2;
                _os_log_impl(&dword_18565F000, v70, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            storeURL4 = [stage storeURL];
            v73 = 1;
          }

          else
          {
            storeURL4 = [stage storeURL];
            v73 = 4;
          }

          _NSCoreDataLog_console(v73, "(migration)\t Automatic schema migration succeeded for store at '%@' with migration stage: %@", storeURL4, a2);
        }

        else
        {
          if (v57)
          {
            if (_pflogging_catastrophic_mode)
            {
              v68 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                storeURL5 = [stage storeURL];
                *buf = 138412290;
                v112 = storeURL5;
                _os_log_error_impl(&dword_18565F000, v68, OS_LOG_TYPE_ERROR, "CoreData: error: (migration)\t Automatic schema migration succeeded for store at '%@'\n", buf, 0xCu);
              }
            }

            else
            {
              v74 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                storeURL6 = [stage storeURL];
                *buf = 138412290;
                v112 = storeURL6;
                _os_log_impl(&dword_18565F000, v74, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration)\t Automatic schema migration succeeded for store at '%@'\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            storeURL7 = [stage storeURL];
            v77 = 1;
          }

          else
          {
            storeURL7 = [stage storeURL];
            v77 = 4;
          }

          _NSCoreDataLog_console(v77, "(migration)\t Automatic schema migration succeeded for store at '%@'", storeURL7);
        }

        objc_autoreleasePoolPop(v55);
      }

      goto LABEL_111;
    }

    *(v108 + 24) = 0;
    v60 = v102[5];
    if (!v102[5] || +[NSStoreMigrationPolicy migrationDebugLevel]< 1)
    {
      goto LABEL_111;
    }

    v61 = objc_alloc_init(MEMORY[0x1E696AD60]);
    [v61 appendFormat:@"CoreData: error: (migration) migration failed with error %@", v102[5]];
    userInfo = [v102[5] userInfo];
    if (userInfo)
    {
      v63 = *MEMORY[0x1E696AA08];
      do
      {
        [v61 appendFormat:@"\nError User Info: %@", userInfo];
        v64 = [userInfo objectForKey:v63];
        v65 = v64;
        if (!v64)
        {
          break;
        }

        [v61 appendFormat:@"\nUnderlying error: %@", v64];
        userInfo = [v65 userInfo];
      }

      while (userInfo);
    }

    v66 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v67 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v112 = v61;
LABEL_133:
          _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v67 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v112 = v61;
          goto LABEL_133;
        }
      }
    }

    _NSCoreDataLog_console(1, "%@", v61);
    objc_autoreleasePoolPop(v66);
  }

LABEL_111:
  if (v90)
  {
    -[NSPersistentStoreCoordinator _removePersistentStore:](self, [self persistentStoreForURL:{objc_msgSend(stage, "storeURL")}]);
  }

  context = contextCopy2;
  if (a2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      nextModel = [objc_msgSend(a2 "subsequentStage")];
LABEL_118:
      [nextModel unresolve];
      goto LABEL_123;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a2 "currentModel")];
      nextModel = [a2 nextModel];
      goto LABEL_118;
    }

    v79 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v86 = objc_opt_class();
      *buf = 138412290;
      v112 = v86;
      _os_log_error_impl(&dword_18565F000, v79, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this stage type %@\n", buf, 0xCu);
    }

    v80 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
    {
      v87 = objc_opt_class();
      *buf = 138412290;
      v112 = v87;
      _os_log_fault_impl(&dword_18565F000, v80, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this stage type %@", buf, 0xCu);
    }
  }

LABEL_123:
  if ((v108[3] & 1) == 0)
  {
    [stage setMigratedStore:0];
    v83 = v102[5];
    if (v83)
    {
      if (context)
      {
        *context = v83;
      }
    }

    else
    {
      v84 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v112 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v113 = 1024;
        LODWORD(v114) = 3954;
        _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v85 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v112 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v113 = 1024;
        LODWORD(v114) = 3954;
        _os_log_fault_impl(&dword_18565F000, v85, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v102[5] = 0;
  v81 = *(v108 + 24);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);
  return v81;
}

- (void)createPersistentContainerForMigrationContext:(void *)context withModel:(uint64_t)model andExecuteBlock:(uint64_t)block
{
  v6 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  v7 = +[NSPersistentContainer persistentContainerWithPath:managedObjectModel:](NSPersistentContainer, "persistentContainerWithPath:managedObjectModel:", [objc_msgSend(context "storeURL")], model);
  firstObject = [(NSArray *)[(NSPersistentContainer *)v7 persistentStoreDescriptions] firstObject];
  [firstObject setType:{objc_msgSend(context, "storeType")}];
  [firstObject setConfiguration:{objc_msgSend(context, "configurationName")}];
  v9 = +[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy, [context options]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke;
  v12[3] = &unk_1E6EC2CD8;
  v12[4] = firstObject;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
  [firstObject setShouldMigrateStoreAutomatically:0];
  [firstObject setShouldInferMappingModelAutomatically:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke_2;
  v11[3] = &unk_1E6EC1A28;
  v11[4] = &v19;
  v11[5] = &v13;
  [(NSPersistentContainer *)v7 loadPersistentStoresWithCompletionHandler:v11];
  if (v20[3])
  {
    v10 = 0;
  }

  else
  {
    v7 = 0;
    v10 = v14[5];
  }

  (*(block + 16))(block, v7, v10);

  v14[5] = 0;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v6);
}

void *__103__NSPersistentStoreCoordinator_createPersistentContainerForMigrationContext_withModel_andExecuteBlock___block_invoke_2(void *result, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = result;
    *(*(result[4] + 8) + 24) = 0;
    result = a3;
    *(*(v3[5] + 8) + 40) = result;
  }

  return result;
}

id __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) setContainer:a2];
    v4 = [*(a1 + 40) willMigrateHandler];
    if (((*(v4 + 16))(v4, [*(a1 + 48) stagedMigrationManager], *(a1 + 40), *(*(a1 + 56) + 8) + 40) & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = *MEMORY[0x1E695D940];
        v9 = *(a1 + 40);
        v10 = @"offendingStage";
        v11[0] = v9;
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v8 reason:@"willMigrate must return YES or NO with an error" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    v6 = *(a1 + 32);

    return [v6 setContainer:0];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (void)_setIsMigrating:(unint64_t)migrating
{
  if (migrating)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __68__NSPersistentStoreCoordinator__NSInternalMethods___setIsMigrating___block_invoke;
    v2[3] = &unk_1E6EC2770;
    v2[4] = migrating;
    v3 = a2;
    _perform_0(migrating, v2);
  }
}

id __70__NSPersistentStoreCoordinator_applyMigrationStage_withContext_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    [*(a1 + 32) setContainer:a2];
    v4 = [*(a1 + 40) didMigrateHandler];
    if (((*(v4 + 16))(v4, [*(a1 + 48) stagedMigrationManager], *(a1 + 40), *(*(a1 + 56) + 8) + 40) & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v8 = *MEMORY[0x1E695D940];
        v9 = *(a1 + 40);
        v10 = @"offendingStage";
        v11[0] = v9;
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:v8 reason:@"didMigrate must return YES or NO with an error" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
      }

      *(*(*(a1 + 64) + 8) + 24) = 0;
      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    v6 = *(a1 + 32);

    return [v6 setContainer:0];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    result = a3;
    *(*(*(a1 + 56) + 8) + 40) = result;
  }

  return result;
}

- (NSTemporaryObjectID)managedObjectIDFromUTF8String:(uint64_t)string length:(void *)length error:
{
  v36[256] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  if (string < 14 || __s1[string] || strncmp(__s1, "x-coredata://", 0xDuLL))
  {
    if (length)
    {
      v8 = 0;
      *length = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
      return v8;
    }

    return 0;
  }

  v10 = 134060;
  v11 = _PFStackAllocatorCreate(v36, 2048);
  v12 = *MEMORY[0x1E695E498];
  v13 = CFStringCreateWithBytesNoCopy(v11, __s1 + 13, string - 13, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  if (__s1[13] == 47)
  {
    v14 = 0;
    v15 = 14;
  }

  else
  {
    v16 = strchr(__s1 + 13, 47);
    if (v16)
    {
      v17 = v16 - __s1;
      v37.length = v16 - __s1 - 13;
      v37.location = 0;
      v14 = CFStringCreateWithSubstring(v11, v13, v37);
      v15 = v17 + 1;
      if (v14)
      {
        v18 = [(NSPersistentStoreCoordinator *)self _persistentStoreForIdentifier:v14];
        v19 = v14;
        v14 = v18;
        CFRelease(v19);
        if (!v14)
        {
          if (!length)
          {
            v8 = 0;
            goto LABEL_31;
          }

          v10 = 134000;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v14 = 0;
      v15 = 13;
    }
  }

  if (v15 >= string)
  {
    v8 = 0;
  }

  else
  {
    v20 = &__s1[v15];
    v21 = strchr(&__s1[v15], 47);
    if (!v21)
    {
      goto LABEL_27;
    }

    v35 = v14;
    v22 = v21 - v20;
    v38.location = v15 - 13;
    v38.length = v21 - v20;
    v23 = CFStringCreateWithSubstring(v11, v13, v38);
    if (!v23)
    {
      goto LABEL_27;
    }

    v24 = v23;
    v34 = v22;
    v25 = [objc_msgSend(objc_msgSend(self "managedObjectModel")];
    if (v25)
    {
      v26 = v25;
      CFRelease(v24);
      v27 = v26;
      v22 = v34;
    }

    else
    {
      persistentStoreCoordinator = [self persistentStoreCoordinator];
      if (persistentStoreCoordinator)
      {
        persistentStoreCoordinator = persistentStoreCoordinator[12];
      }

      v27 = [(_PFModelMap *)persistentStoreCoordinator ancillaryEntityWithName:v24];
      CFRelease(v24);
      if (!v27)
      {
        goto LABEL_27;
      }
    }

    v29 = v22 + 2;
    if (v22 + 2 > string)
    {
LABEL_27:
      v8 = 0;
      v10 = 134060;
      goto LABEL_28;
    }

    v30 = v20[v22 + 1];
    v31 = &v20[v29];
    v32 = (__s1 - &v20[v29]);
    if (v30 == 116)
    {
      v33 = CFStringCreateWithBytesNoCopy(v11, &v20[v29], &v32[string], 0x8000100u, 0, v12);
      v8 = [[NSTemporaryObjectID alloc] initWithEntity:v27 andUUIDString:v33];
      if (v33)
      {
        CFRelease(v33);
      }

      v10 = 134060;
      if (v35)
      {
        [(NSTemporaryObjectID *)v8 _setPersistentStore:?];
      }
    }

    else
    {
      v8 = 0;
      v10 = 134060;
      if (v35 && v30 == 112)
      {
        v8 = [-[__CFString objectIDFactoryForEntity:](v35 objectIDFactoryForEntity:{v27), "managedObjectIDFromUTF8String:length:", v31, &v32[string]}];
      }
    }
  }

LABEL_28:
  if (length && !v8)
  {
LABEL_30:
    v8 = 0;
    *length = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v10 userInfo:0];
  }

LABEL_31:
  if (v36[3] && v13)
  {
    CFRelease(v13);
  }

  return v8;
}

- (id)_lastOpenError
{
  if (result)
  {
    v1 = result[9];

    return v1;
  }

  return result;
}

- (void)_persistentStoreForIdentifier:(uint64_t)identifier
{
  if (!identifier)
  {
    return 0;
  }

  _retainedPersistentStores = [(NSPersistentStoreCoordinator *)identifier _retainedPersistentStores];
  v4 = [_retainedPersistentStores count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = [_retainedPersistentStores objectAtIndex:v6];
      if ([objc_msgSend(v7 "identifier")])
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  return v7;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__19;
  v33 = __Block_byref_object_dispose__19;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__19;
  v27 = __Block_byref_object_dispose__19;
  v28 = 0;
  if (context && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(context, a2);
  }

  persistentStore = [d persistentStore];
  v22 = 0;
  if (context)
  {
    v10 = *(context + 20);
  }

  else
  {
    v10 = 0;
  }

  v11 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v11 != [context _queryGenerationToken])
  {
    goto LABEL_7;
  }

  v16 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v10];
  if (!v16)
  {
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v22 = v18;
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v17 = [context _setQueryGenerationFromToken:v16 error:&v22];

  if ((v17 & 1) == 0)
  {
    v18 = v22;
    if (!v22)
    {
LABEL_15:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v37 = 1024;
        v38 = 4340;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v37 = 1024;
        v38 = 4340;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_22;
    }

LABEL_20:
    if (error)
    {
      v14 = 0;
      *error = v18;
      goto LABEL_11;
    }

LABEL_22:
    v14 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __95__NSPersistentStoreCoordinator__NSInternalMethods__newValuesForObjectWithID_withContext_error___block_invoke;
  v21[3] = &unk_1E6EC2D28;
  v21[4] = self;
  v21[5] = context;
  v21[6] = d;
  v21[7] = &v29;
  v21[8] = &v23;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v21 toStore:persistentStore];
  v12 = v24[5];
  if (error)
  {
    v13 = v24[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v30[5];
LABEL_11:
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  return v14;
}

id __95__NSPersistentStoreCoordinator__NSInternalMethods__newValuesForObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v6[0] = @"Reason";
    v6[1] = @"store";
    v7[0] = @"Store is not valid for this context's generation";
    v7[1] = a2;
    v6[2] = @"context";
    v7[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 64) + 8) + 40) = result;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 40) = [a2 newValuesForObjectWithID:*(a1 + 48) withContext:*(a1 + 40) error:*(*(a1 + 64) + 8) + 40];
    return *(*(*(a1 + 64) + 8) + 40);
  }

  return result;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy__19;
  v35 = __Block_byref_object_dispose__19;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  if (context && _PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(context, a2);
  }

  persistentStore = [d persistentStore];
  v24 = 0;
  if (context)
  {
    v12 = *(context + 20);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v13 != [context _queryGenerationToken])
  {
    goto LABEL_7;
  }

  v18 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v12];
  if (!v18)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v24 = v20;
    if (!v20)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v19 = [context _setQueryGenerationFromToken:v18 error:&v24];

  if ((v19 & 1) == 0)
  {
    v20 = v24;
    if (!v24)
    {
LABEL_15:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v39 = 1024;
        v40 = 4398;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v39 = 1024;
        v40 = 4398;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_22;
    }

LABEL_20:
    if (error)
    {
      v16 = 0;
      *error = v20;
      goto LABEL_11;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_11;
  }

LABEL_7:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __110__NSPersistentStoreCoordinator__NSInternalMethods__newValueForRelationship_forObjectWithID_withContext_error___block_invoke;
  v23[3] = &unk_1E6EC2D50;
  v23[4] = self;
  v23[5] = context;
  v23[6] = relationship;
  v23[7] = d;
  v23[8] = &v31;
  v23[9] = &v25;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v23 toStore:persistentStore];
  v14 = v26[5];
  if (error)
  {
    v15 = v26[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v32[5];
LABEL_11:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  return v16;
}

id __110__NSPersistentStoreCoordinator__NSInternalMethods__newValueForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v6[0] = @"Reason";
    v6[1] = @"store";
    v7[0] = @"Store is not valid for this context's generation";
    v7[1] = a2;
    v6[2] = @"context";
    v7[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  else
  {
    if ([*(a1 + 48) isTransient])
    {
      *(*(*(a1 + 64) + 8) + 40) = NSArray_EmptyArray;
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 40) = [a2 newValueForRelationship:*(a1 + 48) forObjectWithID:*(a1 + 56) withContext:*(a1 + 40) error:*(*(a1 + 72) + 8) + 40];
    }

    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3052000000;
  v34 = __Block_byref_object_copy__19;
  v35 = __Block_byref_object_dispose__19;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  persistentStore = [d persistentStore];
  v24 = 0;
  if (context)
  {
    v12 = *(context + 20);
  }

  else
  {
    v12 = 0;
  }

  v13 = +[NSQueryGenerationToken currentQueryGenerationToken];
  if (v13 != [context _queryGenerationToken])
  {
    goto LABEL_4;
  }

  v18 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v12];
  if (!v18)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
    v24 = v20;
    if (!v20)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v19 = [context _setQueryGenerationFromToken:v18 error:&v24];

  if ((v19 & 1) == 0)
  {
    v20 = v24;
    if (!v24)
    {
LABEL_12:
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v39 = 1024;
        v40 = 4456;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v22 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v38 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v39 = 1024;
        v40 = 4456;
        _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (error)
    {
      v16 = 0;
      *error = v20;
      goto LABEL_8;
    }

LABEL_19:
    v16 = 0;
    goto LABEL_8;
  }

LABEL_4:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __136__NSPersistentStoreCoordinator__NSInternalMethods___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke;
  v23[3] = &unk_1E6EC2D50;
  v23[4] = self;
  v23[5] = context;
  v23[6] = relationship;
  v23[7] = d;
  v23[8] = &v31;
  v23[9] = &v25;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v23 toStore:persistentStore];
  v14 = v26[5];
  if (error)
  {
    v15 = v26[5];
    if (v15)
    {
      *error = v15;
    }
  }

  v16 = v32[5];
LABEL_8:
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
  return v16;
}

id __136__NSPersistentStoreCoordinator__NSInternalMethods___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1, void *a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (a2 && ![(NSPersistentStoreCoordinator *)*(a1 + 32) _canRouteToStore:a2 forContext:*(a1 + 40)])
  {
    v6[0] = @"Reason";
    v6[1] = @"store";
    v7[0] = @"Store is not valid for this context's generation";
    v7[1] = a2;
    v6[2] = @"context";
    v7[2] = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v5];
    *(*(*(a1 + 72) + 8) + 40) = result;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [a2 _newOrderedRelationshipInformationForRelationship:*(a1 + 48) forObjectWithID:*(a1 + 56) withContext:*(a1 + 40) error:*(*(a1 + 72) + 8) + 40];
    return *(*(*(a1 + 72) + 8) + 40);
  }

  return result;
}

- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__19;
  v17 = __Block_byref_object_dispose__19;
  v18 = 0;
  persistentStore = [destination persistentStore];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__NSPersistentStoreCoordinator__NSInternalMethods___allOrderKeysForDestination_inRelationship_error___block_invoke;
  v12[3] = &unk_1E6EC2D78;
  v12[4] = destination;
  v12[5] = relationship;
  v12[6] = &v19;
  v12[7] = &v13;
  [(NSPersistentStoreCoordinator *)self _routeLightweightBlock:v12 toStore:persistentStore];
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v7 = [ds count];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke;
  v8[3] = &unk_1E6EC2DA0;
  v8[5] = generation;
  v8[6] = v7;
  v8[4] = ds;
  [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v8];
}

void __109__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) == 1)
  {
    v4 = [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "persistentStore"}];
    if (v4)
    {
      v5 = v4;
      if ([a2 indexOfObjectIdenticalTo:v4] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [v5 supportsGenerationalQuerying];
        v7 = *(a1 + 32);
        if (v6)
        {
          v8 = *(a1 + 40);

          [v5 managedObjectContextDidRegisterObjectsWithIDs:v7 generation:v8];
        }

        else
        {

          [v5 managedObjectContextDidRegisterObjectsWithIDs:v7];
        }
      }
    }
  }

  else
  {
    valueCallBacks.version = 0;
    valueCallBacks.retain = 0;
    *&valueCallBacks.release = *(MEMORY[0x1E695E9E8] + 16);
    valueCallBacks.equal = 0;
    allocator = *MEMORY[0x1E695E480];
    v9 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = a1;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 persistentStore];
          if (v16)
          {
            v17 = v16;
            if ([a2 indexOfObjectIdenticalTo:v16] != 0x7FFFFFFFFFFFFFFFLL)
            {
              Value = CFDictionaryGetValue(v9, v17);
              if (!Value)
              {
                Value = CFArrayCreateMutable(allocator, 0, 0);
                CFDictionarySetValue(v9, v17, Value);
              }

              CFArrayAppendValue(Value, v15);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v12);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          v24 = CFDictionaryGetValue(v9, v23);
          if ([v23 supportsGenerationalQuerying])
          {
            [v23 managedObjectContextDidRegisterObjectsWithIDs:v24 generation:*(v25 + 40)];
          }

          else
          {
            [v23 managedObjectContextDidRegisterObjectsWithIDs:v24];
          }
        }

        v20 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v20);
    }

    CFRelease(v9);
  }
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v7 = [ds count];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3052000000;
  v11[3] = __Block_byref_object_copy__19;
  v11[4] = __Block_byref_object_dispose__19;
  v11[5] = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke;
  v10[3] = &unk_1E6EC2DC8;
  v10[6] = v11;
  v10[7] = v7;
  v10[4] = ds;
  v10[5] = generation;
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    v9 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    *v9 = _Block_copy(v10);
    v9[1] = CFRetain(self);
    v9[2] = 8199;
    v9[3] = 0;
    v9[4] = 0;
    dispatch_async_f(dispatchQueue, v9, internalBlockToNSPersistentStoreCoordinatorPerform);
  }

  _Block_object_dispose(v11, 8);
}

void __111__NSPersistentStoreCoordinator__NSInternalMethods__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) objectAtIndex:{0), "persistentStore"}];
    if (v2)
    {
      v3 = v2;
      if ([*(*(*(a1 + 48) + 8) + 40) indexOfObjectIdenticalTo:v2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [v3 supportsGenerationalQuerying];
        v5 = *(a1 + 32);
        if (v4)
        {
          [v3 managedObjectContextDidUnregisterObjectsWithIDs:v5 generation:*(a1 + 40)];
        }

        else
        {
          [v3 managedObjectContextDidUnregisterObjectsWithIDs:v5];
        }
      }
    }

    v22 = *(*(*(a1 + 48) + 8) + 40);
  }

  else
  {
    valueCallBacks.version = 0;
    valueCallBacks.retain = 0;
    *&valueCallBacks.release = *(MEMORY[0x1E695E9E8] + 16);
    valueCallBacks.equal = 0;
    allocator = *MEMORY[0x1E695E480];
    v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, &valueCallBacks);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v12 persistentStore];
          if (v13)
          {
            v14 = v13;
            if ([*(*(*(a1 + 48) + 8) + 40) indexOfObjectIdenticalTo:v13] != 0x7FFFFFFFFFFFFFFFLL)
            {
              Value = CFDictionaryGetValue(v6, v14);
              if (!Value)
              {
                Value = CFArrayCreateMutable(allocator, 0, 0);
                CFDictionarySetValue(v6, v14, Value);
              }

              CFArrayAppendValue(Value, v12);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [(__CFDictionary *)v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(*(&v24 + 1) + 8 * j);
          v21 = CFDictionaryGetValue(v6, v20);
          if ([v20 supportsGenerationalQuerying])
          {
            [v20 managedObjectContextDidUnregisterObjectsWithIDs:v21 generation:*(a1 + 40)];
          }

          else
          {
            [v20 managedObjectContextDidUnregisterObjectsWithIDs:v21];
          }
        }

        v17 = [(__CFDictionary *)v6 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v17);
    }

    CFRelease(v6);
  }
}

- (BOOL)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  if (![objects count])
  {
    v15 = 1;
    return v15 & 1;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = [objects countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *v38;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v38 != v9)
      {
        objc_enumerationMutation(objects);
      }

      managedObjectContext = [*(*(&v37 + 1) + 8 * i) managedObjectContext];
      v12 = managedObjectContext;
      if (managedObjectContext)
      {
        if (_PF_Threading_Debugging_level)
        {
          _PFAssertSafeMultiThreadedAccess_impl(managedObjectContext, a2);
        }

        v31 = 0;
        v32 = &v31;
        v33 = 0x3052000000;
        v34 = __Block_byref_object_copy__19;
        v35 = __Block_byref_object_dispose__19;
        v36 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v30 = 0;
        v16 = [_PFBackgroundRuntimeVoucher _beginPowerAssertionNamed:@"CoreData: Executing obtain objectID request"];
        v26 = 0;
        v17 = v12[20];
        v18 = +[NSQueryGenerationToken currentQueryGenerationToken];
        if (v18 != [v12 _queryGenerationToken])
        {
          goto LABEL_22;
        }

        v19 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:v17];
        if (v19)
        {
          v20 = [v12 _setQueryGenerationFromToken:v19 error:&v26];

          if (v20)
          {
LABEL_22:
            v25[0] = 0;
            v25[1] = v25;
            v25[2] = 0x3052000000;
            v25[3] = __Block_byref_object_copy__19;
            v25[4] = __Block_byref_object_dispose__19;
            v25[5] = [MEMORY[0x1E695DF70] array];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __87__NSPersistentStoreCoordinator__NSInternalMethods__obtainPermanentIDsForObjects_error___block_invoke;
            v24[3] = &unk_1E6EC2DF0;
            v24[4] = v17;
            v24[5] = self;
            v24[6] = objects;
            v24[7] = v12;
            v24[8] = &v31;
            v24[9] = v25;
            v24[10] = &v27;
            [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v24];
            _Block_object_dispose(v25, 8);
            [_PFBackgroundRuntimeVoucher _endPowerAssertionWithVoucher:v16];
            v21 = v32[5];
            if (error)
            {
              v22 = v32[5];
              if (v22)
              {
                *error = v22;
              }
            }

            v15 = *(v28 + 24);
            _Block_object_dispose(&v27, 8);
            _Block_object_dispose(&v31, 8);
            return v15 & 1;
          }
        }

        else
        {
          v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134502 userInfo:0];
        }

        [v12 _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
        goto LABEL_22;
      }
    }

    v8 = [objects countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:
  if (error)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObject:objects forKey:@"NSManagedObjectContext is nil for objects passed to obtainPermanentIDsForObjects"];
    v15 = 0;
    *error = [v13 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id __87__NSPersistentStoreCoordinator__NSInternalMethods__obtainPermanentIDsForObjects_error___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) count])
  {
    v35 = objc_alloc_init(MEMORY[0x1E696AAC8]);
LABEL_15:
    v37 = a2;
    v38 = 0;
    goto LABEL_16;
  }

  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = [a2 countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v3)
  {
    v4 = *v53;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v53 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v52 + 1) + 8 * i);
        if ([*(a1 + 32) containsObject:{objc_msgSend(v6, "identifier")}])
        {
          [v38 addObject:v6];
        }
      }

      v3 = [a2 countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v3);
  }

  v35 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!v38)
  {
    goto LABEL_15;
  }

  v37 = v38;
  if (![v38 count])
  {
LABEL_46:
    v26 = [_NSCoreDataException exceptionWithName:134020 code:@"Can't resolve how to assign objects to stores; Coordinator does not have any stores" reason:0 userInfo:?];
    objc_exception_throw(v26);
  }

LABEL_16:
  if (![a2 count])
  {
    goto LABEL_46;
  }

  v7 = 0;
  v8 = 1;
  do
  {
    [(NSPersistentStoreCoordinator *)*(a1 + 40) _doPreSaveAssignmentsForObjects:v37 intoStores:?];
    if (v7)
    {
    }

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v10)
    {
      v11 = *v49;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v48 + 1) + 8 * j);
          v14 = [v13 objectID];
          if ([v14 isTemporaryID])
          {
            v15 = [v14 persistentStore];
            if (v15)
            {
              v16 = [v7 objectForKey:v15];
              if (!v16)
              {
                v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v7 setObject:v16 forKey:v15];
              }

              [v16 addObject:v13];
            }

            else
            {
              v8 = 0;
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v48 objects:v58 count:16];
      }

      while (v10);
    }

    v17 = v8;
    v8 = 0;
  }

  while ((v17 & 1) == 0);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v18)
  {
    v19 = *v45;
LABEL_36:
    v20 = 0;
    while (1)
    {
      if (*v45 != v19)
      {
        objc_enumerationMutation(v7);
      }

      v21 = *(*(&v44 + 1) + 8 * v20);
      v22 = [v7 objectForKey:v21];
      v23 = [v21 obtainPermanentIDsForObjects:v22 error:*(*(a1 + 64) + 8) + 40];
      v24 = v23;
      if (!v23)
      {
        break;
      }

      if ([v23 count])
      {
        v25 = [(NSManagedObjectContext *)*(a1 + 56) _changeIDsForManagedObjects:v22 toIDs:v24];
        if (v25)
        {
          [*(*(*(a1 + 72) + 8) + 40) addObject:v25];
        }
      }

      if (v18 == ++v20)
      {
        v18 = [v7 countByEnumeratingWithState:&v44 objects:v57 count:16];
        if (v18)
        {
          goto LABEL_36;
        }

        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_45:
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v27 = *(*(*(a1 + 64) + 8) + 40);
  if ([*(*(*(a1 + 72) + 8) + 40) count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = *(*(*(a1 + 72) + 8) + 40);
    v29 = [v28 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (v29)
    {
      v30 = *v41;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v40 + 1) + 8 * k);
          v33 = objc_autoreleasePoolPush();
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          objc_autoreleasePoolPop(v33);
        }

        v29 = [v28 countByEnumeratingWithState:&v40 objects:v56 count:16];
      }

      while (v29);
    }

    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  }

  [v36 drain];
  return 0;
}

- (uint64_t)_canSaveGraphRootedAtObject:(void *)value intoStore:(void *)store withPreviouslyChecked:(CFSetRef)theSet withAcceptableEntities:(const __CFSet *)entities
{
  entitiesCopy = entities;
  v58 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([value managedObjectContext], sel__canSaveGraphRootedAtObject_intoStore_withPreviouslyChecked_withAcceptableEntities_);
    if (!value)
    {
      return 1;
    }
  }

  else if (!value)
  {
    return 1;
  }

  if (CFSetContainsValue(theSet, value))
  {
    return 1;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  CFSetAddValue(Mutable, value);
  v48 = theSet;
  do
  {
    Count = CFSetGetCount(Mutable);
    HIDWORD(v43) = Count == 0;
    if (!Count)
    {
      break;
    }

    v10 = Count;
    v11 = MEMORY[0x1EEE9AC00](Count);
    v13 = &v43 - v12;
    v44 = v14;
    if (v11 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v13, 8 * v11);
    }

    CFSetGetValues(Mutable, v13);
    CFSetRemoveAllValues(Mutable);
    v15 = 0;
    v16 = 0;
    v47 = v10;
    v46 = v13;
    while (1)
    {
      v49 = v16;
      v52 = *&v13[8 * v15];
      if (!CFSetContainsValue(theSet, v52))
      {
        break;
      }

LABEL_39:
      v15 = (v49 + 1);
      v16 = v49 + 1;
      v41 = v47;
      theSet = v48;
      v13 = v46;
      if (v47 <= v15)
      {
        v42 = 1;
        goto LABEL_43;
      }
    }

    v17 = v52;
    v18 = [objc_msgSend(v52 "objectID")];
    entity = [v17 entity];
    if (v18)
    {
      v20 = v18 == store;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v42 = 0;
      theSet = v48;
      goto LABEL_42;
    }

    v21 = entity;
    v22 = CFSetContainsValue(entitiesCopy, entity);
    theSet = v48;
    if (v22)
    {
      v23 = v52;
      CFSetAddValue(v48, v52);
      if (([v23 isFault] & 1) == 0)
      {
        v24 = v21[14];
        v25 = *(v21[13] + 40);
        v51 = _kvcPropertysPrimitiveGetters(v21);
        v26 = v24[12];
        v27 = v24[13];
        if (v26 < v27 + v26)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(v52, v26, *(v25 + 8 * v26), *(v51 + 8 * v26));
            if (v28)
            {
              v29 = v28;
              objectID = [v28 objectID];
              if (([objectID isTemporaryID] & 1) != 0 || objc_msgSend(objectID, "persistentStore") != store)
              {
                CFSetAddValue(Mutable, v29);
              }
            }

            ++v26;
            --v27;
          }

          while (v27);
        }

        v31 = v24[18];
        v50 = v24[19] + v31;
        if (v31 < v50)
        {
          do
          {
            v32 = v25;
            _PF_Handler_Primitive_GetProperty(v52, v31, *(v25 + 8 * v31), *(v51 + 8 * v31));
            v34 = v33;
            if (([v33 isFault] & 1) == 0)
            {
              if ([v34 count])
              {
                v55 = 0u;
                v56 = 0u;
                v54 = 0u;
                v53 = 0u;
                v35 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v54;
                  do
                  {
                    for (i = 0; i != v36; ++i)
                    {
                      if (*v54 != v37)
                      {
                        objc_enumerationMutation(v34);
                      }

                      v39 = *(*(&v53 + 1) + 8 * i);
                      objectID2 = [v39 objectID];
                      if (([objectID2 isTemporaryID] & 1) != 0 || objc_msgSend(objectID2, "persistentStore") != store)
                      {
                        CFSetAddValue(Mutable, v39);
                      }
                    }

                    v36 = [v34 countByEnumeratingWithState:&v53 objects:v57 count:16];
                  }

                  while (v36);
                }
              }
            }

            ++v31;
            v25 = v32;
          }

          while (v31 != v50);
        }
      }

      goto LABEL_39;
    }

    v42 = 0;
LABEL_42:
    v41 = v47;
    v13 = v46;
LABEL_43:
    if (v41 >= 0x201)
    {
      NSZoneFree(0, v13);
    }
  }

  while ((v42 & 1) != 0);
  CFRelease(Mutable);
  return HIDWORD(v43);
}

- (NSMergeConflict)_newConflictRecordForObject:(unint64_t)object andOriginalRow:(void *)row withContext:
{
  if (result)
  {
    objectCopy = object;
    v5 = a2;
    if (object && [a2 managedObjectContext])
    {
      entity = [v5 entity];
      objectID = [v5 objectID];
      persistentStore = [objectID persistentStore];
      v38 = persistentStore;
      if (persistentStore)
      {
        v37 = *(persistentStore + 48);
      }

      else
      {
        v37 = 0;
      }

      v8 = [objc_msgSend(entity "propertiesByName")];
      v9 = [NSKnownKeysDictionary alloc];
      if (entity)
      {
        v10 = entity[13];
      }

      else
      {
        v10 = 0;
      }

      v11 = [(NSKnownKeysDictionary *)v9 initWithSearchStrategy:v10];
      values = [(NSKnownKeysDictionary *)v11 values];
      knownKeyValuesPointer = [objectCopy knownKeyValuesPointer];
      keys = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)v11 mapping] keys];
      null = [MEMORY[0x1E695DFB0] null];
      v15 = entity[14];
      v16 = v15[6];
      v17 = v15[7];
      v36 = v11;
      if (v16 < v17 + v16)
      {
        v33 = v8;
        v18 = keys + 8 * v16;
        v19 = (values + 8 * v16);
        v20 = (knownKeyValuesPointer + 8 * v16);
        do
        {
          if (knownKeyValuesPointer)
          {
            v21 = *v20;
          }

          else
          {
            v21 = objc_msgSend_valueForKey_(objectCopy);
          }

          v22 = null;
          if (v21)
          {
            v22 = v21;
          }

          *v19++ = v22;
          v18 += 8;
          ++v20;
          --v17;
        }

        while (v17);
        v15 = entity[14];
        v11 = v36;
        v8 = v33;
      }

      v23 = v15[12];
      v24 = v15[13];
      if (v23 < v24 + v23)
      {
        v34 = v5;
        v25 = (v8 + 8 * v23);
        v26 = (values + 8 * v23);
        v27 = (knownKeyValuesPointer + 8 * v23);
        do
        {
          if (knownKeyValuesPointer)
          {
            v28 = *v27;
          }

          else
          {
            v28 = [v38 newValueForRelationship:*v25 forObjectWithID:objectID withContext:row error:0];
          }

          v29 = null;
          if (v28)
          {
            v30 = z9dsptsiQ80etb9782fsrs98bfdle88 == 1 ? v28 : [NSManagedObjectContext _retainedObjectWithID:row optionalHandler:v28 withInlineStorage:v37];
            v29 = v30;
            if (!knownKeyValuesPointer)
            {
            }
          }

          *v26++ = v29;
          ++v25;
          ++v27;
          --v24;
        }

        while (v24);
        v5 = v34;
        v11 = v36;
      }
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    v31 = [NSMergeConflict alloc];
    if (objectCopy)
    {
      objectCopy = [objectCopy _versionNumber];
    }

    v32 = -[NSMergeConflict initWithSource:newVersion:oldVersion:cachedSnapshot:persistedSnapshot:](v31, "initWithSource:newVersion:oldVersion:cachedSnapshot:persistedSnapshot:", v5, objectCopy, [v5 _versionReference], v11, 0);

    return v32;
  }

  return result;
}

- (NSMergeConflict)_conflictsWithRowCacheForObject:(void *)object withContext:(void *)context andStore:
{
  v26[2] = *MEMORY[0x1E69E9840];
  objectID = [a2 objectID];
  _versionReference = [a2 _versionReference];
  if ([a2 isFault])
  {
    [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a2 withContext:object];
  }

  v23 = 0;
  v10 = [context newValuesForObjectWithID:objectID withContext:object error:&v23];
  v11 = v10;
  if (v10)
  {
    if (_versionReference >= [v10 _versionNumber])
    {
      v16 = 0;
      goto LABEL_12;
    }

    selfCopy2 = self;
    v13 = a2;
    v14 = v11;
  }

  else
  {
    if (v23)
    {
      domain = [v23 domain];
      if (![domain isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v23, "code") != 133000)
      {
        v19 = *MEMORY[0x1E695D940];
        code = [v23 code];
        v21 = *MEMORY[0x1E696AA08];
        v26[0] = v23;
        v25[0] = v21;
        v25[1] = @"NSAffectedObjectsErrorKey";
        v24 = objectID;
        v26[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        v22 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v19, code, @"An error occurred while trying to fetch a row for conflict detection.", [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2]);
        -[_NSCoreDataException _setDomain:](v22, [v23 domain]);
        objc_exception_throw(v22);
      }
    }

    selfCopy2 = self;
    v13 = a2;
    v14 = 0;
  }

  v16 = [(NSPersistentStoreCoordinator *)selfCopy2 _newConflictRecordForObject:v13 andOriginalRow:v14 withContext:object];
  v17 = v16;
LABEL_12:

  return v16;
}

- (char)_storeClassForStoreWithType:(char *)result URL:(uint64_t)l options:(void *)options
{
  if (result)
  {
    v4 = result;
    result = [NSPersistentStoreCoordinator _storeClassForStoreType:l];
    if (!result && (![v4 persistentStoreForURL:options] || (result = objc_opt_class()) == 0))
    {

      return [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:options];
    }
  }

  return result;
}

- (void)_postStoreRemoteChangeNotificationsForStore:(uint64_t)store andState:
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    identifier = [a2 identifier];
    v8 = [a2 URL];
    v9 = objc_alloc(MEMORY[0x1E695DF90]);
    v23[0] = identifier;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v22 = @"NSStoreUUID";
    v11 = [v9 initWithObjects:v10 forKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v22, 1)}];
    if (!identifier)
    {
      v13 = 0;
LABEL_22:

      return;
    }

    if (store)
    {
      v12 = [_NSPersistentHistoryToken alloc];
      v13 = -[_NSPersistentHistoryToken initWithTransactionNumber:andStoreID:](v12, "initWithTransactionNumber:andStoreID:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:store], identifier);
      [v11 setObject:v13 forKey:@"historyToken"];
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = 0;
      if (!v8)
      {
LABEL_9:
        if (+[NSSQLCore debugDefault]>= 1)
        {
          v14 = objc_autoreleasePoolPush();
          _pflogInitialize(9);
          if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v19 = identifier;
                v20 = 2112;
                v21 = v11;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Remote Change Notification - posting for store  %@ with userInfo %@\n", buf, 0x16u);
              }
            }

            else
            {
              v16 = _PFLogGetLogStream(9);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v19 = identifier;
                v20 = 2112;
                v21 = v11;
                _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_INFO, "CoreData: debug: Remote Change Notification - posting for store  %@ with userInfo %@\n", buf, 0x16u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v17 = 1;
          }

          else
          {
            v17 = 9;
          }

          _NSCoreDataLog_console(v17, "Remote Change Notification - posting for store  %@ with userInfo %@", identifier, v11);
          objc_autoreleasePoolPop(v14);
        }

        [defaultCenter postNotificationName:@"NSPersistentStoreRemoteChangeNotification" object:self userInfo:v11];
        goto LABEL_22;
      }
    }

    [v11 setObject:v8 forKey:@"storeURL"];
    goto LABEL_9;
  }
}

- (void)_copyMetadataFromStore:(void *)store toStore:(uint64_t)toStore migrationManager:
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    metadata = [a2 metadata];
    metadata2 = [store metadata];
    v8 = [metadata mutableCopyWithZone:0];
    v9 = v8;
    if (!toStore)
    {
      [v8 removeObjectForKey:@"NSStoreUUID"];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"NSStoreModelVersionHashesVersion", @"NSStoreModelVersionHashes", @"NSStoreModelVersionIdentifiers", @"NSPersistenceFrameworkVersion", 0, 0}];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          v16 = [metadata2 objectForKey:v15];
          [v9 removeObjectForKey:v15];
          if (v16)
          {
            [v9 setObject:v16 forKey:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [store setMetadata:v9];
  }
}

- (id)currentQueryGenerationTokenFromStores:(id)stores
{
  v3 = [(NSPersistentStoreCoordinator *)self _retainedCurrentQueryGeneration:stores];

  return v3;
}

- (BOOL)_replacePersistentStoreAtURL:(id)l destinationOptions:(id)options withPersistentStoreFromURL:(id)rL sourceOptions:(id)sourceOptions storeType:(id)type error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"Invalid destination store URL: nil";
    goto LABEL_14;
  }

  if (!rL)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"Invalid source store URL: nil";
LABEL_14:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:{0, sourceOptions, type, error}]);
  }

  if ([rL isEqual:?])
  {
    v15 = 1;
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = __Block_byref_object_copy__19;
    v33 = __Block_byref_object_dispose__19;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v16 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:l];
    if (v16)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v35 = @"removed";
      v36[0] = v16;
      [defaultCenter postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v36, &v35, 1)}];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __182__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_storeType_error___block_invoke;
    v24[3] = &unk_1E6EC2E18;
    v24[4] = self;
    v24[5] = type;
    v24[6] = rL;
    v24[7] = sourceOptions;
    v24[8] = l;
    v24[9] = options;
    v24[10] = &v29;
    v24[11] = &v25;
    v24[12] = error;
    _perform_0(self, v24);
    v18 = v30[5];
    if (error)
    {
      v19 = v30[5];
      if (v19)
      {
        *error = v19;
      }
    }

    v15 = *(v26 + 24);
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v29, 8);
  }

  return v15 & 1;
}

id __182__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___replacePersistentStoreAtURL_destinationOptions_withPersistentStoreFromURL_sourceOptions_storeType_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  if (!v2)
  {
    v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 64) options:?];
  }

  v3 = [*(a1 + 32) persistentStoreForURL:*(a1 + 64)];
  if (v3)
  {
    v4 = objc_opt_class();
    if (([(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v3 error:(*(*(a1 + 80) + 8) + 40)]& 1) == 0)
    {
      *(*(*(a1 + 88) + 8) + 24) = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) persistentStoreForURL:*(a1 + 48)];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [*(a1 + 56) objectForKey:@"NSPersistentStoreUnlinkDestroyOption"];
    if (v7)
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 0;
    }

    if ([objc_msgSend(v5 "type")])
    {
      [(NSSQLCore *)v5 _disconnectAllConnections];
    }

    if (v4 && v6 && v4 != v6)
    {
      v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v4, v6), 0}];
      objc_exception_throw(v18);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v2)
  {
    *(*(*(a1 + 88) + 8) + 24) = [v2 _replacePersistentStoreAtURL:*(a1 + 64) destinationOptions:*(a1 + 72) withPersistentStoreFromURL:*(a1 + 48) sourceOptions:*(a1 + 56) error:*(*(a1 + 80) + 8) + 40];
  }

  if (*(*(*(a1 + 88) + 8) + 24) & v8)
  {
    *(*(*(a1 + 88) + 8) + 24) = [*(a1 + 32) setURL:*(a1 + 64) forPersistentStore:v5];
    if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = MEMORY[0x1E695DF20];
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(a1 + 48), *(a1 + 64), 0}];
      v12 = [v10 dictionaryWithObjectsAndKeys:{v11, *MEMORY[0x1E696A998], 0}];
      *(*(*(a1 + 80) + 8) + 40) = [v9 errorWithDomain:*MEMORY[0x1E696A250] code:134080 userInfo:v12];
    }
  }

LABEL_23:
  result = *(*(*(a1 + 80) + 8) + 40);
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0 && *(a1 + 96) && !*(*(*(a1 + 80) + 8) + 40))
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E695DF20];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(a1 + 48), *(a1 + 64), 0}];
    v17 = [v15 dictionaryWithObjectsAndKeys:{v16, *MEMORY[0x1E696A998], 0}];
    result = [v14 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v17];
    *(*(*(a1 + 80) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)_destroyPersistentStoreAtURL:(id)l withType:(id)type options:(id)options error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:{0, error}]);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__19;
  v26 = __Block_byref_object_dispose__19;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:?];
  if (v11)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = @"removed";
    v29[0] = v11;
    [defaultCenter postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v29, &v28, 1)}];
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __129__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___destroyPersistentStoreAtURL_withType_options_error___block_invoke;
  v17[3] = &unk_1E6EC2E40;
  v17[4] = self;
  v17[5] = type;
  v17[6] = l;
  v17[7] = options;
  v17[8] = &v22;
  v17[9] = &v18;
  v17[10] = error;
  _perform_0(self, v17);
  v13 = v23[5];
  if (error)
  {
    v14 = v23[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v15;
}

id __129__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___destroyPersistentStoreAtURL_withType_options_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [*(a1 + 32) persistentStoreForURL:*(a1 + 48)];
  if (v7)
  {
    v8 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v7 error:(*(*(a1 + 64) + 8) + 40)]^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(*(a1 + 64) + 8) + 40);
  [v6 drain];
  v10 = *(*(*(a1 + 64) + 8) + 40);
  if ((v8 & 1) == 0)
  {
    if (v2)
    {
      *(*(*(a1 + 72) + 8) + 24) = [v2 _destroyPersistentStoreAtURL:*(a1 + 48) options:*(a1 + 56) error:*(*(a1 + 64) + 8) + 40];
    }

    else if (*(a1 + 80))
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 48), *MEMORY[0x1E696A998], 0}];
      *(*(*(a1 + 64) + 8) + 40) = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v12];
    }
  }

  return *(*(*(a1 + 64) + 8) + 40);
}

- (BOOL)_rekeyPersistentStoreAtURL:(id)l type:(id)type options:(id)options withKey:(id)key error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (!l)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL: nil" userInfo:{0, key, error}]);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__19;
  v36 = __Block_byref_object_dispose__19;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__19;
  v26 = __Block_byref_object_dispose__19;
  v27 = [(NSPersistentStoreCoordinator *)self persistentStoreForURL:?];
  if (v23[5])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = v23[5];
    v42 = @"removed";
    v43[0] = v14;
    [defaultCenter postNotificationName:@"_NSPersistentStoreCoordinatorPrivateWillRemoveStoreNotification" object:self userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v43, &v42, 1)}];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __131__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___rekeyPersistentStoreAtURL_type_options_withKey_error___block_invoke;
  v21[3] = &unk_1E6EC2E68;
  v21[4] = self;
  v21[5] = type;
  v21[6] = l;
  v21[7] = options;
  v21[10] = &v32;
  v21[11] = &v28;
  v21[8] = key;
  v21[9] = &v22;
  v21[12] = error;
  _perform_0(self, v21);
  v15 = v33[5];
  if ((v29[3] & 1) == 0)
  {
    v18 = v33[5];
    if (v18)
    {
      if (error)
      {
        *error = v18;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 5889;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v20 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v39 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v40 = 1024;
        v41 = 5889;
        _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v16 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v16;
}

id __131__NSPersistentStoreCoordinator__NSPersistentStoreCoordinatorPrivateMethods___rekeyPersistentStoreAtURL_type_options_withKey_error___block_invoke(uint64_t a1)
{
  v2 = [NSPersistentStoreCoordinator _storeClassForStoreWithType:*(a1 + 40) URL:*(a1 + 48) options:?];
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = *(*(*(a1 + 72) + 8) + 40);
  if (v4)
  {
    v5 = [(NSPersistentStoreCoordinator *)*(a1 + 32) _removePersistentStore:v4 error:(*(*(a1 + 80) + 8) + 40)]^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(*(a1 + 80) + 8) + 40);
  [v3 drain];
  v7 = *(*(*(a1 + 80) + 8) + 40);
  if ((v5 & 1) == 0)
  {
    v8 = *(*(a1 + 80) + 8);
    v10 = *(v8 + 40);
    v9 = v8 + 40;
    if (!v10)
    {
      if (v2)
      {
        *(*(*(a1 + 88) + 8) + 24) = [v2 _rekeyPersistentStoreAtURL:*(a1 + 48) options:*(a1 + 56) withKey:*(a1 + 64) error:v9];
      }

      else if (*(a1 + 96))
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*(a1 + 48), *MEMORY[0x1E696A998], 0}];
        *(*(*(a1 + 80) + 8) + 40) = [v12 errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v13];
      }
    }
  }

  return *(*(*(a1 + 80) + 8) + 40);
}

- (id)persistentStoreForIdentifier:(id)identifier
{
  _retainedPersistentStores = [(NSPersistentStoreCoordinator *)self _retainedPersistentStores];
  v5 = [_retainedPersistentStores count];
  if (v5 < 1)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [_retainedPersistentStores objectAtIndex:v7];
      if ([objc_msgSend(v8 "identifier")])
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  return v8;
}

- (void)setCodableAdapterRegistry:(id)registry
{
  codableAdapterRegistry = self->_codableAdapterRegistry;
  if (codableAdapterRegistry != registry)
  {

    self->_codableAdapterRegistry = registry;
  }
}

- (id)_retainedCurrentQueryGeneration:(id)generation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__NSPersistentStoreCoordinator_QueryGenerations___retainedCurrentQueryGeneration___block_invoke;
  v5[3] = &unk_1E6EC2E90;
  v5[5] = self;
  v5[6] = &v6;
  v5[4] = generation;
  [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __82__NSPersistentStoreCoordinator_QueryGenerations___retainedCurrentQueryGeneration___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([*(a1 + 32) containsObject:{objc_msgSend(v9, "identifier")}])
          {
            [v4 addObject:v9];
          }
        }

        v6 = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v10 = a2;
  }

  *(*(*(a1 + 48) + 8) + 40) = [(NSPersistentStoreCoordinator *)*(a1 + 40) _retainedIdentifierFromStores:v10];
}

- (id)_reopenQueryGenerationWithIdentifier:(uint64_t)identifier inStoreWithIdentifier:(void *)withIdentifier error:
{
  if (!self)
  {
    return 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __115__NSPersistentStoreCoordinator_QueryGenerations___reopenQueryGenerationWithIdentifier_inStoreWithIdentifier_error___block_invoke;
  v10[3] = &unk_1E6EC2EB8;
  v10[4] = identifier;
  v10[5] = a2;
  v10[6] = &v17;
  v10[7] = &v11;
  [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v10];
  v5 = v12;
  v6 = v12[5];
  if (v6)
  {
    if (withIdentifier)
    {
      *withIdentifier = v6;
      v6 = v5[5];
    }

    v7 = v6;
  }

  v8 = v18[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

void *__115__NSPersistentStoreCoordinator_QueryGenerations___reopenQueryGenerationWithIdentifier_inStoreWithIdentifier_error___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if ([objc_msgSend(v8 "identifier")])
        {
          *(*(a1[6] + 8) + 40) = [v8 reopenQueryGenerationWithIdentifier:a1[5] error:*(a1[7] + 8) + 40];
          v9 = *(*(a1[7] + 8) + 40);
          if (v9)
          {
            v10 = v9;
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)_validateQueryGeneration:(id)generation error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  if (+[NSQueryGenerationToken nostoresQueryGenerationToken](NSQueryGenerationToken, "nostoresQueryGenerationToken") == generation || +[NSQueryGenerationToken unpinnedQueryGenerationToken]== generation)
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (+[NSQueryGenerationToken currentQueryGenerationToken]!= generation)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 1;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = __Block_byref_object_copy__19;
      v18 = __Block_byref_object_dispose__19;
      v19 = 0;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __81__NSPersistentStoreCoordinator_QueryGenerations___validateQueryGeneration_error___block_invoke;
      v13[3] = &unk_1E6EC2EE0;
      v13[4] = generation;
      v13[5] = &v14;
      v13[6] = &v20;
      [(NSPersistentStoreCoordinator *)self _routeHeavyweightBlock:v13];
      v7 = *(v21 + 24);
      if ((v7 & 1) == 0)
      {
        v8 = v15[5];
        if (v8)
        {
          if (error)
          {
            *error = v8;
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v25 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
            v26 = 1024;
            v27 = 6038;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v10 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            v25 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
            v26 = 1024;
            v27 = 6038;
            _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }
        }

        v11 = v15[5];
        v7 = *(v21 + 24);
      }

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(&v20, 8);
    }
  }

  return v7 & 1;
}

id __81__NSPersistentStoreCoordinator_QueryGenerations___validateQueryGeneration_error___block_invoke(uint64_t a1, void *a2)
{
  result = [-[_NSQueryGenerationToken _storesForRequestRoutingFrom:error:](*(a1 + 32) a2];
  if (!result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4353C8];
      *(*(*(a1 + 40) + 8) + 40) = result;
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);

    return v4;
  }

  return result;
}

- (BOOL)_refreshTriggerValuesInStore:(id)store error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__19;
  v21 = __Block_byref_object_dispose__19;
  v22 = 0;
  _persistentStoreCoordinator = [store _persistentStoreCoordinator];
  if (_persistentStoreCoordinator != self)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{self, _persistentStoreCoordinator, store), 0}];
    objc_exception_throw(v14);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{store), 0}];
    objc_exception_throw(v15);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77__NSPersistentStoreCoordinator_Triggers___refreshTriggerValuesInStore_error___block_invoke;
  v16[3] = &unk_1E6EC2F08;
  v16[4] = store;
  v16[5] = &v23;
  v16[6] = &v17;
  [(NSPersistentStoreCoordinator *)self performBlockAndWait:v16];
  v8 = v18[5];
  if ((v24[3] & 1) == 0)
  {
    v11 = v18[5];
    if (v11)
    {
      if (error)
      {
        *error = v11;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v29 = 1024;
        v30 = 6077;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v13 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentStoreCoordinator.m";
        v29 = 1024;
        v30 = 6077;
        _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }
  }

  v9 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v9;
}

id __77__NSPersistentStoreCoordinator_Triggers___refreshTriggerValuesInStore_error___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [(NSSQLCore *)a1[4] _refreshTriggerValues:?];
  v2 = *(*(a1[6] + 8) + 40);

  return v2;
}

+ (BOOL)removePersistentHistoryFromPersistentStoreAtURL:(id)l options:(id)options error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (([l isFileURL] & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E696A368];
    if ([l path])
    {
      path = [l path];
    }

    else
    {
      path = [MEMORY[0x1E695DFB0] null];
    }

    v30[0] = path;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    objc_exception_throw([v21 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Invalid store URL" userInfo:v23]);
  }

  objc_opt_class();
  objc_opt_class();
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v24 = 0;
  v9 = [NSPersistentStoreCoordinator _classForPersistentStoreAtURL:l];
  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 dropPersistentHistoryforPersistentStoreWithURL:l options:options error:&v24];
      goto LABEL_15;
    }

    v13 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A368];
    if ([l path])
    {
      path2 = [l path];
    }

    else
    {
      path2 = [MEMORY[0x1E695DFB0] null];
    }

    v28 = path2;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v13 errorWithDomain:*MEMORY[0x1E696A250] code:134091 userInfo:v15];
  }

  else
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v11 = MEMORY[0x1E696ABC0];
    if ([l path])
    {
      path3 = [l path];
    }

    else
    {
      path3 = [MEMORY[0x1E695DFB0] null];
    }

    v26 = path3;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v16 = [v11 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v17];
  }

  v10 = 0;
  v24 = v16;
LABEL_15:
  if (!error || (v10 & 1) != 0)
  {
    goto LABEL_19;
  }

  v18 = v24;
LABEL_18:
  v10 = 0;
LABEL_19:
  [v8 drain];
  if (error)
  {
    v19 = v10;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    *error = v24;
  }

  return v10;
}

- (void)_setXPCBundleIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    os_unfair_lock_lock_with_options();

    *(identifier + 80) = [a2 copy];

    os_unfair_lock_unlock((identifier + 32));
  }
}

- (void)_setXPCProcessName:(uint64_t)name
{
  if (name)
  {
    os_unfair_lock_lock_with_options();

    *(name + 88) = [a2 copy];

    os_unfair_lock_unlock((name + 32));
  }
}

- (char)_xpcBundleIdentifier
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    v2 = *(v1 + 10);
    os_unfair_lock_unlock(v1 + 8);

    return v2;
  }

  return result;
}

- (char)_xpcProcessName
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock_with_options();
    v2 = *(v1 + 11);
    os_unfair_lock_unlock(v1 + 8);

    return v2;
  }

  return result;
}

id __113__NSPersistentStoreCoordinator_DeferredLightweightMigration___finishDeferredLightweightMigrationTasks_withError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) persistentStores];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (([*(*(&v7 + 1) + 8 * v6) finishDeferredLightweightMigration:*(a1 + 56) withError:*(*(a1 + 40) + 8) + 40] & 1) == 0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
          return *(*(*(a1 + 40) + 8) + 40);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (uint64_t)_handleFaultingError:(uint64_t)error fromContext:
{
  if (result)
  {
    delegate = [result delegate];
    if (delegate && (v6 = delegate, (objc_opt_respondsToSelector() & 1) != 0))
    {

      return [v6 handleFaultingError:a2 fromContext:error];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end