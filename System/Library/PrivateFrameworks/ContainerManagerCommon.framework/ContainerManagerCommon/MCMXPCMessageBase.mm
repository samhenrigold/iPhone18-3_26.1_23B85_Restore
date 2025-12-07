@interface MCMXPCMessageBase
+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)identities error:(id *)error;
+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error;
+ (id)legacyUserIdentityForIdentifier:(id)identifier targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error;
+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)identifier containerConfig:(id)config userIdentityCache:(id)cache error:(id *)error;
+ (id)xpcMessageFromXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (MCMXPCMessageBase)initWithContext:(id)context;
- (MCMXPCMessageBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (id)identifierFromXPCObject:(id)object elseClientIdentifier:(id)identifier;
- (id)nsObjectFromXPCObject:(id)object key:(const char *)key error:(unint64_t *)error;
- (id)nsStringValueFromXPCObject:(id)object key:(const char *)key;
- (id)nsUUIDValueFromXPCObject:(id)object key:(const char *)key;
- (id)userIdentityFromClientPersonaUniqueString:(id)string clientIdentity:(id)identity error:(id *)error;
- (void)dealloc;
@end

@implementation MCMXPCMessageBase

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  container_free_client();
  v3.receiver = self;
  v3.super_class = MCMXPCMessageBase;
  [(MCMXPCMessageBase *)&v3 dealloc];
}

- (MCMXPCMessageBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  objectCopy = object;
  v9 = [(MCMXPCMessageBase *)self initWithContext:context];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_xpcObject, object);
    uint64 = xpc_dictionary_get_uint64(objectCopy, "Platform");
    v12 = xpc_dictionary_get_dictionary(objectCopy, "ProxyForClient");
    v13 = v12;
    if (v12)
    {
      v12 = container_client_copy_decoded_from_xpc_object();
    }

    v10->_proxy = v12;
    v10->_platform = uint64;
    v10->_command = xpc_dictionary_get_uint64(objectCopy, "Command");
  }

  return v10;
}

- (MCMXPCMessageBase)initWithContext:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageBase;
  v6 = [(MCMXPCMessageBase *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    warnings = v7->_warnings;
    v7->_warnings = v8;
  }

  return v7;
}

+ (id)xpcMessageFromXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  contextCopy = context;
  objectCopy = object;
  v10 = [[self alloc] initWithXPCObject:objectCopy context:contextCopy error:error];

  return v10;
}

- (id)userIdentityFromClientPersonaUniqueString:(id)string clientIdentity:(id)identity error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identityCopy = identity;
  v32 = 0;
  v10 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v10, &v32) && (v32 & 0x80000000) != 0)
  {
    userIdentity = [identityCopy userIdentity];
    goto LABEL_12;
  }

  context = [(MCMXPCMessageBase *)self context];
  userIdentityCache = [context userIdentityCache];
  personasAreSupported = [objc_opt_class() personasAreSupported];

  context2 = [(MCMXPCMessageBase *)self context];
  userIdentityCache2 = [context2 userIdentityCache];
  v17 = userIdentityCache2;
  if (!personasAreSupported)
  {
    posixUser = [identityCopy posixUser];
    userIdentity = [v17 userIdentityForPersonalPersonaWithPOSIXUser:posixUser];

LABEL_12:
    v23 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v18 = [userIdentityCache2 userIdentityForCurrentUserWithPersonaUniqueString:stringCopy];

  if (v18)
  {
    userIdentity2 = [identityCopy userIdentity];
    isNoSpecificPersona = [userIdentity2 isNoSpecificPersona];
    v21 = [userIdentity2 isEqual:v18];
    if ((isNoSpecificPersona & 1) != 0 || v21)
    {
      userIdentity = v18;
      v23 = 0;
    }

    else
    {
      v22 = container_log_handle_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        codeSignInfo = [identityCopy codeSignInfo];
        identifier = [codeSignInfo identifier];
        v32 = 138413058;
        v33 = identifier;
        v34 = 2112;
        v35 = stringCopy;
        v36 = 1024;
        v37 = 0;
        v38 = 1024;
        v39 = 0;
        _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Persona unique string is not valid for this client; client = [%@], personaUniqueString = [%@], nonspecific = %d, sameAsClient = %d", &v32, 0x22u);
      }

      v23 = [[MCMError alloc] initWithErrorType:76 category:3];
      userIdentity = 0;
    }
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      codeSignInfo2 = [identityCopy codeSignInfo];
      identifier2 = [codeSignInfo2 identifier];
      v32 = 138412546;
      v33 = identifier2;
      v34 = 2112;
      v35 = stringCopy;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Cannot reconstitute a user identity from provided persona unique string; client = [%@], personaUniqueString = [%@]", &v32, 0x16u);
    }

    v23 = [[MCMError alloc] initWithErrorType:76 category:3];
    userIdentity = 0;
  }

  if (error)
  {
LABEL_20:
    if (!userIdentity)
    {
      v26 = v23;
      *error = v23;
    }
  }

LABEL_22:

  return userIdentity;
}

- (id)nsObjectFromXPCObject:(id)object key:(const char *)key error:(unint64_t *)error
{
  v6 = xpc_dictionary_get_value(object, key);
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v8 = v7;
    if (error && !v7)
    {
      *error = 38;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nsUUIDValueFromXPCObject:(id)object key:(const char *)key
{
  uuid = xpc_dictionary_get_uuid(object, key);
  if (uuid)
  {
    uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
  }

  return uuid;
}

- (id)identifierFromXPCObject:(id)object elseClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(MCMXPCMessageBase *)self nsStringValueFromXPCObject:object key:"Identifier"];
  if (!v7)
  {
    v7 = identifierCopy;
  }

  return v7;
}

- (id)nsStringValueFromXPCObject:(id)object key:(const char *)key
{
  string = xpc_dictionary_get_string(object, key);
  if (string)
  {
    string = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  return string;
}

+ (id)_userIdentityDisambiguatedFromUserIdentities:(id)identities error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  identitiesCopy = identities;
  if ([identitiesCopy count] == 1)
  {
    anyObject = [identitiesCopy anyObject];
    v7 = 0;
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = identitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    anyObject = 0;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (([v13 isDataSeparated] & 1) == 0 && (objc_msgSend(v13, "isNoSpecificPersona") & 1) == 0)
        {
          if (anyObject)
          {

            goto LABEL_18;
          }

          anyObject = v13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    if (anyObject)
    {
      v7 = 0;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_18:
  }

  v7 = [[MCMError alloc] initWithErrorType:115 category:3];
  anyObject = 0;
  if (error)
  {
LABEL_20:
    if (!anyObject)
    {
      v7 = v7;
      *error = v7;
    }
  }

LABEL_22:

  return anyObject;
}

+ (id)legacySetOfUserIdentitiesForIdentifiers:(id)identifiers targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error
{
  v132 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identityCopy = identity;
  configCopy = config;
  clientIdentityCopy = clientIdentity;
  cacheCopy = cache;
  warningsCopy = warnings;
  userIdentity = [clientIdentityCopy userIdentity];
  v20 = identityCopy;
  v21 = containermanager_copy_global_configuration();
  staticConfig = [v21 staticConfig];

  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v49 = [v20 debugDescription];
    multiuser_flags = 138412290;
    v117 = v49;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Evaluating requested target userIdentity: %@", &multiuser_flags, 0xCu);
  }

  v104 = clientIdentityCopy;
  v102 = userIdentity;
  v103 = warningsCopy;
  if ([configCopy usesGlobalBundleUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [cacheCopy globalBundleUserIdentity];
LABEL_7:
    v26 = globalBundleUserIdentity;
    v27 = [v24 setWithObject:globalBundleUserIdentity];

    v28 = 0;
    v105 = 0;
LABEL_8:
    v29 = v20;
    goto LABEL_9;
  }

  if ([configCopy usesGlobalSystemUserIdentity])
  {
    v24 = MEMORY[0x1E695DFD8];
    globalBundleUserIdentity = [cacheCopy globalSystemUserIdentity];
    goto LABEL_7;
  }

  multiuser_flags = 0;
  v43 = MEMORY[0x1E12D3930]();
  if (!host_get_multiuser_config_flags(v43, &multiuser_flags) && (multiuser_flags & 0x80000000) != 0)
  {
    v100 = staticConfig;
    posixUser = [userIdentity posixUser];
    v45 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:posixUser];
    v27 = [MEMORY[0x1E695DFD8] setWithObject:v45];
    v46 = container_log_handle_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      multiuser_flags = 138412290;
      v117 = v45;
      _os_log_debug_impl(&dword_1DF2C3000, v46, OS_LOG_TYPE_DEBUG, "Using client-based userIdentity: %@", &multiuser_flags, 0xCu);
    }

    v28 = 0;
    v105 = 0;
    v29 = v20;
    staticConfig = v100;
    goto LABEL_9;
  }

  if ([userIdentity isNoSpecificPersona])
  {
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"It is undefined behavior to look up a container with a persona other than personal or data separated. Please adopt a persona first. Assuming personal. given persona = (%@)", userIdentity];
    v105 = [[MCMError alloc] initWithErrorType:76 category:3 message:v47];
    if ([staticConfig requireDataBackedPersona])
    {
      v48 = container_log_handle_for_category();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [userIdentity shortDescription];
        v80 = v79 = cacheCopy;
        multiuser_flags = 138412290;
        v117 = v80;
        _os_log_error_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_ERROR, "Client has not adopted an unambiguous persona; client = %@", &multiuser_flags, 0xCu);

        cacheCopy = v79;
      }

LABEL_45:
      v27 = 0;
      v28 = 0;
      goto LABEL_8;
    }

    if ([staticConfig warnIfNotDataBackedPersona])
    {
      [warningsCopy addObject:v105];
    }
  }

  v50 = userIdentity;
  if (v20)
  {
    isNoSpecificPersona = [v20 isNoSpecificPersona];
    v50 = v20;
    if (isNoSpecificPersona)
    {
      v52 = container_log_handle_for_category();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        shortDescription = [v20 shortDescription];
        multiuser_flags = 138412290;
        v117 = shortDescription;
        _os_log_error_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_ERROR, "Client requested an ambiguous persona; target = %@", &multiuser_flags, 0xCu);
      }

      v105 = [[MCMError alloc] initWithErrorType:115 category:3];
      goto LABEL_45;
    }
  }

  v53 = v50;

  if (([userIdentity isNoSpecificPersona] & 1) == 0 && (objc_msgSend(userIdentity, "isEqual:", v53) & 1) == 0)
  {
    v63 = container_log_handle_for_category();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      shortDescription2 = [userIdentity shortDescription];
      [v53 shortDescription];
      v86 = v85 = staticConfig;
      multiuser_flags = 138412546;
      v117 = shortDescription2;
      v118 = 2112;
      v119 = v86;
      _os_log_error_impl(&dword_1DF2C3000, v63, OS_LOG_TYPE_ERROR, "Client ineligible for the requested persona; client = %@, requested = %@", &multiuser_flags, 0x16u);

      staticConfig = v85;
    }

    v105 = [[MCMError alloc] initWithErrorType:76 category:3];
    v27 = 0;
    v28 = 0;
    v29 = v53;
    goto LABEL_9;
  }

  if (![v53 isNoSpecificPersona])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithObject:v53];
    v62 = container_log_handle_for_category();
    v29 = v53;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      shortDescription3 = [v53 shortDescription];
      multiuser_flags = 138412290;
      v117 = shortDescription3;
      _os_log_debug_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_DEBUG, "Using explicit persona: %@", &multiuser_flags, 0xCu);
    }

    v28 = 0;
    v105 = 0;
    goto LABEL_9;
  }

  v97 = v53;
  if (![userIdentity isNoSpecificPersona])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithObject:userIdentity];
    v64 = container_log_handle_for_category();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      userIdentity2 = [clientIdentityCopy userIdentity];
      [userIdentity2 shortDescription];
      v89 = v88 = staticConfig;
      multiuser_flags = 138412290;
      v117 = v89;
      _os_log_debug_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_DEBUG, "Using client implicit persona: %@", &multiuser_flags, 0xCu);

      staticConfig = v88;
    }

    v28 = 0;
    v105 = 0;
    goto LABEL_92;
  }

  v28 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  if (([configCopy singleOwner] & 1) == 0)
  {
    codeSignInfo = [clientIdentityCopy codeSignInfo];
    identifier = [codeSignInfo identifier];

    userIdentityForPersonalPersona = [cacheCopy userIdentityForPersonalPersona];
    v90 = cacheCopy;
    v95 = identifier;
    if (identifier)
    {
      v110 = 0;
      v68 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:identifier containerConfig:configCopy userIdentityCache:cacheCopy error:&v110];
      v69 = v110;
      v70 = v69;
      if (v68)
      {
        v109 = v69;
        v71 = [self _userIdentityDisambiguatedFromUserIdentities:v68 error:&v109];
        v105 = v109;

        if (v71)
        {

          userIdentityForPersonalPersona = v71;
          identifier = v95;
LABEL_76:
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v68 = identifiersCopy;
          v72 = [v68 countByEnumeratingWithState:&v128 objects:v127 count:16];
          if (!v72)
          {
            v29 = v97;
LABEL_101:

            v27 = 0;
            cacheCopy = v90;
            goto LABEL_9;
          }

          v73 = v72;
          v93 = v20;
          v101 = configCopy;
          v74 = *v129;
          do
          {
            for (i = 0; i != v73; ++i)
            {
              if (*v129 != v74)
              {
                objc_enumerationMutation(v68);
              }

              v76 = *(*(&v128 + 1) + 8 * i);
              v77 = [MEMORY[0x1E695DFD8] setWithObject:userIdentityForPersonalPersona];
              [v28 setObject:v77 forKeyedSubscript:v76];
            }

            v73 = [v68 countByEnumeratingWithState:&v128 objects:v127 count:16];
          }

          while (v73);
          v29 = v97;
          configCopy = v101;
          v20 = v93;
LABEL_100:
          identifier = v95;
          goto LABEL_101;
        }

        v83 = container_log_handle_for_category();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v117 = v95;
          v118 = 2112;
          v119 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v83, OS_LOG_TYPE_ERROR, "Requested owned container has multiple persona; client = %@, class = %@", &multiuser_flags, 0x16u);
        }

        userIdentityForPersonalPersona = 0;
        v70 = v105;
      }

      else
      {
        v83 = container_log_handle_for_category();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v117 = v95;
          v118 = 2112;
          v119 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v83, OS_LOG_TYPE_ERROR, "Could not resolve user identities; client = %@, class = %@", &multiuser_flags, 0x16u);
        }
      }

      v29 = v97;

      v105 = v70;
      goto LABEL_100;
    }

    v105 = 0;
    goto LABEL_76;
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = identifiersCopy;
  v94 = [obj countByEnumeratingWithState:&v123 objects:v122 count:16];
  if (!v94)
  {
    v105 = 0;
    goto LABEL_91;
  }

  v105 = 0;
  v92 = *v124;
  while (2)
  {
    for (j = 0; j != v94; ++j)
    {
      if (*v124 != v92)
      {
        objc_enumerationMutation(obj);
      }

      v55 = *(*(&v123 + 1) + 8 * j);
      v108 = v105;
      v56 = cacheCopy;
      v57 = [MCMXPCMessageBase userIdentitiesAssociatedWithContainerIdentifier:v55 containerConfig:configCopy userIdentityCache:cacheCopy error:&v108];
      v58 = v108;

      if (!v57)
      {
        v78 = container_log_handle_for_category();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412546;
          v117 = v55;
          v118 = 2112;
          v119 = configCopy;
          _os_log_error_impl(&dword_1DF2C3000, v78, OS_LOG_TYPE_ERROR, "Could not resolve user identities; identifier = %@, class = %@", &multiuser_flags, 0x16u);
        }

        v57 = 0;
        goto LABEL_90;
      }

      v59 = v20;
      v107 = v58;
      v60 = [self _userIdentityDisambiguatedFromUserIdentities:v57 error:&v107];
      v105 = v107;

      if (!v60)
      {
        v78 = container_log_handle_for_category();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          multiuser_flags = 138412802;
          v117 = v55;
          v118 = 2112;
          v119 = configCopy;
          v120 = 2112;
          v121 = v57;
          _os_log_error_impl(&dword_1DF2C3000, v78, OS_LOG_TYPE_ERROR, "Requested container has multiple persona; client = %@, class = %@, personas = %@", &multiuser_flags, 0x20u);
        }

        v58 = v105;
        v20 = v59;
LABEL_90:

        v105 = v58;
        cacheCopy = v56;
        goto LABEL_91;
      }

      v61 = [MEMORY[0x1E695DFD8] setWithObject:v60];
      [v28 setObject:v61 forKeyedSubscript:v55];

      cacheCopy = v56;
      v20 = v59;
    }

    v94 = [obj countByEnumeratingWithState:&v123 objects:v122 count:16];
    if (v94)
    {
      continue;
    }

    break;
  }

LABEL_91:

  v27 = 0;
LABEL_92:
  v29 = v97;
LABEL_9:
  v30 = configCopy;
  if ([v28 count])
  {
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_20:
    v33 = v28;
    errorCopy2 = error;
  }

  else
  {

    v28 = 0;
    if (!v27)
    {
      goto LABEL_20;
    }

LABEL_11:
    v96 = v29;
    v99 = staticConfig;
    v31 = v20;
    v32 = cacheCopy;
    v33 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(identifiersCopy, "count")}];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v34 = identifiersCopy;
    v35 = [v34 countByEnumeratingWithState:&v112 objects:v111 count:16];
    errorCopy2 = error;
    if (v35)
    {
      v37 = v35;
      v38 = *v113;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v113 != v38)
          {
            objc_enumerationMutation(v34);
          }

          [v33 setObject:v27 forKeyedSubscript:*(*(&v112 + 1) + 8 * k)];
        }

        v37 = [v34 countByEnumeratingWithState:&v112 objects:v111 count:16];
      }

      while (v37);
    }

    cacheCopy = v32;
    v20 = v31;
    v29 = v96;
    staticConfig = v99;
  }

  if (errorCopy2 && !v33)
  {
    v40 = v105;
    *errorCopy2 = v105;
  }

  v41 = [v33 copy];

  return v41;
}

+ (id)legacyUserIdentityForIdentifier:(id)identifier targetUserIdentity:(id)identity containerConfig:(id)config clientIdentity:(id)clientIdentity userIdentityCache:(id)cache warnings:(id)warnings error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v16 = MEMORY[0x1E695DFD8];
  warningsCopy = warnings;
  cacheCopy = cache;
  clientIdentityCopy = clientIdentity;
  configCopy = config;
  identityCopy = identity;
  v22 = [v16 setWithObject:identifierCopy];
  v34[0] = 0;
  v23 = [self legacySetOfUserIdentitiesForIdentifiers:v22 targetUserIdentity:identityCopy containerConfig:configCopy clientIdentity:clientIdentityCopy userIdentityCache:cacheCopy warnings:warningsCopy error:v34];

  v24 = v34[0];
  if (v23)
  {
    v25 = [v23 objectForKeyedSubscript:identifierCopy];
    v26 = v25;
    if (v25)
    {
      if ([v25 count] == 1)
      {
        anyObject = [v26 anyObject];
        if (!error)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }

      v28 = [MCMError alloc];
      v29 = 115;
    }

    else
    {
      v28 = [MCMError alloc];
      v29 = 76;
    }

    v30 = [(MCMError *)v28 initWithErrorType:v29 category:4];

    anyObject = 0;
    v24 = v30;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  anyObject = 0;
  v26 = 0;
  if (!error)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (!anyObject)
  {
    v31 = v24;
    *error = v24;
  }

LABEL_13:
  v32 = anyObject;

  return anyObject;
}

+ (id)userIdentitiesAssociatedWithContainerIdentifier:(id)identifier containerConfig:(id)config userIdentityCache:(id)cache error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configCopy = config;
  cacheCopy = cache;
  if ([configCopy personaAndUserSpecific])
  {
    v12 = identifierCopy;
    if ([configCopy associatedWithParent] && objc_msgSend(configCopy, "containsUserGeneratedData"))
    {
      childParentMapCache = [gCodeSigningMapping childParentMapCache];

      if (childParentMapCache)
      {
        childParentMapCache2 = [gCodeSigningMapping childParentMapCache];
        v15 = [childParentMapCache2 parentIdentifierForChildIdentifier:v12];

        v12 = v15;
      }

      else
      {
        v21 = container_log_handle_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v25 = 138543362;
          v26 = v12;
          _os_log_debug_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEBUG, "Warning: not remapping plugin identifier '%{public}@ to parent identifier [3]", &v25, 0xCu);
        }
      }
    }

    v22 = [cacheCopy userIdentitiesForBundleIdentifier:v12];
    v19 = v22;
    if (v22 && [v22 count])
    {
      v20 = 0;
    }

    else
    {

      v20 = [[MCMError alloc] initWithErrorType:164 category:4];
      v19 = 0;
    }
  }

  else
  {
    if ([configCopy usesGlobalBundleUserIdentity])
    {
      v16 = MEMORY[0x1E695DFD8];
      globalBundleUserIdentity = [cacheCopy globalBundleUserIdentity];
    }

    else
    {
      if (![configCopy usesGlobalSystemUserIdentity])
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_20;
      }

      v16 = MEMORY[0x1E695DFD8];
      globalBundleUserIdentity = [cacheCopy globalSystemUserIdentity];
    }

    v18 = globalBundleUserIdentity;
    v19 = [v16 setWithObject:globalBundleUserIdentity];

    v20 = 0;
  }

LABEL_20:
  if (error && !v19)
  {
    v23 = v20;
    *error = v20;
  }

  return v19;
}

@end