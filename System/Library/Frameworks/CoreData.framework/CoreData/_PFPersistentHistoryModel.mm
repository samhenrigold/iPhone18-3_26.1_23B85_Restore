@interface _PFPersistentHistoryModel
+ (id)_retainedTombstonesForEntity:(uint64_t)entity;
+ (id)newPersistentHistoryManagedObjectModelForSQLModel:(uint64_t)model options:(void *)options;
+ (id)newPersistentHistorySQLModelForSQLModel:(uint64_t)model options:(void *)options;
+ (uint64_t)_hasTombstonesInUserInfo:(uint64_t)info;
+ (uint64_t)_tombstonesColumnsForEntity:(uint64_t)entity;
+ (unint64_t)_maxCountOfTombstonesInModel:(uint64_t)model;
+ (void)_entitiesWithTooManyTombstonesInModel:(uint64_t)model;
+ (void)createModelsWithTombstoneCount:(uint64_t)count andOptions:(uint64_t)options;
+ (void)initialize;
+ (void)resetCaches;
@end

@implementation _PFPersistentHistoryModel

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {

    objc_opt_self();
  }
}

+ (void)resetCaches
{
  objc_opt_self();
  os_unfair_lock_lock_with_options();

  _historySQLModelCache = 0;
  _historyModelCache = 0;

  os_unfair_lock_unlock(&_historyModelLock);
}

+ (id)newPersistentHistoryManagedObjectModelForSQLModel:(uint64_t)model options:(void *)options
{
  objc_opt_self();
  v3 = [_PFPersistentHistoryModel _maxCountOfTombstonesInModel:options];
  if (v3 >= 0x65)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPersistentHistoryTrackingKey only supports a max of 100 tombstones per entity in the Model" userInfo:{+[_PFPersistentHistoryModel _entitiesWithTooManyTombstonesInModel:](_PFPersistentHistoryModel, options)}];
    objc_exception_throw(v8);
  }

  v4 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  os_unfair_lock_lock_with_options();
  if (![_historyModelCache objectForKey:v5])
  {
    [_PFPersistentHistoryModel createModelsWithTombstoneCount:v4 andOptions:?];
  }

  v6 = [_historyModelCache objectForKey:v5];
  os_unfair_lock_unlock(&_historyModelLock);
  return v6;
}

+ (unint64_t)_maxCountOfTombstonesInModel:(uint64_t)model
{
  v15 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (a2)
  {
    a2 = a2[4];
  }

  v3 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(a2);
      }

      v8 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:?];
      if ([v8 count] > v5)
      {
        v5 = [v8 count];
      }
    }

    v4 = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5;
}

+ (void)_entitiesWithTooManyTombstonesInModel:(uint64_t)model
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (a2)
  {
    a2 = a2[4];
  }

  v4 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v8];
        v10 = [v9 count];
        if (v10 >= 0x65)
        {
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", v10), objc_msgSend(v8, "name")}];
        }
      }

      v5 = [a2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (void)createModelsWithTombstoneCount:(uint64_t)count andOptions:(uint64_t)options
{
  v54[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  context = objc_autoreleasePoolPush();
  if (!_historyModelCache)
  {
    _historyModelCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (!_historySQLModelCache)
  {
    _historySQLModelCache = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = objc_alloc_init(NSEntityDescription);
  v4 = objc_alloc_init(NSEntityDescription);
  v5 = objc_alloc_init(NSEntityDescription);
  v6 = [[NSRelationshipDescription alloc] _initWithName:@"BUNDLEIDTS"];
  [v6 setDestinationEntity:v5];
  v46 = v6;
  [v6 setMaxCount:1];
  v7 = [[NSRelationshipDescription alloc] _initWithName:@"PROCESSIDTS"];
  [v7 setDestinationEntity:v5];
  v45 = v7;
  [v7 setMaxCount:1];
  v8 = [[NSRelationshipDescription alloc] _initWithName:@"CONTEXTNAMETS"];
  [v8 setDestinationEntity:v5];
  v44 = v8;
  [v8 setMaxCount:1];
  v9 = [[NSRelationshipDescription alloc] _initWithName:@"AUTHORTS"];
  [v9 setDestinationEntity:v5];
  v43 = v9;
  [v9 setMaxCount:1];
  v10 = [[NSAttributeDescription alloc] _initWithName:@"NAME" type:700];
  [(NSEntityDescription *)v5 setName:@"TRANSACTIONSTRING"];
  v54[0] = v10;
  -[NSEntityDescription setProperties:](v5, "setProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1]);
  v29 = v10;
  name = [v10 name];
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&name count:1];
  v30 = v5;
  -[NSEntityDescription setUniquenessConstraints:](v5, "setUniquenessConstraints:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1]);
  v42 = [[NSAttributeDescription alloc] _initWithName:@"BUNDLEID" type:700];
  v41 = [[NSAttributeDescription alloc] _initWithName:@"PROCESSID" type:700];
  v40 = [[NSAttributeDescription alloc] _initWithName:@"CONTEXTNAME" type:700];
  v39 = [[NSAttributeDescription alloc] _initWithName:@"AUTHOR" type:700];
  v38 = [[NSAttributeDescription alloc] _initWithName:@"QUERYGEN" type:1000];
  v37 = [[NSAttributeDescription alloc] _initWithName:@"TIMESTAMP" type:500];
  v11 = v3;
  [(NSEntityDescription *)v3 setName:@"TRANSACTION"];
  v36 = [[NSAttributeDescription alloc] _initWithName:@"ENTITY" type:300];
  v35 = [[NSAttributeDescription alloc] _initWithName:@"ENTITYPK" type:300];
  v34 = [[NSAttributeDescription alloc] _initWithName:@"CHANGETYPE" type:100];
  v33 = [[NSAttributeDescription alloc] _initWithName:@"COLUMNS" type:1000];
  v12 = v4;
  [(NSEntityDescription *)v4 setName:@"CHANGE"];
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:options];
  optionsCopy = options;
  if (options >= 1)
  {
    v14 = 0;
    do
    {
      v15 = [NSAttributeDescription alloc];
      1000 = [(NSAttributeDescription *)v15 _initWithName:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] type:@"TOMBSTONE", v14), 1000];
      [v13 addObject:1000];

      ++v14;
    }

    while (options != v14);
  }

  v17 = [[NSRelationshipDescription alloc] _initWithName:@"CHANGES"];
  [v17 setDeleteRule:2];
  v18 = [[NSRelationshipDescription alloc] _initWithName:@"TRANSACTIONID"];
  [v17 setInverseRelationship:v18];
  [v17 setDestinationEntity:v4];
  [v18 setInverseRelationship:v17];
  [v18 setDestinationEntity:v3];
  [v18 setMaxCount:1];
  [v18 setMinCount:1];
  v51[0] = v42;
  v51[1] = v41;
  v51[2] = v40;
  v51[3] = v39;
  v51[4] = v46;
  v51[5] = v45;
  v51[6] = v44;
  v51[7] = v43;
  v51[8] = v37;
  v51[9] = v38;
  v51[10] = v17;
  -[NSEntityDescription setProperties:](v3, "setProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:11]);
  v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v36, v35, v34, v33, 0}];
  [v19 addObjectsFromArray:v13];
  [v19 addObject:v18];
  [(NSEntityDescription *)v4 setProperties:v19];
  v20 = [[NSFetchIndexElementDescription alloc] initWithProperty:v37 collationType:0];
  v21 = [NSFetchIndexDescription alloc];
  v50 = v20;
  v22 = -[NSFetchIndexDescription initWithName:elements:](v21, "initWithName:elements:", @"TransactionTimestampIndex", [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1]);
  v23 = [[NSFetchIndexElementDescription alloc] initWithProperty:v39 collationType:0];
  v24 = [NSFetchIndexDescription alloc];
  v49 = v23;
  v25 = -[NSFetchIndexDescription initWithName:elements:](v24, "initWithName:elements:", @"TransactionAuthorIndex", [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1]);
  v48[0] = v25;
  v48[1] = v22;
  -[NSEntityDescription setIndexes:](v11, "setIndexes:", [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2]);

  [(NSEntityDescription *)v11 _flattenProperties];
  [(NSEntityDescription *)v11 _createCachesAndOptimizeState];
  [(NSEntityDescription *)v12 _flattenProperties];
  [(NSEntityDescription *)v12 _createCachesAndOptimizeState];
  [(NSEntityDescription *)v30 _flattenProperties];
  [(NSEntityDescription *)v30 _createCachesAndOptimizeState];
  v47[0] = v11;
  v47[1] = v12;
  v47[2] = v30;
  v26 = -[NSManagedObjectModel _initWithEntities:]([NSManagedObjectModel alloc], "_initWithEntities:", [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3]);
  [v26 _setModelsReferenceIDOffset:{+[_PFPersistentHistoryModel ancillaryEntityOffset](_PFPersistentHistoryModel, "ancillaryEntityOffset")}];
  [v26 _setIsEditable:0];
  v27 = [[NSSQLModel alloc] initWithManagedObjectModel:v26];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:optionsCopy];
  [_historyModelCache setObject:v26 forKey:v28];
  [_historySQLModelCache setObject:v27 forKey:v28];

  objc_autoreleasePoolPop(context);
}

+ (id)newPersistentHistorySQLModelForSQLModel:(uint64_t)model options:(void *)options
{
  objc_opt_self();
  v3 = [_PFPersistentHistoryModel _maxCountOfTombstonesInModel:options];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  os_unfair_lock_lock_with_options();
  if (![_historySQLModelCache objectForKey:v4])
  {
    [_PFPersistentHistoryModel createModelsWithTombstoneCount:v3 andOptions:?];
  }

  v5 = [_historySQLModelCache objectForKey:v4];
  os_unfair_lock_unlock(&_historyModelLock);
  return v5;
}

+ (id)_retainedTombstonesForEntity:(uint64_t)entity
{
  objc_opt_self();
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  while (1)
  {
    while (!a2)
    {
      __58___PFPersistentHistoryModel__retainedTombstonesForEntity___block_invoke(0, v4);
    }

    v5 = a2[20];
    __58___PFPersistentHistoryModel__retainedTombstonesForEntity___block_invoke(a2, v4);
    if (!v5)
    {
      break;
    }

    a2 = a2[20];
  }

  array = [v4 array];

  objc_autoreleasePoolPop(v3);
  return array;
}

+ (uint64_t)_hasTombstonesInUserInfo:(uint64_t)info
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a2);
        }

        v7 = [objc_msgSend(*(*(&v9 + 1) + 8 * v6) "userInfo")];
        if (v7)
        {
          v8 = v7;
          if ([v7 isNSString])
          {
            if ([v8 length])
            {
              return 1;
            }
          }
        }

        ++v6;
      }

      while (v4 != v6);
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

+ (uint64_t)_tombstonesColumnsForEntity:(uint64_t)entity
{
  objc_opt_self();
  v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  if (!a2)
  {
    goto LABEL_3;
  }

  while (a2[20])
  {
    do
    {
LABEL_3:
      __57___PFPersistentHistoryModel__tombstonesColumnsForEntity___block_invoke(a2, v3);
      a2 = [a2 rootEntity];
    }

    while (!a2);
  }

  __57___PFPersistentHistoryModel__tombstonesColumnsForEntity___block_invoke(a2, v3);
  array = [v3 array];

  return array;
}

@end