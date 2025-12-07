@interface GEOResourceLoader
- (void)_cleanup;
- (void)_loadNextResourceFromNetwork;
- (void)_loadResourcesFromDisk;
@end

@implementation GEOResourceLoader

- (void)_loadResourcesFromDisk
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_resourcesToLoad mutableCopy];
  if ([v3 count])
  {
    v4 = 0x1E696A000uLL;
    v40 = v44;
    do
    {
      firstObject = [v3 firstObject];
      [v3 removeObjectAtIndex:0];
      directory = self->_directory;
      name = [firstObject name];
      v8 = [(NSString *)directory stringByAppendingPathComponent:name];

      defaultManager = [*(v4 + 3080) defaultManager];
      LODWORD(name) = [defaultManager fileExistsAtPath:v8];

      v42 = firstObject;
      if (!name)
      {
        goto LABEL_21;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v11 = log;
        name2 = [firstObject name];
        *buf = 138477827;
        v53 = name2;
        _os_log_impl(&dword_18660C000, v11, OS_LOG_TYPE_DEBUG, "Found matching resource in destination directory for '%{private}@'", buf, 0xCu);

        log = self->_log;
      }

      if ([firstObject shouldCheckForUpdateForResourceAtPath:v8 useExtendedAttrs:1 forceUpdateCheck:self->_forceUpdateCheck log:log])
      {
        goto LABEL_27;
      }

      if ([firstObject validateResourceAtPath:v8 useExtendedAttrs:1 log:self->_log])
      {
        v41 = v8;
        v13 = v3;
        [(NSMutableArray *)self->_resourcesToLoad removeObject:firstObject];
        loadedResources = self->_loadedResources;
        resource = [firstObject resource];
        [(NSMutableArray *)loadedResources addObject:resource];

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        equivalentResources = [firstObject equivalentResources];
        v17 = [equivalentResources countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v49;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v49 != v19)
              {
                objc_enumerationMutation(equivalentResources);
              }

              v21 = *(*(&v48 + 1) + 8 * i);
              v47 = 0;
              v22 = [(GEOResourceLoader *)self _establishHardLinkIfPossibleForResource:v21 toResource:firstObject error:&v47];
              v23 = v47;
              if (v22)
              {
                v24 = self->_loadedResources;
                resource2 = [v21 resource];
                v26 = v24;
                firstObject = v42;
                [(NSMutableArray *)v26 addObject:resource2];
              }

              else
              {
                v27 = self->_log;
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                {
                  v28 = v27;
                  name3 = [v21 name];
                  *buf = 138478083;
                  v53 = name3;
                  v54 = 2113;
                  v55 = v23;
                  _os_log_impl(&dword_18660C000, v28, OS_LOG_TYPE_DEBUG, "Failed to establish hard link for resource '%{private}@': %{private}@. Loading normally.", buf, 0x16u);

                  firstObject = v42;
                }

                [(NSMutableArray *)self->_resourcesToLoad addObject:v21];
                [v13 addObject:v21];
              }
            }

            v18 = [equivalentResources countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v18);
        }

        v3 = v13;
        v8 = v41;
        v4 = 0x1E696A000;
      }

      else
      {
LABEL_21:
        v30 = v8;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        v44[0] = __43__GEOResourceLoader__loadResourcesFromDisk__block_invoke;
        v44[1] = &unk_1E7058630;
        v44[2] = self;
        v31 = firstObject;
        v45 = v31;
        v46 = v3;
        v32 = _Block_copy(aBlock);
        if (!-[NSString length](self->_additionalDirectoryToConsider, "length") || (additionalDirectoryToConsider = self->_additionalDirectoryToConsider, [v31 name], v34 = objc_claimAutoreleasedReturnValue(), -[NSString stringByAppendingPathComponent:](additionalDirectoryToConsider, "stringByAppendingPathComponent:", v34), v35 = objc_claimAutoreleasedReturnValue(), v34, LOBYTE(v34) = (*(v32 + 2))(v32, v35, @"alternate", 1, 1), v35, firstObject = v42, (v34 & 1) == 0))
        {
          name4 = [v31 name];
          v37 = [@"/System/Library/GeoServicesData" stringByAppendingPathComponent:name4];

          defaultManager2 = [*(v4 + 3080) defaultManager];
          v39 = [defaultManager2 fileExistsAtPath:v37];

          if (v39)
          {
            (*(v32 + 2))(v32, v37, @"GeoServicesData", 0, 0);
          }

          firstObject = v42;
        }

        v8 = v30;
      }

LABEL_27:
    }

    while ([v3 count]);
  }
}

- (void)_loadNextResourceFromNetwork
{
  v38 = *MEMORY[0x1E69E9840];
  if (self->_canceled)
  {
    return;
  }

  v3 = [(NSMutableArray *)self->_resourcesToLoad count];
  numberOfDownloadsInProgress = self->_numberOfDownloadsInProgress;
  if (v3 | numberOfDownloadsInProgress)
  {
    goto LABEL_5;
  }

  if (self->_numberOfCopiesInProgress)
  {
    numberOfDownloadsInProgress = 0;
LABEL_5:
    if (numberOfDownloadsInProgress < self->_maxConcurrentLoads && [(NSMutableArray *)self->_resourcesToLoad count])
    {
      v5 = [(NSMutableArray *)self->_resourcesToLoad objectAtIndex:0];
      [(NSMutableArray *)self->_resourcesToLoad removeObjectAtIndex:0];
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v35 = v5;
        _os_log_impl(&dword_18660C000, log, OS_LOG_TYPE_DEBUG, "Loading next resource: %{private}@", buf, 0xCu);
        log = self->_log;
      }

      ++self->_numberOfDownloadsInProgress;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v7 = log;
        name = [v5 name];
        *buf = 138477827;
        v35 = name;
        _os_log_impl(&dword_18660C000, v7, OS_LOG_TYPE_DEBUG, "Loading resource '%{private}@' from network", buf, 0xCu);
      }

      [(GEOReportedProgress *)self->_progress becomeCurrentWithPendingUnitCount:1];
      v9 = objc_alloc([objc_opt_class() resourceLoadOperationClass]);
      eTag = [v5 eTag];
      v11 = [v9 initWithResource:v5 eTag:eTag auditToken:self->_auditToken baseURL:self->_baseURL alternateURLs:self->_alternateURLs proxyURL:self->_proxyURL log:self->_log];

      if (v11)
      {
        [v11 setRequiresWiFi:self->_requiresWiFi];
        inProgressResourceDownloads = self->_inProgressResourceDownloads;
        if (!inProgressResourceDownloads)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:self->_maxConcurrentLoads];
          v14 = self->_inProgressResourceDownloads;
          self->_inProgressResourceDownloads = v13;

          inProgressResourceDownloads = self->_inProgressResourceDownloads;
        }

        [(NSMapTable *)inProgressResourceDownloads setObject:v11 forKey:v5];
        if (self->_signpostID)
        {
          v15 = os_signpost_id_generate(self->_log);
          v16 = self->_log;
          v17 = v16;
          if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
          {
            signpostID = self->_signpostID;
            name2 = [v5 name];
            *buf = 134218242;
            v35 = signpostID;
            v36 = 2112;
            v37 = name2;
            _os_signpost_emit_with_name_impl(&dword_18660C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "LoadResource", "parent_signpost=%llu Name=%@", buf, 0x16u);
          }
        }

        else
        {
          v15 = 0;
        }

        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_54;
        v29[3] = &unk_1E7058658;
        v29[4] = self;
        v5 = v5;
        v30 = v5;
        v31 = v15;
        [v11 startWithCompletionHandler:v29 callbackQueue:self->_workQueue];
        [(GEOReportedProgress *)self->_progress resignCurrent];
        [(GEOResourceLoader *)self _loadNextResourceFromNetwork];
      }

      else
      {
        v25 = self->_log;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = v25;
          name3 = [v5 name];
          *buf = 138477827;
          v35 = name3;
          _os_log_impl(&dword_18660C000, v26, OS_LOG_TYPE_FAULT, "Unable to create operation for resource %{private}@", buf, 0xCu);
        }

        v28 = self->_numberOfDownloadsInProgress;
        if (v28)
        {
          self->_numberOfDownloadsInProgress = v28 - 1;
        }

        [(GEOReportedProgress *)self->_progress resignCurrent];
        [(GEOResourceLoader *)self _loadNextResourceFromNetwork];
        v11 = 0;
      }

      goto LABEL_30;
    }

    return;
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18660C000, v20, OS_LOG_TYPE_DEBUG, "Finished loading all resources", buf, 2u);
  }

  [(GEOResourceLoader *)self _cleanup];
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v22 = _Block_copy(completionHandler);
    v23 = self->_completionHandler;
    self->_completionHandler = 0;

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke;
    block[3] = &unk_1E706FEA8;
    block[4] = self;
    v33 = v22;
    v5 = v22;
    dispatch_async(callbackQueue, block);
    v11 = v33;
LABEL_30:
  }
}

- (void)_cleanup
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_inProgressResourceDownloads;
  inProgressResourceDownloads = self->_inProgressResourceDownloads;
  self->_inProgressResourceDownloads = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMapTable *)v5 objectForKey:*(*(&v12 + 1) + 8 * v9), v12];
        [v10 cancel];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  resourcesToLoad = self->_resourcesToLoad;
  self->_resourcesToLoad = 0;
}

void __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_54(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v14 = *(v13 + 40);
  if (v14)
  {
    *(v13 + 40) = v14 - 1;
    v13 = *(a1 + 32);
  }

  [*(v13 + 128) removeObjectForKey:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v15 = *(*(a1 + 32) + 168);
    v16 = v15;
    v17 = *(a1 + 48);
    if (!v12)
    {
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 134217984;
        v46 = [v10 length];
        _os_signpost_emit_with_name_impl(&dword_18660C000, v16, OS_SIGNPOST_INTERVAL_END, v17, "LoadResource", "Result=Success Size=%llu", buf, 0xCu);
      }

      if (*(*(a1 + 32) + 56))
      {
        goto LABEL_37;
      }

LABEL_16:
      if (v9)
      {
        v44 = 0;
        v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9 options:1 error:&v44];
        v20 = v44;
        v21 = v20;
        v12 = 0;
        if (!v19)
        {
          v12 = v20;
          v22 = *(*(a1 + 32) + 168);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v46 = v9;
            v47 = 2112;
            v48 = v12;
            _os_log_impl(&dword_18660C000, v22, OS_LOG_TYPE_ERROR, "Could not read temp resource file at %@: %@", buf, 0x16u);
          }
        }

        if (!v19)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v19 = v10;
        v12 = 0;
        if (!v19)
        {
LABEL_30:

          v18 = *(a1 + 32);
          if (v12)
          {
            goto LABEL_31;
          }

          v35 = *(a1 + 40);
          v36 = [v35 checksum];
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_2;
          v38[3] = &unk_1E706F3D0;
          v37 = *(a1 + 40);
          v38[4] = *(a1 + 32);
          v39 = v37;
          [v18 _writeResourceToDisk:v35 withData:v10 orTempFile:v9 checksum:v36 eTag:v11 completionHandler:v38 callbackQueue:*(*(a1 + 32) + 136)];

LABEL_37:
          v12 = 0;
          goto LABEL_38;
        }
      }

      if (([*(a1 + 40) validateResource:v19 log:*(*(a1 + 32) + 168)] & 1) == 0)
      {
        if (v9)
        {
          v23 = [MEMORY[0x1E696AC08] defaultManager];
          v43 = 0;
          v24 = [v23 removeItemAtURL:v9 error:&v43];
          v25 = v43;

          if ((v24 & 1) == 0)
          {
            v26 = *(*(a1 + 32) + 168);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v46 = v9;
              v47 = 2112;
              v48 = v25;
              _os_log_impl(&dword_18660C000, v26, OS_LOG_TYPE_ERROR, "Unable to delete temp file at %@: %@", buf, 0x16u);
            }
          }
        }

        v27 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11];

        v12 = v27;
      }

      goto LABEL_30;
    }

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18660C000, v16, OS_SIGNPOST_INTERVAL_END, v17, "LoadResource", "Result=Error", buf, 2u);
    }
  }

  v18 = *(a1 + 32);
  if (*(v18 + 56))
  {
    goto LABEL_38;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_31:
  v28 = *(v18 + 168);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v46 = v12;
    _os_log_impl(&dword_18660C000, v28, OS_LOG_TYPE_ERROR, "Error downloading resource: %{public}@", buf, 0xCu);
    v18 = *(a1 + 32);
  }

  v29 = _Block_copy(*(v18 + 32));
  v30 = *(a1 + 32);
  v31 = *(v30 + 32);
  *(v30 + 32) = 0;

  [*(a1 + 32) cancel];
  if (v29)
  {
    v32 = *(*(a1 + 32) + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_57;
    block[3] = &unk_1E7070F30;
    v33 = v29;
    v34 = *(a1 + 32);
    v42 = v33;
    block[4] = v34;
    v41 = v12;
    dispatch_async(v32, block);
  }

LABEL_38:
}

void __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = *(v4 + 168);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v3;
      _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_ERROR, "Error processing resource: %{public}@", buf, 0xCu);
      v4 = *(a1 + 32);
    }

    v6 = _Block_copy(*(v4 + 32));
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;

    [*(a1 + 32) cancel];
    if (v6)
    {
      v9 = *(*(a1 + 32) + 144);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49__GEOResourceLoader__loadNextResourceFromNetwork__block_invoke_58;
      block[3] = &unk_1E7070F30;
      v10 = v6;
      v11 = *(a1 + 32);
      v32 = v10;
      block[4] = v11;
      v31 = v3;
      dispatch_async(v9, block);
    }
  }

  else
  {
    v12 = *(v4 + 112);
    v13 = [*(a1 + 40) resource];
    [v12 addObject:v13];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = [*(a1 + 40) equivalentResources];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v33 = 0;
          v22 = [v20 _establishHardLinkIfPossibleForResource:v19 toResource:v21 error:&v33];
          v23 = v33;
          v24 = *(a1 + 32);
          if (v22)
          {
            v25 = *(v24 + 112);
            v26 = [v19 resource];
            [v25 addObject:v26];
          }

          else
          {
            v27 = *(v24 + 168);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = v27;
              v29 = [v19 name];
              *buf = 138543618;
              v39 = v29;
              v40 = 2114;
              v41 = v23;
              _os_log_impl(&dword_18660C000, v28, OS_LOG_TYPE_ERROR, "Failed to establish hard link for resource '%{public}@': %{public}@. Loading normally.", buf, 0x16u);

              v24 = *(a1 + 32);
            }

            [*(v24 + 24) addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v16);
    }

    [*(a1 + 32) _loadNextResourceFromNetwork];
    v3 = 0;
  }
}

@end