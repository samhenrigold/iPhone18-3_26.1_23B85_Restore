@interface RBContainerManager
- (BOOL)containerRequiredForServiceDict:(id)dict;
- (OptionalUID)_fetchCacheUIDChoice:(id)choice;
- (RBContainerManager)initWithPersonaManager:(id)manager;
- (id)_allowedContainerOverrideIdentifiers;
- (id)_lookupContainerPathForIdentity:(id)identity context:(id)context persona:(id)persona containerIdentifier:(id)identifier retry:(BOOL)retry error:(id *)error;
- (id)_retryLookupAfterCacheMissForIdentity:(id)identity context:(id)context persona:(id)persona containerIdentifier:(id)identifier;
- (id)_sandboxContainerURLForExtensionContext:(id)context containerOverrideIdentifier:(id)identifier;
- (id)containerPathForIdentity:(id)identity context:(id)context persona:(id)persona error:(id *)error;
- (id)sandboxContainerURLForExtensionContext:(id)context containerOverrideIdentifier:(id)identifier;
- (void)_fetchCache:(id)cache;
- (void)_probeCache:(const void *)cache withContainerIdentifier:(id)identifier persona:(id)persona completionHandler:(id)handler;
- (void)_probeCacheSubqueryIterationEvaluate:(container_object_s *)evaluate withAccummulatedState:(ProbeCacheSubqueryIterationAccumulatedState *)state;
- (void)dealloc;
@end

@implementation RBContainerManager

- (RBContainerManager)initWithPersonaManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = RBContainerManager;
  v6 = [(RBContainerManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaManager, manager);
  }

  return v7;
}

- (OptionalUID)_fetchCacheUIDChoice:(id)choice
{
  if (xpc_user_sessions_enabled())
  {
    v4 = 0;
    return ((xpc_user_sessions_get_foreground_uid() << 32) | 1);
  }

  else
  {
    return 0;
  }
}

- (void)_fetchCache:(id)cache
{
  v4 = [(RBContainerManager *)self _fetchCacheUIDChoice:cache];
  v5 = *&v4.set;
  v6 = 0;
  v7 = HIDWORD(*&v4);
  set = self->_queryUID.set;
  if (set && v4.set)
  {
    v6 = self->_queryUID.uid != v4.uid;
  }

  if (v4.set != set || v6)
  {
    container_query_free();
    self->_queryForApps = 0;
    container_query_free();
    self->_queryForPlugins = 0;
    v10 = rbs_job_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Discarded container cache on UID change", v11, 2u);
    }
  }

  if (!self->_queryForApps)
  {
    self->_queryForApps = container_query_create();
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    if (v5)
    {
      container_query_set_uid();
    }

    self->_queryUID.set = v5;
    *(&self->_queryUID.set + 3) = HIBYTE(v5);
    *(&self->_queryUID.set + 1) = v5 >> 8;
    self->_queryUID.uid = v7;
  }
}

- (id)_retryLookupAfterCacheMissForIdentity:(id)identity context:(id)context persona:(id)persona containerIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  identifierCopy = identifier;
  uTF8String = [persona UTF8String];
  container_query_create();
  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_include_other_owners();
  if (xpc_user_sessions_enabled())
  {
    *v22 = 0;
    xpc_user_sessions_get_foreground_uid();
    container_query_set_uid();
  }

  v14 = xpc_string_create([identifierCopy UTF8String]);
  container_query_set_identifiers();
  if (uTF8String)
  {
    container_query_set_persona_unique_string();
  }

  [identityCopy platform];
  container_query_operation_set_platform();
  if (container_query_get_single_result() && (path = container_get_path()) != 0)
  {
    v16 = path;
    container_query_free();
    self->_queryForApps = 0;
    container_query_free();
    self->_queryForPlugins = 0;
    v17 = rbs_job_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_DEFAULT, "Discarded container cache after retry", v22, 2u);
    }

    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
  }

  else
  {
    v19 = rbs_job_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [contextCopy bundleIdentifier];
      *v22 = 138543874;
      *&v22[4] = identityCopy;
      v23 = 2114;
      v24 = identifierCopy;
      v25 = 2114;
      v26 = bundleIdentifier;
      _os_log_impl(&dword_262485000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Container path could not be computed for identifier '%{public}@', will not be passed to launch of %{public}@", v22, 0x20u);
    }

    v18 = 0;
  }

  container_query_free();

  return v18;
}

- (void)_probeCacheSubqueryIterationEvaluate:(container_object_s *)evaluate withAccummulatedState:(ProbeCacheSubqueryIterationAccumulatedState *)state
{
  v29[1] = *MEMORY[0x277D85DE8];
  ++state->var2;
  if (state->var0)
  {
    return;
  }

  path = container_get_path();
  v6 = container_copy_sandbox_token();
  v7 = v6;
  if (path && v6)
  {
    v8 = sandbox_extension_consume();
    v9 = *__error();
    free(v7);
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (access(path, 0))
      {
        if (*__error() == 2 || state->var1)
        {
LABEL_19:

          MEMORY[0x282204FA0](v8);
          return;
        }

        v10 = *__error();
        defaultManager = [MEMORY[0x277CCACA8] stringWithFormat:@"access test failed while computing process container path"];
        v12 = _posixErrorWithCodeAndDescription(v10, defaultManager);
        var1 = state->var1;
        state->var1 = v12;
      }

      else
      {
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v27 = [defaultManager stringWithFileSystemRepresentation:path length:strlen(path)];
        var1 = state->var0;
        state->var0 = v27;
      }

      goto LABEL_19;
    }

    if (!state->var1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container token could not be consumed: errno %d", v9];
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA5B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = v21;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v25 = [v22 errorWithDomain:v23 code:22 userInfo:v24];

      v26 = state->var1;
      state->var1 = v25;
    }
  }

  else
  {
    if (!state->var1)
    {
      v14 = "path";
      if (path)
      {
        v14 = "token";
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container did not have a %s", v14];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA5B8];
      v28 = *MEMORY[0x277CCA450];
      v29[0] = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = [v16 errorWithDomain:v17 code:22 userInfo:v18];

      v20 = state->var1;
      state->var1 = v19;
    }

    free(v7);
  }
}

- (void)_probeCache:(const void *)cache withContainerIdentifier:(id)identifier persona:(id)persona completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  personaCopy = persona;
  handlerCopy = handler;
  container_query_create();
  v11 = xpc_string_create([identifierCopy UTF8String]);
  container_query_set_identifiers();
  if ([personaCopy UTF8String])
  {
    container_query_set_persona_unique_string();
  }

  v20 = 0;
  if ((container_query_iterate_results_with_subquery_sync() & 1) == 0)
  {
    container_query_get_last_error();
    v12 = container_error_copy_unlocalized_description();
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"container_query_iterate_results_with_subquery_sync failed. Container Manager error = %s", v12];
    v14 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = v13;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v13;
    v17 = [v15 dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v18 = [v14 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v17];

    v20 = v18;
    free(v12);
  }

  container_query_free();
  if (v20)
  {

    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  handlerCopy[2](handlerCopy, 0, v19);
}

- (id)_lookupContainerPathForIdentity:(id)identity context:(id)context persona:(id)persona containerIdentifier:(id)identifier retry:(BOOL)retry error:(id *)error
{
  retryCopy = retry;
  v44 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  personaCopy = persona;
  identifierCopy = identifier;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = __Block_byref_object_copy__3;
  v38[3] = __Block_byref_object_dispose__3;
  v39 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  queryForApps = self->_queryForApps;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke;
  v30[3] = &unk_279B33730;
  v30[4] = &v31;
  v30[5] = &v37;
  [(RBContainerManager *)self _probeCache:queryForApps withContainerIdentifier:identifierCopy persona:personaCopy completionHandler:v30];
  v19 = v38[0];
  if (!v32[5] && !*(v38[0] + 40) && self->_queryForPlugins)
  {
    v20 = rbs_job_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v41 = identityCopy;
      v42 = 2114;
      v43 = identifierCopy;
      _os_log_impl(&dword_262485000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Attempting lookup in plugin cache of container path for container identifier (%{public}@)", buf, 0x16u);
    }

    queryForPlugins = self->_queryForPlugins;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke_15;
    v29[3] = &unk_279B33730;
    v29[4] = &v31;
    v29[5] = &v37;
    [(RBContainerManager *)self _probeCache:queryForPlugins withContainerIdentifier:identifierCopy persona:personaCopy completionHandler:v29];
    v19 = v38[0];
  }

  if (*(v19 + 40))
  {
    v22 = rbs_job_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager _lookupContainerPathForIdentity:identityCopy context:v38 persona:v22 containerIdentifier:? retry:? error:?];
    }

    v23 = 0;
    goto LABEL_11;
  }

  v27 = v32[5];
  if (v27)
  {
    v23 = v27;
    v22 = rbs_job_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v41 = identityCopy;
    v42 = 2114;
    v43 = v23;
    v28 = "%{public}@ Found container path (%{public}@)";
    goto LABEL_23;
  }

  if (!retryCopy)
  {
    v23 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v23 = [(RBContainerManager *)self _retryLookupAfterCacheMissForIdentity:identityCopy context:contextCopy persona:personaCopy containerIdentifier:identifierCopy];
  v22 = rbs_job_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v41 = identityCopy;
    v42 = 2114;
    v43 = v23;
    v28 = "%{public}@ Found container path on retry (%{public}@)";
LABEL_23:
    _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, v28, buf, 0x16u);
  }

LABEL_11:

  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  v24 = *(v38[0] + 40);
  if (v24)
  {
    *error = v24;
  }

LABEL_14:
  v25 = v23;
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);

  return v25;
}

void __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)containerPathForIdentity:(id)identity context:(id)context persona:(id)persona error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  contextCopy = context;
  personaCopy = persona;
  containerIdentifier = [contextCopy containerIdentifier];
  if (containerIdentifier || ([contextCopy bundleIdentifier], (containerIdentifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = containerIdentifier;
    v15 = rbs_job_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v27 = identityCopy;
      v28 = 2114;
      v29 = *&personaCopy;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up container path with persona %{public}@ using container identifier '%{public}@'", buf, 0x20u);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (personaCopy && [(RBPersonaManager *)self->_personaManager isConcretePersona:personaCopy])
      {
        goto LABEL_13;
      }

      v16 = rbs_job_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v27 = identityCopy;
        v28 = 2114;
        v29 = *&personaCopy;
        _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Persona (%{public}@) for launch context is not a concrete persona - converting to Personal", buf, 0x16u);
      }

      personalPersonaUniqueString = [(RBPersonaManager *)self->_personaManager personalPersonaUniqueString];

      personaCopy = personalPersonaUniqueString;
    }

    if (!personaCopy)
    {
      v18 = 0;
      v19 = 0;
      if ([(RBPersonaManager *)self->_personaManager personasAreSupported])
      {
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_13:
    Current = CFAbsoluteTimeGetCurrent();
    [(RBContainerManager *)self _fetchCache:contextCopy];
    v25 = 0;
    v19 = [(RBContainerManager *)self _lookupContainerPathForIdentity:identityCopy context:contextCopy persona:personaCopy containerIdentifier:v14 retry:1 error:&v25];
    v18 = v25;
    [(RBContainerManager *)self _clearCache];
    v21 = CFAbsoluteTimeGetCurrent();
    v22 = rbs_job_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[RBContainerManager containerPathForIdentity:context:persona:error:]";
      v28 = 2048;
      v29 = v21 - Current;
      _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "%s: containermanager query required %f seconds wall clock time.", buf, 0x16u);
    }

    if (error && v18)
    {
      v23 = v18;
      *error = v18;
    }

    goto LABEL_18;
  }

  v14 = rbs_job_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = identityCopy;
    v28 = 2114;
    v29 = *&personaCopy;
    _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing container identifier during container path look up, persona %{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_19:

  return v19;
}

- (id)_sandboxContainerURLForExtensionContext:(id)context containerOverrideIdentifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  v8 = [(RBContainerManager *)self _fetchCacheUIDChoice:contextCopy];
  container_query_create();
  if (identifierCopy)
  {
    xpcServiceIdentifier = identifierCopy;
  }

  else
  {
    identity = [contextCopy identity];
    xpcServiceIdentifier = [identity xpcServiceIdentifier];
  }

  identity2 = [contextCopy identity];
  personaString = [identity2 personaString];

  if (personaString)
  {
    identity3 = [contextCopy identity];
    personaString2 = [identity3 personaString];
    [personaString2 UTF8String];
    container_query_set_persona_unique_string();
  }

  v15 = xpc_string_create([xpcServiceIdentifier UTF8String]);
  container_query_set_identifiers();

  container_query_set_class();
  container_query_set_include_other_owners();
  container_query_operation_set_flags();
  dyld_get_active_platform();
  container_query_operation_set_platform();
  if (v8)
  {
    container_query_set_uid();
  }

  if (container_query_get_single_result())
  {
    v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
  }

  else
  {
    container_query_get_last_error();
    v17 = container_error_copy_unlocalized_description();
    v18 = rbs_job_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager _sandboxContainerURLForExtensionContext:v17 containerOverrideIdentifier:v18];
    }

    free(v17);
    v16 = 0;
  }

  container_query_free();

  return v16;
}

- (id)_allowedContainerOverrideIdentifiers
{
  if (_allowedContainerOverrideIdentifiers_onceToken != -1)
  {
    [RBContainerManager _allowedContainerOverrideIdentifiers];
  }

  v3 = _allowedContainerOverrideIdentifiers_allowed;

  return v3;
}

uint64_t __58__RBContainerManager__allowedContainerOverrideIdentifiers__block_invoke()
{
  _allowedContainerOverrideIdentifiers_allowed = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28751B478];

  return MEMORY[0x2821F96F8]();
}

- (id)sandboxContainerURLForExtensionContext:(id)context containerOverrideIdentifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  if (identifierCopy && (-[RBContainerManager _allowedContainerOverrideIdentifiers](self, "_allowedContainerOverrideIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:identifierCopy], v8, (v9 & 1) == 0))
  {
    v11 = rbs_job_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager sandboxContainerURLForExtensionContext:identifierCopy containerOverrideIdentifier:v11];
    }

    v10 = 0;
  }

  else
  {
    voucher_adopt();
    v10 = [(RBContainerManager *)self _sandboxContainerURLForExtensionContext:contextCopy containerOverrideIdentifier:identifierCopy];
  }

  return v10;
}

- (BOOL)containerRequiredForServiceDict:(id)dict
{
  dictCopy = dict;
  v4 = xpc_dictionary_get_value(dictCopy, "_SandboxContainer");
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_value(dictCopy, "_MultipleInstances");
    v5 = v6 == 0;
  }

  return v5;
}

- (void)dealloc
{
  container_query_free();
  container_query_free();
  v3.receiver = self;
  v3.super_class = RBContainerManager;
  [(RBContainerManager *)&v3 dealloc];
}

- (void)_fetchCacheUIDChoice:(unsigned int *)a1 .cold.1(unsigned int *a1)
{
  xpc_strerror();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_11(&dword_262485000, v1, v2, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v3, v4, v5, v6);
}

- (void)_lookupContainerPathForIdentity:(os_log_t)log context:persona:containerIdentifier:retry:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "%{public}@ Error during container manager lookup: %{public}@", &v4, 0x16u);
}

- (void)_sandboxContainerURLForExtensionContext:(uint64_t)a1 containerOverrideIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Failed to get container path; error = %s", &v2, 0xCu);
}

- (void)sandboxContainerURLForExtensionContext:(uint64_t)a1 containerOverrideIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "container-required entitlement value not allowed (%@) please use a group container instead", &v2, 0xCu);
}

@end