@interface MCMContainerClassPathCache
- (MCMContainerClassPathCache)initWithUserIdentityCache:(id)cache;
- (id)_lock_containerClassPathForUserIdentity:(id)identity containerConfig:(id)config typeClass:(Class)class;
- (id)containerClassPathForContainerIdentity:(id)identity typeClass:(Class)class;
- (id)containerClassPathForUserIdentity:(id)identity containerConfig:(id)config typeClass:(Class)class;
- (id)containerClassPathWithURL:(id)l reference:(id)reference;
- (id)referenceForPOSIXUser:(id)user;
- (void)_lock_flush;
- (void)flush;
- (void)userIdentityCache:(id)cache didInvalidateUserIdentity:(id)identity;
@end

@implementation MCMContainerClassPathCache

- (void)_lock_flush
{
  os_unfair_lock_assert_owner(&self->_lookupLock);
  self->_lookup = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];

  MEMORY[0x1EEE66BB8]();
}

- (id)_lock_containerClassPathForUserIdentity:(id)identity containerConfig:(id)config typeClass:(Class)class
{
  v31 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  configCopy = config;
  os_unfair_lock_assert_owner(&self->_lookupLock);
  containerClass = [configCopy containerClass];

  v11 = NSStringFromClass(class);
  if (identityCopy)
  {
    v12 = [(NSMutableDictionary *)self->_lookup objectForKeyedSubscript:v11];
    if (!v12)
    {
      v13 = MEMORY[0x1E695DF90];
      v14 = +[MCMContainerClassPath containerPathTypeClasses];
      v12 = [v13 dictionaryWithCapacity:{objc_msgSend(v14, "count")}];

      [(NSMutableDictionary *)self->_lookup setObject:v12 forKeyedSubscript:v11];
    }

    v15 = [v12 objectForKeyedSubscript:identityCopy];
    if (!v15)
    {
      v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:15];
      [v12 setObject:v15 forKeyedSubscript:identityCopy];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:containerClass];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (!v17)
    {
      v17 = [(objc_class *)class containerPathForUserIdentity:identityCopy containerClass:containerClass];
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v23 = 138413058;
        v24 = v11;
        v25 = 2112;
        v26 = identityCopy;
        v27 = 2048;
        v28 = containerClass;
        v29 = 2112;
        v30 = v17;
        _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Container class path cache miss, creating type = [%@], userIdentity = [%@], class = %llu: %@", &v23, 0x2Au);
      }

      if (v17)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:containerClass];
        [v15 setObject:v17 forKeyedSubscript:v19];
      }
    }

    v20 = v17;

    v21 = v20;
  }

  else
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v23 = 136315138;
      v24 = "[MCMContainerClassPathCache _lock_containerClassPathForUserIdentity:containerConfig:typeClass:]";
      _os_log_fault_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_FAULT, "Cannot call %s with a nil user identity.", &v23, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

- (void)userIdentityCache:(id)cache didInvalidateUserIdentity:(id)identity
{

  [(MCMContainerClassPathCache *)self flush:cache];
}

- (id)containerClassPathWithURL:(id)l reference:(id)reference
{
  v18 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  path = [l path];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = referenceCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([path hasPrefix:v11])
        {
          v8 = [v7 objectForKeyedSubscript:v11];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (id)referenceForPOSIXUser:(id)user
{
  v26 = *MEMORY[0x1E69E9840];
  userCopy = user;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:30];
  array = [MEMORY[0x1E695DF70] array];
  userIdentityCache = [(MCMContainerClassPathCache *)self userIdentityCache];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke;
  v23[3] = &unk_1E86AFF48;
  v24 = userCopy;
  v8 = array;
  v25 = v8;
  v9 = userCopy;
  [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v23];

  v10 = containermanager_copy_global_configuration();
  classIterator = [v10 classIterator];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke_2;
  v19 = &unk_1E86AFF70;
  v20 = v8;
  selfCopy = self;
  v22 = v5;
  v12 = v5;
  v13 = v8;
  [classIterator selectWithIterator:&v16];

  v14 = [v12 copy];

  return v14;
}

void __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userIdentityWithPOSIXUser:*(a1 + 32)];
  [*(a1 + 40) addObject:?];
}

void __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke_2(id *a1, void *a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MCMUserIdentitySharedCache sharedInstance];
  v5 = [v4 defaultUserIdentity];
  v57[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];

  v37 = v3;
  if (+[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", [v3 containerClass]))
  {
    v7 = a1[4];
LABEL_11:

    v6 = v7;
    goto LABEL_12;
  }

  v8 = [v3 containerClass];
  if (v8 <= 8 && ((1 << v8) & 0x12A) != 0)
  {
    v9 = containermanager_copy_global_configuration();
    v10 = [v9 bundleContainerMode];

    if (v10 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 globalBundleUserIdentity];
      v56 = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v56;
LABEL_10:
      v7 = [v13 arrayWithObjects:v14 count:1];

      v3 = v37;
      v6 = v11;
      goto LABEL_11;
    }
  }

  if (([v3 containerClass] & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v15 = containermanager_copy_global_configuration();
    v16 = [v15 systemContainerMode];

    if (v16 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 globalSystemUserIdentity];
      v55 = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v55;
      goto LABEL_10;
    }
  }

LABEL_12:
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v34 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v34)
  {
    v33 = *v52;
    do
    {
      v17 = 0;
      do
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v17;
        v18 = *(*(&v51 + 1) + 8 * v17);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v44[0] = objc_opt_class();
        v44[1] = objc_opt_class();
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
        v20 = [v19 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v47;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v47 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v46 + 1) + 8 * i);
              v25 = [a1[5] containerClassPathForUserIdentity:v18 containerConfig:v3 typeClass:v24];
              v26 = v25;
              if (v25)
              {
                v27 = [v25 classURL];
                v28 = [v27 path];
                v29 = [v28 stringByAppendingString:@"/"];

                v3 = v37;
                [a1[6] setObject:v26 forKeyedSubscript:v29];
              }

              else
              {
                v29 = container_log_handle_for_category();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v36 = [v18 shortDescription];
                  v30 = [v3 containerClass];
                  v31 = NSStringFromClass(v24);
                  *buf = 138412802;
                  v39 = v36;
                  v40 = 2048;
                  v41 = v30;
                  v3 = v37;
                  v42 = 2112;
                  v43 = v31;
                  _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Could not fetch a class path; userIdentity = %@, class = %llu, type = %@", buf, 0x20u);
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v46 objects:v45 count:16];
          }

          while (v21);
        }

        v17 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v34);
  }
}

- (void)flush
{
  os_unfair_lock_lock(&self->_lookupLock);
  [(MCMContainerClassPathCache *)self _lock_flush];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (id)containerClassPathForUserIdentity:(id)identity containerConfig:(id)config typeClass:(Class)class
{
  configCopy = config;
  identityCopy = identity;
  userIdentityCache = [(MCMContainerClassPathCache *)self userIdentityCache];
  v11 = [userIdentityCache userIdentityForContainerConfig:configCopy originatorUserIdentity:identityCopy];

  os_unfair_lock_lock(&self->_lookupLock);
  v12 = [(MCMContainerClassPathCache *)self _lock_containerClassPathForUserIdentity:v11 containerConfig:configCopy typeClass:class];

  os_unfair_lock_unlock(&self->_lookupLock);

  return v12;
}

- (id)containerClassPathForContainerIdentity:(id)identity typeClass:(Class)class
{
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  containerConfig = [identityCopy containerConfig];

  v9 = [(MCMContainerClassPathCache *)self containerClassPathForUserIdentity:userIdentity containerConfig:containerConfig typeClass:class];

  return v9;
}

- (MCMContainerClassPathCache)initWithUserIdentityCache:(id)cache
{
  v11 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v10.receiver = self;
  v10.super_class = MCMContainerClassPathCache;
  v6 = [(MCMContainerClassPathCache *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    lookup = v6->_lookup;
    v6->_lookup = v7;

    v6->_lookupLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_userIdentityCache, cache);
  }

  return v6;
}

@end