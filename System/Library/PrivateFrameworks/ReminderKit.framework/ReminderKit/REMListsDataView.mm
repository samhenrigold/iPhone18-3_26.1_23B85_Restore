@interface REMListsDataView
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store;
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedExternalIdentifiers:(id)identifiers;
+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedListIDs:(id)ds;
+ (id)listsFromAccounts:(id)accounts listStorages:(id)storages store:(id)store;
- (REMListsDataView)initWithStore:(id)store;
- (id)debugFetchPhantomListsWithError:(id *)error;
- (id)fetchAllListsWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error;
- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)d error:(id *)error;
- (id)fetchDefaultListWithError:(id *)error;
- (id)fetchEligibleDefaultListsWithError:(id *)error;
- (id)fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders:(BOOL)reminders error:(id *)error;
- (id)fetchListIncludingConcealedWithObjectID:(id)d includeMarkedForDeletionOnly:(BOOL)only error:(id *)error;
- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error;
- (id)fetchListIncludingSpecialContainerWithObjectID:(id)d error:(id *)error;
- (id)fetchListRepresentationOfTemplateWithObjectID:(id)d error:(id *)error;
- (id)fetchListWithObjectID:(id)d error:(id *)error;
- (id)fetchListsAndSublistsInAccount:(id)account error:(id *)error;
- (id)fetchListsInAccount:(id)account error:(id *)error;
- (id)fetchListsInGroup:(id)group error:(id *)error;
- (id)fetchListsIncludingSpecialContainersInAccount:(id)account error:(id *)error;
- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchListsWithExternalIdentifiers:(id)identifiers inAccount:(id)account error:(id *)error;
- (id)fetchListsWithObjectIDs:(id)ds error:(id *)error;
@end

@implementation REMListsDataView

- (REMListsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMListsDataView;
  v6 = [(REMListsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchListsInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_fetchListsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchListsAndSublistsInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_fetchListsAndSublistsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsAndSublistsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchListsInGroup:(id)group error:(id *)error
{
  groupCopy = group;
  v7 = [REMListsDataViewInvocation_fetchListsInGroup alloc];
  objectID = [groupCopy objectID];

  v9 = [(REMListsDataViewInvocation_fetchListsInGroup *)v7 initWithParentGroupObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v18;
}

- (id)fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders:(BOOL)reminders error:(id *)error
{
  v6 = [[REMListsDataViewInvocation_fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders alloc] initWithRequiringOneOrMoreIncompleteReminders:reminders];
  store = [(REMListsDataView *)self store];
  v8 = [store resultFromPerformingInvocation:v6 error:error];

  v9 = objc_opt_class();
  v10 = REMDynamicCast(v9, v8);
  accountStorages = [v10 accountStorages];
  listStorages = [v10 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v10 objectIDs];
  v15 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v15;
}

- (id)fetchListWithObjectID:(id)d error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v12[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [(REMListsDataView *)self fetchListsWithObjectIDs:v7 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:dCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [REMListsDataView fetchListWithObjectID:dCopy error:v10];
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v9 = 0;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (id)fetchListsWithObjectIDs:(id)ds error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [[REMListsDataViewInvocation_fetchByObjectIDs alloc] initWithObjectIDs:dsCopy];
    store = [(REMListsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    accountStorages = [v11 accountStorages];
    listStorages = [v11 listStorages];
    store2 = [(REMListsDataView *)self store];
    v15 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:dsCopy];

    if (v15)
    {
      v25 = v9;
      v26 = v7;
      v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v27 + 1) + 8 * i);
            objectID = [v22 objectID];
            [v16 setObject:v22 forKeyedSubscript:objectID];
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v19);
      }

      v9 = v25;
      v7 = v26;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  return v16;
}

- (id)fetchEligibleDefaultListsWithError:(id *)error
{
  store = [(REMListsDataView *)self store];
  v6 = [store mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchUserSelectableDefaultLists alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  store2 = [(REMListsDataView *)self store];
  v9 = [store2 resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  return v16;
}

- (id)fetchDefaultListWithError:(id *)error
{
  store = [(REMListsDataView *)self store];
  v6 = [store mode] == 4599;

  v7 = [[REMListsDataViewInvocation_fetchDefaultList alloc] initWithDebugUseInMemoryPreferredDefaultListStorage:v6];
  store2 = [(REMListsDataView *)self store];
  v9 = [store2 resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v11 objectIDs];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  firstObject = [v16 firstObject];

  return firstObject;
}

- (id)fetchDefaultListRequiringCloudKitWithAccountID:(id)d error:(id *)error
{
  dCopy = d;
  store = [(REMListsDataView *)self store];
  v8 = [store mode] == 4599;

  v9 = [[REMListsDataViewInvocation_fetchDefaultListRequiringCloudKit alloc] initWithAccountObjectID:dCopy debugUseInMemoryPreferredDefaultListStorage:v8];
  store2 = [(REMListsDataView *)self store];
  v11 = [store2 resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store3 = [(REMListsDataView *)self store];
  objectIDs = [v13 objectIDs];
  v18 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store3 requestedListIDs:objectIDs];

  firstObject = [v18 firstObject];

  return firstObject;
}

- (id)debugFetchPhantomListsWithError:(id *)error
{
  v5 = objc_alloc_init(REMListsDataViewInvocation_debugFetchPhantomLists);
  store = [(REMListsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  listStorages = [v9 listStorages];
  store2 = [(REMListsDataView *)self store];
  objectIDs = [v9 objectIDs];
  v14 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:objectIDs];

  return v14;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedListIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v10 = [REMListsDataView listsFromAccountStorages:storages listStorages:listStorages store:store];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = dsCopy;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v10 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store requestedExternalIdentifiers:(id)identifiers
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v10 = [REMListsDataView listsFromAccountStorages:storages listStorages:listStorages store:store];
  v11 = v10;
  if (v10)
  {
    allValues = [v10 allValues];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = allValues;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * i);
          externalIdentifier = [v19 externalIdentifier];
          if (externalIdentifier)
          {
            [dictionary setObject:v19 forKeyedSubscript:externalIdentifier];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v16);
    }

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = identifiersCopy;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [dictionary objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * j), v29}];
          if (v27)
          {
            [v21 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)listsFromAccounts:(id)accounts listStorages:(id)storages store:(id)store
{
  v42 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  storagesCopy = storages;
  storeCopy = store;
  if (storagesCopy)
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = storagesCopy;
    v10 = storagesCopy;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          accountID = [v15 accountID];
          v17 = [accountsCopy objectForKeyedSubscript:accountID];

          v18 = [[REMList alloc] initWithStore:storeCopy account:v17 storage:v15];
          objectID = [(REMList *)v18 objectID];
          [v9 setObject:v18 forKeyedSubscript:objectID];
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v12);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allKeys = [v9 allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(allKeys);
          }

          v25 = [v9 objectForKeyedSubscript:{*(*(&v32 + 1) + 8 * j), v30}];
          storage = [v25 storage];
          parentListID = [storage parentListID];

          if (parentListID)
          {
            v28 = [v9 objectForKeyedSubscript:parentListID];
            [v25 setParentList:v28];
          }
        }

        v22 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }

    storagesCopy = v30;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)listsFromAccountStorages:(id)storages listStorages:(id)listStorages store:(id)store
{
  storeCopy = store;
  listStoragesCopy = listStorages;
  v9 = [REMAccountsDataView accountsFromAccountStorages:storages store:storeCopy];
  v10 = [REMListsDataView listsFromAccounts:v9 listStorages:listStoragesCopy store:storeCopy];

  return v10;
}

- (id)fetchListsIncludingSpecialContainersInAccount:(id)account error:(id *)error
{
  accountCopy = account;
  v7 = [REMListsDataViewInvocation_dataAccessFetchListsInAccount alloc];
  objectID = [accountCopy objectID];

  v9 = [(REMListsDataViewInvocation_dataAccessFetchListsInAccount *)v7 initWithParentAccountObjectID:objectID];
  store = [(REMListsDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  store2 = [(REMListsDataView *)self store];
  v17 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2];

  return v17;
}

- (id)fetchListIncludingSpecialContainerWithObjectID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(REMListsDataView *)self fetchListsIncludingSpecialContainersWithObjectIDs:v7 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:dCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = dCopy;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", &v12, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v9 = 0;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (id)fetchListsIncludingSpecialContainersWithObjectIDs:(id)ds error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v7 = [[REMListsDataViewInvocation_dataAccessFetchByObjectID alloc] initWithObjectIDs:dsCopy];
  store = [(REMListsDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store2 = [(REMListsDataView *)self store];
  v15 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:dsCopy];

  if (v15)
  {
    v25 = v9;
    v26 = v7;
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v27 + 1) + 8 * i);
          objectID = [v22 objectID];
          [v16 setObject:v22 forKeyedSubscript:objectID];
        }

        v19 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v19);
    }

    v9 = v25;
    v7 = v26;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchListIncludingSpecialContainerWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18[0] = identifierCopy;
  v9 = MEMORY[0x1E695DEC8];
  accountCopy = account;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [(REMListsDataView *)self fetchListsWithExternalIdentifiers:v11 inAccount:accountCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {externalIdentifier: %{public}@}", &v16, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)fetchListsWithExternalIdentifiers:(id)identifiers inAccount:(id)account error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  accountCopy = account;
  v10 = [REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier alloc];
  objectID = [accountCopy objectID];
  v12 = [(REMListsDataViewInvocation_dataAccessFetchByExternalIdentifier *)v10 initWithExternalIdentifiers:identifiersCopy accountObjectID:objectID];

  store = [(REMListsDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  store2 = [(REMListsDataView *)self store];
  v20 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedExternalIdentifiers:identifiersCopy];

  if (v20)
  {
    v30 = v14;
    v31 = v12;
    v32 = accountCopy;
    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * i);
          externalIdentifier = [v27 externalIdentifier];
          [v21 setObject:v27 forKeyedSubscript:externalIdentifier];
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v24);
    }

    v12 = v31;
    accountCopy = v32;
    v14 = v30;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)fetchListIncludingConcealedWithObjectID:(id)d includeMarkedForDeletionOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v46[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = [REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed alloc];
  v46[0] = dCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v11 = [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)v9 initWithObjectIDs:v10];

  [(REMListsDataViewInvocation_changeTrackingFetchByObjectIDIncludingConcealed *)v11 setIncludeMarkedForDeletionOnly:onlyCopy];
  store = [(REMListsDataView *)self store];
  errorCopy = error;
  v13 = [store resultFromPerformingInvocation:v11 error:error];

  v14 = objc_opt_class();
  v15 = REMDynamicCast(v14, v13);
  accountStorages = [v15 accountStorages];
  listStorages = [v15 listStorages];
  store2 = [(REMListsDataView *)self store];
  v45 = dCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v20 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:v19];

  if (!v20)
  {
    goto LABEL_18;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v22)
  {

    goto LABEL_14;
  }

  v23 = v22;
  v34 = v15;
  v35 = v13;
  v36 = v11;
  v24 = 0;
  v25 = *v39;
  do
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v39 != v25)
      {
        objc_enumerationMutation(v21);
      }

      v27 = *(*(&v38 + 1) + 8 * i);
      objectID = [v27 objectID];
      v29 = [objectID isEqual:dCopy];

      if (v29)
      {
        v30 = v27;

        v24 = v30;
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v23);

  v13 = v35;
  v11 = v36;
  v15 = v34;
  if (!v24)
  {
LABEL_14:
    v31 = +[REMLogStore read];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = dCopy;
      _os_log_impl(&dword_19A0DB000, v31, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", buf, 0xCu);
    }

    if (errorCopy)
    {
      [REMError noSuchObjectErrorWithObjectID:dCopy];
      *errorCopy = v24 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v24 = 0;
  }

LABEL_19:
  v32 = v24;

  return v24;
}

- (id)fetchAllListsWithExternalIdentifier:(id)identifier inAccount:(id)account error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v10 = [REMListsDataViewInvocation_userActivityFetchByExternalIdentifier alloc];
  v11 = accountCopy;
  objectID = [accountCopy objectID];
  v13 = [(REMListsDataViewInvocation_userActivityFetchByExternalIdentifier *)v10 initWithExternalIdentifier:identifierCopy accountObjectID:objectID];

  store = [(REMListsDataView *)self store];
  errorCopy = error;
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  store2 = [(REMListsDataView *)self store];
  v21 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2];

  allValues = [v21 allValues];
  v23 = allValues;
  if (allValues && [allValues count])
  {
    v24 = v23;
  }

  else
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      remObjectID = [v11 remObjectID];
      *buf = 138543618;
      v30 = identifierCopy;
      v31 = 2114;
      v32 = remObjectID;
      _os_log_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_DEFAULT, "REMListsDataView: Requested to fetch non-existent lists in account with {externalIdentifier: %{public}@, account.remObjectID: %{public}@}", buf, 0x16u);
    }

    if (errorCopy)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
      *errorCopy = v24 = 0;
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (id)fetchListRepresentationOfTemplateWithObjectID:(id)d error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = [[REMListsDataViewInvocation_fetchByTemplateObjectID alloc] initWithTemplateObjectID:dCopy];
  store = [(REMListsDataView *)self store];
  errorCopy = error;
  v29 = v7;
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  store2 = [(REMListsDataView *)self store];
  v35[0] = dCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v16 = [REMListsDataView listsFromAccountStorages:accountStorages listStorages:listStorages store:store2 requestedListIDs:v15];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * i);
        objectID = [v22 objectID];
        v24 = [objectID isEqual:dCopy];

        if (v24)
        {
          v26 = v22;

          goto LABEL_14;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  if (errorCopy)
  {
    v25 = +[REMLogStore read];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [REMListsDataView(Templates) fetchListRepresentationOfTemplateWithObjectID:dCopy error:v25];
    }

    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *errorCopy = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_14:

  return v26;
}

- (void)fetchListWithObjectID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "REMListsDataView: Requested to fetch non-existent list {objectID: %{public}@}", &v2, 0xCu);
}

@end