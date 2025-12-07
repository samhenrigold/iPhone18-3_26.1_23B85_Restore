@interface MCMContainerPath
+ (Class)_containerClassPathClass;
+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)subdirectories user:(id)user;
+ (id)containerPathForContainerClassPath:(id)path containerPathIdentifier:(id)identifier;
+ (id)containerPathForContainerIdentity:(id)identity containerPathIdentifier:(id)identifier;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier;
+ (id)containerPathFromURL:(id)l containerClassPath:(id)path relativePath:(id *)relativePath;
+ (id)containerPathIdentifierForCodeSignIdentifier:(id)identifier containerClass:(unint64_t)class;
- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error;
- (BOOL)_obj1:(id)_obj1 isEqualToObj2:(id)obj2;
- (BOOL)createDataURLIfNecessaryWithDataProtectionClass:(int)class error:(id *)error;
- (BOOL)createIfNecessaryWithDataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerPath:(id)path;
- (BOOL)isRandomized;
- (MCMContainerPath)initWithContainerClassPath:(id)path containerPathIdentifier:(id)identifier containerRootComponent:(id)component containerDataComponent:(id)dataComponent;
- (MCMUserIdentity)userIdentity;
- (NSString)description;
- (NSURL)baseURL;
- (NSURL)categoryURL;
- (NSURL)classURL;
- (NSURL)containerDataURL;
- (NSURL)containerRootURL;
- (NSURL)metadataURL;
- (id)containerPathForRealPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlForPart:(unint64_t)part partDomain:(id)domain error:(id *)error;
- (unint64_t)containerClass;
- (unint64_t)hash;
@end

@implementation MCMContainerPath

- (NSURL)containerRootURL
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  classURL = [containerClassPath classURL];
  containerRootComponent = [(MCMContainerPath *)self containerRootComponent];
  v6 = [classURL URLByAppendingPathComponent:containerRootComponent isDirectory:1];

  return v6;
}

- (NSURL)metadataURL
{
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  v3 = [containerRootURL URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];

  return v3;
}

- (NSURL)containerDataURL
{
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  containerDataComponent = [(MCMContainerPath *)self containerDataComponent];

  if (containerDataComponent)
  {
    containerDataComponent2 = [(MCMContainerPath *)self containerDataComponent];
    v6 = [containerRootURL URLByAppendingPathComponent:containerDataComponent2 isDirectory:1];

    containerRootURL = v6;
  }

  return containerRootURL;
}

- (MCMUserIdentity)userIdentity
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  userIdentity = [containerClassPath userIdentity];

  return userIdentity;
}

- (unint64_t)containerClass
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  containerClass = [containerClassPath containerClass];

  return containerClass;
}

- (BOOL)_createURLIfNecessary:(id)necessary mode:(unsigned __int16)mode owner:(id)owner dataProtectionClass:(int)class quarantine:(BOOL)quarantine exists:(BOOL *)exists error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  ownerCopy = owner;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v16 = +[MCMUserIdentitySharedCache sharedInstance];
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  v19 = [v16 libraryRepairForUserIdentity:userIdentity];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __97__MCMContainerPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_exists_error___block_invoke;
  v25[3] = &unk_1E86B0A48;
  v25[4] = self;
  modeCopy = mode;
  v20 = ownerCopy;
  classCopy = class;
  quarantineCopy = quarantine;
  v26 = v20;
  v27 = &v31;
  v21 = [v19 fixAndRetryIfPermissionsErrorWithURL:necessaryCopy containerPath:self containerIdentifier:0 error:error duringBlock:v25];
  v22 = v21 ^ 1;
  if (!exists)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    *exists = *(v32 + 24);
  }

  _Block_object_dispose(&v31, 8);
  return v21;
}

uint64_t __97__MCMContainerPath__createURLIfNecessary_mode_owner_dataProtectionClass_quarantine_exists_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 containerClassPath];
  v8 = [objc_opt_class() _inLibraryRepairBlock_createURLIfNecessary:v6 mode:*(a1 + 60) owner:*(a1 + 40) dataProtectionClass:*(a1 + 56) quarantine:*(a1 + 62) exists:*(*(a1 + 48) + 8) + 24 error:a3];

  return v8;
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

- (BOOL)isRandomized
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  containerPathIdentifier = [(MCMContainerPath *)self containerPathIdentifier];
  v5 = [v3 initWithUUIDString:containerPathIdentifier];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 24), self->_containerClassPath);
    v7 = [(NSString *)self->_containerRootComponent copyWithZone:zone];
    v8 = *(v6 + 56);
    *(v6 + 56) = v7;

    v9 = [(NSString *)self->_containerDataComponent copyWithZone:zone];
    v10 = *(v6 + 64);
    *(v6 + 64) = v9;

    v11 = [(NSString *)self->_containerPathIdentifier copyWithZone:zone];
    v12 = *(v6 + 16);
    *(v6 + 16) = v11;

    *(v6 + 10) = self->_rootPOSIXMode;
    *(v6 + 12) = self->_dataPOSIXMode;
    *(v6 + 14) = self->_schemaPOSIXMode;
    objc_storeStrong((v6 + 32), self->_rootPOSIXOwner);
    objc_storeStrong((v6 + 40), self->_dataPOSIXOwner);
    objc_storeStrong((v6 + 48), self->_schemaPOSIXOwner);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMContainerPath *)self isEqualToContainerPath:equalCopy];
    }
  }

  return v5;
}

- (BOOL)isEqualToContainerPath:(id)path
{
  pathCopy = path;
  v5 = [(MCMContainerPath *)self _obj1:self->_containerClassPath isEqualToObj2:pathCopy[3]]&& [(MCMContainerPath *)self _obj1:self->_containerRootComponent isEqualToObj2:pathCopy[7]]&& [(MCMContainerPath *)self _obj1:self->_containerDataComponent isEqualToObj2:pathCopy[8]];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(MCMContainerClassPath *)self->_containerClassPath hash];
  v4 = [(NSString *)self->_containerRootComponent hash];
  return v4 ^ v3 ^ [(NSString *)self->_containerDataComponent hash];
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__MCMContainerPath_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __31__MCMContainerPath_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 32);
  v9 = [v8 containerClassPath];
  v10 = v9;
  if (v3)
  {
    v11 = [v9 redactedDescription];
    v2 = [*(a1 + 32) containerRootComponent];
    v12 = [v2 redactedDescription];
  }

  else
  {
    v12 = [*(a1 + 32) containerRootComponent];
    v11 = v10;
  }

  v13 = [*(a1 + 32) containerDataComponent];
  v14 = [*(a1 + 32) exists];
  v15 = "";
  if (v14)
  {
    v15 = " exists";
  }

  v16 = [v5 stringWithFormat:@"<%@: %p [%@]/[%@]/[%@]%s>", v7, v8, v11, v12, v13, v15];;

  if (v3)
  {

    v12 = v11;
  }

  return v16;
}

- (MCMContainerPath)initWithContainerClassPath:(id)path containerPathIdentifier:(id)identifier containerRootComponent:(id)component containerDataComponent:(id)dataComponent
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  componentCopy = component;
  dataComponentCopy = dataComponent;
  v29.receiver = self;
  v29.super_class = MCMContainerPath;
  v15 = [(MCMContainerPath *)&v29 init];
  v16 = v15;
  if (v15)
  {
    v15->_exists = 0;
    containerClass = [pathCopy containerClass];
    objc_storeStrong(&v16->_containerClassPath, path);
    objc_storeStrong(&v16->_containerPathIdentifier, identifier);
    objc_storeStrong(&v16->_containerRootComponent, component);
    objc_storeStrong(&v16->_containerDataComponent, dataComponent);
    if (v16->_containerClassPath && v16->_containerRootComponent)
    {
      v16->_rootPOSIXMode = [pathCopy posixMode];
      v16->_dataPOSIXMode = [pathCopy posixMode];
      v16->_schemaPOSIXMode = 493;
      if ((containerClass & 0xFFFFFFFFFFFFFFFELL) == 0xC)
      {
        v18 = containermanager_copy_global_configuration();
        systemContainerMode = [v18 systemContainerMode];

        if (systemContainerMode == 1)
        {
          v16->_schemaPOSIXMode = 0;
        }
      }

      posixOwner = [pathCopy posixOwner];
      rootPOSIXOwner = v16->_rootPOSIXOwner;
      v16->_rootPOSIXOwner = posixOwner;

      posixOwner2 = [pathCopy posixOwner];
      dataPOSIXOwner = v16->_dataPOSIXOwner;
      v16->_dataPOSIXOwner = posixOwner2;

      v24 = objc_opt_class();
      posixOwner3 = [pathCopy posixOwner];
      v26 = [v24 _posixOwnerForContainerSubdirectories:containerClass user:posixOwner3];
      schemaPOSIXOwner = v16->_schemaPOSIXOwner;
      v16->_schemaPOSIXOwner = v26;
    }

    else
    {
      posixOwner3 = v16;
      v16 = 0;
    }
  }

  return v16;
}

- (NSURL)classURL
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  classURL = [containerClassPath classURL];

  return classURL;
}

- (NSURL)categoryURL
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  categoryURL = [containerClassPath categoryURL];

  return categoryURL;
}

- (NSURL)baseURL
{
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  baseURL = [containerClassPath baseURL];

  return baseURL;
}

- (id)urlForPart:(unint64_t)part partDomain:(id)domain error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  if (part - 2 < 5)
  {
    [(MCMContainerPath *)self containerClass];
    [domainCopy fileSystemRepresentation];
    v9 = container_paths_copy_part_subpath();
    __s = v9;
    if (v9)
    {
      v10 = v9;
      containerDataURL = [(MCMContainerPath *)self containerDataURL];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
      containerDataURL2 = [containerDataURL URLByAppendingPathComponent:v12 isDirectory:1];

      free(v10);
      memset_s(&__s, 8uLL, 0, 8uLL);
      goto LABEL_15;
    }

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = gContainerPartNames[part];
      v19 = gContainerClassNames[[(MCMContainerPath *)self containerClass]];
      *buf = 138412546;
      partCopy = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Container part [%@] not supported by containers of class [%@]", buf, 0x16u);
    }

LABEL_12:
    v16 = [[MCMError alloc] initWithErrorType:38 category:3];
    containerDataURL2 = 0;
    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (part)
  {
    if (part == 1)
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      partCopy = part;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Invalid container part [%llu]", buf, 0xCu);
    }

    goto LABEL_12;
  }

  containerDataURL2 = [(MCMContainerPath *)self containerDataURL];
LABEL_15:
  v16 = 0;
  if (error)
  {
LABEL_16:
    if (!containerDataURL2)
    {
      v16 = v16;
      *error = v16;
    }
  }

LABEL_18:

  return containerDataURL2;
}

+ (id)_posixOwnerForContainerSubdirectories:(unint64_t)subdirectories user:(id)user
{
  userCopy = user;
  v6 = userCopy;
  if (subdirectories <= 0xE && ((1 << subdirectories) & 0x412A) != 0)
  {
    v7 = containermanager_copy_global_configuration();
    bundleContainerOwner = [v7 bundleContainerOwner];
LABEL_4:
    v9 = bundleContainerOwner;

    goto LABEL_5;
  }

  if ((subdirectories & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v11 = containermanager_copy_global_configuration();
    systemContainerMode = [v11 systemContainerMode];

    if (systemContainerMode != 1)
    {
      v7 = containermanager_copy_global_configuration();
      bundleContainerOwner = [v7 systemContainerOwner];
      goto LABEL_4;
    }

    v13 = +[MCMPOSIXUser nobody];
  }

  else
  {
    v13 = userCopy;
  }

  v9 = v13;
LABEL_5:

  return v9;
}

+ (Class)_containerClassPathClass
{

  return objc_opt_class();
}

+ (id)containerPathFromURL:(id)l containerClassPath:(id)path relativePath:(id *)relativePath
{
  pathCopy = path;
  lCopy = l;
  classURL = [pathCopy classURL];
  path = [classURL path];

  pathComponents = [path pathComponents];
  path2 = [lCopy path];

  pathComponents2 = [path2 pathComponents];

  v15 = [pathComponents count];
  if (v15 >= [pathComponents2 count])
  {
    firstObject = 0;
    v22 = 0;
  }

  else
  {
    v16 = [pathComponents count];
    v17 = [pathComponents2 count];
    v18 = v17 - v16;
    v19 = [pathComponents2 subarrayWithRange:{v16, v17 - v16}];

    firstObject = [v19 firstObject];
    [pathCopy containerClass];
    if (container_class_supports_data_subdirectory())
    {
      v21 = @"Data";
    }

    else
    {
      v21 = 0;
    }

    v22 = [[self alloc] initWithContainerClassPath:pathCopy containerPathIdentifier:firstObject containerRootComponent:firstObject containerDataComponent:v21];
    if (relativePath)
    {
      pathComponents2 = [v19 subarrayWithRange:{1, v18 - 1}];

      *relativePath = [pathComponents2 componentsJoinedByString:@"/"];
    }

    else
    {
      pathComponents2 = v19;
    }
  }

  v23 = v22;

  return v22;
}

+ (id)containerPathIdentifierForCodeSignIdentifier:(id)identifier containerClass:(unint64_t)class
{
  identifierCopy = identifier;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 fsSanitizedStringFromString:identifierCopy allowSpaces:class == 7];

  return v7;
}

+ (id)containerPathForContainerClassPath:(id)path containerPathIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  [pathCopy containerClass];
  v7 = container_class_supports_data_subdirectory();
  v8 = objc_opt_class();
  if (([pathCopy isMemberOfClass:{+[MCMContainerStagingPath _containerClassPathClass](MCMContainerStagingPath, "_containerClassPathClass")}] & 1) != 0 || objc_msgSend(pathCopy, "isMemberOfClass:", +[MCMContainerTransientPath _containerClassPathClass](MCMContainerTransientPath, "_containerClassPathClass")))
  {
    v8 = objc_opt_class();
  }

  if (v7)
  {
    v9 = @"Data";
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_msgSend(v8 "alloc")];

  return v10;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class containerPathIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  v10 = containermanager_copy_global_configuration();
  staticConfig = [v10 staticConfig];
  v12 = [staticConfig configForContainerClass:class];

  v13 = containermanager_copy_global_configuration();
  classPathCache = [v13 classPathCache];
  v15 = [classPathCache containerClassPathForUserIdentity:identityCopy containerConfig:v12 typeClass:{objc_msgSend(self, "_containerClassPathClass")}];

  v16 = [self containerPathForContainerClassPath:v15 containerPathIdentifier:identifierCopy];

  return v16;
}

+ (id)containerPathForContainerIdentity:(id)identity containerPathIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  userIdentity = [identityCopy userIdentity];
  containerClass = [identityCopy containerClass];

  v10 = [self containerPathForUserIdentity:userIdentity containerClass:containerClass containerPathIdentifier:identifierCopy];

  return v10;
}

- (id)containerPathForRealPath
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[MCMFileManager defaultManager];
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  v15 = 0;
  v5 = [v3 realPathForURL:containerRootURL isDirectory:1 error:&v15];
  v6 = v15;

  if (v5)
  {
    v7 = objc_alloc(objc_opt_class());
    containerClassPath = [(MCMContainerPath *)self containerClassPath];
    lastPathComponent = [v5 lastPathComponent];
    lastPathComponent2 = [v5 lastPathComponent];
    containerDataComponent = [(MCMContainerPath *)self containerDataComponent];
    v12 = [v7 initWithContainerClassPath:containerClassPath containerPathIdentifier:lastPathComponent containerRootComponent:lastPathComponent2 containerDataComponent:containerDataComponent];
  }

  else
  {
    containerClassPath = container_log_handle_for_category();
    if (os_log_type_enabled(containerClassPath, OS_LOG_TYPE_ERROR))
    {
      containerRootURL2 = [0 containerRootURL];
      *buf = 138412546;
      v17 = containerRootURL2;
      v18 = 2112;
      v19 = v6;
      _os_log_error_impl(&dword_1DF2C3000, containerClassPath, OS_LOG_TYPE_ERROR, "Could not get realpath for [%@]; error = %@", buf, 0x16u);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)createDataURLIfNecessaryWithDataProtectionClass:(int)class error:(id *)error
{
  v5 = *&class;
  v17[1] = *MEMORY[0x1E69E9840];
  containerRootURL = [(MCMContainerPath *)self containerRootURL];
  containerDataURL = [(MCMContainerPath *)self containerDataURL];
  v9 = [containerRootURL isEqual:containerDataURL];

  if (v9)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    containerDataURL2 = [(MCMContainerPath *)self containerDataURL];
    dataPOSIXMode = [(MCMContainerPath *)self dataPOSIXMode];
    dataPOSIXOwner = [(MCMContainerPath *)self dataPOSIXOwner];
    v17[0] = 0;
    v11 = [(MCMContainerPath *)self _createURLIfNecessary:containerDataURL2 mode:dataPOSIXMode owner:dataPOSIXOwner dataProtectionClass:v5 quarantine:0 exists:0 error:v17];
    v10 = v17[0];

    if (error && !v11)
    {
      v15 = v10;
      v11 = 0;
      *error = v10;
    }
  }

  return v11;
}

- (BOOL)createIfNecessaryWithDataProtectionClass:(int)class quarantine:(BOOL)quarantine error:(id *)error
{
  quarantineCopy = quarantine;
  v7 = *&class;
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0;
  containerClassPath = [(MCMContainerPath *)self containerClassPath];
  v22 = 0;
  v10 = [containerClassPath createIfNecessaryWithError:&v22];
  v11 = v22;

  if (v10)
  {
    containerRootURL = [(MCMContainerPath *)self containerRootURL];
    rootPOSIXMode = [(MCMContainerPath *)self rootPOSIXMode];
    rootPOSIXOwner = [(MCMContainerPath *)self rootPOSIXOwner];
    v21 = v11;
    LODWORD(rootPOSIXMode) = [(MCMContainerPath *)self _createURLIfNecessary:containerRootURL mode:rootPOSIXMode owner:rootPOSIXOwner dataProtectionClass:v7 quarantine:quarantineCopy exists:&v23 error:&v21];
    v15 = v21;

    if (rootPOSIXMode)
    {
      v20 = v15;
      v16 = [(MCMContainerPath *)self createDataURLIfNecessaryWithDataProtectionClass:v7 error:&v20];
      v11 = v20;

      if (v16)
      {
        [(MCMContainerPath *)self setExists:v23];
        v17 = 1;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = v15;
    }
  }

  if (error)
  {
    v18 = v11;
    v17 = 0;
    *error = v11;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:

  return v17;
}

@end