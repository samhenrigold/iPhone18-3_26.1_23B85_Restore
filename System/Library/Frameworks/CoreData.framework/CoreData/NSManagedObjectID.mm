@interface NSManagedObjectID
+ (id)_newArchiveForScalarObjectIDs:(uint64_t)ds;
+ (uint64_t)unarchivedScalarObjectIDsFromData:(void *)data withCoordinator:;
+ (void)initialize;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)isTemporaryID;
- (NSEntityDescription)entity;
- (NSManagedObjectID)initWithObject:(id)object;
- (NSManagedObjectID)initWithPK64:(int64_t)k64;
- (NSPersistentStore)persistentStore;
- (NSString)description;
- (NSURL)URIRepresentation;
- (id)_referenceData;
- (id)_retainedURIString;
- (id)_storeIdentifier;
- (id)entityName;
- (int64_t)_referenceData64;
- (int64_t)compare:(id)compare;
- (void)_compareArbitraryValue:(void *)value toValue:;
@end

@implementation NSManagedObjectID

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p <%@>", self, -[NSManagedObjectID URIRepresentation](self, "URIRepresentation")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

+ (void)initialize
{
  objc_opt_self();
  objc_opt_self();

  objc_opt_class();
}

- (NSEntityDescription)entity
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSPersistentStore)persistentStore
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (BOOL)isTemporaryID
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (NSURL)URIRepresentation
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (void)_compareArbitraryValue:(void *)value toValue:
{
  v26 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  if (([a2 isNSNumber] & 1) != 0 || (objc_msgSend(a2, "isNSString") & 1) != 0 || objc_msgSend(a2, "isNSDate"))
  {
    goto LABEL_5;
  }

  if ([a2 isNSData])
  {
    v5 = [a2 length];
    v6 = [value length];
    if (v5 >= v6)
    {
      v5 = v6;
    }

    v7 = 8 * v5 + 8;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 8 * v5 + 8;
    }

    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = &v21 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = 8 * v8;
    if (v7 > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v21 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
      v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v11);
    }

    [a2 getBytes:v10 length:v5];
    [value getBytes:v12 length:v5];
    v16 = memcmp(v10, v12, v5);
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v10);
      NSZoneFree(0, v12);
    }

    v17 = 1;
    if (v16 >= 0)
    {
      v17 = -1;
    }

    if (v16)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_5:

      return [a2 compare:value];
    }

    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    [a2 getUUIDBytes:&v24];
    [value getUUIDBytes:&v22];
    v13 = bswap64(v24);
    v14 = bswap64(v22);
    if (v13 == v14 && (v13 = bswap64(v25), v14 = bswap64(v23), v13 == v14))
    {
      v15 = 0;
    }

    else if (v13 < v14)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    v18 = v15 == 0;
    v19 = v15 < 0;
    v20 = 1;
    if (!v19)
    {
      v20 = -1;
    }

    if (v18)
    {
      return 0;
    }

    else
    {
      return v20;
    }
  }
}

- (int64_t)compare:(id)compare
{
  isTemporaryID = [(NSManagedObjectID *)self isTemporaryID];
  isTemporaryID2 = [compare isTemporaryID];
  if (isTemporaryID != isTemporaryID2)
  {
    if (isTemporaryID)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  if ((isTemporaryID & isTemporaryID2) == 1)
  {
    _referenceData = [(NSManagedObjectID *)self _referenceData];
    _referenceData2 = [compare _referenceData];
    if (_referenceData != _referenceData2)
    {
      result = [_referenceData compare:_referenceData2];
      if (result)
      {
        return result;
      }
    }

    _temporaryIDCounter = [(NSManagedObjectID *)self _temporaryIDCounter];
    v11 = _temporaryIDCounter <= [compare _temporaryIDCounter];
    goto LABEL_33;
  }

  _storeIdentifier = [(NSManagedObjectID *)self _storeIdentifier];
  _storeIdentifier2 = [compare _storeIdentifier];
  if (_storeIdentifier != _storeIdentifier2)
  {
    result = [_storeIdentifier compare:_storeIdentifier2];
    if (result)
    {
      return result;
    }
  }

  entity = [(NSManagedObjectID *)self entity];
  if (entity)
  {
    if (atomic_load(&entity->_isImmutable))
    {
      rootentity = entity->_rootentity;
    }

    else
    {
      do
      {
        rootentity = entity;
        entity = [(NSEntityDescription *)entity superentity];
      }

      while (entity);
    }
  }

  else
  {
    rootentity = 0;
  }

  entity2 = [compare entity];
  if (!entity2)
  {
    v20 = 0;
    if (rootentity)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (!atomic_load((entity2 + 124)))
  {
    do
    {
      v20 = entity2;
      entity2 = [entity2 superentity];
    }

    while (entity2);
    if (rootentity)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (rootentity)
    {
      name = [(NSEntityDescription *)rootentity name];
    }

    else
    {
      name = [(NSManagedObjectID *)self entityName];
    }

    v22 = name;
    if (v20)
    {
      name2 = [(NSEntityDescription *)v20 name];
    }

    else
    {
      name2 = [compare entityName];
    }

    v18 = name2;
    if (v22 != name2)
    {
      result = [(NSString *)v22 compare:name2];
      if (result)
      {
        return result;
      }
    }

    goto LABEL_30;
  }

  v20 = *(entity2 + 72);
  if (!rootentity)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (rootentity != v20)
  {
    goto LABEL_22;
  }

LABEL_30:
  _preferReferenceData64 = [(NSManagedObjectID *)self _preferReferenceData64];
  _preferReferenceData642 = [compare _preferReferenceData64];
  if (_preferReferenceData64 && _preferReferenceData642)
  {
    _referenceData64 = [(NSManagedObjectID *)self _referenceData64];
    v11 = _referenceData64 <= [compare _referenceData64];
LABEL_33:
    v27 = !v11;
    v28 = v11;
    return v27 - v28;
  }

  _referenceData3 = [(NSManagedObjectID *)self _referenceData];
  _referenceData4 = [compare _referenceData];

  return [(NSManagedObjectID *)self _compareArbitraryValue:_referenceData3 toValue:_referenceData4];
}

- (NSManagedObjectID)initWithObject:(id)object
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (NSManagedObjectID)initWithPK64:(int64_t)k64
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (id)_referenceData
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (int64_t)_referenceData64
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

- (id)_storeIdentifier
{
  persistentStore = [(NSManagedObjectID *)self persistentStore];

  return [(NSPersistentStore *)persistentStore identifier];
}

- (id)entityName
{
  entity = [(NSManagedObjectID *)self entity];

  return [(NSEntityDescription *)entity name];
}

- (BOOL)_isPersistentStoreAlive
{
  persistentStore = [(NSManagedObjectID *)self persistentStore];

  return [(NSPersistentStore *)persistentStore _isPersistentStoreAlive];
}

- (id)_retainedURIString
{
  v4 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v4, v5, v6, v7, v8, v9);
  return 0;
}

+ (id)_newArchiveForScalarObjectIDs:(uint64_t)ds
{
  v119[256] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([a2 count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v4 = objc_autoreleasePoolPush();
    v92 = a2;
    v93 = objc_opt_class();
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v110 objects:v118 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v111;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v111 != v7)
          {
            objc_enumerationMutation(v92);
          }

          v9 = [objc_msgSend(*(*(&v110 + 1) + 8 * i) "entity")];
          if (v9)
          {
            v10 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v92 countByEnumeratingWithState:&v110 objects:v118 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_12:
    v11 = [objc_msgSend(v10 "entitiesByName")];
    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    if (v11 >= 0x201)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = &v80 - ((8 * v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 8 * v12;
    v86 = v11;
    if (v11 > 0x200)
    {
      v91 = NSAllocateScannedUncollectable();
      v16 = NSAllocateScannedUncollectable();
    }

    else
    {
      v91 = v14;
      bzero(v14, 8 * v12);
      v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v16, v15);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v19 = [v10 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v107;
      do
      {
        v22 = 0;
        do
        {
          if (*v107 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(*(&v106 + 1) + 8 * v22);
          name = [v23 name];
          if (v23)
          {
            v25 = v23[20];
          }

          else
          {
            v25 = 0;
          }

          *&v16[8 * v25] = name;
          ++v22;
        }

        while (v20 != v22);
        v26 = [v10 countByEnumeratingWithState:&v106 objects:v117 count:16];
        v20 = v26;
      }

      while (v26);
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v27 = [v92 countByEnumeratingWithState:&v102 objects:v116 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v103;
LABEL_37:
      v30 = 0;
      while (1)
      {
        if (*v103 != v29)
        {
          objc_enumerationMutation(v92);
        }

        v31 = [objc_msgSend(*(*(&v102 + 1) + 8 * v30) "persistentStore")];
        if (v31)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [v92 countByEnumeratingWithState:&v102 objects:v116 count:16];
          if (v28)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }

      v88 = v31;
      persistentStores = [v31 persistentStores];
      v32 = [persistentStores count];
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      if (v32 >= 0x201)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      v35 = &v80 - ((8 * v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v84 = v4;
      v85 = v32;
      v83 = &v80;
      v89 = v10;
      if (v32 > 0x200)
      {
        v87 = NSAllocateScannedUncollectable();
      }

      else
      {
        v87 = v35;
        bzero(v35, 8 * v33);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v36 = v92;
      v37 = [v92 countByEnumeratingWithState:&v98 objects:v115 count:16];
      if (v37)
      {
        v38 = v37;
        v81 = v16;
        v82 = v3;
        v39 = 0;
        v40 = 0;
        v41 = *v99;
        do
        {
          v42 = 0;
          do
          {
            if (*v99 != v41)
            {
              objc_enumerationMutation(v36);
            }

            v43 = *(*(&v98 + 1) + 8 * v42);
            if (objc_opt_isKindOfClass())
            {
              entity = [v43 entity];
              if (entity || (entity = [objc_msgSend(v89 "entitiesByName")]) != 0)
              {
                v45 = *(entity + 160);
                v46 = 1;
              }

              else
              {
                v46 = 0;
                v45 = 0;
              }

              persistentStore = [v43 persistentStore];
              if (!persistentStore)
              {
                _storeIdentifier = [v43 _storeIdentifier];
                persistentStore = [v88 persistentStoreForIdentifier:_storeIdentifier];
              }

              if (persistentStore)
              {
                v49 = v46;
              }

              else
              {
                v49 = 0;
              }

              if (v49 == 1)
              {
                ++v40;
                v91[v45] = 1;
                if (persistentStore != v39)
                {
                  v50 = [persistentStores indexOfObjectIdenticalTo:persistentStore];
                  v87[v50] = 1;
                  v39 = persistentStore;
                }
              }

              v36 = v92;
            }

            ++v42;
          }

          while (v38 != v42);
          v51 = [v36 countByEnumeratingWithState:&v98 objects:v115 count:16];
          v38 = v51;
        }

        while (v51);
        v52 = v40;
        v53 = v40 < 1;
        v16 = v81;
        v3 = v82;
        if (!v53)
        {
          v54 = v85;
          if (v85 < 1)
          {
            v55 = 0;
            v57 = v86;
          }

          else
          {
            v55 = 0;
            v57 = v86;
            v56 = v87;
            v58 = v85;
            do
            {
              if (*v56)
              {
                *v56 = v55++ + 1;
              }

              ++v56;
              --v58;
            }

            while (v58);
          }

          if (v57 < 1)
          {
            v59 = 0;
          }

          else
          {
            v59 = 0;
            v60 = v91;
            v61 = v57;
            do
            {
              if (*v60)
              {
                *v60 = v59++ + 1;
              }

              ++v60;
              --v61;
            }

            while (v61);
          }

          _writeInt32IntoData(v3, v52);
          _writeInt16IntoData(v3, v55);
          _writeInt16IntoData(v3, v59);
          v62 = v87;
          if (v54 >= 1)
          {
            for (j = 0; j != v54; ++j)
            {
              if (v62[j])
              {
                _writeStringIntoData([objc_msgSend(persistentStores objectAtIndex:{j), "identifier"}], v3, v119);
              }
            }
          }

          if (v57 >= 1)
          {
            v64 = v91;
            v65 = v16;
            v66 = v57;
            do
            {
              if (*v64)
              {
                _writeStringIntoData(*v65, v3, v119);
              }

              ++v65;
              ++v64;
              --v66;
            }

            while (v66);
          }

          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v67 = [v36 countByEnumeratingWithState:&v94 objects:v114 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v95;
            do
            {
              for (k = 0; k != v68; ++k)
              {
                if (*v95 != v69)
                {
                  objc_enumerationMutation(v36);
                }

                v71 = *(*(&v94 + 1) + 8 * k);
                if (objc_opt_isKindOfClass())
                {
                  entity2 = [v71 entity];
                  if (!entity2)
                  {
                    entity2 = [objc_msgSend(v89 "entitiesByName")];
                  }

                  persistentStore2 = [v71 persistentStore];
                  if (!persistentStore2)
                  {
                    _storeIdentifier2 = [v71 _storeIdentifier];
                    persistentStore2 = [v88 persistentStoreForIdentifier:_storeIdentifier2];
                  }

                  if (entity2)
                  {
                    v75 = persistentStore2 == 0;
                  }

                  else
                  {
                    v75 = 1;
                  }

                  if (!v75)
                  {
                    v76 = v91[*(entity2 + 160)];
                    _referenceData64 = [v71 _referenceData64];
                    v78 = [persistentStores indexOfObjectIdenticalTo:persistentStore2];
                    _writeInt16IntoData(v3, v87[v78]);
                    v79 = v76;
                    v36 = v92;
                    _writeInt16IntoData(v3, v79);
                    _writeInt64IntoData(v3, _referenceData64);
                  }
                }
              }

              v68 = [v36 countByEnumeratingWithState:&v94 objects:v114 count:16];
            }

            while (v68);
          }
        }
      }

      if (v85 >= 0x201)
      {
        NSZoneFree(0, v87);
      }

      v4 = v84;
      if (v86 < 0x201)
      {
        goto LABEL_122;
      }
    }

    else
    {
LABEL_43:
      if (v86 < 0x201)
      {
        goto LABEL_122;
      }
    }

    NSZoneFree(0, v16);
    NSZoneFree(0, v91);
LABEL_122:
    objc_autoreleasePoolPop(v4);
    return v3;
  }

  v17 = MEMORY[0x1E695DEF0];

  return objc_alloc_init(v17);
}

+ (uint64_t)unarchivedScalarObjectIDsFromData:(void *)data withCoordinator:
{
  v59[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 length];
  if (v5)
  {
    v6 = v5;
    v59[0] = 0;
    array = [MEMORY[0x1E695DF70] array];
    v57 = objc_autoreleasePoolPush();
    bytes = [a2 bytes];
    array2 = [MEMORY[0x1E695DF70] array];
    v9 = [objc_msgSend(data "managedObjectModel")];
    v10 = [v9 count];
    MEMORY[0x1EEE9AC00](v10);
    if (v10 > 0x200)
    {
      v56 = NSAllocateScannedUncollectable();
    }

    else
    {
      v56 = &v50[-v12];
      bzero(&v50[-v12], 8 * v11);
    }

    if (v6 >= 4)
    {
      v58 = bswap32(*bytes);
      v15 = 4;
      v59[0] = 4;
    }

    else
    {
      v15 = 0;
      v58 = 0;
    }

    if ((v15 | 2uLL) <= v6)
    {
      v16 = bswap32(*(bytes + v15)) >> 16;
      v59[0] = v15 | 2;
      v17 = v15 + 4;
      v15 |= 2uLL;
    }

    else
    {
      LOWORD(v16) = 0;
      v17 = v15 | 2;
    }

    v54 = v50;
    if (v17 <= v6)
    {
      LODWORD(v18) = bswap32(*(bytes + v15)) >> 16;
      v59[0] = v17;
    }

    else
    {
      LODWORD(v18) = 0;
    }

    LODWORD(v52) = v16;
    if (v16 >= 1)
    {
      LOWORD(v19) = 0;
      do
      {
        StringFromBytes = _newReadStringFromBytes(bytes, v59, v6);
        if ([StringFromBytes length])
        {
          [array2 addObject:StringFromBytes];
        }

        v19 = (v19 + 1);
      }

      while (v19 < v16);
    }

    v53 = v10;
    v51 = v18;
    v21 = 0;
    if (v18 >= 1)
    {
      v18 = v18;
      v22 = v56;
      do
      {
        v23 = _newReadStringFromBytes(bytes, v59, v6);
        if ([v23 length])
        {
          v24 = [v9 objectForKey:v23];
          if (v24 || (!data ? (v25 = 0) : (v25 = data[12]), (v24 = [(_PFModelMap *)v25 ancillaryEntityWithName:v23]) != 0))
          {
            *v22 = v24;
            ++v21;
          }
        }

        ++v22;
        --v18;
      }

      while (v18);
    }

    v26 = [array2 count];
    v27 = 0;
    if (v52 == v26)
    {
      v28 = v51;
      v29 = v57;
      if (v51 == v21)
      {
        v30 = v53;
        if (array)
        {
          v31 = [array2 count];
          v32 = MEMORY[0x1EEE9AC00](v31);
          v35 = &v50[-v34];
          v52 = v36;
          if (v32 > 0x200)
          {
            v35 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(&v50[-v34], 8 * v33);
          }

          if ([array2 count])
          {
            v37 = 0;
            do
            {
              *&v35[8 * v37] = [data persistentStoreForIdentifier:{objc_msgSend(array2, "objectAtIndex:", v37)}];
              ++v37;
            }

            while (v37 < [array2 count]);
          }

          if (v58 < 1)
          {
            v27 = array;
          }

          else
          {
            v39 = array;
            v38 = v56;
            while (v59[0] < v6)
            {
              v40 = (v59[0] + 1) & 0xFFFFFFFFFFFFFFFELL;
              v41 = v40 + 2;
              if (v40 + 2 <= v6)
              {
                v42 = bswap32(*(bytes + v40)) >> 16;
                v59[0] = v40 + 2;
                v40 = (v40 + 3) & 0xFFFFFFFFFFFFFFFELL;
                v43 = v40 + 2;
              }

              else
              {
                v42 = 0;
                v43 = v40 + 2;
                v41 = v59[0];
              }

              if (v43 <= v6)
              {
                v44 = bswap32(*(bytes + v40)) >> 16;
                v59[0] = v43;
                v41 = v43;
              }

              else
              {
                v44 = 0;
              }

              v45 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
              v46 = v45 + 8;
              if (v45 + 8 > v6)
              {
                break;
              }

              v27 = 0;
              v47 = *(bytes + v45);
              v59[0] = v46;
              if (!v42 || !v44 || !v47)
              {
                goto LABEL_66;
              }

              v48 = (v42 - 1);
              v49 = v48 >= v16 ? 0 : *&v35[8 * v48];
              if ((v44 - 1) >= v28)
              {
                break;
              }

              v27 = 0;
              if (!v49)
              {
                goto LABEL_66;
              }

              if (!*&v38[8 * (v44 - 1)])
              {
                goto LABEL_66;
              }

              v27 = [objc_msgSend(objc_msgSend(v49 "objectIDFactoryForEntity:{"alloc"), "initWithPK64:", bswap64(v47)}")];
              if (!v27)
              {
                goto LABEL_66;
              }

              [v39 addObject:v27];

              if (!--v58)
              {
                v27 = v39;
                goto LABEL_66;
              }
            }

            v27 = 0;
          }

LABEL_66:
          if (v31 >= 0x201)
          {
            NSZoneFree(0, v35);
          }

          v29 = v57;
        }

        goto LABEL_71;
      }
    }

    else
    {
      v29 = v57;
    }

    v30 = v53;
LABEL_71:
    if (v30 >= 0x201)
    {
      NSZoneFree(0, v56);
    }

    objc_autoreleasePoolPop(v29);
    return v27;
  }

  v13 = MEMORY[0x1E695DEC8];

  return [v13 array];
}

@end