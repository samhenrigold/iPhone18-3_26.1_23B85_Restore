@interface MCMLibraryRepair
- (BOOL)_canRepairLocally;
- (BOOL)createPathsIfNecessaryWithError:(id *)error;
- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block;
- (BOOL)fixPermissionsWithManagedPath:(id)path uid:(unsigned int)uid gid:(unsigned int)gid error:(id *)error;
- (BOOL)managedPathsHaveChanged;
- (BOOL)performGenericRepairWithError:(id *)error;
- (MCMLibraryRepair)initWithManagedPathRegistry:(id)registry fileManager:(id)manager classIterator:(id)iterator;
- (id)_managedPathsForGenericRepair;
@end

@implementation MCMLibraryRepair

- (BOOL)_canRepairLocally
{
  if (_canRepairLocally_onceToken != -1)
  {
    dispatch_once(&_canRepairLocally_onceToken, &__block_literal_global_13233);
  }

  return _canRepairLocally_canRepairLocally;
}

void __37__MCMLibraryRepair__canRepairLocally__block_invoke()
{
  v0 = +[MCMPOSIXUser currentPOSIXUser];
  _canRepairLocally_canRepairLocally = [v0 isRoot];
}

- (id)_managedPathsForGenericRepair
{
  registry = [(MCMLibraryRepair *)self registry];
  paths = [registry paths];

  return paths;
}

- (BOOL)managedPathsHaveChanged
{
  v40 = *MEMORY[0x1E69E9840];
  _managedPathsForGenericRepair = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  registry = [(MCMLibraryRepair *)self registry];
  v5 = [registry orderedPathsFromPaths:_managedPathsForGenericRepair];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (!v7)
  {
    v19 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v27 = _managedPathsForGenericRepair;
  v9 = *v37;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v36 + 1) + 8 * i);
      fsNode = [v11 fsNode];

      if (fsNode)
      {
        v13 = +[MCMFileManager defaultManager];
        v14 = [v11 url];
        v28 = 0;
        v15 = [v13 fsNodeOfURL:v14 followSymlinks:1 error:&v28];
        v16 = v28;

        if (v15)
        {
          fsNode2 = [v11 fsNode];
          v18 = [fsNode2 isEqual:v15];

          if (v18)
          {

            continue;
          }

          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 url];
            path = [v21 path];
            fsNode3 = [v11 fsNode];
            *buf = 138543874;
            v30 = path;
            v31 = 2114;
            v32 = fsNode3;
            v33 = 2114;
            v34 = v15;
            _os_log_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEFAULT, "Path [%{public}@] changed: old = %{public}@, new = %{public}@", buf, 0x20u);
          }
        }

        else
        {
          v20 = container_log_handle_for_category();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v25 = [v11 url];
            path2 = [v25 path];
            *buf = 138543618;
            v30 = path2;
            v31 = 2114;
            v32 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Failed to get fsNode for [%{public}@] when checking for file system changes: %{public}@", buf, 0x16u);
          }

          v15 = 0;
        }

        _managedPathsForGenericRepair = v27;

        v19 = 1;
        goto LABEL_20;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v19 = 0;
  _managedPathsForGenericRepair = v27;
LABEL_20:

  return v19;
}

- (BOOL)createPathsIfNecessaryWithError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MCMLibraryRepair *)selfCopy pathsCreated])
  {
    v5 = 0;
  }

  else
  {
    _managedPathsForGenericRepair = [(MCMLibraryRepair *)selfCopy _managedPathsForGenericRepair];
    registry = [(MCMLibraryRepair *)selfCopy registry];
    v8 = [registry orderedPathsFromPaths:_managedPathsForGenericRepair];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v10)
    {
      errorCopy = error;
      v5 = 0;
      v11 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if (([v13 flags] & 2) != 0)
          {
            v14 = [v13 url];
            v21[4] = v13;
            v22 = v5;
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __52__MCMLibraryRepair_createPathsIfNecessaryWithError___block_invoke;
            v21[3] = &unk_1E86B10B8;
            v15 = [(MCMLibraryRepair *)selfCopy fixAndRetryIfPermissionsErrorWithURL:v14 error:&v22 duringBlock:v21];
            v16 = v22;

            if (!v15)
            {

              objc_sync_exit(selfCopy);
              if (errorCopy)
              {
                v17 = v16;
                v18 = 0;
                *errorCopy = v16;
              }

              else
              {
                v18 = 0;
              }

              goto LABEL_19;
            }

            v5 = v16;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 0;
    }

    [(MCMLibraryRepair *)selfCopy setPathsCreated:1];
  }

  objc_sync_exit(selfCopy);

  v18 = 1;
  v16 = v5;
LABEL_19:

  return v18;
}

uint64_t __52__MCMLibraryRepair_createPathsIfNecessaryWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [*(a1 + 32) mode];
  v8 = [*(a1 + 32) owner];
  v9 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 mode:v7 owner:v8 dataProtectionClass:objc_msgSend(*(a1 + 32) error:{"dpClass"), a3}];

  return v9;
}

- (BOOL)fixAndRetryIfPermissionsErrorWithURL:(id)l error:(id *)error duringBlock:(id)block
{
  v12[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v12[0] = 0;
    v10 = (*(blockCopy + 2))(blockCopy, lCopy, v12);
    blockCopy = v12[0];
    if (error && (v10 & 1) == 0)
    {
      blockCopy = blockCopy;
      v10 = 0;
      *error = blockCopy;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)performGenericRepairWithError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  registry = [(MCMLibraryRepair *)self registry];
  _managedPathsForGenericRepair = [(MCMLibraryRepair *)self _managedPathsForGenericRepair];
  v29 = registry;
  [registry orderedPathsFromPaths:?];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = v41 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v9 = 0;
    v10 = *v39;
    v30 = *MEMORY[0x1E696A798];
    obj = v6;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * v11);
        v14 = container_log_handle_for_category();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v34 = v13;
          _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "Examining %@ for repair.", buf, 0xCu);
        }

        owner = [v13 owner];
        v16 = [owner UID];
        owner2 = [v13 owner];
        primaryGID = [owner2 primaryGID];
        v32 = v12;
        v19 = [(MCMLibraryRepair *)self fixPermissionsWithManagedPath:v13 uid:v16 gid:primaryGID error:&v32];
        v9 = v32;

        if (!v19)
        {
          domain = [v9 domain];
          if (![domain isEqualToString:v30])
          {

LABEL_20:
            v24 = container_log_handle_for_category();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v34 = v13;
              v35 = 2112;
              v36 = v9;
              _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Failed to repair [%@]: %@", buf, 0x16u);
            }

            v6 = obj;
            if (errorCopy)
            {
              v25 = v9;
              v23 = 0;
              *errorCopy = v9;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_25;
          }

          code = [v9 code];

          if (code != 2)
          {
            goto LABEL_20;
          }

          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v13;
            _os_log_debug_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_DEBUG, "Expected path [%@] does not exist, moving on", buf, 0xCu);
          }
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v23 = 1;
LABEL_25:

  return v23;
}

- (BOOL)fixPermissionsWithManagedPath:(id)path uid:(unsigned int)uid gid:(unsigned int)gid error:(id *)error
{
  v7 = *&gid;
  v8 = *&uid;
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  aCLConfig = [pathCopy ACLConfig];
  v12 = [pathCopy ACLConfig] & 2 | aCLConfig & 1;
  v13 = v12 & 0xFFFFFFFFFFFFFEFFLL | ((([pathCopy flags] >> 2) & 1) << 8);
  fileManager = [(MCMLibraryRepair *)self fileManager];
  v15 = [pathCopy url];

  v20[0] = 0;
  v16 = [fileManager repairPermissionsAtURL:v15 uid:v8 gid:v7 options:v13 error:v20];
  v17 = v20[0];

  if (error)
  {
    v18 = v17;
    *error = v17;
  }

  return v16;
}

- (MCMLibraryRepair)initWithManagedPathRegistry:(id)registry fileManager:(id)manager classIterator:(id)iterator
{
  v16 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  managerCopy = manager;
  iteratorCopy = iterator;
  v15.receiver = self;
  v15.super_class = MCMLibraryRepair;
  v12 = [(MCMLibraryRepair *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_registry, registry);
    v13->_pathsCreated = 0;
    objc_storeStrong(&v13->_fileManager, manager);
    objc_storeStrong(&v13->_classIterator, iterator);
  }

  return v13;
}

@end