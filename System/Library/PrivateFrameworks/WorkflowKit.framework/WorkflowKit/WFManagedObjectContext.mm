@interface WFManagedObjectContext
- (WFDatabase)database;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (void)logFaultForIncompatibleSortDescriptorsInFetchRequest:(id)request;
@end

@implementation WFManagedObjectContext

- (WFDatabase)database
{
  WeakRetained = objc_loadWeakRetained(&self->_database);

  return WeakRetained;
}

- (void)logFaultForIncompatibleSortDescriptorsInFetchRequest:(id)request
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if ([requestCopy includesPendingChanges] && objc_msgSend(requestCopy, "resultType") != 2 && -[WFManagedObjectContext hasChanges](self, "hasChanges"))
  {
    sortDescriptors = [requestCopy sortDescriptors];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __79__WFManagedObjectContext_logFaultForIncompatibleSortDescriptorsInFetchRequest___block_invoke;
    v15 = &unk_1E837FF68;
    v6 = requestCopy;
    v16 = v6;
    selfCopy = self;
    v7 = [sortDescriptors if_firstObjectPassingTest:&v12];

    if (v7)
    {
      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = [(WFManagedObjectContext *)self insertedObjects:v12];
        deletedObjects = [(WFManagedObjectContext *)self deletedObjects];
        updatedObjects = [(WFManagedObjectContext *)self updatedObjects];
        *buf = 136316162;
        v19 = "[WFManagedObjectContext logFaultForIncompatibleSortDescriptorsInFetchRequest:]";
        v20 = 2114;
        v21 = v6;
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = deletedObjects;
        v26 = 2114;
        v27 = updatedObjects;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Fetch requests with sort descriptors referencing parent entity cannot be run on dirty contexts. Fetch request: %{public}@, inserted: %{public}@, deleted: %{public}@, updated: %{public}@", buf, 0x34u);
      }
    }
  }
}

uint64_t __79__WFManagedObjectContext_logFaultForIncompatibleSortDescriptorsInFetchRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 key];

  if (v4)
  {
    v5 = MEMORY[0x1E695D5B8];
    v6 = [*(a1 + 32) entityName];
    v7 = [v5 entityForName:v6 inManagedObjectContext:*(a1 + 40)];

    v8 = [v7 relationshipsByName];
    v9 = [v3 key];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [v10 inverseRelationship];
    if (v11 && [v10 isToMany] && objc_msgSend(v11, "isToMany"))
    {
      v12 = [v11 isOrdered];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  [(WFManagedObjectContext *)self logFaultForIncompatibleSortDescriptorsInFetchRequest:requestCopy];
  v9.receiver = self;
  v9.super_class = WFManagedObjectContext;
  v7 = [(WFManagedObjectContext *)&v9 executeFetchRequest:requestCopy error:error];

  return v7;
}

@end