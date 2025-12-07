@interface NSFileManager(TRIServer)
+ (NSObject)triTargetPathForSymlink:()TRIServer;
+ (TRIDiskUsage)triDiskUsageForDirectory:()TRIServer;
+ (id)triPostOrderDescendantDirectoryPathsAtPath:()TRIServer;
+ (uint64_t)triCompressedSizeForFileAtPath:()TRIServer shouldFault:;
+ (uint64_t)triForceRenameWithSourcePath:()TRIServer destPath:;
+ (uint64_t)triRenameOrFaultWithSourcePath:()TRIServer destPath:;
- (BOOL)triRemoveCachedANEBinariesForModelsFromPath:()TRIServer error:;
- (uint64_t)triForceRemoveItemAtPath:()TRIServer error:;
- (uint64_t)triRemoveDirectoryForPath:()TRIServer isDirectory:error:;
- (uint64_t)triRemoveNestedEmptyDirectoriesAtPath:()TRIServer;
@end

@implementation NSFileManager(TRIServer)

- (uint64_t)triRemoveDirectoryForPath:()TRIServer isDirectory:error:
{
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    stringByDeletingLastPathComponent = v8;
  }

  else
  {
    stringByDeletingLastPathComponent = [v8 stringByDeletingLastPathComponent];
  }

  v11 = stringByDeletingLastPathComponent;
  if ([self fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:0])
  {
    v12 = [self removeItemAtPath:v11 error:a5];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (uint64_t)triForceRemoveItemAtPath:()TRIServer error:
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12 = 0;
  v7 = [self triRemoveCachedANEBinariesForModelsFromPath:v6 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to purge ANE cache during GC: %{public}@", buf, 0xCu);
    }
  }

  v10 = [self triRemoveItemAtPath:v6 error:a4];

  return v10;
}

+ (id)triPostOrderDescendantDirectoryPathsAtPath:()TRIServer
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = *MEMORY[0x277CBE868];
  v31[0] = *MEMORY[0x277CBE868];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v9 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:v8 options:8 errorHandler:0];

  v10 = objc_opt_new();
  if (v10)
  {
    v23 = v4;
    v24 = v3;
    v11 = objc_autoreleasePoolPush();
    nextObject = [v9 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      while (1)
      {
        v25 = 0;
        v26 = 0;
        v14 = [nextObject2 getResourceValue:&v26 forKey:v7 error:{&v25, v23, v24}];
        v15 = v26;
        v16 = v25;
        if ((v14 & 1) == 0)
        {
          break;
        }

        bOOLValue = [v15 BOOLValue];
        if (!bOOLValue || [v9 isEnumeratingDirectoryPostOrder])
        {
          path = [nextObject2 path];
          if (path)
          {
            v19 = bOOLValue;
          }

          else
          {
            v19 = 0;
          }

          if (v19 == 1 && ![v10 addString:path])
          {

            goto LABEL_20;
          }
        }

        objc_autoreleasePoolPop(v11);
        v11 = objc_autoreleasePoolPush();
        nextObject2 = [v9 nextObject];
        if (!nextObject2)
        {
          goto LABEL_14;
        }
      }

      v21 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v28 = nextObject2;
        v29 = 2114;
        v30 = v16;
        _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to determine if url %@ is a directory: %{public}@", buf, 0x16u);
      }

LABEL_20:
      objc_autoreleasePoolPop(v11);
      v20 = 0;
    }

    else
    {
LABEL_14:
      objc_autoreleasePoolPop(v11);
      v20 = v10;
    }

    v4 = v23;
    v3 = v24;
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v20;
}

- (uint64_t)triRemoveNestedEmptyDirectoriesAtPath:()TRIServer
{
  v3 = a3;
  v4 = [objc_opt_class() triPostOrderDescendantDirectoryPathsAtPath:v3];
  v5 = v4;
  if (v4)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NSFileManager_TRIServer__triRemoveNestedEmptyDirectoriesAtPath___block_invoke;
    v8[3] = &unk_279DE5148;
    v8[4] = &v9;
    if ([v4 enumerateStringsWithBlock:v8])
    {
      v6 = *(v10 + 24);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)triRemoveCachedANEBinariesForModelsFromPath:()TRIServer error:
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.trial.TrialArchivingService"];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FEF680];
  [v7 setRemoteObjectInterface:v8];

  [v7 resume];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __78__NSFileManager_TRIServer__triRemoveCachedANEBinariesForModelsFromPath_error___block_invoke;
  v73[3] = &unk_279DDEEE0;
  v9 = v7;
  v74 = v9;
  v10 = MEMORY[0x2743948D0](v73);
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__58;
  v71 = __Block_byref_object_dispose__58;
  v72 = 0;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __78__NSFileManager_TRIServer__triRemoveCachedANEBinariesForModelsFromPath_error___block_invoke_39;
  v66[3] = &unk_279DE09F8;
  v66[4] = &v67;
  v11 = MEMORY[0x2743948D0](v66);
  v52 = v10;
  v54 = [v9 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v49 = v9;
  v50 = v5;
  v51 = v4;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:0 options:16 errorHandler:0];
  v48 = v11;

  v14 = 0;
  v15 = *MEMORY[0x277CBE868];
  v53 = v6;
  do
  {
    v16 = objc_autoreleasePoolPush();
    nextObject = [v13 nextObject];
    v18 = nextObject;
    if (!nextObject)
    {
      v29 = 2;
      goto LABEL_19;
    }

    v64 = 0;
    v65 = 0;
    v19 = [nextObject getResourceValue:&v65 forKey:v15 error:&v64];
    v20 = v65;
    v21 = v64;

    if ((v19 & 1) != 0 && ([v20 BOOLValue] & 1) == 0)
    {
      lastPathComponent = [v18 lastPathComponent];
      v23 = [lastPathComponent hasSuffix:@".espresso.net"];

      if (v23)
      {
        relativePath = [v18 relativePath];
        if (!relativePath)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:150 description:{@"Expression was unexpectedly nil/false: %@", @"currentURL.relativePath"}];
        }

        v25 = [v6 URLByAppendingPathComponent:relativePath isDirectory:0];
        if (!v25)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:152 description:{@"Expression was unexpectedly nil/false: %@", @"[topLevelURL URLByAppendingPathComponent:currentRelativePath isDirectory:NO]"}];
        }

        path = [v6 path];
        if (!path)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:154 description:{@"Expression was unexpectedly nil/false: %@", @"topLevelURL.path"}];
        }

        v27 = [TRISandboxExtensionFactory extensionTokenForPath:path extensionClass:0];
        if (!v27)
        {
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:156 description:{@"Expression was unexpectedly nil/false: %@", @"[TRISandboxExtensionFactory extensionTokenForPath:pathToExtend extensionClass:TRISandboxExtensionClassRead]"}];
        }

        v58 = 0;
        v59 = &v58;
        v60 = 0x3032000000;
        v61 = __Block_byref_object_copy__58;
        v62 = __Block_byref_object_dispose__58;
        v63 = 0;
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __78__NSFileManager_TRIServer__triRemoveCachedANEBinariesForModelsFromPath_error___block_invoke_2;
        v57[3] = &unk_279DE09F8;
        v57[4] = &v58;
        [v54 removeCachedANESegmentsForModelAtURL:v25 pathExtension:v27 completion:v57];
        v55 = relativePath;
        v28 = v68[5];
        if (v28)
        {
          v29 = 1;
        }

        else
        {
          v29 = 0;
          v28 = v59[5];
          if (!v28)
          {
LABEL_24:
            _Block_object_dispose(&v58, 8);

            v6 = v53;
            goto LABEL_17;
          }
        }

        v30 = v28;
        v31 = v21;
        v32 = v27;
        v33 = path;
        v34 = v13;
        v35 = v25;
        v36 = v15;
        v37 = v30;

        v38 = v37;
        v15 = v36;
        v25 = v35;
        v13 = v34;
        path = v33;
        v27 = v32;
        v21 = v38;
        goto LABEL_24;
      }
    }

    v29 = 3;
LABEL_17:

    v14 = v21;
LABEL_19:

    objc_autoreleasePoolPop(v16);
  }

  while (!v29 || v29 == 3);
  v42 = v29 == 2;

  _Block_object_dispose(&v67, 8);
  if (v52)
  {
    v52[2](v52);
  }

  objc_autoreleasePoolPop(v50);
  if (v29 == 2)
  {
    if (v14)
    {
      if (a4)
      {
        v43 = v14;
        v42 = 0;
        *a4 = v14;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 1;
    }
  }

  return v42;
}

+ (uint64_t)triRenameOrFaultWithSourcePath:()TRIServer destPath:
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  fileSystemRepresentation = [v5 fileSystemRepresentation];
  fileSystemRepresentation2 = [v6 fileSystemRepresentation];
  rename(fileSystemRepresentation, fileSystemRepresentation2, v9);
  if (v10)
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      *buf = 138544130;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      v26 = 2080;
      v27 = v13;
      v28 = 1024;
      v29 = v14;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_INFO, "Failed to rename %{public}@ --> %{public}@: %s (%d), attempting moveItemAtPath", buf, 0x26u);
    }

    if (v5)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = 0;
      v16 = [defaultManager moveItemAtPath:v5 toPath:v6 error:&v21];
      v17 = v21;

      if (v16)
      {
        v18 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v23 = v5;
        v24 = 2114;
        v25 = v6;
        v26 = 2112;
        v27 = v17;
        _os_log_fault_impl(&dword_26F567000, v19, OS_LOG_TYPE_FAULT, "Failed to move item: %{public}@ --> %{public}@: %@", buf, 0x20u);
      }
    }

    else
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = 0;
        v24 = 2114;
        v25 = v6;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Skipping moveItemAtPath request for %{public}@ --> %{public}@, source path does not exist", buf, 0x16u);
      }

      v17 = 0;
    }

    v18 = 0;
    goto LABEL_14;
  }

  v18 = 1;
LABEL_15:

  return v18;
}

+ (uint64_t)triForceRenameWithSourcePath:()TRIServer destPath:
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v9 = [defaultManager triForceRemoveItemAtPath:v7 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [self triRenameOrFaultWithSourcePath:v6 destPath:v7];
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v10;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to remove item at destination %{public}@: %{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

+ (NSObject)triTargetPathForSymlink:()TRIServer
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  bzero(v22, 0x400uLL);
  v4 = readlink([v3 fileSystemRepresentation], v22, 0x400uLL);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = *__error();
      v16 = 138543874;
      v17 = v3;
      v18 = 2080;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v6 = "Failed to resolve symlink %{public}@: %s (%d)";
      v7 = v5;
      v8 = 28;
      goto LABEL_7;
    }
  }

  else if (v4 < 0x400)
  {
    v22[v4] = 0;
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22];
    if (v12)
    {
      v5 = v12;
      v13 = v5;
      goto LABEL_14;
    }

    v14 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v3;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Target of symlink %{public}@ contains non-UTF-8 content.", &v16, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v3;
      v6 = "Target of symlink %{public}@ exceeds maximum length.";
      v7 = v5;
      v8 = 12;
LABEL_7:
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, v6, &v16, v8);
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

+ (uint64_t)triCompressedSizeForFileAtPath:()TRIServer shouldFault:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  MEMORY[0x274394030]();
  v16 = 0;
  v14 = 0;
  v15 = -1;
  [v5 fileSystemRepresentation];
  v6 = ParallelCompressionAFSCGetMetadata();
  v13 = 0;
  MEMORY[0x274394040](&v13, 0, 0);
  v7 = v13;
  if (v6)
  {
    v8 = *a4;
    v9 = TRILogCategory_Server();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8 == 1)
    {
      if (v10)
      {
        goto LABEL_11;
      }
    }

    else if (v10)
    {
LABEL_11:
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to query compressed size for %{public}@: %{public}@", buf, 0x16u);
    }

    *a4 = 0;
    goto LABEL_9;
  }

  if (v15 == -1)
  {
LABEL_9:
    v11 = -1;
    goto LABEL_10;
  }

  v11 = v14;
LABEL_10:

  return v11;
}

+ (TRIDiskUsage)triDiskUsageForDirectory:()TRIServer
{
  v70 = *MEMORY[0x277D85DE8];
  v44 = a3;
  context = objc_autoreleasePoolPush();
  v60[0] = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:v44 isDirectory:v60];

  if (v4)
  {
    if (v60[0])
    {
      v32 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v44 isDirectory:1];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v66 = 0x3032000000;
      v67 = __Block_byref_object_copy__58;
      v68 = __Block_byref_object_dispose__58;
      v69 = 0;
      v42 = *MEMORY[0x277CBE838];
      v5 = *MEMORY[0x277CBE838];
      v43 = *MEMORY[0x277CBE868];
      v64[0] = *MEMORY[0x277CBE868];
      v64[1] = v5;
      v6 = *MEMORY[0x277CBE8A8];
      v64[2] = *MEMORY[0x277CBE908];
      v64[3] = v6;
      v41 = v6;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __53__NSFileManager_TRIServer__triDiskUsageForDirectory___block_invoke;
      v59[3] = &unk_279DE2410;
      v59[4] = &buf;
      v48 = [defaultManager2 enumeratorAtURL:v32 includingPropertiesForKeys:v33 options:24 errorHandler:v59];

      if (v48)
      {
        log = objc_opt_new();
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v60[0] = 1;
        v40 = *MEMORY[0x277CBE8C8];
        v39 = *MEMORY[0x277CBE808];
        while (1)
        {
          v8 = objc_autoreleasePoolPush();
          nextObject = [v48 nextObject];
          v10 = nextObject;
          if (nextObject)
          {
            break;
          }

LABEL_24:

          objc_autoreleasePoolPop(v8);
          if (!v10)
          {
            v29 = [[TRIDiskUsage alloc] initWithNaiveSum:v47 deduplicatedSum:v46 compressedSum:v45];
            goto LABEL_33;
          }
        }

        v57 = 0;
        v58 = 0;
        [nextObject getResourceValue:&v58 forKey:v43 error:&v57];
        v11 = v58;
        v12 = v57;
        v55 = 0;
        v56 = 0;
        [v10 getResourceValue:&v56 forKey:v42 error:&v55];
        v13 = v56;
        v14 = v55;

        v53 = 0;
        v54 = 0;
        [v10 getResourceValue:&v54 forKey:v41 error:&v53];
        v15 = v54;
        v16 = v53;

        v51 = 0;
        v52 = 0;
        [v10 getResourceValue:&v52 forKey:v40 error:&v51];
        v17 = v52;
        v18 = v51;

        v49 = 0;
        v50 = 0;
        [v10 getResourceValue:&v50 forKey:v39 error:&v49];
        v19 = v50;
        v20 = v49;

        if ([v11 BOOLValue])
        {
          v47 += [v13 unsignedLongValue];
          v46 += [v13 unsignedLongValue];
          v21 = [v13 unsignedLongValue] + v45;
LABEL_8:
          v45 = v21;
LABEL_23:

          goto LABEL_24;
        }

        if (![v15 BOOLValue])
        {
          goto LABEL_23;
        }

        if ([v17 unsignedLongValue] >= 2)
        {
          if (!v19)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:363 description:@"no resource identifier for regular file"];
          }

          if (([log containsObject:v19]& 1) != 0)
          {
            v22 = 0;
LABEL_17:
            v47 += [v13 unsignedLongValue];
            if (!v22)
            {
              goto LABEL_23;
            }

            unsignedLongValue = [v13 unsignedLongValue];
            relativePath = [v10 relativePath];
            if (!relativePath)
            {
              currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSFileManager+Server.m" lineNumber:376 description:{@"Expression was unexpectedly nil/false: %@", @"relURL.relativePath"}];
            }

            v24 = [v44 stringByAppendingPathComponent:relativePath];

            unsignedLongValue2 = [self triCompressedSizeForFileAtPath:v24 shouldFault:v60];
            if (unsignedLongValue2 == -1)
            {
              unsignedLongValue2 = [v13 unsignedLongValue];
            }

            v46 += unsignedLongValue;
            v21 = unsignedLongValue2 + v45;
            goto LABEL_8;
          }

          [log addObject:v19];
        }

        v22 = 1;
        goto LABEL_17;
      }

      log = TRILogCategory_Server();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v31 = *(*(&buf + 1) + 40);
        *v60 = 138543618;
        v61 = v44;
        v62 = 2114;
        v63 = v31;
        _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Failed to create enumerator at path: %{public}@ w/ error: %{public}@", v60, 0x16u);
      }

      v29 = 0;
LABEL_33:

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v28 = TRILogCategory_Server();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v44;
        _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Can't compute disk usage for %{public}@: not a directory", &buf, 0xCu);
      }

      v29 = 0;
    }
  }

  else
  {
    v29 = [[TRIDiskUsage alloc] initWithNaiveSum:0 deduplicatedSum:0 compressedSum:0];
  }

  objc_autoreleasePoolPop(context);

  return v29;
}

@end