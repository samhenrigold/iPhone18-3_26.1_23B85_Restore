@interface MCMContainerClassDeletedPath
+ (id)_posixOwnerForDeletedPathForContainerClass:(unint64_t)class user:(id)user;
+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class;
+ (id)deletedGlobalURL;
+ (id)deletedURLWithUserIdentity:(id)identity;
@end

@implementation MCMContainerClassDeletedPath

+ (id)_posixOwnerForDeletedPathForContainerClass:(unint64_t)class user:(id)user
{
  userCopy = user;
  v6 = containermanager_copy_global_configuration();
  LODWORD(class) = [v6 isGlobalContainerClass:class];

  if (class)
  {
    v7 = containermanager_copy_global_configuration();
    currentUser = [v7 currentUser];
  }

  else
  {
    currentUser = userCopy;
  }

  return currentUser;
}

+ (id)deletedURLWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = +[MCMUserIdentitySharedCache sharedInstance];
  v5 = [v4 libraryRepairForUserIdentity:identityCopy];

  userRegistry = [v5 userRegistry];
  containermanagerUserDeathrow = [userRegistry containermanagerUserDeathrow];

  v8 = [containermanagerUserDeathrow url];

  return v8;
}

+ (id)deletedGlobalURL
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  managedPathRegistry = [v3 managedPathRegistry];
  containermanagerDeathrow = [managedPathRegistry containermanagerDeathrow];

  if (!containermanagerDeathrow)
  {
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = containermanager_copy_global_configuration();
  libraryRepair = [v6 libraryRepair];
  v8 = [containermanagerDeathrow url];
  v15[4] = self;
  v16 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__MCMContainerClassDeletedPath_deletedGlobalURL__block_invoke;
  v15[3] = &__block_descriptor_40_e19_B24__0__NSURL_8__16l;
  v9 = [libraryRepair fixAndRetryIfPermissionsErrorWithURL:v8 error:&v16 duringBlock:v15];
  v10 = v16;

  if (!v9)
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v18 = containermanagerDeathrow;
      v19 = 2114;
      v20 = v10;
      _os_log_fault_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_FAULT, "Failed to create deathrow at %@: %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v11 = [containermanagerDeathrow url];
LABEL_9:
  v13 = v11;

  return v11;
}

uint64_t __48__MCMContainerClassDeletedPath_deletedGlobalURL__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 currentUser];
  v8 = [v4 _inLibraryRepairBlock_createURLIfNecessary:v5 mode:493 owner:v7 dataProtectionClass:0xFFFFFFFFLL quarantine:0 exists:0 error:a3];

  return v8;
}

+ (id)containerPathForUserIdentity:(id)identity containerClass:(unint64_t)class
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  posixUser = [identityCopy posixUser];
  v8 = [self _posixOwnerForDeletedPathForContainerClass:class user:posixUser];

  v9 = [self _modeForContainerClass:class];
  v10 = containermanager_copy_global_configuration();
  v11 = [v10 isGlobalContainerClass:class];

  if (v11)
  {
    deletedGlobalURL = [self deletedGlobalURL];
LABEL_5:
    v13 = deletedGlobalURL;
    goto LABEL_6;
  }

  if (identityCopy)
  {
    deletedGlobalURL = [self deletedURLWithUserIdentity:identityCopy];
    goto LABEL_5;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    classCopy = class;
    _os_log_fault_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_FAULT, "Container class [%llu] requires a user identity.", buf, 0xCu);
  }

  v13 = 0;
LABEL_6:
  v14 = [[self alloc] initWithBaseURL:v13 categoryComponent:0 classComponent:0 containerClass:class POSIXOwner:v8 POSIXMode:v9 userIdentity:identityCopy];

  return v14;
}

@end