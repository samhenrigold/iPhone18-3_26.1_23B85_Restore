@interface MCMConcreteContainerIdentityForLibsystem
+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2;
- (MCMConcreteContainerIdentityForLibsystem)init;
- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error;
- (MCMConcreteContainerIdentityForLibsystem)initWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2;
- (NSString)debugDescription;
- (NSString)description;
- (container_object_s)createLibsystemContainerWithError:(unint64_t *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identityByChangingContainerPathIdentifier:(id)identifier;
- (id)identityByChangingIdentifier:(id)identifier;
- (id)identityByChangingTransient:(BOOL)transient;
- (id)identityByChangingUUID:(id)d;
- (id)nontransientConcreteContainerIdentityForLibsystem;
- (id)nontransientContainerIdentity;
- (id)transientConcreteContainerIdentityForLibsystem;
- (id)transientContainerIdentity;
@end

@implementation MCMConcreteContainerIdentityForLibsystem

- (id)copyWithZone:(_NSZone *)zone
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MCMConcreteContainerIdentityForLibsystem;
  v5 = [(MCMConcreteContainerIdentity *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_containerPathIdentifier copyWithZone:zone];
    v7 = v5[9];
    v5[9] = v6;

    *(v5 + 64) = self->_existed;
  }

  return v5;
}

- (NSString)debugDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__MCMConcreteContainerIdentityForLibsystem_debugDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __60__MCMConcreteContainerIdentityForLibsystem_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v20 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 32);
  v21 = [v6 userIdentity];
  v7 = [v21 shortDescription];
  v8 = v7;
  v22 = v2;
  v23 = v5;
  v19 = v7;
  if (v2)
  {
    v8 = [v7 redactedDescription];
    v18 = [*(a1 + 32) identifier];
    [v18 redactedDescription];
  }

  else
  {
    [*(a1 + 32) identifier];
  }
  v9 = ;
  v10 = [*(a1 + 32) containerConfig];
  v11 = [v10 debugDescription];
  v12 = [*(a1 + 32) platform];
  v13 = [*(a1 + 32) transient];
  v14 = [*(a1 + 32) uuid];
  v15 = [*(a1 + 32) containerPathIdentifier];
  v16 = [v20 stringWithFormat:@"<%@: %p userIdentity = %@, identifier = %@, class = %@, platform = %d, transient = %d, uuid = %@, containerPathIdentifier = %@, existed = %d>", v23, v6, v8, v9, v11, v12, v13, v14, v15, objc_msgSend(*(a1 + 32), "existed")];;

  if (v22)
  {

    v9 = v8;
  }

  return v16;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MCMConcreteContainerIdentityForLibsystem_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __55__MCMConcreteContainerIdentityForLibsystem_description__block_invoke(uint64_t a1, int a2)
{
  v22 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v23 = v5;
  v7 = [*(a1 + 32) containerConfig];
  v8 = [*(a1 + 32) transient];
  v9 = "T";
  if (!v8)
  {
    v9 = "";
  }

  v21 = v9;
  v10 = [*(a1 + 32) userIdentity];
  v11 = [v10 shortDescription];
  v12 = v11;
  v13 = v11;
  if (a2)
  {
    v13 = [v11 redactedDescription];
  }

  v14 = [*(a1 + 32) uuid];
  v15 = [*(a1 + 32) containerPathIdentifier];
  v16 = [*(a1 + 32) platform];
  v17 = [*(a1 + 32) existed];
  v18 = ";E";
  if (!v17)
  {
    v18 = "";
  }

  v19 = [v22 stringWithFormat:@"<%@(%@%s)%@;u%@;p%@;pf%d%s>", v6, v7, v21, v13, v14, v15, v16, v18];;

  if (a2)
  {

    v12 = v10;
    v10 = v7;
  }

  else
  {
    v6 = v7;
  }

  return v19;
}

- (id)identityByChangingIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v15) = transient;
  LOBYTE(v15) = existed;
  v13 = [v16 initWithUUID:uuid userIdentity:userIdentity identifier:identifierCopy containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v15 transient:userIdentityCache userIdentityCache:0 error:?];

  return v13;
}

- (id)identityByChangingContainerPathIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v15) = transient;
  LOBYTE(v15) = existed;
  v13 = [v16 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:identifierCopy existed:v15 transient:userIdentityCache userIdentityCache:0 error:?];

  return v13;
}

- (id)identityByChangingTransient:(BOOL)transient
{
  v5 = objc_alloc(objc_opt_class());
  uuid = [(MCMConcreteContainerIdentity *)self uuid];
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v16) = transient;
  LOBYTE(v16) = existed;
  v14 = [v5 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v16 transient:userIdentityCache userIdentityCache:0 error:?];

  return v14;
}

- (id)identityByChangingUUID:(id)d
{
  dCopy = d;
  v16 = objc_alloc(objc_opt_class());
  userIdentity = [(MCMContainerIdentityMinimal *)self userIdentity];
  identifier = [(MCMContainerIdentityMinimal *)self identifier];
  containerConfig = [(MCMContainerIdentityMinimal *)self containerConfig];
  platform = [(MCMContainerIdentityMinimal *)self platform];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  existed = [(MCMConcreteContainerIdentityForLibsystem *)self existed];
  transient = [(MCMContainerIdentity *)self transient];
  userIdentityCache = [(MCMContainerIdentityMinimal *)self userIdentityCache];
  BYTE1(v15) = transient;
  LOBYTE(v15) = existed;
  v13 = [v16 initWithUUID:dCopy userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v15 transient:userIdentityCache userIdentityCache:0 error:?];

  return v13;
}

- (id)nontransientConcreteContainerIdentityForLibsystem
{

  return [(MCMConcreteContainerIdentityForLibsystem *)self nontransientContainerIdentity];
}

- (id)transientConcreteContainerIdentityForLibsystem
{

  return [(MCMConcreteContainerIdentityForLibsystem *)self transientContainerIdentity];
}

- (id)nontransientContainerIdentity
{
  selfCopy = self;
  if ([(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    uuid = [(MCMConcreteContainerIdentity *)selfCopy uuid];
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy containerPathIdentifier];
    existed = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy existed];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    LOWORD(v14) = existed;
    v12 = [v3 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v14 transient:userIdentityCache userIdentityCache:0 error:?];

    selfCopy = v12;
  }

  return selfCopy;
}

- (id)transientContainerIdentity
{
  selfCopy = self;
  if (![(MCMContainerIdentity *)selfCopy transient])
  {
    v3 = objc_alloc(objc_opt_class());
    uuid = [(MCMConcreteContainerIdentity *)selfCopy uuid];
    userIdentity = [(MCMContainerIdentityMinimal *)selfCopy userIdentity];
    identifier = [(MCMContainerIdentityMinimal *)selfCopy identifier];
    containerConfig = [(MCMContainerIdentityMinimal *)selfCopy containerConfig];
    platform = [(MCMContainerIdentityMinimal *)selfCopy platform];
    containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy containerPathIdentifier];
    existed = [(MCMConcreteContainerIdentityForLibsystem *)selfCopy existed];
    userIdentityCache = [(MCMContainerIdentityMinimal *)selfCopy userIdentityCache];
    BYTE1(v14) = 1;
    LOBYTE(v14) = existed;
    v12 = [v3 initWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:containerConfig platform:platform containerPathIdentifier:containerPathIdentifier existed:v14 transient:userIdentityCache userIdentityCache:0 error:?];

    selfCopy = v12;
  }

  return selfCopy;
}

- (container_object_s)createLibsystemContainerWithError:(unint64_t *)error
{
  v9 = *MEMORY[0x1E69E9840];
  containerPathIdentifier = [(MCMConcreteContainerIdentityForLibsystem *)self containerPathIdentifier];
  v8.receiver = self;
  v8.super_class = MCMConcreteContainerIdentityForLibsystem;
  v6 = [(MCMConcreteContainerIdentity *)&v8 createLibsystemContainerWithContainerPathIdentifier:containerPathIdentifier existed:[(MCMConcreteContainerIdentityForLibsystem *)self existed] error:error];

  return v6;
}

- (MCMConcreteContainerIdentityForLibsystem)initWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2
{
  v12 = *&platform;
  v30 = *MEMORY[0x1E69E9840];
  pathIdentifierCopy = pathIdentifier;
  v27 = 1;
  v26.receiver = self;
  v26.super_class = MCMConcreteContainerIdentityForLibsystem;
  v19 = [(MCMConcreteContainerIdentity *)&v26 initWithUUID:d userIdentity:identity identifier:identifier containerConfig:config platform:v12 transient:transient userIdentityCache:cache error:&v27];
  if (!v19)
  {
LABEL_9:
    v20 = 0;
    if (error)
    {
      *error = v27;
    }

    goto LABEL_11;
  }

  v20 = v19;
  v19->_existed = existed;
  objc_opt_class();
  v21 = pathIdentifierCopy;
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  containerPathIdentifier = v20->_containerPathIdentifier;
  v20->_containerPathIdentifier = v22;

  if (!v20->_containerPathIdentifier)
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Invalid object: containerPathIdentifier = [%@]", buf, 0xCu);
    }

    v27 = 11;
    goto LABEL_9;
  }

LABEL_11:

  return v20;
}

- (MCMConcreteContainerIdentityForLibsystem)initWithLibsystemContainer:(container_object_s *)container defaultUserIdentity:(id)identity userIdentityCache:(id)cache error:(unint64_t *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 1;
  v14.receiver = self;
  v14.super_class = MCMConcreteContainerIdentityForLibsystem;
  v8 = [(MCMConcreteContainerIdentity *)&v14 initWithLibsystemContainer:container defaultUserIdentity:identity userIdentityCache:cache error:&v15];
  if (!v8)
  {
LABEL_4:
    if (!error)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v9 = MEMORY[0x1E12D3240](container);
  if (v9)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
    containerPathIdentifier = v8->_containerPathIdentifier;
    v8->_containerPathIdentifier = v10;

    v8->_existed = container_is_new() ^ 1;
    goto LABEL_4;
  }

  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "container_object_t had a NULL unique path component when creating a concrete container identity", buf, 2u);
  }

  v15 = 11;
  v8 = 0;
  if (error)
  {
LABEL_5:
    if (v15 != 1)
    {
      *error = v15;
    }
  }

  return v8;
}

- (MCMConcreteContainerIdentityForLibsystem)init
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

+ (id)containerIdentityWithUUID:(id)d userIdentity:(id)identity identifier:(id)identifier containerConfig:(id)config platform:(unsigned int)platform containerPathIdentifier:(id)pathIdentifier existed:(BOOL)existed transient:(BOOL)self0 userIdentityCache:(id)self1 error:(unint64_t *)self2
{
  cacheCopy = cache;
  pathIdentifierCopy = pathIdentifier;
  configCopy = config;
  identifierCopy = identifier;
  identityCopy = identity;
  dCopy = d;
  LOWORD(v26) = __PAIR16__(transient, existed);
  v24 = [[self alloc] initWithUUID:dCopy userIdentity:identityCopy identifier:identifierCopy containerConfig:configCopy platform:platform containerPathIdentifier:pathIdentifierCopy existed:v26 transient:cacheCopy userIdentityCache:error error:?];

  return v24;
}

@end