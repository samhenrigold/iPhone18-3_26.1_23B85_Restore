@interface MCMClientConnection
+ (id)privilegedClientConnectionWithUserIdentity:(id)identity;
+ (id)privilegedClientConnectionWithUserIdentity:(id)identity kernel:(BOOL)kernel;
+ (id)sharedClientConnection;
- (BOOL)_containerURL:(id)l isValidForContainerClass:(unint64_t)class;
- (MCMClientConnection)init;
- (MCMClientConnection)initWithContext:(id)context;
- (id)_commandForResumedDeleteOperationsWithResultPromise:(id)promise;
- (id)clientBundleIdentifier;
- (void)_cleanTransientContainersWithContainerConfig:(id)config;
- (void)_cleanTransientUserContainersWithContainerConfig:(id)config;
- (void)_cleanupOprhanedCodeSigningMappingData;
- (void)_cleanupOrphanedDataForDirectories:(id)directories containerClass:(unint64_t)class forUserIdentity:(id)identity;
- (void)_regenerateContainerPaths;
- (void)_resumeDeleteOperations;
- (void)containerManagerCleanupWithCompletion:(id)completion;
- (void)containerManagerSetup;
- (void)rebootContainerManagerCleanupWithCompletion:(id)completion;
- (void)rebootContainerManagerSetup;
@end

@implementation MCMClientConnection

- (id)_commandForResumedDeleteOperationsWithResultPromise:(id)promise
{
  promiseCopy = promise;
  v5 = objc_opt_new();
  context = [(MCMClientConnection *)self context];
  userIdentityCache = [context userIdentityCache];
  v8 = [MCMDeleteManifest deleteManifestsForGlobalContainersWithUserIdentityCache:userIdentityCache];
  [v5 unionSet:v8];

  context2 = [(MCMClientConnection *)self context];
  userIdentityCache2 = [context2 userIdentityCache];
  v11 = [MCMDeleteManifest deleteManifestsForUserContainersWithUserIdentityCache:userIdentityCache2];
  [v5 unionSet:v11];

  if ([v5 count])
  {
    v12 = [MCMCommandOperationDelete alloc];
    context3 = [(MCMClientConnection *)self context];
    v14 = [(MCMCommandOperationDelete *)v12 initWithManifests:v5 waitForDiskSpaceReclaim:0 removeAllCodeSignInfo:0 context:context3 resultPromise:promiseCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_resumeDeleteOperations
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MCMResultPromise);
  v4 = [(MCMClientConnection *)self _commandForResumedDeleteOperationsWithResultPromise:v3];
  v5 = v4;
  if (v4)
  {
    [v4 execute];
    result = [(MCMResultPromise *)v3 result];
    error = [result error];

    if (error)
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = error;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during resumed delete; error = %@", &v9, 0xCu);
      }
    }
  }
}

- (void)_regenerateContainerPaths
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "Rolling system container directory UUIDs on disk", buf, 2u);
  }

  context = [(MCMClientConnection *)self context];
  classIterator = [context classIterator];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MCMClientConnection__regenerateContainerPaths__block_invoke;
  v6[3] = &unk_1E86AFAA8;
  v6[4] = self;
  [classIterator selectAutorollingWithUserIdentityIterator:v6];
}

void __48__MCMClientConnection__regenerateContainerPaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 classPathCache];
  v9 = [v8 containerClassPathForUserIdentity:v5 containerConfig:v6 typeClass:objc_opt_class()];

  v10 = [MCMContainerClassCache alloc];
  v11 = objc_opt_class();
  v12 = [*(a1 + 32) context];
  v13 = [v12 userIdentityCache];
  v14 = [(MCMContainerClassCache *)v10 initWithContainerClassPath:v9 cacheEntryClass:v11 targetQueue:0 userIdentityCache:v13];

  v15 = [MCMContainerClassCache alloc];
  v16 = objc_opt_class();
  v17 = [*(a1 + 32) context];
  v18 = [v17 userIdentityCache];
  v19 = [(MCMContainerClassCache *)v15 initWithContainerClassPath:v9 cacheEntryClass:v16 targetQueue:0 userIdentityCache:v18];

  [(MCMContainerClassCache *)v14 waitForSynchronizationToComplete];
  v20 = [*(a1 + 32) context];
  v21 = [v20 containerCache];
  [v21 setContainerClassCache:v19];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__MCMClientConnection__regenerateContainerPaths__block_invoke_2;
  v23[3] = &unk_1E86AFA80;
  v23[4] = *(a1 + 32);
  v24 = v19;
  v22 = v19;
  [(MCMContainerClassCache *)v14 enumerateCacheEntriesWithEnumerator:v23];
}

uint64_t __48__MCMClientConnection__regenerateContainerPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MCMEntitlementBypassList sharedBypassList];
  v5 = [(MCMContainerCacheEntry *)v3 identifier];
  v6 = [(MCMContainerCacheEntry *)v3 containerPath];
  v7 = [v6 containerClassPath];
  v8 = [v4 containerIdIsWellknown:v5 class:{objc_msgSend(v7, "containerClass")}];

  v9 = v3;
  if ((v8 & 1) == 0)
  {
    v34 = 0;
    v10 = [(MCMContainerCacheEntry *)v3 metadataWithError:&v34];
    v11 = v34;
    if (v10)
    {
      v12 = [MCMCommandRegenerateDirectoryUUID alloc];
      v13 = [v10 containerIdentity];
      v14 = [*(a1 + 32) context];
      v15 = [(MCMCommandRegenerateDirectoryUUID *)v12 initWithConcreteContainerIdentity:v13 context:v14 resultPromise:0];

      v33 = v11;
      v16 = [v15 regenerateDirectoryUUIDNoCacheUpdateWithMetadata:v10 error:&v33];
      v17 = v33;

      if (v16)
      {
        v18 = [MCMContainerCacheEntry alloc];
        v19 = [*(a1 + 32) context];
        v20 = [v19 userIdentityCache];
        v9 = [(MCMContainerCacheEntry *)v18 initWithMetadata:v16 userIdentityCache:v20];
      }

      else
      {
        v19 = container_log_handle_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v29 = [(MCMContainerCacheEntry *)v3 identifier];
          v30 = [(MCMContainerCacheEntry *)v3 containerPath];
          v31 = [v30 containerClassPath];
          v32 = [v31 containerClass];
          *buf = 138412802;
          v36 = v29;
          v37 = 2048;
          v38 = v32;
          v39 = 2112;
          v40 = v17;
          _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to regenerate directory UUID for identifier: %@, class: %llu, error = %@", buf, 0x20u);
        }

        v9 = v3;
      }
    }

    else
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v25 = [(MCMContainerCacheEntry *)v3 identifier];
        v26 = [(MCMContainerCacheEntry *)v3 containerPath];
        v27 = [v26 containerClassPath];
        v28 = [v27 containerClass];
        *buf = 138412802;
        v36 = v25;
        v37 = 2048;
        v38 = v28;
        v39 = 2112;
        v40 = v11;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to regenerate directory UUID (couldn't read metadata) for identifier: %@, class: %llu; error = %@", buf, 0x20u);
      }

      v17 = v11;
      v9 = v3;
    }
  }

  v21 = *(a1 + 40);
  v22 = [(MCMContainerCacheEntry *)v9 identifier];
  v23 = [v21 setCacheEntry:v9 forIdentifier:v22];

  return 1;
}

- (void)rebootContainerManagerCleanupWithCompletion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = os_transaction_create();
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy_;
  v41[4] = __Block_byref_object_dispose_;
  v42 = 0;
  v5 = containermanager_copy_global_configuration();
  v6 = [v5 dispositionForContainerClass:1] == 1;

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/installd/Library/Caches/com.apple.containermanagerd" isDirectory:1];
    v8 = +[MCMFileManager defaultManager];
    v9 = [v8 itemExistsAtURL:v7];

    if (v9)
    {
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v46 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Sentencing legacy transient bundle directory [%@] to final deletion", buf, 0xCu);
      }

      context = [(MCMClientConnection *)self context];
      containerFactory = [context containerFactory];
      v40 = 0;
      v13 = [containerFactory deleteURL:v7 forUserIdentity:0 error:&v40];
      v14 = v40;

      if ((v13 & 1) == 0)
      {
        v15 = container_log_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v46 = v7;
          v47 = 2112;
          v48 = v14;
          _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to delete legacy shared transient bundle URL %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  v16 = containermanager_copy_global_configuration();
  classIterator = [v16 classIterator];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke;
  v39[3] = &unk_1E86B01A0;
  v39[4] = self;
  [classIterator selectWithIterator:v39];

  v18 = containermanager_copy_global_configuration();
  LODWORD(classIterator) = [v18 dispositionForContainerClass:2] == 1;

  if (classIterator)
  {
    context2 = [(MCMClientConnection *)self context];
    userIdentityCache = [context2 userIdentityCache];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2;
    v38[3] = &unk_1E86AFA30;
    v38[4] = self;
    v38[5] = v41;
    [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v38];
  }

  context3 = [(MCMClientConnection *)self context];
  userIdentityCache2 = [context3 userIdentityCache];
  defaultUserIdentity = [userIdentityCache2 defaultUserIdentity];

  context4 = [(MCMClientConnection *)self context];
  classIterator2 = [context4 classIterator];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_31;
  v34[3] = &unk_1E86AFA08;
  v26 = defaultUserIdentity;
  selfCopy = self;
  v37 = v41;
  v35 = v26;
  [classIterator2 selectGlobalWithIterator:v34];

  v27 = MCMSharedBackgroundQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_33;
  block[3] = &unk_1E86B0E08;
  block[4] = self;
  dispatch_async(v27, block);

  v28 = MCMSharedBackgroundQueue();
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_34;
  v30[3] = &unk_1E86AFA58;
  v31 = completionCopy;
  v32 = v43;
  v29 = completionCopy;
  dispatch_async(v28, v30);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 cleanTransientsEachBoot])
  {
    [*(a1 + 32) _cleanTransientContainersWithContainerConfig:v3];
  }
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 homeDirectoryExists])
  {
    v4 = [*(a1 + 32) context];
    v5 = [v4 classIterator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_3;
    v7[3] = &unk_1E86AFA08;
    v8 = v3;
    v9 = *(a1 + 32);
    [v5 selectUserWithIterator:v7];

    v6 = v8;
  }

  else
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Skipping orphan cleanup of data containers since home directory doesn't exist for %@", buf, 0xCu);
    }
  }
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_31(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 classPathCache];
  v6 = [v5 containerClassPathForUserIdentity:a1[4] containerConfig:v3 typeClass:objc_opt_class()];

  v7 = +[MCMFileManager defaultManager];
  v8 = [v6 classURL];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 urlsForItemsInDirectoryAtURL:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    [v6 setExists:1];
    v11 = MCMSharedBackgroundQueue();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_32;
    v16[3] = &unk_1E86B0898;
    v16[4] = a1[5];
    v17 = v10;
    v18 = v3;
    dispatch_async(v11, v16);
  }

  else
  {
    v12 = [*(*(a1[6] + 8) + 40) domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v13 = [*(*(a1[6] + 8) + 40) code];

      if (v13 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v21 = v15;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to get items : %@", buf, 0xCu);
    }
  }

LABEL_10:
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_33(uint64_t a1)
{
  v1 = *(a1 + 32);

  return [v1 _cleanupOprhanedCodeSigningMappingData];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_32(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) containerClass];

  return [v1 _cleanupOrphanedDataForDirectories:v2 containerClass:v3 forUserIdentity:0];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 classPathCache];
  v6 = [v5 containerClassPathForUserIdentity:*(a1 + 32) containerConfig:v3 typeClass:objc_opt_class()];

  v7 = +[MCMFileManager defaultManager];
  v8 = [v6 classURL];
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v7 urlsForItemsInDirectoryAtURL:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    [v6 setExists:1];
    v11 = MCMSharedBackgroundQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_4;
    block[3] = &unk_1E86B0150;
    block[4] = *(a1 + 40);
    v19 = v10;
    v20 = v3;
    v21 = *(a1 + 32);
    dispatch_async(v11, block);
  }

  else
  {
    v12 = [*(*(*(a1 + 48) + 8) + 40) domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) code];

      if (v13 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      v16 = [v3 containerClass];
      v17 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v24 = v15;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Skipping orphan cleanup of data containers for %@, %llu; error = %@", buf, 0x20u);
    }
  }

LABEL_10:
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) containerClass];
  v5 = *(a1 + 56);

  return [v2 _cleanupOrphanedDataForDirectories:v3 containerClass:v4 forUserIdentity:v5];
}

- (void)_cleanTransientContainersWithContainerConfig:(id)config
{
  v17 = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (([configCopy usesGlobalBundleUserIdentity] & 1) != 0 || objc_msgSend(configCopy, "usesGlobalSystemUserIdentity"))
  {
    v5 = +[MCMContainerClassTransientPath transientGlobalURL];
    if ([configCopy usesGlobalBundleUserIdentity])
    {
      v6 = +[MCMContainerClassTransientPath transientGlobalBundleURL];

      v5 = v6;
    }

    if (v5)
    {
      context = [(MCMClientConnection *)self context];
      containerFactory = [context containerFactory];
      v12 = 0;
      v9 = [containerFactory deleteURL:v5 forUserIdentity:0 error:&v12];
      v10 = v12;

      if ((v9 & 1) == 0)
      {
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v14 = v5;
          v15 = 2112;
          v16 = v10;
          _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to delete shared transient bundle URL %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    [(MCMClientConnection *)self _cleanTransientUserContainersWithContainerConfig:configCopy];
  }
}

- (void)_cleanTransientUserContainersWithContainerConfig:(id)config
{
  v11 = *MEMORY[0x1E69E9840];
  configCopy = config;
  context = [(MCMClientConnection *)self context];
  userIdentityCache = [context userIdentityCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__MCMClientConnection__cleanTransientUserContainersWithContainerConfig___block_invoke;
  v8[3] = &unk_1E86AFF48;
  v9 = configCopy;
  selfCopy = self;
  v7 = configCopy;
  [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v8];
}

void __72__MCMClientConnection__cleanTransientUserContainersWithContainerConfig___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 homeDirectoryExists])
  {
    v4 = +[MCMContainerClassTransientPath transientURLWithUserIdentity:withContainerClass:](MCMContainerClassTransientPath, "transientURLWithUserIdentity:withContainerClass:", v3, [*(a1 + 32) containerClass]);
    v5 = [*(a1 + 40) context];
    v6 = [v5 containerFactory];
    v10 = 0;
    v7 = [v6 deleteURL:v4 forUserIdentity:v3 error:&v10];
    v8 = v10;

    if ((v7 & 1) == 0)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v4;
        v13 = 2112;
        v14 = v8;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to delete per-user transient URL %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Skipping cleanup of transient data containers since home directory doesn't exist for %@", buf, 0xCu);
    }
  }
}

- (void)rebootContainerManagerSetup
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([v3 isBuildUpgrade])
  {
    [(MCMClientConnection *)self _regenerateContainerPaths];
    v4 = +[MCMContainerMigrator sharedInstance];
    context = [(MCMClientConnection *)self context];
    v19 = 0;
    v6 = [v4 performSynchronousBuildUpgradeMigration:v3 context:context error:&v19];
    v7 = v19;

    if ((v6 & 1) == 0)
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v21 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to perform build upgrade migration : %@", &multiuser_flags, 0xCu);
      }
    }

    [v3 writeCurrentBuildInfoToDisk];
  }

  v18 = 0;
  v17 = 0;
  v9 = [gCodeSigningMapping removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:&v18 error:&v17];
  v10 = v17;
  if ((v9 & 1) == 0)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      multiuser_flags = 138412290;
      v21 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to remove invalid plugin codesign entries; error = %@", &multiuser_flags, 0xCu);
    }
  }

  v12 = containermanager_copy_global_configuration();
  v13 = [v12 dispositionForContainerClass:7];

  if (v13 == 1)
  {
    if (v18 > 0 || (multiuser_flags = 0, v14 = MEMORY[0x1E12D3930](), !host_get_multiuser_config_flags(v14, &multiuser_flags)) && (multiuser_flags & 0x80000000) != 0)
    {
      v15 = +[MCMGroupManager defaultManager];
      context2 = [(MCMClientConnection *)self context];
      [v15 reconcileGroupContainersForContainerClass:7 context:context2];
    }
  }
}

- (void)_cleanupOprhanedCodeSigningMappingData
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = [gCodeSigningMapping removeAllAdvanceCopiesWithError:&v5];
  v3 = v5;
  if ((v2 & 1) == 0)
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "Could not remove advance copies of code sign data: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_containerURL:(id)l isValidForContainerClass:(unint64_t)class
{
  lCopy = l;
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  lastPathComponent = [lCopy lastPathComponent];
  v8 = [v6 initWithUUIDString:lastPathComponent];

  if (class == 12)
  {
    v9 = +[MCMEntitlementBypassList sharedBypassList];
    lastPathComponent2 = [lCopy lastPathComponent];
    v11 = [v9 systemContainerIdIsWellknown:lastPathComponent2];
  }

  else
  {
    if (class != 13)
    {
LABEL_7:
      v13 = v8 != 0;
      goto LABEL_8;
    }

    v9 = +[MCMEntitlementBypassList sharedBypassList];
    lastPathComponent2 = [lCopy lastPathComponent];
    v11 = [v9 systemGroupContainerIdIsWellknown:lastPathComponent2];
  }

  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (void)_cleanupOrphanedDataForDirectories:(id)directories containerClass:(unint64_t)class forUserIdentity:(id)identity
{
  v54 = *MEMORY[0x1E69E9840];
  directoriesCopy = directories;
  identityCopy = identity;
  obj = directoriesCopy;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = [directoriesCopy countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v51;
    p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
    *&v10 = 138412546;
    v41 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        v16 = [(MCMClientConnection *)self _containerURL:v15 isValidForContainerClass:class, v41];
        defaultManager = [p_superclass + 409 defaultManager];
        v18 = [defaultManager itemExistsAtURL:v15];

        if (!v18)
        {
          v19 = container_log_handle_for_category();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_32;
          }

          path = [v15 path];
          *buf = 138412290;
          v46 = path;
          _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "Ignoring deleted container path during cleanup: [%@]", buf, 0xCu);

LABEL_28:
          p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
          goto LABEL_32;
        }

        if (v16)
        {
          v19 = [v15 URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];
          defaultManager2 = [p_superclass + 409 defaultManager];
          v21 = [defaultManager2 itemDoesNotExistAtURL:v19];

          if (!v21)
          {
            goto LABEL_32;
          }

          if ((class & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            lastPathComponent = [v15 lastPathComponent];
            v23 = +[MCMEntitlementBypassList sharedBypassList];
            v24 = v23;
            v25 = class == 13 ? [v23 systemGroupContainerIdIsWellknown:lastPathComponent] : objc_msgSend(v23, "systemContainerIdIsWellknown:", lastPathComponent);
            v27 = v25;

            if (v27)
            {
              goto LABEL_28;
            }
          }

          v28 = container_log_handle_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            path2 = [v15 path];
            *buf = 138412290;
            v46 = path2;
            _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Deleting orphaned data missing a metadata file at: %@", buf, 0xCu);
          }
        }

        v29 = containermanager_copy_global_configuration();
        isInternalImage = [v29 isInternalImage];

        if (isInternalImage)
        {
          v31 = container_log_handle_for_category();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "***INTERNAL BUILD REQUEST: If you see this, file a Radar in MobileContainerManager | all with the following data:", buf, 2u);
          }

          v32 = container_log_handle_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "\tSomeone is writing invalid data to a container, which has now been orphaned. Here are the invalid files:", buf, 2u);
          }

          v33 = +[MCMFileManager defaultManager];
          [v33 printDirectoryStructureAtURL:v15];

          v34 = container_log_handle_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "***END INTERNAL BUILD REQUEST", buf, 2u);
          }
        }

        context = [(MCMClientConnection *)self context];
        containerFactory = [context containerFactory];
        v44 = 0;
        v37 = [containerFactory deleteURL:v15 forUserIdentity:identityCopy error:&v44];
        v19 = v44;

        if (v37)
        {
          goto LABEL_28;
        }

        v38 = container_log_handle_for_category();
        p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          path3 = [v15 path];
          *buf = v41;
          v46 = path3;
          v47 = 2112;
          v48 = v19;
          _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to delete [%@]; error = %@", buf, 0x16u);

          p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
        }

LABEL_32:
      }

      v11 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
    }

    while (v11);
  }
}

- (void)containerManagerCleanupWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  [(MCMClientConnection *)self _resumeDeleteOperations];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke;
  aBlock[3] = &unk_1E86AF990;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 dispositionForContainerClass:1] == 1;

  if (v7)
  {
    v8 = +[MCMContainerClassStagingPath stagingGlobalURL];
    v9 = +[MCMFileManager defaultManager];
    v10 = v35;
    obj = v35[5];
    v11 = [v9 urlsForItemsInDirectoryAtURL:v8 error:&obj];
    objc_storeStrong(v10 + 5, obj);

    if (v11)
    {
      v12 = MCMSharedBackgroundQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_10;
      block[3] = &unk_1E86B07F8;
      v31 = v5;
      v30 = v11;
      dispatch_async(v12, block);

      v13 = v31;
    }

    else
    {
      domain = [v35[5] domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        v15 = [v35[5] code] == 2;

        if (v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        path = [v8 path];
        v23 = v35[5];
        *buf = 138412546;
        v41 = path;
        v42 = 2112;
        v43 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to get items at global staging URL: %@ : %@", buf, 0x16u);
      }
    }

LABEL_11:
  }

  v16 = containermanager_copy_global_configuration();
  v17 = [v16 dispositionForContainerClass:2] == 1;

  if (v17)
  {
    context = [(MCMClientConnection *)self context];
    userIdentityCache = [context userIdentityCache];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2;
    v26[3] = &unk_1E86AF9B8;
    v28 = &v34;
    v27 = v5;
    [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v26];
  }

  v20 = MCMSharedBackgroundQueue();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2_13;
  v24[3] = &unk_1E86B07F8;
  v24[4] = self;
  v25 = completionCopy;
  v21 = completionCopy;
  dispatch_async(v20, v24);

  _Block_object_dispose(&v34, 8);
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v28;
    *&v8 = 138412546;
    v19 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        v13 = [*(a1 + 32) context];
        v14 = [v13 containerFactory];
        v21 = 0;
        v15 = [v14 deleteURL:v12 forUserIdentity:v6 error:&v21];
        v16 = v21;

        if ((v15 & 1) == 0)
        {
          v17 = container_log_handle_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v12 path];
            *buf = v19;
            v23 = v18;
            v24 = 2112;
            v25 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Failed to delete [%@]; error = %@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v9);
  }
}

uint64_t __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_10(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 16);

  return v1();
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MCMContainerClassStagingPath stagingURLWithUserIdentity:v3];
  v5 = +[MCMFileManager defaultManager];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 urlsForItemsInDirectoryAtURL:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    v8 = MCMSharedBackgroundQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_11;
    v14[3] = &unk_1E86B0AD0;
    v17 = *(a1 + 32);
    v15 = v7;
    v16 = v3;
    dispatch_async(v8, v14);

    v9 = v17;
  }

  else
  {
    v10 = [*(*(*(a1 + 40) + 8) + 40) domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v11 = [*(*(*(a1 + 40) + 8) + 40) code];

      if (v11 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = [v4 path];
      v13 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to get items at per-user staging URL: %@ : %@", buf, 0x16u);
    }
  }

LABEL_10:
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2_13(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MCMResultPromise alloc];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_3;
  v10 = &unk_1E86AF9E0;
  v11 = *(a1 + 40);
  v3 = [(MCMResultPromise *)v2 initWithCompletion:&v7];
  v4 = [MCMCommandOperationReclaimDiskSpace alloc];
  v5 = [*(a1 + 32) context];
  v6 = [(MCMCommandOperationReclaimDiskSpace *)v4 initWithAsynchronously:1 context:v5 resultPromise:v3];

  [(MCMCommandOperationReclaimDiskSpace *)v6 execute];
}

id __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  return v3;
}

uint64_t __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_11(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 16);

  return v1();
}

- (void)containerManagerSetup
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 dispositionForContainerClass:12];

  if (v4 == 1)
  {
    context = [(MCMClientConnection *)self context];
    v6 = containermanager_copy_global_configuration();
    systemContainerMode = [v6 systemContainerMode];

    if (!systemContainerMode)
    {
LABEL_60:

      goto LABEL_61;
    }

    v8 = +[MCMFileManager defaultManager];
    v9 = containermanager_copy_global_configuration();
    systemContainerMode2 = [v9 systemContainerMode];

    if (systemContainerMode2 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      globalSystemUserIdentity = [v11 globalSystemUserIdentity];
    }

    else
    {
      if (systemContainerMode2 != 2)
      {
LABEL_59:

        goto LABEL_60;
      }

      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      globalSystemUserIdentity = [v11 userIdentityForCurrentContext];
    }

    v13 = globalSystemUserIdentity;

    v14 = [MCMContainerClassBackupPath systemContainerBackupBaseDirectoryWithUserIdentity:v13];
    v15 = [MCMContainerClassBackupPath systemContainerBackupDirectoryWithUserIdentity:v13];
    v16 = [MCMContainerClassBackupPath systemGroupContainerBackupDirectoryWithUserIdentity:v13];
    v60 = v16;
    v61 = v15;
    if ([v8 itemDoesNotExistAtURL:v14])
    {
      v17 = container_log_handle_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "There are no system/system group containers staged for restore, skipping.", buf, 2u);
      }

      v62 = 0;
      v63 = 0;
      v18 = 0;
      v19 = 0;
LABEL_11:

LABEL_54:
      v65 = v19;
      v42 = [v8 removeItemAtURL:v14 error:&v65];
      v43 = v65;

      if ((v42 & 1) == 0)
      {
        v44 = container_log_handle_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          path = [v14 path];
          *v70 = 138412546;
          v71 = path;
          v72 = 2112;
          v73 = v43;
          _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to remove system container base dir %@: %@", v70, 0x16u);
        }
      }

      goto LABEL_59;
    }

    if ([v8 itemExistsAtURL:v15])
    {
      [v15 URLByAppendingPathExtension:@"inprogress"];
      v63 = v69[1] = 0;
      v20 = [v8 removeItemAtURL:? error:?];
      v21 = 0;
      if ((v20 & 1) == 0)
      {
        v22 = v16;
        v23 = container_log_handle_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = v21;
          _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to remove existing inprogress system containers: %@", buf, 0xCu);
        }

        v16 = v22;
      }

      v69[0] = v21;
      v24 = [v8 moveItemAtURL:v15 toURL:v63 error:v69];
      v19 = v69[0];

      if (v24)
      {
        v25 = 1;
        goto LABEL_24;
      }

      v26 = container_log_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v83 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to move system containers to inprogress: %@", buf, 0xCu);
      }
    }

    else
    {
      v63 = 0;
      v19 = 0;
    }

    v25 = 0;
LABEL_24:
    if ([v8 itemExistsAtURL:v16])
    {
      [v16 URLByAppendingPathExtension:@"inprogress"];
      v62 = v68[1] = v19;
      v27 = [v8 removeItemAtURL:? error:?];
      v28 = v19;

      if ((v27 & 1) == 0)
      {
        v29 = v16;
        v30 = container_log_handle_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v83 = v28;
          _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to remove existing inprogress system containers: %@", buf, 0xCu);
        }

        v16 = v29;
      }

      v68[0] = v28;
      v31 = [v8 moveItemAtURL:v16 toURL:v62 error:v68];
      v19 = v68[0];

      if (v31)
      {
        if (!v25)
        {
          v18 = 0;
          v35 = v19;
LABEL_69:
          v52 = container_log_handle_for_category();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            *v74 = 0;
            _os_log_debug_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEBUG, "Installing system group containers", v74, 2u);
          }

          v66 = v35;
          v53 = [v8 urlsForItemsInDirectoryAtURL:v62 error:&v66];
          v19 = v66;

          if (v53)
          {
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v17 = v53;
            v54 = [v17 countByEnumeratingWithState:&v78 objects:v74 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v79;
              do
              {
                for (i = 0; i != v55; ++i)
                {
                  if (*v79 != v56)
                  {
                    objc_enumerationMutation(v17);
                  }

                  _moveSystemContainerIntoPlace(*(*(&v78 + 1) + 8 * i), 13, context, v13);
                }

                v55 = [v17 countByEnumeratingWithState:&v78 objects:v74 count:16];
              }

              while (v55);
              v18 = v17;
            }

            else
            {
              v18 = v17;
            }
          }

          else
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *v74 = 138412546;
              v75 = v62;
              v76 = 2112;
              v77 = v19;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Couldn't find any system shared containers at %@: %@", v74, 0x16u);
            }

            v18 = 0;
          }

          goto LABEL_11;
        }

        v32 = 1;
LABEL_34:
        v33 = container_log_handle_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "Installing system containers", buf, 2u);
        }

        v67 = v19;
        v34 = [v8 urlsForItemsInDirectoryAtURL:v63 error:&v67];
        v35 = v67;

        if (v34)
        {
          v59 = v32;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v18 = v34;
          v36 = [v18 countByEnumeratingWithState:&v86 objects:buf count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v87;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v87 != v38)
                {
                  objc_enumerationMutation(v18);
                }

                _moveSystemContainerIntoPlace(*(*(&v86 + 1) + 8 * j), 12, context, v13);
              }

              v37 = [v18 countByEnumeratingWithState:&v86 objects:buf count:16];
            }

            while (v37);
          }

          if (v59)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v41 = container_log_handle_for_category();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v83 = v63;
            v84 = 2112;
            v85 = v35;
            _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Couldn't find any system containers at %@: %@", buf, 0x16u);
          }

          v18 = 0;
          if (v32)
          {
            goto LABEL_69;
          }
        }

        v19 = v35;
        goto LABEL_54;
      }

      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v83 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to move shared system containers to inprogress: %@", buf, 0xCu);
      }

      if ((v25 & 1) == 0)
      {
LABEL_49:
        v18 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v62 = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v32 = 0;
    goto LABEL_34;
  }

LABEL_61:
  context2 = [(MCMClientConnection *)self context];
  v64 = 0;
  v46 = [MCMCommandReplaceContainer recoverFromReplaceOperationsWithContext:context2 error:&v64];
  v47 = v64;

  if (!v46)
  {
    v48 = container_log_handle_for_category();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v83 = v47;
      _os_log_error_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_ERROR, "Failed recovering from replace operations: %@", buf, 0xCu);
    }
  }

  v49 = containermanager_copy_global_configuration();
  runmode = [v49 runmode];

  if (runmode)
  {
    v51 = +[MCMDataProtectionManager defaultManager];
    [v51 restartPendingDataProtectionOperations];
  }
}

- (id)clientBundleIdentifier
{
  context = [(MCMClientConnection *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];

  return identifier;
}

- (MCMClientConnection)initWithContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = MCMClientConnection;
  v6 = [(MCMClientConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (MCMClientConnection)init
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MCMClientConnection;
  v2 = [(MCMClientConnection *)&v14 init];
  if (v2)
  {
    v3 = +[MCMUserIdentitySharedCache sharedInstance];
    defaultUserIdentity = [v3 defaultUserIdentity];
    v5 = [MCMClientIdentity anonymousPrivilegedClientIdentityWithUserIdentity:defaultUserIdentity];
    v6 = [MCMContainerFactory alloc];
    v7 = [(MCMContainerFactory *)v6 initWithContainerCache:gContainerCache clientIdentity:v5 userIdentityCache:v3];
    v8 = [MCMCommandContext alloc];
    v9 = gContainerCache;
    v10 = containermanager_copy_global_configuration();
    v11 = [(MCMCommandContext *)v8 initWithClientIdentity:v5 containerCache:v9 containerFactory:v7 userIdentityCache:v3 clientFactory:0 kernelPersonaID:0 globalConfiguration:v10];
    context = v2->_context;
    v2->_context = v11;
  }

  return v2;
}

+ (id)privilegedClientConnectionWithUserIdentity:(id)identity
{

  return [self privilegedClientConnectionWithUserIdentity:identity kernel:0];
}

+ (id)privilegedClientConnectionWithUserIdentity:(id)identity kernel:(BOOL)kernel
{
  v5 = [MCMClientIdentity privilegedClientIdentityWithUserIdentity:identity kernel:kernel];
  v6 = +[MCMUserIdentitySharedCache sharedInstance];
  v7 = [MCMContainerFactory alloc];
  v8 = [(MCMContainerFactory *)v7 initWithContainerCache:gContainerCache clientIdentity:v5 userIdentityCache:v6];
  v9 = [MCMCommandContext alloc];
  v10 = gContainerCache;
  v11 = containermanager_copy_global_configuration();
  v12 = [(MCMCommandContext *)v9 initWithClientIdentity:v5 containerCache:v10 containerFactory:v8 userIdentityCache:v6 clientFactory:0 kernelPersonaID:0 globalConfiguration:v11];

  v13 = [[self alloc] initWithContext:v12];

  return v13;
}

+ (id)sharedClientConnection
{
  if (sharedClientConnection_onceToken != -1)
  {
    dispatch_once(&sharedClientConnection_onceToken, &__block_literal_global_977);
  }

  v2 = sharedClientConnection_sharedConnection;

  return v2;
}

uint64_t __45__MCMClientConnection_sharedClientConnection__block_invoke()
{
  sharedClientConnection_sharedConnection = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end