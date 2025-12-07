@interface TRIReferenceManagedDir
+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)dir withLockingMode:(int)mode andRunBlock:(id)block;
+ (BOOL)_deleteReferenceManagedDirectory:(id)directory usingTempDir:(id)dir managedDirWasDeleted:(BOOL *)deleted;
+ (BOOL)_isTargetOfSymlink:(id)symlink containedInManagedDir:(id)dir;
+ (BOOL)_removePaths:(id)paths withLockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed;
+ (BOOL)_testDeletionEligibilityForManagedDir:(id)dir withExternalReferenceStore:(id)store flockWitness:(TRIFlockWitness_ *)witness logPrefix:(id)prefix isEligible:(BOOL *)eligible;
+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)dir;
+ (BOOL)collectGarbageForManagedDir:(id)dir withExternalReferenceStore:(id)store usingTempDir:(id)tempDir managedDirWasDeleted:(BOOL *)deleted;
+ (BOOL)createFromDir:(id)dir;
+ (BOOL)isPathInManagedDir:(id)dir;
+ (BOOL)removeFileInManagedDirWithPath:(id)path inUseDeletionBehavior:(unsigned __int8)behavior wasDeleted:(BOOL *)deleted;
+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)path;
+ (BOOL)symlinkFromCurrentPath:(id)path withFuturePath:(id)futurePath toManagedPath:(id)managedPath;
+ (id)_collectDeadSymlinksForManagedDir:(id)dir withLockWitness:(TRIFlockWitness_ *)witness liveSymlinkCount:(unsigned int *)count;
+ (id)_containingManagedDirForPath:(id)path resolvedAbsPath:(id *)absPath;
+ (id)_metadataDirForManagedDir:(id)dir;
+ (id)_reverseLinksDirForManagedDir:(id)dir;
@end

@implementation TRIReferenceManagedDir

+ (id)_metadataDirForManagedDir:(id)dir
{
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"_refs"];
  objc_autoreleasePoolPop(v4);

  return v5;
}

+ (id)_reverseLinksDirForManagedDir:(id)dir
{
  dirCopy = dir;
  v5 = objc_autoreleasePoolPush();
  v6 = [self _metadataDirForManagedDir:dirCopy];
  v7 = [v6 stringByAppendingPathComponent:@"revlinks"];

  objc_autoreleasePoolPop(v5);

  return v7;
}

+ ($A5A652246548B43F8BC05201A1C72A70)_acquireLockOnDir:(id)dir withLockingMode:(int)mode andRunBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  blockCopy = block;
  v9 = objc_autoreleasePoolPush();
  v10 = open([dirCopy fileSystemRepresentation], 0);
  if (v10 < 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = __error();
      v19 = strerror(*v18);
      v20 = *__error();
      v27 = 138543874;
      v28 = dirCopy;
      v29 = 2080;
      v30 = v19;
      v31 = 1024;
      v32 = v20;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to open lock dir %{public}@: %s (%d)", &v27, 0x1Cu);
    }

    v12.var0 = 2;
  }

  else
  {
    v11 = v10;
    if (flock(v10, mode))
    {
      if (*__error() == 35)
      {
        v12.var0 = 1;
      }

      else
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = *__error();
          v27 = 138543874;
          v28 = dirCopy;
          v29 = 2080;
          v30 = v22;
          v31 = 1024;
          v32 = v23;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to acquire lock dir %{public}@: %s (%d)", &v27, 0x1Cu);
        }

        v12.var0 = 2;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v27 = v11;
      blockCopy[2](blockCopy, &v27);
      objc_autoreleasePoolPop(v14);
      if (flock(v11, 8))
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v24 = __error();
          v25 = strerror(*v24);
          v26 = *__error();
          v27 = 138543874;
          v28 = dirCopy;
          v29 = 2080;
          v30 = v25;
          v31 = 1024;
          v32 = v26;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to unlock lock dir %{public}@: %s (%d)", &v27, 0x1Cu);
        }
      }

      v12.var0 = 0;
    }

    close(v11);
  }

  objc_autoreleasePoolPop(v9);

  return v12;
}

+ (id)_containingManagedDirForPath:(id)path resolvedAbsPath:(id *)absPath
{
  v38 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  bzero(v37, 0x400uLL);
  v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], v37);
  if (v7)
  {
    v8 = v7;
    if (absPath)
    {
      v9 = stringForUTF8Path(v7);
      v10 = *absPath;
      *absPath = v9;
    }

    while (1)
    {
      v11 = stringForUTF8Path(v8);
      v24 = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [self _metadataDirForManagedDir:v11];
      v14 = [defaultManager fileExistsAtPath:v13 isDirectory:&v24];
      v15 = v24;

      if (v14)
      {
        if (v15)
        {
          break;
        }
      }

      if (!dirname_r(v8, buf))
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = *__error();
          *v25 = 138543874;
          v26 = pathCopy;
          v27 = 2080;
          v28 = v22;
          v29 = 1024;
          v30 = v23;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "dirname_r() failure on upward-traversal of path %{public}@: %s (%d)", v25, 0x1Cu);
        }

        goto LABEL_14;
      }

      v8 = v37;
      __strlcpy_chk();

      if (v37[0] == 47)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v18 = *__error();
      *buf = 138543874;
      v32 = pathCopy;
      v33 = 2080;
      v34 = v17;
      v35 = 1024;
      v36 = v18;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to resolve absolute path for possibly-managed path %{public}@: %s (%d)", buf, 0x1Cu);
    }

LABEL_14:

LABEL_15:
    v11 = 0;
  }

  return v11;
}

+ (BOOL)createFromDir:(id)dir
{
  v20 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v15 = 0;
  v5 = [self _containingManagedDirForPath:dirCopy resolvedAbsPath:&v15];
  if (v5)
  {
    v6 = v5;
    LODWORD(self) = [v5 isEqualToString:v15];
    v7 = TRILogCategory_Server();
    v8 = v7;
    if (self)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v17 = v6;
        _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Reference-managed directory already exists at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = dirCopy;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Cannot create reference-managed directory %{public}@ because it is nested in reference-managed directory: %{public}@", buf, 0x16u);
    }
  }

  else
  {

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [self _metadataDirForManagedDir:dirCopy];
    v14 = 0;
    LOBYTE(self) = [defaultManager createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v14];
    v11 = v14;

    if ((self & 1) == 0)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = dirCopy;
        v18 = 2114;
        v19 = v11;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory from %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  return self;
}

+ (BOOL)symlinkFromCurrentPath:(id)path withFuturePath:(id)futurePath toManagedPath:(id)managedPath
{
  v61 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  futurePathCopy = futurePath;
  managedPathCopy = managedPath;
  if (pathCopy)
  {
    if (futurePathCopy)
    {
      goto LABEL_3;
    }

LABEL_52:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"symlinkFuturePath"}];

    if (managedPathCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"symlinkCurrentPath"}];

  if (!futurePathCopy)
  {
    goto LABEL_52;
  }

LABEL_3:
  if (managedPathCopy)
  {
    goto LABEL_4;
  }

LABEL_53:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"managedPath"}];

LABEL_4:
  if (![pathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v54 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: symlinkCurrentPath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (![futurePathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v54 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: symlinkFuturePath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (![managedPathCopy length])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v54 = "+[TRIReferenceManagedDir symlinkFromCurrentPath:withFuturePath:toManagedPath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: managedPath", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (([futurePathCopy isAbsolutePath] & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = futurePathCopy;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "symlinkFuturePath %{public}@ is not absolute.", buf, 0xCu);
    }

    goto LABEL_23;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager fileExistsAtPath:pathCopy];

  if (v13)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = pathCopy;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Unable to create symlink at %{public}@: file already exists", buf, 0xCu);
    }

LABEL_23:

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  bzero(buf, 0x400uLL);
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  v18 = realpath_DARWIN_EXTSN([stringByDeletingLastPathComponent fileSystemRepresentation], buf);

  if (!v18)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = __error();
      v33 = strerror(*v32);
      v34 = *__error();
      *v51 = 138543874;
      *&v51[4] = pathCopy;
      *&v51[12] = 2080;
      *&v51[14] = v33;
      *&v51[22] = 1024;
      v52 = v34;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Unable to resolve parent dir for %{public}@: %s (%d)", v51, 0x1Cu);
    }

    goto LABEL_24;
  }

  v19 = stringForUTF8Path(v18);
  lastPathComponent = [pathCopy lastPathComponent];
  v21 = [v19 stringByAppendingPathComponent:lastPathComponent];

  if (!v21)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:209 description:{@"Invalid parameter not satisfying: %@", @"absSymlinkCurrentPath"}];
  }

  v50 = 0;
  v22 = [self _containingManagedDirForPath:managedPathCopy resolvedAbsPath:&v50];
  if (v22)
  {
    if (!v50)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
    }

    *v51 = 0;
    *&v51[8] = v51;
    *&v51[16] = 0x2020000000;
    LOBYTE(v52) = 1;
    v23 = [self _metadataDirForManagedDir:v22];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __78__TRIReferenceManagedDir_symlinkFromCurrentPath_withFuturePath_toManagedPath___block_invoke;
    v45[3] = &unk_279DE2770;
    selfCopy = self;
    v24 = v22;
    v46 = v24;
    v47 = futurePathCopy;
    v48 = v51;
    v25 = [self _acquireLockOnDir:v23 withLockingMode:2 andRunBlock:v45];

    if (v25 || (*(*&v51[8] + 24) & 1) == 0)
    {
      v15 = 0;
    }

    else
    {
      fileSystemRepresentation = [v50 fileSystemRepresentation];
      v27 = v21;
      if (symlink(fileSystemRepresentation, [v21 fileSystemRepresentation]))
      {
        v28 = TRILogCategory_Server();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v39 = v50;
          v40 = __error();
          v41 = strerror(*v40);
          v42 = *__error();
          *buf = 138544130;
          v54 = v21;
          v55 = 2114;
          v56 = v39;
          v57 = 2080;
          v58 = v41;
          v59 = 1024;
          v60 = v42;
          _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
        }

        v15 = 0;
      }

      else
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = [defaultManager2 triPath:managedPathCopy relativeToParentPath:v24];

        if (([v28 isEqualToString:@"."]& 1) != 0)
        {
          v15 = 1;
        }

        else
        {
          v35 = [[TRIDeferredDeleter alloc] initForRootDir:v24];
          v15 = [v35 unmarkItemAtRelativePath:v28];
        }
      }
    }

    _Block_object_dispose(v51, 8);
  }

  else
  {
    v30 = TRILogCategory_Server();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = managedPathCopy;
      _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Attempting to symlink to a non-managed path: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

LABEL_25:
  return v15;
}

void __78__TRIReferenceManagedDir_symlinkFromCurrentPath_withFuturePath_toManagedPath___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 56) _reverseLinksDirForManagedDir:*(a1 + 32)];
  v19 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v19];
  v5 = v19;

  if ((v4 & 1) == 0)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to create reverse link dir: %{public}@", buf, 0xCu);
    }
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 56) _reverseLinksDirForManagedDir:*(a1 + 32)];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_new();
  v11 = [v10 UUIDString];
  v12 = [v9 initWithFormat:@"link-%@", v11];
  v13 = [v8 stringByAppendingPathComponent:v12];

  objc_autoreleasePoolPop(v7);
  if (symlink([*(a1 + 40) fileSystemRepresentation], objc_msgSend(v13, "fileSystemRepresentation")))
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      v16 = __error();
      v17 = strerror(*v16);
      v18 = *__error();
      *buf = 138544130;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v24 = 2080;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

+ (BOOL)_isTargetOfSymlink:(id)symlink containedInManagedDir:(id)dir
{
  v41 = *MEMORY[0x277D85DE8];
  symlinkCopy = symlink;
  dirCopy = dir;
  if ([symlinkCopy length])
  {
    v9 = objc_autoreleasePoolPush();
    bzero(buf, 0x400uLL);
    *__error() = 0;
    v10 = readlink([symlinkCopy fileSystemRepresentation], buf, 0x400uLL);
    if ((v10 & 0x8000000000000000) != 0)
    {
      if (*__error() == 2)
      {
        v17 = 0;
LABEL_24:
        v16 = 0;
LABEL_25:

        objc_autoreleasePoolPop(v9);
        goto LABEL_26;
      }

      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      *v31 = 138543874;
      v32 = symlinkCopy;
      v33 = 2080;
      v34 = v24;
      v35 = 1024;
      v36 = v25;
      v12 = "Failed to resolve symlink %{public}@: %s (%d)";
      v13 = v11;
      v14 = 28;
    }

    else
    {
      if (v10 < 0x400)
      {
        buf[v10] = 0;
        v17 = stringForUTF8Path(buf);
        if ([v17 hasPrefix:@"/"])
        {
          if (!v17)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"absLinkTarget"}];
          }

          bzero(buf, 0x400uLL);
          v18 = realpath_DARWIN_EXTSN([dirCopy fileSystemRepresentation], buf);
          if (v18)
          {
            v19 = stringForUTF8Path(v18);
            if (!v19)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"absManagedDir"}];
            }

            if ([v17 isEqualToString:v19])
            {
              v16 = 1;
            }

            else
            {
              v22 = [v19 stringByAppendingString:@"/"];

              v16 = [v17 hasPrefix:v22];
              v19 = v22;
            }
          }

          else
          {
            v21 = TRILogCategory_Server();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v26 = __error();
              v27 = strerror(*v26);
              v28 = *__error();
              *v31 = 138543874;
              v32 = dirCopy;
              v33 = 2080;
              v34 = v27;
              v35 = 1024;
              v36 = v28;
              _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to canonicalize reference-managed directory %{public}@: %s (%d)", v31, 0x1Cu);
            }

            v19 = 0;
            v16 = 0;
          }

          goto LABEL_25;
        }

        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v31 = 138543618;
          v32 = symlinkCopy;
          v33 = 2114;
          v34 = v17;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Symlink into managed directory is expected to be absolute: %{public}@ --> %{public}@", v31, 0x16u);
        }

        goto LABEL_23;
      }

      v11 = TRILogCategory_Server();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_20:
        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }

      *v31 = 138543362;
      v32 = symlinkCopy;
      v12 = "Target of symlink %{public}@ exceeds maximum length.";
      v13 = v11;
      v14 = 12;
    }

    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, v12, v31, v14);
    goto LABEL_20;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v38 = symlinkCopy;
    v39 = 2114;
    v40 = dirCopy;
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to derive file system encoding of symlin: %{public}@ in managed directory: %{public}@", buf, 0x16u);
  }

  v16 = 0;
LABEL_26:

  return v16;
}

+ (id)_collectDeadSymlinksForManagedDir:(id)dir withLockWitness:(TRIFlockWitness_ *)witness liveSymlinkCount:(unsigned int *)count
{
  v45 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v9 = objc_autoreleasePoolPush();
  *count = 0;
  v10 = objc_opt_new();
  if (!v10)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v36 = a2;
  v11 = MEMORY[0x277CBEBC0];
  selfCopy = self;
  v12 = [self _reverseLinksDirForManagedDir:dirCopy];
  v13 = [v11 fileURLWithPath:v12 isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [defaultManager enumeratorAtURL:v13 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v16 = objc_autoreleasePoolPush();
  nextObject = [v15 nextObject];
  if (!nextObject)
  {
LABEL_23:
    objc_autoreleasePoolPop(v16);
    v33 = v10;
    goto LABEL_24;
  }

  nextObject2 = nextObject;
  while (1)
  {
    ++*count;
    path = [nextObject2 path];
    if (!path)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v36 object:selfCopy file:@"TRIReferenceManagedDir.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"reverseLinkPath"}];
    }

    bzero(v44, 0x400uLL);
    v20 = readlink([path fileSystemRepresentation], v44, 0x400uLL);
    if ((v20 & 0x8000000000000000) == 0)
    {
      break;
    }

    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = __error();
      v35 = v10;
      v25 = dirCopy;
      v26 = v13;
      v27 = v9;
      v28 = strerror(*v24);
      v29 = *__error();
      *buf = 138543874;
      v39 = path;
      v40 = 2080;
      v41 = v28;
      v9 = v27;
      v13 = v26;
      dirCopy = v25;
      v10 = v35;
      v42 = 1024;
      v43 = v29;
      v22 = v21;
      v23 = "Failed to resolve reverse-link %{public}@: %s (%d)";
      v30 = 28;
      goto LABEL_22;
    }

LABEL_14:

    v31 = 0;
LABEL_15:

    objc_autoreleasePoolPop(v16);
    v16 = objc_autoreleasePoolPush();
    nextObject2 = [v15 nextObject];
    if (!nextObject2)
    {
      goto LABEL_23;
    }
  }

  if (!v20)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = path;
      v22 = v21;
      v23 = "Target of reverse-link %{public}@ resolves to an empty string.";
LABEL_21:
      v30 = 12;
LABEL_22:
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v23, buf, v30);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (v20 >= 0x400)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = path;
      v22 = v21;
      v23 = "Target of reverse-link %{public}@ exceeds max path length.";
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v44[v20] = 0;
  v31 = stringForUTF8Path(v44);
  if ([selfCopy _isTargetOfSymlink:v31 containedInManagedDir:dirCopy])
  {
    goto LABEL_15;
  }

  if ([v10 addString:path])
  {
    --*count;
    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v16);
  v33 = 0;
LABEL_24:

LABEL_26:
  objc_autoreleasePoolPop(v9);

  return v33;
}

+ (BOOL)_removePaths:(id)paths withLockWitness:(TRIFlockWitness_ *)witness numRemoved:(unsigned int *)removed
{
  pathsCopy = paths;
  v7 = pathsCopy;
  if (removed)
  {
    *removed = 0;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__TRIReferenceManagedDir__removePaths_withLockWitness_numRemoved___block_invoke;
  v10[3] = &unk_279DE26D0;
  v10[4] = &v11;
  v10[5] = removed;
  if ([pathsCopy enumerateStringsWithBlock:v10])
  {
    v8 = *(v12 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8 & 1;
}

void __66__TRIReferenceManagedDir__removePaths_withLockWitness_numRemoved___block_invoke(uint64_t a1, void *a2)
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

+ (BOOL)_deleteReferenceManagedDirectory:(id)directory usingTempDir:(id)dir managedDirWasDeleted:(BOOL *)deleted
{
  v55 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  dirCopy = dir;
  v9 = objc_autoreleasePoolPush();
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = directoryCopy;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "GC is deleting reference-managed directory: %{public}@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v46 = 0;
  v12 = [defaultManager triRemoveCachedANEBinariesForModelsFromPath:directoryCopy error:&v46];
  v13 = v46;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v48 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to purge ANE cache during GC: %{public}@", buf, 0xCu);
    }
  }

  v43 = dirCopy;
  if (dirCopy)
  {
    v15 = defaultManager;
    deletedCopy = deleted;
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = 0;
    v18 = [defaultManager2 createDirectoryAtPath:dirCopy withIntermediateDirectories:1 attributes:0 error:&v45];
    v19 = v45;

    if ((v18 & 1) == 0)
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v48 = v19;
        _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to create local temp directory: %{public}@", buf, 0xCu);
      }
    }

    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    uUIDString = objc_opt_new();
    [uUIDString UUIDString];
    v23 = v13;
    v25 = v24 = v9;
    v26 = [v21 initWithFormat:@"delete-%@", v25];
    v27 = [v43 stringByAppendingPathComponent:v26];

    v9 = v24;
    v13 = v23;
    deleted = deletedCopy;
    defaultManager = v15;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = objc_opt_new();
    uUIDString = [v19 UUIDString];
    v27 = [v28 initWithFormat:@"%@-delete-%@", directoryCopy, uUIDString];
  }

  fileSystemRepresentation = [directoryCopy fileSystemRepresentation];
  fileSystemRepresentation2 = [v27 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v31);
  if (v32)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v40 = __error();
      v41 = strerror(*v40);
      v42 = *__error();
      *buf = 138544130;
      v48 = directoryCopy;
      v49 = 2114;
      v50 = v27;
      v51 = 2080;
      v52 = v41;
      v53 = 1024;
      v54 = v42;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to rename %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
    }

    v34 = 0;
    goto LABEL_22;
  }

  if (deleted)
  {
    *deleted = 1;
  }

  defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
  v44 = 0;
  v36 = [defaultManager3 triForceRemoveItemAtPath:v27 error:&v44];
  v33 = v44;

  if (v36)
  {
    v34 = 1;
LABEL_22:
    v37 = v43;
    goto LABEL_23;
  }

  v39 = TRILogCategory_Server();
  v37 = v43;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v48 = v33;
    _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Failed to remove GC'd reference-managed directory: %{public}@", buf, 0xCu);
  }

  v34 = 0;
LABEL_23:

  objc_autoreleasePoolPop(v9);
  return v34;
}

+ (BOOL)_testDeletionEligibilityForManagedDir:(id)dir withExternalReferenceStore:(id)store flockWitness:(TRIFlockWitness_ *)witness logPrefix:(id)prefix isEligible:(BOOL *)eligible
{
  *&v33[13] = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  storeCopy = store;
  prefixCopy = prefix;
  LOBYTE(v29) = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [self _metadataDirForManagedDir:dirCopy];
  v17 = [defaultManager fileExistsAtPath:v16 isDirectory:&v29];

  if (!v17 || (v29 & 1) == 0)
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = prefixCopy;
      v32 = 2114;
      *v33 = dirCopy;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "%{public}@Attempted to garbage-collect directory which is not reference-managed: %{public}@", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v29 = 0;
  v18 = [self _collectDeadSymlinksForManagedDir:dirCopy withLockWitness:witness liveSymlinkCount:&v29];
  if (!v18)
  {
LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v19 = v18;
  v20 = TRILogCategory_Server();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v31 = prefixCopy;
    v32 = 1024;
    *v33 = v29;
    v33[2] = 2114;
    *&v33[3] = dirCopy;
    _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found %u live symlinks into reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  v28 = 0;
  if (![self _removePaths:v19 withLockWitness:witness numRemoved:&v28])
  {

    goto LABEL_17;
  }

  v21 = TRILogCategory_Server();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v31 = prefixCopy;
    v32 = 1024;
    *v33 = v28;
    v33[2] = 2114;
    *&v33[3] = dirCopy;
    _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Removed %u dead symlinks from reference-managed directory: %{public}@", buf, 0x1Cu);
  }

  if (storeCopy && [storeCopy hasReferenceToPath:dirCopy])
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = prefixCopy;
      v32 = 2114;
      *v33 = dirCopy;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found a nonzero external reference count for reference-managed directory: %{public}@", buf, 0x16u);
    }

    v23 = 0;
  }

  else
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = prefixCopy;
      v32 = 2114;
      *v33 = dirCopy;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@GC scan found no external references for reference-managed directory: %{public}@", buf, 0x16u);
    }

    v23 = 1;
  }

  if (v29)
  {
    v27 = 0;
  }

  else
  {
    v27 = v23;
  }

  *eligible = v27;
  v25 = 1;
LABEL_18:

  return v25;
}

+ (BOOL)collectGarbageForManagedDir:(id)dir withExternalReferenceStore:(id)store usingTempDir:(id)tempDir managedDirWasDeleted:(BOOL *)deleted
{
  v48 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  storeCopy = store;
  tempDirCopy = tempDir;
  if (!dirCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  if (![dirCopy length])
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v45) = 136315138;
      *(&v45 + 4) = "+[TRIReferenceManagedDir collectGarbageForManagedDir:withExternalReferenceStore:usingTempDir:managedDirWasDeleted:]";
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "%s has empty path arg: managedDir", &v45, 0xCu);
    }

    goto LABEL_29;
  }

  if (tempDirCopy && ![tempDirCopy length])
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v45) = 136315138;
      *(&v45 + 4) = "+[TRIReferenceManagedDir collectGarbageForManagedDir:withExternalReferenceStore:usingTempDir:managedDirWasDeleted:]";
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "%s has empty path arg: tempDir", &v45, 0xCu);
    }

LABEL_29:

    v20 = 0;
    goto LABEL_30;
  }

  *&v45 = 0;
  *(&v45 + 1) = &v45;
  v46 = 0x2020000000;
  v47 = 1;
  if (deleted)
  {
    *deleted = 0;
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke;
  v33[3] = &unk_279DE3230;
  v36 = &v45;
  selfCopy = self;
  v14 = dirCopy;
  v34 = v14;
  v15 = storeCopy;
  v35 = v15;
  v37 = &v39;
  v16 = [self _acquireLockOnDir:v14 withLockingMode:5 andRunBlock:v33];
  if (v16 == 1)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v14;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "[LOCK_SH] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
    }

    v20 = 1;
LABEL_25:

    goto LABEL_26;
  }

  if (v16 != 2 && *(*(&v45 + 1) + 24) == 1)
  {
    if (*(v40 + 24) != 1)
    {
      v20 = 1;
      goto LABEL_26;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke_67;
    v25[3] = &unk_279DE3258;
    v29 = &v39;
    v30 = &v45;
    selfCopy2 = self;
    v17 = v14;
    v26 = v17;
    v27 = v15;
    v28 = tempDirCopy;
    deletedCopy = deleted;
    v18 = [self _acquireLockOnDir:v17 withLockingMode:6 andRunBlock:v25];
    if (v18 == 2)
    {
      v20 = 0;
    }

    else
    {
      if (v18 == 1)
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v17;
          _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "[LOCK_EX] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
        }
      }

      v20 = *(*(&v45 + 1) + 24);
    }

    v22 = v26;
    goto LABEL_25;
  }

  v20 = 0;
LABEL_26:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);
LABEL_30:

  return v20 & 1;
}

void __115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 64) _testDeletionEligibilityForManagedDir:*(a1 + 32) withExternalReferenceStore:*(a1 + 40) flockWitness:a2 logPrefix:@"[LOCK_SH] " isEligible:*(*(a1 + 56) + 8) + 24];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [[TRIDeferredDeleter alloc] initForRootDir:*(a1 + 32)];
    *(*(*(a1 + 48) + 8) + 24) = [v4 collectGarbageWithRootDirLockWitness:a2 externalReferenceStore:*(a1 + 40)];
  }
}

void *__115__TRIReferenceManagedDir_collectGarbageForManagedDir_withExternalReferenceStore_usingTempDir_managedDirWasDeleted___block_invoke_67(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 56) + 8) + 24) = 0;
  result = [*(a1 + 72) _testDeletionEligibilityForManagedDir:*(a1 + 32) withExternalReferenceStore:*(a1 + 40) flockWitness:a2 logPrefix:@"[LOCK_EX] " isEligible:*(*(a1 + 56) + 8) + 24];
  *(*(*(a1 + 64) + 8) + 24) = result;
  if (*(*(*(a1 + 64) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    result = [*(a1 + 72) _deleteReferenceManagedDirectory:*(a1 + 32) usingTempDir:*(a1 + 48) managedDirWasDeleted:*(a1 + 80)];
    *(*(*(a1 + 64) + 8) + 24) = result;
  }

  return result;
}

+ (BOOL)collectDeferredDeletionItemsWithManagedDir:(id)dir
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  if (!dirCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:619 description:{@"Invalid parameter not satisfying: %@", @"managedDir"}];
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__TRIReferenceManagedDir_collectDeferredDeletionItemsWithManagedDir___block_invoke;
  v12[3] = &unk_279DE3280;
  v6 = dirCopy;
  v13 = v6;
  v14 = &v15;
  v7 = [self _acquireLockOnDir:v6 withLockingMode:5 andRunBlock:v12];
  if (v7 == 1)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "[LOCK_SH] GC scan found active usage of reference-managed directory: %{public}@", buf, 0xCu);
    }

    v8 = 1;
  }

  else if (v7 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);
  return v8 & 1;
}

void __69__TRIReferenceManagedDir_collectDeferredDeletionItemsWithManagedDir___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[TRIDeferredDeleter alloc] initForRootDir:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = [v4 collectGarbageWithRootDirLockWitness:a2 externalReferenceStore:0];
}

+ (BOOL)isPathInManagedDir:(id)dir
{
  v3 = [self _containingManagedDirForPath:dir resolvedAbsPath:0];
  v4 = v3 != 0;

  return v4;
}

+ (BOOL)removeFileInManagedDirWithPath:(id)path inUseDeletionBehavior:(unsigned __int8)behavior wasDeleted:(BOOL *)deleted
{
  behaviorCopy = behavior;
  v40 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v10 = objc_autoreleasePoolPush();
  *deleted = 0;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIReferenceManagedDir.m" lineNumber:654 description:{@"Invalid parameter not satisfying: %@", @"pathToRemove"}];
  }

  if ([pathCopy length])
  {
    *&v37 = 0;
    *(&v37 + 1) = &v37;
    v38 = 0x2020000000;
    v39 = 0;
    v11 = [objc_opt_class() _containingManagedDirForPath:pathCopy resolvedAbsPath:0];
    if (v11)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [defaultManager triPath:pathCopy relativeToParentPath:v11];

      if (![v13 isEqualToString:@"."])
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v19 = [defaultManager2 fileExistsAtPath:pathCopy];

        if (v19)
        {
          if (behaviorCopy == 3)
          {
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v34 = 0;
            v16 = [defaultManager3 triForceRemoveItemAtPath:pathCopy error:&v34];
            v21 = v34;

            v22 = TRILogCategory_Server();
            v23 = v22;
            if (v16)
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v36 = pathCopy;
                _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Successfully removed asset immediately: %@", buf, 0xCu);
              }

              *deleted = 1;
            }

            else
            {
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v36 = v21;
                _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to remove path: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __90__TRIReferenceManagedDir_removeFileInManagedDirWithPath_inUseDeletionBehavior_wasDeleted___block_invoke;
            v30[3] = &unk_279DE32A8;
            v24 = pathCopy;
            v31 = v24;
            v32 = &v37;
            deletedCopy = deleted;
            if ([self _acquireLockOnDir:v11 withLockingMode:6 andRunBlock:v30] == 1)
            {
              v25 = TRILogCategory_Server();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v36 = v11;
                _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "File removal attempt found active usage of reference-managed directory: %{public}@", buf, 0xCu);
              }

              if (behaviorCopy == 1)
              {
                v26 = TRILogCategory_Server();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v36 = v24;
                  _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Marking file %{public}@ for deferred deletion", buf, 0xCu);
                }

                v27 = [[TRIDeferredDeleter alloc] initForRootDir:v11];
                v28 = [v27 markItemAtRelativePath:v13];
                *(*(&v37 + 1) + 24) = v28;
              }

              else
              {
                *(*(&v37 + 1) + 24) = 1;
              }
            }

            v16 = *(*(&v37 + 1) + 24);
          }
        }

        else
        {
          v16 = 1;
          *deleted = 1;
        }

        goto LABEL_15;
      }

      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v11;
        _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Managed directory file found to be same as root managed directory: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = pathCopy;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Managed directory file at path %{public}@ was not found inside a valid managed directory", buf, 0xCu);
      }
    }

    v16 = 0;
LABEL_15:

    _Block_object_dispose(&v37, 8);
    goto LABEL_16;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v37) = 136315138;
    *(&v37 + 4) = "+[TRIReferenceManagedDir removeFileInManagedDirWithPath:inUseDeletionBehavior:wasDeleted:]";
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "%s has empty path arg: pathToRemove", &v37, 0xCu);
  }

  v16 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v10);

  return v16 & 1;
}

void __90__TRIReferenceManagedDir_removeFileInManagedDirWithPath_inUseDeletionBehavior_wasDeleted___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = a1[4];
  v8 = 0;
  v4 = [v2 triForceRemoveItemAtPath:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    v6 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    *v6 = 1;
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to remove path: %{public}@", buf, 0xCu);
    }
  }
}

+ (BOOL)saveFromGarbageCollectionItemWithPath:(id)path
{
  v13 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = [objc_opt_class() _containingManagedDirForPath:pathCopy resolvedAbsPath:0];
  if (v4)
  {
    v5 = [[TRIDeferredDeleter alloc] initForRootDir:v4];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager triPath:pathCopy relativeToParentPath:v4];

    v8 = [v5 unmarkItemAtRelativePath:v7];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = pathCopy;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Managed directory file at path %{public}@ was not found inside a valid managed directory", &v11, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

@end