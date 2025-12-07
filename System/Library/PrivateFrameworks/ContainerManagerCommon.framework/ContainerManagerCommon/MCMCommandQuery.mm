@interface MCMCommandQuery
+ (Class)incomingMessageClass;
- (BOOL)_checkIfSecureContainer:(id)container prefixes:(id)prefixes error:(id *)error;
- (BOOL)_checkIfSecureContainers:(id)containers error:(id *)error;
- (BOOL)_checkIfSecureURL:(id)l error:(id *)error;
- (BOOL)_executeQueryPlan:(id)plan resultContainers:(id)containers error:(id *)error;
- (BOOL)isAboutSelf;
- (BOOL)preflightClientAllowed;
- (MCMCommandQuery)initWithMessage:(id)message context:(id)context reply:(id)reply;
- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)config canAccessAllContainers:(BOOL *)containers error:(id *)error;
- (id)_executeQueryForContainerIdentity:(id)identity error:(id *)error;
- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config error:(id *)error;
- (id)_queryPlanWithIdentifiers:(id)identifiers containerConfig:(id)config clientIdentity:(id)identity error:(id *)error;
- (id)_setOfAvailableUserIdentitiesWithError:(id *)error;
- (id)_setOfUserIdentities;
- (void)_finalizeWithContainers:(id)containers error:(id)error;
- (void)execute;
@end

@implementation MCMCommandQuery

+ (Class)incomingMessageClass
{

  return objc_opt_class();
}

- (BOOL)preflightClientAllowed
{
  if (![(MCMCommandQuery *)self includeUserManagedAssetsRelPath])
  {
    return 1;
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  isAllowedToAccessUserAssets = [clientIdentity isAllowedToAccessUserAssets];

  return isAllowedToAccessUserAssets;
}

- (void)execute
{
  v91 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  containerConfig = [(MCMCommandQuery *)self containerConfig];
  containerClass = [containerConfig containerClass];

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  if (containerClass == 7 || containerClass == 13)
  {
    groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];
  }

  else
  {
    groupIdentifiers = [(MCMCommandQuery *)self identifiers];
  }

  v7 = groupIdentifiers;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__10026;
  v77 = __Block_byref_object_dispose__10027;
  v78 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v72 = 0;
  codeSignInfo = [clientIdentity codeSignInfo];
  if (([codeSignInfo isSigned] & 1) == 0)
  {
    v13 = [[MCMError alloc] initWithErrorType:98 category:3];
LABEL_12:
    identifier = v74[5];
    v74[5] = v13;
LABEL_13:

LABEL_14:
    [(MCMCommandQuery *)self _finalizeWithContainers:array error:v74[5]];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  if (containerClass != 13 && containerClass != 7 || (-[MCMCommandQuery identifiers](self, "identifiers"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count] == 0, v15, v16))
  {
    if ([(MCMCommandQuery *)self includeUnowned])
    {
      containerConfig2 = [(MCMCommandQuery *)self containerConfig];
      v31 = (v74 + 5);
      v70 = v74[5];
      v7 = [(MCMCommandQuery *)self _containerIdentifiersIncludingUnownedForContainerConfig:containerConfig2 canAccessAllContainers:&v72 error:&v70];
      objc_storeStrong(v31, v70);

      if (!v7)
      {
        goto LABEL_14;
      }

      if (![v7 count])
      {

        goto LABEL_41;
      }
    }

    else
    {
      if (containerClass != 13 && containerClass != 7)
      {
        v35 = MEMORY[0x1E695DFD8];
        identifier = [codeSignInfo identifier];
        v29 = [v35 setWithObject:identifier];
        goto LABEL_40;
      }

      v32 = +[MCMGroupManager defaultManager];
      identifier2 = [codeSignInfo identifier];
      v34 = (v74 + 5);
      v69 = v74[5];
      v7 = [v32 groupContainerIdentifiersForOwnerIdentifier:identifier2 groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v69];
      objc_storeStrong(v34, v69);

      if (!v7)
      {
        goto LABEL_14;
      }
    }

LABEL_7:
    if ([v7 count])
    {
      v8 = objc_autoreleasePoolPush();
      containerConfig3 = [(MCMCommandQuery *)self containerConfig];
      v10 = (v74 + 5);
      obj = v74[5];
      v11 = [(MCMCommandQuery *)self _queryPlanWithIdentifiers:v7 containerConfig:containerConfig3 clientIdentity:clientIdentity error:&obj];
      objc_storeStrong(v10, obj);

      if (v11)
      {
        v12 = (v74 + 5);
        v67 = v74[5];
        [(MCMCommandQuery *)self _executeQueryPlan:v11 resultContainers:array error:&v67];
        objc_storeStrong(v12, v67);
      }

      objc_autoreleasePoolPop(v8);
    }

    goto LABEL_14;
  }

  containerConfig4 = [(MCMCommandQuery *)self containerConfig];
  part = [(MCMCommandQuery *)self part];
  partDomain = [(MCMCommandQuery *)self partDomain];
  v20 = [clientIdentity isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:containerConfig4 part:part partDomain:partDomain access:0];

  if (!v20 && ![(MCMCommandQuery *)self isAboutSelf])
  {
    v37 = container_log_handle_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      context2 = [(MCMCommand *)self context];
      clientIdentity2 = [context2 clientIdentity];
      codeSignInfo2 = [clientIdentity2 codeSignInfo];
      identifier3 = [codeSignInfo2 identifier];
      *buf = 138412290;
      v90 = identifier3;
      _os_log_error_impl(&dword_1DF2C3000, v37, OS_LOG_TYPE_ERROR, "Client [%@] doesn't have permission to look up containers for at least one identifier in the query set.", buf, 0xCu);
    }

    v13 = +[MCMError notEntitled];
    v7 = 0;
    goto LABEL_12;
  }

  identifier = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  identifiers = [(MCMCommandQuery *)self identifiers];
  v22 = [identifiers countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (v22)
  {
    v23 = *v86;
    while (2)
    {
      v24 = 0;
      do
      {
        if (*v86 != v23)
        {
          objc_enumerationMutation(identifiers);
        }

        v25 = *(*(&v85 + 1) + 8 * v24);
        v26 = +[MCMGroupManager defaultManager];
        v27 = (v74 + 5);
        v71 = v74[5];
        v28 = [v26 groupContainerIdentifiersForOwnerIdentifier:v25 groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v71];
        objc_storeStrong(v27, v71);

        if (!v28)
        {

          goto LABEL_43;
        }

        [identifier unionSet:v28];

        ++v24;
      }

      while (v22 != v24);
      v22 = [identifiers countByEnumeratingWithState:&v85 objects:v84 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  v29 = [identifier copy];
LABEL_40:
  v7 = v29;

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_41:
  groupIdentifiers2 = [(MCMCommandQuery *)self groupIdentifiers];
  if (groupIdentifiers2)
  {
    identifier = groupIdentifiers2;
LABEL_43:
    v7 = 0;
    goto LABEL_13;
  }

  if (v72 != 1 || (v38 = (v74 + 5), v66 = v74[5], [(MCMCommandQuery *)self _setOfAvailableUserIdentitiesWithError:&v66], identifier = objc_claimAutoreleasedReturnValue(), objc_storeStrong(v38, v66), !identifier))
  {
    v7 = 0;
    goto LABEL_14;
  }

  context3 = [(MCMCommand *)self context];
  containerCache = [context3 containerCache];
  transient = [(MCMCommandQuery *)self transient];
  v42 = (v74 + 5);
  v65 = v74[5];
  v43 = [containerCache entriesForUserIdentities:identifier contentClass:containerClass transient:transient error:&v65];
  objc_storeStrong(v42, v65);

  -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v43 generation]);
  if (![(MCMCommandQuery *)self includeInfoInResult]&& ![(MCMCommandQuery *)self includeUserManagedAssetsRelPath]&& ![(MCMCommandQuery *)self includeCreator])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v51 = v43;
    v52 = [v51 countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (v52)
    {
      v53 = *v81;
      do
      {
        v54 = 0;
        do
        {
          if (*v81 != v53)
          {
            objc_enumerationMutation(v51);
          }

          metadataMinimal = [*(*(&v80 + 1) + 8 * v54) metadataMinimal];
          [array addObject:metadataMinimal];

          ++v54;
        }

        while (v52 != v54);
        v52 = [v51 countByEnumeratingWithState:&v80 objects:v79 count:16];
      }

      while (v52);
    }

    goto LABEL_43;
  }

  v44 = container_log_handle_for_category();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v90 = clientIdentity;
    _os_log_debug_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_DEBUG, "Query split into per-container ops since info or user managed assets path requested for all containers by client [%@]", buf, 0xCu);
  }

  reply = [(MCMCommand *)self reply];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __26__MCMCommandQuery_execute__block_invoke;
  v60[3] = &unk_1E86B0870;
  v46 = v43;
  v61 = v46;
  selfCopy = self;
  v63 = array;
  v64 = &v73;
  [reply handoffToSlowWorkloopforClientIdentity:clientIdentity withBlock:v60];

  v7 = 0;
LABEL_15:

  _Block_object_dispose(&v73, 8);
  objc_autoreleasePoolPop(context);
}

- (id)_containerIdentifiersIncludingUnownedForContainerConfig:(id)config canAccessAllContainers:(BOOL *)containers error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  configCopy = config;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  containerClass = [configCopy containerClass];
  if (([entitlements allowed] & 1) == 0 && !objc_msgSend(entitlements, "otherIDLookup"))
  {
    part = [(MCMCommandQuery *)self part];
    partDomain = [(MCMCommandQuery *)self partDomain];
    v16 = [entitlements isAllowedToPerformOperationType:0 forAllContainersOfContainerConfig:configCopy part:part partDomain:partDomain access:0];

    if (!v16)
    {
      v34 = [entitlements contributingIdentifiersForContainerConfig:configCopy];
      switch(containerClass)
      {
        case 13:
          goto LABEL_14;
        case 12:
          if (([entitlements hasSystemContainer] & 1) == 0)
          {
            v17 = 0;
            goto LABEL_21;
          }

          break;
        case 7:
LABEL_14:
          v31 = +[MCMGroupManager defaultManager];
          identifier = [codeSignInfo identifier];
          v35 = 0;
          v17 = [v31 groupContainerIdentifiersForOwnerIdentifier:identifier groupContainerClass:containerClass codeSignInfo:codeSignInfo withError:&v35];
          v18 = v35;

          if (![v17 count])
          {

            v17 = 0;
          }

          v22 = v34;
          if (v18)
          {
            goto LABEL_33;
          }

LABEL_22:
          if (v22)
          {
            if (![v22 count])
            {
              v22 = v34;
              if (v17)
              {
                goto LABEL_28;
              }

              goto LABEL_30;
            }

            if (!v17)
            {
              v17 = [MEMORY[0x1E695DFD8] set];
            }

            v25 = [v34 mutableCopy];
            [v25 unionSet:v17];
            v32 = [v25 copy];

            v17 = v32;
            v22 = v34;
          }

          if (v17)
          {
LABEL_28:
            v18 = 0;
LABEL_33:

            v19 = 0;
            goto LABEL_5;
          }

LABEL_30:
          v26 = container_log_handle_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            context2 = [(MCMCommand *)self context];
            clientIdentity2 = [context2 clientIdentity];
            codeSignInfo2 = [clientIdentity2 codeSignInfo];
            identifier2 = [codeSignInfo2 identifier];
            *buf = 138412546;
            v37 = identifier2;
            v38 = 2048;
            v39 = containerClass;
            _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up unowned containers; containerClass = %llu", buf, 0x16u);
          }

          v18 = +[MCMError notEntitled];
          v17 = 0;
          v22 = v34;
          goto LABEL_33;
      }

      v23 = MEMORY[0x1E695DFD8];
      identifier3 = [codeSignInfo identifier];
      v17 = [v23 setWithObject:identifier3];

LABEL_21:
      v22 = v34;
      goto LABEL_22;
    }
  }

  v17 = [MEMORY[0x1E695DFD8] set];
  v18 = 0;
  v19 = 1;
LABEL_5:
  *containers = v19;
  if (error && !v17)
  {
    v20 = v18;
    *error = v18;
  }

  return v17;
}

- (id)_setOfAvailableUserIdentitiesWithError:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  userIdentity = [clientIdentity userIdentity];
  v8 = container_log_handle_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    userIdentity2 = [(MCMCommandQuery *)self userIdentity];
    v37 = [userIdentity2 debugDescription];
    v46 = 138412290;
    v47 = v37;
    _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v46, 0xCu);
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  usesGlobalBundleUserIdentity = [containerConfig usesGlobalBundleUserIdentity];

  if (usesGlobalBundleUserIdentity)
  {
    v11 = MEMORY[0x1E695DFD8];
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    globalBundleUserIdentity = [userIdentityCache globalBundleUserIdentity];
LABEL_7:
    shortDescription3 = globalBundleUserIdentity;
    allAccessibleUserIdentities = [v11 setWithObject:globalBundleUserIdentity];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  usesGlobalSystemUserIdentity = [containerConfig2 usesGlobalSystemUserIdentity];

  if (usesGlobalSystemUserIdentity)
  {
    v11 = MEMORY[0x1E695DFD8];
    context2 = [(MCMCommand *)self context];
    userIdentityCache = [context2 userIdentityCache];
    globalBundleUserIdentity = [userIdentityCache globalSystemUserIdentity];
    goto LABEL_7;
  }

  v46 = 0;
  v22 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v22, &v46) && (v46 & 0x80000000) != 0)
  {
    context3 = [(MCMCommand *)self context];
    clientIdentity2 = [context3 clientIdentity];
    userIdentity3 = [clientIdentity2 userIdentity];
    context2 = [userIdentity3 posixUser];

    context4 = [(MCMCommand *)self context];
    userIdentityCache2 = [context4 userIdentityCache];
    userIdentityCache = [userIdentityCache2 userIdentityForPersonalPersonaWithPOSIXUser:context2];

    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentityCache];
    shortDescription3 = container_log_handle_for_category();
    if (!os_log_type_enabled(shortDescription3, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v46 = 138412290;
    v47 = userIdentityCache;
    v28 = "Using client persona: %@";
    v29 = shortDescription3;
LABEL_20:
    _os_log_debug_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_DEBUG, v28, &v46, 0xCu);
    goto LABEL_8;
  }

  userIdentity4 = [(MCMCommandQuery *)self userIdentity];
  if (userIdentity4 && (v31 = userIdentity4, -[MCMCommandQuery userIdentity](self, "userIdentity"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 isNoSpecificPersona], v32, v31, !v33))
  {
    if (([userIdentity isNoSpecificPersona] & 1) == 0)
    {
      userIdentity5 = [(MCMCommandQuery *)self userIdentity];
      v39 = [userIdentity isEqual:userIdentity5];

      if (!v39)
      {
        v42 = container_log_handle_for_category();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          shortDescription = [userIdentity shortDescription];
          userIdentity6 = [(MCMCommandQuery *)self userIdentity];
          shortDescription2 = [userIdentity6 shortDescription];
          v46 = 138412546;
          v47 = shortDescription;
          v48 = 2112;
          v49 = shortDescription2;
          _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &v46, 0x16u);
        }

        v19 = [[MCMError alloc] initWithErrorType:76 category:3];
        goto LABEL_12;
      }
    }

    v40 = MEMORY[0x1E695DFD8];
    userIdentity7 = [(MCMCommandQuery *)self userIdentity];
    allAccessibleUserIdentities = [v40 setWithObject:userIdentity7];

    context2 = container_log_handle_for_category();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
    {
      userIdentityCache = [(MCMCommandQuery *)self userIdentity];
      shortDescription3 = [userIdentityCache shortDescription];
      v46 = 138412290;
      v47 = shortDescription3;
      v28 = "Using explicit persona: %@";
      v29 = context2;
      goto LABEL_20;
    }
  }

  else
  {
    if ([userIdentity isNoSpecificPersona])
    {
      context5 = [(MCMCommand *)self context];
      userIdentityCache3 = [context5 userIdentityCache];
      allAccessibleUserIdentities = [userIdentityCache3 allAccessibleUserIdentities];

      context2 = container_log_handle_for_category();
      if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
      {
        v46 = 138412290;
        v47 = allAccessibleUserIdentities;
        _os_log_debug_impl(&dword_1DF2C3000, context2, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v46, 0xCu);
      }

      goto LABEL_10;
    }

    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    context2 = container_log_handle_for_category();
    if (os_log_type_enabled(context2, OS_LOG_TYPE_DEBUG))
    {
      userIdentityCache = [userIdentity shortDescription];
      v46 = 138412290;
      v47 = userIdentityCache;
      _os_log_debug_impl(&dword_1DF2C3000, context2, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &v46, 0xCu);
      goto LABEL_9;
    }
  }

LABEL_10:

  if (allAccessibleUserIdentities)
  {
    goto LABEL_13;
  }

  v19 = 0;
LABEL_12:
  v20 = v19;
  *error = v20;

  allAccessibleUserIdentities = 0;
LABEL_13:

  return allAccessibleUserIdentities;
}

- (id)_legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config error:(id *)error
{
  identifiersCopy = identifiers;
  identityCopy = identity;
  configCopy = config;
  if (![(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  context2 = [(MCMCommand *)self context];
  userIdentityCache = [context2 userIdentityCache];
  warnings = [(MCMCommand *)self warnings];
  v18 = [MCMXPCMessageBase legacySetOfUserIdentitiesForIdentifiers:identifiersCopy targetUserIdentity:identityCopy containerConfig:configCopy clientIdentity:clientIdentity userIdentityCache:userIdentityCache warnings:warnings error:error];

  return v18;
}

- (id)_setOfUserIdentities
{
  v31 = *MEMORY[0x1E69E9840];
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  userIdentity = [clientIdentity userIdentity];
  userIdentity2 = [(MCMCommandQuery *)self userIdentity];
  context2 = [(MCMCommand *)self context];
  userIdentityCache = [context2 userIdentityCache];

  v9 = container_log_handle_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = [userIdentity2 debugDescription];
    v27 = 138412290;
    v28 = v22;
    _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &v27, 0xCu);
  }

  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    _os_crash();
    __break(1u);
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  usesGlobalBundleUserIdentity = [containerConfig usesGlobalBundleUserIdentity];

  if (usesGlobalBundleUserIdentity)
  {
    v12 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [userIdentityCache globalBundleUserIdentity];
LABEL_8:
    posixUser = globalBundleUserIdentity;
    allAccessibleUserIdentities = [v12 setWithObject:globalBundleUserIdentity];
    goto LABEL_9;
  }

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  usesGlobalSystemUserIdentity = [containerConfig2 usesGlobalSystemUserIdentity];

  if (usesGlobalSystemUserIdentity)
  {
    v12 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [userIdentityCache globalSystemUserIdentity];
    goto LABEL_8;
  }

  v27 = 0;
  v19 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v19, &v27) && (v27 & 0x80000000) != 0)
  {
    posixUser = [userIdentity posixUser];
    shortDescription = [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:shortDescription];
    v20ShortDescription = container_log_handle_for_category();
    if (!os_log_type_enabled(v20ShortDescription, OS_LOG_TYPE_DEBUG))
    {
LABEL_15:

LABEL_16:
      goto LABEL_9;
    }

    v27 = 138412290;
    v28 = shortDescription;
    v23 = "Using client-based userIdentity: %@";
    v24 = v20ShortDescription;
LABEL_32:
    _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, v23, &v27, 0xCu);
    goto LABEL_15;
  }

  if (userIdentity2 && ![userIdentity2 isNoSpecificPersona])
  {
    if (([userIdentity isNoSpecificPersona] & 1) != 0 || objc_msgSend(userIdentity, "isEqual:", userIdentity2))
    {
      allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity2];
      posixUser = container_log_handle_for_category();
      if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
      {
        shortDescription = [userIdentity2 shortDescription];
        v27 = 138412290;
        v28 = shortDescription;
        _os_log_debug_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &v27, 0xCu);
        goto LABEL_16;
      }
    }

    else
    {
      posixUser = container_log_handle_for_category();
      if (os_log_type_enabled(posixUser, OS_LOG_TYPE_ERROR))
      {
        shortDescription2 = [userIdentity shortDescription];
        shortDescription3 = [userIdentity2 shortDescription];
        v27 = 138412546;
        v28 = shortDescription2;
        v29 = 2112;
        v30 = shortDescription3;
        _os_log_error_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_ERROR, "Ambiguous persona, client has adopted %@ but asks for %@", &v27, 0x16u);
      }

      allAccessibleUserIdentities = 0;
    }
  }

  else if ([userIdentity isNoSpecificPersona])
  {
    allAccessibleUserIdentities = [userIdentityCache allAccessibleUserIdentities];
    posixUser = container_log_handle_for_category();
    if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = allAccessibleUserIdentities;
      _os_log_debug_impl(&dword_1DF2C3000, posixUser, OS_LOG_TYPE_DEBUG, "Using all personas: %@", &v27, 0xCu);
    }
  }

  else
  {
    allAccessibleUserIdentities = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    posixUser = container_log_handle_for_category();
    if (os_log_type_enabled(posixUser, OS_LOG_TYPE_DEBUG))
    {
      shortDescription = [clientIdentity userIdentity];
      v20ShortDescription = [shortDescription shortDescription];
      v27 = 138412290;
      v28 = v20ShortDescription;
      v23 = "Using client implicit persona: %@";
      v24 = posixUser;
      goto LABEL_32;
    }
  }

LABEL_9:

  return allAccessibleUserIdentities;
}

- (id)_queryPlanWithIdentifiers:(id)identifiers containerConfig:(id)config clientIdentity:(id)identity error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  configCopy = config;
  identityCopy = identity;
  v72 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  if ([(MCMCommandQuery *)self legacyPersonaPolicy])
  {
    userIdentity = [(MCMCommandQuery *)self userIdentity];
    v78 = 0;
    v13 = [(MCMCommandQuery *)self _legacySetOfUserIdentitiesForIdentifiers:identifiersCopy targetUserIdentity:userIdentity containerConfig:configCopy error:&v78];
    v73 = v78;

    if (!v13)
    {
      v69 = 0;
      errorCopy2 = error;
      v15 = v72;
      v16 = v73;
      if (!v73)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v17 = objc_opt_new();
    _setOfUserIdentities = [(MCMCommandQuery *)self _setOfUserIdentities];
    if (_setOfUserIdentities)
    {
      v19 = configCopy;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v20 = identifiersCopy;
      v21 = identifiersCopy;
      v22 = [v21 countByEnumeratingWithState:&v94 objects:v93 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v95;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v95 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [v17 setObject:_setOfUserIdentities forKeyedSubscript:*(*(&v94 + 1) + 8 * i)];
          }

          v23 = [v21 countByEnumeratingWithState:&v94 objects:v93 count:16];
        }

        while (v23);
      }

      identifiersCopy = v20;
      configCopy = v19;
    }

    v13 = [v17 copy];

    v73 = 0;
  }

  v69 = v13;
  if ([v13 count])
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v13;
    v64 = [(MCMError *)obj countByEnumeratingWithState:&v89 objects:v88 count:16];
    if (v64)
    {
      v26 = *v90;
      v66 = configCopy;
      v67 = identifiersCopy;
      v63 = *v90;
      do
      {
        v27 = 0;
        do
        {
          if (*v90 != v26)
          {
            v28 = v27;
            objc_enumerationMutation(obj);
            v27 = v28;
          }

          v65 = v27;
          v75 = *(*(&v89 + 1) + 8 * v27);
          v29 = [(MCMError *)obj objectForKeyedSubscript:?];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v71 = v29;
          v76 = [v71 countByEnumeratingWithState:&v84 objects:v83 count:16];
          if (v76)
          {
            v74 = *v85;
            while (2)
            {
              for (j = 0; j != v76; ++j)
              {
                if (*v85 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v31 = *(*(&v84 + 1) + 8 * j);
                v77 = 1;
                internalUUID = [(MCMCommandQuery *)self internalUUID];
                if (internalUUID && (v33 = internalUUID, v34 = [(MCMCommandQuery *)self fuzzyMatchInternalUUID], v33, !v34))
                {
                  internalUUID2 = [(MCMCommandQuery *)self internalUUID];
                  containerConfig = [(MCMCommandQuery *)self containerConfig];
                  v41 = identityCopy;
                  platform = [(MCMCommandQuery *)self platform];
                  transient = [(MCMCommandQuery *)self transient];
                  context = [(MCMCommand *)self context];
                  userIdentityCache = [context userIdentityCache];
                  v45 = platform;
                  identityCopy = v41;
                  v40 = [MCMConcreteContainerIdentity containerIdentityWithUUID:internalUUID2 userIdentity:v31 identifier:v75 containerConfig:containerConfig platform:v45 transient:transient userIdentityCache:userIdentityCache error:&v77];
                }

                else
                {
                  internalUUID2 = [(MCMCommandQuery *)self containerConfig];
                  platform2 = [(MCMCommandQuery *)self platform];
                  transient2 = [(MCMCommandQuery *)self transient];
                  containerConfig = [(MCMCommand *)self context];
                  context = [containerConfig userIdentityCache];
                  v40 = [MCMContainerIdentity containerIdentityWithUserIdentity:v31 identifier:v75 containerConfig:internalUUID2 platform:platform2 transient:transient2 userIdentityCache:context error:&v77];
                }

                if (v40)
                {
                  createIfNecessary = [(MCMCommandQuery *)self createIfNecessary];
                  part = [(MCMCommandQuery *)self part];
                  partDomain = [(MCMCommandQuery *)self partDomain];
                  v49 = [identityCopy isAllowedToPerformOperationType:createIfNecessary containerIdentity:v40 part:part partDomain:partDomain access:0];

                  if (!v49)
                  {
                    v54 = container_log_handle_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      context2 = [(MCMCommand *)self context];
                      clientIdentity = [context2 clientIdentity];
                      codeSignInfo = [clientIdentity codeSignInfo];
                      identifier = [codeSignInfo identifier];
                      *buf = 138412546;
                      selfCopy = identifier;
                      v81 = 2112;
                      v82 = v40;
                      _os_log_error_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_ERROR, "Client [%@] is not entitled to look up container; identity = %@", buf, 0x16u);
                    }

                    v16 = +[MCMError notEntitled];

                    configCopy = v66;
                    identifiersCopy = v67;
                    goto LABEL_44;
                  }

                  [v72 addObject:v40];
                }

                else
                {
                  v50 = [MCMError alloc];
                  v51 = [(MCMError *)v50 initWithErrorType:v77];

                  v52 = container_log_handle_for_category();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    selfCopy = self;
                    v81 = 2048;
                    v82 = v77;
                    _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Could not construct container identity from query; query = %@, error = %llu", buf, 0x16u);
                  }

                  v73 = v51;
                }
              }

              v76 = [v71 countByEnumeratingWithState:&v84 objects:v83 count:16];
              if (v76)
              {
                continue;
              }

              break;
            }
          }

          v27 = v65 + 1;
          configCopy = v66;
          identifiersCopy = v67;
          v26 = v63;
        }

        while (v65 + 1 != v64);
        v53 = [(MCMError *)obj countByEnumeratingWithState:&v89 objects:v88 count:16];
        v26 = v63;
        v64 = v53;
      }

      while (v53);
    }

    v16 = v73;
LABEL_44:
    v55 = obj;
  }

  else
  {
    v16 = [[MCMError alloc] initWithErrorType:115 category:3];
    v55 = v73;
  }

  errorCopy2 = error;
  v15 = v72;
  if (v16)
  {
LABEL_47:

    if (errorCopy2)
    {
      v56 = v16;
      v15 = 0;
      *errorCopy2 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_50:
  v57 = v15;

  return v15;
}

- (BOOL)_executeQueryPlan:(id)plan resultContainers:(id)containers error:(id *)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  planCopy = plan;
  containersCopy = containers;
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  entitlements = [codeSignInfo entitlements];

  if (![planCopy count])
  {
    v14 = 0;
    v24 = 1;
    goto LABEL_21;
  }

  errorCopy = error;
  v14 = 0;
  while (1)
  {
    firstObject = [planCopy firstObject];
    [planCopy removeObjectAtIndex:0];
    v29[0] = v14;
    v16 = [(MCMCommandQuery *)self _executeQueryForContainerIdentity:firstObject error:v29];
    v17 = v29[0];

    if (v16)
    {
      break;
    }

    if (v17)
    {
      goto LABEL_17;
    }

    if ([(MCMCommandQuery *)self fuzzyMatchTransient])
    {
      transient = [firstObject transient];
      if (transient == [(MCMCommandQuery *)self transient])
      {
        v23 = [firstObject identityByChangingTransient:{objc_msgSend(firstObject, "transient") ^ 1}];
        [planCopy addObject:v23];
      }
    }

    v14 = 0;
LABEL_13:

    if (![planCopy count])
    {
      v24 = 1;
      goto LABEL_18;
    }
  }

  containerConfig = [(MCMCommandQuery *)self containerConfig];
  registerDynamicProtectionWithRestrictedEntitlement = [containerConfig registerDynamicProtectionWithRestrictedEntitlement];

  if (!registerDynamicProtectionWithRestrictedEntitlement)
  {
LABEL_7:
    [containersCopy addObject:v16];
    v14 = v17;
    goto LABEL_13;
  }

  v28 = v17;
  v20 = [MCMCommandCreateOrLookupAppGroupByAppGroupIdentifier secureRestrictedContainerIfNeededWithMetadata:v16 entitlements:entitlements error:&v28];
  v21 = v28;

  if (v20)
  {
    v17 = v21;
    goto LABEL_7;
  }

  v17 = v21;
LABEL_17:

  v24 = 0;
  v14 = v17;
LABEL_18:
  if (errorCopy && v14)
  {
    v25 = v14;
    *errorCopy = v14;
  }

LABEL_21:

  return v24;
}

- (id)_executeQueryForContainerIdentity:(id)identity error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  context = [(MCMCommand *)self context];
  containerFactory = [context containerFactory];
  v21 = 0;
  v9 = [containerFactory containerForContainerIdentity:identityCopy createIfNecessary:-[MCMCommandQuery createIfNecessary](self error:{"createIfNecessary"), &v21}];
  v10 = v21;

  if (!v9)
  {
    if (!v10 || [v10 type] == 21)
    {
      context2 = [(MCMCommand *)self context];
      containerCache = [context2 containerCache];
      v17 = [containerCache classCacheForContainerIdentity:identityCopy];
      -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v17 generation]);

      v13 = 0;
      metadataMinimal = 0;
      goto LABEL_21;
    }

    metadataMinimal = 0;
LABEL_18:
    v13 = v10;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  -[MCMCommandQuery setGeneration:](self, "setGeneration:", [v9 generation]);
  v11 = container_log_handle_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v9;
    _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Found %@", buf, 0xCu);
  }

  if (![(MCMCommandQuery *)self includeInfoInResult]&& ![(MCMCommandQuery *)self includeUserManagedAssetsRelPath]&& ![(MCMCommandQuery *)self includeCreator])
  {
    metadataMinimal = [v9 metadataMinimal];
    goto LABEL_18;
  }

  v20 = v10;
  metadataMinimal = [v9 metadataWithError:&v20];
  v13 = v20;

  if (!metadataMinimal)
  {
    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch metadata; container = %@, error = %@", buf, 0x16u);
    }

    metadataMinimal = 0;
  }

  if (error)
  {
LABEL_19:
    if (v13)
    {
      v18 = v13;
      *error = v13;
    }
  }

LABEL_21:

  return metadataMinimal;
}

- (BOOL)_checkIfSecureURL:(id)l error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = [MCMFileHandle alloc];
  path = [lCopy path];
  LOBYTE(v16) = 1;
  v8 = [(MCMFileHandle *)v6 initWithPath:path relativeToFileHandle:0 direction:0 symlinks:0 createMode:0 createDPClass:0 openLazily:v16];

  v18 = 0;
  v17 = 0;
  v9 = [(MCMFileHandle *)v8 checkAppContainerProtection:&v18 error:&v17];
  v10 = v17;
  if (v9)
  {
    if (v18)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_9;
    }

    v13 = [[MCMError alloc] initWithErrorType:161 category:6];
  }

  else
  {
    v13 = [[MCMError alloc] initWithNSError:v10 url:lCopy defaultErrorType:144];
  }

  v11 = v13;
  if (error)
  {
    v14 = v13;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (BOOL)_checkIfSecureContainer:(id)container prefixes:(id)prefixes error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  prefixesCopy = prefixes;
  v10 = prefixesCopy;
  if (prefixesCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = prefixesCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          identifier = [containerCopy identifier];
          LOBYTE(v16) = [identifier hasPrefix:v16];

          if (v16)
          {

            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
    goto LABEL_13;
  }

LABEL_12:
  containerPath = [containerCopy containerPath];
  containerDataURL = [containerPath containerDataURL];

  v24 = 0;
  LOBYTE(containerPath) = [(MCMCommandQuery *)self _checkIfSecureURL:containerDataURL error:&v24];
  v18 = v24;

  if (containerPath)
  {
LABEL_13:
    v21 = 1;
    goto LABEL_17;
  }

  if (error)
  {
    v22 = v18;
    v21 = 0;
    *error = v18;
  }

  else
  {
    v21 = 0;
  }

LABEL_17:

  return v21;
}

- (BOOL)_checkIfSecureContainers:(id)containers error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  containerConfig = [(MCMCommandQuery *)self containerConfig];
  hasDynamicProtection = [containerConfig hasDynamicProtection];

  containerConfig2 = [(MCMCommandQuery *)self containerConfig];
  v10 = containerConfig2;
  if (hasDynamicProtection)
  {
    identifierPrefixesExemptFromAutomaticProtection = [containerConfig2 identifierPrefixesExemptFromAutomaticProtection];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = containersCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      errorCopy = error;
      v15 = 0;
      v16 = *v29;
LABEL_4:
      v17 = 0;
      v18 = v15;
      while (1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v28 + 1) + 8 * v17);
        v26 = v18;
        errorCopy = [(MCMCommandQuery *)self _checkIfSecureContainer:v19 prefixes:identifierPrefixesExemptFromAutomaticProtection error:&v26, errorCopy];
        v15 = v26;

        if (!errorCopy)
        {
          break;
        }

        ++v17;
        v18 = v15;
        if (v14 == v17)
        {
          v14 = [v12 countByEnumeratingWithState:&v28 objects:v27 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      error = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v15 = 0;
LABEL_18:

LABEL_19:
    v23 = 1;
    goto LABEL_20;
  }

  securedByPlatformPolicy = [containerConfig2 securedByPlatformPolicy];

  if (securedByPlatformPolicy)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = [[MCMError alloc] initWithErrorType:161 category:6];
  if (!error)
  {
LABEL_16:
    v23 = 0;
    goto LABEL_20;
  }

LABEL_14:
  v22 = v15;
  v23 = 0;
  *error = v15;
LABEL_20:

  return v23;
}

- (void)_finalizeWithContainers:(id)containers error:(id)error
{
  v94 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  errorCopy = error;
  v8 = errorCopy;
  if ([(MCMCommandQuery *)self expectSingleResult])
  {
    v8 = errorCopy;
    if ([containersCopy count] >= 2)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v85 = [containersCopy count];
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Query expects single result but found %lu; returning CONTAINER_ERROR_AMBIGUOUS_RESULT", buf, 0xCu);
      }

      [containersCopy removeAllObjects];
      v8 = [[MCMError alloc] initWithErrorType:114 category:3];
    }
  }

  v10 = [containersCopy count];
  v11 = container_log_handle_for_category();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = [containersCopy count];
      *buf = 134218242;
      v85 = v13;
      v86 = 2112;
      v87 = v8;
      _os_log_debug_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_DEBUG, "Query result: count = %lu, error = %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v85 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Query result: count = 0, error = %@", buf, 0xCu);
  }

  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];
  codeSignInfo = [clientIdentity codeSignInfo];
  identifier = [codeSignInfo identifier];
  if (([identifier isEqual:@"com.apple.ContainerManagerTest"] & 1) == 0)
  {
    v18 = errorCopy;
    containerConfig = [(MCMCommandQuery *)self containerConfig];
    if (([containerConfig containerClass] & 0xFFFFFFFFFFFFFFFELL) == 0xC)
    {
      createIfNecessary = [(MCMCommandQuery *)self createIfNecessary];

      errorCopy = v18;
      if (createIfNecessary && v8)
      {
        if ([(MCMError *)v8 type]!= 55)
        {
          log = container_log_handle_for_category();
          if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
          {
            containerConfig2 = [(MCMCommandQuery *)self containerConfig];
            name = [containerConfig2 name];
            groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];
            type = [(MCMError *)v8 type];
            context2 = [(MCMCommand *)self context];
            [context2 clientIdentity];
            v27 = v26 = containersCopy;
            *buf = 138413314;
            v85 = name;
            v86 = 2114;
            v87 = groupIdentifiers;
            v88 = 2048;
            v89 = type;
            errorCopy = v18;
            v90 = 2114;
            v91 = v8;
            v92 = 2114;
            v93 = v27;
            _os_log_fault_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_FAULT, "System container lookup failed, class = %@, identifier = %{public}@, error = (%llu)%{public}@, client = %{public}@", buf, 0x34u);

            containersCopy = v26;
          }

LABEL_48:
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    errorCopy = v18;
  }

LABEL_20:
  if (v8)
  {
    goto LABEL_21;
  }

  if (![(MCMCommandQuery *)self part]|| [(MCMCommandQuery *)self part]== 1 || [(MCMCommandQuery *)self part]== 2 || ([(MCMCommandQuery *)self partDomain], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
  {
    v8 = 0;
    goto LABEL_37;
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  log = containersCopy;
  v72 = [log countByEnumeratingWithState:&v80 objects:v79 count:16];
  v8 = 0;
  if (!v72)
  {
    goto LABEL_35;
  }

  v70 = *v81;
  v62 = errorCopy;
  while (2)
  {
    v30 = 0;
    v31 = v8;
    do
    {
      if (*v81 != v70)
      {
        objc_enumerationMutation(log);
      }

      v32 = *(*(&v80 + 1) + 8 * v30);
      containerPath = [v32 containerPath];
      part = [(MCMCommandQuery *)self part];
      partDomain = [(MCMCommandQuery *)self partDomain];
      v78 = v31;
      v36 = [containerPath urlForPart:part partDomain:partDomain error:&v78];
      v8 = v78;

      if (!v36)
      {
        v55 = container_log_handle_for_category();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          containerPath2 = [v32 containerPath];
          v59 = gContainerPartNames[[(MCMCommandQuery *)self part]];
          partDomain2 = [(MCMCommandQuery *)self partDomain];
          *buf = 138413058;
          v85 = containerPath2;
          v86 = 2112;
          v87 = v59;
          v88 = 2112;
          v89 = partDomain2;
          v90 = 2112;
          v91 = v8;
          _os_log_error_impl(&dword_1DF2C3000, v55, OS_LOG_TYPE_ERROR, "Couldn't get part path; containerPath = %@, part = %@, partDomain = %@, error = %@", buf, 0x2Au);
        }

        goto LABEL_47;
      }

      v37 = containersCopy;
      v38 = +[MCMFileManager defaultManager];
      v39 = containermanager_copy_global_configuration();
      defaultUser = [v39 defaultUser];
      v77 = 0;
      v41 = [v38 createDirectoryAtURL:v36 withIntermediateDirectories:0 mode:493 owner:defaultUser dataProtectionClass:0xFFFFFFFFLL fsNode:0 error:&v77];
      v42 = v77;

      if ((v41 & 1) == 0)
      {
        v56 = [[MCMError alloc] initWithNSError:v42 url:v36 defaultErrorType:160];

        v57 = container_log_handle_for_category();
        containersCopy = v37;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v85 = v36;
          v86 = 2112;
          v87 = v42;
          _os_log_error_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_ERROR, "Couldn't create part subdirectory; partDirectoryURL = %@, error = %@", buf, 0x16u);
        }

        v8 = v56;
LABEL_47:
        errorCopy = v62;
        goto LABEL_48;
      }

      ++v30;
      v31 = v8;
      containersCopy = v37;
    }

    while (v72 != v30);
    errorCopy = v62;
    v72 = [log countByEnumeratingWithState:&v80 objects:v79 count:16];
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_35:

LABEL_37:
  if (!-[MCMCommandQuery requireSecureByPlatformPolicy](self, "requireSecureByPlatformPolicy") || (v43 = [containersCopy copy], v76 = v8, v44 = -[MCMCommandQuery _checkIfSecureContainers:error:](self, "_checkIfSecureContainers:error:", v43, &v76), v45 = v76, v8, v43, v8 = v45, v44))
  {
    v73 = [MCMResultQuery alloc];
    v71 = [containersCopy copy];
    loga = [(MCMCommand *)self context];
    clientIdentity2 = [loga clientIdentity];
    sandboxExtensionType = [(MCMCommandQuery *)self sandboxExtensionType];
    includePathInResult = [(MCMCommandQuery *)self includePathInResult];
    includeInfoInResult = [(MCMCommandQuery *)self includeInfoInResult];
    legacyPersonaPolicy = [(MCMCommandQuery *)self legacyPersonaPolicy];
    legacyExtensionPolicy = [(MCMCommandQuery *)self legacyExtensionPolicy];
    includeUserManagedAssetsRelPath = [(MCMCommandQuery *)self includeUserManagedAssetsRelPath];
    v46 = errorCopy;
    v47 = containersCopy;
    includeCreator = [(MCMCommandQuery *)self includeCreator];
    extensionsUseProxiedClient = [(MCMCommandQuery *)self extensionsUseProxiedClient];
    extensionsPolicyUsesProxiedClient = [(MCMCommandQuery *)self extensionsPolicyUsesProxiedClient];
    generation = [(MCMCommandQuery *)self generation];
    part2 = [(MCMCommandQuery *)self part];
    partDomain3 = [(MCMCommandQuery *)self partDomain];
    BYTE4(v61) = extensionsPolicyUsesProxiedClient;
    BYTE3(v61) = extensionsUseProxiedClient;
    BYTE2(v61) = includeCreator;
    containersCopy = v47;
    errorCopy = v46;
    BYTE1(v61) = includeUserManagedAssetsRelPath;
    LOBYTE(v61) = legacyExtensionPolicy;
    v28 = [MCMResultQuery initWithContainers:v73 clientIdentity:"initWithContainers:clientIdentity:sandboxExtensionType:includePath:includeInfo:legacyPersonaPolicy:legacyExtensionPolicy:includeUserManagedAssetsRelPath:includeCreator:extensionsUseProxiedClient:extensionsPolicyUsesProxiedClient:generation:part:partDomain:" sandboxExtensionType:v71 includePath:clientIdentity2 includeInfo:sandboxExtensionType legacyPersonaPolicy:includePathInResult legacyExtensionPolicy:includeInfoInResult includeUserManagedAssetsRelPath:legacyPersonaPolicy includeCreator:v61 extensionsUseProxiedClient:generation extensionsPolicyUsesProxiedClient:part2 generation:partDomain3 part:? partDomain:?];

    goto LABEL_40;
  }

LABEL_21:
  v28 = [(MCMResultBase *)[MCMResultQuery alloc] initWithError:v8];
LABEL_40:
  resultPromise = [(MCMCommand *)self resultPromise];
  [resultPromise completeWithResult:v28];
}

- (BOOL)isAboutSelf
{
  context = [(MCMCommand *)self context];
  clientIdentity = [context clientIdentity];

  codeSignInfo = [clientIdentity codeSignInfo];
  identifiers = [(MCMCommandQuery *)self identifiers];
  if (identifiers)
  {
  }

  else
  {
    groupIdentifiers = [(MCMCommandQuery *)self groupIdentifiers];

    if (!groupIdentifiers)
    {
      v12 = 1;
      goto LABEL_8;
    }
  }

  identifiers2 = [(MCMCommandQuery *)self identifiers];
  if ([identifiers2 count] == 1)
  {
    identifiers3 = [(MCMCommandQuery *)self identifiers];
    anyObject = [identifiers3 anyObject];
    identifier = [codeSignInfo identifier];
    v12 = [anyObject isEqualToString:identifier];
  }

  else
  {
    v12 = 0;
  }

LABEL_8:
  return v12;
}

uint64_t __26__MCMCommandQuery_execute__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = +[MCMTestLocks sharedInstance];
  [v2 waitOnLock:14];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
  if (v3)
  {
    v13 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * v4);
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__10026;
        v28 = __Block_byref_object_dispose__10027;
        v29 = 0;
        v6 = v5;
        v18 = 0;
        v19 = &v18;
        v20 = 0x3032000000;
        v21 = __Block_byref_object_copy__10026;
        v22 = __Block_byref_object_dispose__10027;
        v23 = 0;
        v7 = [*(a1 + 40) reply];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __26__MCMCommandQuery_execute__block_invoke_2;
        v14[3] = &unk_1E86B0848;
        v14[4] = v6;
        v16 = &v18;
        v8 = v6;
        v15 = v8;
        v17 = &v24;
        [v7 dispatchSyncToFastWorkloopWithBlock:v14];

        if (v19[5])
        {
          [*(a1 + 48) addObject:?];
        }

        else
        {
          v9 = container_log_handle_for_category();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = v25[5];
            *buf = 138412546;
            v31 = v8;
            v32 = 2112;
            v33 = v10;
            _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Could not resolve metadata for %@: error = %@", buf, 0x16u);
          }
        }

        _Block_object_dispose(&v18, 8);
        _Block_object_dispose(&v24, 8);

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v35 objects:v34 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) _finalizeWithContainers:*(a1 + 48) error:*(*(*(a1 + 56) + 8) + 40)];
}

void __26__MCMCommandQuery_execute__block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = container_log_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = a1[4];
    *buf = 138412290;
    v13 = v10;
    _os_log_debug_impl(&dword_1DF2C3000, v2, OS_LOG_TYPE_DEBUG, "Fetching metadata for container [%@]", buf, 0xCu);
  }

  v3 = a1[5];
  v11 = 0;
  v4 = [v3 metadataWithError:&v11];
  v5 = v11;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

- (MCMCommandQuery)initWithMessage:(id)message context:(id)context reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v24.receiver = self;
  v24.super_class = MCMCommandQuery;
  v9 = [(MCMCommand *)&v24 initWithMessage:messageCopy context:context reply:reply];
  if (v9)
  {
    v9->_platform = [messageCopy platform];
    v9->_explicitFlags = [messageCopy explicitFlags];
    identifiers = [messageCopy identifiers];
    identifiers = v9->_identifiers;
    v9->_identifiers = identifiers;

    containerConfig = [messageCopy containerConfig];
    containerConfig = v9->_containerConfig;
    v9->_containerConfig = containerConfig;

    groupIdentifiers = [messageCopy groupIdentifiers];
    groupIdentifiers = v9->_groupIdentifiers;
    v9->_groupIdentifiers = groupIdentifiers;

    internalUUID = [messageCopy internalUUID];
    internalUUID = v9->_internalUUID;
    v9->_internalUUID = internalUUID;

    v9->_extensionsUseProxiedClient = [messageCopy extensionsUseProxiedClient];
    v9->_extensionsPolicyUsesProxiedClient = [messageCopy extensionsPolicyUsesProxiedClient];
    v9->_createIfNecessary = [messageCopy createIfNecessary];
    v9->_includeInfoInResult = [messageCopy includeInfoInResult];
    v9->_includePathInResult = [messageCopy includePathInResult];
    v9->_uid = [messageCopy uid];
    userIdentity = [messageCopy userIdentity];
    userIdentity = v9->_userIdentity;
    v9->_userIdentity = userIdentity;

    v9->_transient = [messageCopy transient];
    v9->_fuzzyMatchTransient = [messageCopy fuzzyMatchTransient];
    v9->_fuzzyMatchInternalUUID = [messageCopy fuzzyMatchInternalUUID];
    v9->_includeUnowned = [messageCopy includeUnowned];
    v9->_expectSingleResult = [messageCopy expectSingleResult];
    v9->_legacyPersonaPolicy = [messageCopy legacyPersonaPolicy];
    v9->_legacyExtensionPolicy = [messageCopy legacyExtensionPolicy];
    v9->_includeUserManagedAssetsRelPath = [messageCopy includeUserManagedAssetsRelPath];
    v9->_requireSecureByPlatformPolicy = [messageCopy requireSecureByPlatformPolicy];
    v9->_includeCreator = [messageCopy includeCreator];
    v9->_generation = *MEMORY[0x1E69E9968];
    v9->_part = [messageCopy part];
    partDomain = [messageCopy partDomain];
    partDomain = v9->_partDomain;
    v9->_partDomain = partDomain;

    if (!v9->_legacyExtensionPolicy || !v9->_includeUnowned || [(NSSet *)v9->_identifiers count]|| (sandboxExtensionType = [(NSSet *)v9->_groupIdentifiers count]) != 0)
    {
      sandboxExtensionType = [messageCopy sandboxExtensionType];
    }

    v9->_sandboxExtensionType = sandboxExtensionType;
  }

  return v9;
}

@end