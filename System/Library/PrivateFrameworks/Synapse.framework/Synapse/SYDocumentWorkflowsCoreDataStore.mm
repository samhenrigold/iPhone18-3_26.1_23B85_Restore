@interface SYDocumentWorkflowsCoreDataStore
+ (BOOL)removePersistentStoreWithError:(id *)error;
+ (id)_persistentStoreDirURL;
- (BOOL)_saveContext:(id)context error:(id *)error;
- (BOOL)saveUserActivity:(id)activity forRelatedUniqueIdentifier:(id)identifier sourceBundleIdentifier:(id)bundleIdentifier error:(id *)error;
- (NSPersistentContainer)persistentContainer;
- (id)_fetchRecordWithRelatedUniqueIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)identifier error:(id *)error;
- (void)persistentContainer;
@end

@implementation SYDocumentWorkflowsCoreDataStore

+ (id)_persistentStoreDirURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLsForDirectory:14 inDomains:1];
  firstObject = [v3 firstObject];

  v5 = [firstObject URLByAppendingPathComponent:@"com.apple.synapse"];

  return v5;
}

+ (BOOL)removePersistentStoreWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _persistentStoreDirURL = [self _persistentStoreDirURL];
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = _persistentStoreDirURL;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Remove to persistent store directory at: %{private}@", buf, 0xCu);
  }

  path = [_persistentStoreDirURL path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    v16 = 0;
    v10 = [defaultManager removeItemAtURL:_persistentStoreDirURL error:&v16];
    v11 = v16;
    if ((v10 & 1) == 0)
    {
      v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SYDocumentWorkflowsCoreDataStore *)_persistentStoreDirURL removePersistentStoreWithError:v11, v12];
      }
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }
  }

  else
  {
    v14 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v18 = _persistentStoreDirURL;
      _os_log_impl(&dword_225901000, v14, OS_LOG_TYPE_DEFAULT, "Unable to find persistent store directory at: %{private}@", buf, 0xCu);
    }

    if (error)
    {
      *error = 0;
    }

    v10 = 1;
  }

  return v10;
}

- (NSPersistentContainer)persistentContainer
{
  v49 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_persistentContainer)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    modelURL = [(SYDocumentWorkflowsCoreDataStore *)selfCopy modelURL];
    path = [modelURL path];
    v6 = [defaultManager fileExistsAtPath:path];

    if ((v6 & 1) == 0)
    {
      v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        modelURL2 = [(SYDocumentWorkflowsCoreDataStore *)selfCopy modelURL];
        [(SYDocumentWorkflowsCoreDataStore *)modelURL2 persistentContainer];
      }
    }

    v9 = objc_alloc(MEMORY[0x277CBE450]);
    modelURL3 = [(SYDocumentWorkflowsCoreDataStore *)selfCopy modelURL];
    v38 = [v9 initWithContentsOfURL:modelURL3];

    v11 = [MEMORY[0x277CBE4A0] persistentContainerWithName:@"SYDocumentWorkflowsModel" managedObjectModel:v38];
    if (!v11)
    {
      v12 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(SYDocumentWorkflowsCoreDataStore *)v12 persistentContainer];
      }
    }

    _persistentStoreDirURL = [objc_opt_class() _persistentStoreDirURL];
    path2 = [_persistentStoreDirURL path];
    v15 = [defaultManager fileExistsAtPath:path2];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v17 = [standardUserDefaults BOOLForKey:@"SYPersistentStoreDirIsClean"];
    v18 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v45 = v15;
      v46 = 1024;
      v47 = v17;
      _os_log_impl(&dword_225901000, v18, OS_LOG_TYPE_DEFAULT, "Persistent store directory exists: %{BOOL}d, isClean: %{BOOL}d", buf, 0xEu);
    }

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke;
    v41[3] = &unk_27856C6F0;
    v19 = standardUserDefaults;
    v42 = v19;
    v20 = MEMORY[0x22AA6A360](v41);
    v21 = v20;
    if ((v15 | v17))
    {
      if (!(v17 & 1 | ((v15 & 1) == 0)))
      {
        v22 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_225901000, v22, OS_LOG_TYPE_DEFAULT, "Persistent store directory needs cleanup.", buf, 2u);
        }

        v40 = 0;
        v23 = [objc_opt_class() removePersistentStoreWithError:&v40];
        v24 = v40;
        v25 = v24;
        if (v23)
        {
          if (v24)
          {
            v21[2](v21, 1);
          }
        }

        else
        {
          v26 = os_log_create("com.apple.synapse", "DocumentWorkflows");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [(SYDocumentWorkflowsCoreDataStore *)v25 persistentContainer];
          }
        }

        v27 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v45 = v23;
          _os_log_impl(&dword_225901000, v27, OS_LOG_TYPE_DEFAULT, "Persistent store directory cleaned up successfully: %{BOOL}d", buf, 8u);
        }
      }
    }

    else
    {
      (*(v20 + 16))(v20, 1);
    }

    v39 = 0;
    v28 = [defaultManager createDirectoryAtURL:_persistentStoreDirURL withIntermediateDirectories:1 attributes:0 error:&v39];
    v29 = v39;
    if ((v28 & 1) == 0)
    {
      v30 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [SYDocumentWorkflowsCoreDataStore persistentContainer];
      }
    }

    v31 = [_persistentStoreDirURL URLByAppendingPathComponent:@"SYDocumentWorkflowsModel.sqlite"];
    v32 = [objc_alloc(MEMORY[0x277CBE4E0]) initWithURL:v31];
    v43 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [(NSPersistentContainer *)v11 setPersistentStoreDescriptions:v33];

    [(NSPersistentContainer *)v11 loadPersistentStoresWithCompletionHandler:&__block_literal_global_15];
    persistentContainer = selfCopy->_persistentContainer;
    selfCopy->_persistentContainer = v11;
    v35 = v11;
  }

  objc_sync_exit(selfCopy);

  v36 = selfCopy->_persistentContainer;

  return v36;
}

void __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22_cold_1(v3, v4);
    }
  }
}

- (id)fetchUserActivityWithRelatedUniqueIdentifier:(id)identifier error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&dword_225901000, v7, OS_LOG_TYPE_DEFAULT, "Fetching userActivity with relatedUniqueIdentifier: %@", buf, 0xCu);
  }

  persistentContainer = [(SYDocumentWorkflowsCoreDataStore *)self persistentContainer];
  newBackgroundContext = [persistentContainer newBackgroundContext];
  v17 = 0;
  v10 = [(SYDocumentWorkflowsCoreDataStore *)self _fetchRecordWithRelatedUniqueIdentifier:identifierCopy context:newBackgroundContext error:&v17];
  v11 = v17;

  if (v10)
  {
    userActivityData = [v10 userActivityData];
    if (userActivityData)
    {
      v13 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityData:userActivityData];
    }

    else
    {
      v15 = os_log_create("com.apple.synapse", "DocumentWorkflows");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = identifierCopy;
        _os_log_impl(&dword_225901000, v15, OS_LOG_TYPE_DEFAULT, "Found nil user activity data for id: %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else if (error)
  {
    v14 = v11;
    v13 = 0;
    *error = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)saveUserActivity:(id)activity forRelatedUniqueIdentifier:(id)identifier sourceBundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v13 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v32 = activityCopy;
    v33 = 2112;
    v34 = identifierCopy;
    v35 = 2112;
    v36 = bundleIdentifierCopy;
    _os_log_impl(&dword_225901000, v13, OS_LOG_TYPE_DEFAULT, "Saving userActivity: %@, relatedUniqueIdentifier: %@, sourceBundleIdentifier: %@", buf, 0x20u);
  }

  v30 = 0;
  v14 = [activityCopy _createUserActivityDataWithSaving:0 options:0 error:&v30];
  v15 = v30;
  if (v14)
  {
    errorCopy = error;
    persistentContainer = [(SYDocumentWorkflowsCoreDataStore *)self persistentContainer];
    newBackgroundContext = [persistentContainer newBackgroundContext];

    v29 = 0;
    v18 = [(SYDocumentWorkflowsCoreDataStore *)self _fetchRecordWithRelatedUniqueIdentifier:identifierCopy context:newBackgroundContext error:&v29];
    v19 = v29;
    v20 = v19;
    if (v18 || !v19)
    {
      if (!(v18 | v19))
      {
        v25 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = identifierCopy;
          v33 = 2112;
          v34 = newBackgroundContext;
          _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_DEFAULT, "Creating new record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
        }

        v18 = [[SYUserActivityRecord alloc] initWithContext:newBackgroundContext];
        [v18 setRelatedUniqueIdentifier:identifierCopy];
      }

      if (v18 && !v20)
      {
        v26 = os_log_create("com.apple.synapse", "DocumentWorkflows");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = identifierCopy;
          v33 = 2112;
          v34 = newBackgroundContext;
          _os_log_impl(&dword_225901000, v26, OS_LOG_TYPE_DEFAULT, "Found existing record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
        }
      }

      [v18 setSourceBundleIdentifier:bundleIdentifierCopy];
      [v18 setUserActivityData:v14];
      v22 = [(SYDocumentWorkflowsCoreDataStore *)self _saveContext:newBackgroundContext error:errorCopy];
    }

    else if (errorCopy)
    {
      v21 = v19;
      v22 = 0;
      *errorCopy = v20;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SYDocumentWorkflowsCoreDataStore saveUserActivity:forRelatedUniqueIdentifier:sourceBundleIdentifier:error:];
    }

    if (error)
    {
      v24 = v15;
      v22 = 0;
      *error = v15;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)_fetchRecordWithRelatedUniqueIdentifier:(id)identifier context:(id)context error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = contextCopy;
    _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "Fetching record with relatedUniqueIdentifier: %@, context: %@", buf, 0x16u);
  }

  v10 = +[SYUserActivityRecord createFetchRequest];
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"relatedUniqueIdentifier == %@", identifierCopy];
  [v10 setPredicate:identifierCopy];

  [v10 setFetchLimit:1];
  v18 = 0;
  v12 = [contextCopy executeFetchRequest:v10 error:&v18];
  v13 = v18;
  if (v12)
  {
    firstObject = [v12 firstObject];
  }

  else
  {
    v15 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = identifierCopy;
      v21 = 2112;
      v22 = contextCopy;
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&dword_225901000, v15, OS_LOG_TYPE_ERROR, "Unable to fetch record with id: %@, context: %@, error: %@", buf, 0x20u);
    }

    if (error)
    {
      v16 = v13;
      firstObject = 0;
      *error = v13;
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (BOOL)_saveContext:(id)context error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = contextCopy;
    _os_log_impl(&dword_225901000, v6, OS_LOG_TYPE_DEFAULT, "Saving context: %@", buf, 0xCu);
  }

  if ([contextCopy hasChanges])
  {
    v13 = 0;
    v7 = [contextCopy save:&v13];
    v8 = v13;
    v9 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = contextCopy;
        _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "Context saved: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SYDocumentWorkflowsCoreDataStore _saveContext:error:];
      }

      if (error)
      {
        v11 = v8;
        *error = v8;
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = contextCopy;
      _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_DEFAULT, "Context has no changes: %@", buf, 0xCu);
    }

    v7 = 1;
  }

  return v7;
}

+ (void)removePersistentStoreWithError:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138478083;
  *&v3[4] = a1;
  *&v3[12] = 2113;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_3(&dword_225901000, a2, a3, "Unable to remove persistent store directory at: %{private}@, error: %{private}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)persistentContainer
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_225901000, v0, OS_LOG_TYPE_FAULT, "Unable to create persistent store directory at: %@, error: %@", v1, 0x16u);
}

void __55__SYDocumentWorkflowsCoreDataStore_persistentContainer__block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_225901000, a2, OS_LOG_TYPE_FAULT, "Unable to load persistent stores, error: %@", &v2, 0xCu);
}

@end