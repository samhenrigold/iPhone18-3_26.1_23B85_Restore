@interface MCMConcreteContainerIdentity
+ (id)concreteContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)self0;
+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConcreteContainerIdentity:(id)identity;
- (MCMConcreteContainerIdentity)init;
- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)identity UUID:(id)d error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMConcreteContainerIdentity)initWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)self0;
- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary containerIdentity:(id)identity error:(unint64_t *)error;
- (NSString)debugDescription;
- (NSString)description;
- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)identifier existed:(BOOL)existed error:(unint64_t *)error;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)plist;
- (unint64_t)hash;
@end

@implementation MCMConcreteContainerIdentity

- (id)copyWithZone:(_NSZone *)zone
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMConcreteContainerIdentity;
  v5 = [(MCMContainerIdentity *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
    v7 = v5[7];
    v5[7] = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMConcreteContainerIdentity *)self isEqualToConcreteContainerIdentity:equalCopy];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v6 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCMContainerIdentity *)self isEqualToContainerIdentity:equalCopy];
    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

- (BOOL)isEqualToConcreteContainerIdentity:(id)identity
{
  v8 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  if ([(NSUUID *)self->_uuid isEqual:identityCopy[7]])
  {
    v7.receiver = self;
    v7.super_class = MCMConcreteContainerIdentity;
    v5 = [(MCMContainerIdentity *)&v7 isEqualToContainerIdentity:identityCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MCMConcreteContainerIdentity;
  v3 = [(MCMContainerIdentity *)&v5 hash];
  return [(NSUUID *)self->_uuid hash]^ v3;
}

- (NSString)debugDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MCMConcreteContainerIdentity_debugDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __48__MCMConcreteContainerIdentity_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v20 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 32);
  v7 = [v6 userIdentity];
  v8 = [v7 shortDescription];
  v9 = v8;
  v21 = v2;
  v22 = v5;
  if (v2)
  {
    v10 = [v8 redactedDescription];
    v19 = [*(a1 + 32) identifier];
    v11 = [v19 redactedDescription];
  }

  else
  {
    v11 = [*(a1 + 32) identifier];
    v10 = v9;
  }

  v12 = [*(a1 + 32) containerConfig];
  v13 = [v12 debugDescription];
  v14 = [*(a1 + 32) platform];
  v15 = [*(a1 + 32) transient];
  v16 = [*(a1 + 32) uuid];
  v17 = [v20 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d, uuid = %@>", v22, v6, v10, v11, v13, v14, v15, v16];;

  if (v21)
  {

    v11 = v10;
  }

  return v17;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MCMConcreteContainerIdentity_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __43__MCMConcreteContainerIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v16 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v7 = [*(a1 + 32) containerConfig];
  if ([*(a1 + 32) transient])
  {
    v8 = "T";
  }

  else
  {
    v8 = "";
  }

  v9 = [*(a1 + 32) userIdentity];
  v10 = [v9 shortDescription];
  v11 = v10;
  v12 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
  }

  v13 = [*(a1 + 32) uuid];
  v14 = [v16 stringWithFormat:@"<%@(%@%s)%@;u%@;pf%d>", v6, v7, v8, v12, v13, objc_msgSend(*(a1 + 32), "platform")];;

  if (a2)
  {

    v11 = v9;
    v9 = v7;
  }

  else
  {
    v6 = v7;
  }

  return v14;
}

- (id)containerIdentity
{
  v3 = [MCMContainerIdentity alloc];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  v10 = [(MCMContainerIdentity *)v3 initWithUserIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:0];

  return v10;
}

- (container_object_s)createLibsystemContainerWithContainerPathIdentifier:(id)identifier existed:(BOOL)existed error:(unint64_t *)error
{
  v16[2] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v16[1] = 0;
  identifierCopy = identifier;
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  [uuid getUUIDBytes:v16];

  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  [identifier UTF8String];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  [containerConfig containerClass];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  posixUser = [userIdentity posixUser];
  [posixUser UID];
  [identifierCopy UTF8String];

  userIdentity2 = [(MCMContainerIdentityMinimal *)self userIdentity];
  personaUniqueString = [userIdentity2 personaUniqueString];
  [personaUniqueString UTF8String];
  [(MCMContainerIdentity *)self transient];
  v13 = container_object_create();

  return v13;
}

- (id)plist
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMConcreteContainerIdentity;
  plist = [(MCMContainerIdentity *)&v9 plist];
  v4 = [plist mutableCopy];
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  uUIDString = [uuid UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:@"UUID"];

  v7 = [v4 copy];

  return v7;
}

- (MCMConcreteContainerIdentity)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 1;
  v11.receiver = self;
  v11.super_class = MCMConcreteContainerIdentity;
  v7 = [MCMContainerIdentity initWithLibsystemContainer:sel_initWithLibsystemContainer_defaultUserIdentity_userIdentityCache_error_ defaultUserIdentity:? userIdentityCache:? error:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:container_object_get_uuid()];
    uuid = v7->_uuid;
    v7->_uuid = v8;
  }

  else if (error)
  {
    *error = v12;
  }

  return v7;
}

- (MCMConcreteContainerIdentity)initWithVersion1PlistDictionary:(id)dictionary containerIdentity:(id)identity error:(unint64_t *)error
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identityCopy = identity;
  v17 = 1;
  v10 = [dictionaryCopy objectForKeyedSubscript:@"UUID"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
      if (v11)
      {
        v12 = v11;
        v13 = [(MCMConcreteContainerIdentity *)self initWithContainerIdentity:identityCopy UUID:v11 error:&v17];
        self = v13;
        if (!error)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      }
    }
  }

  v17 = 116;
  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v19 = @"UUID";
    v20 = 2112;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = dictionaryCopy;
    v16 = v21;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container identity plist data. Expected UUID string for %@, got %@. Data: %@", buf, 0x20u);
  }

  v12 = 0;
  v13 = 0;
  if (error)
  {
LABEL_9:
    if (!v13)
    {
      *error = v17;
    }
  }

LABEL_11:

  return v13;
}

- (MCMConcreteContainerIdentity)initWithContainerIdentity:(id)identity UUID:(id)d error:(unint64_t *)error
{
  dCopy = d;
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  identifier = [identityCopy identifier];
  containerConfig = [identityCopy containerConfig];
  platform = [identityCopy platform];
  transient = [identityCopy transient];
  userIdentityCache = [identityCopy userIdentityCache];

  v16 = [(MCMConcreteContainerIdentity *)self initWithUUID:dCopy userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform transient:transient userIdentityCache:userIdentityCache error:error];
  return v16;
}

- (MCMConcreteContainerIdentity)initWithPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  v16[0] = 1;
  v15.receiver = self;
  v15.super_class = MCMConcreteContainerIdentity;
  v9 = [(MCMContainerIdentityMinimal *)&v15 initWithPlist:plistCopy userIdentityCache:cache error:v16];
  if (v9)
  {
    v10 = plistCopy;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:@"1"];

    if (v12)
    {
      v13 = [(MCMConcreteContainerIdentity *)v9 initWithVersion1PlistDictionary:v10 containerIdentity:v9 error:error];
    }

    else
    {

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (MCMConcreteContainerIdentity)initWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)self0
{
  transientCopy = transient;
  v11 = *&platform;
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v25 = 1;
  v24.receiver = self;
  v24.super_class = MCMConcreteContainerIdentity;
  v17 = [(MCMContainerIdentity *)&v24 initWithUserIdentity:identity identifier:identifier containerConfig:config platform:v11 transient:transientCopy userIdentityCache:cache error:&v25];
  if (!v17)
  {
LABEL_9:
    v18 = 0;
    if (error)
    {
      *error = v25;
    }

    goto LABEL_11;
  }

  v18 = v17;
  objc_opt_class();
  v19 = dCopy;
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  uuid = v18->_uuid;
  v18->_uuid = v20;

  if (!v18->_uuid)
  {
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Invalid object: uuid = [%@]", buf, 0xCu);
    }

    v25 = 11;
    goto LABEL_9;
  }

LABEL_11:

  return v18;
}

- (MCMConcreteContainerIdentity)init
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

+ (id)concreteContainerIdentityFromPlist:(id)plist userIdentityCache:(id)cache error:(unint64_t *)error
{
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy userIdentityCache:cacheCopy error:error];

  return v10;
}

+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform userIdentityCache:(id)cache error:(unint64_t *)error
{
  v9 = *&platform;
  cacheCopy = cache;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  dCopy = d;
  v20 = [[self alloc] initWithUUID:dCopy userIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:v9 transient:0 userIdentityCache:cacheCopy error:error];

  return v20;
}

+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform transient:(BOOL)transient userIdentityCache:(id)cache error:(unint64_t *)self0
{
  transientCopy = transient;
  v11 = *&platform;
  cacheCopy = cache;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  dCopy = d;
  v22 = [[self alloc] initWithUUID:dCopy userIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:v11 transient:transientCopy userIdentityCache:cacheCopy error:error];

  return v22;
}

@end