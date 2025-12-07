@interface TRIAssetStoreOperator
+ (unint64_t)_fileSizeInBytesForPath:(id)path;
- (BOOL)_acquireLockfileAndRunBlock:(id)block;
- (BOOL)_acquireLockfileInAssetStorePath:(id)path andRunBlock:(id)block;
- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)identifier;
- (BOOL)_fixFileProtectionForFileURL:(id)l;
- (BOOL)_forceRemoveItemAtPath:(id)path;
- (BOOL)_incrementUnrefAgeForAssetWithIdentifier:(id)identifier newValue:(unsigned int *)value dryRun:(BOOL)run;
- (BOOL)_migrateAssetContentsWithLocalAssetStorePath:(id)path flockWitness:(TRIFlockWitness_ *)witness;
- (BOOL)_migrateAssetsDatabaseWithLocalAssetStorePath:(id)path;
- (BOOL)_moveDirectoryAssetFromDirectory:(id)directory toLocationForAssetIdentifier:(id)identifier;
- (BOOL)_nonAtomicOverwriteWithSrc:(id)src dest:(id)dest finalPermissionBits:(const unsigned __int16 *)bits;
- (BOOL)_overwriteRenameAsAtomicallyAsPossibleWithSrc:(id)src dest:(id)dest;
- (BOOL)_relinkLocalAssetToGlobalAssetStore:(id)store withAssetId:(id)id localAssetDir:(id)dir;
- (BOOL)_removeAssetWithIdentifier:(id)identifier flockWitness:(TRIFlockWitness_ *)witness deletedAssetSize:(unint64_t *)size dryRun:(BOOL)run;
- (BOOL)_removeDeadSymlinksWithFlockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed;
- (BOOL)_removePaths:(id)paths numRemoved:(unsigned int *)removed;
- (BOOL)_removeUnreferencedAssetsWithFlockWitness:(TRIFlockWitness_ *)witness olderThanAge:(unsigned int)age numRemoved:(unsigned int *)removed deletedAssetsSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids deletedAssetIds:(id *)self0;
- (BOOL)addSymlinkFromAssetWithIdentifier:(id)identifier toPath:(id)path flockWitness:(TRIFlockWitness_ *)witness;
- (BOOL)collectGarbageOlderThanNumScans:(unsigned int)scans deletedAssetSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids deletedAssetIds:(id *)assetIds;
- (BOOL)fixFileProtectionForAssetStoreFiles;
- (BOOL)migrateToGlobalAssetStoreFromLocalAssetStore:(id)store;
- (BOOL)removeAssetWithIdentifier:(id)identifier;
- (BOOL)saveAssetWithIdentifier:(id)identifier sourcePath:(id)path flockWitness:(TRIFlockWitness_ *)witness removeSourceOnFailure:(BOOL)failure;
- (TRIAssetStoreOperator)initWithPaths:(id)paths storageManagement:(id)management assetStore:(id)store;
- (id)_collectDeadSymlinks;
- (id)_collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds:(id)ids ignoreRecentlyCreatedAssets:(BOOL)assets;
- (id)_creationDateForAsset:(id)asset;
- (id)_requireAssetStoreTempDir;
- (id)referenceMAAutoAssetWithId:(id)id futurePath:(id)path currentPath:(id)currentPath isFileFactor:(BOOL)factor;
- (unsigned)_hardLinkCountForAssetWithIdentifier:(id)identifier;
- (unsigned)_hardLinkCountForFileWithPath:(id)path;
- (void)_fixupPermissionsOnPath:(id)path permissionBits:(const unsigned __int16 *)bits;
@end

@implementation TRIAssetStoreOperator

- (TRIAssetStoreOperator)initWithPaths:(id)paths storageManagement:(id)management assetStore:(id)store
{
  pathsCopy = paths;
  managementCopy = management;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = TRIAssetStoreOperator;
  v12 = [(TRIAssetStoreOperator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, paths);
    objc_storeStrong(&v13->_storageManagement, management);
    objc_storeWeak(&v13->_store, storeCopy);
    [storeCopy setAssetOperator:v13];
  }

  return v13;
}

- (BOOL)saveAssetWithIdentifier:(id)identifier sourcePath:(id)path flockWitness:(TRIFlockWitness_ *)witness removeSourceOnFailure:(BOOL)failure
{
  failureCopy = failure;
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  v11 = [(TRIAssetStoreOperator *)self _moveDirectoryAssetFromDirectory:pathCopy toLocationForAssetIdentifier:identifierCopy];
  if (!v11)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = &stru_287FA0430;
      *buf = 138543874;
      v21 = pathCopy;
      v22 = 2114;
      if (failureCopy)
      {
        v18 = @"removing";
      }

      v23 = identifierCopy;
      v24 = 2114;
      v25 = v18;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset store failed to move dir. asset from: %{public}@ to location for asset: %{public}@. %{public}@", buf, 0x20u);
    }

    if (failureCopy)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v19 = 0;
      v14 = [defaultManager triForceRemoveItemAtPath:pathCopy error:&v19];
      v15 = v19;

      if ((v14 & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v21 = pathCopy;
          v22 = 2114;
          v23 = v15;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Asset store failed follow-up removal of source at path: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  return v11;
}

- (BOOL)_moveDirectoryAssetFromDirectory:(id)directory toLocationForAssetIdentifier:(id)identifier
{
  v84[2] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  identifierCopy = identifier;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v9 = WeakRetained;
  v64 = identifierCopy;
  if (WeakRetained)
  {
    v10 = [WeakRetained pathForAssetDirWithIdentifier:identifierCopy];
    v65 = [directoryCopy stringByAppendingPathComponent:@"content"];
    v78 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager fileExistsAtPath:v65 isDirectory:&v78];

    if ((v12 & 1) == 0)
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v83.st_dev = 138543618;
        *&v83.st_mode = v64;
        WORD2(v83.st_ino) = 2114;
        *(&v83.st_ino + 6) = v65;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to save asset %{public}@. Can't find source at %{public}@", &v83, 0x16u);
      }
    }

    if (v78 == 1)
    {
      v14 = v65;
      if (chmod([v65 fileSystemRepresentation], 0x168u))
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v54 = __error();
          v55 = strerror(*v54);
          v56 = *__error();
          v83.st_dev = 138543874;
          *&v83.st_mode = v65;
          WORD2(v83.st_ino) = 2080;
          *(&v83.st_ino + 6) = v55;
          HIWORD(v83.st_gid) = 1024;
          v83.st_rdev = v56;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to set permissions on dir-asset toplevel directory %{public}@: %s (%d)", &v83, 0x1Cu);
        }

LABEL_57:
        v16 = 0;
LABEL_63:

        goto LABEL_64;
      }

      v72 = 0;
      v73 = &v72;
      v74 = 0x3032000000;
      v75 = __Block_byref_object_copy__29;
      v76 = __Block_byref_object_dispose__29;
      v77 = 0;
      v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v65 isDirectory:1];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = *MEMORY[0x277CBE8A8];
      v60 = *MEMORY[0x277CBE868];
      v84[0] = *MEMORY[0x277CBE868];
      v84[1] = v19;
      v63 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __87__TRIAssetStoreOperator__moveDirectoryAssetFromDirectory_toLocationForAssetIdentifier___block_invoke;
      v71[3] = &unk_279DE2410;
      v71[4] = &v72;
      v21 = [defaultManager2 enumeratorAtURL:v17 includingPropertiesForKeys:v20 options:0 errorHandler:v71];
      v59 = v17;

      if (v21)
      {
        while (1)
        {
          v22 = objc_autoreleasePoolPush();
          nextObject = [v21 nextObject];
          v24 = nextObject;
          if (!nextObject)
          {
            v31 = 3;
            goto LABEL_29;
          }

          v69 = 0;
          v70 = 0;
          v25 = [nextObject getResourceValue:&v70 forKey:v63 error:&v69];
          v26 = v70;
          v27 = v69;
          if (v25)
          {
            if ([v26 BOOLValue])
            {
              path = [v24 path];
              if (!path)
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"TRIAssetStoreOperator.m" lineNumber:140 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.path"}];
              }

              v29 = path;
              if (!chmod([path fileSystemRepresentation], 0x124u))
              {
LABEL_43:
                v31 = 2;
                goto LABEL_27;
              }

              v30 = TRILogCategory_Server();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v43 = __error();
                v58 = strerror(*v43);
                v44 = *__error();
                v83.st_dev = 138543874;
                *&v83.st_mode = path;
                WORD2(v83.st_ino) = 2080;
                *(&v83.st_ino + 6) = v58;
                HIWORD(v83.st_gid) = 1024;
                v83.st_rdev = v44;
                _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to set permissions on dir-asset file %{public}@: %s (%d)", &v83, 0x1Cu);
              }

              goto LABEL_23;
            }

            v67 = 0;
            v68 = 0;
            v32 = [v24 getResourceValue:&v68 forKey:v60 error:&v67];
            v26 = v68;
            v27 = v67;
            if (v32)
            {
              if (![v26 BOOLValue])
              {
                v31 = 0;
                goto LABEL_28;
              }

              path = [v24 path];
              if (!path)
              {
                currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"TRIAssetStoreOperator.m" lineNumber:165 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.path"}];
              }

              memset(&v83, 0, sizeof(v83));
              v33 = path;
              if (!lstat([path fileSystemRepresentation], &v83) && (~v83.st_mode & 0x140) != 0)
              {
                v30 = TRILogCategory_Server();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *v80 = v83.st_mode;
                  *&v80[4] = 2114;
                  *&v80[6] = directoryCopy;
                  v38 = v30;
                  v39 = "Candidate asset subdirectory was constructed with bad permission bits 0%o: %{public}@";
                  v40 = 18;
LABEL_50:
                  _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
                }
              }

              else
              {
                v34 = path;
                if (!chmod([path fileSystemRepresentation], 0x168u))
                {
                  goto LABEL_43;
                }

                v30 = TRILogCategory_Server();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v57 = v30;
                  v35 = __error();
                  v36 = strerror(*v35);
                  v37 = *__error();
                  *buf = 138543874;
                  *v80 = path;
                  *&v80[8] = 2080;
                  *&v80[10] = v36;
                  v81 = 1024;
                  v82 = v37;
                  v30 = v57;
                  v38 = v57;
                  v39 = "Failed to set permissions on dir-asset subdirectory %{public}@: %s (%d)";
                  v40 = 28;
                  goto LABEL_50;
                }
              }

LABEL_23:

              goto LABEL_26;
            }

            path = TRILogCategory_Server();
            if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
            {
              v83.st_dev = 138543362;
              *&v83.st_mode = v27;
              v41 = path;
              v42 = "Failed to get directory attribute: %{public}@";
LABEL_46:
              _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, v42, &v83, 0xCu);
            }
          }

          else
          {
            path = TRILogCategory_Server();
            if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
            {
              v83.st_dev = 138543362;
              *&v83.st_mode = v27;
              v41 = path;
              v42 = "Failed to get regular file attribute: %{public}@";
              goto LABEL_46;
            }
          }

LABEL_26:
          v31 = 1;
LABEL_27:

LABEL_28:
LABEL_29:

          objc_autoreleasePoolPop(v22);
          if (v31 && v31 != 2)
          {
            if (v31 == 3)
            {
              v31 = v73[5] != 0;
            }

            goto LABEL_56;
          }
        }
      }

      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v83.st_dev = 138543362;
        *&v83.st_mode = v65;
        _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Failed to enumerate dir-asset toplevel directory: %{public}@", &v83, 0xCu);
      }

      v31 = 1;
LABEL_56:

      _Block_object_dispose(&v72, 8);
      if (v31)
      {
        goto LABEL_57;
      }
    }

    stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v66 = 0;
    v50 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v66];
    v51 = v66;

    if ((v50 & 1) == 0)
    {
      v52 = TRILogCategory_Server();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v83.st_dev = 138543362;
        *&v83.st_mode = v51;
        _os_log_error_impl(&dword_26F567000, v52, OS_LOG_TYPE_ERROR, "Failed to create parent directory for asset: %{public}@", &v83, 0xCu);
      }
    }

    v16 = [(TRIAssetStoreOperator *)selfCopy _overwriteRenameAsAtomicallyAsPossibleWithSrc:directoryCopy dest:v10];
    goto LABEL_63;
  }

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v83.st_dev) = 0;
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", &v83, 2u);
  }

  v16 = 0;
LABEL_64:

  return v16;
}

- (BOOL)removeAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__TRIAssetStoreOperator_removeAssetWithIdentifier___block_invoke;
  v10[3] = &unk_279DE2578;
  v12 = &v13;
  v10[4] = self;
  v6 = identifierCopy;
  v11 = v6;
  if ([(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v10])
  {
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v7 & 1;
}

void *__51__TRIAssetStoreOperator_removeAssetWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _removeAssetWithIdentifier:*(a1 + 40) flockWitness:a2 deletedAssetSize:0 dryRun:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (unint64_t)_fileSizeInBytesForPath:(id)path
{
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager attributesOfItemAtPath:pathCopy error:0];
  fileSize = [v5 fileSize];

  v7 = [defaultManager enumeratorAtPath:pathCopy];
  v8 = objc_autoreleasePoolPush();
  nextObject = [v7 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", pathCopy, v10];
      v12 = [defaultManager attributesOfItemAtPath:v11 error:0];
      fileSize2 = [v12 fileSize];

      fileSize += fileSize2;
      objc_autoreleasePoolPop(v8);
      v8 = objc_autoreleasePoolPush();
      nextObject2 = [v7 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v8);

  return fileSize;
}

- (BOOL)_removeAssetWithIdentifier:(id)identifier flockWitness:(TRIFlockWitness_ *)witness deletedAssetSize:(unint64_t *)size dryRun:(BOOL)run
{
  runCopy = run;
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v11 = TRILogCategory_Server();
  v12 = v11;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = &stru_287FA0430;
    if (runCopy)
    {
      v13 = @"(dry-run) ";
    }

    *buf = 138543618;
    v24 = v13;
    v25 = 2114;
    v26 = identifierCopy;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Removing asset: %{public}@", buf, 0x16u);
  }

  if (size)
  {
    *size = 0;
  }

  if ([WeakRetained hasAssetWithIdentifier:identifierCopy type:0])
  {
    v12 = [WeakRetained pathForAssetDirWithIdentifier:identifierCopy];
    v14 = [objc_opt_class() _fileSizeInBytesForPath:v12];
    if (runCopy)
    {
      if (!size)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v22 = os_transaction_create();
    _requireAssetStoreTempDir = [(TRIAssetStoreOperator *)self _requireAssetStoreTempDir];
    v17 = objc_opt_new();
    uUIDString = [v17 UUIDString];
    v19 = [_requireAssetStoreTempDir stringByAppendingPathComponent:uUIDString];

    if ([(TRIAssetStoreOperator *)self _overwriteRenameAsAtomicallyAsPossibleWithSrc:v12 dest:v19])
    {
      v20 = [(TRIAssetStoreOperator *)self _forceRemoveItemAtPath:v19];

      v15 = 1;
      if (!size || !v20)
      {
        goto LABEL_21;
      }

LABEL_19:
      *size = v14;
LABEL_20:
      v15 = 1;
      goto LABEL_21;
    }

LABEL_14:
    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 1;
LABEL_22:

  return v15;
}

- (BOOL)addSymlinkFromAssetWithIdentifier:(id)identifier toPath:(id)path flockWitness:(TRIFlockWitness_ *)witness
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained pathForRefsToAssetWithIdentifier:identifierCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    v13 = [defaultManager createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v28];
    v14 = v28;

    if ((v13 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v14;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
      }
    }

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_opt_new();
    uUIDString = [v17 UUIDString];
    v19 = [v16 initWithFormat:@"link-%@", uUIDString];
    v20 = [v11 stringByAppendingPathComponent:v19];

    v21 = symlink([pathCopy fileSystemRepresentation], objc_msgSend(v20, "fileSystemRepresentation"));
    v22 = v21 == 0;
    if (v21)
    {
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = __error();
        v26 = strerror(*v25);
        v27 = *__error();
        *buf = 138544130;
        v30 = v20;
        v31 = 2114;
        v32 = pathCopy;
        v33 = 2080;
        v34 = v26;
        v35 = 1024;
        v36 = v27;
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
      }
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (id)referenceMAAutoAssetWithId:(id)id futurePath:(id)path currentPath:(id)currentPath isFileFactor:(BOOL)factor
{
  idCopy = id;
  pathCopy = path;
  currentPathCopy = currentPath;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__29;
  v30 = __Block_byref_object_dispose__29;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke;
  v19[3] = &unk_279DE25C0;
  v19[4] = self;
  v14 = idCopy;
  v20 = v14;
  v15 = pathCopy;
  factorCopy = factor;
  v21 = v15;
  v24 = a2;
  v16 = currentPathCopy;
  v22 = v16;
  v23 = &v26;
  [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v19];
  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x277D85DE8];
  v2 = [[TRIAssetStoreDatabase alloc] initWithPaths:*(*(a1 + 32) + 8) storageManagement:*(*(a1 + 32) + 16)];
  if (v2)
  {
    location = 0;
    v58 = objc_opt_new();
    v3 = [v58 createAutoAssetWithId:*(a1 + 40) decryptionKey:0 error:&location];
    if (!v3)
    {
      log = TRILogCategory_Server();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = location;
        _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Failed to instantiate MAAutoAsset %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_57;
    }

    v4 = location;
    location = 0;

    obj = location;
    log = [v3 currentLocksSync:&obj];
    objc_storeStrong(&location, obj);
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = log;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "MAAutoAssetStatus lock usage: %{public}@", buf, 0xCu);
    }

    v56 = [log objectForKeyedSubscript:@"persistently required by Trial"];
    if (log && [v56 intValue])
    {
      v6 = TRILogCategory_Server();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v7 = [v56 longValue];
      *buf = 134218242;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v3;
      v8 = "MAAutoAsset already persistently locked %ld time(s), creating new lock anyway: %{public}@";
      v9 = v6;
      v10 = 22;
    }

    else
    {
      v6 = TRILogCategory_Server();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138543362;
      *&buf[4] = v3;
      v8 = "MAAutoAsset was not persistently locked, creating new lock: %{public}@";
      v9 = v6;
      v10 = 12;
    }

    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_12:

    v60 = objc_opt_new();
    [v60 setLockAcrossTermination:1];
    [v60 setLockAcrossReboot:1];
    [v60 setLockInhibitsEmergencyRemoval:1];
    v11 = location;
    location = 0;

    v65 = location;
    v57 = [v3 lockContentSync:@"persistently required by Trial" withUsagePolicy:v60 withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:&v65];
    objc_storeStrong(&location, v65);
    if (!v57)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v3;
        *&buf[12] = 2114;
        *&buf[14] = location;
        _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Could not create persistent lock for MAAutoAsset %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_56;
    }

    v12 = [v3 assetSelector];
    v13 = [v58 endAllPreviousLocksOfReasonSync:@"transiently required by Trial" forClientName:*MEMORY[0x277D73AB0] forAssetSelector:v12];

    v14 = objc_alloc(MEMORY[0x277D289F8]);
    v15 = [v3 assetSelector];
    v16 = [v15 assetType];
    v17 = [v3 assetSelector];
    v18 = [v17 assetSpecifier];
    v54 = [v14 initForAssetType:v16 withAssetSpecifier:v18];

    [v58 eliminatePromotedNeverLockedForSelector:v54 completion:&__block_literal_global_31];
    if (![(TRIAssetStoreDatabase *)v2 addReferenceToAutoAssetId:*(a1 + 40) forLifetimeOfPath:*(a1 + 48)])
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 40);
        *buf = 138543362;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to add TRIAssetStoreDatabase reference for auto asset: %{public}@", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (*(a1 + 80) == 1)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v74 = __Block_byref_object_copy__29;
      v75 = __Block_byref_object_dispose__29;
      v76 = 0;
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = *MEMORY[0x277CBE8A8];
      v72 = *MEMORY[0x277CBE8A8];
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke_360;
      v64[3] = &unk_279DE2410;
      v64[4] = buf;
      v22 = [v19 enumeratorAtURL:v57 includingPropertiesForKeys:v21 options:1 errorHandler:v64];

      if (v22)
      {
        v55 = 0;
        while (1)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 nextObject];
          v25 = v24;
          if (!v24)
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v32 = [v57 path];
              *v68 = 138543618;
              v69 = v32;
              v70 = 2114;
              v71 = v3;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Factor level of File-type points to MAAutoAsset content directory %{public}@ with no regular files: %{public}@", v68, 0x16u);
            }

            v31 = 1;
            goto LABEL_30;
          }

          v62 = 0;
          v63 = 0;
          v26 = [v24 getResourceValue:&v63 forKey:v20 error:&v62];
          v27 = v63;
          v28 = v62;
          if (v26)
          {
            if (![v27 BOOLValue])
            {
              v31 = 0;
              goto LABEL_29;
            }

            v29 = [v25 path];
            if (v29)
            {
              v30 = v55;
              v55 = v29;
            }

            else
            {
              v33 = [MEMORY[0x277CCA890] currentHandler];
              [v33 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:419 description:{@"Expression was unexpectedly nil/false: %@", @"firstRegularFileURL.path"}];

              v30 = v55;
              v55 = 0;
            }
          }

          else
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v68 = 138543362;
              v69 = v28;
              _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to determine regular file status: %{public}@", v68, 0xCu);
            }
          }

          v31 = 1;
LABEL_29:

LABEL_30:
          objc_autoreleasePoolPop(v23);
          if (v31)
          {
            goto LABEL_43;
          }
        }
      }

      v38 = TRILogCategory_Server();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v53 = *(*&buf[8] + 40);
        *v68 = 138543362;
        v69 = v53;
        _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Unable to enumerate URL: %{public}@", v68, 0xCu);
      }

      v55 = 0;
LABEL_43:

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v55 = [v57 path];
    }

    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n", v55];
    v40 = [v39 dataUsingEncoding:4];

    v41 = *(a1 + 56);
    v61 = 0;
    LOBYTE(v39) = [v40 writeToFile:v41 options:0x10000000 error:&v61];
    v42 = v61;
    v43 = v42;
    if (v39)
    {
      goto LABEL_45;
    }

    v50 = [v42 domain];
    if ([v50 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v51 = [v43 code] == 516;

      if (v51)
      {
LABEL_45:
        v44 = TRILogCategory_Server();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 56);
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2114;
          *&buf[14] = v55;
          _os_log_impl(&dword_26F567000, v44, OS_LOG_TYPE_DEFAULT, "Created maRefs file at %{public}@ referencing MA asset at %{public}@", buf, 0x16u);
        }

        v46 = *(a1 + 56);
        v47 = *(*(a1 + 64) + 8);
        v48 = v46;
        v49 = *(v47 + 40);
        *(v47 + 40) = v48;
LABEL_54:

        v36 = v55;
LABEL_55:

        v35 = v54;
LABEL_56:

LABEL_57:
        goto LABEL_58;
      }
    }

    else
    {
    }

    v49 = TRILogCategory_Server();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v52 = *(a1 + 56);
      *buf = 138412546;
      *&buf[4] = v52;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "Failed to create file for MAAutoAsset reference at %@: %{public}@. ", buf, 0x16u);
    }

    goto LABEL_54;
  }

LABEL_58:
}

void __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate pre-SU-staged MAAutoAsset %{public}@: %{public}@ ", &v7, 0x16u);
    }
  }
}

- (BOOL)collectGarbageOlderThanNumScans:(unsigned int)scans deletedAssetSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids deletedAssetIds:(id *)assetIds
{
  idsCopy = ids;
  if (size)
  {
    *size = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke;
  v18[3] = &unk_279DE2630;
  v20 = &v26;
  sizeCopy = size;
  v18[4] = self;
  scansCopy = scans;
  assetsCopy = assets;
  runCopy = run;
  v15 = idsCopy;
  v19 = v15;
  assetIdsCopy = assetIds;
  [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v18];
  v16 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _removeDeadSymlinksWithFlockWitness:a2 numRemoved:&v14];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 8) assetStore];
    *buf = 138543618;
    v16 = v5;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Garbage collection for asset store %{public}@ removed %u dead symlinks.", buf, 0x12u);
  }

  v14 = 0;
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _removeUnreferencedAssetsWithFlockWitness:a2 olderThanAge:*(a1 + 72) numRemoved:&v14 deletedAssetsSize:*(a1 + 56) ignoreRecentlyCreatedAssets:*(a1 + 76) dryRun:*(a1 + 77) includedCacheDeletableAssetIds:*(a1 + 40) deletedAssetIds:*(a1 + 64)];
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 8) assetStore];
    *buf = 138543618;
    v16 = v7;
    v17 = 1024;
    v18 = v14;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Garbage collection for asset store %{public}@ removed %u assets.", buf, 0x12u);
  }

  v8 = [[TRIAssetStoreDatabase alloc] initWithPaths:*(*(a1 + 32) + 8) storageManagement:*(*(a1 + 32) + 16)];
  v9 = v8;
  if (v8)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_367;
    v12[3] = &__block_descriptor_41_e34_v32__0__TRIFullMAAssetId_8_B16_B24l;
    v12[4] = *(a1 + 56);
    v13 = *(a1 + 77);
    [(TRIAssetStoreDatabase *)v8 enumerateAssetIdsWithoutLiveReferencesUsingBlock:v12];
    if ((*(a1 + 77) & 1) == 0)
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [*(a1 + 32) _requireAssetStoreTempDir];
      [v10 removeItemAtPath:v11 error:0];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_367(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_new();
  v7 = [v6 createAutoAssetWithId:v5 decryptionKey:0 error:0];
  v17 = 0;
  v8 = [v7 currentAssetSizeOnDiskUsingStatus:&v17];
  v9 = v17;
  if ([v8 longLongValue] < 1)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to get MA asset size for %{public}@ garbage collection: %{public}@", buf, 0x16u);
    }
  }

  else if (*(a1 + 32))
  {
    **(a1 + 32) += [v8 longLongValue];
  }

  v11 = *(a1 + 40);
  v12 = TRILogCategory_Server();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (v13)
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "(Dry-run) Removing MAAutoAsset: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Removing MAAutoAsset: %{public}@", buf, 0xCu);
    }

    *a3 = 1;
    v14 = [v7 assetSelector];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_368;
    v15[3] = &unk_279DE25E8;
    v16 = v7;
    [v6 eliminateAllForSelector:v14 completion:v15];

    v12 = v16;
  }
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_368(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate MAAutoAsset %{public}@: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Eliminated MAAutoAsset: %{public}@", &v9, 0xCu);
  }
}

- (BOOL)_incrementUnrefAgeForAssetWithIdentifier:(id)identifier newValue:(unsigned int *)value dryRun:(BOOL)run
{
  v41 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained pathForAssetDirWithIdentifier:identifierCopy];
    v13 = [v12 stringByAppendingPathComponent:@"unref-age"];

    v38 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v13 options:0 error:&v38];
    v15 = v38;
    v16 = v15;
    if (v14)
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      if (v17)
      {
        v18 = v17;
        v35 = a2;
        v19 = v16;
        v37 = -1;
        if (![MEMORY[0x277D73748] convertFromString:v17 usingBase:10 toI64:&v37] || (v20 = v37, HIDWORD(v37)))
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v40 = v18;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to decode unref-age content: %{public}@", buf, 0xCu);
          }

          v22 = 0;
LABEL_33:
          v16 = v19;
          goto LABEL_37;
        }

        if (v20 == 0xFFFFFFFF)
        {
          v21 = -1;
        }

        else
        {
          v21 = v20 + 1;
        }

        v16 = v19;
LABEL_23:
        *value = v21;
        if (run)
        {
          v22 = 1;
LABEL_38:

          goto LABEL_39;
        }

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u\n", *value];
        v29 = [v18 dataUsingEncoding:4];

        if (!v29)
        {
          [MEMORY[0x277CCA890] currentHandler];
          v34 = v33 = v16;
          [v34 handleFailureInMethod:v35 object:self file:@"TRIAssetStoreOperator.m" lineNumber:594 description:{@"Invalid parameter not satisfying: %@", @"data"}];

          v16 = v33;
        }

        v36 = 0;
        v30 = [v29 writeToFile:v13 options:0x10000000 error:&v36];
        v19 = v36;
        if ((v30 & 1) == 0)
        {
          v31 = TRILogCategory_Server();
          v16 = v19;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v40 = v19;
            _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to update content of unref-age: %{public}@", buf, 0xCu);
          }

          v22 = 0;
          v14 = v29;
          goto LABEL_37;
        }

        v22 = 1;
        v14 = v29;
        goto LABEL_33;
      }

      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to read non-UTF-8 unref-age.", buf, 2u);
      }
    }

    else
    {
      domain = [v15 domain];
      v24 = domain;
      if (domain == *MEMORY[0x277CCA050])
      {
        v35 = a2;
        v26 = v16;
        code = [v16 code];

        v28 = code == 260;
        v16 = v26;
        if (v28)
        {
          v21 = 1;
          goto LABEL_23;
        }
      }

      else
      {
      }

      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v40 = v16;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to read content of unref-age: %{public}@", buf, 0xCu);
      }

      v14 = 0;
    }

    v22 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
  }

  v22 = 0;
LABEL_39:

  return v22;
}

- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", &v15, 2u);
    }

    goto LABEL_10;
  }

  v7 = [WeakRetained pathForAssetDirWithIdentifier:identifierCopy];
  v8 = [v7 stringByAppendingPathComponent:@"unref-age"];

  if (unlink([v8 fileSystemRepresentation]) && *__error() != 2)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      v15 = 136315394;
      v16 = v13;
      v17 = 1024;
      v18 = v14;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to unlink() unref-age: %s (%d)", &v15, 0x12u);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (id)_collectDeadSymlinks
{
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__29;
    v20 = __Block_byref_object_dispose__29;
    v21 = objc_opt_new();
    if (*(v17 + 5))
    {
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__TRIAssetStoreOperator__collectDeadSymlinks__block_invoke;
      v9[3] = &unk_279DE2658;
      v13 = a2;
      v9[4] = self;
      v11 = v14;
      v10 = WeakRetained;
      v12 = buf;
      [v10 enumerateAssetDirsUsingBlock:v9];
      v6 = *(v17 + 5);

      _Block_object_dispose(v14, 8);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

void __45__TRIAssetStoreOperator__collectDeadSymlinks__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if (!v6)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:v5];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  if (!v9)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:651 description:{@"Expression was unexpectedly nil/false: %@", @"refsURL.path"}];
  }

  if ([v8 fileExistsAtPath:v9])
  {

    goto LABEL_13;
  }

  v10 = [*(a1 + 32) _hardLinkCountForAssetWithIdentifier:v6];

  if (v10 >= 2)
  {
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v12 = TRILogCategory_Server();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        *buf = 138543362;
        v28 = v6;
LABEL_26:
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset %{public}@ has other hard link references but no refs folder", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138543362;
      v28 = v6;
      goto LABEL_26;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_13:
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v16 = objc_autoreleasePoolPush();
  v17 = [v15 nextObject];
  if (v17)
  {
    v18 = v17;
    do
    {
      v19 = [v18 lastPathComponent];
      v20 = [v19 hasPrefix:@"link-"];

      if (v20)
      {
        v21 = [v18 path];
        if (!v21)
        {
          v22 = [MEMORY[0x277CCA890] currentHandler];
          [v22 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"symlinkPath"}];
        }

        if (([*(a1 + 40) isValidTargetForSymlink:v21 assetIdentifier:v6] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "addString:", v21) & 1) == 0)
        {
          v23 = *(*(a1 + 56) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = 0;

          *a3 = 1;
          break;
        }
      }

      objc_autoreleasePoolPop(v16);
      v16 = objc_autoreleasePoolPush();
      v18 = [v15 nextObject];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v16);
}

- (unsigned)_hardLinkCountForAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_store);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained pathForAssetContentWithIdentifier:identifierCopy];
    v16 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8 isDirectory:&v16];

    v11 = 0;
    if (v10)
    {
      if (v16)
      {
        v12 = [MEMORY[0x277CCAA00] triArbitraryFileInDirWithPath:v8];
      }

      else
      {
        v12 = v8;
      }

      v13 = v12;
      if (v12)
      {
        v11 = [(TRIAssetStoreOperator *)self _hardLinkCountForFileWithPath:v12];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (unsigned)_hardLinkCountForFileWithPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  memset(&v10, 0, sizeof(v10));
  if (stat([pathCopy fileSystemRepresentation], &v10))
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = __error();
      v8 = strerror(*v7);
      v9 = *__error();
      *buf = 138543874;
      v12 = pathCopy;
      v13 = 2080;
      v14 = v8;
      v15 = 1024;
      v16 = v9;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to stat file at path %{public}@ to find hard link count: %s (%d)", buf, 0x1Cu);
    }

    st_nlink = 0;
  }

  else
  {
    st_nlink = v10.st_nlink;
  }

  return st_nlink;
}

- (BOOL)_removeDeadSymlinksWithFlockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed
{
  _collectDeadSymlinks = [(TRIAssetStoreOperator *)self _collectDeadSymlinks];
  if (_collectDeadSymlinks)
  {
    v7 = [(TRIAssetStoreOperator *)self _removePaths:_collectDeadSymlinks numRemoved:removed];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds:(id)ids ignoreRecentlyCreatedAssets:(BOOL)assets
{
  idsCopy = ids;
  v8 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__29;
    v22 = __Block_byref_object_dispose__29;
    v23 = objc_opt_new();
    if (*(v19 + 5))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __121__TRIAssetStoreOperator__collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds_ignoreRecentlyCreatedAssets___block_invoke;
      v13[3] = &unk_279DE2680;
      v16 = a2;
      v13[4] = self;
      assetsCopy = assets;
      v14 = idsCopy;
      v15 = buf;
      [WeakRetained enumerateAssetDirsUsingBlock:v13];
      v10 = *(v19 + 5);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

void __121__TRIAssetStoreOperator__collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds_ignoreRecentlyCreatedAssets___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v34 = [v4 lastPathComponent];
  if (!v34)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:753 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v33 = v4;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:v4];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = v5;
  v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 nextObject];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    if (!*(a1 + 40))
    {

      objc_autoreleasePoolPop(v9);
      v19 = v32;
      v18 = v33;
      goto LABEL_26;
    }

    v12 = [v10 path];
    if (!v12)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:773 description:{@"Invalid parameter not satisfying: %@", @"refPath"}];
    }

    v13 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:v12];
    if (v13)
    {
      [*(a1 + 40) objectForKeyedSubscript:v34];
      v15 = v14 = v7;
      v16 = [v15 containsObject:v13];

      v7 = v14;
      v8 |= v16 ^ 1;
    }

    else
    {
      v16 = 1;
    }

    objc_autoreleasePoolPop(v9);
    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_14:
  v19 = v32;
  v18 = v33;
  if (v8)
  {
    goto LABEL_26;
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 32);
  v21 = [v33 path];
  if (!v21)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v30 = v29 = v7;
    [v30 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:789 description:{@"Expression was unexpectedly nil/false: %@", @"assetIdentifierURL.path"}];

    v7 = v29;
  }

  v22 = [v20 _creationDateForAsset:v21];

  if (!v22 || ([v22 timeIntervalSinceNow], fabs(v23) >= 600.0))
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v36 = v33;
      v37 = 2112;
      v38 = v22;
      _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_INFO, "Including asset directory %{public}@ for GC (created %@)", buf, 0x16u);
    }

LABEL_23:
    if (([*(*(*(a1 + 48) + 8) + 40) addString:v34] & 1) == 0)
    {
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;

      *a3 = 1;
    }

    goto LABEL_26;
  }

  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v36 = v33;
    v37 = 2112;
    v38 = v22;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_INFO, "Not including asset directory %{public}@ for GC because it's too new (created %@)", buf, 0x16u);
  }

LABEL_26:
}

- (id)_creationDateForAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 0;
  v5 = [defaultManager attributesOfItemAtPath:assetCopy error:&v12];
  v6 = v12;

  if (v5)
  {
    fileCreationDate = [v5 fileCreationDate];
    if (fileCreationDate)
    {
      v8 = fileCreationDate;
      v9 = v8;
      goto LABEL_10;
    }

    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v5;
      v15 = 2114;
      v16 = assetCopy;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Couldn't get creation date from file attributes %@ for %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = assetCopy;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Couldn't read file attributes for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)_removeUnreferencedAssetsWithFlockWitness:(TRIFlockWitness_ *)witness olderThanAge:(unsigned int)age numRemoved:(unsigned int *)removed deletedAssetsSize:(unint64_t *)size ignoreRecentlyCreatedAssets:(BOOL)assets dryRun:(BOOL)run includedCacheDeletableAssetIds:(id)ids deletedAssetIds:(id *)self0
{
  assetsCopy = assets;
  idsCopy = ids;
  if (removed)
  {
    *removed = 0;
  }

  if (size)
  {
    *size = 0;
  }

  v18 = [(TRIAssetStoreOperator *)self _collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds:idsCopy ignoreRecentlyCreatedAssets:assetsCopy];
  v19 = v18;
  if (v18)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 1;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __191__TRIAssetStoreOperator__removeUnreferencedAssetsWithFlockWitness_olderThanAge_numRemoved_deletedAssetsSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke;
    v22[3] = &unk_279DE26A8;
    v22[4] = self;
    v22[5] = &v25;
    runCopy = run;
    ageCopy = age;
    v22[6] = witness;
    v22[7] = removed;
    v22[8] = size;
    v22[9] = assetIds;
    if ([v18 enumerateStringsWithBlock:v22])
    {
      v20 = *(v26 + 24);
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void __191__TRIAssetStoreOperator__removeUnreferencedAssetsWithFlockWitness_olderThanAge_numRemoved_deletedAssetsSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = TRIValidateAssetId();
  if (!v3)
  {
    goto LABEL_14;
  }

  v14 = 0;
  if ([*(a1 + 32) _incrementUnrefAgeForAssetWithIdentifier:v3 newValue:&v14 dryRun:*(a1 + 84)])
  {
    v4 = v14;
  }

  else
  {
    v4 = -1;
    v14 = -1;
  }

  if (v4 > *(a1 + 80))
  {
    *buf = 0;
    if ([*(a1 + 32) _removeAssetWithIdentifier:v3 flockWitness:*(a1 + 48) deletedAssetSize:buf dryRun:*(a1 + 84)])
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        ++*v5;
      }

      v6 = *(a1 + 64);
      if (v6)
      {
        *v6 += *buf;
      }

      v7 = *(a1 + 72);
      if (v7)
      {
        if (*v7)
        {
          v8 = *v7;
          v9 = *v7;
          *v7 = v8;
        }

        else
        {
          v12 = objc_opt_new();
          v13 = *(a1 + 72);
          v9 = *v13;
          *v13 = v12;
        }

        [**(a1 + 72) addObject:v3];
      }

      goto LABEL_20;
    }

LABEL_14:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_20;
  }

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80) + 1;
    *buf = 138543874;
    *&buf[4] = v3;
    v16 = 1024;
    v17 = v14;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ has been unreferenced for %u sequential scans, has not yet reached threshold of %u.", buf, 0x18u);
  }

LABEL_20:
}

- (BOOL)_removePaths:(id)paths numRemoved:(unsigned int *)removed
{
  pathsCopy = paths;
  v6 = pathsCopy;
  if (removed)
  {
    *removed = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TRIAssetStoreOperator__removePaths_numRemoved___block_invoke;
  v9[3] = &unk_279DE26D0;
  v9[4] = &v10;
  v9[5] = removed;
  if ([pathsCopy enumerateStringsWithBlock:v9])
  {
    v7 = *(v11 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7 & 1;
}

void __49__TRIAssetStoreOperator__removePaths_numRemoved___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    if (unlink([v3 fileSystemRepresentation]))
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        v8 = *__error();
        v9 = 138543874;
        v10 = v3;
        v11 = 2080;
        v12 = v7;
        v13 = 1024;
        v14 = v8;
        _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to unlink %{public}@: %s (%d)", &v9, 0x1Cu);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        ++*v5;
      }
    }
  }
}

- (BOOL)migrateToGlobalAssetStoreFromLocalAssetStore:(id)store
{
  storeCopy = store;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TRIAssetStoreOperator_migrateToGlobalAssetStoreFromLocalAssetStore___block_invoke;
  v7[3] = &unk_279DE2578;
  v9 = &v10;
  v7[4] = self;
  v5 = storeCopy;
  v8 = v5;
  [(TRIAssetStoreOperator *)self _acquireLockfileInAssetStorePath:v5 andRunBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __70__TRIAssetStoreOperator_migrateToGlobalAssetStoreFromLocalAssetStore___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _migrateAssetsDatabaseWithLocalAssetStorePath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _migrateAssetContentsWithLocalAssetStorePath:*(a1 + 40) flockWitness:a2];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Successfully migrated assets to the global asset store", v5, 2u);
    }
  }
}

- (BOOL)_migrateAssetsDatabaseWithLocalAssetStorePath:(id)path
{
  pathCopy = path;
  v5 = [[TRIAssetStoreDatabase alloc] initWithPaths:self->_paths assetStorePath:pathCopy storageManagement:0];

  v6 = [[TRIAssetStoreDatabase alloc] initWithPaths:self->_paths storageManagement:self->_storageManagement];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TRIAssetStoreOperator__migrateAssetsDatabaseWithLocalAssetStorePath___block_invoke;
  v9[3] = &unk_279DE26F8;
  v10 = v6;
  v7 = v6;
  LOBYTE(pathCopy) = [(TRIAssetStoreDatabase *)v5 enumerateAllAutoAssetReferencesWithBlock:v9];
  [(TRIAssetStoreDatabase *)v5 closePermanently];
  [(TRIAssetStoreDatabase *)v7 closePermanently];

  return pathCopy;
}

- (BOOL)_migrateAssetContentsWithLocalAssetStorePath:(id)path flockWitness:(TRIFlockWitness_ *)witness
{
  v56 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  assetStore = [(TRIPaths *)self->_paths assetStore];
  v37 = [assetStore stringByAppendingPathComponent:@"assets"];

  v36 = [pathCopy stringByAppendingPathComponent:@"assets"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager fileExistsAtPath:v37];

  if (v7)
  {
    v8 = [[TRIAssetStore alloc] initWithGlobalPaths:self->_paths];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v36];
    v11 = [defaultManager2 enumeratorAtURL:v10 includingPropertiesForKeys:0 options:1 errorHandler:0];

    do
    {
      v12 = objc_autoreleasePoolPush();
      nextObject = [v11 nextObject];
      v14 = nextObject;
      if (nextObject)
      {
        lastPathComponent = [nextObject lastPathComponent];
        if (lastPathComponent)
        {
          path = [v14 path];
          if (path)
          {
            v17 = [MEMORY[0x277D73728] arrayFromDirectory:path];
            if (v17)
            {
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __83__TRIAssetStoreOperator__migrateAssetContentsWithLocalAssetStorePath_flockWitness___block_invoke;
              v38[3] = &unk_279DE2720;
              v39 = v37;
              v40 = lastPathComponent;
              v18 = v8;
              selfCopy = self;
              v43 = &v46;
              v41 = v18;
              v19 = [v17 enumerateStringsWithBlock:v38];
              *(v47 + 24) &= v19;

              v20 = v39;
            }

            else
            {
              v20 = TRILogCategory_Server();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v51 = lastPathComponent;
                _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Couldn't locate asset folders for short hash: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v17 = TRILogCategory_Server();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v51 = v14;
              _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Local asset url and hash is non-nil but the path is nil: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          path = TRILogCategory_Server();
          if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
          {
            path2 = [v14 path];
            *buf = 138543362;
            v51 = path2;
            _os_log_error_impl(&dword_26F567000, path, OS_LOG_TYPE_ERROR, "Invalid short hash found in local asset store url: %{public}@", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(v12);
    }

    while (v14);
    v30 = *(v47 + 24);
  }

  else
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v51 = v37;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_INFO, "No global assets folder exists at %@. Copying the entirety of the local assets folder.", buf, 0xCu);
    }

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    stringByDeletingLastPathComponent = [v37 stringByDeletingLastPathComponent];
    v45 = 0;
    v25 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v45];
    v26 = v45;

    if ((v25 & 1) == 0)
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v26 localizedDescription];
        *buf = 138543618;
        v51 = v37;
        v52 = 2112;
        v53 = localizedDescription;
        _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Failed to create global assets folder: %{public}@ with error:%@", buf, 0x16u);
      }

      *(v47 + 24) = 0;
    }

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v44 = v26;
    v29 = [defaultManager4 moveItemAtPath:v36 toPath:v37 error:&v44];
    v8 = v44;

    if (v29)
    {
      v30 = *(v47 + 24);
    }

    else
    {
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [(TRIAssetStore *)v8 localizedDescription];
        *buf = 138543874;
        v51 = v36;
        v52 = 2114;
        v53 = v37;
        v54 = 2112;
        v55 = localizedDescription2;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to move local assets folder to the global assets folder: %{public}@ to %{public}@ with error:%@", buf, 0x20u);
      }

      v30 = 0;
      *(v47 + 24) = 0;
    }
  }

  _Block_object_dispose(&v46, 8);
  return v30 & 1;
}

void __83__TRIAssetStoreOperator__migrateAssetContentsWithLocalAssetStorePath_flockWitness___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = TRIValidateAssetId();

  if (v5 && [v5 length])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/", *(a1 + 40), v5];
    v9 = [v7 stringByAppendingPathComponent:v8];

    objc_autoreleasePoolPop(v6);
    LODWORD(v8) = [*(a1 + 48) hasAssetWithIdentifier:v5 type:0];
    v10 = TRILogCategory_Server();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 138543362;
        v20 = v5;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Asset already present in the global asset store. Updating references - AssetId: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 56) _relinkLocalAssetToGlobalAssetStore:*(a1 + 48) withAssetId:v5 localAssetDir:v3];
    }

    else
    {
      if (v11)
      {
        *buf = 138543362;
        v20 = v5;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Asset not present in the global asset store. Migrating asset to the global store - AssetId: %{public}@", buf, 0xCu);
      }

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v9 stringByDeletingLastPathComponent];
      v18 = 0;
      v14 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v18];
      v15 = v18;

      if ((v14 & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [v15 localizedDescription];
          *buf = 138543618;
          v20 = v9;
          v21 = 2112;
          v22 = v17;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create asset directory in global asset store: %{public}@ with error:%@", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }

      if (([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v3 destPath:v9] & 1) == 0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v3;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Invalid asset Id in local asset store: %{public}@", buf, 0xCu);
    }
  }
}

- (BOOL)_relinkLocalAssetToGlobalAssetStore:(id)store withAssetId:(id)id localAssetDir:(id)dir
{
  v35 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  idCopy = id;
  dirCopy = dir;
  v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:?];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 1;
  v27 = v10;
  v13 = [defaultManager enumeratorAtURL:v10 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v14 = objc_autoreleasePoolPush();
  nextObject = [v13 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v26 = a2;
    v12 = 1;
    do
    {
      lastPathComponent = [nextObject2 lastPathComponent];
      v18 = [lastPathComponent hasPrefix:@"link-"];

      if (v18)
      {
        path = [nextObject2 path];
        if (!path)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:v26 object:self file:@"TRIAssetStoreOperator.m" lineNumber:1076 description:{@"Invalid parameter not satisfying: %@", @"symlinkPath"}];
        }

        v20 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:path];
        if (!v20 || ([storeCopy linkAssetWithIdentifier:idCopy toPath:v20] & 1) == 0)
        {
          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v32 = v20;
            _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to link from the global asset store to local treatment asset: %{public}@", buf, 0xCu);
          }

          v12 = 0;
        }
      }

      objc_autoreleasePoolPop(v14);
      v14 = objc_autoreleasePoolPush();
      nextObject2 = [v13 nextObject];
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v14);
  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"failed";
    if (v12)
    {
      v24 = @"completed successfully";
    }

    *buf = 138543618;
    v32 = idCopy;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "Re-linking references to asset id %{public}@ to the global directory %@.", buf, 0x16u);
  }

  return v12 & 1;
}

- (BOOL)_acquireLockfileAndRunBlock:(id)block
{
  selfCopy = self;
  paths = self->_paths;
  blockCopy = block;
  assetStore = [(TRIPaths *)paths assetStore];
  LOBYTE(selfCopy) = [(TRIAssetStoreOperator *)selfCopy _acquireLockfileInAssetStorePath:assetStore andRunBlock:blockCopy];

  return selfCopy;
}

- (BOOL)_acquireLockfileInAssetStorePath:(id)path andRunBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v31 = 0;
  v9 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v31];
  v10 = v31;

  if ((v9 & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v10;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to create AssetStore: %{public}@", buf, 0xCu);
    }
  }

  v12 = [pathCopy stringByAppendingPathComponent:@"lock"];
  v13 = v12;
  v14 = open([v12 fileSystemRepresentation], 514, 432);
  v15 = v14;
  if (v14 < 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = __error();
      v26 = strerror(*v25);
      v27 = *__error();
      *buf = 138543874;
      v33 = v12;
      v34 = 2080;
      v35 = v26;
      v36 = 1024;
      v37 = v27;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to open lockfile %{public}@: %s (%d)", buf, 0x1Cu);
    }

    v17 = 0;
  }

  else
  {
    if (flock(v14, 2))
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 138543874;
        v33 = v12;
        v34 = 2080;
        v35 = v23;
        v36 = 1024;
        v37 = v24;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to acquire lockfile %{public}@: %s (%d)", buf, 0x1Cu);
      }

      v17 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      *buf = v15;
      blockCopy[2](blockCopy, buf);
      objc_autoreleasePoolPop(v19);
      if (flock(v15, 8))
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          v30 = *__error();
          *buf = 138543874;
          v33 = v12;
          v34 = 2080;
          v35 = v29;
          v36 = 1024;
          v37 = v30;
          _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to unlock lockfile %{public}@: %s (%d)", buf, 0x1Cu);
        }
      }

      v17 = 1;
    }

    close(v15);
  }

  objc_autoreleasePoolPop(v7);
  return v17 & 1;
}

- (id)_requireAssetStoreTempDir
{
  v19 = *MEMORY[0x277D85DE8];
  assetStore = [(TRIPaths *)self->_paths assetStore];
  v3 = [assetStore stringByAppendingPathComponent:@"tmp"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v5 = [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v13];
  v6 = v13;

  if ((v5 & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18.st_dev = 138543618;
      *&v18.st_mode = v3;
      WORD2(v18.st_ino) = 2114;
      *(&v18.st_ino + 6) = v6;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", &v18, 0x16u);
    }
  }

  memset(&v18, 0, sizeof(v18));
  if (stat([v3 fileSystemRepresentation], &v18))
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      *buf = 138543618;
      v15 = v3;
      v16 = 2080;
      v17 = v12;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Could not stat temporary directory %{public}@: %s", buf, 0x16u);
    }
  }

  else
  {
    fileSystemRepresentation = [v3 fileSystemRepresentation];
    chmod(fileSystemRepresentation, v18.st_mode | 0x92);
  }

  return v3;
}

- (BOOL)_fixFileProtectionForFileURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v25 = 0;
  v6 = *MEMORY[0x277CBE868];
  v24 = 0;
  v7 = [lCopy getResourceValue:&v25 forKey:v6 error:&v24];
  v8 = v25;
  v9 = v24;
  if (!v7)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v32.st_dev = 138543618;
      *&v32.st_mode = lCopy;
      WORD2(v32.st_ino) = 2114;
      *(&v32.st_ino + 6) = v9;
      v12 = "Failed to determine if url %{public}@ is a directory: %{public}@";
      v13 = &v32;
      v14 = v11;
      v15 = 22;
LABEL_12:
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, v12, v13, v15);
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    memset(&v32, 0, sizeof(v32));
    if (stat([lCopy fileSystemRepresentation], &v32))
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v27 = lCopy;
        v12 = "Could not stat: %{public}@";
        v13 = buf;
        v14 = v11;
        v15 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      if (!chmod([lCopy fileSystemRepresentation], 0x1F8u))
      {
        v20 = MEMORY[0x277CCAA00];
        path = [lCopy path];
        if (!path)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:1187 description:{@"Expression was unexpectedly nil/false: %@", @"fileURL.path"}];
        }

        [v20 triRemoveFileProtectionIfPresentForPath:path];

        fileSystemRepresentation = [lCopy fileSystemRepresentation];
        chmod(fileSystemRepresentation, v32.st_mode & 0x124);
        goto LABEL_3;
      }

      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        v17 = strerror(*v16);
        v18 = *__error();
        *buf = 138543874;
        v27 = lCopy;
        v28 = 2080;
        v29 = v17;
        v30 = 1024;
        v31 = v18;
        v12 = "Failed to adjust permissions on temp dir: %{public}@ %s (%d)";
        v13 = buf;
        v14 = v11;
        v15 = 28;
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

LABEL_3:
  v10 = 1;
LABEL_14:

  return v10;
}

- (BOOL)fixFileProtectionForAssetStoreFiles
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke;
    v9[3] = &unk_279DE2770;
    v10 = WeakRetained;
    selfCopy = self;
    v12 = buf;
    v13 = a2;
    [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v9];
    v6 = v15[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_2;
  v3[3] = &unk_279DE2748;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  return [v1 enumerateAssetDirsUsingBlock:v3];
}

void __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  if (!v4)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:1212 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"content" relativeToURL:v3];
  v18 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:1216 description:{@"Expression was unexpectedly nil/false: %@", @"contentURL.path"}];
  }

  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v18];

  if (v8)
  {
    if (v18)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v19[0] = *MEMORY[0x277CBE868];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_3;
      v17[3] = &unk_279DE2410;
      v17[4] = *(a1 + 40);
      v11 = [v9 enumeratorAtURL:v5 includingPropertiesForKeys:v10 options:0 errorHandler:v17];

      v12 = objc_autoreleasePoolPush();
      v13 = [v11 nextObject];
      if (v13)
      {
        v14 = v13;
        do
        {
          *(*(*(a1 + 40) + 8) + 24) &= [*(a1 + 32) _fixFileProtectionForFileURL:v14];

          objc_autoreleasePoolPop(v12);
          v12 = objc_autoreleasePoolPush();
          v14 = [v11 nextObject];
        }

        while (v14);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) &= [*(a1 + 32) _fixFileProtectionForFileURL:v5];
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

uint64_t __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Encountered error while enumerating over assets to fix file protection for %{public}@: %@", &v9, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  return 1;
}

- (BOOL)_overwriteRenameAsAtomicallyAsPossibleWithSrc:(id)src dest:(id)dest
{
  v28 = *MEMORY[0x277D85DE8];
  srcCopy = src;
  destCopy = dest;
  memset(&v27, 0, sizeof(v27));
  if (stat([srcCopy fileSystemRepresentation], &v27))
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v18 = __error();
      v19 = strerror(*v18);
      v20 = *__error();
      v26.st_dev = 138543874;
      *&v26.st_mode = srcCopy;
      WORD2(v26.st_ino) = 2080;
      *(&v26.st_ino + 6) = v19;
      HIWORD(v26.st_gid) = 1024;
      v26.st_rdev = v20;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to stat %{public}@: %s (%d)", &v26, 0x1Cu);
    }

    goto LABEL_5;
  }

  v25 = v27.st_mode & 0x1FF;
  memset(&v26, 0, sizeof(v26));
  v10 = stat([destCopy fileSystemRepresentation], &v26);
  v11 = v10;
  if ((v27.st_mode & 0xF000) == 0x4000)
  {
    chmod([srcCopy fileSystemRepresentation], 0x1F8u);
    v12 = &v25;
    if (!v11)
    {
LABEL_10:
      if ((v26.st_mode & 0xF000) == 0x4000)
      {
        chmod([destCopy fileSystemRepresentation], 0x1F8u);
      }
    }
  }

  else
  {
    v12 = 0;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  fileSystemRepresentation = [srcCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [destCopy fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v15);
  if (!v16)
  {
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:destCopy permissionBits:v12];
    v9 = 1;
    goto LABEL_19;
  }

  if (*__error() == 17 || *__error() == 66 || *__error() == 21 || *__error() == 20)
  {
    v9 = [(TRIAssetStoreOperator *)self _nonAtomicOverwriteWithSrc:srcCopy dest:destCopy finalPermissionBits:v12];
    goto LABEL_19;
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = *__error();
    v27.st_dev = 138544130;
    *&v27.st_mode = srcCopy;
    WORD2(v27.st_ino) = 2114;
    *(&v27.st_ino + 6) = destCopy;
    HIWORD(v27.st_gid) = 2080;
    *&v27.st_rdev = v23;
    LOWORD(v27.st_atimespec.tv_sec) = 1024;
    *(&v27.st_atimespec.tv_sec + 2) = v24;
    _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to rename() %{public}@ --> %{public}@: %s (%d)", &v27, 0x26u);
  }

  [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:srcCopy permissionBits:v12];
LABEL_5:
  v9 = 0;
LABEL_19:

  return v9;
}

- (void)_fixupPermissionsOnPath:(id)path permissionBits:(const unsigned __int16 *)bits
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = pathCopy;
  if (bits && chmod([pathCopy fileSystemRepresentation], *bits))
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      v9 = strerror(*v8);
      v10 = *__error();
      v11 = 138543874;
      v12 = v6;
      v13 = 2080;
      v14 = v9;
      v15 = 1024;
      v16 = v10;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to restore permission bits on %{public}@: %s (%d)", &v11, 0x1Cu);
    }
  }
}

- (BOOL)_nonAtomicOverwriteWithSrc:(id)src dest:(id)dest finalPermissionBits:(const unsigned __int16 *)bits
{
  v43 = *MEMORY[0x277D85DE8];
  srcCopy = src;
  destCopy = dest;
  _requireAssetStoreTempDir = [(TRIAssetStoreOperator *)self _requireAssetStoreTempDir];
  v11 = objc_opt_new();
  uUIDString = [v11 UUIDString];
  v13 = [_requireAssetStoreTempDir stringByAppendingPathComponent:uUIDString];

  fileSystemRepresentation = [destCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v13 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v16);
  if (v17)
  {
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:srcCopy permissionBits:bits];
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      v35 = 138544130;
      v36 = destCopy;
      v37 = 2114;
      v38 = v13;
      v39 = 2080;
      v40 = v20;
      v41 = 1024;
      v42 = v21;
      v22 = "Failed rename() to relocate before overwrite %{public}@ -> %{public}@: %s (%d)";
LABEL_10:
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, v22, &v35, 0x26u);
    }
  }

  else
  {
    fileSystemRepresentation3 = [srcCopy fileSystemRepresentation];
    fileSystemRepresentation4 = [destCopy fileSystemRepresentation];
    rename(fileSystemRepresentation3, fileSystemRepresentation4, v25);
    if (!v26)
    {
      [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:destCopy permissionBits:bits];
      [(TRIAssetStoreOperator *)self _forceRemoveItemAtPath:v13];
      v30 = 1;
      goto LABEL_7;
    }

    fileSystemRepresentation5 = [v13 fileSystemRepresentation];
    fileSystemRepresentation6 = [destCopy fileSystemRepresentation];
    rename(fileSystemRepresentation5, fileSystemRepresentation6, v29);
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:srcCopy permissionBits:bits];
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v32 = __error();
      v33 = strerror(*v32);
      v34 = *__error();
      v35 = 138544130;
      v36 = srcCopy;
      v37 = 2114;
      v38 = destCopy;
      v39 = 2080;
      v40 = v33;
      v41 = 1024;
      v42 = v34;
      v22 = "Failed to rename() even after relocating destination: %{public}@ --> %{public}@: %s (%d)";
      goto LABEL_10;
    }
  }

  v30 = 0;
LABEL_7:

  return v30;
}

- (BOOL)_forceRemoveItemAtPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v3 defaultManager];
  v10 = 0;
  v6 = [defaultManager triForceRemoveItemAtPath:pathCopy error:&v10];

  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to force-remove: %{public}@", buf, 0xCu);
    }
  }

  return v6;
}

@end