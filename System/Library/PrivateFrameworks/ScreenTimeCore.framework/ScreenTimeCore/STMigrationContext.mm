@interface STMigrationContext
- (BOOL)deleteLocalObjectWithUniqueIdentifier:(id)identifier managedObjectContext:(id)context error:(id *)error;
- (BOOL)initializeCachesWithManagedObjectContext:(id)context withCloudStore:(id)store andLocalStore:(id)localStore error:(id *)error;
- (STMigrationContext)init;
- (id)deleteCloudObjectWithUniqueIdentifier:(id)identifier managedObjectContext:(id)context error:(id *)error;
- (id)updateCloudObjectWithUniqueIdentifier:(id)identifier dictionary:(id)dictionary managedObjectContext:(id)context error:(id *)error;
@end

@implementation STMigrationContext

- (STMigrationContext)init
{
  v12.receiver = self;
  v12.super_class = STMigrationContext;
  v2 = [(STMigrationContext *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uniqueIdentifierToCloudObjectID = v2->_uniqueIdentifierToCloudObjectID;
    v2->_uniqueIdentifierToCloudObjectID = v3;

    v5 = objc_opt_new();
    uniqueIdentifierToLocalObjectID = v2->_uniqueIdentifierToLocalObjectID;
    v2->_uniqueIdentifierToLocalObjectID = v5;

    v7 = objc_opt_new();
    deletedObjectIDs = v2->_deletedObjectIDs;
    v2->_deletedObjectIDs = v7;

    v9 = objc_opt_new();
    filledObjectIDs = v2->_filledObjectIDs;
    v2->_filledObjectIDs = v9;
  }

  return v2;
}

- (BOOL)initializeCachesWithManagedObjectContext:(id)context withCloudStore:(id)store andLocalStore:(id)localStore error:(id *)error
{
  contextCopy = context;
  storeCopy = store;
  localStoreCopy = localStore;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v13 = self->_uniqueIdentifierToCloudObjectID;
  v14 = self->_uniqueIdentifierToLocalObjectID;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __98__STMigrationContext_initializeCachesWithManagedObjectContext_withCloudStore_andLocalStore_error___block_invoke;
  v23[3] = &unk_1E7CE7A60;
  v29 = &v37;
  v15 = contextCopy;
  v24 = v15;
  v30 = &v31;
  v16 = storeCopy;
  v25 = v16;
  v17 = v13;
  v26 = v17;
  v18 = localStoreCopy;
  v27 = v18;
  v19 = v14;
  v28 = v19;
  [v15 performBlockAndWait:v23];
  v20 = *(v38 + 24);
  if (error && (v38[3] & 1) == 0)
  {
    v21 = v32[5];
    if (v21)
    {
      *error = v21;
      v20 = *(v38 + 24);
    }

    else
    {
      v20 = 0;
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  return v20 & 1;
}

void __98__STMigrationContext_initializeCachesWithManagedObjectContext_withCloudStore_andLocalStore_error___block_invoke(uint64_t a1)
{
  v60[6] = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 72) + 8) + 24) = 1;
  v2 = +[STCloudActivation entity];
  v60[0] = v2;
  v3 = +[STBlueprint entity];
  v60[1] = v3;
  v4 = +[STFamilyOrganizationSettings entity];
  v60[2] = v4;
  v5 = +[STiCloudOrganizationSettings entity];
  v60[3] = v5;
  v6 = +[STInstalledApp entity];
  v60[4] = v6;
  v7 = +[STTestSyncableObject entity];
  v60[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];

  v9 = a1;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v8;
  v40 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v40)
  {
    v39 = *v51;
LABEL_3:
    v10 = 0;
LABEL_4:
    if (*v51 != v39)
    {
      objc_enumerationMutation(obj);
    }

    v11 = MEMORY[0x1E695D5E0];
    v12 = [*(*(&v50 + 1) + 8 * v10) name];
    v13 = [v11 fetchRequestWithEntityName:v12];

    v14 = *(v9 + 32);
    v15 = *(*(v9 + 80) + 8);
    v49 = *(v15 + 40);
    v16 = [v14 executeFetchRequest:v13 error:&v49];
    objc_storeStrong((v15 + 40), v49);
    if (v16)
    {
      v41 = v13;
      v42 = v10;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = v16;
      v17 = [v43 countByEnumeratingWithState:&v45 objects:v58 count:16];
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v17;
      v44 = *v46;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v44)
          {
            objc_enumerationMutation(v43);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = [v20 valueForKey:@"uniqueIdentifier"];
          if (v21)
          {
            v22 = [v20 objectID];
            v23 = [v22 persistentStore];
            v24 = [v23 identifier];
            [*(v9 + 40) identifier];
            v26 = v25 = v9;
            v27 = [v24 isEqualToString:v26];

            v28 = [v20 objectID];
            v29 = v28;
            if (v27)
            {
              v30 = *(v25 + 48);
              goto LABEL_17;
            }

            v31 = [v28 persistentStore];
            v32 = [v31 identifier];
            v33 = [*(v25 + 56) identifier];
            v34 = [v32 isEqualToString:v33];

            if (v34)
            {
              v29 = [v20 objectID];
              v30 = *(v25 + 64);
LABEL_17:
              [v30 setObject:v29 forKeyedSubscript:v21];
            }

            else
            {
              v29 = +[STLog mirroring];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v35 = [v20 objectID];
                v36 = [v35 persistentStore];
                v37 = [v36 identifier];
                *buf = 138543618;
                v55 = v37;
                v56 = 2114;
                v57 = v20;
                _os_log_error_impl(&dword_1B831F000, v29, OS_LOG_TYPE_ERROR, "Asked to cache object from an unknown store: %{public}@\n%{public}@", buf, 0x16u);
              }
            }

            v9 = v25;
          }
        }

        v18 = [v43 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (!v18)
        {
LABEL_23:

          v10 = v42 + 1;
          if (v42 + 1 == v40)
          {
            v40 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
            if (!v40)
            {
              goto LABEL_27;
            }

            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }

    *(*(*(v9 + 72) + 8) + 24) = 0;
  }

LABEL_27:
}

- (id)updateCloudObjectWithUniqueIdentifier:(id)identifier dictionary:(id)dictionary managedObjectContext:(id)context error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  contextCopy = context;
  v29 = 0;
  v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionaryCopy format:200 options:0 error:&v29];
  v14 = v29;
  if (v13)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"class"];
    v15 = +[STLog mirroring];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = v27;
      v32 = 2114;
      v33 = identifierCopy;
      _os_log_impl(&dword_1B831F000, v15, OS_LOG_TYPE_DEFAULT, "Looking up cloud object (%{public}@) matching ID: %{public}@", buf, 0x16u);
    }

    v16 = [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID objectForKeyedSubscript:identifierCopy];
    v17 = +[STLog mirroring];
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        *buf = 138543618;
        v31 = v27;
        v32 = 2114;
        v33 = identifierCopy;
        _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Corresponding cloud object (%{public}@) already exists: %{public}@", buf, 0x16u);
      }

      v28 = v14;
      v19 = [contextCopy existingObjectWithID:v16 error:&v28];
      v20 = v28;

      if (!v19)
      {
        v21 = +[STLog mirroring];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [STMigrationContext updateCloudObjectWithUniqueIdentifier:v20 dictionary:v21 managedObjectContext:? error:?];
        }

        if (error)
        {
          v22 = v20;
          v19 = 0;
          *error = v20;
        }

        else
        {
          v19 = 0;
        }
      }

      v14 = v20;
    }

    else
    {
      if (v18)
      {
        *buf = 138543618;
        v31 = v27;
        v32 = 2114;
        v33 = identifierCopy;
        _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Corresponding cloud object (%{public}@) now being created: %{public}@", buf, 0x16u);
      }

      v19 = [[STCloudActivation alloc] initWithContext:contextCopy];
      objectID = [(STCloudActivation *)v19 objectID];
      [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID setObject:objectID forKeyedSubscript:identifierCopy];
    }

    [(STCloudActivation *)v19 setIdentifier:identifierCopy];
    [(STCloudActivation *)v19 setActivationType:1];
    [(STCloudActivation *)v19 setActivationPlist:v13];
  }

  else
  {
    v23 = +[STLog mirroring];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [STMigrationContext updateCloudObjectWithUniqueIdentifier:dictionary:managedObjectContext:error:];
    }

    if (error)
    {
      v24 = v14;
      v19 = 0;
      *error = v14;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (BOOL)deleteLocalObjectWithUniqueIdentifier:(id)identifier managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [(NSMutableDictionary *)self->_uniqueIdentifierToLocalObjectID objectForKeyedSubscript:identifier];
  if (v9)
  {
    v16 = 0;
    v10 = [contextCopy existingObjectWithID:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    v13 = v10 != 0;
    if (v10)
    {
      [contextCopy deleteObject:v10];
    }

    else if (error && v11)
    {
      v14 = v11;
      *error = v12;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)deleteCloudObjectWithUniqueIdentifier:(id)identifier managedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [(NSMutableDictionary *)self->_uniqueIdentifierToCloudObjectID objectForKeyedSubscript:identifier];
  if (v9)
  {
    v16 = 0;
    v10 = [contextCopy existingObjectWithID:v9 error:&v16];
    v11 = v16;
    v12 = v11;
    if (v10)
    {
      [contextCopy deleteObject:v10];
      v13 = MEMORY[0x1E695E118];
    }

    else
    {
      v13 = 0;
      if (error && v11)
      {
        v14 = v11;
        v13 = 0;
        *error = v12;
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E110];
  }

  return v13;
}

- (void)updateCloudObjectWithUniqueIdentifier:(uint64_t)a1 dictionary:(NSObject *)a2 managedObjectContext:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = 0;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_1B831F000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve existing cloud object with id (%{public}@): %{public}@", &v2, 0x16u);
}

- (void)updateCloudObjectWithUniqueIdentifier:dictionary:managedObjectContext:error:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2114;
  v4 = v0;
  _os_log_fault_impl(&dword_1B831F000, v1, OS_LOG_TYPE_FAULT, "Unable to update cloud object with dictionary: %{public}@\n%{public}@", v2, 0x16u);
}

@end