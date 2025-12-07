@interface PRUISPosterSnapshotSQLiteCache
- (BOOL)cacheSnapshotBundle:(id)bundle forRequest:(id)request error:(id *)error;
- (BOOL)checkCacheIsReachable:(id *)reachable;
- (PRUISPosterSnapshotSQLiteCache)initWithURL:(id)l;
- (PUIPosterSnapshotSQLiteCache)underlyingCache;
- (id)_accessCacheWithError:(id *)error;
- (id)_buildOptionsForRequest:(id)request;
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion;
- (void)cleanup;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate;
- (void)invalidate;
@end

@implementation PRUISPosterSnapshotSQLiteCache

- (PRUISPosterSnapshotSQLiteCache)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PRUISPosterSnapshotSQLiteCache;
  v6 = [(PRUISPosterSnapshotSQLiteCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheURL, l);
  }

  return v7;
}

- (id)_accessCacheWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  underlyingCache = selfCopy->_underlyingCache;
  if (!underlyingCache)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C5608]) initWithURL:selfCopy->_cacheURL fileManager:0 options:0 error:error];
    v7 = selfCopy->_underlyingCache;
    selfCopy->_underlyingCache = v6;

    underlyingCache = selfCopy->_underlyingCache;
  }

  v8 = underlyingCache;
  objc_sync_exit(selfCopy);

  return v8;
}

- (PUIPosterSnapshotSQLiteCache)underlyingCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  underlyingCache = selfCopy->_underlyingCache;
  if (underlyingCache)
  {
    v4 = underlyingCache;
  }

  else
  {
    v4 = [(PRUISPosterSnapshotSQLiteCache *)selfCopy _accessCacheWithError:0];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)checkCacheIsReachable:(id *)reachable
{
  v4 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 checkCacheIsReachableWithError:reachable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:requestCopy error:error];
  if (v7)
  {
    v8 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:error];
    if (v8)
    {
      v9 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v7];
      snapshotDescriptor = [requestCopy snapshotDescriptor];
      predicateOptions = [snapshotDescriptor predicateOptions];

      v12 = [v9 predicateApplyingOptions:predicateOptions];
      v13 = [v8 latestSnapshotBundleMatchingPredicate:v12 outError:error];
      v14 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)cacheSnapshotBundle:(id)bundle forRequest:(id)request error:(id *)error
{
  bundleCopy = bundle;
  requestCopy = request;
  v24 = 0;
  v10 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v23 = 0;
    v13 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:requestCopy error:&v23];
    v14 = v23;
    v15 = v14;
    if (v13)
    {
      underlyingSnapshotBundle = [bundleCopy underlyingSnapshotBundle];
      v17 = [(PRUISPosterSnapshotSQLiteCache *)self _buildOptionsForRequest:v13];
      v18 = [v10 cacheSnapshotBundle:underlyingSnapshotBundle options:v17 outError:error];
      v19 = v18 != 0;
    }

    else if (error)
    {
      v21 = v14;
      v19 = 0;
      *error = v15;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (error)
  {
    v20 = v11;
    v19 = 0;
    *error = v12;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion
{
  bundleCopy = bundle;
  requestCopy = request;
  completionCopy = completion;
  v21 = 0;
  v11 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:&v21];
  v12 = v21;
  if (v11)
  {
    v20 = 0;
    v13 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:requestCopy error:&v20];
    v14 = v20;
    if (v13)
    {
      underlyingSnapshotBundle = [bundleCopy underlyingSnapshotBundle];
      v16 = [(PRUISPosterSnapshotSQLiteCache *)self _buildOptionsForRequest:v13];
      v17 = [v11 cacheSnapshotBundle:underlyingSnapshotBundle options:v16];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __76__PRUISPosterSnapshotSQLiteCache_cacheSnapshotBundle_forRequest_completion___block_invoke;
      v18[3] = &unk_1E83A7238;
      v19 = completionCopy;
      [v17 addCompletionBlock:v18];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

void __76__PRUISPosterSnapshotSQLiteCache_cacheSnapshotBundle_forRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }
}

- (id)_buildOptionsForRequest:(id)request
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  path = [requestCopy path];
  isServerPosterPath = [path isServerPosterPath];

  if (isServerPosterPath)
  {
    path2 = [requestCopy path];
    serverIdentity = [path2 serverIdentity];

    posterUUID = [serverIdentity posterUUID];
    if (posterUUID)
    {
      version = [serverIdentity version];

      if (version)
      {
        v10 = MEMORY[0x1E69C55C8];
        version2 = [serverIdentity version];
        posterUUID2 = [serverIdentity posterUUID];
        v13 = [v10 predicateMatchingBundleWithPosterVersionLessThan:version2 posterUUID:posterUUID2];

        v14 = MEMORY[0x1E69C55D0];
        v17[0] = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        posterUUID = [v14 removeBundlesMatchingPredicates:v15];
      }

      else
      {
        posterUUID = 0;
      }
    }
  }

  else
  {
    posterUUID = 0;
  }

  return posterUUID;
}

- (void)cleanup
{
  v3 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:0];
  v2 = [v3 cleanupWithError:0];
}

- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate
{
  v62 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v5 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:0];
  if (v5)
  {
    truePredicate = [MEMORY[0x1E69C55C8] truePredicate];
    v51 = 0;
    v7 = [v5 snapshotBundlesMatchingPredicate:truePredicate outError:&v51];
    v8 = v51;

    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      selfCopy = self;
      v39 = v8;
      v41 = v5;
      v11 = objc_opt_new();
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v40 = v7;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v48;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v48 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v47 + 1) + 8 * i);
            bundleURL = [v17 bundleURL];
            v19 = [predicateCopy evaluateWithObject:bundleURL];

            if (v19)
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v47 objects:v61 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        v20 = MEMORY[0x1E69C55C8];
        firstObject = [v11 firstObject];
        v22 = [v20 predicateMatchingContext:firstObject];
        sQLitePredicate = [v22 SQLitePredicate];

        [v11 removeObjectAtIndex:0];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v11 = v11;
        v24 = [v11 countByEnumeratingWithState:&v43 objects:v60 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v44;
          do
          {
            v27 = 0;
            v28 = sQLitePredicate;
            do
            {
              if (*v44 != v26)
              {
                objc_enumerationMutation(v11);
              }

              v29 = [MEMORY[0x1E69C55C8] predicateMatchingContext:*(*(&v43 + 1) + 8 * v27)];
              sQLitePredicate2 = [v29 SQLitePredicate];
              sQLitePredicate = [v28 orPredicate:sQLitePredicate2];

              ++v27;
              v28 = sQLitePredicate;
            }

            while (v25 != v27);
            v25 = [v11 countByEnumeratingWithState:&v43 objects:v60 count:16];
          }

          while (v25);
        }

        v42 = 0;
        v5 = v41;
        v31 = [v41 discardSnapshotBundlesMatchingSQLPredicate:sQLitePredicate outError:&v42];
        v32 = v42;
        v33 = v32;
        if (v32)
        {
          v34 = PRUISLogSnapshotting(v32);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            pf_description = [v33 pf_description];
            *buf = 138544130;
            v53 = v36;
            v54 = 2050;
            v55 = selfCopy;
            v56 = 2114;
            v57 = sQLitePredicate;
            v58 = 2114;
            v59 = pf_description;
            _os_log_error_impl(&dword_1CAE63000, v34, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> error discarding snapshot bundles using predicate: %{public}@, error: %{public}@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v5 = v41;
      }

      v8 = v39;
      v7 = v40;
    }

    else
    {
      v11 = PRUISLogSnapshotting(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterSnapshotSQLiteCache *)self discardSnapshotsForPostersMatchingPredicate:v8, v11];
      }
    }
  }
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(PUIPosterSnapshotSQLiteCache *)obj->_underlyingCache invalidate];
  underlyingCache = obj->_underlyingCache;
  obj->_underlyingCache = 0;

  objc_sync_exit(obj);
}

- (void)discardSnapshotsForPostersMatchingPredicate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 pf_description];
  v9 = 138543874;
  v10 = v7;
  v11 = 2050;
  v12 = a1;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_1CAE63000, a3, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p>error fetching snapshotBundles matching predicate, cannot discard: %{public}@", &v9, 0x20u);
}

@end