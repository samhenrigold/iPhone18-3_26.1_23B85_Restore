@interface MCMContainerClassPath
+ (BOOL)_inLibraryRepairBlock_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error;
+ (id)_baseURLForUserIdentity:(id)identity;
+ (id)_baseURLForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)_categoryComponentForContainerClass:(unint64_t)class;
+ (id)_classComponentForContainerClass:(unint64_t)class;
+ (id)containerPathForContainerIdentity:(id)identity;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)containerPathTypeClasses;
+ (id)posixOwnerForContainerClass:(unint64_t)class user:(id)user;
- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error;
- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2;
- (BOOL)createIfNecessaryWithError:(id *)error;
- (BOOL)exists;
- (BOOL)isCaseSensitive;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerClassPath:(id)path;
- (BOOL)supportsDataProtection;
- (MCMContainerClassPath)initWithBaseURL:(id)l categoryComponent:(id)component classComponent:(id)classComponent containerClass:(unint64_t)class POSIXOwner:(id)owner POSIXMode:(unsigned __int16)mode userIdentity:(id)identity;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)setExists:(BOOL)exists;
@end

@implementation MCMContainerClassPath

- (unint64_t)hash
{
  baseURL = [(MCMContainerClassPath *)self baseURL];
  v4 = [baseURL hash];
  categoryComponent = [(MCMContainerClassPath *)self categoryComponent];
  v6 = [categoryComponent hash];
  classComponent = [(MCMContainerClassPath *)self classComponent];
  v8 = [classComponent hash];
  userIdentity = [(MCMContainerClassPath *)self userIdentity];
  identifier = [userIdentity identifier];
  v11 = [identifier hash];

  return v6 ^ v4 ^ v8 ^ v11;
}

- (BOOL)isCaseSensitive
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_classURLCreated)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "[MCMContainerClassPath isCaseSensitive]";
      _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%{public}s called before createIfNecessaryWithError:, result may not be valid", buf, 0xCu);
    }
  }

  if (!self->_caseSensitiveDetermined)
  {
    v4 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)self classURL];
    v10 = 0;
    v6 = [v4 checkFileSystemAtURL:classURL isCaseSensitive:&self->_caseSensitive canAtomicSwap:0 error:&v10];
    v7 = v10;

    if (v6)
    {
      self->_caseSensitiveDetermined = 1;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not determine case sensitivity: %@", buf, 0xCu);
      }
    }
  }

  return self->_caseSensitive;
}

- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  necessaryCopy = necessary;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  v17 = [v16 libraryRepairForUserIdentity:self->_userIdentity];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95__MCMContainerClassPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_error___block_invoke;
  v20[3] = &unk_1E86B0F68;
  modeCopy = mode;
  v20[4] = self;
  v21 = ownerCopy;
  classCopy = class;
  quarantineCopy = quarantine;
  v18 = ownerCopy;
  LOBYTE(error) = [v17 fixAndRetryIfPermissionsErrorWithURL:necessaryCopy containerPath:0 containerIdentifier:0 error:error duringBlock:v20];

  return error;
}

uint64_t __95__MCMContainerClassPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_opt_class() _inLibraryRepairBlock_createURLIfNecessary:v5 mode:*(a1 + 52) owner:*(a1 + 40) dataProtectionClass:*(a1 + 48) quarantine:*(a1 + 54) exists:0 error:a3];

  return v6;
}

- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2
{
  result = 0;
  if (_obj1 && obj2)
  {
    result = [_obj1 isEqual:obj2];
  }

  if (!(_obj1 | obj2))
  {
    return 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 32), self->_baseURL);
    objc_storeStrong((v5 + 80), self->_categoryComponent);
    objc_storeStrong((v5 + 88), self->_classComponent);
    objc_storeStrong((v5 + 40), self->_categoryURL);
    objc_storeStrong((v5 + 48), self->_classURL);
    *(v5 + 72) = self->_containerClass;
    *(v5 + 8) = self->_caseSensitive;
    *(v5 + 10) = self->_supportsDataProtection;
    *(v5 + 24) = self->_exists;
    objc_storeStrong((v5 + 56), self->_posixOwner);
    *(v5 + 26) = self->_posixMode;
    objc_storeStrong((v5 + 64), self->_userIdentity);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMContainerClassPath *)self isEqualToContainerClassPath:v5];
  }

  return v6;
}

- (BOOL)isEqualToContainerClassPath:(id)path
{
  pathCopy = path;
  v5 = [(MCMContainerClassPath *)self _obj1:self->_baseURL isEqualToObj2:pathCopy[4]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryComponent isEqualToObj2:pathCopy[10]]&& [(MCMContainerClassPath *)self _obj1:self->_classComponent isEqualToObj2:pathCopy[11]]&& [(MCMContainerClassPath *)self _obj1:self->_categoryURL isEqualToObj2:pathCopy[5]]&& [(MCMContainerClassPath *)self _obj1:self->_classURL isEqualToObj2:pathCopy[6]]&& [(MCMContainerClassPath *)self _obj1:self->_userIdentity isEqualToObj2:pathCopy[8]];

  return v5;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MCMContainerClassPath_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __36__MCMContainerClassPath_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v21 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v22 = NSStringFromClass(v4);
  v5 = *(a1 + 32);
  v6 = [v5 userIdentity];
  v7 = [v6 personaUniqueString];
  v8 = [*(a1 + 32) baseURL];
  v9 = [v8 path];
  v10 = v9;
  v11 = v9;
  if (v2)
  {
    v11 = [v9 redactedDescription];
  }

  v12 = [*(a1 + 32) categoryComponent];
  v13 = [*(a1 + 32) classComponent];
  v14 = v13;
  v15 = *(a1 + 32);
  v16 = "";
  if (v15[12])
  {
    v17 = " created";
  }

  else
  {
    v17 = "";
  }

  if (v15[9] == 1)
  {
    if (v15[8])
    {
      v16 = " case-sensitive";
    }

    else
    {
      v16 = " case-insensitive";
    }
  }

  if (v15[11] == 1)
  {
    if (v15[10])
    {
      v18 = " dp-enabled";
    }

    else
    {
      v18 = " dp-disabled";
    }
  }

  else
  {
    v18 = "";
  }

  v19 = [v21 stringWithFormat:@"<%@: %p persona [%@]; [%@]/[%@]/[%@]%s%s%s>", v22, v5, v7, v11, v12, v13, v17, v16, v18];;

  if (v2)
  {
  }

  return v19;
}

- (MCMContainerClassPath)initWithBaseURL:(id)l categoryComponent:(id)component classComponent:(id)classComponent containerClass:(unint64_t)class POSIXOwner:(id)owner POSIXMode:(unsigned __int16)mode userIdentity:(id)identity
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  componentCopy = component;
  classComponentCopy = classComponent;
  ownerCopy = owner;
  identityCopy = identity;
  v39.receiver = self;
  v39.super_class = MCMContainerClassPath;
  v18 = [(MCMContainerClassPath *)&v39 init];
  v19 = v18;
  if (v18)
  {
    *&v18->_classURLCreated = 0;
    *&v18->_caseSensitive = 0;
    objc_storeStrong(&v18->_userIdentity, identity);
    objc_storeStrong(&v19->_baseURL, l);
    objc_storeStrong(&v19->_categoryComponent, component);
    objc_storeStrong(&v19->_classComponent, classComponent);
    v19->_containerClass = class;
    objc_storeStrong(&v19->_posixOwner, owner);
    v19->_posixMode = mode;
    if (v19->_baseURL)
    {
      if (v19->_userIdentity)
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 isUnsupportedBundleContainerWithContainerClass:class];

        if (v21)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            classCopy2 = class;
            v23 = "Attempted to create a class path with an unsupported bundle class: %{public}llu";
LABEL_23:
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
          }
        }

        else
        {
          v25 = containermanager_copy_global_configuration();
          v26 = [v25 isUnsupportedSystemContainerWithContainerClass:class];

          if (!v26)
          {
            objc_storeStrong(&v19->_categoryURL, v19->_baseURL);
            categoryComponent = v19->_categoryComponent;
            if (categoryComponent)
            {
              v30 = [(NSURL *)v19->_categoryURL URLByAppendingPathComponent:categoryComponent isDirectory:1];
              categoryURL = v19->_categoryURL;
              v19->_categoryURL = v30;
            }

            objc_storeStrong(&v19->_classURL, v19->_categoryURL);
            classComponent = v19->_classComponent;
            if (classComponent)
            {
              v33 = [(NSURL *)v19->_classURL URLByAppendingPathComponent:classComponent isDirectory:1];
              classURL = v19->_classURL;
              v19->_classURL = v33;
            }

            homeDirectoryURL = [identityCopy homeDirectoryURL];
            homeDirectoryURL = v19->_homeDirectoryURL;
            v19->_homeDirectoryURL = homeDirectoryURL;
            goto LABEL_15;
          }

          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            classCopy2 = class;
            v23 = "Attempted to create a class path with an unsupported system class: %{public}llu";
            goto LABEL_23;
          }
        }

LABEL_14:

        homeDirectoryURL = v19;
        v19 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v22 = container_log_handle_for_category();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v24 = "Attempted to create a class path with no userIdentity.";
    }

    else
    {
      v22 = container_log_handle_for_category();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v24 = "Attempted to create a class path with no baseURL.";
    }

    _os_log_fault_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_FAULT, v24, buf, 2u);
    goto LABEL_14;
  }

LABEL_16:

  return v19;
}

- (void)setExists:(BOOL)exists
{
  obj = self;
  objc_sync_enter(obj);
  if (exists)
  {
    v4 = 1;
    v5 = obj;
  }

  else
  {
    v4 = 0;
    v5 = obj;
    obj->_caseSensitiveDetermined = 0;
    obj->_supportsDataProtectionDetermined = 0;
  }

  v5->_exists = v4;
  v5->_classURLCreated = v4;
  objc_sync_exit(v5);
}

- (BOOL)exists
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_classURLCreated)
  {
    v3 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)selfCopy classURL];
    selfCopy->_exists = [v3 itemExistsAtURL:classURL];
  }

  exists = selfCopy->_exists;
  objc_sync_exit(selfCopy);

  return exists;
}

- (BOOL)supportsDataProtection
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_classURLCreated)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v12 = "[MCMContainerClassPath supportsDataProtection]";
      _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "%{public}s called before createIfNecessaryWithError:, result may not be valid", buf, 0xCu);
    }
  }

  if (!self->_supportsDataProtectionDetermined)
  {
    v4 = +[MCMFileManager defaultManager];
    classURL = [(MCMContainerClassPath *)self classURL];
    v10 = 0;
    v6 = [v4 checkFileSystemAtURL:classURL supportsPerFileKeys:&self->_supportsDataProtection error:&v10];
    v7 = v10;

    if (v6)
    {
      self->_supportsDataProtectionDetermined = 1;
    }

    else
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Could not determine dp support: %@", buf, 0xCu);
      }
    }
  }

  return self->_supportsDataProtection;
}

- (BOOL)createIfNecessaryWithError:(id *)error
{
  if (self->_classURLCreated)
  {
    return 1;
  }

  else
  {
    classURL = [(MCMContainerClassPath *)self classURL];
    posixMode = [(MCMContainerClassPath *)self posixMode];
    posixOwner = [(MCMContainerClassPath *)self posixOwner];
    self->_classURLCreated = [(MCMContainerClassPath *)self _createURLIfNecessary:classURL mode:posixMode owner:posixOwner dataProtectionClass:0xFFFFFFFFLL quarantine:0 error:error];

    return self->_classURLCreated;
  }
}

+ (id)_baseURLForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v15 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 isGlobalContainerClass:class];

  if (v8)
  {
    v9 = containermanager_copy_global_configuration();
    sharedContainersDirectory = [v9 sharedContainersDirectory];
  }

  else if (identityCopy)
  {
    sharedContainersDirectory = [self _baseURLForUserIdentity:identityCopy];
  }

  else
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = 134217984;
      classCopy = class;
      _os_log_fault_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", &v13, 0xCu);
    }

    sharedContainersDirectory = 0;
  }

  return sharedContainersDirectory;
}

+ (id)_baseURLForUserIdentity:(id)identity
{
  v12 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  homeDirectoryURL = [identityCopy homeDirectoryURL];
  if (!homeDirectoryURL)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315394;
      v9 = "+[MCMContainerClassPath _baseURLForUserIdentity:]";
      v10 = 2112;
      v11 = identityCopy;
      _os_log_fault_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_FAULT, "%s: User identity has a nil home directory; userIdentity = %@", &v8, 0x16u);
    }
  }

  v6 = [homeDirectoryURL URLByAppendingPathComponent:@"Containers" isDirectory:1];

  return v6;
}

+ (id)_classComponentForContainerClass:(unint64_t)class
{
  if (class - 1 > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E86B1018[class - 1];
  }
}

+ (id)_categoryComponentForContainerClass:(unint64_t)class
{
  if (class - 1 > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E86B0FA8[class - 1];
  }
}

+ (BOOL)_inLibraryRepairBlock_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error
{
  quarantineCopy = quarantine;
  v11 = *&class;
  modeCopy = mode;
  v41 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  ownerCopy = owner;
  v16 = +[MCMFileManager defaultManager];
  v36 = 0;
  v35 = 0;
  v17 = [v16 itemAtURL:necessaryCopy exists:&v36 error:&v35];
  v18 = v35;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
    v21 = container_log_handle_for_category();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    path = [necessaryCopy path];
    *buf = 138412546;
    v38 = path;
    v39 = 2112;
    v40 = v19;
    v31 = "Failed to determine if dir at [%@] exists: %@";
    goto LABEL_23;
  }

  if (!v36)
  {

    v34 = 0;
    v23 = [v16 createDirectoryAtURL:necessaryCopy withIntermediateDirectories:1 mode:modeCopy owner:ownerCopy dataProtectionClass:v11 error:&v34];
    v19 = v34;
    if (v23 && quarantineCopy)
    {
      v24 = containermanager_copy_global_configuration();
      csIdentifier = [v24 csIdentifier];
      v33 = v19;
      v26 = [v16 quarantineURL:necessaryCopy identifier:csIdentifier error:&v33];
      v27 = v33;

      if (v26)
      {
        v19 = v27;
        goto LABEL_3;
      }

      v29 = container_log_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        path2 = [necessaryCopy path];
        *buf = 138412546;
        v38 = path2;
        v39 = 2112;
        v40 = v27;
        _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Failed to quarantine dir at [%@]: %@", buf, 0x16u);
      }

      v19 = v27;
    }

    else if (v23)
    {
      goto LABEL_3;
    }

    v21 = container_log_handle_for_category();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      if (error)
      {
        v22 = v19;
        v20 = 0;
        *error = v19;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_14;
    }

    path = [necessaryCopy path];
    *buf = 138412546;
    v38 = path;
    v39 = 2112;
    v40 = v19;
    v31 = "Failed to create dir at [%@]: %@";
LABEL_23:
    _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);

    goto LABEL_7;
  }

LABEL_3:
  if (exists)
  {
    *exists = v36;
  }

  v20 = 1;
LABEL_14:

  return v20;
}

+ (id)posixOwnerForContainerClass:(unint64_t)class user:(id)user
{
  userCopy = user;
  if (class <= 0xE && ((1 << class) & 0x412A) != 0 && (v6 = containermanager_copy_global_configuration(), v7 = [v6 isUnsupportedBundleContainerWithContainerClass:class], v6, (v7 & 1) == 0))
  {
    v11 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v11 bundleContainerOwner];
  }

  else
  {
    if (class & 0xFFFFFFFFFFFFFFFELL) != 0xC || (v8 = containermanager_copy_global_configuration(), v9 = [v8 isUnsupportedSystemContainerWithContainerClass:class], v8, (v9))
    {
      v10 = userCopy;
      goto LABEL_10;
    }

    v11 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v11 systemContainerOwner];
  }

  v10 = bundleContainerOwner;

LABEL_10:

  return v10;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  identityCopy = identity;
  v7 = [self _baseURLForUserIdentity:identityCopy containerClass:class];
  v8 = [self _categoryComponentForContainerClass:class];
  v9 = [self _classComponentForContainerClass:class];
  posixUser = [identityCopy posixUser];
  v11 = [self posixOwnerForContainerClass:class user:posixUser];

  v12 = [[self alloc] initWithBaseURL:v7 categoryComponent:v8 classComponent:v9 containerClass:class POSIXOwner:v11 POSIXMode:objc_msgSend(self userIdentity:{"_modeForContainerClass:", class), identityCopy}];

  return v12;
}

+ (id)containerPathForContainerIdentity:(id)identity
{
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];

  v7 = [self containerPathForUserIdentity:userIdentity containerClass:containerClass];

  return v7;
}

+ (id)containerPathTypeClasses
{
  if (containerPathTypeClasses_onceToken != -1)
  {
    dispatch_once(&containerPathTypeClasses_onceToken, &__block_literal_global_13899);
  }

  v2 = containerPathTypeClasses_typeClasses;

  return v2;
}

void __49__MCMContainerClassPath_containerPathTypeClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v3 = containerPathTypeClasses_typeClasses;
  containerPathTypeClasses_typeClasses = v2;
}

@end