@interface MCMUserIdentityCache
+ (BOOL)personasAreSupported;
+ (id)defaultUserIdentity;
+ (id)globalBundleUserIdentity;
+ (id)globalSystemUserIdentity;
+ (id)userIdentityWithPersonaAttributes:(id)attributes;
+ (id)userIdentityWithPersonaAttributes:(id)attributes POSIXUser:(id)user forceUnspecific:(BOOL)unspecific;
+ (id)userIdentityWithPersonaAttributes:(id)attributes forceUnspecific:(BOOL)unspecific;
- (BOOL)_lock_resync_fromUserPersonaAttributes:(id)attributes;
- (MCMUserIdentity)lock_userIdentityForPersonalPersona;
- (MCMUserIdentity)lock_userIdentityForUnspecificPersona;
- (MCMUserIdentityCache)init;
- (NSDictionary)lock_bundleToDataSeparatedIdentitiesMap;
- (NSDictionary)lock_personaIDToUserIdentityMap;
- (NSDictionary)lock_personaUniqueStringToUserIdentityMap;
- (id)_lock_userIdentitiesForBundleIdentifier:(id)identifier;
- (id)_lock_userIdentityForCurrentUserWithPersonaUniqueString:(id)string;
- (id)allAccessibleUserIdentities;
- (id)globalBundleUserIdentity;
- (id)globalSystemUserIdentity;
- (id)libraryRepairForUserIdentity:(id)identity;
- (id)managedUserPathRegistryForUserIdentity:(id)identity;
- (id)personaUniqueStringForCurrentContext;
- (id)unspecificUserIdentity;
- (id)userIdentitiesForBundleIdentifier:(id)identifier;
- (id)userIdentitiesForContainerConfig:(id)config originatorUserIdentities:(id)identities;
- (id)userIdentityForClient:(container_client *)client error:(id *)error;
- (id)userIdentityForContainerConfig:(id)config originatorUserIdentity:(id)identity;
- (id)userIdentityForCurrentContext;
- (id)userIdentityForCurrentUserWithPersonaUniqueString:(id)string;
- (id)userIdentityForLegacyMobileUser;
- (id)userIdentityForPersonaUniqueString:(id)string POSIXUser:(id)user;
- (id)userIdentityForPersonalPersona;
- (id)userIdentityForPersonalPersonaWithPOSIXUser:(id)user;
- (id)userIdentityWithPersonaID:(unsigned int)d;
- (void)_lock_flush;
- (void)_lock_flushAndRepopulateWithUserIdentities:(id)identities;
- (void)_lock_resync;
- (void)_notifyObserversOfChangesWithUserIdentities:(id)identities firstFetch:(BOOL)fetch;
- (void)_refreshFromUserManagementIfNecessary;
- (void)addUserIdentityCacheObserver:(id)observer;
- (void)flush;
- (void)flushAndRepopulateWithUserIdentities:(id)identities;
- (void)forEachAccessibleUserIdentitySynchronouslyExecuteBlock:(id)block;
- (void)removeUserIdentityCacheObserver:(id)observer;
- (void)setPreviousUserIdentities:(id)identities;
@end

@implementation MCMUserIdentityCache

- (id)personaUniqueStringForCurrentContext
{
  v9 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() personasAreSupported] && objc_opt_class())
  {
    mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
    currentPersona = [mEMORY[0x1E69DF060] currentPersona];

    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    if (!userPersonaUniqueString)
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Could not fetch persona unique string", v8, 2u);
      }
    }
  }

  else
  {
    userPersonaUniqueString = 0;
  }

  if (personaUniqueStringForCurrentContext_onceToken != -1)
  {
    dispatch_once(&personaUniqueStringForCurrentContext_onceToken, &__block_literal_global_14);
    if (userPersonaUniqueString)
    {
      goto LABEL_11;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  if (!userPersonaUniqueString)
  {
    goto LABEL_15;
  }

LABEL_11:
  v6 = [personaUniqueStringForCurrentContext_dedupCache objectForKey:userPersonaUniqueString];
  if (!v6)
  {
    [personaUniqueStringForCurrentContext_dedupCache setObject:userPersonaUniqueString forKey:userPersonaUniqueString];
    v6 = userPersonaUniqueString;
  }

LABEL_16:

  return v6;
}

+ (BOOL)personasAreSupported
{
  if (MCMPersonasAreSupported_onceToken != -1)
  {
    dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
  }

  if (MCMPersonasAreSupported_staticPersonasSupported != 1)
  {
    return 0;
  }

  v2 = containermanager_copy_global_configuration();
  v3 = [v2 dispositionForContainerClass:2] == 1;

  return v3;
}

- (void)_refreshFromUserManagementIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() personasAreSupported])
  {
    mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
    v9 = 0;
    v4 = [mEMORY[0x1E69DF060] personaGenerationIdentifierWithError:&v9];

    if (v4 && v4 != self->_savedGeneration)
    {
      self->_savedGeneration = v4;
      v5 = container_log_handle_for_category();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        [(MCMUserIdentityCache *)self flush];
        return;
      }

      *buf = 134217984;
      v11 = v4;
      v6 = "Flushing cache because UM persona list has updated. (generation %llu)";
      v7 = v5;
      v8 = 12;
    }

    else
    {
      if (self->_fetchedFromUM)
      {
        return;
      }

      v5 = container_log_handle_for_category();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      *buf = 0;
      v6 = "Resync cache because UM persona list has not yet been fetched successfully.";
      v7 = v5;
      v8 = 2;
    }

    _os_log_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    goto LABEL_10;
  }
}

- (MCMUserIdentity)lock_userIdentityForPersonalPersona
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_userIdentityForPersonalPersona = self->_lock_userIdentityForPersonalPersona;

  return lock_userIdentityForPersonalPersona;
}

- (NSDictionary)lock_personaUniqueStringToUserIdentityMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;

  return lock_personaUniqueStringToUserIdentityMap;
}

- (id)userIdentityForPersonalPersona
{
  v3 = containermanager_copy_global_configuration();
  defaultUser = [v3 defaultUser];
  v5 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersonaWithPOSIXUser:defaultUser];

  return v5;
}

- (NSDictionary)lock_personaIDToUserIdentityMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;

  return lock_personaIDToUserIdentityMap;
}

- (id)globalSystemUserIdentity
{
  v2 = objc_opt_class();

  return [v2 globalSystemUserIdentity];
}

+ (id)globalSystemUserIdentity
{
  if (globalSystemUserIdentity_onceToken != -1)
  {
    dispatch_once(&globalSystemUserIdentity_onceToken, &__block_literal_global_12_11861);
  }

  v2 = globalSystemUserIdentity_userIdentity;

  return v2;
}

- (NSDictionary)lock_bundleToDataSeparatedIdentitiesMap
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;

  return lock_bundleToDataSeparatedIdentitiesMap;
}

- (void)setPreviousUserIdentities:(id)identities
{
  p_previousUserIdentities = &self->_previousUserIdentities;

  objc_storeStrong(p_previousUserIdentities, identities);
}

- (void)_notifyObserversOfChangesWithUserIdentities:(id)identities firstFetch:(BOOL)fetch
{
  v64 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  context = objc_autoreleasePoolPush();
  observers = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(observers);
  observers2 = [(MCMUserIdentityCache *)self observers];
  allObjects = [observers2 allObjects];

  objc_sync_exit(observers);
  v40 = [identitiesCopy mutableCopy];
  previousUserIdentities = [(MCMUserIdentityCache *)self previousUserIdentities];
  [v40 minusSet:previousUserIdentities];

  previousUserIdentities2 = [(MCMUserIdentityCache *)self previousUserIdentities];
  v11 = [previousUserIdentities2 mutableCopy];

  v39 = v11;
  v12 = v11;
  v13 = identitiesCopy;
  [v12 minusSet:identitiesCopy];
  if (!fetch)
  {
    previousUserIdentities3 = [(MCMUserIdentityCache *)self previousUserIdentities];
    if (![previousUserIdentities3 count])
    {
      v13 = identitiesCopy;
      v15 = [identitiesCopy count];

      if (!v15)
      {
        goto LABEL_6;
      }

      previousUserIdentities3 = [(MCMUserIdentityCache *)self defaultUserIdentity];
      [v39 addObject:previousUserIdentities3];
    }

    v13 = identitiesCopy;
  }

LABEL_6:
  [(MCMUserIdentityCache *)self setPreviousUserIdentities:v13];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = allObjects;
  v41 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
  if (v41)
  {
    v38 = *v61;
    do
    {
      v16 = 0;
      do
      {
        if (*v61 != v38)
        {
          v17 = v16;
          objc_enumerationMutation(obj);
          v16 = v17;
        }

        v42 = v16;
        v18 = *(*(&v60 + 1) + 8 * v16);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v19 = v39;
        v20 = [v19 countByEnumeratingWithState:&v55 objects:v54 count:16];
        if (v20)
        {
          v21 = *v56;
          do
          {
            v22 = 0;
            do
            {
              if (*v56 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v55 + 1) + 8 * v22);
              v24 = container_log_handle_for_category();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                *buf = 134218498;
                v49 = v18;
                v50 = 2112;
                v51 = v26;
                v52 = 2112;
                v53 = v23;
                _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, "Notifying observer <0x%p; %@> about an invalid user identity: %@", buf, 0x20u);
              }

              [v18 userIdentityCache:self didInvalidateUserIdentity:v23];
              ++v22;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v55 objects:v54 count:16];
          }

          while (v20);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v27 = v40;
        v28 = [v27 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v28)
        {
          v29 = *v45;
          do
          {
            v30 = 0;
            do
            {
              if (*v45 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v44 + 1) + 8 * v30);
              v32 = container_log_handle_for_category();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                *buf = 134218498;
                v49 = v18;
                v50 = 2112;
                v51 = v34;
                v52 = 2112;
                v53 = v31;
                _os_log_debug_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_DEBUG, "Notifying observer <0x%p; %@> about a new user identity: %@", buf, 0x20u);
              }

              [v18 userIdentityCache:self didAddUserIdentity:v31];
              ++v30;
            }

            while (v28 != v30);
            v28 = [v27 countByEnumeratingWithState:&v44 objects:v43 count:16];
          }

          while (v28);
        }

        v16 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
    }

    while (v41);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)_lock_resync_fromUserPersonaAttributes:(id)attributes
{
  v150 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v104 = objc_autoreleasePoolPush();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v109 = [MEMORY[0x1E695DFA8] set];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v7 = attributesCopy;
  v8 = [v7 countByEnumeratingWithState:&v146 objects:v145 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *v147;
  v108 = dictionary2;
  v103 = v7;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v147 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v146 + 1) + 8 * i);
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        isUniversalPersona = [v12 isUniversalPersona];
        isSystemPersona = [v12 isSystemPersona];
        isPersonalPersona = [v12 isPersonalPersona];
        isDataSeparatedPersona = [v12 isDataSeparatedPersona];
        *buf = 67110146;
        *v144 = isUniversalPersona;
        *&v144[4] = 1024;
        *&v144[6] = isSystemPersona;
        v7 = v103;
        *&v144[10] = 1024;
        *&v144[12] = isPersonalPersona;
        dictionary2 = v108;
        *&v144[16] = 1024;
        *&v144[18] = isDataSeparatedPersona;
        *&v144[22] = 2112;
        *&v144[24] = v12;
        _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "[Personal] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
      }

      if ([v12 isPersonalPersona])
      {
        userPersonaUniqueString = [v12 userPersonaUniqueString];
        if (userPersonaUniqueString)
        {
          v23 = userPersonaUniqueString;
          v115 = [objc_opt_class() userIdentityWithPersonaAttributes:v12];
          log = [objc_opt_class() userIdentityWithPersonaAttributes:v12 forceUnspecific:1];
          v24 = [dictionary2 objectForKeyedSubscript:v23];

          if (v24)
          {
            v25 = container_log_handle_for_category();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              *v144 = v23;
              *&v144[8] = 2112;
              *&v144[10] = v12;
              _os_log_fault_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
            }
          }

          [dictionary2 setObject:v115 forKeyedSubscript:v23];
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "userPersona_id")}];
          [dictionary3 setObject:v115 forKeyedSubscript:v26];

          v27 = container_log_handle_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *v144 = v12;
            *&v144[8] = 2112;
            *&v144[10] = v115;
            *&v144[18] = 2112;
            *&v144[20] = log;
            _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "Found personal persona %@: created personal %@, unspecific %@", buf, 0x20u);
          }

          v18 = v115;
          if (!v115 || !log)
          {
            goto LABEL_12;
          }

          v142 = 0u;
          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          obj = v7;
          v28 = [obj countByEnumeratingWithState:&v139 objects:v138 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v140;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v140 != v30)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v139 + 1) + 8 * j);
                v33 = container_log_handle_for_category();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  isUniversalPersona2 = [v32 isUniversalPersona];
                  isSystemPersona2 = [v32 isSystemPersona];
                  isPersonalPersona2 = [v32 isPersonalPersona];
                  isDataSeparatedPersona2 = [v32 isDataSeparatedPersona];
                  *buf = 67110146;
                  *v144 = isUniversalPersona2;
                  *&v144[4] = 1024;
                  *&v144[6] = isSystemPersona2;
                  dictionary2 = v108;
                  *&v144[10] = 1024;
                  *&v144[12] = isPersonalPersona2;
                  v18 = v115;
                  *&v144[16] = 1024;
                  *&v144[18] = isDataSeparatedPersona2;
                  *&v144[22] = 2112;
                  *&v144[24] = v32;
                  _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "[Multi] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
                }

                if (([v32 isPersonalPersona] & 1) == 0 && (objc_msgSend(v32, "isDataSeparatedPersona") & 1) == 0)
                {
                  userPersonaBundleIDList = [v32 userPersonaBundleIDList];
                  v35 = container_log_handle_for_category();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    userPersona_id = [v32 userPersona_id];
                    *buf = 67109634;
                    *v144 = userPersona_id;
                    *&v144[4] = 2112;
                    *&v144[6] = v32;
                    *&v144[14] = 2112;
                    *&v144[16] = userPersonaBundleIDList;
                    _os_log_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_DEFAULT, "Fetched bundle ID list for (%u) %@: %@", buf, 0x1Cu);
                  }

                  if (userPersonaBundleIDList && [userPersonaBundleIDList count])
                  {
                    v37 = [MEMORY[0x1E695DFD8] setWithArray:userPersonaBundleIDList];
                    [v109 unionSet:v37];
                  }

                  userPersonaUniqueString2 = [v32 userPersonaUniqueString];
                  if (userPersonaUniqueString2)
                  {
                    v39 = [dictionary2 objectForKeyedSubscript:userPersonaUniqueString2];

                    if (v39)
                    {
                      v40 = container_log_handle_for_category();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138412546;
                        *v144 = userPersonaUniqueString2;
                        *&v144[8] = 2112;
                        *&v144[10] = v32;
                        _os_log_fault_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
                      }
                    }

                    [dictionary2 setObject:log forKeyedSubscript:userPersonaUniqueString2];
                  }

                  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v32, "userPersona_id")}];
                  [dictionary3 setObject:log forKeyedSubscript:v41];

                  v18 = v115;
                }
              }

              v29 = [obj countByEnumeratingWithState:&v139 objects:v138 count:16];
            }

            while (v29);
          }

          v136 = 0u;
          v137 = 0u;
          v134 = 0u;
          v135 = 0u;
          v111 = obj;
          v46 = [v111 countByEnumeratingWithState:&v134 objects:v133 count:16];
          if (v46)
          {
            v48 = v46;
            v49 = *v135;
            *&v47 = 67109120;
            v102 = v47;
            v106 = *v135;
            do
            {
              v50 = 0;
              v107 = v48;
              do
              {
                if (*v135 != v49)
                {
                  objc_enumerationMutation(v111);
                }

                v51 = *(*(&v134 + 1) + 8 * v50);
                if ([v51 isDataSeparatedPersona])
                {
                  v52 = container_log_handle_for_category();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    isUniversalPersona3 = [v51 isUniversalPersona];
                    isSystemPersona3 = [v51 isSystemPersona];
                    isPersonalPersona3 = [v51 isPersonalPersona];
                    isDataSeparatedPersona3 = [v51 isDataSeparatedPersona];
                    *buf = 67110146;
                    *v144 = isUniversalPersona3;
                    *&v144[4] = 1024;
                    *&v144[6] = isSystemPersona3;
                    *&v144[10] = 1024;
                    *&v144[12] = isPersonalPersona3;
                    v49 = v106;
                    v48 = v107;
                    *&v144[16] = 1024;
                    *&v144[18] = isDataSeparatedPersona3;
                    *&v144[22] = 2112;
                    *&v144[24] = v51;
                    _os_log_debug_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEBUG, "[DS] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
                  }

                  obja = [v51 userPersonaUniqueString];
                  if (obja)
                  {
                    v53 = [objc_opt_class() userIdentityWithPersonaAttributes:v51];
                    v54 = container_log_handle_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      *v144 = obja;
                      *&v144[8] = 2112;
                      *&v144[10] = v53;
                      _os_log_debug_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_DEBUG, "Creating user identity for %@: %@", buf, 0x16u);
                    }

                    v55 = [dictionary2 objectForKeyedSubscript:obja];

                    if (v55)
                    {
                      v56 = container_log_handle_for_category();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138412546;
                        *v144 = obja;
                        *&v144[8] = 2112;
                        *&v144[10] = v51;
                        _os_log_fault_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
                      }
                    }

                    [dictionary2 setObject:v53 forKeyedSubscript:obja];
                    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v51, "userPersona_id")}];
                    [dictionary3 setObject:v53 forKeyedSubscript:v57];

                    sandboxExtensionForPersonaLayoutPath = [v51 sandboxExtensionForPersonaLayoutPath];
                    v114 = sandboxExtensionForPersonaLayoutPath;
                    if (sandboxExtensionForPersonaLayoutPath)
                    {
                      [sandboxExtensionForPersonaLayoutPath UTF8String];
                      v59 = sandbox_extension_consume();
                      if (v59 < 0)
                      {
                        v60 = *__error();
                        v61 = container_log_handle_for_category();
                        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                        {
                          v84 = *__error();
                          *buf = v102;
                          *v144 = v84;
                          _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Error %d consuming sandbox extension", buf, 8u);
                        }

                        v59 = -v60;
                      }

                      [v53 setExtensionHandle:v59];
                    }

                    else
                    {
                      v62 = container_log_handle_for_category();
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        personaLayoutPathURL = [v51 personaLayoutPathURL];
                        *buf = 138543618;
                        *v144 = obja;
                        *&v144[8] = 2114;
                        *&v144[10] = personaLayoutPathURL;
                        _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Error fetching sandbox extension for persona %{public}@, path %{public}@", buf, 0x16u);
                      }
                    }

                    userPersonaBundleIDList2 = [v51 userPersonaBundleIDList];
                    v64 = container_log_handle_for_category();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *v144 = v51;
                      *&v144[8] = 2112;
                      *&v144[10] = userPersonaBundleIDList2;
                      _os_log_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_DEFAULT, "Fetched bundle ID list for data separated persona %@: %@", buf, 0x16u);
                    }

                    v113 = userPersonaBundleIDList2;
                    if (userPersonaBundleIDList2 && [userPersonaBundleIDList2 count])
                    {
                      v131 = 0u;
                      v132 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v65 = userPersonaBundleIDList2;
                      v66 = [v65 countByEnumeratingWithState:&v129 objects:v128 count:16];
                      if (v66)
                      {
                        v67 = v66;
                        v68 = *v130;
                        do
                        {
                          for (k = 0; k != v67; ++k)
                          {
                            if (*v130 != v68)
                            {
                              objc_enumerationMutation(v65);
                            }

                            v70 = *(*(&v129 + 1) + 8 * k);
                            v71 = [dictionary objectForKeyedSubscript:v70];
                            if (!v71)
                            {
                              v71 = [MEMORY[0x1E695DFA8] set];
                              [dictionary setObject:v71 forKeyedSubscript:v70];
                            }

                            [v71 addObject:v53];
                          }

                          v67 = [v65 countByEnumeratingWithState:&v129 objects:v128 count:16];
                        }

                        while (v67);
                      }
                    }

                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v72 = v109;
                    v73 = [v72 countByEnumeratingWithState:&v124 objects:v123 count:16];
                    if (v73)
                    {
                      v74 = v73;
                      v75 = *v125;
                      do
                      {
                        for (m = 0; m != v74; ++m)
                        {
                          if (*v125 != v75)
                          {
                            objc_enumerationMutation(v72);
                          }

                          v77 = *(*(&v124 + 1) + 8 * m);
                          v78 = [dictionary objectForKeyedSubscript:v77];
                          if (!v78)
                          {
                            v78 = [MEMORY[0x1E695DFA8] set];
                            [dictionary setObject:v78 forKeyedSubscript:v77];
                          }

                          [v78 addObject:v53];
                        }

                        v74 = [v72 countByEnumeratingWithState:&v124 objects:v123 count:16];
                      }

                      while (v74);
                    }

                    v48 = v107;
                    dictionary2 = v108;
                    v18 = v115;
                    v49 = v106;
                  }

                  else
                  {
                    v53 = container_log_handle_for_category();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      *v144 = v51;
                      _os_log_fault_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_FAULT, "Invalid persona unique string for %@", buf, 0xCu);
                    }
                  }
                }

                ++v50;
              }

              while (v50 != v48);
              v48 = [v111 countByEnumeratingWithState:&v134 objects:v133 count:16];
            }

            while (v48);
          }

          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v85 = v109;
          v86 = [v85 countByEnumeratingWithState:&v119 objects:v118 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v120;
            do
            {
              for (n = 0; n != v87; ++n)
              {
                if (*v120 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v119 + 1) + 8 * n);
                v91 = [dictionary objectForKeyedSubscript:v90];
                if (!v91)
                {
                  v91 = [MEMORY[0x1E695DFA8] set];
                  [dictionary setObject:v91 forKeyedSubscript:v90];
                }

                [v91 addObject:v18];
              }

              v87 = [v85 countByEnumeratingWithState:&v119 objects:v118 count:16];
            }

            while (v87);
          }

          v92 = [dictionary copy];
          lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;
          self->_lock_bundleToDataSeparatedIdentitiesMap = v92;

          v94 = [dictionary2 copy];
          lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;
          self->_lock_personaUniqueStringToUserIdentityMap = v94;

          v96 = [dictionary3 copy];
          lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;
          self->_lock_personaIDToUserIdentityMap = v96;

          objc_storeStrong(&self->_lock_userIdentityForPersonalPersona, v18);
          lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;
          selfCopy->_lock_userIdentityForUnspecificPersona = log;
          log = log;

          v99 = container_log_handle_for_category();
          v7 = v103;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v101 = selfCopy->_lock_personaUniqueStringToUserIdentityMap;
            *buf = 138412290;
            *v144 = v101;
            _os_log_debug_impl(&dword_1DF2C3000, v99, OS_LOG_TYPE_DEBUG, "User identities locked in: %@", buf, 0xCu);
          }

          v21 = 1;
        }

        else
        {
          log = container_log_handle_for_category();
          if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *v144 = v12;
            _os_log_fault_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_FAULT, "Invalid persona unique string for personal %@", buf, 0xCu);
          }

          v21 = 0;
          v18 = v7;
        }

        v20 = v104;
        goto LABEL_116;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v146 objects:v145 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_11:

  log = 0;
  v18 = 0;
LABEL_12:
  v19 = container_log_handle_for_category();
  v20 = v104;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *v144 = v7;
    _os_log_fault_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_FAULT, "Expected to find a personal persona in %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_116:

  objc_autoreleasePoolPop(v20);
  return v21;
}

- (void)_lock_flushAndRepopulateWithUserIdentities:(id)identities
{
  v41 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_lock);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = identitiesCopy;
  v7 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    defaultUserIdentity = 0;
    v11 = *v38;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        if (([v13 isDataSeparated] & 1) == 0 && (objc_msgSend(v13, "isNoSpecificPersona") & 1) == 0)
        {
          v14 = v13;

          defaultUserIdentity = v14;
        }

        if ([v13 isNoSpecificPersona])
        {
          v15 = v13;

          v9 = v15;
        }

        personaUniqueString = [v13 personaUniqueString];

        if (personaUniqueString)
        {
          personaUniqueString2 = [v13 personaUniqueString];
          [dictionary setObject:v13 forKeyedSubscript:personaUniqueString2];
        }

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13, "kernelPersonaID")}];
        [dictionary2 setObject:v13 forKeyedSubscript:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    defaultUserIdentity = 0;
  }

  v19 = selfCopy;
  [objc_opt_class() personasAreSupported];
  if (defaultUserIdentity)
  {
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    defaultUserIdentity = v9;
    v9 = defaultUserIdentity;
    if (!defaultUserIdentity)
    {
      defaultUserIdentity = [(MCMUserIdentityCache *)selfCopy defaultUserIdentity];
LABEL_22:
      v20 = [MCMUserIdentity alloc];
      posixUser = [(MCMUserIdentity *)defaultUserIdentity posixUser];
      homeDirectoryURL = [(MCMUserIdentity *)defaultUserIdentity homeDirectoryURL];
      personaUniqueString3 = [(MCMUserIdentity *)defaultUserIdentity personaUniqueString];
      v9 = [(MCMUserIdentity *)v20 initWithPOSIXUser:posixUser homeDirectoryURL:homeDirectoryURL personaUniqueString:personaUniqueString3 personaType:2 kernelPersonaID:[(MCMUserIdentity *)defaultUserIdentity kernelPersonaID]];
    }
  }

  dictionary3 = [MEMORY[0x1E695DF20] dictionary];
  lock_bundleToDataSeparatedIdentitiesMap = v19->_lock_bundleToDataSeparatedIdentitiesMap;
  v19->_lock_bundleToDataSeparatedIdentitiesMap = dictionary3;

  v26 = [dictionary copy];
  lock_personaUniqueStringToUserIdentityMap = v19->_lock_personaUniqueStringToUserIdentityMap;
  v19->_lock_personaUniqueStringToUserIdentityMap = v26;

  v28 = [dictionary2 copy];
  lock_personaIDToUserIdentityMap = v19->_lock_personaIDToUserIdentityMap;
  v19->_lock_personaIDToUserIdentityMap = v28;

  lock_userIdentityForPersonalPersona = v19->_lock_userIdentityForPersonalPersona;
  v19->_lock_userIdentityForPersonalPersona = defaultUserIdentity;
  v31 = defaultUserIdentity;

  lock_userIdentityForUnspecificPersona = v19->_lock_userIdentityForUnspecificPersona;
  v19->_lock_userIdentityForUnspecificPersona = v9;
  v33 = v9;

  v19->_cacheInvalid = 0;
}

- (void)_lock_flush
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_cacheInvalid = 1;
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;
  self->_lock_bundleToDataSeparatedIdentitiesMap = dictionary;

  dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;
  self->_lock_personaUniqueStringToUserIdentityMap = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF20] dictionary];
  lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;
  self->_lock_personaIDToUserIdentityMap = dictionary3;

  defaultUserIdentity = [(MCMUserIdentityCache *)self defaultUserIdentity];
  lock_userIdentityForPersonalPersona = self->_lock_userIdentityForPersonalPersona;
  self->_lock_userIdentityForPersonalPersona = defaultUserIdentity;

  defaultUserIdentity2 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;
  self->_lock_userIdentityForUnspecificPersona = defaultUserIdentity2;

  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  lock_managedPathRegistryForUserIdentity = self->_lock_managedPathRegistryForUserIdentity;
  self->_lock_managedPathRegistryForUserIdentity = dictionary4;

  self->_lock_libraryRepairForUserIdentity = [MEMORY[0x1E695DF90] dictionary];

  MEMORY[0x1EEE66BB8]();
}

- (void)_lock_resync
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  if ([objc_opt_class() personasAreSupported] && objc_opt_class())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = +[MCMTestLocks sharedInstance];
    if ([v5 countOfLock:13] < 1)
    {
      mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
      v21 = 0;
      v7 = [mEMORY[0x1E69DF060] listAllPersonaAttributesWithError:&v21];
      v6 = v21;
    }

    else
    {
      [v5 releaseLock:13];
      v6 = 0;
      v7 = 0;
    }

    v9 = CFAbsoluteTimeGetCurrent();
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = v9 - Current;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v23 = v7;
      _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "listAllPersonaAttributes (%f s): error = %{public}@, attributes = %{public}@", buf, 0x20u);
    }

    if (v7 && [v7 count])
    {
      self->_fetchedFromUM = [(MCMUserIdentityCache *)self _lock_resync_fromUserPersonaAttributes:v7];
      v11 = MEMORY[0x1E695DFD8];
      allValues = [(NSDictionary *)self->_lock_personaUniqueStringToUserIdentityMap allValues];
      v13 = [v11 setWithArray:allValues];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = __Block_byref_object_copy__11821;
      v24 = __Block_byref_object_dispose__11822;
      v25 = os_transaction_create();
      firstFetch = self->_firstFetch;
      flushQueue = self->_flushQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__MCMUserIdentityCache__lock_resync__block_invoke;
      block[3] = &unk_1E86B0930;
      v18 = v13;
      v19 = buf;
      block[4] = self;
      v20 = firstFetch;
      v16 = v13;
      dispatch_async(flushQueue, block);

      _Block_object_dispose(buf, 8);
    }

    self->_firstFetch = 0;
  }

  objc_autoreleasePoolPop(v3);
  self->_cacheInvalid = 0;
}

void __36__MCMUserIdentityCache__lock_resync__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _notifyObserversOfChangesWithUserIdentities:*(a1 + 40) firstFetch:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (id)_lock_userIdentityForCurrentUserWithPersonaUniqueString:(id)string
{
  v17 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  os_unfair_lock_assert_owner(&self->_lock);
  if (stringCopy)
  {
    lock_personaUniqueStringToUserIdentityMap = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
    v6 = [lock_personaUniqueStringToUserIdentityMap objectForKeyedSubscript:stringCopy];

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [v6 shortDescription];
      v13 = 138412546;
      v14 = shortDescription;
      v15 = 2112;
      v16 = stringCopy;
      _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, "Found %@ for %@", &v13, 0x16u);
    }

    if (!v6)
    {
      [(MCMUserIdentityCache *)self _lock_flush];
      lock_personaUniqueStringToUserIdentityMap2 = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
      v6 = [lock_personaUniqueStringToUserIdentityMap2 objectForKeyedSubscript:stringCopy];

      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        shortDescription2 = [v6 shortDescription];
        v13 = 138412546;
        v14 = shortDescription2;
        v15 = 2112;
        v16 = stringCopy;
        _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "After refresh, found %@ for %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_lock_userIdentitiesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_assert_owner(&self->_lock);
  lock_bundleToDataSeparatedIdentitiesMap = [(MCMUserIdentityCache *)self lock_bundleToDataSeparatedIdentitiesMap];
  v6 = [lock_bundleToDataSeparatedIdentitiesMap objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    lock_userIdentityForPersonalPersona = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
    v8 = MEMORY[0x1E695DFD8];
    if (lock_userIdentityForPersonalPersona)
    {
      lock_userIdentityForPersonalPersona2 = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
      v6 = [v8 setWithObject:lock_userIdentityForPersonalPersona2];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFD8] set];
    }
  }

  return v6;
}

- (MCMUserIdentity)lock_userIdentityForUnspecificPersona
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;

  return lock_userIdentityForUnspecificPersona;
}

- (id)libraryRepairForUserIdentity:(id)identity
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if (!identityCopy)
  {
    identityCopy = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_libraryRepairForUserIdentity objectForKeyedSubscript:identityCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(MCMUserIdentityCache *)self managedUserPathRegistryForUserIdentity:identityCopy];
    v7 = [MCMLibraryRepairForUser alloc];
    v8 = +[MCMFileManager defaultManager];
    classIterator = [(MCMUserIdentityCache *)self classIterator];
    v5 = [(MCMLibraryRepairForUser *)v7 initWithManagedUserPathRegistry:v6 fileManager:v8 classIterator:classIterator];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_libraryRepairForUserIdentity setObject:v5 forKeyedSubscript:identityCopy];
    os_unfair_lock_unlock(&self->_lock);
    if ([identityCopy personaType] != 3)
    {
      v14 = 0;
      v10 = [(MCMLibraryRepair *)v5 createPathsIfNecessaryWithError:&v14];
      v11 = v14;
      if (!v10)
      {
        v12 = container_log_handle_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v16 = identityCopy;
          v17 = 2114;
          v18 = v11;
          _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed creating working directories for %@: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  return v5;
}

- (id)managedUserPathRegistryForUserIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    identityCopy = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_managedPathRegistryForUserIdentity objectForKeyedSubscript:identityCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [MCMManagedUserPathRegistry alloc];
    v7 = containermanager_copy_global_configuration();
    currentUser = [v7 currentUser];
    v5 = [(MCMManagedUserPathRegistry *)v6 initWithUserIdentity:identityCopy daemonUser:currentUser];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_managedPathRegistryForUserIdentity setObject:v5 forKeyedSubscript:identityCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v5;
}

- (void)removeUserIdentityCacheObserver:(id)observer
{
  observerCopy = observer;
  observers = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(observers);
  observers2 = [(MCMUserIdentityCache *)self observers];
  [observers2 removeObject:observerCopy];

  objc_sync_exit(observers);
}

- (void)addUserIdentityCacheObserver:(id)observer
{
  observerCopy = observer;
  observers = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(observers);
  observers2 = [(MCMUserIdentityCache *)self observers];
  [observers2 addObject:observerCopy];

  objc_sync_exit(observers);
}

- (void)flushAndRepopulateWithUserIdentities:(id)identities
{
  identitiesCopy = identities;
  os_unfair_lock_lock(&self->_lock);
  [(MCMUserIdentityCache *)self _lock_flushAndRepopulateWithUserIdentities:identitiesCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userIdentityForLegacyMobileUser
{

  return [(MCMUserIdentityCache *)self defaultUserIdentity];
}

- (id)userIdentityForCurrentContext
{
  personaUniqueStringForCurrentContext = [(MCMUserIdentityCache *)self personaUniqueStringForCurrentContext];
  v4 = containermanager_copy_global_configuration();
  defaultUser = [v4 defaultUser];
  v6 = [(MCMUserIdentityCache *)self userIdentityForPersonaUniqueString:personaUniqueStringForCurrentContext POSIXUser:defaultUser];

  return v6;
}

uint64_t __60__MCMUserIdentityCache_personaUniqueStringForCurrentContext__block_invoke()
{
  personaUniqueStringForCurrentContext_dedupCache = [[MCMLRUCache alloc] initWithName:@"personaUniqueStrings" maxCount:10];

  return MEMORY[0x1EEE66BB8]();
}

- (id)globalBundleUserIdentity
{
  v2 = objc_opt_class();

  return [v2 globalBundleUserIdentity];
}

- (id)userIdentitiesForContainerConfig:(id)config originatorUserIdentities:(id)identities
{
  configCopy = config;
  identitiesCopy = identities;
  v8 = identitiesCopy;
  if (([configCopy personaAndUserSpecific] & 1) == 0)
  {
    v9 = [(MCMUserIdentityCache *)self userIdentityForContainerConfig:configCopy originatorUserIdentity:0];
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695DFD8];
    defaultUserIdentity = [(MCMUserIdentityCache *)self defaultUserIdentity];
    v10 = [v11 setWithObject:defaultUserIdentity];
  }

  return v10;
}

- (id)userIdentityForContainerConfig:(id)config originatorUserIdentity:(id)identity
{
  configCopy = config;
  identityCopy = identity;
  v8 = identityCopy;
  if (([configCopy personaAndUserSpecific] & 1) == 0)
  {
    if ([configCopy usesGlobalBundleUserIdentity])
    {
      globalBundleUserIdentity = [(MCMUserIdentityCache *)self globalBundleUserIdentity];
    }

    else
    {
      if ([configCopy usesGlobalSystemUserIdentity])
      {
        [(MCMUserIdentityCache *)self globalSystemUserIdentity];
      }

      else
      {
        [(MCMUserIdentityCache *)self defaultUserIdentity];
      }
      globalBundleUserIdentity = ;
    }

    v8 = globalBundleUserIdentity;
  }

  if (v8)
  {
    defaultUserIdentity = v8;
  }

  else
  {
    defaultUserIdentity = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  v11 = defaultUserIdentity;

  return v11;
}

- (void)forEachAccessibleUserIdentitySynchronouslyExecuteBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  allAccessibleUserIdentities = [(MCMUserIdentityCache *)self allAccessibleUserIdentities];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [allAccessibleUserIdentities countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allAccessibleUserIdentities);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allAccessibleUserIdentities countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (id)allAccessibleUserIdentities
{
  v25 = *MEMORY[0x1E69E9840];
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([objc_opt_class() personasAreSupported])
  {
    os_unfair_lock_lock(&self->_lock);
    lock_personaUniqueStringToUserIdentityMap = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
    allValues = [lock_personaUniqueStringToUserIdentityMap allValues];

    os_unfair_lock_unlock(&self->_lock);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = allValues;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          if (([v11 isNoSpecificPersona] & 1) == 0)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v8);
    }

    if (![v3 count])
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v3;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Expected to find at least one persona; self = %@, personaAttributeList = %@", &v16, 0x16u);
      }

      defaultUserIdentity = [(MCMUserIdentityCache *)self defaultUserIdentity];
      [v3 addObject:defaultUserIdentity];
    }
  }

  else
  {
    defaultUserIdentity2 = [(MCMUserIdentityCache *)self defaultUserIdentity];
    [v3 addObject:defaultUserIdentity2];
  }

  return v3;
}

- (void)flush
{
  os_unfair_lock_lock(&self->_lock);
  [(MCMUserIdentityCache *)self _lock_flush];
  [(MCMUserIdentityCache *)self _lock_resync];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userIdentityWithPersonaID:(unsigned int)d
{
  v3 = *&d;
  v19 = *MEMORY[0x1E69E9840];
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  os_unfair_lock_lock(&self->_lock);
  lock_personaIDToUserIdentityMap = [(MCMUserIdentityCache *)self lock_personaIDToUserIdentityMap];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v7 = [lock_personaIDToUserIdentityMap objectForKeyedSubscript:v6];

  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    shortDescription = [v7 shortDescription];
    v15 = 138412546;
    v16 = shortDescription;
    v17 = 1024;
    v18 = v3;
    _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Found %@ for ID: %u", &v15, 0x12u);
  }

  if (!v7)
  {
    [(MCMUserIdentityCache *)self _lock_flush];
    lock_personaIDToUserIdentityMap2 = [(MCMUserIdentityCache *)self lock_personaIDToUserIdentityMap];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v7 = [lock_personaIDToUserIdentityMap2 objectForKeyedSubscript:v10];

    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      shortDescription2 = [v7 shortDescription];
      v15 = 138412546;
      v16 = shortDescription2;
      v17 = 1024;
      v18 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "After refresh, found %@ for ID: %u", &v15, 0x12u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)userIdentityForPersonalPersonaWithPOSIXUser:(id)user
{
  userCopy = user;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if ([userCopy isRoleUser])
  {
    v5 = containermanager_copy_global_configuration();
    defaultUser = [v5 defaultUser];

    userCopy = defaultUser;
  }

  os_unfair_lock_lock(&self->_lock);
  lock_userIdentityForPersonalPersona = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
  os_unfair_lock_unlock(&self->_lock);
  posixUser = [lock_userIdentityForPersonalPersona posixUser];
  v9 = [posixUser isEqual:userCopy];

  if ((v9 & 1) == 0)
  {
    v10 = [lock_userIdentityForPersonalPersona userIdentityWithPOSIXUser:userCopy];

    lock_userIdentityForPersonalPersona = v10;
  }

  return lock_userIdentityForPersonalPersona;
}

- (id)unspecificUserIdentity
{
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  os_unfair_lock_lock(&self->_lock);
  lock_userIdentityForUnspecificPersona = [(MCMUserIdentityCache *)self lock_userIdentityForUnspecificPersona];
  os_unfair_lock_unlock(&self->_lock);

  return lock_userIdentityForUnspecificPersona;
}

- (id)userIdentityForClient:(container_client *)client error:(id *)error
{
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  persona_unique_string = container_client_get_persona_unique_string();
  euid = container_client_get_euid();
  v8 = containermanager_copy_global_configuration();
  defaultUser = [v8 defaultUser];

  v10 = containermanager_copy_global_configuration();
  userContainerMode = [v10 userContainerMode];

  if (userContainerMode == 2)
  {
    v12 = [MCMPOSIXUser posixUserWithUID:euid];

    defaultUser = v12;
  }

  if (persona_unique_string)
  {
    persona_unique_string = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  v13 = [(MCMUserIdentityCache *)self userIdentityForPersonaUniqueString:persona_unique_string POSIXUser:defaultUser];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [[MCMError alloc] initWithErrorType:76 category:3];
    v14 = v15;
    if (error)
    {
      v16 = v15;
      *error = v14;
    }
  }

  return v13;
}

- (id)userIdentityForPersonaUniqueString:(id)string POSIXUser:(id)user
{
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  userCopy = user;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if ([userCopy isRoleUser])
  {
    v8 = containermanager_copy_global_configuration();
    defaultUser = [v8 defaultUser];

    userCopy = defaultUser;
  }

  if (![objc_opt_class() personasAreSupported])
  {
    unspecificUserIdentity = [(MCMUserIdentityCache *)self userIdentityForPersonalPersonaWithPOSIXUser:userCopy];
    goto LABEL_16;
  }

  if (!stringCopy)
  {
    unspecificUserIdentity = [(MCMUserIdentityCache *)self unspecificUserIdentity];
    if (!unspecificUserIdentity)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v11 = [stringCopy isEqualToString:v10];

  if (!v11)
  {
    os_unfair_lock_lock(&self->_lock);
    unspecificUserIdentity = [(MCMUserIdentityCache *)self _lock_userIdentityForCurrentUserWithPersonaUniqueString:stringCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (!unspecificUserIdentity)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  unspecificUserIdentity = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = [unspecificUserIdentity debugDescription];
    v19 = 138412290;
    v20 = v18;
    _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Sentinel persona, using: %@", &v19, 0xCu);
  }

  if (unspecificUserIdentity)
  {
LABEL_14:
    posixUser = [unspecificUserIdentity posixUser];
    v15 = [posixUser isEqual:userCopy];

    if ((v15 & 1) == 0)
    {
      v16 = [unspecificUserIdentity userIdentityWithPOSIXUser:userCopy];

      unspecificUserIdentity = v16;
    }
  }

LABEL_16:

  return unspecificUserIdentity;
}

- (id)userIdentityForCurrentUserWithPersonaUniqueString:(id)string
{
  v14 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if (![objc_opt_class() personasAreSupported])
  {
    userIdentityForPersonalPersona = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
LABEL_9:
    userIdentityForPersonalPersona2 = userIdentityForPersonalPersona;
    goto LABEL_10;
  }

  if (!stringCopy)
  {
    userIdentityForPersonalPersona = [(MCMUserIdentityCache *)self unspecificUserIdentity];
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    userIdentityForPersonalPersona2 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [userIdentityForPersonalPersona2 debugDescription];
      v12 = 138412290;
      v13 = v11;
      _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Sentinel persona, using: %@", &v12, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    userIdentityForPersonalPersona2 = [(MCMUserIdentityCache *)self _lock_userIdentityForCurrentUserWithPersonaUniqueString:stringCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_10:

  return userIdentityForPersonalPersona2;
}

- (id)userIdentitiesForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MCMUserIdentityCache *)self _lock_userIdentitiesForBundleIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = v6;

  return v7;
}

- (MCMUserIdentityCache)init
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = MCMUserIdentityCache;
  v2 = [(MCMUserIdentityCache *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    listener = v3->_listener;
    v3->_listener = 0;

    v7 = [MEMORY[0x1E695DFD8] set];
    previousUserIdentities = v3->_previousUserIdentities;
    v3->_previousUserIdentities = v7;

    v9 = dispatch_queue_create("com.apple.containermanagerd.MCMUserIdentityCache.flushQueue", 0);
    flushQueue = v3->_flushQueue;
    v3->_flushQueue = v9;

    v11 = containermanager_copy_global_configuration();
    classIterator = [v11 classIterator];
    classIterator = v3->_classIterator;
    v3->_classIterator = classIterator;

    *&v3->_fetchedFromUM = 256;
    v14 = objc_opt_new();
    defaultUserIdentity = v3->_defaultUserIdentity;
    v3->_defaultUserIdentity = v14;

    os_unfair_lock_lock(&v3->_lock);
    [(MCMUserIdentityCache *)v3 _lock_flush];
    os_unfair_lock_unlock(&v3->_lock);
  }

  return v3;
}

+ (id)userIdentityWithPersonaAttributes:(id)attributes POSIXUser:(id)user forceUnspecific:(BOOL)unspecific
{
  v20 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  userCopy = user;
  v9 = [userCopy UID];
  userPersonaUniqueString = [attributesCopy userPersonaUniqueString];
  if (attributesCopy && (v9 = [attributesCopy userPersona_id], objc_msgSend(attributesCopy, "isDataSeparatedPersona")) && (objc_msgSend(attributesCopy, "personaLayoutPathURL"), (homeDirectoryURL = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (unspecific)
    {
      goto LABEL_7;
    }
  }

  else
  {
    homeDirectoryURL = [userCopy homeDirectoryURL];
    if (unspecific)
    {
      goto LABEL_7;
    }
  }

  if ([attributesCopy isPersonalPersona])
  {
    v12 = 0;
    goto LABEL_12;
  }

  if ([attributesCopy isDataSeparatedPersona])
  {
    v12 = 1;
    goto LABEL_12;
  }

  if ([attributesCopy isSystemPersona] & 1) != 0 || (objc_msgSend(attributesCopy, "isDefaultPersona"))
  {
LABEL_7:
    v12 = 2;
    goto LABEL_12;
  }

  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218242;
    userPersonaType = [attributesCopy userPersonaType];
    v18 = 2114;
    v19 = attributesCopy;
    _os_log_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEFAULT, "Persona of unknown type %lu being treated as Unspecific: %{public}@", &v16, 0x16u);
  }

  v12 = 3;
LABEL_12:
  v13 = [[MCMUserIdentity alloc] initWithPOSIXUser:userCopy homeDirectoryURL:homeDirectoryURL personaUniqueString:userPersonaUniqueString personaType:v12 kernelPersonaID:v9];

  return v13;
}

+ (id)userIdentityWithPersonaAttributes:(id)attributes forceUnspecific:(BOOL)unspecific
{
  unspecificCopy = unspecific;
  attributesCopy = attributes;
  v7 = containermanager_copy_global_configuration();
  defaultUser = [v7 defaultUser];
  v9 = [self userIdentityWithPersonaAttributes:attributesCopy POSIXUser:defaultUser forceUnspecific:unspecificCopy];

  return v9;
}

+ (id)userIdentityWithPersonaAttributes:(id)attributes
{

  return [self userIdentityWithPersonaAttributes:attributes forceUnspecific:0];
}

void __48__MCMUserIdentityCache_globalSystemUserIdentity__block_invoke()
{
  v0 = containermanager_copy_global_configuration();
  v5 = [v0 systemContainerOwner];

  v1 = [MCMUserIdentity alloc];
  v2 = [v5 homeDirectoryURL];
  v3 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](v1, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", v5, v2, 0, 3, [v5 UID]);
  v4 = globalSystemUserIdentity_userIdentity;
  globalSystemUserIdentity_userIdentity = v3;
}

+ (id)globalBundleUserIdentity
{
  if (globalBundleUserIdentity_onceToken != -1)
  {
    dispatch_once(&globalBundleUserIdentity_onceToken, &__block_literal_global_11863);
  }

  v2 = globalBundleUserIdentity_userIdentity;

  return v2;
}

void __48__MCMUserIdentityCache_globalBundleUserIdentity__block_invoke()
{
  v0 = containermanager_copy_global_configuration();
  v5 = [v0 bundleContainerOwner];

  v1 = [MCMUserIdentity alloc];
  v2 = [v5 homeDirectoryURL];
  v3 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](v1, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", v5, v2, 0, 3, [v5 UID]);
  v4 = globalBundleUserIdentity_userIdentity;
  globalBundleUserIdentity_userIdentity = v3;
}

+ (id)defaultUserIdentity
{
  v2 = +[MCMUserIdentitySharedCache sharedInstance];
  defaultUserIdentity = [v2 defaultUserIdentity];

  return defaultUserIdentity;
}

@end