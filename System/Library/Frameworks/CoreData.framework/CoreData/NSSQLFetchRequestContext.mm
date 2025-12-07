@interface NSSQLFetchRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSFetchRequest)request;
- (NSSQLFetchRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core;
- (NSSQLiteStatement)fetchStatement;
- (id)_createStatement;
- (id)createChildContextForNestedFetchRequest:(id)request;
- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity;
- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity;
- (void)_fireFaultsForValue:(void *)result;
- (void)_setupBindVariablesForCachedStatement:(void *)statement usingValues:;
- (void)addFaultsThatWereFired:(void *)result;
- (void)addObjectIDsToRegister:(void *)result;
- (void)addObjectsToAwaken:(void *)result;
- (void)dealloc;
- (void)executeEpilogue;
- (void)executePrologue;
- (void)setFetchStatement:(id)statement;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation NSSQLFetchRequestContext

- (void)executePrologue
{
  predicate = [(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] predicate];
  if (self && predicate)
  {
    [(NSPredicate *)predicate acceptVisitor:self flags:1];
  }

  havingPredicate = [(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] havingPredicate];
  if (self && havingPredicate)
  {
    [(NSPredicate *)havingPredicate acceptVisitor:self flags:1];
  }

  [(NSSQLFetchRequestContext *)self request];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    substitutionVariables = [(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] substitutionVariables];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__NSSQLFetchRequestContext_executePrologue__block_invoke;
    v6[3] = &unk_1E6EC2CD8;
    v6[4] = self;
    [substitutionVariables enumerateKeysAndObjectsUsingBlock:v6];
  }
}

- (NSFetchRequest)request
{
  v3.receiver = self;
  v3.super_class = NSSQLFetchRequestContext;
  return [(NSSQLStoreRequestContext *)&v3 persistentStoreRequest];
}

- (id)_createStatement
{
  selfCopy = self;
  if (self)
  {
    self = self->super._sqlCore;
  }

  result = [(NSSQLiteAdapter *)[(NSSQLFetchRequestContext *)self adapter] newSelectStatementWithFetchRequestContext:selfCopy ignoreInheritance:selfCopy->_isFaultRequest];
  if (result)
  {
    fetchPlan = selfCopy->_fetchPlan;
    flags = fetchPlan->flags;
    if ((*&flags & 0x18) == 0x10)
    {
      fetchPlan->statement_entity = *(result + 6);
      fetchPlan->flags = (*&flags & 0xFFFFFFF6);
    }
  }

  return result;
}

- (NSSQLiteStatement)fetchStatement
{
  statement = self->_statement;
  if (statement)
  {
    return statement;
  }

  if (![(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] _isCachingFetchRequest])
  {
    statement = [(NSSQLFetchRequestContext *)self _createStatement];
    self->_statement = statement;
    return statement;
  }

  request = [(NSSQLFetchRequestContext *)self request];
  v5 = [(NSFetchRequest *)request _cachedInfoForRequestor:self->super._connection];
  if (v5)
  {
    v6 = v5;
    if (-[NSFetchRequest fetchLimit](request, "fetchLimit") && ![-[NSFetchRequest substitutionVariables](request "substitutionVariables")])
    {
      v10 = *(v6 + 16);
      v8 = (v6 + 16);
      v7 = v10;
      if (!v10 || !v7[8])
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = *(v6 + 8);
      v8 = (v6 + 8);
      v7 = v9;
      if (!v9 || !v7[8])
      {
LABEL_12:

        v7 = 0;
        *v8 = 0;
      }
    }

    v11 = v7;
    statement = v11;
    if (v11)
    {
      self->_isUsingCachedStatement = 1;
      fetchPlan = self->_fetchPlan;
      flags = fetchPlan->flags;
      if ((*&flags & 0x18) == 0x10)
      {
        fetchPlan->statement_entity = v11->_fakeEntityForFetch;
        fetchPlan->flags = (*&flags & 0xFFFFFFF6);
      }

      prefetchingSubstitutionVariables = self->_prefetchingSubstitutionVariables;
      if (prefetchingSubstitutionVariables)
      {
        [(NSSQLFetchRequestContext *)self _setupBindVariablesForCachedStatement:v11 usingValues:prefetchingSubstitutionVariables];
      }

      else
      {
        [(NSSQLFetchRequestContext *)self _setupBindVariablesForCachedStatement:v11 usingValues:[(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] substitutionVariables]];
      }
    }

    v15 = statement;
    if (statement)
    {
      return statement;
    }
  }

  _createStatement = [(NSSQLFetchRequestContext *)self _createStatement];
  statement = _createStatement;
  self->_statement = _createStatement;
  if (!_createStatement || (cachedStatementInfo = _createStatement->_cachedStatementInfo) == 0 || !cachedStatementInfo->_isIneligibleForCaching)
  {
    if ([(NSFetchRequest *)[(NSSQLFetchRequestContext *)self request] _isCachingFetchRequest])
    {
      self->_isUsingCachedStatement = 1;
      request2 = [(NSSQLFetchRequestContext *)self request];
      v19 = [(NSFetchRequest *)request2 _cachedInfoForRequestor:self->super._connection];
      if (!v19)
      {
        v19 = [[NSCachedFetchRequestThunk alloc] initForConnection:self->super._connection];
        [(NSFetchRequest *)request2 _cacheInfo:v19 forRequestor:self->super._connection];
      }

      if (-[NSFetchRequest fetchLimit](request2, "fetchLimit") && ![-[NSFetchRequest substitutionVariables](request2 "substitutionVariables")])
      {
        if (v19)
        {
          v21 = 16;
          goto LABEL_32;
        }
      }

      else if (v19)
      {
        v21 = 8;
LABEL_32:
        objc_setProperty_nonatomic(v19, v20, statement, v21);
      }
    }
  }

  return statement;
}

- (void)executeEpilogue
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && [(NSMutableSet *)self->_objectIDsToRegister allObjects])
  {
    [(NSSQLCore *)self->super._sqlCore managedObjectContextDidRegisterObjectsWithIDs:[(NSMutableSet *)self->_objectIDsToRegister allObjects] generation:[(NSManagedObjectContext *)self->super._context _queryGenerationToken]];
  }

  if (!-[NSFetchRequest resultType](-[NSSQLFetchRequestContext request](self, "request"), "resultType") && !-[NSFetchRequest returnsObjectsAsFaults](-[NSSQLFetchRequestContext request](self, "request"), "returnsObjectsAsFaults") && [-[NSSQLStoreRequestContext result](self "result")])
  {
    v3 = 0;
    do
    {
      v4 = [-[NSSQLStoreRequestContext result](self "result")];
      [(NSMutableSet *)self->_objectsToAwaken removeObject:v4];
      if ([-[NSMutableArray objectAtIndex:](self->_resultFaultsThatWereFired objectAtIndex:{v3), "BOOLValue"}])
      {
        v4[4] |= 0x1000u;
        [v4 awakeFromFetch];
        v4[4] &= ~0x1000u;
      }

      ++v3;
    }

    while (v3 < [-[NSSQLStoreRequestContext result](self "result")]);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objectsToAwaken = self->_objectsToAwaken;
  v6 = [(NSMutableSet *)objectsToAwaken countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(objectsToAwaken);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v10[4] |= 0x1000u;
        [v10 awakeFromFetch];
        v10[4] &= ~0x1000u;
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)objectsToAwaken countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dealloc
{
  self->_externalDataReferencesDirectory = 0;

  self->_externalDataLinksDirectory = 0;
  self->_fileBackedFuturesDirectory = 0;

  self->_sqlEntity = 0;
  self->_faultHandler = 0;

  self->_sqlModel = 0;
  self->_objectIDsToRegister = 0;

  self->_objectsToAwaken = 0;
  self->_parentContext = 0;

  self->_statement = 0;
  self->_originalRequest = 0;
  fetchPlan = self->_fetchPlan;
  if (fetchPlan)
  {
  }

  self->_concurrentFetchingPipelineRows = 0;
  self->_prefetchingSubstitutionVariables = 0;

  self->_resultFaultsThatWereFired = 0;
  v4.receiver = self;
  v4.super_class = NSSQLFetchRequestContext;
  [(NSSQLStoreRequestContext *)&v4 dealloc];
}

- (NSSQLFetchRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core
{
  requestCopy = request;
  v58 = *MEMORY[0x1E69E9840];
  if (BYTE1(dword_1ED4BEEC8) != 1)
  {
    goto LABEL_6;
  }

  if (![request fetchBatchSize])
  {
    goto LABEL_6;
  }

  if ([requestCopy resultType] != 2)
  {
    goto LABEL_6;
  }

  if ([objc_msgSend(requestCopy "propertiesToGroupBy")])
  {
    goto LABEL_6;
  }

  returnsDistinctResults = [requestCopy returnsDistinctResults];
  if (returnsDistinctResults)
  {
    goto LABEL_6;
  }

  v25 = returnsDistinctResults;
  if (![objc_msgSend(requestCopy "propertiesToFetch")])
  {
    v10 = 1;
    goto LABEL_7;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [requestCopy propertiesToFetch];
  v26 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (!v26)
  {
LABEL_56:
    if ([_PFRoutines BOOLValueForOverride:?])
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = requestCopy;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch does not include required 'self' or 'objectID' property: %@\n", buf, 0xCu);
      }

      v34 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v56 = requestCopy;
        v35 = "CoreData: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch does not include required 'self' or 'objectID' property: %@";
LABEL_71:
        _os_log_fault_impl(&dword_18565F000, v34, OS_LOG_TYPE_FAULT, v35, buf, 0xCu);
      }

      goto LABEL_6;
    }

    v41 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_83;
    }

    v42 = _pflogging_catastrophic_mode;
    v43 = _PFLogGetLogStream(1);
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        *buf = 138412290;
        v56 = requestCopy;
LABEL_90:
        _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch does not include required 'self' or 'objectID' property: %@\n", buf, 0xCu);
      }
    }

    else if (v44)
    {
      *buf = 138412290;
      v56 = requestCopy;
      goto LABEL_90;
    }

LABEL_83:
    _NSCoreDataLog_console(1, "Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch does not include required 'self' or 'objectID' property: %@", requestCopy);
LABEL_86:
    objc_autoreleasePoolPop(v41);
    goto LABEL_6;
  }

  v27 = v26;
  v28 = 0;
  v10 = v25 ^ 1;
  v29 = *v52;
LABEL_40:
  v30 = 0;
  while (1)
  {
    if (*v52 != v29)
    {
      objc_enumerationMutation(obj);
    }

    v31 = *(*(&v51 + 1) + 8 * v30);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v31 "expression")] == 14 || objc_msgSend(objc_msgSend(v31, "expression"), "expressionType") == 4))
    {
      v36 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v37 = _pflogging_catastrophic_mode;
        v38 = _PFLogGetLogStream(1);
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
        if (v37)
        {
          if (v39)
          {
            *buf = 138412290;
            v56 = v31;
            goto LABEL_88;
          }
        }

        else if (v39)
        {
          *buf = 138412290;
          v56 = v31;
LABEL_88:
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error: Returning unbatched results for unsupported NSExpression in propertiesToFetch: %@\n", buf, 0xCu);
        }
      }

      _NSCoreDataLog_console(1, "Returning unbatched results for unsupported NSExpression in propertiesToFetch: %@", v31);
      objc_autoreleasePoolPop(v36);
      [requestCopy setFetchBatchSize:0];
      goto LABEL_6;
    }

    v28 = v28 || ([objc_msgSend(v31 "name")] & 1) != 0 || objc_msgSend(objc_msgSend(v31, "name"), "isEqualToString:", @"self");
    if ([objc_msgSend(v31 "name")])
    {
      break;
    }

    if (v27 == ++v30)
    {
      v32 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      v27 = v32;
      if (!v32)
      {
        if (v28)
        {
          goto LABEL_7;
        }

        goto LABEL_56;
      }

      goto LABEL_40;
    }
  }

  if (![_PFRoutines BOOLValueForOverride:?])
  {
    v41 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v45 = _pflogging_catastrophic_mode;
      v46 = _PFLogGetLogStream(1);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        if (v47)
        {
          *buf = 138412290;
          v56 = requestCopy;
LABEL_92:
          _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch includes sentinel value 'isDeleted' property: %@\n", buf, 0xCu);
        }
      }

      else if (v47)
      {
        *buf = 138412290;
        v56 = requestCopy;
        goto LABEL_92;
      }
    }

    _NSCoreDataLog_console(1, "Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch includes sentinel value 'isDeleted' property: %@", requestCopy);
    goto LABEL_86;
  }

  v40 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v56 = requestCopy;
    _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: fault: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch includes sentinel value 'isDeleted' property: %@\n", buf, 0xCu);
  }

  v34 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v56 = requestCopy;
    v35 = "CoreData: Returning unbatched results for NSFetchRequest with NSDictionaryResultType and fetchBatchSize > 0 however propertiesToFetch includes sentinel value 'isDeleted' property: %@";
    goto LABEL_71;
  }

LABEL_6:
  v10 = 0;
LABEL_7:
  if (![requestCopy fetchBatchSize] || ((objc_msgSend(requestCopy, "resultType") != 0) & ~v10) != 0 || objc_msgSend(requestCopy, "allocationType") == 1 || objc_msgSend(requestCopy, "allocationType") == 2)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v24 = [requestCopy copy];
    v11 = 1;
    [v24 setResultType:1];
    [v24 setIncludesPropertyValues:0];
    v12 = requestCopy;
    requestCopy = v24;
  }

  if ([requestCopy resultType] == 1)
  {
    if (!v12)
    {
      v12 = requestCopy;
      requestCopy = [requestCopy copy];
    }

    [requestCopy setPropertiesToFetch:0];
  }

  v50.receiver = self;
  v50.super_class = NSSQLFetchRequestContext;
  v13 = [(NSSQLStoreRequestContext *)&v50 initWithRequest:requestCopy context:context sqlCore:core];
  if (v13)
  {
    if (!core)
    {
      externalDataReferencesDirectory = [0 externalDataReferencesDirectory];
      v15 = 0;
      v13->_externalDataReferencesDirectory = externalDataReferencesDirectory;
      goto LABEL_22;
    }

    if ((*(core + 201) & 0x40) == 0)
    {
      v13->_externalDataReferencesDirectory = [core externalDataReferencesDirectory];
      if (!atomic_load(core + 21))
      {
        [core externalDataReferencesDirectory];
      }

      v15 = atomic_load(core + 22);
LABEL_22:
      v13->_externalDataLinksDirectory = v15;
    }

    v13->_fileBackedFuturesDirectory = [core fileBackedFuturesDirectory];
    if (core)
    {
      v13->_fileProtectionLevel = (*(core + 50) >> 2) & 7;
      v13->_faultHandler = *(core + 6);
      v16 = _sqlCoreLookupSQLEntityForEntityDescription(core, [requestCopy entity]);
    }

    else
    {
      v13->_fileProtectionLevel = 0;
      v16 = 0;
      v13->_faultHandler = 0;
    }

    v17 = v16;
    v13->_sqlEntity = v17;
    v13->_sqlModel = [(NSSQLEntity *)v17 model];
    v13->_isFaultRequest = 0;
    v13->_originalRequest = v12;
    v13->_shouldUseBatches = v11;
    v13->_fetchPlan = fetchPlanAllocateInitialize([(NSSQLFetchRequestContext *)v13 request], &v13->super._sqlCore->super, v13->super._context);
    resultType = [requestCopy resultType];
    returnsObjectsAsFaults = [requestCopy returnsObjectsAsFaults];
    if (resultType == 1)
    {
      v20 = 4;
    }

    else if (resultType == 2)
    {
      v20 = 16;
    }

    else
    {
      v21 = returnsObjectsAsFaults;
      v22 = [objc_msgSend(requestCopy "propertiesToFetch")];
      if (v21)
      {
        v20 = 0;
      }

      else
      {
        v20 = 12;
      }

      if (v22)
      {
        v20 = 20;
      }
    }

    v13->_fetchPlan->flags = (*&v13->_fetchPlan->flags & 0xFFFFFFE3 | v20);
  }

  return v13;
}

- (id)createChildContextForNestedFetchRequest:(id)request
{
  v5 = [NSSQLFetchRequestContext alloc];
  if (self)
  {
    connection = self->super._connection;
    context = self->super._context;
    sqlCore = self->super._sqlCore;
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  context = 0;
  connection = 0;
  sqlCore = 0;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v9 = [(NSSQLFetchRequestContext *)v5 initWithRequest:request context:context sqlCore:sqlCore];
  if (v9)
  {
    v9->_parentContext = self;
    [(NSSQLStoreRequestContext *)v9 setConnection:?];
  }

  return v9;
}

- (id)inverseIsToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  if (self)
  {
    self = self->super._connection;
  }

  prefetchRequestCache = [(NSSQLiteConnection *)self prefetchRequestCache];

  return [(NSSQLitePrefetchRequestCache *)prefetchRequestCache inverseIsToOnePrefetchRequestForRelationshipNamed:named onEntity:entity];
}

- (id)manyToOnePrefetchRequestForRelationshipNamed:(id)named onEntity:(id)entity
{
  if (self)
  {
    self = self->super._connection;
  }

  prefetchRequestCache = [(NSSQLiteConnection *)self prefetchRequestCache];

  return [(NSSQLitePrefetchRequestCache *)prefetchRequestCache manyToOnePrefetchRequestForRelationshipNamed:named onEntity:entity];
}

- (id)manyToManyPrefetchRequestsForRelationshipNamed:(id)named onEntity:(id)entity
{
  if (self)
  {
    self = self->super._connection;
  }

  prefetchRequestCache = [(NSSQLiteConnection *)self prefetchRequestCache];

  return [(NSSQLitePrefetchRequestCache *)prefetchRequestCache manyToManyPrefetchRequestsForRelationshipNamed:named onEntity:entity];
}

- (void)addObjectIDsToRegister:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[19];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v3[19] = v4;
    }

    return [v4 addObjectsFromArray:a2];
  }

  return result;
}

- (void)addObjectsToAwaken:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[20];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v3[20] = v4;
    }

    return [v4 addObjectsFromArray:a2];
  }

  return result;
}

- (void)_setupBindVariablesForCachedStatement:(void *)statement usingValues:
{
  v66 = *MEMORY[0x1E69E9840];
  if (a2 && (v4 = a2[7]) != 0)
  {
    v5 = *(v4 + 8);
    v49 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
    v49 = 0;
  }

  bindVariables = [a2 bindVariables];
  v50 = [v5 count];
  if (v50)
  {
    v7 = 0;
    v47 = v5;
    do
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = v7 + 1;
      v10 = [v5 objectAtIndex:v9];
      v11 = objc_msgSend_valueForKey_(statement);
      if (!v11)
      {
        v43 = MEMORY[0x1E695DF30];
        v44 = *MEMORY[0x1E695D930];
        v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8);
        goto LABEL_74;
      }

      v12 = v11;
      if ([v11 expressionType])
      {
        v43 = MEMORY[0x1E695DF30];
        v44 = *MEMORY[0x1E695D940];
        v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8);
        goto LABEL_74;
      }

      constantValue = [v12 constantValue];
      if (([constantValue isNSArray] & 1) != 0 || (objc_msgSend(constantValue, "isNSSet") & 1) != 0 || objc_msgSend(constantValue, "isNSOrderedSet"))
      {
        goto LABEL_68;
      }

      v14 = [bindVariables objectAtIndex:{objc_msgSend(v10, "unsignedIntegerValue")}];
      if ([v14 sqlType] != 2)
      {
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = bindVariables;
        objectID = [constantValue objectID];
        v17 = objectID;
        selfCopy = self;
        if (self)
        {
          self = self[1];
        }

        if (self == [objectID persistentStore])
        {
          _referenceData64 = [v17 _referenceData64];
        }

        else
        {
          _referenceData64 = 0;
        }

        self = selfCopy;
        bindVariables = v15;
        v5 = v47;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          longLongValue = [constantValue longLongValue];
LABEL_26:
          _referenceData64 = longLongValue;
          goto LABEL_27;
        }

        if (self)
        {
          v20 = self[1];
        }

        else
        {
          v20 = 0;
        }

        if (v20 == [constantValue persistentStore])
        {
          longLongValue = [constantValue _referenceData64];
          goto LABEL_26;
        }

        _referenceData64 = 0;
      }

LABEL_27:
      if (([v8 isEqual:@"FETCH_REQUEST_LIMIT_SUBSTITUTION"] & 1) == 0 && !objc_msgSend(v8, "isEqual:", @"FETCH_REQUEST_OFFSET_SUBSTITUTION"))
      {
        [v14 setInt64:_referenceData64];
        goto LABEL_30;
      }

LABEL_29:
      [v14 setValue:constantValue];
LABEL_30:
      v7 = v9 + 1;
    }

    while (v7 < v50);
  }

  bindIntarrays = [a2 bindIntarrays];
  v48 = [bindIntarrays count];
  if (!v48)
  {
    return;
  }

  for (i = 0; i < v48; i += 3)
  {
    v23 = [v49 objectAtIndex:i];
    v24 = [v49 objectAtIndex:i + 1];
    v25 = [v49 objectAtIndex:i + 2];
    v26 = objc_msgSend_valueForKey_(statement);
    if (!v26)
    {
      v43 = MEMORY[0x1E695DF30];
      v44 = *MEMORY[0x1E695D930];
      v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23);
      goto LABEL_74;
    }

    v27 = v26;
    if ([v26 expressionType])
    {
      v43 = MEMORY[0x1E695DF30];
      v44 = *MEMORY[0x1E695D940];
      v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23);
      goto LABEL_74;
    }

    constantValue2 = [v27 constantValue];
    if (([constantValue2 isNSArray] & 1) == 0 && (objc_msgSend(constantValue2, "isNSSet") & 1) == 0 && (objc_msgSend(constantValue2, "isNSOrderedSet") & 1) == 0)
    {
LABEL_75:
      v43 = MEMORY[0x1E695DF30];
      v44 = *MEMORY[0x1E695D940];
      v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23);
      goto LABEL_74;
    }

    v29 = [bindIntarrays objectAtIndex:{objc_msgSend(v25, "unsignedIntegerValue")}];
    if ([constantValue2 count])
    {
      memset(v57, 0, sizeof(v57));
      [constantValue2 countByEnumeratingWithState:v57 objects:v65 count:16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [_PFRoutines newArrayOfObjectIDsFromCollection:constantValue2];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_75;
        }

        v31 = constantValue2;
      }

      v30 = v31;
    }

    else
    {
      v30 = 0;
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = [v30 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (!v32)
    {
      goto LABEL_59;
    }

    v8 = v32;
    v33 = *v54;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v53 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([objc_msgSend(v35 "entity")] & 1) == 0)
        {
          v36 = objc_autoreleasePoolPush();
          if (_NSCoreDataIsOSLogEnabled(1))
          {
            v37 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v39 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v37)
            {
              if (v39)
              {
                goto LABEL_66;
              }
            }

            else if (v39)
            {
LABEL_66:
              ClassName = object_getClassName(v35);
              name = [v24 name];
              *buf = 138412802;
              v59 = v35;
              v60 = 2080;
              v61 = ClassName;
              v62 = 2112;
              v63 = name;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: oid = %@ [oid class] = %s expecting entity %@\n", buf, 0x20u);
            }
          }

          v42 = object_getClassName(v35);
          _NSCoreDataLog_console(1, "oid = %@ [oid class] = %s expecting entity %@", v35, v42, [v24 name]);
          objc_autoreleasePoolPop(v36);
          __break(1u);
LABEL_68:
          v43 = MEMORY[0x1E695DF30];
          v44 = *MEMORY[0x1E695D940];
          v45 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8);
LABEL_74:
          objc_exception_throw([v43 exceptionWithName:v44 reason:v45 userInfo:statement]);
        }
      }

      v8 = [v30 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v8);
LABEL_59:
    [v29 setValue:v30];
  }
}

- (void)setFetchStatement:(id)statement
{
  statement = self->_statement;
  self->_statement = statement;
}

- (void)_fireFaultsForValue:(void *)result
{
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return [a2 willAccessValueForKey:0];
    }

    else if (([a2 isNSArray] & 1) != 0 || (objc_msgSend(a2, "isNSSet") & 1) != 0 || (result = objc_msgSend(a2, "isNSOrderedSet"), result))
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __48__NSSQLFetchRequestContext__fireFaultsForValue___block_invoke;
      v4[3] = &unk_1E6EC5600;
      v4[4] = v3;
      return [a2 enumerateObjectsUsingBlock:v4];
    }
  }

  return result;
}

- (void)visitPredicateExpression:(id)expression
{
  expressionType = [expression expressionType];
  if (expressionType)
  {
    if (expressionType == 3 || expressionType == 4 && (sel_valueForKey_ == [expression selector] || sel_valueForKeyPath_ == objc_msgSend(expression, "selector")))
    {
      operand = [expression operand];
      if (![operand expressionType])
      {
        constantValue = [operand constantValue];

        [(NSSQLFetchRequestContext *)self _fireFaultsForValue:constantValue];
      }
    }
  }

  else
  {
    constantValue2 = [expression constantValue];
    if ((([constantValue2 isNSArray] & 1) != 0 || (objc_msgSend(constantValue2, "isNSSet") & 1) != 0 || objc_msgSend(constantValue2, "isNSOrderedSet")) && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(constantValue2, "isFault"))
    {

      [constantValue2 willRead];
    }
  }
}

- (BOOL)executeRequestCore:(id *)core
{
  [(NSSQLFetchRequestContext *)self fetchStatement];
  [(NSSQLStoreRequestContext *)self setResult:_executeFetchRequest(self)];
  if (!self)
  {
    return [(NSSQLStoreRequestContext *)self result]!= 0;
  }

  error = self->super._error;
  if (error && core)
  {
    *core = error;
  }

  return !self->super._exception && !self->super._error && [(NSSQLStoreRequestContext *)self result]!= 0;
}

- (void)addFaultsThatWereFired:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = result[21];
    if (v3)
    {

      return [v3 addObjectsFromArray:a2];
    }

    else
    {
      result = a2;
      v2[21] = result;
    }
  }

  return result;
}

@end