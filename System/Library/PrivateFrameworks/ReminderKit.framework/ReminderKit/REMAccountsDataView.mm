@interface REMAccountsDataView
+ (id)accountsFromAccountStorages:(id)storages store:(id)store;
- (REMAccountsDataView)initWithStore:(id)store;
- (id)accountsFromStorages:(id)storages;
- (id)fetchAccountWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchAccountWithObjectID:(id)d error:(id *)error;
- (id)fetchAccountsWithExternalIdentifiers:(id)identifiers error:(id *)error;
- (id)fetchAccountsWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)option error:(id *)error;
- (id)fetchAllAccountsForAccountManagementWithError:(id *)error;
- (id)fetchAllAccountsForDumpingWithError:(id *)error;
- (id)fetchAllAccountsWithError:(id *)error;
- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)error;
- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)error;
@end

@implementation REMAccountsDataView

- (REMAccountsDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMAccountsDataView;
  v6 = [(REMAccountsDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchAllAccountsWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:0];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchAllAccountsForAccountManagementWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:1];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchAllAccountsForDumpingWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchAll alloc] initWithPurpose:2];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  return v11;
}

- (id)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:1];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountIDs = [v9 accountIDs];
  v11 = [accountIDs count];

  if (v11)
  {
    accountIDs2 = [v9 accountIDs];
    v13 = [accountIDs2 count];

    if (v13 >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:v9];
    }

    accountIDs3 = [v9 accountIDs];
    firstObject = [accountIDs3 firstObject];
  }

  else if (error)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *error = firstObject = 0;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchPrimaryActiveCloudKitAccountWithError:(id *)error
{
  v5 = [[REMAccountsDataViewInvocation_fetchPrimaryActiveCloudKitAccount alloc] initWithFetchREMObjectIDOnly:0];
  store = [(REMAccountsDataView *)self store];
  v7 = [store resultFromPerformingInvocation:v5 error:error];

  v8 = objc_opt_class();
  v9 = REMDynamicCast(v8, v7);
  accountStorages = [v9 accountStorages];
  v11 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  if ([v11 count])
  {
    if ([v11 count] >= 2)
    {
      [REMAccountsDataView fetchPrimaryActiveCloudKitAccountWithError:v11];
    }

    firstObject = [v11 firstObject];
  }

  else if (error)
  {
    +[REMError noPrimaryActiveCloudKitAccountError];
    *error = firstObject = 0;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchActiveCloudKitAccountObjectIDsWithFetchOption:(int64_t)option error:(id *)error
{
  v6 = [[REMAccountsDataViewInvocation_fetchActiveCloudKitAccountObjectIDs alloc] initWithFetchOption:option];
  store = [(REMAccountsDataView *)self store];
  v17 = 0;
  v8 = [store resultFromPerformingInvocation:v6 error:&v17];
  v9 = v17;

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v8);
  accountIDs = [v11 accountIDs];

  if (accountIDs)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    accountIDs2 = [v11 accountIDs];
  }

  else if (error)
  {
    if (v9)
    {
      v14 = v9;
      accountIDs2 = 0;
      *error = v9;
    }

    else
    {
      [REMError internalErrorWithDebugDescription:@"Unknown error in fetchActiveCloudKitAccountObjectIDsWithOption yielding nil fetchResult.accountIDs"];
      *error = accountIDs2 = 0;
    }
  }

  else
  {
    accountIDs2 = 0;
  }

  return accountIDs2;
}

- (id)fetchAccountWithObjectID:(id)d error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14[0] = dCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithObjectIDs:v7 error:error];

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
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {objectID: %{public}@}", &v12, 0xCu);
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

- (id)fetchAccountsWithObjectIDs:(id)ds error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    v7 = [[REMAccountsDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:dsCopy];
    store = [(REMAccountsDataView *)self store];
    v9 = [store resultFromPerformingInvocation:v7 error:error];

    v10 = objc_opt_class();
    v11 = REMDynamicCast(v10, v9);
    accountStorages = [v11 accountStorages];
    v13 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

    if (v13)
    {
      v23 = v9;
      v24 = v7;
      v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * i);
            objectID = [v20 objectID];
            [v14 setObject:v20 forKeyedSubscript:objectID];
          }

          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);
      }

      v9 = v23;
      v7 = v24;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

- (id)fetchAccountWithExternalIdentifier:(id)identifier error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14[0] = identifierCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(REMAccountsDataView *)self fetchAccountsWithExternalIdentifiers:v7 error:error];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 objectForKeyedSubscript:identifierCopy];
  if (v9)
  {
    goto LABEL_8;
  }

  v10 = +[REMLogStore read];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "REMAccountsDataView: Requested to fetch non-existent account {externalIdentifier: %{public}@}", &v12, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
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

- (id)fetchAccountsWithExternalIdentifiers:(id)identifiers error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v7 = [[REMAccountsDataViewInvocation_fetchByExternalIdentifier alloc] initWithExternalIdentifiers:identifiersCopy];
  store = [(REMAccountsDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  v13 = [(REMAccountsDataView *)self accountsFromStorages:accountStorages];

  if (v13)
  {
    v30 = v11;
    v31 = v9;
    v32 = v7;
    v33 = identifiersCopy;
    v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v36;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v35 + 1) + 8 * i);
          externalIdentifier = [v20 externalIdentifier];
          if (!externalIdentifier)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [(REMAccountsDataView *)v45 fetchAccountsWithExternalIdentifiers:v20 error:&v46, v23];
            }

            goto LABEL_13;
          }

          v22 = [v14 objectForKeyedSubscript:externalIdentifier];

          if (v22)
          {
            v23 = +[REMLogStore read];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v34 = [v14 objectForKeyedSubscript:externalIdentifier];
              remObjectID = [v34 remObjectID];
              remObjectID2 = [v20 remObjectID];
              *buf = 138412802;
              v40 = externalIdentifier;
              v41 = 2112;
              v42 = remObjectID;
              v43 = 2112;
              v44 = remObjectID2;
              _os_log_error_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_ERROR, "REMAccountsDataView -fetchAccountsWithExternalIdentifiers: More than 1 account found for the given external identifier {extID: %@, acctObjID1: %@, acctObjID2: %@}.", buf, 0x20u);
            }

LABEL_13:

            goto LABEL_15;
          }

          [v14 setObject:v20 forKeyedSubscript:externalIdentifier];
LABEL_15:
        }

        v17 = [v15 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v17);
    }

    v26 = [v15 count];
    identifiersCopy = v33;
    if (v26 <= [v33 count])
    {
      v9 = v31;
      v7 = v32;
      v13 = v29;
      v11 = v30;
    }

    else
    {
      v27 = +[REMLogStore read];
      v13 = v29;
      v11 = v30;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [REMAccountsDataView fetchAccountsWithExternalIdentifiers:v33 error:v15];
      }

      v9 = v31;
      v7 = v32;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)accountsFromStorages:(id)storages
{
  v22 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  if (storagesCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = storagesCopy;
    v6 = storagesCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [REMAccount alloc];
          store = [(REMAccountsDataView *)self store];
          v14 = [(REMAccount *)v12 initWithStore:store storage:v11];

          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    storagesCopy = v16;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)accountsFromAccountStorages:(id)storages store:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  storagesCopy = storages;
  storeCopy = store;
  if (storagesCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(storagesCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = storagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [REMAccount alloc];
          v15 = [(REMAccount *)v14 initWithStore:storeCopy storage:v13, v18];
          objectID = [(REMAccount *)v15 objectID];
          [v7 setObject:v15 forKeyedSubscript:objectID];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)fetchPrimaryActiveCloudKitAccountREMObjectIDWithError:(void *)a1 .cold.1(void *a1)
{
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = [a1 accountIDs];
    v10 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
  }
}

- (void)fetchPrimaryActiveCloudKitAccountWithError:(void *)a1 .cold.1(void *a1)
{
  v2 = +[REMLogStore read];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)fetchAccountsWithExternalIdentifiers:(void *)a3 error:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 remObjectID];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_19A0DB000, a4, OS_LOG_TYPE_ERROR, "Request results with account without externalIdentifier {objectID: %@}", a1, 0xCu);
}

- (void)fetchAccountsWithExternalIdentifiers:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end