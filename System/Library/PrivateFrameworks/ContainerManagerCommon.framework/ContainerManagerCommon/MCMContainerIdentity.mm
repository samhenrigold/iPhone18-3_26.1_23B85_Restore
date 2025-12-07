@interface MCMContainerIdentity
+ (id)containerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
+ (id)containerIdentityWithIdentifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error;
+ (id)containerIdentityWithMinimalContainerIdentity:(id)identity transient:(BOOL)transient;
+ (id)containerIdentityWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)error;
+ (id)containerIdentityWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerIdentity:(id)identity;
- (MCMContainerIdentity)init;
- (MCMContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentity)initWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identityByChangingTransient:(BOOL)transient;
- (id)identityByChangingUserIdentity:(id)identity;
- (id)nontransientContainerIdentity;
- (id)plist;
- (id)transientContainerIdentity;
- (unint64_t)hash;
@end

@implementation MCMContainerIdentity

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  v8 = [identifier copyWithZone:zone];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = self->_transient;
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v13 = [v5 initWithUserIdentity:userIdentity identifier:v8 containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentity *)self isEqualToContainerIdentity:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToContainerIdentity:(id)identity
{
  v8 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7.receiver = self;
  v7.super_class = MCMContainerIdentity;
  if ([(MCMContainerIdentityMinimal *)&v7 isEqualToContainerIdentity:identityCopy])
  {
    v5 = self->_transient == identityCopy[48];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMContainerIdentity;
  v3 = [(MCMContainerIdentityMinimal *)&v6 hash];
  v4 = 15;
  if (!self->_transient)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (NSString)debugDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MCMContainerIdentity_debugDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __40__MCMContainerIdentity_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v17 = NSStringFromClass(v4);
  v5 = *(a1 + 32);
  v6 = [v5 userIdentity];
  v7 = [v6 shortDescription];
  v8 = v7;
  if (v2)
  {
    v9 = [v7 redactedDescription];
    v15 = [*(a1 + 32) identifier];
    v10 = [v15 redactedDescription];
  }

  else
  {
    v10 = [*(a1 + 32) identifier];
    v9 = v8;
  }

  v11 = [*(a1 + 32) containerConfig];
  v12 = [v11 debugDescription];
  v13 = [v16 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d>", v17, v5, v9, v10, v12, objc_msgSend(*(a1 + 32), "platform"), objc_msgSend(*(a1 + 32), "transient")];;

  if (v2)
  {

    v10 = v9;
  }

  return v13;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MCMContainerIdentity_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __35__MCMContainerIdentity_description__block_invoke(uint64_t a1, int a2)
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
  if ([*(a1 + 32) transient])
  {
    v9 = "T";
  }

  else
  {
    v9 = "";
  }

  v10 = [*(a1 + 32) userIdentity];
  v11 = [v10 shortDescription];
  v12 = v11;
  v13 = v11;
  if (a2)
  {
    v13 = [v11 redactedDescription];
  }

  v14 = [v4 stringWithFormat:@"<%@(%@%s)%@;pf%d>", v7, v8, v9, v13, objc_msgSend(*(a1 + 32), "platform")];;
  if (a2)
  {

    v12 = v10;
    v10 = v8;
  }

  else
  {
    v7 = v8;
  }

  return v14;
}

- (id)identityByChangingUserIdentity:(id)identity
{
  identityCopy = identity;
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v10 = [MCMContainerIdentity containerIdentityWithUserIdentity:identityCopy identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  return v10;
}

- (id)identityByChangingTransient:(BOOL)transient
{
  v4 = [(MCMContainerIdentity *)self copy];
  v4[48] = transient;

  return v4;
}

- (id)nontransientContainerIdentity
{
  selfCopy = self;
  if ([(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    v9 = [v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:0 userIdentityCache:userIdentityCache error:0];

    selfCopy = v9;
  }

  return selfCopy;
}

- (id)transientContainerIdentity
{
  selfCopy = self;
  if (![(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    v9 = [v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:1 userIdentityCache:userIdentityCache error:0];

    selfCopy = v9;
  }

  return selfCopy;
}

- (MCMContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary userIdentityCache:(id)cache error:(unint64_t *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  v19[0] = 1;
  v18.receiver = self;
  v18.super_class = MCMContainerIdentity;
  v10 = [(MCMContainerIdentityMinimal *)&v18 initWithVersion1PlistDictionary:dictionaryCopy userIdentityCache:cacheCopy error:v19];
  if (!v10)
  {
    v16 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"transient"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v11 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  userIdentity = [(MCMContainerIdentityMinimal *)v10 userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)v10 identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)v10 containerConfig];
  v16 = [(MCMContainerIdentity *)v10 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:[(MCMContainerIdentityMinimal *)v10 platform] transient:bOOLValue userIdentityCache:cacheCopy error:v19];

  if (error)
  {
LABEL_9:
    if (!v16)
    {
      *error = v19[0];
    }
  }

LABEL_11:

  return v16;
}

- (id)plist
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMContainerIdentity;
  plist = [(MCMContainerIdentityMinimal *)&v8 plist];
  v4 = [plist mutableCopy];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMContainerIdentity transient](self, "transient")}];
  [v4 setObject:v5 forKeyedSubscript:@"transient"];

  v6 = [v4 copy];

  return v6;
}

- (MCMContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v10 = 0;
  v9.receiver = self;
  v9.super_class = MCMContainerIdentity;
  v7 = [MCMContainerIdentityMinimal initWithLibsystemContainer:sel_initWithLibsystemContainer_defaultUserIdentity_userIdentityCache_error_ defaultUserIdentity:? userIdentityCache:? error:?];
  if (v7)
  {
    container_is_transient();
    v7->_transient = v10;
  }

  else if (error)
  {
    *error = v11;
  }

  return v7;
}

- (MCMContainerIdentity)initWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 1;
  v11.receiver = self;
  v11.super_class = MCMContainerIdentity;
  result = [(MCMContainerIdentityMinimal *)&v11 initWithUserIdentity:identity identifier:identifier containerConfig:config platform:*&platform userIdentityCache:cache error:v12];
  if (result)
  {
    result->_transient = transient;
  }

  else if (error)
  {
    *error = v12[0];
  }

  return result;
}

- (MCMContainerIdentity)init
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_ERROR, "You cannot init this class directly.", v5, 2u);
  }

  return 0;
}

+ (id)containerIdentityWithMinimalContainerIdentity:(id)identity transient:(BOOL)transient
{
  transientCopy = transient;
  identityCopy = identity;
  v7 = [self alloc];
  userIdentity = [identityCopy userIdentity];
  identifier = [identityCopy identifier];
  containerConfig = [identityCopy containerConfig];
  platform = [identityCopy platform];
  userIdentityCache = [identityCopy userIdentityCache];

  v13 = [v7 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:transientCopy userIdentityCache:userIdentityCache error:0];

  return v13;
}

+ (id)containerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy userIdentityCache:cacheCopy error:error];

  return v10;
}

+ (id)containerIdentityWithIdentifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error
{
  v9 = *&platform;
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configCopy = config;
  cacheCopy = cache;
  v20 = 1;
  if (![configCopy personaAndUserSpecific])
  {
    v17 = [self alloc];
    defaultUserIdentity = [cacheCopy defaultUserIdentity];
    v16 = [v17 initWithUserIdentity:defaultUserIdentity identifier:identifierCopy containerConfig:configCopy platform:v9 transient:0 userIdentityCache:cacheCopy error:&v20];

    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v15 = container_log_handle_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543618;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = configCopy;
    _os_log_fault_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_FAULT, "Attempt to create a container identity without a user identity when one is required; identifier = [%{public}@], class = %{public}@", buf, 0x16u);
  }

  v16 = 0;
  v20 = 11;
  if (error)
  {
LABEL_7:
    if (!v16)
    {
      *error = v20;
    }
  }

LABEL_9:

  return v16;
}

+ (id)containerIdentityWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error
{
  v9 = *&platform;
  cacheCopy = cache;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  v18 = [[self alloc] initWithUserIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:v9 transient:0 userIdentityCache:cacheCopy error:error];

  return v18;
}

+ (id)containerIdentityWithUserIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)error
{
  transientCopy = transient;
  v10 = *&platform;
  cacheCopy = cache;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  v19 = [[self alloc] initWithUserIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:v10 transient:transientCopy userIdentityCache:cacheCopy error:error];

  return v19;
}

@end