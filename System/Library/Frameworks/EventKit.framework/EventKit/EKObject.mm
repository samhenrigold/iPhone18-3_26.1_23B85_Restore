@interface EKObject
+ (BOOL)_compareAllKnownKeysExceptKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareIdentityKeys:(BOOL)identityKeys;
+ (BOOL)_compareIdentityKeysForObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_compareKnownKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareIdentityKeys:(BOOL)identityKeys compareImmutableKeys:(BOOL)immutableKeys propertiesToIgnore:(id)ignore;
+ (BOOL)_compareMultiValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_compareMultiValueRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_compareMutliValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_compareNonIdentityKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareImmutableKeys:(BOOL)immutableKeys propertiesToIgnore:(id)ignore;
+ (BOOL)_compareNonRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_compareRelationshipObject1:(id)object1 againstRelationshipObject2:(id)object2 propertiesToIgnore:(id)ignore;
+ (BOOL)_compareRelationshipObject1:(id)object1 againstRelationshipObject2:(id)object2 propertiesToIgnore:(id)ignore relationshipObjectKey:(id)key;
+ (BOOL)_compareSingleValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore ignoreIdentityKeys:(BOOL)keys;
+ (BOOL)_compareSingleValueRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore;
+ (BOOL)_object:(id)_object equalsObject:(id)object forKeys:(id)keys compareImmutableKeys:(BOOL)immutableKeys ignoringProperties:(id)properties;
+ (BOOL)_objects:(id)_objects haveSameMeltedClass:(Class)class frozenClass:(Class)frozenClass;
+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2;
+ (BOOL)isMeltedAndNotWeakRelationshipObject:(id)object forKey:(id)key;
+ (BOOL)isWeakRelationObject:(id)object forKey:(id)key;
+ (id)_array:(id)_array intersectedWithSet:(id)set minusSet:(id)minusSet;
+ (id)_changeSetForDiff:(id)diff;
+ (id)duplicatedPersistentObjectForObject:(id)object alreadyCopiedObjects:(id)objects;
+ (id)knownDerivedAndSingleValueRelationshipKeys;
+ (id)knownRelationshipWeakKeys;
+ (id)objectsIDsExistingInStoreFromObjects:(id)objects eventStore:(id)store;
+ (void)_addChangesFromObject:(id)object toObjects:(id)objects passingTest:(id)test copyingBackingObjects:(BOOL)backingObjects;
+ (void)addChangesFromObject:(id)object toObjects:(id)objects except:(id)except;
+ (void)addChangesFromObject:(id)object toObjects:(id)objects keep:(id)keep;
- (BOOL)_areOnlyChangedKeys:(id)keys;
- (BOOL)_hasChangeHelperInKeys:(id)keys ignoreKeys:(id)ignoreKeys checkUnsaved:(BOOL)unsaved;
- (BOOL)_hasChanges;
- (BOOL)_hasChangesForKey:(id)key checkUnsaved:(BOOL)unsaved;
- (BOOL)_hasUnsavedChangesInKeys:(id)keys ignoreKeys:(id)ignoreKeys;
- (BOOL)_isNew;
- (BOOL)_isOnlyChangedKey:(id)key;
- (BOOL)_isPropertyUnavailable:(id)unavailable convertToFullObjectIfUnavailable:(BOOL)ifUnavailable;
- (BOOL)_refreshCommon;
- (BOOL)_refreshable;
- (BOOL)_reset;
- (BOOL)_resetCommon;
- (BOOL)_resetIfBackingObjectIsOfClass:(Class)class fetchResetFrozenObjectBlock:(id)block;
- (BOOL)existsInStore;
- (BOOL)hasNeverBeenCommitted;
- (BOOL)isDeleted;
- (BOOL)isDifferentFromCommitted;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqual:(id)equal comparingKeys:(id)keys compareImmutableKeys:(BOOL)immutableKeys ignoringProperties:(id)properties;
- (BOOL)isSaved;
- (BOOL)isUndeleted;
- (BOOL)refreshAndNotify:(BOOL)notify;
- (BOOL)validate:(id *)validate;
- (BOOL)validateWithOwner:(id)owner error:(id *)error;
- (CADGenerationStampedObjectID)CADObjectID;
- (Class)frozenClass;
- (EKEventStore)eventStore;
- (EKObject)init;
- (EKObject)initWithPersistentObject:(id)object;
- (EKObjectID)objectID;
- (NSString)uniqueIdentifier;
- (id)_basicSummaryWithDepth:(int64_t)depth;
- (id)_convertBackingObjectsWithPath:(id)path updateBackingObjects:(BOOL)objects allChangedBackingObjects:(id)backingObjects eventStore:(id)store updatedBackingObjectProvider:(id)provider;
- (id)_copyWithoutChangesInZone:(_NSZone *)zone;
- (id)_multiRelationshipKeysToCheckForChanges;
- (id)_previousValueForKey:(id)key;
- (id)_propertyValueForKey:(id)key;
- (id)_recursiveSnapshotCopyWithPropertyAccessor:(id)accessor propertyKeysToCopy:(id)copy propertyKeysToSkip:(id)skip recurseOnWeakRelations:(BOOL)relations;
- (id)_singleRelationshipKeysToCheckForChanges;
- (id)_summaryWithDepth:(int64_t)depth;
- (id)backingObjectOfChildObject:(id)object withRelationshipKey:(id)key;
- (id)cachedMeltedChildIdentifierToParentMap;
- (id)cachedMeltedObjectForSingleValueKey:(id)key;
- (id)cachedMeltedObjectsForMultiValueKey:(id)key;
- (id)cachedValueForKey:(id)key expectingCachedValue:(id)value forMasterKey:(id)masterKey relatedKeys:(id)keys populateBlock:(id)block;
- (id)cachedValueForKey:(id)key populateBlock:(id)block;
- (id)changedKeys;
- (id)committedCopy;
- (id)committedValueForKey:(id)key;
- (id)copyMeltedObjectCache;
- (id)duplicate;
- (id)duplicateToEventStore:(id)store;
- (id)frozenObject;
- (id)frozenObjectInStore:(id)store;
- (id)frozenOrMeltedCachedMultiRelationObjectsForKey:(id)key;
- (id)frozenOrMeltedCachedSingleRelationObjectForKey:(id)key;
- (id)inverseObjectWithObject:(id)object diff:(id *)diff;
- (id)meltedAndCachedMultiRelationObjectsForKey:(id)key;
- (id)meltedAndCachedSingleRelationObjectForKey:(id)key;
- (id)meltedObjectInStore:(id)store;
- (id)multiChangedObjectValuesForKey:(id)key;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)prepareReminderKitObjectForSaveWithUpdatedBackingObjectProvider:(id)provider;
- (id)previouslySavedCopy;
- (id)privacyDescription;
- (id)shallowCopyWithoutChanges;
- (id)singleChangedValueForKey:(id)key;
- (id)snapshotCopyWithPropertyKeysToCopy:(id)copy;
- (int)rowID;
- (os_unfair_lock_s)_lock;
- (unint64_t)_cachedMeltedObjectsCount;
- (unint64_t)hash;
- (unint64_t)meltedAndCachedMultiRelationCountForKey:(id)key;
- (void)_addCachedMeltedObject:(id)object forMultiValueKey:(id)key;
- (void)_addChanges:(id)changes copyingBackingObjects:(BOOL)objects objectIdentifierBlock:(id)block;
- (void)_addChangesFromObject:(id)object ignoringDifferencesFrom:(id)from changesToSkip:(id)skip copyingBackingObjects:(BOOL)objects;
- (void)_addChangesFromObject:(id)object passingTest:(id)test ignoreRelations:(id)relations copyingBackingObjects:(BOOL)objects;
- (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string indentFirstLine:(BOOL)line;
- (void)_applyKnownImmutableValuesFrom:(id)from;
- (void)_cachedMeltedChildIdentifierToParentMap:(id)map;
- (void)_initChangeSetIfNone;
- (void)_markAsCommittedCommon;
- (void)_markAsDeletedCommon;
- (void)_markAsNotNewCommon;
- (void)_markAsSavedCommon;
- (void)_markAsUndeletedCommon;
- (void)_performBlockOnOwnedCachedRelatedObjects:(id)objects;
- (void)_performWithLock:(id)lock;
- (void)_removeCachedMeltedObject:(id)object forMultiValueKey:(id)key;
- (void)_resetAfterUpdatingChangeSetOrBackingObject;
- (void)_resetAfterUpdatingChangeSetOrBackingObjectWithForce:(BOOL)force;
- (void)_resetMeltedCache;
- (void)_resetWithFrozenObject:(id)object;
- (void)_rollbackCommon;
- (void)_sharedInit;
- (void)_updateCachedMeltedObjectSetForMultiValueKey:(id)key usingBlock:(id)block;
- (void)_updatePersistentValueForKey:(id)key;
- (void)addCachedMeltedObject:(id)object forMultiValueKey:(id)key;
- (void)addCoCommitObject:(id)object;
- (void)addMultiChangedObjectValue:(id)value forKey:(id)key;
- (void)addMultiChangedObjectValues:(id)values forKey:(id)key;
- (void)applyChanges:(id)changes;
- (void)augmentMeltedObjectCache:(id)cache;
- (void)clearCachedValueForKey:(id)key;
- (void)clearCachedValuesForKeys:(id)keys;
- (void)deletePersistentObject;
- (void)emptyMeltedCache;
- (void)emptyMeltedCacheForKey:(id)key;
- (void)emptyMeltedCacheForKeys:(id)keys;
- (void)insertPersistentObjectIfNeeded;
- (void)markAsCommitted;
- (void)markAsNew;
- (void)markAsNewShallow;
- (void)markAsUndeleted;
- (void)rebase;
- (void)rebaseSkippingRelationProperties:(id)properties;
- (void)rebaseSkippingRelationProperties:(id)properties toEventStore:(id)store;
- (void)removeCachedMeltedObject:(id)object forMultiValueKey:(id)key;
- (void)removeMultiChangedObjectValue:(id)value forKey:(id)key;
- (void)removeMultiChangedObjectValues:(id)values forKey:(id)key;
- (void)replaceMultiChangedObjectValuesWithObjectValues:(id)values forKey:(id)key;
- (void)setCachedMeltedObject:(id)object forSingleValueKey:(id)key;
- (void)setCachedMeltedObjects:(id)objects forMultiValueKey:(id)key;
- (void)setCachedValue:(id)value forKey:(id)key;
- (void)setSingleChangedValue:(id)value forKey:(id)key;
- (void)updateAfterApplyingChanges:(id)changes objectIdentifierBlock:(id)block;
- (void)updateMeltedAndCachedMultiRelationObjects:(id)objects forKey:(id)key;
- (void)updateMeltedAndCachedSingleRelationObject:(id)object forKey:(id)key frozenClass:(Class)class;
- (void)updateMeltedCacheForChangeSet:(id)set objectIdentifierBlock:(id)block;
- (void)updateMultiValueCacheForChangeSet:(id)set preservingExistingAdds:(BOOL)adds objectIdentifierBlock:(id)block;
- (void)updatePersistentObjectSkippingProperties:(id)properties;
- (void)updatePersistentValueForKeyIfNeeded:(id)needed;
@end

@implementation EKObject

- (void)_sharedInit
{
  v3 = objc_opt_new();
  [(EKObject *)self set_cachedMeltedObjects:v3];

  v4 = objc_opt_new();
  [(EKObject *)self set_cachedValues:v4];
}

- (EKEventStore)eventStore
{
  persistentObject = [(EKObject *)self persistentObject];
  eventStore = [persistentObject eventStore];

  return eventStore;
}

- (os_unfair_lock_s)_lock
{
  selfCopy = self;
  if (GetSharedLockForIndex_onceToken != -1)
  {
    [EKObject(Shared) _lock];
  }

  return &GetSharedLockForIndex_sharedLocks + ((((selfCopy >> 4) ^ (selfCopy >> 7)) ^ (selfCopy >> 10)) & 7);
}

- (CADGenerationStampedObjectID)CADObjectID
{
  persistentObject = [(EKObject *)self persistentObject];
  cADObjectID = [persistentObject CADObjectID];

  return cADObjectID;
}

- (unint64_t)hash
{
  persistentObject = [(EKObject *)self persistentObject];
  v3 = [persistentObject hash];

  return v3;
}

- (EKObjectID)objectID
{
  persistentObject = [(EKObject *)self persistentObject];
  objectID = [persistentObject objectID];

  return objectID;
}

- (BOOL)_isNew
{
  changeSet = [(EKObject *)self changeSet];
  isNew = [changeSet isNew];

  return isNew;
}

- (EKObject)init
{
  v3 = objc_alloc_init([objc_opt_class() frozenClass]);
  v4 = [(EKObject *)self initWithPersistentObject:v3];

  return v4;
}

- (EKObject)initWithPersistentObject:(id)object
{
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = EKObject;
  v6 = [(EKObject *)&v10 init];
  if (v6)
  {
    EKLogInitIfNeeded();
    [(EKObject *)v6 _sharedInit];
    objc_storeStrong(&v6->_persistentObject, object);
    if ([(EKPersistentObject *)v6->_persistentObject isNew])
    {
      eventStore = [(EKObject *)v6 eventStore];
      v8 = [eventStore isObjectInserted:v6->_persistentObject];

      if ((v8 & 1) == 0)
      {
        [(EKObject *)v6 markAsNewShallow];
      }
    }
  }

  return v6;
}

- (BOOL)_isPropertyUnavailable:(id)unavailable convertToFullObjectIfUnavailable:(BOOL)ifUnavailable
{
  unavailableCopy = unavailable;
  if (ifUnavailable || (-[EKObject changeSet](self, "changeSet"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasUnsavedChangeForKey:unavailableCopy], v7, (v8 & 1) != 0) || (-[EKObject additionalFrozenProperties](self, "additionalFrozenProperties"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", unavailableCopy), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = 0;
  }

  else
  {
    backingObject = [(EKObject *)self backingObject];
    v11 = [backingObject isPropertyUnavailable:unavailableCopy];
  }

  return v11;
}

- (NSString)uniqueIdentifier
{
  propertyKeyForUniqueIdentifier = [(objc_class *)[(EKObject *)self frozenClass] propertyKeyForUniqueIdentifier];
  v4 = [(EKObject *)self singleChangedValueForKey:propertyKeyForUniqueIdentifier];

  return v4;
}

- (BOOL)hasNeverBeenCommitted
{
  backingObject = [(EKObject *)self backingObject];
  isNew = [backingObject isNew];

  return isNew;
}

- (BOOL)isDifferentFromCommitted
{
  committedCopy = [(EKObject *)self committedCopy];
  v4 = [committedCopy diffWithObject:self];
  v5 = [v4 result] != 0;

  return v5;
}

- (id)frozenObject
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [(EKObject *)self frozenObjectInStore:eventStore];

  return v4;
}

- (id)frozenObjectInStore:(id)store
{
  storeCopy = store;
  persistentObject = [(EKObject *)self persistentObject];
  v6 = [persistentObject frozenObjectInStore:storeCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal comparingKeys:(id)keys compareImmutableKeys:(BOOL)immutableKeys ignoringProperties:(id)properties
{
  immutableKeysCopy = immutableKeys;
  propertiesCopy = properties;
  keysCopy = keys;
  equalCopy = equal;
  LOBYTE(immutableKeysCopy) = [objc_opt_class() _object:self equalsObject:equalCopy forKeys:keysCopy compareImmutableKeys:immutableKeysCopy ignoringProperties:propertiesCopy];

  return immutableKeysCopy;
}

+ (BOOL)_object:(id)_object equalsObject:(id)object forKeys:(id)keys compareImmutableKeys:(BOOL)immutableKeys ignoringProperties:(id)properties
{
  immutableKeysCopy = immutableKeys;
  v25[2] = *MEMORY[0x1E69E9840];
  _objectCopy = _object;
  objectCopy = object;
  keysCopy = keys;
  propertiesCopy = properties;
  v16 = propertiesCopy;
  if (_objectCopy == objectCopy)
  {
    v20 = 1;
    goto LABEL_10;
  }

  if (![propertiesCopy count])
  {
    v17 = [_objectCopy hash];
    if (v17 != [objectCopy hash])
    {
      goto LABEL_9;
    }
  }

  meltedClass = [self meltedClass];
  frozenClass = [self frozenClass];
  v20 = 0;
  if (_objectCopy && objectCopy)
  {
    v21 = frozenClass;
    v25[0] = _objectCopy;
    v25[1] = objectCopy;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v23 = [self _objects:v22 haveSameMeltedClass:meltedClass frozenClass:v21];

    if (v23)
    {
      v20 = [self _compareKnownKeys:keysCopy forObject:_objectCopy againstObject:objectCopy compareImmutableKeys:immutableKeysCopy propertiesToIgnore:v16];
      goto LABEL_10;
    }

LABEL_9:
    v20 = 0;
  }

LABEL_10:

  return v20;
}

+ (BOOL)_compareKnownKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareIdentityKeys:(BOOL)identityKeys compareImmutableKeys:(BOOL)immutableKeys propertiesToIgnore:(id)ignore
{
  immutableKeysCopy = immutableKeys;
  identityKeysCopy = identityKeys;
  keysCopy = keys;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  if (objectCopy == againstObjectCopy)
  {
    v18 = 1;
  }

  else if (identityKeysCopy && ![self _compareIdentityKeysForObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy])
  {
    v18 = 0;
  }

  else
  {
    v18 = [self _compareNonIdentityKeys:keysCopy forObject:objectCopy againstObject:againstObjectCopy compareImmutableKeys:immutableKeysCopy propertiesToIgnore:ignoreCopy];
  }

  return v18;
}

+ (BOOL)_compareNonIdentityKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareImmutableKeys:(BOOL)immutableKeys propertiesToIgnore:(id)ignore
{
  keysCopy = keys;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  v14 = MEMORY[0x1E695DFA8];
  knownRelationshipMultiValueKeys = [self knownRelationshipMultiValueKeys];
  v16 = [v14 setWithArray:knownRelationshipMultiValueKeys];

  v17 = MEMORY[0x1E695DFA8];
  knownRelationshipSingleValueKeys = [self knownRelationshipSingleValueKeys];
  v19 = [v17 setWithArray:knownRelationshipSingleValueKeys];

  v20 = MEMORY[0x1E695DFA8];
  knownSingleValueKeysForComparison = [self knownSingleValueKeysForComparison];
  v22 = [v20 setWithArray:knownSingleValueKeysForComparison];

  v23 = MEMORY[0x1E695DFA8];
  knownImmutableKeys = [self knownImmutableKeys];
  v25 = [v23 setWithArray:knownImmutableKeys];

  v38 = v16;
  if (keysCopy)
  {
    [v16 intersectSet:keysCopy];
    [v19 intersectSet:keysCopy];
    [v22 intersectSet:keysCopy];
    [v25 intersectSet:keysCopy];
  }

  else if (!immutableKeys)
  {

    v25 = 0;
  }

  allObjects = [v19 allObjects];
  v27 = objectCopy;
  v28 = [self _compareSingleValueRelationshipKeys:allObjects forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy];

  if (!v28 || ([v38 allObjects], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(self, "_compareMultiValueRelationshipKeys:forObject:againstObject:propertiesToIgnore:", v29, objectCopy, againstObjectCopy, ignoreCopy), v29, !v30))
  {
    v34 = 0;
    goto LABEL_11;
  }

  allObjects2 = [v22 allObjects];
  v32 = [self _compareNonRelationshipKeys:allObjects2 forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy];

  if (!v32)
  {
    v34 = 0;
LABEL_14:
    v27 = objectCopy;
    goto LABEL_11;
  }

  if (!v25)
  {
    v34 = 1;
    goto LABEL_14;
  }

  allObjects3 = [v25 allObjects];
  v27 = objectCopy;
  v34 = [self _compareNonRelationshipKeys:allObjects3 forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy];

LABEL_11:
  return v34 & 1;
}

+ (BOOL)_compareIdentityKeysForObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  ignoreCopy = ignore;
  againstObjectCopy = againstObject;
  objectCopy = object;
  knownIdentityKeysForComparison = [self knownIdentityKeysForComparison];
  LOBYTE(self) = [self _compareNonRelationshipKeys:knownIdentityKeysForComparison forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy];

  return self;
}

+ (BOOL)_compareSingleValueRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = keysCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![self _compareSingleValueRelationshipKey:*(*(&v21 + 1) + 8 * i) forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:ignoreCopy ignoreIdentityKeys:{0, v21}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

+ (BOOL)_compareMultiValueRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = keysCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![self _compareMutliValueRelationshipKey:*(*(&v21 + 1) + 8 * i) forObject:objectCopy againstObject:againstObjectCopy propertiesToIgnore:{ignoreCopy, v21}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

+ (BOOL)_compareMutliValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  v57 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  if ([objectCopy isPropertyUnavailable:keyCopy] && (objc_msgSend(againstObjectCopy, "isPropertyUnavailable:", keyCopy) & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v15 = objectCopy;
    v16 = againstObjectCopy;
    isPartialObject = [v15 isPartialObject];
    if (isPartialObject != [v16 isPartialObject])
    {
      v18 = [self _createNonPartialObjectFromObject:v15 ifPropertyIsUnavailable:keyCopy];

      v19 = [self _createNonPartialObjectFromObject:v16 ifPropertyIsUnavailable:keyCopy];

      v16 = v19;
      v15 = v18;
    }

    v20 = [v15 valueForKey:keyCopy];
    v21 = [v16 valueForKey:keyCopy];
    v22 = [v20 count];
    if (v22 == [v21 count])
    {
      v45 = objectCopy;
      v46 = v21;
      v42 = v15;
      v43 = v16;
      v44 = againstObjectCopy;
      v23 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v20, "count")}];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v41 = v20;
      v24 = v20;
      v25 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v52;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v52 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v51 + 1) + 8 * i);
            uniqueIdentifier = [v29 uniqueIdentifier];
            if (uniqueIdentifier)
            {
              [v23 setObject:v29 forKeyedSubscript:uniqueIdentifier];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v51 objects:v56 count:16];
        }

        while (v26);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v31 = v46;
      v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v32)
      {
        v33 = v32;
        v40 = keyCopy;
        v34 = *v48;
        while (2)
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v47 + 1) + 8 * j);
            uniqueIdentifier2 = [v36 uniqueIdentifier];
            v38 = [v23 objectForKeyedSubscript:uniqueIdentifier2];
            LODWORD(v36) = [self _compareRelationshipObject1:v38 againstRelationshipObject2:v36 propertiesToIgnore:ignoreCopy];

            if (!v36)
            {
              v14 = 0;
              goto LABEL_27;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }

        v14 = 1;
LABEL_27:
        keyCopy = v40;
      }

      else
      {
        v14 = 1;
      }

      againstObjectCopy = v44;
      objectCopy = v45;
      v15 = v42;
      v16 = v43;
      v20 = v41;
      v21 = v46;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (BOOL)_compareRelationshipObject1:(id)object1 againstRelationshipObject2:(id)object2 propertiesToIgnore:(id)ignore
{
  object1Copy = object1;
  object2Copy = object2;
  ignoreCopy = ignore;
  if ((object1Copy == 0) != (object2Copy == 0))
  {
    goto LABEL_5;
  }

  v10 = 1;
  if (object1Copy && object2Copy)
  {
    meltedClass = [objc_opt_class() meltedClass];
    if (meltedClass != [objc_opt_class() meltedClass])
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }

    if ([meltedClass isWeakRelationship])
    {
      v13 = [meltedClass _compareIdentityKeysForObject:object1Copy againstObject:object2Copy propertiesToIgnore:ignoreCopy];
    }

    else
    {
      v13 = [object1Copy isEqual:object2Copy ignoringProperties:ignoreCopy];
    }

    v10 = v13;
  }

LABEL_6:

  return v10;
}

+ (BOOL)_objects:(id)_objects haveSameMeltedClass:(Class)class frozenClass:(Class)frozenClass
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _objectsCopy = _objects;
  v7 = [_objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(_objectsCopy);
        }

        [self meltedClass];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [self frozenClass];
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = 0;
            goto LABEL_12;
          }
        }
      }

      v8 = [_objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (id)meltedObjectInStore:(id)store
{
  storeCopy = store;
  eventStore = [(EKObject *)self eventStore];
  v7 = eventStore;
  if (storeCopy && eventStore && eventStore != storeCopy)
  {
    if ([(EKObject *)self hasChanges])
    {
      [(EKObject *)a2 meltedObjectInStore:?];
    }

    v8 = [(EKObject *)self frozenObjectInStore:storeCopy];
    selfCopy = [objc_alloc(objc_opt_class()) initWithPersistentObject:v8 objectForCopy:self];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (Class)frozenClass
{
  persistentObject = [(EKObject *)self persistentObject];
  v3 = objc_opt_class();

  return v3;
}

- (void)rebase
{
  eventStore = [(EKObject *)self eventStore];
  [(EKObject *)self rebaseToEventStore:eventStore];
}

- (void)rebaseSkippingRelationProperties:(id)properties
{
  propertiesCopy = properties;
  eventStore = [(EKObject *)self eventStore];
  [(EKObject *)self rebaseSkippingRelationProperties:propertiesCopy toEventStore:eventStore];
}

- (void)rebaseSkippingRelationProperties:(id)properties toEventStore:(id)store
{
  v66 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  storeCopy = store;
  [(EKObject *)self _initChangeSetIfNone];
  persistentObject = [(EKObject *)self persistentObject];
  objectID = [persistentObject objectID];

  persistentObject2 = [(EKObject *)self persistentObject];
  v10 = [persistentObject2 copy];

  [v10 _setEventStore:storeCopy];
  additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __58__EKObject_rebaseSkippingRelationProperties_toEventStore___block_invoke;
  v60[3] = &unk_1E77FD338;
  v60[4] = self;
  v42 = v10;
  v61 = v42;
  [additionalFrozenProperties enumerateKeysAndObjectsUsingBlock:v60];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v13 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    v44 = propertiesCopy;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        if (([propertiesCopy containsObject:v17] & 1) == 0)
        {
          v18 = [(EKObject *)self valueForKey:v17];
          if (v18 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v18 forKey:v17])
          {
            [v18 rebaseToEventStore:storeCopy];
            [(EKObject *)self changeSet];
            v20 = v19 = knownRelationshipSingleValueKeys;
            frozenObject = [v18 frozenObject];
            [v20 forceChangeValue:frozenObject forKey:v17];

            knownRelationshipSingleValueKeys = v19;
            propertiesCopy = v44;
          }
        }
      }

      v14 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v14);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v22 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v53;
    v45 = *v53;
    do
    {
      v25 = 0;
      v46 = v23;
      do
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v52 + 1) + 8 * v25);
        if ([propertiesCopy containsObject:v26])
        {
          changeSet = [(EKObject *)self changeSet];
          multiValueRemovals = [changeSet multiValueRemovals];
          [multiValueRemovals setObject:0 forKeyedSubscript:v26];
        }

        else
        {
          v29 = [(EKObject *)self valueForKey:v26];
          changeSet2 = [(EKObject *)self changeSet];
          v63 = v26;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
          [changeSet2 rollbackChangesForKeys:v31];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          multiValueRemovals = v29;
          v32 = [multiValueRemovals countByEnumeratingWithState:&v48 objects:v62 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = propertiesCopy;
            v35 = *v49;
            do
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v49 != v35)
                {
                  objc_enumerationMutation(multiValueRemovals);
                }

                v37 = *(*(&v48 + 1) + 8 * j);
                if (v37 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v37 forKey:v26])
                {
                  [v37 rebaseToEventStore:storeCopy];
                  frozenObject2 = [v37 frozenObject];
                  [(EKObject *)self addMultiChangedObjectValue:frozenObject2 forKey:v26];
                }
              }

              v33 = [multiValueRemovals countByEnumeratingWithState:&v48 objects:v62 count:16];
            }

            while (v33);
            changeSet = multiValueRemovals;
            propertiesCopy = v34;
            v24 = v45;
            v23 = v46;
          }

          else
          {
            changeSet = multiValueRemovals;
          }
        }

        ++v25;
      }

      while (v25 != v23);
      v23 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v23);
  }

  objectID2 = [v42 objectID];
  [storeCopy recordObjectRebaseWithOldObjectID:objectID newObjectID:objectID2];
  persistentObject3 = [(EKObject *)self persistentObject];
  cADObjectID = [persistentObject3 CADObjectID];
  [v42 setValue:cADObjectID forKey:*MEMORY[0x1E6992B20]];

  [(EKObject *)self setPersistentObject:v42];
}

void __58__EKObject_rebaseSkippingRelationProperties_toEventStore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [objc_opt_class() knownRelationshipSingleValueKeys];
  if ([v6 containsObject:v13])
  {
  }

  else
  {
    v7 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v8 = [v7 containsObject:v13];

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_class() keysToIgnoreForApplyingChanges];
      v10 = [v9 containsObject:v13];

      if ((v10 & 1) == 0)
      {
        v11 = [*(a1 + 32) changeSet];
        v12 = [v11 hasUnsavedChangeForKey:v13];

        if ((v12 & 1) == 0)
        {
          [*(a1 + 40) setValue:v5 forKey:v13];
        }
      }
    }
  }
}

- (int)rowID
{
  objectID = [(EKObject *)self objectID];
  rowID = [objectID rowID];

  return rowID;
}

- (BOOL)existsInStore
{
  persistentObject = [(EKObject *)self persistentObject];
  if ([persistentObject isNew])
  {
    existsInStore = 0;
  }

  else
  {
    existsInStore = [persistentObject existsInStore];
  }

  return existsInStore;
}

+ (id)objectsIDsExistingInStoreFromObjects:(id)objects eventStore:(id)store
{
  v30 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  storeCopy = store;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objectsCopy;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        persistentObject = [v14 persistentObject];
        isNew = [persistentObject isNew];

        if ((isNew & 1) == 0)
        {
          cADObjectID = [v14 CADObjectID];
          v18 = cADObjectID;
          if (cADObjectID && ([cADObjectID isTemporary] & 1) == 0)
          {
            [v8 addObject:v18];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    connection = [storeCopy connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60__EKObject_objectsIDsExistingInStoreFromObjects_eventStore___block_invoke;
    v22[3] = &unk_1E77FD360;
    v23 = v8;
    v24 = v7;
    [cADOperationProxySync CADObjectsExist:v23 reply:v22];
  }

  return v7;
}

void __60__EKObject_objectsIDsExistingInStoreFromObjects_eventStore___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v11 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorCheckingW.isa, v3, v11);
  }

  else
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:?];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (([v4 containsObject:v10] & 1) == 0)
          {
            [*(a1 + 40) addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    persistentObject = [(EKObject *)self persistentObject];
    persistentObject2 = [(EKObject *)v6 persistentObject];

    v9 = [persistentObject isEqual:persistentObject2];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(EKObject *)self _copyWithoutChangesInZone:zone];
  if ([(EKObject *)self hasUnsavedChanges])
  {
    [v4 addChangesFromObject:self copyingBackingObjects:0];
  }

  return v4;
}

- (id)shallowCopyWithoutChanges
{
  v2 = [(EKObject *)self _copyWithoutChangesInZone:0];

  return v2;
}

- (id)_copyWithoutChangesInZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  persistentObject = [(EKObject *)self persistentObject];
  v6 = [v4 initWithPersistentObject:persistentObject objectForCopy:self];

  additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
  [v6 setAdditionalFrozenProperties:additionalFrozenProperties];

  return v6;
}

- (id)duplicate
{
  eventStore = [(EKObject *)self eventStore];
  v4 = [(EKObject *)self duplicateToEventStore:eventStore];

  return v4;
}

- (id)duplicateToEventStore:(id)store
{
  storeCopy = store;
  v5 = [(EKObject *)self copy];
  [v5 rebaseToEventStore:storeCopy];

  [v5 markAsNew];

  return v5;
}

- (id)committedCopy
{
  defaultPropertyKeysToSkipForRecursiveSnapshotCopies = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v4 = [(EKObject *)self _recursiveSnapshotCopyWithPropertyAccessor:&__block_literal_global_5 propertyKeysToCopy:0 propertyKeysToSkip:defaultPropertyKeysToSkipForRecursiveSnapshotCopies recurseOnWeakRelations:1];

  return v4;
}

id __25__EKObject_committedCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 persistentObject];
  v6 = [v5 loadedPropertyForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = v7;

  return v8;
}

- (id)snapshotCopyWithPropertyKeysToCopy:(id)copy
{
  copyCopy = copy;
  defaultPropertyKeysToSkipForRecursiveSnapshotCopies = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v6 = [(EKObject *)self snapshotCopyWithPropertyKeysToCopy:copyCopy propertyKeysToSkip:defaultPropertyKeysToSkipForRecursiveSnapshotCopies];

  return v6;
}

id __66__EKObject_snapshotCopyWithPropertyKeysToCopy_propertyKeysToSkip___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 valueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;

  return v5;
}

- (id)previouslySavedCopy
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__EKObject_previouslySavedCopy__block_invoke;
  v6[3] = &unk_1E77FD3A8;
  v6[4] = self;
  defaultPropertyKeysToSkipForRecursiveSnapshotCopies = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
  v4 = [(EKObject *)self _recursiveSnapshotCopyWithPropertyAccessor:v6 propertyKeysToCopy:0 propertyKeysToSkip:defaultPropertyKeysToSkipForRecursiveSnapshotCopies recurseOnWeakRelations:1];

  return v4;
}

id __31__EKObject_previouslySavedCopy__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 _previousValueForKey:v5];
  if (!v6)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
LABEL_37:
    v18 = v19;
    goto LABEL_38;
  }

  v7 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = [*(a1 + 32) cachedMeltedObjectForSingleValueKey:v5];
    v10 = [v9 objectID];
    v11 = [v6 objectID];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
LABEL_6:
      v18 = v9;

      goto LABEL_38;
    }

    v13 = [*(a1 + 32) additionalMeltedObjects];
    v14 = [v13 objectForKeyedSubscript:v5];

    v15 = [v14 objectID];
    v16 = [v6 objectID];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v9 = v14;
      goto LABEL_6;
    }

    goto LABEL_36;
  }

  v20 = [objc_opt_class() knownRelationshipMultiValueKeys];
  v21 = [v20 containsObject:v5];

  if (!v21)
  {
LABEL_36:
    v19 = v6;
    goto LABEL_37;
  }

  v49 = v6;
  v22 = [v6 mutableCopy];
  v18 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v22, "count")}];
  v50 = v5;
  v23 = [*(a1 + 32) cachedMeltedObjectsForMultiValueKey:v5];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v59 + 1) + 8 * i);
        v29 = [v28 persistentObject];
        v30 = [v22 containsObject:v29];

        if (v30)
        {
          [v18 addObject:v28];
          v31 = [v28 persistentObject];
          [v22 removeObject:v31];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v25);
  }

  v32 = [*(a1 + 32) additionalMeltedObjects];
  v33 = [v32 objectForKeyedSubscript:v50];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v56;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v56 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v55 + 1) + 8 * j);
        v40 = [v39 persistentObject];
        v41 = [v22 containsObject:v40];

        if (v41)
        {
          [v18 addObject:v39];
          v42 = [v39 persistentObject];
          [v22 removeObject:v42];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v36);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v43 = v22;
  v44 = [v43 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v52;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v18 addObject:*(*(&v51 + 1) + 8 * k)];
      }

      v45 = [v43 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v45);
  }

  v6 = v49;
  v5 = v50;
LABEL_38:

  return v18;
}

+ (id)_array:(id)_array intersectedWithSet:(id)set minusSet:(id)minusSet
{
  _arrayCopy = _array;
  setCopy = set;
  minusSetCopy = minusSet;
  if (setCopy | minusSetCopy)
  {
    v11 = [MEMORY[0x1E695DFA8] setWithArray:_arrayCopy];
    v12 = v11;
    if (setCopy)
    {
      [v11 intersectSet:setCopy];
    }

    if (minusSetCopy)
    {
      [v12 minusSet:minusSetCopy];
    }

    allObjects = [v12 allObjects];
  }

  else
  {
    allObjects = _arrayCopy;
  }

  return allObjects;
}

- (id)_recursiveSnapshotCopyWithPropertyAccessor:(id)accessor propertyKeysToCopy:(id)copy propertyKeysToSkip:(id)skip recurseOnWeakRelations:(BOOL)relations
{
  relationsCopy = relations;
  v125 = *MEMORY[0x1E69E9840];
  accessorCopy = accessor;
  copyCopy = copy;
  skipCopy = skip;
  context = objc_autoreleasePoolPush();
  v11 = objc_alloc(objc_opt_class());
  persistentObject = [(EKObject *)self persistentObject];
  v85 = [v11 initWithPersistentObject:persistentObject objectForCopy:self];

  v93 = objc_opt_new();
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
  knownSingleValueKeysForComparison = [objc_opt_class() knownSingleValueKeysForComparison];
  v16 = [objc_opt_class() _array:knownRelationshipSingleValueKeys intersectedWithSet:copyCopy minusSet:skipCopy];

  v17 = [objc_opt_class() _array:knownRelationshipMultiValueKeys intersectedWithSet:copyCopy minusSet:skipCopy];

  v95 = skipCopy;
  v96 = copyCopy;
  v18 = [objc_opt_class() _array:knownSingleValueKeysForComparison intersectedWithSet:copyCopy minusSet:skipCopy];

  v19 = [v16 count];
  v20 = [v17 count] + v19;
  v21 = [v18 count];
  v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:v20 + v21];
  [v22 addObjectsFromArray:v16];
  v90 = v17;
  [v22 addObjectsFromArray:v17];
  v80 = v18;
  [v22 addObjectsFromArray:v18];
  selfCopy = self;
  persistentObject2 = [(EKObject *)self persistentObject];
  v81 = v22;
  [persistentObject2 loadPropertiesIfNeeded:v22];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v16;
  v24 = [obj countByEnumeratingWithState:&v113 objects:v124 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v114;
    v94 = *v114;
    do
    {
      v27 = 0;
      do
      {
        if (*v114 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v113 + 1) + 8 * v27);
        v29 = objc_autoreleasePoolPush();
        v30 = accessorCopy[2](accessorCopy, selfCopy, v28);
        if (v30)
        {
          v31 = objc_opt_class();
          if (v31 == objc_opt_class())
          {
            null = [MEMORY[0x1E695DFB0] null];
            [v93 setObject:null forKey:v28];
LABEL_19:

            v26 = v94;
            goto LABEL_20;
          }

          eventStore = [(EKObject *)selfCopy eventStore];
          v33 = [v30 frozenObjectInStore:eventStore];
          [v93 setObject:v33 forKey:v28];

          v34 = [objc_opt_class() isWeakRelationObject:v30 forKey:v28] ^ 1;
          if ((v34 & 1) != 0 || relationsCopy)
          {
            eventStore2 = [(EKObject *)selfCopy eventStore];
            null = [v30 meltedObjectInStore:eventStore2];

            defaultPropertyKeysToSkipForRecursiveSnapshotCopies = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = v96;
              v39 = v95;

              defaultPropertyKeysToSkipForRecursiveSnapshotCopies = v39;
            }

            else
            {
              v38 = 0;
            }

            relationsCopy = [null _recursiveSnapshotCopyWithPropertyAccessor:accessorCopy propertyKeysToCopy:v38 propertyKeysToSkip:defaultPropertyKeysToSkipForRecursiveSnapshotCopies recurseOnWeakRelations:v34 & relationsCopy];
            if (relationsCopy)
            {
              [v85 setCachedMeltedObject:relationsCopy forSingleValueKey:v28];
            }

            else
            {
              v41 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v42 = v41;
                v43 = objc_opt_class();
                *buf = 138412546;
                v121 = v30;
                v122 = 2114;
                v123 = v43;
                _os_log_error_impl(&dword_1A805E000, v42, OS_LOG_TYPE_ERROR, "Failed to create committed relationship for relation %@ (%{public}@)", buf, 0x16u);
              }
            }

            goto LABEL_19;
          }
        }

LABEL_20:

        objc_autoreleasePoolPop(v29);
        ++v27;
      }

      while (v25 != v27);
      v25 = [obj countByEnumeratingWithState:&v113 objects:v124 count:16];
    }

    while (v25);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v86 = v90;
  v44 = [v86 countByEnumeratingWithState:&v109 objects:v119 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v110;
    v83 = *v110;
    do
    {
      v47 = 0;
      v84 = v45;
      do
      {
        if (*v110 != v46)
        {
          objc_enumerationMutation(v86);
        }

        v48 = *(*(&v109 + 1) + 8 * v47);
        v49 = objc_autoreleasePoolPush();
        v50 = accessorCopy[2](accessorCopy, selfCopy, v48);
        if (v50)
        {
          v51 = objc_opt_class();
          if (v51 == objc_opt_class())
          {
            v68 = [MEMORY[0x1E695DFD8] set];
            [v93 setObject:v68 forKey:v48];
          }

          else
          {
            v91 = v49;
            v92 = v47;
            v52 = [v50 valueForKey:@"frozenObject"];
            v88 = v48;
            [v93 setObject:v52 forKey:v48];

            v53 = objc_opt_new();
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v108 = 0u;
            v89 = v50;
            v97 = v50;
            v54 = [v97 countByEnumeratingWithState:&v105 objects:v118 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v106;
              do
              {
                v57 = 0;
                do
                {
                  if (*v106 != v56)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v58 = *(*(&v105 + 1) + 8 * v57);
                  eventStore3 = [(EKObject *)selfCopy eventStore];
                  v60 = [v58 meltedObjectInStore:eventStore3];

                  defaultPropertyKeysToSkipForRecursiveSnapshotCopies2 = [objc_opt_class() defaultPropertyKeysToSkipForRecursiveSnapshotCopies];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v62 = v96;
                    v63 = v95;

                    defaultPropertyKeysToSkipForRecursiveSnapshotCopies2 = v63;
                  }

                  else
                  {
                    v62 = 0;
                  }

                  v64 = [v60 _recursiveSnapshotCopyWithPropertyAccessor:accessorCopy propertyKeysToCopy:v62 propertyKeysToSkip:defaultPropertyKeysToSkipForRecursiveSnapshotCopies2 recurseOnWeakRelations:relationsCopy];
                  if (v64)
                  {
                    [v53 addObject:v64];
                  }

                  else
                  {
                    v65 = EKLogHandle;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      v66 = v65;
                      v67 = objc_opt_class();
                      *buf = 138412546;
                      v121 = 0;
                      v122 = 2114;
                      v123 = v67;
                      _os_log_error_impl(&dword_1A805E000, v66, OS_LOG_TYPE_ERROR, "Failed to create committed relationship for relation %@ (%{public}@)", buf, 0x16u);
                    }
                  }

                  ++v57;
                }

                while (v55 != v57);
                v55 = [v97 countByEnumeratingWithState:&v105 objects:v118 count:16];
              }

              while (v55);
            }

            v68 = v53;
            v69 = [MEMORY[0x1E695DFD8] setWithSet:v53];
            [v85 setCachedMeltedObjects:v69 forMultiValueKey:v88];

            v46 = v83;
            v45 = v84;
            v49 = v91;
            v47 = v92;
            v50 = v89;
          }
        }

        objc_autoreleasePoolPop(v49);
        ++v47;
      }

      while (v47 != v45);
      v45 = [v86 countByEnumeratingWithState:&v109 objects:v119 count:16];
    }

    while (v45);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v70 = v80;
  v71 = [v70 countByEnumeratingWithState:&v101 objects:v117 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v102;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v102 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v101 + 1) + 8 * i);
        v76 = objc_autoreleasePoolPush();
        v77 = accessorCopy[2](accessorCopy, selfCopy, v75);
        if (v77)
        {
          [v93 setObject:v77 forKey:v75];
        }

        objc_autoreleasePoolPop(v76);
      }

      v72 = [v70 countByEnumeratingWithState:&v101 objects:v117 count:16];
    }

    while (v72);
  }

  v78 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v93];
  [v85 setAdditionalFrozenProperties:v78];

  [v85 _resetInternalStateWithForce:0];
  objc_autoreleasePoolPop(context);

  return v85;
}

- (BOOL)_reset
{
  persistentObject = [(EKObject *)self persistentObject];
  [persistentObject reset];

  return [(EKObject *)self _resetCommon];
}

- (BOOL)refreshAndNotify:(BOOL)notify
{
  if ([(EKObject *)self isNew])
  {
    return 0;
  }

  persistentObject = [(EKObject *)self persistentObject];
  existsInStore = [persistentObject existsInStore];

  if (!existsInStore)
  {
    return 0;
  }

  return [(EKObject *)self _refreshCommon];
}

- (id)committedValueForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(EKObject *)self _previousValueForKey:keyCopy];
  if (v5)
  {
    knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
    v7 = [knownRelationshipSingleValueKeys containsObject:keyCopy];

    if (v7)
    {
      eventStore = [(EKObject *)self eventStore];
      v9 = [v5 meltedObjectInStore:eventStore];

      v5 = v9;
    }

    else
    {
      knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
      v11 = [knownRelationshipMultiValueKeys containsObject:keyCopy];

      if (v11)
      {
        v12 = v5;
        v13 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v12, "count")}];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v23 + 1) + 8 * i);
              eventStore2 = [(EKObject *)self eventStore];
              v21 = [v19 meltedObjectInStore:eventStore2];

              [v13 addObject:v21];
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
          }

          while (v16);
        }

        v5 = [MEMORY[0x1E695DFD8] setWithSet:v13];
      }
    }
  }

  return v5;
}

- (void)markAsNew
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v8])
        {
          v9 = [(EKObject *)self valueForKey:v8];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v9 forKey:v8])
          {
            existingMeltedObject = [v9 existingMeltedObject];
            [existingMeltedObject markAsNew];
          }
        }
      }

      v5 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v28 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v15])
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v16 = [(EKObject *)self valueForKey:v15];
          v17 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v25;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v24 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v15])
                {
                  existingMeltedObject2 = [v21 existingMeltedObject];
                  [existingMeltedObject2 markAsNew];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
            }

            while (v18);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v12);
  }

  [(EKObject *)self markAsNewShallow];
}

- (void)markAsNewShallow
{
  [(EKObject *)self _initChangeSetIfNone];
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsNew:1];

  changeSet2 = [(EKObject *)self changeSet];
  [changeSet2 setIsSaved:0];
}

- (void)markAsUndeleted
{
  [(EKObject *)self rebase];

  [(EKObject *)self _markAsUndeletedCommon];
}

- (void)markAsCommitted
{
  [(EKObject *)self _markAsCommittedCommon];

  [(EKObject *)self _performBlockOnOwnedCachedRelatedObjects:&__block_literal_global_29];
}

- (void)_performBlockOnOwnedCachedRelatedObjects:(id)objects
{
  v38 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v10];
        if (v11 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v11 forKey:v10])
        {
          objectsCopy[2](objectsCopy, v11);
        }
      }

      v7 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v22 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * j);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v13];
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v24 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v23 + 1) + 8 * k);
              if (v19 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v19 forKey:v13])
              {
                objectsCopy[2](objectsCopy, v19);
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v16);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v22);
  }
}

- (void)updatePersistentValueForKeyIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(EKObject *)self _hasChangesForKey:?])
  {
    [(EKObject *)self _updatePersistentValueForKey:neededCopy];
  }
}

- (void)_updatePersistentValueForKey:(id)key
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(EKObject *)self _propertyValueForKey:keyCopy];
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v7 = [knownRelationshipSingleValueKeys containsObject:keyCopy];

  if (v7)
  {
    v8 = v5;
    persistentObject = [(EKObject *)self persistentObject];
    persistentObject2 = [v8 persistentObject];
    [persistentObject setValue:persistentObject2 forKey:keyCopy];

    [v8 updatePersistentObject];
  }

  else
  {
    knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
    v12 = [knownRelationshipMultiValueKeys containsObject:keyCopy];

    if (v12)
    {
      v13 = v5;
      persistentObject3 = [(EKObject *)self persistentObject];
      v15 = [v13 valueForKey:@"persistentObject"];
      [persistentObject3 setValue:v15 forKey:keyCopy];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      persistentObject4 = v13;
      v17 = [persistentObject4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v22;
        do
        {
          v20 = 0;
          do
          {
            if (*v22 != v19)
            {
              objc_enumerationMutation(persistentObject4);
            }

            [*(*(&v21 + 1) + 8 * v20++) updatePersistentObject];
          }

          while (v18 != v20);
          v18 = [persistentObject4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v18);
      }
    }

    else
    {
      persistentObject4 = [(EKObject *)self persistentObject];
      [persistentObject4 setValue:v5 forKey:keyCopy];
    }
  }
}

- (id)_propertyValueForKey:(id)key
{
  keyCopy = key;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [knownRelationshipSingleValueKeys containsObject:keyCopy];

  if (v6)
  {
    v7 = [(EKObject *)self meltedAndCachedSingleRelationObjectForKey:keyCopy];
  }

  else
  {
    knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
    v9 = [knownRelationshipMultiValueKeys containsObject:keyCopy];

    if (v9)
    {
      [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:keyCopy];
    }

    else
    {
      [(EKObject *)self singleChangedValueForKey:keyCopy];
    }
    v7 = ;
  }

  v10 = v7;
  null = [MEMORY[0x1E695DFB0] null];

  if (v10 == null)
  {

    v10 = 0;
  }

  return v10;
}

- (void)insertPersistentObjectIfNeeded
{
  persistentObject = [(EKObject *)self persistentObject];
  if ([persistentObject isNew] && (objc_msgSend(persistentObject, "_isPendingInsert") & 1) == 0)
  {
    eventStore = [persistentObject eventStore];
    [eventStore _insertObject:persistentObject];
  }
}

- (void)updatePersistentObjectSkippingProperties:(id)properties
{
  v53 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  changeSet = [(EKObject *)self changeSet];
  changedKeys = [changeSet changedKeys];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = changedKeys;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        if (([propertiesCopy containsObject:v12] & 1) == 0)
        {
          [(EKObject *)self _updatePersistentValueForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v9);
  }

  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v42;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v18 = *(*(&v41 + 1) + 8 * j);
        if (([propertiesCopy containsObject:v18] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v18) & 1) == 0 && -[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", v18))
        {
          v19 = [(EKObject *)self meltedAndCachedSingleRelationObjectForKey:v18];
          [v19 updatePersistentObject];
        }
      }

      v15 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v15);
  }

  v31 = knownRelationshipSingleValueKeys;
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v38;
    v32 = knownRelationshipMultiValueKeys;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(knownRelationshipMultiValueKeys);
        }

        v25 = *(*(&v37 + 1) + 8 * k);
        if (([propertiesCopy containsObject:{v25, v31}] & 1) == 0 && (objc_msgSend(v7, "containsObject:", v25) & 1) == 0 && -[EKObject _hasChangesForKey:](self, "_hasChangesForKey:", v25))
        {
          v26 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v25];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v34;
            do
            {
              for (m = 0; m != v28; ++m)
              {
                if (*v34 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                [*(*(&v33 + 1) + 8 * m) updatePersistentObject];
              }

              v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
            }

            while (v28);
          }

          knownRelationshipMultiValueKeys = v32;
        }
      }

      v22 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v22);
  }
}

- (void)deletePersistentObject
{
  persistentObject = [(EKObject *)self persistentObject];
  eventStore = [persistentObject eventStore];
  [eventStore _deleteObject:persistentObject];
}

- (void)addCoCommitObject:(id)object
{
  objectCopy = object;
  persistentObject = [(EKObject *)self persistentObject];
  persistentObject2 = [objectCopy persistentObject];

  [persistentObject addCoCommitObject:persistentObject2];
}

- (id)_basicSummaryWithDepth:(int64_t)depth
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [EKDiff _indentStringAtDepth:depth];
  string = [MEMORY[0x1E696AD60] string];
  v19 = v4;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ <0x%x>", v4, objc_opt_class(), self];
  [string appendString:v6];

  knownSummaryKeys = [objc_opt_class() knownSummaryKeys];
  knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];
  v9 = [knownSummaryKeys arrayByAddingObjectsFromArray:knownIdentityKeysForComparison];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(EKObject *)self valueForKey:v15];
        if (v16)
        {
          v17 = [(EKObject *)self valueForKey:v15];
          [string appendFormat:@", %@:%@", v15, v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  return string;
}

- (id)_summaryWithDepth:(int64_t)depth
{
  string = [MEMORY[0x1E696AD60] string];
  v6 = [(EKObject *)self _basicSummaryWithDepth:depth];
  [string appendString:v6];

  [(EKObject *)self _addSummaryWithDepth:0 toMutableString:string indentFirstLine:0];

  return string;
}

- (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string indentFirstLine:(BOOL)line
{
  stringCopy = string;
  knownSingleValueKeysForComparison = [objc_opt_class() knownSingleValueKeysForComparison];
  [EKDiff _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:knownSingleValueKeysForComparison firstObject:self secondObject:0];

  knownDerivedAndSingleValueRelationshipKeys = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];
  [EKDiff _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipSingleValueKeys:knownDerivedAndSingleValueRelationshipKeys firstObject:self secondObject:0];
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
  [EKDiff _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipMultiValueKeys:knownRelationshipMultiValueKeys firstObject:self secondObject:0];
}

- (void)_performWithLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock([(EKObject *)self _lock]);
  lockCopy[2](lockCopy);

  _lock = [(EKObject *)self _lock];

  os_unfair_lock_unlock(_lock);
}

- (id)cachedValueForKey:(id)key populateBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__18;
  v24 = __Block_byref_object_dispose__18;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke;
  v17[3] = &unk_1E77FD688;
  v19 = &v20;
  v17[4] = self;
  v8 = keyCopy;
  v18 = v8;
  [(EKObject *)self _performWithLock:v17];
  v9 = v21[5];
  if (blockCopy && !v9)
  {
    v10 = blockCopy[2](blockCopy);
    v11 = v21[5];
    v21[5] = v10;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke_2;
    v14[3] = &unk_1E77FD468;
    v14[4] = self;
    v15 = v8;
    v16 = &v20;
    [(EKObject *)self _performWithLock:v14];

    v9 = v21[5];
  }

  v12 = v9;

  _Block_object_dispose(&v20, 8);

  return v12;
}

void __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedValues];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__EKObject_Shared__cachedValueForKey_populateBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  v7 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 8);
  if (v7)
  {
    v4 = v7;
    v5 = *(v3 + 40);
    *(v3 + 40) = v4;
  }

  else
  {
    v6 = *(v3 + 40);
    v5 = [*(a1 + 32) _cachedValues];
    [v5 setObject:v6 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)setCachedValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__EKObject_Shared__setCachedValue_forKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v10[4] = self;
  v11 = keyCopy;
  v12 = valueCopy;
  v8 = valueCopy;
  v9 = keyCopy;
  [(EKObject *)self _performWithLock:v10];
}

void __42__EKObject_Shared__setCachedValue_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) _cachedValues];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)clearCachedValueForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKObject_Shared__clearCachedValueForKey___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(EKObject *)self _performWithLock:v6];
}

void __43__EKObject_Shared__clearCachedValueForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)clearCachedValuesForKeys:(id)keys
{
  keysCopy = keys;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKObject_Shared__clearCachedValuesForKeys___block_invoke;
  v6[3] = &unk_1E77FD580;
  v7 = keysCopy;
  selfCopy = self;
  v5 = keysCopy;
  [(EKObject *)self _performWithLock:v6];
}

void __45__EKObject_Shared__clearCachedValuesForKeys___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _cachedValues];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)cachedValueForKey:(id)key expectingCachedValue:(id)value forMasterKey:(id)masterKey relatedKeys:(id)keys populateBlock:(id)block
{
  keyCopy = key;
  valueCopy = value;
  masterKeyCopy = masterKey;
  keysCopy = keys;
  blockCopy = block;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__18;
  v40 = __Block_byref_object_dispose__18;
  v41 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke;
  v31[3] = &unk_1E77FF398;
  v31[4] = self;
  v17 = masterKeyCopy;
  v32 = v17;
  v18 = valueCopy;
  v33 = v18;
  v35 = &v36;
  v19 = keyCopy;
  v34 = v19;
  [(EKObject *)self _performWithLock:v31];
  v20 = v37[5];
  if (blockCopy && !v20)
  {
    v21 = blockCopy[2](blockCopy);
    v22 = v37[5];
    v37[5] = v21;

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke_2;
    v25[3] = &unk_1E77FF3C0;
    v25[4] = self;
    v26 = v17;
    v27 = v18;
    v28 = keysCopy;
    v29 = v19;
    v30 = &v36;
    [(EKObject *)self _performWithLock:v25];

    v20 = v37[5];
  }

  v23 = v20;

  _Block_object_dispose(&v36, 8);

  return v23;
}

void __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedValues];
  v8 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (!(v3 | v8) || [v3 isEqual:v8])
  {
    v4 = [*(a1 + 32) _cachedValues];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 56)];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __98__EKObject_Shared__cachedValueForKey_expectingCachedValue_forMasterKey_relatedKeys_populateBlock___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _cachedValues];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 48);
  if (v4 | v3 && ([v4 isEqual:v3] & 1) == 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [*(a1 + 32) _cachedValues];
          [v11 removeObjectForKey:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v12 = *(a1 + 48);
    v13 = [*(a1 + 32) _cachedValues];
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 40)];
  }

  v14 = *(*(*(a1 + 72) + 8) + 40);
  v15 = [*(a1 + 32) _cachedValues];
  [v15 setObject:v14 forKeyedSubscript:*(a1 + 64)];
}

+ (id)knownDerivedAndSingleValueRelationshipKeys
{
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  knownDerivedRelationshipKeys = [objc_opt_class() knownDerivedRelationshipKeys];
  v4 = [knownRelationshipSingleValueKeys arrayByAddingObjectsFromArray:knownDerivedRelationshipKeys];

  return v4;
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_3 != -1)
  {
    +[EKObject(Shared) knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_3;

  return v3;
}

void __45__EKObject_Shared__knownRelationshipWeakKeys__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = *MEMORY[0x1E6992B18];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = knownRelationshipWeakKeys_keys_3;
  knownRelationshipWeakKeys_keys_3 = v0;
}

+ (BOOL)isMeltedAndNotWeakRelationshipObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && ([objectCopy isFrozen] & 1) == 0)
  {
    existingMeltedObject = [objectCopy existingMeltedObject];
    v10 = [self isWeakRelationObject:existingMeltedObject forKey:keyCopy];

    v8 = v10 ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isWeakRelationObject:(id)object forKey:(id)key
{
  keyCopy = key;
  if ([objc_msgSend(objc_opt_class() "meltedClass")])
  {
    v6 = 1;
  }

  else
  {
    knownRelationshipWeakKeys = [self knownRelationshipWeakKeys];
    v6 = [knownRelationshipWeakKeys containsObject:keyCopy];
  }

  return v6;
}

- (BOOL)validate:(id *)validate
{
  v80 = *MEMORY[0x1E69E9840];
  _validationContext = [(EKObject *)self _validationContext];
  if (!_validationContext)
  {
    _validationContext = [[EKObjectValidationContext alloc] initWithRootObject:self];
    [(EKObject *)self set_validationContext:_validationContext];
  }

  [(EKObjectValidationContext *)_validationContext setDepth:[(EKObjectValidationContext *)_validationContext depth]+ 1];
  if ([(EKObjectValidationContext *)_validationContext depth]>= 0x33)
  {
    [(EKObjectValidationContext *)_validationContext setReachedMaxDepth:1];
    rootObject = [(EKObjectValidationContext *)_validationContext rootObject];
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKObject(Shared) *)v7 validate:rootObject];
      if (!validate)
      {
        goto LABEL_7;
      }
    }

    else if (!validate)
    {
LABEL_7:
      _validationContext2 = [(EKObject *)self _validationContext];
      [_validationContext2 faultIfNeededForObject:self];

      [(EKObject *)self set_validationContext:0];
      v9 = 0;
      goto LABEL_65;
    }

    *validate = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
    goto LABEL_7;
  }

  validateCopy = validate;
  v53 = _validationContext;
  knownRelationshipWeakKeys = [objc_opt_class() knownRelationshipWeakKeys];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  knownRelationshipSingleValueKeysForValidation = [objc_opt_class() knownRelationshipSingleValueKeysForValidation];
  v12 = [knownRelationshipSingleValueKeysForValidation countByEnumeratingWithState:&v65 objects:v79 count:16];
  v54 = knownRelationshipWeakKeys;
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v66;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v66 != v15)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeysForValidation);
        }

        v17 = *(*(&v65 + 1) + 8 * v16);
        if (([knownRelationshipWeakKeys containsObject:v17] & 1) != 0 || -[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", v17) && !-[EKObject shouldLoadRelationshipForValidation:](self, "shouldLoadRelationshipForValidation:", v17))
        {
          v18 = 0;
        }

        else
        {
          v18 = [(EKObject *)self valueForKey:v17];
          if (v18 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v18 forKey:v17])
          {
            v64 = v14;
            v19 = [v18 validateWithOwner:self error:&v64];
            rootObject = v64;

            if ((v19 & 1) == 0)
            {
              v21 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v43 = v21;
                v44 = objc_opt_class();
                uniqueIdentifier = [(EKObject *)self uniqueIdentifier];
                *buf = 138544130;
                v72 = v44;
                v73 = 2114;
                v74 = uniqueIdentifier;
                v75 = 2114;
                v76 = v17;
                v77 = 2112;
                v78 = rootObject;
                _os_log_error_impl(&dword_1A805E000, v43, OS_LOG_TYPE_ERROR, "Object of type %{public}@ (uniqueIdentifier = %{public}@) failed validation while validating relation %{public}@ with error [%@].", buf, 0x2Au);
              }

              _validationContext3 = [(EKObject *)self _validationContext];
              [_validationContext3 faultIfNeededForObject:self];

              [(EKObject *)self set_validationContext:0];
              knownRelationshipWeakKeys = v54;
              if (validateCopy && rootObject)
              {
                v23 = rootObject;
                *validateCopy = rootObject;
              }

              v9 = 0;
              _validationContext = v53;
              goto LABEL_64;
            }

            v14 = rootObject;
            knownRelationshipWeakKeys = v54;
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v20 = [knownRelationshipSingleValueKeysForValidation countByEnumeratingWithState:&v65 objects:v79 count:16];
      v13 = v20;
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 0;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  knownRelationshipMultiValueKeysForValidation = [objc_opt_class() knownRelationshipMultiValueKeysForValidation];
  v25 = [knownRelationshipMultiValueKeysForValidation countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v61;
    v51 = knownRelationshipMultiValueKeysForValidation;
    v49 = *v61;
    do
    {
      v28 = 0;
      v50 = v26;
      do
      {
        if (*v61 != v27)
        {
          objc_enumerationMutation(knownRelationshipMultiValueKeysForValidation);
        }

        v29 = *(*(&v60 + 1) + 8 * v28);
        if (([knownRelationshipWeakKeys containsObject:v29] & 1) == 0 && (!-[EKObject isPropertyUnavailable:](self, "isPropertyUnavailable:", v29) || -[EKObject shouldLoadRelationshipForValidation:](self, "shouldLoadRelationshipForValidation:", v29)))
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v30 = [(EKObject *)self valueForKey:v29];
          v31 = [v30 countByEnumeratingWithState:&v56 objects:v69 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v57;
            while (2)
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v57 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v56 + 1) + 8 * i);
                if (v35 && [objc_opt_class() isMeltedAndNotWeakRelationshipObject:v35 forKey:v29])
                {
                  v55 = v14;
                  v36 = v14;
                  v37 = [v35 validateWithOwner:self error:&v55];
                  rootObject = v55;

                  if ((v37 & 1) == 0)
                  {
                    v39 = EKLogHandle;
                    knownRelationshipWeakKeys = v54;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      v46 = v39;
                      v47 = objc_opt_class();
                      uniqueIdentifier2 = [(EKObject *)self uniqueIdentifier];
                      *buf = 138544130;
                      v72 = v47;
                      v73 = 2114;
                      v74 = uniqueIdentifier2;
                      v75 = 2114;
                      v76 = v29;
                      v77 = 2112;
                      v78 = rootObject;
                      _os_log_error_impl(&dword_1A805E000, v46, OS_LOG_TYPE_ERROR, "Object of type %{public}@ (uniqueIdentifier = %{public}@) failed validation while validating relation %{public}@ with error [%@].", buf, 0x2Au);
                    }

                    _validationContext4 = [(EKObject *)self _validationContext];
                    [_validationContext4 faultIfNeededForObject:self];

                    [(EKObject *)self set_validationContext:0];
                    _validationContext = v53;
                    if (validateCopy && rootObject)
                    {
                      v41 = rootObject;
                      *validateCopy = rootObject;
                    }

                    v9 = 0;
                    goto LABEL_64;
                  }

                  v14 = rootObject;
                  knownRelationshipWeakKeys = v54;
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v56 objects:v69 count:16];
              if (v32)
              {
                continue;
              }

              break;
            }
          }

          v26 = v50;
          knownRelationshipMultiValueKeysForValidation = v51;
          v27 = v49;
        }

        ++v28;
      }

      while (v28 != v26);
      v26 = [knownRelationshipMultiValueKeysForValidation countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v26);
  }

  if (validateCopy && v14)
  {
    v38 = v14;
    *validateCopy = v14;
  }

  _validationContext = v53;
  [(EKObjectValidationContext *)v53 setDepth:[(EKObjectValidationContext *)v53 depth]- 1];
  [(EKObject *)self set_validationContext:0];
  v9 = 1;
  rootObject = v14;
LABEL_64:

LABEL_65:
  return v9;
}

- (BOOL)validateWithOwner:(id)owner error:(id *)error
{
  _validationContext = [owner _validationContext];
  [(EKObject *)self set_validationContext:_validationContext];

  return [(EKObject *)self validate:error];
}

- (void)_initChangeSetIfNone
{
  changeSet = [(EKObject *)self changeSet];

  if (!changeSet)
  {
    v4 = objc_alloc_init(EKChangeSet);
    [(EKObject *)self setChangeSet:v4];
  }
}

- (void)_markAsNotNewCommon
{
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsNew:0];
}

- (void)_markAsDeletedCommon
{
  [(EKObject *)self _initChangeSetIfNone];
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsDeleted:1];
}

- (void)_markAsUndeletedCommon
{
  [(EKObject *)self markAsNew];
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsDeleted:0];

  changeSet2 = [(EKObject *)self changeSet];
  [changeSet2 setIsUndeleted:1];
}

- (void)_markAsSavedCommon
{
  v41 = *MEMORY[0x1E69E9840];
  frozenObject = [(EKObject *)self frozenObject];
  changeSet = [(EKObject *)self changeSet];
  [changeSet markChangesAsSaved];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v35;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v35 != v6)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v8])
        {
          v9 = [(EKObject *)self valueForKey:v8];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v9 forKey:v8])
          {
            existingMeltedObject = [v9 existingMeltedObject];
            [existingMeltedObject markAsSaved];
          }
        }
      }

      v5 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v5);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v11 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v15])
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v16 = [(EKObject *)self valueForKey:v15];
          v17 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v27;
            do
            {
              for (k = 0; k != v18; ++k)
              {
                if (*v27 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v26 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v15])
                {
                  existingMeltedObject2 = [v21 existingMeltedObject];
                  [existingMeltedObject2 markAsSaved];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
            }

            while (v18);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v12);
  }

  [(EKObject *)self _resetWithFrozenObject:frozenObject];
  [(EKObject *)self setChangeSet:changeSet];
}

- (void)_markAsCommittedCommon
{
  changeSet = [(EKObject *)self changeSet];
  [changeSet setIsNew:0];

  changeSet2 = [(EKObject *)self changeSet];
  [changeSet2 setIsModified:0];
}

- (BOOL)isDeleted
{
  changeSet = [(EKObject *)self changeSet];
  isDeleted = [changeSet isDeleted];

  return isDeleted;
}

- (BOOL)isUndeleted
{
  changeSet = [(EKObject *)self changeSet];
  isUndeleted = [changeSet isUndeleted];

  return isUndeleted;
}

- (BOOL)isSaved
{
  changeSet = [(EKObject *)self changeSet];
  if ([changeSet isSaved])
  {
    v4 = 1;
  }

  else
  {
    backingObject = [(EKObject *)self backingObject];
    v4 = backingObject != 0;
  }

  return v4;
}

- (BOOL)_hasChanges
{
  changeSet = [(EKObject *)self changeSet];
  if (changeSet)
  {
  }

  else
  {
    _cachedMeltedObjectsCount = [(EKObject *)self _cachedMeltedObjectsCount];
    if (!_cachedMeltedObjectsCount)
    {
      return _cachedMeltedObjectsCount;
    }
  }

  changeSet2 = [(EKObject *)self changeSet];
  hasChanges = [changeSet2 hasChanges];

  if (hasChanges)
  {
    LOBYTE(_cachedMeltedObjectsCount) = 1;
  }

  else
  {

    LOBYTE(_cachedMeltedObjectsCount) = [(EKObject *)self _hasChangeHelperInKeys:0 ignoreKeys:0 checkUnsaved:0];
  }

  return _cachedMeltedObjectsCount;
}

- (BOOL)_hasUnsavedChangesInKeys:(id)keys ignoreKeys:(id)ignoreKeys
{
  keysCopy = keys;
  ignoreKeysCopy = ignoreKeys;
  changeSet = [(EKObject *)self changeSet];
  if (changeSet)
  {
  }

  else if (![(EKObject *)self _cachedMeltedObjectsCount])
  {
    v19 = 0;
    goto LABEL_17;
  }

  if (ignoreKeysCopy)
  {
    v9 = ignoreKeysCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  if (keysCopy)
  {
    v11 = [MEMORY[0x1E695DFD8] setWithArray:keysCopy];
  }

  else
  {
    v11 = 0;
  }

  changeSet2 = [(EKObject *)self changeSet];
  hasUnsavedChanges = [changeSet2 hasUnsavedChanges];

  if (!hasUnsavedChanges)
  {
    goto LABEL_15;
  }

  v14 = MEMORY[0x1E695DFA8];
  changeSet3 = [(EKObject *)self changeSet];
  changedKeys = [changeSet3 changedKeys];
  v17 = [v14 setWithSet:changedKeys];

  [v17 minusSet:v10];
  if (v11)
  {
    [v17 intersectSet:v11];
  }

  v18 = [v17 count];

  if (v18)
  {
    v19 = 1;
  }

  else
  {
LABEL_15:
    v19 = [(EKObject *)self _hasChangeHelperInKeys:v11 ignoreKeys:v10 checkUnsaved:1];
  }

LABEL_17:
  return v19;
}

- (BOOL)_hasChangeHelperInKeys:(id)keys ignoreKeys:(id)ignoreKeys checkUnsaved:(BOOL)unsaved
{
  keysCopy = keys;
  ignoreKeysCopy = ignoreKeys;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __67__EKObject_Shared___hasChangeHelperInKeys_ignoreKeys_checkUnsaved___block_invoke;
  v21 = &unk_1E77FF3E8;
  unsavedCopy = unsaved;
  v22 = ignoreKeysCopy;
  v23 = keysCopy;
  selfCopy = self;
  v10 = keysCopy;
  v11 = ignoreKeysCopy;
  v12 = _Block_copy(&v18);
  v13 = [(EKObject *)self _singleRelationshipKeysToCheckForChanges:v18];
  v14 = v12[2](v12, v13);

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    _multiRelationshipKeysToCheckForChanges = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
    v15 = v12[2](v12, _multiRelationshipKeysToCheckForChanges);
  }

  return v15;
}

uint64_t __67__EKObject_Shared___hasChangeHelperInKeys_ignoreKeys_checkUnsaved___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (*(a1 + 56) == 1 && ([*(a1 + 32) containsObject:{*(*(&v12 + 1) + 8 * v7), v12}] & 1) == 0 && ((v9 = *(a1 + 40)) == 0 || (objc_msgSend(v9, "containsObject:", v8)) || (*(a1 + 56) & 1) == 0) && (objc_msgSend(*(a1 + 48), "_hasChangesForKey:checkUnsaved:", v8, *(a1 + 56), v12))
        {
          v10 = 1;
          goto LABEL_16;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (id)_singleRelationshipKeysToCheckForChanges
{
  v2 = MEMORY[0x1E695DFA8];
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [v2 setWithArray:knownRelationshipSingleValueKeys];

  v5 = MEMORY[0x1E695DFD8];
  knownDerivedRelationshipKeys = [objc_opt_class() knownDerivedRelationshipKeys];
  v7 = [v5 setWithArray:knownDerivedRelationshipKeys];
  [v4 unionSet:v7];

  return v4;
}

- (id)_multiRelationshipKeysToCheckForChanges
{
  v2 = MEMORY[0x1E695DFD8];
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
  v4 = [v2 setWithArray:knownRelationshipMultiValueKeys];

  return v4;
}

- (BOOL)_hasChangesForKey:(id)key checkUnsaved:(BOOL)unsaved
{
  unsavedCopy = unsaved;
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!unsavedCopy || (-[EKObject changeSet](self, "changeSet"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasUnsavedChangeForKey:keyCopy], v7, (v8 & 1) == 0))
  {
    if ([(EKObject *)self isPropertyUnavailable:keyCopy])
    {
      LOBYTE(v9) = 0;
      goto LABEL_22;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__EKObject_Shared___hasChangesForKey_checkUnsaved___block_invoke;
    aBlock[3] = &__block_descriptor_33_e30_B16__0___EKFrozenMeltedPair__8l;
    v24 = unsavedCopy;
    v10 = _Block_copy(aBlock);
    _singleRelationshipKeysToCheckForChanges = [(EKObject *)self _singleRelationshipKeysToCheckForChanges];
    v12 = [_singleRelationshipKeysToCheckForChanges containsObject:keyCopy];

    if (v12)
    {
      v13 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:keyCopy];
      LOBYTE(v9) = v10[2](v10, v13);
    }

    else
    {
      _multiRelationshipKeysToCheckForChanges = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
      v15 = [_multiRelationshipKeysToCheckForChanges containsObject:keyCopy];

      if (!v15)
      {
        LOBYTE(v9) = 0;
LABEL_21:

        goto LABEL_22;
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v13 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:keyCopy, 0];
      v9 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        v16 = *v20;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if (v10[2](v10, *(*(&v19 + 1) + 8 * i)))
            {
              LOBYTE(v9) = 1;
              goto LABEL_20;
            }
          }

          v9 = [v13 countByEnumeratingWithState:&v19 objects:v25 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v9) = 1;
LABEL_22:

  return v9;
}

uint64_t __51__EKObject_Shared___hasChangesForKey_checkUnsaved___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 isFrozen] & 1) == 0)
  {
    if (*(a1 + 32) == 1)
    {
      v6 = [v4 hasUnsavedChanges];
    }

    else
    {
      v6 = [v4 hasChanges];
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isOnlyChangedKey:(id)key
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:key];
  LOBYTE(self) = [(EKObject *)self _areOnlyChangedKeys:v4];

  return self;
}

- (BOOL)_areOnlyChangedKeys:(id)keys
{
  v32 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  changeSet = [(EKObject *)self changeSet];
  hasUnsavedChanges = [changeSet hasUnsavedChanges];

  if (hasUnsavedChanges)
  {
    changeSet2 = [(EKObject *)self changeSet];
    changedKeys = [changeSet2 changedKeys];
  }

  else
  {
    changedKeys = 0;
  }

  if ([changedKeys count] && !objc_msgSend(changedKeys, "isSubsetOfSet:", keysCopy))
  {
    v20 = 0;
    goto LABEL_28;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  _singleRelationshipKeysToCheckForChanges = [(EKObject *)self _singleRelationshipKeysToCheckForChanges];
  v10 = [_singleRelationshipKeysToCheckForChanges countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(_singleRelationshipKeysToCheckForChanges);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      if ([(EKObject *)self _hasChangesForKey:v14])
      {
        if (![keysCopy containsObject:v14])
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [_singleRelationshipKeysToCheckForChanges countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    _singleRelationshipKeysToCheckForChanges = [(EKObject *)self _multiRelationshipKeysToCheckForChanges];
    v15 = [_singleRelationshipKeysToCheckForChanges countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (!v15)
    {
      v20 = 1;
      goto LABEL_26;
    }

    v16 = v15;
    v17 = *v23;
LABEL_17:
    v18 = 0;
    while (1)
    {
      if (*v23 != v17)
      {
        objc_enumerationMutation(_singleRelationshipKeysToCheckForChanges);
      }

      v19 = *(*(&v22 + 1) + 8 * v18);
      if ([(EKObject *)self _hasChangesForKey:v19])
      {
        if (![keysCopy containsObject:v19])
        {
          break;
        }
      }

      if (v16 == ++v18)
      {
        v16 = [_singleRelationshipKeysToCheckForChanges countByEnumeratingWithState:&v22 objects:v30 count:16];
        v20 = 1;
        if (v16)
        {
          goto LABEL_17;
        }

        goto LABEL_26;
      }
    }
  }

  v20 = 0;
LABEL_26:

LABEL_28:
  return v20;
}

- (id)_previousValueForKey:(id)key
{
  keyCopy = key;
  additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
  v6 = [additionalFrozenProperties objectForKeyedSubscript:keyCopy];

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v8 = 0;
  }

  else if (v6)
  {
    v8 = v6;
  }

  else
  {
    backingObject = [(EKObject *)self backingObject];
    v8 = [backingObject valueForKey:keyCopy];
  }

  return v8;
}

- (void)_addChangesFromObject:(id)object passingTest:(id)test ignoreRelations:(id)relations copyingBackingObjects:(BOOL)objects
{
  objectsCopy = objects;
  v77 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  testCopy = test;
  relationsCopy = relations;
  selfCopy = self;
  v45 = objectCopy;
  if (objectCopy != self)
  {
    context = objc_autoreleasePoolPush();
    changeSet = [(EKObject *)objectCopy changeSet];
    v39 = [[EKChangeSet alloc] initWithChangeSet:changeSet];
    v11 = v39;
    if (testCopy)
    {
      v12 = [EKChangeSet alloc];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __92__EKObject_Shared___addChangesFromObject_passingTest_ignoreRelations_copyingBackingObjects___block_invoke;
      v70[3] = &unk_1E77FF430;
      v73 = testCopy;
      v71 = objectCopy;
      selfCopy2 = self;
      v13 = [(EKChangeSet *)v12 initWithChangeSet:v39 filter:v70];

      v11 = v13;
    }

    [(EKObject *)self _addChanges:v11 copyingBackingObjects:?];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
    v15 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (v15)
    {
      v16 = *v67;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v67 != v16)
          {
            objc_enumerationMutation(knownRelationshipSingleValueKeys);
          }

          v18 = *(*(&v66 + 1) + 8 * i);
          if (!-[EKObject isPropertyUnavailable:](objectCopy, "isPropertyUnavailable:", v18) && ([relationsCopy containsObject:v18] & 1) == 0)
          {
            v19 = [(EKObject *)objectCopy valueForKey:v18];
            if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v19 forKey:v18])
            {
              v20 = [(EKObject *)selfCopy meltedAndCachedSingleRelationObjectForKey:v18];
              existingMeltedObject = [v19 existingMeltedObject];
              [v20 _addChangesFromObject:existingMeltedObject passingTest:testCopy ignoreRelations:0 copyingBackingObjects:objectsCopy];
            }
          }
        }

        v15 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v66 objects:v76 count:16];
      }

      while (v15);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = [objc_opt_class() knownRelationshipMultiValueKeys];
    v43 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
    if (v43)
    {
      v41 = *v63;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v63 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v62 + 1) + 8 * j);
          if (![(EKObject *)v45 isPropertyUnavailable:v22])
          {
            knownRelationshipWeakKeys = [objc_opt_class() knownRelationshipWeakKeys];
            if (([knownRelationshipWeakKeys containsObject:v22] & 1) == 0)
            {
              v24 = [relationsCopy containsObject:v22];

              if (v24)
              {
                continue;
              }

              v25 = [(EKObject *)selfCopy valueForKey:v22];
              v56 = 0;
              v57 = &v56;
              v58 = 0x3032000000;
              v59 = __Block_byref_object_copy__18;
              v60 = __Block_byref_object_dispose__18;
              v61 = 0;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 3221225472;
              aBlock[2] = __92__EKObject_Shared___addChangesFromObject_passingTest_ignoreRelations_copyingBackingObjects___block_invoke_2;
              aBlock[3] = &unk_1E77FD688;
              v55 = &v56;
              v53 = v45;
              v54 = v22;
              v26 = _Block_copy(aBlock);
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              knownRelationshipWeakKeys = v25;
              v27 = [knownRelationshipWeakKeys countByEnumeratingWithState:&v48 objects:v74 count:16];
              if (v27)
              {
                v28 = *v49;
                do
                {
                  for (k = 0; k != v27; ++k)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(knownRelationshipWeakKeys);
                    }

                    v30 = *(*(&v48 + 1) + 8 * k);
                    changeSet2 = [v30 changeSet];
                    hasChanges = [changeSet2 hasChanges];

                    if (hasChanges)
                    {
                      v26[2](v26);
                      v33 = v57[5];
                      uniqueIdentifier = [v30 uniqueIdentifier];
                      v35 = [v33 objectForKeyedSubscript:uniqueIdentifier];

                      if (v35)
                      {
                        [v30 _addChangesFromObject:v35 passingTest:testCopy ignoreRelations:0 copyingBackingObjects:objectsCopy];
                      }
                    }
                  }

                  v27 = [knownRelationshipWeakKeys countByEnumeratingWithState:&v48 objects:v74 count:16];
                }

                while (v27);
              }

              _Block_object_dispose(&v56, 8);
            }
          }
        }

        v43 = [obj countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v43);
    }

    objc_autoreleasePoolPop(context);
  }
}

void __92__EKObject_Shared___addChangesFromObject_passingTest_ignoreRelations_copyingBackingObjects___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [*(a1 + 32) valueForKey:*(a1 + 40)];
    v3 = objc_opt_new();
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v2;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = *(*(*(a1 + 48) + 8) + 40);
          v13 = [v11 uniqueIdentifier];
          [v12 setObject:v11 forKeyedSubscript:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)_addChangesFromObject:(id)object ignoringDifferencesFrom:(id)from changesToSkip:(id)skip copyingBackingObjects:(BOOL)objects
{
  objectsCopy = objects;
  v196 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  fromCopy = from;
  skipCopy = skip;
  if (objectCopy != self)
  {
    v119 = skipCopy;
    v125 = fromCopy;
    context = objc_autoreleasePoolPush();
    changeSet = [(EKObject *)objectCopy changeSet];
    changedSingleValueKeys = [changeSet changedSingleValueKeys];
    selfCopy = self;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v182 = 0u;
    v183 = 0u;
    v184 = 0u;
    v185 = 0u;
    v130 = selfCopy;
    knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
    v16 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v182 objects:v195 count:16];
    v128 = objectCopy;
    if (v16)
    {
      v17 = v16;
      v18 = *v183;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v183 != v18)
          {
            objc_enumerationMutation(knownRelationshipSingleValueKeys);
          }

          v20 = *(*(&v182 + 1) + 8 * i);
          if (![(EKObject *)objectCopy isPropertyUnavailable:v20])
          {
            v21 = [(EKObject *)objectCopy frozenOrMeltedCachedSingleRelationObjectForKey:v20];
            if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v21 forKey:v20])
            {
              existingMeltedObject = [v21 existingMeltedObject];
              changeSet2 = [existingMeltedObject changeSet];
              if ([changeSet2 hasChanges])
              {
                [v14 addObject:v20];
              }

              objectCopy = v128;
            }
          }
        }

        v17 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v182 objects:v195 count:16];
      }

      while (v17);
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    knownSingleValueKeysForComparison = [objc_opt_class() knownSingleValueKeysForComparison];
    v25 = [knownSingleValueKeysForComparison countByEnumeratingWithState:&v178 objects:v194 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v179;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v179 != v27)
          {
            objc_enumerationMutation(knownSingleValueKeysForComparison);
          }

          v29 = *(*(&v178 + 1) + 8 * j);
          if (([changedSingleValueKeys containsObject:v29] & 1) == 0 && (objc_msgSend(v14, "containsObject:", v29) & 1) == 0)
          {
            [v13 addObject:v29];
          }
        }

        v26 = [knownSingleValueKeysForComparison countByEnumeratingWithState:&v178 objects:v194 count:16];
      }

      while (v26);
    }

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    knownDerivedAndSingleValueRelationshipKeys = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];
    v31 = [knownDerivedAndSingleValueRelationshipKeys countByEnumeratingWithState:&v174 objects:v193 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v175;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v175 != v33)
          {
            objc_enumerationMutation(knownDerivedAndSingleValueRelationshipKeys);
          }

          v35 = *(*(&v174 + 1) + 8 * k);
          if (([changedSingleValueKeys containsObject:v35] & 1) == 0 && (objc_msgSend(v14, "containsObject:", v35) & 1) == 0)
          {
            [v13 addObject:v35];
          }
        }

        v32 = [knownDerivedAndSingleValueRelationshipKeys countByEnumeratingWithState:&v174 objects:v193 count:16];
      }

      while (v32);
    }

    knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
    [v13 addObjectsFromArray:knownRelationshipMultiValueKeys];

    v172[0] = MEMORY[0x1E69E9820];
    v172[1] = 3221225472;
    v172[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke;
    v172[3] = &unk_1E77FF458;
    v172[4] = v130;
    v115 = v13;
    v173 = v115;
    v37 = [EKDiff diffBetweenObject:v125 andObject:v130 fetchKeysToIgnoreBlock:v172];
    v38 = [EKChangeSet alloc];
    v169[0] = MEMORY[0x1E69E9820];
    v169[1] = 3221225472;
    v169[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_3;
    v169[3] = &unk_1E77FF480;
    v133 = v119;
    v170 = v133;
    v39 = v37;
    v171 = v39;
    v40 = [(EKChangeSet *)v38 initWithChangeSet:changeSet filter:v169];
    multiValueAdditions = [(EKChangeSet *)v40 multiValueAdditions];
    v166[0] = MEMORY[0x1E69E9820];
    v166[1] = 3221225472;
    v166[2] = __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_4;
    v166[3] = &unk_1E77FF4A8;
    v166[4] = v130;
    v131 = v40;
    v167 = v131;
    v168 = &__block_literal_global_46;
    [multiValueAdditions enumerateKeysAndObjectsUsingBlock:v166];

    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    obj = v14;
    v42 = [obj countByEnumeratingWithState:&v162 objects:v192 count:16];
    objectCopy = v128;
    v126 = v39;
    if (v42)
    {
      v43 = v42;
      v44 = *v163;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v163 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v162 + 1) + 8 * m);
          relationshipSingleValueModifies = [v39 relationshipSingleValueModifies];
          v48 = [relationshipSingleValueModifies objectForKeyedSubscript:v46];

          if (!v48)
          {
            v49 = [v125 frozenOrMeltedCachedSingleRelationObjectForKey:v46];
            v50 = [(EKObject *)v130 meltedAndCachedSingleRelationObjectForKey:v46];
            semanticIdentifier = [v49 semanticIdentifier];
            semanticIdentifier2 = [v50 semanticIdentifier];
            v53 = [semanticIdentifier isEqualToString:semanticIdentifier2];

            if (v53)
            {
              v54 = [(EKObject *)v128 frozenOrMeltedCachedSingleRelationObjectForKey:v46];
              existingMeltedObject2 = [v54 existingMeltedObject];
              if (existingMeltedObject2)
              {
                existingMeltedObject3 = [v49 existingMeltedObject];
                [v50 _addChangesFromObject:existingMeltedObject2 ignoringDifferencesFrom:existingMeltedObject3 changesToSkip:v133 copyingBackingObjects:objectsCopy];
              }
            }

            objectCopy = v128;
            v39 = v126;
          }
        }

        v43 = [obj countByEnumeratingWithState:&v162 objects:v192 count:16];
      }

      while (v43);
    }

    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v57 = v130;
    knownRelationshipMultiValueKeys2 = [objc_opt_class() knownRelationshipMultiValueKeys];
    v59 = [knownRelationshipMultiValueKeys2 countByEnumeratingWithState:&v158 objects:v191 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v159;
      v121 = *v159;
      v122 = knownRelationshipMultiValueKeys2;
      do
      {
        v62 = 0;
        v123 = v60;
        do
        {
          if (*v159 != v61)
          {
            objc_enumerationMutation(knownRelationshipMultiValueKeys2);
          }

          v63 = *(*(&v158 + 1) + 8 * v62);
          if (![(EKObject *)objectCopy isPropertyUnavailable:v63])
          {
            knownRelationshipWeakKeys = [objc_opt_class() knownRelationshipWeakKeys];
            if ([knownRelationshipWeakKeys containsObject:v63])
            {

              goto LABEL_110;
            }

            v65 = v63;
            v66 = [v133 containsObject:v63];

            if ((v66 & 1) == 0)
            {
              v124 = v62;
              v135 = objc_opt_new();
              v67 = objc_opt_new();
              v68 = objc_opt_new();
              v136 = v65;
              v69 = [(EKObject *)objectCopy frozenOrMeltedCachedMultiRelationObjectsForKey:v65];
              v154 = 0u;
              v155 = 0u;
              v156 = 0u;
              v157 = 0u;
              v137 = v69;
              v70 = [v69 countByEnumeratingWithState:&v154 objects:v190 count:16];
              if (!v70)
              {
                goto LABEL_71;
              }

              v71 = v70;
              v72 = *v155;
              while (1)
              {
                for (n = 0; n != v71; ++n)
                {
                  if (*v155 != v72)
                  {
                    objc_enumerationMutation(v137);
                  }

                  v74 = *(*(&v154 + 1) + 8 * n);
                  eventStore = [(EKObject *)v57 eventStore];
                  v76 = [v74 meltedObjectInStore:eventStore];

                  if ([v74 isNew])
                  {
                    semanticIdentifier3 = [v76 semanticIdentifier];
                    if (!semanticIdentifier3)
                    {
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    committedCopy = [v76 committedCopy];
                    semanticIdentifier3 = [committedCopy semanticIdentifier];

                    if (!semanticIdentifier3)
                    {
                      goto LABEL_69;
                    }
                  }

                  if ([v76 hasChanges] && !-[EKObject _multiValueRelatedObject:isAlsoASingleValueRelatedObjectForKey:](objectCopy, "_multiValueRelatedObject:isAlsoASingleValueRelatedObjectForKey:", v76, v136))
                  {
                    [v135 setObject:v76 forKeyedSubscript:semanticIdentifier3];
                  }

LABEL_69:
                }

                v71 = [v137 countByEnumeratingWithState:&v154 objects:v190 count:16];
                if (!v71)
                {
LABEL_71:
                  v79 = v135;
                  if ([v135 count])
                  {
                    v80 = [v125 frozenOrMeltedCachedMultiRelationObjectsForKey:v136];
                    v150 = 0u;
                    v151 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    v134 = v80;
                    v81 = [v80 countByEnumeratingWithState:&v150 objects:v189 count:16];
                    if (v81)
                    {
                      v82 = v81;
                      v83 = *v151;
                      do
                      {
                        for (ii = 0; ii != v82; ++ii)
                        {
                          if (*v151 != v83)
                          {
                            objc_enumerationMutation(v134);
                          }

                          v85 = *(*(&v150 + 1) + 8 * ii);
                          semanticIdentifier4 = [v85 semanticIdentifier];
                          [v67 setObject:v85 forKeyedSubscript:semanticIdentifier4];
                        }

                        v82 = [v134 countByEnumeratingWithState:&v150 objects:v189 count:16];
                      }

                      while (v82);
                    }

                    v57 = v130;
                    v87 = [(EKObject *)v130 frozenOrMeltedCachedMultiRelationObjectsForKey:v136];
                    v146 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v88 = v87;
                    v89 = [v88 countByEnumeratingWithState:&v146 objects:v188 count:16];
                    v129 = v88;
                    if (v89)
                    {
                      v90 = v89;
                      v91 = *v147;
                      while (2)
                      {
                        for (jj = 0; jj != v90; ++jj)
                        {
                          if (*v147 != v91)
                          {
                            objc_enumerationMutation(v129);
                          }

                          semanticIdentifier5 = [*(*(&v146 + 1) + 8 * jj) semanticIdentifier];
                          v94 = [v135 objectForKeyedSubscript:semanticIdentifier5];

                          if (v94)
                          {

                            v95 = [(EKObject *)v130 meltedAndCachedMultiRelationObjectsForKey:v136];
                            v142 = 0u;
                            v143 = 0u;
                            v144 = 0u;
                            v145 = 0u;
                            v132 = v95;
                            v96 = [v95 countByEnumeratingWithState:&v142 objects:v187 count:16];
                            if (v96)
                            {
                              v97 = v96;
                              v98 = *v143;
                              do
                              {
                                for (kk = 0; kk != v97; ++kk)
                                {
                                  if (*v143 != v98)
                                  {
                                    objc_enumerationMutation(v132);
                                  }

                                  v100 = *(*(&v142 + 1) + 8 * kk);
                                  semanticIdentifier6 = [v100 semanticIdentifier];
                                  v102 = [v79 objectForKeyedSubscript:semanticIdentifier6];
                                  v103 = [v67 objectForKeyedSubscript:semanticIdentifier6];
                                  v104 = v103;
                                  if (v102)
                                  {
                                    existingMeltedObject4 = [v103 existingMeltedObject];
                                    [v100 _addChangesFromObject:v102 ignoringDifferencesFrom:existingMeltedObject4 changesToSkip:v133 copyingBackingObjects:1];

                                    v79 = v135;
                                  }
                                }

                                v97 = [v132 countByEnumeratingWithState:&v142 objects:v187 count:16];
                              }

                              while (v97);
                            }

                            v106 = [(EKObject *)v130 frozenOrMeltedCachedMultiRelationObjectsForKey:v136];
                            v138 = 0u;
                            v139 = 0u;
                            v140 = 0u;
                            v141 = 0u;
                            v107 = [v106 countByEnumeratingWithState:&v138 objects:v186 count:16];
                            objectCopy = v128;
                            if (v107)
                            {
                              v108 = v107;
                              v109 = *v139;
                              do
                              {
                                for (mm = 0; mm != v108; ++mm)
                                {
                                  if (*v139 != v109)
                                  {
                                    objc_enumerationMutation(v106);
                                  }

                                  v111 = *(*(&v138 + 1) + 8 * mm);
                                  semanticIdentifier7 = [v111 semanticIdentifier];
                                  v113 = [v68 containsObject:semanticIdentifier7];

                                  if (v113)
                                  {
                                    semanticIdentifier8 = [MEMORY[0x1E695DFD8] setWithObject:v111];
                                    [(EKChangeSet *)v131 removeFromChanges:semanticIdentifier8 forMultiValueKey:v136 basedOn:0 and:0 objectIdentifierBlock:&__block_literal_global_46];
                                  }

                                  else
                                  {
                                    semanticIdentifier8 = [v111 semanticIdentifier];
                                    [v68 addObject:semanticIdentifier8];
                                  }
                                }

                                v108 = [v106 countByEnumeratingWithState:&v138 objects:v186 count:16];
                              }

                              while (v108);
                            }

                            v57 = v130;
                            v88 = v132;
                            goto LABEL_108;
                          }
                        }

                        v90 = [v129 countByEnumeratingWithState:&v146 objects:v188 count:16];
                        if (v90)
                        {
                          continue;
                        }

                        break;
                      }

                      v88 = v129;
                      v57 = v130;
                    }

LABEL_108:
                  }

                  v39 = v126;
                  v61 = v121;
                  knownRelationshipMultiValueKeys2 = v122;
                  v60 = v123;
                  v62 = v124;

                  break;
                }
              }
            }
          }

LABEL_110:
          ++v62;
        }

        while (v62 != v60);
        v60 = [knownRelationshipMultiValueKeys2 countByEnumeratingWithState:&v158 objects:v191 count:16];
      }

      while (v60);
    }

    [(EKObject *)v57 _addChanges:v131 copyingBackingObjects:objectsCopy objectIdentifierBlock:&__block_literal_global_46];
    objc_autoreleasePoolPop(context);
    skipCopy = v119;
    fromCopy = v125;
  }
}

id __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3 == a2 || v3 == a3)
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = [EKDiff keysToIgnoreForComparingUIVisiblePropertiesOfObject:a2 andObject:a3];
  }

  return v5;
}

uint64_t __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7 && ([v7 containsObject:v5] & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) differentSingleValueKeys];
    if ([v9 containsObject:v5])
    {
      v8 = 0;
    }

    else
    {
      v10 = [*(a1 + 40) differentRelationshipSingleValueKeys];
      v8 = [v10 containsObject:v5] ^ 1;
    }
  }

  return v8;
}

void __102__EKObject_Shared___addChangesFromObject_ignoringDifferencesFrom_changesToSkip_copyingBackingObjects___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v24 = a1;
  v25 = v5;
  v7 = [*(a1 + 32) frozenOrMeltedCachedMultiRelationObjectsForKey:v5];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v30 + 1) + 8 * i) semanticIdentifier];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [v21 semanticIdentifier];
        v23 = [v9 containsObject:v22];

        if (v23)
        {
          [v8 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  if ([v8 count])
  {
    [*(v24 + 40) removeFromChanges:v8 forMultiValueKey:v25 basedOn:0 and:0 objectIdentifierBlock:*(v24 + 48)];
  }
}

+ (void)addChangesFromObject:(id)object toObjects:(id)objects except:(id)except
{
  objectCopy = object;
  objectsCopy = objects;
  exceptCopy = except;
  if ([exceptCopy count])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __58__EKObject_Shared__addChangesFromObject_toObjects_except___block_invoke;
    v15 = &unk_1E77FF4D0;
    v16 = objectCopy;
    v17 = exceptCopy;
    v11 = _Block_copy(&v12);
  }

  else
  {
    v11 = 0;
  }

  [self _addChangesFromObject:objectCopy toObjects:objectsCopy passingTest:v11 copyingBackingObjects:{1, v12, v13, v14, v15}];
}

uint64_t __58__EKObject_Shared__addChangesFromObject_toObjects_except___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return [*(a1 + 40) containsObject:{a2, v4, v5}] ^ 1;
  }

  else
  {
    return 1;
  }
}

+ (void)addChangesFromObject:(id)object toObjects:(id)objects keep:(id)keep
{
  objectCopy = object;
  objectsCopy = objects;
  keepCopy = keep;
  if ([keepCopy count])
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __56__EKObject_Shared__addChangesFromObject_toObjects_keep___block_invoke;
    v15 = &unk_1E77FF4D0;
    v16 = objectCopy;
    v17 = keepCopy;
    v11 = _Block_copy(&v12);
  }

  else
  {
    v11 = 0;
  }

  [self _addChangesFromObject:objectCopy toObjects:objectsCopy passingTest:v11 copyingBackingObjects:{1, v12, v13, v14, v15}];
}

uint64_t __56__EKObject_Shared__addChangesFromObject_toObjects_keep___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 32) == a4)
  {
    return [*(a1 + 40) containsObject:a2];
  }

  else
  {
    return 1;
  }
}

+ (void)_addChangesFromObject:(id)object toObjects:(id)objects passingTest:(id)test copyingBackingObjects:(BOOL)backingObjects
{
  backingObjectsCopy = backingObjects;
  v63 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objectsCopy = objects;
  testCopy = test;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v11 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = [objectCopy cachedMeltedObjectForSingleValueKey:{v15, objectsCopy}];
        v17 = v16;
        if (!v16 || ([v16 isNew] & 1) != 0 || (objc_msgSend(v17, "hasChanges") & 1) == 0)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v12);
  }

  v40 = v9;

  knownRelationshipWeakKeys = [objc_opt_class() knownRelationshipWeakKeys];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = objectCopy;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v19 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v52;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v51 + 1) + 8 * j);
        if (([knownRelationshipWeakKeys containsObject:{v23, objectsCopy}] & 1) == 0)
        {
          v24 = knownRelationshipWeakKeys;
          v25 = [v41 cachedMeltedObjectsForMultiValueKey:v23];
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v48;
            while (2)
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v48 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v47 + 1) + 8 * k);
                if ([v31 isNew] & 1) == 0 && (objc_msgSend(v31, "hasChanges"))
                {

                  goto LABEL_29;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v47 objects:v60 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          [v40 addObject:v23];
LABEL_29:

          knownRelationshipWeakKeys = v24;
        }
      }

      v20 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v20);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v32 = objectsCopy;
  v33 = [v32 countByEnumeratingWithState:&v43 objects:v59 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v44;
    do
    {
      for (m = 0; m != v34; ++m)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v32);
        }

        [*(*(&v43 + 1) + 8 * m) _addChangesFromObject:v41 passingTest:testCopy ignoreRelations:v40 copyingBackingObjects:{backingObjectsCopy, objectsCopy}];
      }

      v34 = [v32 countByEnumeratingWithState:&v43 objects:v59 count:16];
    }

    while (v34);
  }
}

- (void)_addChanges:(id)changes copyingBackingObjects:(BOOL)objects objectIdentifierBlock:(id)block
{
  objectsCopy = objects;
  blockCopy = block;
  changesCopy = changes;
  [(EKObject *)self _initChangeSetIfNone];
  if (objectsCopy)
  {
    v10 = MEMORY[0x1E695DFD8];
    knownRelationshipWeakKeys = [objc_opt_class() knownRelationshipWeakKeys];
    v12 = [v10 setWithArray:knownRelationshipWeakKeys];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__EKObject_Shared___addChanges_copyingBackingObjects_objectIdentifierBlock___block_invoke;
    aBlock[3] = &unk_1E77FF4F8;
    v18 = v12;
    v13 = v12;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = &__block_literal_global_51;
  }

  changeSet = [(EKObject *)self changeSet];
  [changeSet addChanges:changesCopy shouldCopyKeyCallback:v14 objectIdentifierBlock:blockCopy];

  changeSet2 = [(EKObject *)self changeSet];
  [(EKObject *)self updateAfterApplyingChanges:changeSet2 objectIdentifierBlock:blockCopy];
}

- (void)applyChanges:(id)changes
{
  changesCopy = changes;
  v4 = [EKChangeSet alloc];
  keysToIgnoreForApplyingChanges = [objc_opt_class() keysToIgnoreForApplyingChanges];
  v6 = [(EKChangeSet *)v4 initWithChangeSet:changesCopy changesToSkip:keysToIgnoreForApplyingChanges];
  [(EKObject *)self setChangeSet:v6];

  [(EKObject *)self updateAfterApplyingChanges:changesCopy objectIdentifierBlock:0];
}

- (id)singleChangedValueForKey:(id)key
{
  keyCopy = key;
  if ([(EKObject *)self _isPropertyUnavailable:keyCopy convertToFullObjectIfUnavailable:1])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObject(Shared) singleChangedValueForKey:];
    }

    v5 = 0;
  }

  else
  {
    changeSet = [(EKObject *)self changeSet];

    if (changeSet)
    {
      changeSet2 = [(EKObject *)self changeSet];
      backingObject = [(EKObject *)self backingObject];
      additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
      v10 = [changeSet2 valueForSingleValueKey:keyCopy basedOn:backingObject and:additionalFrozenProperties];
    }

    else
    {
      additionalFrozenProperties2 = [(EKObject *)self additionalFrozenProperties];
      v12 = [additionalFrozenProperties2 objectForKeyedSubscript:keyCopy];

      if (v12)
      {
        changeSet2 = [(EKObject *)self additionalFrozenProperties];
        [changeSet2 objectForKeyedSubscript:keyCopy];
      }

      else
      {
        changeSet2 = [(EKObject *)self backingObject];
        [changeSet2 valueForKey:keyCopy];
      }
      v10 = ;
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (void)setSingleChangedValue:(id)value forKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:keyCopy convertToFullObjectIfUnavailable:1])
  {
    changeSet = [(EKObject *)self changeSet];
    backingObject = [(EKObject *)self backingObject];
    additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
    [changeSet changeSingleValue:valueCopy forKey:keyCopy basedOn:backingObject and:additionalFrozenProperties];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    changeSet = v8;
    additionalFrozenProperties = [(EKObject *)self backingObject];
    backingObject = [MEMORY[0x1E696AF00] callStackSymbols];
    v12 = 138413058;
    v13 = valueCopy;
    v14 = 2112;
    v15 = keyCopy;
    v16 = 2112;
    v17 = additionalFrozenProperties;
    v18 = 2112;
    v19 = backingObject;
    _os_log_error_impl(&dword_1A805E000, changeSet, OS_LOG_TYPE_ERROR, "Unable to set single changed value %@. Property %@ was unavailable on backingObject %@. %@", &v12, 0x2Au);
LABEL_5:
  }
}

- (id)multiChangedObjectValuesForKey:(id)key
{
  keyCopy = key;
  if ([(EKObject *)self _isPropertyUnavailable:keyCopy convertToFullObjectIfUnavailable:1])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [EKObject(Shared) singleChangedValueForKey:];
    }

    v5 = 0;
  }

  else
  {
    changeSet = [(EKObject *)self changeSet];

    if (changeSet)
    {
      changeSet2 = [(EKObject *)self changeSet];
      backingObject = [(EKObject *)self backingObject];
      additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
      v10 = [changeSet2 valuesForMultiValueKey:keyCopy basedOn:backingObject and:additionalFrozenProperties];
    }

    else
    {
      additionalFrozenProperties2 = [(EKObject *)self additionalFrozenProperties];
      v12 = [additionalFrozenProperties2 objectForKeyedSubscript:keyCopy];

      if (v12)
      {
        changeSet2 = [(EKObject *)self additionalFrozenProperties];
        [changeSet2 objectForKeyedSubscript:keyCopy];
      }

      else
      {
        changeSet2 = [(EKObject *)self backingObject];
        [changeSet2 valueForKey:keyCopy];
      }
      v10 = ;
    }

    v13 = objc_opt_class();
    if (v13 == objc_opt_class())
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  return v5;
}

- (void)addMultiChangedObjectValue:(id)value forKey:(id)key
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [v6 setWithObject:value];
  [(EKObject *)self addMultiChangedObjectValues:v8 forKey:keyCopy];
}

- (void)addMultiChangedObjectValues:(id)values forKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  keyCopy = key;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:keyCopy convertToFullObjectIfUnavailable:1])
  {
    changeSet = [(EKObject *)self changeSet];
    backingObject = [(EKObject *)self backingObject];
    additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
    [changeSet addToChanges:valuesCopy forMultiValueKey:keyCopy basedOn:backingObject and:additionalFrozenProperties];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    changeSet = v8;
    additionalFrozenProperties = [(EKObject *)self backingObject];
    backingObject = [MEMORY[0x1E696AF00] callStackSymbols];
    v12 = 138413058;
    v13 = valuesCopy;
    v14 = 2112;
    v15 = keyCopy;
    v16 = 2112;
    v17 = additionalFrozenProperties;
    v18 = 2112;
    v19 = backingObject;
    _os_log_error_impl(&dword_1A805E000, changeSet, OS_LOG_TYPE_ERROR, "Unable to add multi changed object values %@. Property %@ was unavailable on backingObject %@. %@", &v12, 0x2Au);
LABEL_5:
  }
}

- (void)removeMultiChangedObjectValue:(id)value forKey:(id)key
{
  v6 = MEMORY[0x1E695DFD8];
  keyCopy = key;
  v8 = [v6 setWithObject:value];
  [(EKObject *)self removeMultiChangedObjectValues:v8 forKey:keyCopy];
}

- (void)removeMultiChangedObjectValues:(id)values forKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  keyCopy = key;
  [(EKObject *)self _initChangeSetIfNone];
  if (![(EKObject *)self _isPropertyUnavailable:keyCopy convertToFullObjectIfUnavailable:1])
  {
    changeSet = [(EKObject *)self changeSet];
    backingObject = [(EKObject *)self backingObject];
    additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
    [changeSet removeFromChanges:valuesCopy forMultiValueKey:keyCopy basedOn:backingObject and:additionalFrozenProperties];
    goto LABEL_5;
  }

  v8 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    changeSet = v8;
    additionalFrozenProperties = [(EKObject *)self backingObject];
    backingObject = [MEMORY[0x1E696AF00] callStackSymbols];
    v12 = 138413058;
    v13 = valuesCopy;
    v14 = 2112;
    v15 = keyCopy;
    v16 = 2112;
    v17 = additionalFrozenProperties;
    v18 = 2112;
    v19 = backingObject;
    _os_log_error_impl(&dword_1A805E000, changeSet, OS_LOG_TYPE_ERROR, "Unable to remove multi changed object values %@. Property %@ was unavailable on backingObject %@. %@", &v12, 0x2Au);
LABEL_5:
  }
}

- (void)replaceMultiChangedObjectValuesWithObjectValues:(id)values forKey:(id)key
{
  keyCopy = key;
  valuesCopy = values;
  v7 = [(EKObject *)self multiChangedObjectValuesForKey:keyCopy];
  [(EKObject *)self removeMultiChangedObjectValues:v7 forKey:keyCopy];

  [(EKObject *)self addMultiChangedObjectValues:valuesCopy forKey:keyCopy];
}

- (id)changedKeys
{
  v32 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  isDeleted = [changeSet isDeleted];

  if (isDeleted)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E695DFA8];
    changeSet2 = [(EKObject *)self changeSet];
    changedKeys = [changeSet2 changedKeys];
    v5 = [v6 setWithSet:changedKeys];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
    v10 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(knownRelationshipSingleValueKeys);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ([(EKObject *)self _hasChangesForKey:v14])
          {
            [v5 addObject:v14];
          }
        }

        v11 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
    v16 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(knownRelationshipMultiValueKeys);
          }

          v20 = *(*(&v22 + 1) + 8 * j);
          if ([(EKObject *)self _hasChangesForKey:v20])
          {
            [v5 addObject:v20];
          }
        }

        v17 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }
  }

  return v5;
}

- (void)_rollbackCommon
{
  v40 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  [changeSet rollbackChanges];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v5 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        if ([(EKObject *)self _hasChangesForKey:v9])
        {
          v10 = [(EKObject *)self valueForKey:v9];
          if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v10 forKey:v9])
          {
            existingMeltedObject = [v10 existingMeltedObject];
            [existingMeltedObject rollback];
          }
        }
      }

      v6 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v6);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v12 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * j);
        if ([(EKObject *)self _hasChangesForKey:v16])
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v17 = [(EKObject *)self valueForKey:v16];
          v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v26;
            do
            {
              for (k = 0; k != v19; ++k)
              {
                if (*v26 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v25 + 1) + 8 * k);
                if ([objc_opt_class() isMeltedAndNotWeakRelationshipObject:v22 forKey:v16])
                {
                  existingMeltedObject2 = [v22 existingMeltedObject];
                  [existingMeltedObject2 rollback];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
            }

            while (v19);
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
}

- (BOOL)_resetIfBackingObjectIsOfClass:(Class)class fetchResetFrozenObjectBlock:(id)block
{
  blockCopy = block;
  backingObject = [(EKObject *)self backingObject];
  if (objc_opt_isKindOfClass())
  {
    v7 = blockCopy[2](blockCopy, backingObject);
    v8 = v7;
    v9 = v7 != 0;
    if (v7)
    {
      v10 = v7 == backingObject;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      [(EKObject *)self _resetWithFrozenObject:v7];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_resetCommon
{
  v39 = *MEMORY[0x1E69E9840];
  isDeleted = [(EKObject *)self isDeleted];
  [(EKObject *)self setChangeSet:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v4 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v33;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v33 != v6)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v8 = *(*(&v32 + 1) + 8 * i);
        v9 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:v8];
        if (v9 && ([objc_opt_class() isWeakRelationObject:v9 forKey:v8] & 1) == 0)
        {
          [v9 reset];
        }
      }

      v5 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v5);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v10 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * j);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [(EKObject *)self frozenOrMeltedCachedMultiRelationObjectsForKey:v14];
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v24 + 1) + 8 * k);
              if (([objc_opt_class() isWeakRelationObject:v20 forKey:v14] & 1) == 0)
              {
                [v20 reset];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v17);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v11);
  }

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
  if (isDeleted)
  {
    [(EKObject *)self markAsDeleted];
  }

  return 1;
}

- (BOOL)_refreshable
{
  v23 = *MEMORY[0x1E69E9840];
  persistentObject = [(EKObject *)self persistentObject];
  isNew = [persistentObject isNew];

  if (isNew)
  {
    return 0;
  }

  persistentObject2 = [(EKObject *)self persistentObject];
  if ([persistentObject2 _isPendingUpdate] & 1) != 0 || (objc_msgSend(persistentObject2, "_isPendingDelete"))
  {
    v5 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    eventStore = [(EKObject *)self eventStore];
    objectsPendingCommit = [eventStore objectsPendingCommit];

    v9 = [objectsPendingCommit countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(objectsPendingCommit);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          objectID = [persistentObject2 objectID];
          objectID2 = [v13 objectID];
          v16 = [objectID isEqual:objectID2];

          if (v16)
          {
            v5 = 0;
            goto LABEL_16;
          }
        }

        v10 = [objectsPendingCommit countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 1;
LABEL_16:
  }

  return v5;
}

- (BOOL)_refreshCommon
{
  selfCopy = self;
  v107 = *MEMORY[0x1E69E9840];
  changeSet = [(EKObject *)self changeSet];
  v64 = [changeSet copy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v5 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v97 objects:v106 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v98;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v98 != v7)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v9 = *(*(&v97 + 1) + 8 * i);
        v10 = [(EKObject *)selfCopy cachedMeltedObjectForSingleValueKey:v9];
        if (v10)
        {
          if (([objc_opt_class() isWeakRelationObject:v10 forKey:v9] & 1) == 0)
          {
            changeSet2 = [v10 changeSet];

            if (changeSet2)
            {
              changeSet3 = [v10 changeSet];
              v13 = [changeSet3 copy];
              [dictionary setObject:v13 forKeyedSubscript:v9];
            }
          }
        }
      }

      v6 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v97 objects:v106 count:16];
    }

    while (v6);
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v75 = selfCopy;
  v65 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
  if (v65)
  {
    v63 = *v94;
    do
    {
      for (j = 0; j != v65; j = j + 1)
      {
        if (*v94 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v93 + 1) + 8 * j);
        v16 = [(EKObject *)selfCopy cachedMeltedObjectsForMultiValueKey:v15];
        multiValueAdditions = [v64 multiValueAdditions];
        v18 = [multiValueAdditions objectForKey:v15];

        if (v16)
        {
          v68 = j;
          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
          array = [MEMORY[0x1E695DF70] array];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v66 = v16;
          v19 = v16;
          v20 = [v19 countByEnumeratingWithState:&v89 objects:v104 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v90;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v90 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v89 + 1) + 8 * k);
                if (([objc_opt_class() isWeakRelationObject:v24 forKey:v15] & 1) == 0)
                {
                  changeSet4 = [v24 changeSet];
                  if (changeSet4)
                  {
                    v26 = changeSet4;
                    uniqueIdentifier = [v24 uniqueIdentifier];

                    if (uniqueIdentifier)
                    {
                      changeSet5 = [v24 changeSet];
                      v29 = [changeSet5 copy];
                      uniqueIdentifier2 = [v24 uniqueIdentifier];
                      [dictionary3 setObject:v29 forKeyedSubscript:uniqueIdentifier2];

                      selfCopy = v75;
                    }
                  }
                }

                backingObject = [v24 backingObject];
                v32 = [v18 containsObject:backingObject];

                if (v32)
                {
                  [array addObject:v24];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v89 objects:v104 count:16];
            }

            while (v21);
          }

          if ([dictionary3 count])
          {
            [dictionary setObject:dictionary3 forKeyedSubscript:v15];
          }

          v16 = v66;
          j = v68;
          if ([array count])
          {
            [dictionary2 setObject:array forKey:v15];
          }
        }
      }

      v65 = [obj countByEnumeratingWithState:&v93 objects:v105 count:16];
    }

    while (v65);
  }

  _reset = [(EKObject *)selfCopy _reset];
  v34 = _reset;
  if (_reset)
  {
    v67 = _reset;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __34__EKObject_Shared___refreshCommon__block_invoke;
    v88[3] = &unk_1E77FF540;
    v88[4] = selfCopy;
    [dictionary2 enumerateKeysAndObjectsUsingBlock:v88];
    [(EKObject *)selfCopy updateMultiValueCacheForChangeSet:v64 preservingExistingAdds:1 objectIdentifierBlock:0];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    knownRelationshipSingleValueKeys2 = [objc_opt_class() knownRelationshipSingleValueKeys];
    v36 = [knownRelationshipSingleValueKeys2 countByEnumeratingWithState:&v84 objects:v103 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v85;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v85 != v38)
          {
            objc_enumerationMutation(knownRelationshipSingleValueKeys2);
          }

          v40 = *(*(&v84 + 1) + 8 * m);
          v41 = [dictionary objectForKeyedSubscript:v40];
          if (v41)
          {
            v42 = [(EKObject *)selfCopy valueForKey:v40];
            eventStore = [(EKObject *)selfCopy eventStore];
            v44 = [v42 meltedObjectInStore:eventStore];

            [v44 setChangeSet:v41];
            [(EKObject *)selfCopy setValue:v44 forKey:v40];
          }
        }

        v37 = [knownRelationshipSingleValueKeys2 countByEnumeratingWithState:&v84 objects:v103 count:16];
      }

      while (v37);
    }

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
    v74 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v80 objects:v102 count:16];
    if (v74)
    {
      v72 = *v81;
      do
      {
        for (n = 0; n != v74; ++n)
        {
          if (*v81 != v72)
          {
            objc_enumerationMutation(knownRelationshipMultiValueKeys);
          }

          v46 = *(*(&v80 + 1) + 8 * n);
          v47 = [dictionary objectForKeyedSubscript:v46];
          if ([v47 count])
          {
            v48 = [(EKObject *)selfCopy valueForKey:v46];
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v49 = [v48 countByEnumeratingWithState:&v76 objects:v101 count:16];
            if (v49)
            {
              v50 = v49;
              v51 = *v77;
              do
              {
                for (ii = 0; ii != v50; ++ii)
                {
                  if (*v77 != v51)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v53 = *(*(&v76 + 1) + 8 * ii);
                  uniqueIdentifier3 = [v53 uniqueIdentifier];

                  if (uniqueIdentifier3)
                  {
                    [v53 uniqueIdentifier];
                    v56 = v55 = selfCopy;
                    v57 = [v47 objectForKeyedSubscript:v56];

                    eventStore2 = [(EKObject *)v55 eventStore];
                    v59 = [v53 meltedObjectInStore:eventStore2];

                    if (v57)
                    {
                      [v59 setChangeSet:v57];
                    }

                    selfCopy = v75;
                  }
                }

                v50 = [v48 countByEnumeratingWithState:&v76 objects:v101 count:16];
              }

              while (v50);
            }
          }
        }

        v74 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v80 objects:v102 count:16];
      }

      while (v74);
    }

    [(EKObject *)selfCopy setChangeSet:v64];
    v34 = v67;
  }

  return v34;
}

void __34__EKObject_Shared___refreshCommon__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _addCachedMeltedObject:*(*(&v11 + 1) + 8 * v10++) forMultiValueKey:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_resetWithFrozenObject:(id)object
{
  objectCopy = object;
  [(EKObject *)self setBackingObject:objectCopy];
  [(EKObject *)self setAdditionalFrozenProperties:0];
  [(EKObject *)self _applyDefinedAfterFirstSaveFrom:objectCopy];

  [(EKObject *)self _resetAfterUpdatingChangeSetOrBackingObject];
}

- (void)_applyKnownImmutableValuesFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (fromCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    knownImmutableKeys = [objc_opt_class() knownImmutableKeys];
    v6 = [knownImmutableKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = v6;
    v8 = *v16;
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(knownImmutableKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        additionalFrozenProperties = [(EKObject *)self additionalFrozenProperties];
        v12 = [additionalFrozenProperties objectForKeyedSubscript:v10];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = [fromCopy valueForKey:v10];

          if (!v13)
          {
            goto LABEL_12;
          }
        }

        v14 = objc_opt_class();
        if (v14 != objc_opt_class())
        {
          [(EKObject *)self setValue:v13 forKey:v10];
        }

LABEL_12:

        ++v9;
      }

      while (v7 != v9);
      v7 = [knownImmutableKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (!v7)
      {
LABEL_14:

        break;
      }
    }
  }
}

void __39__EKObject_Shared__cachedMeltedObjects__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __43__EKObject_Shared__setCachedMeltedObjects___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) set_cachedMeltedObjects:v2];
}

- (unint64_t)_cachedMeltedObjectsCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EKObject_Shared___cachedMeltedObjectsCount__block_invoke;
  v4[3] = &unk_1E77FD530;
  v4[4] = self;
  v4[5] = &v5;
  [(EKObject *)self _performWithLock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __45__EKObject_Shared___cachedMeltedObjectsCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (void)_updateCachedMeltedObjectSetForMultiValueKey:(id)key usingBlock:(id)block
{
  keyCopy = key;
  blockCopy = block;
  v8 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:keyCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__EKObject_Shared___updateCachedMeltedObjectSetForMultiValueKey_usingBlock___block_invoke;
  v14[3] = &unk_1E77FD688;
  v16 = &v17;
  v14[4] = self;
  v9 = keyCopy;
  v15 = v9;
  [(EKObject *)self _performWithLock:v14];
  v10 = v18[5];
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFD8] set];
    v12 = v18[5];
    v18[5] = v11;

    v10 = v18[5];
  }

  v13 = blockCopy[2](blockCopy, v10);
  [(EKObject *)self setCachedMeltedObjects:v13 forMultiValueKey:v9];

  _Block_object_dispose(&v17, 8);
}

void __76__EKObject_Shared___updateCachedMeltedObjectSetForMultiValueKey_usingBlock___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addCachedMeltedObject:(id)object forMultiValueKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  eventStore = [(EKObject *)self eventStore];
  v10 = [objectCopy meltedObjectInStore:eventStore];

  frozenObject = [v10 frozenObject];
  [(EKObject *)self _addCachedMeltedObject:v10 forMultiValueKey:keyCopy];
  [(EKObject *)self addMultiChangedObjectValue:frozenObject forKey:keyCopy];
}

- (void)_addCachedMeltedObject:(id)object forMultiValueKey:(id)key
{
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__EKObject_Shared___addCachedMeltedObject_forMultiValueKey___block_invoke;
    v8[3] = &unk_1E77FF568;
    v9 = objectCopy;
    [(EKObject *)self _updateCachedMeltedObjectSetForMultiValueKey:key usingBlock:v8];
  }
}

- (void)removeCachedMeltedObject:(id)object forMultiValueKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  [(EKObject *)self _removeCachedMeltedObject:objectCopy forMultiValueKey:keyCopy];
  frozenObject = [objectCopy frozenObject];

  [(EKObject *)self removeMultiChangedObjectValue:frozenObject forKey:keyCopy];
}

- (void)_removeCachedMeltedObject:(id)object forMultiValueKey:(id)key
{
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__EKObject_Shared___removeCachedMeltedObject_forMultiValueKey___block_invoke;
    v8[3] = &unk_1E77FF590;
    v9 = objectCopy;
    [(EKObject *)self _updateCachedMeltedObjectSetForMultiValueKey:key usingBlock:v8];
  }
}

id __63__EKObject_Shared___removeCachedMeltedObject_forMultiValueKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  [v3 removeObject:*(a1 + 32)];
  v4 = [v3 copy];

  return v4;
}

- (void)setCachedMeltedObjects:(id)objects forMultiValueKey:(id)key
{
  keyCopy = key;
  v7 = [objects copy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EKObject_Shared__setCachedMeltedObjects_forMultiValueKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v11 = v7;
  selfCopy = self;
  v13 = keyCopy;
  v8 = keyCopy;
  v9 = v7;
  [(EKObject *)self _performWithLock:v10];
}

void __60__EKObject_Shared__setCachedMeltedObjects_forMultiValueKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _cachedMeltedObjects];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (id)cachedMeltedObjectsForMultiValueKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKObject_Shared__cachedMeltedObjectsForMultiValueKey___block_invoke;
  v8[3] = &unk_1E77FD688;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  [(EKObject *)self _performWithLock:v8];
  if (v12[5])
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:?];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__EKObject_Shared__cachedMeltedObjectsForMultiValueKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 allObjects];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setCachedMeltedObject:(id)object forSingleValueKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__EKObject_Shared__setCachedMeltedObject_forSingleValueKey___block_invoke;
  v10[3] = &unk_1E77FD7C8;
  v11 = objectCopy;
  selfCopy = self;
  v13 = keyCopy;
  v8 = keyCopy;
  v9 = objectCopy;
  [(EKObject *)self _performWithLock:v10];
}

void __60__EKObject_Shared__setCachedMeltedObject_forSingleValueKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _cachedMeltedObjects];
  v4 = *(a1 + 48);
  v5 = v3;
  if (v2)
  {
    [v3 setObject:v2 forKeyedSubscript:v4];
  }

  else
  {
    [v3 removeObjectForKey:v4];
  }
}

- (id)cachedMeltedObjectForSingleValueKey:(id)key
{
  keyCopy = key;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__EKObject_Shared__cachedMeltedObjectForSingleValueKey___block_invoke;
  v8[3] = &unk_1E77FD688;
  v10 = &v11;
  v8[4] = self;
  v5 = keyCopy;
  v9 = v5;
  [(EKObject *)self _performWithLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __56__EKObject_Shared__cachedMeltedObjectForSingleValueKey___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)frozenOrMeltedCachedSingleRelationObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKObject *)self singleChangedValueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (id)frozenOrMeltedCachedMultiRelationObjectsForKey:(id)key
{
  keyCopy = key;
  v5 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:keyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKObject *)self multiChangedObjectValuesForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (id)meltedAndCachedSingleRelationObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(EKObject *)self frozenOrMeltedCachedSingleRelationObjectForKey:keyCopy];
  eventStore = [(EKObject *)self eventStore];
  v7 = [v5 meltedObjectInStore:eventStore];

  if (v5 && !v7 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKObject(Shared) meltedAndCachedSingleRelationObjectForKey:];
  }

  if ([v5 isFrozen])
  {
    [(EKObject *)self setCachedMeltedObject:v7 forSingleValueKey:keyCopy];
  }

  return v7;
}

- (void)updateMeltedAndCachedSingleRelationObject:(id)object forKey:(id)key frozenClass:(Class)class
{
  keyCopy = key;
  objectCopy = object;
  eventStore = [(EKObject *)self eventStore];
  v10 = [objectCopy meltedObjectInStore:eventStore];

  frozenObject = [v10 frozenObject];
  if (objectCopy && !v10 && os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKObject(Shared) meltedAndCachedSingleRelationObjectForKey:];
  }

  [(EKObject *)self setCachedMeltedObject:v10 forSingleValueKey:keyCopy];
  [(EKObject *)self setSingleChangedValue:frozenObject forKey:keyCopy];
}

- (id)meltedAndCachedMultiRelationObjectsForKey:(id)key
{
  v35 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:keyCopy];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [(EKObject *)self multiChangedObjectValuesForKey:keyCopy];
    if (v7)
    {
      v25 = keyCopy;
      v8 = [MEMORY[0x1E695DFA8] set];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v24 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        do
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            eventStore = [(EKObject *)self eventStore];
            v16 = [v14 meltedObjectInStore:eventStore];

            if (v16)
            {
              [v8 addObject:v16];
            }

            else
            {
              v17 = EKLogHandle;
              if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
              {
                v18 = v17;
                eventStore2 = [(EKObject *)self eventStore];
                *buf = 138412546;
                v20 = @"not nil";
                if (!eventStore2)
                {
                  v20 = @"nil";
                }

                v31 = v25;
                v32 = 2112;
                v33 = v20;
                _os_log_error_impl(&dword_1A805E000, v18, OS_LOG_TYPE_ERROR, "Failed to get melted object for frozen object related by key %@. Event store is %@", buf, 0x16u);
              }
            }

            ++v13;
          }

          while (v11 != v13);
          v21 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
          v11 = v21;
        }

        while (v21);
      }

      keyCopy = v25;
      [(EKObject *)self setCachedMeltedObjects:v8 forMultiValueKey:v25];
      v22 = [v8 copy];

      v7 = v24;
    }

    else
    {
      v22 = 0;
    }

    v6 = v22;
  }

  return v6;
}

- (void)updateMeltedAndCachedMultiRelationObjects:(id)objects forKey:(id)key
{
  v64 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  keyCopy = key;
  v8 = objectsCopy;
  eventStore = [(EKObject *)self eventStore];
  v10 = 0x1E695D000uLL;
  v11 = v8;
  if (eventStore)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          eventStore2 = [v17 eventStore];
          if (eventStore2)
          {
            v19 = eventStore2;
            eventStore3 = [v17 eventStore];

            if (eventStore != eventStore3)
            {
              selfCopy = self;
              v40 = v8;
              v41 = keyCopy;
              v21 = v12;

              v12 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v12, "count")}];
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v47 objects:v62 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v48;
                do
                {
                  for (j = 0; j != v24; ++j)
                  {
                    if (*v48 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v47 + 1) + 8 * j);
                    v28 = [v27 meltedObjectInStore:eventStore];
                    if (v28)
                    {
                      [v12 addObject:v28];
                    }

                    else
                    {
                      v29 = EKLogHandle;
                      if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        log = v29;
                        v30 = objc_opt_class();
                        objectID = [v27 objectID];
                        *buf = 138412802;
                        v57 = v27;
                        v58 = 2114;
                        v59 = v30;
                        v60 = 2114;
                        v61 = objectID;
                        _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Failed to copy %@ (class = %{public}@, objectID = %{public}@) to my event store.", buf, 0x20u);
                      }
                    }
                  }

                  v24 = [v22 countByEnumeratingWithState:&v47 objects:v62 count:16];
                }

                while (v24);
              }

              v11 = [v12 copy];
              v8 = v40;
              keyCopy = v41;
              self = selfCopy;
              goto LABEL_24;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v51 objects:v63 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      v11 = v12;
LABEL_24:
      v10 = 0x1E695D000;
    }

    else
    {
      v11 = v12;
    }
  }

  [(EKObject *)self setCachedMeltedObjects:v8 forMultiValueKey:keyCopy];
  v32 = [*(v10 + 4008) setWithCapacity:{objc_msgSend(v11, "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = v11;
  v34 = [v33 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v44;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(v33);
        }

        frozenObject = [*(*(&v43 + 1) + 8 * k) frozenObject];
        [v32 addObject:frozenObject];
      }

      v35 = [v33 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v35);
  }

  [(EKObject *)self replaceMultiChangedObjectValuesWithObjectValues:v32 forKey:keyCopy];
}

- (unint64_t)meltedAndCachedMultiRelationCountForKey:(id)key
{
  keyCopy = key;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__EKObject_Shared__meltedAndCachedMultiRelationCountForKey___block_invoke;
  v12 = &unk_1E77FF5B8;
  selfCopy = self;
  v5 = keyCopy;
  v14 = v5;
  v15 = &v21;
  v16 = &v17;
  [(EKObject *)self _performWithLock:&v9];
  if (*(v22 + 24) == 1)
  {
    v6 = v18[3];
  }

  else
  {
    selfCopy = [(EKObject *)self multiChangedObjectValuesForKey:v5, v9, v10, v11, v12, selfCopy];
    v6 = [selfCopy count];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v6;
}

void __60__EKObject_Shared__meltedAndCachedMultiRelationCountForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = v4;
  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *(*(*(a1 + 56) + 8) + 24) = [v4 count];
    v3 = v4;
  }
}

- (void)updateAfterApplyingChanges:(id)changes objectIdentifierBlock:(id)block
{
  [(EKObject *)self updateMeltedCacheForChangeSet:changes objectIdentifierBlock:block];

  [(EKObject *)self _resetInternalStateWithForce:0];
}

- (void)updateMeltedCacheForChangeSet:(id)set objectIdentifierBlock:(id)block
{
  blockCopy = block;
  setCopy = set;
  changedSingleValueKeys = [setCopy changedSingleValueKeys];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __72__EKObject_Shared__updateMeltedCacheForChangeSet_objectIdentifierBlock___block_invoke;
  v13 = &unk_1E77FD580;
  v14 = changedSingleValueKeys;
  selfCopy = self;
  v9 = changedSingleValueKeys;
  [(EKObject *)self _performWithLock:&v10];
  [(EKObject *)self updateMultiValueCacheForChangeSet:setCopy preservingExistingAdds:0 objectIdentifierBlock:blockCopy, v10, v11, v12, v13];
}

void __72__EKObject_Shared__updateMeltedCacheForChangeSet_objectIdentifierBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) _cachedMeltedObjects];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)updateMultiValueCacheForChangeSet:(id)set preservingExistingAdds:(BOOL)adds objectIdentifierBlock:(id)block
{
  v79 = *MEMORY[0x1E69E9840];
  setCopy = set;
  blockCopy = block;
  v8 = &__block_literal_global_63;
  v68 = 0u;
  v69 = 0u;
  if (blockCopy)
  {
    v8 = blockCopy;
  }

  v42 = v8;
  v70 = 0uLL;
  v71 = 0uLL;
  obj = [setCopy changedMultiValueKeys];
  v43 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v43)
  {
    v40 = *v69;
    v9 = v42 + 2;
    v41 = setCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v69 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v10;
        v11 = *(*(&v68 + 1) + 8 * v10);
        v12 = [(EKObject *)self meltedAndCachedMultiRelationObjectsForKey:v11];
        v13 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v11];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_2;
        v65[3] = &unk_1E77FF5E0;
        v15 = v42;
        v67 = v15;
        v53 = dictionary;
        v66 = v53;
        v45 = v13;
        [v13 enumerateObjectsUsingBlock:v65];
        v16 = [(EKObject *)self multiChangedObjectValuesForKey:v11];
        v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_3;
        v62[3] = &unk_1E77FF608;
        v18 = v15;
        v64 = v18;
        v48 = v17;
        v63 = v48;
        v44 = v16;
        [v16 enumerateObjectsUsingBlock:v62];
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v52 = v11;
        v19 = [setCopy unsavedMultiValueRemovedObjectsForKey:v11];
        v20 = [v19 countByEnumeratingWithState:&v58 objects:v77 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v59;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v59 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = (*v9)(v18, *(*(&v58 + 1) + 8 * i));
              if (v24)
              {
                v25 = [v53 objectForKeyedSubscript:v24];
                if (v25)
                {
                  [(EKObject *)self _removeCachedMeltedObject:v25 forMultiValueKey:v52];
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v58 objects:v77 count:16];
          }

          while (v21);
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v50 = [setCopy unsavedMultiValueAddedObjectsForKey:v52];
        v26 = [v50 countByEnumeratingWithState:&v54 objects:v76 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v55;
          v47 = v18;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v50);
              }

              v30 = *(*(&v54 + 1) + 8 * j);
              v31 = (*v9)(v18, v30);
              if (v31)
              {
                v32 = [v53 objectForKeyedSubscript:v31];
                if (v32 && !adds)
                {
                  [(EKObject *)self _removeCachedMeltedObject:v32 forMultiValueKey:v52];
                }

                if (v32)
                {
                  addsCopy = adds;
                }

                else
                {
                  addsCopy = 0;
                }

                if (!addsCopy)
                {
                  v34 = v28;
                  v35 = [v48 objectForKeyedSubscript:v31];
                  if (!v35)
                  {
                    v36 = EKLogHandle;
                    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v73 = v31;
                      v74 = 2114;
                      v75 = v52;
                      _os_log_error_impl(&dword_1A805E000, v36, OS_LOG_TYPE_ERROR, "Missing corresponding added object with semantic identifier %@ for relation key %{public}@.", buf, 0x16u);
                    }

                    v35 = v30;
                  }

                  eventStore = [(EKObject *)self eventStore];
                  v38 = [v35 meltedObjectInStore:eventStore];

                  [(EKObject *)self _addCachedMeltedObject:v38 forMultiValueKey:v52];
                  v28 = v34;
                  v18 = v47;
                }
              }
            }

            v27 = [v50 countByEnumeratingWithState:&v54 objects:v76 count:16];
          }

          while (v27);
        }

        v10 = v46 + 1;
        setCopy = v41;
      }

      while (v46 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v43);
  }
}

void __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void __99__EKObject_Shared__updateMultiValueCacheForChangeSet_preservingExistingAdds_objectIdentifierBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

- (void)_resetAfterUpdatingChangeSetOrBackingObjectWithForce:(BOOL)force
{
  forceCopy = force;
  [(EKObject *)self _resetMeltedCache];

  [(EKObject *)self _resetInternalStateWithForce:forceCopy];
}

- (void)_resetAfterUpdatingChangeSetOrBackingObject
{
  [(EKObject *)self _resetMeltedCache];

  [(EKObject *)self _resetInternalStateWithForce:0];
}

- (void)_resetMeltedCache
{
  v87 = *MEMORY[0x1E69E9840];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [objc_opt_class() knownRelationshipSingleValueKeys];
  v3 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
  selfCopy = self;
  if (v3)
  {
    v4 = v3;
    v5 = *v79;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v79 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v78 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [(EKObject *)self cachedMeltedObjectForSingleValueKey:v7];
        if (v9)
        {
          backingObject = [(EKObject *)self backingObject];
          v11 = [backingObject valueForKey:v7];

          backingObject2 = [v9 backingObject];
          v13 = backingObject2;
          if (backingObject2 == v11)
          {
          }

          else
          {
            uniqueIdentifier = [v9 uniqueIdentifier];
            [v11 uniqueIdentifier];
            v15 = v4;
            v17 = v16 = v5;
            v58 = [uniqueIdentifier isEqualToString:v17];

            v5 = v16;
            v4 = v15;

            self = selfCopy;
            if (!v58)
            {
              [(EKObject *)selfCopy setCachedMeltedObject:0 forSingleValueKey:v7];
LABEL_12:

              goto LABEL_13;
            }
          }

          [v9 _resetWithFrozenObject:v11];
          goto LABEL_12;
        }

LABEL_13:

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v4);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];
  v18 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v75;
    v50 = *v75;
    do
    {
      v21 = 0;
      v51 = v19;
      do
      {
        if (*v75 != v20)
        {
          objc_enumerationMutation(knownRelationshipMultiValueKeys);
        }

        v22 = *(*(&v74 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = [(EKObject *)self cachedMeltedObjectsForMultiValueKey:v22];
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __37__EKObject_Shared___resetMeltedCache__block_invoke;
        v72[3] = &unk_1E77FF630;
        obja = dictionary;
        v73 = obja;
        [v24 enumerateObjectsUsingBlock:v72];
        if (v24)
        {
          if ([v24 count])
          {
            v53 = v23;
            v54 = v21;
            v59 = [MEMORY[0x1E695DFA8] setWithSet:v24];
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            backingObject3 = [(EKObject *)self backingObject];
            v27 = [backingObject3 valueForKey:v22];

            v28 = v27;
            v29 = [v27 countByEnumeratingWithState:&v68 objects:v84 count:16];
            v30 = v24;
            v31 = obja;
            if (v29)
            {
              v32 = v29;
              v33 = *v69;
              do
              {
                for (j = 0; j != v32; ++j)
                {
                  if (*v69 != v33)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v35 = *(*(&v68 + 1) + 8 * j);
                  uniqueIdentifier2 = [v35 uniqueIdentifier];
                  v37 = [v31 objectForKeyedSubscript:uniqueIdentifier2];

                  if (v37)
                  {
                    [v37 _resetWithFrozenObject:v35];
                    [v59 removeObject:v37];
                  }

                  else
                  {
                    eventStore = [(EKObject *)selfCopy eventStore];
                    v39 = [v35 meltedObjectInStore:eventStore];

                    v31 = obja;
                    [(EKObject *)selfCopy _addCachedMeltedObject:v39 forMultiValueKey:v22];
                  }
                }

                v32 = [v28 countByEnumeratingWithState:&v68 objects:v84 count:16];
              }

              while (v32);
            }

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v40 = v59;
            v41 = [v40 countByEnumeratingWithState:&v64 objects:v83 count:16];
            self = selfCopy;
            v19 = v51;
            v23 = v53;
            if (v41)
            {
              v42 = v41;
              v43 = *v65;
              do
              {
                for (k = 0; k != v42; ++k)
                {
                  if (*v65 != v43)
                  {
                    objc_enumerationMutation(v40);
                  }

                  [(EKObject *)selfCopy _removeCachedMeltedObject:*(*(&v64 + 1) + 8 * k) forMultiValueKey:v22];
                }

                v42 = [v40 countByEnumeratingWithState:&v64 objects:v83 count:16];
              }

              while (v42);
            }

            v20 = v50;
            v24 = v30;
            v21 = v54;
          }

          else
          {
            [(EKObject *)self emptyMeltedCacheForKey:v22];
          }
        }

        objc_autoreleasePoolPop(v23);
        ++v21;
      }

      while (v21 != v19);
      v19 = [knownRelationshipMultiValueKeys countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v19);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  knownDerivedRelationshipKeys = [objc_opt_class() knownDerivedRelationshipKeys];
  v46 = [knownDerivedRelationshipKeys countByEnumeratingWithState:&v60 objects:v82 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v61;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v61 != v48)
        {
          objc_enumerationMutation(knownDerivedRelationshipKeys);
        }

        [(EKObject *)self setCachedMeltedObject:0 forSingleValueKey:*(*(&v60 + 1) + 8 * m)];
      }

      v47 = [knownDerivedRelationshipKeys countByEnumeratingWithState:&v60 objects:v82 count:16];
    }

    while (v47);
  }
}

void __37__EKObject_Shared___resetMeltedCache__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 uniqueIdentifier];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 uniqueIdentifier];
    [v5 setObject:v3 forKeyedSubscript:v6];
  }

  else
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __37__EKObject_Shared___resetMeltedCache__block_invoke_cold_1(v3, v7);
    }
  }
}

- (void)emptyMeltedCache
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__EKObject_Shared__emptyMeltedCache__block_invoke;
  v2[3] = &unk_1E77FD418;
  v2[4] = self;
  [(EKObject *)self _performWithLock:v2];
}

void __36__EKObject_Shared__emptyMeltedCache__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _cachedMeltedObjects];
  [v1 removeAllObjects];
}

- (void)emptyMeltedCacheForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKObject_Shared__emptyMeltedCacheForKey___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(EKObject *)self _performWithLock:v6];
}

void __43__EKObject_Shared__emptyMeltedCacheForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)emptyMeltedCacheForKeys:(id)keys
{
  keysCopy = keys;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__EKObject_Shared__emptyMeltedCacheForKeys___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = keysCopy;
  v5 = keysCopy;
  [(EKObject *)self _performWithLock:v6];
}

void __44__EKObject_Shared__emptyMeltedCacheForKeys___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedMeltedObjects];
  [v2 removeObjectsForKeys:*(a1 + 40)];
}

- (id)copyMeltedObjectCache
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKObject_Shared__copyMeltedObjectCache__block_invoke;
  v4[3] = &unk_1E77FD530;
  v4[4] = self;
  v4[5] = &v5;
  [(EKObject *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__EKObject_Shared__copyMeltedObjectCache__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)augmentMeltedObjectCache:(id)cache
{
  v88 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  selfCopy = self;
  knownRelationshipSingleValueKeys = [objc_opt_class() knownRelationshipSingleValueKeys];
  v6 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v79;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v79 != v8)
        {
          objc_enumerationMutation(knownRelationshipSingleValueKeys);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        v11 = [cacheCopy objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [(EKObject *)selfCopy frozenOrMeltedCachedSingleRelationObjectForKey:v10];
          frozenObject = [v12 frozenObject];
          frozenObject2 = [v11 frozenObject];

          if (frozenObject == frozenObject2)
          {
            [(EKObject *)selfCopy setCachedMeltedObject:v11 forSingleValueKey:v10];
          }
        }
      }

      v7 = [knownRelationshipSingleValueKeys countByEnumeratingWithState:&v78 objects:v87 count:16];
    }

    while (v7);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v15 = selfCopy;
  obj = [objc_opt_class() knownRelationshipMultiValueKeys];
  v51 = cacheCopy;
  v53 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v53)
  {
    v52 = *v75;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v75 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v74 + 1) + 8 * j);
        v18 = [cacheCopy objectForKeyedSubscript:v17];
        if ([v18 count])
        {
          v56 = j;
          v54 = v17;
          v19 = [(EKObject *)v15 frozenOrMeltedCachedMultiRelationObjectsForKey:v17];
          v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v21 = v19;
          v22 = [v21 countByEnumeratingWithState:&v70 objects:v85 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v71;
            do
            {
              for (k = 0; k != v23; ++k)
              {
                if (*v71 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v70 + 1) + 8 * k);
                objectID = [v26 objectID];
                [v20 setObject:v26 forKeyedSubscript:objectID];
              }

              v23 = [v21 countByEnumeratingWithState:&v70 objects:v85 count:16];
            }

            while (v23);
          }

          v28 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v21, "count")}];
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v55 = v18;
          v29 = v18;
          v30 = [v29 countByEnumeratingWithState:&v66 objects:v84 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v67;
            do
            {
              for (m = 0; m != v31; ++m)
              {
                if (*v67 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v66 + 1) + 8 * m);
                objectID2 = [v34 objectID];
                v36 = [v20 objectForKeyedSubscript:objectID2];

                if (v36)
                {
                  [v28 addObject:v34];
                  [v20 removeObjectForKey:objectID2];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v66 objects:v84 count:16];
            }

            while (v31);
          }

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v37 = v20;
          v38 = [v37 countByEnumeratingWithState:&v62 objects:v83 count:16];
          v15 = selfCopy;
          if (v38)
          {
            v39 = v38;
            v40 = *v63;
            do
            {
              for (n = 0; n != v39; ++n)
              {
                if (*v63 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = [v37 objectForKeyedSubscript:*(*(&v62 + 1) + 8 * n)];
                eventStore = [(EKObject *)selfCopy eventStore];
                v44 = [v42 meltedObjectInStore:eventStore];

                [v28 addObject:v44];
              }

              v39 = [v37 countByEnumeratingWithState:&v62 objects:v83 count:16];
            }

            while (v39);
          }

          [(EKObject *)selfCopy setCachedMeltedObjects:v28 forMultiValueKey:v54];
          cacheCopy = v51;
          v18 = v55;
          j = v56;
        }
      }

      v53 = [obj countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v53);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  knownDerivedRelationshipKeys = [objc_opt_class() knownDerivedRelationshipKeys];
  v46 = [knownDerivedRelationshipKeys countByEnumeratingWithState:&v58 objects:v82 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v59;
    do
    {
      for (ii = 0; ii != v47; ++ii)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(knownDerivedRelationshipKeys);
        }

        [(EKObject *)v15 setCachedMeltedObject:0 forSingleValueKey:*(*(&v58 + 1) + 8 * ii)];
      }

      v47 = [knownDerivedRelationshipKeys countByEnumeratingWithState:&v58 objects:v82 count:16];
    }

    while (v47);
  }
}

- (id)inverseObjectWithObject:(id)object diff:(id *)diff
{
  objectCopy = object;
  snapshotCopy = [(EKObject *)self snapshotCopy];
  v8 = [snapshotCopy diffWithObject:objectCopy];
  v9 = v8;
  if (diff)
  {
    v10 = v8;
    *diff = v9;
  }

  v11 = [objc_opt_class() _changeSetForDiff:v9];
  [snapshotCopy applyChanges:v11];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__18;
  v28 = __Block_byref_object_dispose__18;
  v29 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke;
  v23[3] = &unk_1E77FD530;
  v23[4] = self;
  v23[5] = &v24;
  [(EKObject *)self _performWithLock:v23];
  if ([v25[5] count])
  {
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v25[5], "count")}];
    v13 = v25[5];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke_2;
    v20 = &unk_1E77FD338;
    selfCopy = self;
    v14 = v12;
    v22 = v14;
    [v13 enumerateKeysAndObjectsUsingBlock:&v17];
    v15 = [v14 copy];
    [snapshotCopy setAdditionalMeltedObjects:v15];
  }

  _Block_object_dispose(&v24, 8);

  return snapshotCopy;
}

void __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __49__EKObject_Shared__inverseObjectWithObject_diff___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    if (([objc_opt_class() isWeakRelationObject:v6 forKey:v5] & 1) == 0)
    {
      v9 = [v6 snapshotCopy];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
    }
  }

  else
  {
    v10 = v6;
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v10, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v19 + 1) + 8 * v16) snapshotCopy];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    [*(a1 + 40) setObject:v18 forKeyedSubscript:v5];
  }
}

+ (id)duplicatedPersistentObjectForObject:(id)object alreadyCopiedObjects:(id)objects
{
  objectCopy = object;
  objectsCopy = objects;
  objectID = [objectCopy objectID];
  backingObject = [objectsCopy objectForKeyedSubscript:objectID];
  if (!backingObject)
  {
    duplicate = [objectCopy duplicate];
    [duplicate updatePersistentObject];
    backingObject = [duplicate backingObject];
    [objectsCopy setObject:backingObject forKeyedSubscript:objectID];
  }

  return backingObject;
}

+ (id)_changeSetForDiff:(id)diff
{
  changeSetForDiff = [diff changeSetForDiff];
  singleValueChanges = [changeSetForDiff singleValueChanges];
  v6 = [singleValueChanges copy];

  v7 = objc_opt_new();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke;
  v26[3] = &unk_1E77FF658;
  selfCopy = self;
  v8 = v7;
  v27 = v8;
  v9 = changeSetForDiff;
  v28 = v9;
  [v6 enumerateKeysAndObjectsUsingBlock:v26];
  multiValueAdditions = [v9 multiValueAdditions];
  v11 = [multiValueAdditions copy];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_70;
  v22[3] = &unk_1E77FF6A8;
  selfCopy2 = self;
  v23 = v8;
  v12 = v9;
  v24 = v12;
  v13 = v8;
  [v11 enumerateKeysAndObjectsUsingBlock:v22];
  multiValueRemovals = [v12 multiValueRemovals];
  v15 = [multiValueRemovals copy];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_71;
  v20[3] = &unk_1E77FF6F8;
  v16 = v12;
  v21 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];
  v17 = v21;
  v18 = v16;

  return v16;
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFB0] null];
  if (v7 == v6)
  {
    goto LABEL_15;
  }

  v8 = [objc_opt_class() knownRelationshipSingleValueKeys];
  v9 = [v8 containsObject:v5];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      v11 = [objc_opt_class() knownRelationshipWeakKeys];
      v12 = [v11 containsObject:v5];

      if (v12)
      {
        [v10 backingObject];
      }

      else
      {
        [*(a1 + 48) duplicatedPersistentObjectForObject:v10 alreadyCopiedObjects:*(a1 + 32)];
      }
      v13 = ;
      goto LABEL_14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v6;
      v15 = [objc_opt_class() knownRelationshipWeakKeys];
      v16 = [v15 containsObject:v5];

      if (v16)
      {
        v13 = v14;
      }

      else
      {
        v13 = [v14 copy];
      }

LABEL_14:
      v7 = v13;

      [*(a1 + 40) forceChangeValue:v7 forKey:v5];
LABEL_15:

      goto LABEL_16;
    }

    v17 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __38__EKObject_Shared___changeSetForDiff___block_invoke_cold_1(v17);
    }
  }

LABEL_16:
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__EKObject_Shared___changeSetForDiff___block_invoke_2;
  v8[3] = &unk_1E77FF680;
  v12 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 56) duplicatedPersistentObjectForObject:v3 alreadyCopiedObjects:*(a1 + 32)];
LABEL_5:
    v5 = v4;
    [*(a1 + 48) replaceMultiChangeAddedObject:v3 withObject:v4 forKey:*(a1 + 40)];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
    goto LABEL_5;
  }

  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKObject_Shared___changeSetForDiff___block_invoke_2_cold_1(v6);
  }

LABEL_8:
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_71(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72;
  v14 = &unk_1E77FF6D0;
  v15 = v5;
  v16 = v7;
  v8 = v7;
  v9 = v5;
  [v6 enumerateObjectsUsingBlock:&v11];
  v10 = [*(a1 + 32) multiValueRemovals];
  [v10 setObject:v8 forKeyedSubscript:v9];
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 backingObject];
LABEL_5:
    v5 = v4;
    [*(a1 + 40) addObject:v4];

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_5;
  }

  v6 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72_cold_1(v6);
  }

LABEL_8:
}

+ (BOOL)_compareAllKnownKeysExceptKeys:(id)keys forObject:(id)object againstObject:(id)againstObject compareIdentityKeys:(BOOL)identityKeys
{
  identityKeysCopy = identityKeys;
  v10 = MEMORY[0x1E695DFA8];
  againstObjectCopy = againstObject;
  objectCopy = object;
  keysCopy = keys;
  knownRelationshipMultiValueKeys = [self knownRelationshipMultiValueKeys];
  v15 = [v10 setWithArray:knownRelationshipMultiValueKeys];

  knownRelationshipSingleValueKeys = [self knownRelationshipSingleValueKeys];
  [v15 addObjectsFromArray:knownRelationshipSingleValueKeys];

  knownSingleValueKeysForComparison = [self knownSingleValueKeysForComparison];
  [v15 addObjectsFromArray:knownSingleValueKeysForComparison];

  knownImmutableKeys = [self knownImmutableKeys];
  [v15 addObjectsFromArray:knownImmutableKeys];

  [v15 minusSet:keysCopy];
  LOBYTE(identityKeysCopy) = [self _compareKnownKeys:v15 forObject:objectCopy againstObject:againstObjectCopy compareIdentityKeys:identityKeysCopy compareImmutableKeys:0 propertiesToIgnore:0];

  return identityKeysCopy;
}

+ (BOOL)_compareMultiValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  v49 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  if ([objectCopy isPropertyUnavailable:keyCopy] && (objc_msgSend(againstObjectCopy, "isPropertyUnavailable:", keyCopy) & 1) != 0)
  {
    v13 = 1;
  }

  else
  {
    v14 = [objectCopy valueForKey:keyCopy];
    v15 = [againstObjectCopy valueForKey:keyCopy];
    v16 = [v14 count];
    if (v16 == [v15 count])
    {
      v36 = objectCopy;
      v37 = v15;
      v35 = againstObjectCopy;
      v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v34 = v14;
      v18 = v14;
      v19 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v44;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v43 + 1) + 8 * i);
            uniqueIdentifier = [v23 uniqueIdentifier];
            if (uniqueIdentifier)
            {
              [v17 setObject:v23 forKeyedSubscript:uniqueIdentifier];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v20);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = v37;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        while (2)
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * j);
            uniqueIdentifier2 = [v30 uniqueIdentifier];
            v32 = [v17 objectForKeyedSubscript:uniqueIdentifier2];
            LODWORD(v30) = [self _compareRelationshipObject1:v32 againstRelationshipObject2:v30 propertiesToIgnore:ignoreCopy relationshipObjectKey:keyCopy];

            if (!v30)
            {
              v13 = 0;
              goto LABEL_25;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v13 = 1;
LABEL_25:

      againstObjectCopy = v35;
      objectCopy = v36;
      v14 = v34;
      v15 = v37;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

+ (BOOL)_compareNonRelationshipKeys:(id)keys forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore
{
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  v13 = ignoreCopy;
  if (objectCopy == againstObjectCopy)
  {
    v14 = 1;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__EKObject_Shared___compareNonRelationshipKeys_forObject_againstObject_propertiesToIgnore___block_invoke;
    v16[3] = &unk_1E77FF720;
    v17 = ignoreCopy;
    v18 = objectCopy;
    v19 = againstObjectCopy;
    selfCopy = self;
    v14 = [keys indexOfObjectPassingTest:v16] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v14;
}

uint64_t __91__EKObject_Shared___compareNonRelationshipKeys_forObject_againstObject_propertiesToIgnore___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([a1[4] containsObject:v6] & 1) != 0 || objc_msgSend(a1[5], "isPropertyUnavailable:", v6) && (objc_msgSend(a1[6], "isPropertyUnavailable:", v6))
  {
    v7 = 0;
  }

  else
  {
    v8 = [a1[5] valueForKey:v6];
    v9 = [a1[6] valueForKey:v6];
    v10 = [a1[7] canonicalizedEqualityTestValue1:v8 value2:v9 key:v6 object1:a1[5] object2:a1[6]];
    if ((v10 & 1) == 0)
    {
      *a4 = 1;
    }

    v7 = v10 ^ 1u;
  }

  return v7;
}

+ (BOOL)_compareSingleValueRelationshipKey:(id)key forObject:(id)object againstObject:(id)againstObject propertiesToIgnore:(id)ignore ignoreIdentityKeys:(BOOL)keys
{
  keysCopy = keys;
  keyCopy = key;
  objectCopy = object;
  againstObjectCopy = againstObject;
  ignoreCopy = ignore;
  if ([objectCopy isPropertyUnavailable:keyCopy] && (objc_msgSend(againstObjectCopy, "isPropertyUnavailable:", keyCopy) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [objectCopy valueForKey:keyCopy];
    v18 = [againstObjectCopy valueForKey:keyCopy];
    if (keysCopy)
    {
      knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];
      v20 = [ignoreCopy setByAddingObjectsFromArray:knownIdentityKeysForComparison];

      knownSingleValueKeysToSkipForUIComparison = [objc_opt_class() knownSingleValueKeysToSkipForUIComparison];
      ignoreCopy = [v20 setByAddingObjectsFromArray:knownSingleValueKeysToSkipForUIComparison];
    }

    v16 = [self _compareRelationshipObject1:v17 againstRelationshipObject2:v18 propertiesToIgnore:ignoreCopy relationshipObjectKey:keyCopy];
  }

  return v16;
}

+ (BOOL)_compareRelationshipObject1:(id)object1 againstRelationshipObject2:(id)object2 propertiesToIgnore:(id)ignore relationshipObjectKey:(id)key
{
  object1Copy = object1;
  object2Copy = object2;
  ignoreCopy = ignore;
  keyCopy = key;
  if ((object1Copy == 0) != (object2Copy == 0))
  {
    goto LABEL_5;
  }

  v13 = 1;
  if (object1Copy && object2Copy)
  {
    meltedClass = [objc_opt_class() meltedClass];
    if (meltedClass != [objc_opt_class() meltedClass])
    {
LABEL_5:
      v13 = 0;
      goto LABEL_6;
    }

    if (([meltedClass isWeakRelationship] & 1) != 0 || (objc_msgSend(meltedClass, "knownRelationshipWeakKeys"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "containsObject:", keyCopy), v16, v17))
    {
      v18 = [meltedClass _compareIdentityKeysForObject:object1Copy againstObject:object2Copy propertiesToIgnore:ignoreCopy];
    }

    else
    {
      v18 = [object1Copy isEqual:object2Copy ignoringProperties:ignoreCopy];
    }

    v13 = v18;
  }

LABEL_6:

  return v13;
}

+ (BOOL)canonicalizedEqualityTestValue1:(id)value1 value2:(id)value2 key:(id)key object1:(id)object1 object2:(id)object2
{
  if (value1 | value2)
  {
    return [value1 isEqual:value2];
  }

  else
  {
    return 1;
  }
}

- (id)privacyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uniqueIdentifier = [(EKObject *)self uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ uniqueIdentifier=[%@]>", v4, uniqueIdentifier];

  return v6;
}

- (id)_convertBackingObjectsWithPath:(id)path updateBackingObjects:(BOOL)objects allChangedBackingObjects:(id)backingObjects eventStore:(id)store updatedBackingObjectProvider:(id)provider
{
  v85 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  backingObjectsCopy = backingObjects;
  storeCopy = store;
  providerCopy = provider;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__18;
  v81 = __Block_byref_object_dispose__18;
  v82 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke;
  v76[3] = &unk_1E77FD530;
  v76[4] = self;
  v76[5] = &v77;
  [(EKObject *)self _performWithLock:v76];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__18;
  v74 = __Block_byref_object_dispose__18;
  v75 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_2;
  aBlock[3] = &unk_1E77FF748;
  aBlock[4] = &v70;
  v15 = _Block_copy(aBlock);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_3;
  v62[3] = &unk_1E77FF770;
  objectsCopy = objects;
  v43 = backingObjectsCopy;
  v63 = v43;
  v44 = storeCopy;
  v64 = v44;
  v45 = providerCopy;
  v65 = v45;
  v68 = 1;
  v46 = v15;
  v66 = v46;
  v16 = _Block_copy(v62);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v78[5];
  v49 = [obj countByEnumeratingWithState:&v58 objects:v84 count:16];
  if (v49)
  {
    v48 = *v59;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v59 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v58 + 1) + 8 * i);
        v51 = [v78[5] objectForKeyedSubscript:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_opt_class() isWeakRelationObject:v51 forKey:v17])
          {
            goto LABEL_43;
          }

          v18 = v51;
          v52 = [(EKObject *)self backingObjectOfChildObject:v18 withRelationshipKey:v17];
          if (pathCopy && (-[EKObject changeSet](self, "changeSet"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 hasUnsavedChangeForKey:v17], v19, (v20 & 1) == 0))
          {
            backingObject = [(EKObject *)self backingObject];
            remObjectID = [backingObject remObjectID];

            if (remObjectID)
            {
              [pathCopy addObject:remObjectID];
              v21 = pathCopy;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v37 = v16[2](v16, v52, v18, v21);
          changeSet = [(EKObject *)self changeSet];
          v39 = [changeSet valueForSingleValueKey:v17 basedOn:0];

          if (v37 && v39)
          {
            [(EKObject *)self setSingleChangedValue:v37 forKey:v17];
          }

          else if (v39 != v52)
          {
            changeSet2 = [(EKObject *)self changeSet];
            [changeSet2 forceChangeValue:v52 forKey:v17];

            (*(v46 + 2))(v46, v52, v52);
          }

          if (v21)
          {
            [pathCopy removeLastObject];
          }
        }

        else
        {
          v22 = v51;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v52 = v22;
          v23 = [v52 countByEnumeratingWithState:&v54 objects:v83 count:16];
          if (v23)
          {
            v24 = *v55;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v55 != v24)
                {
                  objc_enumerationMutation(v52);
                }

                v26 = *(*(&v54 + 1) + 8 * j);
                v27 = [(EKObject *)self backingObjectOfChildObject:v26 withRelationshipKey:v17];
                if (pathCopy && (-[EKObject changeSet](self, "changeSet"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 isUniqueAddedObject:v26 forKey:v17], v28, (v29 & 1) == 0))
                {
                  backingObject2 = [(EKObject *)self backingObject];
                  remObjectID2 = [backingObject2 remObjectID];

                  if (remObjectID2)
                  {
                    [pathCopy addObject:remObjectID2];
                    v30 = pathCopy;
                  }

                  else
                  {
                    v30 = 0;
                  }
                }

                else
                {
                  v30 = 0;
                }

                v33 = v16[2](v16, v27, v26, v30);
                if (v33)
                {
                  changeSet3 = [(EKObject *)self changeSet];
                  [changeSet3 replaceMultiChangeAddedObject:v27 withObject:v33 forKey:v17];
                }

                if (v30)
                {
                  [pathCopy removeLastObject];
                }
              }

              v23 = [v52 countByEnumeratingWithState:&v54 objects:v83 count:16];
            }

            while (v23);
          }
        }

LABEL_43:
      }

      v49 = [obj countByEnumeratingWithState:&v58 objects:v84 count:16];
    }

    while (v49);
  }

  v41 = v71[5];
  _Block_object_dispose(&v70, 8);

  _Block_object_dispose(&v77, 8);

  return v41;
}

void __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v6 = *(*(*(a1 + 32) + 8) + 40);
  }

  v10 = [v11 uniqueIdentifier];
  [v6 setObject:v5 forKeyedSubscript:v10];
}

id __137__EKObject_Shared___convertBackingObjectsWithPath_updateBackingObjects_allChangedBackingObjects_eventStore_updatedBackingObjectProvider___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 _convertBackingObjectsWithPath:v9 updateBackingObjects:*(a1 + 64) allChangedBackingObjects:*(a1 + 32) eventStore:*(a1 + 40) updatedBackingObjectProvider:*(a1 + 48)];
  objc_opt_class();
  if (*(a1 + 65) == (objc_opt_isKindOfClass() & 1))
  {
    if (*(a1 + 64) == 1)
    {
      v11 = *(a1 + 48);
      v12 = [v7 uniqueIdentifier];
      v13 = [v11 existingUpdatedObject:v12];

      if ([v10 count] || (objc_msgSend(v8, "hasUnsavedChanges") & 1) != 0 || v13)
      {
        if (!v13)
        {
          v13 = v7;
        }

        v14 = [v8 changeSet];
        v15 = [v13 updatedFrozenObjectWithChanges:v14 updatedChildren:v10];

        if (v15 != v13)
        {
          v16 = [v8 changeSet];
          [v16 markChangesAsSaved];

          [v8 setBackingObject:v15];
          (*(*(a1 + 56) + 16))();
          if (v9)
          {
            if (*(a1 + 32))
            {
              [v15 setPath:v9];
              [*(a1 + 32) addObject:v15];
            }
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v17 = [objc_alloc(objc_msgSend(objc_opt_class() "alternateUniverseClass"))];
    v15 = v17;
    if (*(a1 + 64) == 1)
    {
      v18 = [v17 uncommittedChanges];
      v19 = [v8 changeSet];
      [v18 addChanges:v19];

      v20 = [v8 changeSet];
      [v20 markChangesAsSaved];
    }

    [v8 setBackingObject:v15];
    (*(*(a1 + 56) + 16))();
  }

  return v15;
}

- (id)backingObjectOfChildObject:(id)object withRelationshipKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  backingObject = [objectCopy backingObject];
  if (backingObject)
  {
    v9 = backingObject;
  }

  else
  {
    changeSet = [(EKObject *)self changeSet];
    singleValueChanges = [changeSet singleValueChanges];
    v9 = [singleValueChanges objectForKeyedSubscript:keyCopy];

    if (!v9)
    {
      uniqueIdentifier = [objectCopy uniqueIdentifier];
      changeSet2 = [(EKObject *)self changeSet];
      v14 = [changeSet2 unsavedMultiValueAddedObjectsForKey:keyCopy];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = v14;
      v9 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v16 = *v23;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v15);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            uniqueIdentifier2 = [v18 uniqueIdentifier];
            v20 = [uniqueIdentifier2 isEqualToString:uniqueIdentifier];

            if (v20)
            {
              v9 = v18;
              goto LABEL_14;
            }
          }

          v9 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return v9;
}

- (id)prepareReminderKitObjectForSaveWithUpdatedBackingObjectProvider:(id)provider
{
  v4 = MEMORY[0x1E695DF70];
  providerCopy = provider;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  eventStore = [(EKObject *)self eventStore];
  v9 = [(EKObject *)self _convertBackingObjectsWithPath:v7 updateBackingObjects:1 allChangedBackingObjects:v6 eventStore:eventStore updatedBackingObjectProvider:providerCopy];

  changeSet = [(EKObject *)self changeSet];
  if ([changeSet hasUnsavedChanges])
  {
  }

  else
  {
    v11 = [v9 count];

    if (!v11)
    {
      goto LABEL_5;
    }
  }

  backingObject = [(EKObject *)self backingObject];
  changeSet2 = [(EKObject *)self changeSet];
  v14 = [backingObject updatedFrozenObjectWithChanges:changeSet2 updatedChildren:v9];

  [(EKObject *)self setBackingObject:v14];
  changeSet3 = [(EKObject *)self changeSet];
  [changeSet3 markChangesAsSaved];

  [v6 addObject:v14];
LABEL_5:

  return v6;
}

- (id)cachedMeltedChildIdentifierToParentMap
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(EKObject *)self _cachedMeltedChildIdentifierToParentMap:v3];

  return v3;
}

- (void)_cachedMeltedChildIdentifierToParentMap:(id)map
{
  v53 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__18;
  v41 = __Block_byref_object_dispose__18;
  v42 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __60__EKObject_Shared___cachedMeltedChildIdentifierToParentMap___block_invoke;
  v36[3] = &unk_1E77FD530;
  v36[4] = self;
  v36[5] = &v37;
  [(EKObject *)self _performWithLock:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v38[5];
  v21 = [obj countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v21)
  {
    v20 = *v33;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * i);
        v23 = [v38[5] objectForKeyedSubscript:v5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          uniqueIdentifier2 = v23;
          v7 = [uniqueIdentifier2 countByEnumeratingWithState:&v28 objects:v51 count:16];
          if (v7)
          {
            v8 = *v29;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v29 != v8)
                {
                  objc_enumerationMutation(uniqueIdentifier2);
                }

                v10 = *(*(&v28 + 1) + 8 * j);
                if (([objc_opt_class() isWeakRelationObject:v10 forKey:v5] & 1) == 0)
                {
                  uniqueIdentifier = [v10 uniqueIdentifier];
                  if (uniqueIdentifier)
                  {
                    [mapCopy setObject:self forKeyedSubscript:uniqueIdentifier];
                  }

                  else
                  {
                    v12 = EKLogHandle;
                    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
                    {
                      v27 = objc_opt_class();
                      v24 = objc_opt_class();
                      frozenObject = [v10 frozenObject];
                      rEMObject = [frozenObject REMObject];
                      *buf = 138544130;
                      v44 = v27;
                      v45 = 2114;
                      v46 = v5;
                      v47 = 2114;
                      v48 = v24;
                      v49 = 2112;
                      v50 = rEMObject;
                      v25 = rEMObject;
                      _os_log_fault_impl(&dword_1A805E000, v12, OS_LOG_TYPE_FAULT, "Got a nil unique identifier for object of type %{public}@ for relation key %{public}@ on object of type %{public}@. Backing object of bad object = %@", buf, 0x2Au);
                    }
                  }

                  [v10 _cachedMeltedChildIdentifierToParentMap:mapCopy];
                }
              }

              v7 = [uniqueIdentifier2 countByEnumeratingWithState:&v28 objects:v51 count:16];
            }

            while (v7);
          }
        }

        else
        {
          if ([objc_opt_class() isWeakRelationObject:v23 forKey:v5])
          {
            goto LABEL_30;
          }

          uniqueIdentifier2 = [v23 uniqueIdentifier];
          if (uniqueIdentifier2)
          {
            [mapCopy setObject:self forKeyedSubscript:uniqueIdentifier2];
          }

          else
          {
            v14 = EKLogHandle;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v15 = objc_opt_class();
              v16 = objc_opt_class();
              frozenObject2 = [v23 frozenObject];
              rEMObject2 = [frozenObject2 REMObject];
              *buf = 138544130;
              v44 = v15;
              v45 = 2114;
              v46 = v5;
              v47 = 2114;
              v48 = v16;
              v49 = 2112;
              v50 = rEMObject2;
              _os_log_fault_impl(&dword_1A805E000, v14, OS_LOG_TYPE_FAULT, "Got a nil unique identifier for object of type %{public}@ for relation key %{public}@ on object of type %{public}@. Backing object of bad object = %@", buf, 0x2Au);
            }
          }

          [v23 _cachedMeltedChildIdentifierToParentMap:mapCopy];
        }

LABEL_30:
      }

      v21 = [obj countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v21);
  }

  _Block_object_dispose(&v37, 8);
}

void __60__EKObject_Shared___cachedMeltedChildIdentifierToParentMap___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _cachedMeltedObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)meltedObjectInStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKObject.m" lineNumber:354 description:@"Cannot copy an object with changes from one event store to another"];
}

void __37__EKObject_Shared___resetMeltedCache__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = [OUTLINED_FUNCTION_5() callStackSymbols];
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __38__EKObject_Shared___changeSetForDiff___block_invoke_2_72_cold_1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end