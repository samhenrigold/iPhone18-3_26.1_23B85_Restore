@interface NSManagedObjectModel
+ (BOOL)versionHashes:(id)hashes compatibleWithStoreMetadata:(id)metadata;
+ (NSDictionary)checksumsForVersionedModelAtURL:(NSURL *)modelURL error:(NSError *)error;
+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles;
+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles forStoreMetadata:(NSDictionary *)metadata;
+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models;
+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models forStoreMetadata:(NSDictionary *)metadata;
+ (char)_deepCollectEntitiesInArray:(void *)array entity:;
+ (id)versionsHashesForModelAtURL:(id)l error:(id *)error;
+ (int64_t)_debugOptimizedModelLayout;
+ (void)_modelPathsFromBundles:(uint64_t)bundles;
+ (void)_newModelFromOptimizedEncoding:(uint64_t)encoding error:(const __CFData *)error;
- (BOOL)isEqual:(id)equal;
- (NSArray)configurations;
- (NSArray)entitiesForConfiguration:(NSString *)configuration;
- (NSDictionary)fetchRequestTemplatesByName;
- (NSDictionary)localizationDictionary;
- (NSFetchRequest)fetchRequestFromTemplateWithName:(NSString *)name substitutionVariables:(NSDictionary *)variables;
- (NSFetchRequest)fetchRequestTemplateForName:(NSString *)name;
- (NSManagedObjectModel)init;
- (NSManagedObjectModel)initWithCoder:(id)coder;
- (NSManagedObjectModel)initWithContentsOfOptimizedURL:(id)l;
- (NSManagedObjectModel)initWithContentsOfURL:(id)l forStoreMetadata:(id)metadata;
- (NSString)versionChecksum;
- (id)_entitiesByVersionHash;
- (id)_entityVersionHashesByNameInStyle:(id)result;
- (id)_entityVersionHashesDigest;
- (id)_entityVersionHashesDigestFrom:(id)result;
- (id)_initWithContentsOfURL:(id)l options:(unint64_t)options;
- (id)_initWithEntities:(id)entities;
- (id)_modelForVersionHashes:(id)hashes;
- (id)_optimizedEncoding:(id *)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)immutableCopy;
- (id)versionHash;
- (uint64_t)_allowedClassesFromTransformableAttributes;
- (uint64_t)_hasEntityWithDerivedAttribute;
- (uint64_t)_hasEntityWithUniquenessConstraints;
- (uint64_t)_isConfiguration:(uint64_t)configuration inStyle:(void *)style compatibleWithStoreMetadata:;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)_addEntity:(id)entity;
- (void)_createCachesAndOptimizeState;
- (void)_finalizeIndexes;
- (void)_flattenProperties;
- (void)_removeEntity:(uint64_t)entity;
- (void)_restoreValidation;
- (void)_setIsEditable:(BOOL)editable optimizationStyle:(unint64_t)style;
- (void)_setLocalizationPolicy:(id)policy;
- (void)_setModelsReferenceIDOffset:(int64_t)offset;
- (void)_sortedEntitiesForConfiguration:(void *)result;
- (void)_stripForMigration;
- (void)_throwIfNotEditable;
- (void)_traverseTombstonesAndMark:(uint64_t)mark;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setEntities:(NSArray *)entities;
- (void)setEntities:(NSArray *)entities forConfiguration:(NSString *)configuration;
- (void)setFetchRequestTemplate:(NSFetchRequest *)fetchRequestTemplate forName:(NSString *)name;
- (void)setLocalizationDictionary:(NSDictionary *)localizationDictionary;
- (void)setVersionIdentifiers:(NSSet *)versionIdentifiers;
@end

@implementation NSManagedObjectModel

- (uint64_t)_hasEntityWithUniquenessConstraints
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if ((v2 & 4) != 0)
    {
      return (v2 >> 3) & 1;
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v3 = *(result + 32);
      result = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v8;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v8 != v5)
            {
              objc_enumerationMutation(v3);
            }

            if (-[NSEntityDescription _hasUniqueProperties]([*(v1 + 32) objectForKey:*(*(&v7 + 1) + 8 * i)]))
            {
              return 1;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
          result = 0;
          if (v4)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

- (NSManagedObjectModel)init
{
  objc_opt_class();
  objc_opt_class();

  return [(NSManagedObjectModel *)self _initWithEntities:0];
}

- (void)dealloc
{
  if (self->_optimizationHints)
  {
    v3 = [(NSMutableDictionary *)self->_entities count]- 1;
    if (v3 >= 0)
    {
      do
      {
      }

      while (v3 != -1);
    }
  }

  self->_optimizationHints = 0;
  fetchRequestTemplates = self->_fetchRequestTemplates;
  if (fetchRequestTemplates)
  {

    self->_fetchRequestTemplates = 0;
  }

  self->_configurations = 0;
  self->_entities = 0;

  self->_versionIdentifiers = 0;
  additionalPrivateIvars = self->_additionalPrivateIvars;
  if (additionalPrivateIvars)
  {

    *self->_additionalPrivateIvars = 0;
    *(self->_additionalPrivateIvars + 1) = 0;

    *(self->_additionalPrivateIvars + 2) = 0;
    *(self->_additionalPrivateIvars + 3) = 0;
    PF_FREE_OBJECT_ARRAY(self->_additionalPrivateIvars);
    self->_additionalPrivateIvars = 0;
  }

  self->_dataForOptimization = 0;
  v6.receiver = self;
  v6.super_class = NSManagedObjectModel;
  [(NSManagedObjectModel *)&v6 dealloc];
}

- (id)versionHash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v3 = malloc_default_zone();
  }

  memset(&c, 0, sizeof(c));
  v4 = malloc_type_zone_malloc(v3, 0x20uLL, 0xACE9FC24uLL);
  CC_SHA256_Init(&c);
  v5 = [-[NSMutableDictionary allValues](self->_entities "allValues")];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CC_SHA256_Update(&c, [objc_msgSend(*(*(&v13 + 1) + 8 * v9++) "versionHash")], 0x20u);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  CC_SHA256_Final(v4, &c);
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  malloc_zone_free(v11, v4);
  return v10;
}

- (NSString)versionChecksum
{
  if ([(NSManagedObjectModel *)self isEditable])
  {
    if ([objc_msgSend(objc_msgSend(-[NSArray firstObject](-[NSManagedObjectModel entities](self "entities")])
    {
LABEL_9:
      [(NSManagedObjectModel *)self _setIsEditable:0];
      goto LABEL_10;
    }

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
          v11 = 0;
          v7 = &v11;
LABEL_12:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to retrieve an NSManagedObjectModel version checksum while the model is still editable. This may result in an unstable version checksum. Add model to NSPersistentStoreCoordinator and try again.\n", v7, 2u);
        }
      }

      else if (v6)
      {
        LOWORD(v10) = 0;
        v7 = &v10;
        goto LABEL_12;
      }
    }

    _NSCoreDataLog_console(1, "Attempting to retrieve an NSManagedObjectModel version checksum while the model is still editable. This may result in an unstable version checksum. Add model to NSPersistentStoreCoordinator and try again.", v10);
    objc_autoreleasePoolPop(v3);
    goto LABEL_9;
  }

LABEL_10:
  v8 = [-[NSManagedObjectModel versionHash](self "versionHash")];
  return [v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
}

- (void)_createCachesAndOptimizeState
{
  v86 = *MEMORY[0x1E69E9840];
  managedObjectModelFlags = self->_managedObjectModelFlags;
  if ((*&managedObjectModelFlags & 2) == 0)
  {
    self->_managedObjectModelFlags = (*&managedObjectModelFlags | 2);
    v59 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v4 = [-[NSMutableDictionary allValues](self->_entities "allValues")];
    v5 = [v4 count];
    v58 = &name;
    v6 = MEMORY[0x1EEE9AC00](v5);
    v9 = &name - v8;
    v10 = 8 * v7;
    if (v6 >= 0x201)
    {
      v9 = NSAllocateScannedUncollectable();
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&name - v8, 8 * v7);
      MEMORY[0x1EEE9AC00](v11);
      v12 = &name - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v10);
    }

    [v4 getObjects:v9 range:{0, v5}];
    if (v5)
    {
      v13 = v9;
      v14 = v12;
      v15 = v5;
      do
      {
        *v14 = [*v13 name];
        v14 += 8;
        ++v13;
        --v15;
      }

      while (v15);
    }

    v16 = [[NSKnownKeysDictionary alloc] initWithObjects:v9 forKeys:v12 count:v5];
    if (v5 >= 0x201)
    {
      NSZoneFree(0, v9);
      NSZoneFree(0, v12);
    }

    self->_entities = &v16->super;
    values = [(NSKnownKeysDictionary *)v16 values];
    if (!self->_configurations)
    {
      self->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    -[NSMutableDictionary setObject:forKey:](self->_configurations, "setObject:forKey:", [MEMORY[0x1E695DEC8] arrayWithObjects:values count:v5], @"PF_DEFAULT_CONFIGURATION_NAME");
    if (!*(self->_additionalPrivateIvars + 3))
    {
      *(self->_additionalPrivateIvars + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [self->_additionalPrivateIvars[3] setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKeyedSubscript:{"setWithArray:", -[NSKnownKeysDictionary allKeys](v16, "allKeys")), @"PF_DEFAULT_CONFIGURATION_NAME"}];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v19 = [(NSKnownKeysDictionary *)v16 count];
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(values + 8 * i);
        [v21 _flattenProperties];
        if (v21)
        {
          *(v21 + 160) = i;
        }

        CFSetAddValue(Mutable, v21);
        if (v21)
        {
          v22 = *(v21 + 128);
          if (!v22 || (v23 = *(v22 + 24)) == 0)
          {
            v23 = NSArray_EmptyArray;
          }
        }

        else
        {
          v23 = 0;
        }

        if ([v23 count])
        {
          *&self->_managedObjectModelFlags |= 8u;
          if (v21)
          {
            *(v21 + 120) |= 0x800u;
          }
        }
      }
    }

    v60 = v16;
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0;
LABEL_29:
    if (CFSetGetCount(Mutable) >= 1)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v26 = [(__CFSet *)Mutable countByEnumeratingWithState:&v69 objects:v85 count:16];
      if (!v26)
      {
        goto LABEL_55;
      }

      v27 = *v70;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v70 != v27)
          {
            objc_enumerationMutation(Mutable);
          }

          v29 = *(*(&v69 + 1) + 8 * v28);
          if (v29)
          {
            v30 = -1;
            v31 = *(*(&v69 + 1) + 8 * v28);
            do
            {
              v31 = *(v31 + 80);
              ++v30;
            }

            while (v31);
          }

          else
          {
            v30 = 0;
          }

          if (v25 > 0x3E7 || v30 == v25)
          {
            [array addObject:v29];
            superentity = [v29 superentity];
            if (superentity && (*(superentity + 121) & 8) != 0)
            {
              if (!v29)
              {
LABEL_50:
                [v29 _createCachesAndOptimizeState];
                goto LABEL_51;
              }

              *(v29 + 120) |= 0x800u;
            }

            else if (!v29 || (*(v29 + 121) & 8) == 0)
            {
              goto LABEL_50;
            }

            v33 = v29;
            do
            {
              v34 = *(v33 + 120);
              if ((v34 & 0x1000) != 0)
              {
                break;
              }

              *(v33 + 120) = v34 | 0x1000;
              v33 = *(v33 + 80);
            }

            while (v33);
            goto LABEL_50;
          }

LABEL_51:
          ++v28;
        }

        while (v28 != v26);
        v35 = [(__CFSet *)Mutable countByEnumeratingWithState:&v69 objects:v85 count:16];
        v26 = v35;
        if (!v35)
        {
LABEL_55:
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v36 = [array countByEnumeratingWithState:&v65 objects:v84 count:16];
          if (v36)
          {
            v37 = *v66;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v66 != v37)
                {
                  objc_enumerationMutation(array);
                }

                CFSetRemoveValue(Mutable, *(*(&v65 + 1) + 8 * j));
              }

              v36 = [array countByEnumeratingWithState:&v65 objects:v84 count:16];
            }

            while (v36);
          }

          ++v25;
          goto LABEL_29;
        }
      }
    }

    CFRelease(Mutable);
    [array removeAllObjects];
    v60 = [(NSKnownKeysDictionary *)v60 count];
    if (v60)
    {
      v40 = 0;
      *&v39 = 138413314;
      v57 = v39;
      do
      {
        v41 = *(values + 8 * v40);
        if (![(NSEntityDescription *)v41 _hasUniqueProperties])
        {
          goto LABEL_77;
        }

        _checkSelfForNonCascadeNoInverses = [(NSEntityDescription *)v41 _checkSelfForNonCascadeNoInverses];
        if (!_checkSelfForNonCascadeNoInverses)
        {
          goto LABEL_77;
        }

        if (v41)
        {
          v43 = v41;
          do
          {
            v44 = v43[30];
            if ((v44 & 0x2000) != 0)
            {
              break;
            }

            v43[30] = v44 | 0x2000;
            v43 = *(v43 + 10);
          }

          while (v43);
        }

        v45 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_79;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
LABEL_79:
              uniquenessConstraints = [v41 uniquenessConstraints];
              name = [v41 name];
              name2 = [_checkSelfForNonCascadeNoInverses name];
              v48 = [objc_msgSend(_checkSelfForNonCascadeNoInverses "inverseRelationship")];
              name3 = [_checkSelfForNonCascadeNoInverses name];
              v74 = v57;
              v75 = uniquenessConstraints;
              v76 = 2112;
              v77 = name;
              v78 = 2112;
              v79 = name2;
              v80 = 2112;
              v81 = v48;
              v82 = 2112;
              v83 = name3;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Cannot use uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'\n", &v74, 0x34u);
            }
          }
        }

        _NSCoreDataLog_console(1, "Cannot use uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'", [v41 uniquenessConstraints], objc_msgSend(v41, "name"), objc_msgSend(_checkSelfForNonCascadeNoInverses, "name"), objc_msgSend(objc_msgSend(_checkSelfForNonCascadeNoInverses, "inverseRelationship"), "name"), objc_msgSend(_checkSelfForNonCascadeNoInverses, "name"));
        objc_autoreleasePoolPop(v45);
LABEL_77:
        v40 = (v40 + 1);
      }

      while (v40 != v60);
    }

    if (BYTE6(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      fetchRequestTemplates = self->_fetchRequestTemplates;
      v51 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v61 objects:v73 count:16];
      if (v51)
      {
        v52 = *v62;
        do
        {
          for (k = 0; k != v51; ++k)
          {
            if (*v62 != v52)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v54 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:*(*(&v61 + 1) + 8 * k)];
            [v54 allowEvaluation];
            [v54 _incrementInUseCounter];
          }

          v51 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v61 objects:v73 count:16];
        }

        while (v51);
      }
    }

    [(NSManagedObjectModel *)self _finalizeIndexes];
    if (v60 >= 6 && +[(_PFTask *)0x1ED4BE000]>= 2)
    {
    }

    [v59 drain];
  }
}

- (void)_finalizeIndexes
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    result = [result countByEnumeratingWithState:&v5 objects:v9 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v6;
      do
      {
        v4 = 0;
        do
        {
          if (*v6 != v3)
          {
            objc_enumerationMutation(v1);
          }

          [(NSEntityDescription *)*(*(&v5 + 1) + 8 * v4) _finalizeIndexes];
          v4 = v4 + 1;
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v5 objects:v9 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_throwIfNotEditable
{
  if (![(NSManagedObjectModel *)self isEditable])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify an immutable model." userInfo:0]);
  }
}

- (uint64_t)_allowedClassesFromTransformableAttributes
{
  v27 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = *(*(result + 24) + 16);
    if (!result)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = *(v1 + 32);
      v15 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v15)
      {
        v13 = *v22;
        v14 = v1;
        do
        {
          v3 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = v3;
            v4 = [*(v1 + 32) objectForKey:*(*(&v21 + 1) + 8 * v3)];
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            attributesByName = [v4 attributesByName];
            v6 = [attributesByName countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v6)
            {
              v7 = v6;
              v8 = *v18;
              do
              {
                for (i = 0; i != v7; ++i)
                {
                  if (*v18 != v8)
                  {
                    objc_enumerationMutation(attributesByName);
                  }

                  v10 = objc_msgSend_valueForKey_([v4 attributesByName]);
                  if ([v10 valueTransformerName])
                  {
                    [MEMORY[0x1E696B0A0] valueTransformerForName:{objc_msgSend(v10, "valueTransformerName")}];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v2 addObjectsFromArray:{objc_msgSend(objc_opt_class(), "allowedTopLevelClasses")}];
                    }
                  }
                }

                v7 = [attributesByName countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v7);
            }

            v3 = v16 + 1;
            v1 = v14;
          }

          while (v16 + 1 != v15);
          v15 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v15);
      }

      v11 = 0;
      atomic_compare_exchange_strong((*(v1 + 24) + 16), &v11, v2);
      if (v11)
      {
      }

      return *(*(v1 + 24) + 16);
    }
  }

  return result;
}

+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles
{
  v39 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v28 = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = 0x1E6EC0000uLL;
  v6 = [NSManagedObjectModel _modelPathsFromBundles:?];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *v33;
  v10 = 0x1E695D000uLL;
  do
  {
    v11 = 0;
    v30 = v8;
    do
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [*(v10 + 4088) fileURLWithPath:v12];
      v15 = [objc_alloc(*(v5 + 2712)) initWithContentsOfURL:v14];
      if (v15)
      {
        [array addObject:v15];
        goto LABEL_14;
      }

      context = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v16 = v10;
        v17 = v9;
        v18 = v6;
        v19 = array;
        v20 = v5;
        v21 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v22 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v21)
        {
          v5 = v20;
          array = v19;
          v6 = v18;
          v9 = v17;
          v10 = v16;
          v8 = v30;
          if (v22)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v5 = v20;
          array = v19;
          v6 = v18;
          v9 = v17;
          v10 = v16;
          v8 = v30;
          if (v22)
          {
LABEL_16:
            *buf = 138412290;
            v37 = v14;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: +mergedModelFromBundles: Failed to load model at URL '%@'\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "+mergedModelFromBundles: Failed to load model at URL '%@'", v14);
      objc_autoreleasePoolPop(context);
LABEL_14:

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v8 != v11);
    v23 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    v8 = v23;
  }

  while (v23);
LABEL_18:
  if ([array count] == 1)
  {
    v24 = [array objectAtIndex:0];
  }

  else
  {
    v24 = [self modelByMergingModels:array];
  }

  v25 = v24;
  objc_autoreleasePoolPop(v28);
  return v25;
}

+ (void)_modelPathsFromBundles:(uint64_t)bundles
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    if ([a2 count] >= 2)
    {
      v3 = BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  if (mainBundle)
  {
    a2 = [MEMORY[0x1E695DEC8] arrayWithObject:mainBundle];
LABEL_6:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = 0;
  a2 = 0;
LABEL_8:
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ((v3 & 1) == 0 || (v13 = [objc_msgSend(v11 "bundlePath")], objc_msgSend(v13, "count") < 5) || !objc_msgSend(objc_msgSend(v13, "objectAtIndex:", 1), "isEqual:", @"System") || (objc_msgSend(objc_msgSend(v13, "objectAtIndex:", 2), "isEqual:", @"Library") & 1) == 0)
        {
          [array addObjectsFromArray:{objc_msgSend(v11, "pathsForResourcesOfType:inDirectory:", @"mom", 0)}];
          [array addObjectsFromArray:{objc_msgSend(v11, "pathsForResourcesOfType:inDirectory:", @"momd", 0)}];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models
{
  v132 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  if (!models)
  {
    return 0;
  }

  v4 = [(NSArray *)models count];
  if (v4 == 1)
  {
    v6 = [-[NSArray objectAtIndex:](models objectAtIndex:{0), "copy"}];
    goto LABEL_7;
  }

  v5 = v4;
  if (!v4)
  {
    v6 = objc_alloc_init(NSManagedObjectModel);
LABEL_7:

    return v6;
  }

  v85 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v8 = 0;
  v92 = v5 - 2;
  v89 = v5;
  v90 = models;
  do
  {
    context = objc_autoreleasePoolPush();
    v9 = [(NSArray *)models objectAtIndex:v8];
    if (v8 + 1 < v5)
    {
      v10 = v9;
      v11 = v8 + 1;
      do
      {
        v12 = [(NSArray *)models objectAtIndex:v11];
        entitiesByName = [v12 entitiesByName];
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        allValues = [entitiesByName allValues];
        v15 = [allValues countByEnumeratingWithState:&v117 objects:v130 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v118;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v118 != v17)
              {
                objc_enumerationMutation(allValues);
              }

              v19 = *(*(&v117 + 1) + 8 * i);
              name = [v19 name];
              if (v10)
              {
                v21 = name;
                v22 = [v10[4] objectForKey:name];
                if (v22)
                {
                  if (([v22 isEqual:v19] & 1) == 0)
                  {
LABEL_114:
                    [v85 drain];
                    v82 = MEMORY[0x1E695DF30];
                    v83 = *MEMORY[0x1E695D940];
                    v84 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21);
                    objc_exception_throw([v82 exceptionWithName:v83 reason:v84 userInfo:0]);
                  }
                }
              }
            }

            v16 = [allValues countByEnumeratingWithState:&v117 objects:v130 count:16];
          }

          while (v16);
        }

        fetchRequestTemplatesByName = [v12 fetchRequestTemplatesByName];
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v24 = [fetchRequestTemplatesByName countByEnumeratingWithState:&v113 objects:v129 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v114;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v114 != v26)
              {
                objc_enumerationMutation(fetchRequestTemplatesByName);
              }

              v21 = *(*(&v113 + 1) + 8 * j);
              v28 = [v12 fetchRequestTemplateForName:v21];
              v29 = [v10 fetchRequestTemplateForName:v21];
              if (v29 && ([v29 isEqual:v28] & 1) == 0)
              {
                goto LABEL_114;
              }
            }

            v25 = [fetchRequestTemplatesByName countByEnumeratingWithState:&v113 objects:v129 count:16];
          }

          while (v25);
        }

        ++v11;
        v5 = v89;
        models = v90;
      }

      while (v11 != v89);
    }

    objc_autoreleasePoolPop(context);
  }

  while (v8++ != v92);
  v31 = [-[NSArray objectAtIndex:](models objectAtIndex:{0), "copy"}];
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(NSMergedPolicyLocalizationPolicy);
  if ([v31 _localizationPolicy])
  {
    -[NSMergedPolicyLocalizationPolicy addPolicy:](v33, "addPolicy:", [v31 _localizationPolicy]);
  }

  v86 = v33;
  [v31 _setLocalizationPolicy:v33];
  if (v5 >= 2)
  {
    v34 = 1;
    v35 = 0x1E6EC0000uLL;
    do
    {
      v87 = objc_autoreleasePoolPush();
      v88 = v34;
      v36 = [(NSArray *)models objectAtIndex:v34];
      [v32 removeAllObjects];
      entitiesByName2 = [v36 entitiesByName];
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v38 = [entitiesByName2 countByEnumeratingWithState:&v109 objects:v128 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v110;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v110 != v40)
            {
              objc_enumerationMutation(entitiesByName2);
            }

            v42 = [entitiesByName2 objectForKey:*(*(&v109 + 1) + 8 * k)];
            if (![v42 superentity])
            {
              v43 = [v42 copy];
              [(NSManagedObjectModel *)*(v35 + 2712) _deepCollectEntitiesInArray:v32 entity:v43];
            }
          }

          v39 = [entitiesByName2 countByEnumeratingWithState:&v109 objects:v128 count:16];
        }

        while (v39);
      }

      v44 = [v32 count];
      if (v44)
      {
        v45 = v44;
        for (m = 0; m != v45; ++m)
        {
          v47 = [v32 objectAtIndex:m];
          name2 = [v47 name];
          if (!v31 || ![v31[4] objectForKey:name2])
          {
            [v31 _addEntity:v47];
          }
        }
      }

      if ([v36 _localizationPolicy])
      {
        -[NSMergedPolicyLocalizationPolicy addPolicy:](v86, "addPolicy:", [v36 _localizationPolicy]);
      }

      contexta = v36;
      if ([v36[5] count])
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        obj = v36[5];
        v96 = [obj countByEnumeratingWithState:&v105 objects:v127 count:16];
        if (v96)
        {
          v93 = *v106;
          do
          {
            for (n = 0; n != v96; ++n)
            {
              if (*v106 != v93)
              {
                objc_enumerationMutation(obj);
              }

              v50 = *(*(&v105 + 1) + 8 * n);
              [v32 removeAllObjects];
              v51 = [contexta entitiesForConfiguration:v50];
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v52 = [v51 countByEnumeratingWithState:&v101 objects:v126 count:16];
              if (v52)
              {
                v53 = v52;
                v54 = *v102;
                do
                {
                  v55 = 0;
                  do
                  {
                    if (*v102 != v54)
                    {
                      objc_enumerationMutation(v51);
                    }

                    name3 = [*(*(&v101 + 1) + 8 * v55) name];
                    if (v31)
                    {
                      v57 = [v31[4] objectForKey:name3];
                    }

                    else
                    {
                      v57 = 0;
                    }

                    [v32 addObject:v57];
                    ++v55;
                  }

                  while (v53 != v55);
                  v58 = [v51 countByEnumeratingWithState:&v101 objects:v126 count:16];
                  v53 = v58;
                }

                while (v58);
              }

              if (v31)
              {
                if ((v31[8] & 3) != 0)
                {
                  LogStream = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _addEntities called on immutable NSManagedObjectModel\n", buf, 2u);
                  }

                  v60 = _PFLogGetLogStream(17);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 0;
                    _os_log_fault_impl(&dword_18565F000, v60, OS_LOG_TYPE_FAULT, "CoreData: _addEntities called on immutable NSManagedObjectModel", buf, 2u);
                  }
                }

                v61 = v31[5];
                if (!v61)
                {
                  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  v31[5] = v61;
                }

                v62 = [v61 objectForKey:v50];
                if (v62)
                {
                  v63 = v62;
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v64 = [v32 countByEnumeratingWithState:&v121 objects:buf count:16];
                  if (v64)
                  {
                    v65 = v64;
                    v66 = *v122;
                    do
                    {
                      for (ii = 0; ii != v65; ++ii)
                      {
                        if (*v122 != v66)
                        {
                          objc_enumerationMutation(v32);
                        }

                        v68 = *(*(&v121 + 1) + 8 * ii);
                        if ([v63 indexOfObjectIdenticalTo:v68] == 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v63 addObject:v68];
                        }
                      }

                      v65 = [v32 countByEnumeratingWithState:&v121 objects:buf count:16];
                    }

                    while (v65);
                  }
                }

                else
                {
                  v69 = [v32 mutableCopy];
                  [v31[5] setObject:v69 forKey:v50];
                }

                if (!*(v31[3] + 3))
                {
                  *(v31[3] + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
                }

                [*(v31[3] + 3) setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKeyedSubscript:{"setWithArray:", objc_msgSend(v31[5], "objectForKeyedSubscript:", v50)), v50}];
              }
            }

            v96 = [obj countByEnumeratingWithState:&v105 objects:v127 count:16];
          }

          while (v96);
        }
      }

      fetchRequestTemplatesByName2 = [contexta fetchRequestTemplatesByName];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v71 = [fetchRequestTemplatesByName2 countByEnumeratingWithState:&v97 objects:v125 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v98;
        do
        {
          for (jj = 0; jj != v72; ++jj)
          {
            if (*v98 != v73)
            {
              objc_enumerationMutation(fetchRequestTemplatesByName2);
            }

            v75 = *(*(&v97 + 1) + 8 * jj);
            if (![v31 fetchRequestTemplateForName:v75])
            {
              v76 = [objc_msgSend(fetchRequestTemplatesByName2 objectForKey:{v75), "copy"}];
              [v31 setFetchRequestTemplate:v76 forName:v75];
            }
          }

          v72 = [fetchRequestTemplatesByName2 countByEnumeratingWithState:&v97 objects:v125 count:16];
        }

        while (v72);
      }

      versionIdentifiers = [contexta versionIdentifiers];
      models = v90;
      v35 = 0x1E6EC0000;
      if (versionIdentifiers && v31)
      {
        v78 = versionIdentifiers;
        versionIdentifiers2 = [v31 versionIdentifiers];
        if (versionIdentifiers2)
        {
          v80 = [versionIdentifiers2 mutableCopy];
          [v80 unionSet:v78];
          [v31 setVersionIdentifiers:{objc_msgSend(v80, "copy")}];
        }

        else
        {
          [v31 setVersionIdentifiers:v78];
        }
      }

      objc_autoreleasePoolPop(v87);
      v34 = v88 + 1;
    }

    while (v88 + 1 != v89);
  }

  v81 = v31;
  [v85 drain];
  return v31;
}

+ (char)_deepCollectEntitiesInArray:(void *)array entity:
{
  objc_opt_self();
  [a2 addObject:array];
  subentities = [array subentities];
  result = [subentities count];
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      result = +[NSManagedObjectModel _deepCollectEntitiesInArray:entity:](NSManagedObjectModel, a2, [subentities objectAtIndex:i]);
    }
  }

  return result;
}

+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles forStoreMetadata:(NSDictionary *)metadata
{
  selfCopy = self;
  v18 = metadata;
  v26 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x1E695DF70] array];
  v6 = [NSManagedObjectModel _modelPathsFromBundles:?];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v20 = 0;
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v20 == 1)
        {
          v13 = [[NSManagedObjectModelBundle alloc] initWithPath:v11];
        }

        else
        {
          v13 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:{0, selfCopy, v18}]);
        }

        v14 = v13;
        if (v14)
        {
          [array addObject:v14];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [selfCopy modelByMergingModels:array forStoreMetadata:{v18, selfCopy, v18}];
  objc_autoreleasePoolPop(context);
  return v15;
}

+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models forStoreMetadata:(NSDictionary *)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [-[NSDictionary objectForKey:](metadata objectForKey:{@"NSStoreModelVersionHashes", "mutableCopy"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(NSArray *)models countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(models);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 _modelForVersionHashes:v7];
        if (v15)
        {
          v16 = v15;
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v10 addObject:v16];
          [v7 removeObjectsForKeys:{objc_msgSend(objc_msgSend(v16, "entitiesByName"), "allKeys")}];
          if (![v7 count])
          {
            objc_autoreleasePoolPop(v14);
            goto LABEL_15;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [(NSArray *)models countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  v17 = v10;
  v18 = [v10 count];
  v19 = [v7 count];
  v20 = 0;
  if (v18 && !v19)
  {
    if (v18 == 1)
    {
      v21 = [v10 objectAtIndex:0];
    }

    else
    {
      v21 = [NSManagedObjectModel modelByMergingModels:v10];
    }

    v20 = v21;
  }

  [v6 drain];
  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (self->_entities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_entities];
    entities = self->_entities;
  }

  else
  {
    entities = 0;
    v6 = 0;
  }

  [coder encodeObject:entities forKey:@"NSEntities"];

  v8 = [(NSMutableDictionary *)self->_configurations count];
  if (v8 != ([(NSMutableDictionary *)self->_configurations objectForKey:@"PF_DEFAULT_CONFIGURATION_NAME"]!= 0))
  {
    v15 = v5;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    configurations = self->_configurations;
    v11 = [(NSMutableDictionary *)configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(configurations);
          }

          [dictionary setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithArray:", -[NSMutableDictionary objectForKey:](self->_configurations, "objectForKey:", *(*(&v16 + 1) + 8 * i))), *(*(&v16 + 1) + 8 * i)}];
        }

        v12 = [(NSMutableDictionary *)configurations countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [dictionary removeObjectForKey:@"PF_DEFAULT_CONFIGURATION_NAME"];
    [coder encodeObject:dictionary forKey:@"NSConfigurations"];
    v5 = v15;
  }

  [coder encodeObject:self->_fetchRequestTemplates forKey:@"NSFetchRequestTemplates"];
  [coder encodeObject:self->_versionIdentifiers forKey:@"NSVersionIdentifiers"];
  objc_autoreleasePoolPop(v5);
}

- (NSManagedObjectModel)initWithCoder:(id)coder
{
  v94 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v89.receiver = self;
  v89.super_class = NSManagedObjectModel;
  v4 = [(NSManagedObjectModel *)&v89 init];
  if (!v4)
  {
    return 0;
  }

  +[PFModelDecoderContext assertNoContext];
  v5 = +[PFModelDecoderContext retainedContext];
  v7 = v5;
  if (v5)
  {
    objc_setProperty_nonatomic(v5, v6, v4, 8);
  }

  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v86 = __38__NSManagedObjectModel_initWithCoder___block_invoke;
  v87 = &unk_1E6EC16F0;
  v88 = v7;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = v4;
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [coder decodeObjectOfClasses:objc_msgSend(objc_msgSend(v8 forKey:{"setWithObjects:", v9, v11, v12, v13, objc_opt_class(), 0), "setByAddingObjectsFromArray:", +[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")), @"NSEntities"}];
  v4->_entities = v14;
  if (v14)
  {
    if (([(NSMutableDictionary *)v14 isNSDictionary]& 1) == 0)
    {
      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4350D0)}];

      goto LABEL_68;
    }

    v15 = [MEMORY[0x1E695DFA8] set];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    allKeys = [(NSMutableDictionary *)v4->_entities allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v17)
    {
      v18 = *v82;
      v19 = *MEMORY[0x1E696A250];
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v82 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v81 + 1) + 8 * v20);
        v22 = objc_autoreleasePoolPush();
        v23 = [(NSMutableDictionary *)v10->_entities objectForKeyedSubscript:v21];
        if ([v21 isNSString] && (objc_opt_class(), superentity = v23, (objc_opt_isKindOfClass() & 1) != 0))
        {
          while (1)
          {
            superentity = [superentity superentity];
            if (!superentity || ([v15 containsObject:superentity] & 1) != 0)
            {
              break;
            }

            name = [superentity name];
            if (!name || [(NSMutableDictionary *)v10->_entities objectForKeyedSubscript:name]!= superentity)
            {
              [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4866, &unk_1EF435120)}];

              goto LABEL_19;
            }

            [v15 addObject:superentity];
          }

          v80 = 0;
          v26 = [v23 performPostDecodeValidationInModel:v10 error:&v80];
          if (v26)
          {
            goto LABEL_21;
          }

          [coder failWithError:v80];
        }

        else
        {
          [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4866, &unk_1EF4350F8)}];

LABEL_19:
          v26 = 0;
        }

        v10 = 0;
LABEL_21:
        objc_autoreleasePoolPop(v22);
        if (!v26)
        {
          goto LABEL_68;
        }

        if (++v20 == v17)
        {
          v27 = [allKeys countByEnumeratingWithState:&v81 objects:v93 count:16];
          v17 = v27;
          if (v27)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10->_entities = [(NSMutableDictionary *)v10->_entities mutableCopy];
    }
  }

  v28 = PF_CALLOC_OBJECT_ARRAY(4);
  v10->_additionalPrivateIvars = v28;
  *v28 = 0;
  *(v10->_additionalPrivateIvars + 1) = 0;
  *(v10->_additionalPrivateIvars + 2) = 0;
  *(v10->_additionalPrivateIvars + 3) = 0;
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [coder decodeObjectOfClasses:objc_msgSend(v29 forKey:{"setWithObjects:", v30, v31, v32, v33, v34, objc_opt_class(), 0), @"NSConfigurations"}];
  if (v35)
  {
    v10->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    v67 = v10;
    *(v10->_additionalPrivateIvars + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
    context = objc_autoreleasePoolPush();
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v36 = [v35 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v36)
    {
      v37 = *v77;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v77 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v76 + 1) + 8 * i);
          v40 = [objc_msgSend(objc_msgSend(v35 objectForKey:{v39), "allObjects"), "mutableCopy"}];
          [(NSMutableDictionary *)v10->_configurations setObject:v40 forKey:v39];
          v41 = [MEMORY[0x1E695DFA8] set];
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v42 = [v40 countByEnumeratingWithState:&v72 objects:v91 count:16];
          if (v42)
          {
            v43 = *v73;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v73 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                [v41 addObject:{objc_msgSend(*(*(&v72 + 1) + 8 * j), "name")}];
              }

              v42 = [v40 countByEnumeratingWithState:&v72 objects:v91 count:16];
            }

            while (v42);
          }

          v10 = v67;
          [v67->_additionalPrivateIvars[3] setObject:v41 forKey:v39];
        }

        v36 = [v35 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v36);
    }

    objc_autoreleasePoolPop(context);
  }

  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [coder decodeObjectOfClasses:objc_msgSend(v45 forKey:{"setWithObjects:", v46, v47, v48, objc_opt_class(), 0), @"NSFetchRequestTemplates"}];
  v10->_fetchRequestTemplates = v49;
  if (!v49)
  {
LABEL_60:
    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v61 = objc_opt_class();
    v62 = objc_opt_class();
    v63 = [coder decodeObjectOfClasses:objc_msgSend(v58 forKey:{"setWithObjects:", v59, v60, v61, v62, objc_opt_class(), 0), @"NSVersionIdentifiers"}];
    v10->_versionIdentifiers = v63;
    if (!v63)
    {
      v10->_versionIdentifiers = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    *&v10->_managedObjectModelFlags &= 0xFFFFFFFC;
    [(NSManagedObjectModel *)v10 _finalizeIndexes];
    goto LABEL_69;
  }

  if (([(NSMutableDictionary *)v49 isNSDictionary]& 1) != 0)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    allKeys2 = [(NSMutableDictionary *)v10->_fetchRequestTemplates allKeys];
    v51 = [allKeys2 countByEnumeratingWithState:&v68 objects:v90 count:16];
    if (v51)
    {
      v52 = *v69;
      while (2)
      {
        for (k = 0; k != v51; ++k)
        {
          if (*v69 != v52)
          {
            objc_enumerationMutation(allKeys2);
          }

          v54 = *(*(&v68 + 1) + 8 * k);
          v55 = [(NSMutableDictionary *)v10->_fetchRequestTemplates objectForKeyedSubscript:v54];
          if (![v54 isNSString] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435170)}];

            goto LABEL_68;
          }

          entity = [v55 entity];
          v57 = entity;
          if (entity && (![entity name] || -[NSMutableDictionary objectForKeyedSubscript:](v10->_entities, "objectForKeyedSubscript:", objc_msgSend(v57, "name")) != v57))
          {
            [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435198)}];

            goto LABEL_68;
          }
        }

        v51 = [allKeys2 countByEnumeratingWithState:&v68 objects:v90 count:16];
        if (v51)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_60;
  }

  [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435148)}];

LABEL_68:
  v10 = 0;
LABEL_69:
  v86(v85);
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    [v4 _setModelsReferenceIDOffset:{-[NSManagedObjectModel _modelsReferenceIDOffset](self, "_modelsReferenceIDOffset")}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    entities = self->_entities;
    v7 = [(NSMutableDictionary *)entities countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(entities);
          }

          v11 = [(NSMutableDictionary *)self->_entities objectForKey:*(*(&v42 + 1) + 8 * i)];
          if (![v11 superentity])
          {
            v12 = [v11 copy];
            [NSManagedObjectModel _deepCollectEntitiesInArray:v5 entity:v12];
          }
        }

        v8 = [(NSMutableDictionary *)entities countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v8);
    }

    [v4 setEntities:v5];

    v13 = *self->_additionalPrivateIvars;
    if (v13)
    {
      v14 = [v13 copy];
      [v4 _setLocalizationPolicy:v14];
    }

    obj = self->_configurations;
    if (obj)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v38 + 1) + 8 * j);
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v21 = [(NSManagedObjectModel *)self entitiesForConfiguration:v19];
            v22 = [(NSArray *)v21 count];
            if (v22)
            {
              v23 = v22;
              for (k = 0; k != v23; ++k)
              {
                [v20 addObject:{objc_msgSend(v4[4], "objectForKey:", objc_msgSend(-[NSArray objectAtIndex:](v21, "objectAtIndex:", k), "name"))}];
              }
            }

            [v4 setEntities:v20 forConfiguration:v19];
          }

          v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v16);
      }
    }

    fetchRequestTemplates = self->_fetchRequestTemplates;
    if (fetchRequestTemplates)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v26 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v30 = *(*(&v34 + 1) + 8 * m);
            v31 = [-[NSMutableDictionary objectForKey:](self->_fetchRequestTemplates objectForKey:{v30), "copy"}];
            [v4 setFetchRequestTemplate:v31 forName:v30];
          }

          v27 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v27);
      }
    }

    [v4 setVersionIdentifiers:self->_versionIdentifiers];
  }

  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_15;
  }

  if (!equal || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(entitiesByName2) = 0;
    return entitiesByName2;
  }

  entitiesByName = [(NSManagedObjectModel *)self entitiesByName];
  entitiesByName2 = [equal entitiesByName];
  if (entitiesByName == entitiesByName2 || (v7 = entitiesByName2, LOBYTE(entitiesByName2) = 0, entitiesByName) && v7 && (LODWORD(entitiesByName2) = [(NSDictionary *)entitiesByName isEqual:?], entitiesByName2))
  {
    fetchRequestTemplatesByName = [(NSManagedObjectModel *)self fetchRequestTemplatesByName];
    entitiesByName2 = [equal fetchRequestTemplatesByName];
    if (fetchRequestTemplatesByName != entitiesByName2)
    {
      v9 = entitiesByName2;
      LOBYTE(entitiesByName2) = 0;
      if (fetchRequestTemplatesByName && v9)
      {

        LOBYTE(entitiesByName2) = [(NSDictionary *)fetchRequestTemplatesByName isEqual:?];
      }

      return entitiesByName2;
    }

LABEL_15:
    LOBYTE(entitiesByName2) = 1;
  }

  return entitiesByName2;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSManagedObjectModel;
  v5 = [(NSManagedObjectModel *)&v8 description];
  v6 = objc_msgSend_stringWithFormat_(v4, v5, [(NSManagedObjectModel *)self isEditable], [(NSManagedObjectModel *)self entitiesByName], [(NSManagedObjectModel *)self fetchRequestTemplatesByName]);
  objc_autoreleasePoolPop(v3);
  return v6;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      entities = [(NSManagedObjectModel *)self entities];
      state->var3[3] = 0;
      state->var3[4] = entities;
    }
  }

  entities2 = state->var3[4];
  if (entities2)
  {
    if (!state->var3[3])
    {
      entities2 = [(NSManagedObjectModel *)self entities];
    }

    return [(NSArray *)entities2 countByEnumeratingWithState:state objects:objects count:count];
  }

  else
  {
    entities = self->_entities;

    return [(NSMutableDictionary *)entities _valueCountByEnumeratingWithState:state objects:objects count:count];
  }
}

- (void)setEntities:(NSArray *)entities
{
  [(NSManagedObjectModel *)self _throwIfNotEditable];
  if (([_PFRoutines _doNameAndTypeCheck:?]& 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't add an entity to a managed object model (missing name or bad properties)." userInfo:0]);
  }

  allValues = [(NSMutableDictionary *)self->_entities allValues];
  v6 = [allValues count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [allValues objectAtIndex:i];
      if ([(NSArray *)entities indexOfObjectIdenticalTo:v9]== 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSManagedObjectModel *)self _removeEntity:v9];
      }
    }
  }

  v10 = [(NSArray *)entities count];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      v13 = [(NSArray *)entities objectAtIndex:j];
      if ([allValues indexOfObjectIdenticalTo:v13] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSManagedObjectModel *)self _addEntity:v13];
      }
    }
  }
}

- (void)_removeEntity:(uint64_t)entity
{
  v35 = *MEMORY[0x1E69E9840];
  if (entity)
  {
    if ([a2 managedObjectModel] != entity)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't remove entity - doesn't belong to this model." userInfo:0]);
    }

    name = [a2 name];
    [entity _throwIfNotEditable];
    if (name)
    {
      v24 = [*(entity + 32) objectForKey:name];
      if (v24)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v22 = name;
        obj = *(entity + 40);
        v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v26;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v26 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v25 + 1) + 8 * i);
              v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v24];
              v11 = *(entity + 40);
              if (v11)
              {
                v12 = [v11 objectForKey:v9];
                if (v12)
                {
                  v13 = v12;
                  if ((*(entity + 64) & 3) != 0)
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _removeEntities called on immutable NSManagedObjectModel\n", buf, 2u);
                    }

                    v15 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: _removeEntities called on immutable NSManagedObjectModel", buf, 2u);
                    }
                  }

                  v31 = 0u;
                  v32 = 0u;
                  v29 = 0u;
                  v30 = 0u;
                  v16 = [v10 countByEnumeratingWithState:&v29 objects:buf count:16];
                  if (v16)
                  {
                    v17 = v16;
                    v18 = *v30;
                    do
                    {
                      for (j = 0; j != v17; ++j)
                      {
                        if (*v30 != v18)
                        {
                          objc_enumerationMutation(v10);
                        }

                        v20 = [v13 indexOfObjectIdenticalTo:*(*(&v29 + 1) + 8 * j)];
                        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v13 removeObjectAtIndex:v20];
                        }
                      }

                      v17 = [v10 countByEnumeratingWithState:&v29 objects:buf count:16];
                    }

                    while (v17);
                  }
                }
              }
            }

            v6 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v6);
        }

        v21 = v24;
        [*(entity + 32) removeObjectForKey:v22];
        [(NSEntityDescription *)v24 _setManagedObjectModel:?];
      }
    }
  }
}

- (NSArray)configurations
{
  configurations = self->_configurations;
  if (configurations)
  {
    return [(NSMutableDictionary *)configurations allKeys];
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (NSArray)entitiesForConfiguration:(NSString *)configuration
{
  if ((*&self->_managedObjectModelFlags & 2) != 0)
  {
    configurations = self->_configurations;
    return [(NSMutableDictionary *)configurations objectForKey:?];
  }

  if (configuration)
  {
    configurations = self->_configurations;
    return [(NSMutableDictionary *)configurations objectForKey:?];
  }

  return [(NSManagedObjectModel *)self entities];
}

- (void)setEntities:(NSArray *)entities forConfiguration:(NSString *)configuration
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*&self->_managedObjectModelFlags & 3) != 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: setEntities called on immutable NSManagedObjectModel\n", buf, 2u);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: setEntities called on immutable NSManagedObjectModel", buf, 2u);
    }
  }

  v9 = [(NSArray *)entities count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [(NSArray *)entities objectAtIndex:i];
      if (([v12 isEqual:{-[NSMutableDictionary objectForKey:](self->_entities, "objectForKey:", objc_msgSend(v12, "name"))}] & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entities for a configuration must already be in the model." userInfo:0]);
      }
    }
  }

  if (!self->_configurations)
  {
    self->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = [(NSArray *)entities mutableCopy];
  [(NSMutableDictionary *)self->_configurations setObject:v13 forKey:configuration];
  if (!*(self->_additionalPrivateIvars + 3))
  {
    *(self->_additionalPrivateIvars + 3) = objc_opt_new();
  }

  v14 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [(NSArray *)entities countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(entities);
        }

        [v14 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * v18++), "name")}];
      }

      while (v16 != v18);
      v16 = [(NSArray *)entities countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v16);
  }

  [self->_additionalPrivateIvars[3] setObject:v14 forKeyedSubscript:configuration];
}

- (NSDictionary)fetchRequestTemplatesByName
{
  if (self->_fetchRequestTemplates)
  {
    return &self->_fetchRequestTemplates->super;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

- (NSFetchRequest)fetchRequestTemplateForName:(NSString *)name
{
  result = self->_fetchRequestTemplates;
  if (result)
  {
    return [(NSFetchRequest *)result objectForKey:name];
  }

  return result;
}

- (void)setFetchRequestTemplate:(NSFetchRequest *)fetchRequestTemplate forName:(NSString *)name
{
  fetchRequestTemplates = self->_fetchRequestTemplates;
  if (!fetchRequestTemplates)
  {
    fetchRequestTemplates = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_fetchRequestTemplates = fetchRequestTemplates;
  }

  v8 = [(NSMutableDictionary *)fetchRequestTemplates objectForKey:name];
  if (v8 != fetchRequestTemplate)
  {
    if (fetchRequestTemplate)
    {
      entity = [(NSFetchRequest *)fetchRequestTemplate entity];
      v10 = [(NSMutableDictionary *)self->_entities objectForKey:[(NSEntityDescription *)entity name]];
      if (v10)
      {
        v11 = v10;
        if (v10 == entity)
        {
          v13 = self->_fetchRequestTemplates;

          [(NSMutableDictionary *)v13 setObject:fetchRequestTemplate forKey:name];
        }

        else
        {
          v15 = [(NSFetchRequest *)fetchRequestTemplate copy];
          [v15 setEntity:v11];
          [(NSMutableDictionary *)self->_fetchRequestTemplates setObject:v15 forKey:name];
        }
      }

      else if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
      {
        v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{-[NSEntityDescription name](entity, "name")), 0}];
        objc_exception_throw(v14);
      }
    }

    else if (v8)
    {
      v12 = self->_fetchRequestTemplates;

      [(NSMutableDictionary *)v12 removeObjectForKey:name];
    }
  }
}

- (NSFetchRequest)fetchRequestFromTemplateWithName:(NSString *)name substitutionVariables:(NSDictionary *)variables
{
  v5 = [(NSManagedObjectModel *)self fetchRequestTemplateForName:name];
  if (!v5)
  {
    return 0;
  }

  v6 = [(NSFetchRequest *)v5 copy];
  [(NSFetchRequest *)v6 setPredicate:[(NSPredicate *)[(NSFetchRequest *)v6 predicate] predicateWithSubstitutionVariables:variables]];
  return v6;
}

- (NSDictionary)localizationDictionary
{
  result = [(NSManagedObjectModel *)self _localizationPolicy];
  if (result)
  {
    v3 = result;
    [(NSDictionary *)result _ensureFullLocalizationDictionaryIsLoaded];

    return [(NSDictionary *)v3 localizationDictionary];
  }

  return result;
}

- (void)setLocalizationDictionary:(NSDictionary *)localizationDictionary
{
  _localizationPolicy = [(NSManagedObjectModel *)self _localizationPolicy];
  if (!_localizationPolicy)
  {
    _localizationPolicy = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:0];
    [(NSManagedObjectModel *)self _setLocalizationPolicy:_localizationPolicy];
  }

  [(NSValidationErrorLocalizationPolicy *)_localizationPolicy setLocalizationDictionary:localizationDictionary];
}

- (void)setVersionIdentifiers:(NSSet *)versionIdentifiers
{
  if (self->_versionIdentifiers != versionIdentifiers)
  {
    if (versionIdentifiers)
    {
      v4 = [(NSSet *)versionIdentifiers copy];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v5 = v4;

    self->_versionIdentifiers = v5;
  }
}

- (id)_entityVersionHashesByNameInStyle:(id)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    entitiesByName = [result entitiesByName];
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(entitiesByName, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [entitiesByName countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(entitiesByName);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          [v4 setValue:-[NSEntityDescription _versionHashInStyle:](objc_msgSend(entitiesByName forKey:{"objectForKey:", v9), a2), v9}];
          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v6 = [entitiesByName countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

- (uint64_t)_isConfiguration:(uint64_t)configuration inStyle:(void *)style compatibleWithStoreMetadata:
{
  v31 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [style objectForKey:0x1EF3FD3E8];
  intValue = [v7 intValue];
  if ([v7 intValue] > 3)
  {
    return 0;
  }

  result = [style objectForKey:@"NSStoreModelVersionHashes"];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [objc_msgSend(v6 "entitiesByName")];
  if (v10 != [v9 count])
  {
    return 0;
  }

  v11 = [(NSManagedObjectModel *)v6 _entityVersionHashesByNameInStyle:configuration];
  v12 = v11;
  if (intValue < 3)
  {
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        result = [v9 objectForKey:*(*(&v21 + 1) + 8 * v16)];
        if (!result)
        {
          return result;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
          result = 1;
          if (v14)
          {
            goto LABEL_8;
          }

          return result;
        }
      }
    }

    return 1;
  }

  v27 = 0uLL;
  v28 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v17 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v17)
  {
    return 1;
  }

  v18 = v17;
  v19 = *v26;
LABEL_19:
  v20 = 0;
  while (1)
  {
    if (*v26 != v19)
    {
      objc_enumerationMutation(v12);
    }

    result = [objc_msgSend(v12 objectForKey:{*(*(&v25 + 1) + 8 * v20)), "isEqual:", objc_msgSend(v9, "objectForKey:", *(*(&v25 + 1) + 8 * v20))}];
    if (!result)
    {
      return result;
    }

    if (v18 == ++v20)
    {
      v18 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      result = 1;
      if (v18)
      {
        goto LABEL_19;
      }

      return result;
    }
  }
}

+ (NSDictionary)checksumsForVersionedModelAtURL:(NSURL *)modelURL error:(NSError *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  v7 = [[NSManagedObjectModelBundle alloc] initWithPath:[(NSURL *)modelURL path]];
  if (v7)
  {
    v8 = v7;
    dictionary = [(NSManagedObjectModelBundle *)v7 versionChecksums];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
    }

    v9 = dictionary;

    return dictionary;
  }

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A250];
  v20 = *MEMORY[0x1E696A578];
  v21[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], modelURL);
  v13 = [v11 errorWithDomain:v12 code:258 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v21, &v20, 1)}];
  v14 = dictionary;
  if (!v13)
  {
    return dictionary;
  }

  v15 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v16 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v16)
    {
      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else if (!v18)
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    *&buf[4] = modelURL;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: +checksumsForVersionedModelAtURL:error: Failed to load model at URL '%@' due to error %@\n", buf, 0x16u);
  }

LABEL_12:
  _NSCoreDataLog_console(1, "+checksumsForVersionedModelAtURL:error: Failed to load model at URL '%@' due to error %@", modelURL, v13, *buf, *&buf[8]);
  objc_autoreleasePoolPop(v15);
  if (error)
  {
    *error = v13;
  }

  return dictionary;
}

+ (id)versionsHashesForModelAtURL:(id)l error:(id *)error
{
  v27[2] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  path = [l path];
  if (![objc_msgSend(path "pathExtension")] || (v8 = objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", objc_msgSend(path, "stringByAppendingPathComponent:", @"VersionInfo.plist"), 0), (v9 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithContentsOfURL:error:", v8, &v25)) == 0) || (entityVersionHashesByName = objc_msgSend(objc_msgSend(v9, "objectForKey:", @"NSManagedObjectModel_VersionHashes"), "objectForKey:", objc_msgSend(v9, "objectForKey:", @"NSManagedObjectModel_CurrentVersionName")), v11 = entityVersionHashesByName, !entityVersionHashesByName))
  {
    v12 = [[NSManagedObjectModel alloc] initWithContentsOfURL:l];
    v13 = v12;
    if (v12)
    {
      entityVersionHashesByName = [(NSManagedObjectModel *)v12 entityVersionHashesByName];
      v14 = entityVersionHashesByName;
    }

    else
    {
      entityVersionHashesByName = 0;
    }
  }

  v15 = v25;
  v16 = entityVersionHashesByName;
  [v6 drain];
  v17 = 0;
  v18 = v25;
  v19 = entityVersionHashesByName;
  v20 = v25;
  if (!(entityVersionHashesByName | v25))
  {
    v21 = MEMORY[0x1E696ABC0];
    v27[0] = @"Unable to model NSManagedObjectModel";
    v22 = *MEMORY[0x1E696A368];
    v26[0] = @"reason";
    v26[1] = v22;
    v27[1] = [l path];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v20 = [v21 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v23];
    v25 = v20;
  }

  if (error && v20)
  {
    *error = v20;
  }

  return entityVersionHashesByName;
}

+ (BOOL)versionHashes:(id)hashes compatibleWithStoreMetadata:(id)metadata
{
  v19 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(metadata objectForKey:{0x1EF3FD3E8), "intValue"}] > 3)
  {
    goto LABEL_13;
  }

  v6 = [metadata objectForKey:@"NSStoreModelVersionHashes"];
  if (!v6)
  {
    return v6;
  }

  v7 = v6;
  v8 = [hashes count];
  if (v8 != [v7 count])
  {
LABEL_13:
    LOBYTE(v6) = 0;
    return v6;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [hashes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(hashes);
      }

      LODWORD(v6) = [objc_msgSend(hashes objectForKey:{*(*(&v14 + 1) + 8 * v12)), "isEqual:", objc_msgSend(v7, "objectForKey:", *(*(&v14 + 1) + 8 * v12))}];
      if (!v6)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [hashes countByEnumeratingWithState:&v14 objects:v18 count:16];
        LOBYTE(v6) = 1;
        if (v10)
        {
          goto LABEL_6;
        }

        return v6;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)_optimizedEncoding:(id *)encoding
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v6 = v3;
  v471 = *MEMORY[0x1E69E9840];
  [v3 _setIsEditable:0 optimizationStyle:1];
  if ((v6[64] & 4) == 0)
  {
    v7 = [v6 copy];
    v8 = [v7 _optimizedEncoding:v5];

    return v8;
  }

  v331 = v5;
  v10 = MEMORY[0x1E695E9D8];
  v352 = *(MEMORY[0x1E695E9D8] + 8);
  v447.version = 0;
  v447.retain = v352;
  v351 = *(MEMORY[0x1E695E9D8] + 16);
  *&v447.release = v351;
  v11 = *(MEMORY[0x1E695E9D8] + 40);
  v447.equal = 0;
  v447.hash = v11;
  v446.version = 0;
  *&v446.retain = *(MEMORY[0x1E695E9E8] + 8);
  v446.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  v446.equal = 0;
  v12 = *MEMORY[0x1E695E480];
  v343 = v6;
  v13 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
  v350 = CFDictionaryCreateMutable(v12, 0, &v447, &v446);
  v336 = CFArrayCreateMutable(v12, 0, v13);
  CFArrayAppendValue(v336, &stru_1EF3F1768);
  v337 = CFDictionaryCreateMutable(v12, 0, v10, &v446);
  CFDictionarySetValue(v337, &stru_1EF3F1768, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v348 = CFArrayCreateMutable(v12, 0, v13);
  CFArrayAppendValue(v348, &stru_1EF3F1768);
  v353 = CFDictionaryCreateMutable(v12, 0, v10, &v446);
  CFDictionarySetValue(v353, &stru_1EF3F1768, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v347 = CFArrayCreateMutable(v12, 0, v13);
  CFArrayAppendValue(v347, [MEMORY[0x1E695DEF0] data]);
  v14 = CFDictionaryCreateMutable(v12, 0, v10, &v446);
  null = [MEMORY[0x1E695DFB0] null];
  CFDictionarySetValue(v14, null, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v16 = CFArrayCreateMutable(v12, 0, v13);
  mapping = [*(v343 + 4) mapping];
  v333 = v16;
  [(__CFArray *)v16 addObject:mapping];
  v18 = CFDictionaryCreateMutable(v12, 0, &v447, &v446);
  mapping2 = [*(v343 + 4) mapping];
  CFDictionarySetValue(v18, mapping2, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v20 = v13;
  v21 = v343;
  v339 = CFArrayCreateMutable(v12, 0, v20);
  v445.version = 0;
  v445.retain = v352;
  v445.release = v351;
  v445.equal = 0;
  v445.copyDescription = 0;
  v445.hash = v11;
  v22 = CFDictionaryCreateMutable(v12, 0, &v445, &v446);
  v23 = [*(v343 + 6) count];
  v334 = v18;
  v340 = v22;
  if (v23)
  {
    v24 = [[NSKnownKeysDictionary alloc] initWithDictionary:*(v343 + 6)];
    if (![(__CFDictionary *)v18 objectForKey:[(NSKnownKeysDictionary *)v24 mapping]])
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v333, "count")}];
      v21 = v343;
      [(__CFArray *)v333 addObject:[(NSKnownKeysDictionary *)v24 mapping]];
      mapping3 = [(NSKnownKeysDictionary *)v24 mapping];
      v27 = v25;
      v22 = v340;
      CFDictionarySetValue(v18, mapping3, v27);
    }

    v329 = v24;
    v444 = 0u;
    v443 = 0u;
    v442 = 0u;
    v441 = 0u;
    v352 = *(v21 + 6);
    v28 = [v352 countByEnumeratingWithState:&v441 objects:v470 count:16];
    v29 = v348;
    if (v28)
    {
      v30 = v28;
      v31 = *v442;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v442 != v31)
          {
            objc_enumerationMutation(v352);
          }

          v33 = *(*(&v441 + 1) + 8 * i);
          if (![(__CFDictionary *)v353 objectForKey:v33])
          {
            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
            [(__CFArray *)v348 addObject:v33];
            [(__CFDictionary *)v353 setObject:v34 forKey:v33];
          }

          v35 = [*(v343 + 6) objectForKey:v33];
          if (!CFDictionaryGetValue(v22, v35))
          {
            v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v339, "count")}];
            v22 = v340;
            [(__CFArray *)v339 addObject:v35];
            CFDictionarySetValue(v340, v35, v36);
          }
        }

        v30 = [v352 countByEnumeratingWithState:&v441 objects:v470 count:16];
      }

      while (v30);
    }

    v21 = v343;
  }

  else
  {
    v329 = 0;
    v29 = v348;
  }

  v328 = objc_opt_class();
  v349 = objc_opt_class();
  v330 = [[NSSQLModel alloc] initWithManagedObjectModel:v21 configurationName:0 retainHashHack:1];
  if (!v330)
  {
    if (v331)
    {
      *v331 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
    }

    goto LABEL_214;
  }

  v440 = 0u;
  v439 = 0u;
  v438 = 0u;
  v437 = 0u;
  v37 = *(v21 + 5);
  v38 = [v37 countByEnumeratingWithState:&v437 objects:v469 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v438;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v438 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v437 + 1) + 8 * j);
        if (![(__CFDictionary *)v353 objectForKey:v42])
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
          [(__CFArray *)v29 addObject:v42];
          [(__CFDictionary *)v353 setObject:v43 forKey:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v437 objects:v469 count:16];
    }

    while (v39);
  }

  v436 = 0u;
  v435 = 0u;
  v434 = 0u;
  v433 = 0u;
  v352 = *(v343 + 7);
  v44 = [v352 countByEnumeratingWithState:&v433 objects:v468 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v434;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v434 != v46)
        {
          objc_enumerationMutation(v352);
        }

        v48 = *(*(&v433 + 1) + 8 * k);
        if (![(__CFDictionary *)v14 objectForKey:v48])
        {
          v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
          -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v48 requiringSecureCoding:1 error:0]);
          CFDictionarySetValue(v14, v48, v49);
        }
      }

      v45 = [v352 countByEnumeratingWithState:&v433 objects:v468 count:16];
    }

    while (v45);
  }

  v432 = 0u;
  v431 = 0u;
  v430 = 0u;
  v429 = 0u;
  allValues = [*(v343 + 4) allValues];
  v51 = [allValues countByEnumeratingWithState:&v429 objects:v467 count:16];
  *&v351 = v14;
  if (!v51)
  {
    v345 = 0;
    v335 = 0;
    v326 = 0;
    v327 = 0;
    LODWORD(v352) = 0;
    goto LABEL_247;
  }

  v345 = 0;
  v335 = 0;
  v326 = 0;
  v327 = 0;
  LODWORD(v352) = 0;
  v52 = *v430;
  v53 = v350;
  v321 = allValues;
  v323 = v52;
LABEL_40:
  v54 = 0;
  v322 = v51;
LABEL_41:
  if (*v430 != v52)
  {
    v55 = v54;
    objc_enumerationMutation(allValues);
    v54 = v55;
  }

  v324 = v54;
  v56 = *(*(&v429 + 1) + 8 * v54);
  name = [v56 name];
  v332 = v56;
  if (![(__CFDictionary *)v353 objectForKey:?])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
    [(__CFArray *)v29 addObject:name];
    v56 = v332;
    [(__CFDictionary *)v353 setObject:v57 forKey:name];
  }

  versionHashModifier = [v56 versionHashModifier];
  if (versionHashModifier)
  {
    v59 = versionHashModifier;
    if (![(__CFDictionary *)v337 objectForKey:versionHashModifier])
    {
      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
      [(__CFArray *)v336 addObject:v59];
      v61 = v60;
      v56 = v332;
      [(__CFDictionary *)v337 setObject:v61 forKey:v59];
    }
  }

  versionHash = [v56 versionHash];
  if (versionHash)
  {
    v63 = versionHash;
    if (![(__CFDictionary *)v14 objectForKey:versionHash])
    {
      v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
      [(__CFArray *)v347 addObject:v63];
      v65 = v64;
      v56 = v332;
      CFDictionarySetValue(v14, v63, v65);
    }
  }

  managedObjectClassName = [v56 managedObjectClassName];
  if (managedObjectClassName)
  {
    v67 = managedObjectClassName;
    if (![(__CFDictionary *)v353 objectForKey:managedObjectClassName])
    {
      v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
      [(__CFArray *)v29 addObject:v67];
      v69 = v68;
      v56 = v332;
      [(__CFDictionary *)v353 setObject:v69 forKey:v67];
    }
  }

  renamingIdentifier = [v56 renamingIdentifier];
  if (renamingIdentifier)
  {
    v71 = renamingIdentifier;
    if (![(__CFDictionary *)v337 objectForKey:renamingIdentifier])
    {
      v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
      [(__CFArray *)v336 addObject:v71];
      v73 = v72;
      v56 = v332;
      [(__CFDictionary *)v337 setObject:v73 forKey:v71];
    }
  }

  coreSpotlightDisplayNameExpression = [v56 coreSpotlightDisplayNameExpression];
  if (coreSpotlightDisplayNameExpression)
  {
    v75 = coreSpotlightDisplayNameExpression;
    if (![(__CFDictionary *)v14 objectForKey:coreSpotlightDisplayNameExpression])
    {
      v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
      -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v75 requiringSecureCoding:1 error:0]);
      v77 = v76;
      v56 = v332;
      CFDictionarySetValue(v14, v75, v77);
    }
  }

  v427 = 0u;
  v428 = 0u;
  v425 = 0u;
  v426 = 0u;
  indexes = [v56 indexes];
  v342 = [indexes countByEnumeratingWithState:&v425 objects:v466 count:16];
  if (v342)
  {
    v341 = *v426;
    do
    {
      v78 = 0;
      do
      {
        if (*v426 != v341)
        {
          objc_enumerationMutation(indexes);
        }

        v344 = v78;
        v79 = *(*(&v425 + 1) + 8 * v78);
        name2 = [v79 name];
        if (name2)
        {
          v81 = name2;
          if (![(__CFDictionary *)v353 objectForKey:name2])
          {
            v82 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
            [(__CFArray *)v29 addObject:v81];
            [(__CFDictionary *)v353 setObject:v82 forKey:v81];
          }
        }

        partialIndexPredicate = [v79 partialIndexPredicate];
        if (partialIndexPredicate)
        {
          v84 = partialIndexPredicate;
          if (![(__CFDictionary *)v14 objectForKey:partialIndexPredicate])
          {
            v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
            -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v84 requiringSecureCoding:1 error:0]);
            CFDictionarySetValue(v14, v84, v85);
          }
        }

        v423 = 0u;
        v424 = 0u;
        v421 = 0u;
        v422 = 0u;
        elements = [v79 elements];
        v87 = [elements countByEnumeratingWithState:&v421 objects:v465 count:16];
        if (v87)
        {
          v88 = v87;
          v89 = *v422;
          do
          {
            for (m = 0; m != v88; ++m)
            {
              if (*v422 != v89)
              {
                objc_enumerationMutation(elements);
              }

              v91 = *(*(&v421 + 1) + 8 * m);
              propertyName = [v91 propertyName];
              if (propertyName)
              {
                v93 = propertyName;
                if (![(__CFDictionary *)v353 objectForKey:propertyName])
                {
                  v94 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
                  v14 = v351;
                  [(__CFArray *)v348 addObject:v93];
                  v95 = v94;
                  v53 = v350;
                  [(__CFDictionary *)v353 setObject:v95 forKey:v93];
                }
              }

              property = [v91 property];
              if ([property _propertyType] == 5)
              {
                if (![(__CFDictionary *)v53 objectForKey:property])
                {
                  v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                  v53 = v350;
                  [(__CFArray *)Mutable addObject:property];
                  CFDictionarySetValue(v350, property, v97);
                }

                name3 = [property name];
                if (![(__CFDictionary *)v353 objectForKey:name3])
                {
                  v99 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
                  v14 = v351;
                  [(__CFArray *)v348 addObject:name3];
                  v100 = v99;
                  v53 = v350;
                  [(__CFDictionary *)v353 setObject:v100 forKey:name3];
                }

                LODWORD(v352) = v352 + 1;
                expression = [property expression];
                if (![(__CFDictionary *)v14 objectForKey:expression])
                {
                  v102 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                  v14 = v351;
                  -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:expression requiringSecureCoding:1 error:0]);
                  [v351 setObject:v102 forKey:expression];
                }
              }
            }

            v345 += v88;
            v88 = [elements countByEnumeratingWithState:&v421 objects:v465 count:16];
          }

          while (v88);
        }

        v78 = v344 + 1;
        v29 = v348;
      }

      while (v344 + 1 != v342);
      v335 += v342;
      v342 = [indexes countByEnumeratingWithState:&v425 objects:v466 count:16];
    }

    while (v342);
  }

  v103 = v332;
  userInfo = [v332 userInfo];
  if ([userInfo count] && !-[__CFDictionary objectForKey:](v14, "objectForKey:", userInfo))
  {
    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
    -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:userInfo requiringSecureCoding:1 error:0]);
    v106 = v105;
    v103 = v332;
    CFDictionarySetValue(v14, userInfo, v106);
  }

  if (!-[__CFDictionary objectForKey:](v334, "objectForKey:", [v103 _propertySearchMapping]))
  {
    v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v333, "count")}];
    v103 = v332;
    -[__CFArray addObject:](v333, "addObject:", [v332 _propertySearchMapping]);
    CFDictionarySetValue(v334, [v332 _propertySearchMapping], v107);
  }

  if ([v103 subentitiesByName])
  {
    if ([objc_msgSend(v103 "subentitiesByName")])
    {
      v108 = [objc_msgSend(v103 "subentitiesByName")];
      if (![(__CFDictionary *)v334 objectForKey:v108])
      {
        v109 = MEMORY[0x1E696AD98];
        v110 = [(__CFArray *)v333 count];
        v111 = v109;
        v103 = v332;
        CFDictionarySetValue(v334, v108, [v111 numberWithUnsignedInteger:v110]);
        [(__CFArray *)v333 addObject:v108];
      }
    }
  }

  attributesByName = [v103 attributesByName];
  if (!-[__CFDictionary objectForKey:](v334, "objectForKey:", [attributesByName mapping]))
  {
    v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v333, "count")}];
    -[__CFArray addObject:](v333, "addObject:", [attributesByName mapping]);
    mapping4 = [attributesByName mapping];
    v115 = v113;
    v103 = v332;
    CFDictionarySetValue(v334, mapping4, v115);
  }

  relationshipsByName = [v103 relationshipsByName];
  if (!-[__CFDictionary objectForKey:](v334, "objectForKey:", [relationshipsByName mapping]))
  {
    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v333, "count")}];
    -[__CFArray addObject:](v333, "addObject:", [relationshipsByName mapping]);
    mapping5 = [relationshipsByName mapping];
    v119 = v117;
    v103 = v332;
    CFDictionarySetValue(v334, mapping5, v119);
  }

  v419 = 0u;
  v420 = 0u;
  v417 = 0u;
  v418 = 0u;
  properties = [v103 properties];
  v121 = [properties countByEnumeratingWithState:&v417 objects:v464 count:16];
  if (!v121)
  {
    goto LABEL_197;
  }

  v122 = v121;
  v123 = *v418;
  v341 = properties;
  indexes = v123;
LABEL_105:
  v124 = 0;
  v342 = v122;
  while (1)
  {
    if (*v418 != v123)
    {
      objc_enumerationMutation(properties);
    }

    v125 = *(*(&v417 + 1) + 8 * v124);
    name4 = [v125 name];
    if (object_getClass(v125) != v328)
    {
      break;
    }

LABEL_195:
    v124 = v124 + 1;
    if (v124 == v122)
    {
      v122 = [properties countByEnumeratingWithState:&v417 objects:v464 count:16];
      v53 = v350;
      if (v122)
      {
        goto LABEL_105;
      }

LABEL_197:
      v181 = [(NSSQLModel *)v330 entityNamed:name];
      v405 = 0u;
      v406 = 0u;
      v407 = 0u;
      v408 = 0u;
      properties2 = [(NSSQLEntity *)v181 properties];
      v183 = [properties2 countByEnumeratingWithState:&v405 objects:v461 count:16];
      if (v183)
      {
        v184 = v183;
        v185 = *v406;
        do
        {
          for (n = 0; n != v184; ++n)
          {
            if (*v406 != v185)
            {
              objc_enumerationMutation(properties2);
            }

            name5 = [*(*(&v405 + 1) + 8 * n) name];
            if (![(__CFDictionary *)v353 objectForKey:name5])
            {
              v188 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
              [(__CFArray *)v29 addObject:name5];
              v189 = v188;
              v53 = v350;
              [(__CFDictionary *)v353 setObject:v189 forKey:name5];
            }
          }

          v184 = [properties2 countByEnumeratingWithState:&v405 objects:v461 count:16];
        }

        while (v184);
      }

      v52 = v323;
      v54 = v324 + 1;
      allValues = v321;
      if (v324 + 1 != v322)
      {
        goto LABEL_41;
      }

      v51 = [v321 countByEnumeratingWithState:&v429 objects:v467 count:16];
      v52 = v323;
      if (!v51)
      {
LABEL_247:
        v403 = 0u;
        v404 = 0u;
        v401 = 0u;
        v402 = 0u;
        v341 = [(__CFArray *)v339 countByEnumeratingWithState:&v401 objects:v460 count:16];
        if (v341)
        {
          indexes = *v402;
          do
          {
            v204 = 0;
            do
            {
              if (*v402 != indexes)
              {
                objc_enumerationMutation(v339);
              }

              v342 = v204;
              v344 = *(*(&v401 + 1) + 8 * v204);
              predicate = [v344 predicate];
              v206 = v350;
              if (predicate)
              {
                v207 = predicate;
                if (![(__CFDictionary *)v14 objectForKey:predicate])
                {
                  v208 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                  -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v207 requiringSecureCoding:1 error:0]);
                  CFDictionarySetValue(v14, v207, v208);
                }
              }

              havingPredicate = [v344 havingPredicate];
              if (havingPredicate)
              {
                v210 = havingPredicate;
                if (![(__CFDictionary *)v14 objectForKey:havingPredicate])
                {
                  v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                  -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v210 requiringSecureCoding:1 error:0]);
                  CFDictionarySetValue(v14, v210, v211);
                }
              }

              propertiesToFetch = [v344 propertiesToFetch];
              v397 = 0u;
              v398 = 0u;
              v399 = 0u;
              v400 = 0u;
              v213 = [propertiesToFetch countByEnumeratingWithState:&v397 objects:v459 count:16];
              if (v213)
              {
                v214 = v213;
                v215 = *v398;
                do
                {
                  for (ii = 0; ii != v214; ++ii)
                  {
                    if (*v398 != v215)
                    {
                      objc_enumerationMutation(propertiesToFetch);
                    }

                    v217 = *(*(&v397 + 1) + 8 * ii);
                    if (object_getClass(v217) == v349)
                    {
                      if (![(__CFDictionary *)v206 objectForKey:v217])
                      {
                        v218 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                        v206 = v350;
                        [(__CFArray *)Mutable addObject:v217];
                        CFDictionarySetValue(v350, v217, v218);
                      }

                      name6 = [v217 name];
                      if (![(__CFDictionary *)v353 objectForKey:name6])
                      {
                        v220 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
                        v14 = v351;
                        [(__CFArray *)v348 addObject:name6];
                        v221 = v220;
                        v206 = v350;
                        [(__CFDictionary *)v353 setObject:v221 forKey:name6];
                      }

                      LODWORD(v352) = v352 + 1;
                      expression2 = [v217 expression];
                      if (![(__CFDictionary *)v14 objectForKey:expression2])
                      {
                        v223 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                        v14 = v351;
                        -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:expression2 requiringSecureCoding:1 error:0]);
                        [v351 setObject:v223 forKey:expression2];
                      }
                    }
                  }

                  v214 = [propertiesToFetch countByEnumeratingWithState:&v397 objects:v459 count:16];
                }

                while (v214);
              }

              propertiesToGroupBy = [v344 propertiesToGroupBy];
              v393 = 0u;
              v394 = 0u;
              v395 = 0u;
              v396 = 0u;
              v225 = [propertiesToGroupBy countByEnumeratingWithState:&v393 objects:v458 count:16];
              if (v225)
              {
                v226 = v225;
                v227 = *v394;
                do
                {
                  for (jj = 0; jj != v226; ++jj)
                  {
                    if (*v394 != v227)
                    {
                      objc_enumerationMutation(propertiesToGroupBy);
                    }

                    v229 = *(*(&v393 + 1) + 8 * jj);
                    if (object_getClass(v229) == v349)
                    {
                      if (![(__CFDictionary *)v206 objectForKey:v229])
                      {
                        v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                        v206 = v350;
                        [(__CFArray *)Mutable addObject:v229];
                        CFDictionarySetValue(v350, v229, v230);
                      }

                      name7 = [v229 name];
                      if (![(__CFDictionary *)v353 objectForKey:name7])
                      {
                        v232 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
                        v14 = v351;
                        [(__CFArray *)v348 addObject:name7];
                        v233 = v232;
                        v206 = v350;
                        [(__CFDictionary *)v353 setObject:v233 forKey:name7];
                      }

                      LODWORD(v352) = v352 + 1;
                      expression3 = [v229 expression];
                      if (![(__CFDictionary *)v14 objectForKey:expression3])
                      {
                        v235 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                        v14 = v351;
                        -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:expression3 requiringSecureCoding:1 error:0]);
                        [v351 setObject:v235 forKey:expression3];
                      }
                    }
                  }

                  v226 = [propertiesToGroupBy countByEnumeratingWithState:&v393 objects:v458 count:16];
                }

                while (v226);
              }

              sortDescriptors = [v344 sortDescriptors];
              v389 = 0u;
              v390 = 0u;
              v391 = 0u;
              v392 = 0u;
              v237 = [sortDescriptors countByEnumeratingWithState:&v389 objects:v457 count:16];
              v29 = v348;
              if (v237)
              {
                v238 = v237;
                v239 = *v390;
                do
                {
                  for (kk = 0; kk != v238; ++kk)
                  {
                    if (*v390 != v239)
                    {
                      objc_enumerationMutation(sortDescriptors);
                    }

                    v241 = *(*(&v389 + 1) + 8 * kk);
                    if (![(__CFDictionary *)v14 objectForKey:v241])
                    {
                      v242 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                      v14 = v351;
                      -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v241 requiringSecureCoding:1 error:0]);
                      [v351 setObject:v242 forKey:v241];
                    }
                  }

                  v238 = [sortDescriptors countByEnumeratingWithState:&v389 objects:v457 count:16];
                }

                while (v238);
              }

              relationshipKeyPathsForPrefetching = [v344 relationshipKeyPathsForPrefetching];
              v385 = 0u;
              v386 = 0u;
              v387 = 0u;
              v388 = 0u;
              v244 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v385 objects:v456 count:16];
              if (v244)
              {
                v245 = v244;
                v246 = *v386;
                do
                {
                  for (mm = 0; mm != v245; ++mm)
                  {
                    if (*v386 != v246)
                    {
                      objc_enumerationMutation(relationshipKeyPathsForPrefetching);
                    }

                    v248 = *(*(&v385 + 1) + 8 * mm);
                    if (![(__CFDictionary *)v353 objectForKey:v248])
                    {
                      v249 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v348, "count")}];
                      [(__CFArray *)v348 addObject:v248];
                      [(__CFDictionary *)v353 setObject:v249 forKey:v248];
                    }
                  }

                  v245 = [relationshipKeyPathsForPrefetching countByEnumeratingWithState:&v385 objects:v456 count:16];
                }

                while (v245);
              }

              v204 = v342 + 1;
            }

            while (v342 + 1 != v341);
            v341 = [(__CFArray *)v339 countByEnumeratingWithState:&v401 objects:v460 count:16];
          }

          while (v341);
        }

        v384 = 0;
        v383 = -559038737;
        v194 = objc_alloc_init(MEMORY[0x1E695DF88]);
        [v194 appendBytes:"momv2$srsraori55717101jhus-[6910aathnnhi86786714[-;uadmiraenv143" length:64];
        v250 = [v194 length];
        v251 = (v250 + 3) & 0xFFFFFFFC;
        if (v251 != v250)
        {
          [v194 appendBytes:&v384 length:v251 - v250];
        }

        v349 = [v194 length];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v384 length:4];
        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v344 = [v194 length];
        _writeInt32IntoData(v194, [(__CFArray *)v336 count]);
        v381 = 0u;
        v382 = 0u;
        v379 = 0u;
        v380 = 0u;
        v252 = [(__CFArray *)v336 countByEnumeratingWithState:&v379 objects:v454 count:16];
        if (v252)
        {
          v253 = v252;
          v254 = *v380;
          do
          {
            for (nn = 0; nn != v253; ++nn)
            {
              if (*v380 != v254)
              {
                objc_enumerationMutation(v336);
              }

              _writeStringIntoData(*(*(&v379 + 1) + 8 * nn), v194, v455);
            }

            v253 = [(__CFArray *)v336 countByEnumeratingWithState:&v379 objects:v454 count:16];
          }

          while (v253);
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v342 = [v194 length];
        _writeInt32IntoData(v194, [(__CFArray *)v29 count]);
        v377 = 0u;
        v378 = 0u;
        v375 = 0u;
        v376 = 0u;
        v256 = [(__CFArray *)v29 countByEnumeratingWithState:&v375 objects:v453 count:16];
        if (v256)
        {
          v257 = v256;
          v258 = *v376;
          do
          {
            for (i1 = 0; i1 != v257; ++i1)
            {
              if (*v376 != v258)
              {
                objc_enumerationMutation(v29);
              }

              _writePFEncodedStringShapeIntoData(v194, *(*(&v375 + 1) + 8 * i1), v455);
            }

            v257 = [(__CFArray *)v29 countByEnumeratingWithState:&v375 objects:v453 count:16];
          }

          while (v257);
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v341 = [v194 length];
        _writeInt32IntoData(v194, [(__CFArray *)v347 count]);
        v373 = 0u;
        v374 = 0u;
        v371 = 0u;
        v372 = 0u;
        v260 = [(__CFArray *)v347 countByEnumeratingWithState:&v371 objects:v452 count:16];
        if (v260)
        {
          v261 = v260;
          v262 = *v372;
          do
          {
            for (i2 = 0; i2 != v261; ++i2)
            {
              if (*v372 != v262)
              {
                objc_enumerationMutation(v347);
              }

              _writePFEncodedDataShapeIntoData(v194, *(*(&v371 + 1) + 8 * i2));
            }

            v261 = [(__CFArray *)v347 countByEnumeratingWithState:&v371 objects:v452 count:16];
          }

          while (v261);
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        indexes = [v194 length];
        _writeInt32IntoData(v194, [(__CFArray *)v333 count]);
        v369 = 0u;
        v370 = 0u;
        v367 = 0u;
        v368 = 0u;
        v264 = [(__CFArray *)v333 countByEnumeratingWithState:&v367 objects:v451 count:16];
        if (v264)
        {
          v265 = v264;
          v266 = *v368;
          do
          {
            for (i3 = 0; i3 != v265; ++i3)
            {
              if (*v368 != v266)
              {
                objc_enumerationMutation(v333);
              }

              _writeKKDMappingStrategyIntoData(v194, *(*(&v367 + 1) + 8 * i3), v353);
            }

            v265 = [(__CFArray *)v333 countByEnumeratingWithState:&v367 objects:v451 count:16];
          }

          while (v265);
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v328 = [v194 length];
        _writeInt32IntoData(v194, v326);
        _writeInt32IntoData(v194, HIDWORD(v326));
        _writeInt32IntoData(v194, v327);
        _writeInt32IntoData(v194, v352);
        _writeInt32IntoData(v194, HIDWORD(v327));
        v365 = 0u;
        v366 = 0u;
        v363 = 0u;
        v364 = 0u;
        v268 = [(__CFArray *)Mutable countByEnumeratingWithState:&v363 objects:v450 count:16];
        if (v268)
        {
          v269 = v268;
          v270 = *v364;
          do
          {
            for (i4 = 0; i4 != v269; ++i4)
            {
              if (*v364 != v270)
              {
                objc_enumerationMutation(Mutable);
              }

              [*(*(&v363 + 1) + 8 * i4) _writeIntoData:v194 propertiesDict:v350 uniquedPropertyNames:v353 uniquedStrings:v337 uniquedData:v14 entitiesSlots:objc_msgSend(*(v343 + 4) fetchRequests:{"mapping"), v340}];
            }

            v269 = [(__CFArray *)Mutable countByEnumeratingWithState:&v363 objects:v450 count:16];
          }

          while (v269);
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        name = [v194 length];
        _writeInt32IntoData(v194, [*(v343 + 4) count]);
        v272 = [objc_msgSend(*(v343 + 4) "mapping")];
        if (v272)
        {
          v273 = v272;
          for (i5 = 0; i5 != v273; ++i5)
          {
            [objc_msgSend(*(v343 + 4) valueAtIndex:{i5), "_writeIntoData:propertiesDict:uniquedPropertyNames:uniquedStrings:uniquedData:uniquedMappings:entities:", v194, v350, v353, v337, v14, v334, *(v343 + 4)}];
          }
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v332 = [v194 length];
        _writeInt32IntoData(v194, [(__CFArray *)v339 count]);
        v275 = [(__CFArray *)v339 count];
        if (v275)
        {
          v276 = v275;
          for (i6 = 0; i6 != v276; ++i6)
          {
            [-[__CFArray objectAtIndex:](v339 objectAtIndex:{i6), "_writeIntoData:propertiesDict:uniquedPropertyNames:uniquedStrings:uniquedData:uniquedMappings:entities:", v194, v350, v353, v337, v14, v334, *(v343 + 4)}];
          }
        }

        [v194 appendBytes:&v383 length:4];
        [v194 appendBytes:&v383 length:4];
        v278 = [v194 length];
        _writeInt32IntoData(v194, *(v343 + 16));
        v279 = *(v343 + 4);
        if (v279)
        {
          v280 = [v279 count];
        }

        else
        {
          v280 = 0;
        }

        _writeInt32IntoData(v194, v280);
        if (v329 && [(NSKnownKeysDictionary *)v329 count])
        {
          _writeInt32IntoData(v194, [*(v343 + 6) count]);
          v361 = 0u;
          v362 = 0u;
          v359 = 0u;
          v360 = 0u;
          allValues2 = [*(v343 + 6) allValues];
          v282 = [allValues2 countByEnumeratingWithState:&v359 objects:v449 count:16];
          if (v282)
          {
            v283 = v282;
            v284 = *v360;
            do
            {
              for (i7 = 0; i7 != v283; ++i7)
              {
                if (*v360 != v284)
                {
                  objc_enumerationMutation(allValues2);
                }

                v286 = [CFDictionaryGetValue(v340 *(*(&v359 + 1) + 8 * i7))];
                _writeInt64IntoData(v194, v286);
              }

              v283 = [allValues2 countByEnumeratingWithState:&v359 objects:v449 count:16];
            }

            while (v283);
          }
        }

        else
        {
          _writeInt32IntoData(v194, 0);
        }

        v287 = *(v343 + 5);
        v324 = v278;
        if (v287)
        {
          _writeInt32IntoData(v194, [v287 count]);
          mapping6 = [*(v343 + 4) mapping];
          v355 = 0u;
          v356 = 0u;
          v357 = 0u;
          v358 = 0u;
          *&v351 = *(v343 + 5);
          v289 = [v351 countByEnumeratingWithState:&v355 objects:v448 count:16];
          if (v289)
          {
            v290 = v289;
            v291 = *v356;
            do
            {
              for (i8 = 0; i8 != v290; ++i8)
              {
                if (*v356 != v291)
                {
                  objc_enumerationMutation(v351);
                }

                v293 = *(*(&v355 + 1) + 8 * i8);
                allObjects = [*(v343 + 5) objectForKey:v293];
                _writeInt32IntoData(v194, [-[__CFDictionary objectForKey:](v353 objectForKey:{v293), "unsignedIntegerValue"}]);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  allObjects = [allObjects allObjects];
                }

                _writePFEncodedArrayShapeIntoData(v194, allObjects, mapping6, 0);
              }

              v290 = [v351 countByEnumeratingWithState:&v355 objects:v448 count:16];
            }

            while (v290);
          }
        }

        else
        {
          _writeInt32IntoData(v194, 0);
        }

        v295 = v343;
        _writePFEncodedArrayShapeIntoData(v194, [*(v343 + 7) allObjects], v14, 0);
        if ([*(v343 + 4) count])
        {
          v296 = 0;
          do
          {
            _writeInt64IntoData(v194, 0);
            ++v296;
          }

          while (v296 < [*(v343 + 4) count]);
        }

        *&v351 = v330->_entitiesByName;
        v297 = [*(v343 + 4) count];
        v29 = v348;
        if (v297)
        {
          v298 = v297;
          for (i9 = 0; i9 != v298; ++i9)
          {
            v300 = [objc_msgSend(v295[4] valueAtIndex:{i9), "name"}];
            v301 = [v351 objectForKey:v300];
            if (v301 && (v302 = v301[31]) != 0)
            {
              v303 = [-[NSSQLEntity properties](v301) count];
              v304 = MEMORY[0x1EEE9AC00](v303);
              v307 = &v321 - v306;
              v308 = v304;
              if (v304 > 0x200)
              {
                v307 = NSAllocateScannedUncollectable();
              }

              else
              {
                bzero(&v321 - v306, 8 * v305);
              }

              v309 = v302[1];
              if (v309 >= 1)
              {
                v310 = 0;
                v311 = v302[9];
                do
                {
                  v313 = *v311++;
                  v312 = v313;
                  v314 = v302[8];
                  v315 = v314 ^ v313;
                  if (v314 != v313 && v315 != -1)
                  {
                    *&v307[8 * v310++] = v312;
                  }

                  --v309;
                }

                while (v309);
              }

              v317 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v307 count:v308];
              _writePFEncodedArrayShapeIntoData(v194, v317, v353, 0);

              if (v308 >= 0x201)
              {
                NSZoneFree(0, v307);
              }

              v295 = v343;
            }

            else if (v331)
            {
              v320 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v301, "name")), @"Base Problem"}];
              *v331 = v320;

              goto LABEL_214;
            }
          }
        }

        [v194 appendBytes:&v384 length:8];
        v354 = bswap32(v324);
        v318 = v349;
        [v194 replaceBytesInRange:v349 withBytes:{4, &v354}];
        v354 = bswap32(name);
        [v194 replaceBytesInRange:(v318 + 4) withBytes:{4, &v354}];
        v354 = bswap32([v295[4] count]);
        [v194 replaceBytesInRange:(v318 + 8) withBytes:{4, &v354}];
        v354 = bswap32(v328);
        [v194 replaceBytesInRange:(v318 + 12) withBytes:{4, &v354}];
        v354 = bswap32([(__CFDictionary *)v350 count]);
        [v194 replaceBytesInRange:(v318 + 16) withBytes:{4, &v354}];
        v354 = bswap32(v326);
        [v194 replaceBytesInRange:(v318 + 20) withBytes:{4, &v354}];
        v354 = bswap32(HIDWORD(v326));
        [v194 replaceBytesInRange:(v318 + 24) withBytes:{4, &v354}];
        v354 = bswap32(v327);
        [v194 replaceBytesInRange:(v318 + 28) withBytes:{4, &v354}];
        v354 = bswap32(v352);
        [v194 replaceBytesInRange:(v318 + 32) withBytes:{4, &v354}];
        v354 = bswap32(HIDWORD(v327));
        [v194 replaceBytesInRange:(v318 + 36) withBytes:{4, &v354}];
        v354 = bswap32(indexes);
        [v194 replaceBytesInRange:(v318 + 40) withBytes:{4, &v354}];
        v354 = bswap32([(__CFArray *)v333 count]);
        [v194 replaceBytesInRange:(v318 + 44) withBytes:{4, &v354}];
        v354 = bswap32(v341);
        [v194 replaceBytesInRange:(v318 + 48) withBytes:{4, &v354}];
        v196 = v347;
        v354 = bswap32([(__CFArray *)v347 count]);
        [v194 replaceBytesInRange:(v318 + 52) withBytes:{4, &v354}];
        v354 = bswap32(v344);
        [v194 replaceBytesInRange:(v318 + 56) withBytes:{4, &v354}];
        v319 = v295;
        v198 = v337;
        v354 = bswap32([(__CFDictionary *)v337 count]);
        [v194 replaceBytesInRange:(v318 + 60) withBytes:{4, &v354}];
        v354 = bswap32(v342);
        [v194 replaceBytesInRange:(v318 + 64) withBytes:{4, &v354}];
        v354 = bswap32([(__CFDictionary *)v353 count]);
        [v194 replaceBytesInRange:(v318 + 68) withBytes:{4, &v354}];
        v354 = bswap32(v332);
        [v194 replaceBytesInRange:(v318 + 72) withBytes:{4, &v354}];
        v199 = v339;
        v354 = bswap32([(__CFArray *)v339 count]);
        [v194 replaceBytesInRange:(v318 + 76) withBytes:{4, &v354}];
        v354 = bswap32([v319[6] count]);
        [v194 replaceBytesInRange:(v318 + 80) withBytes:{4, &v354}];
        v354 = bswap32(v335);
        [v194 replaceBytesInRange:(v318 + 84) withBytes:{4, &v354}];
        v354 = bswap32(v345);
        [v194 replaceBytesInRange:(v318 + 88) withBytes:{4, &v354}];
        v195 = Mutable;
        v197 = v336;
        if (!Mutable)
        {
          goto LABEL_217;
        }

LABEL_216:
        CFRelease(v195);
        goto LABEL_217;
      }

      goto LABEL_40;
    }
  }

  if (![(__CFDictionary *)v353 objectForKey:name4])
  {
    v127 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
    [(__CFArray *)v29 addObject:name4];
    [(__CFDictionary *)v353 setValue:v127 forKey:name4];
  }

  versionHashModifier2 = [v125 versionHashModifier];
  if (versionHashModifier2)
  {
    v129 = versionHashModifier2;
    if (![(__CFDictionary *)v337 objectForKey:versionHashModifier2])
    {
      v130 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
      [(__CFArray *)v336 addObject:v129];
      [(__CFDictionary *)v337 setValue:v130 forKey:v129];
    }
  }

  versionHash2 = [v125 versionHash];
  if (versionHash2)
  {
    v132 = versionHash2;
    if (![(__CFDictionary *)v14 objectForKey:versionHash2])
    {
      v133 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
      [(__CFArray *)v347 addObject:v132];
      CFDictionarySetValue(v14, v132, v133);
    }
  }

  renamingIdentifier2 = [v125 renamingIdentifier];
  if (renamingIdentifier2)
  {
    v135 = renamingIdentifier2;
    if (([renamingIdentifier2 isEqualToString:{objc_msgSend(v125, "name")}] & 1) == 0 && !-[__CFDictionary objectForKey:](v337, "objectForKey:", v135))
    {
      v136 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
      [(__CFArray *)v336 addObject:v135];
      [(__CFDictionary *)v337 setObject:v136 forKey:v135];
    }
  }

  userInfo2 = [v125 userInfo];
  if ([userInfo2 count] && !-[__CFDictionary objectForKey:](v14, "objectForKey:", userInfo2))
  {
    v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
    -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:userInfo2 requiringSecureCoding:1 error:0]);
    CFDictionarySetValue(v14, userInfo2, v138);
  }

  v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
  [(__CFArray *)Mutable addObject:v125];
  CFDictionarySetValue(v350, v125, v139);
  _propertyType = [v125 _propertyType];
  v141 = _propertyType;
  v344 = v124;
  if (_propertyType <= 3)
  {
    if (_propertyType != 2)
    {
      if (_propertyType != 3)
      {
        goto LABEL_404;
      }

      ++HIDWORD(v327);
      fetchRequest = [v125 fetchRequest];
      if (!CFDictionaryGetValue(v340, fetchRequest))
      {
        v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v339, "count")}];
        [(__CFArray *)v339 addObject:fetchRequest];
        CFDictionarySetValue(v340, fetchRequest, v143);
      }

      goto LABEL_170;
    }

    goto LABEL_132;
  }

  switch(_propertyType)
  {
    case 4:
      LODWORD(v327) = v327 + 1;
LABEL_170:
      v415 = 0u;
      v416 = 0u;
      v413 = 0u;
      v414 = 0u;
      v165 = v125;
      _rawValidationPredicates = [v125 _rawValidationPredicates];
      v167 = [_rawValidationPredicates countByEnumeratingWithState:&v413 objects:v463 count:16];
      if (v167)
      {
        v168 = v167;
        v169 = *v414;
        do
        {
          for (i10 = 0; i10 != v168; ++i10)
          {
            if (*v414 != v169)
            {
              objc_enumerationMutation(_rawValidationPredicates);
            }

            v171 = *(*(&v413 + 1) + 8 * i10);
            if (![(__CFDictionary *)v14 objectForKey:v171])
            {
              v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
              v14 = v351;
              -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v171 requiringSecureCoding:1 error:0]);
              CFDictionarySetValue(v351, v171, v172);
            }
          }

          v168 = [_rawValidationPredicates countByEnumeratingWithState:&v413 objects:v463 count:16];
        }

        while (v168);
      }

      v411 = 0u;
      v412 = 0u;
      v409 = 0u;
      v410 = 0u;
      _rawValidationWarnings = [v165 _rawValidationWarnings];
      v174 = [_rawValidationWarnings countByEnumeratingWithState:&v409 objects:v462 count:16];
      if (v174)
      {
        v175 = v174;
        v176 = *v410;
        v29 = v348;
        while (2)
        {
          for (i11 = 0; i11 != v175; ++i11)
          {
            if (*v410 != v176)
            {
              objc_enumerationMutation(_rawValidationWarnings);
            }

            v178 = *(*(&v409 + 1) + 8 * i11);
            if ([v178 isNSString])
            {
              if (![(__CFDictionary *)v337 objectForKey:v178])
              {
                v179 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
                v29 = v348;
                [(__CFArray *)v336 addObject:v178];
                [(__CFDictionary *)v337 setObject:v179 forKey:v178];
              }
            }

            else
            {
              if (![v178 isNSNumber])
              {
                v190 = v331;
                if (!v331)
                {
                  goto LABEL_214;
                }

                v191 = MEMORY[0x1E696ABC0];
                v192 = *MEMORY[0x1E696A250];
                v193 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid value in warnings array" forKey:@"Base error"];
                goto LABEL_211;
              }

              if (![(__CFDictionary *)v14 objectForKey:v178])
              {
                v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                v14 = v351;
                -[__CFArray addObject:](v347, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v178 requiringSecureCoding:1 error:0]);
                CFDictionarySetValue(v351, v178, v180);
              }
            }
          }

          v175 = [_rawValidationWarnings countByEnumeratingWithState:&v409 objects:v462 count:16];
          if (v175)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v29 = v348;
      }

      properties = v341;
      v122 = v342;
      v123 = indexes;
      v124 = v344;
      goto LABEL_195;
    case 6:
LABEL_132:
      attributeValueClassName = [v125 attributeValueClassName];
      if (attributeValueClassName)
      {
        v145 = attributeValueClassName;
        if (![(__CFDictionary *)v353 objectForKey:attributeValueClassName])
        {
          v146 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
          [(__CFArray *)v29 addObject:v145];
          [(__CFDictionary *)v353 setObject:v146 forKey:v145];
        }
      }

      valueTransformerName = [v125 valueTransformerName];
      if (valueTransformerName)
      {
        v148 = valueTransformerName;
        if (![(__CFDictionary *)v337 objectForKey:valueTransformerName])
        {
          v149 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
          [(__CFArray *)v336 addObject:v148];
          [(__CFDictionary *)v337 setObject:v149 forKey:v148];
        }
      }

      defaultValue = [v125 defaultValue];
      if (!defaultValue)
      {
        goto LABEL_161;
      }

      stringValue = defaultValue;
      attributeType = [v125 attributeType];
      if (attributeType <= 499)
      {
        if (attributeType > 299)
        {
          if (attributeType == 300)
          {
            goto LABEL_161;
          }

          if (attributeType != 400)
          {
            goto LABEL_156;
          }

          stringValue = [stringValue stringValue];
          if ([(__CFDictionary *)v353 objectForKey:stringValue])
          {
            goto LABEL_161;
          }

          v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v29, "count")}];
          [(__CFArray *)v29 addObject:stringValue];
          v154 = v353;
          goto LABEL_160;
        }

        if (attributeType == 100 || attributeType == 200)
        {
          goto LABEL_161;
        }
      }

      else
      {
        if (attributeType > 699)
        {
          if (attributeType != 700)
          {
            if (attributeType != 800 && attributeType != 900)
            {
              goto LABEL_156;
            }

LABEL_161:
            if (v141 == 6)
            {
              derivationExpression = [v125 derivationExpression];
              if (derivationExpression)
              {
                v158 = derivationExpression;
                if (![(__CFDictionary *)v14 objectForKey:derivationExpression])
                {
                  v159 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v158 requiringSecureCoding:1 error:0];
                  v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                  v14 = v351;
                  [(__CFArray *)v347 addObject:v159];
                  CFDictionarySetValue(v351, v158, v160);
                }
              }

              filteringPredicate = [v125 filteringPredicate];
              if (filteringPredicate)
              {
                v162 = filteringPredicate;
                if (![(__CFDictionary *)v14 objectForKey:filteringPredicate])
                {
                  v163 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v162 requiringSecureCoding:1 error:0];
                  v164 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
                  v14 = v351;
                  [(__CFArray *)v347 addObject:v163];
                  CFDictionarySetValue(v351, v162, v164);
                }
              }

              ++HIDWORD(v326);
            }

            else
            {
              LODWORD(v326) = v326 + 1;
            }

            goto LABEL_170;
          }

          if ([(__CFDictionary *)v337 objectForKey:stringValue])
          {
            goto LABEL_161;
          }

          v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v336, "count")}];
          [(__CFArray *)v336 addObject:stringValue];
          v154 = v337;
LABEL_160:
          [(__CFDictionary *)v154 setObject:v153 forKey:stringValue];
          goto LABEL_161;
        }

        if (attributeType == 500 || attributeType == 600)
        {
          goto LABEL_161;
        }
      }

LABEL_156:
      if (![(__CFDictionary *)v14 objectForKey:stringValue])
      {
        v155 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:stringValue requiringSecureCoding:1 error:0];
        v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v347, "count")}];
        v14 = v351;
        [(__CFArray *)v347 addObject:v155];
        CFDictionarySetValue(v351, stringValue, v156);
      }

      goto LABEL_161;
    case 7:
      v190 = v331;
      if (v331)
      {
        v191 = MEMORY[0x1E696ABC0];
        v192 = *MEMORY[0x1E696A250];
        v193 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unsupported property; can't optimize composite attribute", @"Base error", v125, @"Property", 0}];
LABEL_211:
        v194 = 0;
        *v190 = [v191 errorWithDomain:v192 code:134060 userInfo:v193];
        goto LABEL_215;
      }

      break;
    default:
LABEL_404:
      v190 = v331;
      if (v331)
      {
        v191 = MEMORY[0x1E696ABC0];
        v192 = *MEMORY[0x1E696A250];
        v193 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Invalid property; can't optimize", @"Base error", v125, @"Property", 0}];
        goto LABEL_211;
      }

      break;
  }

LABEL_214:
  v194 = 0;
LABEL_215:
  v195 = Mutable;
  v196 = v347;
  v197 = v336;
  v198 = v337;
  v199 = v339;
  if (Mutable)
  {
    goto LABEL_216;
  }

LABEL_217:
  if (v350)
  {
    CFRelease(v350);
  }

  if (v197)
  {
    CFRelease(v197);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v353)
  {
    CFRelease(v353);
  }

  v200 = v333;
  v201 = v334;
  v202 = v329;
  if (v196)
  {
    CFRelease(v196);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v200)
  {
    CFRelease(v200);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  v203 = v340;
  if (v202)
  {
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v203)
  {
    CFRelease(v203);
  }

  if (v330)
  {
  }

  if (v194)
  {
    return v194;
  }

  else
  {
    return 0;
  }
}

- (NSManagedObjectModel)initWithContentsOfURL:(id)l forStoreMetadata:(id)metadata
{
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [l path];
  v14 = 0;
  if (![defaultManager fileExistsAtPath:path isDirectory:&v14])
  {
LABEL_6:
    v10 = 0;
    goto LABEL_13;
  }

  if (v14 == 1)
  {
    v9 = [[NSManagedObjectModelBundle alloc] initWithPath:path];
    if (v9)
    {
      v10 = -[NSManagedObjectModelBundle _modelForVersionHashes:](v9, "_modelForVersionHashes:", [metadata objectForKey:@"NSStoreModelVersionHashes"]);
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:l];
  if (![(NSManagedObjectModel *)v11 isConfiguration:0 compatibleWithStoreMetadata:metadata]&& ![(NSManagedObjectModel *)v11 _isConfiguration:v12 inStyle:1 compatibleWithStoreMetadata:metadata])
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = v11;
  if (v11)
  {
LABEL_10:
    v11 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:l];
    [(NSManagedObjectModel *)v10 _setLocalizationPolicy:v11];
LABEL_12:
  }

LABEL_13:
  [v6 drain];
  return v10;
}

- (void)_addEntity:(id)entity
{
  [(NSManagedObjectModel *)self _throwIfNotEditable];
  if (!entity)
  {
    return;
  }

  name = [entity name];
  if (!name)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Can't add unnamed entity to model.";
    goto LABEL_10;
  }

  v6 = name;
  if ([(NSMutableDictionary *)self->_entities objectForKey:name])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6);
    v7 = v10;
    v8 = v11;
LABEL_10:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  [(NSMutableDictionary *)self->_entities setObject:entity forKey:v6];

  [(NSEntityDescription *)entity _setManagedObjectModel:?];
}

- (NSManagedObjectModel)initWithContentsOfOptimizedURL:(id)l
{
  objc_opt_class();
  objc_opt_class();
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [l path];
  v13 = 0;
  if ([defaultManager fileExistsAtPath:path isDirectory:&v13])
  {
    v7 = 0;
    if (v13)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v8 = 0;
    if (!path)
    {
      goto LABEL_12;
    }
  }

  else if (!path)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [[_PFVMData alloc] initWithContentsOfFile:path options:0 error:0];
  if (![(_PFVMData *)v7 length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_12;
  }

  [NSManagedObjectModel _newModelFromOptimizedEncoding:v7 error:?];
  v8 = v9;
  if (v9)
  {
    v10 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:l];
    [(NSManagedObjectModel *)v8 _setLocalizationPolicy:v10];
  }

LABEL_12:
  [v4 drain];
  v11 = 0;

  return v8;
}

+ (void)_newModelFromOptimizedEncoding:(uint64_t)encoding error:(const __CFData *)error
{
  v293[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (error)
  {
    objc_opt_class();
    objc_opt_class();
    v293[0] = 0;
    BytePtr = CFDataGetBytePtr(error);
    if ([(__CFData *)error length]>= 0x40)
    {
      if (!memcmp("momv2$srsraori55717101jhus-[6910aathnnhi86786714[-;uadmiraenv143", BytePtr, 0x40uLL))
      {
        v4 = 13;
      }

      else
      {
        if ([(__CFData *)error length]< 0x40 || memcmp("momv2$8129374fj;a30[5yo-]0-87ujuhok'p0907ljnlmmji870-oi43902[349", BytePtr, 0x40uLL))
        {
          return;
        }

        v4 = 12;
      }

      v5 = [(__CFData *)error length];
      if (v5 >= 0x9C)
      {
        v292 = bswap32(*(BytePtr + 16));
        v7 = *(BytePtr + 18);
        v8 = bswap32(v7);
        v9 = *(BytePtr + 5);
        *&v6 = *(BytePtr + 12);
        v10 = *(BytePtr + 27);
        v11 = *(BytePtr + 29);
        v12 = *(BytePtr + 31);
        v13 = bswap32(v12);
        v14 = *(BytePtr + 33);
        v15 = bswap32(v14);
        v16.i64[1] = __PAIR64__(v11, v10);
        v16.i64[0] = v6;
        v17 = vrev32q_s8(v16);
        v18 = vrev32q_s8(v9);
        v19 = *(BytePtr + 140);
        v20 = vrev32q_s8(v19);
        v16.i64[0] = 0x1000000010000;
        v16.i64[1] = 0x1000000010000;
        v21 = vmovn_s16(vuzp1q_s16(vcgtq_u32(v18, v16), vcgtq_u32(v17, v16)));
        v21.i8[0] = vmaxv_u8(v21);
        *v16.i8 = vmovn_s32(vcgtq_u32(v20, v16));
        v16.i16[0] = vmaxv_u16(*v16.i8);
        if (!((v8 > 0x10000 || v13 > 0x10000 || v15 > 0x10000) | (v21.i32[0] | v16.i32[0]) & 1) && (v20.i32[1] + v17.i32[1]) <= v20.i32[0])
        {
          v22 = v5;
          v275 = v18;
          v277 = v17;
          v272 = v20;
          v266 = v6;
          v267 = v9;
          v269 = v4;
          v263 = v19;
          v264 = v7;
          v274 = v17.u32[1];
          v276 = v10;
          v271 = v8;
          v273 = v20.u32[0];
          v280 = v12;
          v278 = v13;
          v281 = &v235;
          v265 = *(BytePtr + 17);
          LODWORD(v270) = *(BytePtr + 19);
          v23 = *(BytePtr + 28);
          v24 = *(BytePtr + 30);
          v25 = bswap32(*(BytePtr + 32));
          v262 = *(BytePtr + 34);
          MEMORY[0x1EEE9AC00](v5);
          if (v15 > 0x200)
          {
            v28 = NSAllocateScannedUncollectable();
            v279 = v28;
          }

          else
          {
            v279 = &v235 - v27;
            bzero(&v235 - v27, 8 * v26);
          }

          v291 = v25;
          v29 = (v25 + 3) & 0x1FFFFFFFCLL;
          v30 = v29 + 4;
          if (v29 + 4 <= v22)
          {
            v31 = bswap32(*&BytePtr[v29]);
            v291 = v30;
          }

          else
          {
            v31 = 0;
          }

          if (v31 == v15)
          {
            if (v14)
            {
              v32 = v279;
              v33 = v15;
              do
              {
                v28 = _readPFEncodedStringFromData(error, BytePtr, &v291, v22);
                if (!v28)
                {
                  return;
                }

                *v32++ = v28;
              }

              while (--v33);
            }

            v34 = bswap32(v24);
            v35 = v278;
            MEMORY[0x1EEE9AC00](v28);
            v38 = &v235 - v37;
            if (v35 > 0x200)
            {
              v39 = NSAllocateScannedUncollectable();
              v38 = v39;
            }

            else
            {
              bzero(&v235 - v37, 8 * v36);
            }

            v290 = v34;
            v40 = (v34 + 3) & 0x1FFFFFFFCLL;
            v41 = v40 + 4;
            v261 = v38;
            if (v40 + 4 <= v22)
            {
              v42 = bswap32(*&BytePtr[v40]);
              v290 = v41;
            }

            else
            {
              v42 = 0;
            }

            if (v42 != v35)
            {
              return;
            }

            if (v280)
            {
              v43 = v261;
              v44 = v278;
              do
              {
                v45 = _newReadStringFromBytes(BytePtr, &v290, v22);
                if (!v45)
                {
                  return;
                }

                v46 = v45;
                *v43++ = [v45 mutableCopy];
              }

              while (--v44);
            }

            v47 = bswap32(v23);
            v48 = v277.u32[3];
            MEMORY[0x1EEE9AC00](v39);
            v51 = (&v235 - v50);
            if (v48 > 0x200)
            {
              v52 = NSAllocateScannedUncollectable();
              v51 = v52;
            }

            else
            {
              bzero(&v235 - v50, 8 * v49);
            }

            v289 = v47;
            v53 = (v47 + 3) & 0x1FFFFFFFCLL;
            v54 = v53 + 4;
            if (v53 + 4 <= v22)
            {
              v55 = bswap32(*&BytePtr[v53]);
              v289 = v54;
            }

            else
            {
              v55 = 0;
            }

            if (v55 != v48)
            {
              return;
            }

            if (v11)
            {
              v56 = v51;
              v57 = v48;
              do
              {
                v52 = _readPFEncodedDataFromData(error, BytePtr, &v289, v22);
                if (!v52)
                {
                  return;
                }

                *v56++ = v52;
              }

              while (--v57);
            }

            v58 = v277.u32[2];
            v59 = 8 * v277.u32[2];
            v60 = MEMORY[0x1EEE9AC00](v52);
            v61 = (&v235 - ((v59 + 15) & 0xFFFFFFFF0));
            v288 = v62;
            v63 = (v62 + 3) & 0x1FFFFFFFCLL;
            v64 = v63 + 4;
            if (v63 + 4 <= v22)
            {
              v65 = bswap32(*&BytePtr[v63]);
              v288 = v64;
            }

            else
            {
              v65 = 0;
            }

            if (v65 != v58)
            {
              return;
            }

            v260 = (&v235 - ((v59 + 15) & 0xFFFFFFFF0));
            if (v276)
            {
              v66 = v58;
              do
              {
                v67 = _newReadKKDMappingStrategyFromByes(error, BytePtr, &v288, v22, v279);
                if (!v67)
                {
                  return;
                }

                *v61++ = v67;
                --v66;
              }

              while (v66);
              v258 = v48;
              MEMORY[0x1EEE9AC00](v67);
              v68 = (&v235 - ((v59 + 15) & 0xFFFFFFFF0));
              v69 = NSClassFromString(@"NSKnownKeysDictionary2");
              v70 = 0;
              v71 = v260;
              do
              {
                v72 = [(objc_class *)v69 newInstanceWithSearchStrategy:*(v71 + 8 * v70) inData:error];
                v68[v70++] = v72;
              }

              while (v58 != v70);
              v256 = v51;
              v73 = v68;
              v48 = v258;
            }

            else
            {
              v256 = v51;
              MEMORY[0x1EEE9AC00](v60);
              v73 = (&v235 - ((v59 + 15) & 0xFFFFFFFF0));
              v72 = NSClassFromString(@"NSKnownKeysDictionary2");
            }

            v74 = v275.u32[0];
            MEMORY[0x1EEE9AC00](v72);
            v77 = &v235 - v76;
            v257 = v58;
            if (v74 >= 0x1FF)
            {
              v78 = NSAllocateScannedUncollectable();
              v77 = v78;
              if (!v78)
              {
                if (v280)
                {
                  v102 = v278;
                  v103 = v261;
                  do
                  {
                    v104 = *v103++;

                    --v102;
                  }

                  while (v102);
                }

                return;
              }
            }

            else
            {
              bzero(&v235 - v76, 8 * v75);
            }

            v79 = v275.u32[1];
            MEMORY[0x1EEE9AC00](v78);
            v82 = (&v235 - v81);
            v255 = v73;
            if (v79 > 0x1FE)
            {
              v83 = NSAllocateScannedUncollectable();
              v82 = v83;
              if (!v83)
              {
                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v109 = v278;
                  v110 = v261;
                  do
                  {
                    v111 = *v110++;

                    --v109;
                  }

                  while (v109);
                }

                return;
              }
            }

            else
            {
              bzero(&v235 - v81, 8 * v80);
            }

            v84 = MEMORY[0x1EEE9AC00](v83);
            v253 = v234;
            v234[0] = 0;
            v234[1] = 0;
            MEMORY[0x1EEE9AC00](v84);
            v87 = &v235 - v86;
            v259 = v88;
            if (v88 > 0x1FE)
            {
              v89 = NSAllocateScannedUncollectable();
              v87 = v89;
              if (!v89)
              {
                if (v79 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v117 = v278;
                  v118 = v261;
                  do
                  {
                    v119 = *v118++;

                    --v117;
                  }

                  while (v117);
                }

                return;
              }
            }

            else
            {
              bzero(&v235 - v86, 8 * v85);
            }

            MEMORY[0x1EEE9AC00](v89);
            v275.i64[0] = v92;
            if (v92 > 0x1FE)
            {
              v93 = NSAllocateScannedUncollectable();
              v254 = v93;
              if (!v93)
              {
                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v87);
                }

                if (v79 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v124 = v278;
                  v125 = v261;
                  do
                  {
                    v126 = *v125++;

                    --v124;
                  }

                  while (v124);
                }

                return;
              }
            }

            else
            {
              v254 = (&v235 - v91);
              bzero(&v235 - v91, 8 * v90);
            }

            MEMORY[0x1EEE9AC00](v93);
            v277.i64[0] = v96;
            if (v96 > 0x1FE)
            {
              v97 = NSAllocateScannedUncollectable();
              v252 = v97;
              if (!v97)
              {
                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v87);
                }

                if (v79 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v131 = v278;
                  v132 = v261;
                  do
                  {
                    v133 = *v132++;

                    --v131;
                  }

                  while (v131);
                }

                return;
              }
            }

            else
            {
              v252 = (&v235 - v95);
              bzero(&v235 - v95, 8 * v94);
            }

            MEMORY[0x1EEE9AC00](v97);
            if (v100 > 0x1FE)
            {
              v101 = NSAllocateScannedUncollectable();
              v250 = v101;
              if (!v101)
              {
                if (v277.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v252);
                }

                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v87);
                }

                if (v79 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v166 = v278;
                  v167 = v261;
                  do
                  {
                    v168 = *v167++;

                    --v166;
                  }

                  while (v166);
                }

                return;
              }
            }

            else
            {
              v250 = (&v235 - v99);
              bzero(&v235 - v99, 8 * v98);
            }

            MEMORY[0x1EEE9AC00](v101);
            if (v107 > 0x1FE)
            {
              v108 = NSAllocateScannedUncollectable();
              v248 = v108;
              if (!v108)
              {
                if (v274 >= 0x1FF)
                {
                  NSZoneFree(0, v250);
                }

                if (v277.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v252);
                }

                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v87);
                }

                if (v79 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v77);
                }

                if (v280)
                {
                  v169 = v278;
                  v170 = v261;
                  do
                  {
                    v171 = *v170++;

                    --v169;
                  }

                  while (v169);
                }

                return;
              }
            }

            else
            {
              v248 = &v235 - v106;
              bzero(&v235 - v106, 8 * v105);
            }

            v258 = v48;
            v249 = v87;
            v251 = v79;
            v247 = v77;
            MEMORY[0x1EEE9AC00](v108);
            if (v114 > 0x1FE)
            {
              v116 = NSAllocateScannedUncollectable();
              v115 = v116;
              if (!v116)
              {
                if (v273 >= 0x1FF)
                {
                  NSZoneFree(0, v248);
                }

                if (v274 >= 0x1FF)
                {
                  NSZoneFree(0, v250);
                }

                if (v277.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v252);
                }

                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v249);
                }

                if (v251 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v247);
                }

                if (v280)
                {
                  v172 = v278;
                  v173 = v261;
                  do
                  {
                    v174 = *v173++;

                    --v172;
                  }

                  while (v172);
                }

                return;
              }
            }

            else
            {
              v115 = &v235 - v113;
              bzero(&v235 - v113, 8 * v112);
            }

            MEMORY[0x1EEE9AC00](v116);
            v246 = v122;
            if (v122 > 0x1FE)
            {
              v123 = NSAllocateScannedUncollectable();
              v245 = v123;
              if (!v123)
              {
                if (v271 >= 0x1FF)
                {
                  NSZoneFree(0, v115);
                }

                if (v273 >= 0x1FF)
                {
                  NSZoneFree(0, v248);
                }

                if (v274 >= 0x1FF)
                {
                  NSZoneFree(0, v250);
                }

                if (v277.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v252);
                }

                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v249);
                }

                if (v251 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v247);
                }

                if (v280)
                {
                  v175 = v278;
                  v176 = v261;
                  do
                  {
                    v177 = *v176++;

                    --v175;
                  }

                  while (v175);
                }

                return;
              }
            }

            else
            {
              v245 = &v235 - v121;
              bzero(&v235 - v121, 8 * v120);
            }

            MEMORY[0x1EEE9AC00](v123);
            v272.i64[0] = v129;
            if (v129 > 0x1FE)
            {
              v130 = NSAllocateScannedUncollectable();
              if (!v130)
              {
                if (v246 >= 0x1FF)
                {
                  NSZoneFree(0, v245);
                }

                if (v271 >= 0x1FF)
                {
                  NSZoneFree(0, v115);
                }

                if (v273 >= 0x1FF)
                {
                  NSZoneFree(0, v248);
                }

                if (v274 >= 0x1FF)
                {
                  NSZoneFree(0, v250);
                }

                if (v277.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v252);
                }

                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                if (v259 >= 0x1FF)
                {
                  NSZoneFree(0, v249);
                }

                if (v251 >= 0x1FF)
                {
                  NSZoneFree(0, v82);
                }

                if (v74 >= 0x1FF)
                {
                  NSZoneFree(0, v247);
                }

                if (v280)
                {
                  v178 = v278;
                  v179 = v261;
                  do
                  {
                    v180 = *v179++;

                    --v178;
                  }

                  while (v178);
                }

                return;
              }
            }

            else
            {
              v130 = (&v235 - v128);
              bzero(&v235 - v128, 8 * v127);
            }

            v134 = objc_opt_class();
            v135 = v82;
            v136 = v251;
            v137 = _PFAllocateObjects(v134, v82, v251, 0);
            if (v137 == v136)
            {
              objc_opt_class();
              v138 = objc_opt_class();
              v139 = v259;
              v140 = _PFAllocateObjects(v138, v249, v259, 0);
              if (v140 == v139)
              {
                v141 = objc_opt_class();
                v142 = v275.i32[0];
                v143 = _PFAllocateObjects(v141, v254, v275.u32[0], 0);
                if (v143 == v142)
                {
                  v144 = objc_opt_class();
                  v145 = v277.i32[0];
                  v146 = _PFAllocateObjects(v144, v252, v277.u32[0], 0);
                  if (v146 == v145)
                  {
                    v147 = objc_opt_class();
                    v148 = v274;
                    v149 = _PFAllocateObjects(v147, v250, v274, 0);
                    if (v149 == v148)
                    {
                      v150 = objc_opt_class();
                      v151 = v273;
                      v152 = _PFAllocateObjects(v150, v248, v273, 0);
                      if (v152 == v151)
                      {
                        v153 = objc_opt_class();
                        v154 = v271;
                        v155 = _PFAllocateObjects(v153, v115, v271, 0);
                        if (v155 == v154)
                        {
                          v156 = objc_opt_class();
                          v157 = v246;
                          v158 = _PFAllocateObjects(v156, v245, v246, 0);
                          if (v158 == v157)
                          {
                            v159 = objc_opt_class();
                            v160 = v272.i32[0];
                            v161 = _PFAllocateObjects(v159, v130, v272.u32[0], 0);
                            if (v161 == v160)
                            {
                              v162 = bswap32(v270);
                              v287 = v162;
                              v163 = (v162 + 3) & 0x1FFFFFFFCLL;
                              v164 = v163 + 4;
                              if (v163 + 4 <= v22)
                              {
                                v165 = bswap32(*&BytePtr[v163]);
                                v287 = v164;
                                v162 = v164;
                              }

                              else
                              {
                                v165 = 0;
                              }

                              if (v165 == v251)
                              {
                                v181 = (v162 + 3) & 0x7FFFFFFFCLL;
                                v182 = v181 + 4;
                                if (v181 + 4 <= v22)
                                {
                                  v183 = bswap32(*&BytePtr[v181]);
                                  v287 = v182;
                                  v162 = v182;
                                }

                                else
                                {
                                  v183 = 0;
                                }

                                if (v183 == v259)
                                {
                                  v184 = (v162 + 3) & 0x1FFFFFFFFCLL;
                                  v185 = v184 + 4;
                                  if (v184 + 4 <= v22)
                                  {
                                    v186 = bswap32(*&BytePtr[v184]);
                                    v287 = v185;
                                    v162 = v185;
                                  }

                                  else
                                  {
                                    v186 = 0;
                                  }

                                  if (v186 == v275.i32[0])
                                  {
                                    v187 = (v162 + 3) & 0x7FFFFFFFFCLL;
                                    v188 = v187 + 4;
                                    if (v187 + 4 <= v22)
                                    {
                                      v189 = bswap32(*&BytePtr[v187]);
                                      v287 = v188;
                                      v162 = v188;
                                    }

                                    else
                                    {
                                      v189 = 0;
                                    }

                                    if (v189 == v277.i32[0])
                                    {
                                      v190 = (v162 + 3) & 0x1FFFFFFFFFCLL;
                                      v191 = v190 + 4;
                                      if (v190 + 4 <= v22)
                                      {
                                        v192 = bswap32(*&BytePtr[v190]);
                                        v287 = v191;
                                      }

                                      else
                                      {
                                        v192 = 0;
                                      }

                                      if (v192 == v274)
                                      {
                                        if (v267.i32[1])
                                        {
                                          v244 = *v82;
                                        }

                                        else
                                        {
                                          v244 = 0;
                                        }

                                        if (v267.i32[2])
                                        {
                                          v243 = *v249;
                                        }

                                        else
                                        {
                                          v243 = 0;
                                        }

                                        HIDWORD(v235) = v267.i32[3];
                                        if (v267.i32[3])
                                        {
                                          v241 = *v254;
                                        }

                                        else
                                        {
                                          v241 = 0;
                                        }

                                        LODWORD(v235) = v266;
                                        if (v266)
                                        {
                                          v240 = *v252;
                                        }

                                        else
                                        {
                                          v240 = 0;
                                        }

                                        if (DWORD1(v266))
                                        {
                                          v242 = *v250;
                                        }

                                        else
                                        {
                                          v242 = 0;
                                        }

                                        if (v267.i32[0])
                                        {
                                          v193 = 0;
                                          v236 = 0;
                                          v237 = 0;
                                          v238 = 0;
                                          v239 = 0;
                                          *&v266 = 0;
                                          v267.i64[0] = 0;
                                          v270 = 0;
                                          while (1)
                                          {
                                            v194 = _readPropertyIntoShellFromBytes(error, BytePtr, &v287, v22, v115, v247, v248, v244, v243, v266, v241, v240, v242, v279, v261, v256, v269, v293);
                                            if (!v194)
                                            {
                                              goto LABEL_327;
                                            }

                                            *(v247 + v193) = v194;
                                            if (v82[v270] == v194)
                                            {
                                              v270 = v270 + 1;
                                              if (v270 == v251)
                                              {
                                                v244 = 0;
                                                v195 = v251;
                                                v196 = &v294;
                                              }

                                              else
                                              {
                                                v195 = v82[v270];
                                                v196 = &v272.i64[1];
                                              }

                                              goto LABEL_287;
                                            }

                                            if (v253[v267.i64[0]] != v194)
                                            {
                                              break;
                                            }

                                            if (!__CFADD__(v267.i64[0]++, 1))
                                            {
                                              v195 = v253[v267.i64[0]];
                                              v196 = &v290;
LABEL_287:
                                              *(v196 - 32) = v195;
                                              goto LABEL_288;
                                            }

                                            v267.i64[0] = 0;
                                            *&v266 = 0;
LABEL_288:
                                            if (v74 == ++v193)
                                            {
                                              goto LABEL_289;
                                            }
                                          }

                                          if (v249[v239] == v194)
                                          {
                                            if (++v239 == v259)
                                            {
                                              v243 = 0;
                                              v195 = v259;
                                              v196 = &v268;
                                            }

                                            else
                                            {
                                              v195 = v249[v239];
                                              v196 = &v272;
                                            }
                                          }

                                          else if (v254[v238] == v194)
                                          {
                                            if (++v238 == v275.i64[0])
                                            {
                                              v241 = 0;
                                              v195 = v275.i64[0];
                                              v196 = &v267.i64[1];
                                            }

                                            else
                                            {
                                              v195 = v254[v238];
                                              v196 = &v270;
                                            }
                                          }

                                          else if (v252[v237] == v194)
                                          {
                                            if (++v237 == v277.i64[0])
                                            {
                                              v240 = 0;
                                              v195 = v277.i64[0];
                                              v196 = &v267;
                                            }

                                            else
                                            {
                                              v195 = v252[v237];
                                              v196 = &v269;
                                            }
                                          }

                                          else if (++v236 == v274)
                                          {
                                            v242 = 0;
                                            v195 = v274;
                                            v196 = &v266 + 1;
                                          }

                                          else
                                          {
                                            v195 = v250[v236];
                                            v196 = &v271;
                                          }

                                          goto LABEL_287;
                                        }

LABEL_289:
                                        *&v266 = objc_opt_class();
                                        if (HIDWORD(v235))
                                        {
                                          v198 = v254;
                                          v199 = v275.i64[0];
                                          do
                                          {
                                            v270 = *v198;
                                            inverseRelationship = [v270 inverseRelationship];
                                            if (inverseRelationship)
                                            {
                                              unsignedIntegerValue = [inverseRelationship unsignedIntegerValue];
                                              v267.i64[0] = *(v247 + unsignedIntegerValue);
                                              if (objc_opt_class() != v266)
                                              {
                                                goto LABEL_327;
                                              }

                                              if (v270)
                                              {

                                                *(v270 + 14) = v267.i64[0];
                                              }
                                            }

                                            ++v198;
                                            --v199;
                                          }

                                          while (v199);
                                        }

                                        v286 = bswap32(v265);
                                        v202 = (v286 + 3) & 0x1FFFFFFFCLL;
                                        v203 = v202 + 4;
                                        if (v202 + 4 <= v22)
                                        {
                                          v204 = bswap32(*&BytePtr[v202]);
                                          v286 = v203;
                                        }

                                        else
                                        {
                                          v204 = 0;
                                        }

                                        if (v204 == v271)
                                        {
                                          if (v264)
                                          {
                                            v270 = 0;
                                            v205 = 0;
                                            v206 = 0;
                                            v267.i64[0] = v130;
                                            *&v266 = v245;
                                            while (1)
                                            {
                                              v285 = v246 - v206;
                                              v284 = v272.i64[0] - v205;
                                              if (!_readEntityIntoShellFromData(error, BytePtr, &v286, v22, *&v115[8 * v270], v255, v247, v266, &v285, v267.i64[0], &v284, v279, v261, v256, v115, v260, v269, v293))
                                              {
                                                goto LABEL_327;
                                              }

                                              v206 += v285;
                                              if (v206 > v246)
                                              {
                                                break;
                                              }

                                              v205 += v284;
                                              if (v205 > v272.i64[0])
                                              {
                                                break;
                                              }

                                              *&v266 = v266 + 8 * v285;
                                              v267.i64[0] += 8 * v284;
                                              v270 = v270 + 1;
                                              if (v271 == v270)
                                              {
                                                goto LABEL_306;
                                              }
                                            }

                                            v230 = objc_autoreleasePoolPush();
                                            if (_NSCoreDataIsOSLogEnabled(1))
                                            {
                                              v231 = _pflogging_catastrophic_mode;
                                              LogStream = _PFLogGetLogStream(1);
                                              v233 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                                              if (v231)
                                              {
                                                if (v233)
                                                {
                                                  *buf = 0;
                                                  goto LABEL_392;
                                                }
                                              }

                                              else if (v233)
                                              {
                                                *buf = 0;
LABEL_392:
                                                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bad: decoding optimized model smashed memory. Bailing.\n", buf, 2u);
                                              }
                                            }

                                            _NSCoreDataLog_console(1, "Bad: decoding optimized model smashed memory. Bailing.", v235);
                                            objc_autoreleasePoolPop(v230);
                                            __break(1u);
                                            return;
                                          }

LABEL_306:
                                          v282 = bswap32(v262);
                                          v207 = (v282 + 3) & 0x1FFFFFFFCLL;
                                          v208 = v207 + 4;
                                          if (v207 + 4 <= v22)
                                          {
                                            v209 = bswap32(*&BytePtr[v207]);
                                            v282 = v208;
                                          }

                                          else
                                          {
                                            v209 = 0;
                                          }

                                          if (v209 == v273)
                                          {
                                            LODWORD(v270) = v263.i32[0];
                                            if (!v263.i32[0])
                                            {
LABEL_314:
                                              if (v251 >= 0x1FF)
                                              {
                                                NSZoneFree(0, v82);
                                              }

                                              if (v275.i32[0] >= 0x1FFu)
                                              {
                                                NSZoneFree(0, v254);
                                              }

                                              if (v274 >= 0x1FF)
                                              {
                                                NSZoneFree(0, v250);
                                              }

                                              if (v235)
                                              {
                                                v212 = 0;
                                                do
                                                {
                                                }

                                                while (v277.i64[0] != v212);
                                                if (v277.i32[0] >= 0x1FFu)
                                                {
                                                  NSZoneFree(0, v252);
                                                }
                                              }

                                              if (v263.i32[1])
                                              {
                                                v213 = v255[1];
                                              }

                                              else
                                              {
                                                v213 = 0;
                                              }

                                              v220 = _newReadModelFromBytes(error, BytePtr, &v292, v22, *v255, v213, v115, v248, v279, v256);
                                              if (v220 && v264)
                                              {
                                                v221 = v115;
                                                v222 = v271;
                                                do
                                                {
                                                  v223 = *v221++;
                                                  *(v223 + 40) = v220;
                                                  --v222;
                                                }

                                                while (v222);
                                              }

                                              if (v280)
                                              {
                                                v224 = v261;
                                                v225 = v278;
                                                do
                                                {
                                                  v226 = *v224++;

                                                  --v225;
                                                }

                                                while (v225);
                                              }

                                              if (v270)
                                              {
                                                v227 = v248;
                                                v228 = v273;
                                                do
                                                {
                                                  v229 = *v227++;

                                                  --v228;
                                                }

                                                while (v228);
                                              }

                                              if (v271 >= 0x1FF)
                                              {
                                                NSZoneFree(0, v115);
                                              }

                                              if (v74 >= 0x1FF)
                                              {
                                                NSZoneFree(0, v247);
                                              }

                                              if (v273 >= 0x1FF)
                                              {
                                                NSZoneFree(0, v248);
                                              }

                                              if (v15 >= 0x201)
                                              {
                                                NSZoneFree(0, v279);
                                              }

                                              if (v258 >= 0x201)
                                              {
                                                NSZoneFree(0, v256);
                                              }

                                              if (v278 >= 0x201)
                                              {
                                                NSZoneFree(0, v261);
                                              }

                                              if (v272.i32[0] >= 0x1FFu)
                                              {
                                                NSZoneFree(0, v130);
                                              }

                                              return;
                                            }

                                            v210 = v248;
                                            v211 = v273;
                                            while (_readFetchRequestIntoShellFromData(error, BytePtr, &v282, v22, *v210, v255, v247, v279, v261, v256, v115, v260, v269, v293))
                                            {
                                              ++v210;
                                              if (!--v211)
                                              {
                                                goto LABEL_314;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }

LABEL_327:
                              if (v74 >= 0x1FF)
                              {
                                NSZoneFree(0, v247);
                              }

                              v161 = v272.i32[0];
                            }

                            _PFDeallocateObjects(v130, v161);
                            if (v272.i32[0] >= 0x1FFu)
                            {
                              NSZoneFree(0, v130);
                            }

                            v158 = v246;
                          }

                          _PFDeallocateObjects(v245, v158);
                          if (v246 >= 0x1FF)
                          {
                            NSZoneFree(0, v245);
                          }

                          v155 = v271;
                        }

                        _PFDeallocateObjects(v115, v155);
                        v152 = v273;
                        if (v271 >= 0x1FF)
                        {
                          NSZoneFree(0, v115);
                          v152 = v273;
                        }
                      }

                      _PFDeallocateObjects(v248, v152);
                      if (v273 >= 0x1FF)
                      {
                        NSZoneFree(0, v248);
                      }

                      v149 = v274;
                    }

                    _PFDeallocateObjects(v250, v149);
                    v146 = v277.i32[0];
                    if (v274 >= 0x1FF)
                    {
                      NSZoneFree(0, v250);
                      v146 = v277.i32[0];
                    }
                  }

                  _PFDeallocateObjects(v252, v146);
                  if (v277.i32[0] >= 0x1FFu)
                  {
                    NSZoneFree(0, v252);
                  }

                  v143 = v275.i32[0];
                }

                _PFDeallocateObjects(v254, v143);
                if (v275.i32[0] >= 0x1FFu)
                {
                  NSZoneFree(0, v254);
                }

                v140 = v259;
              }

              _PFDeallocateObjects(v249, v140);
              if (v259 >= 0x1FF)
              {
                NSZoneFree(0, v249);
              }

              _PFDeallocateObjects(v253, 0);
              v136 = v251;
              v137 = v251;
              v135 = v82;
            }

            _PFDeallocateObjects(v135, v137);
            if (v136 >= 0x1FF)
            {
              NSZoneFree(0, v82);
            }

            v214 = v278;
            v215 = v261;
            if (v280)
            {
              do
              {
                v216 = *v215++;

                --v214;
              }

              while (v214);
            }

            if (v276)
            {
              v217 = v257;
              v218 = v260;
              do
              {
                v219 = *v218++;

                --v217;
              }

              while (v217);
            }
          }
        }
      }
    }
  }
}

- (id)_modelForVersionHashes:(id)hashes
{
  v34 = *MEMORY[0x1E69E9840];
  entitiesByName = [(NSManagedObjectModel *)self entitiesByName];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [hashes countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(hashes);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(NSDictionary *)entitiesByName objectForKey:v11];
        v13 = [hashes objectForKey:v11];
        if (v12)
        {
          v14 = v13;
          if (([objc_msgSend(v12 "versionHash")] & 1) != 0 || -[NSEntityDescription _hasPotentialHashSkew](v12) && objc_msgSend(-[NSEntityDescription _newVersionHashInStyle:](v12, 1), "isEqual:", v14))
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v8 addObject:{objc_msgSend(v12, "copy")}];
          }
        }
      }

      v7 = [hashes countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (![v8 count])
  {
    v15 = 0;
    if (!v8)
    {
      return v15;
    }

    goto LABEL_28;
  }

  v15 = [[NSManagedObjectModel alloc] _initWithEntities:v8];
  [v15 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](self, "versionIdentifiers")}];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  fetchRequestTemplates = self->_fetchRequestTemplates;
  v17 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(fetchRequestTemplates);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        v22 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:v21];
        if ([v8 containsObject:{objc_msgSend(v22, "entity")}])
        {
          [v15 setFetchRequestTemplate:v22 forName:v21];
        }
      }

      v18 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  if (v8)
  {
LABEL_28:
  }

  return v15;
}

- (id)_initWithContentsOfURL:(id)l options:(unint64_t)options
{
  optionsCopy = options;
  v72 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  if (l)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [l path];
    v65 = 0;
    v11 = [defaultManager fileExistsAtPath:path isDirectory:&v65];
    if (v11 && v65 == 1)
    {
      v12 = [[NSManagedObjectModelBundle alloc] initWithPath:path];
      v13 = v12;
      if (v12)
      {
        v14 = [-[NSManagedObjectModelBundle optimizedVersionURL](v12 "optimizedVersionURL")];
        path = [-[NSManagedObjectModelBundle currentVersionURL](v13 "currentVersionURL")];
        v15 = 0;
LABEL_10:

        if (!v14)
        {
          goto LABEL_37;
        }

        v17 = [NSManagedObjectModel alloc];
        v18 = -[NSManagedObjectModel initWithContentsOfOptimizedURL:](v17, "initWithContentsOfOptimizedURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0]);
        if (v18)
        {
LABEL_58:
          v45 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:l];
          [(NSManagedObjectModel *)v18 _setLocalizationPolicy:v45];

LABEL_76:
          [v8 drain];
          return v18;
        }

        if (!PFUseToolchainBehaviors())
        {
          v19 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                lCopy2 = v14;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load optimized model at path '%@'\n", buf, 0xCu);
              }
            }

            else
            {
              v54 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                lCopy2 = v14;
                _os_log_impl(&dword_18565F000, v54, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:  Failed to load optimized model at path '%@'\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v55 = 1;
          }

          else
          {
            v55 = 4;
          }

          _NSCoreDataLog_console(v55, " Failed to load optimized model at path '%@'", v14);
          objc_autoreleasePoolPop(v19);
        }

        if (!v15 || (v56 = [path stringByDeletingLastPathComponent], !objc_msgSend(objc_msgSend(v56, "pathExtension"), "isEqualToString:", @"momd")))
        {
LABEL_37:
          if (!path || path == v14)
          {
LABEL_70:
            v49 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v50 = _pflogging_catastrophic_mode == 0;
              v51 = _PFLogGetLogStream(1);
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
              if (v50)
              {
                if (v52)
                {
                  *buf = 138412290;
                  lCopy2 = l;
                  goto LABEL_93;
                }
              }

              else if (v52)
              {
                *buf = 138412290;
                lCopy2 = l;
LABEL_93:
                _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load NSManagedObjectModel with URL '%@'\n", buf, 0xCu);
              }
            }

            _NSCoreDataLog_console(1, " Failed to load NSManagedObjectModel with URL '%@'", l);
            objc_autoreleasePoolPop(v49);
            v18 = 0;
            goto LABEL_76;
          }

          v64 = 0;
          v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:path options:0 error:&v64];
          if (!v64)
          {
LABEL_46:
            error = 0;
            if ([v32 length])
            {
              v38 = (optionsCopy & 1) == 0;
              v39 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v32 error:&error];
              v40 = v39;
              if (v38)
              {
                [v39 setRequiresSecureCoding:0];
              }

              else
              {
                [v39 setRequiresSecureCoding:1];
                [v40 _allowDecodingCyclesInSecureMode];
              }

              [v40 setDecodingFailurePolicy:1];
              v18 = [v40 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithObject:", objc_opt_class()), @"root"}];
              if ([v40 error])
              {
                error = [v40 error];
              }

              if (v18)
              {

                goto LABEL_58;
              }

              v41 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog < 1)
              {
                goto LABEL_68;
              }

              v46 = _pflogging_catastrophic_mode == 0;
              v47 = _PFLogGetLogStream(1);
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
              if (v46)
              {
                if (v48)
                {
LABEL_105:
                  *buf = 138412546;
                  lCopy2 = path;
                  v68 = 2112;
                  v69 = error;
                  _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load keyed archive model at path '%@' with error '%@'\n", buf, 0x16u);
                }
              }

              else if (v48)
              {
                goto LABEL_105;
              }

LABEL_68:
              _NSCoreDataLog_console(1, " Failed to load keyed archive model at path '%@' with error '%@'", path, error);
              goto LABEL_69;
            }

            v41 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v42 = _pflogging_catastrophic_mode == 0;
              v43 = _PFLogGetLogStream(1);
              v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              if (v42)
              {
                if (v44)
                {
                  *buf = 138412290;
                  lCopy2 = path;
                  goto LABEL_102;
                }
              }

              else if (v44)
              {
                *buf = 138412290;
                lCopy2 = path;
LABEL_102:
                _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Unable model at path (file is zero bytes) '%@'\n", buf, 0xCu);
              }
            }

            _NSCoreDataLog_console(1, "Unable model at path (file is zero bytes) '%@'", path);
LABEL_69:
            objc_autoreleasePoolPop(v41);

            goto LABEL_70;
          }

          v33 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v34 = _pflogging_catastrophic_mode == 0;
            v35 = _PFLogGetLogStream(1);
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (v34)
            {
              if (v36)
              {
LABEL_98:
                v62 = NSStringFromSelector(a2);
                *buf = 138412802;
                lCopy2 = v62;
                v68 = 2112;
                v69 = path;
                v70 = 2112;
                v71 = v64;
                _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: Failed reading data in %@ from path %@, error, %@\n", buf, 0x20u);
              }
            }

            else if (v36)
            {
              goto LABEL_98;
            }
          }

          v37 = NSStringFromSelector(a2);
          _NSCoreDataLog_console(1, "Failed reading data in %@ from path %@, error, %@", v37, path, v64);
          objc_autoreleasePoolPop(v33);
          goto LABEL_46;
        }

        v57 = [[NSManagedObjectModelBundle alloc] initWithPath:v56];
        if (v57)
        {
          path = [-[NSManagedObjectModelBundle currentVersionURL](v57 "currentVersionURL")];
          goto LABEL_36;
        }

        v58 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          v59 = _pflogging_catastrophic_mode == 0;
          v60 = _PFLogGetLogStream(1);
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
          if (v59)
          {
            if (v61)
            {
              *buf = 138412290;
              lCopy2 = path;
              goto LABEL_107;
            }
          }

          else if (v61)
          {
            *buf = 138412290;
            lCopy2 = path;
LABEL_107:
            _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model bundle at path '%@'\n", buf, 0xCu);
          }
        }

        _NSCoreDataLog_console(1, " Failed to load model bundle at path '%@'", path);
        objc_autoreleasePoolPop(v58);
        goto LABEL_37;
      }

      v25 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_66;
      }

      v29 = _pflogging_catastrophic_mode == 0;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          *buf = 138412290;
          lCopy2 = path;
          goto LABEL_104;
        }
      }

      else if (v31)
      {
        *buf = 138412290;
        lCopy2 = path;
LABEL_104:
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model bundle at path '%@'\n", buf, 0xCu);
      }

LABEL_66:
      _NSCoreDataLog_console(1, " Failed to load model bundle at path '%@'", path);
      goto LABEL_35;
    }

    v15 = [objc_msgSend(path "pathExtension")];
    v16 = v11 | v15;
    if (v15)
    {
      v14 = path;
    }

    else
    {
      v14 = 0;
    }

    if (v16)
    {
      goto LABEL_10;
    }

    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v26 = _pflogging_catastrophic_mode == 0;
      v27 = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v28)
        {
          *buf = 138412290;
          lCopy2 = path;
          goto LABEL_97;
        }
      }

      else if (v28)
      {
        *buf = 138412290;
        lCopy2 = path;
LABEL_97:
        _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model as no file exists at path '%@'\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, " Failed to load model as no file exists at path '%@'", path);
LABEL_35:
    objc_autoreleasePoolPop(v25);

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  v21 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v22 = _pflogging_catastrophic_mode;
    v23 = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        *buf = 0;
LABEL_95:
        _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error:  Cannot load NSManagedObjectModel.  nil is an illegal URL parameter\n", buf, 2u);
      }
    }

    else if (v24)
    {
      *buf = 0;
      goto LABEL_95;
    }
  }

  _NSCoreDataLog_console(1, " Cannot load NSManagedObjectModel.  nil is an illegal URL parameter");
  objc_autoreleasePoolPop(v21);
  if (BYTE2(dword_1ED4BEEC0) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"CoreData: Cannot load NSManagedObjectModel.  nil is an illegal URL parameter" userInfo:0]);
  }

  return 0;
}

+ (int64_t)_debugOptimizedModelLayout
{
  if (qword_1ED4BEA58 != -1)
  {
    dispatch_once(&qword_1ED4BEA58, &__block_literal_global_8);
  }

  return _MergedGlobals_75;
}

void *__70__NSManagedObjectModel__NSInternalMethods___debugOptimizedModelLayout__block_invoke()
{
  result = [_PFRoutines integerValueForOverride:?];
  _MergedGlobals_75 = result;
  return result;
}

- (id)immutableCopy
{
  if ((*&self->_managedObjectModelFlags & 2) != 0)
  {

    return self;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSManagedObjectModel *)self copy];
    [v4 _createCachesAndOptimizeState];
    objc_autoreleasePoolPop(v3);
    return v4;
  }
}

- (id)_entityVersionHashesDigestFrom:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA512_Init(&c);
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_msgSend(a2 "allKeys")];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [a2 objectForKey:v9];
          uTF8String = [v9 UTF8String];
          v12 = strlen(uTF8String);
          CC_SHA512_Update(&c, uTF8String, v12);
          LODWORD(uTF8String) = [v10 length];
          [v10 getBytes:data length:uTF8String];
          CC_SHA512_Update(&c, data, uTF8String);
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v6);
    }

    CC_SHA512_Final(md, &c);
    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:64];
    v14 = [v13 base64EncodedStringWithOptions:0];

    objc_autoreleasePoolPop(v3);
    return v14;
  }

  return result;
}

- (id)_entityVersionHashesDigest
{
  if (result)
  {
    v1 = result;
    v2 = [(NSManagedObjectModel *)result _entityVersionHashesByNameInStyle:?];

    return [(NSManagedObjectModel *)v1 _entityVersionHashesDigestFrom:v2];
  }

  return result;
}

- (id)_initWithEntities:(id)entities
{
  objc_opt_class();
  objc_opt_class();
  v10.receiver = self;
  v10.super_class = NSManagedObjectModel;
  v5 = [(NSManagedObjectModel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_managedObjectModelFlags &= 0xFFFFFFFC;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_configurations = 0;
    v6->_fetchRequestTemplates = 0;
    v6->_entities = v7;
    v6->_versionIdentifiers = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v8 = PF_CALLOC_OBJECT_ARRAY(4);
    v6->_additionalPrivateIvars = v8;
    *v8 = 0;
    *(v6->_additionalPrivateIvars + 3) = 0;
    *(v6->_additionalPrivateIvars + 1) = 0;
    *(v6->_additionalPrivateIvars + 2) = 0;
    if (entities)
    {
      [(NSManagedObjectModel *)v6 setEntities:entities];
    }
  }

  return v6;
}

- (void)_flattenProperties
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_entities allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) _flattenProperties];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (uint64_t)_hasEntityWithDerivedAttribute
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v2 = *(result + 32);
    result = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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
            objc_enumerationMutation(v2);
          }

          if (-[NSEntityDescription _hasDerivedAttributes]([*(v1 + 32) objectForKey:*(*(&v6 + 1) + 8 * v5)]))
          {
            return 1;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
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

- (void)_traverseTombstonesAndMark:(uint64_t)mark
{
  v46 = *MEMORY[0x1E69E9840];
  if (mark && (*(mark + 64) & 0x10) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = *(mark + 32);
    v19 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v19)
    {
      v5 = 0;
      v18 = *v39;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(mark + 32) objectForKey:*(*(&v38 + 1) + 8 * i)];
          v7 = [objc_msgSend(v6 "userInfo")];
          v8 = v7;
          if (v7)
          {
            if ([v7 isNSString])
            {
              if ([v8 length])
              {
                v21 = [v8 componentsSeparatedByString:{@", "}];
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v9 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
                if (v9)
                {
                  v10 = *v35;
                  do
                  {
                    for (j = 0; j != v9; ++j)
                    {
                      if (*v35 != v10)
                      {
                        objc_enumerationMutation(v21);
                      }

                      if (v6)
                      {
                        v12 = *(*(&v34 + 1) + 8 * j);
                        superentity = v6;
                        do
                        {
                          if (!-[NSEntityDescription _attributeNamed:]([superentity superentity], v12))
                          {
                            [-[NSEntityDescription _attributeNamed:](superentity v12)];
                            v43[0] = superentity;
                            v43[1] = v12;
                            [v4 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v43, 2)}];
                            superentity = 0;
                            v5 = 1;
                          }

                          superentity = [superentity superentity];
                        }

                        while (superentity);
                      }
                    }

                    v9 = [v21 countByEnumeratingWithState:&v34 objects:v44 count:16];
                  }

                  while (v9);
                }
              }
            }
          }
        }

        v19 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v19);
      if (v5)
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x3052000000;
        v31 = __Block_byref_object_copy__14;
        v32 = __Block_byref_object_dispose__14;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __71__NSManagedObjectModel__NSInternalMethods___traverseTombstonesAndMark___block_invoke;
        v26[3] = &unk_1E6EC27D0;
        v27 = a2;
        v26[4] = &v28;
        v33 = v26;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [v4 countByEnumeratingWithState:&v22 objects:v42 count:16];
        if (v14)
        {
          v15 = *v23;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v4);
              }

              (*(v29[5] + 16))(v29[5], [*(*(&v22 + 1) + 8 * k) objectAtIndexedSubscript:0], objc_msgSend(*(*(&v22 + 1) + 8 * k), "objectAtIndexedSubscript:", 1));
            }

            v14 = [v4 countByEnumeratingWithState:&v22 objects:v42 count:16];
          }

          while (v14);
        }

        _Block_object_dispose(&v28, 8);
      }
    }
  }
}

char *__71__NSManagedObjectModel__NSInternalMethods___traverseTombstonesAndMark___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  [-[NSEntityDescription _attributeNamed:](a2 a3)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a2 subentities];
  result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

- (void)_setIsEditable:(BOOL)editable optimizationStyle:(unint64_t)style
{
  editableCopy = editable;
  v20 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v7 = objc_autoreleasePoolPush();
  managedObjectModelFlags = self->_managedObjectModelFlags;
  if ((*&managedObjectModelFlags ^ editableCopy))
  {
    if (BYTE6(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      fetchRequestTemplates = self->_fetchRequestTemplates;
      v10 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v13 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:*(*(&v15 + 1) + 8 * i)];
            [v13 allowEvaluation];
            [v13 _incrementInUseCounter];
          }

          v10 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    if (*&managedObjectModelFlags)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Models cannot become mutable after being marked immutable." userInfo:0]);
    }

    v14 = *&managedObjectModelFlags | !editableCopy;
    if (style)
    {
      v14 |= 4u;
    }

    self->_managedObjectModelFlags = v14;
    [(NSManagedObjectModel *)self _traverseTombstonesAndMark:?];
    [(NSManagedObjectModel *)self _createCachesAndOptimizeState];
  }

  objc_autoreleasePoolPop(v7);
  objc_sync_exit(self);
}

- (void)_setLocalizationPolicy:(id)policy
{
  v3 = *self->_additionalPrivateIvars;
  if (v3 != policy)
  {

    *self->_additionalPrivateIvars = policy;
  }
}

- (void)_sortedEntitiesForConfiguration:(void *)result
{
  if (result)
  {
    v2 = [result entitiesForConfiguration:a2];
    v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1 selector:sel_caseInsensitiveCompare_];
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
    v5 = [v2 sortedArrayUsingDescriptors:v4];

    return v5;
  }

  return result;
}

- (id)_entitiesByVersionHash
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    entities = [result entities];
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(entities, "count")}];
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [entities countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(entities);
          }

          [v2 setObject:*(*(&v7 + 1) + 8 * v6) forKey:{objc_msgSend(*(*(&v7 + 1) + 8 * v6), "versionHash")}];
          ++v6;
        }

        while (v4 != v6);
        v4 = [entities countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    return v2;
  }

  return result;
}

- (void)_stripForMigration
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  entities = [(NSManagedObjectModel *)self entities];
  v3 = [(NSArray *)entities countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(entities);
        }

        [*(*(&v7 + 1) + 8 * v6++) _stripForMigration];
      }

      while (v4 != v6);
      v4 = [(NSArray *)entities countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_restoreValidation
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  entities = [(NSManagedObjectModel *)self entities];
  v3 = [(NSArray *)entities countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(entities);
        }

        [*(*(&v7 + 1) + 8 * v6++) _restoreValidation];
      }

      while (v4 != v6);
      v4 = [(NSArray *)entities countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_setModelsReferenceIDOffset:(int64_t)offset
{
  if (offset < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot assign a negative reference ID offset to a managed object model." userInfo:0]);
  }

  if ([self->_additionalPrivateIvars[1] longValue] != offset)
  {

    *(self->_additionalPrivateIvars + 1) = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:offset];
  }
}

@end