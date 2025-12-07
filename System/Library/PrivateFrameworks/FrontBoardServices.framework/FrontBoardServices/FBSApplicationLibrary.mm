@interface FBSApplicationLibrary
- (BOOL)isUsingNetwork;
- (FBSALOToken)_observeType:(void *)type withBlock:;
- (FBSApplicationLibrary)init;
- (FBSApplicationLibrary)initWithConfiguration:(id)configuration;
- (NSString)description;
- (id)_identitiesForProxy:(void *)proxy outRecord:;
- (id)_initWithApplicationWorkspace:(id)workspace configuration:(id)configuration;
- (id)_workQueue_addApplicationWithIdentity:(void *)identity forProxy:;
- (id)_workQueue_addPlaceholderWithIdentity:(void *)identity forProxy:;
- (id)_workQueue_applicationsForProxies:;
- (id)_workQueue_currentProcessProxyWithOutURL:(uint64_t)l;
- (id)_workQueue_removeApplicationForIdentity:(id *)identity;
- (id)_workQueue_removePlaceholderForIdentity:(id *)identity;
- (id)allInstalledApplications;
- (id)allPlaceholders;
- (id)applicationInfoForAuditToken:(id)token;
- (id)applicationInfoForBundleIdentifier:(id)identifier;
- (id)installedApplicationForIdentity:(id)identity;
- (id)installedApplicationForIdentityString:(id)string;
- (id)installedApplicationWithBundleIdentifier:(id)identifier;
- (id)installedApplicationsForBundleIdentifier:(id)identifier;
- (id)observeDidAddApplicationsWithBlock:(id)block;
- (id)observeDidAddPlaceholdersWithBlock:(id)block;
- (id)observeDidCancelPlaceholdersWithBlock:(id)block;
- (id)observeDidChangeNetworkUsageWithBlock:(id)block;
- (id)observeDidDemoteApplicationsWithBlock:(id)block;
- (id)observeDidRemoveApplicationsWithBlock:(id)block;
- (id)observeDidReplaceApplicationsWithBlock:(id)block;
- (id)observeDidUpdateApplicationsWithBlock:(id)block;
- (id)placeholderForIdentity:(id)identity;
- (id)placeholderForIdentityString:(id)string;
- (id)placeholderWithBundleIdentifier:(id)identifier;
- (id)placeholdersForBundleIdentifier:(id)identifier;
- (uint64_t)_workQueue_applicationNeedsRegeneration:(void *)regeneration fromProxy:;
- (uint64_t)_workQueue_applicationPassesFilter:(void *)filter record:(void *)record identity:;
- (uint64_t)_workQueue_placeholderPassesFilter:(void *)filter record:(void *)record identity:;
- (void)_executeOrPendInstallSynchronizationBlock:(uint64_t)block;
- (void)_fixupAdded:(void *)added removed:(id *)removed replaced:;
- (void)_handleApplicationStateDidChange:(int)change notifyForUpdateInsteadOfReplacement:;
- (void)_load;
- (void)_notifyDidChangeNetworkUsage:(uint64_t)usage;
- (void)_notifyForType:(int)type synchronously:(void *)synchronously withCastingBlock:;
- (void)_reloadPlaceholdersNotificationFired;
- (void)_workQueue_addApplication:(uint64_t)application;
- (void)_workQueue_addApplicationProxy:(uint64_t)proxy;
- (void)_workQueue_addPlaceholder:(uint64_t)placeholder;
- (void)_workQueue_applicationForIdentity:(void *)identity;
- (void)_workQueue_didAddBundleInfo:(uint64_t)info;
- (void)_workQueue_didRemoveBundleInfo:(id *)info;
- (void)_workQueue_executeInstallSynchronizationBlocksIfAppropriate;
- (void)_workQueue_placeholderForIdentity:(void *)identity;
- (void)addApplicationProxy:(id)proxy withOverrideURL:(id)l;
- (void)addApplicationRecord:(id)record;
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)applicationInstallsDidCancel:(id)cancel;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidPause:(id)pause;
- (void)applicationInstallsDidPrioritize:(id)prioritize;
- (void)applicationInstallsDidResume:(id)resume;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationInstallsDidUpdateIcon:(id)icon;
- (void)applicationStateDidChange:(id)change;
- (void)applicationsDidChangePersonas:(id)personas;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidFailToUninstall:(id)uninstall;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsDidUninstall:(id)uninstall;
- (void)applicationsWillInstall:(id)install;
- (void)applicationsWillUninstall:(id)uninstall;
- (void)dealloc;
- (void)deviceManagementPolicyDidChange:(id)change;
- (void)installedApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)invalidate;
- (void)networkUsageChanged:(BOOL)changed;
- (void)removeObserverForToken:(id)token;
- (void)uninstallApplication:(id)application completion:(id)completion;
- (void)uninstallApplication:(id)application withOptions:(id)options completion:(id)completion;
- (void)uninstallApplicationIdentity:(id)identity withOptions:(id)options completion:(id)completion;
@end

@implementation FBSApplicationLibrary

- (void)_workQueue_executeInstallSynchronizationBlocksIfAppropriate
{
  if (self)
  {
    OUTLINED_FUNCTION_13_1();
    v4 = 3221225472;
    v5 = __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke;
    v6 = &unk_1E76BCDB0;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke_2;
  block[3] = &unk_1E76BCD60;
  block[4] = v3;
  v5 = v2;
  v16 = v5;
  dispatch_sync(v4, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v8);
  }
}

void *__84__FBSApplicationLibrary__workQueue_executeInstallSynchronizationBlocksIfAppropriate__block_invoke_2(void *result)
{
  v1 = result[4];
  if (!*(v1 + 88))
  {
    v2 = result;
    result = [*(v1 + 96) count];
    if (result)
    {
      [v2[5] addObjectsFromArray:*(v2[4] + 96)];
      v3 = *(v2[4] + 96);

      return [v3 removeAllObjects];
    }
  }

  return result;
}

- (FBSApplicationLibrary)init
{
  v3 = objc_alloc_init(FBSApplicationLibraryConfiguration);
  v4 = [(FBSApplicationLibrary *)self initWithConfiguration:v3];

  return v4;
}

- (FBSApplicationLibrary)initWithConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E6963608];
  configurationCopy = configuration;
  v6 = objc_alloc_init(v4);
  v7 = [(FBSApplicationLibrary *)self _initWithApplicationWorkspace:v6 configuration:configurationCopy];

  return v7;
}

- (id)_initWithApplicationWorkspace:(id)workspace configuration:(id)configuration
{
  v28 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  configurationCopy = configuration;
  if (!workspaceCopy)
  {
    [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
  }

  v9 = configurationCopy;
  if (!configurationCopy)
  {
    [FBSApplicationLibrary _initWithApplicationWorkspace:a2 configuration:?];
  }

  v23.receiver = self;
  v23.super_class = FBSApplicationLibrary;
  v10 = [(FBSApplicationLibrary *)&v23 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    v13 = [v9 copy];
    v14 = *(v11 + 8);
    *(v11 + 8) = v13;

    if ([objc_msgSend(*(v11 + 8) "applicationInfoClass")])
    {
      v15 = [objc_msgSend(*(v11 + 8) "applicationPlaceholderClass")];
      if (v15)
      {
        v16 = FBSLogApplicationLibrary(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          installedApplicationFilter = [*(v11 + 8) installedApplicationFilter];
          v18 = @"YES";
          if (!installedApplicationFilter)
          {
            v18 = @"NO";
          }

          *buf = 134218242;
          v25 = v11;
          v26 = 2112;
          v27 = v18;
          _os_log_impl(&dword_1A2DBB000, v16, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> has custom app inclusion filter defined? %@", buf, 0x16u);
        }

        v20 = FBSLogApplicationLibrary(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          placeholderFilter = [*(v11 + 8) placeholderFilter];
          v22 = @"YES";
          if (!placeholderFilter)
          {
            v22 = @"NO";
          }

          *buf = 134218242;
          v25 = v11;
          v26 = 2112;
          v27 = v22;
          _os_log_impl(&dword_1A2DBB000, v20, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> has custom placeholder inclusion filter defined? %@", buf, 0x16u);
        }

        [off_1E76BC9B8 serial];
        [objc_claimAutoreleasedReturnValue() serviceClass:33];
        objc_claimAutoreleasedReturnValue();
        BSDispatchQueueCreate();
      }

      [(FBSApplicationLibrary *)(v11 + 8) _initWithApplicationWorkspace:a2 configuration:v11];
    }

    [(FBSApplicationLibrary *)(v11 + 8) _initWithApplicationWorkspace:a2 configuration:v11];
  }

  return 0;
}

id __69__FBSApplicationLibrary__initWithApplicationWorkspace_configuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(FBSApplicationLibrary *)self invalidate];
  v3.receiver = self;
  v3.super_class = FBSApplicationLibrary;
  [(FBSApplicationLibrary *)&v3 dealloc];
}

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__FBSApplicationLibrary_isUsingNetwork__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allInstalledApplications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__FBSApplicationLibrary_allInstalledApplications__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __49__FBSApplicationLibrary_allInstalledApplications__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)installedApplicationsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__FBSApplicationLibrary_installedApplicationsForBundleIdentifier___block_invoke;
    block[3] = &unk_1E76BE100;
    block[4] = self;
    v12 = identifierCopy;
    v7 = array;
    v13 = v7;
    dispatch_sync(workQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__FBSApplicationLibrary_installedApplicationsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 56) objectForKey:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_workQueue_applicationForIdentity:(void *)identity
{
  v3 = a2;
  v4 = v3;
  if (identity)
  {
    if (!v3)
    {
      [FBSApplicationLibrary _workQueue_applicationForIdentity:?];
    }

    v5 = identity[8];
    identityString = [v3 identityString];
    identity = [v5 objectForKey:identityString];
  }

  return identity;
}

- (id)installedApplicationForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FBSApplicationLibrary_installedApplicationForIdentity___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__FBSApplicationLibrary_installedApplicationForIdentity___block_invoke(uint64_t a1)
{
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)installedApplicationForIdentityString:(id)string
{
  v4 = MEMORY[0x1E69635D8];
  stringCopy = string;
  v6 = [[v4 alloc] initWithIdentityString:stringCopy];

  v7 = [(FBSApplicationLibrary *)self installedApplicationForIdentity:v6];

  return v7;
}

- (id)installedApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isPersonaAware = [(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware];
  if (isPersonaAware)
  {
    v6 = FBSLogApplicationLibrary(isPersonaAware);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v6 installedApplicationWithBundleIdentifier:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  v14 = [(FBSApplicationLibrary *)self installedApplicationsForBundleIdentifier:identifierCopy];
  firstObject = [v14 firstObject];

  return firstObject;
}

- (void)installedApplicationWithBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  isPersonaAware = [(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware];
  if (isPersonaAware)
  {
    v10 = FBSLogApplicationLibrary(isPersonaAware);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v10 installedApplicationWithBundleIdentifier:v11 completionHandler:v12, v13, v14, v15, v16, v17];
    }
  }

  if (!handlerCopy)
  {
    [FBSApplicationLibrary installedApplicationWithBundleIdentifier:a2 completionHandler:?];
  }

  completionQueue = self->_completionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__FBSApplicationLibrary_installedApplicationWithBundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E76BD4E0;
  v22 = identifierCopy;
  v23 = handlerCopy;
  block[4] = self;
  v19 = identifierCopy;
  v20 = handlerCopy;
  dispatch_async(completionQueue, block);
}

void __84__FBSApplicationLibrary_installedApplicationWithBundleIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) installedApplicationWithBundleIdentifier:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (id)allPlaceholders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__FBSApplicationLibrary_allPlaceholders__block_invoke;
  v5[3] = &unk_1E76BDA68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __40__FBSApplicationLibrary_allPlaceholders__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)placeholderWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isPersonaAware = [(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware];
  if (isPersonaAware)
  {
    v6 = FBSLogApplicationLibrary(isPersonaAware);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v6 placeholderWithBundleIdentifier:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  v14 = [(FBSApplicationLibrary *)self placeholdersForBundleIdentifier:identifierCopy];
  firstObject = [v14 firstObject];

  return firstObject;
}

- (id)placeholdersForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__FBSApplicationLibrary_placeholdersForBundleIdentifier___block_invoke;
    block[3] = &unk_1E76BE100;
    block[4] = self;
    v12 = identifierCopy;
    v7 = array;
    v13 = v7;
    dispatch_sync(workQueue, block);
    v8 = v13;
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __57__FBSApplicationLibrary_placeholdersForBundleIdentifier___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 56) objectForKey:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
        if (v7)
        {
          [*(a1 + 48) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_workQueue_placeholderForIdentity:(void *)identity
{
  v3 = a2;
  v4 = v3;
  if (identity)
  {
    if (!v3)
    {
      [FBSApplicationLibrary _workQueue_placeholderForIdentity:?];
    }

    v5 = identity[9];
    identityString = [v3 identityString];
    identity = [v5 objectForKey:identityString];
  }

  return identity;
}

- (id)placeholderForIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FBSApplicationLibrary_placeholderForIdentity___block_invoke;
  block[3] = &unk_1E76BDCD8;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(workQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __48__FBSApplicationLibrary_placeholderForIdentity___block_invoke(uint64_t a1)
{
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)placeholderForIdentityString:(id)string
{
  v4 = MEMORY[0x1E69635D8];
  stringCopy = string;
  v6 = [[v4 alloc] initWithIdentityString:stringCopy];

  v7 = [(FBSApplicationLibrary *)self placeholderForIdentity:v6];

  return v7;
}

- (void)uninstallApplication:(id)application completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__FBSApplicationLibrary_uninstallApplication_completion___block_invoke;
  v8[3] = &unk_1E76BDB58;
  v9 = completionCopy;
  v7 = completionCopy;
  [(FBSApplicationLibrary *)self uninstallApplication:application withOptions:0 completion:v8];
}

uint64_t __57__FBSApplicationLibrary_uninstallApplication_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)uninstallApplication:(id)application withOptions:(id)options completion:(id)completion
{
  applicationCopy = application;
  optionsCopy = options;
  completionCopy = completion;
  isPersonaAware = [(FBSApplicationLibraryConfiguration *)self->_configuration isPersonaAware];
  if (isPersonaAware)
  {
    v12 = FBSLogApplicationLibrary(isPersonaAware);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(FBSApplicationLibrary *)v12 uninstallApplication:v13 withOptions:v14 completion:v15, v16, v17, v18, v19];
    }
  }

  v20 = [(FBSApplicationLibrary *)self installedApplicationWithBundleIdentifier:applicationCopy];
  applicationIdentity = [v20 applicationIdentity];

  if (applicationIdentity || (-[FBSApplicationLibrary placeholderWithBundleIdentifier:](self, "placeholderWithBundleIdentifier:", applicationCopy), v22 = objc_claimAutoreleasedReturnValue(), [v22 applicationIdentity], applicationIdentity = objc_claimAutoreleasedReturnValue(), v22, applicationIdentity))
  {
    [(FBSApplicationLibrary *)self uninstallApplicationIdentity:applicationIdentity withOptions:optionsCopy completion:completionCopy];
LABEL_8:

    goto LABEL_9;
  }

  v24 = FBSLogApplicationLibrary(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [FBSApplicationLibrary uninstallApplication:withOptions:completion:];
  }

  if (completionCopy)
  {
    completionQueue = self->_completionQueue;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __69__FBSApplicationLibrary_uninstallApplication_withOptions_completion___block_invoke;
    v26[3] = &unk_1E76BD750;
    v28 = completionCopy;
    v27 = applicationCopy;
    dispatch_async(completionQueue, v26);

    applicationIdentity = v28;
    goto LABEL_8;
  }

LABEL_9:
}

void __69__FBSApplicationLibrary_uninstallApplication_withOptions_completion___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = *off_1E76BC958;
  v6[0] = *MEMORY[0x1E696A588];
  v6[1] = v2;
  v7[0] = @"No application found.";
  v7[1] = @"Not Found";
  v6[2] = @"FBSALIdentity";
  v3 = *(a1 + 40);
  v7[2] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = [v1 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:2 userInfo:v4];
  (*(v3 + 16))(v3, v5);
}

- (void)uninstallApplicationIdentity:(id)identity withOptions:(id)options completion:(id)completion
{
  v77 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  optionsCopy = options;
  completionCopy = completion;
  v12 = FBSLogApplicationLibrary(completionCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    fbs_shortDescription = [identityCopy fbs_shortDescription];
    *buf = 138412290;
    *v68 = fbs_shortDescription;
    _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Uninstalling %@...", buf, 0xCu);
  }

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke;
  v63[3] = &unk_1E76BF090;
  v14 = identityCopy;
  v64 = v14;
  v15 = completionCopy;
  selfCopy = self;
  v66 = v15;
  v16 = [off_1E76BC9A0 sentinelWithCompletion:v63];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__8;
  v57 = __Block_byref_object_dispose__8;
  v58 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__8;
  v51[4] = __Block_byref_object_dispose__8;
  v52 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2;
  block[3] = &unk_1E76BF0B8;
  v48 = v51;
  block[4] = self;
  v18 = v14;
  v45 = v18;
  v49 = &v59;
  v19 = optionsCopy;
  v46 = v19;
  v50 = &v53;
  v20 = v16;
  v47 = v20;
  dispatch_sync(workQueue, block);
  if (*(v60 + 24) == 1)
  {
    v22 = FBSLogApplicationLibrary(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      isUserInitiated = [v19 isUserInitiated];
      fbs_shortDescription2 = [v18 fbs_shortDescription];
      *buf = 67109378;
      *v68 = isUserInitiated;
      *&v68[4] = 2114;
      *&v68[6] = fbs_shortDescription2;
      _os_log_impl(&dword_1A2DBB000, v22, OS_LOG_TYPE_DEFAULT, "Requesting uninstallation with prompt=%{BOOL}u of %{public}@ from install coordinator", buf, 0x12u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v25 = v54[5];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Requesting uninstallation from install coordinator."];
      _FBSApplicationLibraryLogTransaction(0, 1, 1, v25, v26);
    }

    v27 = objc_alloc_init(getIXUninstallOptionsClass());
    [v27 setRequestUserConfirmation:{objc_msgSend(v19, "isUserInitiated")}];
    [v27 setShowArchiveOption:{objc_msgSend(v19, "showsArchiveOption")}];
    v28 = objc_alloc(getIXApplicationIdentityClass());
    v29 = [v28 initWithBundleIdentifier:v54[5]];
    IXAppInstallCoordinatorClass = getIXAppInstallCoordinatorClass();
    if (!IXAppInstallCoordinatorClass)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IXAppInstallCoordinator does not exist"];
      v32 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        *v68 = v34;
        *&v68[8] = 2114;
        *&v68[10] = v36;
        v69 = 2048;
        selfCopy2 = self;
        v71 = 2114;
        v72 = @"FBSApplicationLibrary.m";
        v73 = 1024;
        v74 = 384;
        v75 = 2114;
        v76 = v31;
        _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v37 = v31;
      [v31 UTF8String];
      _bs_set_crash_log_message();
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109;
    v38[3] = &unk_1E76BF108;
    v38[4] = self;
    v39 = v18;
    v41 = &v53;
    v42 = v51;
    v43 = a2;
    v40 = v20;
    [IXAppInstallCoordinatorClass uninstallAppWithIdentity:v29 options:v27 completion:v38];
  }

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isFailed])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A588];
    v26[0] = @"InstallCoordination dropped uninstall completion block on the floor.";
    v25[0] = v5;
    v25[1] = @"FBSALIdentity";
    v6 = [*(a1 + 32) fbs_mediumDescription];
    v25[2] = *off_1E76BC958;
    v26[1] = v6;
    v26[2] = @"Failed";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v8 = [v4 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:1 userInfo:v7];
  }

  else
  {
    v9 = [v3 context];
    v10 = objc_opt_class();
    v6 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v8 = v11;
  }

  if (v8)
  {
    v13 = FBSLogApplicationLibrary(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) fbs_shortDescription];
      v15 = [v8 descriptionWithMultilinePrefix:0];
      *buf = 138412546;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&dword_1A2DBB000, v13, OS_LOG_TYPE_DEFAULT, "Uninstallation of %@ completed with error: %{public}@", buf, 0x16u);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(*(a1 + 40) + 112);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_95;
    v18[3] = &unk_1E76BD750;
    v20 = v16;
    v19 = v8;
    dispatch_async(v17, v18);
  }
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2(uint64_t a1)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v2 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_applicationForIdentity:?];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_placeholderForIdentity:?];
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (!(v6 | v5))
  {
    v7 = *(a1 + 56);
    v14 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A588];
    v22[0] = @"No application or placeholder found.";
    v21[0] = v15;
    v21[1] = @"FBSALIdentity";
    v10 = [*(a1 + 40) fbs_mediumDescription];
    v21[2] = *off_1E76BC958;
    v22[1] = v10;
    v22[2] = @"Not Found";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v12 = v14;
    v13 = 2;
    goto LABEL_5;
  }

  if ([v6 _isPendingUninstall])
  {
    v7 = *(a1 + 56);
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A588];
    v24[0] = @"Uninstallation is already in progress.";
    v23[0] = v9;
    v23[1] = @"FBSALIdentity";
    v10 = [*(a1 + 40) fbs_mediumDescription];
    v23[2] = *off_1E76BC958;
    v24[1] = v10;
    v24[2] = @"In Progress";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v12 = v8;
    v13 = 3;
LABEL_5:
    v16 = [v12 errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:v13 userInfo:v11];
    [v7 signalWithContext:v16];

    goto LABEL_10;
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
  [*(*(*(a1 + 64) + 8) + 40) _setPendingUninstall:1];
  [*(*(*(a1 + 64) + 8) + 40) _setTentativeUninstall:{objc_msgSend(*(a1 + 48), "isUserInitiated")}];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v17 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v17 = v5;
  }

  v18 = [v17 bundleIdentifier];
  v19 = *(*(a1 + 80) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

LABEL_10:
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2_110;
  block[3] = &unk_1E76BF0E0;
  v7 = v5;
  v16 = v7;
  v19 = a2;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  dispatch_sync(v6, block);
  if (a2)
  {
    if (a2 == 1)
    {
      v10 = @"The user canceled uninstallation.";
      v8 = 5;
    }

    else
    {
      if (a2 != 2)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v8 = 4;
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:4 userInfo:0];

      v10 = @"The application was instead archived.";
      v7 = v9;
    }
  }

  else
  {
    if (!v7)
    {
      __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109_cold_1(a1, (a1 + 32));
    }

    v10 = @"InstallCoordination reurned an error.";
    v8 = 1;
  }

  v11 = [MEMORY[0x1E695DF90] dictionary];
  [v11 setObject:v10 forKey:*MEMORY[0x1E696A588]];
  if (v7)
  {
    [v11 setObject:v7 forKey:*MEMORY[0x1E696AA08]];
  }

  v12 = [*(a1 + 40) fbs_mediumDescription];
  [v11 setObject:v12 forKey:@"FBSALIdentity"];

  v13 = FBSApplicationLibraryErrorCodeDescription(v8);
  [v11 setObject:v13 forKey:*off_1E76BC958];

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"FBSApplicationLibraryErrorDomain" code:v8 userInfo:v11];

LABEL_12:
  [*(a1 + 48) signalWithContext:v14];
}

uint64_t __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_2_110(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = FBSLogApplicationLibrary(a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 40) fbs_shortDescription];
      v6 = [*(a1 + 32) succinctDescription];
      v13 = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported an error for uninstallation of %{public}@: %{public}@", &v13, 0x16u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v7 = @"IX uninstallation failed.";
LABEL_10:
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v7];
      _FBSApplicationLibraryLogTransaction(0, 2, v2 == 0, v10, v11);
    }
  }

  else
  {
    if (v4)
    {
      v8 = soft_IXStringForUninstallDisposition(*(a1 + 64));
      v9 = [*(a1 + 40) fbs_shortDescription];
      v13 = 138412546;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "Install coordinator reported success with disposition %@ for %{public}@", &v13, 0x16u);
    }

    if (FBSApplicationLibraryLogTransactionEnabled())
    {
      v7 = @"IX uninstallation succeeded.";
      goto LABEL_10;
    }
  }

  [*(*(*(a1 + 56) + 8) + 40) _setPendingUninstall:0];
  return [*(*(*(a1 + 56) + 8) + 40) _setTentativeUninstall:0];
}

- (NSString)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__FBSApplicationLibrary_description__block_invoke;
  v5[3] = &unk_1E76BD530;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__FBSApplicationLibrary_description__block_invoke(uint64_t a1)
{
  v10 = [off_1E76BC9B0 builderWithObject:*(a1 + 32)];
  v2 = [*(*(a1 + 32) + 72) allValues];
  v3 = [v10 appendObject:v2 withName:@"placeholders"];

  v4 = [*(*(a1 + 32) + 64) allValues];
  v5 = [v10 appendObject:v4 withName:@"applications"];

  v6 = [v10 appendBool:*(*(a1 + 32) + 48) withName:@"usingNetwork"];
  v7 = [v10 build];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)removeObserverForToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (tokenCopy)
  {
    observerQueue = self->_observerQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__FBSApplicationLibrary_removeObserverForToken___block_invoke;
    v7[3] = &unk_1E76BCD60;
    v7[4] = self;
    v8 = tokenCopy;
    dispatch_async(observerQueue, v7);
  }
}

void __48__FBSApplicationLibrary_removeObserverForToken___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  if (![*(*(a1 + 32) + 32) count])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
  }
}

- (id)observeDidAddPlaceholdersWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (FBSALOToken)_observeType:(void *)type withBlock:
{
  typeCopy = type;
  v6 = typeCopy;
  v7 = 0;
  if (self && typeCopy)
  {
    v8 = [typeCopy copy];
    v9 = objc_opt_new();
    v9[1] = a2;
    v10 = *(self + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__FBSApplicationLibrary__observeType_withBlock___block_invoke;
    block[3] = &unk_1E76BF150;
    block[4] = self;
    v15 = v8;
    v7 = v9;
    v14 = v7;
    v11 = v8;
    dispatch_async(v10, block);
  }

  return v7;
}

- (id)observeDidCancelPlaceholdersWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidAddApplicationsWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidReplaceApplicationsWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidUpdateApplicationsWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidRemoveApplicationsWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidDemoteApplicationsWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (id)observeDidChangeNetworkUsageWithBlock:(id)block
{
  v4 = MEMORY[0x1A58E80F0](block, a2);
  v5 = [(FBSApplicationLibrary *)self _observeType:v4 withBlock:?];

  return v5;
}

- (void)addApplicationRecord:(id)record
{
  fbs_correspondingApplicationProxy = [record fbs_correspondingApplicationProxy];
  [(FBSApplicationLibrary *)self addApplicationProxy:fbs_correspondingApplicationProxy withOverrideURL:0];
}

- (void)addApplicationProxy:(id)proxy withOverrideURL:(id)l
{
  proxyCopy = proxy;
  lCopy = l;
  if (!proxyCopy)
  {
    [FBSApplicationLibrary addApplicationProxy:a2 withOverrideURL:?];
  }

  if (lCopy)
  {
    [FBSApplicationLibrary addApplicationProxy:a2 withOverrideURL:?];
  }

  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__FBSApplicationLibrary_addApplicationProxy_withOverrideURL___block_invoke;
  v11[3] = &unk_1E76BCD60;
  v11[4] = self;
  v12 = proxyCopy;
  v10 = proxyCopy;
  dispatch_async(workQueue, v11);
}

- (void)_reloadPlaceholdersNotificationFired
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__FBSApplicationLibrary__reloadPlaceholdersNotificationFired__block_invoke;
  block[3] = &unk_1E76BCDB0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __61__FBSApplicationLibrary__reloadPlaceholdersNotificationFired__block_invoke(uint64_t a1)
{
  v2 = FBSLogApplicationLibrary(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_INFO, "Reloading all progress for placeholders...", v4, 2u);
  }

  return [*(*(a1 + 32) + 72) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_22];
}

- (void)_executeOrPendInstallSynchronizationBlock:(uint64_t)block
{
  v3 = a2;
  v4 = v3;
  if (block && v3)
  {
    v5 = *(block + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__FBSApplicationLibrary__executeOrPendInstallSynchronizationBlock___block_invoke;
    v6[3] = &unk_1E76BD750;
    v6[4] = block;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __67__FBSApplicationLibrary__executeOrPendInstallSynchronizationBlock___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) copy];
  v2 = *(*(a1 + 32) + 96);
  v3 = MEMORY[0x1A58E80F0]();
  [v2 addObject:v3];

  [(FBSApplicationLibrary *)*(a1 + 32) _workQueue_executeInstallSynchronizationBlocksIfAppropriate];
}

void __48__FBSApplicationLibrary__observeType_withBlock___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:1];
    v4 = a1[4];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[4] + 32);
  }

  v6 = MEMORY[0x1A58E80F0](a1[6]);
  [v2 setObject:v6 forKey:a1[5]];
}

void __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC70] hashTableWithOptions:512];
  v3 = a1[4];
  v4 = *(v3 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke_2;
  block[3] = &unk_1E76BF178;
  v5 = a1[6];
  block[4] = v3;
  v18 = v5;
  v6 = v2;
  v17 = v6;
  dispatch_sync(v4, block);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(a1[5] + 16))(a1[5]);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v9);
  }
}

void __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke_2(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (*(*(*(&v11 + 1) + 8 * v6) + 8) == a1[6])
        {
          v7 = [*(a1[4] + 32) objectForKey:v11];
          v8 = v7;
          if (v7)
          {
            v9 = a1[5];
            v10 = MEMORY[0x1A58E80F0](v7);
            [v9 addObject:v10];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)_identitiesForProxy:(void *)proxy outRecord:
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (!v5)
    {
      [FBSApplicationLibrary _identitiesForProxy:? outRecord:?];
    }

    fbs_correspondingApplicationRecord = [v5 fbs_correspondingApplicationRecord];
    v8 = fbs_correspondingApplicationRecord;
    if (proxy)
    {
      v9 = fbs_correspondingApplicationRecord;
      *proxy = v8;
    }

    if (v8)
    {
      isPersonaAware = [self[1] isPersonaAware];
      identities = [v8 identities];
      self = identities;
      if ((isPersonaAware & 1) == 0)
      {
        firstObject = [identities firstObject];
        v15[0] = firstObject;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

        self = v13;
      }
    }

    else
    {
      self = MEMORY[0x1E695E0F0];
    }
  }

  return self;
}

void __30__FBSApplicationLibrary__load__block_invoke_183(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndex:a2];
  if (_proxyPassesInclusionFilter(v3, *(a1 + 64), *(a1 + 40)))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 48);
    v14 = 0;
    v5 = [(FBSApplicationLibrary *)v4 _identitiesForProxy:v3 outRecord:&v14];
    v6 = v14;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (_proxyPassesIdentityFilter(v11, v6, *(a1 + 72), *(a1 + 40)))
          {
            v12 = [v6 fbs_processIdentityForApplicationIdentity:v11];
            v13 = [objc_alloc(*(a1 + 80)) _initWithApplicationProxy:v3 record:v6 appIdentity:v11 processIdentity:v12 overrideURL:0];
            os_unfair_lock_lock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___ApplicationLock);
            [*(a1 + 56) addObject:v13];
            os_unfair_lock_unlock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___ApplicationLock);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }
}

void __30__FBSApplicationLibrary__load__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) objectAtIndex:a2];
  if (_proxyPassesInclusionFilter(v3, *(a1 + 56), 0))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = *(a1 + 40);
    v13 = 0;
    v5 = [(FBSApplicationLibrary *)v4 _identitiesForProxy:v3 outRecord:&v13];
    v6 = v13;
    v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (_proxyPassesIdentityFilter(v11, v6, *(a1 + 64), 0))
          {
            v12 = [objc_alloc(*(a1 + 72)) _initWithApplicationProxy:v3 identity:v11];
            os_unfair_lock_lock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___PlaceholderLock);
            [*(a1 + 48) addObject:v12];
            os_unfair_lock_unlock(&FBSApplicationLibraryErrorIdentityKey_block_invoke___PlaceholderLock);
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

void __30__FBSApplicationLibrary__load__block_invoke_3(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addApplication:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addPlaceholder:?];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_workQueue_addApplication:(uint64_t)application
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (application)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Fbsapplication_18.isa);
    if (!v5)
    {
      [FBSApplicationLibrary _workQueue_addApplication:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSApplicationLibrary _workQueue_addApplication:?];
    }

    applicationIdentity = [v5 applicationIdentity];
    identityString = [applicationIdentity identityString];
    v8 = [*(application + 64) objectForKey:identityString];

    if (v8)
    {
      [(FBSApplicationLibrary *)identityString _workQueue_addApplication:?];
    }

    [*(application + 64) setObject:v5 forKey:identityString];
    [(FBSApplicationLibrary *)application _workQueue_didAddBundleInfo:v5];
    v10 = FBSLogApplicationLibrary(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [v5 succinctDescription];
      v12 = 138412290;
      v13 = succinctDescription;
      _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "Added application: %@", &v12, 0xCu);
    }
  }
}

- (void)_workQueue_addPlaceholder:(uint64_t)placeholder
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (placeholder)
  {
    v5 = v3;
    NSClassFromString(&cfstr_Fbsapplication_2.isa);
    if (!v5)
    {
      [FBSApplicationLibrary _workQueue_addPlaceholder:?];
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSApplicationLibrary _workQueue_addPlaceholder:?];
    }

    applicationIdentity = [v5 applicationIdentity];
    identityString = [applicationIdentity identityString];
    v8 = [*(placeholder + 72) objectForKey:identityString];

    if (v8)
    {
      [(FBSApplicationLibrary *)identityString _workQueue_addPlaceholder:?];
    }

    [*(placeholder + 72) setObject:v5 forKey:identityString];
    [v5 setAppLibrary:placeholder];
    [(FBSApplicationLibrary *)placeholder _workQueue_didAddBundleInfo:v5];
    v10 = FBSLogApplicationLibrary(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      succinctDescription = [v5 succinctDescription];
      v12 = 138412290;
      v13 = succinctDescription;
      _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "Added placeholder: %@", &v12, 0xCu);
    }
  }
}

- (void)applicationInstallsDidStart:(id)start
{
  v46 = *MEMORY[0x1E69E9840];
  startCopy = start;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [startCopy countByEnumeratingWithState:&v37 objects:v45 count:16];
  v6 = v4;
  if (v4)
  {
    v7 = *v38;
    *&v5 = 136315394;
    v22 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(startCopy);
        }

        v9 = *(*(&v37 + 1) + 8 * v8);
        v10 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v9 bundleIdentifier];
          *buf = v22;
          *&buf[4] = "[FBSApplicationLibrary applicationInstallsDidStart:]";
          *&buf[12] = 2114;
          *&buf[14] = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v8;
      }

      while (v6 != v8);
      v4 = [startCopy countByEnumeratingWithState:&v37 objects:v45 count:16];
      v6 = v4;
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v42 = __Block_byref_object_copy__8;
  v43 = __Block_byref_object_dispose__8;
  v44 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__8;
  v35 = __Block_byref_object_dispose__8;
  v36 = 0;
  workQueue = self->_workQueue;
  block = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke;
  v26 = &unk_1E76BF210;
  v13 = startCopy;
  v27 = v13;
  selfCopy = self;
  v29 = buf;
  v30 = &v31;
  dispatch_sync(workQueue, &block);
  if ([v32[5] count])
  {
    [(FBSApplicationLibrary *)self _notifyDidAddPlaceholders:?];
  }

  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)self _notifyDidDemoteApplications:v14, v15, v16, v17, v18, v19, v20, self, v22, *(&v22 + 1), block, v24, v25, v26];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(buf, 8);
}

void __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v2)
  {
    v3 = v2;
    v17 = *v25;
    do
    {
      v4 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * v4);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v6 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v5 outRecord:0];
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v21;
          do
          {
            v10 = 0;
            do
            {
              if (*v21 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v20 + 1) + 8 * v10);
              if (FBSInstallTypeIsCloudDemoted([v5 installType]))
              {
                __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke_cold_1((a1 + 40), v11, a1 + 48, v19);
              }

              v12 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:v11];
              if (v12)
              {
                v13 = v12;
                [v12 _setProxy:v5];
                [v13 _noteChangedSignificantly];
              }

              else
              {
                v13 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_addPlaceholderWithIdentity:v11 forProxy:v5];
                v14 = *(*(a1 + 56) + 8);
                v18 = *(v14 + 40);
                _addResultToArrayCreatingArrayIfNecessary(&v18, v13);
                objc_storeStrong((v14 + 40), v18);
              }

              ++v10;
            }

            while (v8 != v10);
            v15 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            v8 = v15;
          }

          while (v15);
        }

        ++v4;
      }

      while (v4 != v3);
      v3 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v3);
  }
}

- (void)applicationInstallsDidChange:(id)change
{
  v26 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [changeCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(changeCopy);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v22 = "[FBSApplicationLibrary applicationInstallsDidChange:]";
          v23 = 2114;
          v24 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_INFO, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [changeCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FBSApplicationLibrary_applicationInstallsDidChange___block_invoke;
  block[3] = &unk_1E76BCD60;
  v15 = changeCopy;
  selfCopy = self;
  v12 = changeCopy;
  dispatch_async(workQueue, block);
}

void __54__FBSApplicationLibrary_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v16)
  {
    v15 = *v23;
    do
    {
      v2 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v2;
        v3 = *(*(&v22 + 1) + 8 * v2);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v4 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v3 outRecord:0];
        v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v19;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v19 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v18 + 1) + 8 * i);
              v10 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:v9];
              v11 = v10;
              if (v10)
              {
                [v10 _setProxy:v3];
              }

              else
              {
                v12 = FBSLogApplicationLibrary(0);
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [v9 fbs_shortDescription];
                  *buf = 138543362;
                  v27 = v13;
                  _os_log_impl(&dword_1A2DBB000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring install did change unknown placeholder %{public}@", buf, 0xCu);
                }
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
          }

          while (v6);
        }

        v2 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    }

    while (v16);
  }
}

- (void)applicationInstallsDidUpdateIcon:(id)icon
{
  v26 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [iconCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(iconCopy);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v22 = "[FBSApplicationLibrary applicationInstallsDidUpdateIcon:]";
          v23 = 2114;
          v24 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [iconCopy countByEnumeratingWithState:&v17 objects:v25 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__FBSApplicationLibrary_applicationInstallsDidUpdateIcon___block_invoke;
  block[3] = &unk_1E76BCD60;
  v15 = iconCopy;
  selfCopy = self;
  v12 = iconCopy;
  dispatch_async(workQueue, block);
}

void __58__FBSApplicationLibrary_applicationInstallsDidUpdateIcon___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [(FBSApplicationLibrary *)*(a1 + 40) _identitiesForProxy:v6 outRecord:0];
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            v11 = 0;
            do
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [(FBSApplicationLibrary *)*(a1 + 40) _workQueue_placeholderForIdentity:?];
              v13 = v12;
              if (v12)
              {
                [v12 _setProxy:v6];
                [v13 _noteChangedSignificantly];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }
}

- (void)applicationsDidInstall:(id)install
{
  v25 = a2;
  selfCopy = self;
  v68 = *MEMORY[0x1E69E9840];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  installCopy = install;
  v4 = [installCopy countByEnumeratingWithState:&v59 objects:v67 count:16];
  v6 = v4;
  if (v4)
  {
    v7 = *v60;
    *&v5 = 136315394;
    v28 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v60 != v7)
        {
          objc_enumerationMutation(installCopy);
        }

        v9 = *(*(&v59 + 1) + 8 * v8);
        v10 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v9 bundleIdentifier];
          *buf = v28;
          *&buf[4] = "[FBSApplicationLibrary applicationsDidInstall:]";
          *&buf[12] = 2114;
          *&buf[14] = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        appState = [v9 appState];
        isPlaceholder = [appState isPlaceholder];

        if (isPlaceholder)
        {
          [(FBSApplicationLibrary *)v9 applicationsDidInstall:v25];
        }

        appState2 = [v9 appState];
        isInstalled = [appState2 isInstalled];

        if ((isInstalled & 1) == 0)
        {
          [(FBSApplicationLibrary *)v9 applicationsDidInstall:v25];
        }

        ++v8;
      }

      while (v6 != v8);
      v4 = [installCopy countByEnumeratingWithState:&v59 objects:v67 count:16];
      v6 = v4;
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v64 = __Block_byref_object_copy__8;
  v65 = __Block_byref_object_dispose__8;
  v66 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__8;
  v57 = __Block_byref_object_dispose__8;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__8;
  v51 = __Block_byref_object_dispose__8;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__8;
  v45 = __Block_byref_object_dispose__8;
  v46 = 0;
  workQueue = selfCopy->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke;
  block[3] = &unk_1E76BF238;
  block[4] = selfCopy;
  v17 = installCopy;
  v36 = v17;
  v37 = &v47;
  v38 = &v53;
  v39 = buf;
  v40 = &v41;
  dispatch_sync(workQueue, block);
  if ([v48[5] count])
  {
    [(FBSApplicationLibrary *)selfCopy _notifyDidCancelPlaceholders:?];
  }

  if ([v54[5] count])
  {
    [(FBSApplicationLibrary *)selfCopy _notifyDidRemoveApplications:v18, v19, v20, v21, v22, v23, v26, selfCopy, v28, *(&v28 + 1), v29, v30, v31, v32];
  }

  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)selfCopy _notifyDidAddApplications:?];
  }

  if ([v42[5] count])
  {
    [(FBSApplicationLibrary *)selfCopy _notifyDidReplaceApplications:?];
  }

  v24 = selfCopy->_workQueue;
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke_241;
  v33 = &unk_1E76BCDB0;
  v34 = selfCopy;
  dispatch_sync(v24, &v30);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(buf, 8);
}

- (void)applicationsDidUninstall:(id)uninstall
{
  v50 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [uninstallCopy countByEnumeratingWithState:&v41 objects:v49 count:16];
  v6 = v4;
  if (v4)
  {
    v7 = *v42;
    *&v5 = 136315394;
    v24 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v9 bundleIdentifier];
          *buf = v24;
          *&buf[4] = "[FBSApplicationLibrary applicationsDidUninstall:]";
          *&buf[12] = 2114;
          *&buf[14] = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v8;
      }

      while (v6 != v8);
      v4 = [uninstallCopy countByEnumeratingWithState:&v41 objects:v49 count:16];
      v6 = v4;
    }

    while (v4);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__8;
  v48 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__8;
  v39 = __Block_byref_object_dispose__8;
  v40 = 0;
  selfCopy = self;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke;
  block[3] = &unk_1E76BF210;
  block[4] = self;
  v14 = uninstallCopy;
  v32 = v14;
  v33 = &v35;
  v34 = buf;
  dispatch_sync(workQueue, block);
  if ([*(*&buf[8] + 40) count])
  {
    [(FBSApplicationLibrary *)self _notifyDidCancelPlaceholders:?];
  }

  if ([v36[5] count])
  {
    [(FBSApplicationLibrary *)self _notifyDidRemoveApplications:v15, v16, v17, v18, v19, v20, v22, self, v24, *(&v24 + 1), v25, v26, v27, v28];
  }

  v21 = selfCopy->_workQueue;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke_2;
  v29 = &unk_1E76BCDB0;
  v30 = selfCopy;
  dispatch_sync(v21, &v26);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(buf, 8);
}

- (void)_handleApplicationStateDidChange:(int)change notifyForUpdateInsteadOfReplacement:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__8;
    v60 = __Block_byref_object_dispose__8;
    v61 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__8;
    v54 = __Block_byref_object_dispose__8;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__8;
    v48 = __Block_byref_object_dispose__8;
    v49 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__8;
    v42 = __Block_byref_object_dispose__8;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__8;
    v36 = __Block_byref_object_dispose__8;
    v37 = 0;
    v7 = *(self + 40);
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke;
    v24 = &unk_1E76BF260;
    selfCopy = self;
    v26 = v5;
    v27 = &v50;
    v28 = &v38;
    v29 = &v32;
    v30 = &v44;
    v31 = &v56;
    dispatch_sync(v7, &block);
    if ([v57[5] count])
    {
      [(FBSApplicationLibrary *)self _notifyDidAddPlaceholders:?];
    }

    if ([v51[5] count])
    {
      [(FBSApplicationLibrary *)self _notifyDidCancelPlaceholders:?];
    }

    if ([v45[5] count])
    {
      [(FBSApplicationLibrary *)self _notifyDidAddApplications:?];
    }

    if ([v39[5] count])
    {
      [(FBSApplicationLibrary *)self _notifyDidRemoveApplications:v8, v9, v10, v11, v12, v13, v16, v17, v18, v19, selfCopy2, block, v22, v23];
    }

    if ([v33[5] count])
    {
      v14 = v33[5];
      if (change)
      {
        [(FBSApplicationLibrary *)self _notifyDidUpdateApplications:v14];
      }

      else
      {
        [(FBSApplicationLibrary *)self _notifyDidReplaceApplications:v14];
      }
    }

    v15 = *(self + 40);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke_242;
    v19 = &unk_1E76BCDB0;
    selfCopy2 = self;
    dispatch_sync(v15, &v16);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);

    _Block_object_dispose(&v56, 8);
  }
}

- (void)applicationStateDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [changeCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(changeCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary applicationStateDidChange:]";
          v18 = 2114;
          v19 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [changeCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
      v5 = v4;
    }

    while (v4);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:changeCopy notifyForUpdateInsteadOfReplacement:0];
}

- (void)networkUsageChanged:(BOOL)changed
{
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__FBSApplicationLibrary_networkUsageChanged___block_invoke;
  v4[3] = &unk_1E76BF288;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(workQueue, v4);
}

- (void)deviceManagementPolicyDidChange:(id)change
{
  v21 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [changeCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(changeCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary deviceManagementPolicyDidChange:]";
          v18 = 2114;
          v19 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [changeCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
      v5 = v4;
    }

    while (v4);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:changeCopy notifyForUpdateInsteadOfReplacement:1];
}

- (void)applicationsDidChangePersonas:(id)personas
{
  v21 = *MEMORY[0x1E69E9840];
  personasCopy = personas;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [personasCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(personasCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v17 = "[FBSApplicationLibrary applicationsDidChangePersonas:]";
          v18 = 2114;
          v19 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [personasCopy countByEnumeratingWithState:&v12 objects:v20 count:16];
      v5 = v4;
    }

    while (v4);
  }

  [(FBSApplicationLibrary *)self _handleApplicationStateDidChange:personasCopy notifyForUpdateInsteadOfReplacement:0];
}

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  v37 = *MEMORY[0x1E69E9840];
  prioritizedCopy = prioritized;
  pausedCopy = paused;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [prioritizedCopy countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(prioritizedCopy);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = FBSLogApplicationLibraryObserver(v6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v10 bundleIdentifier];
          *buf = 136315394;
          v33 = "[FBSApplicationLibrary applicationInstallsArePrioritized:arePaused:]";
          v34 = 2114;
          v35 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "%s %{public}@ (prioritized)", buf, 0x16u);
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [prioritizedCopy countByEnumeratingWithState:&v27 objects:v36 count:16];
      v7 = v6;
    }

    while (v6);
  }

  v22 = prioritizedCopy;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = pausedCopy;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        v19 = FBSLogApplicationLibraryObserver(v14);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier2 = [v18 bundleIdentifier];
          *buf = 136315394;
          v33 = "[FBSApplicationLibrary applicationInstallsArePrioritized:arePaused:]";
          v34 = 2114;
          v35 = bundleIdentifier2;
          _os_log_impl(&dword_1A2DBB000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@ (paused)", buf, 0x16u);
        }

        ++v17;
      }

      while (v15 != v17);
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
      v15 = v14;
    }

    while (v14);
  }
}

- (void)applicationInstallsDidPause:(id)pause
{
  v20 = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [pauseCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(pauseCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidPause:]";
          v17 = 2114;
          v18 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [pauseCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)applicationInstallsDidResume:(id)resume
{
  v20 = *MEMORY[0x1E69E9840];
  resumeCopy = resume;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [resumeCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(resumeCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidResume:]";
          v17 = 2114;
          v18 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [resumeCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)applicationInstallsDidCancel:(id)cancel
{
  v20 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [cancelCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(cancelCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidCancel:]";
          v17 = 2114;
          v18 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [cancelCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)applicationInstallsDidPrioritize:(id)prioritize
{
  v20 = *MEMORY[0x1E69E9840];
  prioritizeCopy = prioritize;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [prioritizeCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(prioritizeCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v16 = "[FBSApplicationLibrary applicationInstallsDidPrioritize:]";
          v17 = 2114;
          v18 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [prioritizeCopy countByEnumeratingWithState:&v11 objects:v19 count:16];
      v5 = v4;
    }

    while (v4);
  }
}

- (void)applicationsWillInstall:(id)install
{
  v25 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [installCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsWillInstall:]";
          v22 = 2114;
          v23 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [installCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FBSApplicationLibrary_applicationsWillInstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = installCopy;
  v12 = installCopy;
  dispatch_sync(workQueue, block);
}

- (void)applicationsDidFailToInstall:(id)install
{
  v25 = *MEMORY[0x1E69E9840];
  installCopy = install;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [installCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(installCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsDidFailToInstall:]";
          v22 = 2114;
          v23 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [installCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FBSApplicationLibrary_applicationsDidFailToInstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = installCopy;
  v12 = installCopy;
  dispatch_sync(workQueue, block);
}

- (void)applicationsWillUninstall:(id)uninstall
{
  v25 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsWillUninstall:]";
          v22 = 2114;
          v23 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FBSApplicationLibrary_applicationsWillUninstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = uninstallCopy;
  v12 = uninstallCopy;
  dispatch_sync(workQueue, block);
}

- (void)applicationsDidFailToUninstall:(id)uninstall
{
  v25 = *MEMORY[0x1E69E9840];
  uninstallCopy = uninstall;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(uninstallCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = FBSLogApplicationLibraryObserver(v4);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier = [v8 bundleIdentifier];
          *buf = 136315394;
          v21 = "[FBSApplicationLibrary applicationsDidFailToUninstall:]";
          v22 = 2114;
          v23 = bundleIdentifier;
          _os_log_impl(&dword_1A2DBB000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [uninstallCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v4;
    }

    while (v4);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__FBSApplicationLibrary_applicationsDidFailToUninstall___block_invoke;
  block[3] = &unk_1E76BCD60;
  block[4] = self;
  v15 = uninstallCopy;
  v12 = uninstallCopy;
  dispatch_sync(workQueue, block);
}

- (id)applicationInfoForBundleIdentifier:(id)identifier
{
  v3 = [(FBSApplicationLibrary *)self installedApplicationsForBundleIdentifier:identifier];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)applicationInfoForAuditToken:(id)token
{
  bundleID = [token bundleID];
  v5 = [(FBSApplicationLibrary *)self applicationInfoForBundleIdentifier:bundleID];

  return v5;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    self->_lock_invalidated = 1;
    v4 = FBSLogApplicationLibrary(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1A2DBB000, v4, OS_LOG_TYPE_DEFAULT, "FBSApplicationLibrary<%p> invalidated", &v7, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MISProvisioningProfileInstalled", 0);
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"MISProvisioningProfileRemoved", 0);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];

    [(LSApplicationWorkspace *)self->_applicationWorkspace removeObserver:self];
    [(BSInvalidatable *)self->_stateCaptureAssertion invalidate];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_load
{
  if (self)
  {
    OUTLINED_FUNCTION_13_1();
    v4 = 3221225472;
    v5 = __30__FBSApplicationLibrary__load__block_invoke;
    v6 = &unk_1E76BCDB0;
    v7 = v1;
    dispatch_sync(v2, block);
  }
}

- (void)_workQueue_addApplicationProxy:(uint64_t)proxy
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (proxy)
  {
    BSDispatchQueueAssert();
  }
}

- (id)_workQueue_currentProcessProxyWithOutURL:(uint64_t)l
{
  if (l)
  {
    BSDispatchQueueAssert();
  }

  return 0;
}

- (void)_notifyForType:(int)type synchronously:(void *)synchronously withCastingBlock:
{
  synchronouslyCopy = synchronously;
  if (self)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v10 = __71__FBSApplicationLibrary__notifyForType_synchronously_withCastingBlock___block_invoke;
    v11 = &unk_1E76BEA50;
    selfCopy = self;
    v14 = a2;
    v13 = synchronouslyCopy;
    v8 = MEMORY[0x1A58E80F0](v9);
    if (type)
    {
      BSDispatchQueueAssertNot();
    }

    dispatch_async(*(self + 104), v8);
  }
}

- (void)_notifyDidChangeNetworkUsage:(uint64_t)usage
{
  v12 = *MEMORY[0x1E69E9840];
  if (usage)
  {
    v5 = FBSLogApplicationLibrary(usage);
    if (OUTLINED_FUNCTION_32(v5))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_INFO, "Notifying observers of network usage changed: usingNetwork=%d", buf, 8u);
    }

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_16();
    v7 = __54__FBSApplicationLibrary__notifyDidChangeNetworkUsage___block_invoke;
    v8 = &__block_descriptor_33_e8_v16__0_8l;
    v9 = a2;
    [(FBSApplicationLibrary *)usage _notifyForType:0 synchronously:v6 withCastingBlock:?];
  }
}

void __30__FBSApplicationLibrary__load__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = FBSLogApplicationLibrary(a1);
  if (OUTLINED_FUNCTION_54(v3))
  {
    *buf = 0;
    OUTLINED_FUNCTION_43();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  [*(*(a1 + 32) + 16) addObserver:?];
  BSContinuousMachTimeNow();
}

- (id)_workQueue_addPlaceholderWithIdentity:(void *)identity forProxy:
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  identityCopy = identity;
  v7 = identityCopy;
  if (self)
  {
    appState = [identityCopy appState];
    isPlaceholder = [appState isPlaceholder];

    if (isPlaceholder)
    {
      v10 = OUTLINED_FUNCTION_44();
      v13 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:v12];
      v14 = 0;
      v15 = [v13 containsObject:v5];

      if (v15)
      {
        v17 = OUTLINED_FUNCTION_44();
        v19 = [(FBSApplicationLibrary *)v17 _workQueue_placeholderPassesFilter:v18 record:v14 identity:v5];
        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          [objc_alloc(objc_msgSend(self[1] "applicationPlaceholderClass"))];
          v21 = OUTLINED_FUNCTION_26();
          [(FBSApplicationLibrary *)v21 _workQueue_addPlaceholder:?];
          objc_autoreleasePoolPop(v20);
        }

        else
        {
          v22 = FBSLogApplicationLibrary(v19);
          if (OUTLINED_FUNCTION_38(v22))
          {
            fbs_shortDescription = [v5 fbs_shortDescription];
            v26 = 138412290;
            v27 = fbs_shortDescription;
            OUTLINED_FUNCTION_22(&dword_1A2DBB000, v24, v25, "Not creating placeholder because it is filtered: %@", &v26);
          }
        }
      }
    }
  }

  return 0;
}

- (id)_workQueue_addApplicationWithIdentity:(void *)identity forProxy:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  identityCopy = identity;
  v7 = identityCopy;
  if (self)
  {
    appState = [identityCopy appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      v10 = OUTLINED_FUNCTION_44();
      v13 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:v12];
      v14 = 0;
      v15 = [v13 containsObject:v5];

      if (v15)
      {
        v17 = OUTLINED_FUNCTION_44();
        v19 = [(FBSApplicationLibrary *)v17 _workQueue_applicationPassesFilter:v18 record:v14 identity:v5];
        if (v19)
        {
          v20 = objc_autoreleasePoolPush();
          v21 = [v14 fbs_processIdentityForApplicationIdentity:v5];
          [objc_alloc(objc_msgSend(self[1] "applicationInfoClass"))];
          v22 = OUTLINED_FUNCTION_26();
          [(FBSApplicationLibrary *)v22 _workQueue_addApplication:?];

          objc_autoreleasePoolPop(v20);
        }

        else
        {
          v23 = FBSLogApplicationLibrary(v19);
          if (OUTLINED_FUNCTION_38(v23))
          {
            fbs_shortDescription = [v5 fbs_shortDescription];
            v27 = 138412290;
            v28 = fbs_shortDescription;
            OUTLINED_FUNCTION_22(&dword_1A2DBB000, v25, v26, "Not creating app because it is filtered: %@", &v27);
          }
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_workQueue_applicationPassesFilter:(void *)filter record:(void *)record identity:
{
  filterCopy = filter;
  recordCopy = record;
  if (self)
  {
    v9 = *(self + 8);
    v10 = a2;
    installedApplicationFilter = [v9 installedApplicationFilter];
    v12 = _proxyPassesInclusionFilter(v10, installedApplicationFilter, *(self + 80));

    v13 = 0;
    if (filterCopy && recordCopy)
    {
      applicationIdentityFilter = [*(self + 8) applicationIdentityFilter];
      v13 = _proxyPassesIdentityFilter(recordCopy, filterCopy, applicationIdentityFilter, *(self + 80));
    }

    self = v12 & v13;
  }

  return self;
}

- (void)_workQueue_didAddBundleInfo:(uint64_t)info
{
  v3 = a2;
  if (info)
  {
    v7 = v3;
    bundleIdentifier = [v3 bundleIdentifier];
    v5 = [*(info + 56) objectForKey:bundleIdentifier];
    if (!v5)
    {
      v5 = objc_opt_new();
      [*(info + 56) setObject:v5 forKey:bundleIdentifier];
    }

    applicationIdentity = [v7 applicationIdentity];
    [v5 addObject:applicationIdentity];

    v3 = v7;
  }
}

- (uint64_t)_workQueue_placeholderPassesFilter:(void *)filter record:(void *)record identity:
{
  filterCopy = filter;
  recordCopy = record;
  if (self)
  {
    v9 = *(self + 8);
    v10 = a2;
    placeholderFilter = [v9 placeholderFilter];
    v12 = _proxyPassesInclusionFilter(v10, placeholderFilter, 0);

    v13 = 0;
    if (filterCopy && recordCopy)
    {
      placeholderIdentityFilter = [*(self + 8) placeholderIdentityFilter];
      v13 = _proxyPassesIdentityFilter(recordCopy, filterCopy, placeholderIdentityFilter, 0);
    }

    self = v12 & v13;
  }

  return self;
}

- (id)_workQueue_removeApplicationForIdentity:(id *)identity
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (identity)
  {
    v6 = [(FBSApplicationLibrary *)identity _workQueue_applicationForIdentity:v5];
    v7 = v6;
    if (v6)
    {
      v9 = FBSLogApplicationLibrary(v6);
      if (OUTLINED_FUNCTION_38(v9))
      {
        succinctDescription = [v7 succinctDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v10, v11, "Removed application: %@", v12);
      }

      [v5 identityString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_26() removeObjectForKey:succinctDescription];

      [(FBSApplicationLibrary *)identity _workQueue_didRemoveBundleInfo:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_workQueue_didRemoveBundleInfo:(id *)info
{
  v3 = a2;
  if (info)
  {
    v11 = v3;
    applicationIdentity = [v3 applicationIdentity];
    identityString = [applicationIdentity identityString];
    v6 = [info[8] objectForKey:identityString];

    v7 = [info[9] objectForKey:identityString];
    v8 = v6 | v7;

    if (!v8)
    {
      bundleIdentifier = [v11 bundleIdentifier];
      v10 = [info[7] objectForKey:bundleIdentifier];
      [v10 removeObject:applicationIdentity];
      if (![v10 count])
      {
        [info[7] removeObjectForKey:bundleIdentifier];
      }
    }

    v3 = v11;
  }
}

- (id)_workQueue_removePlaceholderForIdentity:(id *)identity
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (identity)
  {
    v6 = [(FBSApplicationLibrary *)identity _workQueue_placeholderForIdentity:v5];
    v7 = v6;
    if (v6)
    {
      v9 = FBSLogApplicationLibrary(v6);
      if (OUTLINED_FUNCTION_38(v9))
      {
        succinctDescription = [v7 succinctDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v10, v11, "Removed placeholder: %@", v12);
      }

      [v5 identityString];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_26() removeObjectForKey:succinctDescription];

      [v7 setAppLibrary:0];
      [(FBSApplicationLibrary *)identity _workQueue_didRemoveBundleInfo:v7];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_workQueue_applicationsForProxies:
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v39[16] = *MEMORY[0x1E69E9840];
  v3 = v2;
  v28 = v3;
  if (v1)
  {
    v4 = v3;
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = v4;
    v8 = OUTLINED_FUNCTION_55(v6, v7, &v34, v39);
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v13 = [(FBSApplicationLibrary *)v1 _identitiesForProxy:v12 outRecord:0];
          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v31 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [(FBSApplicationLibrary *)v1 _workQueue_applicationForIdentity:?];
                if (v18)
                {
                  [array addObject:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v15);
          }
        }

        v9 = OUTLINED_FUNCTION_52(v19, v20, &v34, v39, v21, v22, v23, v24, v28, obj);
      }

      while (v9);
    }
  }

  OUTLINED_FUNCTION_47();

  return v25;
}

- (uint64_t)_workQueue_applicationNeedsRegeneration:(void *)regeneration fromProxy:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  regenerationCopy = regeneration;
  v7 = regenerationCopy;
  if (self)
  {
    if (v5)
    {
      bundleURL = [regenerationCopy bundleURL];
      path = [bundleURL path];

      bundleURL2 = [v5 bundleURL];
      path2 = [bundleURL2 path];
      v12 = [path isEqual:path2];

      if (v12)
      {
        [v5 lastModifiedDate];
        BSModificationDateForPath();
      }

      v15 = FBSLogApplicationLibrary(v13);
      if (OUTLINED_FUNCTION_38(v15))
      {
        applicationIdentity = [v5 applicationIdentity];
        fbs_shortDescription = [applicationIdentity fbs_shortDescription];
        OUTLINED_FUNCTION_5_5();
        OUTLINED_FUNCTION_22(&dword_1A2DBB000, v18, v19, "Regenerating application %{public}@ due to bundle path mismatch", v21);
      }

      v14 = 1;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_fixupAdded:(void *)added removed:(id *)removed replaced:
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a2;
  addedCopy = added;
  if (self && ([*(self + 8) isPersonaAware] & 1) == 0 && objc_msgSend(addedCopy, "count") == 1 && objc_msgSend(v8, "count") == 1)
  {
    firstObject = [addedCopy firstObject];
    [v8 firstObject];
    objc_claimAutoreleasedReturnValue();
    bundleIdentifier = [OUTLINED_FUNCTION_26() bundleIdentifier];
    bundleIdentifier2 = [v4 bundleIdentifier];
    v13 = [bundleIdentifier isEqualToString:bundleIdentifier2];

    if (v13)
    {
      v15 = FBSLogApplicationLibrary(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier3 = [v4 bundleIdentifier];
        OUTLINED_FUNCTION_5_5();
        _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "[59555749] making persona change of %{public}@ a replacement instead of remove+add", v19, 0xCu);
      }

      [v8 removeObjectIdenticalTo:v4];
      [addedCopy removeObjectIdenticalTo:firstObject];
      v17 = *removed;
      if (!v17)
      {
        v18 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
        *removed = v18;
        v17 = v18;
      }

      [v17 setObject:v4 forKey:firstObject];
    }
  }
}

void __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v122[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = objc_opt_new();
  memset(v118, 0, sizeof(v118));
  v102 = v2;
  v6 = *(v2 + 40);
  for (i = OUTLINED_FUNCTION_55(v6, v7, v118, v122); i; i = OUTLINED_FUNCTION_52(v18, v19, v118, v122, v20, v21, v22, v23, v97, obj))
  {
    for (j = 0; j != i; j = j + 1)
    {
      OUTLINED_FUNCTION_30();
      if (!v9)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v118[0] + 1) + 8 * j);
      v11 = [v10 bundleIdentifier];
      v12 = [*(*(v102 + 32) + 56) objectForKey:v11];
      [v4 unionSet:v12];

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v13 = [(FBSApplicationLibrary *)*(v102 + 32) _identitiesForProxy:v10 outRecord:0];
      v14 = [v13 countByEnumeratingWithState:&v114 objects:v121 count:16];
      if (v14)
      {
        v0 = v14;
        v15 = *v115;
        do
        {
          for (k = 0; k != v0; k = k + 1)
          {
            if (*v115 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v114 + 1) + 8 * k);
            [v5 setObject:v10 forKey:v17];
            [v4 removeObject:v17];
          }

          v0 = [v13 countByEnumeratingWithState:&v114 objects:v121 count:16];
        }

        while (v0);
      }
    }
  }

  memset(v113, 0, sizeof(v113));
  v24 = v4;
  v26 = OUTLINED_FUNCTION_56(v24, v25, v113, v120);
  if (v26)
  {
    v28 = v26;
    *&v27 = 138543362;
    v99 = v27;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        OUTLINED_FUNCTION_39();
        if (!v9)
        {
          objc_enumerationMutation(i);
        }

        v31 = *(*(&v113[0] + 1) + 8 * m);
        v32 = FBSLogApplicationLibrary(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v0 = [v31 fbs_shortDescription];
          OUTLINED_FUNCTION_33(v0, v33, v34, v35, v36, v37, v38, v39, v97, obj, v99);
          _os_log_error_impl(&dword_1A2DBB000, v32, OS_LOG_TYPE_ERROR, "Abandoned identity: %{public}@", v40, 0xCu);
        }

        v41 = [(FBSApplicationLibrary *)*(v102 + 32) _workQueue_removePlaceholderForIdentity:v31];
        if (v41)
        {
          OUTLINED_FUNCTION_29();
          v112 = v42;
          _addResultToArrayCreatingArrayIfNecessary(&v112, v41);
          objc_storeStrong(v0, v112);
        }

        v43 = [(FBSApplicationLibrary *)*(v102 + 32) _workQueue_removeApplicationForIdentity:v31];
        if (v43)
        {
          OUTLINED_FUNCTION_29();
          v111 = v44;
          _addResultToArrayCreatingArrayIfNecessary(&v111, v43);
          objc_storeStrong(v0, v111);
        }
      }

      v28 = OUTLINED_FUNCTION_53(v45, v46, v113, v120, v47, v48, v49, v50, v97, obj, v99, *(&v99 + 1), i);
    }

    while (v28);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v51 = v5;
  v52 = [v51 countByEnumeratingWithState:&v107 objects:v119 count:16];
  v54 = v102;
  if (v52)
  {
    v55 = v52;
    v56 = *v108;
    *&v53 = 138543362;
    v100 = v53;
    do
    {
      v57 = 0;
      do
      {
        if (*v108 != v56)
        {
          objc_enumerationMutation(v51);
        }

        v58 = *(*(&v107 + 1) + 8 * v57);
        v59 = [v51 objectForKey:v58];
        v60 = OUTLINED_FUNCTION_34();
        v62 = [(FBSApplicationLibrary *)v60 _workQueue_removePlaceholderForIdentity:v61];
        v63 = OUTLINED_FUNCTION_34();
        v65 = [(FBSApplicationLibrary *)v63 _workQueue_applicationForIdentity:v64];
        v66 = [(FBSApplicationLibrary *)v54[4] _workQueue_applicationNeedsRegeneration:v65 fromProxy:v59];
        if ((v66 & 1) == 0)
        {
          v67 = FBSLogApplicationLibrary(v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v58 fbs_shortDescription];
            OUTLINED_FUNCTION_33(v68, v69, v70, v71, v72, v73, v74, v75, v97, obj, v100);
            _os_log_impl(&dword_1A2DBB000, v67, OS_LOG_TYPE_DEFAULT, "Not regenerating app for identity: %{public}@", v76, 0xCu);
          }

          [v65 _setInstalling:0];
          v77 = 0;
LABEL_38:

          goto LABEL_39;
        }

        v80 = OUTLINED_FUNCTION_34();
        v77 = [(FBSApplicationLibrary *)v80 _workQueue_removeApplicationForIdentity:v81];

        v82 = OUTLINED_FUNCTION_34();
        v84 = [(FBSApplicationLibrary *)v82 _workQueue_addApplicationWithIdentity:v83 forProxy:v59];
        v79 = v84;
        if (v84 && !v77)
        {
          v85 = *(v54[8] + 8);
          v106 = *(v85 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v106, v84);
          objc_storeStrong((v85 + 40), v106);
          goto LABEL_42;
        }

        if (!v84 || !v77 || v84 == v77)
        {
          if (v84)
          {
            goto LABEL_42;
          }

          if (v77)
          {
            v90 = *(v54[7] + 8);
            v105 = *(v90 + 40);
            _addResultToArrayCreatingArrayIfNecessary(&v105, v77);
            v91 = v105;
            v65 = *(v90 + 40);
            *(v90 + 40) = v91;
            v54 = v102;
            goto LABEL_38;
          }

LABEL_39:
          if (v62)
          {
            v78 = *(v54[6] + 8);
            v104 = *(v78 + 40);
            _addResultToArrayCreatingArrayIfNecessary(&v104, v62);
            objc_storeStrong((v78 + 40), v104);
          }

          v79 = 0;
          goto LABEL_42;
        }

        v86 = OUTLINED_FUNCTION_45(v54[9]);
        if (!v86)
        {
          v87 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
          v88 = *(v54[9] + 8);
          v89 = *(v88 + 40);
          *(v88 + 40) = v87;

          v86 = OUTLINED_FUNCTION_45(v54[9]);
        }

        [v86 setObject:v79 forKey:v77];
LABEL_42:

        ++v57;
      }

      while (v55 != v57);
      v92 = [v51 countByEnumeratingWithState:&v107 objects:v119 count:16];
      v55 = v92;
    }

    while (v92);
  }

  v93 = v54[4];
  v94 = *(*(v54[8] + 8) + 40);
  v95 = *(*(v54[7] + 8) + 40);
  v96 = *(v54[9] + 8);
  v103 = *(v96 + 40);
  [(FBSApplicationLibrary *)v93 _fixupAdded:v94 removed:v95 replaced:&v103];
  objc_storeStrong((v96 + 40), v103);

  OUTLINED_FUNCTION_47();
}

void __48__FBSApplicationLibrary_applicationsDidInstall___block_invoke_241(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v39[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  memset(v37, 0, sizeof(v37));
  v4 = *(v2 + 40);
  for (i = OUTLINED_FUNCTION_55(v4, v5, v37, v39); i; i = OUTLINED_FUNCTION_52(v24, v25, v37, v39, v26, v27, v28, v29, v30, obj))
  {
    for (j = 0; j != i; ++j)
    {
      OUTLINED_FUNCTION_30();
      if (!v7)
      {
        objc_enumerationMutation(obj);
      }

      v8 = [*(*(&v37[0] + 1) + 8 * j) bundleIdentifier];
      v9 = MEMORY[0x1E695DFA8];
      v10 = OUTLINED_FUNCTION_34();
      v12 = [(FBSApplicationLibrary *)v10 _identitiesForProxy:v11 outRecord:0];
      v13 = [v9 setWithArray:v12];

      v14 = [*(*(v2 + 32) + 56) objectForKey:v8];
      [v13 unionSet:v14];

      OUTLINED_FUNCTION_5_6();
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:v35 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        do
        {
          for (k = 0; k != v17; ++k)
          {
            OUTLINED_FUNCTION_39();
            if (!v7)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(v36 + 8 * k);
            v20 = [(FBSApplicationLibrary *)*(v2 + 32) _workQueue_removeApplicationForIdentity:v19];
            if (v20)
            {
              OUTLINED_FUNCTION_29();
              v34 = v21;
              _addResultToArrayCreatingArrayIfNecessary(&v34, v20);
              objc_storeStrong(v0, v34);
            }

            v22 = [(FBSApplicationLibrary *)*(v2 + 32) _workQueue_removePlaceholderForIdentity:v19];
            if (v22)
            {
              OUTLINED_FUNCTION_29();
              v33 = v23;
              _addResultToArrayCreatingArrayIfNecessary(&v33, v22);
              objc_storeStrong(v0, v33);
            }
          }

          v17 = [v15 countByEnumeratingWithState:v35 objects:v38 count:16];
        }

        while (v17);
      }
    }
  }

  OUTLINED_FUNCTION_47();
}

void __50__FBSApplicationLibrary_applicationsDidUninstall___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v144[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 32);
  if (v3)
  {
    OUTLINED_FUNCTION_31(v3);
  }

  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v7 = *(v2 + 40);
  v107 = OUTLINED_FUNCTION_55(v7, v8, &v134, v144);
  v108 = v2;
  if (v107)
  {
    v105 = *v135;
    do
    {
      for (i = 0; i != v107; i = i + 1)
      {
        OUTLINED_FUNCTION_30();
        if (!v10)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v134 + 1) + 8 * i);
        v109 = [v11 bundleIdentifier];
        v12 = [*(*(v2 + 32) + 56) objectForKey:?];
        [v4 unionSet:v12];

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v0 = [(FBSApplicationLibrary *)*(v2 + 32) _identitiesForProxy:v11 outRecord:0];
        v13 = [v0 countByEnumeratingWithState:&v130 objects:v143 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v131;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v131 != v15)
              {
                objc_enumerationMutation(v0);
              }

              v17 = *(*(&v130 + 1) + 8 * j);
              if ([v4 containsObject:v17])
              {
                v18 = v6;
              }

              else
              {
                v18 = v5;
              }

              [v18 setObject:v11 forKey:v17];
              [v4 removeObject:v17];
            }

            v14 = [v0 countByEnumeratingWithState:&v130 objects:v143 count:16];
          }

          while (v14);
        }

        v2 = v108;
      }

      v107 = OUTLINED_FUNCTION_52(v19, v20, &v134, v144, v21, v22, v23, v24, v103, obj);
    }

    while (v107);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v25 = v4;
  v27 = OUTLINED_FUNCTION_56(v25, v26, &v126, v142);
  if (v27)
  {
    v28 = *v127;
    while (1)
    {
      if (*v127 != v28)
      {
        objc_enumerationMutation(v107);
      }

      v29 = **(&v126 + 1);
      v30 = FBSLogApplicationLibrary(v27);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v0 = [v29 fbs_shortDescription];
        OUTLINED_FUNCTION_14_0(v0, 5.7779e-34);
        OUTLINED_FUNCTION_49(&dword_1A2DBB000, v31, v32, v33, v34);
      }

      v35 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_removePlaceholderForIdentity:v29];
      if (v35)
      {
        OUTLINED_FUNCTION_29();
        v125 = v36;
        _addResultToArrayCreatingArrayIfNecessary(&v125, v35);
        objc_storeStrong(v0, v125);
      }

      v4 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_removeApplicationForIdentity:v29];
      if (v4)
      {
        OUTLINED_FUNCTION_29();
        v124 = v37;
        _addResultToArrayCreatingArrayIfNecessary(&v124, v4);
        objc_storeStrong(v0, v124);
      }

      OUTLINED_FUNCTION_21_0();
      if (v10)
      {
        v27 = OUTLINED_FUNCTION_53(v27, v38, &v126, v142, v39, v40, v41, v42, v103, obj, v105, v106, v107);
        if (!v27)
        {
          break;
        }
      }
    }
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v43 = v6;
  v44 = [v43 countByEnumeratingWithState:&v120 objects:v139 count:16];
  if (v44)
  {
    v45 = v44;
    v110 = *v121;
    do
    {
      v46 = 0;
      do
      {
        if (*v121 != v110)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v120 + 1) + 8 * v46);
        v48 = FBSLogApplicationLibrary(v44);
        if (OUTLINED_FUNCTION_54(v48))
        {
          v49 = [v47 fbs_shortDescription];
          OUTLINED_FUNCTION_14_0(v49, 5.7779e-34);
          OUTLINED_FUNCTION_43();
          _os_log_impl(v50, v51, v52, "Updated identity: %@", v53, 0xCu);
        }

        v54 = [v43 objectForKey:v47];
        v55 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_removeApplicationForIdentity:v47];
        if (v55)
        {
          v4 = [v54 appState];
          v56 = [v4 isInstalled];

          if (v56)
          {
            v4 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_addApplicationWithIdentity:v47 forProxy:v54];
            if (v4)
            {
              v71 = OUTLINED_FUNCTION_45(*(v108 + 64));
              if (!v71)
              {
                v72 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:512];
                v73 = *(*(v108 + 64) + 8);
                v74 = *(v73 + 40);
                *(v73 + 40) = v72;

                v71 = OUTLINED_FUNCTION_45(*(v108 + 64));
              }

              [v71 setObject:v4 forKey:v55];
            }

            else
            {
              v76 = *(*(v108 + 56) + 8);
              v119 = *(v76 + 40);
              _addResultToArrayCreatingArrayIfNecessary(&v119, v55);
              objc_storeStrong((v76 + 40), v119);
            }
          }

          else
          {
            v58 = FBSLogApplicationLibrary(v57);
            if (OUTLINED_FUNCTION_54(v58))
            {
              *buf = 0;
              OUTLINED_FUNCTION_43();
              _os_log_impl(v59, v60, v61, "Found an app with updated identity, but proxy is not a app. Ignoring.", v62, 2u);
            }
          }
        }

        v63 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_placeholderForIdentity:v47];
        if (v63)
        {
          v4 = [v54 appState];
          v64 = [v4 isPlaceholder];

          if (v64)
          {
            v4 = [v54 fbs_correspondingApplicationRecord];
            if (!v4)
            {
              v75 = FBSLogApplicationLibrary(0);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v141 = v54;
                _os_log_error_impl(&dword_1A2DBB000, v75, OS_LOG_TYPE_ERROR, "No corresponding record for placeholder: %@", buf, 0xCu);
              }
            }

            if ([(FBSApplicationLibrary *)*(v108 + 32) _workQueue_placeholderPassesFilter:v54 record:v4 identity:v47])
            {
              [v63 _setProxy:v54];
            }

            else
            {
              v77 = [(FBSApplicationLibrary *)*(v108 + 32) _workQueue_removePlaceholderForIdentity:v47];
              v78 = *(*(v108 + 48) + 8);
              v118 = *(v78 + 40);
              _addResultToArrayCreatingArrayIfNecessary(&v118, v55);
              objc_storeStrong((v78 + 40), v118);
            }
          }

          else
          {
            v66 = FBSLogApplicationLibrary(v65);
            if (OUTLINED_FUNCTION_54(v66))
            {
              *buf = 0;
              OUTLINED_FUNCTION_43();
              _os_log_impl(v67, v68, v69, "Found a placeholder with updated identity, but proxy is not a placeholder. Ignoring.", v70, 2u);
            }
          }
        }

        ++v46;
      }

      while (v45 != v46);
      v44 = [v43 countByEnumeratingWithState:&v120 objects:v139 count:16];
      v45 = v44;
    }

    while (v44);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v79 = v5;
  v80 = [v79 countByEnumeratingWithState:&v114 objects:v138 count:16];
  v81 = v108;
  if (v80)
  {
    v82 = v80;
    v83 = *v115;
    do
    {
      v84 = 0;
      do
      {
        if (*v115 != v83)
        {
          objc_enumerationMutation(v79);
        }

        v85 = *(*(&v114 + 1) + 8 * v84);
        v86 = FBSLogApplicationLibrary(v80);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          v87 = [v85 fbs_shortDescription];
          OUTLINED_FUNCTION_14_0(v87, 5.7779e-34);
          OUTLINED_FUNCTION_49(&dword_1A2DBB000, v88, v89, v90, v91);
        }

        v92 = [v79 objectForKey:v85];
        v93 = [(FBSApplicationLibrary *)*(v81 + 32) _workQueue_addApplicationWithIdentity:v85 forProxy:v92];
        if (v93)
        {
          v94 = *(*(v81 + 72) + 8);
          v113 = *(v94 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v113, v93);
          v95 = (v94 + 40);
          v81 = v108;
          objc_storeStrong(v95, v113);
        }

        v96 = [(FBSApplicationLibrary *)*(v81 + 32) _workQueue_addPlaceholderWithIdentity:v85 forProxy:v92];
        if (v96)
        {
          v97 = *(*(v81 + 80) + 8);
          v112 = *(v97 + 40);
          _addResultToArrayCreatingArrayIfNecessary(&v112, v96);
          v98 = (v97 + 40);
          v81 = v108;
          objc_storeStrong(v98, v112);
        }

        ++v84;
      }

      while (v82 != v84);
      v80 = [v79 countByEnumeratingWithState:&v114 objects:v138 count:16];
      v82 = v80;
    }

    while (v80);
  }

  v99 = *(v81 + 32);
  v100 = *(*(*(v81 + 72) + 8) + 40);
  v101 = *(*(*(v81 + 56) + 8) + 40);
  v102 = *(*(v81 + 64) + 8);
  v111 = *(v102 + 40);
  [(FBSApplicationLibrary *)v99 _fixupAdded:v100 removed:v101 replaced:&v111];
  objc_storeStrong((v102 + 40), v111);

  OUTLINED_FUNCTION_47();
}

void __94__FBSApplicationLibrary__handleApplicationStateDidChange_notifyForUpdateInsteadOfReplacement___block_invoke_242(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      OUTLINED_FUNCTION_2_3(v1, v2);
    }
  }
}

void __49__FBSApplicationLibrary_applicationsWillInstall___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  v1 = FBSLogApplicationLibrary(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_36(buf, 5.8382e-34);
    _os_log_impl(&dword_1A2DBB000, v1, OS_LOG_TYPE_INFO, "Applications will install: %{public}@ (appInfos: %{public}@)", buf, 0x16u);
  }

  v13 = 0u;
  v2 = v0;
  OUTLINED_FUNCTION_41();
  if ([v3 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_17_0();
    while (1)
    {
      OUTLINED_FUNCTION_16_0();
      if (!v12)
      {
        objc_enumerationMutation(v2);
      }

      [OUTLINED_FUNCTION_42(v4 v5];
      OUTLINED_FUNCTION_40();
      if (v12)
      {
        OUTLINED_FUNCTION_41();
        if (![v2 countByEnumeratingWithState:? objects:? count:?])
        {
          break;
        }
      }
    }
  }
}

void __54__FBSApplicationLibrary_applicationsDidFailToInstall___block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  v1 = FBSLogApplicationLibrary(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_36(buf, 5.8382e-34);
    _os_log_error_impl(&dword_1A2DBB000, v1, OS_LOG_TYPE_ERROR, "Applications did fail to install: %{public}@ (appInfos: %{public}@)", buf, 0x16u);
  }

  v13 = 0u;
  v2 = v0;
  OUTLINED_FUNCTION_41();
  if ([v3 countByEnumeratingWithState:? objects:? count:?])
  {
    OUTLINED_FUNCTION_17_0();
    while (1)
    {
      OUTLINED_FUNCTION_16_0();
      if (!v12)
      {
        objc_enumerationMutation(v2);
      }

      [OUTLINED_FUNCTION_42(v4 v5];
      OUTLINED_FUNCTION_40();
      if (v12)
      {
        OUTLINED_FUNCTION_41();
        if (![v2 countByEnumeratingWithState:? objects:? count:?])
        {
          break;
        }
      }
    }
  }
}

void __51__FBSApplicationLibrary_applicationsWillUninstall___block_invoke()
{
  v1 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  if (OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5, v6, v7, v8, v26, v29, v32, v35, v38))
  {
    OUTLINED_FUNCTION_17_0();
    do
    {
      OUTLINED_FUNCTION_16_0();
      if (!v17)
      {
        objc_enumerationMutation(v0);
      }

      [OUTLINED_FUNCTION_42(v9 v10];
      OUTLINED_FUNCTION_40();
    }

    while (!v17 || OUTLINED_FUNCTION_21(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v30, v31, v33, v34, v36, v37, v39));
  }
}

void __56__FBSApplicationLibrary_applicationsDidFailToUninstall___block_invoke()
{
  v1 = [FBSApplicationLibrary _workQueue_applicationsForProxies:];
  if (OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5, v6, v7, v8, v26, v29, v32, v35, v38))
  {
    OUTLINED_FUNCTION_17_0();
    do
    {
      OUTLINED_FUNCTION_16_0();
      if (!v17)
      {
        objc_enumerationMutation(v0);
      }

      [OUTLINED_FUNCTION_42(v9 v10];
      OUTLINED_FUNCTION_40();
    }

    while (!v17 || OUTLINED_FUNCTION_21(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v30, v31, v33, v34, v36, v37, v39));
  }
}

- (void)_initWithApplicationWorkspace:(uint64_t)a3 configuration:.cold.1(id *a1, const char *a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must specify a class that subclasses from FBSApplicationInfo : was passed %@", objc_msgSend(*a1, "applicationInfoClass")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(uint64_t)a3 configuration:.cold.2(id *a1, const char *a2, uint64_t a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Must specify a class that subclasses from FBSApplicationPlaceholder : was passed %@", objc_msgSend(*a1, "applicationPlaceholderClass")];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(char *)a1 configuration:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"configuration"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithApplicationWorkspace:(char *)a1 configuration:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"workspace"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v13, v14);
  }

  v12 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_applicationForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)installedApplicationWithBundleIdentifier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FBSApplicationLibrary installedApplicationWithBundleIdentifier:]";
  OUTLINED_FUNCTION_7_0(&dword_1A2DBB000, a1, a3, "Persona-aware client is using deprecated bundleID-based method: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)installedApplicationWithBundleIdentifier:(uint64_t)a3 completionHandler:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FBSApplicationLibrary installedApplicationWithBundleIdentifier:completionHandler:]";
  OUTLINED_FUNCTION_7_0(&dword_1A2DBB000, a1, a3, "Persona-aware client is using deprecated bundleID-based method: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)installedApplicationWithBundleIdentifier:(char *)a1 completionHandler:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completionHandler != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)placeholderWithBundleIdentifier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FBSApplicationLibrary placeholderWithBundleIdentifier:]";
  OUTLINED_FUNCTION_7_0(&dword_1A2DBB000, a1, a3, "Persona-aware client is using deprecated bundleID-based method: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_workQueue_placeholderForIdentity:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"identity"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)uninstallApplication:(uint64_t)a3 withOptions:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FBSApplicationLibrary uninstallApplication:withOptions:completion:]";
  OUTLINED_FUNCTION_7_0(&dword_1A2DBB000, a1, a3, "Persona-aware client is using deprecated bundleID-based method: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __77__FBSApplicationLibrary_uninstallApplicationIdentity_withOptions_completion___block_invoke_109_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"recieved IXUninstallDispositionError but the provided error was nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a1 + 72));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *a2;
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2114;
    v16 = @"FBSApplicationLibrary.m";
    v17 = 1024;
    v18 = 418;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addApplicationProxy:(char *)a1 withOverrideURL:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"url == ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addApplicationProxy:(char *)a1 withOverrideURL:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"proxy"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_identitiesForProxy:(char *)a1 outRecord:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"proxy"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSApplicationInfoClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existing app for %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addApplication:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSApplicationPlaceholderClass]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"existing placeholder for %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_workQueue_addPlaceholder:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __53__FBSApplicationLibrary_applicationInstallsDidStart___block_invoke_cold_1(id **a1, void *a2, uint64_t a3, id *a4)
{
  v6 = [(FBSApplicationLibrary *)*a1 _workQueue_removeApplicationForIdentity:a2];
  if (v6)
  {
    v7 = *(*a3 + 8);
    *a4 = *(v7 + 40);
    _addResultToArrayCreatingArrayIfNecessary(a4, v6);
    objc_storeStrong((v7 + 40), *a4);
  }
}

- (void)applicationsDidInstall:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"was handed a not-installed appProxy during applicationsDidInstall: %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)applicationsDidInstall:(uint64_t)a1 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"was handed a placeholder appProxy during applicationsDidInstall: %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v14, v15);
  }

  v13 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end