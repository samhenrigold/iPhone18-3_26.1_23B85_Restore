@interface FCAVAssetDownloadManager
- (FCAVAssetDownloadManager)init;
- (id)_handleAssetDownloadFromNetwork:(void *)network completionHandler:;
- (id)_restoreBackgroundDownloadsWithCompletionHandler:(id)handler;
- (id)downloadAsset:(void *)asset completionHandler:;
- (id)initWithAssetCache:(void *)cache keyCache:(void *)keyCache networkReachability:;
- (id)interestTokenForCachedAsset:(id *)asset;
- (uint64_t)_isAssetInCache:(uint64_t)cache;
- (void)URLSession:(id)session assetDownloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_callCompletionHandlersForAssetID:(void *)d interestToken:(void *)token error:;
- (void)_completeRequestForAssetID:(void *)d withDownloadedURL:(void *)l remoteURL:(void *)rL error:;
- (void)_ensureAssetIsPurgeable:(uint64_t)purgeable;
- (void)restoreBackgroundDownloadsWithCompletionHandler:(uint64_t)handler;
@end

@implementation FCAVAssetDownloadManager

- (FCAVAssetDownloadManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCAVAssetDownloadManager init]";
    v10 = 2080;
    v11 = "FCAVAssetDownloadManager.m";
    v12 = 1024;
    v13 = 96;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCAVAssetDownloadManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithAssetCache:(void *)cache keyCache:(void *)keyCache networkReachability:
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a2;
  cacheCopy = cache;
  keyCacheCopy = keyCache;
  v11 = keyCacheCopy;
  if (!self)
  {
    goto LABEL_7;
  }

  if (!keyCacheCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "networkReachability"];
    *buf = 136315906;
    v31 = "[FCAVAssetDownloadManager initWithAssetCache:keyCache:networkReachability:]";
    v32 = 2080;
    v33 = "FCAVAssetDownloadManager.m";
    v34 = 1024;
    v35 = 103;
    v36 = 2114;
    v37 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v29.receiver = self;
  v29.super_class = FCAVAssetDownloadManager;
  v12 = objc_msgSendSuper2(&v29, sel_init);
  if (v12)
  {
    v13 = v12;
    objc_storeStrong(v12 + 1, a2);
    objc_storeStrong(v13 + 2, cache);
    objc_storeStrong(v13 + 3, keyCache);
    v14 = objc_alloc_init(FCThreadSafeMutableDictionary);
    v15 = v13[6];
    v13[6] = v14;

    v16 = [[FCAsyncOnceOperation alloc] initWithTarget:v13 selector:sel__restoreBackgroundDownloadsWithCompletionHandler_];
    v17 = v13[4];
    v13[4] = v16;

    v18 = objc_alloc(MEMORY[0x1E69B68D8]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke;
    v27[3] = &unk_1E7C36F98;
    v19 = v13;
    v28 = v19;
    v20 = [v18 initWithConstructor:v27];
    v21 = v19[5];
    v19[5] = v20;

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke_2;
    v25[3] = &unk_1E7C36EA0;
    v22 = v19;
    v26 = v22;
    [FCTaskScheduler scheduleLowPriorityBlock:v25];
  }

  else
  {
LABEL_7:
    v22 = 0;
  }

  return v22;
}

id __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695AC80] backgroundSessionConfigurationWithIdentifier:@"com.apple.news.avasset"];
  [v2 setURLCache:0];
  [v2 setDiscretionary:0];
  [v2 set_sourceApplicationBundleIdentifier:@"com.apple.news"];
  v3 = MEMORY[0x1E6987E58];
  v4 = *(a1 + 32);
  v5 = FCAVWorkOperationQueue();
  v6 = [v3 sessionWithConfiguration:v2 assetDownloadDelegate:v4 delegateQueue:v5];

  return v6;
}

void __76__FCAVAssetDownloadManager_initWithAssetCache_keyCache_networkReachability___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = FCURLForAVAssetDownloads();
  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:0];

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 pathExtension];
          v11 = [v10 isEqualToString:@"movpkg"];

          if (v11)
          {
            [(FCAVAssetDownloadManager *)*(a1 + 32) _ensureAssetIsPurgeable:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)_ensureAssetIsPurgeable:(uint64_t)purgeable
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (purgeable)
  {
    if (v3)
    {
      v9 = 67590;
      if (fsctl([v3 fileSystemRepresentation], 0xC0084A44uLL, &v9, 0))
      {
        v5 = FCAVAssetLog;
        if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_ERROR))
        {
          v6 = v5;
          path = [v4 path];
          v8 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
          *buf = 138543618;
          v11 = path;
          v12 = 2114;
          v13 = v8;
          _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "AV asset download manager failed to mark asset as purgeable, URL=%{public}@, errno=%{public}@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)restoreBackgroundDownloadsWithCompletionHandler:(uint64_t)handler
{
  v6 = a2;
  if (handler)
  {
    v3 = *(handler + 32);
    v4 = dispatch_get_global_queue(9, 0);
    v5 = [v3 executeWithCallbackQueue:v4 completionHandler:v6];
  }
}

- (id)interestTokenForCachedAsset:(id *)asset
{
  assetCopy = asset;
  if (asset)
  {
    v4 = asset[1];
    v5 = a2;
    identifier = [v5 identifier];
    v7 = [v4 interestTokenForAssetIdentifier:identifier];

    identifier2 = [v5 identifier];

    if ([(FCAVAssetDownloadManager *)assetCopy _isAssetInCache:identifier2])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    assetCopy = v9;
  }

  return assetCopy;
}

- (uint64_t)_isAssetInCache:(uint64_t)cache
{
  v3 = a2;
  if (cache)
  {
    if ([*(cache + 8) containsAssetWithIdentifier:v3])
    {
      v4 = [*(cache + 8) contentKeyIdentifiersForAssetIdentifier:v3];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_32;
      v11[3] = &unk_1E7C38B40;
      v11[4] = cache;
      v5 = [v4 fc_arrayOfObjectsPassingTest:v11];
      if ([v5 count])
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2;
        v8[3] = &unk_1E7C36F68;
        v9 = v3;
        v10 = v5;
        v6 = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2(v8);
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke;
      v12[3] = &unk_1E7C36F40;
      v13 = v3;
      __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke(v12);
      v6 = 0;
      v4 = v13;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)downloadAsset:(void *)asset completionHandler:
{
  v5 = a2;
  assetCopy = asset;
  if (self)
  {
    v7 = [(FCAVAssetDownloadManager *)self interestTokenForCachedAsset:v5];
    if (v7)
    {
      v10 = assetCopy;
      v9 = v7;
      v10[2](v10, v9, 0);

      self = 0;
    }

    else
    {
      self = [(FCAVAssetDownloadManager *)self _handleAssetDownloadFromNetwork:v5 completionHandler:assetCopy];
    }
  }

  return self;
}

- (id)_handleAssetDownloadFromNetwork:(void *)network completionHandler:
{
  v5 = a2;
  networkCopy = network;
  if (self)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47;
    v26 = __Block_byref_object_dispose__47;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__35;
    v20 = __Block_byref_object_dispose__36;
    v21 = 0;
    v7 = self[6];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke;
    v10[3] = &unk_1E7C41AE8;
    v11 = v5;
    v14 = &v22;
    selfCopy = self;
    v13 = networkCopy;
    v15 = &v16;
    [v7 readWriteWithAccessor:v10];

    v8 = v17[5];
    if (v8)
    {
      (*(v8 + 16))();
    }

    self = v23[5];

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  return self;
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  lCopy = l;
  [(FCAVAssetDownloadManager *)self _ensureAssetIsPurgeable:lCopy];
  taskDescription = [taskCopy taskDescription];

  if (!taskDescription && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v14 = objc_alloc(MEMORY[0x1E696AEC0]);
    v15 = [taskCopy description];
    v16 = [v14 initWithFormat:@"AVAssetDownloadTask %@ is missing a task description", v15];
    *buf = 136315906;
    v18 = "[FCAVAssetDownloadManager URLSession:assetDownloadTask:didFinishDownloadingToURL:]";
    v19 = 2080;
    v20 = "FCAVAssetDownloadManager.m";
    v21 = 1024;
    v22 = 192;
    v23 = 2114;
    v24 = v16;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTaskDescription) : %s %s:%d %{public}@", buf, 0x26u);
  }

  taskDescription2 = [taskCopy taskDescription];
  uRLAsset = [taskCopy URLAsset];
  v12 = [uRLAsset URL];
  error = [taskCopy error];
  [(FCAVAssetDownloadManager *)self _completeRequestForAssetID:taskDescription2 withDownloadedURL:lCopy remoteURL:v12 error:error];
}

- (void)_completeRequestForAssetID:(void *)d withDownloadedURL:(void *)l remoteURL:(void *)rL error:
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  v13 = rLCopy;
  if (self && v9)
  {
    if (rLCopy)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2;
      v33[3] = &unk_1E7C376A0;
      v34 = v9;
      v35 = v13;
      selfCopy = self;
      __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2(v33);

      v14 = v34;
LABEL_14:

      goto LABEL_15;
    }

    v15 = *(self + 8);
    v16 = [v15 interestTokenForAssetIdentifier:v9];

    pathExtension = [dCopy pathExtension];
    pathExtension2 = [lCopy pathExtension];
    if (([pathExtension2 isEqualToString:@"m3u8"] & 1) == 0)
    {
      pathExtension3 = [lCopy pathExtension];
      v20 = [pathExtension3 isEqualToString:@"m3u"];

      if (v20)
      {
LABEL_9:
        v21 = FCAVAssetLog;
        if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v9;
          _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "AV asset download succeeded for assetID=%{public}@", &buf, 0xCu);
        }

        v14 = [objc_alloc(MEMORY[0x1E6988168]) initWithURL:dCopy options:0];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_52;
        v26[3] = &unk_1E7C41B10;
        v27 = v9;
        selfCopy2 = self;
        v29 = dCopy;
        v30 = lCopy;
        v31 = pathExtension;
        v32 = v16;
        v22 = v16;
        v23 = pathExtension;
        v24 = v26;
        v25 = v24;
        if (v14)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v38 = __78__AVURLAsset_FCAdditions__fc_fetchContentKeyIdentifiersWithCompletionHandler___block_invoke;
          v39 = &unk_1E7C37BC0;
          v40 = v14;
          v41 = v24;
          [v14 loadValuesAsynchronouslyForKeys:&unk_1F2E6F9F0 completionHandler:&buf];
        }

        goto LABEL_14;
      }

      [lCopy pathExtension];
      pathExtension = pathExtension2 = pathExtension;
    }

    goto LABEL_9;
  }

LABEL_15:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  if (error)
  {
    errorCopy = error;
    taskCopy = task;
    v9 = objc_opt_class();
    v10 = FCCheckedDynamicCast(v9, taskCopy);

    taskDescription = [v10 taskDescription];

    if (!taskDescription && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = [v10 description];
      v17 = [v15 initWithFormat:@"AVAssetDownloadTask %@ is missing a task description", v16];
      *buf = 136315906;
      v19 = "[FCAVAssetDownloadManager URLSession:task:didCompleteWithError:]";
      v20 = 2080;
      v21 = "FCAVAssetDownloadManager.m";
      v22 = 1024;
      v23 = 205;
      v24 = 2114;
      v25 = v17;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTaskDescription) : %s %s:%d %{public}@", buf, 0x26u);
    }

    taskDescription2 = [v10 taskDescription];
    uRLAsset = [v10 URLAsset];
    v14 = [uRLAsset URL];
    [(FCAVAssetDownloadManager *)self _completeRequestForAssetID:taskDescription2 withDownloadedURL:0 remoteURL:v14 error:errorCopy];
  }
}

uint64_t __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset does not have its content in the cache assetID=%{public}@", &v5, 0xCu);
  }

  return 0;
}

BOOL __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_32(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[2];
  }

  v4 = MEMORY[0x1E695DFF8];
  v5 = v3;
  v6 = [v4 URLWithString:a2];
  v7 = [v5 assetKeyForURI:v6];

  return v7 == 0;
}

uint64_t __44__FCAVAssetDownloadManager__isAssetInCache___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset does not have all its keys in the cache assetID=%{public}@, missing=%{public}@", &v6, 0x16u);
  }

  return 0;
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2;
    v54[3] = &unk_1E7C41A98;
    v57 = *(a1 + 56);
    v55 = v5;
    v56 = *(a1 + 48);
    __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2(v54);

    v6 = v55;
  }

  else
  {
    v6 = [*(a1 + 32) asset];
    if (*(a1 + 40) && [(FCAVAsset *)*(a1 + 32) isHLS])
    {
      v7 = MEMORY[0x1E6987E40];
      v8 = [*(a1 + 32) identifier];
      v9 = [v7 downloadConfigurationWithAsset:v6 title:v8];

      v10 = FCDownloadDestinationURLForAsset(*(a1 + 32));
      [(FCAssetDownloadOperation *)v9 _setDestinationURL:v10];

      v11 = *(a1 + 40);
      if (v11)
      {
        v11 = v11[5];
      }

      v12 = v11;
      v13 = [v12 value];
      v14 = [v13 assetDownloadTaskWithConfiguration:v9];

      v15 = [*(a1 + 32) identifier];
      [v14 setTaskDescription:v15];

      v16 = [FCAVAssetDownload alloc];
      v17 = [*(a1 + 32) identifier];
      v18 = [(FCAVAssetDownload *)&v16->super.isa initWithAssetID:v17 underlyingOperation:v14];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_3;
      aBlock[3] = &unk_1E7C36EA0;
      v53 = v14;
      v21 = v14;
      v22 = _Block_copy(aBlock);
      v23 = *(*(a1 + 64) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    else
    {
      v25 = [FCAssetDownloadOperation alloc];
      v26 = *(a1 + 40);
      if (v26)
      {
        v27 = *(v26 + 24);
      }

      else
      {
        v27 = 0;
      }

      v28 = [(FCAssetDownloadOperation *)v25 initWithNetworkReachability:v27];
      v29 = [v6 URL];
      [(FCAssetDownloadOperation *)v28 setURL:v29];

      [(FCAssetDownloadOperation *)v28 setDownloadDestination:0];
      v30 = [*(a1 + 32) identifier];
      [(FCAssetDownloadOperation *)v28 setLoggingKey:v30];

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_4;
      v49[3] = &unk_1E7C41AC0;
      v46 = *(a1 + 32);
      v31 = v46.i64[0];
      v50 = vextq_s8(v46, v46, 8uLL);
      v51 = v6;
      [(FCAssetDownloadOperation *)v28 setFileDownloadCompletionHandler:v49];
      v32 = [FCAVAssetDownload alloc];
      v33 = [*(a1 + 32) identifier];
      v34 = [(FCAVAssetDownload *)&v32->super.isa initWithAssetID:v33 underlyingOperation:v28];
      v35 = *(*(a1 + 56) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_5;
      v47[3] = &unk_1E7C36EA0;
      v48 = v28;
      v9 = v28;
      v37 = _Block_copy(v47);
      v38 = *(*(a1 + 64) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;
    }

    v40 = *(*(*(a1 + 56) + 8) + 40);
    if (v40)
    {
      v40 = v40[3];
    }

    v41 = *(a1 + 48);
    v42 = v40;
    v43 = _Block_copy(v41);
    [v42 fc_safelyAddObject:v43];

    v44 = *(*(*(a1 + 56) + 8) + 40);
    v45 = [*(a1 + 32) identifier];
    [v3 setObject:v44 forKeyedSubscript:v45];
  }
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = *(a1 + 40);
  v4 = v2;
  v5 = _Block_copy(v3);
  [v4 fc_safelyAddObject:v5];
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = a4;
  v9 = a2;
  v11 = [v7 identifier];
  v10 = [*(a1 + 48) URL];
  [(FCAVAssetDownloadManager *)v6 _completeRequestForAssetID:v11 withDownloadedURL:v9 remoteURL:v10 error:v8];
}

void __78__FCAVAssetDownloadManager__handleAssetDownloadFromNetwork_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [v2 addOperation:*(a1 + 32)];
}

void __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "AV asset download failed for assetID=%{public}@ with error=%{public}@", &v5, 0x16u);
  }

  [(FCAVAssetDownloadManager *)a1[6] _callCompletionHandlersForAssetID:0 interestToken:a1[5] error:?];
}

- (void)_callCompletionHandlersForAssetID:(void *)d interestToken:(void *)token error:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  dCopy = d;
  tokenCopy = token;
  if (self)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__47;
    v26 = __Block_byref_object_dispose__47;
    v27 = 0;
    v10 = *(self + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__FCAVAssetDownloadManager__callCompletionHandlersForAssetID_interestToken_error___block_invoke;
    v19[3] = &unk_1E7C3C0E0;
    v21 = &v22;
    v20 = v7;
    [v10 readWriteWithAccessor:v19];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v23[5];
    v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
    if (v12)
    {
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v15 objects:v28 count:16];
      }

      while (v12);
    }

    _Block_object_dispose(&v22, 8);
  }
}

void __89__FCAVAssetDownloadManager__completeRequestForAssetID_withDownloadedURL_remoteURL_error___block_invoke_52(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "AV asset download will save assetID=%{public}@ with keyIdentifiers=%{public}@", &v8, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  [v7 adoptFileAtURL:*(a1 + 48) forAssetIdentifier:*(a1 + 32) remoteURL:*(a1 + 56) contentKeyIdentifiers:v3 extension:*(a1 + 64)];
  [(FCAVAssetDownloadManager *)*(a1 + 40) _callCompletionHandlersForAssetID:*(a1 + 72) interestToken:0 error:?];
}

void __82__FCAVAssetDownloadManager__callCompletionHandlersForAssetID_interestToken_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v11 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 copy];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  [v11 removeObjectForKey:*(a1 + 32)];
}

- (id)_restoreBackgroundDownloadsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "AV asset download manager will look for background downloads to restore", buf, 2u);
  }

  if (self)
  {
    URLSession = self->_URLSession;
  }

  else
  {
    URLSession = 0;
  }

  v7 = URLSession;
  value = [(NFLazy *)v7 value];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke;
  v16 = &unk_1E7C41B38;
  selfCopy = self;

  v18 = handlerCopy;
  v9 = handlerCopy;
  [value getAllTasksWithCompletionHandler:&v13];

  v10 = [FCPseudoOperation alloc];
  selfCopy = [(FCPseudoOperation *)v10 initWithCancelBlock:0 priorityBlock:0, v13, v14, v15, v16, selfCopy];

  return selfCopy;
}

void __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = &FCAVAssetLog;
  v5 = FCAVAssetLog;
  if (os_log_type_enabled(FCAVAssetLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v31 = [v3 count];
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "AV asset download manager found %lu background downloads to restore", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        objc_opt_class();
        if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v13 = v12;
          v14 = [v13 taskDescription];

          if (v14)
          {
            v15 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v15;
              [v13 taskDescription];
              v17 = a1;
              v19 = v18 = v4;
              *buf = 138543362;
              v31 = v19;
              _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "AV asset download manager will restore background download for asset ID %{public}@", buf, 0xCu);

              v4 = v18;
              a1 = v17;
            }

            v20 = *(a1 + 32);
            if (v20)
            {
              v21 = *(v20 + 48);
            }

            else
            {
              v21 = 0;
            }

            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke_54;
            v23[3] = &unk_1E7C36EC8;
            v13 = v13;
            v24 = v13;
            [v21 readWriteWithAccessor:v23];
          }
        }

        else
        {
          v13 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      v22 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v9 = v22;
    }

    while (v22);
  }

  (*(*(a1 + 40) + 16))();
}

void __77__FCAVAssetDownloadManager__restoreBackgroundDownloadsWithCompletionHandler___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCAVAssetDownload alloc];
  v7 = [*(a1 + 32) taskDescription];
  v5 = [(FCAVAssetDownload *)&v4->super.isa initWithAssetID:v7 underlyingOperation:*(a1 + 32)];
  v6 = [*(a1 + 32) taskDescription];
  [v3 setObject:v5 forKeyedSubscript:v6];
}

@end