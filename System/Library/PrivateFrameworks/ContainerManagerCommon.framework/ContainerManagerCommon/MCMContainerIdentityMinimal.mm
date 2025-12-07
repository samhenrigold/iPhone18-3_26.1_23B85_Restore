@interface MCMContainerIdentityMinimal
+ (id)minimalContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (BOOL)isDataSeparated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerIdentity:(id)identity;
- (BOOL)isExplicitlyPersonal;
- (MCMContainerIdentityMinimal)init;
- (MCMContainerIdentityMinimal)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentityMinimal)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentityMinimal)initWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentityMinimal)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)personaIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identityByChangingUserIdentity:(id)identity;
- (id)identityBySettingPlatform:(unsigned int)platform;
- (id)minimalIdentity;
- (id)plist;
- (unint64_t)containerClass;
- (unint64_t)hash;
@end

@implementation MCMContainerIdentityMinimal

- (unint64_t)containerClass
{
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  containerClass = [containerConfig containerClass];

  return containerClass;
}

- (BOOL)isExplicitlyPersonal
{
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  v3 = [userIdentity personaType] == 0;

  return v3;
}

- (NSString)personaIdentifier
{
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [userIdentity identifier];

  return identifier;
}

- (BOOL)isDataSeparated
{
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  isDataSeparated = [userIdentity isDataSeparated];

  return isDataSeparated;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [MCMContainerIdentityMinimal alloc];
  userIdentity = self->_userIdentity;
  v7 = [(NSString *)self->_identifier copyWithZone:zone];
  v8 = [(MCMContainerIdentityMinimal *)v5 initWithUserIdentity:userIdentity identifier:v7 containerConfig:self->_containerConfig platform:self->_platform userIdentityCache:self->_userIdentityCache error:0];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentityMinimal *)self isEqualToContainerIdentity:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToContainerIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(NSString *)self->_identifier isEqual:identityCopy[2]]&& [(MCMUserIdentity *)self->_userIdentity isEqual:identityCopy[4]]&& [(MCMContainerConfiguration *)self->_containerConfig isEqual:identityCopy[3]];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(MCMUserIdentity *)self->_userIdentity hash];
  return v4 ^ v3 ^ [(MCMContainerConfiguration *)self->_containerConfig hash];
}

- (NSString)debugDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MCMContainerIdentityMinimal_debugDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __47__MCMContainerIdentityMinimal_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v19 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 32);
  v7 = [v6 userIdentity];
  v8 = [v7 shortDescription];
  v9 = v8;
  if (v2)
  {
    v10 = [v8 redactedDescription];
    v18 = [*(a1 + 32) identifier];
    v11 = [v18 redactedDescription];
  }

  else
  {
    v11 = [*(a1 + 32) identifier];
    v10 = v9;
  }

  v12 = [*(a1 + 32) containerConfig];
  v13 = [v12 debugDescription];
  v14 = [*(a1 + 32) platform];
  v15 = v5;
  v16 = [v19 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d>", v5, v6, v10, v11, v13, v14];;

  if (v2)
  {

    v11 = v10;
  }

  return v16;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__MCMContainerIdentityMinimal_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __42__MCMContainerIdentityMinimal_description__block_invoke(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) identifier];
  v6 = v5;
  v7 = v5;
  if (a2)
  {
    v7 = [v5 redactedDescription];
  }

  v8 = [*(a1 + 32) containerConfig];
  v9 = [*(a1 + 32) userIdentity];
  v10 = [v9 shortDescription];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [v4 stringWithFormat:@"<%@(%@-)%@;pf%d>", v7, v8, v12, objc_msgSend(*(a1 + 32), "platform")];;
  if (a2)
  {

    v11 = v9;
    v9 = v8;
  }

  else
  {
    v7 = v8;
  }

  return v13;
}

- (id)identityByChangingUserIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(MCMContainerIdentityMinimal *)self copy];
  v6 = v5[4];
  v5[4] = identityCopy;

  return v5;
}

- (id)identityBySettingPlatform:(unsigned int)platform
{
  v4 = [(MCMContainerIdentityMinimal *)self copy];
  v4[2] = platform;

  return v4;
}

- (id)minimalIdentity
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 1;
  selfCopy = self;
  v3 = selfCopy;
  if (([(MCMContainerIdentityMinimal *)selfCopy isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    v4 = [MCMContainerIdentityMinimal alloc];
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    v3 = [(MCMContainerIdentityMinimal *)v4 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform userIdentityCache:userIdentityCache error:&v14];
  }

  if (!v3)
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v12 = v14;
      error_description = container_get_error_description();
      *buf = 134218498;
      v16 = v12;
      v17 = 2080;
      v18 = error_description;
      v19 = 2112;
      v20 = selfCopy;
      _os_log_fault_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_FAULT, "Failed to create minimal identity; error = (%llu) %s, self = %@", buf, 0x20u);
    }
  }

  return v3;
}

- (MCMContainerIdentityMinimal)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  v33 = 1;
  v10 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"containerClass"];
  v32 = [dictionaryCopy objectForKeyedSubscript:@"userIdentity"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = 116;
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v35 = @"identifier";
      v36 = 2112;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = dictionaryCopy;
      v24 = v37;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected string for %@, got %@. Data: %@", buf, 0x20u);
    }

    v16 = 0;
    v18 = 0;
    v12 = 0;
LABEL_17:
    v19 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v12 = v10;
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = 116;
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v35 = @"containerClass";
      v36 = 2112;
      v37 = objc_opt_class();
      v38 = 2112;
      v39 = dictionaryCopy;
      v28 = v37;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    v16 = 0;
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  selfCopy = self;
  unsignedIntegerValue = [v11 unsignedIntegerValue];
  v14 = containermanager_copy_global_configuration();
  staticConfig = [v14 staticConfig];
  v30 = unsignedIntegerValue;
  v16 = [staticConfig configForContainerClass:unsignedIntegerValue];

  if (v16)
  {
    self = selfCopy;
    if ([v16 supportedOnPlatform])
    {
      v17 = [MCMUserIdentity userIdentityWithPlist:v32 cache:cacheCopy error:&v33];
      if (v17)
      {
        v18 = v17;
        v19 = [(MCMContainerIdentityMinimal *)selfCopy initWithUserIdentity:v17 identifier:v12 containerConfig:v16 platform:0 userIdentityCache:cacheCopy error:&v33];
        self = v19;
        if (!error)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v33 = 116;
      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v35 = @"userIdentity";
        v36 = 2112;
        v37 = dictionaryCopy;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Could not reconstitute user identity from %@. Data: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is unsupported", buf, 0xCu);
    }

    v18 = 0;
    v19 = 0;
    v26 = 72;
  }

  else
  {
    v25 = container_log_handle_for_category();
    self = selfCopy;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = v30;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Container class in plist data (%llu) is invalid", buf, 0xCu);
    }

    v16 = 0;
    v18 = 0;
    v19 = 0;
    v26 = 20;
  }

  v33 = v26;
  if (!error)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (!v19)
  {
    *error = v33;
  }

LABEL_20:
  v22 = v19;

  return v22;
}

- (MCMContainerIdentityMinimal)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  plistCopy = plist;
  cacheCopy = cache;
  if (plistCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = plistCopy;
      v11 = [v10 objectForKeyedSubscript:@"version"];
      v12 = [v11 isEqual:@"1"];

      if (v12)
      {
        self = [(MCMContainerIdentityMinimal *)self initWithVersion1PlistDictionary:v10 userIdentityCache:cacheCopy error:error];
      }
    }
  }

  return self;
}

- (id)plist
{
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = @"1";
  v11[0] = @"version";
  v11[1] = @"identifier";
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  v12[1] = identifier;
  v11[2] = @"containerClass";
  v4 = MEMORY[0x1E696AD98];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  v6 = [v4 numberWithUnsignedLongLong:{objc_msgSend(containerConfig, "containerClass")}];
  v12[2] = v6;
  v11[3] = @"userIdentity";
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  plist = [userIdentity plist];
  v12[3] = plist;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (MCMContainerIdentityMinimal)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v44 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  v37 = 1;
  identifier = container_get_identifier();
  if (!identifier)
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Identifier in container_object_t is NULL", buf, 2u);
    }

    v16 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 11;
LABEL_9:
    v37 = v24;
    if (!error)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  errorCopy = error;
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:identifier];
  v13 = container_get_class();
  v14 = containermanager_copy_global_configuration();
  staticConfig = [v14 staticConfig];
  v16 = [staticConfig configForContainerClass:v13];

  if (v16)
  {
    if ([v16 supportedOnPlatform])
    {
      container_is_transient();
      persona_unique_string = container_get_persona_unique_string();
      if (persona_unique_string)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
      }

      else
      {
        v18 = 0;
      }

      v21 = [MCMPOSIXUser posixUserWithUID:container_get_uid()];
      if ([v16 personaAndUserSpecific])
      {
        if (v18)
        {
          v28 = [cacheCopy userIdentityForPersonaUniqueString:v18 POSIXUser:v21];
        }

        else
        {
          v28 = identityCopy;
        }

        v20 = v28;
        v22 = v12;
        error = errorCopy;
        if (!v28)
        {
          v35 = container_log_handle_for_category();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v18;
            _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Cannot reconstitute a user identity from provided persona unique string; personaUniqueString = [%@]", buf, 0xCu);
          }

          v20 = 0;
          goto LABEL_38;
        }

        isNoSpecificPersona = [identityCopy isNoSpecificPersona];
        v33 = [identityCopy isEqual:v20];
        if ((isNoSpecificPersona & 1) == 0 && (v33 & 1) == 0)
        {
          v34 = container_log_handle_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v39 = v18;
            v40 = 1024;
            v41 = 0;
            v42 = 1024;
            v43 = 0;
            _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Persona unique string is not valid for this client; personaUniqueString = [%@], nonspecific = %d, sameAsClient = %d", buf, 0x18u);
          }

LABEL_38:
          v23 = 0;
          v24 = 76;
          goto LABEL_9;
        }
      }

      else
      {
        v20 = 0;
        v22 = v12;
        error = errorCopy;
      }

      v29 = [cacheCopy userIdentityForContainerConfig:v16 originatorUserIdentity:v20];

      v23 = [(MCMContainerIdentityMinimal *)self initWithUserIdentity:v29 identifier:v22 containerConfig:v16 platform:0 userIdentityCache:cacheCopy error:&v37];
      v20 = v29;
      self = v23;
      if (!error)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v27 = container_log_handle_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v39 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is unsupported", buf, 0xCu);
    }

    v20 = 0;
    v21 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 72;
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v39 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Container class in container_object_t (%llu) is invalid", buf, 0xCu);
    }

    v16 = 0;
    v20 = 0;
    v21 = 0;
    v18 = 0;
    v23 = 0;
    v26 = 20;
  }

  v37 = v26;
  v22 = v12;
  error = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_27;
  }

LABEL_25:
  if (!v23)
  {
    *error = v37;
  }

LABEL_27:
  v30 = v23;

  return v30;
}

- (MCMContainerIdentityMinimal)initWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error
{
  v35 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifierCopy = identifier;
  configCopy = config;
  cacheCopy = cache;
  v32.receiver = self;
  v32.super_class = MCMContainerIdentityMinimal;
  v18 = [(MCMContainerIdentityMinimal *)&v32 init];
  if (!v18)
  {
    v24 = 1;
    goto LABEL_24;
  }

  v19 = v18;
  objc_storeStrong(&v18->_userIdentityCache, cache);
  v20 = [cacheCopy userIdentityForContainerConfig:configCopy originatorUserIdentity:identityCopy];
  userIdentity = v19->_userIdentity;
  v19->_userIdentity = v20;

  if (v19->_userIdentity)
  {
    if (!identifierCopy)
    {
      v25 = container_log_handle_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_ERROR, "Invalid object: missing identifier", buf, 2u);
      }

      v24 = 18;
      goto LABEL_23;
    }

    objc_opt_class();
    v22 = identifierCopy;
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    identifier = v19->_identifier;
    v19->_identifier = v23;

    if (v19->_identifier)
    {
      objc_storeStrong(&v19->_containerConfig, config);
      if (v19->_containerConfig)
      {
        disposition = [configCopy disposition];
        v19->_platform = platform;
        v19->_disposition = disposition;
        goto LABEL_26;
      }

      v25 = container_log_handle_for_category();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v34 = configCopy;
      v26 = "Invalid object: container class = %@";
      goto LABEL_20;
    }

    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v22;
      v26 = "Invalid object: identifier = [%@]";
LABEL_20:
      v27 = v25;
      v28 = 12;
      goto LABEL_21;
    }
  }

  else
  {
    v25 = container_log_handle_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "Invalid object: no user identity";
      v27 = v25;
      v28 = 2;
LABEL_21:
      _os_log_error_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }
  }

LABEL_22:
  v24 = 11;
LABEL_23:

LABEL_24:
  v19 = 0;
  if (error)
  {
    *error = v24;
  }

LABEL_26:

  return v19;
}

- (MCMContainerIdentityMinimal)init
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315138;
    v6 = "[MCMContainerIdentityMinimal init]";
    _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%s You cannot init this class directly.", &v5, 0xCu);
  }

  return 0;
}

+ (id)minimalContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy userIdentityCache:cacheCopy error:error];

  return v10;
}

@end