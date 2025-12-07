@interface NSAtomicStore
- (NSAtomicStore)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator configurationName:(NSString *)configurationName URL:(NSURL *)url options:(NSDictionary *)options;
- (NSManagedObjectID)objectIDForEntity:(NSEntityDescription *)entity referenceObject:(id)data;
- (NSSet)cacheNodes;
- (id)executeFetchRequest:(void *)request withContext:;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)metadata;
- (id)newReferenceObjectForManagedObject:(NSManagedObject *)managedObject;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (id)referenceObjectForObjectID:(NSManagedObjectID *)objectID;
- (uint64_t)_insertNodeIntoEntityCache:(uint64_t)cache;
- (void)_didLoadMetadata;
- (void)_getNewIDForObject:(void *)result;
- (void)_retrieveNodesSatisfyingRequest:(uint64_t)request;
- (void)addCacheNodes:(NSSet *)cacheNodes;
- (void)dealloc;
- (void)setMetadata:(id)metadata;
@end

@implementation NSAtomicStore

- (NSAtomicStore)initWithPersistentStoreCoordinator:(NSPersistentStoreCoordinator *)coordinator configurationName:(NSString *)configurationName URL:(NSURL *)url options:(NSDictionary *)options
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  managedObjectModel = [(NSPersistentStoreCoordinator *)coordinator managedObjectModel];
  v8 = [(NSManagedObjectModel *)managedObjectModel countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(managedObjectModel);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * j);
              if ([v17 _isAttribute] && objc_msgSend(v17, "attributeType") == 1000 && objc_msgSend(v17, "isFileBackedFuture"))
              {

                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Atomic stores do not support file backed futures" userInfo:0]);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }
      }

      v9 = [(NSManagedObjectModel *)managedObjectModel countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  v24.receiver = self;
  v24.super_class = NSAtomicStore;
  v18 = [(NSPersistentStore *)&v24 initWithPersistentStoreCoordinator:coordinator configurationName:configurationName URL:url options:options];
  if (v18)
  {
    v18->_nodeCache = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18->_entityCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v18;
}

- (void)dealloc
{
  self->_nodeCache = 0;

  self->_entityCache = 0;
  self->_storeMetadata = 0;
  v3.receiver = self;
  v3.super_class = NSAtomicStore;
  [(NSPersistentStore *)&v3 dealloc];
}

- (void)addCacheNodes:(NSSet *)cacheNodes
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend_valueForKey_(objc_msgSend(objc_msgSend(-[NSPersistentStore _persistentStoreCoordinator](self, "_persistentStoreCoordinator"), "managedObjectModel"), "entitiesForConfiguration:", -[NSPersistentStore configurationName](self, "configurationName")))}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(NSSet *)cacheNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(cacheNodes);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v5 containsObject:{objc_msgSend(objc_msgSend(objc_msgSend(v10, "objectID"), "entity"), "name")}] & 1) == 0)
        {

          v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{self, objc_msgSend(objc_msgSend(v10, "objectID"), "entity")), 0}];
          objc_exception_throw(v11);
        }

        if (self)
        {
          -[NSMutableDictionary setObject:forKey:](self->_nodeCache, "setObject:forKey:", v10, [v10 objectID]);
          [(NSAtomicStore *)self _insertNodeIntoEntityCache:v10];
        }
      }

      v7 = [(NSSet *)cacheNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (NSSet)cacheNodes
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSMutableDictionary *)self->_nodeCache allValues];

  return [v2 setWithArray:allValues];
}

- (id)newReferenceObjectForManagedObject:(NSManagedObject *)managedObject
{
  objc_sync_enter(self);
  v4 = self->_nextReference + 1;
  self->_nextReference = v4;
  objc_sync_exit(self);
  v5 = objc_alloc(MEMORY[0x1E696AD98]);

  return [v5 initWithInteger:v4];
}

- (NSManagedObjectID)objectIDForEntity:(NSEntityDescription *)entity referenceObject:(id)data
{
  result = [objc_alloc(-[NSPersistentStore objectIDFactoryForEntity:](self objectIDFactoryForEntity:{entity)), "initWithObject:", data}];
  if (BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
  {

    return result;
  }

  return result;
}

- (id)referenceObjectForObjectID:(NSManagedObjectID *)objectID
{
  if (!objectID)
  {
    return 0;
  }

  if ([(NSManagedObjectID *)objectID persistentStore]!= self)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot retrieve referenceObject from an objectID that was not created by this store" userInfo:0]);
  }

  return [(NSManagedObjectID *)objectID _referenceData];
}

- (id)metadata
{
  result = self->_storeMetadata;
  if (!result)
  {
    result = [MEMORY[0x1E695DF90] dictionaryWithObject:+[_PFRoutines _getUUID](_PFRoutines) forKey:@"NSStoreUUID"];
    self->_storeMetadata = result;
  }

  return result;
}

- (void)setMetadata:(id)metadata
{
  v6.receiver = self;
  v6.super_class = NSAtomicStore;
  [(NSPersistentStore *)&v6 setMetadata:?];
  if (([metadata isEqual:self->_storeMetadata] & 1) == 0)
  {
    v5 = [(NSPersistentStore *)self _updatedMetadataWithSeed:metadata includeVersioning:1];

    self->_storeMetadata = v5;
  }
}

- (uint64_t)_insertNodeIntoEntityCache:(uint64_t)cache
{
  superentity = [objc_msgSend(a2 "objectID")];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v6 = *(superentity + 72);
    }

    else
    {
      do
      {
        v6 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v6 = 0;
  }

  name = [v6 name];
  v8 = [*(cache + 112) objectForKey:name];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(cache + 112) setObject:v8 forKey:name];
  }

  return [v8 addObject:a2];
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  if (!request)
  {
    goto LABEL_97;
  }

  requestType = [request requestType];
  if (requestType > 2)
  {
    if (requestType != 3)
    {
      if (requestType == 8)
      {
        if (error)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF434AE0;
          goto LABEL_87;
        }

        return 0;
      }

      if (requestType == 10)
      {
        if (error)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF434B08;
LABEL_87:
          v70 = [v10 errorWithDomain:v11 code:134091 userInfo:v12];
          result = 0;
          *error = v70;
          return result;
        }

        return 0;
      }

LABEL_97:
      v75 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"Unknown command type %@", context, error, request), 0}];
      objc_exception_throw(v75);
    }

LABEL_89:
    if (self)
    {
      v71 = [request copy];
      [v71 setPredicate:{-[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", objc_msgSend(v71, "predicate"))}];
      v72 = [-[NSAtomicStore _retrieveNodesSatisfyingRequest:](self v71)];
      v73 = MEMORY[0x1E695DEC8];
      v74 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v72];

      return [v73 arrayWithObject:v74];
    }

    return 0;
  }

  if (requestType == 1)
  {
    if ([request resultType] == 4)
    {
      goto LABEL_89;
    }

    return [(NSAtomicStore *)&self->super.super.isa executeFetchRequest:request withContext:context];
  }

  else
  {
    if (requestType != 2)
    {
      goto LABEL_97;
    }

    if (!self)
    {
      return 0;
    }

    if ([(NSSaveChangesRequest *)request hasChanges]& 1) != 0 || (v13 = atomic_load(&self->super._isMetadataDirty), (v13))
    {
      obj = request;
      insertedObjects = [request insertedObjects];
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v17 = [insertedObjects countByEnumeratingWithState:&v98 objects:v106 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v99;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v99 != v19)
            {
              objc_enumerationMutation(insertedObjects);
            }

            v21 = *(*(&v98 + 1) + 8 * i);
            if ([objc_msgSend(v21 "objectID")])
            {
              v22 = [(NSAtomicStore *)self _getNewIDForObject:v21];
              [v15 addObject:v21];
              [v16 addObject:v22];
            }
          }

          v18 = [insertedObjects countByEnumeratingWithState:&v98 objects:v106 count:16];
        }

        while (v18);
      }

      if ([v15 count])
      {
        v23 = [(NSManagedObjectContext *)context _changeIDsForManagedObjects:v15 toIDs:v16];
        if (v23)
        {
          [(NSSaveChangesRequest *)obj _addChangedObjectIDsNotification:v23];
        }
      }

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v24 = [insertedObjects countByEnumeratingWithState:&v94 objects:v105 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v95;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v95 != v26)
            {
              objc_enumerationMutation(insertedObjects);
            }

            if (*(*(&v94 + 1) + 8 * j))
            {
              v28 = [(NSAtomicStore *)self newCacheNodeForManagedObject:?];
              [(NSMutableDictionary *)self->_nodeCache setObject:v28 forKey:[(NSAtomicStoreCacheNode *)v28 objectID]];
              [(NSAtomicStore *)self _insertNodeIntoEntityCache:v28];
            }
          }

          v25 = [insertedObjects countByEnumeratingWithState:&v94 objects:v105 count:16];
        }

        while (v25);
      }

      deletedObjects = [obj deletedObjects];
      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v31 = [deletedObjects countByEnumeratingWithState:&v90 objects:v104 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v91;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v91 != v33)
            {
              objc_enumerationMutation(deletedObjects);
            }

            v35 = *(*(&v90 + 1) + 8 * k);
            if (-[NSMutableDictionary objectForKey:](self->_nodeCache, "objectForKey:", [v35 objectID]))
            {
              [v30 addObject:{-[NSMutableDictionary objectForKey:](self->_nodeCache, "objectForKey:", objc_msgSend(v35, "objectID"))}];
            }
          }

          v32 = [deletedObjects countByEnumeratingWithState:&v90 objects:v104 count:16];
        }

        while (v32);
      }

      [(NSAtomicStore *)self willRemoveCacheNodes:v30];

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v36 = [deletedObjects countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v87;
        do
        {
          v39 = 0;
          do
          {
            if (*v87 != v38)
            {
              objc_enumerationMutation(deletedObjects);
            }

            v40 = *(*(&v86 + 1) + 8 * v39);
            if (v40)
            {
              v41 = -[NSMutableDictionary objectForKey:](self->_nodeCache, "objectForKey:", [v40 objectID]);
              objectID = [v41 objectID];
              if (objectID)
              {
                [(NSMutableDictionary *)self->_nodeCache removeObjectForKey:objectID];
              }

              superentity = [objc_msgSend(v41 "objectID")];
              if (superentity)
              {
                if (atomic_load((superentity + 124)))
                {
                  v45 = *(superentity + 72);
                }

                else
                {
                  do
                  {
                    v45 = superentity;
                    superentity = [superentity superentity];
                  }

                  while (superentity);
                }
              }

              else
              {
                v45 = 0;
              }

              name = [v45 name];
              if (name)
              {
                v47 = name;
                v48 = [(NSMutableDictionary *)self->_entityCache objectForKey:name];
                if (v48)
                {
                  v49 = v48;
                  [v48 removeObject:v41];
                  if (![v49 count])
                  {
                    [(NSMutableDictionary *)self->_entityCache removeObjectForKey:v47];
                  }
                }
              }
            }

            ++v39;
          }

          while (v39 != v37);
          v50 = [deletedObjects countByEnumeratingWithState:&v86 objects:v103 count:16];
          v37 = v50;
        }

        while (v50);
      }

      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      obja = [obj updatedObjects];
      v51 = [obja countByEnumeratingWithState:&v82 objects:v102 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v83;
        do
        {
          for (m = 0; m != v52; ++m)
          {
            if (*v83 != v53)
            {
              objc_enumerationMutation(obja);
            }

            v55 = *(*(&v82 + 1) + 8 * m);
            if (v55)
            {
              entity = [*(*(&v82 + 1) + 8 * m) entity];
              if (entity)
              {
                v57 = entity[14];
              }

              else
              {
                v57 = 0;
              }

              v58 = _kvcPropertysPrimitiveGetters(entity);
              v60 = v57[18];
              v59 = v57[19];
              if (v60 < v59 + v60)
              {
                do
                {
                  _PF_Handler_Primitive_GetProperty(v55, v60, 0, *(v58 + 8 * v60));
                  [v61 count];
                  ++v60;
                  --v59;
                }

                while (v59);
              }

              v63 = v57[26];
              v62 = v57[27];
              if (v63 < v62 + v63)
              {
                do
                {
                  _PF_Handler_Primitive_GetProperty(v55, v63, 0, *(v58 + 8 * v63));
                  [v64 count];
                  ++v63;
                  --v62;
                }

                while (v62);
              }

              v65 = -[NSMutableDictionary objectForKey:](self->_nodeCache, "objectForKey:", [v55 objectID]);
              [(NSAtomicStore *)self updateCacheNode:v65 fromManagedObject:v55];
              [v65 _setVersionNumber:{objc_msgSend(v65, "_versionNumber") + 1}];
            }
          }

          v52 = [obja countByEnumeratingWithState:&v82 objects:v102 count:16];
        }

        while (v52);
      }

      v81 = 0;
      metadata = [(NSAtomicStore *)self metadata];
      if ([objc_msgSend(metadata objectForKey:{0x1EF3FD448), "integerValue"}] != self->_nextReference)
      {
        v67 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        v68 = [metadata mutableCopy];
        [v68 setObject:v67 forKey:0x1EF3FD448];
        [(NSAtomicStore *)self setMetadata:v68];
      }

      if (![(NSAtomicStore *)self save:&v81])
      {
        if (v81)
        {
          code = [v81 code];
          if (v81)
          {
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"NSCoreDataPrimaryError", 0}];
          }

          else
          {
            v76 = 0;
          }
        }

        else
        {
          v76 = 0;
          code = 134030;
        }

        v78 = [_NSCoreDataException exceptionWithName:code code:@"Error saving the persistent store." reason:v76 userInfo:?];
        objc_exception_throw(v78);
      }

      [(NSPersistentStore *)self _setMetadataDirty:0];
    }

    return NSArray_EmptyArray;
  }
}

- (id)executeFetchRequest:(void *)request withContext:
{
  v80 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  if ([a2 propertiesToGroupBy])
  {
    v62 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{selfCopy), 0}];
    objc_exception_throw(v62);
  }

  v5 = -[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", [v4 predicate]);
  v6 = selfCopy[6];
  v7 = [v4 copy];
  [v7 setPredicate:v5];
  v8 = [(NSAtomicStore *)selfCopy _retrieveNodesSatisfyingRequest:v7];
  resultType = [v4 resultType];
  resultType2 = [v4 resultType];
  includesPropertyValues = [v4 includesPropertyValues];
  returnsObjectsAsFaults = [v4 returnsObjectsAsFaults];
  v13 = [v8 count];
  v14 = v13;
  v66 = v13;
  if (!resultType)
  {
    v65 = &v63;
    MEMORY[0x1EEE9AC00](v13);
    v20 = &v63 - v19;
    if (v14 >= 0x201)
    {
      v21 = v4;
      v20 = NSAllocateScannedUncollectable();
      [v8 getObjects:v20 range:{0, v14}];
    }

    else
    {
      bzero(&v63 - v19, 8 * v18);
      [v8 getObjects:v20 range:{0, v14}];
      if (!v14)
      {
        v27 = 1;
LABEL_18:
        v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v20 count:v14];
        if ((v27 & 1) == 0)
        {
          v28 = v20;
          v29 = v14;
          do
          {
            v30 = *v28++;

            --v29;
          }

          while (v29);
        }

        if (v14 >= 0x201)
        {
          NSZoneFree(0, v20);
        }

        goto LABEL_72;
      }

      v21 = v4;
    }

    v22 = 0;
    v23 = includesPropertyValues ^ 1 | returnsObjectsAsFaults;
    do
    {
      v24 = *&v20[8 * v22];
      v25 = [NSManagedObjectContext _retainedObjectWithID:request optionalHandler:v24 withInlineStorage:v6];
      if ((v23 & 1) == 0)
      {
        v26 = [selfCopy[13] objectForKey:v24];
        if (v25)
        {
          v25[4] |= 0x200u;
        }

        _PFFaultHandlerFulfillFault(v6, v25, request, v26, 1);
      }

      *&v20[8 * v22++] = v25;
    }

    while (v66 != v22);
    v27 = 0;
    v4 = v21;
    v14 = v66;
    goto LABEL_18;
  }

  if (resultType2 != 2)
  {
    goto LABEL_72;
  }

  v65 = &v63;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v63 - v16;
  if (v14 > 0x200)
  {
    v17 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v63 - v16, 8 * v15);
  }

  [v8 getObjects:v17 range:{0, v14}];
  propertiesToFetch = [v4 propertiesToFetch];
  if (!propertiesToFetch)
  {
    entity = [v4 entity];
    if (entity)
    {
      v33 = entity[14];
    }

    else
    {
      v33 = 0;
    }

    v34 = [objc_msgSend(entity "propertiesByName")];
    propertiesToFetch = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v34 + 8 * *(v33 + 48) count:*(v33 + 56) + *(v33 + 48)];
    v14 = v66;
  }

  v35 = [propertiesToFetch count];
  v36 = MEMORY[0x1EEE9AC00](v35);
  v39 = 8 * v38;
  v64 = v36;
  if (v36 > 0x200)
  {
    v69 = NSAllocateScannedUncollectable();
    v72 = NSAllocateScannedUncollectable();
  }

  else
  {
    v69 = (&v63 - v37);
    bzero(&v63 - v37, v39);
    MEMORY[0x1EEE9AC00](v40);
    v72 = &v63 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v72, v39);
  }

  v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v67 = objc_opt_class();
  if (!v14)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:0];
    goto LABEL_69;
  }

  v63 = v4;
  v74 = 0;
  v41 = 0;
  v70 = propertiesToFetch;
  do
  {
    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    v75 = 0u;
    v42 = [propertiesToFetch countByEnumeratingWithState:&v75 objects:v79 count:{16, v63}];
    if (!v42)
    {
      goto LABEL_61;
    }

    v43 = 0;
    v71 = *v76;
    do
    {
      v44 = 0;
      v45 = v43 << 32;
      v43 = v43;
      do
      {
        if (*v76 != v71)
        {
          objc_enumerationMutation(v70);
        }

        v46 = *(*(&v75 + 1) + 8 * v44);
        v47 = v17;
        v48 = [selfCopy[13] objectForKey:*&v17[8 * v74]];
        _propertyType = [v46 _propertyType];
        name = [v46 name];
        if ([v46 _isAttribute])
        {
          objectID = objc_msgSend_valueForKey_(v48);
          goto LABEL_45;
        }

        if (_propertyType != 5)
        {
          if (_propertyType == 4)
          {
            objectID = [objc_msgSend_valueForKey_(v48) objectID];
LABEL_45:
            lastObject = objectID;
          }

          else
          {
            lastObject = 0;
          }

          v17 = v47;
          goto LABEL_47;
        }

        expression = [v46 expression];
        lastObject = [expression expressionValueWithObject:v48 context:v68];
        if ([expression expressionType] == 50)
        {
          v17 = v47;
          if (([expression isCountOnlyRequest] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(expression, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") == 4)
          {
            lastObject = [lastObject lastObject];
          }
        }

        else
        {
          v17 = v47;
        }

        if (objc_opt_isKindOfClass())
        {
          lastObject = [lastObject objectID];
        }

LABEL_47:
        if (!v41)
        {
          v69[v43] = name;
        }

        *&v72[8 * v43++] = lastObject;
        ++v44;
        v45 += 0x100000000;
      }

      while (v42 != v44);
      propertiesToFetch = v70;
      v54 = [v70 countByEnumeratingWithState:&v75 objects:v79 count:16];
      v42 = v54;
    }

    while (v54);
    v42 = v45 >> 32;
    v14 = v66;
LABEL_61:
    if (!v41)
    {
      v55 = [NSKnownKeysMappingStrategy alloc];
      v41 = [(NSKnownKeysMappingStrategy *)v55 initForKeys:v69 count:v42];
    }

    v56 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v41];
    v57 = v74;
    *&v17[8 * v74] = v56;
    [(NSKnownKeysDictionary *)v56 setValues:v72];
    v74 = v57 + 1;
  }

  while (v57 + 1 != v14);
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:v14];
  v58 = 0;
  do
  {
  }

  while (v14 != v58);

  v4 = v63;
  if (v14 >= 0x201)
  {
    NSZoneFree(0, v17);
  }

LABEL_69:
  if (v64 >= 0x201)
  {
    NSZoneFree(0, v69);
    NSZoneFree(0, v72);
  }

LABEL_72:
  fetchOffset = [v4 fetchOffset];
  if (fetchOffset)
  {
    if (fetchOffset <= v14)
    {
      [v8 removeObjectsInRange:0];
    }

    else
    {
      [v8 removeAllObjects];
    }

    v14 = [v8 count];
  }

  fetchLimit = [v4 fetchLimit];
  if (fetchLimit && v14 > fetchLimit)
  {
    [v8 removeObjectsInRange:{fetchLimit, v14 - fetchLimit}];
  }

  return v8;
}

- (void)_retrieveNodesSatisfyingRequest:(uint64_t)request
{
  v33 = *MEMORY[0x1E69E9840];
  entity = [a2 entity];
  v5 = entity;
  if (entity)
  {
    if (atomic_load((entity + 124)))
    {
      v7 = *(entity + 72);
    }

    else
    {
      do
      {
        v7 = entity;
        entity = [entity superentity];
      }

      while (entity);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(request + 112) objectForKey:{objc_msgSend(v7, "name")}];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  predicate = [a2 predicate];
  if (!predicate)
  {
    predicate = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  fetchLimit = [a2 fetchLimit];
  if ([a2 sortDescriptors])
  {
    v11 = 1;
  }

  else
  {
    v11 = fetchLimit == 0;
  }

  v12 = !v11;
  includesSubentities = [a2 includesSubentities];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v8;
  v15 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
LABEL_15:
    v18 = 0;
    while (1)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v28 + 1) + 8 * v18);
      v20 = [objc_msgSend(v19 "objectID")];
      if ((v5 == v20 || includesSubentities && [v5 _subentitiesIncludes:v20]) && objc_msgSend(predicate, "evaluateWithObject:", v19))
      {
        [v9 addObject:v19];
      }

      if (v12 && [v9 count] > fetchLimit)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  sortDescriptors = [v26 sortDescriptors];
  if (sortDescriptors)
  {
    [v9 sortUsingDescriptors:sortDescriptors];
  }

  v22 = [v9 count];
  if (v22)
  {
    v23 = v22;
    for (i = 0; i != v23; ++i)
    {
      [v9 replaceObjectAtIndex:i withObject:{objc_msgSend(objc_msgSend(v9, "objectAtIndex:", i), "objectID")}];
    }
  }

  return v9;
}

- (void)_getNewIDForObject:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result newReferenceObjectForManagedObject:a2];
    v5 = [objc_alloc(objc_msgSend(v3 objectIDFactoryForEntity:{objc_msgSend(a2, "entity"))), "initWithObject:", v4}];

    return v5;
  }

  return result;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  if (self)
  {
    self = [(NSMutableDictionary *)self->_nodeCache objectForKey:d, context, error];
    v5 = vars8;
  }

  return self;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v7 = [(NSMutableDictionary *)self->_nodeCache objectForKey:d];
  }

  else
  {
    v7 = 0;
  }

  [relationship name];
  isToMany = [relationship isToMany];
  v9 = objc_msgSend_valueForKey_(v7);
  v10 = v9;
  if (isToMany)
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = [v9 count];
    Mutable = CFArrayCreateMutable(v11, v12, MEMORY[0x1E695E9C0]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v10);
          }

          CFArrayAppendValue(Mutable, [*(*(&v20 + 1) + 8 * v17++) objectID]);
        }

        while (v15 != v17);
        v15 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    return Mutable;
  }

  else
  {
    objectID = [v9 objectID];

    return objectID;
  }
}

- (void)_didLoadMetadata
{
  v4.receiver = self;
  v4.super_class = NSAtomicStore;
  [(NSPersistentStore *)&v4 _didLoadMetadata];
  integerValue = [-[NSAtomicStore metadata](self "metadata")];
  if (integerValue)
  {
    integerValue = [integerValue integerValue];
  }

  self->_nextReference = integerValue;
}

- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [objects countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(objects);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objectID = [v11 objectID];
        if ([objectID isTemporaryID])
        {
          v13 = [(NSAtomicStore *)self _getNewIDForObject:v11];
          [array addObject:v13];
        }

        else
        {
          [array addObject:objectID];
        }
      }

      v8 = [objects countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return array;
}

@end