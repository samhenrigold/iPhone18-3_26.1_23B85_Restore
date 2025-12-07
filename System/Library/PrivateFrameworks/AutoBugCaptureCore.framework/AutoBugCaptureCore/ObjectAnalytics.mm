@interface ObjectAnalytics
- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache;
- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit;
- (id)_firstLastHappened:(BOOL)happened;
- (id)createEntityForEntityName:(id)name;
- (id)createTemporaryEntityForEntityName:(id)name;
- (id)fetchAllEntityDictionariesWithProperties:(id)properties;
- (id)fetchEntityDictionariesWithProperties:(id)properties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit;
- (id)getDescriptionForName:(id)name;
- (int64_t)removeEntitiesMatching:(id)matching;
- (unint64_t)countEntitiesMatching:(id)matching;
- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties;
- (void)moveTemporaryEntityToMainContext:(id)context;
- (void)refresh:(id)refresh;
- (void)removeEntities:(id)entities;
@end

@implementation ObjectAnalytics

- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache
{
  workspaceCopy = workspace;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ObjectAnalytics;
  v10 = [(ObjectAnalytics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->wspace, workspace);
    v11->managedCache = 0;
    objc_storeStrong(&v11->entityName, name);
  }

  return v11;
}

- (id)fetchAllEntityDictionariesWithProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v5 setName:@"objectID"];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v5 setExpression:expressionForEvaluatedObject];

  [v5 setExpressionResultType:2000];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  if ([propertiesCopy count])
  {
    [v7 addObjectsFromArray:propertiesCopy];
  }

  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v8 setResultType:2];
  [v8 setAllocationType:1];
  [v8 setPropertiesToFetch:v7];
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v16 = 0;
  v10 = [mainObjectContext executeFetchRequest:v8 error:&v16];
  v11 = v16;

  if (v11)
  {
    v13 = objectanalyticsHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Failure to fetch object IDs %@", buf, 0xCu);
    }

    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  return v14;
}

- (id)fetchEntityDictionariesWithProperties:(id)properties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit
{
  v27 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v13 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v13 setName:@"objectID"];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v13 setExpression:expressionForEvaluatedObject];

  [v13 setExpressionResultType:2000];
  v15 = [MEMORY[0x277CBEB18] arrayWithObject:v13];
  if ([propertiesCopy count])
  {
    [v15 addObjectsFromArray:propertiesCopy];
  }

  v16 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v16 setResultType:2];
  [v16 setAllocationType:1];
  [v16 setPropertiesToFetch:v15];
  if (predicateCopy)
  {
    [v16 setPredicate:predicateCopy];
  }

  if (descriptorsCopy)
  {
    [v16 setSortDescriptors:descriptorsCopy];
  }

  if (limit)
  {
    [v16 setFetchLimit:limit];
  }

  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v24 = 0;
  v18 = [mainObjectContext executeFetchRequest:v16 error:&v24];
  v19 = v24;

  if (v19)
  {
    v21 = objectanalyticsHandle(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_ERROR, "Failure to fetch object IDs %@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  return v22;
}

- (id)_firstLastHappened:(BOOL)happened
{
  v4 = [(ObjectAnalytics *)self _fetch:0 sortDesc:0];
  v5 = v4;
  if (v4 && [v4 count])
  {
    if (happened)
    {
      [v5 objectAtIndex:0];
    }

    else
    {
      [v5 lastObject];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:nameCopy inManagedObjectContext:mainObjectContext];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTemporaryEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:mainObjectContext];
    v7 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v6 insertIntoManagedObjectContext:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)moveTemporaryEntityToMainContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  isKindOfClass = context;
  v5 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    [mainObjectContext insertObject:v5];
  }

  else
  {
    mainObjectContext = objectanalyticsHandle(isKindOfClass);
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 description];
      v8 = 136315138;
      uTF8String = [v7 UTF8String];
      _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "Invalid object %s", &v8, 0xCu);
    }
  }
}

- (id)getDescriptionForName:(id)name
{
  v3 = MEMORY[0x277CBE408];
  wspace = self->wspace;
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)wspace mainObjectContext];
  v7 = [v3 entityForName:nameCopy inManagedObjectContext:mainObjectContext];

  return v7;
}

- (void)refresh:(id)refresh
{
  refreshCopy = refresh;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v6 = mainObjectContext;
  if (mainObjectContext)
  {
    if (refreshCopy)
    {
      [mainObjectContext refreshObject:refreshCopy mergeChanges:0];
    }
  }

  else
  {
    v7 = objectanalyticsHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "moc is nil", v8, 2u);
    }
  }
}

- (void)removeEntities:(id)entities
{
  v18 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = entitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          [mainObjectContext deleteObject:{*(*(&v12 + 1) + 8 * i), v12}];
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }

    [(AnalyticsWorkspace *)self->wspace save];
  }

  else
  {
    v11 = objectanalyticsHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
    }
  }
}

- (unint64_t)countEntitiesMatching:(id)matching
{
  v20 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = matchingCopy;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v11 = objectanalyticsHandle(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      v9 = 0;
      goto LABEL_17;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBE428]);
    v8 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
    [v7 setEntity:v8];

    [v7 setPredicate:v5];
    v17 = 0;
    v9 = [mainObjectContext countForFetchRequest:v7 error:&v17];
    v10 = v17;
    v11 = v10;
    if (v10)
    {
      v12 = objectanalyticsHandle(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 description];
        uTF8String = [v13 UTF8String];
        *buf = 136315138;
        v19 = uTF8String;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "error counting entities: %s", buf, 0xCu);
      }
    }

    else
    {
      v15 = objectanalyticsHandle(0);
      v12 = v15;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v19 = v9;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "counted %ld entities", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "an error occrred counting entities matching: %@", buf, 0xCu);
      }
    }

    v9 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  mainObjectContext = objectanalyticsHandle(matchingCopy);
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (int64_t)removeEntitiesMatching:(id)matching
{
  v24 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  v5 = matchingCopy;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (mainObjectContext)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBE428]);
      v8 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
      [v7 setEntity:v8];

      [v7 setPredicate:v5];
      v9 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v7];
      [v9 setResultType:2];
      v21 = 0;
      v10 = [mainObjectContext executeRequest:v9 error:&v21];
      v11 = v21;
      v12 = v11;
      if (v11)
      {
        v13 = objectanalyticsHandle(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [v12 description];
          uTF8String = [v14 UTF8String];
          *buf = 136315138;
          v23 = uTF8String;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "error batch deleting: %s", buf, 0xCu);
        }

        integerValue = 0;
      }

      else
      {
        result = [v10 result];
        integerValue = [result integerValue];

        v19 = objectanalyticsHandle(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v23 = integerValue;
          _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_DEFAULT, "batch deleted %ld entities", buf, 0xCu);
        }

        [(AnalyticsWorkspace *)self->wspace save];
      }
    }

    else
    {
      v12 = objectanalyticsHandle(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      integerValue = 0;
    }
  }

  else
  {
    mainObjectContext = objectanalyticsHandle(matchingCopy);
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
    }

    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties
{
  v25 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  propertiesCopy = properties;
  v8 = propertiesCopy;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v10 = objectanalyticsHandle(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      unsignedIntegerValue = 0;
      goto LABEL_18;
    }

    v10 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:self->entityName];
    [v10 setPropertiesToUpdate:v8];
    [v10 setPredicate:matchingCopy];
    [v10 setResultType:2];
    v22 = 0;
    v11 = [mainObjectContext executeRequest:v10 error:&v22];
    v12 = v22;
    v13 = v12;
    if (v12)
    {
      result = objectanalyticsHandle(v12);
      if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
      {
        v15 = [v13 description];
        uTF8String = [v15 UTF8String];
        *buf = 136315138;
        v24 = uTF8String;
        _os_log_impl(&dword_241804000, result, OS_LOG_TYPE_ERROR, "batch update return error: %s", buf, 0xCu);
      }
    }

    else
    {
      result = [v11 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result2 = [v11 result];
        v19 = [result2 count];

        if (v19 != 1)
        {
          unsignedIntegerValue = 0;
          goto LABEL_17;
        }

        result = [v11 result];
        v20 = [result objectAtIndex:0];
        unsignedIntegerValue = [v20 unsignedIntegerValue];

LABEL_16:
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_16;
  }

  mainObjectContext = objectanalyticsHandle(propertiesCopy);
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_19:

  return unsignedIntegerValue;
}

- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit
{
  v24[1] = *MEMORY[0x277D85DE8];
  _fetchCopy = _fetch;
  descCopy = desc;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v11 = mainObjectContext;
  if (!mainObjectContext)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if (!descCopy)
  {
    mainObjectContext = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:1];
    descCopy = mainObjectContext;
  }

  if (self->managedCache)
  {
    v12 = 0;
  }

  else
  {
    v14 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:v11];
    v15 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v15 setEntity:v14];
    if (_fetchCopy)
    {
      [v15 setPredicate:_fetchCopy];
    }

    else
    {
      [v15 setReturnsObjectsAsFaults:0];
    }

    v24[0] = descCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v15 setSortDescriptors:v16];

    if (limit)
    {
      [v15 setFetchLimit:limit];
    }

    v21 = 0;
    v13 = [v11 executeFetchRequest:v15 error:&v21];
    v12 = v21;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  v17 = objectanalyticsHandle(mainObjectContext);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v12 description];
    uTF8String = [v18 UTF8String];
    *buf = 136315138;
    v23 = uTF8String;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "fetch failed, err %s", buf, 0xCu);
  }

  v13 = 0;
LABEL_16:

LABEL_17:

  return v13;
}

@end