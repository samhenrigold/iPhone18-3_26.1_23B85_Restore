@interface NSSQLBatchDeleteRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (NSBatchDeleteRequest)request;
- (NSSQLFetchRequestContext)_createFetchRequestContextForObjectsToDelete;
- (uint64_t)fetchRequestForObjectsToDelete;
- (void)_createDeleteStatements;
- (void)clearSQLiteStatements;
- (void)dealloc;
- (void)executePrologue;
@end

@implementation NSSQLBatchDeleteRequestContext

- (void)executePrologue
{
  if ([(NSBatchDeleteRequest *)[(NSSQLBatchDeleteRequestContext *)self request] resultType]== NSBatchDeleteResultTypeObjectIDs)
  {
    if (self)
    {
      fetchContext = self->_fetchContext;
      if (!fetchContext)
      {
        fetchContext = [(NSSQLBatchDeleteRequestContext *)self _createFetchRequestContextForObjectsToDelete];
        self->_fetchContext = fetchContext;
      }
    }

    else
    {
      fetchContext = 0;
    }

    [(NSSQLFetchRequestContext *)fetchContext fetchStatement];
  }

  else
  {
    [(NSSQLBatchDeleteRequestContext *)self _createDeleteStatements];
  }
}

- (NSBatchDeleteRequest)request
{
  v3.receiver = self;
  v3.super_class = NSSQLBatchDeleteRequestContext;
  return [(NSSQLStoreRequestContext *)&v3 persistentStoreRequest];
}

- (void)_createDeleteStatements
{
  if (self)
  {
    if (!*(self + 104))
    {
      newValue = 0;
      *(self + 104) = -[NSSQLiteAdapter generateDeleteStatementsForRequest:error:]([*(self + 8) adapter], self, &newValue);
      objc_setProperty_nonatomic(self, v2, newValue, 40);
    }
  }
}

- (uint64_t)fetchRequestForObjectsToDelete
{
  if (result)
  {
    v1 = result;
    result = *(result + 96);
    if (!result)
    {
      v2 = [objc_msgSend(objc_msgSend(v1 "request")];
      *(v1 + 96) = v2;
      [v2 _resolveEntityWithContext:*(v1 + 32)];
      [*(v1 + 96) setIncludesPropertyValues:0];
      [*(v1 + 96) setResultType:1];
      [*(v1 + 96) setPropertiesToFetch:0];
      [*(v1 + 96) setRelationshipKeyPathsForPrefetching:0];
      [*(v1 + 96) setShouldRefreshRefetchedObjects:0];
      [*(v1 + 96) setFetchBatchSize:0];
      [*(v1 + 96) setIncludesPendingChanges:0];
      return *(v1 + 96);
    }
  }

  return result;
}

- (void)clearSQLiteStatements
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  deleteStatements = self->_deleteStatements;
  v3 = [(NSArray *)deleteStatements countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(deleteStatements);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v12 = 0u;
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v13;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v13 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [(NSSQLiteStatement *)*(*(&v12 + 1) + 8 * j) clearCaches:?];
            }

            v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSArray *)deleteStatements countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }
}

- (NSSQLFetchRequestContext)_createFetchRequestContextForObjectsToDelete
{
  if (result)
  {
    v1 = result;
    fetchRequestForObjectsToDelete = [(NSSQLBatchDeleteRequestContext *)result fetchRequestForObjectsToDelete];
    v3 = [NSSQLFetchRequestContext alloc];
    context = v1->super._context;
    sqlCore = v1->super._sqlCore;

    return [(NSSQLFetchRequestContext *)v3 initWithRequest:fetchRequestForObjectsToDelete context:context sqlCore:sqlCore];
  }

  return result;
}

- (void)dealloc
{
  self->_deleteStatements = 0;

  self->_fetchRequestForObjectsToDelete = 0;
  self->_deletedObjectIDs = 0;

  self->_fetchContext = 0;
  self->_externalDataReferenceTriggerStatements = 0;

  self->super._tempTableName = 0;
  self->_externalDataReferencesToDelete = 0;

  self->_fileBackedFuturesToDelete = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBatchDeleteRequestContext;
  [(NSSQLBatchOperationRequestContext *)&v3 dealloc];
}

- (BOOL)executeRequestCore:(id *)core
{
  [(NSSQLStoreRequestContext *)self setResult:_executeBatchDeleteRequest(self, core)];
  if (core && *core)
  {
    if (!self)
    {
      return [(NSSQLStoreRequestContext *)self result]!= 0;
    }

    objc_setProperty_nonatomic(self, v5, *core, 40);
  }

  else if (!self)
  {
    return [(NSSQLStoreRequestContext *)self result]!= 0;
  }

  if (self->super.super._exception || self->super.super._error)
  {
    return 0;
  }

  return [(NSSQLStoreRequestContext *)self result]!= 0;
}

@end