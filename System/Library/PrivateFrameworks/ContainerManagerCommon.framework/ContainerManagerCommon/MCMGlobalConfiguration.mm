@interface MCMGlobalConfiguration
- (BOOL)handlesGlobalContainers;
- (BOOL)handlesUserContainers;
- (BOOL)isGlobalBundleContainerWithContainerClass:(unint64_t)class;
- (BOOL)isGlobalContainerClass:(unint64_t)class;
- (BOOL)isGlobalSystemContainerWithContainerClass:(unint64_t)class;
- (BOOL)isInternalImage;
- (BOOL)isPerUserBundleContainerWithContainerClass:(unint64_t)class;
- (BOOL)isUnsupportedBundleContainerWithContainerClass:(unint64_t)class;
- (BOOL)isUnsupportedSystemContainerWithContainerClass:(unint64_t)class;
- (BOOL)isUserBundleContainerWithContainerClass:(unint64_t)class;
- (BOOL)isUserSystemContainerWithContainerClass:(unint64_t)class;
- (MCMContainerClassPathCache)classPathCache;
- (MCMGlobalConfiguration)initWithStaticConfig:(id)config runMode:(unsigned int)mode userContainerMode:(unsigned int)containerMode bundleContainerMode:(unsigned int)bundleContainerMode bundleContainerOwner:(id)owner systemContainerMode:(unsigned int)systemContainerMode systemContainerOwner:(id)containerOwner kernelUpcallEnabled:(BOOL)self0;
- (NSURL)sharedContainersDirectory;
- (unsigned)dispositionForContainerClass:(unint64_t)class;
- (unsigned)dispositionForContainerClass:(unint64_t)class forUser:(id)user;
- (void)signpostFirstContainerClass:(unint64_t)class;
@end

@implementation MCMGlobalConfiguration

- (MCMContainerClassPathCache)classPathCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_classPathCache)
  {
    v3 = [MCMContainerClassPathCache alloc];
    v4 = +[MCMUserIdentitySharedCache sharedInstance];
    v5 = [(MCMContainerClassPathCache *)v3 initWithUserIdentityCache:v4];
    classPathCache = selfCopy->_classPathCache;
    selfCopy->_classPathCache = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_classPathCache;

  return v7;
}

- (unsigned)dispositionForContainerClass:(unint64_t)class forUser:(id)user
{
  userCopy = user;
  if (class <= 8 && ((1 << class) & 0x12A) != 0)
  {
    v7 = containermanager_copy_global_configuration();
    bundleContainerMode = [v7 bundleContainerMode];

    v9 = bundleContainerMode - 1;
  }

  else
  {
    v11 = class & 0xFFFFFFFFFFFFFFFELL;
    v12 = containermanager_copy_global_configuration();
    v13 = v12;
    if (v11 != 12)
    {
      userContainerMode = [v12 userContainerMode];

      if (userContainerMode == 2 || userContainerMode == 1 && (!userCopy || (-[MCMGlobalConfiguration defaultUser](self, "defaultUser"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [userCopy isEqual:v16], v16, v17)))
      {
        v10 = 1;
        goto LABEL_14;
      }

LABEL_13:
      v10 = 0;
      goto LABEL_14;
    }

    systemContainerMode = [v12 systemContainerMode];

    v9 = systemContainerMode - 1;
  }

  if (v9 >= 3)
  {
    goto LABEL_13;
  }

  v10 = dword_1DF3BE4C4[v9];
LABEL_14:

  return v10;
}

- (unsigned)dispositionForContainerClass:(unint64_t)class
{

  return [(MCMGlobalConfiguration *)self dispositionForContainerClass:class forUser:0];
}

- (BOOL)handlesUserContainers
{
  v2 = containermanager_copy_global_configuration();
  if ([v2 userContainerMode])
  {
    v3 = 1;
  }

  else
  {
    v4 = containermanager_copy_global_configuration();
    if ([v4 bundleContainerMode] == 2)
    {
      v3 = 1;
    }

    else
    {
      v5 = containermanager_copy_global_configuration();
      v3 = [v5 systemContainerMode] == 2;
    }
  }

  return v3;
}

- (BOOL)handlesGlobalContainers
{
  v2 = containermanager_copy_global_configuration();
  if ([v2 bundleContainerMode] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 systemContainerMode] == 1;
  }

  return v3;
}

- (BOOL)isGlobalContainerClass:(unint64_t)class
{
  if (class - 2 < 0xD && ((0x13B5u >> (class - 2)) & 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else if ([(MCMGlobalConfiguration *)self isGlobalSystemContainerWithContainerClass:class]|| (v5 = [(MCMGlobalConfiguration *)self isGlobalBundleContainerWithContainerClass:class]))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isUnsupportedBundleContainerWithContainerClass:(unint64_t)class
{
  v3 = 0;
  if (class <= 0xE && ((1 << class) & 0x412A) != 0)
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 bundleContainerMode] == 0;
  }

  return v3;
}

- (BOOL)isUserBundleContainerWithContainerClass:(unint64_t)class
{
  v3 = 0;
  if (class <= 0xE)
  {
    if (((1 << class) & 0x12A) != 0)
    {
      v4 = containermanager_copy_global_configuration();
      v3 = [v4 bundleContainerMode] == 2;
    }

    else
    {
      if (class != 14)
      {
        return v3;
      }

      v4 = containermanager_copy_global_configuration();
      v3 = [v4 bundleContainerMode] != 0;
    }
  }

  return v3;
}

- (BOOL)isPerUserBundleContainerWithContainerClass:(unint64_t)class
{
  if (class != 14)
  {
    return 0;
  }

  v3 = containermanager_copy_global_configuration();
  v4 = [v3 bundleContainerMode] != 0;

  return v4;
}

- (BOOL)isGlobalBundleContainerWithContainerClass:(unint64_t)class
{
  v3 = 0;
  if (class <= 8 && ((1 << class) & 0x12A) != 0)
  {
    v4 = containermanager_copy_global_configuration();
    v3 = [v4 bundleContainerMode] == 1;
  }

  return v3;
}

- (BOOL)isUnsupportedSystemContainerWithContainerClass:(unint64_t)class
{
  if ((class & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    return 0;
  }

  v3 = containermanager_copy_global_configuration();
  v4 = [v3 systemContainerMode] == 0;

  return v4;
}

- (BOOL)isUserSystemContainerWithContainerClass:(unint64_t)class
{
  if ((class & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    return 0;
  }

  v3 = containermanager_copy_global_configuration();
  v4 = [v3 systemContainerMode] == 2;

  return v4;
}

- (BOOL)isGlobalSystemContainerWithContainerClass:(unint64_t)class
{
  if ((class & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    return 0;
  }

  v3 = containermanager_copy_global_configuration();
  v4 = [v3 systemContainerMode] == 1;

  return v4;
}

- (BOOL)isInternalImage
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MCMGlobalConfiguration_isInternalImage__block_invoke;
  v4[3] = &unk_1E86B0E08;
  v4[4] = self;
  if (isInternalImage_onceToken != -1)
  {
    dispatch_once(&isInternalImage_onceToken, v4);
  }

  return self->_isInternalImage;
}

uint64_t __41__MCMGlobalConfiguration_isInternalImage__block_invoke(uint64_t a1)
{
  result = os_variant_has_internal_content();
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (NSURL)sharedContainersDirectory
{
  v22 = *MEMORY[0x1E69E9840];
  currentUser = [(MCMGlobalConfiguration *)self currentUser];
  isRoot = [currentUser isRoot];

  if (isRoot)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_sharedContainersDirectory)
    {
      v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/containers" isDirectory:1];
      sharedContainersDirectory = selfCopy->_sharedContainersDirectory;
      selfCopy->_sharedContainersDirectory = v6;
    }

    v8 = +[MCMFileManager defaultManager];
    v9 = selfCopy->_sharedContainersDirectory;
    v17 = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 mode:493 error:&v17];
    v11 = v17;

    if ((v10 & 1) == 0)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        path = [(NSURL *)selfCopy->_sharedContainersDirectory path];
        *buf = 138412546;
        v19 = path;
        v20 = 2112;
        v21 = v11;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to create shared container dir at %@: %@", buf, 0x16u);
      }

      v13 = selfCopy->_sharedContainersDirectory;
      selfCopy->_sharedContainersDirectory = 0;
    }

    objc_sync_exit(selfCopy);
  }

  v14 = self->_sharedContainersDirectory;

  return v14;
}

- (void)signpostFirstContainerClass:(unint64_t)class
{
  v9 = *MEMORY[0x1E69E9840];
  if (class - 1 <= 0xD)
  {
    v3 = container_class_normalized();
    os_unfair_lock_lock_with_options();
    v4 = gSignpostedFirstContainerOfClass[v3];
    gSignpostedFirstContainerOfClass[v3] = 0;
    os_unfair_lock_unlock(&gSignpostedFirstContainerOfClassLock[v3]);
    if (v4)
    {
      v5 = container_log_handle_for_category();
      v6 = v5;
      if (v4 != -1 && os_signpost_enabled(v5))
      {
        v7 = 134349056;
        v8 = v3;
        _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v6, OS_SIGNPOST_INTERVAL_END, v4, "VendFirstContainerOfClass", " class=%{public, signpost.description:attribute}llu ", &v7, 0xCu);
      }
    }
  }
}

- (MCMGlobalConfiguration)initWithStaticConfig:(id)config runMode:(unsigned int)mode userContainerMode:(unsigned int)containerMode bundleContainerMode:(unsigned int)bundleContainerMode bundleContainerOwner:(id)owner systemContainerMode:(unsigned int)systemContainerMode systemContainerOwner:(id)containerOwner kernelUpcallEnabled:(BOOL)self0
{
  v59 = *MEMORY[0x1E69E9840];
  configCopy = config;
  ownerCopy = owner;
  containerOwnerCopy = containerOwner;
  v50.receiver = self;
  v50.super_class = MCMGlobalConfiguration;
  v19 = [(MCMGlobalConfiguration *)&v50 init];
  if (!v19)
  {
LABEL_12:

    return v19;
  }

  container_class_for_each_normalized_class();
  objc_storeStrong(&v19->_staticConfig, config);
  v20 = [[MCMContainerClassIterator alloc] initWithStaticConfig:configCopy];
  classIterator = v19->_classIterator;
  v19->_classIterator = v20;

  v19->_runmode = mode;
  v19->_userContainerMode = containerMode;
  v19->_bundleContainerMode = bundleContainerMode;
  objc_storeStrong(&v19->_bundleContainerOwner, owner);
  v19->_systemContainerMode = systemContainerMode;
  objc_storeStrong(&v19->_systemContainerOwner, containerOwner);
  defaultUser = [configCopy defaultUser];
  v23 = defaultUser;
  if (defaultUser)
  {
    v24 = defaultUser;
  }

  else
  {
    v24 = +[MCMPOSIXUser currentPOSIXUser];
  }

  defaultUser = v19->_defaultUser;
  v19->_defaultUser = v24;

  v26 = +[MCMPOSIXUser currentPOSIXUser];
  currentUser = v19->_currentUser;
  v19->_currentUser = v26;

  v19->_kernelUpcallEnabled = enabled;
  homeDirectoryURL = [(MCMPOSIXUser *)v19->_currentUser homeDirectoryURL];
  homeDirectory = v19->_homeDirectory;
  v19->_homeDirectory = homeDirectoryURL;

  if (v19->_homeDirectory)
  {
    v30 = [[MCMManagedPathRegistry alloc] initWithDaemonUser:v19->_currentUser privileged:mode == 0];
    managedPathRegistry = v19->_managedPathRegistry;
    v19->_managedPathRegistry = v30;

    v32 = [MCMLibraryRepair alloc];
    v33 = v19->_managedPathRegistry;
    v34 = +[MCMFileManager defaultManager];
    v35 = [(MCMLibraryRepair *)v32 initWithManagedPathRegistry:v33 fileManager:v34 classIterator:v19->_classIterator];
    libraryRepair = v19->_libraryRepair;
    v19->_libraryRepair = v35;

    current_identifier = container_codesign_get_current_identifier();
    if (current_identifier)
    {
      v38 = current_identifier;
    }

    else
    {
      v38 = "unknown";
    }

    v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v38, ownerCopy}];
    csIdentifier = v19->_csIdentifier;
    v19->_csIdentifier = v39;

    v41 = container_log_handle_for_category();
    ownerCopy = v48;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v43 = v19->_defaultUser;
      v44 = v19->_currentUser;
      bundleContainerOwner = v19->_bundleContainerOwner;
      v46 = v19->_homeDirectory;
      *buf = 138413058;
      v52 = v43;
      v53 = 2112;
      v54 = v44;
      v55 = 2112;
      v56 = bundleContainerOwner;
      v57 = 2112;
      v58 = v46;
      _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Default user: %@, current user: %@, bundle owner: %@, home dir: [%@]", buf, 0x2Au);
    }

    goto LABEL_12;
  }

  v47 = container_log_handle_for_category();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_ERROR, "could not get home directory...aborting\n", buf, 2u);
  }

  result = _os_crash();
  __break(1u);
  return result;
}

void __175__MCMGlobalConfiguration_initWithStaticConfig_runMode_userContainerMode_bundleContainerMode_bundleContainerOwner_systemContainerMode_systemContainerOwner_kernelUpcallEnabled___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  v4 = os_signpost_id_make_with_pointer(v3, &gSignpostedFirstContainerOfClass[a2]);

  v5 = container_log_handle_for_category();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VendFirstContainerOfClass", "", v7, 2u);
  }

  gSignpostedFirstContainerOfClass[a2] = v4;
  gSignpostedFirstContainerOfClassLock[a2] = 0;
}

@end