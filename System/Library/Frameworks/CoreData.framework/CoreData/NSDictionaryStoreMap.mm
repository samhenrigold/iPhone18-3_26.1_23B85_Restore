@interface NSDictionaryStoreMap
- (NSDictionaryStoreMap)initWithStore:(id)store fromArchivedData:(id)data;
- (NSDictionaryStoreMap)initWithStore:(id)store fromPath:(id)path;
- (id)handleFetchRequest:(id)request;
- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d;
- (uint64_t)_archivedData;
- (void)addObject:(id)object objectIDMap:(id)map;
- (void)dealloc;
- (void)removeObject:(id)object objectIDMap:(id)map;
- (void)saveToPath:(uint64_t)path;
- (void)updateObject:(id)object objectIDMap:(id)map;
@end

@implementation NSDictionaryStoreMap

- (NSDictionaryStoreMap)initWithStore:(id)store fromPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = NSDictionaryStoreMap;
  v6 = [(NSPersistentStoreMap *)&v23 initWithStore:?];
  if (v6)
  {
    if (path)
    {
      v7 = objc_alloc_init(NSBinaryObjectStoreFile);
      v7->_storeOptions = [objc_msgSend(store "options")];
      v22 = 0;
      if (![(NSBinaryObjectStoreFile *)v7 readFromFile:path error:&v22])
      {

        v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v22 forKey:*MEMORY[0x1E696AA08]];
        v17 = [_NSCoreDataException exceptionWithName:259 code:@"Can't read binary data from file" reason:v16 userInfo:?];
        objc_exception_throw(v17);
      }

      if (v7->_databaseVersion != 134481920)
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't load binary data from file (file was created by an incompatible version of CoreData)" userInfo:0]);
      }

      [(NSPersistentStoreMap *)v6 _setMetadata:?];
      v6->super._nextPK64 = v7->_primaryKeyGeneration;
      v8 = v7->_mapData;
      v6->_theMap = v8;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      allValues = [(NSMutableDictionary *)v8 allValues];
      v10 = [allValues countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            [(NSStoreMapNode *)*(*(&v18 + 1) + 8 * v12++) _setMap:v6];
          }

          while (v10 != v12);
          v10 = [allValues countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v6->_theMap = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1024];
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{+[_PFRoutines _getUUID](_PFRoutines), @"NSStoreUUID", @"Binary", @"NSStoreType", 0}];
      v14 = [(NSPersistentStoreMap *)&v6->super.super.isa _updatedMetadataWithSeed:v13 includeVersioning:1];
      [(NSPersistentStoreMap *)v6 _setMetadata:v14];
    }
  }

  return v6;
}

- (NSDictionaryStoreMap)initWithStore:(id)store fromArchivedData:(id)data
{
  v40[1] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = NSDictionaryStoreMap;
  v6 = [(NSPersistentStoreMap *)&v35 initWithStore:?];
  if (v6)
  {
    if (data)
    {
      options = [store options];
      v8 = options;
      if (byte_1ED4BEEC4 == 1)
      {
        v9 = [options objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
        if (v9)
        {
          v10 = [v9 BOOLValue] ^ 1;
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      error = 0;
      v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:data error:&error];
      if (error)
      {
        code = [error code];
        v39 = *MEMORY[0x1E696AA08];
        v40[0] = error;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
        v25 = [_NSCoreDataException exceptionWithName:code code:@"Keyed archiver failure" reason:v24 userInfo:?];
        objc_exception_throw(v25);
      }

      v12 = +[NSBinaryObjectStore _classesForPropertyValues];
      if (v10)
      {
        [v11 setRequiresSecureCoding:1];
        [v11 _allowDecodingCyclesInSecureMode];
        v13 = [v8 objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
        if (v13)
        {
          v12 = [v12 mutableCopy];
          [v12 unionSet:v13];
        }
      }

      else
      {
        [v11 setRequiresSecureCoding:0];
      }

      [v11 setDecodingFailurePolicy:1];
      if ([v11 decodeIntForKey:@"_NSStoreMapArchiveVersion"] != 134481920)
      {
        v26 = [_NSCoreDataException exceptionWithName:262 code:@"Can't load data from archived data (archived data was created by an incompatible version of CoreData)" reason:0 userInfo:?];
        objc_exception_throw(v26);
      }

      v14 = [v11 decodeObjectOfClasses:v12 forKey:@"_NSStoreMapArchiveMetadata"];
      if (v14)
      {
        v15 = [(NSPersistentStoreMap *)&v6->super.super.isa _updatedMetadataWithSeed:v14 includeVersioning:1];
        [(NSPersistentStoreMap *)v6 _setMetadata:v15];
      }

      unsignedLongLongValue = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"_NSStoreMapArchiveNextPK"];
      if (unsignedLongLongValue)
      {
        unsignedLongLongValue = [unsignedLongLongValue unsignedLongLongValue];
      }

      v6->super._nextPK64 = unsignedLongLongValue;
      v17 = [v11 decodeObjectOfClasses:v12 forKey:@"_NSStoreMapArchiveData"];
      v6->_theMap = v17;
      if (v17)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        allValues = [(NSMutableDictionary *)v17 allValues];
        v19 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v19)
        {
          v20 = *v31;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(allValues);
              }

              [(NSStoreMapNode *)*(*(&v30 + 1) + 8 * i) _setMap:v6];
            }

            v19 = [allValues countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v19);
        }
      }

      if ([v11 error])
      {
        error = [v11 error];
        code2 = [error code];
        v36 = *MEMORY[0x1E696AA08];
        v37 = error;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v29 = [_NSCoreDataException exceptionWithName:code2 code:@"Keyed archiver failure" reason:v28 userInfo:?];
        objc_exception_throw(v29);
      }

      [v11 finishDecoding];

      if (error)
      {

        return 0;
      }
    }

    else
    {
      v6->_theMap = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1024];
    }
  }

  return v6;
}

- (void)saveToPath:(uint64_t)path
{
  if (!path)
  {
    return;
  }

  v24 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringByDeletingLastPathComponent = [a2 stringByDeletingLastPathComponent];
  if (([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v24] & 1) == 0 || (v24 & 1) == 0)
  {
    v10 = [_NSCoreDataException alloc];
    v11 = *MEMORY[0x1E695D940];
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], stringByDeletingLastPathComponent);
    v13 = v10;
    v14 = v11;
    v15 = 514;
    v16 = 0;
    goto LABEL_9;
  }

  v6 = objc_alloc_init(NSBinaryObjectStoreFile);
  v6->_storeOptions = [objc_msgSend(*(path + 8) "options")];
  v6->_databaseVersion = 134481920;
  v7 = *(path + 24);
  if (v6->_fullMetadata != v7)
  {
    v8 = [(NSDictionary *)v7 copy];

    v6->_fullMetadata = v8;
  }

  v6->_primaryKeyGeneration = *(path + 32);
  [(NSXPCStoreServerConnectionContext *)v6 setActiveStore:?];
  v23 = 0;
  v9 = [(NSBinaryObjectStoreFile *)v6 writeToFile:a2 error:&v23];

  if ((v9 & 1) == 0)
  {
    if (v23)
    {
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObject:v23 forKey:*MEMORY[0x1E696AA08]];
      v19 = v23;
      if (v23)
      {
LABEL_14:
        if ([v19 code] != 513)
        {
          v22 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, *MEMORY[0x1E695D940], [v23 code], @"Binary store save failed.", v18);
          -[_NSCoreDataException _setDomain:](v22, [v23 domain]);
          objc_exception_throw(v22);
        }

        v20 = [_NSCoreDataException alloc];
        v21 = *MEMORY[0x1E695D940];
        v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], stringByDeletingLastPathComponent);
        v13 = v20;
        v14 = v21;
        v15 = 513;
        v16 = v18;
LABEL_9:
        v17 = [(_NSCoreDataException *)v13 initWithName:v14 code:v15 reason:v12 userInfo:v16];
        objc_exception_throw(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
    v23 = v19;
    goto LABEL_14;
  }
}

- (void)dealloc
{
  self->_theMap = 0;
  v3.receiver = self;
  v3.super_class = NSDictionaryStoreMap;
  [(NSPersistentStoreMap *)&v3 dealloc];
}

- (void)addObject:(id)object objectIDMap:(id)map
{
  objectCopy = object;
  v52 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v45 = 0;
    goto LABEL_41;
  }

  entity = [object entity];
  objectID = [object objectID];
  objectCopy2 = object;
  if (!object)
  {
    v38 = MEMORY[0x1E695DF30];
    v39 = *MEMORY[0x1E695D940];
    v40 = @"Can't construct a node from nil.";
    goto LABEL_50;
  }

  v10 = objectID;
  if ([objectID isTemporaryID])
  {
    v10 = [map objectForKey:v10];
  }

  if (!entity)
  {
    v38 = MEMORY[0x1E695DF30];
    v39 = *MEMORY[0x1E695D930];
    v40 = @"Can't find entity for object";
LABEL_50:
    objc_exception_throw([v38 exceptionWithName:v39 reason:v40 userInfo:0]);
  }

  v11 = *(entity + 112);
  v44 = [objc_msgSend(entity "propertiesByName")];
  v12 = PF_CALLOC_OBJECT_ARRAY([*(entity + 104) length]);
  if ([object isFault])
  {
    [object willAccessValueForKey:0];
  }

  v46 = _kvcPropertysPrimitiveGetters(entity);
  v45 = [[NSDictionaryMapNode alloc] initWithValues:v12 objectID:v10];
  [(NSStoreMapNode *)v45 _setMap:?];
  v14 = v11[6];
  v13 = v11[7];
  objectCopy = objectCopy2;
  if (v14 < v13 + v14)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(objectCopy2, v14, 0, *(v46 + 8 * v14));
      if (v15)
      {
        v12[v14] = v15;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  v16 = v11[12];
  v17 = v11[13];
  v18 = v44;
  if (v16 < v17 + v16)
  {
    do
    {
      name = [*(v18 + 8 * v16) name];
      _PF_Handler_Primitive_GetProperty(objectCopy2, v16, name, *(v46 + 8 * v16));
      if (v20)
      {
        v21 = v20;
        if ([(NSManagedObject *)v20 _isValidRelationshipDestination__])
        {
          objectID2 = [v21 objectID];
          if ([objectID2 isTemporaryID])
          {
            objectID2 = [map objectForKey:objectID2];
          }

          if ([objectID2 persistentStore] != self->super._store)
          {
            v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objectCopy2, @"Source object", v21, @"Destination Object", *(v44 + 8 * v16), @"Relationship", 0}];

LABEL_45:
            v37 = [_NSCoreDataException exceptionWithName:133010 code:@"CoreData does not support persistent cross-store relationships" reason:v36 userInfo:?];
            objc_exception_throw(v37);
          }

          v23 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{objc_msgSend(objectID2, "_referenceData"), 0}];
          if (v45)
          {
            [(NSMutableDictionary *)v45->super._relatedNodes setObject:v23 forKey:name];
          }

          v18 = v44;
        }
      }

      ++v16;
      --v17;
    }

    while (v17);
  }

  v24 = v11[18];
  v43 = v11[19] + v24;
  if (v24 < v43)
  {
    do
    {
      name2 = [*(v18 + 8 * v24) name];
      _PF_Handler_Primitive_GetProperty(objectCopy, v24, name2, *(v46 + 8 * v24));
      if (v26)
      {
        v27 = v26;
        v42 = name2;
        v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v29 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v48;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v48 != v31)
              {
                objc_enumerationMutation(v27);
              }

              v33 = *(*(&v47 + 1) + 8 * i);
              if ([(NSManagedObject *)v33 _isValidRelationshipDestination__])
              {
                objectID3 = [v33 objectID];
                if ([objectID3 isTemporaryID])
                {
                  objectID3 = [map objectForKey:objectID3];
                }

                if ([objectID3 persistentStore] != self->super._store)
                {
                  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objectCopy2, @"Source object", v33, @"Destination Object", *(v44 + 8 * v24), @"Relationship", 0}];

                  goto LABEL_45;
                }

                [v28 addObject:{objc_msgSend(objectID3, "_referenceData")}];
              }
            }

            v30 = [v27 countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v30);
        }

        v35 = [v28 count];
        if (v45 && v35)
        {
          [(NSMutableDictionary *)v45->super._relatedNodes setObject:v28 forKey:v42];
        }

        objectCopy = objectCopy2;
        v18 = v44;
      }

      ++v24;
    }

    while (v24 != v43);
  }

LABEL_41:
  -[NSMutableDictionary setObject:forKey:](self->_theMap, "setObject:forKey:", v45, [objc_msgSend(objectCopy "objectID")]);
  [(NSStoreMapNode *)v45 _setVersionNumber:1];
}

- (void)removeObject:(id)object objectIDMap:(id)map
{
  v5 = [objc_msgSend(object "objectID")];
  theMap = self->_theMap;

  [(NSMutableDictionary *)theMap removeObjectForKey:v5];
}

- (void)updateObject:(id)object objectIDMap:(id)map
{
  entity = [object entity];
  if (entity)
  {
    v8 = entity[14];
  }

  else
  {
    v8 = 0;
  }

  v9 = _kvcPropertysPrimitiveGetters(entity);
  v10 = v8[18];
  v11 = v8[19];
  if (v10 < v11 + v10)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(object, v10, 0, *(v9 + 8 * v10));
      [v12 count];
      ++v10;
      --v11;
    }

    while (v11);
  }

  v13 = v8[26];
  v14 = v8[27];
  if (v13 < v14 + v13)
  {
    do
    {
      _PF_Handler_Primitive_GetProperty(object, v13, 0, *(v9 + 8 * v13));
      [v15 count];
      ++v13;
      --v14;
    }

    while (v14);
  }

  v16 = [objc_msgSend(object "objectID")];
  v17 = [-[NSMutableDictionary objectForKey:](self->_theMap objectForKey:{v16), "_versionNumber"}];
  [(NSDictionaryStoreMap *)self removeObject:object objectIDMap:map];
  [(NSDictionaryStoreMap *)self addObject:object objectIDMap:map];
  v18 = [(NSMutableDictionary *)self->_theMap objectForKey:v16];

  [v18 _setVersionNumber:(v17 + 1)];
}

- (id)retainedObjectIDsForRelationship:(id)relationship forObjectID:(id)d
{
  v5 = [-[NSMutableDictionary objectForKey:](self->_theMap objectForKey:{objc_msgSend(d, "_referenceData")), "destinationsForRelationship:", objc_msgSend(relationship, "name")}];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 count];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = -[NSMutableDictionary objectForKey:](self->_theMap, "objectForKey:", [v6 objectAtIndex:i]);
      if (v10)
      {
        [v8 addObject:{objc_msgSend(v10, "objectID")}];
      }
    }
  }

  return v8;
}

- (id)handleFetchRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  allValues = [(NSMutableDictionary *)self->_theMap allValues];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  entity = [request entity];
  predicate = [request predicate];
  fetchLimit = [request fetchLimit];
  v25 = fetchLimit;
  if ([request sortDescriptors])
  {
    v9 = 1;
  }

  else
  {
    v9 = fetchLimit == 0;
  }

  v10 = !v9;
  includesSubentities = [request includesSubentities];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = allValues;
  v13 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
LABEL_9:
    v16 = 0;
    while (1)
    {
      if (*v27 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v26 + 1) + 8 * v16);
      entity2 = [v17 entity];
      if ((entity == entity2 || includesSubentities && [entity _subentitiesIncludes:entity2]) && (!predicate || objc_msgSend(predicate, "evaluateWithObject:", v17)))
      {
        [v5 addObject:v17];
      }

      if (v10 && [v5 count] > v25)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v14)
        {
          goto LABEL_9;
        }

        break;
      }
    }
  }

  sortDescriptors = [v24 sortDescriptors];
  if (sortDescriptors)
  {
    [v5 sortUsingDescriptors:sortDescriptors];
  }

  v20 = [v5 count];
  if (v20)
  {
    v21 = v20;
    for (i = 0; i != v21; ++i)
    {
      [v5 replaceObjectAtIndex:i withObject:{objc_msgSend(objc_msgSend(v5, "objectAtIndex:", i), "objectID")}];
    }
  }

  return v5;
}

- (uint64_t)_archivedData
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF88] dataWithCapacity:1024];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v2];
  [v3 encodeInt:134481920 forKey:@"_NSStoreMapArchiveVersion"];
  [v3 encodeObject:self[3] forKey:@"_NSStoreMapArchiveMetadata"];
  [v3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self[4]), @"_NSStoreMapArchiveNextPK"}];
  [v3 encodeObject:self[6] forKey:@"_NSStoreMapArchiveData"];
  [v3 finishEncoding];

  return v2;
}

@end