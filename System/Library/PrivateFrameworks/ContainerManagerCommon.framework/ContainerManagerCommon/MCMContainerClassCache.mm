@interface MCMContainerClassCache
- (BOOL)_checkExistanceOfCacheEntry:(id)entry libraryRepair:(id)repair;
- (BOOL)_identifier:(id)_identifier isEqualToOtherIdentifier:(id)identifier caseSensitive:(BOOL)sensitive;
- (BOOL)_isEntryA:(id)a olderThanEntryB:(id)b;
- (BOOL)_queue_consumeResyncRequired;
- (BOOL)enumerateCacheEntriesWithEnumerator:(id)enumerator;
- (MCMContainerClassCache)initWithContainerClassPath:(id)path cacheEntryClass:(Class)class targetQueue:(id)queue userIdentityCache:(id)cache;
- (id)_concurrent_generateCacheEntryWithURL:(id)l identifier:(id)identifier containerPath:(id)path schemaVersion:(id)version uuid:(id)uuid metadata:(id)metadata;
- (id)_concurrent_slowGenerateCacheEntryWithFileHandle:(id)handle URL:(id)l identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version containerPath:(id)path;
- (id)_lock_rootEntryByResortingFromRootEntry:(id)entry insertEntry:(id)insertEntry;
- (id)_lock_rootEntryFromRootEntry:(id)entry afterRemovingEntryForContainerPath:(id)path;
- (id)_setEntry:(id)entry forIdentifier:(id)identifier containerPath:(id)path writeThrough:(BOOL)through replace:(BOOL)replace;
- (id)cacheEntryForIdentifier:(id)identifier;
- (id)concurrentWriteThroughHandler;
- (id)setCacheEntry:(id)entry forIdentifier:(id)identifier;
- (id)setCacheEntry:(id)entry forIdentifier:(id)identifier writeThrough:(BOOL)through;
- (unint64_t)generation;
- (void)_concurrent_processCorruptEntry:(id)entry handler:(id)handler;
- (void)_concurrent_processURL:(id)l handler:(id)handler;
- (void)_handleUnrecoverableCorruptContainerPath:(id)path;
- (void)_processCorruptEntries:(id)entries handler:(id)handler;
- (void)_processURLs:(id)ls handler:(id)handler;
- (void)_queue_syncWithDisk;
- (void)asyncStartSynchronization;
- (void)dealloc;
- (void)forceWriteThrough;
- (void)resyncRequired;
- (void)setConcurrentWriteThroughHandler:(id)handler;
- (void)setLastCompletedDiskScanUUID:(id)d;
- (void)setTargetDiskScanUUID:(id)d;
- (void)waitForSynchronizationToComplete;
@end

@implementation MCMContainerClassCache

- (void)waitForSynchronizationToComplete
{
  v3[5] = *MEMORY[0x1E69E9840];
  fsScanQueue = self->_fsScanQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__MCMContainerClassCache_waitForSynchronizationToComplete__block_invoke;
  v3[3] = &unk_1E86B0E08;
  v3[4] = self;
  dispatch_async_and_wait(fsScanQueue, v3);
}

void *__58__MCMContainerClassCache_waitForSynchronizationToComplete__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_consumeResyncRequired];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_syncWithDisk];
  }

  return result;
}

- (unint64_t)generation
{
  v3 = *MEMORY[0x1E69E9968];
  [(MCMContainerClassCache *)self notify];
  container_notify_get_generation();
  return v3;
}

- (BOOL)_queue_consumeResyncRequired
{
  dispatch_assert_queue_V2(self->_fsScanQueue);
  os_unfair_lock_lock(&self->_resyncRequiredLock);
  lock_resyncRequired = self->_lock_resyncRequired;
  self->_lock_resyncRequired = 0;
  os_unfair_lock_unlock(&self->_resyncRequiredLock);
  return lock_resyncRequired;
}

- (void)setTargetDiskScanUUID:(id)d
{
  p_targetDiskScanUUID = &self->_targetDiskScanUUID;

  objc_storeStrong(p_targetDiskScanUUID, d);
}

- (void)setLastCompletedDiskScanUUID:(id)d
{
  p_lastCompletedDiskScanUUID = &self->_lastCompletedDiskScanUUID;

  objc_storeStrong(p_lastCompletedDiskScanUUID, d);
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  container_notify_free();
  v3.receiver = self;
  v3.super_class = MCMContainerClassCache;
  [(MCMContainerClassCache *)&v3 dealloc];
}

- (void)_handleUnrecoverableCorruptContainerPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  containerRootURL = [pathCopy containerRootURL];
  userIdentity = [pathCopy userIdentity];
  containerClass = [pathCopy containerClass];
  containerPathIdentifier = [pathCopy containerPathIdentifier];
  v11 = 0;
  LODWORD(containerClass) = [MCMCommandOperationDelete deleteContainerRootURL:containerRootURL userIdentity:userIdentity containerClass:containerClass containerPathIdentifier:containerPathIdentifier preferDirectDelete:0 error:&v11];
  v8 = v11;

  v9 = container_log_handle_for_category();
  v10 = v9;
  if (containerClass)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = pathCopy;
      _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "DELETED: [%@] (corrupt container)", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v13 = pathCopy;
    v14 = 2112;
    v15 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Could not delete corrupt container; path = %@, error = %@", buf, 0x16u);
  }
}

- (BOOL)_isEntryA:(id)a olderThanEntryB:(id)b
{
  v39 = *MEMORY[0x1E69E9840];
  aCopy = a;
  bCopy = b;
  v24 = 0;
  v7 = [aCopy birthtimeWithError:&v24];
  v9 = v8;
  v10 = v24;
  v23 = 0;
  v11 = [bCopy birthtimeWithError:&v23];
  v13 = v12;
  v14 = v23;
  if (!(v7 | v9))
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = aCopy;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime not available on A; entry = %@, error = %@", buf, 0x16u);
    }
  }

  if (!(v11 | v13))
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = bCopy;
      v27 = 2112;
      v28 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime not available on B; entry = %@, error = %@", buf, 0x16u);
    }
  }

  v17 = v7 < v11;
  if (v7 == v11 && (v17 = v9 < v13, v9 == v13))
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = aCopy;
      v27 = 2112;
      v28 = bCopy;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Unpredicatable resolution for conflicting container paths since birthtime is the same; entryA = %@, entryB = %@", buf, 0x16u);
    }

    v19 = 0;
  }

  else
  {
    v19 = v17;
  }

  v20 = container_log_handle_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = @"NO";
    *buf = 138413826;
    v26 = aCopy;
    if (v19)
    {
      v22 = @"YES";
    }

    v27 = 2112;
    v28 = bCopy;
    v29 = 2112;
    v30 = v22;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    v34 = v9;
    v35 = 2048;
    v36 = v11;
    v37 = 2048;
    v38 = v13;
    _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "entryA %@ is older than entryB %@: %@; birthtimeA = %ld.%09ld, birthtimeB = %ld.%09ld", buf, 0x48u);
  }

  return v19;
}

- (id)_lock_rootEntryByResortingFromRootEntry:(id)entry insertEntry:(id)insertEntry
{
  v32 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  insertEntryCopy = insertEntry;
  v8 = entryCopy;
  if (v8)
  {
    v9 = v8;
    if ([insertEntryCopy ignore] || !-[MCMContainerClassCache _isEntryA:olderThanEntryB:](self, "_isEntryA:olderThanEntryB:", insertEntryCopy, v9))
    {
      v12 = 0;
      next2 = v9;
      while (1)
      {
        v15 = v12;
        v12 = next2;

        if (([insertEntryCopy ignore] & 1) == 0)
        {
          next = [v12 next];
          if (!next)
          {
            break;
          }

          v17 = next;
          v18 = [(MCMContainerClassCache *)self _isEntryA:v12 olderThanEntryB:insertEntryCopy];

          if (v18)
          {
            break;
          }
        }

        next2 = [v12 next];

        if (!next2)
        {
          [v12 setNext:insertEntryCopy];
          v19 = container_log_handle_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v26 = 138412546;
            v27 = insertEntryCopy;
            v28 = 2112;
            v29 = v12;
            _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "Inserting entry %@ after entry %@", &v26, 0x16u);
          }

          v13 = 0;
          goto LABEL_19;
        }
      }

      v20 = container_log_handle_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        next3 = [v12 next];
        v26 = 138412802;
        v27 = insertEntryCopy;
        v28 = 2112;
        v29 = v12;
        v30 = 2112;
        v31 = next3;
        _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Inserting entry %@ after entry %@ but before entry %@", &v26, 0x20u);
      }

      next4 = [v12 next];
      [insertEntryCopy setNext:next4];

      [v12 setNext:insertEntryCopy];
      v13 = v12;
LABEL_19:
      v10 = v9;
    }

    else
    {
      [insertEntryCopy setNext:v9];
      v10 = insertEntryCopy;

      v11 = container_log_handle_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        next5 = [v10 next];
        v26 = 138412546;
        v27 = v10;
        v28 = 2112;
        v29 = next5;
        _os_log_debug_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_DEBUG, "Inserting entry %@ as root entry; next = %@", &v26, 0x16u);
      }

      v12 = 0;
      v13 = v9;
    }
  }

  else
  {
    v10 = insertEntryCopy;
    v12 = 0;
    v13 = 0;
  }

  v22 = v10;

  return v10;
}

- (id)_lock_rootEntryFromRootEntry:(id)entry afterRemovingEntryForContainerPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  pathCopy = path;
  v7 = entryCopy;
  v8 = 0;
  next = v7;
  while (1)
  {
    containerPath = [next containerPath];
    v11 = [containerPath isEqual:pathCopy];

    if (v11)
    {
      break;
    }

    v12 = next;

    next = [v12 next];

    v8 = v12;
    if (!next)
    {
      v8 = v12;
      goto LABEL_11;
    }
  }

  v9Next = [next next];
  v14 = v9Next;
  if (v8)
  {
    [v8 setNext:v9Next];
    v15 = v14;
  }

  else
  {
    v15 = v7;
    v7 = v9Next;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412546;
    v20 = next;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEBUG, "Removing entry %@, new root is %@", &v19, 0x16u);
  }

LABEL_11:
  v17 = v7;

  return v7;
}

- (id)_setEntry:(id)entry forIdentifier:(id)identifier containerPath:(id)path writeThrough:(BOOL)through replace:(BOOL)replace
{
  throughCopy = through;
  v32 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  identifierCopy = identifier;
  pathCopy = path;
  v15 = entryCopy;
  if (v15)
  {
    [(MCMContainerClassCache *)self _lightweightAnnotateEntry:v15];
  }

  os_unfair_lock_lock(&self->_cacheLock);
  lock_cache = [(MCMContainerClassCache *)self lock_cache];
  v17 = lock_cache;
  if (lock_cache)
  {
    v18 = [lock_cache objectForKeyedSubscript:identifierCopy];
    if (throughCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = 0;
    if (throughCopy)
    {
LABEL_5:
      v19 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
      if (v15)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (pathCopy)
      {
        [(MCMContainerClassCache *)self _lock_rootEntryFromRootEntry:v18 afterRemovingEntryForContainerPath:pathCopy];
      }

      else
      {
        [v18 next];
      }
      v22 = ;
      [v17 setObject:v22 forKeyedSubscript:identifierCopy];

      v20 = 0;
      goto LABEL_17;
    }
  }

  v19 = 0;
  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_6:
  v20 = [v15 copyWithZone:0];

  [v20 setCache:self];
  if (!v18 || replace)
  {
    next = [v18 next];
    [v20 setNext:next];
  }

  else
  {
    [(MCMContainerClassCache *)self _lock_rootEntryByResortingFromRootEntry:v18 insertEntry:v15];
    v20 = next = v20;
  }

  [v17 setObject:v20 forKeyedSubscript:identifierCopy];
LABEL_17:
  v23 = container_log_handle_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    next2 = [v20 next];
    v26 = 138412802;
    v27 = identifierCopy;
    v28 = 2112;
    v29 = v20;
    v30 = 2112;
    v31 = next2;
    _os_log_debug_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_DEBUG, "Setting cache entry; identifier = %@, cache entry = %@, next = %@", &v26, 0x20u);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  if (v19)
  {
    v19[2](v19, identifierCopy, v18, v15);
  }

  return v20;
}

- (BOOL)_identifier:(id)_identifier isEqualToOtherIdentifier:(id)identifier caseSensitive:(BOOL)sensitive
{
  if (!sensitive)
  {
    return [_identifier compare:identifier options:1] == 0;
  }

  return [_identifier isEqualToString:identifier];
}

- (id)_concurrent_generateCacheEntryWithURL:(id)l identifier:(id)identifier containerPath:(id)path schemaVersion:(id)version uuid:(id)uuid metadata:(id)metadata
{
  metadataCopy = metadata;
  uuidCopy = uuid;
  versionCopy = version;
  pathCopy = path;
  identifierCopy = identifier;
  v18 = [(objc_class *)[(MCMContainerClassCache *)self cacheEntryClass] alloc];
  userIdentityCache = [(MCMContainerClassCache *)self userIdentityCache];
  v20 = [(objc_class *)v18 initWithIdentifier:identifierCopy containerPath:pathCopy schemaVersion:versionCopy uuid:uuidCopy metadata:metadataCopy userIdentityCache:userIdentityCache];

  return v20;
}

- (id)_concurrent_slowGenerateCacheEntryWithFileHandle:(id)handle URL:(id)l identifier:(id)identifier uuid:(id)uuid schemaVersion:(id)version containerPath:(id)path
{
  v57 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  lCopy = l;
  identifierCopy = identifier;
  uuidCopy = uuid;
  versionCopy = version;
  pathCopy = path;
  containerClassPath = [(MCMContainerClassCache *)self containerClassPath];
  containerClass = [containerClassPath containerClass];
  userIdentity = [containerClassPath userIdentity];
  v20 = [MCMMetadata alloc];
  userIdentityCache = [(MCMContainerClassCache *)self userIdentityCache];
  v44 = 0;
  v39 = userIdentity;
  v22 = [(MCMMetadataMinimal *)v20 initByReadingAndValidatingMetadataAtContainerPath:pathCopy userIdentity:userIdentity containerClass:containerClass userIdentityCache:userIdentityCache error:&v44];
  v23 = v44;

  if (v22)
  {
    identifier = [v22 identifier];
    schemaVersion = [v22 schemaVersion];
    uuid = [v22 uuid];
    v27 = [(MCMContainerClassCache *)self _concurrent_generateCacheEntryWithURL:lCopy identifier:identifier containerPath:pathCopy schemaVersion:schemaVersion uuid:uuid metadata:v22];

    [v27 setXattrsWithFileHandle:handleCopy];
    goto LABEL_3;
  }

  v30 = containermanager_copy_global_configuration();
  staticConfig = [v30 staticConfig];
  if ([staticConfig attemptMetadataReconstructionIfMissing])
  {
  }

  else
  {
    pOSIXerrno = [v23 POSIXerrno];

    if (pOSIXerrno == 2)
    {
      v33 = container_log_handle_for_category();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413570;
        v46 = identifierCopy;
        v47 = 2112;
        v48 = pathCopy;
        v49 = 2112;
        v50 = identifierCopy;
        v51 = 2112;
        v52 = uuidCopy;
        v53 = 2112;
        v54 = versionCopy;
        v55 = 2112;
        v56 = v23;
        _os_log_error_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_ERROR, "Could not read metadata for [(%@) %@]; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x3Eu);
      }

      v27 = 0;
      goto LABEL_3;
    }
  }

  v34 = container_log_handle_for_category();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413570;
    v46 = identifierCopy;
    v47 = 2112;
    v48 = pathCopy;
    v49 = 2112;
    v50 = identifierCopy;
    v51 = 2112;
    v52 = uuidCopy;
    v53 = 2112;
    v54 = versionCopy;
    v55 = 2112;
    v56 = v23;
    _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Could not read metadata for [(%@) %@], attempting recovery; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x3Eu);
  }

  v35 = [MCMContainerCacheEntry alloc];
  userIdentityCache2 = [(MCMContainerClassCache *)self userIdentityCache];
  v27 = [(MCMContainerCacheEntry *)v35 initFromContainerPath:pathCopy identifier:identifierCopy uuid:uuidCopy schemaVersion:versionCopy userIdentityCache:userIdentityCache2];

  if (!v27)
  {
LABEL_3:
    v28 = v23;
    goto LABEL_4;
  }

  v43 = v23;
  v37 = [v27 verifyWithError:&v43];
  v28 = v43;

  if ((v37 & 1) == 0)
  {
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v46 = identifierCopy;
      v47 = 2112;
      v48 = uuidCopy;
      v49 = 2112;
      v50 = versionCopy;
      v51 = 2112;
      v52 = v28;
      _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Attempted to recover, but verification failed; identifier = [%@], uuid = %@, schemaVersion = %@, error = %@", buf, 0x2Au);
    }

    v27 = 0;
  }

LABEL_4:

  return v27;
}

- (void)_concurrent_processCorruptEntry:(id)entry handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  handlerCopy = handler;
  containerPath = [entryCopy containerPath];
  containerRootURL = [containerPath containerRootURL];
  v10 = [MCMFileHandle alloc];
  path = [containerRootURL path];
  LOBYTE(v22) = 0;
  v12 = [(MCMFileHandle *)v10 initWithPath:path relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v22];

  v24 = 0;
  v13 = [(MCMFileHandle *)v12 openWithError:&v24];
  v14 = v24;
  v15 = container_log_handle_for_category();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    v23 = handlerCopy;
    selfCopy = self;
    if (v16)
    {
      *buf = 138412290;
      v26 = containerPath;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Attempting to repair corrupt container (slow); path = %@", buf, 0xCu);
    }

    identifier = [entryCopy identifier];
    uuid = [entryCopy uuid];
    schemaVersion = [entryCopy schemaVersion];
    v15 = [(MCMContainerClassCache *)selfCopy _concurrent_slowGenerateCacheEntryWithFileHandle:v12 URL:containerRootURL identifier:identifier uuid:uuid schemaVersion:schemaVersion containerPath:containerPath];

    if (!v15)
    {
      [(MCMContainerClassCache *)selfCopy _handleUnrecoverableCorruptContainerPath:containerPath];
      handlerCopy = v23;
      goto LABEL_9;
    }

    handlerCopy = v23;
    v23[2](v23, v15);
  }

  else if (v16)
  {
    path2 = [containerRootURL path];
    *buf = 138412546;
    v26 = path2;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to open [%@] for container scan, skipping; error = %@", buf, 0x16u);
  }

LABEL_9:
}

- (void)_concurrent_processURL:(id)l handler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  containerClassPath = [(MCMContainerClassCache *)self containerClassPath];
  lastPathComponent = [lCopy lastPathComponent];
  v25 = [MCMContainerPath containerPathForContainerClassPath:containerClassPath containerPathIdentifier:lastPathComponent];
  v9 = [MCMFileHandle alloc];
  path = [lCopy path];
  LOBYTE(v23) = 0;
  v11 = [(MCMFileHandle *)v9 initWithPath:path relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v23];

  v26 = 0;
  LOBYTE(v9) = [(MCMFileHandle *)v11 openWithError:&v26];
  v12 = v26;
  if ((v9 & 1) == 0)
  {
    v18 = container_log_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      path2 = [lCopy path];
      *buf = 138412546;
      v28 = path2;
      v29 = 2112;
      v30 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_ERROR, "Failed to open [%@] for container scan, skipping; error = %@", buf, 0x16u);
    }

    v16 = 0;
    v14 = 0;
    v13 = 0;
    v19 = 0;
    goto LABEL_15;
  }

  v13 = [MCMContainerCacheEntry identifierForFileHandle:v11];
  v14 = [MCMContainerCacheEntry UUIDForFileHandle:v11];
  v15 = [MCMContainerCacheEntry schemaVersionForFileHandle:v11];
  v16 = v15;
  if (v13 && v14 && v15)
  {
    v17 = [(MCMContainerClassCache *)self _concurrent_generateCacheEntryWithURL:lCopy identifier:v13 containerPath:v25 schemaVersion:v15 uuid:v14 metadata:0];
  }

  else
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v25;
      _os_log_debug_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_DEBUG, "Container did not have xattr (%@|%@|%@), reading plist (slow); path = %@", buf, 0x2Au);
    }

    v17 = [(MCMContainerClassCache *)self _concurrent_slowGenerateCacheEntryWithFileHandle:v11 URL:lCopy identifier:v13 uuid:v14 schemaVersion:v16 containerPath:v25];
  }

  v19 = v17;
  if (!v17)
  {
    [(MCMContainerClassCache *)self _handleUnrecoverableCorruptContainerPath:v25];
LABEL_15:
    v21 = handlerCopy;
    goto LABEL_16;
  }

  v21 = handlerCopy;
  (*(handlerCopy + 2))(handlerCopy, v17);
LABEL_16:
}

- (void)_processCorruptEntries:(id)entries handler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MCMContainerClassCache__processCorruptEntries_handler___block_invoke;
  v8[3] = &unk_1E86AFEF8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [entries enumerateObjectsWithOptions:0 usingBlock:v8];
}

void __57__MCMContainerClassCache__processCorruptEntries_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _concurrent_processCorruptEntry:v4 handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
}

- (void)_processURLs:(id)ls handler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MCMContainerClassCache__processURLs_handler___block_invoke;
  v8[3] = &unk_1E86AFEF8;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [ls enumerateObjectsWithOptions:0 usingBlock:v8];
}

void __47__MCMContainerClassCache__processURLs_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _concurrent_processURL:v4 handler:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
}

- (void)_queue_syncWithDisk
{
  v89 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_fsScanQueue);
  containerClassPath = [(MCMContainerClassCache *)self containerClassPath];
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v72 = containerClassPath;
    _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Resyncing container class cache: %@", buf, 0xCu);
  }

  v5 = container_log_handle_for_category();
  v6 = os_signpost_id_make_with_pointer(v5, self);

  v7 = container_log_handle_for_category();
  v8 = v7;
  v57 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    containerClass = [containerClassPath containerClass];
    *buf = 134349056;
    v72 = containerClass;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ResyncingCache", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
  }

  spid = v6;

  userIdentityCache = [(MCMContainerClassCache *)self userIdentityCache];
  userIdentity = [containerClassPath userIdentity];
  v12 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  v13 = [MEMORY[0x1E695DFA8] set];
  v59 = containerClassPath;
  classURL = [containerClassPath classURL];
  v70 = 0;
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke;
  v68[3] = &unk_1E86B10B8;
  v15 = v13;
  v69 = v15;
  v58 = v12;
  LODWORD(v13) = [v12 fixAndRetryIfPermissionsErrorWithURL:classURL error:&v70 duringBlock:v68];
  v56 = v70;

  if (v13)
  {
    v16 = [(MCMContainerClassCache *)self containerClassPath:spid];
    [v16 setExists:1];
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_cacheLock);
  lock_cache = [(MCMContainerClassCache *)self lock_cache];
  v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(lock_cache, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = lock_cache;
  v61 = [obj countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (v61)
  {
    v60 = *v86;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v86 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [obj objectForKeyedSubscript:*(*(&v85 + 1) + 8 * i)];
        v63 = v21;
        do
        {
          containerPath = [v21 containerPath];
          containerRootURL = [containerPath containerRootURL];

          if ([v15 containsObject:containerRootURL])
          {
            corrupt = [v21 corrupt];
            v25 = container_log_handle_for_category();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
            if (corrupt)
            {
              if (v26)
              {
                path = [containerRootURL path];
                *buf = 138412290;
                v72 = path;
                _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Disk sync knows about corrupt [%@]", buf, 0xCu);
              }

              [array2 addObject:v21];
            }

            else
            {
              if (v26)
              {
                path2 = [containerRootURL path];
                *buf = 138412290;
                v72 = path2;
                _os_log_debug_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_DEBUG, "Disk sync knows about [%@]", buf, 0xCu);
              }
            }

            [v19 addObject:containerRootURL];
          }

          else
          {
            v27 = container_log_handle_for_category();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              path3 = [containerRootURL path];
              *buf = 138412290;
              v72 = path3;
              _os_log_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEFAULT, "Disk sync has stale entry for [%@]", buf, 0xCu);
            }

            [array addObject:v21];
            containerClassPath2 = [(MCMContainerClassCache *)self containerClassPath];
            [containerClassPath2 setExists:0];
          }

          next = [v21 next];

          v21 = next;
        }

        while (next);
      }

      v61 = [obj countByEnumeratingWithState:&v85 objects:v84 count:16];
    }

    while (v61);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  [v15 minusSet:v19];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v65 = array;
  v33 = [v65 countByEnumeratingWithState:&v80 objects:v79 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v81;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v81 != v35)
        {
          objc_enumerationMutation(v65);
        }

        v37 = *(*(&v80 + 1) + 8 * j);
        v38 = container_log_handle_for_category();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v72 = v37;
          _os_log_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_DEFAULT, "Disk sync evicting stale entry: %@", buf, 0xCu);
        }

        identifier = [v37 identifier];
        containerPath2 = [v37 containerPath];
        v41 = [(MCMContainerClassCache *)self _setEntry:0 forIdentifier:identifier containerPath:containerPath2 writeThrough:1 replace:0];
      }

      v34 = [v65 countByEnumeratingWithState:&v80 objects:v79 count:16];
    }

    while (v34);
  }

  allObjects = [v15 allObjects];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_8;
  v67[3] = &unk_1E86AFED0;
  v67[4] = self;
  [(MCMContainerClassCache *)self _processURLs:allObjects handler:v67];

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_10;
  v66[3] = &unk_1E86AFED0;
  v66[4] = self;
  [(MCMContainerClassCache *)self _processCorruptEntries:array2 handler:v66];
  v43 = [v19 count];
  v44 = [v15 count];
  v45 = [v65 count];
  if ([(MCMContainerClassCache *)self firstBuild])
  {
    [(MCMContainerClassCache *)self setFirstBuild:0];
    v46 = v59;
  }

  else
  {
    v46 = v59;
    if ([v15 count] || objc_msgSend(v65, "count"))
    {
      [(MCMContainerClassCache *)self notify];
      container_notify_increment_generation();
    }
  }

  v47 = container_log_handle_for_category();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v44 + v43 - v45;
    v49 = [v15 count];
    v50 = [v65 count];
    *buf = 138413058;
    v72 = v46;
    v73 = 2048;
    v74 = v49;
    v75 = 2048;
    v76 = v50;
    v77 = 2048;
    v78 = v48;
    _os_log_impl(&dword_1DF2C3000, v47, OS_LOG_TYPE_DEFAULT, "Finished resyncing container class cache: %@, added = %lu, removed = %lu, total = %lu", buf, 0x2Au);
  }

  v51 = container_log_handle_for_category();
  v52 = v51;
  if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    containerClass2 = [v46 containerClass];
    *buf = 134349056;
    v72 = containerClass2;
    _os_signpost_emit_with_name_impl(&dword_1DF2C3000, v52, OS_SIGNPOST_INTERVAL_END, spida, "ResyncingCache", " class=%{public, signpost.description:attribute}llu ", buf, 0xCu);
  }
}

BOOL __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 urlsForItemsInDirectoryAtURL:v5 error:a3];

  [*(a1 + 32) addObjectsFromArray:v7];
  return v7 != 0;
}

void __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_8(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Disk sync reporting on new entry: %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = [v3 containerPath];
  v8 = [v5 _setEntry:v3 forIdentifier:v6 containerPath:v7 writeThrough:1 replace:0];
}

void __45__MCMContainerClassCache__queue_syncWithDisk__block_invoke_10(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = container_log_handle_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEFAULT, "Disk sync reporting on repaired entry: %@", &v9, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 identifier];
  v7 = [v3 containerPath];
  v8 = [v5 _setEntry:v3 forIdentifier:v6 containerPath:v7 writeThrough:1 replace:1];
}

- (BOOL)_checkExistanceOfCacheEntry:(id)entry libraryRepair:(id)repair
{
  v18 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  repairCopy = repair;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  containerClassPath = [(MCMContainerClassCache *)self containerClassPath];
  classURL = [containerClassPath classURL];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MCMContainerClassCache__checkExistanceOfCacheEntry_libraryRepair___block_invoke;
  v12[3] = &unk_1E86B1090;
  v12[4] = &v14;
  v13 = 0;
  [repairCopy fixAndRetryIfPermissionsErrorWithURL:classURL error:&v13 duringBlock:v12];
  v10 = v13;

  LOBYTE(containerClassPath) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return containerClassPath;
}

uint64_t __68__MCMContainerClassCache__checkExistanceOfCacheEntry_libraryRepair___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 itemAtURL:v5 exists:*(*(a1 + 32) + 8) + 24 error:a3];

  return v7;
}

- (id)concurrentWriteThroughHandler
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
  os_unfair_lock_unlock(&self->_cacheLock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)setConcurrentWriteThroughHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = _Block_copy(handlerCopy);

  lock_concurrentWriteThroughHandler = self->_lock_concurrentWriteThroughHandler;
  self->_lock_concurrentWriteThroughHandler = v5;

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)forceWriteThrough
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = _Block_copy(self->_lock_concurrentWriteThroughHandler);
  lock_cache = [(MCMContainerClassCache *)self lock_cache];
  v5 = [lock_cache copy];

  os_unfair_lock_unlock(&self->_cacheLock);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__MCMContainerClassCache_forceWriteThrough__block_invoke;
    v6[3] = &unk_1E86AFEA8;
    v7 = v3;
    [v5 enumerateKeysAndObjectsWithOptions:1 usingBlock:v6];
  }
}

uint64_t __43__MCMContainerClassCache_forceWriteThrough__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);

  return v1();
}

- (void)resyncRequired
{
  os_unfair_lock_lock(&self->_resyncRequiredLock);
  self->_lock_resyncRequired = 1;

  os_unfair_lock_unlock(&self->_resyncRequiredLock);
}

- (void)asyncStartSynchronization
{
  v3[5] = *MEMORY[0x1E69E9840];
  fsScanQueue = self->_fsScanQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__MCMContainerClassCache_asyncStartSynchronization__block_invoke;
  v3[3] = &unk_1E86B0E08;
  v3[4] = self;
  dispatch_async(fsScanQueue, v3);
}

void *__51__MCMContainerClassCache_asyncStartSynchronization__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_consumeResyncRequired];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _queue_syncWithDisk];
  }

  return result;
}

- (BOOL)enumerateCacheEntriesWithEnumerator:(id)enumerator
{
  v20 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  os_unfair_lock_lock(&self->_cacheLock);
  lock_cache = [(MCMContainerClassCache *)self lock_cache];
  v6 = [lock_cache copy];

  os_unfair_lock_unlock(&self->_cacheLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [v7 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        if (([v13 corrupt] & 1) == 0 && (objc_msgSend(v13, "ignore") & 1) == 0)
        {
          if ((enumeratorCopy[2](enumeratorCopy, v13) & 1) == 0)
          {

            goto LABEL_14;
          }

          v10 = 1;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_14:
    v10 = 0;
  }

  return v10 & 1;
}

- (id)setCacheEntry:(id)entry forIdentifier:(id)identifier writeThrough:(BOOL)through
{
  throughCopy = through;
  entryCopy = entry;
  identifierCopy = identifier;
  if (entryCopy)
  {
    [entryCopy setXattrs];
  }

  containerPath = [entryCopy containerPath];
  v11 = [(MCMContainerClassCache *)self _setEntry:entryCopy forIdentifier:identifierCopy containerPath:containerPath writeThrough:throughCopy replace:1];

  [(MCMContainerClassCache *)self notify];
  container_notify_increment_generation();
  [v11 setGeneration:{-[MCMContainerClassCache generation](self, "generation")}];

  return v11;
}

- (id)setCacheEntry:(id)entry forIdentifier:(id)identifier
{

  return [(MCMContainerClassCache *)self setCacheEntry:entry forIdentifier:identifier writeThrough:1];
}

- (id)cacheEntryForIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(MCMContainerClassCache *)self waitForSynchronizationToComplete];
  os_unfair_lock_lock(&self->_cacheLock);
  lock_cache = [(MCMContainerClassCache *)self lock_cache];
  v6 = [lock_cache objectForKeyedSubscript:identifierCopy];

  if (([v6 corrupt] & 1) != 0 || objc_msgSend(v6, "ignore"))
  {

    v6 = 0;
  }

  [v6 setGeneration:{-[MCMContainerClassCache generation](self, "generation")}];
  os_unfair_lock_unlock(&self->_cacheLock);
  v7 = container_log_handle_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = identifierCopy;
    v11 = 2112;
    v12 = v6;
    _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, "Retrieving cache entry; identifier = %@, cache entry = %@", &v9, 0x16u);
  }

  return v6;
}

- (MCMContainerClassCache)initWithContainerClassPath:(id)path cacheEntryClass:(Class)class targetQueue:(id)queue userIdentityCache:(id)cache
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  queueCopy = queue;
  cacheCopy = cache;
  v33.receiver = self;
  v33.super_class = MCMContainerClassCache;
  v14 = [(MCMContainerClassCache *)&v33 init];
  v15 = v14;
  if (!v14)
  {
LABEL_12:
    v28 = v15;
    goto LABEL_13;
  }

  v14->_lock_resyncRequired = 1;
  lock_concurrentWriteThroughHandler = v14->_lock_concurrentWriteThroughHandler;
  *&v14->_lock_concurrentWriteThroughHandler = 0u;

  objc_storeStrong(&v15->_cacheEntryClass, class);
  v15->_containerClass = [pathCopy containerClass];
  v17 = containermanager_copy_global_configuration();
  v18 = [v17 dispositionForContainerClass:v15->_containerClass];

  if (v18 == 1)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    targetDiskScanUUID = v15->_targetDiskScanUUID;
    v15->_targetDiskScanUUID = uUID;

    lastCompletedDiskScanUUID = v15->_lastCompletedDiskScanUUID;
    v15->_lastCompletedDiskScanUUID = 0;

    objc_storeStrong(&v15->_containerClassPath, path);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    lock_cache = v15->_lock_cache;
    v15->_lock_cache = dictionary;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_BACKGROUND, 0);

    if (queueCopy)
    {
      v26 = dispatch_queue_create_with_target_V2("com.apple.containermanagerd.fsScan", v25, queueCopy);
    }

    else
    {
      v26 = dispatch_queue_create("com.apple.containermanagerd.fsScan", v25);
    }

    fsScanQueue = v15->_fsScanQueue;
    v15->_fsScanQueue = v26;

    objc_storeStrong(&v15->_userIdentityCache, cache);
    v15->_firstBuild = 1;
    v30 = container_notify_create();
    v15->_notify = v30;
    if (v30)
    {
      [pathCopy containerClass];
      container_notify_set_class();
    }

    goto LABEL_12;
  }

  v27 = container_log_handle_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    containerClass = v15->_containerClass;
    *buf = 134217984;
    v35 = containerClass;
    _os_log_fault_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_FAULT, "Attempting to build cache for class not supported by this daemon: %llu", buf, 0xCu);
  }

  v28 = 0;
LABEL_13:

  return v28;
}

@end