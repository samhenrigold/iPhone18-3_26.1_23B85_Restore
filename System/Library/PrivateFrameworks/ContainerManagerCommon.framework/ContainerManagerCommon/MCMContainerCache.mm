@interface MCMContainerCache
- (BOOL)_concurrent_setSandboxContainerMappingForUserIdentity:(id)identity identifier:(id)identifier containerClass:(unint64_t)class url:(id)url;
- (BOOL)_concurrent_shouldRegisterSandboxMappingWithUserIdentity:(id)identity identifier:(id)identifier childParentMapCache:(id)cache containerClass:(unint64_t)class;
- (BOOL)_sandboxSentinelExistsForContainerClass:(unint64_t)class;
- (BOOL)isWellKnownIdentifier:(id)identifier;
- (BOOL)removeContainerForUserIdentity:(id)identity contentClass:(unint64_t)class identifier:(id)identifier transient:(BOOL)transient error:(id *)error;
- (MCMContainerCache)initWithUserIdentityCache:(id)cache childParentMapCache:(id)mapCache classCacheClass:(Class)class cacheEntryClass:(Class)entryClass error:(id *)error;
- (MCMContainerCache)initWithUserIdentityCache:(id)cache childParentMapCache:(id)mapCache classCacheClass:(Class)class cacheEntryClass:(Class)entryClass queue:(id)queue;
- (id)_containerClassPathForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient;
- (id)_queue_containerClassCacheForContainerClassPath:(id)path;
- (id)_queue_containerClassCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient;
- (id)addContainerMetadata:(id)metadata error:(id *)error;
- (id)classCacheForContainerIdentity:(id)identity;
- (id)classCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient;
- (id)entriesForUserIdentities:(id)identities contentClass:(unint64_t)class transient:(BOOL)transient error:(id *)error;
- (id)entryForContainerIdentity:(id)identity classCache:(id)cache error:(id *)error;
- (id)entryForContainerIdentity:(id)identity error:(id *)error;
- (int64_t)countContainersForOtherUserIdentitiesWithIdentity:(id)identity error:(id *)error;
- (void)_queue_attachSandboxWriteThroughHandlerToContainerClassCache:(id)cache;
- (void)_queue_flush;
- (void)_queue_flushCacheForContainerClassPath:(id)path;
- (void)_queue_invalidateUserIdentity:(id)identity;
- (void)_queue_setContainerClassCache:(id)cache;
- (void)_sandboxSetSentinelForContainerClass:(unint64_t)class;
- (void)didInvalidateUserIdentity:(id)identity;
- (void)flush;
- (void)flushCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient;
- (void)invalidateUserIdentity:(id)identity;
- (void)notifyWithClassCache:(id)cache existingEntry:(id)entry newEntry:(id)newEntry;
- (void)setContainerClassCache:(id)cache;
@end

@implementation MCMContainerCache

- (BOOL)_concurrent_shouldRegisterSandboxMappingWithUserIdentity:(id)identity identifier:(id)identifier childParentMapCache:(id)cache containerClass:(unint64_t)class
{
  v42 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifierCopy = identifier;
  cacheCopy = cache;
  if (!_os_feature_enabled_impl() || [(MCMContainerCache *)self isWellKnownIdentifier:identifierCopy])
  {
    if (MCMPersonasAreSupported_onceToken != -1)
    {
      dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
    }

    if (MCMPersonasAreSupported_staticPersonasSupported != 1)
    {
      goto LABEL_21;
    }

    if (class <= 0xB)
    {
      if (((1 << class) & 0xE54) != 0)
      {
        v13 = containermanager_copy_global_configuration();
        staticConfig = [v13 staticConfig];
        requireDataBackedPersona = [staticConfig requireDataBackedPersona];

        if (requireDataBackedPersona)
        {
          personaType = [identityCopy personaType];
          goto LABEL_24;
        }

        v18 = [cacheCopy parentIdentifierForChildIdentifier:identifierCopy];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = identifierCopy;
        }

        v21 = v20;
        userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
        v23 = [userIdentityCache userIdentitiesForBundleIdentifier:v21];

        if ([v23 count] >= 2)
        {
          userIdentityCache2 = [(MCMContainerCache *)self userIdentityCache];
          userIdentityForPersonalPersona = [userIdentityCache2 userIdentityForPersonalPersona];
          v26 = [v23 containsObject:userIdentityForPersonalPersona];

          if (v26)
          {
            isDataSeparated = [identityCopy isDataSeparated];

            v17 = 1;
            if (isDataSeparated)
            {
LABEL_26:
              v29 = container_log_handle_for_category();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                shortDescription = [identityCopy shortDescription];
                v32 = 138413314;
                v33 = shortDescription;
                v34 = 2112;
                v35 = identifierCopy;
                v36 = 2112;
                v37 = v21;
                v38 = 2048;
                classCopy = class;
                v40 = 1024;
                v41 = v17;
                _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, "Deciding not to register userIdentity: %@, identifier: %@ (parent %@), containerClass: %llu with sandbox; isMultiPersona: %d", &v32, 0x30u);
              }

              LOBYTE(v17) = 0;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

        v28 = [v23 containsObject:identityCopy];

        if ((v28 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_22:
        LOBYTE(v17) = 1;
        goto LABEL_29;
      }

      if (class == 7)
      {
LABEL_21:
        v21 = 0;
        goto LABEL_22;
      }
    }

    personaType = [identityCopy isDataSeparated];
LABEL_24:
    v21 = 0;
    if (personaType)
    {
LABEL_25:
      v17 = 0;
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  LOBYTE(v17) = 0;
LABEL_30:

  return v17;
}

- (BOOL)isWellKnownIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[MCMEntitlementBypassList sharedBypassList];
  wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet = [v4 wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet];
  v6 = [wellKnownContainerIdentifiersForSandboxPushDownCompatibilitySet containsObject:identifierCopy];

  return v6;
}

- (void)_queue_attachSandboxWriteThroughHandlerToContainerClassCache:(id)cache
{
  v10 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  containerClassPath = [cacheCopy containerClassPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [containerClassPath containerClass] != 10)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82__MCMContainerCache__queue_attachSandboxWriteThroughHandlerToContainerClassCache___block_invoke;
    v7[3] = &unk_1E86B0EF0;
    v6 = containerClassPath;
    v8 = v6;
    selfCopy = self;
    [cacheCopy setConcurrentWriteThroughHandler:v7];
    if (!-[MCMContainerCache _sandboxSentinelExistsForContainerClass:](self, "_sandboxSentinelExistsForContainerClass:", [v6 containerClass]))
    {
      [cacheCopy forceWriteThrough];
      -[MCMContainerCache _sandboxSetSentinelForContainerClass:](self, "_sandboxSetSentinelForContainerClass:", [v6 containerClass]);
    }
  }
}

void __82__MCMContainerCache__queue_attachSandboxWriteThroughHandlerToContainerClassCache___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [a4 containerPath];
  v10 = [v8 containerPath];

  v11 = !v9 || !v10 || ([v9 isEqual:v10] & 1) == 0;
  v12 = container_log_handle_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 32);
    v28 = 138413314;
    *v29 = v7;
    *&v29[8] = 2112;
    *&v29[10] = v9;
    *&v29[18] = 2112;
    *&v29[20] = v10;
    v30 = 1024;
    v31 = v11;
    v32 = 2112;
    v33 = v23;
    _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Cache write-through; identifier = %@, newPath = %@, oldPath = %@, updateSandbox = %d, containerClassPath = %@", &v28, 0x30u);
  }

  if (v11)
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) userIdentity];
    v15 = [*(a1 + 40) childParentMapCache];
    v16 = [v13 _concurrent_shouldRegisterSandboxMappingWithUserIdentity:v14 identifier:v7 childParentMapCache:v15 containerClass:{objc_msgSend(*(a1 + 32), "containerClass")}];

    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a1 + 32);
      v28 = 67109634;
      *v29 = v16;
      *&v29[4] = 2112;
      *&v29[6] = v7;
      *&v29[14] = 2112;
      *&v29[16] = v24;
      _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "Cache write-through update = %d; identifier = %@, containerClassPath = %@", &v28, 0x1Cu);
    }

    if (v16)
    {
      v18 = *(a1 + 40);
      v19 = [*(a1 + 32) userIdentity];
      v20 = [*(a1 + 32) containerClass];
      v21 = [v9 containerDataURL];
      LOBYTE(v18) = [v18 _concurrent_setSandboxContainerMappingForUserIdentity:v19 identifier:v7 containerClass:v20 url:v21];

      if ((v18 & 1) == 0)
      {
        v22 = container_log_handle_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v25 = [*(a1 + 32) containerClass];
          v26 = [v9 containerDataURL];
          v27 = [v26 path];
          v28 = 138412802;
          *v29 = v7;
          *&v29[8] = 2048;
          *&v29[10] = v25;
          *&v29[18] = 2112;
          *&v29[20] = v27;
          _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Failed to update container mapping of [%@(%llu)] to [%@]", &v28, 0x20u);
        }
      }
    }
  }
}

- (BOOL)_concurrent_setSandboxContainerMappingForUserIdentity:(id)identity identifier:(id)identifier containerClass:(unint64_t)class url:(id)url
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  urlCopy = url;
  identityCopy = identity;
  kernelPersonaID = [identityCopy kernelPersonaID];
  posixUser = [identityCopy posixUser];

  v14 = [MCMContainerClassPath posixOwnerForContainerClass:class user:posixUser];

  v15 = [v14 UID];
  v16 = 1;
  if (class > 7)
  {
    if (class > 11)
    {
      if (class != 14)
      {
        if (class == 13)
        {
          v15 = 0;
          v17 = 8;
LABEL_34:
          if (_os_feature_enabled_impl())
          {
            v16 = 0;
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        if (class == 12)
        {
          v15 = 0;
          v17 = 4;
          goto LABEL_34;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (class - 9 < 3)
      {
        goto LABEL_20;
      }

      if (class != 8)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    if (class > 3)
    {
      if (class <= 5)
      {
        if (class != 4)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }

      if (class != 6)
      {
        v17 = 2;
        goto LABEL_34;
      }

LABEL_20:
      _os_feature_enabled_impl();
      v17 = 1;
LABEL_21:
      uTF8String = [identifierCopy UTF8String];
      v28 = 0;
      v18 = sandbox_set_user_state_item_with_persona();
      if (v18)
      {
        v19 = v18;
        v20 = container_log_handle_for_category();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 67110402;
        *v30 = v15;
        *&v30[4] = 2048;
        *&v30[6] = v17;
        v31 = 2080;
        v32 = uTF8String;
        v33 = 2048;
        classCopy3 = class;
        v35 = 2080;
        *v36 = 0;
        *&v36[8] = 1024;
        *&v36[10] = v19;
        v23 = "Failed to remove mapping for user: %u, itemType: %llu, identifier: %s, class: %llu, path: %s : %d";
      }

      else
      {
        if (!urlCopy || (uTF8String = [identifierCopy UTF8String], v28 = objc_msgSend(urlCopy, "fileSystemRepresentation"), (v21 = sandbox_set_user_state_item_with_persona()) == 0))
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110402;
            *v30 = v15;
            *&v30[4] = 2048;
            *&v30[6] = v17;
            v31 = 2080;
            v32 = uTF8String;
            v33 = 2048;
            classCopy3 = class;
            v35 = 1024;
            *v36 = kernelPersonaID;
            *&v36[4] = 2080;
            *&v36[6] = v28;
            _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Pushed user: %u, itemType: %llu, identifier %s, class: %llu, persona id: %u, path: %s", buf, 0x36u);
          }

          v16 = 1;
          goto LABEL_31;
        }

        v22 = v21;
        v20 = container_log_handle_for_category();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          v16 = 0;
LABEL_31:

          goto LABEL_32;
        }

        *buf = 67110402;
        *v30 = v15;
        *&v30[4] = 2048;
        *&v30[6] = v17;
        v31 = 2080;
        v32 = uTF8String;
        v33 = 2048;
        classCopy3 = class;
        v35 = 2080;
        *v36 = v28;
        *&v36[8] = 1024;
        *&v36[10] = v22;
        v23 = "Failed to set mapping for user: %u, itemType: %llu, identifier %s, class: %llu, path: %s : %d";
      }

      v25 = v20;
      v26 = 54;
LABEL_40:
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, v23, buf, v26);
      goto LABEL_23;
    }

    if (class != 1)
    {
      if (class == 2)
      {
        goto LABEL_20;
      }

      if (class != 3)
      {
LABEL_36:
        v20 = container_log_handle_for_category();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 134217984;
        *v30 = class;
        v23 = "Unsupported class for setting sandbox container mapping: %llu";
        v25 = v20;
        v26 = 12;
        goto LABEL_40;
      }
    }
  }

LABEL_32:

  return v16;
}

- (void)_sandboxSetSentinelForContainerClass:(unint64_t)class
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerCache *)self _sandboxSentinelForContainerClass:?];
  [v4 UTF8String];
  v5 = containermanager_copy_global_configuration();
  defaultUser = [v5 defaultUser];
  [defaultUser UID];
  v7 = sandbox_set_user_state_item_with_persona();

  if (v7)
  {
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      classCopy = class;
      v11 = 1024;
      v12 = v7;
      _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to set sandbox sentinel; class = %llu, result = %d", buf, 0x12u);
    }
  }
}

- (BOOL)_sandboxSentinelExistsForContainerClass:(unint64_t)class
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = [(MCMContainerCache *)self _sandboxSentinelForContainerClass:?];
  v5 = containermanager_copy_global_configuration();
  defaultUser = [v5 defaultUser];
  [defaultUser UID];
  v7 = v4;
  v8 = sandbox_user_state_iterate_items();

  if (v8)
  {
    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      classCopy = class;
      v18 = 1024;
      v19 = v8;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to read back sandbox cache; class = %llu, result = %d", buf, 0x12u);
    }
  }

  v10 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v10 & 1;
}

void __61__MCMContainerCache__sandboxSentinelExistsForContainerClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (a4)
    {
      if (a3 != 1)
      {
        return;
      }

      if (*a4 && *(a4 + 8))
      {
        if (!strncmp(*a4, [*(a1 + 32) UTF8String], 0x400uLL))
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
        }

        return;
      }

      v6 = container_log_handle_for_category();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
LABEL_11:

        return;
      }

      v8 = 134217984;
      v9 = 1;
      v7 = "Sandbox.kext: Got an item with no identifier or path; itemType = %llu";
    }

    else
    {
      v6 = container_log_handle_for_category();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      v8 = 134217984;
      v9 = a3;
      v7 = "Sandbox.kext: Got an item iteration with no item struct; itemType = %llu";
    }

    _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, v7, &v8, 0xCu);
    goto LABEL_11;
  }
}

- (void)_queue_setContainerClassCache:(id)cache
{
  cacheCopy = cache;
  [(MCMContainerCache *)self _queue_attachSandboxWriteThroughHandlerToContainerClassCache:cacheCopy];
  queue_cache = self->_queue_cache;
  containerClassPath = [cacheCopy containerClassPath];
  [(NSMutableDictionary *)queue_cache setObject:cacheCopy forKeyedSubscript:?];
}

- (id)_containerClassPathForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient
{
  identityCopy = identity;
  v7 = containermanager_copy_global_configuration();
  staticConfig = [v7 staticConfig];
  v9 = [staticConfig configForContainerClass:class];

  v10 = containermanager_copy_global_configuration();
  classPathCache = [v10 classPathCache];
  v12 = [classPathCache containerClassPathForUserIdentity:identityCopy containerConfig:v9 typeClass:objc_opt_class()];

  return v12;
}

- (id)_queue_containerClassCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient
{
  transientCopy = transient;
  queue = self->_queue;
  identityCopy = identity;
  dispatch_assert_queue_V2(queue);
  v10 = [(MCMContainerCache *)self _containerClassPathForUserIdentity:identityCopy containerClass:class transient:transientCopy];

  v11 = [(MCMContainerCache *)self _queue_containerClassCacheForContainerClassPath:v10];

  return v11;
}

- (id)_queue_containerClassCacheForContainerClassPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_queue_cache objectForKeyedSubscript:pathCopy];
  if (!v5)
  {
    v6 = [(objc_class *)[(MCMContainerCache *)self classCacheClass] alloc];
    cacheEntryClass = [(MCMContainerCache *)self cacheEntryClass];
    userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
    v5 = [(objc_class *)v6 initWithContainerClassPath:pathCopy cacheEntryClass:cacheEntryClass targetQueue:0 userIdentityCache:userIdentityCache];

    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = pathCopy;
      v14 = 2112;
      v15 = v5;
      _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Create cache for %@: %@", &v12, 0x16u);
    }

    if (v5)
    {
      [(MCMContainerCache *)self _queue_setContainerClassCache:v5];
    }

    else
    {
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = pathCopy;
        _os_log_fault_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_FAULT, "Could not create cache for %@", &v12, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)_queue_flush
{
  v10 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v3 = containermanager_copy_global_configuration();
    defaultUser = [v3 defaultUser];
    [defaultUser UID];

    v5 = sandbox_user_state_iterate_items();
    if (v5)
    {
      v6 = v5;
      v7 = container_log_handle_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 67109120;
        v9[1] = v6;
        _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to read back sandbox cache when trying to flush it; result = %d", v9, 8u);
      }
    }
  }

  [(NSMutableDictionary *)self->_queue_cache removeAllObjects];
  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9[0]) = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "All caches flushed", v9, 2u);
  }
}

void __33__MCMContainerCache__queue_flush__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 <= 8 && ((1 << a3) & 0x116) != 0 && a4 != 0)
  {
    v7 = a2;
    v13 = *a4;
    v8 = sandbox_set_user_state_item_with_persona();
    if (v8)
    {
      v9 = v8;
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a4 + 4);
        *buf = 67110402;
        v15 = v7;
        v16 = 2048;
        v17 = a3;
        v18 = 2080;
        v19 = v13;
        v20 = 1024;
        v21 = v11;
        v22 = 2080;
        v23 = 0;
        v24 = 1024;
        v25 = v9;
        _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Failed to remove mapping for user: %u, itemType: %llu, identifier: %s, persona id: %u, path: %s : %d", buf, 0x32u);
      }
    }

    else
    {
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a4 + 4);
        *buf = 67110146;
        v15 = v7;
        v16 = 2048;
        v17 = a3;
        v18 = 2080;
        v19 = v13;
        v20 = 1024;
        v21 = v12;
        v22 = 2080;
        v23 = 0;
        _os_log_debug_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEBUG, "Pushed user: %u, itemType: %llu, identifier %s, persona id: %u, path: %s", buf, 0x2Cu);
      }
    }
  }
}

- (void)_queue_flushCacheForContainerClassPath:(id)path
{
  v48 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dispatch_assert_queue_V2(self->_queue);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    containerClass = [pathCopy containerClass];
    userIdentity = [pathCopy userIdentity];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_37:

      goto LABEL_38;
    }

    posixUser = [userIdentity posixUser];
    v8 = [MCMContainerClassPath posixOwnerForContainerClass:containerClass user:posixUser];

    v9 = [MEMORY[0x1E695DFA8] set];
    v10 = [v8 UID];
    v11 = 1;
    if (containerClass <= 8)
    {
      if (containerClass > 5)
      {
        if (containerClass == 6)
        {
          goto LABEL_19;
        }

        if (containerClass == 7 && (_os_feature_enabled_impl() & 1) == 0)
        {
          v11 = 2;
          goto LABEL_19;
        }
      }

      else if (containerClass == 2 || containerClass == 4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if ((containerClass - 9) < 3)
      {
LABEL_19:
        selfCopy = self;
        v31 = containerClass;
        v29 = userIdentity;
        v12 = userIdentity;
        v33 = v12;
        v13 = v9;
        v34 = v13;
        v14 = sandbox_user_state_iterate_items();
        if (v14)
        {
          v15 = v14;
          v16 = container_log_handle_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *v36 = v15;
            _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to read back sandbox cache when trying to flush it; result = %d", buf, 8u);
          }
        }

        v27 = v9;
        v28 = v8;
        kernelPersonaID = [v12 kernelPersonaID];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v18 = v13;
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v45;
          do
          {
            v22 = 0;
            do
            {
              if (*v45 != v21)
              {
                objc_enumerationMutation(v18);
              }

              uTF8String = [*(*(&v44 + 1) + 8 * v22) UTF8String];
              v23 = sandbox_set_user_state_item_with_persona();
              if (v23)
              {
                v24 = v23;
                v25 = container_log_handle_for_category();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67110402;
                  *v36 = v10;
                  *&v36[4] = 2048;
                  *&v36[6] = v11;
                  v37 = 2080;
                  v38 = uTF8String;
                  v39 = 2048;
                  v40 = v31;
                  v41 = 2080;
                  *v42 = 0;
                  *&v42[8] = 1024;
                  *&v42[10] = v24;
                  _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Failed to remove mapping for user: %u, itemType: %llu, identifier: %s, class: %llu, path: %s : %d", buf, 0x36u);
                }
              }

              else
              {
                v25 = container_log_handle_for_category();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 67110402;
                  *v36 = v10;
                  *&v36[4] = 2048;
                  *&v36[6] = v11;
                  v37 = 2080;
                  v38 = uTF8String;
                  v39 = 2048;
                  v40 = v31;
                  v41 = 1024;
                  *v42 = kernelPersonaID;
                  *&v42[4] = 2080;
                  *&v42[6] = 0;
                  _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Pushed user: %u, itemType: %llu, identifier %s, class: %llu, persona id: %u, path: %s", buf, 0x36u);
                }
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v44 objects:v43 count:16];
          }

          while (v20);
        }

        self = selfCopy;
        v8 = v28;
        userIdentity = v29;
        v9 = v27;
        goto LABEL_36;
      }

      if (containerClass == 13)
      {
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
          v10 = 0;
          v11 = 8;
          goto LABEL_19;
        }
      }

      else if (containerClass == 12 && (_os_feature_enabled_impl() & 1) == 0)
      {
        v10 = 0;
        v11 = 4;
        goto LABEL_19;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

LABEL_38:
  [(NSMutableDictionary *)self->_queue_cache removeObjectForKey:pathCopy];
  v26 = container_log_handle_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v36 = pathCopy;
    _os_log_debug_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEBUG, "Cache: %@: Flushed", buf, 0xCu);
  }
}

void __60__MCMContainerCache__queue_flushCacheForContainerClassPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    if (*(a1 + 48) == a3)
    {
      v6 = *a4;
      if (*a4)
      {
        if (*(a1 + 56) == 7)
        {
          v7 = *(a4 + 4);
          if (v7 != [*(a1 + 32) kernelPersonaID])
          {
            return;
          }

          v6 = *a4;
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
        [*(a1 + 40) addObject:?];
      }
    }
  }
}

- (void)_queue_invalidateUserIdentity:(id)identity
{
  v16 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  dispatch_assert_queue_V2(self->_queue);
  v5 = container_log_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v15 = identityCopy;
    _os_log_debug_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_DEBUG, "Clearing container cache entries corresponding to invalidated user identity; identity = %@", buf, 0xCu);
  }

  v6 = containermanager_copy_global_configuration();
  classIterator = [v6 classIterator];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__MCMContainerCache__queue_invalidateUserIdentity___block_invoke;
  v12[3] = &unk_1E86B0E58;
  v12[4] = self;
  v13 = identityCopy;
  v8 = identityCopy;
  [classIterator selectUserWithIterator:v12];

  v9 = notify_post(*MEMORY[0x1E69E9970]);
  if (v9)
  {
    v10 = v9;
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v15) = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Could not post user-invalidated notification: %u", buf, 8u);
    }
  }
}

void __51__MCMContainerCache__queue_invalidateUserIdentity___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [*(*(a1 + 32) + 8) allKeys];
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v24;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 userIdentity];
        v11 = [v10 isStrictlyEqualToUserIdentity:*(a1 + 40)];

        if (v11)
        {
          v12 = container_log_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = v15;
            v21 = v9;
            _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Invalidating container class path; %@", buf, 0xCu);
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v13 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
            [v13 waitForSynchronizationToComplete];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __51__MCMContainerCache__queue_invalidateUserIdentity___block_invoke_14;
            v17[3] = &unk_1E86B0E30;
            v14 = *(a1 + 40);
            v17[4] = *(a1 + 32);
            v18 = v14;
            v19 = v16;
            [v13 enumerateCacheEntriesWithEnumerator:v17];
          }

          [*(*(a1 + 32) + 8) removeObjectForKey:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v6);
  }
}

uint64_t __51__MCMContainerCache__queue_invalidateUserIdentity___block_invoke_14(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v3 identifier];
  LOBYTE(v4) = [v4 _concurrent_setSandboxContainerMappingForUserIdentity:v5 identifier:v6 containerClass:objc_msgSend(*(a1 + 48) url:{"containerClass"), 0}];

  if ((v4 & 1) == 0)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 identifier];
      v10 = [*(a1 + 48) containerClass];
      v11 = 138412546;
      v12 = v9;
      v13 = 2048;
      v14 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to remove container mapping of [%@], class: %llu", &v11, 0x16u);
    }
  }

  return 1;
}

- (void)didInvalidateUserIdentity:(id)identity
{

  [(MCMContainerCache *)self invalidateUserIdentity:identity];
}

- (void)invalidateUserIdentity:(id)identity
{
  v9 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCMContainerCache_invalidateUserIdentity___block_invoke;
  block[3] = &unk_1E86B0CC8;
  block[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_sync(queue, block);
}

uint64_t __44__MCMContainerCache_invalidateUserIdentity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_invalidateUserIdentity:v3];
}

- (void)flush
{
  v3[5] = *MEMORY[0x1E69E9840];
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__MCMContainerCache_flush__block_invoke;
  v3[3] = &unk_1E86B0E08;
  v3[4] = self;
  dispatch_sync(queue, v3);
}

uint64_t __26__MCMContainerCache_flush__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);

  return [v1 _queue_flush];
}

- (void)flushCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v8 = container_class_normalized();
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MCMContainerCache_flushCacheForUserIdentity_containerClass_transient___block_invoke;
  block[3] = &unk_1E86B0DE0;
  block[4] = self;
  v12 = identityCopy;
  v13 = v8;
  transientCopy = transient;
  v10 = identityCopy;
  dispatch_sync(queue, block);
}

void __72__MCMContainerCache_flushCacheForUserIdentity_containerClass_transient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _containerClassPathForUserIdentity:*(a1 + 40) containerClass:*(a1 + 48) transient:*(a1 + 56)];
  [*(a1 + 32) _queue_flushCacheForContainerClassPath:?];
}

- (BOOL)removeContainerForUserIdentity:(id)identity contentClass:(unint64_t)class identifier:(id)identifier transient:(BOOL)transient error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifierCopy = identifier;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__13434;
  v32 = __Block_byref_object_dispose__13435;
  v33 = 0;
  if (class - 1 >= 0xE)
  {
    v18 = [[MCMError alloc] initWithErrorType:47 category:3];
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      classCopy = class;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Invalid Content Class: %ld", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__MCMContainerCache_removeContainerForUserIdentity_contentClass_identifier_transient_error___block_invoke;
  block[3] = &unk_1E86B0CF0;
  v25 = &v28;
  block[4] = self;
  v24 = identityCopy;
  classCopy2 = class;
  transientCopy = transient;
  dispatch_sync(queue, block);

  v15 = v29[5];
  if (!v15)
  {
    v18 = [[MCMError alloc] initWithErrorType:43 category:4];
    if (!error)
    {
LABEL_9:
      v19 = 0;
      goto LABEL_10;
    }

LABEL_7:
    v21 = v18;
    v19 = 0;
    *error = v18;
    goto LABEL_10;
  }

  v16 = [v15 cacheEntryForIdentifier:identifierCopy];
  v17 = [v29[5] setCacheEntry:0 forIdentifier:identifierCopy];
  [(MCMContainerCache *)self notifyWithClassCache:v29[5] existingEntry:v16 newEntry:0];

  v18 = 0;
  v19 = 1;
LABEL_10:
  _Block_object_dispose(&v28, 8);

  return v19;
}

uint64_t __92__MCMContainerCache_removeContainerForUserIdentity_contentClass_identifier_transient_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _queue_containerClassCacheForUserIdentity:*(a1 + 40) containerClass:*(a1 + 56) transient:*(a1 + 64)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)addContainerMetadata:(id)metadata error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  containerPath = [metadataCopy containerPath];
  containerClassPath = [containerPath containerClassPath];

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__13434;
  v36 = __Block_byref_object_dispose__13435;
  v37 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MCMContainerCache_addContainerMetadata_error___block_invoke;
  block[3] = &unk_1E86B0DB8;
  v31 = &v32;
  block[4] = self;
  v10 = containerClassPath;
  v30 = v10;
  dispatch_sync(queue, block);
  if (!v33[5])
  {
    v21 = [[MCMError alloc] initWithErrorType:43 category:4];
    v16 = 0;
    v19 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v11 = [MCMContainerCacheEntry alloc];
  userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
  v13 = [(MCMContainerCacheEntry *)v11 initWithMetadata:metadataCopy userIdentityCache:userIdentityCache];

  v14 = v33[5];
  identifier = [metadataCopy identifier];
  v16 = [v14 cacheEntryForIdentifier:identifier];

  v17 = v33[5];
  identifier2 = [metadataCopy identifier];
  v19 = [v17 setCacheEntry:v13 forIdentifier:identifier2];

  [(MCMContainerCache *)self notifyWithClassCache:v33[5] existingEntry:v16 newEntry:v19];
  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    containerPath2 = [metadataCopy containerPath];
    containerClassPath2 = [containerPath2 containerClassPath];
    identifier3 = [metadataCopy identifier];
    *buf = 138412546;
    v39 = containerClassPath2;
    v40 = 2112;
    v41 = identifier3;
    _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Cache: %@: Added Identifier: %@", buf, 0x16u);
  }

  v21 = 0;
  if (error)
  {
LABEL_7:
    if (!v19)
    {
      v22 = v21;
      *error = v21;
    }
  }

LABEL_9:
  v23 = v30;
  v24 = v19;

  _Block_object_dispose(&v32, 8);

  return v24;
}

uint64_t __48__MCMContainerCache_addContainerMetadata_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _queue_containerClassCacheForContainerClassPath:*(a1 + 40)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)notifyWithClassCache:(id)cache existingEntry:(id)entry newEntry:(id)newEntry
{
  entryCopy = entry;
  newEntryCopy = newEntry;
  [cache notify];
  if (!entryCopy && newEntryCopy || entryCopy && !newEntryCopy || entryCopy && newEntryCopy && ([newEntryCopy containerPath], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(entryCopy, "containerPath"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10 & 1) == 0))
  {
    container_notify_post();
  }
}

- (id)entriesForUserIdentities:(id)identities contentClass:(unint64_t)class transient:(BOOL)transient error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  v8 = objc_alloc_init(MCMMutableContainerArray);
  v32 = [MEMORY[0x1E695DFA8] set];
  v9 = container_class_normalized();
  context = objc_autoreleasePoolPush();
  if (![MCMUserIdentity isUserIdentityRequiredForContainerClass:v9])
  {
    userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
    defaultUserIdentity = [userIdentityCache defaultUserIdentity];

    if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      userIdentityCache2 = [(MCMContainerCache *)self userIdentityCache];
      globalSystemUserIdentity = [userIdentityCache2 globalSystemUserIdentity];

      defaultUserIdentity = globalSystemUserIdentity;
    }

    if (v9 <= 8 && ((1 << v9) & 0x12A) != 0)
    {
      userIdentityCache3 = [(MCMContainerCache *)self userIdentityCache];
      globalBundleUserIdentity = [userIdentityCache3 globalBundleUserIdentity];

      defaultUserIdentity = globalBundleUserIdentity;
    }

    v16 = [MEMORY[0x1E695DFD8] setWithObject:defaultUserIdentity];

    identitiesCopy = v16;
  }

  if (v9 - 1 >= 0xE)
  {
    v33 = [[MCMError alloc] initWithErrorType:47 category:3];
    obj = container_log_handle_for_category();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v9;
      _os_log_error_impl(&dword_1DF2C3000, obj, OS_LOG_TYPE_ERROR, "Invalid Content Class: %ld", &buf, 0xCu);
    }

    goto LABEL_22;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x2020000000;
  v52 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MCMContainerCache_entriesForUserIdentities_contentClass_transient_error___block_invoke;
  block[3] = &unk_1E86B0D68;
  v39 = identitiesCopy;
  selfCopy = self;
  v43 = v9;
  transientCopy = transient;
  v18 = v32;
  v41 = v18;
  p_buf = &buf;
  dispatch_sync(queue, block);
  v33 = 0;
  v19 = *(*(&buf + 1) + 24);
  if (v19 == 1)
  {
    v33 = [[MCMError alloc] initWithErrorType:43 category:4];
  }

  _Block_object_dispose(&buf, 8);
  if ((v19 & 1) == 0)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v18;
    v20 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v20)
    {
      v21 = *v47;
      v22 = MEMORY[0x1E69E9820];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * i);
          array = [MEMORY[0x1E695DF70] array];
          [v24 resyncRequired];
          [v24 waitForSynchronizationToComplete];
          v36[0] = v22;
          v36[1] = 3221225472;
          v36[2] = __75__MCMContainerCache_entriesForUserIdentities_contentClass_transient_error___block_invoke_3;
          v36[3] = &unk_1E86B0D90;
          v37 = array;
          v26 = array;
          [v24 enumerateCacheEntriesWithEnumerator:v36];
          -[MCMMutableContainerArray setGeneration:](v8, "setGeneration:", [v24 generation]);
          [(MCMMutableContainerArray *)v8 addObjectsFromArray:v26];
        }

        v20 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v20);
    }

LABEL_22:
  }

  objc_autoreleasePoolPop(context);
  if (error && !v8)
  {
    v27 = v33;
    *error = v33;
  }

  v28 = [(MCMMutableContainerArray *)v8 copy];

  return v28;
}

void __75__MCMContainerCache_entriesForUserIdentities_contentClass_transient_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 isNoSpecificPersona];
        v9 = *(a1 + 40);
        if (v8)
        {
          v10 = [v9 userIdentityCache];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __75__MCMContainerCache_entriesForUserIdentities_contentClass_transient_error___block_invoke_2;
          v16[3] = &unk_1E86B0D40;
          v11 = *(a1 + 64);
          v12 = *(a1 + 48);
          v16[4] = *(a1 + 40);
          v19 = v11;
          v20 = *(a1 + 72);
          v13 = v12;
          v14 = *(a1 + 56);
          v17 = v13;
          v18 = v14;
          [v10 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v16];
        }

        else
        {
          v15 = [v9 _queue_containerClassCacheForUserIdentity:v7 containerClass:*(a1 + 64) transient:*(a1 + 72)];
          if (v15)
          {
            [*(a1 + 48) addObject:v15];
          }

          else
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v4);
  }
}

void __75__MCMContainerCache_entriesForUserIdentities_contentClass_transient_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _queue_containerClassCacheForUserIdentity:a2 containerClass:*(a1 + 56) transient:*(a1 + 64)];
  v4 = v3;
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (int64_t)countContainersForOtherUserIdentitiesWithIdentity:(id)identity error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13434;
  v20 = __Block_byref_object_dispose__13435;
  v21 = 0;
  userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__MCMContainerCache_countContainersForOtherUserIdentitiesWithIdentity_error___block_invoke;
  v11[3] = &unk_1E86B0D18;
  v14 = &v16;
  v8 = identityCopy;
  v12 = v8;
  selfCopy = self;
  v15 = &v22;
  [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v11];

  v9 = v23[3];
  if (error && v9 < 0)
  {
    *error = v17[5];
    v9 = v23[3];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __77__MCMContainerCache_countContainersForOtherUserIdentitiesWithIdentity_error___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = [*(a1 + 32) userIdentity];
    v5 = [v4 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) containerIdentity];
      v7 = [v6 identityByChangingUserIdentity:v3];

      v8 = *(a1 + 40);
      v14 = 0;
      v9 = [v8 entryForContainerIdentity:v7 error:&v14];
      v10 = v14;
      v11 = v14;
      v12 = v11;
      if (v9)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
      }

      else if (v11 && [v11 type] != 21)
      {
        v13 = container_log_handle_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v16 = v7;
          v17 = 2112;
          v18 = v12;
          _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not check whether other data containers of the same identifier exist; identity = %@, error = %@", buf, 0x16u);
        }

        *(*(*(a1 + 56) + 8) + 24) = -1;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
      }
    }
  }
}

- (id)entryForContainerIdentity:(id)identity error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = [(MCMContainerCache *)self classCacheForContainerIdentity:identityCopy];
  if (v7)
  {
    v12[0] = 0;
    v8 = [(MCMContainerCache *)self entryForContainerIdentity:identityCopy classCache:v7 error:v12];
    v9 = v12[0];
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [[MCMError alloc] initWithErrorType:43];
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v9;
    *error = v9;
  }

LABEL_7:

  return v8;
}

- (id)entryForContainerIdentity:(id)identity classCache:(id)cache error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  identifier = [identityCopy identifier];
  v10 = 0;
  while (1)
  {
    v11 = v10;
    v12 = [cacheCopy cacheEntryForIdentifier:identifier];
    if (!v12)
    {
LABEL_8:
      v16 = [[MCMError alloc] initWithErrorType:21 category:3];
      v13 = 0;
      errorCopy4 = error;
      if (!error)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v13 = v12;
    v35 = 0;
    v14 = [v12 verifyWithError:&v35];
    v15 = v35;
    v16 = v15;
    if (v14)
    {
      break;
    }

    if (v15)
    {
      if ([(MCMError *)v15 type]== 162)
      {
        userIdentityCache = [(MCMContainerCache *)self userIdentityCache];
        [userIdentityCache flush];

        userIdentity = [identityCopy userIdentity];
        [(MCMContainerCache *)self invalidateUserIdentity:userIdentity];
      }

      v25 = container_log_handle_for_category();
      errorCopy4 = error;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v37 = identifier;
        v38 = 2112;
        v39 = v16;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Failed to verify container while looking up [%@]. FATAL; error = %@", buf, 0x16u);
      }

      v13 = 0;
      if (!error)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (!v13)
      {
        v28 = v16;
        *errorCopy4 = v16;
      }

      goto LABEL_25;
    }

    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = identifier;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Incoherent cache detected (stale cache entry) while looking up [%@]. Recovering by forcing cache resync.", buf, 0xCu);
    }

    [cacheCopy resyncRequired];
    v10 = 1;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = identityCopy;
    uuid = [v19 uuid];
    uuid2 = [v13 uuid];
    v22 = [uuid isEqual:uuid2];

    if (v22)
    {
      errorCopy4 = error;
    }

    else
    {
      v26 = container_log_handle_for_category();
      errorCopy4 = error;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        uuid3 = [v19 uuid];
        uUIDString = [uuid3 UUIDString];
        uuid4 = [v13 uuid];
        uUIDString2 = [uuid4 UUIDString];
        *buf = 138412546;
        v37 = uUIDString;
        v38 = 2112;
        v39 = uUIDString2;
        _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Matching cache entry found, but UUIDs mismatch: requested = [%@] vs. cache entry = [%@]", buf, 0x16u);
      }

      v27 = [[MCMError alloc] initWithErrorType:21];
      v13 = 0;
      v16 = v27;
    }

    if (errorCopy4)
    {
      goto LABEL_23;
    }
  }

LABEL_25:

  return v13;
}

- (id)classCacheForContainerIdentity:(id)identity
{
  identityCopy = identity;
  transient = [identityCopy transient];
  containerClass = [identityCopy containerClass];
  userIdentity = [identityCopy userIdentity];

  v8 = [(MCMContainerCache *)self classCacheForUserIdentity:userIdentity containerClass:containerClass transient:transient];

  return v8;
}

- (id)classCacheForUserIdentity:(id)identity containerClass:(unint64_t)class transient:(BOOL)transient
{
  v24 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13434;
  v22 = __Block_byref_object_dispose__13435;
  v23 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__MCMContainerCache_classCacheForUserIdentity_containerClass_transient___block_invoke;
  v13[3] = &unk_1E86B0CF0;
  v13[4] = self;
  v14 = identityCopy;
  v15 = &v18;
  classCopy = class;
  transientCopy = transient;
  v10 = identityCopy;
  dispatch_sync(queue, v13);
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

uint64_t __72__MCMContainerCache_classCacheForUserIdentity_containerClass_transient___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _queue_containerClassCacheForUserIdentity:*(a1 + 40) containerClass:*(a1 + 56) transient:*(a1 + 64)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setContainerClassCache:(id)cache
{
  v9 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MCMContainerCache_setContainerClassCache___block_invoke;
  block[3] = &unk_1E86B0CC8;
  block[4] = self;
  v8 = cacheCopy;
  v6 = cacheCopy;
  dispatch_sync(queue, block);
}

uint64_t __44__MCMContainerCache_setContainerClassCache___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_setContainerClassCache:v3];
}

- (MCMContainerCache)initWithUserIdentityCache:(id)cache childParentMapCache:(id)mapCache classCacheClass:(Class)class cacheEntryClass:(Class)entryClass error:(id *)error
{
  mapCacheCopy = mapCache;
  cacheCopy = cache;
  v13 = dispatch_queue_create("com.apple.containermanagerd.cache", 0);
  v14 = [(MCMContainerCache *)self initWithUserIdentityCache:cacheCopy childParentMapCache:mapCacheCopy classCacheClass:class cacheEntryClass:entryClass queue:v13];

  v15 = v14;
  return v15;
}

- (MCMContainerCache)initWithUserIdentityCache:(id)cache childParentMapCache:(id)mapCache classCacheClass:(Class)class cacheEntryClass:(Class)entryClass queue:(id)queue
{
  v22 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  mapCacheCopy = mapCache;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = MCMContainerCache;
  v16 = [(MCMContainerCache *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_classCacheClass, class);
    objc_storeStrong(&v17->_cacheEntryClass, entryClass);
    objc_storeStrong(&v17->_childParentMapCache, mapCache);
    v18 = objc_opt_new();
    queue_cache = v17->_queue_cache;
    v17->_queue_cache = v18;

    objc_storeStrong(&v17->_userIdentityCache, cache);
    objc_storeStrong(&v17->_queue, queue);
  }

  return v17;
}

@end