@interface PUIPosterSnapshotFilesystemCache
+ (id)_determineProviderFromSnapshotURL:(id)l;
+ (id)_snapshotContainerURLForPosterUUID:(id)d provider:(id)provider relativeTo:(id)to;
+ (id)_snapshotURLForPosterPath:(id)path relativeTo:(id)to;
+ (id)_snapshotURLForPosterPath:(id)path snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation hardwareIdentifier:(id)hardwareIdentifier userInterfaceStyle:(int64_t)style relativeTo:(id)to;
+ (id)snapshotURLForSnapshotCacheEpoch:(int)epoch snapshotVersion:(int)version snapshotBundleVersion:(int)bundleVersion posterUUID:(id)d posterVersion:(id)posterVersion provider:(id)provider snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)self0 hardwareIdentifier:(id)self1 userInterfaceStyle:(int64_t)self2 relativeTo:(id)self3;
- (BOOL)checkCacheIsReachableWithError:(id *)error;
- (PUIPosterSnapshotFilesystemCache)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options error:(id *)error;
- (id)_snapshotBundleURLs;
- (id)cacheSnapshotBundle:(id)bundle options:(id)options;
- (id)checkCacheIsReachable;
- (id)cleanup;
- (id)discardSnapshotBundlesMatchingPredicate:(id)predicate;
- (id)latestSnapshotBundleForPoster:(id)poster snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style hardwareIdentifier:(id)hardwareIdentifier error:(id *)error;
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (id)latestSnapshotBundleMatchingPredicate:(id)predicate;
- (id)reachableCacheFuture;
- (id)snapshotBundlesMatchingPredicate:(id)predicate;
- (id)snapshotDestinationFutureForPath:(id)path clientAuditToken:(id)token;
- (void)_cacheLock_cleanupPostersWithOptions:(id)options;
- (void)_prepareSnapshotCache;
- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion;
- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request options:(id)options completion:(id)completion;
- (void)dealloc;
- (void)discardSnapshotsForPosters:(id)posters;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotFilesystemCache

- (PUIPosterSnapshotFilesystemCache)initWithURL:(id)l fileManager:(id)manager options:(int64_t)options error:(id *)error
{
  lCopy = l;
  managerCopy = manager;
  if (([lCopy checkResourceIsReachableAndReturnError:error] & 1) == 0)
  {
    [PUIPosterSnapshotFilesystemCache initWithURL:a2 fileManager:self options:? error:?];
  }

  v41.receiver = self;
  v41.super_class = PUIPosterSnapshotFilesystemCache;
  v13 = [(PUIPosterSnapshotFilesystemCache *)&v41 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  v13->_options = options;
  v15 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
  invalidationFlag = v14->_invalidationFlag;
  v14->_invalidationFlag = v15;

  v14->_cacheLock._os_unfair_lock_opaque = 0;
  v17 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  cacheLock_URLResourceIdentifierToSnapshotBundleCache = v14->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
  v14->_cacheLock_URLResourceIdentifierToSnapshotBundleCache = v17;

  uRLByStandardizingPath = [lCopy URLByStandardizingPath];
  cacheURL = v14->_cacheURL;
  v14->_cacheURL = uRLByStandardizingPath;

  if ([(NSURL *)v14->_cacheURL checkResourceIsReachableAndReturnError:error])
  {
    v21 = [(NSURL *)v14->_cacheURL URLByAppendingPathComponent:@"PosterSnapshotCache.bundle" conformingToType:*MEMORY[0x1E6982D00]];
    rootCacheURL = v14->_rootCacheURL;
    v14->_rootCacheURL = v21;

    v23 = [(NSURL *)v14->_rootCacheURL URLByAppendingPathComponent:@"SnapshotBundles"];
    snapshotBundleContainerURL = v14->_snapshotBundleContainerURL;
    v14->_snapshotBundleContainerURL = v23;

    if (managerCopy)
    {
      v25 = managerCopy;
    }

    else
    {
      v25 = objc_opt_new();
    }

    fileManager = v14->_fileManager;
    v14->_fileManager = v25;

    path = [lCopy path];
    v29 = [path stringByAppendingFormat:@"-%@", @"PostersFileSystemCacheCompletionQueue"];
    serial = [MEMORY[0x1E698E698] serial];
    v31 = [serial serviceClass:25];
    v32 = BSDispatchQueueCreate();
    completionQueue = v14->_completionQueue;
    v14->_completionQueue = v32;

    v34 = MEMORY[0x1E69C51F0];
    v35 = MEMORY[0x1E696AEC0];
    path2 = [(NSURL *)v14->_cacheURL path];
    v37 = [v35 stringWithFormat:@"PostersFileSystemCache-Workloop-%@", path2];
    v38 = [v34 serialQueueTargetingSharedWorkloop:v37];
    fileSystemQueue = v14->_fileSystemQueue;
    v14->_fileSystemQueue = v38;

    [(PUIPosterSnapshotFilesystemCache *)v14 _prepareSnapshotCache];
LABEL_9:
    v26 = v14;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (void)dealloc
{
  [(PUIPosterSnapshotFilesystemCache *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotFilesystemCache;
  [(PUIPosterSnapshotFilesystemCache *)&v3 dealloc];
}

- (id)cacheSnapshotBundle:(id)bundle options:(id)options
{
  v6 = MEMORY[0x1E69C5260];
  optionsCopy = options;
  bundleCopy = bundle;
  v9 = objc_alloc_init(v6);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_options___block_invoke;
  v13[3] = &unk_1E7856438;
  v14 = v9;
  v10 = v9;
  [(PUIPosterSnapshotFilesystemCache *)self cacheSnapshotBundle:bundleCopy forRequest:0 options:optionsCopy completion:v13];

  future = [v10 future];

  return future;
}

uint64_t __64__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2 error:0];
  }
}

- (id)checkCacheIsReachable
{
  v2 = self->_snapshotBundleContainerURL;
  v3 = MEMORY[0x1E69C5258];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PUIPosterSnapshotFilesystemCache_checkCacheIsReachable__block_invoke;
  v7[3] = &unk_1E7856118;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithBlock:v7];

  return v5;
}

uint64_t __57__PUIPosterSnapshotFilesystemCache_checkCacheIsReachable__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) checkResourceIsReachableAndReturnError:a2];

  return [v2 numberWithBool:v3];
}

- (id)discardSnapshotBundlesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = self->_snapshotBundleContainerURL;
  v6 = self->_fileManager;
  _snapshotBundleURLs = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PUIPosterSnapshotFilesystemCache_discardSnapshotBundlesMatchingPredicate___block_invoke;
  v13[3] = &unk_1E7856460;
  v13[4] = self;
  v14 = v5;
  v15 = predicateCopy;
  v16 = v6;
  v8 = v6;
  v9 = predicateCopy;
  v10 = v5;
  v11 = [_snapshotBundleURLs flatMap:v13];

  return v11;
}

id __76__PUIPosterSnapshotFilesystemCache_discardSnapshotBundlesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [PUIPosterSnapshotBundle alloc];
        v12 = [(PUIPosterSnapshotBundle *)v11 initWithURL:v10, v18];
        if (__doesBundleMatchPredicate(v12, *(a1 + 40), *(a1 + 48)))
        {
          v13 = [(PUIPosterSnapshotBundle *)v12 snapshotCollectionContext];
          [v4 bs_safeAddObject:v13];

          v14 = *(*(a1 + 32) + 32);
          v15 = [v10 pf_fileResourceIdentifierWithError:0];
          [v14 removeObjectForKey:v15];

          [*(a1 + 56) removeItemAtURL:v10 error:0];
          v12 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v16 = [MEMORY[0x1E69C5258] futureWithResult:v4];

  return v16;
}

- (id)latestSnapshotBundleMatchingPredicate:(id)predicate
{
  v3 = [(PUIPosterSnapshotFilesystemCache *)self snapshotBundlesMatchingPredicate:predicate];
  v4 = [v3 flatMap:&__block_literal_global_54];

  return v4;
}

id __74__PUIPosterSnapshotFilesystemCache_latestSnapshotBundleMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 mutableCopy];
    [v3 sortUsingComparator:&__block_literal_global_57];
    v4 = MEMORY[0x1E69C5258];
    v5 = [v3 firstObject];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69C5258] cancelledFuture];
  }

  return v6;
}

uint64_t __74__PUIPosterSnapshotFilesystemCache_latestSnapshotBundleMatchingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateCreated];
  v6 = [v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)snapshotBundlesMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = self->_snapshotBundleContainerURL;
  _snapshotBundleURLs = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PUIPosterSnapshotFilesystemCache_snapshotBundlesMatchingPredicate___block_invoke;
  v11[3] = &unk_1E78564A8;
  v12 = v5;
  v13 = predicateCopy;
  v7 = predicateCopy;
  v8 = v5;
  v9 = [_snapshotBundleURLs flatMap:v11];

  return v9;
}

id __69__PUIPosterSnapshotFilesystemCache_snapshotBundlesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PUIPosterSnapshotBundle alloc];
        v12 = [(PUIPosterSnapshotBundle *)v11 initWithURL:v10, v15];
        if (__doesBundleMatchPredicate(v12, *(a1 + 32), *(a1 + 40)))
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x1E69C5258] futureWithResult:v4];

  return v13;
}

- (id)cleanup
{
  v3 = +[PUIPosterSnapshotBundlePredicate predicateMatchingCurrentSnapshotEpochAndVersion];
  v4 = [(PUIPosterSnapshotFilesystemCache *)self discardSnapshotBundlesMatchingPredicate:v3];

  return v4;
}

- (id)_snapshotBundleURLs
{
  v3 = self->_fileManager;
  v4 = self->_snapshotBundleContainerURL;
  v5 = MEMORY[0x1E69C5258];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PUIPosterSnapshotFilesystemCache__snapshotBundleURLs__block_invoke;
  v10[3] = &unk_1E7854878;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 futureWithBlock:v10];

  return v8;
}

id __55__PUIPosterSnapshotFilesystemCache__snapshotBundleURLs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) enumeratorAtURL:*(a1 + 40) includingPropertiesForKeys:0 options:2 errorHandler:0];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 pathExtension];
        v10 = [v9 localizedCompare:@"pks"];

        if (!v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSCache *)self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache removeAllObjects];
    cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
    self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache = 0;

    os_unfair_lock_unlock(&self->_cacheLock);
  }
}

- (id)snapshotDestinationFutureForPath:(id)path clientAuditToken:(id)token
{
  tokenCopy = token;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, 0}];
  }

  else
  {
    v17 = 0;
    v10 = [PUIPosterSnapshotDestination destinationForCache:self clientAuditToken:tokenCopy error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = v11;
      if (!v11)
      {
        v14 = PFFunctionNameForAddress();
        v16 = 0;
        v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v9 = [MEMORY[0x1E69C5258] futureWithError:{v13, v16}];
    }

    else
    {
      v9 = [MEMORY[0x1E69C5258] futureWithResult:v10];
    }
  }

  return v9;
}

+ (id)_snapshotURLForPosterPath:(id)path relativeTo:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toCopy = to;
  serverIdentity = [pathCopy serverIdentity];
  provider = [serverIdentity provider];

  serverIdentity2 = [pathCopy serverIdentity];
  posterUUID = [serverIdentity2 posterUUID];
  uUIDString = [posterUUID UUIDString];

  v12 = MEMORY[0x1E696AEC0];
  serverIdentity3 = [pathCopy serverIdentity];
  v14 = [v12 stringWithFormat:@"%llu", objc_msgSend(serverIdentity3, "version")];

  v16 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier(v15);
  v26 = toCopy;
  v17 = [toCopy copy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31[0] = v16;
  v31[1] = provider;
  v25 = provider;
  v31[2] = uUIDString;
  v31[3] = v14;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      v22 = 0;
      v23 = v17;
      do
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v17 = [v23 URLByAppendingPathComponent:*(*(&v27 + 1) + 8 * v22) isDirectory:1];

        ++v22;
        v23 = v17;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (id)_snapshotURLForPosterPath:(id)path snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation hardwareIdentifier:(id)hardwareIdentifier userInterfaceStyle:(int64_t)style relativeTo:(id)to
{
  toCopy = to;
  hardwareIdentifierCopy = hardwareIdentifier;
  identifierCopy = identifier;
  pathCopy = path;
  serverIdentity = [pathCopy serverIdentity];
  posterUUID = [serverIdentity posterUUID];
  v18 = MEMORY[0x1E696AD98];
  serverIdentity2 = [pathCopy serverIdentity];
  v20 = [v18 numberWithUnsignedLongLong:{objc_msgSend(serverIdentity2, "version")}];
  serverIdentity3 = [pathCopy serverIdentity];

  provider = [serverIdentity3 provider];
  v23 = [self _snapshotURLForPosterUUID:posterUUID posterVersion:v20 provider:provider snapshotCacheIdentifier:identifierCopy interfaceOrientation:orientation hardwareIdentifier:hardwareIdentifierCopy userInterfaceStyle:style relativeTo:toCopy];

  return v23;
}

+ (id)snapshotURLForSnapshotCacheEpoch:(int)epoch snapshotVersion:(int)version snapshotBundleVersion:(int)bundleVersion posterUUID:(id)d posterVersion:(id)posterVersion provider:(id)provider snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)self0 hardwareIdentifier:(id)self1 userInterfaceStyle:(int64_t)self2 relativeTo:(id)self3
{
  v15 = *&epoch;
  v49 = *MEMORY[0x1E69E9840];
  posterVersionCopy = posterVersion;
  providerCopy = provider;
  identifierCopy = identifier;
  hardwareIdentifierCopy = hardwareIdentifier;
  toCopy = to;
  uUIDString = [d UUIDString];
  v42 = posterVersionCopy;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(posterVersionCopy, "unsignedIntegerValue")];
  v22 = PUIPosterSnapshotBundleEpochAndVersionIdentifier(v15, version, bundleVersion);
  v23 = BSInterfaceOrientationDescription();
  v24 = @"Unknown";
  if (style == 1)
  {
    v24 = @"LightMode";
  }

  if (style == 2)
  {
    v24 = @"DarkMode";
  }

  v25 = v24;
  v38 = toCopy;
  v26 = [toCopy copy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47[0] = v22;
  v47[1] = providerCopy;
  v41 = providerCopy;
  v36 = v21;
  v37 = uUIDString;
  v47[2] = uUIDString;
  v47[3] = v21;
  v47[4] = v23;
  v47[5] = identifierCopy;
  v47[6] = v25;
  v47[7] = hardwareIdentifierCopy;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      v31 = 0;
      v32 = v26;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v26 = [v32 URLByAppendingPathComponent:*(*(&v43 + 1) + 8 * v31) isDirectory:1];

        ++v31;
        v32 = v26;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v29);
  }

  v33 = [v26 URLByAppendingPathComponent:@"Snapshot.pks" isDirectory:0];

  return v33;
}

+ (id)_snapshotContainerURLForPosterUUID:(id)d provider:(id)provider relativeTo:(id)to
{
  toCopy = to;
  providerCopy = provider;
  dCopy = d;
  v10 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier(dCopy);
  v11 = [toCopy URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [v11 URLByAppendingPathComponent:providerCopy isDirectory:1];

  uUIDString = [dCopy UUIDString];

  v14 = [v12 URLByAppendingPathComponent:uUIDString isDirectory:1];

  return v14;
}

+ (id)_determineProviderFromSnapshotURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  path = [l path];
  v4 = [path componentsSeparatedByString:@"/"];
  v5 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 isEqualToString:{v5, v14}];
        if ((v12 & 1) == 0 && ((v8 ^ 1) & 1) == 0)
        {
          v7 = v11;
          goto LABEL_12;
        }

        v8 |= v12;
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (id)latestSnapshotBundleForPoster:(id)poster snapshotCacheIdentifier:(id)identifier interfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style hardwareIdentifier:(id)hardwareIdentifier error:(id *)error
{
  *&v64[5] = *MEMORY[0x1E69E9840];
  posterCopy = poster;
  identifierCopy = identifier;
  hardwareIdentifierCopy = hardwareIdentifier;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (!getFlag)
  {
    v20 = PUILogSnapshotCache(getFlag);
    v21 = os_signpost_id_generate(v20);

    v23 = PUILogSnapshotCache(v22);
    v24 = v23;
    spid = v21;
    v25 = v21 - 1;
    if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval", &unk_1A8D256D3, buf, 2u);
    }

    if (([posterCopy isServerPosterPath] & 1) == 0)
    {
      [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:a2 snapshotCacheIdentifier:self interfaceOrientation:? userInterfaceStyle:? hardwareIdentifier:? error:?];
    }

    if (![identifierCopy length])
    {
      [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:a2 snapshotCacheIdentifier:self interfaceOrientation:? userInterfaceStyle:? hardwareIdentifier:? error:?];
    }

    v26 = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
    v27 = [objc_opt_class() _snapshotURLForPosterPath:posterCopy snapshotCacheIdentifier:identifierCopy interfaceOrientation:orientation hardwareIdentifier:hardwareIdentifierCopy userInterfaceStyle:style relativeTo:self->_snapshotBundleContainerURL];
    v28 = PUILogSnapshotCache(v27);
    v29 = v28;
    if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v29, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-unlocked", &unk_1A8D256D3, buf, 2u);
    }

    v30 = [v27 pf_fileResourceIdentifierWithError:0];
    v31 = [(NSCache *)v26 objectForKey:v30];

    v33 = PUILogSnapshotCache(v32);
    v34 = v33;
    if (v31)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v64 = v27;
        _os_log_impl(&dword_1A8C85000, v34, OS_LOG_TYPE_DEFAULT, "pre _cacheLock; snapshotBundle found @ %@", buf, 0xCu);
      }

      v36 = PUILogSnapshotCache(v35);
      v37 = v36;
      if (v25 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
      {
        goto LABEL_32;
      }

      *buf = 67109378;
      v64[0] = 1;
      LOWORD(v64[1]) = 2114;
      *(&v64[1] + 2) = v27;
      v38 = "SnapshotCacheRetrieval-unlocked";
    }

    else
    {
      if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 138543362;
        *v64 = v27;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v34, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-unlocked", "Failed / %{public}@", buf, 0xCu);
      }

      v40 = PUILogSnapshotCache(v39);
      v41 = v40;
      if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v41, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-locked", &unk_1A8D256D3, buf, 2u);
      }

      os_unfair_lock_lock(&self->_cacheLock);
      v42 = [(NSCache *)v26 objectForKey:v27];
      if (!v42)
      {
        v48 = PUILogSnapshotCache(0);
        v49 = v48;
        if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v49, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-loadFromDisk-locked", &unk_1A8D256D3, buf, 2u);
        }

        v62 = 0;
        v50 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v27 error:&v62];
        v60 = v62;
        v51 = PUILogSnapshotCache(v60);
        v52 = v51;
        if (v50)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v64 = v27;
            _os_log_impl(&dword_1A8C85000, v52, OS_LOG_TYPE_DEFAULT, "loaded snapshotBundle %@", buf, 0xCu);
          }

          v53 = [(NSCache *)v26 setObject:v50 forKey:v27];
          v54 = v60;
        }

        else
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:v27 snapshotCacheIdentifier:v60 interfaceOrientation:v52 userInterfaceStyle:? hardwareIdentifier:? error:?];
          }

          v54 = v60;
          if (error)
          {
            v53 = v60;
            *error = v60;
          }
        }

        v55 = PUILogSnapshotCache(v53);
        v56 = v55;
        if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
        {
          *buf = 67109378;
          v64[0] = v50 != 0;
          LOWORD(v64[1]) = 2114;
          *(&v64[1] + 2) = v27;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v56, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-loadFromDisk-locked", "Success? %{BOOL}u  %{public}@", buf, 0x12u);
        }

        os_unfair_lock_unlock(&self->_cacheLock);
        v58 = PUILogSnapshotCache(v57);
        v59 = v58;
        if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
        {
          *buf = 67109378;
          v64[0] = v50 != 0;
          LOWORD(v64[1]) = 2114;
          *(&v64[1] + 2) = v27;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v59, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-locked", "Success? %{BOOL}u  %{public}@", buf, 0x12u);
        }

        v19 = v50;
        goto LABEL_33;
      }

      v31 = v42;
      os_unfair_lock_unlock(&self->_cacheLock);
      v44 = PUILogSnapshotCache(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v64 = v27;
        _os_log_impl(&dword_1A8C85000, v44, OS_LOG_TYPE_DEFAULT, "post _cacheLock; snapshotBundle found @ %@", buf, 0xCu);
      }

      v46 = PUILogSnapshotCache(v45);
      v37 = v46;
      if (v25 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v46))
      {
LABEL_32:

        v19 = v31;
LABEL_33:

        goto LABEL_34;
      }

      *buf = 67109378;
      v64[0] = 1;
      LOWORD(v64[1]) = 2114;
      *(&v64[1] + 2) = v27;
      v38 = "SnapshotCacheRetrieval-locked";
    }

    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v37, OS_SIGNPOST_INTERVAL_END, spid, v38, "Success? %{BOOL}u  %{public}@", buf, 0x12u);
    goto LABEL_32;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_34:

  return v19;
}

- (void)discardSnapshotsForPosters:(id)posters
{
  v19 = *MEMORY[0x1E69E9840];
  postersCopy = posters;
  v5 = self->_fileManager;
  os_unfair_lock_lock(&self->_cacheLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = postersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() _snapshotURLForPosterPath:*(*(&v14 + 1) + 8 * v10) relativeTo:{self->_snapshotBundleContainerURL, v14}];
        cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
        v13 = [v11 pf_fileResourceIdentifierWithError:0];
        [(NSCache *)cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v13];

        [(NSFileManager *)v5 removeItemAtURL:v11 error:0];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)checkCacheIsReachableWithError:(id *)error
{
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    }

    return 0;
  }

  else
  {
    fileManager = self->_fileManager;
    snapshotBundleContainerURL = self->_snapshotBundleContainerURL;
    v8 = PFPosterPathFileAttributes();
    v9 = [(NSFileManager *)fileManager createDirectoryAtURL:snapshotBundleContainerURL withIntermediateDirectories:1 attributes:v8 error:error];

    return v9;
  }
}

- (id)reachableCacheFuture
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69C5258];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUIPosterSnapshotFilesystemCache_reachableCacheFuture__block_invoke;
  v5[3] = &unk_1E78564D0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 futureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __56__PUIPosterSnapshotFilesystemCache_reachableCacheFuture__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained checkCacheIsReachableWithError:a2])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] pui_errorWithCode:10];
    *a2 = v5 = 0;
  }

  return v5;
}

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
      *error = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    snapshotDescriptor = [requestCopy snapshotDescriptor];
    output = [snapshotDescriptor output];

    snapshotDescriptor2 = [requestCopy snapshotDescriptor];
    sceneDescriptor = [snapshotDescriptor2 sceneDescriptor];

    path = [requestCopy path];
    snapshotDefinitionIdentifier = [output snapshotDefinitionIdentifier];
    deviceOrientation = [sceneDescriptor deviceOrientation];
    userInterfaceStyle = [sceneDescriptor userInterfaceStyle];
    displayConfiguration = [sceneDescriptor displayConfiguration];
    pui_displayConfigurationIdentifier = [displayConfiguration pui_displayConfigurationIdentifier];
    v7 = [(PUIPosterSnapshotFilesystemCache *)self latestSnapshotBundleForPoster:path snapshotCacheIdentifier:snapshotDefinitionIdentifier interfaceOrientation:deviceOrientation userInterfaceStyle:userInterfaceStyle hardwareIdentifier:pui_displayConfigurationIdentifier error:error];
  }

  return v7;
}

- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate
{
  v46 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if ((getFlag & 1) == 0)
  {
    v5 = PUILogSnapshotCache(getFlag);
    v6 = os_signpost_id_generate(v5);

    v8 = PUILogSnapshotCache(v7);
    v9 = v8;
    v30 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 138543362;
      v41 = predicateCopy;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SnapshotCacheCleanupMatchingPredicate", "Predicate %{public}@", buf, 0xCu);
    }

    spid = v6;

    v10 = objc_opt_new();
    os_unfair_lock_lock(&self->_cacheLock);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = [(NSFileManager *)self->_fileManager enumeratorAtURL:self->_snapshotBundleContainerURL includingPropertiesForKeys:0 options:4 errorHandler:0];
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          pathExtension = [v16 pathExtension];
          v18 = [pathExtension localizedCompare:@"pks"];

          if (!v18 && [predicateCopy evaluateWithObject:v16])
          {
            [v10 addObject:v16];
            cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
            v20 = [v16 pf_fileResourceIdentifierWithError:0];
            [(NSCache *)cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v20];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v13);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [(NSFileManager *)self->_fileManager removeItemAtURL:*(*(&v32 + 1) + 8 * j) error:0];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v23);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
    v27 = PUILogSnapshotCache(v26);
    v28 = v27;
    if (v30 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 138543618;
      v41 = predicateCopy;
      v42 = 2114;
      v43 = v21;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v28, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheCleanupMatchingPredicate", "Predicate %{public}@; cleanedup urls: %{public}@", buf, 0x16u);
    }
  }
}

- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  requestCopy = request;
  completionCopy = completion;
  path = [requestCopy path];
  isServerPosterPath = [path isServerPosterPath];

  if (isServerPosterPath)
  {
    path2 = [requestCopy path];
    serverIdentity = [path2 serverIdentity];

    version = [serverIdentity version];
    posterUUID = [serverIdentity posterUUID];
    v17 = [PUIPosterSnapshotBundlePredicate predicateMatchingBundleWithPosterVersionLessThan:version posterUUID:posterUUID];

    v20[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = [PUIPosterSnapshotCachingOptions removeBundlesMatchingPredicates:v18];
  }

  else
  {
    v19 = 0;
  }

  [(PUIPosterSnapshotFilesystemCache *)self cacheSnapshotBundle:bundleCopy forRequest:requestCopy options:v19 completion:completionCopy];
}

- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request options:(id)options completion:(id)completion
{
  bundleCopy = bundle;
  requestCopy = request;
  optionsCopy = options;
  completionCopy = completion;
  v14 = self->_completionQueue;
  if (bundleCopy)
  {
    if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
    {
      posterUUID = [bundleCopy posterUUID];
      snapshotDefinitionIdentifier = [bundleCopy snapshotDefinitionIdentifier];
      v17 = snapshotDefinitionIdentifier;
      v18 = @"UNKNOWN_SNAPSHOT_DEFINITION";
      if (snapshotDefinitionIdentifier)
      {
        v18 = snapshotDefinitionIdentifier;
      }

      v32 = v18;

      deviceOrientation = [bundleCopy deviceOrientation];
      hardwareIdentifier = [bundleCopy hardwareIdentifier];
      userInterfaceStyle = [bundleCopy userInterfaceStyle];
      v34 = self->_fileManager;
      v19 = PUILogSnapshotCache(v34);
      v33 = os_signpost_id_generate(v19);

      v20 = objc_opt_class();
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(bundleCopy, "posterVersion")}];
      [bundleCopy posterProvider];
      v22 = v14;
      v23 = optionsCopy;
      v25 = v24 = requestCopy;
      v26 = [v20 _snapshotURLForPosterUUID:posterUUID posterVersion:v21 provider:v25 snapshotCacheIdentifier:v32 interfaceOrientation:deviceOrientation hardwareIdentifier:hardwareIdentifier userInterfaceStyle:userInterfaceStyle relativeTo:self->_snapshotBundleContainerURL];

      requestCopy = v24;
      optionsCopy = v23;
      v14 = v22;

      fileSystemQueue = self->_fileSystemQueue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_3;
      v37[3] = &unk_1E7856570;
      v44 = completionCopy;
      v45 = v33;
      v38 = bundleCopy;
      v39 = v26;
      selfCopy = self;
      v41 = v34;
      v42 = v14;
      v43 = optionsCopy;
      v28 = v34;
      v29 = v26;
      dispatch_async(fileSystemQueue, v37);

      v15 = posterUUID;
      goto LABEL_10;
    }

    if (completionCopy)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2;
      block[3] = &unk_1E7854B48;
      v47 = completionCopy;
      dispatch_async(v14, block);
      v15 = v47;
LABEL_10:
    }
  }

  else if (completionCopy)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke;
    v48[3] = &unk_1E7854B48;
    v49 = completionCopy;
    dispatch_async(v14, v48);
    v15 = v49;
    goto LABEL_10;
  }
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v6[0] = @"Cannot cache nil snapshot bundle";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 pui_errorWithCode:7 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_3(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_4;
  v60[3] = &unk_1E78564F8;
  v3 = v2;
  v61 = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v64 = v4;
  v65 = v5;
  v62 = *(a1 + 32);
  v63 = *(a1 + 40);
  v6 = MEMORY[0x1AC5769F0](v60);
  os_unfair_lock_lock((*(a1 + 48) + 8));
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_99;
  v59[3] = &unk_1E7854320;
  v59[4] = *(a1 + 48);
  v7 = MEMORY[0x1AC5769F0](v59);
  v8 = PUILogSnapshotCache(v7);
  v9 = v8;
  v10 = *(a1 + 88);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [*(a1 + 32) bundleURL];
    v12 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "cacheSnapshotBundle", "snapshotBundle URL %{public}@ -> %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 40) checkResourceIsReachableAndReturnError:0])
  {
    [*(a1 + 56) removeItemAtURL:*(a1 + 40) error:0];
  }

  v13 = *(a1 + 56);
  v14 = [*(a1 + 40) URLByDeletingLastPathComponent];
  v15 = PFPosterPathFileAttributes();
  v58 = 0;
  v16 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:v15 error:&v58];
  v17 = v58;

  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = __Block_byref_object_copy__7;
    v68 = __Block_byref_object_dispose__7;
    v69 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__7;
    v56[4] = __Block_byref_object_dispose__7;
    v57 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_103;
    v46[3] = &unk_1E7856520;
    v49 = v56;
    v18 = *(a1 + 40);
    v50 = &v52;
    v39 = *(a1 + 48);
    v19 = v39.i64[1];
    v51 = buf;
    v20.i64[0] = *(a1 + 32);
    v20.i64[1] = v18;
    v47 = vextq_s8(v20, v39, 8uLL);
    v48 = vextq_s8(v39, v20, 8uLL);
    v21 = MEMORY[0x1AC5769F0](v46);
    v22 = [*(a1 + 32) bundleURL];
    v23 = [v22 checkResourceIsReachableAndReturnError:0];

    if (v23)
    {
      v24 = *(a1 + 56);
      v25 = [*(a1 + 32) bundleURL];
      v26 = *(a1 + 40);
      v27 = *&buf[8];
      obj = *(*&buf[8] + 40);
      LOBYTE(v24) = [v24 copyItemAtURL:v25 toURL:v26 error:&obj];
      objc_storeStrong((v27 + 40), obj);
      *(v53 + 24) = v24;

      if (*(v53 + 24) == 1)
      {
        v21[2](v21);
      }
    }

    else
    {
      v30 = [[PUIPosterSnapshotBundleBuilder alloc] initWithSnapshotBundle:*(a1 + 32)];
      v31 = [*(a1 + 32) ondiskFormat];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = +[PUIImageOnDiskFormat defaultFormat];
      }

      v34 = v33;

      v35 = *(a1 + 40);
      v36 = *&buf[8];
      v44 = 0;
      v37 = [(PUIPosterSnapshotBundleBuilder *)v30 buildWithOutputURL:v35 diskFormat:v34 error:&v44];
      objc_storeStrong((v36 + 40), v44);

      if (v37)
      {
        v21[2](v21);
      }
    }

    v38 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2_109;
    block[3] = &unk_1E7856548;
    v41 = v6;
    v42 = v56;
    v43 = buf;
    dispatch_async(v38, block);
    if (*(v53 + 24) == 1 && *(a1 + 72) && !*(*&buf[8] + 40))
    {
      [*(a1 + 48) _cacheLock_cleanupPostersWithOptions:?];
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(v56, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = PFFunctionNameForAddress();
    v29 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (v6)[2](v6, 0, v29);
  }

  v7[2](v7);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) setFlag:1])
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v7 = (*(v7 + 16))(v7, v5, v6);
    }

    v8 = PUILogSnapshotCache(v7);
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [*(a1 + 40) bundleURL];
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_END, v10, "cacheSnapshotBundle", "snapshotBundle URL %{public}@ -> %{public}@", &v13, 0x16u);
    }
  }
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_103(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [[PUIPosterSnapshotBundle alloc] initWithURL:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 64) + 8) + 40) isValidBundle])
  {
    v5 = *(*(a1 + 40) + 32);
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [*(a1 + 32) pf_fileResourceIdentifierWithError:0];
    [v5 setObject:v6 forKey:v7];

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 48) removeItemAtURL:*(a1 + 32) error:0];
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 56) description];
    v11 = [v9 stringWithFormat:@"Bundle failed to be cached: %@", v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v8 pui_errorWithCode:7 userInfo:v12];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (void)_prepareSnapshotCache
{
  v3 = self->_fileManager;
  objc_initWeak(&location, self);
  mEMORY[0x1E69C51F0] = [MEMORY[0x1E69C51F0] sharedWorkloop];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PUIPosterSnapshotFilesystemCache__prepareSnapshotCache__block_invoke;
  block[3] = &unk_1E7854C68;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(mEMORY[0x1E69C51F0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__PUIPosterSnapshotFilesystemCache__prepareSnapshotCache__block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = PUILogSnapshotCache(WeakRetained);
    v4 = os_signpost_id_generate(v3);

    v6 = PUILogSnapshotCache(v5);
    v7 = v6;
    v8 = v4 - 1;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }

    v58 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier(v9);
    os_unfair_lock_lock(v2 + 2);
    v10 = [*(v2 + 3) checkResourceIsReachableAndReturnError:0];
    v11 = *(a1 + 32);
    v12 = *(v2 + 3);
    if (v10)
    {
      v54 = v4 - 1;
      v55 = v4;
      [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:1 error:0];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v70 = 0u;
      v13 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v68;
        do
        {
          v16 = 0;
          do
          {
            if (*v68 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v67 + 1) + 8 * v16);
            v18 = [v17 lastPathComponent];
            v19 = [v18 containsString:v58];

            if ((v19 & 1) == 0)
            {
              v20 = [v17 pf_fileResourceIdentifierWithError:0];
              v21 = [*(a1 + 32) removeItemAtURL:v17 error:0];
              if (v21)
              {
                v22 = PUILogSnapshotCache(v21);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v72 = v17;
                  _os_log_impl(&dword_1A8C85000, v22, OS_LOG_TYPE_DEFAULT, "Pruning old epoch: %{public}@", buf, 0xCu);
                }

                [*(v2 + 4) removeObjectForKey:v20];
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v13 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
          v14 = v13;
        }

        while (v13);
      }

      v23 = PUILogSnapshotCache(v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8C85000, v23, OS_LOG_TYPE_INFO, "Scanning for pre-cachable snapshot bundles", buf, 2u);
      }

      v24 = objc_opt_new();
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v25 = [*(a1 + 32) enumeratorAtURL:*(v2 + 3) includingPropertiesForKeys:0 options:2 errorHandler:0];
      v26 = [v25 countByEnumeratingWithState:&v63 objects:v76 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v64;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v64 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v63 + 1) + 8 * i);
            v31 = [v30 pathExtension];
            v32 = [v31 localizedCompare:@"pks"];

            if (!v32)
            {
              v33 = PUILogSnapshotCache([v24 addObject:v30]);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v72 = v30;
                _os_log_impl(&dword_1A8C85000, v33, OS_LOG_TYPE_DEFAULT, "Found precachable url %{public}@", buf, 0xCu);
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v63 objects:v76 count:16];
        }

        while (v27);
      }

      v35 = PUILogSnapshotCache(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v24 count];
        *buf = 134217984;
        v72 = v36;
        _os_log_impl(&dword_1A8C85000, v35, OS_LOG_TYPE_INFO, "Found %lu pre-cachable snapshot bundles", buf, 0xCu);
      }

      os_unfair_lock_unlock(v2 + 2);
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v37 = v24;
      v38 = [v37 countByEnumeratingWithState:&v59 objects:v75 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v60;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v60 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v59 + 1) + 8 * j);
            os_unfair_lock_lock(v2 + 2);
            v43 = [v42 pf_fileResourceIdentifierWithError:0];
            v44 = [*(v2 + 4) objectForKey:v43];

            if (v44)
            {
              v46 = PUILogSnapshotCache(v45);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v72 = v42;
                _os_log_error_impl(&dword_1A8C85000, v46, OS_LOG_TYPE_ERROR, "Already cached %{public}@; moving on...", buf, 0xCu);
              }
            }

            else
            {
              v46 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v42 error:0];
              v47 = PUILogSnapshotCache(v46);
              v48 = v47;
              if (v46)
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v72 = v46;
                  v73 = 2114;
                  v74 = v42;
                  _os_log_impl(&dword_1A8C85000, v48, OS_LOG_TYPE_DEFAULT, "PRECACHING %{public}@ @ %{public}@", buf, 0x16u);
                }

                v49 = PUILogSnapshotCache([*(v2 + 4) setObject:v46 forKey:v43]);
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v72 = v46;
                  v73 = 2114;
                  v74 = v42;
                  _os_log_impl(&dword_1A8C85000, v49, OS_LOG_TYPE_DEFAULT, "PRECACHED %{public}@ @ %{public}@", buf, 0x16u);
                }
              }

              else
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v72 = v42;
                  _os_log_error_impl(&dword_1A8C85000, v48, OS_LOG_TYPE_ERROR, "Failed to precache %{public}@; removing", buf, 0xCu);
                }

                [*(a1 + 32) removeItemAtURL:v42 error:0];
              }
            }

            os_unfair_lock_unlock(v2 + 2);
          }

          v39 = [v37 countByEnumeratingWithState:&v59 objects:v75 count:16];
        }

        while (v39);
      }

      v8 = v54;
      v4 = v55;
    }

    else
    {
      v51 = PFPosterPathFileAttributes();
      [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:v51 error:0];

      os_unfair_lock_unlock(v2 + 2);
    }

    v52 = PUILogSnapshotCache(v50);
    v53 = v52;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v53, OS_SIGNPOST_INTERVAL_END, v4, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }
  }
}

- (void)_cacheLock_cleanupPostersWithOptions:(id)options
{
  v59 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  cleanupPredicates = [optionsCopy cleanupPredicates];
  v5 = [cleanupPredicates count];

  if (v5)
  {
    os_unfair_lock_assert_owner(&self->_cacheLock);
    v7 = PUILogSnapshotCache(v6);
    v8 = os_signpost_id_generate(v7);

    v10 = PUILogSnapshotCache(v9);
    v11 = v10;
    v12 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 138543362;
      v58 = optionsCopy;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "SnapshotCache-cleanupPostersWithOptions", "options: %{public}@", buf, 0xCu);
    }

    spid = v8;

    v13 = objc_opt_new();
    _snapshotBundleURLs = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
    v15 = [_snapshotBundleURLs result:0];

    if ([v15 count])
    {
      v37 = v15;
      v38 = v8 - 1;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v15;
      v16 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v51;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v51 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v50 + 1) + 8 * i);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            cleanupPredicates2 = [optionsCopy cleanupPredicates];
            v22 = [cleanupPredicates2 countByEnumeratingWithState:&v46 objects:v55 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v47;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v47 != v24)
                  {
                    objc_enumerationMutation(cleanupPredicates2);
                  }

                  if (__doesURLMatchPredicate(v20, self->_snapshotBundleContainerURL, *(*(&v46 + 1) + 8 * j)))
                  {
                    [v13 addObject:v20];
                  }
                }

                v23 = [cleanupPredicates2 countByEnumeratingWithState:&v46 objects:v55 count:16];
              }

              while (v23);
            }
          }

          v17 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
        }

        while (v17);
      }

      v15 = v37;
      v12 = v38;
    }

    v26 = self->_fileManager;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v27 = v13;
    v28 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v43;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v43 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v42 + 1) + 8 * k);
          v33 = [v32 pf_fileResourceIdentifierWithError:0];
          if ([(NSFileManager *)v26 removeItemAtURL:v32 error:0])
          {
            [(NSCache *)self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v33];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v29);
    }

    v35 = PUILogSnapshotCache(v34);
    v36 = v35;
    if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
    {
      *buf = 138543362;
      v58 = v27;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v36, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCache-cleanupPostersBefore", "cleanedupPathURLs %{public}@", buf, 0xCu);
    }
  }
}

- (void)initWithURL:(const char *)a1 fileManager:(uint64_t)a2 options:error:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[cacheURL checkResourceIsReachableAndReturnError:outError]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)latestSnapshotBundleForPoster:(const char *)a1 snapshotCacheIdentifier:(uint64_t)a2 interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[path isServerPosterPath]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)latestSnapshotBundleForPoster:(os_log_t)log snapshotCacheIdentifier:interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8C85000, log, OS_LOG_TYPE_ERROR, "failed to load snapshotBundle %@: %{public}@", &v3, 0x16u);
}

- (void)latestSnapshotBundleForPoster:(const char *)a1 snapshotCacheIdentifier:(uint64_t)a2 interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.3(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[snapshotCacheIdentifier length] > 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end