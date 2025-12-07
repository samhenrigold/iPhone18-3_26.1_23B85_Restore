@interface NSMappedObjectStore
+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error;
- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options;
- (id)_rawMetadata__;
- (id)executeRequest:(id)request withContext:(id)context error:(id *)error;
- (id)getNewIDForObject:(id *)result;
- (id)metadata;
- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error;
- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (void)_setMap:(void *)result;
- (void)dealloc;
- (void)executeFetchRequest:(void *)request withContext:;
- (void)saveDocumentToPath:(id)path;
- (void)setMetadata:(id)metadata;
@end

@implementation NSMappedObjectStore

+ (id)metadataForPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  v7 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v7, v8, v9, v10, v11, v12);
  return 0;
}

+ (BOOL)setMetadata:(id)metadata forPersistentStoreWithURL:(id)l options:(id)options error:(id *)error
{
  v8 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v8, v9, v10, v11, v12, v13);
  return 0;
}

- (NSMappedObjectStore)initWithPersistentStoreCoordinator:(id)coordinator configurationName:(id)name URL:(id)l options:(id)options
{
  v55 = *MEMORY[0x1E69E9840];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  managedObjectModel = [coordinator managedObjectModel];
  v8 = [managedObjectModel countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(managedObjectModel);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v45;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v45 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v44 + 1) + 8 * j);
              _propertyType = [v17 _propertyType];
              switch(_propertyType)
              {
                case 2:
                  if ([v17 attributeType] == 1000 && objc_msgSend(v17, "isFileBackedFuture"))
                  {

                    v31 = MEMORY[0x1E695DF30];
                    v32 = *MEMORY[0x1E695D940];
                    v33 = @"Core Data provided atomic stores do not support file backed futures";
LABEL_35:
                    objc_exception_throw([v31 exceptionWithName:v32 reason:v33 userInfo:0]);
                  }

                  break;
                case 6:

                  v31 = MEMORY[0x1E695DF30];
                  v32 = *MEMORY[0x1E695D940];
                  v33 = @"Core Data provided atomic stores do not support derived properties";
                  goto LABEL_35;
                case 7:

                  v31 = MEMORY[0x1E695DF30];
                  v32 = *MEMORY[0x1E695D940];
                  v33 = @"Core Data provided atomic stores do not support composite attributes";
                  goto LABEL_35;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v14);
        }
      }

      v9 = [managedObjectModel countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v9);
  }

  v43.receiver = self;
  v43.super_class = NSMappedObjectStore;
  v19 = [(NSPersistentStore *)&v43 initWithPersistentStoreCoordinator:coordinator configurationName:name URL:l options:options];
  v20 = v19;
  if (v19)
  {
    v21 = [objc_msgSend(-[NSPersistentStore _persistentStoreCoordinator](v19 "_persistentStoreCoordinator")];
    v22 = *MEMORY[0x1E695E9F8];
    callBacks.retain = 0;
    callBacks.release = 0;
    callBacks.version = v22;
    *&callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
    callBacks.hash = *(MEMORY[0x1E695E9F8] + 40);
    v20->_entitiesToFetch = CFSetCreateMutable(0, [v21 count], &callBacks);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v39;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v39 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v38 + 1) + 8 * k);
          [(NSSet *)v20->_entitiesToFetch addObject:v27];
          -[NSSet addObjectsFromArray:](v20->_entitiesToFetch, "addObjectsFromArray:", [v27 subentities]);
          superentity = [v27 superentity];
          if (superentity)
          {
            superentity2 = superentity;
            do
            {
              [(NSSet *)v20->_entitiesToFetch addObject:superentity2];
              superentity2 = [superentity2 superentity];
            }

            while (superentity2);
          }
        }

        v24 = [v21 countByEnumeratingWithState:&v38 objects:v52 count:16];
      }

      while (v24);
    }
  }

  return v20;
}

- (void)dealloc
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);

  self->_theMap = 0;
  entitiesToFetch = self->_entitiesToFetch;
  if (entitiesToFetch)
  {
    CFRelease(entitiesToFetch);
  }

  [v3 drain];
  v5.receiver = self;
  v5.super_class = NSMappedObjectStore;
  [(NSPersistentStore *)&v5 dealloc];
}

- (void)_setMap:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[13];
    if (v4 != a2)
    {

      result = a2;
      v3[13] = result;
    }
  }

  return result;
}

- (void)saveDocumentToPath:(id)path
{
  v5 = objc_opt_class();

  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
}

- (id)executeRequest:(id)request withContext:(id)context error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  if (!request)
  {
    goto LABEL_70;
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
          v12 = &unk_1EF4351C0;
          goto LABEL_58;
        }

        return 0;
      }

      if (requestType == 10)
      {
        if (error)
        {
          v10 = MEMORY[0x1E696ABC0];
          v11 = *MEMORY[0x1E696A250];
          v12 = &unk_1EF4351E8;
LABEL_58:
          v39 = [v10 errorWithDomain:v11 code:134091 userInfo:v12];
          result = 0;
          *error = v39;
          return result;
        }

        return 0;
      }

LABEL_70:
      v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"Unknown command type %@", context, error, request), 0}];
      objc_exception_throw(v45);
    }

LABEL_60:
    if (self)
    {
      v41 = [request copy];
      [v41 setPredicate:{-[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", objc_msgSend(v41, "predicate"))}];
      v42 = [-[NSPersistentStoreMap handleFetchRequest:](self->_theMap handleFetchRequest:{v41), "count"}];
      v43 = MEMORY[0x1E695DEC8];
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v42];

      return [v43 arrayWithObject:v44];
    }

    return 0;
  }

  if (requestType != 1)
  {
    if (requestType != 2)
    {
      goto LABEL_70;
    }

    if (!self)
    {
      return 0;
    }

    if ([(NSSaveChangesRequest *)request hasChanges]& 1) != 0 || (v13 = atomic_load(&self->super._isMetadataDirty), (v13))
    {
      contextCopy = context;
      requestCopy = request;
      insertedObjects = [request insertedObjects];
      v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(insertedObjects, "count")}];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v17 = [insertedObjects countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v17)
      {
        v18 = *v62;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v62 != v18)
            {
              objc_enumerationMutation(insertedObjects);
            }

            v20 = *(*(&v61 + 1) + 8 * i);
            objectID = [v20 objectID];
            if ([objectID isTemporaryID])
            {
              v22 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v20];
              [v15 setObject:v22 forKey:objectID];
              [v48 addObject:v20];
              [v16 addObject:v22];
            }
          }

          v17 = [insertedObjects countByEnumeratingWithState:&v61 objects:v68 count:16];
        }

        while (v17);
      }

      if ([v48 count])
      {
        v23 = [(NSManagedObjectContext *)contextCopy _changeIDsForManagedObjects:v48 toIDs:v16];
        if (v23)
        {
          [(NSSaveChangesRequest *)requestCopy _addChangedObjectIDsNotification:v23];
        }
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v24 = [insertedObjects countByEnumeratingWithState:&v57 objects:v67 count:16];
      if (v24)
      {
        v25 = *v58;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v58 != v25)
            {
              objc_enumerationMutation(insertedObjects);
            }

            v27 = *(*(&v57 + 1) + 8 * j);
            if (v27)
            {
              [(NSPersistentStoreMap *)self->_theMap addObject:v27 objectIDMap:v15];
            }
          }

          v24 = [insertedObjects countByEnumeratingWithState:&v57 objects:v67 count:16];
        }

        while (v24);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      deletedObjects = [requestCopy deletedObjects];
      v29 = [deletedObjects countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (v29)
      {
        v30 = *v54;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v54 != v30)
            {
              objc_enumerationMutation(deletedObjects);
            }

            v32 = *(*(&v53 + 1) + 8 * k);
            if (v32)
            {
              [(NSPersistentStoreMap *)self->_theMap removeObject:v32 objectIDMap:v15];
            }
          }

          v29 = [deletedObjects countByEnumeratingWithState:&v53 objects:v66 count:16];
        }

        while (v29);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      updatedObjects = [requestCopy updatedObjects];
      v34 = [updatedObjects countByEnumeratingWithState:&v49 objects:v65 count:16];
      if (v34)
      {
        v35 = *v50;
        do
        {
          for (m = 0; m != v34; ++m)
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(updatedObjects);
            }

            v37 = *(*(&v49 + 1) + 8 * m);
            if (v37)
            {
              [(NSPersistentStoreMap *)self->_theMap updateObject:v37 objectIDMap:v15];
            }
          }

          v34 = [updatedObjects countByEnumeratingWithState:&v49 objects:v65 count:16];
        }

        while (v34);
      }

      v38 = [(NSPersistentStore *)self URL];
      if (v38)
      {
        [(NSMappedObjectStore *)self saveDocumentToPath:[(NSURL *)v38 path]];
      }

      [(NSPersistentStore *)self _setMetadataDirty:0];
    }

    return NSArray_EmptyArray;
  }

  if ([request resultType] == 4)
  {
    goto LABEL_60;
  }

  if (!-[NSSet containsObject:](self->_entitiesToFetch, "containsObject:", [request entity]))
  {
    return NSArray_EmptyArray;
  }

  return [(NSMappedObjectStore *)&self->super.super.isa executeFetchRequest:request withContext:context];
}

- (void)executeFetchRequest:(void *)request withContext:
{
  v78 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  if ([a2 propertiesToGroupBy])
  {
    v60 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{selfCopy), 0}];
    objc_exception_throw(v60);
  }

  v5 = -[_NSMemoryStorePredicateRemapper createPredicateForFetchFromPredicate:](+[_NSMemoryStorePredicateRemapper defaultInstance](_NSMemoryStorePredicateRemapper, "defaultInstance"), "createPredicateForFetchFromPredicate:", [v4 predicate]);
  v6 = selfCopy[6];
  v7 = [v4 copy];
  [v7 setPredicate:v5];
  v8 = [selfCopy[13] handleFetchRequest:v7];
  resultType = [v4 resultType];
  resultType2 = [v4 resultType];
  includesPropertyValues = [v4 includesPropertyValues];
  returnsObjectsAsFaults = [v4 returnsObjectsAsFaults];
  v13 = [v8 count];
  v64 = v13;
  if (resultType)
  {
    if (resultType2 != 2)
    {
      v14 = v64;
      goto LABEL_71;
    }

    v63 = &v61;
    v14 = v64;
    MEMORY[0x1EEE9AC00](v13);
    v17 = &v61 - v16;
    if (v14 > 0x200)
    {
      v17 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v61 - v16, 8 * v15);
    }

    [v8 getObjects:v17 range:{0, v14}];
    propertiesToFetch = [v4 propertiesToFetch];
    if (!propertiesToFetch)
    {
      entity = [v4 entity];
      if (entity)
      {
        v31 = entity[14];
      }

      else
      {
        v31 = 0;
      }

      v32 = [objc_msgSend(entity "propertiesByName")];
      propertiesToFetch = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v32 + 8 * *(v31 + 48) count:*(v31 + 56) + *(v31 + 48)];
    }

    v33 = [propertiesToFetch count];
    v34 = MEMORY[0x1EEE9AC00](v33);
    v37 = 8 * v36;
    v62 = v34;
    if (v34 > 0x200)
    {
      v67 = NSAllocateScannedUncollectable();
      v70 = NSAllocateScannedUncollectable();
    }

    else
    {
      v67 = (&v61 - v35);
      bzero(&v61 - v35, v37);
      MEMORY[0x1EEE9AC00](v38);
      v70 = &v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v70, v37);
    }

    v66 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v65 = objc_opt_class();
    if (!v14)
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:0];
      goto LABEL_68;
    }

    v61 = v4;
    v72 = 0;
    v39 = 0;
    v68 = propertiesToFetch;
    while (1)
    {
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v73 = 0u;
      v40 = [propertiesToFetch countByEnumeratingWithState:&v73 objects:v77 count:{16, v61}];
      if (!v40)
      {
        goto LABEL_60;
      }

      v41 = 0;
      v69 = *v74;
      do
      {
        v42 = 0;
        v43 = v41 << 32;
        v41 = v41;
        do
        {
          if (*v74 != v69)
          {
            objc_enumerationMutation(v68);
          }

          v44 = *(*(&v73 + 1) + 8 * v42);
          v45 = v17;
          v46 = [selfCopy[13] dataForKey:{objc_msgSend(*&v17[8 * v72], "_referenceData")}];
          _propertyType = [v44 _propertyType];
          name = [v44 name];
          if (_propertyType != 5)
          {
            if (_propertyType == 4)
            {
              objectID = [objc_msgSend_valueForKey_(v46) objectID];
LABEL_44:
              lastObject = objectID;
            }

            else
            {
              if (_propertyType == 2)
              {
                objectID = objc_msgSend_valueForKey_(v46);
                goto LABEL_44;
              }

              lastObject = 0;
            }

            v17 = v45;
            goto LABEL_51;
          }

          expression = [v44 expression];
          lastObject = [expression expressionValueWithObject:v46 context:v66];
          if ([expression expressionType] == 50)
          {
            v17 = v45;
            if (([expression isCountOnlyRequest] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(expression, "requestExpression"), "expressionValueWithObject:context:", 0, 0), "resultType") == 4)
            {
              lastObject = [lastObject lastObject];
            }
          }

          else
          {
            v17 = v45;
          }

          if (objc_opt_isKindOfClass())
          {
            lastObject = [lastObject objectID];
          }

LABEL_51:
          if (!v39)
          {
            v67[v41] = name;
          }

          *&v70[8 * v41++] = lastObject;
          ++v42;
          v43 += 0x100000000;
        }

        while (v40 != v42);
        propertiesToFetch = v68;
        v52 = [v68 countByEnumeratingWithState:&v73 objects:v77 count:16];
        v40 = v52;
      }

      while (v52);
      v40 = v43 >> 32;
      v14 = v64;
LABEL_60:
      if (!v39)
      {
        v53 = [NSKnownKeysMappingStrategy alloc];
        v39 = [(NSKnownKeysMappingStrategy *)v53 initForKeys:v67 count:v40];
      }

      v54 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v39];
      v55 = v72;
      *&v17[8 * v72] = v54;
      [(NSKnownKeysDictionary *)v54 setValues:v70];
      v72 = v55 + 1;
      if (v55 + 1 == v14)
      {
        v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v17 count:v14];
        v56 = 0;
        do
        {
        }

        while (v14 != v56);

        v4 = v61;
        if (v14 >= 0x201)
        {
          NSZoneFree(0, v17);
        }

LABEL_68:
        if (v62 >= 0x201)
        {
          NSZoneFree(0, v67);
          NSZoneFree(0, v70);
        }

        goto LABEL_71;
      }
    }
  }

  v63 = &v61;
  v18 = MEMORY[0x1EEE9AC00](v13);
  v21 = &v61 - v20;
  v14 = v18;
  if (v18 >= 0x201)
  {
    v22 = v4;
    v21 = NSAllocateScannedUncollectable();
    [v8 getObjects:v21 range:{0, v14}];
  }

  else
  {
    bzero(&v61 - v20, 8 * v19);
    [v8 getObjects:v21 range:{0, v14}];
    if (!v14)
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v21 count:0];
      goto LABEL_71;
    }

    v22 = v4;
  }

  v23 = 0;
  v24 = includesPropertyValues ^ 1 | returnsObjectsAsFaults;
  do
  {
    v25 = *&v21[8 * v23];
    v26 = [NSManagedObjectContext _retainedObjectWithID:request optionalHandler:v25 withInlineStorage:v6];
    if ((v24 & 1) == 0)
    {
      v27 = [selfCopy[13] dataForKey:{objc_msgSend(v25, "_referenceData")}];
      if (v26)
      {
        v26[4] |= 0x200u;
      }

      _PFFaultHandlerFulfillFault(v6, v26, request, v27, 1);
      v14 = v64;
    }

    *&v21[8 * v23++] = v26;
  }

  while (v14 != v23);
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:v21 count:v14];
  v28 = 0;
  do
  {
  }

  while (v14 != v28);
  v4 = v22;
  if (v14 >= 0x201)
  {
    NSZoneFree(0, v21);
  }

LABEL_71:
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

- (id)getNewIDForObject:(id *)result
{
  if (result)
  {
    v3 = result;
    nextPK64 = [result[13] nextPK64];
    v5 = [v3 objectIDFactoryForEntity:{objc_msgSend(a2, "entity")}];
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:nextPK64];
    v7 = [[v5 alloc] initWithObject:v6];

    return v7;
  }

  return result;
}

- (id)newValuesForObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  v5 = -[NSPersistentStoreMap dataForKey:](self->_theMap, "dataForKey:", [d _referenceData]);

  return v5;
}

- (id)newValueForRelationship:(id)relationship forObjectWithID:(id)d withContext:(id)context error:(id *)error
{
  error = [(NSPersistentStoreMap *)self->_theMap retainedObjectIDsForRelationship:relationship forObjectID:d, context, error];
  if (([relationship isToMany] & 1) == 0)
  {
    lastObject = [error lastObject];
    v9 = lastObject;

    return lastObject;
  }

  return error;
}

- (id)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [objects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(objects);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objectID = [v11 objectID];
        if ([objectID isTemporaryID])
        {
          v13 = [(NSMappedObjectStore *)&self->super.super.isa getNewIDForObject:v11];
        }

        else
        {
          v13 = objectID;
        }

        v14 = v13;
        [array addObject:v13];
      }

      v8 = [objects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (id)_rawMetadata__
{
  theMap = self->_theMap;
  if (theMap)
  {
    return theMap->_storeMetadata;
  }

  else
  {
    return 0;
  }
}

- (id)metadata
{
  theMap = self->_theMap;
  if (theMap)
  {
    return theMap->_storeMetadata;
  }

  else
  {
    return 0;
  }
}

- (void)setMetadata:(id)metadata
{
  v5.receiver = self;
  v5.super_class = NSMappedObjectStore;
  [(NSPersistentStore *)&v5 setMetadata:?];
  [(NSPersistentStoreMap *)&self->_theMap->super.isa setMetadata:metadata];
}

@end