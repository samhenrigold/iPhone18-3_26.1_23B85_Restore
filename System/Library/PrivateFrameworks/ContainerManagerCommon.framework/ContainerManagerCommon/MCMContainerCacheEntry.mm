@interface MCMContainerCacheEntry
+ (id)UUIDForFileHandle:(id)handle;
+ (id)UUIDForURL:(id)l;
+ (id)_fileHandleForURL:(id)l writeable:(BOOL)writeable;
+ (id)identifierForFileHandle:(id)handle;
+ (id)identifierForURL:(id)l;
+ (id)schemaVersionForFileHandle:(id)handle;
+ (id)schemaVersionForURL:(id)l;
+ (timespec)birthtimeForFileHandle:(id)handle;
+ (timespec)birthtimeForURL:(id)l;
+ (void)clearAttributesForFileHandle:(id)handle;
+ (void)clearAttributesForURL:(id)l;
+ (void)setBirthtime:(timespec)birthtime forFileHandle:(id)handle;
+ (void)setBirthtime:(timespec)birthtime forURL:(id)l;
+ (void)setIdentifier:(id)identifier forFileHandle:(id)handle;
+ (void)setIdentifier:(id)identifier forURL:(id)l;
+ (void)setSchemaVersion:(id)version forFileHandle:(id)handle;
+ (void)setSchemaVersion:(id)version forURL:(id)l;
+ (void)setUUID:(id)d forFileHandle:(id)handle;
+ (void)setUUID:(id)d forURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContainerCacheEntry:(id)entry;
- (BOOL)verifyWithError:(id *)error;
- (MCMContainerCacheEntry)initWithIdentifier:(id)identifier containerPath:(id)path schemaVersion:(id)version uuid:(id)uuid metadata:(id)metadata userIdentityCache:(id)cache;
- (MCMContainerCacheEntry)initWithMetadata:(id)metadata userIdentityCache:(id)cache;
- (MCMContainerCacheUpdatable)cache;
- (NSString)description;
- (id)_fabricateMetadataForContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache;
- (id)_findUserManagedAssetsDirectoryAtContainerRootURL:(id)l;
- (id)_identifierForContainerPath:(id)path;
- (id)_metadataFromContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache;
- (id)_readMetadataForIdentifier:(id)identifier containerPath:(id)path error:(id *)error;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fsNodeWithError:(id *)error;
- (id)fullDescription;
- (id)initFromContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache;
- (id)metadataMinimal;
- (id)metadataWithError:(id *)error;
- (timespec)birthtimeWithError:(id *)error;
- (unint64_t)hash;
- (void)setCache:(id)cache;
- (void)setContainerPath:(id)path;
- (void)setFsNode:(id)node;
- (void)setNext:(id)next;
- (void)setSchemaVersion:(id)version;
- (void)setUuid:(id)uuid;
- (void)setXattrs;
- (void)setXattrsWithFileHandle:(id)handle;
@end

@implementation MCMContainerCacheEntry

- (id)metadataMinimal
{
  containerIdentity = [(MCMContainerCacheEntry *)self containerIdentity];
  v4 = [MCMMetadataMinimal alloc];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  schemaVersion = [(MCMContainerCacheEntry *)self schemaVersion];
  userIdentityCache = [(MCMContainerCacheEntry *)self userIdentityCache];
  v8 = [(MCMMetadataMinimal *)v4 initWithContainerIdentity:containerIdentity containerPath:containerPath schemaVersion:schemaVersion userIdentityCache:userIdentityCache];

  return v8;
}

- (id)containerIdentity
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 1;
  v3 = containermanager_copy_global_configuration();
  staticConfig = [v3 staticConfig];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  v18 = [staticConfig configForContainerClass:{objc_msgSend(containerPath, "containerClass")}];

  uuid = [(MCMContainerCacheEntry *)self uuid];
  containerPath2 = [(MCMContainerCacheEntry *)self containerPath];
  userIdentity = [containerPath2 userIdentity];
  identifier = [(MCMContainerCacheEntry *)self identifier];
  containerPath3 = [(MCMContainerCacheEntry *)self containerPath];
  containerPathIdentifier = [containerPath3 containerPathIdentifier];
  cache = [(MCMContainerCacheEntry *)self cache];
  containerPath4 = [(MCMContainerCacheEntry *)self containerPath];
  transient = [containerPath4 transient];
  userIdentityCache = [(MCMContainerCacheEntry *)self userIdentityCache];
  BYTE1(v16) = transient;
  LOBYTE(v16) = cache != 0;
  v14 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:uuid userIdentity:userIdentity identifier:identifier containerConfig:v18 platform:0 containerPathIdentifier:containerPathIdentifier existed:v16 transient:userIdentityCache userIdentityCache:v20 error:?];

  return v14;
}

- (MCMContainerCacheUpdatable)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

- (void)setFsNode:(id)node
{
  p_fsNode = &self->_fsNode;

  objc_storeStrong(p_fsNode, node);
}

- (void)setCache:(id)cache
{
  p_cache = &self->_cache;

  objc_storeWeak(p_cache, cache);
}

- (void)setNext:(id)next
{
  p_next = &self->_next;

  objc_storeStrong(p_next, next);
}

- (void)setUuid:(id)uuid
{
  p_uuid = &self->_uuid;

  objc_storeStrong(p_uuid, uuid);
}

- (void)setSchemaVersion:(id)version
{
  p_schemaVersion = &self->_schemaVersion;

  objc_storeStrong(p_schemaVersion, version);
}

- (void)setContainerPath:(id)path
{
  p_containerPath = &self->_containerPath;

  objc_storeStrong(p_containerPath, path);
}

- (id)_metadataFromContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache
{
  cacheCopy = cache;
  versionCopy = version;
  uuidCopy = uuid;
  identifierCopy = identifier;
  containerPathForRealPath = [path containerPathForRealPath];
  v17 = [(MCMContainerCacheEntry *)self _fabricateMetadataForContainerPath:containerPathForRealPath identifier:identifierCopy uuid:uuidCopy schemaVersion:versionCopy userIdentityCache:cacheCopy];

  return v17;
}

- (id)_findUserManagedAssetsDirectoryAtContainerRootURL:(id)l
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v4 = +[MCMFileManager defaultManager];
  v24 = 0;
  v21 = lCopy;
  v5 = [v4 urlsForItemsInDirectoryAtURL:lCopy error:&v24];
  v6 = v24;

  if (!v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412546;
      v31 = path;
      v32 = 2112;
      v33 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Couldn't read container contents when reconstructing metadata; path = [%@], error = %@", buf, 0x16u);
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);

        lastPathComponent = [v13 lastPathComponent];
        if ([lastPathComponent hasPrefix:@"com.apple.UserManagedAssets."])
        {
          v23 = 0;
          v15 = +[MCMFileManager defaultManager];
          v22 = 0;
          v16 = [v15 itemAtURL:v13 exists:&v23 isDirectory:&v23 + 1 error:&v22];
          v6 = v22;

          if (v16)
          {
            if (HIBYTE(v23) == 1 && v23 == 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              path2 = [v21 path];
              *buf = 138412546;
              v31 = path2;
              v32 = 2112;
              v33 = v6;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Couldn't stat container contents when reconstructing metadata; path = [%@], error = %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v6 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v10);
  }

  lastPathComponent = 0;
LABEL_22:

  return lastPathComponent;
}

- (id)_identifierForContainerPath:(id)path
{
  pathCopy = path;
  containerClass = [pathCopy containerClass];
  containerRootURL = [pathCopy containerRootURL];
  v6 = [MCMContainerCacheEntry identifierForURL:containerRootURL];

  if (!v6)
  {
    if ((containerClass & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
      v6 = 0;
      goto LABEL_10;
    }

    containerPathIdentifier = [pathCopy containerPathIdentifier];
    v8 = +[MCMEntitlementBypassList sharedBypassList];
    v9 = v8;
    if (containerClass == 13)
    {
      v10 = [v8 systemGroupContainerIdIsWellknown:containerPathIdentifier];

      if ((v10 & 1) == 0)
      {
LABEL_5:
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = [v8 systemContainerIdIsWellknown:containerPathIdentifier];

      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v6 = containerPathIdentifier;
    goto LABEL_9;
  }

LABEL_10:

  return v6;
}

- (id)_fabricateMetadataForContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache
{
  v58 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  uuidCopy = uuid;
  versionCopy = version;
  cacheCopy = cache;
  containerClass = [pathCopy containerClass];
  containerRootURL = [pathCopy containerRootURL];
  containerPathIdentifier = [pathCopy containerPathIdentifier];
  userIdentity = [pathCopy userIdentity];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = containermanager_copy_global_configuration();
  staticConfig = [v19 staticConfig];
  v41 = containerClass;
  v45 = [staticConfig configForContainerClass:containerClass];

  v21 = container_log_handle_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v51 = containerRootURL;
    v52 = 2112;
    v53 = identifierCopy;
    v54 = 2112;
    v55 = uuidCopy;
    v56 = 2112;
    v57 = versionCopy;
    _os_log_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEFAULT, "Attempting to recover from corrupt metadata for [%@]; identifier = %@, uuid = %@, schemaVersion = %@", buf, 0x2Au);
  }

  v43 = cacheCopy;
  v44 = containerRootURL;
  if (!identifierCopy)
  {
    identifierCopy = [(MCMContainerCacheEntry *)self _identifierForContainerPath:pathCopy];
    if (!identifierCopy)
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = containerRootURL;
        _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Unable to recover from corrupt metadata for [%@], no identifier", buf, 0xCu);
      }

      identifierCopy = 0;
      goto LABEL_25;
    }
  }

  if (uuidCopy)
  {
    if (versionCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v30 = [MCMContainerCacheEntry UUIDForURL:containerRootURL];
    v31 = v30;
    if (v30)
    {
      uUID = v30;
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
    }

    uuidCopy = uUID;

    if (versionCopy)
    {
      goto LABEL_7;
    }
  }

  v37 = [MCMContainerCacheEntry schemaVersionForURL:containerRootURL];
  v38 = v37;
  v39 = &unk_1F5A76FA8;
  if (v37)
  {
    v39 = v37;
  }

  versionCopy = v39;

LABEL_7:
  v49 = 1;
  BYTE1(v40) = isKindOfClass & 1;
  LOBYTE(v40) = 1;
  v22 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:uuidCopy userIdentity:userIdentity identifier:identifierCopy containerConfig:v45 platform:0 containerPathIdentifier:containerPathIdentifier existed:v40 transient:cacheCopy userIdentityCache:&v49 error:?];
  if (!v22)
  {
    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      error_description = container_get_error_description();
      *buf = 138412546;
      v51 = containerRootURL;
      v52 = 2080;
      v53 = error_description;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Unable to generate identity for [%@]: error = %s", buf, 0x16u);
    }

LABEL_25:
    v25 = 0;
    v23 = 0;
    v26 = 0;
    v28 = 0;
    v24 = pathCopy;
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [MCMContainerPath containerPathForContainerIdentity:v22 containerPathIdentifier:containerPathIdentifier];

  if (v24)
  {
    v25 = [(MCMContainerCacheEntry *)self _findUserManagedAssetsDirectoryAtContainerRootURL:v44];
    v26 = [[MCMMetadata alloc] initWithContainerIdentity:v23 info:0 containerPath:v24 userManagedAssetsDirName:v25 schemaVersion:versionCopy dataProtectionClass:0xFFFFFFFFLL creator:0 userIdentityCache:cacheCopy];
    v48 = 0;
    v27 = [(MCMMetadata *)v26 writeMetadataToDiskWithError:&v48];
    v28 = v48;
    if (v27)
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v51 = containerPathIdentifier;
        v52 = 2112;
        v53 = identifierCopy;
        v54 = 2048;
        v55 = v41;
        _os_log_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_DEFAULT, "Fabricated metadata for [%@:%@(%llu)]", buf, 0x20u);
      }
    }

    else
    {
      v34 = container_log_handle_for_category();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v51 = containerPathIdentifier;
        v52 = 2048;
        v53 = v41;
        v54 = 2112;
        v55 = v28;
        _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Unable to write generated metadata for [%@(%llu)]: error = %@", buf, 0x20u);
      }

      p_super = &v26->super.super;
      v26 = 0;
    }
  }

  else
  {
    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v51 = v23;
      v52 = 2112;
      v53 = containerPathIdentifier;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Could not construct containerPath; identity = %@, containerPathIdentifier = %@", buf, 0x16u);
    }

    v25 = 0;
    v26 = 0;
    v28 = 0;
    v24 = 0;
  }

LABEL_26:

  v35 = v26;
  return v26;
}

- (id)_readMetadataForIdentifier:(id)identifier containerPath:(id)path error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  containerClassPath = [pathCopy containerClassPath];
  containerClass = [containerClassPath containerClass];
  userIdentity = [containerClassPath userIdentity];
  v11 = [MCMMetadata alloc];
  userIdentityCache = [(MCMContainerCacheEntry *)self userIdentityCache];
  v18 = 0;
  v13 = [(MCMMetadataMinimal *)v11 initByReadingAndValidatingMetadataAtContainerPath:pathCopy userIdentity:userIdentity containerClass:containerClass userIdentityCache:userIdentityCache error:&v18];
  v14 = v18;

  if (!v13)
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = pathCopy;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not read metadata at [%@]: %@", buf, 0x16u);
    }

    if (error)
    {
      v16 = v14;
      *error = v14;
    }
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 80), self->_userIdentityCache);
    objc_storeStrong((v5 + 16), self->_identifier);
    objc_storeStrong((v5 + 24), self->_containerPath);
    objc_storeStrong((v5 + 32), self->_schemaVersion);
    objc_storeStrong((v5 + 40), self->_uuid);
    *(v5 + 8) = self->_corrupt;
    *(v5 + 9) = self->_ignore;
    objc_storeWeak((v5 + 64), 0);
    objc_storeStrong((v5 + 88), self->_fmForNode);
    *(v5 + 56) = self->_generation;
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
      v5 = [(MCMContainerCacheEntry *)self isEqualToContainerCacheEntry:equalCopy];
    }
  }

  return v5;
}

- (BOOL)isEqualToContainerCacheEntry:(id)entry
{
  entryCopy = entry;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = entryCopy;
    fsNode = [(MCMContainerCacheEntry *)self fsNode];
    if (!fsNode)
    {
      fsNode2 = [v5 fsNode];
      if (fsNode2)
      {
        identifier = fsNode2;
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    fsNode3 = [(MCMContainerCacheEntry *)self fsNode];
    if (fsNode3)
    {
      v8 = fsNode3;
      fsNode4 = [v5 fsNode];

      if (fsNode)
      {

        if (!fsNode4)
        {
          goto LABEL_19;
        }
      }

      else if (!fsNode4)
      {
        goto LABEL_19;
      }
    }

    else if (fsNode)
    {
    }

    fsNode5 = [(MCMContainerCacheEntry *)self fsNode];
    if (!fsNode5 || (v14 = fsNode5, -[MCMContainerCacheEntry fsNode](self, "fsNode"), v15 = objc_claimAutoreleasedReturnValue(), [v5 fsNode], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v14, v17))
    {
      identifier = [(MCMContainerCacheEntry *)self identifier];
      identifier2 = [v5 identifier];
      if ([identifier isEqualToString:identifier2])
      {
        containerPath = [(MCMContainerCacheEntry *)self containerPath];
        containerPath2 = [v5 containerPath];
        if ([containerPath isEqual:containerPath2] && (v21 = -[MCMContainerCacheEntry corrupt](self, "corrupt"), v21 == objc_msgSend(v5, "corrupt")))
        {
          schemaVersion = [(MCMContainerCacheEntry *)self schemaVersion];
          schemaVersion2 = [v5 schemaVersion];
          if ([schemaVersion isEqualToNumber:schemaVersion2])
          {
            uuid = [(MCMContainerCacheEntry *)self uuid];
            uuid2 = [v5 uuid];
            v10 = [uuid isEqual:uuid2];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_27;
    }

LABEL_19:
    v10 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (unint64_t)hash
{
  identifier = [(MCMContainerCacheEntry *)self identifier];
  v4 = [identifier hash];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  containerRootURL = [containerPath containerRootURL];
  v7 = [containerRootURL hash];

  return v7 ^ v4;
}

- (id)fullDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(MCMContainerCacheEntry *)self identifier];
  generation = [(MCMContainerCacheEntry *)self generation];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  schemaVersion = [(MCMContainerCacheEntry *)self schemaVersion];
  uuid = [(MCMContainerCacheEntry *)self uuid];
  fsNode = [(MCMContainerCacheEntry *)self fsNode];
  if ([(MCMContainerCacheEntry *)self corrupt])
  {
    v11 = ", CORRUPT";
  }

  else
  {
    v11 = "";
  }

  ignore = [(MCMContainerCacheEntry *)self ignore];
  v13 = ", IGNORED";
  if (!ignore)
  {
    v13 = "";
  }

  v14 = [v16 stringWithFormat:@"<%@: %p identifier = %@, generation = %llu, containerPath = %@, schemaVersion = %@, uuid = %@, fsNode = %@%s%s>", v4, self, identifier, generation, containerPath, schemaVersion, uuid, fsNode, v11, v13];;

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(MCMContainerCacheEntry *)self identifier];
  generation = [(MCMContainerCacheEntry *)self generation];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  schemaVersion = [(MCMContainerCacheEntry *)self schemaVersion];
  uuid = [(MCMContainerCacheEntry *)self uuid];
  fsNode = [(MCMContainerCacheEntry *)self fsNode];
  if ([(MCMContainerCacheEntry *)self corrupt])
  {
    v10 = "|CORRUPT";
  }

  else
  {
    v10 = "";
  }

  ignore = [(MCMContainerCacheEntry *)self ignore];
  v12 = "|IGNORED";
  if (!ignore)
  {
    v12 = "";
  }

  v13 = [v3 stringWithFormat:@"(%@|%llu|%@|%@|%@|%@%s%s)", identifier, generation, containerPath, schemaVersion, uuid, fsNode, v10, v12];

  return v13;
}

- (timespec)birthtimeWithError:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  containerRootURL = [containerPath containerRootURL];

  v7 = [MCMContainerCacheEntry birthtimeForURL:containerRootURL];
  if (v7 | v8)
  {
    birthtime = v7;
    v13 = v8;
    v10 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v18[0] = 0;
  v9 = [(MCMContainerCacheEntry *)self fsNodeWithError:v18];
  v10 = v18[0];
  if (v9)
  {
    birthtime = [v9 birthtime];
    v13 = v12;
  }

  else
  {
    v13 = 0;
    birthtime = 0;
  }

  if (error)
  {
LABEL_8:
    if (birthtime)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (v14)
    {
      v15 = v10;
      *error = v10;
    }
  }

LABEL_14:

  v16 = birthtime;
  v17 = v13;
  result.tv_nsec = v17;
  result.tv_sec = v16;
  return result;
}

- (id)fsNodeWithError:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  containerRootURL = [containerPath containerRootURL];

  fmForNode = [(MCMContainerCacheEntry *)self fmForNode];
  v11[0] = 0;
  v8 = [fmForNode fsNodeOfURL:containerRootURL followSymlinks:0 error:v11];
  v9 = v11[0];

  if (error && !v8)
  {
    *error = [[MCMError alloc] initWithNSError:v9 url:containerRootURL defaultErrorType:127];
  }

  return v8;
}

- (BOOL)verifyWithError:(id *)error
{
  v110 = *MEMORY[0x1E69E9840];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  identifier = [(MCMContainerCacheEntry *)self identifier];
  containerClassPath = [containerPath containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  userIdentityCache = [(MCMContainerCacheEntry *)self userIdentityCache];
  v84 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x3032000000;
  v99 = __Block_byref_object_copy__14908;
  v100 = __Block_byref_object_dispose__14909;
  v101 = 0;
  v7 = +[MCMFileManager defaultManager];
  metadataURL = [containerPath metadataURL];
  v95 = 0;
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __42__MCMContainerCacheEntry_verifyWithError___block_invoke;
  v91[3] = &unk_1E86B11B8;
  v82 = v7;
  v92 = v82;
  v93 = &v102;
  v94 = &v96;
  LOBYTE(v7) = [v84 fixAndRetryIfPermissionsErrorWithURL:metadataURL containerPath:containerPath containerIdentifier:identifier error:&v95 duringBlock:v91];
  v9 = v95;

  if ((v7 & 1) == 0)
  {
    v39 = [MCMError alloc];
    metadataURL2 = [containerPath metadataURL];
    v41 = [(MCMError *)v39 initWithNSError:v9 url:metadataURL2 defaultErrorType:12];

    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy9 = self;
      v108 = 2112;
      v109 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, failed to check; cacheEntry = %@, error = %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (v103[3])
  {
    fsNode = [(MCMContainerCacheEntry *)self fsNode];

    if (!fsNode)
    {
      goto LABEL_7;
    }

    fsNode2 = [(MCMContainerCacheEntry *)self fsNode];
    v12 = [fsNode2 isEqual:v97[5]];

    if (v12)
    {
      fsNode3 = [(MCMContainerCacheEntry *)self fsNode];
      ctime = [fsNode3 ctime];
      if (ctime == [v97[5] ctime])
      {
        fsNode4 = [(MCMContainerCacheEntry *)self fsNode];
        [fsNode4 ctime];
        v17 = v16;
        [v97[5] ctime];
        LOBYTE(v17) = v17 == v18;

        if (v17)
        {
LABEL_7:
          v19 = objc_opt_class();
          containerPath2 = [(MCMContainerCacheEntry *)self containerPath];
          containerRootURL = [containerPath2 containerRootURL];
          v22 = [v19 identifierForURL:containerRootURL];

          if (v22 && ([identifier MCM_isEqualToString:v22 caseSensitive:{objc_msgSend(containerClassPath, "isCaseSensitive")}] & 1) == 0)
          {
            v42 = container_log_handle_for_category();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              selfCopy9 = self;
              v108 = 2112;
              v109 = v22;
              _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, identifier doesn't match; cacheEntry = %@, current identifier = %@", buf, 0x16u);
            }

            v26 = 0;
          }

          else
          {
            v23 = objc_opt_class();
            containerPath3 = [(MCMContainerCacheEntry *)self containerPath];
            containerRootURL2 = [containerPath3 containerRootURL];
            v26 = [v23 UUIDForURL:containerRootURL2];

            if (!v26 || (-[MCMContainerCacheEntry uuid](self, "uuid"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqual:v26], v27, (v28 & 1) != 0))
            {
              v29 = objc_opt_class();
              containerPath4 = [(MCMContainerCacheEntry *)self containerPath];
              containerRootURL3 = [containerPath4 containerRootURL];
              v32 = [v29 schemaVersionForURL:containerRootURL3];

              if (!v32 || (-[MCMContainerCacheEntry schemaVersion](self, "schemaVersion"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isEqual:v32], v33, (v34 & 1) != 0))
              {
                containerPath5 = [(MCMContainerCacheEntry *)self containerPath];
                containerRootURL4 = [containerPath5 containerRootURL];
                containerPath6 = [(MCMContainerCacheEntry *)self containerPath];
                containerDataURL = [containerPath6 containerDataURL];
                v75 = [containerRootURL4 isEqual:containerDataURL];

                if (v75)
                {
                  v38 = v9;
LABEL_59:
                  [(MCMContainerCacheEntry *)self setFsNode:v97[5]];
                  v41 = 0;
                  v67 = 1;
                  goto LABEL_55;
                }

                v89 = 0;
                containerPath7 = [(MCMContainerCacheEntry *)self containerPath];
                containerDataURL2 = [containerPath7 containerDataURL];
                v87 = v9;
                v88 = 0;
                v79 = [v82 itemAtURL:containerDataURL2 followSymlinks:0 exists:&v89 isDirectory:0 fsNode:&v88 error:&v87];
                v76 = containerPath7;
                v42 = v88;
                v38 = v87;

                if (v79)
                {
                  if (v89 != 1 || [v42 isDirectory]&& ![v42 isSymlink])
                  {

                    goto LABEL_59;
                  }

                  v62 = [MCMError alloc];
                  containerPath8 = [(MCMContainerCacheEntry *)self containerPath];
                  containerDataURL3 = [containerPath8 containerDataURL];
                  path = [containerDataURL3 path];
                  v41 = [(MCMError *)v62 initWithErrorType:163 category:1 path:path POSIXerrno:0];

                  v64 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_57;
                  }

                  *buf = 138412546;
                  selfCopy9 = self;
                  v108 = 2112;
                  v109 = v42;
                  v65 = "Cache entry failed verification, Data subdirectory doesn't target expectation; cacheEntry = %@, node = %@";
                }

                else
                {
                  v71 = [MCMError alloc];
                  containerPath9 = [(MCMContainerCacheEntry *)self containerPath];
                  containerDataURL4 = [containerPath9 containerDataURL];
                  v41 = [(MCMError *)v71 initWithNSError:v38 url:containerDataURL4 defaultErrorType:105];

                  v64 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
LABEL_57:

                    v9 = v38;
                    goto LABEL_52;
                  }

                  *buf = 138412546;
                  selfCopy9 = self;
                  v108 = 2112;
                  v109 = v38;
                  v65 = "Cache entry failed verification, could not stat Data subdirectory; cacheEntry = %@, error = [%@]";
                }

                _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, v65, buf, 0x16u);
                goto LABEL_57;
              }

              v42 = container_log_handle_for_category();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                selfCopy9 = self;
                v108 = 2112;
                v109 = v32;
                _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, schemaVersion doesn't match; cacheEntry = %@, current schemaVersion = %@", buf, 0x16u);
              }

              goto LABEL_51;
            }

            v42 = container_log_handle_for_category();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              selfCopy9 = self;
              v108 = 2112;
              v109 = v26;
              _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, UUID doesn't match; cacheEntry = %@, current uuid = %@", buf, 0x16u);
            }
          }

          v32 = 0;
LABEL_51:
          v41 = 0;
          goto LABEL_52;
        }
      }

      else
      {
      }

      v42 = container_log_handle_for_category();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        v26 = 0;
        v32 = 0;
        v22 = 0;
        goto LABEL_51;
      }

      v73 = v97[5];
      *buf = 138412546;
      selfCopy9 = self;
      v108 = 2112;
      v109 = v73;
      v49 = "Cache entry failed verification, ctime changed; cacheEntry = %@, current fsNode = %@";
    }

    else
    {
      v42 = container_log_handle_for_category();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v48 = v97[5];
      *buf = 138412546;
      selfCopy9 = self;
      v108 = 2112;
      v109 = v48;
      v49 = "Cache entry failed verification, fs node changed; cacheEntry = %@, current fsNode = %@";
    }

    _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
    goto LABEL_28;
  }

  if (![userIdentity isDataSeparated])
  {
    goto LABEL_40;
  }

  v43 = +[MCMFileManager defaultManager];
  homeDirectoryURL = [userIdentity homeDirectoryURL];
  v90 = 0;
  v45 = [v43 mountPointForURL:homeDirectoryURL error:&v90];
  v42 = v90;

  if (!v45)
  {
    domain = [v42 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      v51 = [v42 code]== 2;

      if (v51)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v57 = container_log_handle_for_category();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      homeDirectoryURL2 = [userIdentity homeDirectoryURL];
      *buf = 138412546;
      selfCopy9 = homeDirectoryURL2;
      v108 = 2112;
      v109 = v42;
      _os_log_error_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_ERROR, "Failed to check mount point at [%@]: %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  homeDirectoryURL3 = [userIdentity homeDirectoryURL];
  v47 = [v45 isEqual:homeDirectoryURL3];

  if (v47)
  {
LABEL_39:

LABEL_40:
    v58 = [MCMError alloc];
    metadataURL3 = [containerPath metadataURL];
    v41 = [(MCMError *)v58 initWithNSError:v9 url:metadataURL3 defaultErrorType:12];

    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      metadataURL4 = [containerPath metadataURL];
      path2 = [metadataURL4 path];
      *buf = 138412546;
      selfCopy9 = self;
      v108 = 2112;
      v109 = path2;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, metadata URL doesn't exist; cacheEntry = %@, metadataURL = [%@]", buf, 0x16u);
    }

    goto LABEL_42;
  }

LABEL_25:
  v52 = MEMORY[0x1E696AEC0];
  identifier2 = [userIdentity identifier];
  homeDirectoryURL4 = [userIdentity homeDirectoryURL];
  path3 = [homeDirectoryURL4 path];
  v56 = [v52 stringWithFormat:@"Persona [%@] volume not mounted at [%@]", identifier2, path3];

  v41 = [[MCMError alloc] initWithErrorType:162 category:1 message:v56];
LABEL_42:
  v26 = 0;
  v32 = 0;
  v22 = 0;
LABEL_52:

  if (error)
  {
    v66 = v41;
    *error = v41;
  }

  [(MCMContainerCacheEntry *)self setCorrupt:1];
  v67 = 0;
  v38 = v9;
LABEL_55:

  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v102, 8);

  return v67;
}

uint64_t __42__MCMContainerCacheEntry_verifyWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  v5 = *(a1[6] + 8);
  obj[0] = *(v5 + 40);
  v6 = [v3 itemAtURL:a2 followSymlinks:1 exists:v4 + 24 isDirectory:0 fsNode:obj error:a3];
  objc_storeStrong((v5 + 40), obj[0]);
  return v6;
}

- (id)metadataWithError:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifier = [(MCMContainerCacheEntry *)self identifier];
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  v19[0] = 0;
  v7 = [(MCMContainerCacheEntry *)self _readMetadataForIdentifier:identifier containerPath:containerPath error:v19];
  v8 = v19[0];

  if (v7)
  {
LABEL_2:
    containerIdentity = [(MCMContainerCacheEntry *)self containerIdentity];
    v10 = [v7 metadataByChangingContainerIdentity:containerIdentity];

    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v8 type] == 108)
  {
    containerPath2 = [(MCMContainerCacheEntry *)self containerPath];
    containerIdentity2 = [(MCMContainerCacheEntry *)self containerIdentity];
    identifier2 = [containerIdentity2 identifier];
    containerIdentity3 = [(MCMContainerCacheEntry *)self containerIdentity];
    uuid = [containerIdentity3 uuid];
    userIdentityCache = [(MCMContainerCacheEntry *)self userIdentityCache];
    v7 = [(MCMContainerCacheEntry *)self _metadataFromContainerPath:containerPath2 identifier:identifier2 uuid:uuid schemaVersion:0 userIdentityCache:userIdentityCache];

    if (v7)
    {

      v8 = 0;
      goto LABEL_2;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  if (!error)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v10)
  {
    v17 = v8;
    *error = v8;
  }

LABEL_11:

  return v10;
}

- (id)initFromContainerPath:(id)path identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version userIdentityCache:(id)cache
{
  cacheCopy = cache;
  v13 = [(MCMContainerCacheEntry *)self _metadataFromContainerPath:path identifier:identifier uuid:uuid schemaVersion:version userIdentityCache:cacheCopy];
  if (v13)
  {
    v14 = [(MCMContainerCacheEntry *)self initWithMetadata:v13 userIdentityCache:cacheCopy];
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (MCMContainerCacheEntry)initWithIdentifier:(id)identifier containerPath:(id)path schemaVersion:(id)version uuid:(id)uuid metadata:(id)metadata userIdentityCache:(id)cache
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  versionCopy = version;
  uuidCopy = uuid;
  metadataCopy = metadata;
  cacheCopy = cache;
  v28.receiver = self;
  v28.super_class = MCMContainerCacheEntry;
  v18 = [(MCMContainerCacheEntry *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userIdentityCache, cache);
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v19->_containerPath, path);
    objc_storeStrong(&v19->_schemaVersion, version);
    objc_storeStrong(&v19->_uuid, uuid);
    fsNode = [metadataCopy fsNode];
    fsNode = v19->_fsNode;
    v19->_fsNode = fsNode;

    objc_storeWeak(&v19->_cache, 0);
    *&v19->_corrupt = 0;
    v22 = +[MCMFileManager defaultManager];
    fmForNode = v19->_fmForNode;
    v19->_fmForNode = v22;

    v19->_generation = *MEMORY[0x1E69E9968];
  }

  return v19;
}

- (MCMContainerCacheEntry)initWithMetadata:(id)metadata userIdentityCache:(id)cache
{
  metadataCopy = metadata;
  cacheCopy = cache;
  if ([metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    v8 = metadataCopy;
  }

  else
  {
    v8 = 0;
  }

  identifier = [metadataCopy identifier];
  containerPath = [metadataCopy containerPath];
  schemaVersion = [metadataCopy schemaVersion];
  uuid = [metadataCopy uuid];
  v13 = [(MCMContainerCacheEntry *)self initWithIdentifier:identifier containerPath:containerPath schemaVersion:schemaVersion uuid:uuid metadata:v8 userIdentityCache:cacheCopy];

  return v13;
}

- (void)setXattrsWithFileHandle:(id)handle
{
  handleCopy = handle;
  v5 = objc_opt_class();
  identifier = [(MCMContainerCacheEntry *)self identifier];
  [v5 setIdentifier:identifier forFileHandle:handleCopy];

  v7 = objc_opt_class();
  uuid = [(MCMContainerCacheEntry *)self uuid];
  [v7 setUUID:uuid forFileHandle:handleCopy];

  v9 = objc_opt_class();
  schemaVersion = [(MCMContainerCacheEntry *)self schemaVersion];
  [v9 setSchemaVersion:? forFileHandle:?];
}

- (void)setXattrs
{
  v3 = objc_opt_class();
  containerPath = [(MCMContainerCacheEntry *)self containerPath];
  containerRootURL = [containerPath containerRootURL];
  v6 = [v3 _fileHandleForURL:containerRootURL writeable:1];

  [(MCMContainerCacheEntry *)self setXattrsWithFileHandle:v6];
}

+ (id)_fileHandleForURL:(id)l writeable:(BOOL)writeable
{
  lCopy = l;
  v5 = [MCMFileHandle alloc];
  path = [lCopy path];

  LOBYTE(v9) = 1;
  v7 = [(MCMFileHandle *)v5 initWithPath:path relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v9];

  return v7;
}

+ (void)clearAttributesForFileHandle:(id)handle
{
  v27[4] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v27[0] = @"com.apple.containermanager.identifier";
  v27[1] = @"com.apple.containermanager.schema-version";
  v27[2] = @"com.apple.containermanager.uuid";
  v27[3] = @"com.apple.containermanager.birthtime";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412802;
    v14 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v15 = 0;
        v11 = [handleCopy removeXattr:v10 error:{&v15, v14}];
        v12 = v15;
        if ((v11 & 1) == 0)
        {
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v17 = v10;
            v18 = 2112;
            v19 = handleCopy;
            v20 = 2112;
            v21 = v12;
            _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not clear xattr [%@] from [%@]; error = %@", buf, 0x20u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v7);
  }
}

+ (void)clearAttributesForURL:(id)l
{
  v4 = [self _fileHandleForURL:l writeable:1];
  [self clearAttributesForFileHandle:?];
}

+ (void)setBirthtime:(timespec)birthtime forFileHandle:(id)handle
{
  tv_nsec = birthtime.tv_nsec;
  tv_sec = birthtime.tv_sec;
  v15 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  handleCopy = handle;
  tv_nsec = [v6 stringWithFormat:@"%ld.%09ld", tv_sec, tv_nsec];
  v12 = 0;
  LOBYTE(v6) = [handleCopy setXattr:@"com.apple.containermanager.birthtime" valueAsString:tv_nsec error:&v12];

  v9 = v12;
  v10 = v9;
  if ((v6 & 1) == 0 && v9)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to set xattr birthtime; error = %@", buf, 0xCu);
    }
  }
}

+ (void)setBirthtime:(timespec)birthtime forURL:(id)l
{
  tv_nsec = birthtime.tv_nsec;
  tv_sec = birthtime.tv_sec;
  v7 = [self _fileHandleForURL:l writeable:1];
  [self setBirthtime:tv_sec forFileHandle:tv_nsec];
}

+ (void)setUUID:(id)d forFileHandle:(id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [handle setXattr:@"com.apple.containermanager.uuid" valueAsUUID:d error:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr uuid; error = %@", buf, 0xCu);
    }
  }
}

+ (void)setUUID:(id)d forURL:(id)l
{
  dCopy = d;
  v7 = [self _fileHandleForURL:l writeable:1];
  [self setUUID:dCopy forFileHandle:?];
}

+ (void)setSchemaVersion:(id)version forFileHandle:(id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [handle setXattr:@"com.apple.containermanager.schema-version" valueAsNumber:version error:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr schemaVersion; error = %@", buf, 0xCu);
    }
  }
}

+ (void)setSchemaVersion:(id)version forURL:(id)l
{
  versionCopy = version;
  v7 = [self _fileHandleForURL:l writeable:1];
  [self setSchemaVersion:versionCopy forFileHandle:?];
}

+ (void)setIdentifier:(id)identifier forFileHandle:(id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [handle setXattr:@"com.apple.containermanager.identifier" valueAsString:identifier error:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr identifier; error = %@", buf, 0xCu);
    }
  }
}

+ (void)setIdentifier:(id)identifier forURL:(id)l
{
  identifierCopy = identifier;
  v7 = [self _fileHandleForURL:l writeable:1];
  [self setIdentifier:identifierCopy forFileHandle:?];
}

+ (timespec)birthtimeForFileHandle:(id)handle
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v3 = [handle copyValueAsStringFromXattr:@"com.apple.containermanager.birthtime" maxLength:1024 error:&v16];
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = [v3 componentsSeparatedByString:@"."];
    v8 = v7;
    if (!v7 || [v7 count] != 2)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = atol([v9 UTF8String]);

    v12 = [v8 objectAtIndexedSubscript:1];
    v11 = atol([v12 UTF8String]);
  }

  else
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to get xattr birthtime; error = %@", buf, 0xCu);
    }

    v8 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_14:
  v14 = v10;
  v15 = v11;
  result.tv_nsec = v15;
  result.tv_sec = v14;
  return result;
}

+ (timespec)birthtimeForURL:(id)l
{
  v4 = [self _fileHandleForURL:l writeable:0];
  v5 = [self birthtimeForFileHandle:v4];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.tv_nsec = v9;
  result.tv_sec = v8;
  return result;
}

+ (id)UUIDForFileHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [handle copyValueAsUUIDFromXattr:@"com.apple.containermanager.uuid" error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr uuid; error = %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)UUIDForURL:(id)l
{
  v4 = [self _fileHandleForURL:l writeable:0];
  v5 = [self UUIDForFileHandle:v4];

  return v5;
}

+ (id)schemaVersionForFileHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [handle copyValueAsNumberFromXattr:@"com.apple.containermanager.schema-version" error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr schemaVersion; error = %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)schemaVersionForURL:(id)l
{
  v4 = [self _fileHandleForURL:l writeable:0];
  v5 = [self schemaVersionForFileHandle:v4];

  return v5;
}

+ (id)identifierForFileHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [handle copyValueAsStringFromXattr:@"com.apple.containermanager.identifier" maxLength:1024 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr identifier; error = %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)identifierForURL:(id)l
{
  v4 = [self _fileHandleForURL:l writeable:0];
  v5 = [self identifierForFileHandle:v4];

  return v5;
}

@end