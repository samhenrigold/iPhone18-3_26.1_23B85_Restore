@interface NSManagedObjectContext
+ (id)createFutureForFileAtURL:(id)l;
+ (uint64_t)_handleError:(uint64_t *)error withError:;
+ (void)_mergeChangesFromRemoteContextSave:(void *)save intoContexts:(uint64_t)contexts withClientQueryGeneration:;
+ (void)initialize;
- (BOOL)_attemptCoalesceChangesForFetch;
- (BOOL)_parentObtainPermanentIDsForObjects:(id)objects context:(id)context error:(id *)error;
- (BOOL)_performImmediate:(id)immediate;
- (BOOL)_setChangeTrackingTokenFromToken:(id)token error:(id *)error;
- (BOOL)_setQueryGenerationFromToken:(id)token error:(id *)error;
- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name onObjectWithID:(id)d error:(id *)error;
- (BOOL)automaticallyMergesChangesFromParent;
- (BOOL)commitEditing;
- (BOOL)commitEditingAndReturnError:(id *)error;
- (BOOL)evictFuture:(id)future withError:(id *)error;
- (BOOL)hasChanges;
- (BOOL)obtainPermanentIDsForObjects:(NSArray *)objects error:(NSError *)error;
- (BOOL)propagatesDeletesAtEndOfEvent;
- (BOOL)retainsRegisteredObjects;
- (BOOL)save:(NSError *)error;
- (BOOL)setQueryGenerationFromToken:(NSQueryGenerationToken *)generation error:(NSError *)error;
- (BOOL)shouldDeleteInaccessibleFaults;
- (BOOL)shouldPerformSecureOperation;
- (BOOL)shouldRefreshAfterSave;
- (BOOL)trackSQLiteDatabaseStatistics;
- (BOOL)tryLock;
- (NSArray)executeFetchRequest:(NSFetchRequest *)request error:(NSError *)error;
- (NSManagedObject)existingObjectWithID:(NSManagedObjectID *)objectID error:(NSError *)error;
- (NSManagedObject)objectRegisteredForID:(NSManagedObjectID *)objectID;
- (NSManagedObject)objectWithID:(NSManagedObjectID *)objectID;
- (NSManagedObjectContext)init;
- (NSManagedObjectContext)initWithCoder:(id)coder;
- (NSManagedObjectContext)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)ct;
- (NSManagedObjectContext)parentContext;
- (NSManagedObjectContextConcurrencyType)concurrencyType;
- (NSMutableDictionary)userInfo;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NSPersistentStoreResult)executeRequest:(NSPersistentStoreRequest *)request error:(NSError *)error;
- (NSQueryGenerationToken)queryGenerationToken;
- (NSSaveChangesRequest)_newSaveRequestForCurrentState;
- (NSSet)deletedObjects;
- (NSSet)insertedObjects;
- (NSSet)registeredObjects;
- (NSSet)updatedObjects;
- (NSString)name;
- (NSString)transactionAuthor;
- (NSUInteger)countForFetchRequest:(NSFetchRequest *)request error:(NSError *)error;
- (NSUndoManager)undoManager;
- (__int16)_insertObjectWithGlobalID:(void *)d globalID:;
- (__int16)_registerClearStateWithUndoManager;
- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error;
- (id)_changeTrackingToken__;
- (id)_createStoreFetchRequestForFetchRequest:(id *)request;
- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)_orderKeysForRelationshipWithName__:(id)name__ onObjectWithID:(id)d;
- (id)_orderedSetWithResultsFromFetchRequest:(id)request;
- (id)_queryGenerationToken__;
- (id)_resetAllChanges;
- (id)_retainedCurrentQueryGeneration:(id)generation;
- (id)_retainedObjectWithID:(void *)d optionalHandler:(void *)handler withInlineStorage:(uint64_t)storage;
- (id)_retainedObjectsFromRemovedStore:(id)store;
- (id)databaseStatistics;
- (id)description;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)mergePolicy;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)performBlockWithResult:(id)result;
- (int64x2_t)_updateDatabaseStaticsWithCacheStats:(uint64_t)stats;
- (uint64_t)_batchRetainedObjects:(uint64_t)objects forCount:(uint64_t)count withIDs:(uint64_t)ds optionalHandler:(id *)handler withInlineStorage:(uint64_t)storage;
- (uint64_t)_checkObjectForExistenceAndCacheRow:(uint64_t)row;
- (uint64_t)_clearDeletions;
- (uint64_t)_clearInsertions;
- (uint64_t)_clearUnprocessedDeletions;
- (uint64_t)_clearUnprocessedInsertions;
- (uint64_t)_clearUnprocessedUpdates;
- (uint64_t)_clearUpdates;
- (uint64_t)_committedSnapshotForObject:(uint64_t)result;
- (uint64_t)_dispose:(uint64_t)result;
- (uint64_t)_handleError:(uint64_t *)error withError:;
- (uint64_t)_implicitObservationInfoForEntity:(void *)entity forResultingClass:;
- (uint64_t)_mergeRefreshObject:(char)object mergeChanges:(NSKnownKeysDictionary *)changes withPersistentSnapshot:;
- (uint64_t)_prepareForPushChanges:(uint64_t)changes;
- (uint64_t)_processPendingDeletions:(void *)deletions withInsertions:(void *)insertions withUpdates:withNewlyForgottenList:withRemovedChangedObjects:;
- (uint64_t)_processRecentChanges:(uint64_t)changes;
- (uint64_t)_validateObjects:(int)objects forOperation:(uint64_t *)operation error:(int)error exhaustive:(int)exhaustive forSave:;
- (uint64_t)lockObjectStore;
- (uint64_t)unlockObjectStore;
- (unint64_t)_countForFetchRequest_:(id *)request_ error:;
- (unint64_t)_countWithNoChangesForRequest:(id *)request error:;
- (unsigned)_setParentContext:(unsigned __int8 *)result;
- (void)_PFAutoreleasePoolReferenceQueueTrampoline;
- (void)_addObjectIDsInsertUpdatedByDATriggers:(void *)result;
- (void)_addObjectIDsUpdatedByDATriggers:(void *)result;
- (void)_addObjectIDsUpdatedByTriggers:(void *)result;
- (void)_advanceQueryGenerationForSave;
- (void)_automaticallyMergeChangesFromContextDidSaveNotification:(id)notification;
- (void)_changeIDsForManagedObjects:(void *)objects toIDs:;
- (void)_clearChangedThisTransaction:(id)transaction;
- (void)_clearOriginalSnapshotAndInitializeRec:(void *)result;
- (void)_copyChildObject:(uint64_t)object toParentObject:(_BYTE *)parentObject fromChildContext:(void *)context;
- (void)_coreMergeChangesFromDidSaveDictionary:(int)dictionary usingObjectIDs:(uint64_t)ds withClientQueryGeneration:;
- (void)_createAndPostChangeNotification:(void *)notification deletions:(void *)deletions updates:(void *)updates refreshes:(void *)refreshes deferrals:(int)deferrals wasMerge:;
- (void)_dealloc__;
- (void)_didSaveChanges;
- (void)_enqueueEndOfEventNotification;
- (void)_establishEventSnapshotsForObject:(uint64_t)object;
- (void)_forceInsertionForObject:(id)object;
- (void)_forceMoveInsertToUpdatedList:(uint64_t)list;
- (void)_forceRegisterLostFault:(uint64_t)fault;
- (void)_forgetObject:(id)object propagateToObjectStore:(BOOL)store removeFromRegistry:(BOOL)registry;
- (void)_generateOptLockExceptionForConstraintFailure:(void *)result;
- (void)_informParentStoreNoLongerInterestedInObjectIDs:(uint64_t)ds generation:;
- (void)_initWithParentObjectStore:(void *)store;
- (void)_managedObjectContextEditor:(id)editor didCommit:(BOOL)commit contextInfo:(id *)info;
- (void)_mergeChangesFromRemoteContextSave:(id)save;
- (void)_mergeChangesFromRemoteContextSave:(id)save presupposingQueryGeneration:(id)generation;
- (void)_mergeRefreshEpilogueForObject:(uint64_t)object mergeChanges:;
- (void)_newUnchangedLockedObjects;
- (void)_parentProcessSaveRequest:(void *)result inContext:(void *)context error:;
- (void)_persistentStoreDidUpdateAdditionalRows:(void *)rows;
- (void)_postContextDidSaveNotificationWithUserInfo:(uint64_t)info;
- (void)_postObjectsDidChangeNotificationWithUserInfo:(void *)result;
- (void)_postRefreshedObjectsNotificationAndClearList;
- (void)_prepareUnprocessedDeletionAfterRefresh:(_DWORD *)result;
- (void)_processChangedStoreConfigurationNotification:(id)notification;
- (void)_processPendingInsertions:(id *)insertions withDeletions:(void *)deletions withUpdates:(void *)updates;
- (void)_processPendingUpdates:(uint64_t)updates;
- (void)_processRecentlyForgottenObjects:(void *)objects;
- (void)_processReferenceQueue:(uint64_t)result;
- (void)_refaultObject:(id *)object globalID:(uint64_t)d BOOLean:(int)lean;
- (void)_registerAsyncReferenceCallback;
- (void)_registerForNotificationsWithCoordinator:(void *)result;
- (void)_registerObject:(void *)object withID:;
- (void)_registerUndoForOperation:(void *)operation withObjects:(uint64_t)objects withExtraArguments:;
- (void)_retainedRegisteredObjects;
- (void)_sendCommitEditingSelectorToTarget:(uint64_t)target sender:(uint64_t)sender selector:(char)selector flag:(uint64_t)flag contextInfo:(int)info delayed:;
- (void)_setAllowAncillaryEntities:(BOOL)entities;
- (void)_setAllowsExpandedUserInfoKeys:(BOOL)keys;
- (void)_setDisableDiscardEditing:(BOOL)editing;
- (void)_setFaultingError:(id)error;
- (void)_setPersistentStoreCoordinator:(void *)result;
- (void)_setRetainsRegisteredObjects:(uint64_t)objects;
- (void)_setUndoManager:(void *)manager;
- (void)_startObservingUndoManagerNotifications;
- (void)_stopConflictDetectionForObject:(id)object;
- (void)_stopObservingUndoManagerNotifications;
- (void)_storeConfigurationChanged:(id)changed;
- (void)_thereIsNoSadnessLikeTheDeathOfOptimism;
- (void)_undoDeletions:(id)deletions;
- (void)_undoDeletionsMovedToUpdates:(id)updates;
- (void)_undoInsertions:(id)insertions;
- (void)_undoManagerCheckpoint:(id)checkpoint;
- (void)_undoUpdates:(id)updates;
- (void)_unlimitRequest:(void *)request;
- (void)_youcreatedanNSManagedObjectContextOnthemainthreadandillegallypassedittoabackgroundthread;
- (void)assignObject:(id)object toPersistentStore:(NSPersistentStore *)store;
- (void)commitEditingWithDelegate:(id)delegate didCommitSelector:(SEL)selector contextInfo:(void *)info;
- (void)dealloc;
- (void)deleteObject:(NSManagedObject *)object;
- (void)detectConflictsForObject:(NSManagedObject *)object;
- (void)discardEditing;
- (void)encodeWithCoder:(id)coder;
- (void)insertObject:(NSManagedObject *)object;
- (void)lock;
- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation;
- (void)mergeChangesFromContextDidSaveNotification:(NSNotification *)notification;
- (void)objectDidBeginEditing:(id)editing;
- (void)objectDidEndEditing:(id)editing;
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
- (void)performBlock:(void *)block;
- (void)performBlockAndWait:(void *)block;
- (void)performWithOptions:(unint64_t)options andBlock:(id)block;
- (void)processPendingChanges;
- (void)redo;
- (void)refreshAllObjects;
- (void)refreshObject:(NSManagedObject *)object mergeChanges:(BOOL)flag;
- (void)reset;
- (void)rollback;
- (void)setAutomaticallyMergesChangesFromParent:(BOOL)automaticallyMergesChangesFromParent;
- (void)setMergePolicy:(id)mergePolicy;
- (void)setName:(NSString *)name;
- (void)setParentContext:(NSManagedObjectContext *)parentContext;
- (void)setPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (void)setPropagatesDeletesAtEndOfEvent:(BOOL)propagatesDeletesAtEndOfEvent;
- (void)setRetainsRegisteredObjects:(BOOL)retainsRegisteredObjects;
- (void)setShouldDeleteInaccessibleFaults:(BOOL)shouldDeleteInaccessibleFaults;
- (void)setShouldPerformSecureOperation:(BOOL)operation;
- (void)setShouldRefreshAfterSave:(BOOL)save;
- (void)setStalenessInterval:(NSTimeInterval)stalenessInterval;
- (void)setTrackSQLiteDatabaseStatistics:(BOOL)statistics;
- (void)setTransactionAuthor:(NSString *)transactionAuthor;
- (void)setUndoManager:(NSUndoManager *)undoManager;
- (void)set_isSwiftBound:(BOOL)bound;
- (void)undo;
- (void)unlock;
@end

@implementation NSManagedObjectContext

- (BOOL)hasChanges
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 1) >> 2) & 1;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v2 = atomic_load(&self->_isParentStoreContext);
  result = self->_parentObjectStore;
  if (v2)
  {
    return [(NSPersistentStoreCoordinator *)result persistentStoreCoordinator];
  }

  return result;
}

- (void)_PFAutoreleasePoolReferenceQueueTrampoline
{
  if (val)
  {
    if (val[3])
    {
      v1 = _MergedGlobals_73 == 0;
    }

    else
    {
      v1 = 1;
    }

    if (!v1)
    {
      objc_initWeak(&location, val);
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __68__NSManagedObjectContext__PFAutoreleasePoolReferenceQueueTrampoline__block_invoke;
      v2[3] = &unk_1E6EC23A0;
      objc_copyWeak(&v3, &location);
      [_PFAutoreleasePoolThunk thunkWithBlock:v2];
      objc_destroyWeak(&v3);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)lockObjectStore
{
  if (result && _PF_Threading_Debugging_level)
  {
    v1 = result;
    if (*(result + 24))
    {
      result = _PFAssertSafeMultiThreadedAccess_impl(result, sel_lockObjectStore);
    }

    else
    {
      result = [*(result + 136) tryLock];
      if ((result & 1) == 0)
      {
        result = objc_opt_self();
        __break(1u);
        return result;
      }
    }

    if (!v1[3])
    {
      if (atomic_load(v1 + 1))
      {
        v3 = *(*(v1[21] + 56) + 32);
        v4 = NSKeyValueCoding_NullValue;

        return [v3 addObject:v4];
      }

      else
      {
        result = _PF_actor_set_owner(0, v1, v1[4]);
        if ((result & 1) == 0 && _PF_Threading_Debugging_level)
        {

          return _PFAssertSafeMultiThreadedAccess_impl(v1, sel_lockObjectStore);
        }
      }
    }
  }

  return result;
}

- (BOOL)_attemptCoalesceChangesForFetch
{
  if (result)
  {
    v1 = result;
    return ![*(result + 64) count] && (!objc_msgSend(*(v1 + 72), "count") || (objc_msgSend(*(v1 + 88), "intersectsSet:", *(v1 + 72)) & 1) == 0);
  }

  return result;
}

- (NSMutableDictionary)userInfo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  result = *(self->_additionalPrivateIvars + 6);
  if (!result)
  {
    *(self->_additionalPrivateIvars + 6) = objc_alloc_init(MEMORY[0x1E695DF90]);
    return *(self->_additionalPrivateIvars + 6);
  }

  return result;
}

- (id)_queryGenerationToken__
{
  if (self->_parentObjectStore && (v2 = atomic_load(&self->_isParentStoreContext), (v2 & 1) != 0))
  {
    v3 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
  }

  else
  {
    v3 = *(self->_additionalPrivateIvars + 12);
  }

  v4 = v3;

  return v4;
}

- (__int16)_registerClearStateWithUndoManager
{
  if (result)
  {
    v1 = result;
    if ((result[20] & 0x20) == 0)
    {
      v2 = [MEMORY[0x1E696AD98] numberWithShort:result[22]];
      result = *(*(v1 + 21) + 40);
      if (result)
      {
        if (([result groupsByEvent] & 1) == 0 && (objc_msgSend(*(*(v1 + 21) + 40), "isUndoing") & 1) == 0 && (objc_msgSend(*(*(v1 + 21) + 40), "isRedoing") & 1) == 0)
        {
          *(v1 + 10) |= 0x800u;
          [*(*(v1 + 21) + 40) beginUndoGrouping];
          *(v1 + 10) &= ~0x800u;
        }

        v3 = [*(v1 + 12) copy];
        v4 = [MEMORY[0x1E695DF70] arrayWithObjects:{v2, v3, 0}];

        result = [*(*(v1 + 21) + 40) registerUndoWithTarget:v1 selector:sel__clearChangedThisTransaction_ object:v4];
      }

      *(v1 + 10) |= 0x20u;
    }
  }

  return result;
}

- (uint64_t)unlockObjectStore
{
  if (!result || !_PF_Threading_Debugging_level)
  {
    return result;
  }

  v1 = result;
  if (*(result + 24))
  {
    goto LABEL_12;
  }

  if ([*(*(*(result + 168) + 56) + 32) count])
  {
    result = [*(*(v1[21] + 56) + 32) removeLastObject];
  }

  else
  {
    result = _PF_actor_set_owner(v1[4], v1, 0);
    if ((result & 1) == 0 && _PF_Threading_Debugging_level)
    {
      result = _PFAssertSafeMultiThreadedAccess_impl(v1, sel_unlockObjectStore);
    }
  }

  if (v1[3])
  {
    if (!_PF_Threading_Debugging_level)
    {
      return result;
    }

LABEL_12:

    return _PFAssertSafeMultiThreadedAccess_impl(v1, sel_unlockObjectStore);
  }

  v2 = v1[17];

  return [v2 unlock];
}

- (void)_enqueueEndOfEventNotification
{
  if (result)
  {
    v1 = result;
    if ((result[5] & 9) == 0)
    {
      result = [*(result[21] + 40) groupsByEvent];
      if (result)
      {
        result = [*(v1[21] + 40) registerUndoWithTarget:v1 selector:sel__noop_ object:NSArray_EmptyArray];
      }

      *(v1 + 10) |= 1u;
    }
  }

  return result;
}

- (NSManagedObjectContextConcurrencyType)concurrencyType
{
  if (!self->_dispatchQueue)
  {
    return 0;
  }

  if ((*(&self->_flags + 2) & 4) != 0)
  {
    return 1;
  }

  return 2;
}

void __90__NSManagedObjectContext__NSInternalNotificationHandling___registerAsyncReferenceCallback__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    v4 = WeakRetained;
    v5 = *(a1 + 40);
    if (WeakRetained)
    {
      if ((WeakRetained[42] & 2) == 0)
      {
        v6 = objc_autoreleasePoolPush();
        [(_PFManagedObjectReferenceQueue *)v5 _processReferenceQueue:?];
        objc_autoreleasePoolPop(v6);
        if (*(v4 + 3))
        {
          atomic_store(0, v4 + 51);
          __dmb(0xBu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 40);
  }

  CFRelease(v5);
}

void __68__NSManagedObjectContext__PFAutoreleasePoolReferenceQueueTrampoline__block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v2 = Weak;
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(Weak, sel_processPendingChanges);
    }

    [(NSManagedObjectContext *)v2 _processReferenceQueue:?];
  }
}

- (void)discardEditing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = *(self->_additionalPrivateIvars + 4);
  if (!v3)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v3 = *(self->_additionalPrivateIvars + 4);
  }

  if ((*(&self->_flags + 1) & 0x80) == 0)
  {
    if ([(NSManagedObjectContext *)self isEditing])
    {
      Count = CFArrayGetCount(v3);
      v5 = Count - 1;
      if (Count >= 1)
      {
        do
        {
          [CFArrayGetValueAtIndex(v3 v5--)];
        }

        while (v5 != -1);
      }
    }
  }
}

- (void)_postRefreshedObjectsNotificationAndClearList
{
  if ([*(self + 112) count] || (v2 = *(self + 168), *(v2 + 88)) || *(v2 + 104))
  {
    v3 = objc_autoreleasePoolPush();
    if ([*(self + 112) count])
    {
      v4 = [*(self + 112) copy];
    }

    else
    {
      v4 = 0;
    }

    v5 = *(*(self + 168) + 88);
    [*(self + 112) removeAllObjects];
    *(*(self + 168) + 88) = 0;
    [(NSManagedObjectContext *)self _createAndPostChangeNotification:0 deletions:0 updates:v4 refreshes:v5 deferrals:*(*(self + 168) + 104) != 0 wasMerge:?];

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_registerAsyncReferenceCallback
{
  if (self)
  {
    if (_PF_shouldAsyncProcessReferenceQueue)
    {
      if (*(self + 24))
      {
        if (!*(self + 16) && ([self _isDeallocating] & 1) == 0 && !atomic_fetch_add((self + 51), 1u))
        {
          v2 = *(self + 152);
          if (v2)
          {
            v3 = [[_PFWeakReference alloc] initWithObject:self];
            if (v3)
            {
              v4 = v3;
              CFRetain(v2);
              v5[0] = MEMORY[0x1E69E9820];
              v5[1] = 3221225472;
              v5[2] = __90__NSManagedObjectContext__NSInternalNotificationHandling___registerAsyncReferenceCallback__block_invoke;
              v5[3] = &unk_1E6EC2720;
              v5[4] = v4;
              v5[5] = v2;
              [self performWithOptions:24577 andBlock:v5];
            }
          }
        }
      }
    }
  }
}

- (NSSaveChangesRequest)_newSaveRequestForCurrentState
{
  if (!self)
  {
    return 0;
  }

  if ([*(self + 80) count])
  {
    v2 = *(self + 80);
  }

  else
  {
    v2 = 0;
  }

  if ([*(self + 96) count])
  {
    v3 = *(self + 96);
  }

  else
  {
    v3 = 0;
  }

  if ([*(self + 88) count])
  {
    v4 = *(self + 88);
  }

  else
  {
    v4 = 0;
  }

  if ([*(self + 104) count])
  {
    _newUnchangedLockedObjects = [(NSManagedObjectContext *)self _newUnchangedLockedObjects];
    if ([_newUnchangedLockedObjects count])
    {
      v6 = _newUnchangedLockedObjects;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    _newUnchangedLockedObjects = 0;
  }

  v7 = [[NSSaveChangesRequest alloc] initWithInsertedObjects:v2 updatedObjects:v3 deletedObjects:v4 lockedObjects:v6];
  v8 = v7;
  if (*(self + 43))
  {
    [(NSSaveChangesRequest *)v7 _setSecureOperation:1];
  }

  if (_newUnchangedLockedObjects)
  {
  }

  return v8;
}

- (void)reset
{
  v24 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v23 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSManagedObjectContext *)self discardEditing];
  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22[1] = v22;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - v7);
  if (Count >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v22 - v7, 8 * v6);
  }

  v9 = [(_PFContextMapTable *)self->_infoByGID getAllObjects:v8];
  if (v9)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v8[v10];
      objectID = [v12 objectID];
      v14 = v12;
      isTemporaryID = [objectID isTemporaryID];
      if (v12 && !(((*(v12 + 17) & 2) == 0) | isTemporaryID & 1))
      {
        [v4 addObject:objectID];
        *(v12 + 16) &= ~0x200u;
      }

      else if (isTemporaryID)
      {
        [v5 addObject:objectID];
      }

      if (v12)
      {
        v16 = _insertion_fault_handler;
      }

      else
      {
        v16 = 0;
      }

      [(NSFaultHandler *)v16 turnObject:v12 intoFaultWithContext:self];
      [(NSManagedObjectContext *)self _forgetObject:v12 propagateToObjectStore:0 removeFromRegistry:0];

      v10 = v11;
    }

    while (v9 > v11++);
  }

  if (Count >= 0x201)
  {
    NSZoneFree(0, v8);
  }

  _PFCMT_RemoveAllValues(&self->_infoByGID->super.isa);
  [(NSManagedObjectContext *)&self->super.isa _resetAllChanges];
  if ([v4 count])
  {
    [(NSManagedObjectContext *)self lockObjectStore];
    [self->_parentObjectStore managedObjectContextDidUnregisterObjectsWithIDs:v4 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
    [(NSManagedObjectContext *)self unlockObjectStore];
  }

  if ([v5 count])
  {
    [v5 addObjectsFromArray:v4];
  }

  else
  {

    v5 = v4;
  }

  if (byte_1ED4BEEC6 == 1)
  {
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"invalidatedAll", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v5, @"invalidatedAll", 0}];
  }

  [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v18];
  additionalPrivateIvars = self->_additionalPrivateIvars;
  v20 = additionalPrivateIvars[1];
  if (v20)
  {

    PF_FREE_OBJECT_ARRAY(self->_additionalPrivateIvars[1]);
    *(self->_additionalPrivateIvars + 1) = 0;
    additionalPrivateIvars = self->_additionalPrivateIvars;
  }

  *self->_additionalPrivateIvars = 0;
  *(self->_additionalPrivateIvars + 17) = 0;

  *(self->_additionalPrivateIvars + 18) = 0;
  *(self->_additionalPrivateIvars + 14) = 0;

  *(self->_additionalPrivateIvars + 19) = 0;
  if ([-[NSManagedObjectContext _queryGenerationToken](self "_queryGenerationToken")])
  {
    [(NSManagedObjectContext *)self _setQueryGenerationFromToken:+[NSQueryGenerationToken error:"currentQueryGenerationToken"], 0];
  }

  [v23 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];
  v21 = 0;
}

- (uint64_t)_clearUnprocessedUpdates
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 56) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 56) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 56) getObjects:v6];
    if (!v3)
    {
      return [*(self + 56) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~1u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 56) removeAllObjects];
}

- (uint64_t)_clearUpdates
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 96) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 96) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 96) getObjects:v6];
    if (!v3)
    {
      return [*(self + 96) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~8u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 96) removeAllObjects];
}

- (uint64_t)_clearUnprocessedInsertions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 72) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 72) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 72) getObjects:v6];
    if (!v3)
    {
      return [*(self + 72) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~2u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 72) removeAllObjects];
}

- (uint64_t)_clearInsertions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 80) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 80) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 80) getObjects:v6];
    if (!v3)
    {
      return [*(self + 80) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~0x10u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 80) removeAllObjects];
}

- (uint64_t)_clearUnprocessedDeletions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 64) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 64) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 64) getObjects:v6];
    if (!v3)
    {
      return [*(self + 64) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~4u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 64) removeAllObjects];
}

- (uint64_t)_clearDeletions
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 88) count];
  v3 = v2;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= 0x201)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 >= 0x201)
  {
    v6 = NSAllocateScannedUncollectable();
    [*(self + 88) getObjects:v6];
  }

  else
  {
    bzero(v10 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    [*(self + 88) getObjects:v6];
    if (!v3)
    {
      return [*(self + 88) removeAllObjects];
    }
  }

  v7 = 0;
  do
  {
    v8 = *&v6[8 * v7];
    if (v8)
    {
      *(v8 + 16) &= ~0x20u;
    }

    ++v7;
  }

  while (v3 != v7);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return [*(self + 88) removeAllObjects];
}

- (id)_resetAllChanges
{
  if (result)
  {
    v1 = result;
    [(NSManagedObjectContext *)result _clearUnprocessedUpdates];
    [(NSManagedObjectContext *)v1 _clearUpdates];
    [(NSManagedObjectContext *)v1 _clearUnprocessedInsertions];
    [(NSManagedObjectContext *)v1 _clearInsertions];
    [(NSManagedObjectContext *)v1 _clearUnprocessedDeletions];
    [(NSManagedObjectContext *)v1 _clearDeletions];
    [v1[13] removeAllObjects];
    [v1[14] removeAllObjects];
    result = *(v1[21] + 5);
    if (result)
    {
      result = [result isUndoRegistrationEnabled];
      if (result)
      {
        result = [*(v1[21] + 5) removeAllActions];
      }
    }

    ++*(v1 + 22);
    v2 = *(v1 + 10);
    *(v1 + 10) = v2 & 0xFFFFFCDF;
    if ((v2 & 0x400) != 0)
    {
      [v1 willChangeValueForKey:@"hasChanges"];
      *(v1 + 10) &= ~0x400u;

      return [v1 didChangeValueForKey:@"hasChanges"];
    }
  }

  return result;
}

- (void)_didSaveChanges
{
  v110 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v81 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v2 = *(*(self + 168) + 136);
  if ([v2 count])
  {
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v3)
    {
      v4 = *v102;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v102 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v101 + 1) + 8 * i);
          v7 = [self objectRegisteredForID:{objc_msgSend(v6, "firstObject")}];
          v8 = v7;
          if (v7)
          {
            entity = [v7 entity];
            v10 = [v6 objectAtIndex:1];
            if (entity)
            {
              if ([objc_msgSend(entity "propertiesByName")])
              {
                [v6 lastObject];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  lastObject = 0;
                }

                else
                {
                  lastObject = [v6 lastObject];
                }

                [v8 setValue:lastObject forKey:{objc_msgSend(v6, "objectAtIndex:", 1)}];
              }
            }
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v3);
    }

    *(self + 40) &= 0xFFFFFCFF;
  }

  v12 = *(*(self + 168) + 144);
  if ([v12 count])
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v13)
    {
      v14 = *v98;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v98 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v97 + 1) + 8 * j);
          v17 = [self objectRegisteredForID:{objc_msgSend(v16, "firstObject")}];
          v18 = v17;
          if (v17)
          {
            entity2 = [v17 entity];
            v20 = [v16 objectAtIndex:1];
            if (entity2)
            {
              if ([objc_msgSend(entity2 "propertiesByName")])
              {
                [v16 lastObject];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  lastObject2 = 0;
                }

                else
                {
                  lastObject2 = [v16 lastObject];
                }

                [v18 setValue:lastObject2 forKey:{objc_msgSend(v16, "objectAtIndex:", 1)}];
              }
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v13);
    }

    *(self + 40) &= 0xFFFFFCFF;
  }

  v22 = [*(self + 80) copy];
  v84 = [v22 count];
  v78 = v76;
  MEMORY[0x1EEE9AC00](v84);
  v25 = &v76[-v24];
  if (v26 >= 0x201)
  {
    v83 = NSAllocateScannedUncollectable();
    [*(self + 80) getObjects:v83];
  }

  else
  {
    bzero(&v76[-v24], 8 * v23);
    v27 = *(self + 80);
    v83 = v25;
    [v27 getObjects:v25];
    if (!v84)
    {
      v79 = 1;
      goto LABEL_41;
    }
  }

  v28 = 0;
  do
  {
    v29 = v83[v28];
    [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:v29];
    [v29 _setVersionReference__:1];
    ++v28;
  }

  while (v84 != v28);
  v79 = 0;
LABEL_41:
  [v81 setObject:v22 forKey:@"inserted"];

  v30 = [*(self + 96) count];
  v31 = [*(self + 96) copy];
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v76[-v33];
  if (v30 >= 0x201)
  {
    v82 = NSAllocateScannedUncollectable();
    [*(self + 96) getObjects:v82];
  }

  else
  {
    bzero(&v76[-v33], 8 * v32);
    v35 = *(self + 96);
    v82 = v34;
    [v35 getObjects:v34];
    if (!v30)
    {
      v77 = 1;
      goto LABEL_48;
    }
  }

  for (k = 0; k != v30; ++k)
  {
    v37 = v82[k];
    [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:v37];
    [v37 _setVersionReference__:{objc_msgSend(v37, "_versionReference") + 1}];
  }

  v77 = 0;
LABEL_48:
  [v81 setObject:v31 forKey:@"updated"];

  v38 = [*(self + 88) count];
  v39 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v76[-v41];
  if (v39 >= 0x201)
  {
    v42 = NSAllocateScannedUncollectable();
LABEL_52:
    v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v38];
    [objc_msgSend(*(self + 88) "allObjects")];
    v43 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v42 count:v38];
    [v81 setObject:v43 forKey:@"deleted"];

    v44 = 0;
    do
    {
      [NSManagedObjectContext _clearOriginalSnapshotAndInitializeRec:?];
    }

    while (v38 != v44);
    goto LABEL_54;
  }

  bzero(&v76[-v41], 8 * v40);
  if (v38)
  {
    goto LABEL_52;
  }

  v80 = 0;
LABEL_54:
  [(NSManagedObjectContext *)self _clearInsertions];
  [(NSManagedObjectContext *)self _clearUnprocessedInsertions];
  [(NSManagedObjectContext *)self _clearDeletions];
  [(NSManagedObjectContext *)self _clearUnprocessedDeletions];
  [(NSManagedObjectContext *)self _clearUpdates];
  [(NSManagedObjectContext *)self _clearUnprocessedUpdates];
  v45 = *(self + 40);
  ++*(self + 44);
  *(self + 40) = v45 & 0xFFFFFFDF;
  [*(self + 104) removeAllObjects];
  [*(self + 112) removeAllObjects];

  **(self + 168) = 0;
  if ((*(self + 41) & 4) != 0)
  {
    [self willChangeValueForKey:@"hasChanges"];
    *(self + 40) &= ~0x400u;
    [self didChangeValueForKey:@"hasChanges"];
  }

  v46 = [v81 objectForKey:@"inserted"];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v47 = [v46 countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v47)
  {
    v48 = *v94;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v94 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v50 = *(*(&v93 + 1) + 8 * m);
        v51 = v50 + 4;
        v50[4] |= 0x10u;
        [v50 didSave];
        *v51 &= ~0x10u;
      }

      v47 = [v46 countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v47);
  }

  v52 = [v81 objectForKey:@"deleted"];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v53 = [v52 countByEnumeratingWithState:&v89 objects:v106 count:16];
  if (v53)
  {
    v54 = *v90;
    do
    {
      for (n = 0; n != v53; ++n)
      {
        if (*v90 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v89 + 1) + 8 * n);
        v57 = v56 + 4;
        v56[4] |= 0x20u;
        [v56 didSave];
        *v57 &= ~0x20u;
      }

      v53 = [v52 countByEnumeratingWithState:&v89 objects:v106 count:16];
    }

    while (v53);
  }

  v58 = [v81 objectForKey:@"updated"];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v59 = [v58 countByEnumeratingWithState:&v85 objects:v105 count:16];
  if (v59)
  {
    v60 = *v86;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v86 != v60)
        {
          objc_enumerationMutation(v58);
        }

        [*(*(&v85 + 1) + 8 * ii) didSave];
      }

      v59 = [v58 countByEnumeratingWithState:&v85 objects:v105 count:16];
    }

    while (v59);
  }

  if ([*(*(self + 168) + 96) _isEnabled])
  {
    v62 = *(*(self + 168) + 96);
    if (v62 != +[NSQueryGenerationToken currentQueryGenerationToken])
    {
      [v81 setValue:*(*(self + 168) + 96) forKey:@"newQueryGeneration"];
    }
  }

  v63 = *(*(self + 168) + 120);
  if (v63)
  {
    [v81 setValue:v63 forKey:@"newChangeToken"];
  }

  if (byte_1ED4BEEC6 == 1)
  {
    v64 = [_PFWeakReference weakReferenceWithObject:self];
    [v81 setValue:v64 forKey:@"managedObjectContext"];
  }

  if (*(self + 42))
  {
    [(NSManagedObjectContext *)self _postContextDidSaveNotificationWithUserInfo:v81];
  }

  if ((v79 & 1) == 0)
  {
    v65 = v83;
    v66 = v84;
    do
    {
      [(NSManagedObject *)*v65++ _nilOutReservedCurrentEventSnapshot__];
      --v66;
    }

    while (v66);
  }

  if (v84 >= 0x201)
  {
    NSZoneFree(0, v83);
  }

  if ((v77 & 1) == 0)
  {
    v67 = v82;
    v68 = v30;
    do
    {
      [(NSManagedObject *)*v67++ _nilOutReservedCurrentEventSnapshot__];
      --v68;
    }

    while (v68);
  }

  if (v30 >= 0x201)
  {
    NSZoneFree(0, v82);
  }

  if (v38)
  {
    for (jj = 0; jj != v38; ++jj)
    {
      v70 = *&v42[8 * jj];
      objectID = [v70 objectID];
      if (v70)
      {
        if ((v70[17] & 2) != 0)
        {
          v72 = objectID;
          if (([objectID isTemporaryID] & 1) == 0)
          {
            [v80 addObject:v72];
          }
        }
      }

      if (v70)
      {
        v73 = _insertion_fault_handler;
      }

      else
      {
        v73 = 0;
      }

      [(NSFaultHandler *)v73 turnObject:v70 intoFaultWithContext:self];
      [self _forgetObject:v70 propagateToObjectStore:0 removeFromRegistry:1];
    }

    if (v38 >= 0x201)
    {
      NSZoneFree(0, v42);
    }
  }

  if ([v80 count])
  {
    [(NSManagedObjectContext *)self lockObjectStore];
    v74 = *(self + 32);
    _queryGenerationToken = [self _queryGenerationToken];
    [v74 managedObjectContextDidUnregisterObjectsWithIDs:v80 generation:_queryGenerationToken];
    [(NSManagedObjectContext *)self unlockObjectStore];
  }
}

- (void)dealloc
{
  MEMORY[0x1865FAAC0](self, a2);
  if (self->_dispatchQueue)
  {
    v3 = atomic_load(&self->_isMainThreadBlessed);
    if ((v3 & 1) != 0 && _PFIsSerializedWithMainQueue())
    {
      wasDisposed = self->_wasDisposed;
      [(NSManagedObjectContext *)self _dealloc__];
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v6 = *(StatusReg + 712);
      if (v6 == self)
      {
        *(StatusReg + 712) = 0;
      }

      else
      {
        if (v6)
        {
          v7 = atomic_load((v6 + 8));
        }

        else
        {
          v7 = 0;
        }

        if (v7 == self)
        {
          _PF_actor_set_owner(v7, v6, 0);
        }
      }

      do
      {
        v15 = atomic_load(&self->_queueOwner);
      }

      while (!_PF_actor_set_owner(v15, self, 0));
      __dmb(0xBu);
      if (!wasDisposed)
      {
        objc_destructInstance(self);
        v16 = dispatch_time(0, 3000000000);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __33__NSManagedObjectContext_dealloc__block_invoke;
        v17[3] = &__block_descriptor_40_e5_v8__0l;
        v17[4] = self;
        dispatch_after(v16, MEMORY[0x1E69E96A0], v17);
      }
    }

    else
    {
      dispatchQueue = self->_dispatchQueue;
      v9 = self->_wasDisposed;
      dispatch_retain(dispatchQueue);
      MEMORY[0x1865FAAC0]();
      v10 = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v11 = *(v10 + 712);
      if (v11 == self)
      {
        *(v10 + 712) = 0;
      }

      else
      {
        if (v11)
        {
          v12 = atomic_load((v11 + 8));
        }

        else
        {
          v12 = 0;
        }

        if (v12 == self)
        {
          _PF_actor_set_owner(v12, v11, 0);
        }
      }

      do
      {
        v13 = atomic_load(&self->_queueOwner);
      }

      while (!_PF_actor_set_owner(v13, self, 0));
      __dmb(0xBu);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __internalBlockToDeallocNSManagedObjectContext_block_invoke;
      aBlock[3] = &unk_1E6EC26D8;
      v19 = v9;
      aBlock[4] = dispatchQueue;
      aBlock[5] = self;
      v14 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
      *v14 = _Block_copy(aBlock);
      v14[1] = self;
      v14[2] = 12289;
      v14[3] = 0;
      dispatch_async_f(dispatchQueue, v14, developerSubmittedBlockToNSManagedObjectContextPerform);
    }
  }

  else
  {

    [(NSManagedObjectContext *)self _dealloc__];
  }
}

- (void)_dealloc__
{
  if (!self)
  {
    return;
  }

  if (!*(self + 168))
  {
    *(self + 168) = PF_CALLOC_OBJECT_ARRAY(22);
    if (!*(self + 136))
    {
      v2 = 0x1E696AE68;
      if (_PF_Threading_Debugging_level <= 0)
      {
        v2 = off_1E6EC0C58;
      }

      *(self + 136) = objc_alloc_init(*v2);
    }

    if (!_PF_Threading_Debugging_level)
    {
      goto LABEL_11;
    }

    v12 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v12 = malloc_default_zone();
    }

    *(*(self + 168) + 56) = malloc_type_zone_malloc(v12, 0x30uLL, 0x80040B8603338uLL);
    v13 = pthread_self();
    **(*(self + 168) + 56) = v13;
    *(*(*(self + 168) + 56) + 8) = v13;
    *(*(*(self + 168) + 56) + 16) = 0;
    *(*(*(self + 168) + 56) + 24) = 0;
    *(*(*(self + 168) + 56) + 32) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(*(*(self + 168) + 56) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = atomic_load((self + 49));
    if ((v14 & 1) == 0)
    {
      currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
      if ([currentQueue maxConcurrentOperationCount] == 1)
      {
        v16 = currentQueue;
      }

      else
      {
        v16 = 0;
      }

      *(*(*(self + 168) + 56) + 16) = v16;
      current_queue = dispatch_get_current_queue();
      if (current_queue == dispatch_get_global_queue(0, 0))
      {
        v18 = 0;
      }

      else
      {
        v18 = current_queue;
      }

      *(*(*(self + 168) + 56) + 24) = v18;
    }
  }

  if (_PF_Threading_Debugging_level)
  {
    *(*(*(self + 168) + 56) + 8) = pthread_self();
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, sel__dealloc__);
    }
  }

LABEL_11:
  v3 = *(self + 24);
  if (!v3 || (v4 = atomic_load((self + 49)), (v4 & 1) != 0))
  {
    [(_PFManagedObjectReferenceQueue *)*(self + 152) _unregisterRunloopObservers];
  }

  if ((*(self + 41) & 4) != 0)
  {
    [self willChangeValueForKey:@"hasChanges"];
    *(self + 40) &= ~0x400u;
    [self didChangeValueForKey:@"hasChanges"];
  }

  if (*(self + 16))
  {
    v5 = *(self + 168);
    if (v5)
    {
      if (v5[7])
      {
        PF_FREE_OBJECT_ARRAY(v5[7]);
        *(*(self + 168) + 56) = 0;
        v5 = *(self + 168);
      }

      PF_FREE_OBJECT_ARRAY(v5);
      *(self + 168) = 0;
    }

    v6 = *(self + 136);
    if (v6)
    {

      *(self + 136) = 0;
    }
  }

  else
  {
    *(self + 16) = 1;
    if (*(self + 168))
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [(NSManagedObjectContext *)self _stopObservingUndoManagerNotifications];

      *(*(self + 168) + 40) = 0;
      persistentStoreCoordinator = [self persistentStoreCoordinator];
      if (persistentStoreCoordinator)
      {
        [defaultCenter removeObserver:self name:@"_NSPersistentStoreCoordinatorStoresDidChangePrivateNotification" object:persistentStoreCoordinator];
      }

      if ((*(self + 42) & 0x40) != 0 && *(self + 32))
      {
        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }
    }

    v9 = *(*(self + 168) + 72);
    if (v9)
    {

      *(*(self + 168) + 72) = 0;
    }

    Count = _PFCMT_GetCount(*(self + 120));
    if (v3 || Count < 0x12C)
    {
      [NSManagedObjectContext _dispose:self];
      if (!v3)
      {

        _PFDeallocateObject(self);
      }
    }

    else
    {
      v11 = [[_PFTask alloc] initWithFunction:_deallocateContextBackgroundThread withArgument:self andPriority:0];
      if (v11)
      {
      }
    }
  }
}

- (void)_stopObservingUndoManagerNotifications
{
  if (*(result[21] + 40))
  {
    v1 = result;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:v1 name:*MEMORY[0x1E696AA10] object:*(v1[21] + 40)];
    v3 = *(v1[21] + 40);

    return [v3 removeAllActionsWithTarget:v1];
  }

  return result;
}

- (void)processPendingChanges
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self _processRecentChanges:?];
}

+ (void)initialize
{
  objc_opt_self();
  objc_opt_class();
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    objc_opt_self();
    qword_1ED4BEA30 = @"ImplicitObservation";
    objc_opt_class();
    _PF_Threading_Debugging_level = [_PFRoutines integerValueForOverride:?];
    if (byte_1ED4BEEC7 == 1)
    {
      v3 = getprogname();
      if (!strcmp("MobileNotes", v3))
      {
        _PF_Threading_Debugging_level = 1;
      }
    }

    v4 = [_PFRoutines stringValueForOverride:?];
    if ([v4 length])
    {
      intValue = [v4 intValue];
    }

    else
    {
      intValue = -1;
    }

    v6 = [_PFRoutines stringValueForOverride:?];
    if ([v6 length])
    {
      intValue2 = [v6 intValue];
    }

    else
    {
      intValue2 = -1;
    }

    if ((intValue & 0x80000000) == 0)
    {
      _pflogging_enable_oslog = intValue;
    }

    if ((intValue2 & 0x80000000) == 0)
    {
      _pflogging_enable_stderr = intValue2;
    }

    byte_1ED4BEA2A = HIBYTE(dword_1ED4BEEC0);
    _PF_shouldAsyncProcessReferenceQueue = BYTE2(dword_1ED4BEEC0);
    _MergedGlobals_73 = dword_1ED4BEEC8;
    byte_1ED4BEA29 = [_PFRoutines insecureBoolValueForOverride:?];
    v8 = getprogname();
    if (v8)
    {
      v9 = v8;
      if (*v8)
      {
        if (!strncmp("CommCenter", v8, 0xAuLL))
        {
          _PF_Threading_Debugging_level = 0;
        }

        if (!strncmp("SpringBoard", v9, 0xBuLL))
        {
          _PF_Threading_Debugging_level = 0;
        }

        if (_PF_USE_IOS_PLATFORM == 1 && !strncmp("News", v9, 4uLL))
        {
          byte_1ED4BEA2B = 1;
        }

        if (!strncmp("assetsd", v9, 7uLL) || !strncmp("photolibraryd", v9, 0xDuLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 1;
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("xctest", v9, 6uLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 1;
          byte_1ED4BEA2A = 1;
        }

        if (!strncmp("accountsd", v9, 9uLL))
        {
          _PF_shouldAsyncProcessReferenceQueue = 0;
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("CalendarAgent", v9, 0xDuLL))
        {
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("soagent", v9, 7uLL))
        {
          byte_1ED4BEA2C = 1;
        }

        if (!strncmp("Music", v9, 5uLL))
        {
          byte_1ED4BEA2A = 0;
          _MergedGlobals_73 = 0;
        }

        if (!strncmp("Radio", v9, 5uLL))
        {
          byte_1ED4BEA2A = 0;
          _MergedGlobals_73 = 0;
        }

        if (!strncmp("Podcasts", v9, 8uLL))
        {
          _MergedGlobals_73 = 0;
        }
      }
    }

    if (!byte_1ED4BEA2A)
    {
      _MergedGlobals_73 = 0;
    }

    if (_PF_Threading_Debugging_level >= 1)
    {
      v10 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Core Data multi-threading assertions enabled.\n", buf, 2u);
          }
        }

        else
        {
          v12 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Core Data multi-threading assertions enabled.\n", v14, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v13 = 1;
      }

      else
      {
        v13 = 4;
      }

      _NSCoreDataLog_console(v13, "Core Data multi-threading assertions enabled.");
      objc_autoreleasePoolPop(v10);
    }
  }
}

- (NSManagedObjectContext)init
{
  objc_opt_class();

  return [(NSManagedObjectContext *)self initWithConcurrencyType:0];
}

- (BOOL)automaticallyMergesChangesFromParent
{
  if (self->_dispatchQueue)
  {
    return (*(&self->_flags + 2) >> 6) & 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (NSManagedObjectContext)parentContext
{
  v2 = atomic_load(&self->_isParentStoreContext);
  if (v2)
  {
    return self->_parentObjectStore;
  }

  else
  {
    return 0;
  }
}

id __46__NSManagedObjectContext_queryGenerationToken__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queryGenerationToken];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSQueryGenerationToken)queryGenerationToken
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__13;
  v16 = __Block_byref_object_dispose__13;
  v17 = 0;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __46__NSManagedObjectContext_queryGenerationToken__block_invoke;
  v9 = &unk_1E6EC1860;
  selfCopy = self;
  v11 = &v12;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:&v6];
  }

  else
  {
    *(v11[1] + 40) = [(NSManagedObjectContext *)self _queryGenerationToken:v6];
  }

  _isEnabled = [v13[5] _isEnabled];
  v3 = v13[5];
  if ((_isEnabled & 1) == 0)
  {

    v3 = 0;
    v13[5] = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  return v4;
}

- (id)mergePolicy
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(self->_additionalPrivateIvars + 3);
}

- (id)description
{
  v3 = [self->_additionalPrivateIvars[21] copy];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0x1E696AEC0];
    v9.receiver = self;
    v9.super_class = NSManagedObjectContext;
    v6 = [(NSManagedObjectContext *)&v9 description];
    return objc_msgSend_stringWithFormat_(v5, v6, v4);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NSManagedObjectContext;
    return [(NSManagedObjectContext *)&v8 description];
  }
}

- (void)rollback
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  propagatesDeletesAtEndOfEvent = [(NSManagedObjectContext *)self propagatesDeletesAtEndOfEvent];
  [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:0];
  [(NSManagedObjectContext *)self processPendingChanges];

  *self->_additionalPrivateIvars = 0;
  if ([(NSMutableSet *)self->_changedObjects count]|| [(NSMutableSet *)self->_insertedObjects count]|| [(NSMutableSet *)self->_deletedObjects count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_changedObjects];
    [v6 unionSet:self->_deletedObjects];
    v7 = [v6 count];
    v8 = v7;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    if (v7 >= 0x201)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v11 = v26 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7 >= 0x201)
    {
      v11 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v26 - ((8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v9);
    }

    [v6 getObjects:v11];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v13 = *&v11[8 * i];
        v14 = [(NSManagedObjectContext *)self _committedSnapshotForObject:v13];
        if (v14)
        {
          [(NSManagedObject *)v13 _updateFromSnapshot:v14];
          [v13 awakeFromSnapshotEvents:16];
        }
      }

      if (v8 >= 0x201)
      {
        NSZoneFree(0, v11);
      }
    }

    allObjects = [(NSMutableSet *)self->_changedObjects allObjects];
    allObjects2 = [(NSMutableSet *)self->_insertedObjects allObjects];
    v17 = [allObjects2 count];
    if (v17)
    {
      for (j = 0; j != v17; ++j)
      {
        -[NSManagedObjectContext deleteObject:](self, "deleteObject:", [allObjects2 objectAtIndex:j]);
      }
    }

    allObjects3 = [(NSMutableSet *)self->_deletedObjects allObjects];
    v20 = [allObjects3 count];
    if (v20)
    {
      for (k = 0; k != v20; ++k)
      {
        -[NSManagedObjectContext insertObject:](self, "insertObject:", [allObjects3 objectAtIndex:k]);
      }
    }

    if ([allObjects count])
    {
      v22 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects];
      [v5 setObject:v22 forKey:@"updated"];
    }

    if ([allObjects2 count])
    {
      v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects2];
      [v5 setObject:v23 forKey:@"deleted"];
    }

    if ([allObjects3 count])
    {
      v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:allObjects3];
      [v5 setObject:v24 forKey:@"inserted"];
    }

    v25 = 0;
    if ([v5 count])
    {
      if (byte_1ED4BEEC6 == 1)
      {
        [v5 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{self), @"managedObjectContext"}];
      }

      [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v5];
    }

    [v4 drain];
    [(NSManagedObjectContext *)self processPendingChanges];
    [(NSManagedObjectContext *)&self->super.isa _resetAllChanges];
    [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:propagatesDeletesAtEndOfEvent];
  }

  else
  {

    [(NSManagedObjectContext *)self setPropagatesDeletesAtEndOfEvent:propagatesDeletesAtEndOfEvent];
  }
}

- (BOOL)propagatesDeletesAtEndOfEvent
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*&self->_flags >> 1) & 1;
}

- (NSString)transactionAuthor
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = 0;
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __43__NSManagedObjectContext_transactionAuthor__block_invoke;
  v7 = &unk_1E6EC1860;
  selfCopy = self;
  v9 = &v10;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:&v4];
  }

  else
  {
    *(v9[1] + 40) = [self->_additionalPrivateIvars[16] copy];
  }

  v2 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v2;
}

void *__43__NSManagedObjectContext_transactionAuthor__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 168) + 128) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)unlock
{
  if (!self->_dispatchQueue)
  {
    lockCount = self->_lockCount;
    if (lockCount >= 1)
    {
      self->_lockCount = --lockCount;
    }

    if (_PF_Threading_Debugging_level)
    {
      v3 = *(self->_additionalPrivateIvars + 7);
      if (v3)
      {
        v4 = lockCount == 0;
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        v3[1] = *v3;
      }
    }

    [self->_lock unlock];
  }
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__NSManagedObjectContext_name__block_invoke;
    v5[3] = &unk_1E6EC1860;
    v5[4] = self;
    v5[5] = &v6;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
    v2 = v7[5];
  }

  else
  {
    v2 = [self->_additionalPrivateIvars[21] copy];
    v7[5] = v2;
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__30__NSManagedObjectContext_name__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 168) + 168) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)tryLock
{
  if (self->_dispatchQueue)
  {
    v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = v3;
      while (v6 != self)
      {
        if (v6 == v4)
        {
          goto LABEL_14;
        }

        if (!v4)
        {
          v4 = v6;
        }

        v6 = atomic_load((v6 + 8));
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      v5 = 1;
LABEL_14:
      if (v5)
      {
        LOBYTE(tryLock) = 1;
        goto LABEL_28;
      }

LABEL_16:
      v8 = 0;
      v9 = 0;
      selfCopy = self;
      do
      {
        v11 = selfCopy == v3;
        if (selfCopy == v3)
        {
          v9 = 1;
        }

        if (selfCopy == v8)
        {
          v11 = 1;
        }

        if (v11)
        {
          break;
        }

        if (!v8)
        {
          v8 = selfCopy;
        }

        selfCopy = atomic_load(&selfCopy->_queueOwner);
      }

      while (selfCopy);
      if (v9)
      {
        LOBYTE(tryLock) = v11;
      }

      else
      {
        LOBYTE(tryLock) = 0;
      }
    }

    else
    {
      LOBYTE(tryLock) = 0;
    }

LABEL_28:
    v12 = atomic_load(&self->_isMainThreadBlessed);
    if (v12)
    {
      v13 = atomic_load(&self->_isMainThreadBlessed);
      if ((v13 & 1) == 0 || !_PFIsSerializedWithMainQueue())
      {
        LOBYTE(tryLock) = 0;
        return tryLock;
      }

      goto LABEL_31;
    }
  }

  else
  {
    tryLock = [self->_lock tryLock];
    if (tryLock)
    {
      [(NSManagedObjectContext *)self lock];
      [self->_lock unlock];
LABEL_31:
      LOBYTE(tryLock) = 1;
    }
  }

  return tryLock;
}

- (void)lock
{
  if (!self->_dispatchQueue)
  {
    [self->_lock lock];
    ++self->_lockCount;
    if (!self->_dispatchQueue)
    {
      v3 = atomic_load(&self->_isMainThreadBlessed);
      if ((v3 & 1) != 0 && !pthread_main_np())
      {
        [(_PFManagedObjectReferenceQueue *)self->_referenceQueue _unregisterRunloopObservers];
        atomic_store(0, &self->_isMainThreadBlessed);
      }
    }

    if (_PF_Threading_Debugging_level)
    {
      if (*(self->_additionalPrivateIvars + 7))
      {
        *(*(self->_additionalPrivateIvars + 7) + 8) = pthread_self();
      }
    }
  }
}

- (NSSet)insertedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedInserts, "count") + -[NSMutableSet count](self->_insertedObjects, "count")}];
  [v3 setSet:self->_insertedObjects];
  [v3 unionSet:self->_unprocessedInserts];

  return v3;
}

- (NSSet)updatedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedChanges, "count") + -[NSMutableSet count](self->_changedObjects, "count")}];
  [v3 setSet:self->_changedObjects];
  [v3 unionSet:self->_unprocessedChanges];

  return v3;
}

- (NSSet)deletedObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableSet count](self->_unprocessedDeletes, "count") + -[NSMutableSet count](self->_deletedObjects, "count")}];
  [v3 setSet:self->_deletedObjects];
  [v3 unionSet:self->_unprocessedDeletes];

  return v3;
}

- (void)refreshAllObjects
{
  v14 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  registeredObjects = [(NSManagedObjectContext *)self registeredObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(registeredObjects);
        }

        -[NSManagedObjectContext refreshObject:mergeChanges:](self, "refreshObject:mergeChanges:", *(*(&v9 + 1) + 8 * v8), [*(*(&v9 + 1) + 8 * v8) hasChanges]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSManagedObjectContext *)self processPendingChanges];
  [v3 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];
}

- (void)_retainedRegisteredObjects
{
  selfCopy = self;
  v8[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [(NSManagedObjectContext *)self _processReferenceQueue:?];
    Count = _PFCMT_GetCount(selfCopy[15]);
    v3 = Count;
    if (Count <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = Count;
    }

    if (Count >= 0x201)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    v6 = (v8 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (Count > 0x200)
    {
      v6 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v8 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v4);
    }

    selfCopy = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v6 count:{-[_PFContextMapTable getAllObjects:](selfCopy[15], v6)}];
    if (v3 >= 0x201)
    {
      NSZoneFree(0, v6);
    }
  }

  return selfCopy;
}

- (NSSet)registeredObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  _retainedRegisteredObjects = [(NSManagedObjectContext *)self _retainedRegisteredObjects];

  return _retainedRegisteredObjects;
}

void __33__NSManagedObjectContext_dealloc__block_invoke(uint64_t a1)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  v3 = *(a1 + 32);

  malloc_zone_free(v2, v3);
}

- (id)databaseStatistics
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = [self->_additionalPrivateIvars[20] copy];

  return v3;
}

- (BOOL)trackSQLiteDatabaseStatistics
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 3) >> 5) & 1;
}

- (void)_processReferenceQueue:(uint64_t)result
{
  if (!result)
  {
    return;
  }

  v2 = a2;
  if (_PF_Threading_Debugging_level)
  {
    if ((a2 & 1) == 0)
    {
      _PFAssertSafeMultiThreadedAccess_impl(result, sel__processReferenceQueue_);
LABEL_4:
      if ((*(result + 42) & 2) != 0)
      {
        return;
      }
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(result + 152);

  [(_PFManagedObjectReferenceQueue *)v4 _processReferenceQueue:v2];
}

- (void)setPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
  if (persistentStoreCoordinator)
  {
    parentObjectStore = self->_parentObjectStore;
    if (parentObjectStore != persistentStoreCoordinator)
    {
      if (parentObjectStore)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context already has a coordinator;  cannot replace." userInfo:0]);
      }

      if (self->_dispatchQueue)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __56__NSManagedObjectContext_setPersistentStoreCoordinator___block_invoke;
        v6[3] = &unk_1E6EC1600;
        v6[4] = self;
        v6[5] = persistentStoreCoordinator;
        [(NSManagedObjectContext *)self performBlockAndWait:v6];
      }

      else
      {
        if (_PF_Threading_Debugging_level)
        {
          v4 = persistentStoreCoordinator;
          selfCopy = self;
          _PFAssertSafeMultiThreadedAccess_impl(self, a2);
          persistentStoreCoordinator = v4;
          self = selfCopy;
        }

        [(NSManagedObjectContext *)self _setPersistentStoreCoordinator:?];
      }
    }
  }
}

- (void)_setPersistentStoreCoordinator:(void *)result
{
  if (result)
  {
    v3 = result;
    result[4] = cf;
    if (cf)
    {
      CFRetain(cf);
      [(_PFContextMapTable *)*(v3 + 120) setForUseWithCoordinator:?];
      result = [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:?];
      v4 = *(cf + 12);
      if (v4)
      {
        v4 = *(v4 + 48);
      }
    }

    else
    {
      [(_PFContextMapTable *)result[15] setForUseWithCoordinator:?];
      result = [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:?];
      v4 = 0;
    }

    *(*(v3 + 168) + 80) = v4;
  }

  return result;
}

- (void)_setRetainsRegisteredObjects:(uint64_t)objects
{
  if (objects)
  {
    if (_PFCMT_GetCount(*(objects + 120)))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"An NSManagedObjectContext's retain policy cannot be changed while it has registered objects.  Trying using reset() first." userInfo:0]);
    }

    if (((((*(objects + 40) & 0x40) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 64;
      }

      else
      {
        v4 = 0;
      }

      *(objects + 40) = *(objects + 40) & 0xFFFFFFBF | v4;
      CFRelease(*(objects + 120));
      v5 = [[_PFContextMapTable alloc] initWithWeaksReferences:?];
      *(objects + 120) = v5;
      -[_PFContextMapTable setForUseWithCoordinator:](v5, [objects persistentStoreCoordinator]);
      CFRetain(*(objects + 120));
      v6 = *(objects + 120);
    }
  }
}

- (void)setRetainsRegisteredObjects:(BOOL)retainsRegisteredObjects
{
  v3 = retainsRegisteredObjects;
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__NSManagedObjectContext_setRetainsRegisteredObjects___block_invoke;
    v5[3] = &unk_1E6EC2770;
    v5[4] = self;
    v6 = retainsRegisteredObjects;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    [(NSManagedObjectContext *)self _setRetainsRegisteredObjects:v3];
  }
}

- (BOOL)retainsRegisteredObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*&self->_flags >> 6) & 1;
}

- (void)setShouldDeleteInaccessibleFaults:(BOOL)shouldDeleteInaccessibleFaults
{
  v3 = shouldDeleteInaccessibleFaults;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__NSManagedObjectContext_setShouldDeleteInaccessibleFaults___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    v7 = shouldDeleteInaccessibleFaults;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (v3)
    {
      v5 = 0x80000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFF7FFFF | v5);
  }
}

- (BOOL)shouldDeleteInaccessibleFaults
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 2) >> 3) & 1;
}

- (void)setMergePolicy:(id)mergePolicy
{
  if (self->_dispatchQueue)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__NSManagedObjectContext_setMergePolicy___block_invoke;
    v9[3] = &unk_1E6EC1600;
    v9[4] = mergePolicy;
    v9[5] = self;
    [(NSManagedObjectContext *)self performBlockAndWait:v9];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    v5 = *(self->_additionalPrivateIvars + 3);
    if (v5 != mergePolicy)
    {

      v6 = NSErrorMergePolicy;
      if (mergePolicy)
      {
        v6 = mergePolicy;
      }

      *(self->_additionalPrivateIvars + 3) = v6;
      v7 = *(self->_additionalPrivateIvars + 3);

      v8 = v7;
    }
  }
}

void *__41__NSManagedObjectContext_setMergePolicy___block_invoke(void *result)
{
  v2 = *(*(result[5] + 168) + 24);
  if (result[4] != v2)
  {
    v3 = result;

    v4 = NSErrorMergePolicy;
    if (v3[4])
    {
      v4 = v3[4];
    }

    *(*(v3[5] + 168) + 24) = v4;
    v5 = *(*(v3[5] + 168) + 24);

    return v5;
  }

  return result;
}

- (void)_postObjectsDidChangeNotificationWithUserInfo:(void *)result
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = [a2 mutableCopy];
    if (byte_1ED4BEEC6)
    {
      [v4 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v3), @"managedObjectContext"}];
    }

    for (i = 0; i != 4; ++i)
    {
      v6 = [a2 objectForKey:off_1E6EC24D8[i]];
      if ([v6 count])
      {
        v7 = [_PFRoutines newSetOfObjectIDsFromCollection:v6];
        [v4 setObject:v7 forKey:off_1E6EC24F8[i]];
      }
    }

    v8 = [v4 copy];

    v9 = [a2 mutableCopy];
    [v9 removeObjectForKey:@"refreshed_objectIDs"];
    v10 = [v9 copy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_NSObjectsChangedInManagingContextPrivateNotification" object:v3 userInfo:v8];
    [defaultCenter postNotificationName:@"NSObjectsChangedInManagingContextNotification" object:v3 userInfo:v10];
    result = [NSManagedObject instancesRespondToSelector:sel__willChange_Swift_Trampoline];
    if (result)
    {
      for (j = 0; j != 4; ++j)
      {
        v13 = [a2 objectForKey:off_1E6EC24D8[j]];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (k = 0; k != v15; ++k)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * k);
              if ([v18 bindableObjectPublisher])
              {
                [v18 _willChange_Swift_Trampoline];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v19 = [a2 objectForKey:@"refreshed"];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      result = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (result)
      {
        v20 = result;
        v21 = *v25;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v24 + 1) + 8 * v22);
            if ([v23 bindableObjectPublisher])
            {
              [v23 _willChange_Swift_Trampoline];
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          result = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
          v20 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (uint64_t)_dispose:(uint64_t)result
{
  v39 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  [*(result + 136) lock];
  ++*(v1 + 52);
  *(v1 + 16) = 1;
  if (_PF_Threading_Debugging_level && *(*(v1 + 168) + 56))
  {
    *(*(*(v1 + 168) + 56) + 8) = pthread_self();
  }

  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = CFGetRetainCount(v2) != 1;
  }

  else
  {
    v3 = 1;
  }

  ++*(v1 + 46);
  [(_PFManagedObjectReferenceQueue *)*(v1 + 152) _unregisterRunloopObservers];
  Count = _PFCMT_GetCount(*(v1 + 120));
  v35[1] = v35;
  v5 = MEMORY[0x1EEE9AC00](Count);
  v8 = (v35 - v7);
  if (v5 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v35 - v7, 8 * v6);
  }

  v9 = [(_PFContextMapTable *)*(v1 + 120) getAllObjects:v8];
  [(NSManagedObjectContext *)v1 lockObjectStore];
  v36 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v37 = v8;
  callBacks = *byte_1EF3F0BE8;
  if (!v3)
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_13:
    v11 = v37;
    do
    {
      v12 = *v11;
      objectID = [*v11 objectID];
      v14 = !v3;
      if (!v12)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0 && (*(v12 + 17) & 2) != 0)
      {
        v15 = objectID;
        if (([objectID isTemporaryID] & 1) == 0)
        {
          CFArrayAppendValue(v10, v15);
          v12[4] &= ~0x200u;
        }
      }

      v16 = v12[4];
      v17 = v16 & 0xFFFFFFC0;
      v12[4] = v16 & 0xFFFFFFC0;
      v18 = (v16 >> 15) & 7;
      if (v18 == 5 || v18 == 0)
      {
        [(NSFaultHandler *)_insertion_fault_handler turnObject:v12 intoFaultWithContext:0];
        v17 = v12[4];
      }

      *(v12 + 4) = 0;
      v12[4] = v17 | 0x80080;
      ++v11;
      --v9;
    }

    while (v9);
    goto LABEL_27;
  }

  v10 = CFArrayCreateMutable(*MEMORY[0x1E695E480], v9, &callBacks);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_27:
  if (v3 && CFArrayGetCount(v10) >= 1)
  {
    [*(v1 + 32) managedObjectContextDidUnregisterObjectsWithIDs:v10 generation:{objc_msgSend(v1, "_queryGenerationToken")}];
  }

  if (v10)
  {
    CFRelease(v10);
  }

  [(_PFManagedObjectReferenceQueue *)*(v1 + 152) _processReferenceQueue:?];
  if (Count >= 0x201)
  {
    NSZoneFree(0, v37);
  }

  v20 = *(v1 + 152);
  if (v20)
  {
    *(v20 + 20) = -1;
    os_unfair_lock_lock_with_options();
    *(v20 + 24) = 0;
    os_unfair_lock_unlock((v20 + 12));
    [(_PFManagedObjectReferenceQueue *)v20 _unregisterRunloopObservers];
    [(_PFManagedObjectReferenceQueue *)v20 _processReferenceQueue:?];
    CFRelease(v20);
  }

  [(NSManagedObjectContext *)v1 unlockObjectStore];
  v21 = *(v1 + 152);
  if (v21)
  {
    CFRelease(v21);
    *(v1 + 152) = 0;
  }

  *(v1 + 16) = 1;
  v22 = *(v1 + 120);
  *(v1 + 120) = 0;
  *(v1 + 40) = *(v1 + 40) & 0xFFFFF8BF | 0x40;
  __dmb(0xBu);
  if (v22)
  {
    CFRelease(v22);
  }

  *(v1 + 72) = 0;
  *(v1 + 64) = 0;

  *(v1 + 56) = 0;
  *(v1 + 80) = 0;

  *(v1 + 88) = 0;
  *(v1 + 96) = 0;

  *(v1 + 104) = 0;
  *(v1 + 112) = 0;

  *(*(v1 + 168) + 24) = 0;
  *(*(v1 + 168) + 96) = 0;

  *(*(v1 + 168) + 120) = 0;
  *(*(v1 + 168) + 128) = 0;

  *(*(v1 + 168) + 88) = 0;
  *(*(v1 + 168) + 104) = 0;
  v23 = *(v1 + 128);
  if (v23)
  {
    v24 = *(*(v1 + 168) + 80);
    if (v24)
    {
      v25 = 0;
      v26 = 2 * v24;
      do
      {

        v25 += 2;
      }

      while (v25 < v26);
      v23 = *(v1 + 128);
    }

    PF_FREE_OBJECT_ARRAY(v23);
  }

  *(v1 + 128) = 0;

  *(*(v1 + 168) + 32) = 0;
  *(*(v1 + 168) + 16) = 0;

  *(*(v1 + 168) + 48) = 0;
  **(v1 + 168) = 0;

  *(*(v1 + 168) + 136) = 0;
  *(*(v1 + 168) + 144) = 0;

  *(*(v1 + 168) + 112) = 0;
  *(*(v1 + 168) + 152) = 0;

  *(*(v1 + 168) + 160) = 0;
  v27 = *(v1 + 168);
  v28 = *(v27 + 8);
  if (v28)
  {

    PF_FREE_OBJECT_ARRAY(*(*(v1 + 168) + 8));
    *(*(v1 + 168) + 8) = 0;
    v27 = *(v1 + 168);
  }

  v29 = *(v27 + 56);
  if (v29)
  {

    *(*(*(v1 + 168) + 56) + 32) = 85;
    *(*(*(v1 + 168) + 56) + 40) = 85;
    v30 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v30 = malloc_default_zone();
    }

    malloc_zone_free(v30, *(*(v1 + 168) + 56));
    *(*(v1 + 168) + 56) = 0;
    v27 = *(v1 + 168);
  }

  *(*(v1 + 168) + 168) = @"deallocated NSManagedObjectContext";
  PF_FREE_OBJECT_ARRAY(*(v1 + 168));
  *(v1 + 168) = 0;
  [*(v1 + 136) unlock];
  v31 = *(v1 + 24);
  if (v31)
  {
    dispatch_release(v31);
  }

  *(v1 + 24) = 0;
  do
  {
    v32 = atomic_load((v1 + 8));
  }

  while (!_PF_actor_set_owner(v32, v1, 0));
  v33 = *(v1 + 136);
  if (v33)
  {
    CFRelease(v33);
  }

  *(v1 + 136) = 0;
  v34 = *(v1 + 32);
  if (v34)
  {
    CFRelease(v34);
  }

  *(v1 + 32) = 0;
  return MEMORY[0x1865FAAD0]();
}

- (void)setStalenessInterval:(NSTimeInterval)stalenessInterval
{
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__NSManagedObjectContext_setStalenessInterval___block_invoke;
    v5[3] = &unk_1E6EC2720;
    v5[4] = self;
    *&v5[5] = stalenessInterval;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    self->_fetchTimestamp = stalenessInterval;
  }
}

double __47__NSManagedObjectContext_setStalenessInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 144) = result;
  return result;
}

- (void)_setUndoManager:(void *)manager
{
  if (manager)
  {
    if (*(manager[21] + 40) != a2)
    {
      [(NSManagedObjectContext *)manager _stopObservingUndoManagerNotifications];

      *(manager[21] + 40) = a2;
      if (a2)
      {
        v4 = a2;

        [(NSManagedObjectContext *)manager _startObservingUndoManagerNotifications];
      }
    }
  }
}

- (void)_startObservingUndoManagerNotifications
{
  if (*(result[21] + 40))
  {
    v1 = result;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v3 = *MEMORY[0x1E696AA10];
    v4 = *(v1[21] + 40);

    return [defaultCenter addObserver:v1 selector:sel__undoManagerCheckpoint_ name:v3 object:v4];
  }

  return result;
}

- (void)setUndoManager:(NSUndoManager *)undoManager
{
  if (self->_dispatchQueue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __41__NSManagedObjectContext_setUndoManager___block_invoke;
    v5[3] = &unk_1E6EC1600;
    v5[4] = self;
    v5[5] = undoManager;
    [(NSManagedObjectContext *)self performBlockAndWait:v5];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    [(NSManagedObjectContext *)self _setUndoManager:?];
  }
}

- (NSUndoManager)undoManager
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(self->_additionalPrivateIvars + 5);
}

- (uint64_t)_processRecentChanges:(uint64_t)changes
{
  v125 = *MEMORY[0x1E69E9840];
  if (!changes)
  {
    v4 = 0;
    return v4 & 1;
  }

  changesCopy = changes;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(changes, sel__processRecentChanges_);
  }

  v3 = *(changesCopy + 40);
  if ((v3 & 8) != 0)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x100) == 0)
  {
    [(NSManagedObjectContext *)changesCopy _postRefreshedObjectsNotificationAndClearList];
    [(NSManagedObjectContext *)changesCopy _processReferenceQueue:?];
LABEL_7:
    v4 = 1;
    return v4 & 1;
  }

  v75 = 0;
  v85 = 0;
  *(changesCopy + 40) = v3 | 0x808;
  v98 = 0;
  v73 = *(MEMORY[0x1E695E9F8] + 8);
  v74 = *MEMORY[0x1E695E9F8];
  v71 = *(MEMORY[0x1E695E9F8] + 24);
  v72 = *(MEMORY[0x1E695E9F8] + 16);
  v4 = 1;
  allocator = *MEMORY[0x1E695E480];
  v78 = changesCopy;
  while (1)
  {
    v5 = [*(changesCopy + 56) count];
    v6 = [*(changesCopy + 72) count];
    if (!(v6 + v5 + [*(changesCopy + 64) count]))
    {
      break;
    }

    if (!v75)
    {
      v75 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    }

    callBacks.version = v74;
    callBacks.retain = v73;
    callBacks.release = v72;
    callBacks.copyDescription = v71;
    callBacks.equal = 0;
    callBacks.hash = 0;
    v7 = CFSetCreateMutable(allocator, 0, &callBacks);
    v8 = CFSetCreateMutable(allocator, 0, &callBacks);
    v9 = CFSetCreateMutable(allocator, 0, &callBacks);
    v10 = CFSetCreateMutable(allocator, 0, &callBacks);
    v11 = CFSetCreateMutable(allocator, 0, &callBacks);
    [(NSManagedObjectContext *)v78 _registerClearStateWithUndoManager];
    v83 = v11;
    v84 = v7;
    v81 = v9;
    v82 = v8;
    v80 = v10;
    changesCopy = v78;
    if ((*(v78 + 40) & 2) != 0)
    {
      if ([*(v78 + 64) count] || objc_msgSend(*(v78 + 88), "count"))
      {
        v111.version = v74;
        v111.retain = v73;
        v111.release = v72;
        v111.copyDescription = v71;
        v111.equal = 0;
        v111.hash = 0;
        changesCopy = v78;
        v12 = CFSetCreateMutable(allocator, 0, &v111);
        if ([*(v78 + 64) count])
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v13 = *(v78 + 64);
          v14 = [v13 countByEnumeratingWithState:&v107 objects:v123 count:16];
          if (v14)
          {
            v15 = *v108;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v108 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                [(__CFSet *)v12 addObject:*(*(&v107 + 1) + 8 * i)];
              }

              v14 = [v13 countByEnumeratingWithState:&v107 objects:v123 count:16];
            }

            while (v14);
          }
        }

        if ([*(v78 + 56) count])
        {
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v17 = *(v78 + 56);
          v18 = [v17 countByEnumeratingWithState:&v103 objects:v122 count:16];
          if (v18)
          {
            v19 = *v104;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v104 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v103 + 1) + 8 * j);
                if (v21 && (*(v21 + 16) & 0x20) != 0)
                {
                  [(__CFSet *)v12 addObject:?];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v103 objects:v122 count:16];
            }

            while (v18);
          }
        }

        if ([*(v78 + 112) count])
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v22 = *(v78 + 112);
          v23 = [v22 countByEnumeratingWithState:&v99 objects:v121 count:16];
          if (v23)
          {
            v24 = *v100;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v100 != v24)
                {
                  objc_enumerationMutation(v22);
                }

                v26 = [v78 objectRegisteredForID:*(*(&v99 + 1) + 8 * k)];
                if (v26 && (*(v26 + 16) & 0x20) != 0)
                {
                  [(__CFSet *)v12 addObject:v26];
                }
              }

              v23 = [v22 countByEnumeratingWithState:&v99 objects:v121 count:16];
            }

            while (v23);
          }
        }

        v27 = atomic_load((v78 + 48));
        if ((v27 & 1) == 0 && [v78 persistentStoreCoordinator] && -[__CFSet count](v12, "count"))
        {
          v28 = [_PFRoutines createDictionaryPartitioningObjectsByEntity:v12];
          v29 = objc_alloc_init(NSFetchRequest);
          [(NSFetchRequest *)v29 setResultType:0];
          [(NSFetchRequest *)v29 setIncludesPendingChanges:0];
          [(NSFetchRequest *)v29 setIncludesSubentities:0];
          v116.version = MEMORY[0x1E69E9820];
          v116.retain = 3221225472;
          v116.release = __92__NSManagedObjectContext__NSInternalChangeProcessing___prefetchObjectsForDeletePropagation___block_invoke;
          v116.copyDescription = &unk_1E6EC24B8;
          v116.equal = v29;
          v116.hash = v78;
          [(__CFDictionary *)v28 enumerateKeysAndObjectsUsingBlock:&v116];
          CFRelease(v28);
        }

        if ([(__CFSet *)v12 count])
        {
          v30 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          ++*(v78 + 46);
          *(v78 + 40) |= 0x1000u;
          v116.version = v74;
          v116.retain = v73;
          v116.release = v72;
          v116.copyDescription = v71;
          v116.equal = 0;
          v116.hash = 0;
          v31 = CFSetCreateMutable(allocator, 0, &v116);
          v32 = [(__CFSet *)v12 mutableCopy];
          v33 = 0;
          while ([v32 count])
          {
            [*(v78 + 64) removeAllObjects];
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v34 = [v32 countByEnumeratingWithState:&v112 objects:v124 count:16];
            if (v34)
            {
              v35 = *v113;
              do
              {
                for (m = 0; m != v34; ++m)
                {
                  if (*v113 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v112 + 1) + 8 * m);
                  [(__CFSet *)v31 addObject:v37];
                  if (v37)
                  {
                    [(NSManagedObject *)v37 _propagateDelete:?];
                  }
                }

                v34 = [v32 countByEnumeratingWithState:&v112 objects:v124 count:16];
              }

              while (v34);
            }

            if (v33 < 0x1E)
            {
              ++v33;
            }

            else
            {
              if ([*(v78 + 64) isSubsetOfSet:v31])
              {
                break;
              }

              v33 = 0;
            }

            v32 = [*(v78 + 64) mutableCopy];
          }

          *(v78 + 64) = v31;
          *(v78 + 40) &= ~0x1000u;
          --*(v78 + 46);
          [v30 drain];
        }

        if (a2)
        {
          v76 = [(NSManagedObjectContext *)v78 _validateObjects:2 forOperation:&v98 error:(*(v78 + 40) >> 2) & 1 exhaustive:0 forSave:?];
        }

        else
        {
          v76 = 1;
        }
      }

      else
      {
        v76 = 1;
        changesCopy = v78;
      }
    }

    else
    {
      v76 = 1;
    }

    v38 = [NSManagedObjectContext _processPendingDeletions:changesCopy withInsertions:v82 withUpdates:v80 withNewlyForgottenList:v83 withRemovedChangedObjects:?];
    v39 = [NSManagedObjectContext _processPendingInsertions:changesCopy withDeletions:v84 withUpdates:v81];
    v40 = [(NSManagedObjectContext *)changesCopy _processPendingUpdates:v81];
    if (v40)
    {
      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v40 withObjects:0 withExtraArguments:?];
    }

    if (v39)
    {
      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v39 withObjects:0 withExtraArguments:?];
    }

    if (v38)
    {
      v41 = [v38 count];
      v77 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v42 = [(__CFSet *)v83 count];
      if (v42)
      {
        v79 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      }

      else
      {
        v79 = 0;
      }

      v43 = objc_alloc(MEMORY[0x1E695DEC8]);
      if (v79)
      {
        v44 = v79;
      }

      else
      {
        v44 = NSKeyValueCoding_NullValue;
      }

      v45 = [v43 initWithObjects:{v44, 0}];

      [v77 addObject:v45];
      v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v41];
      [v77 addObject:v46];

      if (*(*(changesCopy + 168) + 40) && v41)
      {
        for (n = 0; n != v41; ++n)
        {
          v48 = [v38 objectAtIndex:n];
          v49 = v48;
          if (v48 && (v50 = [(NSManagedObject *)v48 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?]) != 0)
          {
            [v46 addObject:v50];
          }

          else
          {
            [v46 addObject:NSKeyValueCoding_NullValue];
            v50 = 0;
          }

          if (v42)
          {
            v51 = [(__CFSet *)v83 member:v49];
            v52 = &NSKeyValueCoding_NullValue;
            if (v51)
            {
              v52 = &NSArray_EmptyArray;
            }

            [v79 addObject:*v52];
          }
        }
      }

      [(NSManagedObjectContext *)changesCopy _registerUndoForOperation:v38 withObjects:v77 withExtraArguments:?];
    }

    if (([*(*(changesCopy + 168) + 40) groupsByEvent] & 1) == 0)
    {
      if (([*(*(changesCopy + 168) + 40) isUndoing] & 1) == 0 && (objc_msgSend(*(*(changesCopy + 168) + 40), "isRedoing") & 1) == 0)
      {
        [*(*(changesCopy + 168) + 40) endUndoGrouping];
      }

      *(changesCopy + 40) &= ~0x20u;
    }

    [*(changesCopy + 72) removeAllObjects];
    [*(changesCopy + 64) removeAllObjects];
    [*(changesCopy + 56) removeAllObjects];
    v53 = [*(changesCopy + 112) copy];
    [*(changesCopy + 112) removeAllObjects];
    if ((v85 & 1) == 0)
    {
      *(changesCopy + 40) &= 0xFFFFF6F6;
    }

    v54 = *(changesCopy + 168);
    v55 = *(v54 + 88);
    if (v55)
    {
      *(v54 + 88) = 0;
      v54 = *(changesCopy + 168);
    }

    [(NSManagedObjectContext *)changesCopy _createAndPostChangeNotification:v84 deletions:v82 updates:v81 refreshes:v53 deferrals:v55 wasMerge:*(v54 + 104) != 0];
    [(NSManagedObjectContext *)changesCopy _processRecentlyForgottenObjects:v80];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v56 = [v40 countByEnumeratingWithState:&v94 objects:v119 count:16];
    if (v56)
    {
      v57 = *v95;
      do
      {
        for (ii = 0; ii != v56; ++ii)
        {
          if (*v95 != v57)
          {
            objc_enumerationMutation(v40);
          }

          [(NSManagedObject *)*(*(&v94 + 1) + 8 * ii) _nilOutReservedCurrentEventSnapshot__];
        }

        v56 = [v40 countByEnumeratingWithState:&v94 objects:v119 count:16];
      }

      while (v56);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v59 = [v39 countByEnumeratingWithState:&v90 objects:v118 count:16];
    if (v59)
    {
      v60 = *v91;
      do
      {
        for (jj = 0; jj != v59; ++jj)
        {
          if (*v91 != v60)
          {
            objc_enumerationMutation(v39);
          }

          [(NSManagedObject *)*(*(&v90 + 1) + 8 * jj) _nilOutReservedCurrentEventSnapshot__];
        }

        v59 = [v39 countByEnumeratingWithState:&v90 objects:v118 count:16];
      }

      while (v59);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v62 = [v38 countByEnumeratingWithState:&v86 objects:v117 count:16];
    if (v62)
    {
      v63 = *v87;
      do
      {
        for (kk = 0; kk != v62; ++kk)
        {
          if (*v87 != v63)
          {
            objc_enumerationMutation(v38);
          }

          [(NSManagedObject *)*(*(&v86 + 1) + 8 * kk) _nilOutReservedCurrentEventSnapshot__];
        }

        v62 = [v38 countByEnumeratingWithState:&v86 objects:v117 count:16];
      }

      while (v62);
    }

    v85 = 1;
    v4 = v76;
  }

  if ([*(changesCopy + 112) count])
  {
    if (!v75)
    {
      v75 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    }

    [(NSManagedObjectContext *)changesCopy _postRefreshedObjectsNotificationAndClearList];
  }

  if ((v85 & 1) == 0)
  {
    *(changesCopy + 40) &= 0xFFFFF6F6;
  }

  v65 = v98;
  [v75 drain];
  v66 = v98;
  if (a2 && v98)
  {
    *a2 = v98;
  }

  v67 = 0;
  [(NSManagedObjectContext *)changesCopy _processReferenceQueue:?];
  return v4 & 1;
}

- (void)assignObject:(id)object toPersistentStore:(NSPersistentStore *)store
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    if (!object)
    {
      return;
    }
  }

  else if (!object)
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = @"Parameter #1 to -assignObject:toPersistentStore: must be an NSManagedObject or subclass.";
    v13 = 0;
    goto LABEL_18;
  }

  objectID = [object objectID];
  if (![objectID isTemporaryID])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSPersistentStore URL](store, "URL"), @"newStoreURL", objc_msgSend(objc_msgSend(objectID, "persistentStore"), "URL"), @"originalStoreURL", objectID, @"objectID", 0}];
    v12 = @"Can't reassign an object to a different store once it has been saved.";
LABEL_17:
    v10 = v14;
    v11 = v15;
LABEL_18:
    objc_exception_throw([v10 exceptionWithName:v11 reason:v12 userInfo:v13]);
  }

  persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
  if (persistentStoreCoordinator)
  {
    modelMap = persistentStoreCoordinator->_modelMap;
  }

  else
  {
    modelMap = 0;
  }

  if (![-[_PFModelMap entitiesForContext:configuration:](modelMap self])
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSPersistentStore URL](store, "URL"), @"storeURL", objc_msgSend(objc_msgSend(objectID, "entity"), "name"), @"entityName", objectID, @"objectID", 0}];
    v12 = @"Can't assign an object to a store that does not contain the object's entity.";
    goto LABEL_17;
  }

  [objectID _setPersistentStore:store];
}

- (void)setPropagatesDeletesAtEndOfEvent:(BOOL)propagatesDeletesAtEndOfEvent
{
  v3 = propagatesDeletesAtEndOfEvent;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__NSManagedObjectContext_setPropagatesDeletesAtEndOfEvent___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    v7 = propagatesDeletesAtEndOfEvent;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFFFFFFFD | v5);
  }
}

- (NSManagedObject)objectRegisteredForID:(NSManagedObjectID *)objectID
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, objectID);
  if (!Value)
  {
    persistentStore = [(NSManagedObjectID *)objectID persistentStore];
    _persistentStoreCoordinator = [(NSPersistentStore *)persistentStore _persistentStoreCoordinator];
    persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
    _isPersistentStoreAlive = [(NSManagedObjectID *)objectID _isPersistentStoreAlive];
    if ((_persistentStoreCoordinator != persistentStoreCoordinator || !_isPersistentStoreAlive) && (persistentStore || ![(NSManagedObjectID *)objectID isTemporaryID]))
    {
      v10 = objc_autoreleasePoolPush();
      uRIRepresentation = [(NSManagedObjectID *)objectID URIRepresentation];
      if ([(NSPersistentStoreCoordinator *)persistentStoreCoordinator _persistentStoreForIdentifier:?])
      {
        v12 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:uRIRepresentation error:0];
        v13 = v12;
        if (v12)
        {
          Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v12);
LABEL_14:

          objc_autoreleasePoolPop(v10);
          return Value;
        }
      }

      else
      {
        v12 = 0;
      }

      Value = 0;
      goto LABEL_14;
    }

    return 0;
  }

  return Value;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (qword_1ED4BEA30 == context && (!self || self->_ignoreChangeNotification <= 0) && (*(object + 17) & 0x20) == 0)
  {
    entity = [object entity];
    v12 = entity;
    if (entity)
    {
      v13 = [objc_msgSend(entity "propertiesByName")];
    }

    else
    {
      v13 = 0;
    }

    if ([v13 _propertyType] != 4)
    {
      v13 = 0;
    }

    if (v13)
    {
      inverseRelationship = [v13 inverseRelationship];
    }

    else
    {
      inverseRelationship = 0;
    }

    if ([v13 _isToManyRelationship] && (v15 = objc_msgSend(v13, "_entitysReferenceID"), v16 = _kvcPropertysPrimitiveGetters(v12), (Property = _PF_Handler_Public_GetProperty(object, v15, keyPath, *(v16 + 8 * v15))) != 0) && ((v18 = Property, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v18, "_shouldProcessKVOChange") & 1) == 0)
    {

      _PFFastMOCObjectWillChange(self, object);
    }

    else
    {

      [object _didChangeValue:change forRelationship:v13 named:keyPath withInverse:inverseRelationship];
    }
  }
}

- (void)insertObject:(NSManagedObject *)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  entity = [(NSManagedObject *)object entity];
  if (!entity)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"An NSManagedObject must have a valid NSEntityDescription.";
    goto LABEL_16;
  }

  v6 = entity;
  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    managedObjectModel = [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel];
    name = [(NSEntityDescription *)v6 name];
    if ((!managedObjectModel || ![(NSMutableDictionary *)managedObjectModel->_entities objectForKey:name]) && ![(NSManagedObjectContext *)self _allowAncillaryEntities])
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
      v16 = MEMORY[0x1E696AEC0];
      if ([(NSEntityDescription *)v6 name])
      {
        name2 = [(NSEntityDescription *)v6 name];
      }

      else
      {
        name2 = [MEMORY[0x1E695DFB0] null];
      }

      v13 = objc_msgSend_stringWithFormat_(v16, name2);
      v11 = v14;
      v12 = v15;
LABEL_16:
      objc_exception_throw([v11 exceptionWithName:v12 reason:v13 userInfo:0]);
    }
  }

  objectID = [(NSManagedObject *)object objectID];
  if (objectID)
  {
    [(NSManagedObjectContext *)self _insertObjectWithGlobalID:objectID globalID:?];
    if (object)
    {
LABEL_10:
      object->_cd_stateFlags |= 0x1000u;
      [(NSManagedObject *)object awakeFromInsert];
      object->_cd_stateFlags &= ~0x1000u;
      return;
    }
  }

  else
  {
    v10 = [[NSTemporaryObjectID alloc] initWithEntity:[(NSManagedObject *)object entity]];
    [(NSManagedObjectContext *)self _insertObjectWithGlobalID:v10 globalID:?];

    if (object)
    {
      goto LABEL_10;
    }
  }

  [0 awakeFromInsert];
}

- (__int16)_insertObjectWithGlobalID:(void *)d globalID:
{
  if (result)
  {
    if (!a2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"attempt to insert a null object into this context" userInfo:0]);
    }

    v5 = result;
    [(NSManagedObjectContext *)result _registerClearStateWithUndoManager];
    v6 = *(a2 + 16);
    if ((v6 & 0x80) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 32);
    }

    if (v7 != v5)
    {
      [(NSManagedObjectContext *)v5 _registerObject:a2 withID:d];
      v6 = *(a2 + 16);
    }

    *(a2 + 16) = v6 | 2;
    _PFFaultHandlerFulfillFault(0, a2, v5, 0, 1);
    [(NSManagedObjectContext *)v5 _establishEventSnapshotsForObject:a2];
    v8 = *(v5 + 10);
    if ((v8 & 0x200) != 0 && (v8 & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      v8 = *(v5 + 10);
    }

    *(v5 + 10) = v8 | 0x100;
    [*(v5 + 9) addObject:a2];
    [(NSManagedObjectContext *)v5 _enqueueEndOfEventNotification];
    if ((*(v5 + 41) & 4) == 0)
    {
      [v5 willChangeValueForKey:@"hasChanges"];
      *(v5 + 10) |= 0x400u;
      [v5 didChangeValueForKey:@"hasChanges"];
    }

    result = **(v5 + 21);
    if (result)
    {

      return [result removeObject:d];
    }
  }

  return result;
}

- (void)deleteObject:(NSManagedObject *)object
{
  if (!_PF_Threading_Debugging_level)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_16:
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"-deleteObject: requires a non-nil argument";
LABEL_17:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!object)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((object->_cd_stateFlags & 0x80) != 0)
  {
    if (self)
    {
      return;
    }

    goto LABEL_9;
  }

  cd_managedObjectContext = object->_cd_managedObjectContext;
  if (cd_managedObjectContext == self)
  {
LABEL_9:
    [(NSManagedObjectContext *)self _registerClearStateWithUndoManager];
    object->_cd_stateFlags |= 4u;
    [(NSManagedObjectContext *)self _establishEventSnapshotsForObject:?];
    flags = self->_flags;
    if ((*&flags & 0x200) != 0 && (*&flags & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      flags = self->_flags;
    }

    self->_flags = (*&flags | 0x100);
    [(NSMutableSet *)self->_unprocessedDeletes addObject:object];
    [(NSManagedObjectContext *)self _enqueueEndOfEventNotification];
    if ((*(&self->_flags + 1) & 4) == 0)
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"hasChanges"];
      *&self->_flags |= 0x400u;
      [(NSManagedObjectContext *)self didChangeValueForKey:@"hasChanges"];
    }

    [(NSManagedObject *)object prepareForDeletion];
    return;
  }

  if (cd_managedObjectContext)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"An NSManagedObjectContext cannot delete objects in other contexts.";
    goto LABEL_17;
  }
}

- (void)_establishEventSnapshotsForObject:(uint64_t)object
{
  if (!object)
  {
    return;
  }

  if (!_PF_Threading_Debugging_level)
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    v4 = 0;
    goto LABEL_9;
  }

  _PFAssertSafeMultiThreadedAccess_impl(object, sel__establishEventSnapshotsForObject_);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  v3 = a2[6];
  if (v3 && *(v3 + 8))
  {
    if (*(v3 + 16))
    {
      return;
    }

LABEL_17:
    v6 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
LABEL_18:
    v7 = v6;
    [(NSManagedObject *)a2 _setLastSnapshot__:v6];

    return;
  }

  v4 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
LABEL_9:
  [(NSManagedObject *)a2 _setOriginalSnapshot__:v4];

  if (a2)
  {
    v5 = a2[6];
    if (v5 && *(v5 + 16))
    {
      return;
    }

    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else if (!v4)
  {
    v6 = 0;
    goto LABEL_18;
  }

  [(NSManagedObject *)a2 _setLastSnapshot__:v4];
}

- (void)_prepareUnprocessedDeletionAfterRefresh:(_DWORD *)result
{
  if (result && [a2 isDeleted])
  {
    v3 = result[10];
    if ((v3 & 0x200) != 0 && (v3 & 0x100) == 0)
    {
      _PFFaultLogExcessivePrepareForPendingChangesAttempts();
      v3 = result[10];
    }

    result[10] = v3 | 0x100;
    if ((v3 & 0x400) == 0)
    {
      [result willChangeValueForKey:@"hasChanges"];
      result[10] |= 0x400u;

      [result didChangeValueForKey:@"hasChanges"];
    }
  }
}

- (BOOL)obtainPermanentIDsForObjects:(NSArray *)objects error:(NSError *)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (!self->_parentObjectStore)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context does not have a coordinator;  cannot obtain permenant ids without a coordinator." userInfo:0]);
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (!v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(NSArray *)objects countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(objects);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          if ([v13[5] isTemporaryID] && objc_msgSend(v13, "managedObjectContext") == self && (objc_msgSend(v13, "isDeleted") & 1) == 0)
          {
            [v9 addObject:v13];
          }
        }

        v10 = [(NSArray *)objects countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if (![v9 count])
    {

      return 1;
    }

    v20 = 0;
    v14 = atomic_load(&self->_isParentStoreContext);
    if (v14)
    {
      [(NSManagedObjectContext *)self lockObjectStore];
      v8 = [self->_parentObjectStore _parentObtainPermanentIDsForObjects:v9 context:self error:error];
      [(NSManagedObjectContext *)self unlockObjectStore];

      return v8;
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
    [(NSManagedObjectContext *)self lockObjectStore];
    v8 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator obtainPermanentIDsForObjects:v9 error:&v20];
    [(NSManagedObjectContext *)self unlockObjectStore];

    v17 = v20;
    [v15 drain];
    if (!v20)
    {
      return v8;
    }

    v18 = v20;
    if (error)
    {
      *error = v20;
    }

    return 0;
  }

  if (!error)
  {
    return 0;
  }

  v8 = 0;
  *error = v7;
  return v8;
}

- (uint64_t)_handleError:(uint64_t *)error withError:
{
  if (self)
  {
    [NSManagedObjectContext _handleError:a2 withError:error];
  }

  return 0;
}

- (void)_thereIsNoSadnessLikeTheDeathOfOptimism
{
  objc_opt_class();
  v2 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v3 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v5 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = buf;
        goto LABEL_7;
      }
    }

    else if (v5)
    {
      LOWORD(v7) = 0;
      v6 = &v7;
LABEL_7:
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: Unable to recover from optimistic locking failure.\n\n", v6, 2u);
    }
  }

  _NSCoreDataLog_console(1, "fatal: Unable to recover from optimistic locking failure.\n", v7);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

- (void)_youcreatedanNSManagedObjectContextOnthemainthreadandillegallypassedittoabackgroundthread
{
  objc_opt_class();
  v2 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v3 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v5 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        v6 = buf;
        goto LABEL_7;
      }
    }

    else if (v5)
    {
      LOWORD(v7) = 0;
      v6 = &v7;
LABEL_7:
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: This NSManagedObjectContext was created on the main thread and illegally passed to a background thread.\n\n", v6, 2u);
    }
  }

  _NSCoreDataLog_console(1, "fatal: This NSManagedObjectContext was created on the main thread and illegally passed to a background thread.\n", v7);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

- (void)_generateOptLockExceptionForConstraintFailure:(void *)result
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    if ([a2 code] == 1551)
    {
      v3 = [objc_msgSend(a2 "userInfo")];
      v4 = *MEMORY[0x1E695D930];
      v11 = @"conflictList";
      v12 = v3;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      v6 = @"constraint validation failure";
      v7 = _NSCoreDataOptimisticLockingException;
      v8 = v4;
    }

    else
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v13 = *MEMORY[0x1E696AA08];
      v14[0] = a2;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v6 = @"Attempting to generate a constraint exception for non constraint error.";
      v7 = v9;
      v8 = v10;
    }

    return [(__objc2_class *)v7 exceptionWithName:v8 reason:v6 userInfo:v5];
  }

  return result;
}

- (void)_advanceQueryGenerationForSave
{
  if (self)
  {
    v2 = [self _retainedCurrentQueryGeneration:self[20]];
    if (v2)
    {
      [self _setQueryGenerationFromToken:v2 error:0];
      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v3 & 1) == 0)
    {
      [self _setQueryGenerationFromToken:+[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken error:{"unpinnedQueryGenerationToken"), 0}];
    }
  }
}

- (BOOL)save:(NSError *)error
{
  v63[2] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if ((*&self->_flags & 0x4080) != 0)
  {
    if (error)
    {
      v62[0] = @"message";
      v62[1] = @"stack trace";
      v63[0] = @"attempt to recursively call -save: on the context aborted";
      v63[1] = [MEMORY[0x1E696AF00] callStackSymbols];
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:132001 userInfo:v5];
LABEL_9:
      v8 = 0;
      *error = v6;
      return v8 & 1;
    }

    goto LABEL_10;
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v6 = v7;
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    return v8 & 1;
  }

  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  v60 = 0;
  flags = self->_flags;
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v12 = atomic_load(&self->_isParentStoreContext);
  if ((v12 & 1) == 0)
  {
    [self->_additionalPrivateIvars[12] _isEnabled];
  }

  *&self->_flags |= 0x4000u;
  v51 = v11;
  v52 = error;
  v50 = flags;
  [(NSManagedObjectContext *)self _processRecentChanges:?];
  v13 = self->_flags;
  if ((*&v13 & 0x10000) != 0)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v13 = self->_flags;
  }

  if (error)
  {
    v13 = (*&v13 | 4);
    self->_flags = v13;
    error = &v60;
  }

  self->_flags = (*&v13 | 0x80);
  if ([(NSManagedObjectContext *)self _prepareForPushChanges:?])
  {
    ++self->_ignoreChangeNotification;
    _newSaveRequestForCurrentState = [(NSManagedObjectContext *)self _newSaveRequestForCurrentState];
    v54 = 0;
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = v15;
      if ((v15 & 1) == 0)
      {
LABEL_65:
        v8 = v16 ^ 1;
        v41 = 1;
        goto LABEL_66;
      }

      v60 = 0;
      if ((v14 & 1) == 0)
      {
        [(NSManagedObjectContext *)self lockObjectStore];
      }

      v17 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      ++v54;
      if ([(NSManagedObjectContext *)self _allowAncillaryEntities])
      {
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        persistentStoreCoordinator = [(NSManagedObjectContext *)self persistentStoreCoordinator];
        if (persistentStoreCoordinator && (modelMap = persistentStoreCoordinator->_modelMap) != 0)
        {
          models = modelMap->_models;
        }

        else
        {
          models = 0;
        }

        v21 = [(NSArray *)models countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v21)
        {
          v22 = *v57;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v57 != v22)
              {
                objc_enumerationMutation(models);
              }

              if (([(NSManagedObjectModel *)*(*(&v56 + 1) + 8 * i) _hasEntityWithUniquenessConstraints]& 1) != 0)
              {
                hasEntityWithUniqueness = 1;
                goto LABEL_39;
              }
            }

            v21 = [(NSArray *)models countByEnumeratingWithState:&v56 objects:v61 count:16];
            hasEntityWithUniqueness = 0;
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          hasEntityWithUniqueness = 0;
        }
      }

      else
      {
        hasEntityWithUniqueness = [(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel] _hasEntityWithUniquenessConstraints];
      }

LABEL_39:
      if ([(NSMutableSet *)self->_insertedObjects count])
      {
        if (hasEntityWithUniqueness)
        {
          goto LABEL_43;
        }
      }

      else if ((([(NSMutableSet *)self->_changedObjects count]!= 0) & hasEntityWithUniqueness) != 0)
      {
LABEL_43:
        v25 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:self->_insertedObjects];
        [v25 unionSet:self->_changedObjects];
        allObjects = [v25 allObjects];

        if ((*(&self->_flags + 2) & 0x80) == 0)
        {
          v27 = *(self->_additionalPrivateIvars + 9);
          if (!v27)
          {
            v27 = [[NSConstraintValidator alloc] initWithManagedObjectContext:?];
            *(self->_additionalPrivateIvars + 9) = v27;
          }

          [(NSConstraintValidator *)v27 registerObjects:allObjects];
          validateForSave = [(NSConstraintValidator *)v27 validateForSave];
          [(NSConstraintValidator *)v27 reset];
          if (validateForSave)
          {
            v40 = [(NSManagedObjectContext *)self _generateOptLockExceptionForConstraintFailure:validateForSave];
            objc_exception_throw(v40);
          }
        }
      }

      v15 = 1;
      if ([self->_parentObjectStore executeRequest:_newSaveRequestForCurrentState withContext:self error:&v60])
      {
        parentObjectStore = self->_parentObjectStore;
        allObjects2 = [(NSMutableSet *)self->_insertedObjects allObjects];
        if ([allObjects2 count])
        {
          v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects2, "count")}];
          v32 = [allObjects2 count];
          if (v32)
          {
            for (j = 0; j != v32; ++j)
            {
              v34 = [allObjects2 objectAtIndex:j];
              objectID = [v34 objectID];
              if (([objectID isTemporaryID] & 1) == 0)
              {
                [v31 addObject:objectID];
                if (v34)
                {
                  v34[4] |= 0x200u;
                }
              }
            }
          }

          [parentObjectStore managedObjectContextDidRegisterObjectsWithIDs:v31 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
        }

        [(NSManagedObjectContext *)self unlockObjectStore];
        v15 = 0;
        v36 = 0;
        v14 = 0;
      }

      else
      {
        v36 = 1;
        v14 = 1;
      }

      v37 = v60;
      [v17 drain];
      v38 = 0;
      v39 = v60;
      if ((v36 | 8) == 8)
      {
        v36 = 0;
      }

      if (v36)
      {
        goto LABEL_65;
      }
    }
  }

  v8 = 0;
  v41 = 0;
  v14 = 0;
  _newSaveRequestForCurrentState = 0;
LABEL_66:
  v42 = v60;

  [v51 drain];
  if (v60)
  {
    v43 = v60;
    if (v52)
    {
      *v52 = v60;
    }
  }

  if (v14)
  {
    [(NSManagedObjectContext *)self unlockObjectStore];
  }

  v44 = self->_flags;
  self->_flags = (*&v44 & 0xFEFFBF77);
  if (v41)
  {
    --self->_ignoreChangeNotification;
  }

  self->_flags = (*&v44 & 0xFEFFBF73 | v50 & 4);
  if (v8)
  {
    v45 = v60;
    v46 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [(NSManagedObjectContext *)self _didSaveChanges];
    if ((*(&self->_flags + 3) & 2) != 0)
    {
      [(NSManagedObjectContext *)self refreshAllObjects];
    }

    [v46 drain];
    [(NSManagedObjectContext *)self _processReferenceQueue:?];
    v47 = v60;
    v48 = *(self->_additionalPrivateIvars + 12);
    if ([(NSQueryGenerationToken *)v48 _isEnabled]&& v48 != +[NSQueryGenerationToken currentQueryGenerationToken])
    {
      v49 = v48;
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __31__NSManagedObjectContext_save___block_invoke;
      v55[3] = &unk_1E6EC1600;
      v55[4] = self;
      v55[5] = v48;
      [_PFAutoreleasePoolThunk thunkWithBlock:v55];
    }

    if (self->_dispatchQueue)
    {
      [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
    }
  }

  return v8 & 1;
}

- (uint64_t)_prepareForPushChanges:(uint64_t)changes
{
  if (!changes)
  {
    return 0;
  }

  [changes discardEditing];
  v4 = *(changes + 40);
  if (((v4 >> 1) & 1) == 0)
  {
    *(changes + 40) = v4 | 2;
  }

  v5 = (v4 >> 1) & 1;
  if (([(NSManagedObjectContext *)changes _processRecentChanges:a2]& 1) == 0)
  {
    v14 = 0;
    *(changes + 40) = *(changes + 40) & 0xFFFFFDF5 | (2 * v5);
    return v14;
  }

  [*(*(changes + 168) + 40) disableUndoRegistration];
  v6 = 0;
  v7 = 1;
  while (!v6 || [(NSManagedObjectContext *)changes _processRecentChanges:a2])
  {
    v8 = *(changes + 40);
    *(changes + 40) = v8 | 8;
    v9 = (v8 >> 2) & 1;
    v16 = 0;
    if ([(NSManagedObjectContext *)changes _validateObjects:2 forOperation:&v16 error:v9 exhaustive:1 forSave:?])
    {
      v10 = [(NSManagedObjectContext *)changes _validateObjects:0 forOperation:&v16 error:(v8 >> 2) & 1 exhaustive:1 forSave:?];
      if ((v8 & 4) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      if ((v8 & 4) == 0)
      {
LABEL_12:
        if (!v10)
        {
          goto LABEL_20;
        }
      }
    }

    if ([*(changes + 96) count])
    {
      if ([*(changes + 88) count] || objc_msgSend(*(changes + 80), "count"))
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(changes + 96)];
        [v11 minusSet:*(changes + 88)];
        [v11 minusSet:*(changes + 80)];
      }

      else
      {
        v11 = *(changes + 96);
        v13 = v11;
      }

      if (v10)
      {
        v10 = [(NSManagedObjectContext *)changes _validateObjects:v11 forOperation:1 error:&v16 exhaustive:v9 forSave:1];
      }
    }

LABEL_20:
    if (a2 && (v10 & 1) == 0)
    {
      *a2 = v16;
    }

    if (!v10)
    {
      break;
    }

    v12 = *(changes + 40);
    *(changes + 40) = v12 & 0xFFFFFDFF | ((v7 == 998) << 9);
    if (v7 == 1000)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed to process pending changes before save.  The context is still dirty after 1000 attempts.  Typically this recursive dirtying is caused by a bad validation method userInfo:{-willSave, or notification handler.", 0}]);
    }

    *(changes + 40) = v12 & 0xFFFFFDF7 | ((v7 == 998) << 9);
    --v6;
    ++v7;
    if ((v12 & 0x100) == 0)
    {
      v14 = 1;
      goto LABEL_30;
    }
  }

  v14 = 0;
LABEL_30:
  [*(*(changes + 168) + 40) enableUndoRegistration];
  *(changes + 40) = *(changes + 40) & 0xFFFFFDF5 | (2 * v5);
  return v14;
}

void __31__NSManagedObjectContext_save___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3[21] + 96) == v2)
  {
    [v3 _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
    v2 = *(a1 + 40);
  }
}

- (NSManagedObject)objectWithID:(NSManagedObjectID *)objectID
{
  v3 = objectID;
  if (!_PF_Threading_Debugging_level)
  {
    if (objectID)
    {
      goto LABEL_3;
    }

LABEL_16:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid object ID" userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v5 = atomic_load(&self->_isParentStoreContext);
  if ((v5 & 1) == 0)
  {
    return _PFRetainedObjectIDCore(self, v3, 0, 1);
  }

  Value = [(NSManagedObjectContext *)self objectRegisteredForID:v3];
  if (!Value)
  {
    if ([(NSManagedObjectID *)v3 isTemporaryID])
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3052000000;
      v16 = __Block_byref_object_copy__13;
      v17 = __Block_byref_object_dispose__13;
      v18 = 0;
      [(NSManagedObjectContext *)self lockObjectStore];
      parentObjectStore = self->_parentObjectStore;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __39__NSManagedObjectContext_objectWithID___block_invoke;
      v12[3] = &unk_1E6EC23C8;
      v12[5] = v3;
      v12[6] = &v13;
      v12[4] = self;
      _perform(parentObjectStore, v12);
      [(NSManagedObjectContext *)self unlockObjectStore];
      if (v14[5])
      {
        v3 = v14[5];
      }

      goto LABEL_12;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__13;
    v17 = __Block_byref_object_dispose__13;
    v18 = 0;
    [(NSManagedObjectContext *)self lockObjectStore];
    v8 = self->_parentObjectStore;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__NSManagedObjectContext_objectWithID___block_invoke_2;
    v11[3] = &unk_1E6EC23C8;
    v11[5] = v3;
    v11[6] = &v13;
    v11[4] = self;
    _perform(v8, v11);
    [(NSManagedObjectContext *)self unlockObjectStore];
    v9 = v14[5];
    if (!v9 || (Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v9)) == 0)
    {
LABEL_12:
      _Block_object_dispose(&v13, 8);
      return _PFRetainedObjectIDCore(self, v3, 0, 1);
    }

    _Block_object_dispose(&v13, 8);
  }

  return Value;
}

void *__39__NSManagedObjectContext_objectWithID___block_invoke(void *result)
{
  v1 = *(*(*(result[4] + 32) + 168) + 8);
  if (v1)
  {
    v2 = result;
    result = [*v1 objectForKey:result[5]];
    *(*(v2[6] + 8) + 40) = result;
  }

  return result;
}

void *__39__NSManagedObjectContext_objectWithID___block_invoke_2(void *result)
{
  v1 = *(*(*(result[4] + 32) + 168) + 8);
  if (v1)
  {
    v2 = result;
    result = [*(v1 + 8) objectForKey:result[5]];
    *(*(v2[6] + 8) + 40) = result;
  }

  return result;
}

- (NSManagedObject)existingObjectWithID:(NSManagedObjectID *)objectID error:(NSError *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!_PF_Threading_Debugging_level)
  {
    if (objectID)
    {
      goto LABEL_3;
    }

LABEL_29:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"nil is not a valid object ID" userInfo:0]);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  if (!objectID)
  {
    goto LABEL_29;
  }

LABEL_3:
  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v8 = v7;
LABEL_16:
      v10 = 0;
      *error = v8;
      return v10;
    }

    return 0;
  }

  if (![(NSManagedObjectID *)objectID isTemporaryID])
  {
    v16 = _PFRetainedObjectIDCore(self, objectID, error, 0);
    if (v16)
    {
      v17 = v16;
      v22 = 0;
      v10 = [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v16 withContext:self error:&v22];
      if (v10 == v17)
      {
        v18 = v17;
      }

      else
      {
      }

      if (v22)
      {
        if (error)
        {
          v10 = 0;
          *error = v22;
          return v10;
        }
      }

      else
      {
        if (v10)
        {
          return v10;
        }

        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = objectID;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: existingObjectWithID incorrectly returned nil without an error set for objectID %@\n", buf, 0xCu);
        }

        v20 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v26 = objectID;
          _os_log_fault_impl(&dword_18565F000, v20, OS_LOG_TYPE_FAULT, "CoreData: existingObjectWithID incorrectly returned nil without an error set for objectID %@", buf, 0xCu);
        }
      }

      return 0;
    }

    if (!error)
    {
      return 0;
    }

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A250];
    v23 = @"objectID";
    v24 = objectID;
    v13 = MEMORY[0x1E695DF20];
    v14 = &v24;
    v15 = &v23;
LABEL_15:
    v8 = [v11 errorWithDomain:v12 code:133000 userInfo:{objc_msgSend(v13, "dictionaryWithObjects:forKeys:count:", v14, v15, 1)}];
    goto LABEL_16;
  }

  v9 = [(NSManagedObjectContext *)self objectRegisteredForID:objectID];
  v10 = v9;
  if (error && !v9)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A250];
    v27 = @"objectID";
    v28[0] = objectID;
    v13 = MEMORY[0x1E695DF20];
    v14 = v28;
    v15 = &v27;
    goto LABEL_15;
  }

  return v10;
}

- (uint64_t)_checkObjectForExistenceAndCacheRow:(uint64_t)row
{
  objectID = [a2 objectID];
  v5 = *(a2 + 16);
  if ([objectID isTemporaryID])
  {
    if (!*(a2 + 32) || (v6 = atomic_load((row + 48)), (v6 & 1) == 0))
    {
      v12 = 0;
      [row stalenessInterval];
      return [a2 isFault];
    }
  }

  v12 = 0;
  [row stalenessInterval];
  if ((v5 & 0x12) != 0)
  {
    return [a2 isFault];
  }

  v9 = v7;
  *(row + 144) = 0;
  [(NSManagedObjectContext *)row lockObjectStore];
  v10 = [*(row + 32) newValuesForObjectWithID:objectID withContext:row error:&v12];
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(row + 144) = v9;

  [(NSManagedObjectContext *)row unlockObjectStore];
  return v8;
}

- (NSPersistentStoreResult)executeRequest:(NSPersistentStoreRequest *)request error:(NSError *)error
{
  v91 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v7 = *(self->_additionalPrivateIvars + 19);
  if (v7)
  {
    if (error)
    {
      v8 = v7;
LABEL_6:
      v9 = 0;
LABEL_7:
      *error = v8;
      return v9;
    }

    return 0;
  }

  requestType = [(NSPersistentStoreRequest *)request requestType];
  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  if (objc_opt_respondsToSelector())
  {
    [(NSPersistentStoreRequest *)request _resolveEntityWithContext:self];
  }

  if (requestType == NSSaveRequestType)
  {
    if (error)
    {
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435058];
      goto LABEL_6;
    }

    return 0;
  }

  if (requestType != NSFetchRequestType)
  {
    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (_PF_Threading_Debugging_level)
      {
        _PFAssertSafeMultiThreadedAccess_impl(self, sel__executeAsynchronousFetchRequest_);
      }

      fetchRequest = [(NSPersistentStoreRequest *)request fetchRequest];
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = &v77;
      v77 = 0;
      [fetchRequest _resolveEntityWithContext:self];
      if ([fetchRequest entity])
      {
        if (self->_dispatchQueue)
        {
          resultType = [fetchRequest resultType];
          if (resultType == 4)
          {
            v18 = [(NSManagedObjectContext *)self countForFetchRequest:fetchRequest error:v74[3]];
            if (v18 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v9 = 0;
            }

            else
            {
              v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v18];
              v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v47];
            }
          }

          else
          {
            v37 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            if (-[NSManagedObjectContext hasChanges](self, "hasChanges") && ((v38 = [fetchRequest includesPendingChanges], resultType != 2) ? (v39 = v38) : (v39 = 0), v39 == 1))
            {
              if (![(NSManagedObjectContext *)self _attemptCoalesceChangesForFetch])
              {
                [(NSManagedObjectContext *)self _processRecentChanges:?];
              }

              v40 = 1;
            }

            else
            {
              v40 = 0;
            }

            v41 = [(NSManagedObjectContext *)&self->super.isa _createStoreFetchRequestForFetchRequest:fetchRequest];
            v72[0] = 0;
            v72[1] = v72;
            v72[2] = 0x3052000000;
            v72[3] = __Block_byref_object_copy__13;
            v72[4] = __Block_byref_object_dispose__13;
            v72[5] = 0;
            v42 = [v41 resultType] == 0;
            includesPropertyValues = [v41 includesPropertyValues];
            v71[0] = 0;
            v71[1] = v71;
            v71[2] = 0x3052000000;
            v71[3] = __Block_byref_object_copy__13;
            v71[4] = __Block_byref_object_dispose__13;
            v71[5] = 0;
            [v37 drain];
            currentProgress = [MEMORY[0x1E696AE38] currentProgress];
            if (currentProgress && (currentProgress = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:currentProgress userInfo:0]) != 0)
            {
              if ([(NSPersistentStoreRequest *)request estimatedResultCount]< 1)
              {
                estimatedResultCount = -1;
              }

              else
              {
                estimatedResultCount = [(NSPersistentStoreRequest *)request estimatedResultCount];
              }

              [currentProgress setTotalUnitCount:estimatedResultCount];
              [currentProgress setKind:@"managed objects"];
              v46 = 0;
            }

            else
            {
              v46 = 1;
            }

            v65 = 0;
            v66 = &v65;
            v67 = 0x3052000000;
            v68 = __Block_byref_object_copy__13;
            v69 = __Block_byref_object_dispose__13;
            v70 = [[NSAsynchronousFetchResult alloc] initForFetchRequest:request withContext:self andProgress:currentProgress completetionBlock:[(NSPersistentStoreRequest *)request completionBlock]];
            [v41 _setAsyncResultHandle:v66[5]];
            if ((v46 & 1) == 0)
            {
              v57 = [_PFWeakReference weakReferenceWithObject:?];
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v64[2] = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke;
              v64[3] = &unk_1E6EC16F0;
              v64[4] = v57;
              [currentProgress setCancellationHandler:v64];
            }

            parentObjectStore = self->_parentObjectStore;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_2;
            v79 = &unk_1E6EC2440;
            selfCopy = self;
            v81 = v41;
            v84 = v71;
            v85 = v72;
            v86 = &v73;
            v87 = &v65;
            v88 = v40;
            v82 = request;
            v83 = fetchRequest;
            v89 = v42;
            v90 = includesPropertyValues;
            [parentObjectStore performBlock:buf];
            v9 = v66[5];
            _Block_object_dispose(&v65, 8);
            _Block_object_dispose(v71, 8);
            _Block_object_dispose(v72, 8);
          }

          _Block_object_dispose(&v73, 8);
          return v9;
        }

        v60 = MEMORY[0x1E695DF30];
        v63 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], self, request);
      }

      else
      {
        v60 = MEMORY[0x1E695DF30];
        v61 = MEMORY[0x1E696AEC0];
        v62 = NSStringFromSelector(sel__executeAsynchronousFetchRequest_);
        v63 = objc_msgSend_stringWithFormat_(v61, v62);
      }

      objc_exception_throw([v60 exceptionWithName:*MEMORY[0x1E695D940] reason:v63 userInfo:0]);
    }

LABEL_31:
    if (self->_parentObjectStore)
    {
      v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v72[0] = 0;
      [(NSManagedObjectContext *)self lockObjectStore];
      v20 = [self->_parentObjectStore executeRequest:request withContext:self error:v72];
      [(NSManagedObjectContext *)self unlockObjectStore];
      if (v72[0])
      {
        v21 = v72[0];
        if (v72[0])
        {
          if (error)
          {
            *error = v72[0];
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
            *&buf[12] = 1024;
            *&buf[14] = 2027;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
          }

          v31 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315394;
            *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
            *&buf[12] = 1024;
            *&buf[14] = 2027;
            _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
          }
        }
      }

      [v19 drain];
      v32 = 0;
      v33 = v72[0];
      if (self->_dispatchQueue && v20)
      {
        [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
      }

      if ((!v20 || v72[0]) && (!v72[0] || v20))
      {
        v34 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error OR an exception\n", buf, 2u);
        }

        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error OR an exception", buf, 2u);
        }
      }

      return v20;
    }

    if (requestType - 5 > 2)
    {
      switch(requestType)
      {
        case 0xBuLL:
          v49 = [NSPersistentCloudKitContainerEventResult alloc];
          v27 = [(NSPersistentCloudKitContainerEventResult *)v49 initWithResult:NSArray_EmptyArray ofType:[(NSPersistentStoreRequest *)request resultType]];
          break;
        case 0xAuLL:
          v48 = [NSSQLiteIndexStatisticsResult alloc];
          v27 = [(NSSQLiteIndexStatisticsResult *)v48 initWithResult:NSArray_EmptyArray];
          break;
        case 8uLL:
          v25 = [NSPersistentHistoryResult alloc];
          resultType2 = [(NSPersistentStoreRequest *)request resultType];
          v27 = [(NSPersistentHistoryResult *)v25 initWithResultType:resultType2 andResult:NSArray_EmptyArray];
          break;
        default:
          v50 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = request;
            *&buf[12] = 2048;
            *&buf[14] = requestType;
            _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown request - %@ - %lu\n", buf, 0x16u);
          }

          v51 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *&buf[4] = request;
            *&buf[12] = 2048;
            *&buf[14] = requestType;
            _os_log_fault_impl(&dword_18565F000, v51, OS_LOG_TYPE_FAULT, "CoreData: Unknown request - %@ - %lu", buf, 0x16u);
          }

          v27 = 0;
          break;
      }

      return v27;
    }

    if (dword_1ED4BEEC8 == 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Context does not have a coordinator; cannot perform executeRequest:error:." userInfo:0]);
    }

    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = "CoreData: error: Context does not have a coordinator; cannot perform executeRequest:error:.\n";
LABEL_114:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, v24, buf, 2u);
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v24 = "CoreData: warning: Context does not have a coordinator; cannot perform executeRequest:error:.\n";
          goto LABEL_114;
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    _NSCoreDataLog_console(v52, "Context does not have a coordinator; cannot perform executeRequest:error:.");
    objc_autoreleasePoolPop(v22);
    if (requestType == NSBatchDeleteRequestType)
    {
      v55 = [NSBatchDeleteResult alloc];
      resultType3 = [(NSPersistentStoreRequest *)request resultType];
      v27 = [(NSBatchDeleteResult *)v55 initWithResultType:resultType3 andObject:NSArray_EmptyArray];
    }

    else
    {
      if (requestType == NSBatchUpdateRequestType)
      {
        v53 = [NSBatchUpdateResult alloc];
      }

      else
      {
        v53 = [NSBatchInsertResult alloc];
      }

      resultType4 = [(NSPersistentStoreRequest *)request resultType];
      v27 = [(NSBatchUpdateResult *)v53 initWithResultType:resultType4 andObject:NSArray_EmptyArray];
    }

    return v27;
  }

  v11 = [[NSAsynchronousFetchRequest alloc] initWithFetchRequest:request completionBlock:0];
  v9 = [[NSAsynchronousFetchResult alloc] initForFetchRequest:v11 withContext:self andProgress:0 completetionBlock:0];

  v12 = v9;
  v72[0] = 0;
  v13 = [(NSManagedObjectContext *)self executeFetchRequest:request error:v72];
  v8 = v72[0];
  if (v13)
  {
    if (v72[0])
    {
      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v72[0];
        _os_log_error_impl(&dword_18565F000, v14, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching generated a result AND an error: %@\n", buf, 0xCu);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v72[0];
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Fetching generated a result AND an error: %@", buf, 0xCu);
      }

      [(NSPersistentStoreResult *)v9 setOperationError:v72[0]];
    }

    [(NSAsynchronousFetchResult *)v9 setFinalResult:v13];
  }

  else
  {
    if (!v72[0])
    {
      v28 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching returned nil AND failed to generate an error\n", buf, 2u);
      }

      v29 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: Fetching returned nil AND failed to generate an error", buf, 2u);
      }

      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435030];
    }

    v9 = 0;
    if (error)
    {
      goto LABEL_7;
    }
  }

  return v9;
}

- (unint64_t)_countForFetchRequest_:(id *)request_ error:
{
  v103 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(result, sel__countForFetchRequest__error_);
  }

  v5 = *(*(v4 + 168) + 152);
  if (v5)
  {
    if (!request_)
    {
      return 0;
    }

    v6 = v5;
    result = 0;
    *request_ = v6;
    return result;
  }

  [a2 _resolveEntityWithContext:v4];
  if (![v4 hasChanges] || !objc_msgSend(a2, "includesPendingChanges") || objc_msgSend(a2, "resultType") == 2)
  {
    result = [(NSManagedObjectContext *)v4 _countWithNoChangesForRequest:a2 error:request_];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (z9dsptsiQ80etb9782fsrs98bfdle88)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  if (![(NSManagedObjectContext *)v4 _attemptCoalesceChangesForFetch])
  {
    [(NSManagedObjectContext *)v4 _processRecentChanges:?];
  }

  v66 = v4;
  affectedStores = [a2 affectedStores];
  entity = [a2 entity];
  v64 = a2;
  if ([objc_msgSend(entity "subentitiesByName")])
  {
    includesSubentities = [a2 includesSubentities];
  }

  else
  {
    includesSubentities = 0;
  }

  v10 = 0;
  callBacks.version = *MEMORY[0x1E695E9F8];
  *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
  v11 = *(MEMORY[0x1E695E9F8] + 24);
  callBacks.equal = 0;
  callBacks.hash = 0;
  callBacks.copyDescription = v11;
  v12 = *(v66 + 96);
  cf = *(v66 + 56);
  allocator = *MEMORY[0x1E695E480];
  v13 = 1;
  do
  {
    v72 = v13;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v80 objects:v99 count:16];
    if (v14)
    {
      v15 = *v81;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v81 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v80 + 1) + 8 * i);
          if (!affectedStores || [affectedStores indexOfObjectIdenticalTo:{objc_msgSend(objc_msgSend(*(*(&v80 + 1) + 8 * i), "objectID"), "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity2 = [v17 entity];
            if (entity2 == entity || includesSubentities && [entity _subentitiesIncludes:entity2])
            {
              if (!v10)
              {
                v10 = CFSetCreateMutable(allocator, 0, &callBacks);
              }

              CFSetAddValue(v10, v17);
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v80 objects:v99 count:16];
      }

      while (v14);
    }

    v13 = 0;
    v12 = cf;
  }

  while ((v72 & 1) != 0);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v19 = *(v66 + 88);
  v20 = [v19 countByEnumeratingWithState:&v76 objects:v98 count:16];
  if (v20)
  {
    cfa = 0;
    v21 = *v77;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v77 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v76 + 1) + 8 * j);
        entity3 = [v23 entity];
        if (entity3 == entity || includesSubentities && [entity _subentitiesIncludes:entity3])
        {
          v25 = cfa;
          if (!cfa)
          {
            v25 = CFSetCreateMutable(allocator, 0, &callBacks);
          }

          cfa = v25;
          CFSetAddValue(v25, v23);
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v76 objects:v98 count:16];
    }

    while (v20);
  }

  else
  {
    cfa = 0;
  }

  if ([(__CFSet *)v10 count]|| [(__CFSet *)cfa count])
  {
    fetchLimit = [v64 fetchLimit];
    v97 = 0;
    if (![v64 entity])
    {
      v58 = MEMORY[0x1E695DF30];
      v59 = MEMORY[0x1E696AEC0];
      v60 = NSStringFromSelector(sel__countWithMergedChangesForRequest_possibleChanges_possibleDeletes_error_);
      v61 = [v58 exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(v59 userInfo:{v60), 0}];
      objc_exception_throw(v61);
    }

    v26 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if ([v66 hasChanges] && objc_msgSend(v64, "includesPendingChanges") && objc_msgSend(v64, "resultType") != 2 && !-[NSManagedObjectContext _attemptCoalesceChangesForFetch](v66))
    {
      [(NSManagedObjectContext *)v66 _processRecentChanges:?];
    }

    v27 = [v64 copy];
    [(NSManagedObjectContext *)v27 _unlimitRequest:v28];
    [v27 setIncludesPropertyValues:0];
    [v27 setResultType:1];
    [v27 setSortDescriptors:0];
    [(NSManagedObjectContext *)v66 lockObjectStore];
    v29 = [*(v66 + 32) executeRequest:v27 withContext:v66 error:&v97];
    v30 = v97;
    v31 = v29;

    [v26 drain];
    [(NSManagedObjectContext *)v66 unlockObjectStore];
    if (v97)
    {
      v32 = v97;
      if (request_)
      {
        *request_ = v97;
      }
    }

    else if (v29)
    {
      v69 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v29];

      v62 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      predicate = [v64 predicate];
      affectedStores2 = [v64 affectedStores];
      entity4 = [v64 entity];
      if ([objc_msgSend(entity4 "subentitiesByName")])
      {
        allocatora = [v64 includesSubentities];
      }

      else
      {
        allocatora = 0;
      }

      if (predicate)
      {
        v73 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
        v38 = v73;
      }

      else
      {
        v73 = [MEMORY[0x1E696AE18] predicateWithValue:1];
      }

      if ([affectedStores2 count])
      {
        v39 = affectedStores2;
      }

      else
      {
        v39 = 0;
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v40 = [(__CFSet *)v10 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v40)
      {
        v41 = *v94;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v94 != v41)
            {
              objc_enumerationMutation(v10);
            }

            v43 = *(*(&v93 + 1) + 8 * k);
            objectID = [v43 objectID];
            if ([v73 evaluateWithObject:v43])
            {
              [v69 addObject:objectID];
            }

            else
            {
              [v69 removeObject:objectID];
            }
          }

          v40 = [(__CFSet *)v10 countByEnumeratingWithState:&v93 objects:v102 count:16];
        }

        while (v40);
      }

      v45 = *(v66 + 80);
      v65 = *(v66 + 72);
      v46 = 1;
      do
      {
        v67 = v46;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v47 = [v45 countByEnumeratingWithState:&v89 objects:v101 count:16];
        if (v47)
        {
          v48 = *v90;
          do
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v90 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v89 + 1) + 8 * m);
              objectID2 = [v50 objectID];
              v52 = objectID2;
              if (v39)
              {
                persistentStore = [objectID2 persistentStore];
                if (!persistentStore || [v39 indexOfObjectIdenticalTo:persistentStore] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              entity5 = [v50 entity];
              if (entity5 == entity4 || allocatora && [entity4 _subentitiesIncludes:entity5])
              {
                if ([v73 evaluateWithObject:v50])
                {
                  [v69 addObject:v52];
                }
              }
            }

            v47 = [v45 countByEnumeratingWithState:&v89 objects:v101 count:16];
          }

          while (v47);
        }

        v46 = 0;
        v45 = v65;
      }

      while ((v67 & 1) != 0);
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v55 = [(__CFSet *)cfa countByEnumeratingWithState:&v85 objects:v100 count:16];
      if (v55)
      {
        v56 = *v86;
        do
        {
          for (n = 0; n != v55; ++n)
          {
            if (*v86 != v56)
            {
              objc_enumerationMutation(cfa);
            }

            [v69 removeObject:{objc_msgSend(*(*(&v85 + 1) + 8 * n), "objectID")}];
          }

          v55 = [(__CFSet *)cfa countByEnumeratingWithState:&v85 objects:v100 count:16];
        }

        while (v55);
      }

      [v62 drain];
      v33 = [v69 count];

      if (fetchLimit - 1 < v33)
      {
        v33 = fetchLimit;
      }

      goto LABEL_68;
    }

    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = [(NSManagedObjectContext *)v66 _countWithNoChangesForRequest:v64 error:request_];
  }

LABEL_68:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (z9dsptsiQ80etb9782fsrs98bfdle88)
  {
    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v34 = 0;
  }

  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v34;
  }

  else
  {
    return v33;
  }
}

- (unint64_t)_countWithNoChangesForRequest:(id *)request error:
{
  v63 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(a2 "substitutionVariables")])
  {
    fetchLimit = 1;
  }

  else
  {
    fetchLimit = [a2 fetchLimit];
  }

  v59 = 0;
  if (![a2 entity])
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v39 = MEMORY[0x1E696AEC0];
    v40 = NSStringFromSelector(sel__countWithNoChangesForRequest_error_);
    v41 = [v37 exceptionWithName:v38 reason:objc_msgSend_stringWithFormat_(v39 userInfo:{v40), 0}];
    objc_exception_throw(v41);
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [a2 copy];
  if (fetchLimit && [self hasChanges])
  {
    [(NSManagedObjectContext *)v7 _unlimitRequest:v8];
  }

  [v7 setResultType:4];
  [(NSManagedObjectContext *)self lockObjectStore];
  v9 = [self[4] executeRequest:v7 withContext:self error:&v59];
  v10 = v59;
  v11 = v9;

  [v6 drain];
  [(NSManagedObjectContext *)self unlockObjectStore];
  if (v59)
  {
    v12 = v59;
    if (request)
    {
      *request = v59;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([v9 count])
  {
    v13 = [objc_msgSend(v9 "lastObject")];
  }

  else
  {
    v13 = 0;
  }

  if ([self hasChanges] && objc_msgSend(a2, "includesPendingChanges"))
  {
    v43 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    predicate = [a2 predicate];
    affectedStores = [a2 affectedStores];
    entity = [a2 entity];
    if ([objc_msgSend(entity "subentitiesByName")])
    {
      includesSubentities = [a2 includesSubentities];
      if (predicate)
      {
LABEL_22:
        v45 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
        v19 = v45;
LABEL_25:
        if (![affectedStores count])
        {
          affectedStores = 0;
        }

        callBacks.version = *MEMORY[0x1E695E9F8];
        *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
        v20 = *(MEMORY[0x1E695E9F8] + 24);
        callBacks.equal = 0;
        callBacks.hash = 0;
        callBacks.copyDescription = v20;
        v21 = [self[9] count];
        v22 = self[10];
        if (v21)
        {
          if ([self[10] count])
          {
            v22 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v23 = self[9];
            v24 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v24)
            {
              v25 = *v55;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v55 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  CFSetAddValue(v22, *(*(&v54 + 1) + 8 * i));
                }

                v24 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
              }

              while (v24);
            }

            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v27 = self[10];
            v28 = [v27 countByEnumeratingWithState:&v50 objects:v61 count:16];
            if (v28)
            {
              v29 = *v51;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v51 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  CFSetAddValue(v22, *(*(&v50 + 1) + 8 * j));
                }

                v28 = [v27 countByEnumeratingWithState:&v50 objects:v61 count:16];
              }

              while (v28);
            }

            v42 = 1;
          }

          else
          {
            v42 = 0;
            v22 = self[9];
          }
        }

        else
        {
          v42 = 0;
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = [(__CFSet *)v22 countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v31)
        {
          v32 = *v47;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v47 != v32)
              {
                objc_enumerationMutation(v22);
              }

              v34 = *(*(&v46 + 1) + 8 * k);
              if (affectedStores)
              {
                v35 = [objc_msgSend(*(*(&v46 + 1) + 8 * k) "objectID")];
                if (!v35 || [affectedStores indexOfObjectIdenticalTo:v35] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              entity2 = [v34 entity];
              if (entity2 == entity || includesSubentities && [entity _subentitiesIncludes:entity2])
              {
                v13 += [v45 evaluateWithObject:v34];
              }
            }

            v31 = [(__CFSet *)v22 countByEnumeratingWithState:&v46 objects:v60 count:16];
          }

          while (v31);
        }

        if (v42)
        {
          CFRelease(v22);
        }

        [v43 drain];
        goto LABEL_63;
      }
    }

    else
    {
      includesSubentities = 0;
      if (predicate)
      {
        goto LABEL_22;
      }
    }

    v45 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    goto LABEL_25;
  }

LABEL_63:
  if (fetchLimit - 1 >= v13)
  {
    return v13;
  }

  else
  {
    return fetchLimit;
  }
}

- (NSUInteger)countForFetchRequest:(NSFetchRequest *)request error:(NSError *)error
{
  result = [(NSManagedObjectContext *)self _countForFetchRequest_:error error:?];
  if (error)
  {
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      *error = 0;
    }
  }

  return result;
}

- (NSArray)executeFetchRequest:(NSFetchRequest *)request error:(NSError *)error
{
  v153 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v144 = 0;
  if (!request)
  {
    request = @"<null>";
    goto LABEL_178;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_178:
    v92 = MEMORY[0x1E695DF30];
    v93 = *MEMORY[0x1E695D940];
    v94 = MEMORY[0x1E696AEC0];
    v102 = NSStringFromSelector(a2);
    v95 = objc_msgSend_stringWithFormat_(v94, v102, request);
LABEL_179:
    v96 = v95;
    v97 = v92;
    v98 = v93;
    goto LABEL_180;
  }

  v8 = *(self->_additionalPrivateIvars + 19);
  if (v8)
  {
    if (error)
    {
      v9 = v8;
      result = 0;
      *error = v9;
      return result;
    }

    return 0;
  }

  [(NSManagedObjectContext *)self _PFAutoreleasePoolReferenceQueueTrampoline];
  [(NSFetchRequest *)request _resolveEntityWithContext:self];
  if (![(NSFetchRequest *)request entity])
  {
    v92 = MEMORY[0x1E695DF30];
    v93 = *MEMORY[0x1E695D940];
    v99 = MEMORY[0x1E696AEC0];
    v103 = NSStringFromSelector(a2);
    v95 = objc_msgSend_stringWithFormat_(v99, v103);
    goto LABEL_179;
  }

  managedObjectModel = [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel];
  selfCopy = self;
  if (managedObjectModel != [(NSEntityDescription *)[(NSFetchRequest *)request entity] managedObjectModel]&& ![(NSManagedObjectContext *)self _allowAncillaryEntities])
  {
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSFetchRequest *)request entity], [(NSEntityDescription *)[(NSFetchRequest *)request entity] name]);
    v13 = [(NSDictionary *)[(NSManagedObjectModel *)[(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)self persistentStoreCoordinator] managedObjectModel] entitiesByName] objectForKey:[(NSEntityDescription *)[(NSFetchRequest *)request entity] name]];
    if (v13)
    {
      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v16 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v16)
        {
          if (v18)
          {
            LODWORD(callBacks.version) = 138412290;
            *(&callBacks.version + 4) = v12;
LABEL_176:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: %@\n", &callBacks, 0xCu);
          }
        }

        else if (v18)
        {
          LODWORD(callBacks.version) = 138412290;
          *(&callBacks.version + 4) = v12;
          goto LABEL_176;
        }
      }

      _NSCoreDataLog_console(1, "%@", v12);
      objc_autoreleasePoolPop(v15);
      request = [(NSFetchRequest *)request copy];
      [(NSFetchRequest *)request setEntity:v14];
      goto LABEL_18;
    }

    v100 = MEMORY[0x1E695DF30];
    v101 = *MEMORY[0x1E695D940];
    v96 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [(NSFetchRequest *)request entity], [(NSEntityDescription *)[(NSFetchRequest *)request entity] name]);
    v97 = v100;
    v98 = v101;
LABEL_180:
    objc_exception_throw([v97 exceptionWithName:v98 reason:v96 userInfo:0]);
  }

LABEL_18:
  v109 = request;
  [(NSFetchRequest *)request allowEvaluation];
  resultType = [(NSFetchRequest *)request resultType];
  if (resultType == 4)
  {
    v20 = [(NSManagedObjectContext *)selfCopy countForFetchRequest:request error:error];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      return [MEMORY[0x1E695DEC8] arrayWithObject:v21];
    }

    return 0;
  }

  v22 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (resultType != 2 && [(NSFetchRequest *)request includesPendingChanges]&& [(NSManagedObjectContext *)selfCopy hasChanges])
  {
    if (![(NSManagedObjectContext *)selfCopy _attemptCoalesceChangesForFetch])
    {
      [(NSManagedObjectContext *)selfCopy _processRecentChanges:?];
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(NSManagedObjectContext *)&selfCopy->super.isa _createStoreFetchRequestForFetchRequest:?];
  resultType2 = [v24 resultType];
  includesPropertyValues = [v24 includesPropertyValues];
  [(NSManagedObjectContext *)selfCopy lockObjectStore];
  v25 = [selfCopy->_parentObjectStore executeRequest:v24 withContext:selfCopy error:&v144];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = v144;

  [v22 drain];
  [(NSManagedObjectContext *)selfCopy unlockObjectStore];
  v30 = v144;
  if (v144)
  {
    if (v26)
    {
      v31 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(callBacks.version) = 138412290;
        *(&callBacks.version + 4) = v144;
        _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching generated an error AND a result: %@\n", &callBacks, 0xCu);
      }

      v32 = _PFLogGetLogStream(17);
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
      v30 = v144;
      if (v33)
      {
        LODWORD(callBacks.version) = 138412290;
        *(&callBacks.version + 4) = v144;
        _os_log_fault_impl(&dword_18565F000, v32, OS_LOG_TYPE_FAULT, "CoreData: Fetching generated an error AND a result: %@", &callBacks, 0xCu);
        v30 = v144;
      }
    }

    v34 = v30;
    if (error)
    {
      *error = v144;
    }

    return 0;
  }

  if (!v26)
  {
    v35 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(callBacks.version) = 0;
      _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetching failed to generate a result OR an error OR an exception\n", &callBacks, 2u);
    }

    v36 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      LOWORD(callBacks.version) = 0;
      _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Fetching failed to generate a result OR an error OR an exception", &callBacks, 2u);
    }
  }

  if (!v28)
  {
    return 0;
  }

  if (!v26)
  {
    v26 = NSArray_EmptyArray;
  }

  v111 = v26;
  if (v23)
  {
    v105 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    predicate = [(NSFetchRequest *)v109 predicate];
    sortDescriptors = [(NSFetchRequest *)v109 sortDescriptors];
    affectedStores = [(NSFetchRequest *)v109 affectedStores];
    entity = [(NSFetchRequest *)v109 entity];
    if ([(NSDictionary *)[(NSEntityDescription *)entity subentitiesByName] count])
    {
      includesSubentities = [(NSFetchRequest *)v109 includesSubentities];
    }

    else
    {
      includesSubentities = 0;
    }

    if (predicate)
    {
      v112 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:predicate, 0];
    }

    else
    {
      v112 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }

    if ([(NSArray *)affectedStores count])
    {
      v39 = affectedStores;
    }

    else
    {
      v39 = 0;
    }

    v40 = *MEMORY[0x1E695E9F8];
    *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
    v41 = *(MEMORY[0x1E695E9F8] + 24);
    callBacks.version = v40;
    callBacks.copyDescription = v41;
    callBacks.equal = 0;
    callBacks.hash = 0;
    v42 = [(NSMutableSet *)selfCopy->_unprocessedChanges count];
    changedObjects = selfCopy->_changedObjects;
    if (v42)
    {
      if ([(NSMutableSet *)selfCopy->_changedObjects count])
      {
        changedObjects = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
        v142 = 0u;
        v143 = 0u;
        v140 = 0u;
        v141 = 0u;
        unprocessedChanges = selfCopy->_unprocessedChanges;
        v45 = [(NSMutableSet *)unprocessedChanges countByEnumeratingWithState:&v140 objects:v151 count:16];
        if (v45)
        {
          v46 = *v141;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v141 != v46)
              {
                objc_enumerationMutation(unprocessedChanges);
              }

              CFSetAddValue(changedObjects, *(*(&v140 + 1) + 8 * i));
            }

            v45 = [(NSMutableSet *)unprocessedChanges countByEnumeratingWithState:&v140 objects:v151 count:16];
          }

          while (v45);
        }

        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        v48 = selfCopy->_changedObjects;
        v49 = [(NSMutableSet *)v48 countByEnumeratingWithState:&v136 objects:v150 count:16];
        if (v49)
        {
          v50 = *v137;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v137 != v50)
              {
                objc_enumerationMutation(v48);
              }

              CFSetAddValue(changedObjects, *(*(&v136 + 1) + 8 * j));
            }

            v49 = [(NSMutableSet *)v48 countByEnumeratingWithState:&v136 objects:v150 count:16];
          }

          while (v49);
        }

        v106 = 1;
      }

      else
      {
        v106 = 0;
        changedObjects = selfCopy->_unprocessedChanges;
      }
    }

    else
    {
      v106 = 0;
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v52 = 0;
    v53 = [(__CFSet *)changedObjects countByEnumeratingWithState:&v132 objects:v149 count:16];
    if (v53)
    {
      v54 = *v133;
      do
      {
        for (k = 0; k != v53; ++k)
        {
          if (*v133 != v54)
          {
            objc_enumerationMutation(changedObjects);
          }

          v56 = *(*(&v132 + 1) + 8 * k);
          objectID = [v56 objectID];
          v58 = objectID;
          if (!v39 || -[NSArray indexOfObjectIdenticalTo:](v39, "indexOfObjectIdenticalTo:", [objectID persistentStore]) != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity2 = [v56 entity];
            if (entity2 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity2])
            {
              if (!v52)
              {
                v52 = [MEMORY[0x1E695DFA8] setWithArray:v111];
              }

              v60 = objc_autoreleasePoolPush();
              v61 = [v112 evaluateWithObject:v56];
              if (resultType2)
              {
                v62 = v58;
              }

              else
              {
                v62 = v56;
              }

              if (v61)
              {
                [v52 addObject:v62];
              }

              else
              {
                [v52 removeObject:v62];
              }

              objc_autoreleasePoolPop(v60);
            }
          }
        }

        v53 = [(__CFSet *)changedObjects countByEnumeratingWithState:&v132 objects:v149 count:16];
      }

      while (v53);
    }

    if (v106)
    {
      CFRelease(changedObjects);
    }

    v63 = [(NSMutableSet *)selfCopy->_unprocessedInserts count];
    insertedObjects = selfCopy->_insertedObjects;
    if (v63)
    {
      if ([(NSMutableSet *)selfCopy->_insertedObjects count])
      {
        insertedObjects = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        unprocessedInserts = selfCopy->_unprocessedInserts;
        v66 = [(NSMutableSet *)unprocessedInserts countByEnumeratingWithState:&v128 objects:v148 count:16];
        if (v66)
        {
          v67 = *v129;
          do
          {
            for (m = 0; m != v66; ++m)
            {
              if (*v129 != v67)
              {
                objc_enumerationMutation(unprocessedInserts);
              }

              CFSetAddValue(insertedObjects, *(*(&v128 + 1) + 8 * m));
            }

            v66 = [(NSMutableSet *)unprocessedInserts countByEnumeratingWithState:&v128 objects:v148 count:16];
          }

          while (v66);
        }

        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v69 = selfCopy->_insertedObjects;
        v70 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v124 objects:v147 count:16];
        if (v70)
        {
          v71 = *v125;
          do
          {
            for (n = 0; n != v70; ++n)
            {
              if (*v125 != v71)
              {
                objc_enumerationMutation(v69);
              }

              CFSetAddValue(insertedObjects, *(*(&v124 + 1) + 8 * n));
            }

            v70 = [(NSMutableSet *)v69 countByEnumeratingWithState:&v124 objects:v147 count:16];
          }

          while (v70);
        }

        v107 = 1;
      }

      else
      {
        v107 = 0;
        insertedObjects = selfCopy->_unprocessedInserts;
      }
    }

    else
    {
      v107 = 0;
    }

    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v73 = [(__CFSet *)insertedObjects countByEnumeratingWithState:&v120 objects:v146 count:16];
    if (v73)
    {
      v74 = *v121;
      do
      {
        for (ii = 0; ii != v73; ++ii)
        {
          if (*v121 != v74)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v76 = *(*(&v120 + 1) + 8 * ii);
          objectID2 = [v76 objectID];
          v78 = objectID2;
          if (v39)
          {
            persistentStore = [objectID2 persistentStore];
            if (!persistentStore || [(NSArray *)v39 indexOfObjectIdenticalTo:persistentStore]== 0x7FFFFFFFFFFFFFFFLL)
            {
              continue;
            }
          }

          entity3 = [v76 entity];
          if (entity3 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity3])
          {
            if (!v52)
            {
              v52 = [MEMORY[0x1E695DFA8] setWithArray:v111];
            }

            v81 = objc_autoreleasePoolPush();
            if ([v112 evaluateWithObject:v76])
            {
              if (resultType2)
              {
                v82 = v78;
              }

              else
              {
                v82 = v76;
              }

              [v52 addObject:v82];
            }

            objc_autoreleasePoolPop(v81);
          }
        }

        v73 = [(__CFSet *)insertedObjects countByEnumeratingWithState:&v120 objects:v146 count:16];
      }

      while (v73);
    }

    if (v107)
    {
      CFRelease(insertedObjects);
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    deletedObjects = selfCopy->_deletedObjects;
    v84 = [(NSMutableSet *)deletedObjects countByEnumeratingWithState:&v116 objects:v145 count:16];
    if (v84)
    {
      v85 = *v117;
      do
      {
        for (jj = 0; jj != v84; ++jj)
        {
          if (*v117 != v85)
          {
            objc_enumerationMutation(deletedObjects);
          }

          objectID3 = *(*(&v116 + 1) + 8 * jj);
          if (!v39 || -[NSArray indexOfObjectIdenticalTo:](v39, "indexOfObjectIdenticalTo:", [objc_msgSend(*(*(&v116 + 1) + 8 * jj) "objectID")]) != 0x7FFFFFFFFFFFFFFFLL)
          {
            entity4 = [objectID3 entity];
            if (entity4 == entity || includesSubentities && [(NSEntityDescription *)entity _subentitiesIncludes:entity4])
            {
              if (!v52)
              {
                v52 = [MEMORY[0x1E695DFA8] setWithArray:v111];
              }

              if (resultType2)
              {
                objectID3 = [objectID3 objectID];
              }

              [v52 removeObject:objectID3];
            }
          }
        }

        v84 = [(NSMutableSet *)deletedObjects countByEnumeratingWithState:&v116 objects:v145 count:16];
      }

      while (v84);
    }

    if (v52)
    {
      allObjects = [v52 allObjects];
      if ([(NSArray *)sortDescriptors count]!= 0 && resultType2 == 0 && ((includesPropertyValues ^ 1) & 1) == 0)
      {
        allObjects = [allObjects sortedArrayUsingDescriptors:sortDescriptors];
      }

      v111 = allObjects;
    }

    [v105 drain];
  }

  fetchLimit = [(NSFetchRequest *)v109 fetchLimit];
  if (fetchLimit && [v111 count] > fetchLimit)
  {
    v91 = [v111 subarrayWithRange:{0, fetchLimit}];
  }

  else
  {
    v91 = v111;
  }

  if (selfCopy->_dispatchQueue && !-[NSFetchRequest resultType](v109, "resultType") && [v91 count])
  {
    [(NSManagedObjectContext *)selfCopy _registerAsyncReferenceCallback];
  }

  return v91;
}

- (id)_createStoreFetchRequestForFetchRequest:(id *)request
{
  requestCopy = request;
  v53 = *MEMORY[0x1E69E9840];
  if (request)
  {
    v4 = objc_autoreleasePoolPush();
    resultType = [a2 resultType];
    if (resultType == 2)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = [a2 includesPendingChanges] ^ 1;
    }

    fetchLimit = [a2 fetchLimit];
    propertiesToFetch = [a2 propertiesToFetch];
    relationshipKeyPathsForPrefetching = [a2 relationshipKeyPathsForPrefetching];
    if ([propertiesToFetch count])
    {
      v10 = [a2 copy];
      a2 = v10;
      if (resultType == 4 || resultType == 1)
      {
        [v10 setPropertiesToFetch:0];
        [a2 setRelationshipKeyPathsForPrefetching:0];
      }

      else if (!resultType && [relationshipKeyPathsForPrefetching count])
      {
        v38 = v6;
        v39 = requestCopy;
        v40 = a2;
        v41 = v4;
        v11 = [objc_msgSend(a2 "entity")];
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v13 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v47 objects:v52 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v48;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v48 != v15)
              {
                objc_enumerationMutation(relationshipKeyPathsForPrefetching);
              }

              v17 = *(*(&v47 + 1) + 8 * i);
              result.location = 0;
              result.length = 0;
              if (v17 && (v54.length = CFStringGetLength(v17), v54.location = 0, CFStringFindWithOptions(v17, @".", v54, 0, &result)))
              {
                v55.length = result.location;
                v55.location = 0;
                v18 = CFStringCreateWithSubstring(0, v17, v55);
                v17 = v18;
              }

              else
              {
                v18 = 0;
              }

              v19 = [v11 objectForKey:v17];
              if (v19)
              {
                v20 = v19;
                if (([v19 _isToManyRelationship] & 1) == 0)
                {
                  [v12 addObject:v20];
                }
              }

              if (v18)
              {
                CFRelease(v18);
              }
            }

            v14 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v47 objects:v52 count:16];
          }

          while (v14);
        }

        a2 = v40;
        if ([v12 count])
        {
          v21 = [MEMORY[0x1E695DF70] arrayWithArray:propertiesToFetch];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v22 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v43;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v43 != v24)
                {
                  objc_enumerationMutation(v12);
                }

                v26 = *(*(&v42 + 1) + 8 * j);
                if ([propertiesToFetch indexOfObjectIdenticalTo:v26] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v21 addObject:v26];
                }
              }

              v23 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
            }

            while (v23);
          }

          [v40 setPropertiesToFetch:v21];
        }

        v4 = v41;
        requestCopy = v39;
        LOBYTE(v6) = v38;
      }
    }

    if (!((fetchLimit == 0) | v6 & 1) && (*(requestCopy + 41) & 4) != 0 && (v27 = [requestCopy[12] count], v28 = objc_msgSend(requestCopy[7], "count") + v27, (v29 = v28 + objc_msgSend(requestCopy[11], "count")) != 0))
    {
      requestCopy = [a2 _copyForDirtyContext];
      objc_opt_self();
      if (objc_opt_isKindOfClass())
      {
        v30 = [objc_msgSend(requestCopy "substitutionVariables")];
        v31 = [objc_msgSend(v30 objectForKey:{@"FETCH_REQUEST_LIMIT_SUBSTITUTION", "constantValue"}];
        if (v31)
        {
          fetchLimit = [v31 unsignedIntegerValue];
        }

        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fetchLimit + v29];
        [v30 setObject:objc_msgSend(MEMORY[0x1E696ABC8] forKey:{"expressionForConstantValue:", v32), @"FETCH_REQUEST_LIMIT_SUBSTITUTION"}];
        [requestCopy setSubstitutionVariables:v30];
      }

      else
      {
        [requestCopy setFetchLimit:v29 + fetchLimit];
      }
    }

    else if ([a2 resultType] == 2 && objc_msgSend(a2, "fetchBatchSize") && !objc_msgSend(objc_msgSend(a2, "propertiesToFetch"), "count"))
    {
      v34 = [objc_msgSend(objc_msgSend(objc_msgSend(a2 "entity")];
      [v34 sortUsingFunction:_comparePropertiesByName context:0];
      v35 = [v34 count];
      v36 = v35 - 1;
      if (v35 != 1)
      {
        do
        {
          if ([objc_msgSend(v34 objectAtIndex:{v36), "isTransient"}])
          {
            [v34 removeObjectAtIndex:v36];
          }

          --v36;
        }

        while (v36);
      }

      v37 = objc_alloc_init(NSExpressionDescription);
      [(NSPropertyDescription *)v37 setName:@"objectID"];
      -[NSExpressionDescription setExpression:](v37, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
      [(NSExpressionDescription *)v37 setExpressionResultType:2000];
      [v34 addObject:v37];

      requestCopy = [a2 copy];
      [requestCopy setPropertiesToFetch:v34];
    }

    else
    {
      requestCopy = a2;
    }

    objc_autoreleasePoolPop(v4);
  }

  return requestCopy;
}

void *__59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke(void *result)
{
  v1 = result[4];
  if (v1)
  {
    result = objc_loadWeak((v1 + 8));
    if (result)
    {

      return [result _cancelProgress];
    }
  }

  return result;
}

uint64_t __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v29 = 0;
  *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 32) + 32) executeRequest:*(a1 + 40) withContext:*(a1 + 32) error:&v29];
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = v29;

  [v2 drain];
  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5)
  {
    v6 = v5;
  }

  if (v29)
  {
    v7 = v29;
    v8 = *(*(*(a1 + 80) + 8) + 24);
    if (v8)
    {
      *v8 = v29;
    }

    *(*(*(a1 + 64) + 8) + 40) = 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  if (*(*(v9 + 8) + 40))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_4;
    v17 = &unk_1E6EC2418;
    v21 = *(a1 + 96);
    v18 = *(a1 + 56);
    v19 = v10;
    v22 = *(a1 + 97);
    v11 = *(a1 + 88);
    v20[1] = v9;
    v20[2] = v11;
    v12 = v20;
  }

  else
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_3;
    v26 = &unk_1E6EC23F0;
    v28[1] = *(a1 + 88);
    v27 = v29;
    v12 = v28;
  }

  *v12 = *(a1 + 48);
  return [v10 performBlock:{v14, v15, v16, v17, v18, v19}];
}

id __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_3(uint64_t a1)
{
  [(NSAsynchronousFetchResult *)*(*(*(a1 + 48) + 8) + 40) setFinalResult:?];
  [*(*(*(a1 + 48) + 8) + 40) setOperationError:*(a1 + 32)];
  if ([*(a1 + 40) completionBlock])
  {
    v2 = [*(a1 + 40) completionBlock];
    (*(v2 + 16))(v2, *(*(*(a1 + 48) + 8) + 40));
  }

  v3 = *(*(*(a1 + 48) + 8) + 40);

  return v3;
}

id __59__NSManagedObjectContext__executeAsynchronousFetchRequest___block_invoke_4(uint64_t a1)
{
  v1 = a1;
  v113 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 40) = NSArray_EmptyArray;
  }

  if (*(v1 + 72) == 1)
  {
    v73 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v2 = [*(v1 + 32) predicate];
    v70 = [*(v1 + 32) sortDescriptors];
    v3 = [*(v1 + 32) affectedStores];
    v4 = [*(v1 + 32) entity];
    if ([objc_msgSend(v4 "subentitiesByName")])
    {
      v76 = [*(v1 + 32) includesSubentities];
      if (v2)
      {
LABEL_6:
        v74 = [+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:withContext:" withContext:v2, 0];
        v5 = v74;
LABEL_9:
        if (![v3 count])
        {
          v3 = 0;
        }

        callBacks.version = *MEMORY[0x1E695E9F8];
        *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
        v6 = *(MEMORY[0x1E695E9F8] + 24);
        callBacks.hash = 0;
        callBacks.copyDescription = v6;
        callBacks.equal = 0;
        v7 = [*(*(v1 + 40) + 56) count];
        v8 = *(*(v1 + 40) + 96);
        v75 = v1;
        if (v7)
        {
          if ([(__CFSet *)v8 count])
          {
            v8 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v9 = *(*(v1 + 40) + 56);
            v10 = [v9 countByEnumeratingWithState:&v101 objects:v112 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v102;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v102 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  CFSetAddValue(v8, *(*(&v101 + 1) + 8 * i));
                }

                v11 = [v9 countByEnumeratingWithState:&v101 objects:v112 count:16];
              }

              while (v11);
            }

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v14 = *(*(v75 + 40) + 96);
            v15 = [v14 countByEnumeratingWithState:&v97 objects:v111 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v98;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v98 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  CFSetAddValue(v8, *(*(&v97 + 1) + 8 * j));
                }

                v16 = [v14 countByEnumeratingWithState:&v97 objects:v111 count:16];
              }

              while (v16);
            }

            v71 = 1;
          }

          else
          {
            v71 = 0;
            v8 = *(*(v1 + 40) + 56);
          }
        }

        else
        {
          v71 = 0;
        }

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v19 = [(__CFSet *)v8 countByEnumeratingWithState:&v93 objects:v110 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = 0;
          v22 = *v94;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v94 != v22)
              {
                objc_enumerationMutation(v8);
              }

              v24 = *(*(&v93 + 1) + 8 * k);
              v25 = [v24 objectID];
              v26 = v25;
              if (!v3 || [v3 indexOfObjectIdenticalTo:{objc_msgSend(v25, "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v27 = [v24 entity];
                if (v27 == v4 || v76 && [v4 _subentitiesIncludes:v27])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v75 + 56) + 8) + 40)];
                  }

                  v28 = [v74 evaluateWithObject:v24];
                  if (*(v75 + 73))
                  {
                    v29 = v24;
                  }

                  else
                  {
                    v29 = v26;
                  }

                  if (v28)
                  {
                    [v21 addObject:v29];
                  }

                  else
                  {
                    [v21 removeObject:v29];
                  }
                }
              }
            }

            v20 = [(__CFSet *)v8 countByEnumeratingWithState:&v93 objects:v110 count:16];
          }

          while (v20);
        }

        else
        {
          v21 = 0;
        }

        if (v71)
        {
          CFRelease(v8);
        }

        v30 = [*(*(v75 + 40) + 72) count];
        v31 = *(v75 + 40);
        v32 = *(v31 + 80);
        if (v30)
        {
          if ([*(v31 + 80) count])
          {
            v32 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v33 = *(*(v75 + 40) + 72);
            v34 = [v33 countByEnumeratingWithState:&v89 objects:v109 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v90;
              do
              {
                for (m = 0; m != v35; ++m)
                {
                  if (*v90 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  CFSetAddValue(v32, *(*(&v89 + 1) + 8 * m));
                }

                v35 = [v33 countByEnumeratingWithState:&v89 objects:v109 count:16];
              }

              while (v35);
            }

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v38 = *(*(v75 + 40) + 80);
            v39 = [v38 countByEnumeratingWithState:&v85 objects:v108 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v86;
              do
              {
                for (n = 0; n != v40; ++n)
                {
                  if (*v86 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  CFSetAddValue(v32, *(*(&v85 + 1) + 8 * n));
                }

                v40 = [v38 countByEnumeratingWithState:&v85 objects:v108 count:16];
              }

              while (v40);
            }

            v72 = 1;
          }

          else
          {
            v72 = 0;
            v32 = *(*(v75 + 40) + 72);
          }
        }

        else
        {
          v72 = 0;
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v43 = [(__CFSet *)v32 countByEnumeratingWithState:&v81 objects:v107 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v82;
          do
          {
            for (ii = 0; ii != v44; ++ii)
            {
              if (*v82 != v45)
              {
                objc_enumerationMutation(v32);
              }

              v47 = *(*(&v81 + 1) + 8 * ii);
              v48 = [v47 objectID];
              v49 = v48;
              if (v3)
              {
                v50 = [v48 persistentStore];
                if (!v50 || [v3 indexOfObjectIdenticalTo:v50] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  continue;
                }
              }

              v51 = [v47 entity];
              if (v51 == v4 || v76 && [v4 _subentitiesIncludes:v51])
              {
                if ([v74 evaluateWithObject:v47])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v75 + 56) + 8) + 40)];
                  }

                  if (*(v75 + 73))
                  {
                    v52 = v47;
                  }

                  else
                  {
                    v52 = v49;
                  }

                  [v21 addObject:v52];
                }
              }
            }

            v44 = [(__CFSet *)v32 countByEnumeratingWithState:&v81 objects:v107 count:16];
          }

          while (v44);
        }

        if (v72)
        {
          CFRelease(v32);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v1 = v75;
        v53 = *(*(v75 + 40) + 88);
        v54 = [v53 countByEnumeratingWithState:&v77 objects:v106 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v78;
          do
          {
            for (jj = 0; jj != v55; ++jj)
            {
              if (*v78 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v77 + 1) + 8 * jj);
              if (!v3 || [v3 indexOfObjectIdenticalTo:{objc_msgSend(objc_msgSend(*(*(&v77 + 1) + 8 * jj), "objectID"), "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v59 = [v58 entity];
                if (v59 == v4 || v76 && [v4 _subentitiesIncludes:v59])
                {
                  if (!v21)
                  {
                    v21 = [MEMORY[0x1E695DFA8] setWithArray:*(*(*(v75 + 56) + 8) + 40)];
                  }

                  if ((*(v75 + 73) & 1) == 0)
                  {
                    v58 = [v58 objectID];
                  }

                  [v21 removeObject:v58];
                }
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v77 objects:v106 count:16];
          }

          while (v55);
        }

        if (v21)
        {
          v60 = [v21 allObjects];
          if ([v70 count] && *(v75 + 73) == 1 && *(v75 + 74) == 1)
          {
            v60 = [v60 sortedArrayUsingDescriptors:v70];
          }

          *(*(*(v75 + 56) + 8) + 40) = v60;
        }

        [v73 drain];
        goto LABEL_119;
      }
    }

    else
    {
      v76 = 0;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    v74 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    goto LABEL_9;
  }

LABEL_119:
  v61 = [*(v1 + 32) fetchLimit];
  if (v61)
  {
    v62 = v61;
    if ([*(*(*(v1 + 56) + 8) + 40) count] > v61)
    {
      v63 = [*(*(*(v1 + 56) + 8) + 40) subarrayWithRange:{0, v62}];

      *(*(*(v1 + 56) + 8) + 40) = v63;
    }
  }

  v64 = [*(*(*(v1 + 64) + 8) + 40) progress];
  if (v64)
  {
    v65 = v64;
    v66 = [*(*(*(v1 + 56) + 8) + 40) count];
    v67 = [v65 completedUnitCount];
    [v65 setTotalUnitCount:v66];
    if (v67 != v66)
    {
      [v65 setCompletedUnitCount:{objc_msgSend(*(*(*(v1 + 56) + 8) + 40), "count")}];
    }
  }

  [(NSAsynchronousFetchResult *)*(*(*(v1 + 64) + 8) + 40) setFinalResult:?];
  [*(*(*(v1 + 64) + 8) + 40) setOperationError:0];
  if ([*(v1 + 48) completionBlock])
  {
    v68 = [*(v1 + 48) completionBlock];
    (*(v68 + 16))(v68, *(*(*(v1 + 64) + 8) + 40));
  }

  return *(*(*(v1 + 64) + 8) + 40);
}

- (uint64_t)_committedSnapshotForObject:(uint64_t)result
{
  if (result)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(result, sel__committedSnapshotForObject_);
      if (a2)
      {
LABEL_4:
        v3 = a2[6];
        if (v3 && *(v3 + 8))
        {
          return *(v3 + 8);
        }

        v4 = [(NSManagedObject *)a2 _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:1 preserveFaults:?];
        [(NSManagedObject *)a2 _setOriginalSnapshot__:v4];

        v3 = a2[6];
        if (v3)
        {
          return *(v3 + 8);
        }
      }
    }

    else if (a2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

- (void)refreshObject:(NSManagedObject *)object mergeChanges:(BOOL)flag
{
  v4 = flag;
  v66 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    if (!object)
    {
      goto LABEL_6;
    }
  }

  else if (!object)
  {
    goto LABEL_6;
  }

  if ((object->_cd_stateFlags & 0x80) == 0)
  {
    cd_managedObjectContext = object->_cd_managedObjectContext;
    goto LABEL_7;
  }

LABEL_6:
  cd_managedObjectContext = 0;
LABEL_7:
  if (cd_managedObjectContext != self)
  {
    if (!cd_managedObjectContext)
    {
      return;
    }

    if (BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An NSManagedObjectContext cannot refresh objects in other contexts." userInfo:0]);
    }
  }

  v8 = (object->_cd_stateFlags >> 15) & 7;
  if (v8 == 5 || v8 == 0)
  {
    objectID = [(NSManagedObject *)object objectID];
    values = objectID;
    if (!v4)
    {
      [(NSManagedObject *)object willRefresh:0];
      [NSManagedObjectContext _refaultObject:object globalID:1 BOOLean:?];
LABEL_52:
      [(NSManagedObject *)object awakeFromSnapshotEvents:32];
      [(NSManagedObject *)object didRefresh:v4];
      [(NSManagedObjectContext *)self _prepareUnprocessedDeletionAfterRefresh:?];
      [(NSMutableSet *)self->_refreshedObjects addObject:[(NSManagedObject *)object objectID]];
      if ((*&self->_flags & 1) == 0)
      {
        [(NSManagedObjectContext *)self _enqueueEndOfEventNotification];
      }

      return;
    }

    v11 = objectID;
    [(NSManagedObject *)object willRefresh:1];
    refreshed = [(NSManagedObject *)object _newChangedValuesForRefresh__];
    _changedTransientProperties__ = [(NSManagedObject *)object _changedTransientProperties__];
    v14 = _insertion_fault_handler;
    entity = [(NSManagedObject *)object entity];
    cd_extras = object->_cd_extras;
    v32 = v14;
    if (cd_extras)
    {
      var0 = cd_extras->var0;
      cd_stateFlags = object->_cd_stateFlags;
      v19 = 0;
      v20 = 1;
      if (var0)
      {
        if ((cd_stateFlags & 0x2000) == 0)
        {
          if (entity)
          {
            v19 = *(entity->_kvcPropertyAccessors + 6);
            if (v19)
            {
              object->_cd_stateFlags = cd_stateFlags | 0x1000;
              [(NSManagedObject *)object _willChangeValuesForKeys:v19];
              v20 = 0;
              cd_stateFlags = object->_cd_stateFlags & 0xFFFFEFFF;
            }
          }
        }
      }
    }

    else
    {
      v19 = 0;
      cd_stateFlags = object->_cd_stateFlags;
      v20 = 1;
    }

    object->_cd_stateFlags = cd_stateFlags | 0x2000;
    [NSManagedObjectContext _refaultObject:object globalID:0 BOOLean:?];
    v21 = object->_cd_stateFlags & 0x12;
    v22 = v21 != 0;
    if ([(NSManagedObjectID *)v11 isTemporaryID])
    {
      v23 = atomic_load(&self->_isParentStoreContext);
      v22 = v23 ^ 1 | (v21 != 0);
    }

    if (v22 & 1) != 0 || ((v20 ^ 1))
    {
      if (v22)
      {
        goto LABEL_29;
      }
    }

    else if (![(NSManagedObject *)object hasChanges])
    {
LABEL_29:
      v24 = 0;
LABEL_44:
      if ([(NSKnownKeysDictionary *)refreshed count])
      {
        [(NSManagedObject *)object _updateFromRefreshSnapshot:0 includingTransients:?];
      }

      if ([(NSKnownKeysDictionary *)_changedTransientProperties__ count])
      {
        [(NSManagedObject *)object _updateFromSnapshot:_changedTransientProperties__];
      }

      v30 = object->_cd_stateFlags;
      if (v24)
      {
        object->_cd_stateFlags = v30 | 0x1000;
        [(NSManagedObject *)object awakeFromFetch];
        v30 = object->_cd_stateFlags & 0xFFFFEFFF;
      }

      object->_cd_stateFlags = v30 & 0xFFFFDFFF;
      if ((v20 & 1) == 0)
      {
        [(NSManagedObject *)object _didChangeValuesForKeys:v19];
      }

      goto LABEL_52;
    }

    [(NSManagedObjectContext *)self lockObjectStore];
    if (self)
    {
      parentObjectStore = self->_parentObjectStore;
    }

    else
    {
      parentObjectStore = 0;
    }

    v26 = [parentObjectStore newValuesForObjectWithID:values withContext:self error:0];
    v24 = v26 != 0;
    if (v26)
    {
      v27 = v26;
      if ((object->_cd_stateFlags & 0x200) == 0 && ([values isTemporaryID] & 1) == 0)
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v28 = _PFStackAllocatorCreate(&v34, 1024);
        v29 = CFArrayCreate(v28, &values, 1, 0);
        if (self)
        {
          v31 = self->_parentObjectStore;
        }

        else
        {
          v31 = 0;
        }

        [v31 managedObjectContextDidRegisterObjectsWithIDs:v29 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
        if (*(&v35 + 1) && v29)
        {
          CFRelease(v29);
        }

        object->_cd_stateFlags |= 0x200u;
      }

      _PFFaultHandlerFulfillFault(v32, object, self, v27, 0);
    }

    [(NSManagedObjectContext *)self unlockObjectStore];
    goto LABEL_44;
  }
}

- (void)_refaultObject:(id *)object globalID:(uint64_t)d BOOLean:(int)lean
{
  if (object)
  {
    if ((lean & 1) != 0 || (*(d + 16) & 0x3F) == 0)
    {
      v7 = 0;
      v11 = 0;
    }

    else
    {
      v6 = *(d + 48);
      if (v6)
      {
        v6 = v6[1];
      }

      v7 = v6;
      v8 = *(d + 48);
      if (v8)
      {
        v8 = v8[2];
      }

      v11 = v8;
    }

    if (d)
    {
      v9 = _insertion_fault_handler;
    }

    else
    {
      v9 = 0;
    }

    [(NSFaultHandler *)v9 turnObject:d intoFaultWithContext:object];
    if (d && lean)
    {
      v10 = *(d + 16);
      if ((v10 & 9) != 0)
      {
        [object[7] removeObject:d];
        [object[12] removeObject:d];
        v10 = *(d + 16);
      }

      if ((v10 & 0x12) != 0)
      {
        [object[9] removeObject:d];
        [object[10] removeObject:d];
        v10 = *(d + 16);
      }

      if ((v10 & 0x24) != 0)
      {
        [object[11] removeObject:d];
        [object[8] removeObject:d];
        v10 = *(d + 16);
      }

      *(d + 16) = v10 & 0xFFFFFFC0;
      [(NSManagedObject *)d _setOriginalSnapshot__:?];
      [(NSManagedObject *)d _setLastSnapshot__:?];
    }

    if (v7)
    {
      [(NSManagedObjectContext *)object _committedSnapshotForObject:d];
    }

    if (v11)
    {
      [(NSManagedObject *)d _setLastSnapshot__:v11];
    }
  }
}

- (uint64_t)_mergeRefreshObject:(char)object mergeChanges:(NSKnownKeysDictionary *)changes withPersistentSnapshot:
{
  v66 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, sel__mergeRefreshObject_mergeChanges_withPersistentSnapshot_);
    if (a2)
    {
LABEL_3:
      v8 = *(a2 + 16);
      if ((v8 & 0x80) != 0 || !*(a2 + 32))
      {
        return 0;
      }

      v9 = (v8 >> 15) & 7;
      if (v9 != 5 && v9 != 0)
      {
        return 0;
      }

      objectID = [a2 objectID];
      values = objectID;
      if ((object & 1) == 0)
      {
        [a2 willRefresh:0];
        [NSManagedObjectContext _refaultObject:self globalID:a2 BOOLean:1];
        return 1;
      }

      v12 = objectID;
      [a2 willRefresh:1];
      refreshed = changes;
      if (!changes)
      {
        refreshed = [(NSManagedObject *)a2 _newChangedValuesForRefresh__];
      }

      _changedTransientProperties__ = [(NSManagedObject *)a2 _changedTransientProperties__];
      v15 = _insertion_fault_handler;
      entity = [a2 entity];
      v17 = *(a2 + 48);
      v32 = v15;
      if (v17)
      {
        v18 = *v17;
        v19 = *(a2 + 16);
        v20 = 0;
        v21 = 1;
        if (v18)
        {
          if ((v19 & 0x2000) == 0)
          {
            if (entity)
            {
              v20 = *(*(entity + 152) + 48);
              if (v20)
              {
                *(a2 + 16) = v19 | 0x1000;
                [a2 _willChangeValuesForKeys:v20];
                v21 = 0;
                v19 = *(a2 + 16) & 0xFFFFEFFF;
              }
            }
          }
        }
      }

      else
      {
        v20 = 0;
        v19 = *(a2 + 16);
        v21 = 1;
      }

      *(a2 + 16) = v19 | 0x2000;
      [NSManagedObjectContext _refaultObject:self globalID:a2 BOOLean:0];
      v22 = *(a2 + 16) & 0x12;
      v23 = v22 != 0;
      if ([v12 isTemporaryID])
      {
        v24 = atomic_load((self + 48));
        v23 = v24 ^ 1 | (v22 != 0);
      }

      if (v23 & 1) != 0 || ((v21 ^ 1))
      {
        if (v23)
        {
          goto LABEL_26;
        }
      }

      else if (([a2 hasChanges] & 1) == 0)
      {
LABEL_26:
        v25 = 0;
LABEL_37:
        if ([(NSKnownKeysDictionary *)refreshed count])
        {
          [(NSManagedObject *)a2 _updateFromRefreshSnapshot:0 includingTransients:?];
        }

        if (!changes)
        {
        }

        if ([(NSKnownKeysDictionary *)_changedTransientProperties__ count])
        {
          [(NSManagedObject *)a2 _updateFromSnapshot:_changedTransientProperties__];
        }

        v30 = *(a2 + 16);
        if (v25)
        {
          *(a2 + 16) = v30 | 0x1000;
          [a2 awakeFromFetch];
          v30 = *(a2 + 16) & 0xFFFFEFFF;
        }

        *(a2 + 16) = v30 & 0xFFFFDFFF;
        if ((v21 & 1) == 0)
        {
          [a2 _didChangeValuesForKeys:v20];
        }

        return 1;
      }

      [(NSManagedObjectContext *)self lockObjectStore];
      v26 = [*(self + 32) newValuesForObjectWithID:values withContext:self error:0];
      v25 = v26 != 0;
      if (v26)
      {
        v27 = v26;
        if ((*(a2 + 17) & 2) == 0 && ([values isTemporaryID] & 1) == 0)
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v28 = _PFStackAllocatorCreate(&v34, 1024);
          v29 = CFArrayCreate(v28, &values, 1, 0);
          [*(self + 32) managedObjectContextDidRegisterObjectsWithIDs:v29 generation:{objc_msgSend(self, "_queryGenerationToken")}];
          if (*(&v35 + 1) && v29)
          {
            CFRelease(v29);
          }

          *(a2 + 16) |= 0x200u;
        }

        _PFFaultHandlerFulfillFault(v32, a2, self, v27, 0);
      }

      [(NSManagedObjectContext *)self unlockObjectStore];
      goto LABEL_37;
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return 0;
}

- (void)_mergeRefreshEpilogueForObject:(uint64_t)object mergeChanges:
{
  [a2 awakeFromSnapshotEvents:256];
  [a2 didRefresh:object];
  [(NSManagedObjectContext *)self _prepareUnprocessedDeletionAfterRefresh:a2];
  result = [*(self + 112) addObject:{objc_msgSend(a2, "objectID")}];
  if ((*(self + 40) & 1) == 0)
  {

    return [(NSManagedObjectContext *)self _enqueueEndOfEventNotification];
  }

  return result;
}

- (void)undo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  if (*(self->_additionalPrivateIvars + 5))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [self->_additionalPrivateIvars[5] undo];
    [v3 drain];
  }
}

- (void)redo
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  [(NSManagedObjectContext *)self discardEditing];
  if (*(self->_additionalPrivateIvars + 5))
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [self->_additionalPrivateIvars[5] redo];
    [v3 drain];
  }
}

- (NSManagedObjectContext)initWithCoder:(id)coder
{
  objc_opt_class();
  v19.receiver = self;
  v19.super_class = NSManagedObjectContext;
  v5 = [(NSManagedObjectContext *)&v19 init];
  if (v5)
  {
    v6 = [coder decodeIntForKey:@"NSConcurrencyType"];
    v7 = v6;
    if (v6 == 2)
    {
      v9 = 3;
    }

    else if (v6 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = !v6 && (byte_1ED4BEA2C & 1) == 0 && (current_queue = dispatch_get_current_queue(), pthread_main_np()) && (current_queue == dispatch_get_global_queue(0, 0) || current_queue == MEMORY[0x1E69E96A0]);
    }

    v10 = [(NSManagedObjectContext *)v5 _initWithParentObjectStore:v9];
    if (v5 == v10 || (v11 = v10, v5, (v5 = v11) != 0))
    {
      if (v7 == 2)
      {
        v13 = MEMORY[0x1E69E96A0];
        v5[3] = MEMORY[0x1E69E96A0];
        if (!dispatch_queue_get_specific(v13, "com.apple.CoreData.NSManagedObjectContext.mainQueue"))
        {
          v14 = objc_opt_class();
          dispatch_queue_set_specific(MEMORY[0x1E69E96A0], "com.apple.CoreData.NSManagedObjectContext.mainQueue", v14, 0);
          v13 = v5[3];
        }

        dispatch_retain(v13);
        v12 = v5[5] & 0xFFFBFFFF;
      }

      else
      {
        if (v7 != 1)
        {
LABEL_22:
          atomic_store(0, v5 + 1);
          [coder decodeFloatForKey:@"NSFetchTimestamp"];
          *(v5 + 18) = v15;
          if ([coder decodeBoolForKey:@"NSRetainsRegisteredObjects"])
          {
            v16 = 64;
          }

          else
          {
            v16 = 0;
          }

          *(v5 + 10) = v5[5] & 0xFFFFFFBF | v16;
          if ([coder decodeBoolForKey:@"NSPropagatesDeleted"])
          {
            v17 = 2;
          }

          else
          {
            v17 = 0;
          }

          *(v5 + 10) = v5[5] & 0xFFFFFFFD | v17;
          [v5 setMergePolicy:{objc_msgSend(coder, "decodeObjectForKey:", @"NSMergePolicy"}];
          return v5;
        }

        v5[3] = createQueueForMOC(v5);
        v12 = *(v5 + 10) | 0x40000;
      }

      *(v5 + 10) = v12;
      goto LABEL_22;
    }
  }

  return v5;
}

- (void)_initWithParentObjectStore:(void *)store
{
  objc_opt_self();
  v29.receiver = store;
  v29.super_class = NSManagedObjectContext;
  v4 = objc_msgSendSuper2(&v29, sel_init);
  v5 = v4;
  if (v4)
  {
    v4[4] = 0;
    v4[21] = PF_CALLOC_OBJECT_ARRAY(22);
    v6 = [[_PFContextMapTable alloc] initWithWeaksReferences:?];
    v5[15] = v6;
    CFRetain(v6);

    v28.version = *MEMORY[0x1E695E9F8];
    *&v28.retain = *(MEMORY[0x1E695E9F8] + 8);
    v7 = *(MEMORY[0x1E695E9F8] + 24);
    v28.equal = 0;
    v28.hash = 0;
    v28.copyDescription = v7;
    v8 = *MEMORY[0x1E695E480];
    v5[9] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v28);
    v5[8] = CFSetCreateMutable(v8, 0, &v28);
    v5[7] = CFSetCreateMutable(v8, 0, &v28);
    v5[10] = CFSetCreateMutable(v8, 0, &v28);
    v5[11] = CFSetCreateMutable(v8, 0, &v28);
    v5[12] = CFSetCreateMutable(v8, 0, &v28);
    v5[13] = CFSetCreateMutable(v8, 0, &v28);
    v5[14] = CFSetCreateMutable(v8, 0, &v28);
    atomic_store(a2 & 1, v5 + 49);
    if (_PF_USE_IOS_PLATFORM)
    {
      *(v5[21] + 40) = 0;
      *(v5 + 22) = 0;
    }

    else
    {
      if (HIBYTE(dword_1ED4BEEC0) == 1)
      {
        *(v5[21] + 40) = 0;
      }

      else
      {
        *(v5[21] + 40) = objc_alloc_init(MEMORY[0x1E696AFC8]);
        v9 = atomic_load(v5 + 49);
        if ((v9 & 1) == 0)
        {
          [*(v5[21] + 40) setGroupsByEvent:0];
        }
      }

      *(v5 + 22) = 0;
      if (*(v5[21] + 40))
      {
        [(NSManagedObjectContext *)v5 _startObservingUndoManagerNotifications];
      }
    }

    if ((a2 & 2) == 0)
    {
      v10 = 0x1E696AE68;
      if (_PF_Threading_Debugging_level <= 0)
      {
        v10 = off_1E6EC0C58;
      }

      v11 = objc_alloc_init(*v10);
      v5[17] = v11;
      CFRetain(v11);
    }

    *(v5 + 13) = 0;
    *(v5 + 5) = 0;
    v12 = [_PFManagedObjectReferenceQueue alloc];
    if (v12)
    {
      v31.receiver = v12;
      v31.super_class = _PFManagedObjectReferenceQueue;
      v13 = objc_msgSendSuper2(&v31, sel_init);
      v14 = v13;
      v13[2] = 0;
      v13[3] = v5;
      v13[4] = 0;
      if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1 && (v15 = atomic_load(v5 + 49), (v15 & 1) != 0))
      {
        Main = CFRunLoopGetMain();
        context.version = 0;
        memset(&context.retain, 0, 24);
        context.info = v14;
        v17 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 0, _performRunLoopAction, &context);
        CFRunLoopAddObserver(Main, v17, *MEMORY[0x1E695E8D0]);
        v14[5] = v17;
        CFRetain(v14);
      }

      else
      {
        v13[5] = 0;
      }

      CFRetain(v14);
    }

    else
    {
      v14 = 0;
    }

    v5[19] = v14;
    CFRetain(v14);

    v5[3] = 0;
    atomic_store(0, v5 + 1);
    v5[18] = 0xBFF0000000000000;
    *(v5[21] + 16) = 0;
    *(v5 + 23) = 0;
    atomic_store(0, v5 + 51);
    v18 = *(v5 + 10);
    *(v5 + 4) = 0;
    if (byte_1ED4BEA2B)
    {
      v19 = 0x2000000;
    }

    else
    {
      v19 = 0;
    }

    *(v5 + 10) = v18 & 0xFDF4E000 | v19 | 0x90002;
    *(v5[21] + 24) = NSErrorMergePolicy;
    *(v5[21] + 96) = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
    *(v5[21] + 32) = 0;
    *(v5 + 10) &= ~0x2000u;
    *v5[21] = 0;
    *(v5[21] + 8) = 0;
    *(v5[21] + 136) = 0;
    *(v5[21] + 144) = 0;
    *(v5[21] + 112) = 0;
    *(v5[21] + 152) = 0;
    *(v5[21] + 56) = 0;
    v5[16] = 0;
    *(v5[21] + 48) = 0;
    *(v5[21] + 80) = 0;
    *(v5[21] + 120) = 0;
    *(v5[21] + 128) = 0;
    *(v5 + 10) = v5[5] & 0xF3FFFFFF | 0x8000000;
    if (_PF_Threading_Debugging_level)
    {
      v21 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v21 = malloc_default_zone();
      }

      *(v5[21] + 56) = malloc_type_zone_malloc(v21, 0x30uLL, 0x80040B8603338uLL);
      v22 = pthread_self();
      **(v5[21] + 56) = v22;
      *(*(v5[21] + 56) + 8) = v22;
      *(*(v5[21] + 56) + 16) = 0;
      *(*(v5[21] + 56) + 24) = 0;
      *(*(v5[21] + 56) + 32) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(*(v5[21] + 56) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = atomic_load(v5 + 49);
      if ((v23 & 1) == 0)
      {
        currentQueue = [MEMORY[0x1E696ADC8] currentQueue];
        if ([currentQueue maxConcurrentOperationCount] == 1)
        {
          v25 = currentQueue;
        }

        else
        {
          v25 = 0;
        }

        *(*(v5[21] + 56) + 16) = v25;
        current_queue = dispatch_get_current_queue();
        if (current_queue == dispatch_get_global_queue(0, 0))
        {
          v27 = 0;
        }

        else
        {
          v27 = current_queue;
        }

        *(*(v5[21] + 56) + 24) = v27;
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  fetchTimestamp = self->_fetchTimestamp;
  *&fetchTimestamp = fetchTimestamp;
  [coder encodeFloat:@"NSFetchTimestamp" forKey:fetchTimestamp];
  [coder encodeBool:(*&self->_flags >> 6) & 1 forKey:@"NSRetainsRegisteredObjects"];
  [coder encodeBool:(*&self->_flags >> 1) & 1 forKey:@"NSPropagatesDeleted"];
  [coder encodeObject:-[NSManagedObjectContext mergePolicy](self forKey:{"mergePolicy"), @"NSMergePolicy"}];
  concurrencyType = [(NSManagedObjectContext *)self concurrencyType];

  [coder encodeInt:concurrencyType forKey:@"NSConcurrencyType"];
}

- (void)detectConflictsForObject:(NSManagedObject *)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    if (!object)
    {
      goto LABEL_6;
    }
  }

  else if (!object)
  {
    goto LABEL_6;
  }

  if ((object->_cd_stateFlags & 0x80) == 0)
  {
    cd_managedObjectContext = object->_cd_managedObjectContext;
    goto LABEL_7;
  }

LABEL_6:
  cd_managedObjectContext = 0;
LABEL_7:
  if (cd_managedObjectContext == self)
  {
    if ([(NSManagedObject *)object isFault])
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:self withContext:?];
    }

    lockedObjects = self->_lockedObjects;

    [(NSMutableSet *)lockedObjects addObject:object];
  }

  else if (cd_managedObjectContext)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An NSManagedObjectContext cannot detect conflicts for objects in other contexts." userInfo:0]);
  }
}

- (void)_coreMergeChangesFromDidSaveDictionary:(int)dictionary usingObjectIDs:(uint64_t)ds withClientQueryGeneration:
{
  dictionaryCopy = dictionary;
  v155 = a2;
  v159 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, sel__coreMergeChangesFromDidSaveDictionary_usingObjectIDs_withClientQueryGeneration_);
  }

  v148 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v6 = [v155 objectForKey:@"managedObjectContext"];
  if (!v6)
  {
    goto LABEL_11;
  }

  Weak = objc_loadWeak((v6 + 8));
  if (!Weak)
  {
    v8 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    Weak = 0;
    goto LABEL_12;
  }

  v8 = [MEMORY[0x1E695DFA8] set];
  parentContext = Weak;
  do
  {
    [v8 addObject:parentContext];
    parentContext = [parentContext parentContext];
  }

  while (parentContext);
LABEL_12:
  if (Weak == self || v8 && [v8 containsObject:self])
  {

    [v148 drain];
    return;
  }

  v10 = [v155 objectForKey:@"newQueryGeneration"];
  if ([v10 _isEnabled])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  _queryGenerationToken = [self _queryGenerationToken];
  if (!ds && [_queryGenerationToken _isEnabled])
  {
    [self _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
  }

  v12 = [v155 objectForKey:@"inserted"];
  v13 = [v155 objectForKey:@"inserted_objectIDs"];
  v14 = [v12 count];
  v142 = v13;
  v15 = [v13 count];
  v143 = &v131;
  v139 = v15;
  v140 = v14;
  v16 = v15 + v14;
  if ((v15 + v14) <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 + v14;
  }

  if (v16 >= 0x201)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = (&v131 - ((8 * v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = v15 + v14;
  if (v16 > 0x200)
  {
    v19 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v131 - ((8 * v18 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v17);
  }

  v20 = v155;
  v21 = [v155 objectForKey:@"updated"];
  v22 = [v20 objectForKey:@"updated_objectIDs"];
  v23 = [v21 count];
  v136 = v22;
  v24 = [v22 count];
  v138 = v23;
  v137 = v24;
  v25 = v24 + v23;
  if ((v24 + v23) <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24 + v23;
  }

  if (v25 >= 0x201)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = (&v131 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = v24 + v23;
  v141 = v21;
  if (v25 > 0x200)
  {
    v28 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v131 - ((8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v26);
  }

  v29 = v155;
  v30 = [v155 objectForKey:@"deleted"];
  v31 = [v29 objectForKey:@"deleted_objectIDs"];
  v32 = [v30 count];
  v33 = [v31 count];
  v34 = v33 + v32;
  if ((v33 + v32) <= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v33 + v32;
  }

  if (v34 >= 0x201)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  v152 = v33 + v32;
  v133 = v11;
  v153 = v28;
  v154 = v19;
  if (v34 > 0x200)
  {
    v151 = NSAllocateScannedUncollectable();
  }

  else
  {
    v151 = &v131 - ((8 * v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v151, 8 * v35);
  }

  v37 = v149;
  if (v152 > v149)
  {
    v37 = v152;
  }

  if (v37 <= v156)
  {
    v38 = v156;
  }

  else
  {
    v38 = v37;
  }

  if (v38 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v38;
  }

  if (v38 >= 0x201)
  {
    v40 = 1;
  }

  else
  {
    v40 = v39;
  }

  v41 = &v131 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v38;
  if (v38 > 0x200)
  {
    v41 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v131 - ((8 * v40 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v39);
  }

  v42 = v149 + v156;
  if (v149 + v156 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v149 + v156;
  }

  if (v42 >= 0x201)
  {
    v44 = 1;
  }

  else
  {
    v44 = v43;
  }

  v150 = v149 + v156;
  if (v42 > 0x200)
  {
    v157 = NSAllocateScannedUncollectable();
  }

  else
  {
    v157 = &v131 - ((8 * v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v157, 8 * v43);
  }

  v158 = malloc_type_calloc(1uLL, v150, 0x100004077774924uLL);
  v145 = *(self + 40) & 0x20000;
  dsCopy = ds;
  persistentStoreCoordinator = [self persistentStoreCoordinator];
  *(self + 40) |= 0x21000u;
  v135 = v30;
  if (v156)
  {
    v46 = dictionaryCopy;
    v47 = [v12 count];
    v48 = v12;
    v49 = v47;
    [v48 getObjects:v41];
    [v142 getObjects:&v41[8 * v49]];
    v50 = 0;
    while (1)
    {
      objectID = *&v41[8 * v50];
      if ((v46 & 1) == 0 && v50 < v49)
      {
        objectID = [*&v41[8 * v50] objectID];
      }

      if (([objectID _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID, "_storeIdentifier")))
      {
        break;
      }

      v52 = [self objectWithID:objectID];
      v53 = v52;
      v154[v50] = v52;
      if (v52)
      {
        if (([v52 hasChanges] & 1) != 0 || (v54 = *(v53 + 48)) != 0 && (v54 = *v54) != 0)
        {
          if ((*(v53 + 16) & 0x24) != 0)
          {
            [*(self + 64) removeObject:v53];
            [*(self + 88) removeObject:v53];
            *(v53 + 16) &= 0xFFFFFFDB;
          }

          v55 = **(self + 168);
          if (v55)
          {
            [v55 removeObject:{objc_msgSend(v53, "objectID")}];
          }

          LOBYTE(v54) = 1;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
      }

      v158[v50] = v54;
      if ([v53 isFault])
      {
        refreshed = 0;
      }

      else
      {
        refreshed = [(NSManagedObject *)v53 _newChangedValuesForRefresh__];
      }

      if (![(NSKnownKeysDictionary *)refreshed count])
      {

        refreshed = 0;
      }

      v57 = v156;
      *&v157[8 * v50++] = refreshed;
      if (v57 == v50)
      {
        v58 = objc_alloc(MEMORY[0x1E695DFD8]);
        v59 = [v58 initWithObjects:v154 count:v156];
        v134 = v31;
        v142 = v59;
        goto LABEL_100;
      }
    }

    v112 = 0;
  }

  else
  {
    v134 = v31;
    v142 = 0;
    v46 = dictionaryCopy;
LABEL_100:
    v60 = v141;
    if (v149)
    {
      v61 = [v141 count];
      [v60 getObjects:v41];
      [v136 getObjects:&v41[8 * v61]];
      v62 = 0;
      v63 = v156;
      v64 = v149;
      while (1)
      {
        objectID2 = *&v41[8 * v62];
        if ((v46 & 1) == 0 && v62 < v61)
        {
          objectID2 = [*&v41[8 * v62] objectID];
        }

        if (([objectID2 _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID2, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID2, "_storeIdentifier")))
        {
          break;
        }

        v66 = [self objectRegisteredForID:objectID2];
        _newChangedValuesForRefresh__ = v66;
        if (v66)
        {
          if (([(NSKnownKeysDictionary *)v66 hasChanges]& 1) != 0)
          {
            LOBYTE(isa) = 1;
          }

          else
          {
            isa = _newChangedValuesForRefresh__[6].super.super.super.isa;
            if (isa)
            {
              LOBYTE(isa) = *isa != 0;
            }
          }

          v153[v62] = _newChangedValuesForRefresh__;
          v158[v63] = isa;
          if (([(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ isFault]& 1) != 0)
          {
            _newChangedValuesForRefresh__ = 0;
          }

          else
          {
            _newChangedValuesForRefresh__ = [(NSManagedObject *)_newChangedValuesForRefresh__ _newChangedValuesForRefresh__];
          }

          v69 = v63;
        }

        else
        {
          v153[v62] = 0;
          v69 = v62 + v156;
          v158[v63] = 0;
        }

        if (![(NSKnownKeysDictionary *)_newChangedValuesForRefresh__ count])
        {

          _newChangedValuesForRefresh__ = 0;
        }

        *&v157[8 * v69] = _newChangedValuesForRefresh__;
        ++v62;
        ++v63;
        if (!--v64)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
LABEL_121:
      if (!v152)
      {
LABEL_137:
        if (v156)
        {
          v78 = v154;
          v80 = v157;
          v79 = v158;
          v81 = v156;
          do
          {
            v82 = *v79;
            v83 = *v80;
            if (*v78)
            {
              if (v83)
              {
                v84 = *v80;
              }

              else
              {
                v84 = NSDictionary_EmptyDictionary;
              }

              v85 = [(NSManagedObjectContext *)self _mergeRefreshObject:v82 != 0 mergeChanges:v84 withPersistentSnapshot:?];
            }

            else
            {
              v85 = 0;
            }

            *v80++ = 0;
            v86 = v82 | 2;
            if (!v85)
            {
              v86 = v82;
            }

            *v79++ = v86;
            ++v78;
            --v81;
          }

          while (v81);
        }

        if (v156 < v150)
        {
          v87 = v137 + v138;
          v88 = &v157[8 * v156];
          v89 = &v158[v140 + v139];
          v90 = v153;
          do
          {
            v91 = *v89;
            v92 = *v88;
            if (*v90)
            {
              if (v92)
              {
                v93 = *v88;
              }

              else
              {
                v93 = NSDictionary_EmptyDictionary;
              }

              v94 = [(NSManagedObjectContext *)self _mergeRefreshObject:v91 != 0 mergeChanges:v93 withPersistentSnapshot:?];
            }

            else
            {
              v94 = 0;
            }

            *v88++ = 0;
            v95 = v91 | 2;
            if (!v94)
            {
              v95 = v91;
            }

            *v89++ = v95;
            ++v90;
            --v87;
          }

          while (v87);
        }

        if (v156)
        {
          v96 = v154;
          v97 = v158;
          v98 = v156;
          do
          {
            v100 = *v97++;
            v99 = v100;
            v101 = v100 & 2;
            if (*v96)
            {
              v102 = v101 == 0;
            }

            else
            {
              v102 = 1;
            }

            if (!v102)
            {
              [(NSManagedObjectContext *)self _mergeRefreshEpilogueForObject:v99 & 1 mergeChanges:?];
            }

            ++v96;
            --v98;
          }

          while (v98);
        }

        if (v156 < v150)
        {
          v103 = v137 + v138;
          v104 = &v158[v140 + v139];
          v105 = v153;
          do
          {
            v107 = *v104++;
            v106 = v107;
            v108 = v107 & 2;
            if (*v105)
            {
              v109 = v108 == 0;
            }

            else
            {
              v109 = 1;
            }

            if (!v109)
            {
              [(NSManagedObjectContext *)self _mergeRefreshEpilogueForObject:v106 & 1 mergeChanges:?];
            }

            ++v105;
            --v103;
          }

          while (v103);
        }

        v110 = 1;
        v111 = 0;
        *(self + 40) = *(self + 40) & 0xFFFDEFFF | v145;
        goto LABEL_179;
      }

      v70 = v135;
      v71 = [v135 count];
      [v70 getObjects:v41];
      [v134 getObjects:&v41[8 * v71]];
      v72 = 0;
      while (1)
      {
        objectID3 = *&v41[8 * v72];
        if ((v46 & 1) == 0 && v72 < v71)
        {
          objectID3 = [*&v41[8 * v72] objectID];
        }

        if (([objectID3 _isPersistentStoreAlive] & 1) == 0 && (objc_msgSend(objectID3, "isTemporaryID") & 1) == 0 && !objc_msgSend(persistentStoreCoordinator, "persistentStoreForIdentifier:", objc_msgSend(objectID3, "_storeIdentifier")))
        {
          break;
        }

        if (objectID3)
        {
          v74 = **(self + 168);
          if (!v74)
          {
            **(self + 168) = objc_alloc_init(MEMORY[0x1E695DFA8]);
            v74 = **(self + 168);
          }

          [v74 addObject:objectID3];
        }

        v75 = [self objectRegisteredForID:objectID3];
        v76 = v75;
        if (v75 && (v75[16] & 0x20) == 0)
        {
          [self deleteObject:v75];
        }

        v77 = v152;
        *&v151[8 * v72++] = v76;
        if (v77 == v72)
        {
          goto LABEL_137;
        }
      }
    }

    v112 = v142;
  }

  *(self + 40) = *(self + 40) & 0xFFFDEFFF | v145;

  v110 = 0;
  v142 = 0;
  v111 = 1;
LABEL_179:
  if (v150 >= 1)
  {
    v113 = v157;
    v114 = v150;
    do
    {
      if (*v113)
      {
      }

      ++v113;
      --v114;
    }

    while (v114);
  }

  v115 = v148;
  if (v150 >= 0x201)
  {
    NSZoneFree(0, v157);
  }

  if (v152 >= 0x201)
  {
    NSZoneFree(0, v151);
  }

  if (v156 >= 0x201)
  {
    NSZoneFree(0, v154);
  }

  if (v149 >= 0x201)
  {
    NSZoneFree(0, v153);
  }

  if (v144 >= 0x201)
  {
    NSZoneFree(0, v41);
  }

  if (v158)
  {
    free(v158);
  }

  if (v115)
  {
    [v115 drain];
  }

  v116 = dictionaryCopy;
  if (v110)
  {
    if ((v111 & 1) == 0)
    {
      v158 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (v142)
      {
        v117 = *(*(self + 168) + 88);
        if (!v117)
        {
          v117 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          *(*(self + 168) + 88) = v117;
        }

        [v117 unionSet:v142];
        v118 = v142;
      }

      v119 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v120 = v119;
      if (v133)
      {
        [v119 setObject:v133 forKey:@"newQueryGeneration"];
      }

      for (i = 0; i != 5; ++i)
      {
        v122 = [v155 objectForKey:off_1E6EC2460[i]];
        v123 = off_1E6EC2488[i];
        v124 = [v155 objectForKey:v123];
        if ([v122 count] || objc_msgSend(v124, "count"))
        {
          if (v122)
          {
            v125 = v122;
          }

          else
          {
            v125 = NSSet_EmptySet;
          }

          if (v124)
          {
            v126 = v124;
          }

          else
          {
            v126 = NSSet_EmptySet;
          }

          if (v116)
          {
            v127 = v125;
          }

          else
          {
            v127 = [_PFRoutines newSetOfObjectIDsFromCollection:v125];
          }

          v128 = v127;
          v129 = [_PFRoutines newSetFromCollection:v127 byAddingItems:v126];

          [v120 setObject:v129 forKey:v123];
        }
      }

      v130 = dsCopy == 0;
      *(*(self + 168) + 104) = [v120 copy];

      if (v130 && [_queryGenerationToken _isEnabled])
      {
        [self _setQueryGenerationFromToken:+[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken error:{"currentQueryGenerationToken"), 0}];
      }

      [self processPendingChanges];
      if (v158)
      {
        [v158 drain];
      }

      if (*(self + 24))
      {
        [(NSManagedObjectContext *)self _registerAsyncReferenceCallback];
      }
    }
  }
}

- (void)mergeChangesFromContextDidSaveNotification:(NSNotification *)notification
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  object = [(NSNotification *)notification object];
  if (object != self)
  {
    v6 = object;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [(NSManagedObjectContext *)v6 persistentStoreCoordinator], v7 == [(NSManagedObjectContext *)self persistentStoreCoordinator]))
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      [(NSManagedObjectContext *)self _mergeChangesFromDidSaveDictionary:[(NSNotification *)notification userInfo] usingObjectIDs:0];

      [v10 drain];
    }

    else
    {
      v8 = objc_opt_class();
      userInfo = [(NSNotification *)notification userInfo];
      v11[0] = self;
      [v8 _mergeChangesFromRemoteContextSave:userInfo intoContexts:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 1)}];
    }
  }
}

- (NSManagedObjectContext)initWithConcurrencyType:(NSManagedObjectContextConcurrencyType)ct
{
  objc_opt_class();
  v14.receiver = self;
  v14.super_class = NSManagedObjectContext;
  v5 = [(NSManagedObjectContext *)&v14 init];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if (ct == NSMainQueueConcurrencyType)
  {
    [(NSManagedObjectContext *)v5 _initWithParentObjectStore:?];
    dispatchQueue = MEMORY[0x1E69E96A0];
    v6->_dispatchQueue = MEMORY[0x1E69E96A0];
    if (!dispatch_queue_get_specific(dispatchQueue, "com.apple.CoreData.NSManagedObjectContext.mainQueue"))
    {
      v11 = objc_opt_class();
      dispatch_queue_set_specific(MEMORY[0x1E69E96A0], "com.apple.CoreData.NSManagedObjectContext.mainQueue", v11, 0);
      dispatchQueue = v6->_dispatchQueue;
    }

    dispatch_retain(dispatchQueue);
    v9 = *&v6->_flags & 0xFFFBFFFF;
  }

  else
  {
    if (ct != NSPrivateQueueConcurrencyType)
    {
      if (ct)
      {
        v8 = 0;
      }

      else
      {
        v8 = (byte_1ED4BEA2C & 1) == 0 && (current_queue = dispatch_get_current_queue(), pthread_main_np()) && (current_queue == dispatch_get_global_queue(0, 0) || current_queue == MEMORY[0x1E69E96A0]);
        v5 = v6;
      }

      [(NSManagedObjectContext *)v5 _initWithParentObjectStore:v8];
      goto LABEL_19;
    }

    [(NSManagedObjectContext *)v5 _initWithParentObjectStore:?];
    v6->_dispatchQueue = createQueueForMOC(v6);
    v9 = *&v6->_flags | 0x40000;
  }

  v6->_flags = v9;
LABEL_19:
  atomic_store(0, &v6->_queueOwner);
  if (+[NSSQLCore trackSQLiteDatabaseStatistics])
  {
    v12 = 0x20000000;
  }

  else
  {
    v12 = 0;
  }

  v6->_flags = (*&v6->_flags & 0xDFFFFFFF | v12);
  return v6;
}

- (void)performBlock:(void *)block
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlock: on an NSManagedObjectContext that was created with a queue." userInfo:{0, v3, v4}]);
  }

  [(NSManagedObjectContext *)self performWithOptions:8199 andBlock:block];
}

- (void)performBlockAndWait:(void *)block
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSManagedObjectContext that was created with a queue." userInfo:0]);
  }

  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  context[0] = block;
  context[1] = self;
  v14 = 0;
  v15 = v4;
  if (byte_1ED4BEA2A)
  {
    v14 = 4;
  }

  v5 = atomic_load(&self->_isMainThreadBlessed);
  if ((v5 & 1) == 0)
  {
    if (!v4)
    {
      goto LABEL_27;
    }

    v6 = 0;
    v7 = 0;
    v8 = v4;
    while (v8 != self)
    {
      if (v8 == v6)
      {
        goto LABEL_16;
      }

      if (!v6)
      {
        v6 = v8;
      }

      v8 = atomic_load((v8 + 8));
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    v7 = 1;
LABEL_16:
    if (v7)
    {
      goto LABEL_26;
    }

LABEL_17:
    v9 = 0;
    v10 = 0;
    selfCopy = self;
    while (selfCopy != v4)
    {
      if (selfCopy == v9)
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        v9 = selfCopy;
      }

      selfCopy = atomic_load(&selfCopy->_queueOwner);
      if (!selfCopy)
      {
        goto LABEL_27;
      }
    }

    v10 = 1;
LABEL_25:
    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_26:
    developerSubmittedBlockToNSManagedObjectContextPerform(context);
    return;
  }

  if (_PFIsSerializedWithMainQueue())
  {
    goto LABEL_26;
  }

LABEL_27:
  v12 = 8196;
  if (!byte_1ED4BEA2A)
  {
    v12 = 0x2000;
  }

  v14 = v12;
  dispatch_sync_f(self->_dispatchQueue, context, developerSubmittedBlockToNSManagedObjectContextPerform);
}

- (unsigned)_setParentContext:(unsigned __int8 *)result
{
  if (result)
  {
    v3 = result;
    atomic_store(1u, result + 48);
    persistentStoreCoordinator = [a2 persistentStoreCoordinator];
    *(v3 + 4) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    [(NSManagedObjectContext *)v3 _registerForNotificationsWithCoordinator:persistentStoreCoordinator];
    result = [(_PFContextMapTable *)*(v3 + 15) setForUseWithCoordinator:persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v5 = *(persistentStoreCoordinator + 96);
      if (v5)
      {
        v5 = *(v5 + 48);
      }
    }

    else
    {
      v5 = 0;
    }

    *(*(v3 + 21) + 80) = v5;
  }

  return result;
}

- (void)_registerForNotificationsWithCoordinator:(void *)result
{
  if (result)
  {
    if (a2)
    {
      v2 = result;
      result = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      if ((*(v2 + 42) & 0x40) != 0 && v2[3] && v2[4])
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        v4 = v2[4];

        return [defaultCenter addObserver:v2 selector:sel__automaticallyMergeChangesFromContextDidSaveNotification_ name:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:v4];
      }
    }
  }

  return result;
}

- (void)setParentContext:(NSManagedObjectContext *)parentContext
{
  if (!parentContext)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Parent NSManagedObjectContext must not be nil.";
    goto LABEL_16;
  }

  parentObjectStore = self->_parentObjectStore;
  if (parentObjectStore == parentContext)
  {
    return;
  }

  if (parentObjectStore)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D930];
    v6 = @"Context already has a coordinator;  cannot replace.";
    goto LABEL_16;
  }

  if (!parentContext->_dispatchQueue)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Parent NSManagedObjectContext must use either NSPrivateQueueConcurrencyType or NSMainQueueConcurrencyType.";
LABEL_16:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  if (self->_dispatchQueue)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__NSManagedObjectContext_setParentContext___block_invoke;
    v9[3] = &unk_1E6EC1600;
    v9[4] = self;
    v9[5] = parentContext;
    [(NSManagedObjectContext *)self performBlockAndWait:v9];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      v7 = parentContext;
      selfCopy = self;
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
      parentContext = v7;
      self = selfCopy;
    }

    [(NSManagedObjectContext *)self _setParentContext:?];
  }
}

- (void)setName:(NSString *)name
{
  v5 = [(NSString *)name copy];
  v6 = v5;
  if (self->_dispatchQueue)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__NSManagedObjectContext_setName___block_invoke;
    v7[3] = &unk_1E6EC1600;
    v7[4] = self;
    v7[5] = v5;
    [(NSManagedObjectContext *)self performBlockAndWait:v7];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    *(self->_additionalPrivateIvars + 21) = v6;
  }
}

void __34__NSManagedObjectContext_setName___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];

  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 168) + 168) = v2;
  v3 = *(a1 + 32);
  if ((v3[42] & 4) != 0)
  {
    __str[0] = 0;
    if (v2)
    {
      snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p: ", v3);
      [*(a1 + 40) UTF8String];
      __strlcat_chk();
    }

    else
    {
      snprintf(__str, 0x1FFuLL, "NSManagedObjectContext %p", v3);
    }

    v4 = strdup(__str);
    __dmb(0xBu);
    v5 = *(*(*(a1 + 32) + 24) + *(MEMORY[0x1E69E9790] + 2));
    v6 = v5;
    atomic_compare_exchange_strong((*(*(a1 + 32) + 24) + *(MEMORY[0x1E69E9790] + 2)), &v6, v4);
    if (v6 == v5)
    {
      if (!v5)
      {
        return;
      }

      v7 = v9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v8 = __34__NSManagedObjectContext_setName___block_invoke_3;
    }

    else
    {
      v7 = block;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v8 = __34__NSManagedObjectContext_setName___block_invoke_2;
      v5 = v4;
    }

    v7[2] = v8;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)setTransactionAuthor:(NSString *)transactionAuthor
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__NSManagedObjectContext_setTransactionAuthor___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = transactionAuthor;
  v3[5] = self;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:v3];
  }

  else
  {
    __47__NSManagedObjectContext_setTransactionAuthor___block_invoke(v3);
  }
}

uint64_t __47__NSManagedObjectContext_setTransactionAuthor___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 168) + 128)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 168);
    v5 = *(v4 + 128);
    if (v3)
    {
      v6 = *(v4 + 128);
      v3 = [v3 copy];
      v5 = v6;
      *(*(*(a1 + 40) + 168) + 128) = v3;
    }

    else
    {
      *(v4 + 128) = 0;
    }

    return MEMORY[0x1EEE66BB8](v3, v5);
  }

  return result;
}

- (id)_retainedCurrentQueryGeneration:(id)generation
{
  if (!self->_parentObjectStore)
  {
    v4 = +[NSQueryGenerationToken nostoresQueryGenerationToken];
    goto LABEL_5;
  }

  v3 = atomic_load(&self->_isParentStoreContext);
  if (v3)
  {
    v4 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
LABEL_5:

    return v4;
  }

  parentObjectStore = self->_parentObjectStore;

  return [parentObjectStore _retainedCurrentQueryGeneration:generation];
}

- (BOOL)_setQueryGenerationFromToken:(id)token error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_parentObjectStore && (v5 = atomic_load(&self->_isParentStoreContext), (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__13;
    v17 = __Block_byref_object_dispose__13;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke;
    v12[3] = &unk_1E6EC1A00;
    v12[4] = token;
    v12[5] = self;
    v12[6] = &v19;
    v12[7] = &v13;
    if (self->_dispatchQueue)
    {
      [(NSManagedObjectContext *)self performBlockAndWait:v12];
    }

    else
    {
      __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke(v12);
    }

    v6 = *(v20 + 24);
    if ((v6 & 1) == 0)
    {
      v7 = v14[5];
      if (v7)
      {
        if (error)
        {
          *error = v7;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
          v25 = 1024;
          v26 = 4384;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v9 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
          v25 = 1024;
          v26 = 4384;
          _os_log_fault_impl(&dword_18565F000, v9, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v10 = v14[5];
      v6 = *(v20 + 24);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v6 & 1;
}

void __61__NSManagedObjectContext__setQueryGenerationFromToken_error___block_invoke(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(*(*(a1 + 40) + 168) + 96);
  if (*(a1 + 32) != v2)
  {
    v4 = +[NSQueryGenerationToken unpinnedQueryGenerationToken];
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || (v7 = +[NSQueryGenerationToken currentQueryGenerationToken](NSQueryGenerationToken, "currentQueryGenerationToken"), v4 = *(a1 + 32), v7 == v4) || (v8 = +[NSQueryGenerationToken nostoresQueryGenerationToken], v4 = *(a1 + 32), v8 == v4))
    {
      *(*(*v1 + 168) + 96) = v4;
    }

    else
    {
      v9 = [(NSQueryGenerationToken *)v4 persistentStoreCoordinator];
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      if (v9 && v9 != *(v10 + 32))
      {
        v11 = [*(a1 + 32) copy];
        v10 = *v1;
      }

      v15 = 0;
      if ([*(v10 + 32) _validateQueryGeneration:v11 error:&v15])
      {
        v12 = v11;
        v13 = 96;
        v14 = 168;
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 0;
        v12 = v15;
        v1 = (a1 + 56);
        v13 = 40;
        v14 = 8;
      }

      *(*(*v1 + v14) + v13) = v12;
    }
  }
}

- (BOOL)setQueryGenerationFromToken:(NSQueryGenerationToken *)generation error:(NSError *)error
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (self->_parentObjectStore)
  {
    v7 = atomic_load(&self->_isParentStoreContext);
    if (v7)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Child contexts inherit parent context generations and may not have their own" userInfo:0]);
    }

    if ([(NSManagedObjectContext *)self automaticallyMergesChangesFromParent]&& +[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken, "unpinnedQueryGenerationToken") != generation && +[NSQueryGenerationToken currentQueryGenerationToken]!= generation)
    {
      [(NSManagedObjectContext *)self setAutomaticallyMergesChangesFromParent:0];
    }

    return [(NSManagedObjectContext *)self _setQueryGenerationFromToken:generation error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435080];
    }

    return 0;
  }
}

- (BOOL)_setChangeTrackingTokenFromToken:(id)token error:(id *)error
{
  if (self->_parentObjectStore)
  {
    v4 = atomic_load(&self->_isParentStoreContext);
    if (v4)
    {
      return 0;
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke;
  v6[3] = &unk_1E6EC1600;
  v6[4] = token;
  v6[5] = self;
  if (self->_dispatchQueue)
  {
    [(NSManagedObjectContext *)self performBlockAndWait:v6, error];
  }

  else
  {
    __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke(v6);
  }

  return 1;
}

void __65__NSManagedObjectContext__setChangeTrackingTokenFromToken_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 168);
  v4 = *(v3 + 120);
  if (v2 != v4)
  {
    if (v2)
    {
      v5 = *(v3 + 120);
      *(*(*(a1 + 40) + 168) + 120) = v2;
      v4 = v5;
    }

    else
    {
      *(v3 + 120) = 0;
    }
  }
}

- (id)_changeTrackingToken__
{
  v2 = self->_additionalPrivateIvars[15];

  return v2;
}

- (void)setAutomaticallyMergesChangesFromParent:(BOOL)automaticallyMergesChangesFromParent
{
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Automatic merging is not supported by contexts using NSConfinementConcurrencyType" userInfo:0]);
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __67__NSManagedObjectContext__setAutomaticallyMergesChangesFromParent___block_invoke;
  v3[3] = &unk_1E6EC2770;
  v4 = automaticallyMergesChangesFromParent;
  v3[4] = self;
  [(NSManagedObjectContext *)self performBlockAndWait:v3];
}

void *__67__NSManagedObjectContext__setAutomaticallyMergesChangesFromParent___block_invoke(void *result)
{
  v1 = *(result + 40);
  v2 = result[4];
  v3 = *(v2 + 40);
  if (((v3 >> 22) & 1) != v1)
  {
    *(v2 + 40) = v3 & 0xFFBFFFFF | ((v1 & 1) << 22);
    v4 = result[4];
    if ((*(v4 + 42) & 0x40) != 0)
    {
      if (*(v4 + 32) && *(v4 + 24))
      {
        v6 = [MEMORY[0x1E696AD88] defaultCenter];

        return [v6 addObserver:? selector:? name:? object:?];
      }
    }

    else
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];

      return [v5 removeObserver:? name:? object:?];
    }
  }

  return result;
}

- (void)_automaticallyMergeChangesFromContextDidSaveNotification:(id)notification
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__NSManagedObjectContext__automaticallyMergeChangesFromContextDidSaveNotification___block_invoke;
  v3[3] = &unk_1E6EC1600;
  v3[4] = self;
  v3[5] = notification;
  [(NSManagedObjectContext *)self performBlock:v3];
}

_BYTE *__83__NSManagedObjectContext__automaticallyMergeChangesFromContextDidSaveNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[42] & 0x40) != 0)
  {
    return [result mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
  }

  return result;
}

- (void)objectDidBeginEditing:(id)editing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = *(self->_additionalPrivateIvars + 4);
  if (!v5)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v5 = *(self->_additionalPrivateIvars + 4);
  }

  v7.length = CFArrayGetCount(v5);
  v7.location = 0;
  if (CFArrayGetFirstIndexOfValue(v5, v7, editing) == -1)
  {
    CFArrayAppendValue(v5, editing);
    if ((*(&self->_flags + 1) & 0x20) == 0 && CFArrayGetCount(v5) >= 1)
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"isEditing"];
      *&self->_flags |= 0x2000u;

      [(NSManagedObjectContext *)self didChangeValueForKey:@"isEditing"];
    }
  }
}

- (void)objectDidEndEditing:(id)editing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = *(self->_additionalPrivateIvars + 4);
  if (!v5)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v5 = *(self->_additionalPrivateIvars + 4);
  }

  v8.length = CFArrayGetCount(v5);
  v8.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v8, editing);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v5, FirstIndexOfValue);
    if ((*(&self->_flags + 1) & 0x20) != 0 && !CFArrayGetCount(v5))
    {
      [(NSManagedObjectContext *)self willChangeValueForKey:@"isEditing"];
      *&self->_flags &= ~0x2000u;

      [(NSManagedObjectContext *)self didChangeValueForKey:@"isEditing"];
    }
  }
}

- (BOOL)commitEditingAndReturnError:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  commitEditing = [(NSManagedObjectContext *)self commitEditing];
  if (!commitEditing)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
    if (v5)
    {
      if (error)
      {
        *error = v5;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
        v11 = 1024;
        v12 = 4595;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v9, 0x12u);
      }

      v7 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9 = 136315394;
        v10 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
        v11 = 1024;
        v12 = 4595;
        _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v9, 0x12u);
      }
    }
  }

  return commitEditing;
}

- (BOOL)commitEditing
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v3 = *(self->_additionalPrivateIvars + 4);
  if (!v3)
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v3 = *(self->_additionalPrivateIvars + 4);
  }

  if ([(NSManagedObjectContext *)self isEditing]&& (Count = CFArrayGetCount(v3), v5 = Count - 1, Count >= 1))
  {
    do
    {
      v6 = [CFArrayGetValueAtIndex(v3 v5)];
      v8 = v5-- != 0;
    }

    while (v6 && v8);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)_sendCommitEditingSelectorToTarget:(uint64_t)target sender:(uint64_t)sender selector:(char)selector flag:(uint64_t)flag contextInfo:(int)info delayed:
{
  targetCopy = target;
  selectorCopy = selector;
  flagCopy = flag;
  if (result)
  {
    v10 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:{objc_msgSend(a2, "methodSignatureForSelector:", sender)}];
    [v10 setSelector:sender];
    [v10 setArgument:&targetCopy atIndex:2];
    [v10 setArgument:&selectorCopy atIndex:3];
    [v10 setArgument:&flagCopy atIndex:4];
    if (info)
    {
      return [v10 performSelector:sel_invokeWithTarget_ withObject:a2 afterDelay:objc_msgSend(MEMORY[0x1E695DEC8] inModes:{"arrayWithObject:", *MEMORY[0x1E695E8D0]), 0.0}];
    }

    else
    {
      return [v10 invokeWithTarget:a2];
    }
  }

  return result;
}

- (void)commitEditingWithDelegate:(id)delegate didCommitSelector:(SEL)selector contextInfo:(void *)info
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v9 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v9 = malloc_default_zone();
  }

  v10 = malloc_type_zone_calloc(v9, 1uLL, 0x18uLL, 0x80040D6874129uLL);
  *v10 = delegate;
  v10[1] = selector;
  v10[2] = info;

  [(NSManagedObjectContext *)self _sendCommitEditingSelectorToTarget:0 sender:sel__managedObjectContextEditor_didCommit_contextInfo_ selector:1 flag:v10 contextInfo:1 delayed:?];
}

- (void)_managedObjectContextEditor:(id)editor didCommit:(BOOL)commit contextInfo:(id *)info
{
  commitCopy = commit;
  v8 = *(self->_additionalPrivateIvars + 4);
  if (v8)
  {
    if (!commit)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *(self->_additionalPrivateIvars + 4) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v8 = *(self->_additionalPrivateIvars + 4);
    if (!commitCopy)
    {
LABEL_10:
      [(NSManagedObjectContext *)self _sendCommitEditingSelectorToTarget:self sender:info->var1 selector:commitCopy flag:info->var2 contextInfo:0 delayed:?];
      v11 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      malloc_zone_free(v11, info);
      return;
    }
  }

  if (![(NSManagedObjectContext *)self isEditing])
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v8);
  if (Count < 1)
  {
    goto LABEL_10;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);

  [ValueAtIndex commitEditingWithDelegate:self didCommitSelector:sel__managedObjectContextEditor_didCommit_contextInfo_ contextInfo:info];
}

- (void)_forceMoveInsertToUpdatedList:(uint64_t)list
{
  if (list)
  {
    if (a2)
    {
      a2[4] &= 0xFFFFFFED;
    }

    [*(list + 72) removeObject:a2];
    [*(list + 80) removeObject:a2];

    _PFFastMOCObjectWillChange(list, a2);
  }
}

- (void)_newUnchangedLockedObjects
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(self + 104) count];
  v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v2];
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v11 - v5);
  if (v2 > 0x200)
  {
    v6 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v11 - v5, 8 * v4);
  }

  [*(self + 104) getObjects:v6];
  if (v2 >= 1)
  {
    v7 = v6;
    v8 = v2;
    do
    {
      v9 = *v7;
      if (([*v7 hasChanges] & 1) == 0)
      {
        [v3 addObject:v9];
        if ((v9[17] & 0x80) != 0)
        {
          [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v9 withContext:self];
        }
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  if (v2 >= 0x201)
  {
    NSZoneFree(0, v6);
  }

  return v3;
}

- (void)_unlimitRequest:(void *)request
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [objc_msgSend(request "substitutionVariables")];
    [v3 setValue:objc_msgSend(MEMORY[0x1E696ABC8] forKey:{"expressionForConstantValue:", 0), @"FETCH_REQUEST_LIMIT_SUBSTITUTION"}];
    [request setSubstitutionVariables:v3];
  }

  else
  {

    [request setFetchLimit:0];
  }
}

- (void)_registerObject:(void *)object withID:
{
  if (self)
  {
    if (!object)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = @"cannot record object with null globalID";
LABEL_19:
      objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
    }

    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6 != self)
      {
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D940];
        v9 = @"An NSManagedObject may only be in (or observed by) a single NSManagedObjectContext.";
        goto LABEL_19;
      }
    }

    else
    {
      *(a2 + 32) = self;
    }

    v10 = *(a2 + 40);
    if (!v10 || v10 == object)
    {
      *(a2 + 40) = object;
    }

    else
    {
      [(NSManagedObject *)a2 _setObjectID__:object];
      v11 = *(a2 + 24);
      if (v11)
      {
        snapshot_set_objectID(v11, object);
      }
    }

    if (!*(a2 + 56))
    {
      atomic_fetch_add((*(self + 152) + 8), 1u);
      *(a2 + 56) = *(self + 152);
    }

    *(a2 + 16) &= 0xFFF7FF7F;
    v12 = *(self + 120);

    _PFCMT_SetValue(v12, object, a2);
  }
}

- (void)_forceRegisterLostFault:(uint64_t)fault
{
  v20 = *MEMORY[0x1E69E9840];
  if (fault)
  {
    objectID = [a2 objectID];
    Value = _PFCMT_GetValue(*(fault + 120), objectID);
    if (Value)
    {
      v6 = Value == a2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = objc_autoreleasePoolPush();
      if (!_NSCoreDataIsOSLogEnabled(1))
      {
        goto LABEL_17;
      }

      v9 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v11 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
LABEL_16:
          *buf = 134218754;
          v13 = a2;
          v14 = 2112;
          v15 = objectID;
          v16 = 2048;
          managedObjectContext = [a2 managedObjectContext];
          v18 = 2048;
          faultCopy = fault;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fatal: Failed to re-registered lost fault. fault %p with oid %@ has a moc of %p but we expected %p\n\n", buf, 0x2Au);
        }
      }

      else if (v11)
      {
        goto LABEL_16;
      }

LABEL_17:
      _NSCoreDataLog_console(1, "fatal: Failed to re-registered lost fault. fault %p with oid %@ has a moc of %p but we expected %p\n", a2, objectID, [a2 managedObjectContext], fault);
      objc_autoreleasePoolPop(v7);
      __break(1u);
      return;
    }

    [(NSManagedObjectContext *)fault _registerObject:a2 withID:objectID];
  }
}

- (void)_forgetObject:(id)object propagateToObjectStore:(BOOL)store removeFromRegistry:(BOOL)registry
{
  v53 = *MEMORY[0x1E69E9840];
  values = object;
  if (object)
  {
    registryCopy = registry;
    storeCopy = store;
    objectCopy = object;
    objectID = [object objectID];
    v10 = objectCopy[4];
    v11 = v10 | 0x80;
    objectCopy[4] = v10 | 0x80;
    if (registryCopy && (v10 & 0x80000) == 0)
    {
      _PFCMT_RemoveValue(&self->_infoByGID->super.isa, objectID);
      v11 = objectCopy[4];
    }

    objectCopy[4] = v11 | 0x80080;
    if (!storeCopy || (v11 & 0x200) == 0 || ([objectID isTemporaryID] & 1) != 0)
    {
      goto LABEL_30;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = _PFStackAllocatorCreate(&v21, 1024);
    v13 = CFArrayCreate(v12, &values, 1, 0);
    [(NSManagedObjectContext *)self lockObjectStore];
    parentObjectStore = self->_parentObjectStore;
    if ([(__CFArray *)v13 count])
    {
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFArray count](v13, "count")}];
      v16 = [(__CFArray *)v13 count];
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          v18 = [(__CFArray *)v13 objectAtIndex:i];
          objectID2 = [v18 objectID];
          if (([objectID2 isTemporaryID] & 1) == 0)
          {
            [v15 addObject:objectID2];
            if (v18)
            {
              v18[4] &= ~0x200u;
            }
          }
        }
      }

      [parentObjectStore managedObjectContextDidUnregisterObjectsWithIDs:v15 generation:{-[NSManagedObjectContext _queryGenerationToken](self, "_queryGenerationToken")}];
    }

    [(NSManagedObjectContext *)self unlockObjectStore];
    if (*(&v22 + 1))
    {
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      *(&v21 + 1) = v21;
    }

    objectCopy = values;
    if (values)
    {
LABEL_30:
      if ((objectCopy[4] & 9) == 0 || ([(NSMutableSet *)self->_unprocessedChanges removeObject:objectCopy], [(NSMutableSet *)self->_changedObjects removeObject:values], (objectCopy = values) != 0))
      {
        if ((objectCopy[4] & 0x12) == 0 || ([(NSMutableSet *)self->_unprocessedInserts removeObject:objectCopy], [(NSMutableSet *)self->_insertedObjects removeObject:values], (objectCopy = values) != 0))
        {
          if ((objectCopy[4] & 0x24) == 0 || ([(NSMutableSet *)self->_deletedObjects removeObject:objectCopy], [(NSMutableSet *)self->_unprocessedDeletes removeObject:values], (objectCopy = values) != 0))
          {
            objectCopy[4] &= 0xFFFFFFC0;
          }
        }
      }
    }
  }
}

- (void)_changeIDsForManagedObjects:(void *)objects toIDs:
{
  selfCopy = self;
  v24[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v6 = [a2 count];
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = atomic_load(selfCopy + 50);
      if (v8)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = v6;
      }

      else
      {
        v9 = 0;
      }

      v22 = &v22;
      MEMORY[0x1EEE9AC00](v6);
      v11 = &v22 - v10;
      if (v7 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
        v13 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v22 - v10, 8 * v7);
        MEMORY[0x1EEE9AC00](v12);
        v13 = &v22 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, 8 * v7);
      }

      [a2 getObjects:v11 range:{0, v7, v22}];
      [objects getObjects:v13 range:{0, objc_msgSend(objects, "count")}];
      for (i = 0; i != v7; ++i)
      {
        v15 = *&v11[8 * i];
        objectID = [v15 objectID];
        v17 = *&v13[8 * i];
        if (v17 != objectID)
        {
          [v9 setObject:*&v13[8 * i] forKey:objectID];
          _PFCMT_RemoveValue(*(selfCopy + 15), objectID);
          [(NSManagedObject *)v15 _setObjectID__:v17];
          v18 = v15[3];
          if (v18)
          {
            snapshot_set_objectID(v18, v17);
          }

          _PFCMT_SetValue(*(selfCopy + 15), v17, v15);
          v19 = *(*(selfCopy + 21) + 8);
          if (v19)
          {
            [*v19 setObject:v17 forKey:objectID];
            [*(*(*(selfCopy + 21) + 8) + 8) setObject:objectID forKey:v17];
          }
        }
      }

      if (v7 >= 0x201)
      {
        NSZoneFree(0, v11);
        NSZoneFree(0, v13);
      }

      if ((v8 & 1) != 0 && [v9 count])
      {
        v20 = objc_alloc(MEMORY[0x1E696AD80]);
        v23 = @"_NSManagedObjectContextObjectIDMutationMappingKey";
        v24[0] = v9;
        selfCopy = [v20 initWithName:@"_NSManagedObjectContextPrivateDidMutateObjectIDsNotification" object:selfCopy userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v24, &v23, 1)}];
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  return selfCopy;
}

- (id)_retainedObjectWithID:(void *)d optionalHandler:(void *)handler withInlineStorage:(uint64_t)storage
{
  if (!d)
  {
    return 0;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(d, sel__retainedObjectWithID_optionalHandler_withInlineStorage_);
  }

  Value = _PFCMT_GetValue(d[15], handler);
  if (!Value)
  {
    entity = [handler entity];
    v10 = [_PFFastEntityClass(entity v9)];
    _PFfastOidRetain(0, handler);
    v11 = [v10 _initWithEntity:entity withID:handler withHandler:storage withContext:d];
    [(NSManagedObjectContext *)d _registerObject:v11 withID:handler];
    v12 = *d[21];
    if (v12 && [v12 containsObject:handler])
    {
      if (![v11 managedObjectContext])
      {
        [(NSManagedObjectContext *)d _forceRegisterLostFault:v11];
      }

      [d deleteObject:v11];
    }

    return v11;
  }

  return Value;
}

- (uint64_t)_batchRetainedObjects:(uint64_t)objects forCount:(uint64_t)count withIDs:(uint64_t)ds optionalHandler:(id *)handler withInlineStorage:(uint64_t)storage
{
  storageCopy = storage;
  result = 0;
  v30 = *MEMORY[0x1E69E9840];
  if (objects && ds)
  {
    v10 = 0;
    v11 = 8 * ds;
    dsCopy = ds;
    do
    {
      Value = _PFCMT_GetValue(*(objects + 120), handler[v10 / 8]);
      if (Value)
      {
        Value = Value;
        dsCopy = (dsCopy - 1);
      }

      *(count + v10) = Value;
      v10 += 8;
    }

    while (v11 != v10);
    if (dsCopy)
    {
      dsCopy2 = ds;
      entity = [*handler entity];
      v15 = _PFFastEntityClass(entity, v14);
      v25 = &v25;
      v27 = dsCopy;
      MEMORY[0x1EEE9AC00](v15);
      v17 = &v25 - v16;
      if (dsCopy > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v25 - v16, 8 * dsCopy);
      }

      if ([v15 allocBatch:v17 withEntity:entity count:{dsCopy, v25}] < dsCopy)
      {
        [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Could not allocate memory." userInfo:0];
      }

      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *&v17[8 * v18];
        do
        {
          v21 = v19;
        }

        while (*(count + 8 * v19++));
        v23 = handler[v21];
        _PFfastOidRetain(0, v23);
        [v20 _initWithEntity:entity withID:v23 withHandler:storageCopy withContext:objects];
        v20[7] = *(objects + 152);
        *(count + 8 * v21) = v20;
        _PFCMT_SetValue(*(objects + 120), v23, v20);
        v24 = **(objects + 168);
        if (v24 && [v24 containsObject:v23])
        {
          if (![v20 managedObjectContext])
          {
            [(NSManagedObjectContext *)objects _forceRegisterLostFault:v20];
          }

          [objects deleteObject:v20];
        }

        ++v18;
      }

      while (v18 != v27);
      atomic_fetch_add((*(objects + 152) + 8), dsCopy);
      if (dsCopy >= 0x201)
      {
        NSZoneFree(0, v17);
      }

      return dsCopy2;
    }

    else
    {
      return ds;
    }
  }

  return result;
}

+ (uint64_t)_handleError:(uint64_t *)error withError:
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!error)
  {
    return 0;
  }

  userInfo = [a2 userInfo];
  v6 = [userInfo objectForKey:@"NSCoreDataPrimaryError"];
  if (v6)
  {
    *error = v6;
    return 0;
  }

  v7 = [userInfo mutableCopy];
  if (v7)
  {
    v8 = v7;
    [v7 setObject:a2 forKey:@"NSUnderlyingException"];
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a2, @"NSUnderlyingException", 0}];
    if (a2)
    {
LABEL_6:
      if (a2[5])
      {
        v9 = a2[5];
      }

      else
      {
        v9 = 134060;
      }

      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_9:
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v9 userInfo:v8];
  if (v10)
  {
    *error = v10;
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
      v16 = 1024;
      v17 = 6268;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v12 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSManagedObjectContext.m";
      v16 = 1024;
      v17 = 6268;
      _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  return 0;
}

- (uint64_t)_validateObjects:(int)objects forOperation:(uint64_t *)operation error:(int)error exhaustive:(int)exhaustive forSave:
{
  exhaustiveCopy = exhaustive;
  errorCopy = error;
  operationCopy = operation;
  objectsCopy = objects;
  selfCopy = self;
  v213 = *MEMORY[0x1E69E9840];
  v7 = [a2 count];
  v8 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v161[-v10];
  v174 = v8;
  v165 = a2;
  if (v8 >= 0x201)
  {
    v173 = NSAllocateScannedUncollectable();
    [a2 getObjects:?];
  }

  else
  {
    bzero(&v161[-v10], 8 * v9);
    v173 = v11;
    [a2 getObjects:v11];
    if (!v174)
    {
      if (exhaustiveCopy)
      {
        v170 = 0;
        v13 = (selfCopy + 40);
        v14 = *(selfCopy + 10);
        v15 = v14 | 8;
        *(selfCopy + 10) = v14 | 8;
        v16 = v13;
        goto LABEL_216;
      }

      return 1;
    }
  }

  v170 = 0;
  v176 = 0;
  v187 = (selfCopy + 40);
  v168 = *MEMORY[0x1E696A250];
  v164 = @"NSDetailedErrors";
  v179 = @"NSValidationErrorKey";
  *&v12 = 138412546;
  v166 = v12;
  *&v12 = 138412290;
  v171 = v12;
  *&v12 = 138412802;
  v184 = v12;
  v169 = 1;
  do
  {
    v175 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v186 = v173[v176];
    v202[0] = 0;
    if (objectsCopy == 2)
    {
      v17 = [v186 validateForDelete:v202];
    }

    else
    {
      if (objectsCopy != 1)
      {
        v18 = [v186 validateForInsert:v202];
        goto LABEL_165;
      }

      v17 = [v186 validateForUpdate:v202];
    }

    if (v17)
    {
      goto LABEL_164;
    }

    v19 = [objc_msgSend(selfCopy "mergePolicy")];
    if (v19 > 4)
    {
      v18 = 0;
      goto LABEL_165;
    }

    v18 = 0;
    if (((1 << v19) & 0x16) == 0)
    {
      goto LABEL_165;
    }

    if (([(NSManagedObjectContext *)selfCopy _checkObjectForExistenceAndCacheRow:v186]& 1) == 0)
    {
      *v187 |= 0x1000u;
      v22 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            if (v202[0])
            {
              v24 = v202[0];
            }

            else
            {
              v24 = @"null";
            }

            userInfo = [v202[0] userInfo];
            objectID = [v186 objectID];
            *buf = v184;
            v27 = @"null";
            if (userInfo)
            {
              v27 = userInfo;
            }

            v208 = v24;
            v209 = 2112;
            v210 = v27;
            v211 = 2112;
            v212 = objectID;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
          }
        }

        else
        {
          v104 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            if (v202[0])
            {
              v105 = v202[0];
            }

            else
            {
              v105 = @"null";
            }

            userInfo2 = [v202[0] userInfo];
            objectID2 = [v186 objectID];
            *buf = v184;
            v108 = @"null";
            if (userInfo2)
            {
              v108 = userInfo2;
            }

            v208 = v105;
            v209 = 2112;
            v210 = v108;
            v211 = 2112;
            v212 = objectID2;
            _os_log_impl(&dword_18565F000, v104, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
          }
        }
      }

      if (v202[0])
      {
        v109 = v202[0];
      }

      else
      {
        v109 = @"null";
      }

      if (_pflogging_catastrophic_mode)
      {
        userInfo3 = [v202[0] userInfo];
        objectID3 = [v186 objectID];
        v112 = 1;
      }

      else
      {
        userInfo3 = [v202[0] userInfo];
        objectID3 = [v186 objectID];
        v112 = 4;
      }

      v113 = @"null";
      if (userInfo3)
      {
        v113 = userInfo3;
      }

      _NSCoreDataLog_console(v112, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v109, v113, objectID3);
      objc_autoreleasePoolPop(v22);
      if (![v186 managedObjectContext])
      {
        [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v186];
      }

      [selfCopy deleteObject:v186];
      [(NSManagedObject *)v186 _propagateDelete:?];
      *v187 &= ~0x1000u;
      v202[0] = 0;
LABEL_164:
      v18 = 1;
      goto LABEL_165;
    }

    if ([objc_msgSend(v202[0] "userInfo")])
    {
      domain = [v202[0] domain];
      if ([domain isEqualToString:v168] && objc_msgSend(v202[0], "code") == 1560)
      {
        userInfo4 = [v202[0] userInfo];
        v177 = [userInfo4 objectForKey:v164];
      }

      else
      {
        v206 = v202[0];
        v177 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v206 count:1];
      }

      v200 = 0u;
      v201 = 0u;
      v198 = 0u;
      v199 = 0u;
      v28 = [v177 countByEnumeratingWithState:&v198 objects:v205 count:16];
      if (v28)
      {
        v178 = *v199;
        do
        {
          v29 = 0;
          v181 = v28;
          do
          {
            if (*v199 != v178)
            {
              objc_enumerationMutation(v177);
            }

            userInfo5 = [*(*(&v198 + 1) + 8 * v29) userInfo];
            v182 = v29;
            v31 = objc_autoreleasePoolPush();
            _pflogInitialize(2);
            IsLogEnabled = _NSCoreDataIsLogEnabled(2);
            v33 = v182;
            if (IsLogEnabled && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v34 = _PFLogGetLogStream(1);
                if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                *buf = v171;
                v208 = userInfo5;
                v35 = v34;
                v36 = "CoreData: error: checkpoint attempting validation failure recovery with error %@\n";
              }

              else
              {
                v37 = _PFLogGetLogStream(2);
                if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_44;
                }

                *buf = v171;
                v208 = userInfo5;
                v35 = v37;
                v36 = "CoreData: warning: checkpoint attempting validation failure recovery with error %@\n";
              }

              _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
            }

LABEL_44:
            if (_pflogging_catastrophic_mode)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            _NSCoreDataLog_console(v38, "checkpoint attempting validation failure recovery with error %@", userInfo5);
            objc_autoreleasePoolPop(v31);
            v39 = [(__CFString *)userInfo5 objectForKey:v179];
            entity = [v186 entity];
            v41 = v181;
            v42 = [(NSEntityDescription *)entity _relationshipNamed:v39];
            v43 = v42;
            if (v42 && ([v42 isToMany] & 1) == 0)
            {
              [v43 name];
              v70 = objc_msgSend_valueForKey_(v186);
              if ([v70 isFault] && (-[NSManagedObjectContext _checkObjectForExistenceAndCacheRow:](selfCopy, v70) & 1) == 0)
              {
                *v187 |= 0x1000u;
                v71 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    v72 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
                    {
                      if (v202[0])
                      {
                        v73 = v202[0];
                      }

                      else
                      {
                        v73 = @"null";
                      }

                      userInfo6 = [v202[0] userInfo];
                      objectID4 = [v70 objectID];
                      *buf = v184;
                      v76 = @"null";
                      if (userInfo6)
                      {
                        v76 = userInfo6;
                      }

                      v208 = v73;
                      v209 = 2112;
                      v210 = v76;
                      v211 = 2112;
                      v212 = objectID4;
                      _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v77 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v202[0])
                      {
                        v78 = v202[0];
                      }

                      else
                      {
                        v78 = @"null";
                      }

                      userInfo7 = [v202[0] userInfo];
                      objectID5 = [v70 objectID];
                      *buf = v184;
                      v81 = @"null";
                      if (userInfo7)
                      {
                        v81 = userInfo7;
                      }

                      v208 = v78;
                      v209 = 2112;
                      v210 = v81;
                      v211 = 2112;
                      v212 = objectID5;
                      _os_log_impl(&dword_18565F000, v77, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                    }
                  }
                }

                if (v202[0])
                {
                  v82 = v202[0];
                }

                else
                {
                  v82 = @"null";
                }

                if (_pflogging_catastrophic_mode)
                {
                  userInfo8 = [v202[0] userInfo];
                  v41 = v181;
                  v33 = v182;
                  v84 = userInfo8;
                  objectID6 = [v70 objectID];
                  v86 = 1;
                }

                else
                {
                  userInfo9 = [v202[0] userInfo];
                  v41 = v181;
                  v33 = v182;
                  v84 = userInfo9;
                  objectID6 = [v70 objectID];
                  v86 = 4;
                }

                v88 = @"null";
                if (v84)
                {
                  v88 = v84;
                }

                _NSCoreDataLog_console(v86, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v82, v88, objectID6);
                objc_autoreleasePoolPop(v71);
                if (![v70 managedObjectContext])
                {
                  [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v70];
                }

                [selfCopy deleteObject:v70];
                [(NSManagedObject *)v70 _propagateDelete:?];
                *v187 &= ~0x1000u;
              }
            }

            else if ([v43 isToMany])
            {
              isOrdered = [v43 isOrdered];
              [v43 name];
              v44 = objc_msgSend_valueForKey_(v186);
              if ([v44 count])
              {
                v45 = [v44 copy];
                v196 = 0u;
                v197 = 0u;
                v194 = 0u;
                v195 = 0u;
                v46 = [v45 countByEnumeratingWithState:&v194 objects:v204 count:16];
                if (v46)
                {
                  v47 = 0;
                  v48 = *v195;
                  v183 = v43;
                  v188 = v45;
                  do
                  {
                    for (i = 0; i != v46; ++i)
                    {
                      if (*v195 != v48)
                      {
                        objc_enumerationMutation(v188);
                      }

                      v50 = *(*(&v194 + 1) + 8 * i);
                      if ([v50 isFault] && (-[NSManagedObjectContext _checkObjectForExistenceAndCacheRow:](selfCopy, v50) & 1) == 0)
                      {
                        *v187 |= 0x1000u;
                        v51 = objc_autoreleasePoolPush();
                        _pflogInitialize(4);
                        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            v52 = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                            {
                              v53 = @"null";
                              if (v202[0])
                              {
                                v53 = v202[0];
                              }

                              v180 = v53;
                              userInfo10 = [v202[0] userInfo];
                              objectID7 = [v50 objectID];
                              *buf = v184;
                              v56 = @"null";
                              if (userInfo10)
                              {
                                v56 = userInfo10;
                              }

                              v208 = v180;
                              v209 = 2112;
                              v210 = v56;
                              v211 = 2112;
                              v212 = objectID7;
                              _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: error: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                            }
                          }

                          else
                          {
                            v57 = _PFLogGetLogStream(4);
                            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                            {
                              if (v202[0])
                              {
                                v58 = v202[0];
                              }

                              else
                              {
                                v58 = @"null";
                              }

                              userInfo11 = [v202[0] userInfo];
                              objectID8 = [v50 objectID];
                              *buf = v184;
                              v61 = @"null";
                              if (userInfo11)
                              {
                                v61 = userInfo11;
                              }

                              v208 = v58;
                              v209 = 2112;
                              v210 = v61;
                              v211 = 2112;
                              v212 = objectID8;
                              _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it\n", buf, 0x20u);
                              v43 = v183;
                            }
                          }
                        }

                        if (v202[0])
                        {
                          v62 = v202[0];
                        }

                        else
                        {
                          v62 = @"null";
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          userInfo12 = [v202[0] userInfo];
                          objectID9 = [v50 objectID];
                          v65 = 1;
                        }

                        else
                        {
                          userInfo12 = [v202[0] userInfo];
                          objectID9 = [v50 objectID];
                          v65 = 4;
                        }

                        v66 = @"null";
                        if (userInfo12)
                        {
                          v66 = userInfo12;
                        }

                        _NSCoreDataLog_console(v65, "repairing validation failure %@ (%@) by deleting %@ because it no longer exists and the merge policy allows it", v62, v66, objectID9);
                        objc_autoreleasePoolPop(v51);
                        if (![v50 managedObjectContext])
                        {
                          [(NSManagedObjectContext *)selfCopy _forceRegisterLostFault:v50];
                        }

                        [selfCopy deleteObject:v50];
                        if (!v47)
                        {
                          if (isOrdered)
                          {
                            name = [v43 name];
                            v68 = [v186 mutableOrderedSetValueForKey:name];
                          }

                          else
                          {
                            name2 = [v43 name];
                            v68 = [v186 mutableSetValueForKey:name2];
                          }

                          v47 = v68;
                        }

                        [v47 removeObject:v50];
                        [(NSManagedObject *)v50 _propagateDelete:?];
                        *v187 &= ~0x1000u;
                      }
                    }

                    v45 = v188;
                    v46 = [v188 countByEnumeratingWithState:&v194 objects:v204 count:16];
                  }

                  while (v46);
                }

                v41 = v181;
                v33 = v182;
              }
            }

            v29 = v33 + 1;
          }

          while (v29 != v41);
          v89 = [v177 countByEnumeratingWithState:&v198 objects:v205 count:16];
          v28 = v89;
        }

        while (v89);
      }
    }

    v202[0] = 0;
    if (objectsCopy == 2)
    {
      v18 = 1;
      v90 = [v186 validateForDelete:v202];
    }

    else
    {
      if (objectsCopy != 1)
      {
        goto LABEL_164;
      }

      v18 = 1;
      v90 = [v186 validateForUpdate:v202];
    }

    if (v90)
    {
      goto LABEL_165;
    }

    domain2 = [v202[0] domain];
    if (![domain2 isEqualToString:v168] || objc_msgSend(v202[0], "code") != 1560)
    {
      v98 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v99 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = v202[0];
            userInfo13 = [v202[0] userInfo];
            *buf = v166;
            v208 = v100;
            v209 = 2112;
            v210 = userInfo13;
            v102 = v99;
            v103 = "CoreData: error: validation recovery attempt FAILED with %@ and %@.\n";
LABEL_208:
            _os_log_error_impl(&dword_18565F000, v102, OS_LOG_TYPE_ERROR, v103, buf, 0x16u);
          }
        }

        else
        {
          v121 = _PFLogGetLogStream(2);
          if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
          {
            v145 = v202[0];
            userInfo14 = [v202[0] userInfo];
            *buf = v166;
            v208 = v145;
            v209 = 2112;
            v210 = userInfo14;
            v102 = v121;
            v103 = "CoreData: warning: validation recovery attempt FAILED with %@ and %@.\n";
            goto LABEL_208;
          }
        }
      }

      v122 = v202[0];
      if (_pflogging_catastrophic_mode)
      {
        userInfo15 = [v202[0] userInfo];
        v124 = 1;
      }

      else
      {
        userInfo15 = [v202[0] userInfo];
        v124 = 2;
      }

      _NSCoreDataLog_console(v124, "validation recovery attempt FAILED with %@ and %@.", v122, userInfo15);
      objc_autoreleasePoolPop(v98);
LABEL_182:
      v18 = 0;
      goto LABEL_165;
    }

    v92 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v93 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          v94 = v202[0];
          userInfo16 = [v202[0] userInfo];
          *buf = v166;
          v208 = v94;
          v209 = 2112;
          v210 = userInfo16;
          v96 = v93;
          v97 = "CoreData: error: validation recovery attempt FAILED with multiple errors %@ and %@.\n";
LABEL_210:
          _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, v97, buf, 0x16u);
        }
      }

      else
      {
        v125 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
        {
          v147 = v202[0];
          userInfo17 = [v202[0] userInfo];
          *buf = v166;
          v208 = v147;
          v209 = 2112;
          v210 = userInfo17;
          v96 = v125;
          v97 = "CoreData: warning: validation recovery attempt FAILED with multiple errors %@ and %@.\n";
          goto LABEL_210;
        }
      }
    }

    v126 = v202[0];
    if (_pflogging_catastrophic_mode)
    {
      userInfo18 = [v202[0] userInfo];
      v128 = 1;
    }

    else
    {
      userInfo18 = [v202[0] userInfo];
      v128 = 2;
    }

    _NSCoreDataLog_console(v128, "validation recovery attempt FAILED with multiple errors %@ and %@.", v126, userInfo18);
    objc_autoreleasePoolPop(v92);
    userInfo19 = [v202[0] userInfo];
    v130 = [userInfo19 objectForKey:v164];
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v131 = [v130 countByEnumeratingWithState:&v190 objects:v203 count:16];
    if (!v131)
    {
      goto LABEL_182;
    }

    v132 = *v191;
    do
    {
      v133 = 0;
      do
      {
        if (*v191 != v132)
        {
          objc_enumerationMutation(v130);
        }

        v134 = *(*(&v190 + 1) + 8 * v133);
        v135 = objc_autoreleasePoolPush();
        _pflogInitialize(2);
        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v136 = _PFLogGetLogStream(1);
            if (!os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_198;
            }

            userInfo20 = [(__CFString *)v134 userInfo];
            *buf = v166;
            v208 = v134;
            v209 = 2112;
            v210 = userInfo20;
            v138 = v136;
            v139 = "CoreData: error: validation recovery attempt FAILED with %@ and %@.\n";
          }

          else
          {
            v140 = _PFLogGetLogStream(2);
            if (!os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_198;
            }

            userInfo21 = [(__CFString *)v134 userInfo];
            *buf = v166;
            v208 = v134;
            v209 = 2112;
            v210 = userInfo21;
            v138 = v140;
            v139 = "CoreData: warning: validation recovery attempt FAILED with %@ and %@.\n";
          }

          _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, v139, buf, 0x16u);
        }

LABEL_198:
        if (_pflogging_catastrophic_mode)
        {
          userInfo22 = [(__CFString *)v134 userInfo];
          v142 = 1;
        }

        else
        {
          userInfo22 = [(__CFString *)v134 userInfo];
          v142 = 2;
        }

        _NSCoreDataLog_console(v142, "validation recovery attempt FAILED with %@ and %@.", v134, userInfo22);
        objc_autoreleasePoolPop(v135);
        ++v133;
      }

      while (v131 != v133);
      v144 = [v130 countByEnumeratingWithState:&v190 objects:v203 count:16];
      v131 = v144;
      v18 = 0;
    }

    while (v144);
LABEL_165:
    v114 = v202[0];
    [v175 drain];
    v115 = v202[0];
    v116 = 0;
    if (v18)
    {
      goto LABEL_175;
    }

    if (!v170)
    {
      v117 = objc_alloc(MEMORY[0x1E695DF70]);
      v170 = [v117 initWithCapacity:{objc_msgSend(v165, "count")}];
    }

    if (v202[0])
    {
      domain3 = [v202[0] domain];
      if ([domain3 isEqual:v168] && objc_msgSend(v202[0], "code") == 1560)
      {
        userInfo23 = [v202[0] userInfo];
        v120 = [userInfo23 objectForKey:v164];
        [v170 addObjectsFromArray:v120];
      }

      else
      {
        [v170 addObject:v202[0]];
      }
    }

    if ((errorCopy & 1) == 0)
    {
      goto LABEL_218;
    }

    v169 = 0;
LABEL_175:
    ++v176;
  }

  while (v176 != v174);
  if ((v169 & 1) == 0)
  {
LABEL_218:
    if ([v170 count] == 1)
    {
      if (operationCopy)
      {
        v152 = [v170 objectAtIndex:0];
        v151 = 0;
        *operationCopy = v152;
        goto LABEL_226;
      }
    }

    else
    {
      v153 = operationCopy != 0;
      v154 = [v170 count];
      v155 = !v153;
      if (v154 < 2)
      {
        v155 = 1;
      }

      if ((v155 & 1) == 0)
      {
        v156 = objc_alloc(MEMORY[0x1E695DF20]);
        v157 = [v156 initWithObjectsAndKeys:{v170, v164, 0}];
        v158 = [MEMORY[0x1E696ABC0] errorWithDomain:v168 code:1560 userInfo:v157];
        *operationCopy = v158;
      }
    }

    v151 = 0;
    goto LABEL_226;
  }

  if (exhaustiveCopy)
  {
    v149 = 0;
    v14 = *v187;
    *v187 |= 8u;
    do
    {
      v150 = objc_autoreleasePoolPush();
      [v173[v149] willSave];
      objc_autoreleasePoolPop(v150);
      ++v149;
    }

    while (v174 != v149);
    v16 = v187;
    v15 = *v187;
LABEL_216:
    *v16 = v15 & 0xFFFFFFF7 | (8 * ((v14 >> 3) & 1));
  }

  v151 = 1;
LABEL_226:
  v159 = v174 < 0x201;

  if (!v159)
  {
    NSZoneFree(0, v173);
  }

  return v151;
}

- (void)_clearOriginalSnapshotAndInitializeRec:(void *)result
{
  if (result)
  {
    v2 = result;
    [(NSManagedObject *)result _setOriginalSnapshot__:?];

    return [(NSManagedObject *)v2 _setLastSnapshot__:?];
  }

  return result;
}

- (void)_postContextDidSaveNotificationWithUserInfo:(uint64_t)info
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (byte_1ED4BEEC6 == 1)
  {
    v5 = [a2 objectForKey:@"managedObjectContext"];
    if (v5)
    {
      v6 = v5;
      v7 = v4;
    }

    else
    {
      v8 = [_PFWeakReference weakReferenceWithObject:info];
      [v4 setObject:v8 forKey:@"managedObjectContext"];
      if ((*(info + 43) & 0x10) == 0)
      {
        goto LABEL_7;
      }

      v7 = a2;
      v6 = v8;
    }

    [v7 setObject:v6 forKey:@"managedObjectContext"];
  }

LABEL_7:
  if ((*(info + 43) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v9 = [a2 objectForKey:@"transactionAuthor"];
  if (v9)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    transactionAuthor = [info transactionAuthor];
    if (!transactionAuthor)
    {
      goto LABEL_13;
    }

    v13 = transactionAuthor;
    [v4 setObject:transactionAuthor forKey:@"transactionAuthor"];
    v11 = a2;
    v10 = v13;
  }

  [v11 setObject:v10 forKey:@"transactionAuthor"];
LABEL_13:
  v14 = [a2 objectForKey:@"newQueryGeneration"];
  if (v14)
  {
    _queryGenerationToken = v14;
LABEL_17:
    [v4 setObject:_queryGenerationToken forKey:@"newQueryGeneration"];
    goto LABEL_18;
  }

  _queryGenerationToken = [info _queryGenerationToken];
  _isEnabled = [_queryGenerationToken _isEnabled];
  if (_queryGenerationToken && _isEnabled)
  {
    goto LABEL_17;
  }

LABEL_18:
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = *(*(info + 168) + 136);
  v64 = v4;
  if ([v18 count])
  {
    v19 = [objc_msgSend(a2 objectForKey:{@"inserted", "mutableCopy"}];
    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v20 = [v18 countByEnumeratingWithState:&v73 objects:v79 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v74;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v74 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = [info objectWithID:{objc_msgSend(*(*(&v73 + 1) + 8 * i), "firstObject")}];
          if (v24)
          {
            v25 = v24;
            [v19 addObject:v24];
            [v17 addObject:v25];
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v73 objects:v79 count:16];
      }

      while (v21);
    }

    [a2 setObject:v19 forKey:@"inserted"];

    *(*(info + 168) + 136) = 0;
    v4 = v64;
  }

  v26 = *(*(info + 168) + 144);
  if ([v26 count])
  {
    v27 = [objc_msgSend(a2 objectForKey:{@"updated", "mutableCopy"}];
    if (!v27)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v28 = [v26 countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v70;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v70 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [info objectWithID:{objc_msgSend(*(*(&v69 + 1) + 8 * j), "firstObject")}];
          if (v32)
          {
            v33 = v32;
            [v27 addObject:v32];
            [v17 addObject:v33];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v29);
    }

    *(*(info + 168) + 144) = 0;
    v4 = v64;
  }

  else
  {
    v27 = 0;
  }

  v34 = *(*(info + 168) + 112);
  if ([v34 count])
  {
    if (!v27)
    {
      v27 = [objc_msgSend(a2 objectForKey:{@"updated", "mutableCopy"}];
      if (!v27)
      {
        v27 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v35 = [v34 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v66;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v66 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [info objectWithID:*(*(&v65 + 1) + 8 * k)];
          if (v39)
          {
            v40 = v39;
            [v27 addObject:v39];
            [v17 addObject:v40];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v36);
    }

    *(*(info + 168) + 112) = 0;
    v4 = v64;
  }

  if (v27)
  {
    [a2 setObject:v27 forKey:@"updated"];
  }

  if ([v17 count])
  {
    [a2 setObject:v17 forKey:@"_NSTriggerModifiedObjectsKey"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"inserted", "count"}])
  {
    [a2 removeObjectForKey:@"inserted"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"deleted", "count"}])
  {
    [a2 removeObjectForKey:@"deleted"];
  }

  if (![objc_msgSend(a2 objectForKey:{@"updated", "count"}])
  {
    [a2 removeObjectForKey:@"updated"];
  }

  for (m = 0; m != 5; ++m)
  {
    v42 = [a2 objectForKey:off_1E6EC2518[m]];
    if ([v42 count])
    {
      v43 = [_PFRoutines newSetOfObjectIDsFromCollection:v42];
      [v4 setObject:v43 forKey:off_1E6EC2540[m]];
    }
  }

  v44 = [a2 objectForKey:@"refreshed"];
  if ([v44 count])
  {
    v45 = [_PFRoutines newSetOfObjectIDsFromCollection:v44];
  }

  else
  {
    v45 = NSSet_EmptySet;
  }

  v46 = v45;
  v47 = [a2 objectForKey:@"refreshed_objectIDs"];
  if (![v46 count] && !objc_msgSend(v47, "count"))
  {
    [a2 removeObjectForKey:@"refreshed"];
    [a2 removeObjectForKey:@"refreshed_objectIDs"];
    [v4 removeObjectForKey:@"refreshed"];
    [v4 removeObjectForKey:@"refreshed_objectIDs"];
    goto LABEL_95;
  }

  v48 = [_PFRoutines newSetFromCollection:v46 byAddingItems:v47];

  [v4 setObject:v48 forKey:@"refreshed_objectIDs"];
  v49 = [v48 count];
  v50 = v49;
  if (v49 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v49;
  }

  if (v49 >= 0x201)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  v53 = &v63 - ((8 * v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v48;
  if (v49 >= 0x201)
  {
    v53 = NSAllocateScannedUncollectable();
    [v48 getObjects:v53];
LABEL_88:
    v55 = 0;
    v54 = 0;
    do
    {
      v56 = [info objectRegisteredForID:*&v53[8 * v55]];
      if (v56)
      {
        *&v53[8 * v54++] = v56;
      }

      ++v55;
    }

    while (v50 != v55);
    goto LABEL_92;
  }

  bzero(&v63 - ((8 * v52 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v51);
  [v48 getObjects:v53];
  if (v50)
  {
    goto LABEL_88;
  }

  v54 = 0;
LABEL_92:
  v57 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v53 count:v54];
  if (v50 >= 0x201)
  {
    NSZoneFree(0, v53);
  }

  [a2 setObject:v57 forKey:@"refreshed"];

LABEL_95:
  v58 = [v4 copy];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v60 = defaultCenter;
  v61 = atomic_load((info + 48));
  if ((v61 & 1) == 0)
  {
    [defaultCenter postNotificationName:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:*(info + 32) userInfo:v58];
    [v60 postNotificationName:@"NSManagedObjectContextDidSaveObjectIDsNotification" object:*(info + 32) userInfo:v58];
  }

  [v60 postNotificationName:@"_NSManagedObjectContextDidSaveObjectIDsPrivateNotification" object:info userInfo:v58];
  result = [v60 postNotificationName:@"NSManagedObjectContextDidSaveObjectIDsNotification" object:info userInfo:v58];
  if ((*(info + 43) & 8) != 0)
  {
    return [v60 postNotificationName:@"NSManagingContextDidSaveChangesNotification" object:info userInfo:a2];
  }

  return result;
}

- (void)_informParentStoreNoLongerInterestedInObjectIDs:(uint64_t)ds generation:
{
  v17 = *MEMORY[0x1E69E9840];
  if (self && [a2 count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          if (([v11 isTemporaryID] & 1) == 0)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    [*(self + 32) managedObjectContextDidUnregisterObjectsWithIDs:v6 generation:ds];
  }
}

- (id)_retainedObjectsFromRemovedStore:(id)store
{
  v15[1] = *MEMORY[0x1E69E9840];
  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v6 = Count;
  if (Count <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Count;
  }

  if (Count >= 0x201)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v15 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Count > 0x200)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v15 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v7);
  }

  v10 = [(_PFContextMapTable *)self->_infoByGID getAllObjects:v9];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10];
  if (v10)
  {
    v12 = v9;
    do
    {
      v13 = *v12;
      if ([objc_msgSend(*v12 "objectID")] == store)
      {
        [v11 addObject:v13];
      }

      ++v12;
      --v10;
    }

    while (v10);
  }

  if (v6 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

  return v11;
}

- (void)_setDisableDiscardEditing:(BOOL)editing
{
  if (editing)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFF7FFF | v3);
}

- (void)_persistentStoreDidUpdateAdditionalRows:(void *)rows
{
  if (rows)
  {
    v4 = [a2 count];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        v6 = [a2 objectAtIndex:i];
        v7 = [rows objectRegisteredForID:v6];
        if (v7)
        {
          v8 = v7;
          if ([v7 hasChanges])
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Objects should not be both modified and additional" userInfo:0]);
          }

          v9 = v8[4];
          if ((v9 & 0x200) == 0)
          {
            v8[4] = v9 | 0x200;
          }

          [rows refreshObject:v8 mergeChanges:0];
        }

        else
        {
          [v10 addObject:v6];
        }
      }
    }

    if ([v10 count])
    {
      -[NSManagedObjectContext _informParentStoreNoLongerInterestedInObjectIDs:generation:](rows, v10, [rows queryGenerationToken]);
    }
  }
}

- (void)_setAllowAncillaryEntities:(BOOL)entities
{
  if (entities)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFBFFFFFF | v3);
}

- (void)_setFaultingError:(id)error
{
  if (self->_additionalPrivateIvars[19] != error)
  {
    errorCopy = error;

    *(self->_additionalPrivateIvars + 19) = error;
  }
}

- (int64x2_t)_updateDatabaseStaticsWithCacheStats:(uint64_t)stats
{
  if (stats)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(stats, sel__updateDatabaseStaticsWithCacheStats_);
    }

    v4 = *(*(stats + 168) + 160);
    if (v4 || (*(*(stats + 168) + 160) = [[NSSQLiteDatabaseStatistics alloc] initWithPageSize:a2[1].i64[1]], (v4 = *(*(stats + 168) + 160)) != 0))
    {
      v6 = a2[1].i64[0];
      result = vaddq_s64(*(v4 + 8), vextq_s8(*a2, *a2, 8uLL));
      *(v4 + 8) = result;
      *(v4 + 24) += v6;
    }
  }

  return result;
}

- (void)_undoInsertions:(id)insertions
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [insertions objectAtIndex:0];
  v6 = [insertions objectAtIndex:1];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if (![(NSManagedObject *)v10 managedObjectContext])
      {
        v10 = [(NSManagedObjectContext *)self objectWithID:[(NSManagedObject *)v10 objectID]];
      }

      if (v11 != NSKeyValueCoding_NullValue)
      {
        [(NSManagedObject *)v10 _updateFromUndoSnapshot:v11];
      }

      [(NSManagedObjectContext *)self deleteObject:v10];
    }
  }

  if (self)
  {
    --self->_ignoreChangeNotification;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * j) awakeFromSnapshotEvents:2];
      }

      v13 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_registerUndoForOperation:(void *)operation withObjects:(uint64_t)objects withExtraArguments:
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(*(self + 168) + 40))
  {
    v8 = [operation count];
    result = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    if (v8)
    {
      v10 = result;
      for (i = 0; i != v8; ++i)
      {
        v12 = [operation objectAtIndex:i];
        _newSnapshotForUndo__ = [(NSManagedObject *)v12 _newSnapshotForUndo__];
        if ([(NSKnownKeysDictionary *)_newSnapshotForUndo__ count])
        {
          v14 = _newSnapshotForUndo__;
        }

        else
        {
          v14 = NSKeyValueCoding_NullValue;
        }

        [v10 addObject:v14];

        [(NSManagedObject *)v12 _setLastSnapshot__:?];
      }

      if (objects)
      {
        objectsCopy = objects;
      }

      else
      {
        objectsCopy = NSKeyValueCoding_NullValue;
      }

      v16 = *(*(self + 168) + 40);
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{operation, v10, objectsCopy, objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", *(self + 44)), 0}];

      return [v16 registerUndoWithTarget:self selector:a2 object:v17];
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = [operation countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (result)
    {
      v18 = result;
      v19 = *v22;
      do
      {
        v20 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(operation);
          }

          [(NSManagedObject *)*(*(&v21 + 1) + 8 * v20) _setLastSnapshot__:?];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        result = [operation countByEnumeratingWithState:&v21 objects:v25 count:16];
        v18 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_undoDeletionsMovedToUpdates:(id)updates
{
  v5 = [updates count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [updates objectAtIndex:i];
      [(NSManagedObjectContext *)self deleteObject:v8];
      [v8 awakeFromSnapshotEvents:4];
    }
  }
}

- (void)_undoDeletions:(id)deletions
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [deletions objectAtIndex:0];
  v6 = [deletions objectAtIndex:1];
  v7 = [objc_msgSend(objc_msgSend(deletions objectAtIndex:{2), "objectAtIndex:", 0), "objectAtIndex:", 0}];
  v25 = [objc_msgSend(deletions objectAtIndex:{2), "objectAtIndex:", 1}];
  v8 = [deletions objectAtIndex:3];
  if (v7 == NSKeyValueCoding_NullValue)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  undoTransactionID = self->_undoTransactionID;
  if (undoTransactionID == [v8 shortValue])
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 count];
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = v13;
  v24 = v12;
  for (i = 0; i != v14; ++i)
  {
    v16 = [v5 objectAtIndex:{i, v24}];
    v17 = [v6 objectAtIndex:i];
    if (v11)
    {
      v18 = [v11 objectAtIndex:i];
    }

    else
    {
      v18 = 0;
    }

    -[NSManagedObjectContext _insertObjectWithGlobalID:globalID:](self, v16, [v16 objectID]);
    if (v17 != NSKeyValueCoding_NullValue)
    {
      [(NSManagedObject *)v16 _updateFromUndoSnapshot:v17];
      v17 = [v25 objectAtIndex:i];
      if (NSKeyValueCoding_NullValue != v17)
      {
        [(NSManagedObject *)v16 _setLastSnapshot__:v17];
        v17 = NSKeyValueCoding_NullValue;
      }
    }

    if (v18 && v18 != v17 && ([objc_msgSend(v16 "objectID")] & 1) == 0)
    {
      if (v16)
      {
        v16[4] &= 0xFFFFFFDB;
        [(NSMutableSet *)self->_unprocessedDeletes removeObject:v16];
        [(NSMutableSet *)self->_deletedObjects removeObject:v16];
        v16[4] &= 0xFFFFFFED;
      }

      else
      {
        [(NSMutableSet *)self->_unprocessedDeletes removeObject:0];
        [(NSMutableSet *)self->_deletedObjects removeObject:0];
      }

      [(NSMutableSet *)self->_unprocessedInserts removeObject:v16];
      _PFFastMOCObjectWillChange(self, v16);
      [v24 addObject:v16];
    }
  }

  v12 = v24;
  if (self)
  {
LABEL_30:
    --self->_ignoreChangeNotification;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v26 + 1) + 8 * j) awakeFromSnapshotEvents:4];
      }

      v20 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  if ([v12 count])
  {
    [self->_additionalPrivateIvars[5] registerUndoWithTarget:self selector:sel__undoDeletionsMovedToUpdates_ object:v12];
    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
    [(NSManagedObjectContext *)self _createAndPostChangeNotification:v23 deletions:0 updates:0 refreshes:0 deferrals:0 wasMerge:0];
  }
}

- (void)_createAndPostChangeNotification:(void *)notification deletions:(void *)deletions updates:(void *)updates refreshes:(void *)refreshes deferrals:(int)deferrals wasMerge:
{
  v74 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (self)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v58 = v13;
    deferralsCopy = deferrals;
    notificationCopy = notification;
    if (![refreshes count])
    {
      v19 = 0;
      v14 = 0;
      goto LABEL_48;
    }

    if ([notification count])
    {
      v14 = [refreshes mutableCopy];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v15 = [notification countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v68;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v68 != v17)
            {
              objc_enumerationMutation(notification);
            }

            [v14 removeObject:*(*(&v67 + 1) + 8 * i)];
          }

          v16 = [notification countByEnumeratingWithState:&v67 objects:v73 count:16];
        }

        while (v16);
      }

      if ([a2 count])
      {
        if (v14)
        {
LABEL_17:
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v20 = [a2 countByEnumeratingWithState:&v63 objects:v72 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v64;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v64 != v22)
                {
                  objc_enumerationMutation(a2);
                }

                [v14 addObject:*(*(&v63 + 1) + 8 * j)];
              }

              v21 = [a2 countByEnumeratingWithState:&v63 objects:v72 count:16];
            }

            while (v21);
          }

          a2 = v14;
          goto LABEL_29;
        }

LABEL_16:
        v14 = [refreshes mutableCopy];
        goto LABEL_17;
      }
    }

    else
    {
      if ([a2 count])
      {
        goto LABEL_16;
      }

      v14 = 0;
    }

    if (v14)
    {
      a2 = v14;
    }

    else
    {
      a2 = refreshes;
    }

LABEL_29:
    if ([deletions count])
    {
      updatesCopy = updates;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v24 = [deletions countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v24)
      {
        v25 = v24;
        v19 = 0;
        v26 = *v60;
        if (v14)
        {
          refreshes = v14;
        }

        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v60 != v26)
            {
              objc_enumerationMutation(deletions);
            }

            v28 = *(*(&v59 + 1) + 8 * k);
            if ([refreshes containsObject:v28])
            {
              if (!v19)
              {
                v19 = [deletions mutableCopy];
              }

              [v19 removeObject:v28];
            }
          }

          v25 = [deletions countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v25);
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        deletions = v19;
      }

      v13 = v58;
      updates = updatesCopy;
    }

    else
    {
      v19 = 0;
      v13 = v58;
    }

LABEL_48:
    if ([a2 count])
    {
      [v13 setObject:a2 forKey:@"inserted"];
    }

    if ([notificationCopy count])
    {
      [v13 setObject:notificationCopy forKey:@"deleted"];
    }

    v29 = selfCopy;
    if ([deletions count])
    {
      [v13 setObject:deletions forKey:@"updated"];
    }

    if (![updates count])
    {
LABEL_72:

      if ([v13 count])
      {
        if (byte_1ED4BEEC6 == 1)
        {
          [v13 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
        }

        if (deferralsCopy)
        {
          [v13 setObject:NSSet_EmptySet forKey:@"NSObjectsChangedByMergeChangesKey"];
        }

        [(NSManagedObjectContext *)v29 _postObjectsDidChangeNotificationWithUserInfo:v13];
      }

      if (!*(v29[21] + 104))
      {
        goto LABEL_98;
      }

      v39 = [v13 mutableCopy];
      if (byte_1ED4BEEC6 == 1)
      {
        [v39 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
      }

      [v39 removeObjectForKey:@"NSObjectsChangedByMergeChangesKey"];
      [v39 addEntriesFromDictionary:*(v29[21] + 104)];
      if (![v39 count])
      {
LABEL_97:

        *(v29[21] + 104) = 0;
LABEL_98:

        return;
      }

      v40 = objc_alloc_init(MEMORY[0x1E695DF90]);
      if (byte_1ED4BEEC6 == 1)
      {
        [v40 setObject:+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference forKey:{v29), @"managedObjectContext"}];
      }

      v41 = [v39 objectForKey:@"newQueryGeneration"];
      if (v41)
      {
        v42 = v41;
      }

      else
      {
        _queryGenerationToken = [v29 _queryGenerationToken];
        if (!_queryGenerationToken || (v42 = _queryGenerationToken, _queryGenerationToken == +[NSQueryGenerationToken unpinnedQueryGenerationToken](NSQueryGenerationToken, "unpinnedQueryGenerationToken")) || v42 == +[NSQueryGenerationToken currentQueryGenerationToken])
        {
LABEL_87:
          for (m = 0; m != 5; ++m)
          {
            v44 = [v39 objectForKey:off_1E6EC2568[m]];
            if ([v44 count])
            {
              v45 = [_PFRoutines newSetOfObjectIDsFromCollection:v44];
            }

            else
            {
              v45 = NSSet_EmptySet;
            }

            v46 = v45;
            v47 = off_1E6EC2590[m];
            v48 = [v39 objectForKey:v47];
            if ([v46 count] || objc_msgSend(v48, "count"))
            {
              v49 = [_PFRoutines newSetFromCollection:v46 byAddingItems:v48];

              [v40 setObject:v49 forKey:v47];
              v46 = v49;
            }

            else
            {
              [v40 removeObjectForKey:v47];
            }
          }

          v50 = [v40 copy];

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v29 = selfCopy;
          [defaultCenter postNotificationName:@"_NSManagedObjectContextDidMergeChangesObjectIDsPrivateNotification" object:selfCopy userInfo:v50];
          [defaultCenter postNotificationName:@"NSManagedObjectContextDidMergeChangesObjectIDsNotification" object:v29 userInfo:v50];
          v13 = v58;
          goto LABEL_97;
        }
      }

      [v40 setObject:v42 forKey:@"newQueryGeneration"];
      goto LABEL_87;
    }

    [v13 setObject:updates forKey:@"refreshed_objectIDs"];
    v30 = [updates count];
    v31 = v30;
    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v30;
    }

    if (v30 >= 0x201)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    v34 = &v53 - ((8 * v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v30 >= 0x201)
    {
      v34 = NSAllocateScannedUncollectable();
      [updates getObjects:v34];
    }

    else
    {
      bzero(&v53 - ((8 * v33 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v32);
      [updates getObjects:v34];
      if (!v31)
      {
        v35 = 0;
LABEL_69:
        v38 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v34 count:v35];
        if (v31 >= 0x201)
        {
          NSZoneFree(0, v34);
        }

        v13 = v58;
        [v58 setObject:v38 forKey:@"refreshed"];

        goto LABEL_72;
      }
    }

    v36 = 0;
    v35 = 0;
    do
    {
      v37 = [v29 objectRegisteredForID:*&v34[8 * v36]];
      if (v37)
      {
        *&v34[8 * v35++] = v37;
      }

      ++v36;
    }

    while (v31 != v36);
    goto LABEL_69;
  }
}

- (void)_undoUpdates:(id)updates
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    ++self->_ignoreChangeNotification;
  }

  v5 = [updates objectAtIndex:0];
  v6 = [updates objectAtIndex:1];
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 objectAtIndex:i];
      v11 = [v6 objectAtIndex:i];
      if (![(NSManagedObject *)v10 managedObjectContext])
      {
        v10 = [(NSManagedObjectContext *)self objectWithID:[(NSManagedObject *)v10 objectID]];
      }

      if (v11 != NSKeyValueCoding_NullValue)
      {
        _PFFastMOCObjectWillChange(self, v10);
        [(NSManagedObject *)v10 _updateFromUndoSnapshot:v11];
      }
    }
  }

  if (self)
  {
    --self->_ignoreChangeNotification;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * j) awakeFromSnapshotEvents:8];
      }

      v13 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_forceInsertionForObject:(id)object
{
  if (object)
  {
    v5 = *(object + 4);
    if ((v5 & 0x24) != 0)
    {
      [(NSMutableSet *)self->_unprocessedDeletes removeObject:object];
      [(NSMutableSet *)self->_deletedObjects removeObject:object];
      v5 = *(object + 4);
    }

    if ((v5 & 9) != 0)
    {
      [(NSMutableSet *)self->_unprocessedChanges removeObject:object];
      [(NSMutableSet *)self->_changedObjects removeObject:object];
      v5 = *(object + 4);
    }

    *(object + 4) = v5 & 0xFFFFFFC0;
  }

  objectID = [object objectID];
  [(NSManagedObjectContext *)self _insertObjectWithGlobalID:object globalID:objectID];
  [(NSMutableSet *)self->_insertedObjects addObject:object];
  if (object)
  {
    *(object + 4) |= 0x10u;
  }

  v7 = *self->_additionalPrivateIvars;
  if (v7)
  {

    [v7 removeObject:objectID];
  }
}

- (void)_clearChangedThisTransaction:(id)transaction
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSManagedObjectContext *)self _processRecentChanges:?];
  v5 = [transaction objectAtIndex:0];
  undoTransactionID = self->_undoTransactionID;
  if (undoTransactionID == [v5 shortValue])
  {
    v7 = [transaction objectAtIndex:1];
    v8 = [(NSMutableSet *)self->_changedObjects count];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v16 - v11;
      if (v10 > 0x200)
      {
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v16 - v11, 8 * v10);
      }

      [(NSMutableSet *)self->_changedObjects getObjects:v12];
      for (i = 0; i != v9; ++i)
      {
        v14 = *&v12[8 * i];
        if (([v7 containsObject:v14] & 1) == 0)
        {
          if (v14)
          {
            *(v14 + 16) &= ~8u;
          }

          [(NSMutableSet *)self->_changedObjects removeObject:v14];
        }
      }

      if (v9 >= 0x201)
      {
        NSZoneFree(0, v12);
      }
    }
  }

  *&self->_flags &= ~0x20u;
  v15 = [(NSMutableSet *)self->_insertedObjects count]|| [(NSMutableSet *)self->_unprocessedInserts count]|| [(NSMutableSet *)self->_deletedObjects count]|| [(NSMutableSet *)self->_unprocessedDeletes count]|| [(NSMutableSet *)self->_changedObjects count]|| [(NSMutableSet *)self->_unprocessedChanges count]!= 0;
  if (((*&self->_flags >> 10) & 1) != v15)
  {
    [(NSManagedObjectContext *)self willChangeValueForKey:@"hasChanges"];
    self->_flags = (*&self->_flags & 0xFFFFFBFF | (v15 << 10));
    [(NSManagedObjectContext *)self didChangeValueForKey:@"hasChanges"];
  }
}

- (uint64_t)_processPendingDeletions:(void *)deletions withInsertions:(void *)insertions withUpdates:withNewlyForgottenList:withRemovedChangedObjects:
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = [*(self + 64) count];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
  if (v9 >= 0x201)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = (8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v21 - v12;
  if (v9 > 0x200)
  {
    v13 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v21 - v12, 8 * v9);
  }

  [*(self + 64) getObjects:v13];
  for (i = 0; i != v9; ++i)
  {
    v15 = *&v13[8 * i];
    if (v15)
    {
      *(v15 + 16) &= ~4u;
      if (![*(self + 72) containsObject:v15])
      {
        v18 = *(v15 + 16);
        if ((v18 & 0x10) != 0)
        {
          [*(self + 80) removeObject:v15];
          *(v15 + 16) &= ~0x10u;
          deletionsCopy = deletions;
        }

        else
        {
          if ((v18 & 8) != 0)
          {
            [*(self + 96) removeObject:v15];
            [insertions addObject:v15];
            v18 = *(v15 + 16) & 0xFFFFFFF7;
          }

          *(v15 + 16) = v18 | 0x20;
LABEL_19:
          deletionsCopy = *(self + 88);
        }

        [deletionsCopy addObject:v15];
        deletionsCopy2 = v10;
LABEL_22:
        [deletionsCopy2 addObject:v15];
        [*(self + 56) removeObject:v15];
        if (v15)
        {
          *(v15 + 16) &= ~1u;
        }

        goto LABEL_24;
      }
    }

    else if (([*(self + 72) containsObject:0] & 1) == 0)
    {
      goto LABEL_19;
    }

    [*(self + 64) removeObject:v15];
    [*(self + 72) removeObject:v15];
    if (v15)
    {
      v16 = *(v15 + 16);
      *(v15 + 16) = v16 & 0xFFFFFFFD;
      deletionsCopy2 = deletions;
      if ((v16 & 0x38) != 0)
      {
        continue;
      }

      goto LABEL_22;
    }

    [deletions addObject:0];
    [*(self + 56) removeObject:0];
LABEL_24:
    [a2 addObject:v15];
  }

  if (v9 >= 0x201)
  {
    NSZoneFree(0, v13);
  }

  return v10;
}

- (void)_processPendingInsertions:(id *)insertions withDeletions:(void *)deletions withUpdates:(void *)updates
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [insertions[9] count];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (v7 >= 0x201)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v17 - v10;
  if (v7 > 0x200)
  {
    v11 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v17 - v10, 8 * v7);
  }

  [insertions[9] getObjects:v11];
  for (i = 0; i != v7; ++i)
  {
    v13 = *&v11[8 * i];
    if (!v13)
    {
      [insertions[10] addObject:0];
      goto LABEL_19;
    }

    v14 = *(v13 + 16);
    *(v13 + 16) = v14 & 0xFFFFFFFD;
    if ((v14 & 8) != 0)
    {
      deletionsCopy = updates;
LABEL_17:
      [deletionsCopy addObject:v13];
      continue;
    }

    if ((v14 & 0x10) != 0)
    {
      deletionsCopy = deletions;
      goto LABEL_17;
    }

    if ((v14 & 0x20) != 0)
    {
      *(v13 + 16) = v14 & 0xFFFFFFC5;
      [insertions[11] removeObject:v13];
    }

    else
    {
      [insertions[10] addObject:v13];
      *(v13 + 16) |= 0x10u;
    }

LABEL_19:
    [v8 addObject:v13];
    [deletions addObject:v13];
    [insertions[7] removeObject:v13];
    if (v13)
    {
      *(v13 + 16) &= ~1u;
    }
  }

  if (v7 >= 0x201)
  {
    NSZoneFree(0, v11);
  }

  return v8;
}

- (void)_processPendingUpdates:(uint64_t)updates
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [*(updates + 56) count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v4];
  if (v5 >= 0x201)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = (8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = v14 - v8;
  if (v5 > 0x200)
  {
    v9 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v14 - v8, 8 * v5);
  }

  [*(updates + 56) getObjects:v9];
  for (i = 0; i != v5; ++i)
  {
    v11 = *&v9[8 * i];
    if (v11)
    {
      v12 = *(v11 + 16);
      *(v11 + 16) = v12 & 0xFFFFFFFE;
      if ((v12 & 0x30) != 0)
      {
        goto LABEL_14;
      }

      *(v11 + 16) = v12 & 0xFFFFFFF6 | 8;
    }

    [*(updates + 96) addObject:v11];
LABEL_14:
    [v6 addObject:v11];
    [a2 addObject:v11];
  }

  if (v5 >= 0x201)
  {
    NSZoneFree(0, v9);
  }

  return v6;
}

- (void)_processRecentlyForgottenObjects:(void *)objects
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [a2 count];
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  if (v5 >= 0x201)
  {
    v8 = NSAllocateScannedUncollectable();
    [a2 getObjects:v8];
  }

  else
  {
    bzero(v12 - v7, 8 * v6);
    [a2 getObjects:v8];
    if (!v4)
    {
      return;
    }
  }

  v9 = 0;
  do
  {
    v10 = *&v8[8 * v9];
    if (v10)
    {
      v11 = _insertion_fault_handler;
    }

    else
    {
      v11 = 0;
    }

    [(NSFaultHandler *)v11 turnObject:objects intoFaultWithContext:?];
    [objects _forgetObject:v10 propagateToObjectStore:0 removeFromRegistry:1];
    ++v9;
  }

  while (v4 != v9);
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v8);
  }
}

void __92__NSManagedObjectContext__NSInternalChangeProcessing___prefetchObjectsForDeletePropagation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setEntity:a2];
  [*(a1 + 32) setPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithFormat:", @"SELF IN %@", a3)}];
  v8 = [(NSEntityDescription *)a2 _keypathsToPrefetchForDeletePropagation];
  if ([v8 count])
  {
    [*(a1 + 32) setRelationshipKeyPathsForPrefetching:v8];
    v13 = 0;
    if (![*(a1 + 40) executeFetchRequest:*(a1 + 32) error:&v13])
    {
      v9 = objc_autoreleasePoolPush();
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v15 = v13;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Delete propagation prefetching failed with error: %@\n", buf, 0xCu);
          }
        }

        else
        {
          v11 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v15 = v13;
            _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: Delete propagation prefetching failed with error: %@\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v12 = 1;
      }

      else
      {
        v12 = 9;
      }

      _NSCoreDataLog_console(v12, "Delete propagation prefetching failed with error: %@", v13);
      objc_autoreleasePoolPop(v9);
      *a4 = 1;
    }
  }
}

- (void)_addObjectIDsInsertUpdatedByDATriggers:(void *)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(v3[21] + 136);
      if (!v4)
      {
        *(v3[21] + 136) = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = *(v3[21] + 136);
      }

      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v8 + 1) + 8 * v7)];
            v7 = (v7 + 1);
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_addObjectIDsUpdatedByDATriggers:(void *)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(v3[21] + 144);
      if (!v4)
      {
        *(v3[21] + 144) = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = *(v3[21] + 144);
      }

      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v8 + 1) + 8 * v7)];
            v7 = (v7 + 1);
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_addObjectIDsUpdatedByTriggers:(void *)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 count];
    if (result)
    {
      v4 = *(v3[21] + 112);
      if (!v4)
      {
        *(v3[21] + 112) = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v4 = *(v3[21] + 112);
      }

      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(a2);
            }

            [v4 addObject:*(*(&v8 + 1) + 8 * v7)];
            v7 = (v7 + 1);
          }

          while (v5 != v7);
          result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
          v5 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

- (void)_undoManagerCheckpoint:(id)checkpoint
{
  if ((*(&self->_flags + 1) & 8) == 0)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, sel__processEndOfEventNotification_);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __90__NSManagedObjectContext__NSInternalNotificationHandling___processEndOfEventNotification___block_invoke;
    v8 = &unk_1E6EC16F0;
    selfCopy = self;
    dispatchQueue = self->_dispatchQueue;
    tryLock = [(NSManagedObjectContext *)self tryLock];
    if (!dispatchQueue)
    {
      if (!tryLock)
      {
        return;
      }

      v7(v6);
      goto LABEL_9;
    }

    if (tryLock)
    {
      [(NSManagedObjectContext *)self performBlockAndWait:v6];
LABEL_9:
      [(NSManagedObjectContext *)self unlock];
      return;
    }

    [(NSManagedObjectContext *)self performBlock:v6];
  }
}

_DWORD *__90__NSManagedObjectContext__NSInternalNotificationHandling___processEndOfEventNotification___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result && !result[4])
  {
    result = [result _isDeallocating];
    if ((result & 1) == 0)
    {
      v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      [*(a1 + 32) processPendingChanges];
      [v3 drain];
      return 0;
    }
  }

  return result;
}

- (void)_storeConfigurationChanged:(id)changed
{
  if (self && !self->_wasDisposed && ([(NSManagedObjectContext *)self _isDeallocating]& 1) == 0)
  {
    userInfo = [changed userInfo];
    if (userInfo)
    {
      v5 = userInfo;
    }

    else
    {
      v5 = NSDictionary_EmptyDictionary;
    }

    if (self->_dispatchQueue)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __95__NSManagedObjectContext__NSInternalNotificationHandling___sendOrEnqueueNotification_selector___block_invoke;
      v11[3] = &unk_1E6EC1C40;
      v11[5] = v5;
      v11[6] = sel__processChangedStoreConfigurationNotification_;
      v11[4] = self;
      selfCopy = self;
      tryLock = [(NSManagedObjectContext *)self tryLock];
      selfCopy2 = self;
      if (tryLock)
      {
        [(NSManagedObjectContext *)self performBlockAndWait:v11];
        [(NSManagedObjectContext *)self unlock];
      }

      else
      {
        [(NSManagedObjectContext *)self performBlock:v11];
      }
    }

    else
    {
      selfCopy3 = self;
      if ([(NSManagedObjectContext *)self tryLock])
      {
        if (!self->_wasDisposed && ([(NSManagedObjectContext *)self _isDeallocating]& 1) == 0)
        {
          -[NSManagedObjectContext performSelector:withObject:](self, "performSelector:withObject:", sel__processChangedStoreConfigurationNotification_, [MEMORY[0x1E695DEC8] arrayWithObject:v5]);
          [(NSManagedObjectContext *)self _processReferenceQueue:?];
        }

        [(NSManagedObjectContext *)self unlock];
      }

      else
      {
        [objc_msgSend(MEMORY[0x1E696AD90] "defaultQueue")];
      }
    }
  }
}

- (void)_processChangedStoreConfigurationNotification:(id)notification
{
  v128 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  lastObject = [notification lastObject];
  selfCopy = self;
  v81 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  array = [MEMORY[0x1E695DF70] array];
  v8 = [lastObject objectForKey:@"changedUUID"];
  if (v8)
  {
    v9 = v8;
    v80 = lastObject;
    v95 = 0;
    v10 = [v8 objectAtIndex:0];
    v11 = [v9 objectAtIndex:1];
    v12 = [v9 objectAtIndex:2];
    v13 = [(NSMutableSet *)self->_insertedObjects count];
    v14 = [(NSMutableSet *)self->_unprocessedInserts count];
    v15 = v14 + v13;
    if (v14 + v13)
    {
      v83 = &v76;
      MEMORY[0x1EEE9AC00](v14);
      v17 = &v76 - v16;
      if (v15 > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v76 - v16, 8 * v15);
      }

      [(NSMutableSet *)self->_insertedObjects getObjects:v17];
      [(NSMutableSet *)self->_unprocessedInserts getObjects:&v17[8 * [(NSMutableSet *)self->_insertedObjects count]]];
      v18 = 0;
      v84 = v11;
      v85 = v10;
      do
      {
        v95 = *&v17[8 * v18];
        objectID = [v95 objectID];
        if ([objectID persistentStore] == v10)
        {
          if ([objectID isTemporaryID])
          {
            [objectID _setPersistentStore:v11];
          }

          else
          {
            v94.version = -[NSTemporaryObjectID initWithEntity:]([NSTemporaryObjectID alloc], "initWithEntity:", [objectID entity]);
            [v94.version _setPersistentStore:v11];
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v108 = 0u;
            v109 = 0u;
            v106 = 0u;
            v107 = 0u;
            v104 = 0u;
            v105 = 0u;
            v102 = 0u;
            v103 = 0u;
            v100 = 0u;
            v101 = 0u;
            v99 = 0u;
            memset(&v98, 0, sizeof(v98));
            v20 = _PFStackAllocatorCreate(&v98, 1024);
            v21 = CFArrayCreate(v20, &v95, 1, 0);
            v22 = CFArrayCreate(v20, &v94, 1, 0);
            v23 = [(NSManagedObjectContext *)self _changeIDsForManagedObjects:v21 toIDs:v22];
            if (v23)
            {
              v24 = v23;
              [array addObject:v23];
            }

            if (v98.copyDescription)
            {
              v11 = v84;
              if (v21)
              {
                CFRelease(v21);
              }

              if (v22)
              {
                CFRelease(v22);
              }
            }

            else
            {
              v98.retain = v98.version;
              v11 = v84;
            }

            v10 = v85;
          }
        }

        ++v18;
      }

      while (v15 != v18);
      if (v15 >= 0x201)
      {
        NSZoneFree(0, v17);
      }
    }

    v25 = [v12 count];
    v26 = MEMORY[0x1EEE9AC00](v25);
    v29 = &v76 - v28;
    v84 = v26;
    v79 = &v76;
    if (v26 >= 0x402)
    {
      v29 = NSAllocateScannedUncollectable();
      v85 = NSAllocateScannedUncollectable();
      v83 = NSAllocateScannedUncollectable();
      v82 = NSAllocateScannedUncollectable();
    }

    else
    {
      v30 = 8 * v27;
      bzero(&v76 - v28, 8 * v27);
      MEMORY[0x1EEE9AC00](v31);
      v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
      v85 = (&v76 - v32);
      bzero(&v76 - v32, v30);
      MEMORY[0x1EEE9AC00](v33);
      v83 = (&v76 - v32);
      bzero(&v76 - v32, v30);
      MEMORY[0x1EEE9AC00](v34);
      v82 = &v76 - v32;
      bzero(&v76 - v32, v30);
      if (!v25)
      {
        v35 = 0;
        goto LABEL_35;
      }
    }

    v36 = 0;
    v37 = 0;
    v35 = 0;
    do
    {
      v38 = [v12 objectAtIndex:v36];
      v39 = v36 + 1;
      v40 = [v12 objectAtIndex:v39];
      Value = _PFCMT_GetValue(&self->_infoByGID->super.isa, v38);
      v95 = Value;
      if (Value)
      {
        v42 = v82;
        v83[v37] = Value;
        *&v42[8 * v37] = v40;
        [v95 _setVersionReference__:1];
        ++v37;
      }

      *&v29[8 * v35] = v38;
      v43 = v84;
      v85[v35++] = v40;
      v36 = v39 + 1;
    }

    while (v36 < v43);
    if (v37)
    {
      v44 = [_PFArray alloc];
      v45 = [(_PFArray *)v44 initWithObjects:v83 count:v37 andFlags:48 andContext:self];
      v46 = [_PFArray alloc];
      v77 = [(_PFArray *)v46 initWithObjects:v82 count:v37 andFlags:0];
      v78 = v45;
      v47 = [(NSManagedObjectContext *)self _changeIDsForManagedObjects:v45 toIDs:v77];
      if (v47)
      {
        v48 = v47;
        [array addObject:v47];
      }

      goto LABEL_36;
    }

LABEL_35:
    v77 = 0;
    v78 = 0;
LABEL_36:
    memset(&v98, 0, 24);
    *&v98.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    v98.hash = *(MEMORY[0x1E695E9D8] + 40);
    memset(&v94, 0, 24);
    *&v94.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    v49 = *MEMORY[0x1E695E480];
    v76 = v29;
    v50 = CFDictionaryCreate(v49, v29, v85, v35, &v98, &v94);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    registeredObjects = [(NSManagedObjectContext *)self registeredObjects];
    v52 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v91;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v91 != v54)
          {
            objc_enumerationMutation(registeredObjects);
          }

          v56 = *(*(&v90 + 1) + 8 * i);
          if (v56)
          {
            v57 = _insertion_fault_handler;
          }

          else
          {
            v57 = 0;
          }

          _PFFaultHandlerFixRelationshipsPostMigration(v57, v56, self, v50);
        }

        v53 = [(NSSet *)registeredObjects countByEnumeratingWithState:&v90 objects:v97 count:16];
      }

      while (v53);
    }

    CFRelease(v50);

    if (v84 >= 0x402)
    {
      NSZoneFree(0, v76);
      NSZoneFree(0, v85);
      NSZoneFree(0, v83);
      NSZoneFree(0, v82);
    }

    lastObject = v80;
  }

  Count = _PFCMT_GetCount(&self->_infoByGID->super.isa);
  v59 = [lastObject objectForKey:@"removed"];
  if (v59)
  {
    v60 = v59;
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = [v60 count];
    if (v62)
    {
      v63 = v62;
      for (j = 0; j != v63; ++j)
      {
        v65 = -[NSManagedObjectContext _retainedObjectsFromRemovedStore:](self, "_retainedObjectsFromRemovedStore:", [v60 objectAtIndex:j]);
        [v61 addObjectsFromArray:v65];
      }
    }

    v66 = [v61 count];
    if (v66)
    {
      v67 = v66;
      if (v66 == Count)
      {
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{NSArray_EmptyArray, @"invalidatedAll", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
      }

      else
      {
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v61), @"invalidated", +[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self), @"managedObjectContext", 0}];
      }

      [(NSManagedObjectContext *)self _postObjectsDidChangeNotificationWithUserInfo:v68];
      for (k = 0; k != v67; ++k)
      {
        v70 = [v61 objectAtIndex:k];
        if (v70)
        {
          v71 = _insertion_fault_handler;
        }

        else
        {
          v71 = 0;
        }

        [(NSFaultHandler *)v71 turnObject:v70 intoFaultWithContext:self];
        if (self)
        {
          [(NSManagedObjectContext *)self _forgetObject:v70 propagateToObjectStore:0 removeFromRegistry:1];
        }
      }
    }
  }

  if (array)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v72 = [array countByEnumeratingWithState:&v86 objects:v96 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v87;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v87 != v74)
          {
            objc_enumerationMutation(array);
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }

        v73 = [array countByEnumeratingWithState:&v86 objects:v96 count:16];
      }

      while (v73);
    }
  }

  [v81 drain];
  [(NSManagedObjectContext *)self _processReferenceQueue:?];
}

- (uint64_t)_implicitObservationInfoForEntity:(void *)entity forResultingClass:
{
  if (result)
  {
    v5 = result;
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(result, sel__implicitObservationInfoForEntity_forResultingClass_);
    }

    if (*(v5 + 46) <= 0)
    {
      persistentStoreCoordinator = [v5 persistentStoreCoordinator];
      if (persistentStoreCoordinator)
      {
        v7 = *(persistentStoreCoordinator + 96);
      }

      else
      {
        v7 = 0;
      }

      if (!*(v5 + 128))
      {
        v8 = *(*(v5 + 168) + 80);
        if (!v8)
        {
          *(*(v5 + 168) + 80) = _PFModelMapTotalEntityCountForModel([a2 managedObjectModel]);
          v8 = *(*(v5 + 168) + 80);
        }

        *(v5 + 128) = PF_CALLOC_OBJECT_ARRAY(2 * v8);
      }

      v9 = _PFModelMapSlotForEntity(v7, a2);
      v10 = 2 * v9;
      v11 = *(v5 + 128);
      v12 = *(v11 + 16 * v9);
      if (v12)
      {
        v13 = *(v11 + 16 * v9 + 8);
      }

      else
      {
        _new_implicitlyObservedKeys = [(NSEntityDescription *)a2 _new_implicitlyObservedKeys];
        _PFFastEntityClass(a2, v15);
        v16 = objc_autoreleasePoolPush();
        ImplicitObservationInfo = _NSKeyValueCreateImplicitObservationInfo();
        objc_autoreleasePoolPop(v16);

        v12 = NSKeyValueCoding_NullValue;
        if (ImplicitObservationInfo)
        {
          v12 = ImplicitObservationInfo;
        }

        *(*(v5 + 128) + 8 * v10) = v12;
        v13 = 0;
        *(*(v5 + 128) + 8 * v10 + 8) = 0;
      }

      if (v12 == NSKeyValueCoding_NullValue)
      {
        result = 0;
      }

      else
      {
        result = v12;
      }

      if (result)
      {
        *entity = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __95__NSManagedObjectContext__NSInternalNotificationHandling___sendOrEnqueueNotification_selector___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!*(v2 + 16))
    {
      v3 = a1;
      a1 = [*(a1 + 32) _isDeallocating];
      v2 = *(v3 + 32);
      if ((a1 & 1) == 0)
      {
        [*(v3 + 32) performSelector:*(v3 + 48) withObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", *(v3 + 40))}];
        [(NSManagedObjectContext *)*(v3 + 32) _processReferenceQueue:?];
        v2 = *(v3 + 32);
      }
    }

    v1 = vars8;
  }

  return MEMORY[0x1EEE66BB8](a1, v2);
}

- (void)_setAllowsExpandedUserInfoKeys:(BOOL)keys
{
  keysCopy = keys;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__NSManagedObjectContext__NSCoreDataSPI___setAllowsExpandedUserInfoKeys___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    keysCopy2 = keys;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (keysCopy)
    {
      v5 = 0x10000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xEFFFFFFF | v5);
  }
}

- (void)setShouldRefreshAfterSave:(BOOL)save
{
  saveCopy = save;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__NSManagedObjectContext__NSCoreDataSPI__setShouldRefreshAfterSave___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    saveCopy2 = save;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (saveCopy)
    {
      v5 = 0x2000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFDFFFFFF | v5);
  }
}

- (BOOL)shouldRefreshAfterSave
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return (*(&self->_flags + 3) >> 1) & 1;
}

- (void)setShouldPerformSecureOperation:(BOOL)operation
{
  operationCopy = operation;
  if (self->_dispatchQueue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__NSManagedObjectContext__NSCoreDataSPI__setShouldPerformSecureOperation___block_invoke;
    v6[3] = &unk_1E6EC2770;
    v6[4] = self;
    operationCopy2 = operation;
    [(NSManagedObjectContext *)self performBlockAndWait:v6];
  }

  else
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self, a2);
    }

    if (operationCopy)
    {
      v5 = 0x1000000;
    }

    else
    {
      v5 = 0;
    }

    self->_flags = (*&self->_flags & 0xFEFFFFFF | v5);
  }
}

- (BOOL)shouldPerformSecureOperation
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  return *(&self->_flags + 3) & 1;
}

- (void)setTrackSQLiteDatabaseStatistics:(BOOL)statistics
{
  statisticsCopy = statistics;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if (statisticsCopy)
  {
    v5 = 0x20000000;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xDFFFFFFF | v5);
}

- (id)performBlockWithResult:(id)result
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__NSManagedObjectContext__NSCoreDataSPI__performBlockWithResult___block_invoke;
  v5[3] = &unk_1E6EC25C0;
  v5[4] = result;
  v5[5] = &v6;
  [(NSManagedObjectContext *)self performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __65__NSManagedObjectContext__NSCoreDataSPI__performBlockWithResult___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return v2;
}

- (void)performWithOptions:(unint64_t)options andBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self || self->_wasDisposed || [(NSManagedObjectContext *)self _isDeallocating])
  {
    v21 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_53;
    }

    v22 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (!v24)
      {
        goto LABEL_53;
      }
    }

    else if (!v24)
    {
      goto LABEL_53;
    }

    LODWORD(context) = 138412290;
    *(&context + 4) = [MEMORY[0x1E696AF00] callStackSymbols];
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: illegally invoked -performWithOptions* on dying NSManagedObjectContext at:\n\t%@\n", &context, 0xCu);
LABEL_53:
    _NSCoreDataLog_console(1, "illegally invoked -performWithOptions* on dying NSManagedObjectContext at:\n\t%@", [MEMORY[0x1E696AF00] callStackSymbols]);
    objc_autoreleasePoolPop(v21);
    __break(1u);
  }

  if (self->_dispatchQueue)
  {
    if (options)
    {
      v9 = malloc_type_malloc(0x20uLL, 0x80040B8603338uLL);
      *v9 = _Block_copy(block);
      if ((options & 0x1000) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = CFRetain(self);
      }

      v9[1] = v10;
      v9[2] = options | 0x2001;
      v9[3] = 0;
      dispatchQueue = self->_dispatchQueue;

      dispatch_async_f(dispatchQueue, v9, developerSubmittedBlockToNSManagedObjectContextPerform);
    }

    else
    {
      v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
      v8 = atomic_load(&self->_isMainThreadBlessed);
      if (v8)
      {
        if (!_PFIsSerializedWithMainQueue())
        {
LABEL_43:
          if ((options & 0x1000) == 0)
          {
            selfCopy = self;
          }

          *&context = block;
          *(&context + 1) = self;
          optionsCopy = options | 0x2000;
          v27 = v7;
          dispatch_sync_f(self->_dispatchQueue, &context, developerSubmittedBlockToNSManagedObjectContextPerform);
          return;
        }
      }

      else
      {
        if (!v7)
        {
          goto LABEL_43;
        }

        v12 = 0;
        v13 = 0;
        v14 = v7;
        while (v14 != self)
        {
          if (v14 == v12)
          {
            goto LABEL_30;
          }

          if (!v12)
          {
            v12 = v14;
          }

          v14 = atomic_load((v14 + 8));
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        v13 = 1;
LABEL_30:
        if (v13)
        {
          goto LABEL_40;
        }

LABEL_31:
        v16 = 0;
        v17 = 0;
        selfCopy2 = self;
        while (selfCopy2 != v7)
        {
          if (selfCopy2 == v16)
          {
            goto LABEL_39;
          }

          if (!v16)
          {
            v16 = selfCopy2;
          }

          selfCopy2 = atomic_load(&selfCopy2->_queueOwner);
          if (!selfCopy2)
          {
            goto LABEL_43;
          }
        }

        v17 = 1;
LABEL_39:
        if (!v17)
        {
          goto LABEL_43;
        }
      }

LABEL_40:
      if ((options & 0x1000) == 0)
      {
        selfCopy3 = self;
      }

      *&context = block;
      *(&context + 1) = self;
      optionsCopy = options;
      v27 = v7;
      developerSubmittedBlockToNSManagedObjectContextPerform(&context);
    }
  }

  else if ((options & 0x8000) != 0)
  {
    v11 = *(block + 2);

    v11(block);
  }

  else if ((options & 0x4000) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-performWithOptions:andBlock: was called on a MOC of NSConfinementConcurrencyType unexpectedly." userInfo:0]);
  }
}

- (id)_orderedSetWithResultsFromFetchRequest:(id)request
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  v5 = [[_PFFetchedResultOrderedSetWrapper alloc] initWithArray:request andContext:self];

  return v5;
}

- (void)_stopConflictDetectionForObject:(id)object
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  lockedObjects = self->_lockedObjects;

  [(NSMutableSet *)lockedObjects removeObject:object];
}

+ (void)_mergeChangesFromRemoteContextSave:(void *)save intoContexts:(uint64_t)contexts withClientQueryGeneration:
{
  contextsCopy = contexts;
  v73 = a2;
  v112 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (save && [save count])
  {
    v66 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [v73 objectForKey:@"managedObjectContext"];
    if (v5 && (Weak = objc_loadWeak((v5 + 8))) != 0 && (parentContext = Weak, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = [MEMORY[0x1E695DFA8] set];
      do
      {
        [v8 addObject:parentContext];
        parentContext = [parentContext parentContext];
      }

      while (parentContext);
    }

    else
    {
      v8 = 0;
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v9 = [save countByEnumeratingWithState:&v105 objects:v111 count:16];
    if (v9)
    {
      persistentStoreCoordinator = 0;
      v10 = *v106;
      do
      {
        v11 = 0;
        do
        {
          if (*v106 != v10)
          {
            objc_enumerationMutation(save);
          }

          v12 = [[_PFWeakReference alloc] initWithObject:*(*(&v105 + 1) + 8 * v11)];
          v13 = v12;
          if (v12)
          {
            WeakRetained = objc_loadWeakRetained(&v12->_object);
            if (WeakRetained && (!v8 || ([v8 containsObject:WeakRetained] & 1) == 0))
            {
              [v80 addObject:WeakRetained];
              if (!persistentStoreCoordinator)
              {
                persistentStoreCoordinator = [WeakRetained persistentStoreCoordinator];
              }
            }
          }

          else
          {
            WeakRetained = 0;
          }

          ++v11;
        }

        while (v9 != v11);
        v15 = [save countByEnumeratingWithState:&v105 objects:v111 count:16];
        v9 = v15;
      }

      while (v15);
    }

    else
    {
      persistentStoreCoordinator = 0;
    }

    v16 = [v80 count];
    while (1)
    {
      v17 = v80;
      if (v16 <= 0)
      {
        break;
      }

      if (persistentStoreCoordinator != [objc_msgSend(v80 objectAtIndex:{--v16), "persistentStoreCoordinator"}])
      {

        [v66 drain];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatched PSCs in parameter contexts" userInfo:0]);
      }
    }

    if (persistentStoreCoordinator && (v18 = [v80 count], v17 = v80, v18))
    {
      v19 = [v73 objectForKey:@"newQueryGeneration"];
      if ([v19 _isEnabled])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v68 = v20;
      v71 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"inserted", @"inserted_objectIDs", @"deleted", @"deleted_objectIDs", @"updated", @"updated_objectIDs", @"refreshed", @"refreshed_objectIDs", @"invalidated", @"invalidated_objectIDs", @"invalidatedAll", 0}];
      v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v73, "count")}];
      v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v104 = 0;
      v95 = 0;
      v96 = &v95;
      v97 = 0x3052000000;
      v98 = __Block_byref_object_copy__13;
      v99 = __Block_byref_object_dispose__13;
      v100 = objc_alloc_init(MEMORY[0x1E695DF70]);
      managedObjectModel = [persistentStoreCoordinator managedObjectModel];
      v21 = v80;
      v22 = [v71 count];
      v23 = v22;
      if (v22)
      {
        v24 = 0;
        v67 = v22;
LABEL_38:
        v25 = [v71 objectAtIndex:v24];
        v26 = [v73 objectForKey:v25];
        v79 = [v26 count];
        if (!v26 || !v79)
        {
          goto LABEL_94;
        }

        v69 = v25;
        v77 = v24;
        if (v79 >= 0x201)
        {
          v27 = 1;
        }

        else
        {
          v27 = v79;
        }

        v28 = (8 * v27 + 15) & 0xFFFFFFFFFFFFFFF0;
        v29 = &v64 - v28;
        if (v79 > 0x200)
        {
          v29 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v64 - v28, 8 * v79);
        }

        [v26 getObjects:v29];
        v70 = &v64;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          objectID = *&v29[8 * v31];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v35 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:objectID error:0];
              goto LABEL_53;
            }

            objectID = [(__CFURL *)objectID objectID];
          }

          v33 = [-[__CFURL persistentStore](objectID "persistentStore")];
          if (v33 != persistentStoreCoordinator)
          {
            uRIRepresentation = [(__CFURL *)objectID URIRepresentation];
            v35 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectIDForURIRepresentation:uRIRepresentation error:0];
LABEL_53:
            objectID = v35;
          }

          if (objectID)
          {
            *&v29[8 * v30++] = objectID;
          }

          v36 = v80;
          if (v79 == ++v31)
          {
            if (v77 >= 4)
            {
              v37 = malloc_type_calloc(1uLL, v30, 0x100004077774924uLL);
              v102[3] = v37;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v38 = [v36 countByEnumeratingWithState:&v91 objects:v110 count:16];
              if (v38)
              {
                v39 = *v92;
                do
                {
                  for (i = 0; i != v38; ++i)
                  {
                    if (*v92 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = *(*(&v91 + 1) + 8 * i);
                    v90[0] = MEMORY[0x1E69E9820];
                    v90[1] = 3221225472;
                    v90[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke;
                    v90[3] = &unk_1E6EC25E8;
                    v90[6] = v30;
                    v90[7] = v29;
                    v90[4] = v41;
                    v90[5] = &v101;
                    if (v41[3])
                    {
                      [v41 performBlockAndWait:v90];
                    }

                    else
                    {
                      __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke(v90);
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v91 objects:v110 count:16];
                }

                while (v38);
              }
            }

            if (v30)
            {
              v42 = 0;
              v78 = 0;
              while (1)
              {
                v43 = *&v29[8 * v42];
                if (v43)
                {
                  break;
                }

LABEL_83:
                if (++v42 == v30)
                {
                  goto LABEL_87;
                }
              }

              if (v77 >= 6)
              {
                if (!*(v102[3] + v42))
                {
LABEL_82:
                  [v76 addObject:v43];
                  v49 = v78;
                  *&v29[8 * v78] = v43;
                  v78 = v49 + 1;
                  goto LABEL_83;
                }
              }

              else if (v77 == 1)
              {
                goto LABEL_82;
              }

              entity = [*&v29[8 * v42] entity];
              if (entity)
              {
                if (atomic_load((entity + 124)))
                {
                  v46 = *(entity + 72);
                }

                else
                {
                  do
                  {
                    v46 = entity;
                    entity = [entity superentity];
                  }

                  while (entity);
                }
              }

              else
              {
                v46 = 0;
              }

              name = [v46 name];
              v48 = [v75 objectForKey:name];
              if (!v48)
              {
                v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v75 setObject:v48 forKey:name];
              }

              [v48 addObject:v43];
              goto LABEL_82;
            }

            v78 = 0;
LABEL_87:
            v50 = v102[3];
            if (v50)
            {
              free(v50);
              v102[3] = 0;
            }

            v21 = v80;
            v51 = objc_alloc(MEMORY[0x1E695DEC8]);
            v23 = v67;
            v24 = v77;
            v52 = [v51 initWithObjects:v29 count:v78];
            if ([v52 count])
            {
              [v74 setValue:v52 forKey:v69];
              if (v68)
              {
                [v74 setObject:v68 forKey:@"newQueryGeneration"];
              }
            }

            if (v79 >= 0x201)
            {
              NSZoneFree(0, v29);
            }

LABEL_94:
            if (++v24 == v23)
            {
              break;
            }

            goto LABEL_38;
          }
        }
      }

      if ([v75 count])
      {
        v53 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
        [(NSManagedObjectContext *)v53 setPersistentStoreCoordinator:persistentStoreCoordinator];
        [(NSManagedObjectContext *)v53 setUndoManager:0];
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_2;
        v89[3] = &unk_1E6EC2610;
        v89[4] = managedObjectModel;
        v89[5] = v53;
        v89[6] = &v95;
        [v75 enumerateKeysAndObjectsUsingBlock:v89];
      }

      else
      {
        v53 = 0;
      }

      v54 = [v21 count];
      if (v54)
      {
        for (j = 0; j != v54; ++j)
        {
          v56 = [v80 objectAtIndex:j];
          if (![v56 parentContext])
          {
            v88[0] = MEMORY[0x1E69E9820];
            v88[1] = 3221225472;
            v88[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4;
            v88[3] = &unk_1E6EC19D8;
            v88[4] = v56;
            v88[5] = v74;
            v88[6] = contextsCopy;
            if (v56[3])
            {
              [v56 performBlockAndWait:v88];
            }

            else
            {
              __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4(v88);
            }
          }
        }

        for (k = 0; k != v54; ++k)
        {
          v58 = [v80 objectAtIndex:k];
          if ([v58 parentContext])
          {
            v87[0] = MEMORY[0x1E69E9820];
            v87[1] = 3221225472;
            v87[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5;
            v87[3] = &unk_1E6EC19D8;
            v87[4] = v58;
            v87[5] = v74;
            v87[6] = contextsCopy;
            if (v58[3])
            {
              [v58 performBlockAndWait:v87];
            }

            else
            {
              __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5(v87);
            }
          }
        }

        v21 = v80;
      }

      v59 = v102[3];
      if (v59)
      {
        free(v59);
        v102[3] = 0;
      }

      if (v53)
      {
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 3221225472;
        v86[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_6;
        v86[3] = &unk_1E6EC16F0;
        v86[4] = v53;
        [(NSManagedObjectContext *)v53 performBlockAndWait:v86];
      }

      [v66 drain];
      v60 = 0;
      if (v53)
      {
      }

      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v61 = [v21 countByEnumeratingWithState:&v82 objects:v109 count:16];
      if (v61)
      {
        v62 = *v83;
        do
        {
          for (m = 0; m != v61; ++m)
          {
            if (*v83 != v62)
            {
              objc_enumerationMutation(v21);
            }

            [(NSManagedObjectContext *)*(*(&v82 + 1) + 8 * m) _registerAsyncReferenceCallback];
          }

          v61 = [v21 countByEnumeratingWithState:&v82 objects:v109 count:16];
        }

        while (v61);
      }

      _Block_object_dispose(&v95, 8);
      _Block_object_dispose(&v101, 8);
    }

    else
    {

      [v66 drain];
    }
  }
}

- (void)_mergeChangesFromRemoteContextSave:(id)save presupposingQueryGeneration:(id)generation
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    v7[0] = self;
    +[NSManagedObjectContext _mergeChangesFromRemoteContextSave:intoContexts:withClientQueryGeneration:](NSManagedObjectContext, save, [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1], generation);
  }
}

void *__116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke(void *result)
{
  if (result[6])
  {
    v1 = result;
    v2 = 0;
    do
    {
      if (*(v1[7] + 8 * v2))
      {
        result = [v1[4] objectRegisteredForID:?];
        if (result)
        {
          v3 = *(*(v1[5] + 8) + 24);
          *(v3 + v2) |= 1u;
        }
      }

      ++v2;
    }

    while (v2 < v1[6]);
  }

  return result;
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  if (v3)
  {
    v6 = [*(v3 + 32) objectForKey:a2];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(NSFetchRequest);
      [(NSFetchRequest *)v8 setEntity:v7];
      [(NSFetchRequest *)v8 setIncludesSubentities:1];
      [(NSFetchRequest *)v8 setIncludesPendingChanges:0];
      -[NSFetchRequest setPredicate:](v8, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a3]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3;
      v11[3] = &unk_1E6EC1388;
      v9 = a1[5];
      v10 = a1[6];
      v11[4] = v9;
      v11[5] = v8;
      v11[6] = v10;
      if (v9[3])
      {
        [v9 performBlockAndWait:v11];
      }

      else
      {
        __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3(v11);
      }
    }
  }
}

uint64_t __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = 0;
  v3 = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:&v5];
  if (v3)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v3];
  }

  return [v2 drain];
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_4(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      [(NSManagedObjectContext *)v3 _coreMergeChangesFromDidSaveDictionary:1 usingObjectIDs:v4 withClientQueryGeneration:?];
    }

    else
    {
      [v3 _mergeChangesFromDidSaveDictionary:*(a1 + 40) usingObjectIDs:1];
    }
  }

  [v2 drain];
  v5 = *(a1 + 32);

  [(NSManagedObjectContext *)v5 _processReferenceQueue:?];
}

void __116__NSManagedObjectContext__NSCoreDataSPI___mergeChangesFromRemoteContextSave_intoContexts_withClientQueryGeneration___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      [(NSManagedObjectContext *)v3 _coreMergeChangesFromDidSaveDictionary:1 usingObjectIDs:v4 withClientQueryGeneration:?];
    }

    else
    {
      [v3 _mergeChangesFromDidSaveDictionary:*(a1 + 40) usingObjectIDs:1];
    }
  }

  [v2 drain];
  v5 = *(a1 + 32);

  [(NSManagedObjectContext *)v5 _processReferenceQueue:?];
}

- (void)_mergeChangesFromRemoteContextSave:(id)save
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self, a2);
  }

  if ([(NSManagedObjectContext *)self persistentStoreCoordinator])
  {
    v5[0] = self;
    [objc_opt_class() mergeChangesFromRemoteContextSave:save intoContexts:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1)}];
  }
}

- (void)_copyChildObject:(uint64_t)object toParentObject:(_BYTE *)parentObject fromChildContext:(void *)context
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(object, sel__copyChildObject_toParentObject_fromChildContext_);
  }

  v6 = [(NSManagedObject *)parentObject _newNestedSaveChangedValuesForParent:context];
  if (v6)
  {
    v30 = v6;
    entity = [context entity];
    v8 = *(entity + 112);
    v9 = *(v8 + 136);
    if (!v9)
    {
      [(NSManagedObject *)context _updateFromRefreshSnapshot:v30 includingTransients:1];
LABEL_26:

      return;
    }

    v10 = entity;
    v11 = *(v8 + 128);
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(object, sel__currentEventSnapshotForObject_);
      if (context)
      {
        goto LABEL_7;
      }
    }

    else if (context)
    {
LABEL_7:
      v12 = context[6];
      if (!v12 || (v13 = *(v12 + 16)) == 0)
      {
        v13 = [(NSManagedObjectContext *)object _committedSnapshotForObject:context];
      }

      goto LABEL_14;
    }

    v13 = 0;
LABEL_14:
    v14 = *(v10 + 104);
    keys = [v14 keys];
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "length")}];
    v28 = v11;
    v29 = v9;
    v27 = v9 + v11;
    if (v11 < v9 + v11)
    {
      v17 = v9;
      v18 = (keys + 8 * v11);
      do
      {
        v19 = *v18;
        v20 = objc_msgSend_valueForKey_(context);
        v21 = objc_msgSend_valueForKey_(v13);
        if ([MEMORY[0x1E695DFB0] null] == v21)
        {
          [v16 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
          [v16 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
        }

        else
        {
          v22 = [_PFRoutines newOrderedSetFromCollection:v20 byRemovingItems:v21];
          [v16 addObject:v22];

          [objc_msgSend(context primitiveValueForKey:{v19), "removeObjectsInArray:", objc_msgSend(v22, "array")}];
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    [(NSManagedObject *)context _updateFromRefreshSnapshot:v30 includingTransients:1];
    keys2 = [v14 keys];
    if (v28 < v27)
    {
      v24 = 0;
      v25 = keys2 + 8 * v28;
      do
      {
        v26 = [v16 objectAtIndex:v24];
        if ([MEMORY[0x1E695DFB0] null] != v26)
        {
          [objc_msgSend(context primitiveValueForKey:{*(v25 + 8 * v24)), "addObjectsFromArray:", objc_msgSend(v26, "array")}];
        }

        ++v24;
      }

      while (v29 != v24);
    }

    goto LABEL_26;
  }
}

- (void)_parentProcessSaveRequest:(void *)result inContext:(void *)context error:
{
  v65 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v50 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    [v3 processPendingChanges];
    insertedObjects = [context insertedObjects];
    updatedObjects = [context updatedObjects];
    deletedObjects = [context deletedObjects];
    v7 = [insertedObjects count];
    v52 = [updatedObjects count];
    v51 = [deletedObjects count];
    v49 = &v47;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v53 = v7;
    if (v7 > 0x200)
    {
      v54 = NSAllocateScannedUncollectable();
    }

    else
    {
      v54 = &v47 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v54, 8 * v8);
    }

    if (v52 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v52;
    }

    if (v52 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = (&v47 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v52 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v47 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
    }

    if (v51 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v51;
    }

    if (v51 >= 0x201)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v15 = (&v47 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v51 > 0x200)
    {
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v47 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
    }

    if (v53)
    {
      v16 = v53 >= 0x201 ? 1 : v53;
      v17 = (8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0;
      v18 = &v47 - v17;
      if (v53 > 0x200)
      {
        v18 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v47 - v17, 8 * v53);
      }

      [insertedObjects getObjects:v18];
      for (i = 0; i != v8; ++i)
      {
        v20 = _PFRetainedObjectForMappedChildObjectIDInParentContext([*&v18[8 * i] objectID], v3);
        *&v54[8 * i] = v20;
        [v3 insertObject:v20];
      }

      for (j = 0; j != v8; ++j)
      {
        [NSManagedObjectContext _copyChildObject:v3 toParentObject:*&v18[8 * j] fromChildContext:*&v54[8 * j]];
      }

      if (v53 >= 0x201)
      {
        NSZoneFree(0, v18);
      }
    }

    v48 = deletedObjects;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v22 = [updatedObjects countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v22)
    {
      v23 = 0;
      v24 = *v60;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v60 != v24)
          {
            objc_enumerationMutation(updatedObjects);
          }

          v26 = *(*(&v59 + 1) + 8 * k);
          v27 = _PFRetainedObjectForMappedChildObjectIDInParentContext([v26 objectID], v3);
          v12[v23] = v27;
          [NSManagedObjectContext _copyChildObject:v3 toParentObject:v26 fromChildContext:v27];
          ++v23;
        }

        v22 = [updatedObjects countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v22);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v28 = v48;
    v29 = [v48 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v29)
    {
      v30 = 0;
      v31 = *v56;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = _PFRetainedObjectForMappedChildObjectIDInParentContext([*(*(&v55 + 1) + 8 * m) objectID], v3);
          v15[v30] = v33;
          [v3 deleteObject:v33];
          ++v30;
        }

        v29 = [v28 countByEnumeratingWithState:&v55 objects:v63 count:16];
      }

      while (v29);
    }

    if (v53)
    {
      v35 = v53;
      v34 = v54;
      do
      {
        [*v34++ awakeFromSnapshotEvents:128];
        --v35;
      }

      while (v35);
    }

    if (v52)
    {
      v36 = v12;
      v37 = v52;
      do
      {
        [*v36++ awakeFromSnapshotEvents:128];
        --v37;
      }

      while (v37);
    }

    if (v51)
    {
      v38 = v15;
      v39 = v51;
      do
      {
        [*v38++ awakeFromSnapshotEvents:128];
        --v39;
      }

      while (v39);
    }

    [v3 processPendingChanges];
    if (v53)
    {
      v41 = v53;
      v40 = v54;
      do
      {

        --v41;
      }

      while (v41);
    }

    if (v52)
    {
      v42 = v12;
      v43 = v52;
      do
      {

        --v43;
      }

      while (v43);
    }

    if (v51)
    {
      v44 = v15;
      v45 = v51;
      do
      {

        --v45;
      }

      while (v45);
    }

    if (v53 >= 0x201)
    {
      NSZoneFree(0, v54);
    }

    if (v52 >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    if (v51 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    [v50 drain];
    v46 = 0;
    return NSArray_EmptyArray;
  }

  return result;
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__NSManagedObjectContext__NestedContextSupport__executeRequest_withContext_error___block_invoke;
  v15[3] = &unk_1E6EC1900;
  v15[4] = self;
  v15[5] = request;
  v15[6] = context;
  v15[7] = &v16;
  v15[8] = &v22;
  _perform(self, v15);
  v7 = v17[5];
  v8 = v23[5];
  if (error)
  {
    v9 = v17[5];
    if (v9)
    {
      *error = v9;
    }
  }

  if ([request requestType] != 4 && (v23[5] == 0) == (v17[5] == 0))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Either a non nil result OR an error in nexted context\n", v14, 2u);
    }

    v11 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *v14 = 0;
      _os_log_fault_impl(&dword_18565F000, v11, OS_LOG_TYPE_FAULT, "CoreData: Either a non nil result OR an error in nexted context", v14, 2u);
    }
  }

  v12 = v23[5];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v12;
}

uint64_t __82__NSManagedObjectContext__NestedContextSupport__executeRequest_withContext_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v95 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 32) + 168) + 8))
  {
    v2 = PF_CALLOC_OBJECT_ARRAY(2);
    *v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(v1 + 32) + 168) + 8) = v2;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v83 = 0;
  v4 = [*(v1 + 40) requestType];
  v5 = 0;
  if (v4 <= 4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v6 = [NSManagedObjectContext _parentProcessSaveRequest:*(v1 + 40) inContext:? error:?];
        goto LABEL_6;
      }

      if (v4 != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }

    if ([*(v1 + 40) resultType] == 4)
    {
LABEL_13:
      v8 = [*(v1 + 40) copy];
      if ([v8 predicate])
      {
        v9 = [[_NSChildContextPredicateRemapper alloc] initWithContext:*(v1 + 32)];
        v10 = -[_NSChildContextPredicateRemapper createPredicateForFetchFromPredicate:withContext:](v9, "createPredicateForFetchFromPredicate:withContext:", [v8 predicate], *(v1 + 32));
        [v8 setPredicate:v10];
      }

      v11 = [*(v1 + 32) countForFetchRequest:v8 error:&v83];
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v11)}];
        goto LABEL_6;
      }

LABEL_16:
      v5 = 0;
      goto LABEL_7;
    }

    v82 = *(v1 + 32);
    if (!v82)
    {
      goto LABEL_16;
    }

    v78 = v3;
    v76 = v1;
    v12 = *(v1 + 40);
    v13 = *(v1 + 48);
    v75 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v14 = [v12 copy];
    v74 = v12;
    v15 = [v12 resultType];
    v92 = 0;
    if ([v14 predicate])
    {
      v16 = [[_NSChildContextPredicateRemapper alloc] initWithContext:v82];
      v17 = -[_NSChildContextPredicateRemapper createPredicateForFetchFromPredicate:withContext:](v16, "createPredicateForFetchFromPredicate:withContext:", [v14 predicate], v82);
      [v14 setPredicate:v17];
    }

    v77 = v14;
    if ([v14 fetchBatchSize])
    {
      obj = [v14 entity];
      v18 = [v14 affectedStores];
      if (!v18)
      {
        v18 = [objc_msgSend(v82 "persistentStoreCoordinator")];
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v88 objects:v94 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v89;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v89 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v88 + 1) + 8 * i);
            v24 = [objc_msgSend(v23 "type")];
            v25 = [objc_msgSend(v23 "type")];
            if ((v24 & 1) == 0 && (v25 & 1) == 0)
            {
              v26 = [v23 configurationName];
              if (([v26 isEqualToString:@"PF_DEFAULT_CONFIGURATION_NAME"] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v82, "persistentStoreCoordinator"), "managedObjectModel"), "entitiesForConfiguration:", v26), "indexOfObjectIdenticalTo:", obj) != 0x7FFFFFFFFFFFFFFFLL)
              {
                v14 = v77;
                [v77 setFetchBatchSize:0];
                goto LABEL_38;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v88 objects:v94 count:16];
          v14 = v77;
          if (v20)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_38:
    v27 = [v14 includesPropertyValues];
    if (v15)
    {
      if (v15 == 1 && [v82 hasChanges])
      {
        v28 = 0;
LABEL_45:
        [v14 setResultType:v28];
      }
    }

    else if (![objc_msgSend(v14 "propertiesToFetch")] && (objc_msgSend(v82, "hasChanges") & 1) == 0)
    {
      v28 = 1;
      goto LABEL_45;
    }

    [v14 setIncludesPropertyValues:v27];
    v29 = [v82 executeFetchRequest:v14 error:&v92];
    v30 = [v29 count];
    v3 = v78;
    if (v30)
    {
      v31 = v30;
      if ((!v15 && (dword_1ED4BEEC8 & 1) != 0 || BYTE1(dword_1ED4BEEC8) == 1 && v15 == 2) && [v14 fetchBatchSize])
      {
        v32 = [v14 resultType];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v29)
          {
            v29 = [v29 newArrayFromObjectIDs];
            v32 = 1;
            obja = v29;
          }

          else
          {
            obja = 0;
            v32 = 1;
          }
        }

        else
        {
          obja = 0;
        }

        v72 = v31;
        v45 = PF_ALLOCATE_OBJECT_ARRAY(v31);
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v46 = [v29 countByEnumeratingWithState:&v84 objects:v93 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = 0;
          v49 = *v85;
          do
          {
            v50 = v29;
            for (j = 0; j != v47; ++j)
            {
              if (*v85 != v49)
              {
                objc_enumerationMutation(v50);
              }

              v52 = *(*(&v84 + 1) + 8 * j);
              if (v32 != 1)
              {
                v52 = [*(*(&v84 + 1) + 8 * j) objectID];
              }

              v53 = [*(*(v82[21] + 8) + 8) objectForKey:v52];
              if (v53)
              {
                v54 = v53;
                if ([v13 objectRegisteredForID:v53])
                {
                  v52 = v54;
                }
              }

              v45[v48++] = v52;
            }

            v29 = v50;
            v47 = [v50 countByEnumeratingWithState:&v84 objects:v93 count:16];
          }

          while (v47);
        }

        v55 = [[_PFArray alloc] initWithObjects:v45 count:v72 andFlags:10];
        v56 = [[_PFBatchFaultingArray alloc] initWithPFArray:v55 andRequest:v74 andContext:v13];

        goto LABEL_103;
      }

      objb = v29;
      if (!v15)
      {
        v73 = v31;
        v57 = PF_ALLOCATE_OBJECT_ARRAY(v31);
        v58 = [v14 resultType];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v59 = [v29 countByEnumeratingWithState:&v84 objects:v93 count:16];
        if (v59)
        {
          v60 = v59;
          v61 = 0;
          v62 = *v85;
          do
          {
            v63 = 0;
            do
            {
              if (*v85 != v62)
              {
                objc_enumerationMutation(objb);
              }

              v64 = *(*(&v84 + 1) + 8 * v63);
              if (v58 != 1)
              {
                v64 = [*(*(&v84 + 1) + 8 * v63) objectID];
              }

              v65 = [*(*(v82[21] + 8) + 8) objectForKey:v64];
              if (v65)
              {
                v66 = v65;
                if ([v13 objectRegisteredForID:v65])
                {
                  v64 = v66;
                }
              }

              if (v13)
              {
                v67 = _PFRetainedObjectIDCore(v13, v64, 0, 1);
              }

              else
              {
                v67 = 0;
              }

              v57[v61++] = v67;
              ++v63;
            }

            while (v60 != v63);
            v68 = [objb countByEnumeratingWithState:&v84 objects:v93 count:16];
            v60 = v68;
          }

          while (v68);
        }

        v44 = [[_PFArray alloc] initWithObjects:v57 count:v73 andFlags:42 andContext:v13];
        goto LABEL_102;
      }

      if (v15 == 1)
      {
        v71 = v31;
        v34 = PF_ALLOCATE_OBJECT_ARRAY(v31);
        v35 = [v14 resultType];
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v36 = [v29 countByEnumeratingWithState:&v84 objects:v93 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = 0;
          v39 = *v85;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v85 != v39)
              {
                objc_enumerationMutation(objb);
              }

              v41 = *(*(&v84 + 1) + 8 * k);
              if (v35 != 1)
              {
                v41 = [*(*(&v84 + 1) + 8 * k) objectID];
              }

              v42 = [*(*(v82[21] + 8) + 8) objectForKey:v41];
              if (v42)
              {
                v43 = v42;
                if ([v13 objectRegisteredForID:v42])
                {
                  v41 = v43;
                }
              }

              v34[v38++] = v41;
            }

            v37 = [objb countByEnumeratingWithState:&v84 objects:v93 count:16];
          }

          while (v37);
        }

        v44 = [[_PFArray alloc] initWithObjects:v34 count:v71 andFlags:10];
LABEL_102:
        v56 = v44;
LABEL_103:
        v1 = v76;
        v14 = v77;
        v3 = v78;
LABEL_106:
        v69 = v92;

        [v75 drain];
        [(NSManagedObjectContext *)v82 _processReferenceQueue:?];
        if (v92)
        {
          v83 = v92;
        }

        v70 = v92;
        v6 = v56;
        goto LABEL_6;
      }

      v33 = v29;
    }

    else
    {
      v33 = MEMORY[0x1E695E0F0];
    }

    v56 = v33;
    v1 = v76;
    goto LABEL_106;
  }

  if ((v4 - 5) < 7)
  {
    v6 = [*(v1 + 32) executeRequest:*(v1 + 40) error:&v83];
LABEL_6:
    v5 = v6;
  }

LABEL_7:
  *(*(*(v1 + 56) + 8) + 40) = v83;
  *(*(*(v1 + 64) + 8) + 40) = v5;
  return [v3 drain];
}

- (void)managedObjectContextDidRegisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke;
  v4[3] = &unk_1E6EC19D8;
  v4[4] = self;
  v4[5] = ds;
  v4[6] = generation;
  _perform(self, v4);
}

uint64_t __106__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidRegisterObjectsWithIDs_generation___block_invoke(uint64_t *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSManagedObjectContext *)a1[4] lockObjectStore];
  v2 = a1[4];
  if (v2)
  {
    v4 = a1[5];
    v3 = a1[6];
    if ([v4 count])
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            if (([v10 isTemporaryID] & 1) == 0)
            {
              [v5 addObject:v10];
            }
          }

          v7 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      [*(v2 + 32) managedObjectContextDidRegisterObjectsWithIDs:v5 generation:v3];
    }
  }

  v11 = a1[4];

  return [(NSManagedObjectContext *)v11 unlockObjectStore];
}

- (void)managedObjectContextDidUnregisterObjectsWithIDs:(id)ds generation:(id)generation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __108__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke;
  v4[3] = &unk_1E6EC19D8;
  v4[4] = self;
  v4[5] = ds;
  v4[6] = generation;
  _perform(self, v4);
}

uint64_t __108__NSManagedObjectContext__NestedContextSupport__managedObjectContextDidUnregisterObjectsWithIDs_generation___block_invoke(uint64_t a1)
{
  [(NSManagedObjectContext *)*(a1 + 32) lockObjectStore];
  [(NSManagedObjectContext *)*(a1 + 32) _informParentStoreNoLongerInterestedInObjectIDs:*(a1 + 48) generation:?];
  v2 = *(a1 + 32);

  return [(NSManagedObjectContext *)v2 unlockObjectStore];
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__NSManagedObjectContext__NestedContextSupport__newValuesForObjectWithID_withContext_error___block_invoke;
  v7[3] = &unk_1E6EC2748;
  v7[4] = d;
  v7[5] = self;
  v7[6] = context;
  v7[7] = &v8;
  _perform(self, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

_PFTempNestedSnapshot *__92__NSManagedObjectContext__NestedContextSupport__newValuesForObjectWithID_withContext_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(*(*(a1 + 40) + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 40) + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(*(a1 + 40) + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  result = [*(a1 + 40) objectRegisteredForID:v2];
  if (result)
  {
    v6 = result;
    result = [(_PFTempNestedSnapshot *)result isFault];
    if ((result & 1) == 0)
    {
      result = [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v6 withContext:*(a1 + 40) error:0];
      if (result)
      {
        v7 = [(_PFTempNestedSnapshot *)v6 entity];
        v8 = v7[13];
        v9 = v7[14];
        v10 = *(v8 + 40);
        v11 = _kvcPropertysPrimitiveGetters(v7);
        v12 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v8];
        v13 = [(NSKnownKeysDictionary *)v12 values];
        v14 = v9[6];
        v15 = v9[7];
        if (v14 < v15 + v14)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(v6, v14, *(v10 + 8 * v14), *(v11 + 8 * v14));
            *(v13 + 8 * v14++) = v16;
            --v15;
          }

          while (v15);
        }

        v17 = v9[12];
        v18 = v9[13];
        if (v17 < v18 + v17)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(v6, v17, *(v10 + 8 * v17), *(v11 + 8 * v17));
            *(v13 + 8 * v17++) = [v19 objectID];
            --v18;
          }

          while (v18);
        }

        result = [[_PFTempNestedSnapshot alloc] initWithOwnedKKsD:v12 andVersion:[(_PFTempNestedSnapshot *)v6 _versionReference]];
        *(*(*(a1 + 56) + 8) + 40) = result;
      }
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    [(NSManagedObjectContext *)*(a1 + 40) lockObjectStore];
    *(*(*(a1 + 56) + 8) + 40) = [*(*(a1 + 40) + 32) newValuesForObjectWithID:v2 withContext:*(a1 + 48) error:0];
    return [(NSManagedObjectContext *)*(a1 + 40) unlockObjectStore];
  }

  return result;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __107__NSManagedObjectContext__NestedContextSupport__newValueForRelationship_forObjectWithID_withContext_error___block_invoke;
  v8[3] = &unk_1E6EC2638;
  v8[4] = d;
  v8[5] = self;
  v8[7] = context;
  v8[8] = &v9;
  v8[6] = relationship;
  _perform(self, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __107__NSManagedObjectContext__NestedContextSupport__newValueForRelationship_forObjectWithID_withContext_error___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(*(*(a1 + 40) + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(*(a1 + 40) + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(*(a1 + 40) + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  v5 = [*(a1 + 40) objectRegisteredForID:v2];
  if (v5)
  {
    v6 = v5;
    if (([v5 isFault] & 1) == 0)
    {
      v7 = [*(a1 + 48) _entitysReferenceID];
      v8 = v7;
      v9 = v6[5];
      v10 = v9 ? v6 + v9 : 0;
      if ((v10[(v7 >> 3) + -4 * *(v6 + 19)] >> (v7 & 7)))
      {
        v11 = [v6 entity];
        v12 = _kvcPropertysPrimitiveGetters(v11);
        _PF_Handler_Primitive_GetProperty(v6, v8, *(*(v11[13] + 40) + 8 * v8), *(v12 + 8 * v8));
        v14 = v13;
        v15 = [v13 count];
        v16 = MEMORY[0x1EEE9AC00](v15);
        v19 = v28 - v18;
        v28[1] = v20;
        if (v16 > 0x200)
        {
          v19 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v28 - v18, 8 * v17);
        }

        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        v29 = 0u;
        v21 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v30;
          do
          {
            v25 = 0;
            v26 = v23;
            do
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v14);
              }

              v23 = v26 + 1;
              *&v19[8 * v26++] = *(*(*(&v29 + 1) + 8 * v25++) + 40);
            }

            while (v22 != v25);
            v22 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v22);
        }

        v27 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v19 count:v15];
        if (v15 >= 0x201)
        {
          NSZoneFree(0, v19);
        }

        *(*(*(a1 + 64) + 8) + 40) = v27;
      }
    }
  }

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    [(NSManagedObjectContext *)*(a1 + 40) lockObjectStore];
    *(*(*(a1 + 64) + 8) + 40) = [*(*(a1 + 40) + 32) newValueForRelationship:*(a1 + 48) forObjectWithID:v2 withContext:*(a1 + 56) error:0];
    [(NSManagedObjectContext *)*(a1 + 40) unlockObjectStore];
  }
}

- (id)_newOrderedRelationshipInformationForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __133__NSManagedObjectContext__NestedContextSupport___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke;
  v12[3] = &unk_1E6EC2660;
  v12[4] = d;
  v12[5] = self;
  v12[6] = relationship;
  v12[7] = context;
  v12[8] = &v19;
  v12[9] = &v13;
  _perform(self, v12);
  v7 = v14;
  v8 = v14[5];
  if (v8)
  {
    if (error)
    {
      *error = v8;
      v8 = v7[5];
    }

    v9 = v8;
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

uint64_t __133__NSManagedObjectContext__NestedContextSupport___newOrderedRelationshipInformationForRelationship_forObjectWithID_withContext_error___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(*(a1[5] + 168) + 8))
  {
    v3 = PF_CALLOC_OBJECT_ARRAY(2);
    *v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(a1[5] + 168) + 8) = v3;
  }

  if ([v2 isTemporaryID])
  {
    v4 = [**(*(a1[5] + 168) + 8) objectForKey:v2];
    if (v4)
    {
      v2 = v4;
    }
  }

  [(NSManagedObjectContext *)a1[5] lockObjectStore];
  *(*(a1[8] + 8) + 40) = [*(a1[5] + 32) _newOrderedRelationshipInformationForRelationship:a1[6] forObjectWithID:v2 withContext:a1[7] error:*(a1[9] + 8) + 40];
  if (!*(*(a1[8] + 8) + 40))
  {
    v5 = *(*(a1[9] + 8) + 40);
  }

  v6 = a1[5];

  return [(NSManagedObjectContext *)v6 unlockObjectStore];
}

- (BOOL)_parentObtainPermanentIDsForObjects:(id)objects context:(id)context error:(id *)error
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__13;
  v31 = __Block_byref_object_dispose__13;
  v32 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3052000000;
  v26[3] = __Block_byref_object_copy__13;
  v26[4] = __Block_byref_object_dispose__13;
  v26[5] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__13;
  v18 = __Block_byref_object_dispose__13;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __99__NSManagedObjectContext__NestedContextSupport___parentObtainPermanentIDsForObjects_context_error___block_invoke;
  v13[3] = &unk_1E6EC2688;
  v13[4] = self;
  v13[5] = objects;
  v13[8] = &v14;
  v13[9] = &v33;
  v13[10] = &v27;
  v13[11] = v26;
  v13[12] = error;
  v13[6] = context;
  v13[7] = &v20;
  _perform(self, v13);
  if ([v21[5] count])
  {
    v7 = [(NSManagedObjectContext *)context _changeIDsForManagedObjects:v15[5] toIDs:?];
    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      objc_autoreleasePoolPop(v8);
    }
  }

  v21[5] = 0;
  v15[5] = 0;
  v9 = v28[5];
  if (error)
  {
    v10 = v28[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = *(v34 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  return v11;
}

void __99__NSManagedObjectContext__NestedContextSupport___parentObtainPermanentIDsForObjects_context_error___block_invoke(uint64_t *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!*(*(a1[4] + 168) + 8))
  {
    v2 = PF_CALLOC_OBJECT_ARRAY(2);
    *v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2[1] = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(*(a1[4] + 168) + 8) = v2;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  obj = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = a1[5];
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v5)
  {
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [v8 objectID];
        if ([v9 isTemporaryID])
        {
          v10 = [**(*(a1[4] + 168) + 8) objectForKey:v9];
          v11 = v10;
          if (v10 && ([v10 isTemporaryID] & 1) == 0)
          {
            if (!*(*(a1[7] + 8) + 40))
            {
              *(*(a1[7] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            if (!*(*(a1[8] + 8) + 40))
            {
              *(*(a1[8] + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [*(*(a1[7] + 8) + 40) addObject:v8];
            [*(*(a1[8] + 8) + 40) addObject:v11];
          }

          else
          {
            [v3 addObject:v8];
            [obj addObject:v9];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  if ([v3 count])
  {
    v12 = atomic_load((a1[4] + 48));
    v13 = a1[4];
    if (v12)
    {
      [(NSManagedObjectContext *)v13 lockObjectStore];
      *(*(a1[9] + 8) + 24) = [*(a1[4] + 32) _parentObtainPermanentIDsForObjects:v3 context:a1[6] error:a1[12]];
      [(NSManagedObjectContext *)a1[4] unlockObjectStore];
    }

    else
    {
      v14 = [v13 persistentStoreCoordinator];
      [(NSManagedObjectContext *)a1[4] lockObjectStore];
      *(*(a1[9] + 8) + 24) = [v14 obtainPermanentIDsForObjects:v3 error:*(a1[10] + 8) + 40];
      [(NSManagedObjectContext *)a1[4] unlockObjectStore];

      v15 = *(*(a1[10] + 8) + 40);
      if (v15)
      {
        v16 = a1[12];
        if (v16)
        {
          *v16 = v15;
        }

        *(*(a1[9] + 8) + 24) = 0;
      }

      v17 = *(*(a1[11] + 8) + 40);
      obj = 0;
      v3 = 0;
    }

    if (*(*(a1[9] + 8) + 24) == 1)
    {
      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v20 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v20)
      {
        v21 = 0;
        v22 = *v33;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v32 + 1) + 8 * j);
            v25 = [objc_msgSend(v3 objectAtIndex:{v21, v29), "objectID"}];
            if (v24 != v25)
            {
              v26 = [a1[4] objectRegisteredForID:v24];
              if (v26)
              {
                [v29 addObject:v26];
                [v19 addObject:v25];
              }

              [**(*(a1[4] + 168) + 8) setObject:v25 forKey:v24];
              [*(*(*(a1[4] + 168) + 8) + 8) setObject:v24 forKey:v25];
            }

            ++v21;
          }

          v20 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
        }

        while (v20);
      }

      if ([v29 count])
      {
        v18 = [(NSManagedObjectContext *)a1[4] _changeIDsForManagedObjects:v30 toIDs:v19];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    *(*(a1[9] + 8) + 24) = 1;
  }

  v27 = *(*(a1[10] + 8) + 40);
  if (v18)
  {
    v28 = objc_autoreleasePoolPush();
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    objc_autoreleasePoolPop(v28);
  }
}

- (id)_orderKeysForRelationshipWithName__:(id)name__ onObjectWithID:(id)d
{
  v5 = [(NSManagedObjectContext *)self objectWithID:d];

  return [(NSManagedObject *)v5 _orderKeysForRelationshipWithName__:name__];
}

- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name onObjectWithID:(id)d error:(id *)error
{
  v9 = [(NSManagedObjectContext *)self objectWithID:d];

  return [(NSManagedObject *)v9 _updateLocationsOfObjectsToLocationByOrderKey:key inRelationshipWithName:name error:error];
}

- (id)_allOrderKeysForDestination:(id)destination inRelationship:(id)relationship error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__13;
  v26 = __Block_byref_object_dispose__13;
  v27 = 0;
  destinationEntity = [relationship destinationEntity];
  if ([(NSManagedObjectContext *)self hasChanges])
  {
    v10 = 0;
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF4350A8];
    }

    goto LABEL_11;
  }

  if (![objc_msgSend(destination "entity")])
  {
    v14 = @"Destination object is not kind of [relationship destinationEntity]";
    goto LABEL_15;
  }

  if (![relationship isToMany])
  {
    v14 = @"Relationship must be a to-many.";
    goto LABEL_15;
  }

  if (([relationship isOrdered] & 1) == 0)
  {
    v14 = @"Can't find the order of objects in an unordered relationship";
LABEL_15:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __105__NSManagedObjectContext__PhotosOrderKeyUpdateSupport___allOrderKeysForDestination_inRelationship_error___block_invoke;
  v15[3] = &unk_1E6EC26B0;
  v15[4] = self;
  v15[5] = destination;
  v15[6] = relationship;
  v15[7] = &v22;
  v15[8] = &v16;
  [(NSManagedObjectContext *)self performBlockAndWait:v15];
  v11 = v17[5];
  if (v11)
  {
    v12 = v11;
    if (error)
    {
      *error = v17[5];
    }
  }

  v10 = v23[5];
  _Block_object_dispose(&v16, 8);
LABEL_11:
  _Block_object_dispose(&v22, 8);
  return v10;
}

id __105__NSManagedObjectContext__PhotosOrderKeyUpdateSupport___allOrderKeysForDestination_inRelationship_error___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) _allOrderKeysForDestination:a1[5] inRelationship:a1[6] error:*(a1[8] + 8) + 40];
  *(*(a1[7] + 8) + 40) = result;
  if (!*(*(a1[8] + 8) + 40))
  {

    return 0;
  }

  return result;
}

- (void)set_isSwiftBound:(BOOL)bound
{
  if (bound)
  {
    v3 = 0x40000000;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xBFFFFFFF | v3);
  if (bound)
  {
    atomic_store(1u, &self->_generatedMutatedIDsNotification);
  }
}

- (BOOL)_performImmediate:(id)immediate
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_dispatchQueue)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can only use -performBlockAndWait: on an NSManagedObjectContext that was created with a queue." userInfo:0]);
  }

  selfCopy = self;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  selfCopy2 = self;
  v14[0] = immediate;
  v14[1] = selfCopy2;
  v15 = 0;
  v16 = v5;
  if (byte_1ED4BEA2A)
  {
    v15 = 4;
  }

  v7 = atomic_load(&selfCopy->_isMainThreadBlessed);
  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v9 = 0;
    v10 = v5;
    while (v10 != selfCopy)
    {
      if (v10 == v8)
      {
        goto LABEL_16;
      }

      if (!v8)
      {
        v8 = v10;
      }

      v10 = atomic_load((v10 + 8));
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v9 = 1;
LABEL_16:
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_17:
    v11 = 0;
    v12 = 0;
    while (selfCopy != v5)
    {
      if (selfCopy == v11)
      {
        goto LABEL_25;
      }

      if (!v11)
      {
        v11 = selfCopy;
      }

      selfCopy = atomic_load(&selfCopy->_queueOwner);
      if (!selfCopy)
      {
        goto LABEL_27;
      }
    }

    v12 = 1;
LABEL_25:
    if (!v12)
    {
      goto LABEL_27;
    }

LABEL_26:
    developerSubmittedBlockToNSManagedObjectContextPerform(v14);
    return 1;
  }

  if (_PFIsSerializedWithMainQueue())
  {
    goto LABEL_26;
  }

LABEL_27:

  return 0;
}

+ (id)createFutureForFileAtURL:(id)l
{
  if (!l || ([l isFileURL] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Illegal attempt to pass a non-file URL to a file backed NSData";
    goto LABEL_13;
  }

  v4 = [_NSDataFileBackedFuture alloc];
  if (v4)
  {
    if (([l isFileURL] & 1) == 0)
    {

      return 0;
    }

    v14.receiver = v4;
    v14.super_class = _NSDataFileBackedFuture;
    v4 = objc_msgSendSuper2(&v14, sel_init);
    if (v4)
    {
      v13 = 0;
      v5 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
      if (v5)
      {
        v6 = v5;
        if (objc_msgSend_valueForKey_(v5))
        {
          v4->_fileSize = [objc_msgSend_valueForKey_(v6) unsignedIntegerValue];
          v4->_originalFileURL = l;
          v4->_uuid = [MEMORY[0x1E696AFB0] UUID];
          return v4;
        }
      }

      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], l);
      v8 = v11;
      v9 = v12;
LABEL_13:
      objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
    }
  }

  return v4;
}

- (BOOL)evictFuture:(id)future withError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!future)
    {
      goto LABEL_23;
    }

    v20 = 0;
    v6 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    LOBYTE(v7) = 1;
    if ((v6 & 1) == 0 && v20)
    {
      domain = [v20 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(v20, "code") == 4)
      {
        LOBYTE(v7) = 1;
        return v7;
      }

      v15 = v20;
      if (v20)
      {
        if (error)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
        v25 = 1024;
        v26 = 342;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v17 = _PFLogGetLogStream(17);
      v7 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
      if (v7)
      {
        *buf = 136315394;
        v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
        v25 = 1024;
        v26 = 342;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A250];
    v21 = @"message";
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v22 = objc_msgSend_stringWithFormat_(v11, v13);
    v14 = [v9 errorWithDomain:v10 code:3328 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
    if (v14)
    {
      if (error)
      {
        v15 = v14;
LABEL_17:
        LOBYTE(v7) = 0;
        *error = v15;
        return v7;
      }

LABEL_23:
      LOBYTE(v7) = 0;
      return v7;
    }

    v16 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
      v25 = 1024;
      v26 = 28;
      _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v17 = _PFLogGetLogStream(17);
    v7 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      *buf = 136315394;
      v24 = "/Library/Caches/com.apple.xbs/Sources/Persistence/source/NSFileBackedFuture.m";
      v25 = 1024;
      v26 = 28;
LABEL_22:
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      goto LABEL_23;
    }
  }

  return v7;
}

@end