@interface MCMDeleteManifest
+ (id)_deleteManifestsForManagedPath:(id)path userIdentityCache:(id)cache;
+ (id)_deleteManifestsFromFileURLs:(id)ls userIdentityCache:(id)cache;
+ (id)_deleteManifestsFromURL:(id)l userIdentityCache:(id)cache error:(id *)error;
+ (id)_materializeContainerIdentityFromManifestPlist:(id)plist userIdentityCache:(id)cache error:(id *)error;
+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)v1 userIdentityCache:(id)cache error:(id *)error;
+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)cache;
+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)user userIdentityCache:(id)cache;
+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)cache;
+ (id)managedPathForGlobalContainers;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache forPOSIXUser:(id)user;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeleteManifest:(id)manifest;
- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)identity userIdentityCache:(id)cache;
- (NSString)description;
- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)identity;
- (id)_urlForDeleteManifestWithContainerIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)user error:(id *)error;
- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)user error:(id *)error;
- (id)fullDescription;
- (id)initFromURL:(id)l userIdentityCache:(id)cache error:(id *)error;
- (unint64_t)hash;
- (void)setReadURL:(id)l;
@end

@implementation MCMDeleteManifest

- (void)setReadURL:(id)l
{
  p_readURL = &self->_readURL;

  objc_storeStrong(p_readURL, l);
}

- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)identity
{
  v25 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v4 = MEMORY[0x1E696AEC0];
  containerConfig = [identityCopy containerConfig];
  containerClass = [containerConfig containerClass];
  identifier = [identityCopy identifier];
  transient = [identityCopy transient];
  userIdentity = [identityCopy userIdentity];
  identifier2 = [userIdentity identifier];
  uuid = [identityCopy uuid];
  v12 = [v4 stringWithFormat:@"%llu-%@-%d-%@-%@", containerClass, identifier, transient, identifier2, uuid];

  *md = 0u;
  v24 = 0u;
  uTF8String = [v12 UTF8String];
  v14 = strlen(uTF8String);
  CC_SHA256(uTF8String, v14, md);
  v15 = 0;
  v22 = 0;
  v16 = v21 + 1;
  memset(v21, 0, sizeof(v21));
  do
  {
    v17 = md[v15];
    *(v16 - 1) = _stableFileNameForDeleteOperationPlistWithContainerIdentity__hexLookup[v17 >> 4];
    *v16 = _stableFileNameForDeleteOperationPlistWithContainerIdentity__hexLookup[v17 & 0xF];
    v16 += 2;
    ++v15;
  }

  while (v15 != 32);
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v21];
  v19 = [v18 stringByAppendingPathExtension:@"plist"];

  return v19;
}

- (id)_urlForDeleteManifestWithContainerIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [(MCMDeleteManifest *)self _stableFileNameForDeleteOperationPlistWithContainerIdentity:identityCopy];
  v6 = containermanager_copy_global_configuration();
  managedPathRegistry = [v6 managedPathRegistry];
  containermanagerDeleteOperations = [managedPathRegistry containermanagerDeleteOperations];

  v9 = containermanager_copy_global_configuration();
  containerConfig = [identityCopy containerConfig];
  v11 = [v9 isGlobalContainerClass:{objc_msgSend(containerConfig, "containerClass")}];

  if ((v11 & 1) == 0)
  {
    userIdentityCache = [(MCMDeleteManifest *)self userIdentityCache];
    userIdentity = [identityCopy userIdentity];
    posixUser = [userIdentity posixUser];
    v15 = [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];

    userIdentityCache2 = [(MCMDeleteManifest *)self userIdentityCache];
    v17 = [userIdentityCache2 managedUserPathRegistryForUserIdentity:v15];

    containermanagerUserDeleteOperations = [v17 containermanagerUserDeleteOperations];

    containermanagerDeleteOperations = containermanagerUserDeleteOperations;
  }

  v19 = [containermanagerDeleteOperations url];
  v20 = [v19 URLByAppendingPathComponent:v5 isDirectory:0];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 32), self->_userIdentityCache);
    objc_storeStrong(v5 + 2, self->_readURL);
    objc_storeStrong(v5 + 1, self->_writeURL);
    objc_storeStrong(v5 + 3, self->_concreteContainerIdentity);
  }

  return v5;
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
      v5 = [(MCMDeleteManifest *)self isEqualToDeleteManifest:equalCopy];
    }
  }

  return v5;
}

- (BOOL)isEqualToDeleteManifest:(id)manifest
{
  manifestCopy = manifest;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    readURL = [(MCMDeleteManifest *)self readURL];
    if (readURL)
    {
      readURL2 = [manifestCopy readURL];
      if (!readURL2)
      {
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    readURL3 = [(MCMDeleteManifest *)self readURL];
    if (readURL3)
    {

      if (readURL)
      {
      }

LABEL_12:
      readURL = [(MCMDeleteManifest *)self concreteContainerIdentity];
      concreteContainerIdentity = [manifestCopy concreteContainerIdentity];
      if ([readURL isEqualToContainerIdentity:concreteContainerIdentity])
      {
        readURL4 = [(MCMDeleteManifest *)self readURL];
        readURL5 = [manifestCopy readURL];
        if ([readURL4 isEqual:readURL5])
        {
          writeURL = [(MCMDeleteManifest *)self writeURL];
          writeURL2 = [manifestCopy writeURL];
          v7 = [writeURL isEqual:writeURL2];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_19;
    }

    readURL6 = [manifestCopy readURL];

    if (readURL)
    {
    }

    if (!readURL6)
    {
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v4 = [concreteContainerIdentity hash];
  readURL = [(MCMDeleteManifest *)self readURL];
  v6 = [readURL hash];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  v8 = [writeURL hash];

  return v6 ^ v4 ^ v8;
}

- (id)fullDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  readURL = [(MCMDeleteManifest *)self readURL];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v9 = [v3 stringWithFormat:@"<%@: %p readURL = [%@], writeURL = [%@], concreteContainerIdentity = %@>", v5, self, readURL, writeURL, concreteContainerIdentity];;

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  readURL = [(MCMDeleteManifest *)self readURL];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v7 = [v3 stringWithFormat:@"(from:[%@], to:[%@], %@)", readURL, writeURL, concreteContainerIdentity];

  return v7;
}

- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)user error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  readURL = [(MCMDeleteManifest *)self readURL];
  if (!readURL)
  {
    selfCopy = self;
    v10 = 0;
    v11 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v19[0] = 0;
  v8 = [userCopy fixAndRetryIfPermissionsErrorWithURL:readURL error:v19 duringBlock:&__block_literal_global_7751];
  v9 = v19[0];
  v10 = v9;
  if (v8)
  {
    goto LABEL_3;
  }

  domain = [v9 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v10 code];

    if (code == 2)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = [MCMError alloc];
  path = [readURL path];
  v11 = -[MCMError initWithErrorType:category:path:POSIXerrno:](v15, "initWithErrorType:category:path:POSIXerrno:", 122, 1, path, [v10 code]);

LABEL_11:
  selfCopy = [(MCMDeleteManifest *)self copy];
  [(MCMDeleteManifest *)selfCopy setReadURL:0];
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!selfCopy)
  {
    v17 = v11;
    *error = v11;
  }

LABEL_14:

  return selfCopy;
}

uint64_t __80__MCMDeleteManifest_deleteManifestAfterRemovingUsingLibraryRepairForUser_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeItemAtURL:v4 error:a3];

  return v6;
}

- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)user error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  userCopy = user;
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  plist = [concreteContainerIdentity plist];

  v34[0] = @"version";
  v34[1] = @"identity";
  v35[0] = &unk_1F5A76858;
  v35[1] = plist;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v10 = +[MCMFileManager defaultManager];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  v12 = [v10 dataWritingOptionsForFileAtURL:writeURL];

  writeURL2 = [(MCMDeleteManifest *)self writeURL];
  v27 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__MCMDeleteManifest_deleteManifestAfterWritingUsingLibraryRepairForUser_error___block_invoke;
  v24[3] = &unk_1E86B0690;
  v14 = v9;
  v25 = v14;
  v26 = v12;
  LOBYTE(writeURL) = [userCopy fixAndRetryIfPermissionsErrorWithURL:writeURL2 error:&v27 duringBlock:v24];

  v15 = v27;
  if (writeURL)
  {
    v16 = [(MCMDeleteManifest *)self copy];
    writeURL3 = [(MCMDeleteManifest *)self writeURL];
    [v16 setReadURL:writeURL3];
    v18 = 0;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      writeURL4 = [(MCMDeleteManifest *)self writeURL];
      *buf = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = writeURL4;
      v32 = 2112;
      v33 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, url = [%@], manifest = %@", buf, 0x20u);
    }

    v20 = [MCMError alloc];
    writeURL3 = [(MCMDeleteManifest *)self writeURL];
    v18 = [(MCMError *)v20 initWithNSError:v15 url:writeURL3 defaultErrorType:125];
    v16 = 0;
  }

  if (error && !v16)
  {
    v21 = v18;
    *error = v18;
  }

  return v16;
}

uint64_t __79__MCMDeleteManifest_deleteManifestAfterWritingUsingLibraryRepairForUser_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 MCM_writeToURL:a2 withOptions:v5 error:a3];
}

- (id)initFromURL:(id)l userIdentityCache:(id)cache error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  cacheCopy = cache;
  v22 = 0;
  v11 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:lCopy options:0 error:&v22];
  v12 = v22;
  if (v11)
  {
    v21 = 0;
    v13 = [MCMDeleteManifest _materializeContainerIdentityFromManifestPlist:v11 userIdentityCache:cacheCopy error:&v21];
    v14 = v21;
    if (v13)
    {
      v15 = [(MCMDeleteManifest *)self initWithConcreteContainerIdentity:v13 userIdentityCache:cacheCopy];
      objc_storeStrong(&v15->_readURL, l);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = path;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to parse delete manifest; error = %@, path = [%@]", buf, 0x16u);
    }

    v14 = [[MCMError alloc] initWithNSError:v12 url:lCopy defaultErrorType:123];
  }

  if (error)
  {
    v17 = v14;
    v15 = 0;
    v13 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

LABEL_10:
  v18 = v15;

  return v18;
}

- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)identity userIdentityCache:(id)cache
{
  v17 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  v16.receiver = self;
  v16.super_class = MCMDeleteManifest;
  v9 = [(MCMDeleteManifest *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concreteContainerIdentity, identity);
    objc_storeStrong(&v10->_userIdentityCache, cache);
    readURL = v10->_readURL;
    v10->_readURL = 0;

    writeURL = v10->_writeURL;
    v10->_writeURL = 0;

    v13 = [(MCMDeleteManifest *)v10 _urlForDeleteManifestWithContainerIdentity:identityCopy];
    v14 = v10->_writeURL;
    v10->_writeURL = v13;
  }

  return v10;
}

+ (id)_deleteManifestsForManagedPath:(id)path userIdentityCache:(id)cache
{
  pathCopy = path;
  cacheCopy = cache;
  if (!pathCopy || ([pathCopy url], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_deleteManifestsFromURL:userIdentityCache:error:", v8, cacheCopy, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  return v9;
}

+ (id)_deleteManifestsFromFileURLs:(id)ls userIdentityCache:(id)cache
{
  v36 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  cacheCopy = cache;
  v21 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = lsCopy;
  v25 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v25)
  {
    v23 = *v33;
    do
    {
      v6 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * v6);
        v8 = [MCMDeleteManifest alloc];
        v26 = 0;
        v9 = [(MCMDeleteManifest *)v8 initFromURL:v7 userIdentityCache:cacheCopy error:&v26];
        v10 = v26;
        v11 = v10;
        if (v9)
        {
          concreteContainerIdentity = [v9 concreteContainerIdentity];
          v13 = containermanager_copy_global_configuration();
          containerConfig = [concreteContainerIdentity containerConfig];
          containerClass = [containerConfig containerClass];
          userIdentity = [concreteContainerIdentity userIdentity];
          posixUser = [userIdentity posixUser];
          LODWORD(containerClass) = [v13 dispositionForContainerClass:containerClass forUser:posixUser];

          if (containerClass == 1)
          {
            v18 = container_log_handle_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v28 = v7;
              v29 = 2112;
              v30 = v9;
              _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Recovering from failed delete using [%@]; queuing deletion of %@", buf, 0x16u);
            }

            [v21 addObject:v9];
          }
        }

        else
        {
          if ([v10 type] == 74)
          {
            goto LABEL_15;
          }

          concreteContainerIdentity = container_log_handle_for_category();
          if (os_log_type_enabled(concreteContainerIdentity, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v11;
            v29 = 2112;
            v30 = v7;
            _os_log_error_impl(&dword_1DF2C3000, concreteContainerIdentity, OS_LOG_TYPE_ERROR, "Failed to materialize delete manifest; error = %@, url = [%@]", buf, 0x16u);
          }
        }

LABEL_15:
        ++v6;
      }

      while (v25 != v6);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v25);
  }

  v19 = [v21 copy];

  return v19;
}

+ (id)_deleteManifestsFromURL:(id)l userIdentityCache:(id)cache error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  cacheCopy = cache;
  v10 = +[MCMFileManager defaultManager];
  v21 = 0;
  v11 = [v10 urlsForItemsInDirectoryAtURL:lCopy error:&v21];
  v12 = v21;

  if (v11)
  {
    v13 = [self _deleteManifestsFromFileURLs:v11 userIdentityCache:cacheCopy];
    goto LABEL_3;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v12 code];

    if (code == 2)
    {
      v13 = 0;
LABEL_3:
      v14 = 0;
      if (!error)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    path = [lCopy path];
    *buf = 138412546;
    v23 = v12;
    v24 = 2112;
    v25 = path;
    _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Failed to get items at delete operations URL; error = %@, path = [%@]", buf, 0x16u);
  }

  v14 = [[MCMError alloc] initWithNSError:v12 url:lCopy defaultErrorType:146];
  v13 = 0;
  if (error)
  {
LABEL_12:
    if (!v13)
    {
      v18 = v14;
      *error = v14;
    }
  }

LABEL_14:

  return v13;
}

+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)v1 userIdentityCache:(id)cache error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 1;
  cacheCopy = cache;
  v8 = [v1 objectForKeyedSubscript:@"identity"];
  v9 = [MCMConcreteContainerIdentity concreteContainerIdentityFromPlist:v8 userIdentityCache:cacheCopy error:&v26];

  if (v9)
  {
    containerConfig = [v9 containerConfig];
    containerClass = [containerConfig containerClass];
    if (containerClass > 0xE || ((1 << containerClass) & 0x4ED4) == 0)
    {
    }

    else
    {
      userIdentity = [v9 userIdentity];
      posixUser = [userIdentity posixUser];
      v15 = containermanager_copy_global_configuration();
      defaultUser = [v15 defaultUser];
      v17 = [posixUser isEqual:defaultUser];

      if ((v17 & 1) == 0)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v24 = containermanager_copy_global_configuration();
          defaultUser2 = [v24 defaultUser];
          *buf = 138412546;
          v28 = defaultUser2;
          v29 = 2112;
          v30 = v9;
          _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Ignoring delete manifest because it references a different uid; current user = %@, identity = %@", buf, 0x16u);
        }

        v19 = [[MCMError alloc] initWithErrorType:74];
        goto LABEL_14;
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  v20 = [MCMError alloc];
  v21 = [(MCMError *)v20 initWithErrorType:v26];
  v19 = v21;
  if (error)
  {
    v22 = v21;
    *error = v19;
  }

LABEL_14:

  return v9;
}

+ (id)_materializeContainerIdentityFromManifestPlist:(id)plist userIdentityCache:(id)cache error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = plistCopy;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:&unk_1F5A76858];

    if (v12)
    {
      v17[0] = 0;
      v13 = [self _materializeContainerIdentityFromManifestPlistV1:v10 userIdentityCache:cacheCopy error:v17];
      v14 = v17[0];
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    v15 = v14;
    *error = v14;
  }

LABEL_10:

  return v13;
}

+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)user userIdentityCache:(id)cache
{
  cacheCopy = cache;
  v7 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy forPOSIXUser:user];
  v8 = [self _deleteManifestsForManagedPath:v7 userIdentityCache:cacheCopy];

  return v8;
}

+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)cache
{
  cacheCopy = cache;
  v5 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy];
  v6 = [self _deleteManifestsForManagedPath:v5 userIdentityCache:cacheCopy];

  return v6;
}

+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)cache
{
  cacheCopy = cache;
  managedPathForGlobalContainers = [self managedPathForGlobalContainers];
  v6 = [self _deleteManifestsForManagedPath:managedPathForGlobalContainers userIdentityCache:cacheCopy];

  return v6;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache forPOSIXUser:(id)user
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  userCopy = user;
  v7 = containermanager_copy_global_configuration();
  handlesUserContainers = [v7 handlesUserContainers];

  if (handlesUserContainers)
  {
    v9 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:userCopy];
    v10 = [cacheCopy managedUserPathRegistryForUserIdentity:v9];
    containermanagerUserDeleteOperations = [v10 containermanagerUserDeleteOperations];
    if (!containermanagerUserDeleteOperations)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = 138412290;
        v15 = userCopy;
        _os_log_fault_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_FAULT, "Failed to get user path for storing pending delete operations; posixUser = %@.", &v14, 0xCu);
      }
    }
  }

  else
  {
    containermanagerUserDeleteOperations = 0;
  }

  return containermanagerUserDeleteOperations;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache
{
  cacheCopy = cache;
  v5 = containermanager_copy_global_configuration();
  defaultUser = [v5 defaultUser];
  v7 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy forPOSIXUser:defaultUser];

  return v7;
}

+ (id)managedPathForGlobalContainers
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = containermanager_copy_global_configuration();
  handlesGlobalContainers = [v2 handlesGlobalContainers];

  if (handlesGlobalContainers)
  {
    v4 = containermanager_copy_global_configuration();
    managedPathRegistry = [v4 managedPathRegistry];
    containermanagerDeleteOperations = [managedPathRegistry containermanagerDeleteOperations];

    if (containermanagerDeleteOperations)
    {
      goto LABEL_7;
    }

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_FAULT, "Failed to get global path for storing pending delete operations.", v9, 2u);
    }
  }

  containermanagerDeleteOperations = 0;
LABEL_7:

  return containermanagerDeleteOperations;
}

@end