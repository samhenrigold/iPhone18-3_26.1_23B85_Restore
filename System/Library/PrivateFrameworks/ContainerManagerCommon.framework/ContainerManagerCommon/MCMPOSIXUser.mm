@interface MCMPOSIXUser
+ (MCMPOSIXUser)posixUserWithName:(id)name;
+ (MCMPOSIXUser)posixUserWithUID:(unsigned int)d;
+ (id)_getCachedUID:(unsigned int)d flush:(BOOL)flush onCacheMiss:(id)miss;
+ (id)_posixUserWithPWD:(container_pwd_s *)d;
+ (id)_posixUserWithUID:(unsigned int)d name:(id)name useUID:(BOOL)iD;
+ (id)currentPOSIXUser;
+ (id)nobody;
+ (id)root;
- (BOOL)isEqual:(id)equal;
- (MCMPOSIXUser)initWithUID:(unsigned int)d primaryGID:(unsigned int)iD homeDirectoryURL:(id)l unvalidatedHomeDirectoryURL:(id)rL name:(id)name roleUser:(BOOL)user;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fullDescription;
@end

@implementation MCMPOSIXUser

- (MCMPOSIXUser)initWithUID:(unsigned int)d primaryGID:(unsigned int)iD homeDirectoryURL:(id)l unvalidatedHomeDirectoryURL:(id)rL name:(id)name roleUser:(BOOL)user
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = MCMPOSIXUser;
  v18 = [(MCMPOSIXUser *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_UID = d;
    v18->_primaryGID = iD;
    objc_storeStrong(&v18->_homeDirectoryURL, l);
    objc_storeStrong(&v19->_unvalidatedHomeDirectoryURL, rL);
    objc_storeStrong(&v19->_name, name);
    v19->_root = d == 0;
    v19->_roleUser = user;
    if (rLCopy)
    {
      path = [rLCopy path];
      if ([path hasPrefix:@"/var/empty"])
      {
        v19->_useableHomeDirectory = 0;
      }

      else
      {
        path2 = [rLCopy path];
        if ([path2 hasPrefix:@"/private/var/empty"])
        {
          v19->_useableHomeDirectory = 0;
        }

        else
        {
          path3 = [rLCopy path];
          v19->_useableHomeDirectory = [path3 hasPrefix:@"/System/Volumes/Data/private/var/empty"] ^ 1;
        }
      }
    }

    else
    {
      v19->_useableHomeDirectory = 0;
    }
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 12) = self->_UID;
    *(v5 + 16) = self->_primaryGID;
    v7 = [(NSString *)self->_name copyWithZone:zone];
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;

    v9 = [(NSURL *)self->_homeDirectoryURL copyWithZone:zone];
    v10 = *(v6 + 24);
    *(v6 + 24) = v9;

    *(v6 + 8) = self->_root;
    *(v6 + 9) = self->_roleUser;
    *(v6 + 10) = self->_useableHomeDirectory;
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
      v5 = [(MCMPOSIXUser *)self isEqualToPOSIXUser:equalCopy];
    }
  }

  return v5;
}

- (id)fullDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__MCMPOSIXUser_fullDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __31__MCMPOSIXUser_fullDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(a1 + 32);
  v8 = [v7 UID];
  v9 = [*(a1 + 32) primaryGID];
  v10 = *(a1 + 32);
  if (v2)
  {
    v11 = [v10 homeDirectoryURL];
    v12 = [v11 path];
    v13 = [*(a1 + 32) name];
    v14 = [v12 stringByRedactingHomeContent:v13];
    v15 = [v4 stringWithFormat:@"<%@: %p UID = %u, primaryGID = %u, name = [%@], homeDirectoryURL = [%@]>", v6, v7, v8, v9, @"~~", v14];;
  }

  else
  {
    v11 = [v10 name];
    v12 = [*(a1 + 32) homeDirectoryURL];
    v13 = [v12 path];
    v15 = [v4 stringWithFormat:@"<%@: %p UID = %u, primaryGID = %u, name = [%@], homeDirectoryURL = [%@]>", v6, v7, v8, v9, v11, v13];;
  }

  return v15;
}

- (id)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__MCMPOSIXUser_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __27__MCMPOSIXUser_description__block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) UID];
  v6 = [*(a1 + 32) primaryGID];
  v7 = *(a1 + 32);
  if (a2)
  {
    v8 = [v7 homeDirectoryURL];
    v9 = [v8 path];
    v10 = [*(a1 + 32) name];
    v11 = [v9 stringByRedactingHomeContent:v10];
    v12 = [v4 stringWithFormat:@"(%u|%u|%@|%@)", v5, v6, @"~~", v11];
  }

  else
  {
    v8 = [v7 name];
    v9 = [*(a1 + 32) homeDirectoryURL];
    v10 = [v9 path];
    v12 = [v4 stringWithFormat:@"(%u|%u|%@|%@)", v5, v6, v8, v10];
  }

  return v12;
}

+ (id)_getCachedUID:(unsigned int)d flush:(BOOL)flush onCacheMiss:(id)miss
{
  flushCopy = flush;
  v6 = *&d;
  missCopy = miss;
  if (_getCachedUID_flush_onCacheMiss__onceToken != -1)
  {
    dispatch_once(&_getCachedUID_flush_onCacheMiss__onceToken, &__block_literal_global_14639);
  }

  v8 = _getCachedUID_flush_onCacheMiss__cache;
  objc_sync_enter(v8);
  if (flushCopy)
  {
    [_getCachedUID_flush_onCacheMiss__cache removeAllObjects];
  }

  v9 = _getCachedUID_flush_onCacheMiss__cache;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (missCopy)
  {
    if (!v11)
    {
      v11 = missCopy[2](missCopy, v6);
      if (v11)
      {
        v12 = _getCachedUID_flush_onCacheMiss__cache;
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
        [v12 setObject:v11 forKeyedSubscript:v13];
      }
    }
  }

  objc_sync_exit(v8);

  return v11;
}

uint64_t __48__MCMPOSIXUser__getCachedUID_flush_onCacheMiss___block_invoke()
{
  _getCachedUID_flush_onCacheMiss__cache = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_posixUserWithPWD:(container_pwd_s *)d
{
  v27 = *MEMORY[0x1E69E9840];
  bzero(v26, 0x401uLL);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:d->var3];
  var2 = d->var2;
  if (!var2)
  {
    v7 = 0;
    v13 = 0;
    v14 = 1;
LABEL_12:
    v16 = [[self alloc] initWithUID:d->var0 primaryGID:d->var1 homeDirectoryURL:v13 unvalidatedHomeDirectoryURL:v7 name:v5 roleUser:v14];
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:var2 isDirectory:1 relativeToURL:0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFileSystemRepresentation:d->var2];
  v9 = [v8 stringByRedactingHomeContent:v5];

  if (!container_realpath())
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
      v20 = [v19 stringByRedactingHomeContent:v5];
      v22 = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v20;
      _os_log_debug_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_DEBUG, "container_realpath([%{public}@]) → [%{public}@]", &v22, 0x16u);
    }

    v13 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v26 isDirectory:1 relativeToURL:0];
    goto LABEL_11;
  }

  v10 = *__error();
  v11 = container_log_handle_for_category();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10 == 2)
  {
    if (v12)
    {
      v22 = 138543362;
      v23 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "User home directory at [%{public}@] does not exist", &v22, 0xCu);
    }

    v13 = 0;
LABEL_11:
    v14 = [self _isRoleUserWithUID:d->var0 homeDirectoryURL:v7];

    goto LABEL_12;
  }

  if (v12)
  {
    v21 = *__error();
    v22 = 138543618;
    v23 = v9;
    v24 = 1026;
    LODWORD(v25) = v21;
    _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "container_realpath([%{public}@]) failed: %{public, darwin.errno}d", &v22, 0x12u);
  }

  v13 = 0;
  v16 = 0;
LABEL_13:
  v17 = v16;

  return v17;
}

+ (id)_posixUserWithUID:(unsigned int)d name:(id)name useUID:(BOOL)iD
{
  iDCopy = iD;
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14647;
  v22 = __Block_byref_object_dispose__14648;
  v23 = 0;
  aBlock[5] = self;
  aBlock[6] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MCMPOSIXUser__posixUserWithUID_name_useUID___block_invoke;
  aBlock[3] = &unk_1E86B1150;
  aBlock[4] = &v18;
  v9 = _Block_copy(aBlock);
  if (iDCopy)
  {
    v10 = container_pwd_for_uid();
  }

  else
  {
    v11 = nameCopy;
    [nameCopy UTF8String];
    v10 = container_pwd_for_name();
  }

  if ((v10 & 1) == 0)
  {
    v12 = container_error_copy_unlocalized_description();
    v16 = v12;
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      dCopy = d;
      v26 = 2112;
      v27 = nameCopy;
      v28 = 1026;
      v29 = iDCopy;
      v30 = 2082;
      v31 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Unable to get user (%u/[%@]/%{public}d); error = %{public}s", buf, 0x22u);
    }

    if (v12)
    {
      free(v12);
      memset_s(&v16, 8uLL, 0, 8uLL);
    }
  }

  container_error_free();
  v14 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v14;
}

uint64_t __46__MCMPOSIXUser__posixUserWithUID_name_useUID___block_invoke(uint64_t a1, __int128 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a2 + 2);
  v4 = [v3 _posixUserWithPWD:&v8];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

+ (id)root
{

  return [self posixUserWithUID:0];
}

+ (id)nobody
{

  return [self posixUserWithUID:4294967294];
}

+ (MCMPOSIXUser)posixUserWithUID:(unsigned int)d
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MCMPOSIXUser_posixUserWithUID___block_invoke;
  v7[3] = &__block_descriptor_40_e22___MCMPOSIXUser_12__0I8l;
  v7[4] = self;
  v4 = [self _getCachedUID:*&d flush:0 onCacheMiss:v7];
  if (!v4)
  {
    v5 = container_log_handle_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      dCopy = d;
      _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Could not generate posix user details for uid=%{public}u", buf, 8u);
    }
  }

  return v4;
}

id __33__MCMPOSIXUser_posixUserWithUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _posixUserWithUID:a2 name:&stru_1F5A5B2B8 useUID:1];
  if (v2)
  {
    v3 = container_log_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v2 fullDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "Created new POSIX user: %{public}@", &v6, 0xCu);
    }
  }

  return v2;
}

+ (MCMPOSIXUser)posixUserWithName:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [self _posixUserWithUID:0 name:nameCopy useUID:0];
  if (!v5)
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = nameCopy;
      _os_log_error_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_ERROR, "Could not generate posix user details for user=%{public}@", &v8, 0xCu);
    }
  }

  return v5;
}

+ (id)currentPOSIXUser
{
  v3 = geteuid();

  return [self posixUserWithUID:v3];
}

@end