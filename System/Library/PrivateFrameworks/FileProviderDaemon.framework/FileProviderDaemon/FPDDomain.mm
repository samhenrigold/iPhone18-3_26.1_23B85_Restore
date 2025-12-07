@interface FPDDomain
- (BOOL)_isProviderBlockingConsumer:(id)consumer;
- (BOOL)_shouldDisconnectDueToLowDiskSpace;
- (BOOL)backgroundActivityIsPaused;
- (BOOL)createRootByImportingDirectoryAtURL:(id)l knownFolders:(id)folders error:(id *)error;
- (BOOL)forceDisableIndexing;
- (BOOL)forceRecursiveRemoveAt:(id)at error:(id *)error;
- (BOOL)isDefaultDomain;
- (BOOL)isHiddenByUser;
- (BOOL)isHiddenDefaultDomain;
- (BOOL)isPendingInitialization;
- (BOOL)isProviderForRealPathURL:(id)l;
- (BOOL)mergeSyncRootsWithPathsManager:(id)manager error:(id *)error;
- (BOOL)removeEbihilSymlinkFromDefaultLocation;
- (BOOL)shouldDisconnectWithStartupError;
- (BOOL)supportsPickingFolders;
- (BOOL)supportsRemoteVersions;
- (BOOL)supportsSearch;
- (BOOL)supportsStringSearchRequest;
- (BOOL)supportsSyncingTrash;
- (BOOL)userEnabled;
- (FPDDomain)initWithIdentifier:(id)identifier nsDomain:(id)domain extensionStorageURLs:(id)ls purposeIdentifier:(id)purposeIdentifier fpfsClass:(Class)class provider:(id)provider volume:(id)volume;
- (FPDDomainBackend)defaultBackend;
- (FPDDomainBackend)extensionBackend;
- (FPDProvider)provider;
- (FPDVolume)volume;
- (NSArray)checkableURLs;
- (NSArray)coordinationRootURLs;
- (NSArray)rootURLs;
- (NSError)errorReflectingDisconnectionState;
- (NSFileProviderDomain)nsDomain;
- (NSFileProviderDomain)nsDomainOrNilForDefault;
- (NSString)description;
- (NSString)fp_prettyDescription;
- (NSURL)supportURL;
- (id)_physicalURLForURL:(id)l;
- (id)_removeProgressForProvidingItemAtURL:(id)l toReaderWithID:(id)d;
- (id)_siblingDelegateForURL:(id)l;
- (id)accumulatedSizeOfItems;
- (id)cleanupDomainWithMode:(unint64_t)mode;
- (id)cleanupDomainWithMode:(unint64_t)mode error:(id *)error;
- (id)getDefaultRootExposureSymlinkURL;
- (id)getProvidedItemRecursiveGenerationCountForItemAtURL:(id)l;
- (id)materializedURLForItemID:(id)d;
- (id)moveAwaySyncRootAndReturnError:(id *)error;
- (id)providerSupportURL;
- (id)providerVersion;
- (id)rootURLsWithTransientState:(BOOL *)state;
- (int64_t)accumulatedSizeOfPinnedItems;
- (int64_t)errorGenerationCount;
- (int64_t)nonEvictableSpace;
- (unint64_t)disconnectionState;
- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d;
- (void)_checkDomainConnectionPermittedWithCompletionHandler:(id)handler;
- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_prepareFileCoordinationProviders;
- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler;
- (void)_provideItemAtURL:(id)l withReaderID:(id)d withProcessID:(int)iD withAuditToken:(id *)token kernelInfo:(id)info readingOptions:(unint64_t)options completionHandler:(id)handler;
- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info;
- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d;
- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL;
- (void)_registerFileCoordinatorAndSpaceForceWithCompletion:(id)completion;
- (void)_registerInSpaceForce;
- (void)_startObservingRootAndResumeIndexerWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)_startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)_unregisterFromFileCoordinatorAndSpaceForce;
- (void)_unregisterURLFromSpaceForce:(id)force;
- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l;
- (void)callExtensionForItemDidChange:(id)change request:(id)request completionHandler:(id)handler;
- (void)cancelPendingCoordinations;
- (void)createRootAndObserveIfNeededWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)createRootURLWithCompletion:(id)completion;
- (void)daemonSideItemChange:(id)change changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler;
- (void)didChangeItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)didRefreshRootURLsWithCompletionHandler:(id)handler;
- (void)diskImportFinished;
- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler;
- (void)downloadVersionThumbnail:(id)thumbnail version:(id)version completionHandler:(id)handler;
- (void)downloadVersionWithItemID:(id)d etag:(id)etag request:(id)request completionHandler:(id)handler;
- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler;
- (void)dumpStateTo:(id)to providerDomain:(id)domain options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)extensionIndexer:(id)indexer didChangeNeedsAuthentification:(BOOL)authentification;
- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler;
- (void)finishSetup;
- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)forceIngestionAtURL:(id)l;
- (void)forceIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler;
- (void)invalidateWithReason:(id)reason;
- (void)refreshConnectionState;
- (void)removeEbihilSymlink;
- (void)setDefaultBackend:(id)backend;
- (void)setExtensionBackend:(id)backend;
- (void)setHiddenByUser:(BOOL)user;
- (void)setNsDomainOrNilForDefault:(id)default;
- (void)setProvidedItemRecursiveGenerationCount:(id)count forItemAtURL:(id)l;
- (void)setSupportsRemoteVersions:(BOOL)versions;
- (void)setSupportsSearch:(BOOL)search;
- (void)setSupportsSyncingTrash:(BOOL)trash;
- (void)setUserEnabled:(BOOL)enabled;
- (void)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion;
- (void)stopIndexer;
- (void)unregisterFromSpaceForceWithUrl:(id)url;
@end

@implementation FPDDomain

- (NSFileProviderDomain)nsDomain
{
  [(NSRecursiveLock *)self->_nsDomainLock lock];
  v3 = self->_nsDomain;
  [(NSRecursiveLock *)self->_nsDomainLock unlock];

  return v3;
}

- (NSFileProviderDomain)nsDomainOrNilForDefault
{
  [(NSRecursiveLock *)self->_nsDomainLock lock];
  identifier = [(NSFileProviderDomain *)self->_nsDomain identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_nsDomain;
  }

  [(NSRecursiveLock *)self->_nsDomainLock unlock];

  return v5;
}

- (NSArray)rootURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    rootURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    rootURLs = [defaultBackend rootURLs];
  }

  objc_sync_exit(selfCopy);

  return rootURLs;
}

- (BOOL)supportsPickingFolders
{
  if (self->_isUsingFPFS)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  descriptor = [WeakRetained descriptor];
  if ([descriptor supportsPickingFolders])
  {
    v2 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_provider);
    identifier = [v6 identifier];
    if ([identifier isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
    {
      v2 = 1;
    }

    else
    {
      v8 = objc_loadWeakRetained(&self->_provider);
      identifier2 = [v8 identifier];
      if ([identifier2 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"])
      {
        v2 = 1;
      }

      else
      {
        v10 = objc_loadWeakRetained(&self->_provider);
        identifier3 = [v10 identifier];
        v2 = [identifier3 isEqualToString:@"com.apple.FileProvider.LocalStorage"];
      }
    }
  }

  return v2;
}

- (BOOL)userEnabled
{
  nsDomain = [(FPDDomain *)self nsDomain];
  userEnabled = [nsDomain userEnabled];

  return userEnabled;
}

- (unint64_t)disconnectionState
{
  if (self->_fpfsTestingBackendClass)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  isAppExtensionReachable = [WeakRetained isAppExtensionReachable];

  if (!isAppExtensionReachable)
  {
    return 5;
  }

  if ([(NSFileProviderDomain *)self->_nsDomain isDisconnected])
  {
    if (([(NSFileProviderDomain *)self->_nsDomain _disconnectionOptions]& 1) != 0)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    if ([(FPDDomain *)self _shouldDisconnectDueToLowDiskSpace])
    {
      return 6;
    }

    v6 = objc_loadWeakRetained(&self->_provider);
    descriptor = [v6 descriptor];
    disallowedByMDM = [descriptor disallowedByMDM];

    if (disallowedByMDM)
    {
      return 8;
    }

    if (!self->_unableToStartup)
    {
      return 1;
    }

    if (([(NSError *)self->_startupError fp_isPOSIXErrorCode:28]& 1) != 0)
    {
      return 6;
    }

    if (([(NSError *)self->_startupError fp_isFileProviderInternalError:22]& 1) != 0)
    {
      return 7;
    }

    else if ([(NSError *)self->_startupError fp_isFileProviderInternalError:23])
    {
      return 9;
    }

    else
    {
      return 2;
    }
  }
}

- (BOOL)_shouldDisconnectDueToLowDiskSpace
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldDisconnectDueToLowDiskSpace = selfCopy->_shouldDisconnectDueToLowDiskSpace;
  if (!shouldDisconnectDueToLowDiskSpace)
  {
    volume = [(FPDDomain *)selfCopy volume];
    v6 = volume;
    bOOLValue = volume != 0;
    if (volume)
    {
      isInLowDiskSpaceState = [volume isInLowDiskSpaceState];
      if (isInLowDiskSpaceState)
      {
        [v6 monitorLowDiskSpaceRecovery];
      }

      v8 = [MEMORY[0x1E696AD98] numberWithBool:isInLowDiskSpaceState];
      v9 = selfCopy->_shouldDisconnectDueToLowDiskSpace;
      selfCopy->_shouldDisconnectDueToLowDiskSpace = v8;

      if (!isInLowDiskSpaceState)
      {
        bOOLValue = 0;
        goto LABEL_13;
      }

      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        fp_obfuscatedProviderDomainID = [(NSString *)selfCopy->_providerDomainID fp_obfuscatedProviderDomainID];
        v13 = 138412290;
        v14 = fp_obfuscatedProviderDomainID;
        _os_log_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] [diskspace] Disconnecting %@ due to low disk space.", &v13, 0xCu);
      }
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [FPDDomain _shouldDisconnectDueToLowDiskSpace];
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  bOOLValue = [(NSNumber *)shouldDisconnectDueToLowDiskSpace BOOLValue];
LABEL_14:
  objc_sync_exit(selfCopy);

  return bOOLValue;
}

- (BOOL)backgroundActivityIsPaused
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  defaultBackend = self->_defaultBackend;

  return [(FPDDomainBackend *)defaultBackend backgroundActivityIsPaused];
}

- (BOOL)supportsSyncingTrash
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsSyncingTrash = [nsDomain supportsSyncingTrash];

  return supportsSyncingTrash;
}

- (BOOL)supportsSearch
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsSearch = [nsDomain supportsSearch];

  return supportsSearch;
}

- (int64_t)errorGenerationCount
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return -1;
  }

  defaultBackend = self->_defaultBackend;

  return [(FPDDomainBackend *)defaultBackend errorGenerationCount];
}

- (BOOL)supportsRemoteVersions
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsRemoteVersions = [nsDomain supportsRemoteVersions];

  return supportsRemoteVersions;
}

- (FPDVolume)volume
{
  volume = self->_volume;
  if (!volume)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ FPDDomain must have a volume attached", v3, v2, v4, v5];
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain volume]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 215, [v8 UTF8String]);
  }

  return volume;
}

- (BOOL)isPendingInitialization
{
  if (!self->_defaultBackend)
  {
    return 1;
  }

  defaultBackend = [(FPDDomain *)self defaultBackend];
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && self->_deactivatedBackend == 0;

  return v4;
}

- (FPDDomainBackend)defaultBackend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  defaultBackend = selfCopy->_defaultBackend;
  if (!defaultBackend)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ not configured"];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain defaultBackend]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 409, [v6 UTF8String]);
  }

  v4 = defaultBackend;
  objc_sync_exit(selfCopy);

  return v4;
}

- (FPDProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (FPDDomain)initWithIdentifier:(id)identifier nsDomain:(id)domain extensionStorageURLs:(id)ls purposeIdentifier:(id)purposeIdentifier fpfsClass:(Class)class provider:(id)provider volume:(id)volume
{
  identifierCopy = identifier;
  domainCopy = domain;
  lsCopy = ls;
  purposeIdentifierCopy = purposeIdentifier;
  providerCopy = provider;
  volumeCopy = volume;
  if (!identifierCopy)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain identifier"];
    v59 = fp_current_or_default_log();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 147, [v58 UTF8String]);
  }

  v68.receiver = self;
  v68.super_class = FPDDomain;
  v19 = [(FPDDomain *)&v68 init];
  if (v19)
  {
    classCopy = class;
    v61 = domainCopy;
    v20 = MEMORY[0x1E696AEC0];
    identifier = [providerCopy identifier];
    v22 = [v20 fp_providerDomainIDFromProviderID:identifier domainIdentifier:identifierCopy];
    providerDomainID = v19->_providerDomainID;
    v19->_providerDomainID = v22;

    fp_obfuscatedProviderDomainID = [(NSString *)v19->_providerDomainID fp_obfuscatedProviderDomainID];
    [fp_obfuscatedProviderDomainID UTF8String];
    v25 = fpfs_create_log_for_provider();
    log = v19->_log;
    v19->_log = v25;

    objc_storeStrong(&v19->_identifier, identifier);
    v27 = objc_opt_new();
    nsDomainLock = v19->_nsDomainLock;
    v19->_nsDomainLock = v27;

    objc_storeStrong(&v19->_nsDomain, domain);
    objc_storeWeak(&v19->_provider, providerCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    coordinatorMetadataPerURL = v19->_coordinatorMetadataPerURL;
    v19->_coordinatorMetadataPerURL = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    providedItemRecursiveGenCountPerURL = v19->_providedItemRecursiveGenCountPerURL;
    v19->_providedItemRecursiveGenCountPerURL = dictionary2;

    v33 = objc_opt_new();
    versionsCache = v19->_versionsCache;
    v19->_versionsCache = v33;

    [(NSCache *)v19->_versionsCache setCountLimit:128];
    if (providedItemsOperationQueue_onceToken != -1)
    {
      [FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:];
    }

    objc_storeStrong(&v19->_providedItemsOperationQueue, providedItemsOperationQueue_operationQueue);
    objc_storeStrong(&v19->_purposeIdentifier, purposeIdentifier);
    fp_obfuscatedProviderDomainID2 = [(NSString *)v19->_providerDomainID fp_obfuscatedProviderDomainID];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: domain-queue", fp_obfuscatedProviderDomainID2];
    uTF8String = [v36 UTF8String];
    v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v39 = dispatch_queue_create(uTF8String, v38);
    serialQueue = v19->_serialQueue;
    v19->_serialQueue = v39;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ext-domain-queue", fp_obfuscatedProviderDomainID2];
    uTF8String2 = [v41 UTF8String];
    v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v44 = dispatch_queue_create(uTF8String2, v43);
    extCallOutQueue = v19->_extCallOutQueue;
    v19->_extCallOutQueue = v44;

    v19->_fpfsClass = classCopy;
    objc_storeStrong(&v19->_extensionStorageURLs, ls);
    v46 = [objc_alloc(MEMORY[0x1E69673C8]) initWithName:@"root-creation" queue:v19->_serialQueue minFireInterval:1.0];
    rootCreationPacer = v19->_rootCreationPacer;
    v19->_rootCreationPacer = v46;

    objc_initWeak(&location, v19);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __106__FPDDomain_initWithIdentifier_nsDomain_extensionStorageURLs_purposeIdentifier_fpfsClass_provider_volume___block_invoke;
    v65[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v66, &location);
    [(FPPacer *)v19->_rootCreationPacer setEventBlock:v65];
    nsDomainOrNilForDefault = [(FPDDomain *)v19 nsDomainOrNilForDefault];

    if (!nsDomainOrNilForDefault)
    {
      v19->_isUsingFPFS = 0;
      [v61 setReplicated:0];
    }

    objc_storeStrong(&v19->_volume, volume);
    nsDomain = [(FPDDomain *)v19 nsDomain];
    isReplicated = [nsDomain isReplicated];

    if ((isReplicated & 1) == 0)
    {
      shouldDisconnectDueToLowDiskSpace = v19->_shouldDisconnectDueToLowDiskSpace;
      v19->_shouldDisconnectDueToLowDiskSpace = MEMORY[0x1E695E110];
    }

    if (FPFeatureFlagSpaceAttributionIsEnabled())
    {
      v52 = objc_opt_new();
      saPathManager = v19->_saPathManager;
      v19->_saPathManager = v52;
    }

    v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6967190] code:-2012 userInfo:0];
    v55 = [[FPDDomainDeadEndBackend alloc] initWithDomain:v19 materializationError:v54];
    defaultBackend = v19->_defaultBackend;
    v19->_defaultBackend = v55;

    objc_storeStrong(&v19->_extensionBackend, v19->_defaultBackend);
    objc_destroyWeak(&v66);
    objc_destroyWeak(&location);

    domainCopy = v61;
  }

  return v19;
}

void __106__FPDDomain_initWithIdentifier_nsDomain_extensionStorageURLs_purposeIdentifier_fpfsClass_provider_volume___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained createRootAndObserveIfNeededWithReason:@"deferredRootCreation" userAllowedDBDrop:0 completion:&__block_literal_global_14];
}

- (NSError)errorReflectingDisconnectionState
{
  v10[1] = *MEMORY[0x1E69E9840];
  disconnectionState = [(FPDDomain *)self disconnectionState];
  if (disconnectionState == 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E6967190];
    v9 = *MEMORY[0x1E6967198];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:disconnectionState];
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v3 = [v4 errorWithDomain:v5 code:-1004 userInfo:v7];
  }

  return v3;
}

- (BOOL)isHiddenDefaultDomain
{
  isHidden = [(NSFileProviderDomain *)self->_nsDomain isHidden];
  if (isHidden)
  {
    identifier = self->_identifier;
    v5 = *MEMORY[0x1E6967178];

    LOBYTE(isHidden) = [(NSString *)identifier isEqualToString:v5];
  }

  return isHidden;
}

- (BOOL)isDefaultDomain
{
  nsDomain = [(FPDDomain *)self nsDomain];
  identifier = [nsDomain identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  return v4;
}

- (BOOL)forceDisableIndexing
{
  providerDomainID = [(FPDDomain *)self providerDomainID];
  if ([providerDomainID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
  {
    v3 = FPIsFileIndexerEnabled();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)rootURLsWithTransientState:(BOOL *)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    *state = 1;
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    v5 = [defaultBackend rootURLsWithTransientState:state];
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSArray)coordinationRootURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    coordinationRootURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    coordinationRootURLs = [defaultBackend coordinationRootURLs];
  }

  objc_sync_exit(selfCopy);

  return coordinationRootURLs;
}

- (NSArray)checkableURLs
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(FPDDomain *)selfCopy isPendingInitialization])
  {
    checkableURLs = MEMORY[0x1E695E0F0];
  }

  else
  {
    defaultBackend = [(FPDDomain *)selfCopy defaultBackend];
    checkableURLs = [defaultBackend checkableURLs];
  }

  objc_sync_exit(selfCopy);

  return checkableURLs;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fp_prettyDescription = [(FPDDomain *)self fp_prettyDescription];
  userEnabled = [(NSFileProviderDomain *)self->_nsDomain userEnabled];
  v7 = @"user-disabled";
  if (userEnabled)
  {
    v7 = @"user-enabled";
  }

  if (self->_ejectable)
  {
    v8 = @", ejectable";
  }

  else
  {
    v8 = &stru_1F4C2FFD0;
  }

  v9 = [v3 stringWithFormat:@"<%@: %p> %@, %@%@", v4, self, fp_prettyDescription, v7, v8];

  return v9;
}

- (NSString)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  identifier = [WeakRetained identifier];
  fp_obfuscatedFilename = [(NSString *)self->_identifier fp_obfuscatedFilename];
  v7 = [v3 stringWithFormat:@"%@/%@", identifier, fp_obfuscatedFilename];

  return v7;
}

- (void)setDefaultBackend:(id)backend
{
  backendCopy = backend;
  obj = self;
  objc_sync_enter(obj);
  defaultBackend = obj->_defaultBackend;
  obj->_defaultBackend = backendCopy;

  objc_sync_exit(obj);
}

- (FPDDomainBackend)extensionBackend
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_extensionBackend;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setExtensionBackend:(id)backend
{
  backendCopy = backend;
  obj = self;
  objc_sync_enter(obj);
  extensionBackend = obj->_extensionBackend;
  obj->_extensionBackend = backendCopy;

  objc_sync_exit(obj);
}

- (void)refreshConnectionState
{
  v24 = *MEMORY[0x1E69E9840];
  obj = self;
  objc_sync_enter(obj);
  if (![(FPDDomain *)obj isPendingInitialization]&& ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass()) : (isKindOfClass = 1), (isKindOfClass & 1) == [(FPDDomain *)obj isConnectedToAppExtension]))
  {
    errorReflectingDisconnectionState = [(FPDDomain *)obj errorReflectingDisconnectionState];
    if (errorReflectingDisconnectionState)
    {
      v4 = fp_current_or_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = obj;
        _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] domain %{public}@ is being disconnected, switching to a dead-end backend", buf, 0xCu);
      }

      v5 = [[FPDDeadEndExtensionSession alloc] initWithError:errorReflectingDisconnectionState];
      v6 = [[FPDDomainDeadEndBackend alloc] initWithDomain:obj];
      if ([(FPDDomain *)obj isUsingFPFS])
      {
        extensionBackend = obj->_extensionBackend;
      }

      else
      {
        extensionBackend = obj->_defaultBackend;
      }

      v13 = extensionBackend;
    }

    else
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = obj;
        _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] domain %{public}@ is being re-connected, enabling extension backend", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(&obj->_provider);
      asAppExtensionBackedProvider = [WeakRetained asAppExtensionBackedProvider];

      v11 = [FPDExtensionSession alloc];
      sharedSessionQueue = [asAppExtensionBackedProvider sharedSessionQueue];
      v5 = [(FPDExtensionSession *)v11 initWithDomain:obj extension:asAppExtensionBackedProvider queue:sharedSessionQueue];

      v6 = obj->_deactivatedBackend;
      v13 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      [(FPDDomainBackend *)obj->_defaultBackend updateShouldRetryThrottledOperations:errorReflectingDisconnectionState == 0 completionHandler:&__block_literal_global_119];
    }

    [(FPDDeadEndExtensionSession *)v5 start];
    v14 = obj->_session;
    objc_storeStrong(&obj->_session, v5);
    isUsingFPFS = [(FPDDomain *)obj isUsingFPFS];
    v16 = 128;
    if (isUsingFPFS)
    {
      v16 = 136;
    }

    v17 = *(&obj->super.isa + v16);
    *(&obj->super.isa + v16) = v6;
    v18 = v6;

    deactivatedBackend = obj->_deactivatedBackend;
    obj->_deactivatedBackend = v13;
    v20 = v13;

    objc_sync_exit(obj);
    [(FPDExtensionSessionProtocol *)v14 cancelAsync];
    [(FPDExtensionSessionProtocol *)v14 invalidate];
  }

  else
  {
    objc_sync_exit(obj);
  }
}

void __35__FPDDomain_refreshConnectionState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __35__FPDDomain_refreshConnectionState__block_invoke_cold_1();
    }
  }
}

- (void)setUserEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  if (enabled || (WeakRetained = objc_loadWeakRetained(&self->_provider), [WeakRetained descriptor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "canToggleDomainVisibility"), v6, WeakRetained, (v7 & 1) != 0))
  {
    nsDomain = [(FPDDomain *)self nsDomain];
    [nsDomain setUserEnabled:enabledCopy];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring user-disabling the domain, because its visibility cannot be changed for %@", buf, 0xCu);
    }

    nsDomain2 = [(FPDDomain *)self nsDomain];
    [nsDomain2 setUserEnabled:1];
  }
}

- (BOOL)isHiddenByUser
{
  nsDomain = [(FPDDomain *)self nsDomain];
  isHiddenByUser = [nsDomain isHiddenByUser];

  return isHiddenByUser;
}

- (void)setHiddenByUser:(BOOL)user
{
  userCopy = user;
  v13 = *MEMORY[0x1E69E9840];
  if (user || (WeakRetained = objc_loadWeakRetained(&self->_provider), [WeakRetained descriptor], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "canToggleDomainVisibility"), v6, WeakRetained, (v7 & 1) != 0))
  {
    nsDomain = [(FPDDomain *)self nsDomain];
    [nsDomain setHiddenByUser:userCopy];
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] ignoring user-disabling the domain, because its visibility cannot be changed for %@", buf, 0xCu);
    }

    nsDomain2 = [(FPDDomain *)self nsDomain];
    [nsDomain2 setHiddenByUser:0];
  }
}

- (void)setNsDomainOrNilForDefault:(id)default
{
  defaultCopy = default;
  dispatch_assert_queue_V2(self->_serialQueue);
  backingStoreIdentity = [(FPDDomainBackend *)self->_defaultBackend backingStoreIdentity];
  [defaultCopy setBackingStoreIdentity:backingStoreIdentity];

  [(NSRecursiveLock *)self->_nsDomainLock lock];
  v7 = self->_nsDomain;
  if (defaultCopy)
  {
    objc_storeStrong(&self->_nsDomain, default);
  }

  [(NSRecursiveLock *)self->_nsDomainLock unlock];
  [(FPDDomain *)self refreshConnectionState];
  if (self->_defaultBackend && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(FPDDomainBackend *)self->_defaultBackend didChangeDomainConfiguration:v7];
  }

  if ([(NSFileProviderDomain *)v7 isHidden])
  {
    isHiddenByUser = 1;
  }

  else
  {
    isHiddenByUser = [(NSFileProviderDomain *)v7 isHiddenByUser];
  }

  if ([defaultCopy isHidden])
  {
    isHiddenByUser2 = 1;
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    isHiddenByUser2 = [defaultCopy isHiddenByUser];
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (isHiddenByUser != isHiddenByUser2)
  {
    objc_initWeak(&location, self);
    indexer = [(FPDDomain *)self indexer];
    userEnabled = [(FPDDomain *)self userEnabled];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__FPDDomain_setNsDomainOrNilForDefault___block_invoke;
    v12[3] = &unk_1E83BF788;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [indexer setIndexingEnabled:userEnabled & (isHiddenByUser2 ^ 1u) completionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

LABEL_15:
}

void __40__FPDDomain_setNsDomainOrNilForDefault___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) isHidden];
    v7 = [WeakRetained[8] isHidden];
    v8[0] = 67109634;
    v8[1] = v6;
    v9 = 1024;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Failed switching indexer from %d to %d: %@", v8, 0x18u);
  }
}

- (BOOL)shouldDisconnectWithStartupError
{
  v16 = *MEMORY[0x1E69E9840];
  startupError = [(FPDDomain *)self startupError];
  v4 = [startupError fp_isPOSIXErrorCode:28];

  if (v4)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] [diskspace] Initializing disconnected (low disk space) provider for %@", &v14, 0xCu);
    }

    volume = [(FPDDomain *)self volume];
    v7 = volume;
    if (volume)
    {
      [volume monitorLowDiskSpaceRecovery];
    }

    else
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [FPDDomain shouldDisconnectWithStartupError];
      }
    }

LABEL_15:

    return 1;
  }

  startupError2 = [(FPDDomain *)self startupError];
  v9 = [startupError2 fp_isFileProviderInternalError:22];

  if (v9)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain shouldDisconnectWithStartupError];
    }

    goto LABEL_15;
  }

  startupError3 = [(FPDDomain *)self startupError];
  v11 = [startupError3 fp_isFileProviderInternalError:23];

  if (v11)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain shouldDisconnectWithStartupError];
    }

    goto LABEL_15;
  }

  return 0;
}

- (void)finishSetup
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  if (!WeakRetained)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain"];
    v46 = fp_current_or_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain finishSetup]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 628, [v45 UTF8String]);
  }

  errorReflectingDisconnectionState = [(FPDDomain *)self errorReflectingDisconnectionState];
  if (errorReflectingDisconnectionState)
  {
    v5 = [[FPDDeadEndExtensionSession alloc] initWithError:errorReflectingDisconnectionState];
    session = self->_session;
    self->_session = v5;
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_provider);
    session = [v7 asAppExtensionBackedProvider];

    v8 = [FPDExtensionSession alloc];
    sharedSessionQueue = [session sharedSessionQueue];
    v10 = [(FPDExtensionSession *)v8 initWithDomain:self extension:session queue:sharedSessionQueue];
    v11 = self->_session;
    self->_session = v10;
  }

  if (self->_fpfsTestingBackendClass)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain finishSetup];
    }

    v13 = [objc_alloc(self->_fpfsTestingBackendClass) initWithDomain:self];
    defaultBackend = self->_defaultBackend;
    self->_defaultBackend = v13;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = self->_defaultBackend;
    }

    else
    {
      v15 = [[FPDDomainExtensionBackend alloc] initWithDomain:self];
    }

    extensionBackend = self->_extensionBackend;
    self->_extensionBackend = v15;
    goto LABEL_16;
  }

  if (self->_fpfsClass)
  {
    v16 = objc_loadWeakRetained(&self->_provider);
    if ([v16 supportsFPFS])
    {
      isReplicated = [(NSFileProviderDomain *)self->_nsDomain isReplicated];

      if (!isReplicated)
      {
        goto LABEL_28;
      }

LABEL_20:
      if ([(FPDDomain *)self unableToStartup]&& [(FPDDomain *)self shouldDisconnectWithStartupError])
      {
        v21 = [FPDDomainDeadEndBackend alloc];
        startupError = [(FPDDomain *)self startupError];
        v23 = [(FPDDomainDeadEndBackend *)v21 initWithDomain:self materializationError:startupError];
        v24 = self->_extensionBackend;
        self->_extensionBackend = v23;

        v25 = [objc_alloc(self->_fpfsClass) initWithDomain:self];
        deactivatedBackend = self->_deactivatedBackend;
        self->_deactivatedBackend = v25;
      }

      else
      {
        isConnectedToAppExtension = [(FPDDomain *)self isConnectedToAppExtension];
        v28 = fp_current_or_default_log();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
        if (isConnectedToAppExtension)
        {
          if (v29)
          {
            [FPDDomain finishSetup];
          }

          v30 = 136;
        }

        else
        {
          if (v29)
          {
            [FPDDomain finishSetup];
          }

          v41 = [[FPDDomainDeadEndBackend alloc] initWithDomain:self];
          v28 = self->_extensionBackend;
          self->_extensionBackend = v41;
          v30 = 200;
        }

        v42 = [[FPDDomainExtensionBackend alloc] initWithDomain:self];
        v43 = *(&self->super.isa + v30);
        *(&self->super.isa + v30) = v42;

        if (![(FPDDomain *)self isHiddenDefaultDomain])
        {
          v44 = [objc_alloc(self->_fpfsClass) initWithDomain:self];
          extensionBackend = self->_defaultBackend;
          self->_defaultBackend = v44;
LABEL_16:

LABEL_17:
          self->_isUsingFPFS = 1;
          goto LABEL_36;
        }
      }

      objc_storeStrong(&self->_defaultBackend, self->_extensionBackend);
      goto LABEL_17;
    }

    v19 = objc_loadWeakRetained(&self->_provider);
    if ([v19 testingProvider])
    {
      isReplicated2 = [(NSFileProviderDomain *)self->_nsDomain isReplicated];

      if (isReplicated2)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

LABEL_28:
  isConnectedToAppExtension2 = [(FPDDomain *)self isConnectedToAppExtension];
  v32 = fp_current_or_default_log();
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
  if (isConnectedToAppExtension2)
  {
    if (v33)
    {
      [FPDDomain finishSetup];
    }

    v34 = [[FPDDomainExtensionBackend alloc] initWithDomain:self];
    v35 = self->_defaultBackend;
    self->_defaultBackend = v34;

    v36 = self->_defaultBackend;
    v37 = self->_extensionBackend;
    self->_extensionBackend = v36;
  }

  else
  {
    if (v33)
    {
      [FPDDomain finishSetup];
    }

    v38 = [[FPDDomainDeadEndBackend alloc] initWithDomain:self];
    v39 = self->_defaultBackend;
    self->_defaultBackend = v38;

    objc_storeStrong(&self->_extensionBackend, self->_defaultBackend);
    v40 = [[FPDDomainExtensionBackend alloc] initWithDomain:self];
    v37 = self->_deactivatedBackend;
    self->_deactivatedBackend = v40;
  }

LABEL_36:
  [(NSFileProviderDomain *)self->_nsDomain setReplicated:?];
}

- (BOOL)createRootByImportingDirectoryAtURL:(id)l knownFolders:(id)folders error:(id *)error
{
  v5 = [(FPDDomainBackend *)self->_defaultBackend createRootByImportingURL:l knownFolders:folders error:error];
  v6 = v5 != 0;

  return v6;
}

- (void)createRootURLWithCompletion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_defaultBackend;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v39 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  nsDomain = [(FPDDomain *)self nsDomain];
  personaIdentifier = [nsDomain personaIdentifier];
  v11 = personaIdentifier;
  if (userPersonaUniqueString == personaIdentifier)
  {

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  nsDomain2 = [(FPDDomain *)self nsDomain];
  personaIdentifier2 = [nsDomain2 personaIdentifier];
  v14 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

  if ((v14 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
  {
    goto LABEL_13;
  }

  v38 = 0;
  v15 = [currentPersona copyCurrentPersonaContextWithError:&v38];
  v16 = v38;
  v17 = v39;
  v39 = v15;

  if (v16)
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDDomain createRootURLWithCompletion:];
    }
  }

  nsDomain3 = [(FPDDomain *)self nsDomain];
  personaIdentifier3 = [nsDomain3 personaIdentifier];
  v21 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

  if (v21)
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      nsDomain4 = [(FPDDomain *)self nsDomain];
      personaIdentifier4 = [nsDomain4 personaIdentifier];
      *buf = 138412546;
      v41 = personaIdentifier4;
      v42 = 2112;
      v43 = v21;
      _os_log_error_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
    }
  }

LABEL_14:
  if ([(FPDDomain *)self isDefaultDomain])
  {
    if ([(FPDDomain *)self isHiddenDefaultDomain])
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain createRootURLWithCompletion:];
      }

      v24 = FPDomainUnavailableError();
      completionCopy[2](completionCopy, 0, v24);
    }

    else
    {
      v27 = fp_current_or_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [FPDDomain createRootURLWithCompletion:];
      }

      v28 = MEMORY[0x1E69673A0];
      providerDomainID = [(FPDDomain *)self providerDomainID];
      v24 = [v28 rootItemIDWithProviderDomainID:providerDomainID];

      v30 = [(FPDExtensionSessionProtocol *)self->_session newFileProviderProxyWithTimeout:0 pid:-1.0];
      requestFromTheSystem = [MEMORY[0x1E6967518] requestFromTheSystem];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __41__FPDDomain_createRootURLWithCompletion___block_invoke;
      v34[3] = &unk_1E83BF7B0;
      v34[4] = self;
      v36 = completionCopy;
      v35 = v5;
      [v30 itemForItemID:v24 request:requestFromTheSystem completionHandler:v34];
    }
  }

  else
  {
    v25 = fp_current_or_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain createRootURLWithCompletion:];
    }

    v37 = 0;
    v26 = [(FPDDomainBackend *)v5 createRootByImportingURL:0 knownFolders:MEMORY[0x1E695E0F0] error:&v37];
    v24 = v37;
    (completionCopy)[2](completionCopy, v26, v24);
  }

  _FPRestorePersona();
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__FPDDomain_createRootURLWithCompletion___block_invoke_2;
  v9[3] = &unk_1E83BF228;
  v10 = v5;
  v11 = v6;
  v13 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v7, v9);
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = fp_current_or_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_1();
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (v5)
    {
      __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_2(a1, v4, v6, v7, v8, v9, v10, v11);
    }

    v12 = a1[6];
    v15 = 0;
    v13 = [v12 createRootByImportingURL:0 knownFolders:MEMORY[0x1E695E0F0] error:&v15];
    v14 = v15;
    (*(a1[7] + 16))();
  }
}

- (void)_prepareFileCoordinationProviders
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = fileCoordinationProviderByURL;
  objc_sync_enter(v22);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
  v4 = 0;
  v5 = [coordinationRootURLs countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    obj = coordinationRootURLs;
    v24 = *v32;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = fileCoordinationProviderByURL;
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v9)
        {
          v10 = *v28;
          while (2)
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v28 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v27 + 1) + 8 * j);
              if ([v12 fp_relationshipToItemAtURL:v7] == 1)
              {
                v13 = [fileCoordinationProviderByURL objectForKeyedSubscript:v12];
                v9 = v12;
                goto LABEL_16;
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v13 = 0;
LABEL_16:

        v14 = +[FPDKnownFolderArbiter desktopURL];
        v15 = [v14 fp_relationshipToItemAtURL:v7] == 1;

        v16 = +[FPDKnownFolderArbiter documentsURL];
        v17 = [v16 fp_relationshipToItemAtURL:v7] == 1;

        if (v17)
        {
          v4 |= v15 | 2;
        }

        else
        {
          v4 |= v15;
        }

        if (v13)
        {
          [fileCoordinationProviderByURL removeObjectForKey:v9];
        }

        else
        {
          v13 = [[FPDFileCoordinationProvider alloc] initWithRootURL:v7];
          [(FPDFileCoordinationProvider *)v13 setExtensionIdentifier:selfCopy->_identifier];
        }

        [fileCoordinationProviderByURL setObject:v13 forKeyedSubscript:v7];
        [(FPDFileCoordinationProvider *)v13 setDelegate:selfCopy];
      }

      coordinationRootURLs = obj;
      v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v22);
  nsDomain = [(FPDDomain *)selfCopy nsDomain];
  v19 = v4 == [nsDomain replicatedKnownFolders];

  if (!v19)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_provider);
    identifier = selfCopy->_identifier;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__FPDDomain__prepareFileCoordinationProviders__block_invoke;
    v26[3] = &unk_1E83BDFC8;
    v26[4] = selfCopy;
    [WeakRetained setReplicatedKnownFolders:v4 forDomainIdentifier:identifier completionHandler:v26];
  }
}

void __46__FPDDomain__prepareFileCoordinationProviders__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v1 = [WeakRetained manager];
  v2 = [v1 server];
  [v2 signalProviderChanges];
}

- (void)_checkDomainConnectionPermittedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_serialQueue);
  volume = [(FPDDomain *)self volume];
  role = [volume role];

  if (role == 3 && ([(FPDDomain *)self session], v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    extCallOutQueue = self->_extCallOutQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke;
    v10[3] = &unk_1E83BE310;
    v10[4] = self;
    v11 = handlerCopy;
    dispatch_async(extCallOutQueue, v10);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 newFileProviderProxyWithTimeout:0 pid:180.0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E83BE1A8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 shouldConnectExternalDomainWithCompletionHandler:v5];
}

void __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FPDDomain__checkDomainConnectionPermittedWithCompletionHandler___block_invoke_3;
  v7[3] = &unk_1E83BF450;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)_startObservingRootAndResumeIndexerWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  reasonCopy = reason;
  serialQueue = self->_serialQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(serialQueue);
  provider = [(FPDDomain *)self provider];
  asAppExtensionBackedProvider = [provider asAppExtensionBackedProvider];

  self->_isObservingRoot = 1;
  [(FPDDomain *)self _prepareFileCoordinationProviders];
  v14 = MEMORY[0x1E69E9820];
  v15 = reasonCopy;
  v12 = asAppExtensionBackedProvider;
  v13 = reasonCopy;
  fp_dispatch_async_with_logs();
  [(FPDDomain *)self _registerFileCoordinatorAndSpaceForceWithCompletion:completionCopy, v14, 3221225472, __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke, &unk_1E83BEB68, self];
}

uint64_t __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v14 = section;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = v7[8];
    v9 = [v7 defaultBackend];
    *buf = 134218498;
    v16 = section;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx starting domain %@ with backend %@", buf, 0x20u);
  }

  v5 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132;
  v10[3] = &unk_1E83BF800;
  v10[4] = v5;
  v11 = *(a1 + 40);
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  [v5 _checkDomainConnectionPermittedWithCompletionHandler:v10];

  return __fp_leave_section_Debug();
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_1(v3);
    }

    v5 = [MEMORY[0x1E696ABC0] fp_externalDomainRejectedErrorWithUnderlyingError:v3];
    if (v5)
    {
      goto LABEL_7;
    }
  }

  v6 = [*(a1 + 32) defaultBackend];
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v25 = 0;
  v9 = [v6 startWithReason:v7 userAllowedDBDrop:v8 error:&v25];
  v5 = v25;

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v12 = *(*(a1 + 32) + 64);
    v13 = [*(a1 + 48) server];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_2(v12, v5);
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 168);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_133;
    v20[3] = &unk_1E83BE5A8;
    v20[4] = v15;
    v21 = *(a1 + 48);
    v22 = v12;
    v5 = v5;
    v23 = v5;
    v24 = v13;
    v17 = v13;
    v18 = v12;
    dispatch_async(v16, v20);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 168);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_3;
    block[3] = &unk_1E83BE068;
    block[4] = v10;
    dispatch_async(v11, block);
  }
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_133(uint64_t a1)
{
  if (*(*(a1 + 32) + 121) == 1)
  {
    v4 = [*(a1 + 32) defaultBackend];
    [v4 invalidate];
  }

  else
  {
    v1 = *(a1 + 40);
    v2 = *(a1 + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_2;
    v5[3] = &unk_1E83BF7D8;
    v3 = *(a1 + 56);
    v6 = *(a1 + 64);
    [v1 reloadDomain:v2 unableToStartup:1 startupError:v3 completionHandler:v5];
  }
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultBackend];
  v3 = [v2 backingStoreIdentity];
  [*(*(a1 + 32) + 64) setBackingStoreIdentity:v3];

  v4 = *(a1 + 32);
  if ((v4[121] & 1) != 0 || v4[51] == 1)
  {
    v7 = [v4 defaultBackend];
    [v7 invalidate];
  }

  else if ([MEMORY[0x1E69672F0] runningInSyncBubble])
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] shared iPad: skipping indexing because we're just finishing sync", buf, 2u);
    }
  }

  else
  {
    v6 = [*(a1 + 32) indexer];
    [v6 start];

    *(*(a1 + 32) + 50) = 1;
  }
}

- (void)createRootAndObserveIfNeededWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  dropCopy = drop;
  reasonCopy = reason;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = [(FPDDomain *)self log];
  v20 = fpfs_adopt_log();

  if (self->_isObservingRoot)
  {
    completionCopy[2](completionCopy);
  }

  else if (([(FPDDomainBackend *)self->_defaultBackend needsRootsCreation]& 1) != 0)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain createRootAndObserveIfNeededWithReason:userAllowedDBDrop:completion:];
    }

    v12 = self->_rootCreationPacer;
    [(FPPacer *)v12 suspend];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke;
    v15[3] = &unk_1E83BF828;
    v15[4] = self;
    v13 = v12;
    v16 = v13;
    v18 = completionCopy;
    v17 = reasonCopy;
    v19 = dropCopy;
    [(FPDDomain *)self createRootURLWithCompletion:v15];
  }

  else
  {
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain createRootAndObserveIfNeededWithReason:userAllowedDBDrop:completion:];
    }

    [(FPDDomain *)self _startObservingRootAndResumeIndexerWithReason:reasonCopy userAllowedDBDrop:dropCopy completion:completionCopy];
  }

  __fp_pop_log();
}

void __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 168));
  v7 = [*(a1 + 32) log];
  v19 = fpfs_adopt_log();

  v8 = *(a1 + 32);
  if (v8[121] == 1)
  {
    v9 = [*(a1 + 32) defaultBackend];
    [v9 invalidate];
  }

  else
  {
    if (!v6)
    {
      v14 = *(a1 + 64);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_136;
      v16[3] = &unk_1E83BE310;
      v15 = *(a1 + 48);
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      [v8 _startObservingRootAndResumeIndexerWithReason:v15 userAllowedDBDrop:v14 completion:v16];

      goto LABEL_9;
    }

    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v6 fp_prettyDescription];
      objc_claimAutoreleasedReturnValue();
      __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_cold_1();
    }

    v11 = [*(a1 + 32) defaultBackend];
    [v11 invalidate];

    v12 = *(a1 + 32);
    if ((v12[50] & 1) == 0)
    {
      v13 = [v12 indexer];
      [v13 start];

      *(*(a1 + 32) + 50) = 1;
    }
  }

  [*(a1 + 40) resume];
  (*(*(a1 + 56) + 16))();
LABEL_9:
  __fp_pop_log();
}

uint64_t __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_136(uint64_t a1)
{
  [*(a1 + 32) resume];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)didRefreshRootURLsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v12 = fpfs_adopt_log();
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  manager = [WeakRetained manager];
  server = [manager server];
  [server signalProviderChanges];

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__FPDDomain_didRefreshRootURLsWithCompletionHandler___block_invoke;
  block[3] = &unk_1E83BE310;
  block[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  dispatch_sync(serialQueue, block);

  __fp_pop_log();
}

uint64_t __53__FPDDomain_didRefreshRootURLsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _prepareFileCoordinationProviders];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _registerFileCoordinatorAndSpaceForceWithCompletion:v3];
}

- (void)diskImportFinished
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  v3 = v0;
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v1, v1, "[ERROR] failed to clear import cookie for domain %@: %@", v2);
}

- (void)_startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  dropCopy = drop;
  v52 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  indexer = [(FPDDomain *)self indexer];

  if (indexer)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ domain already registered"];
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v33 = v31;
    __assert_rtn("-[FPDDomain _startWithReason:userAllowedDBDrop:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 979, [v31 UTF8String]);
  }

  identifier = [(FPDDomain *)self identifier];

  if (!identifier)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain"];
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v36 = v34;
    __assert_rtn("-[FPDDomain _startWithReason:userAllowedDBDrop:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 980, [v34 UTF8String]);
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);

  if (!WeakRetained)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider"];
    v38 = fp_current_or_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    v39 = v37;
    __assert_rtn("-[FPDDomain _startWithReason:userAllowedDBDrop:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 981, [v37 UTF8String]);
  }

  self->_started = 1;
  v45 = fpfs_adopt_log();
  section = __fp_create_section();
  v13 = fp_current_or_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [(FPDDomain *)self identifier];
    fp_obfuscatedFilename = [identifier2 fp_obfuscatedFilename];
    *buf = 134218498;
    v47 = section;
    v48 = 2114;
    v49 = fp_obfuscatedFilename;
    v50 = 2114;
    v51 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx starting domain %{public}@ with reason %{public}@", buf, 0x20u);
  }

  [(FPDExtensionSessionProtocol *)self->_session start];
  provider = [(FPDDomain *)self provider];
  isAppExtensionReachable = [provider isAppExtensionReachable];

  if ((isAppExtensionReachable & 1) == 0)
  {
    defaultBackend = [(FPDDomain *)self defaultBackend];
    [defaultBackend startWithReason:reasonCopy userAllowedDBDrop:dropCopy error:0];

    goto LABEL_13;
  }

  if ([(FPDDomain *)self isHiddenDefaultDomain])
  {
LABEL_13:
    completionCopy[2](completionCopy);
    goto LABEL_14;
  }

  defaultBackend2 = [(FPDDomain *)self defaultBackend];
  isDeadEndBackend = [defaultBackend2 isDeadEndBackend];

  if (isDeadEndBackend)
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_INFO, "[INFO] registering for coordination and returning early for deadend backend", buf, 2u);
    }

    [(FPDDomain *)self _prepareFileCoordinationProviders];
    [(FPDDomain *)self _registerFileCoordinatorAndSpaceForceWithCompletion:completionCopy];
  }

  else
  {
    provider2 = [(FPDDomain *)self provider];
    asAppExtensionBackedProvider = [provider2 asAppExtensionBackedProvider];

    if (![(FPDDomain *)self userEnabled]|| [(FPDDomain *)self isHiddenByUser]|| [(FPDDomain *)self isHidden])
    {
      v24 = 0;
    }

    else
    {
      v24 = [(FPDDomain *)self forceDisableIndexing]^ 1;
    }

    defaultBackend3 = [(FPDDomain *)self defaultBackend];
    v43 = 0;
    v26 = [defaultBackend3 createIndexerWithExtension:asAppExtensionBackedProvider enabled:v24 error:&v43];
    v27 = v43;

    if (v26)
    {
      [v26 setDelegate:self];
      [(FPDDomain *)self setIndexer:v26];
      indexer2 = [(FPDDomain *)self indexer];
      v29 = indexer2 == 0;

      if (v29)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ should not be nil"];
        v41 = fp_current_or_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          +[FPDVolume prettyNameForDomain:];
        }

        v42 = v40;
        __assert_rtn("-[FPDDomain _startWithReason:userAllowedDBDrop:completion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1033, [v40 UTF8String]);
      }

      [(FPDDomain *)self createRootAndObserveIfNeededWithReason:reasonCopy userAllowedDBDrop:dropCopy completion:completionCopy];
      [(FPPacer *)self->_rootCreationPacer resume];
    }

    else
    {
      v30 = fp_current_or_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [v27 fp_prettyDescription];
        objc_claimAutoreleasedReturnValue();
        [FPDDomain _startWithReason:userAllowedDBDrop:completion:];
      }

      completionCopy[2](completionCopy);
    }
  }

LABEL_14:
  __fp_leave_section_Notice();
  __fp_pop_log();
}

- (void)startWithReason:(id)reason userAllowedDBDrop:(BOOL)drop completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FPDDomain_startWithReason_userAllowedDBDrop_completion___block_invoke;
  v13[3] = &unk_1E83BF850;
  v13[4] = self;
  v14 = reasonCopy;
  dropCopy = drop;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = reasonCopy;
  dispatch_sync(serialQueue, v13);
}

- (void)cancelPendingCoordinations
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_coordinatorMetadataPerURL copy];
  [(NSMutableDictionary *)self->_coordinatorMetadataPerURL removeAllObjects];
  v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  v4 = [MEMORY[0x1E696AC28] responseWithError:?];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v3;
  allValues = [v3 allValues];
  v6 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        allValues2 = [v10 allValues];
        v12 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            v15 = 0;
            do
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(allValues2);
              }

              completionHandler = [*(*(&v19 + 1) + 8 * v15) completionHandler];
              (completionHandler)[2](completionHandler, v4);

              ++v15;
            }

            while (v13 != v15);
            v13 = [allValues2 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [allValues countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)stopIndexer
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __24__FPDDomain_stopIndexer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[51] == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Trying to stop already stopped indexer"];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain stopIndexer]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1068, [v4 UTF8String]);
  }

  if (v1[121] == 1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Trying to stop indexer on invalided domain"];
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain stopIndexer]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1069, [v6 UTF8String]);
  }

  v1[50] = 1;
  v3 = [*(a1 + 32) indexer];
  [v3 invalidate];

  *(*(a1 + 32) + 51) = 1;
}

- (void)invalidateWithReason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  self->_invalidated = 1;
  section = __fp_create_section();
  v8[5] = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v10 = section;
    v11 = 2112;
    selfCopy = self;
    v13 = 2114;
    v14 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Invalidating %@ (reason: %{public}@)...", buf, 0x20u);
  }

  [(FPDDomain *)self _unregisterFromFileCoordinatorAndSpaceForce];
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__FPDDomain_invalidateWithReason___block_invoke;
  v8[3] = &unk_1E83BE068;
  v8[4] = self;
  dispatch_sync(serialQueue, v8);
  [(NSURL *)self->_previouslyAccessedSecurityScopedURL stopAccessingSecurityScopedResource];
  __fp_leave_section_Notice();
}

void __34__FPDDomain_invalidateWithReason___block_invoke(uint64_t a1)
{
  v4 = fpfs_adopt_log();
  v2 = *(a1 + 32);
  if ((*(v2 + 51) & 1) == 0)
  {
    *(v2 + 50) = 1;
    v3 = [*(a1 + 32) indexer];
    [v3 invalidate];

    *(*(a1 + 32) + 51) = 1;
    v2 = *(a1 + 32);
  }

  [*(v2 + 128) invalidate];
  [*(a1 + 32) cancelPendingCoordinations];
  __fp_pop_log();
}

- (id)cleanupDomainWithMode:(unint64_t)mode
{
  v45[1] = *MEMORY[0x1E69E9840];
  v37 = fpfs_adopt_log();
  provider = [(FPDDomain *)self provider];
  identifier = [provider identifier];
  if ([identifier isEqualToString:@"com.apple.filesystems.UserFS.FileProvider"])
  {
    v7 = 1;
  }

  else
  {
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v7 = [identifier2 isEqualToString:@"com.apple.SMBClientProvider.FileProvider"];
  }

  mEMORY[0x1E697A0F8] = [MEMORY[0x1E697A0F8] sharedInstance];
  providerDomainID = [(FPDDomain *)self providerDomainID];
  v45[0] = providerDomainID;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
  [mEMORY[0x1E697A0F8] removeCachedThumbnailsFromUninstalledFileProvidersWithIdentifiers:v12 completionHandler:&__block_literal_global_157];

  v36 = 0;
  v13 = [(FPDDomain *)self cleanupDomainWithMode:mode error:&v36];
  v14 = v36;
  if (v14)
  {
    v15 = fp_current_or_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      providerDomainID2 = [(FPDDomain *)self providerDomainID];
      fp_obfuscatedProviderDomainID = [providerDomainID2 fp_obfuscatedProviderDomainID];
      fp_prettyDescription = [v14 fp_prettyDescription];
      *buf = 138412802;
      v40 = fp_obfuscatedProviderDomainID;
      v41 = 2048;
      modeCopy = mode;
      v43 = 2112;
      v44 = fp_prettyDescription;
      _os_log_error_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_ERROR, "[ERROR] removing domain %@ with mode %lu faile with %@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  if (!v13)
  {
LABEL_8:
    resultURL = 0;
    goto LABEL_11;
  }

  resultURL = [v13 resultURL];
LABEL_11:
  indexer = [(FPDDomain *)self indexer];
  if (indexer)
  {
    v18 = v7;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (v7)
    {
      v19 = fp_current_or_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        providerDomainID3 = [(FPDDomain *)self providerDomainID];
        fp_obfuscatedProviderDomainID2 = [providerDomainID3 fp_obfuscatedProviderDomainID];
        [(FPDDomain *)fp_obfuscatedProviderDomainID2 cleanupDomainWithMode:v38, v19, providerDomainID3];
      }
    }
  }

  else
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      providerDomainID4 = [(FPDDomain *)self providerDomainID];
      fp_obfuscatedProviderDomainID3 = [providerDomainID4 fp_obfuscatedProviderDomainID];
      [(FPDDomain *)fp_obfuscatedProviderDomainID3 cleanupDomainWithMode:v38, v22, providerDomainID4];
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __35__FPDDomain_cleanupDomainWithMode___block_invoke_158;
    v35[3] = &unk_1E83BDFC8;
    v35[4] = self;
    [indexer dropIndexForReason:1 completion:v35];
  }

  supportURL = [(FPDDomain *)self supportURL];
  v26 = fp_current_or_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = supportURL;
    _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_INFO, "[INFO] removing support directory at %@", buf, 0xCu);
  }

  v27 = supportURL;
  [supportURL fileSystemRepresentation];
  if ((fpfs_recursive_unlinkat() & 0x80000000) != 0)
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = __error();
      v30 = strerror(*v29);
      [(FPDDomain *)v30 cleanupDomainWithMode:buf, supportURL, v28];
    }
  }

  else
  {
    v28 = fp_current_or_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain cleanupDomainWithMode:];
    }
  }

  __fp_pop_log();

  return resultURL;
}

void __35__FPDDomain_cleanupDomainWithMode___block_invoke_158(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) indexer];
      v7 = [v3 fp_prettyDescription];
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] failed to async drop index for %@: %@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__FPDDomain_cleanupDomainWithMode___block_invoke_158_cold_1(a1);
  }
}

- (void)extensionIndexer:(id)indexer didChangeNeedsAuthentification:(BOOL)authentification
{
  authentificationCopy = authentification;
  indexerCopy = indexer;
  v12 = fpfs_adopt_log();
  if (!authentificationCopy && !self->_isObservingRoot)
  {
    [(FPPacer *)self->_rootCreationPacer signal];
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  manager = [WeakRetained manager];
  server = [manager server];
  [server signalProviderChanges];

  defaultBackend = [(FPDDomain *)self defaultBackend];
  LOBYTE(manager) = objc_opt_respondsToSelector();

  if (manager)
  {
    defaultBackend2 = [(FPDDomain *)self defaultBackend];
    [defaultBackend2 didChangeNeedsAuthentification:authentificationCopy];
  }

  __fp_pop_log();
}

- (id)_physicalURLForURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (self->_extensionBackend == self->_defaultBackend)
  {
    v6 = 0;
    if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v7 = [MEMORY[0x1E6967510] placeholderURLForURL:v5];
      v6 = 0;
      if ([v7 checkResourceIsReachableAndReturnError:0])
      {
        v6 = v7;
      }
    }
  }

  else
  {
    v6 = lCopy;
  }

  return v6;
}

- (id)_siblingDelegateForURL:(id)l
{
  lCopy = l;
  provider = [(FPDDomain *)self provider];
  v6 = [provider domainForURL:lCopy];

  if (v6 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (id)_removeProgressForProvidingItemAtURL:(id)l toReaderWithID:(id)d
{
  lCopy = l;
  serialQueue = self->_serialQueue;
  dCopy = d;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [(NSMutableDictionary *)self->_coordinatorMetadataPerURL objectForKeyedSubscript:lCopy];
  v10 = [v9 objectForKeyedSubscript:dCopy];
  [v9 setObject:0 forKeyedSubscript:dCopy];

  if (![v9 count])
  {
    [(NSMutableDictionary *)self->_coordinatorMetadataPerURL setObject:0 forKeyedSubscript:lCopy];
  }

  return v10;
}

- (id)getProvidedItemRecursiveGenerationCountForItemAtURL:(id)l
{
  lCopy = l;
  v5 = self->_providedItemRecursiveGenCountPerURL;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    v6 = MEMORY[0x1E695DFF8];
    path = [lCopy path];
    v8 = [v6 fileURLWithPath:path isDirectory:1];

    lCopy = v8;
  }

  v9 = v5;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9 objectForKey:lCopy];
  objc_sync_exit(v9);

  if (errorInjectionPointEnabled(0, 2))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:0xFFFFFFFFLL];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;

  return v12;
}

- (void)setProvidedItemRecursiveGenerationCount:(id)count forItemAtURL:(id)l
{
  countCopy = count;
  lCopy = l;
  v7 = self->_providedItemRecursiveGenCountPerURL;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    v8 = MEMORY[0x1E695DFF8];
    path = [lCopy path];
    v10 = [v8 fileURLWithPath:path isDirectory:1];

    lCopy = v10;
  }

  v11 = v7;
  objc_sync_enter(v11);
  if (countCopy)
  {
    [(NSMutableDictionary *)v11 setObject:countCopy forKey:lCopy];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:lCopy];
  }

  objc_sync_exit(v11);
}

- (BOOL)_isProviderBlockingConsumer:(id)consumer
{
  consumerCopy = consumer;
  provider = [(FPDDomain *)self provider];
  objc_sync_enter(provider);
  provider2 = [(FPDDomain *)self provider];
  blockedProcessNames = [provider2 blockedProcessNames];
  v8 = [blockedProcessNames containsObject:consumerCopy];

  objc_sync_exit(provider);
  return v8;
}

- (void)_provideItemAtURL:(id)l toReaderWithID:(id)d completionHandler:(id)handler
{
  lCopy = l;
  dCopy = d;
  handlerCopy = handler;
  _kernelMaterializationInfo = [MEMORY[0x1E696ABF8] _kernelMaterializationInfo];
  _readingOptions = [MEMORY[0x1E696ABF8] _readingOptions];
  if (dCopy)
  {
    v13 = [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy];
  }

  else
  {
    v13 = 0;
  }

  *&v14 = -1;
  *(&v14 + 1) = -1;
  v15[0] = v14;
  v15[1] = v14;
  [(FPDDomain *)self _provideItemAtURL:lCopy withReaderID:dCopy withProcessID:v13 withAuditToken:v15 kernelInfo:_kernelMaterializationInfo readingOptions:_readingOptions completionHandler:handlerCopy];
}

- (void)_provideItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  if (infoCopy)
  {
    objc_msgSend_readerAuditToken(infoCopy);
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  v11 = audit_token_to_pid(&atoken);
  readerID = [infoCopy readerID];
  if (infoCopy)
  {
    objc_msgSend_readerAuditToken(infoCopy);
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  kernelMaterializationInfo = [infoCopy kernelMaterializationInfo];
  -[FPDDomain _provideItemAtURL:withReaderID:withProcessID:withAuditToken:kernelInfo:readingOptions:completionHandler:](self, "_provideItemAtURL:withReaderID:withProcessID:withAuditToken:kernelInfo:readingOptions:completionHandler:", lCopy, readerID, v11, &atoken, kernelMaterializationInfo, [infoCopy readingOptions], handlerCopy);
}

- (void)_provideItemAtURL:(id)l withReaderID:(id)d withProcessID:(int)iD withAuditToken:(id *)token kernelInfo:(id)info readingOptions:(unint64_t)options completionHandler:(id)handler
{
  v12 = *&iD;
  v74 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  infoCopy = info;
  handlerCopy = handler;
  fpfs_adopt_log();
  v59 = v58 = options;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  if (v12)
  {
    v17 = FPExecutableNameForProcessIdentifier();
  }

  else
  {
    v17 = @"(unknown)";
  }

  v18 = [FPDCoordinator requestForClaimID:dCopy];
  v19 = v18;
  if (v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    processName = [v18 processName];
    v49 = [v20 stringWithFormat:@"%@ (on behalf of %@)", v17, processName];

    memset(buf, 0, sizeof(buf));
    objc_msgSend_audit_token(v19);
    if ((*buf & *&buf[8] & *&buf[16] & *&buf[24]) == -1)
    {
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        fp_shortDescription = [lCopy fp_shortDescription];
        *v69 = 138412802;
        *&v69[4] = fp_shortDescription;
        v70 = 2112;
        v71 = v49;
        v72 = 2114;
        v73 = dCopy;
        _os_log_fault_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_FAULT, "[CRIT] _provideItemAtURL for %@: requestToken is empty, consumer:%@, readerID: %{public}@", v69, 0x20u);
      }
    }
  }

  else
  {
    v49 = v17;
  }

  v43 = v56[3];
  if ((v43 & 0x40000000) != 0)
  {
    fileMaterializationInfo = [infoCopy fileMaterializationInfo];
    operation = [infoCopy operation];
    if (fileMaterializationInfo)
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%lld, %lld>", objc_msgSend(fileMaterializationInfo, "offset"), objc_msgSend(fileMaterializationInfo, "size")];
      goto LABEL_16;
    }

    v46 = 0;
  }

  else
  {
    v46 = 0;
    operation = 0;
  }

  fileMaterializationInfo = 0;
LABEL_16:
  *v69 = __fp_create_section();
  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    tokenCopy = token;
    v24 = v12;
    v25 = dCopy;
    v26 = *v69;
    fp_prettyDescription = [(FPDDomain *)self fp_prettyDescription];
    fp_shortDescription2 = [lCopy fp_shortDescription];
    v29 = [MEMORY[0x1E696AEC0] fp_coordinatorReadingOptions:v56[3]];
    v30 = v29;
    v31 = @"<full>";
    *buf = 134219522;
    if (v46)
    {
      v31 = v46;
    }

    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = fp_prettyDescription;
    *&buf[22] = 2112;
    *&buf[24] = fp_shortDescription2;
    v61 = 2112;
    v62 = v49;
    v63 = 2114;
    dCopy = v25;
    v64 = v25;
    v65 = 2114;
    v66 = v29;
    v67 = 2114;
    v68 = v31;
    _os_log_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx ⭕️ NSFileCoordinator requested %@ to provide item at %@ (consumer: %@, readerID: %{public}@, options: %{public}@, range: %{public}@)", buf, 0x48u);

    v12 = v24;
    token = tokenCopy;
  }

  if ((*(v56 + 27) & 0x40) == 0)
  {
    goto LABEL_27;
  }

  v32 = _executableNameIsBlockedForMaterialization_once;
  v33 = v49;
  if (v32 != -1)
  {
    [FPDDomain _provideItemAtURL:withReaderID:withProcessID:withAuditToken:kernelInfo:readingOptions:completionHandler:];
  }

  v34 = [_executableNameIsBlockedForMaterialization_blockedProcesses containsObject:v33];

  if (v34)
  {
    v35 = fp_current_or_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v33;
      _os_log_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_INFO, "[INFO] ⛔️ item not provided, consumer %@ blocked by the system", buf, 0xCu);
    }

    v36 = 1;
  }

  else
  {
LABEL_27:
    v36 = 0;
  }

  if ([(FPDDomain *)self _isProviderBlockingConsumer:v49])
  {
    v37 = fp_current_or_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v49;
      _os_log_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_INFO, "[INFO] ⛔️ item not provided, consumer %@ blocked by the provider", buf, 0xCu);
    }

    v36 = 1;
  }

  if (!v19)
  {
    v38 = fpfs_supports_partial_materialization() & operation;
    v39 = (v43 >> 30) & 1;
    v40 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v40;
    if (v38 == 1)
    {
      [FPDRequest requestForPID:v12 auditToken:buf fromPOSIX:v39 kernelFileInfo:fileMaterializationInfo];
    }

    else
    {
      [FPDRequest requestForPID:v12 auditToken:buf fromPOSIX:v39];
    }
    v19 = ;
  }

  [v19 setShouldFailCoordinationIfDownloadRequired:v36];
  v50 = lCopy;
  v51 = dCopy;
  v52 = v19;
  v53 = v49;
  v54 = handlerCopy;
  fp_dispatch_async_with_logs();

  __fp_leave_section_Notice();
  _Block_object_dispose(&v55, 8);
  __fp_pop_log();
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke(uint64_t a1)
{
  v24 = fpfs_adopt_log();
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:*(a1 + 48)];

    if (v4)
    {
      v5 = fp_current_or_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_1();
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:*(a1 + 40)];
  }

  v6 = *(a1 + 88);
  if ((v6 & 0x10) != 0)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_2();
    }

    *(*(*(a1 + 80) + 8) + 24) |= 0x20000uLL;
    v6 = *(a1 + 88);
  }

  if ((v6 & 0xA) != 0)
  {
    [*(a1 + 56) setAllowsResurrection:1];
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v8 + 128);
  v11 = *(*(*(a1 + 80) + 8) + 24);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_178;
  v18[3] = &unk_1E83BF8A0;
  v18[4] = v8;
  v19 = v9;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v23 = *(a1 + 88);
  v17 = *(a1 + 72);
  v14 = v17;
  v22 = v17;
  v15 = [v10 startProvidingItemAtURL:v19 readerID:v13 readingOptions:v11 request:v12 completionHandler:v18];
  v16 = [[FPCoordinationContext alloc] initWithProgress:v15 completionHandler:*(a1 + 72)];
  [v3 setObject:v16 forKeyedSubscript:*(a1 + 48)];

LABEL_14:
  __fp_pop_log();
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_178(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2;
  block[3] = &unk_1E83BF878;
  block[4] = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = *(a1 + 56);
  v16 = *(a1 + 80);
  v9 = *(a1 + 64);
  v7 = v9;
  v15 = v9;
  v8 = v3;
  dispatch_async(v6, block);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _removeProgressForProvidingItemAtURL:*(a1 + 40) toReaderWithID:*(a1 + 48)];
  v3 = *(a1 + 56);
  v4 = fp_current_or_default_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [*(a1 + 40) fp_shortDescription];
      v7 = [*(a1 + 56) fp_prettyDescription];
      v8 = *(a1 + 64);
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x1E696AEC0] fp_coordinatorReadingOptions:*(*(*(a1 + 80) + 8) + 24)];
      v11 = *(a1 + 88);
      v18 = 138413570;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ❌ NSFileCoordinator: failed providing item at %@: %@ (consumer: %@, readerID: %{public}@, options: %{public}@, kernelOperation: 0x%x)", &v18, 0x3Au);
    }
  }

  else if (v5)
  {
    v12 = [*(a1 + 40) fp_shortDescription];
    v13 = *(a1 + 64);
    v14 = *(a1 + 48);
    v15 = [MEMORY[0x1E696AEC0] fp_coordinatorReadingOptions:*(*(*(a1 + 80) + 8) + 24)];
    v18 = 138413058;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    v24 = 2114;
    v25 = v15;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] ✅ NSFileCoordinator: providing item at %@ (consumer: %@, readerID: %{public}@, options: %{public}@)", &v18, 0x2Au);
  }

  v16 = [*(a1 + 32) getProvidedItemRecursiveGenerationCountForItemAtURL:*(a1 + 40)];
  if (v16)
  {
    [*(a1 + 32) setProvidedItemRecursiveGenerationCount:0 forItemAtURL:*(a1 + 40)];
  }

  if (v2)
  {
    v17 = [MEMORY[0x1E696AC28] responseWithError:*(a1 + 56)];
    -[NSObject setProvidedItemRecursiveGenerationCount:](v17, "setProvidedItemRecursiveGenerationCount:", [v16 unsignedLongLongValue]);
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2_cold_1();
    }
  }
}

- (void)_cancelProvidingItemAtURL:(id)l toReaderWithID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  v15 = fpfs_adopt_log();
  if (dCopy && [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy])
  {
    v8 = FPExecutableNameForProcessIdentifier();
  }

  else
  {
    v8 = @"(unknown)";
  }

  section = __fp_create_section();
  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    fp_prettyDescription = [(FPDDomain *)self fp_prettyDescription];
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134219010;
    v17 = section;
    v18 = 2112;
    v19 = fp_prettyDescription;
    v20 = 2112;
    v21 = fp_shortDescription;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx ❌ NSFileCoordinator cancelled request for %@ to provide item at %@ (consumer: %@, readerID: %@)", buf, 0x34u);
  }

  v13 = lCopy;
  v14 = dCopy;
  fp_dispatch_async_with_logs();

  __fp_leave_section_Debug();
  __fp_pop_log();
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke(uint64_t a1)
{
  v1 = (a1 + 48);
  v2 = [*(a1 + 32) _removeProgressForProvidingItemAtURL:*(a1 + 40) toReaderWithID:*(a1 + 48)];
  v3 = fp_current_or_default_log();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_1(v2);
    }

    v4 = [v2 progress];
    [v4 cancel];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_2(v1, v4, v5, v6, v7, v8, v9, v10);
  }
}

- (void)_writerWithID:(id)d didFinishWritingForURL:(id)l
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  if (dCopy)
  {
    v8 = [MEMORY[0x1E696ABF8] _processIdentifierForID:dCopy];
    if (v8)
    {
      v9 = FPExecutableNameForProcessIdentifier();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = @"(unknown)";
LABEL_6:
  section = __fp_create_section();
  v23 = section;
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134218754;
    v25 = section;
    v26 = 2112;
    v27 = fp_shortDescription;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx NSFileCoordinator is telling us the item at %@ was changed (consumer: %@, writerID: %@)", buf, 0x2Au);
  }

  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [lCopy fp_shortDescription];
    objc_claimAutoreleasedReturnValue();
    [(FPDDomain *)self fp_prettyDescription];
    objc_claimAutoreleasedReturnValue();
    [FPDDomain _writerWithID:didFinishWritingForURL:];
  }

  defaultBackend = self->_defaultBackend;
  v14 = [FPDRequest requestForPID:v8];
  [(FPDDomainBackend *)defaultBackend itemChangedAtURL:lCopy request:v14];

  v15 = self->_defaultBackend;
  v16 = [FPDRequest requestForPID:v8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke;
  v19[3] = &unk_1E83BF910;
  v17 = lCopy;
  v20 = v17;
  selfCopy = self;
  v22 = v8;
  [(FPDDomainBackend *)v15 itemForURL:v17 options:0 request:v16 completionHandler:v19];

  __fp_leave_section_Debug();
}

void __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 lastUsedDate];
    if (v8)
    {
      v9 = v8;
      v10 = [v5 lastUsedDate];
      v11 = [v5 contentModificationDate];
      v12 = [v10 compare:v11];

      if (v12 == -1)
      {
        v13 = [v5 contentModificationDate];
        [v5 setLastUsedDate:v13];

        v14 = *(a1 + 40);
        v15 = [FPDRequest requestForPID:*(a1 + 48)];
        [v14 daemonSideItemChange:v5 changedFields:8 request:v15 completionHandler:&__block_literal_global_183];
      }
    }
  }
}

- (void)_providedItemAtURL:(id)l didGainPresenterWithInfo:(id)info
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  section = __fp_create_section();
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    presenterID = [infoCopy presenterID];
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2112;
    *&buf[14] = fp_shortDescription;
    *&buf[22] = 2112;
    *&buf[24] = presenterID;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@ gaining presenter %@", buf, 0x20u);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    memset(buf, 0, 32);
    if (infoCopy)
    {
      objc_msgSend_presenterAuditToken(infoCopy);
    }

    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    presenterID2 = [infoCopy presenterID];
    v13 = [presenterManager promisePresenterWithID:presenterID2];

    defaultBackend = self->_defaultBackend;
    v15 = +[FPDRequest requestForSelf];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke;
    v21[3] = &unk_1E83BF938;
    v22 = lCopy;
    v16 = presenterManager;
    v23 = v16;
    v17 = infoCopy;
    v26 = *buf;
    v27 = *&buf[16];
    v24 = v17;
    v25 = v13;
    [(FPDDomainBackend *)defaultBackend itemIDForURL:v22 requireProviderItemID:0 request:v15 completionHandler:v21];
  }

  else
  {
    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();
}

void __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) presenterID];
  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v12;
    [v8 addPresenter:v9 itemID:v5 urlHint:v10 auditToken:v13 promiseID:v11];
  }

  else
  {
    [v8 forgetPromiseForPresenterWithID:v9 promiseID:*(a1 + 56)];
  }
}

- (void)_providedItemAtURL:(id)l didLosePresenterWithID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  v14 = fpfs_adopt_log();
  section = __fp_create_section();
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    *buf = 134218498;
    v16 = section;
    v17 = 2112;
    v18 = fp_shortDescription;
    v19 = 2112;
    v20 = dCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@ losing presenter %@", buf, 0x20u);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    [presenterManager removePresenter:dCopy];
  }

  else
  {
    presenterManager = fp_current_or_default_log();
    if (os_log_type_enabled(presenterManager, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();
}

- (void)_providedItemAtURL:(id)l withPresenterWithID:(id)d didMoveToURL:(id)rL
{
  v38 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dCopy = d;
  rLCopy = rL;
  v34 = fpfs_adopt_log();
  section = __fp_create_section();
  v11 = fp_current_or_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    fp_shortDescription2 = [rLCopy fp_shortDescription];
    *buf = 134218754;
    *&buf[4] = section;
    *&buf[12] = 2112;
    *&buf[14] = fp_shortDescription;
    *&buf[22] = 2112;
    *&buf[24] = dCopy;
    v36 = 2112;
    v37 = fp_shortDescription2;
    _os_log_debug_impl(&dword_1CEFC7000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Item at %@, presenter %@, moving to %@", buf, 0x2Au);
  }

  if ([(FPDDomain *)self _wantsPresenterNotifications])
  {
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    server = [WeakRetained server];
    presenterManager = [server presenterManager];

    v15 = [presenterManager presenterWithID:dCopy];
    v16 = v15;
    if (v15)
    {
      memset(buf, 0, sizeof(buf));
      objc_msgSend_auditToken(v15);
      [presenterManager removePresenter:dCopy];
      v17 = [presenterManager promisePresenterWithID:dCopy];
      defaultBackend = self->_defaultBackend;
      v19 = +[FPDRequest requestForSelf];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke;
      v26[3] = &unk_1E83BF938;
      v27 = rLCopy;
      v28 = presenterManager;
      v20 = dCopy;
      v31 = *buf;
      v32 = *&buf[16];
      v29 = v20;
      v30 = v17;
      [(FPDDomainBackend *)defaultBackend itemIDForURL:v27 requireProviderItemID:0 request:v19 completionHandler:v26];
    }

    else
    {
      v21 = fp_current_or_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        fp_shortDescription3 = [lCopy fp_shortDescription];
        fp_shortDescription4 = [rLCopy fp_shortDescription];
        *buf = 138412802;
        *&buf[4] = dCopy;
        *&buf[12] = 2112;
        *&buf[14] = fp_shortDescription3;
        *&buf[22] = 2112;
        *&buf[24] = fp_shortDescription4;
        _os_log_error_impl(&dword_1CEFC7000, v21, OS_LOG_TYPE_ERROR, "[ERROR] Move of a presenter %@ from %@ to %@ notified but no previous presenter existed", buf, 0x20u);
      }
    }
  }

  else
  {
    presenterManager = fp_current_or_default_log();
    if (os_log_type_enabled(presenterManager, OS_LOG_TYPE_DEBUG))
    {
      [FPDDomain _providedItemAtURL:didGainPresenterWithInfo:];
    }
  }

  __fp_leave_section_Debug();
  __fp_pop_log();
}

void __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke_cold_1();
    }
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 56);
    v12 = *(a1 + 80);
    v13[0] = *(a1 + 64);
    v13[1] = v12;
    [v8 addPresenter:v9 itemID:v5 urlHint:v10 auditToken:v13 promiseID:v11];
  }

  else
  {
    [v8 forgetPromiseForPresenterWithID:v9 promiseID:*(a1 + 56)];
  }
}

- (void)_movingItemAtURL:(id)l withInfo:(id)info completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  section = __fp_create_section();
  v22 = section;
  v12 = fp_current_or_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    fp_shortDescription = [lCopy fp_shortDescription];
    destinationDirectoryURL = [infoCopy destinationDirectoryURL];
    fp_shortDescription2 = [destinationDirectoryURL fp_shortDescription];
    *buf = 134218498;
    v24 = section;
    v25 = 2112;
    v26 = fp_shortDescription;
    v27 = 2112;
    v28 = fp_shortDescription2;
    _os_log_debug_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Checking if download is required for moving %@ to %@", buf, 0x20u);
  }

  defaultBackend = [(FPDDomain *)self defaultBackend];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke;
  v19[3] = &unk_1E83BF960;
  v14 = lCopy;
  v20 = v14;
  v15 = handlerCopy;
  v21 = v15;
  [defaultBackend movingItemAtURL:v14 withInfo:infoCopy completionHandler:v19];

  __fp_leave_section_Debug();
}

void __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_registerFileCoordinatorAndSpaceForceWithCompletion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  block = completion;
  v54 = fpfs_adopt_log();
  if ([MEMORY[0x1E69672F0] runningInSyncBubble])
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] shared iPad: skipping file coordination registration because we're just finishing sync", buf, 2u);
    }

    dispatch_async(self->_serialQueue, block);
  }

  else
  {
    v31 = objc_opt_new();
    v5 = dispatch_group_create();
    WeakRetained = objc_loadWeakRetained(&self->_provider);
    identifier = [WeakRetained identifier];

    v7 = objc_loadWeakRetained(&self->_provider);
    if (!v7)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider"];
      v22 = fp_current_or_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v23 = v21;
      __assert_rtn("-[FPDDomain _registerFileCoordinatorAndSpaceForceWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1656, [v21 UTF8String]);
    }

    if (!identifier)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no provider identifier"];
      v25 = fp_current_or_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        +[FPDVolume prettyNameForDomain:];
      }

      v26 = v24;
      __assert_rtn("-[FPDDomain _registerFileCoordinatorAndSpaceForceWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 1657, [v24 UTF8String]);
    }

    obj = fileCoordinationProviderByURL;
    objc_sync_enter(obj);
    v8 = MEMORY[0x1E695DFD8];
    coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
    v33 = [v8 setWithArray:coordinationRootURLs];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    allKeys = [fileCoordinationProviderByURL allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v11)
    {
      v12 = *v50;
      v29 = v37;
      v30 = v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          v15 = [fileCoordinationProviderByURL objectForKeyedSubscript:{v14, obj, block, v29, v30}];
          delegate = [v15 delegate];
          v17 = delegate == self;

          if (v17)
          {
            dispatch_group_enter(v5);
            if ([v33 containsObject:v14])
            {
              providedItemsOperationQueue = self->_providedItemsOperationQueue;
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v43[0] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke;
              v43[1] = &unk_1E83BE0E0;
              v43[2] = self;
              v44 = v31;
              v45 = v14;
              v46 = v15;
              v47 = v5;
              v48 = identifier;
              [(NSOperationQueue *)providedItemsOperationQueue addOperationWithBlock:v42];
            }

            else
            {
              [fileCoordinationProviderByURL removeObjectForKey:v14];
              v19 = self->_providedItemsOperationQueue;
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v37[0] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_194;
              v37[1] = &unk_1E83BF988;
              v38 = v15;
              v39 = v5;
              selfCopy = self;
              v41 = v14;
              [(NSOperationQueue *)v19 addOperationWithBlock:v36];
            }
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v11);
    }

    objc_sync_exit(obj);
    [(FPDDomain *)self _registerInSpaceForce];
    serialQueue = self->_serialQueue;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_195;
    v34[3] = &unk_1E83BF9B0;
    v35 = block;
    dispatch_group_notify(v5, serialQueue, v34);
  }

  __fp_pop_log();
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v3 = [WeakRetained descriptor];
  if (([v3 hasExplicitExtensionStorageURLs]& 1) != 0)
  {
    goto LABEL_2;
  }

  v4 = [*(a1 + 32) isUsingFPFS];

  if ((v4 & 1) == 0)
  {
    v25 = 0;
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) path];
    LODWORD(v10) = [v10 fileExistsAtPath:v11 isDirectory:&v25];
    v12 = v25;

    if (v10 && (v12 & 1) != 0)
    {
      WeakRetained = 0;
      goto LABEL_3;
    }

    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v24 = 0;
    v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v24];
    WeakRetained = v24;
    if (v15)
    {
      goto LABEL_3;
    }

    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 48) fp_shortDescription];
      v17 = [*(a1 + 32) fp_prettyDescription];
      v18 = [WeakRetained fp_prettyDescription];
      *buf = 138412802;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      v30 = 2112;
      v31 = v18;
      _os_log_error_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_ERROR, "[ERROR] ❌ Error preparing documentStorage directory %@ for provider %@: %@", buf, 0x20u);
    }

LABEL_2:

LABEL_3:
  }

  if ([*(a1 + 56) isRegistered])
  {
    dispatch_group_leave(*(a1 + 64));
  }

  else
  {
    [*(a1 + 56) setRegistered:1];
    v5 = MEMORY[0x1E696ABF8];
    v6 = *(a1 + 56);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_193;
    v19[3] = &unk_1E83BE5A8;
    v19[4] = *(a1 + 32);
    v7 = *(a1 + 72);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = *(a1 + 64);
    [v5 _addFileProvider:v6 completionHandler:v19];
  }
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_193(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) log];
  v8 = fpfs_adopt_log();

  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) fp_prettyDescription];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) fp_shortDescription];
    v7 = *(a1 + 56);
    *buf = 138413058;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] 🅿️ Registered file provider extension %@ (%@) for path %@: %@", buf, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 64));
  __fp_pop_log();
}

void __65__FPDDomain__registerFileCoordinatorAndSpaceForceWithCompletion___block_invoke_194(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isRegistered])
  {
    [*(a1 + 32) setRegistered:0];
    [MEMORY[0x1E696ABF8] _removeFileProvider:*(a1 + 32)];
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 48) fp_prettyDescription];
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 208));
      v5 = [WeakRetained identifier];
      v6 = [*(a1 + 56) fp_shortDescription];
      v7 = *(a1 + 32);
      v9 = 138413058;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] 🅾️ Deregistered file provider extension %@ (%@) for path %@: %@", &v9, 0x2Au);
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v8 = *(a1 + 40);

    dispatch_group_leave(v8);
  }
}

- (void)_registerInSpaceForce
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(FPDDomain *)self isUsingFPFS]&& FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      checkableURLs = [(FPDDomain *)self checkableURLs];
      provider = [(FPDDomain *)self provider];
      identifier = [provider identifier];
      *buf = 138412802;
      selfCopy = self;
      v15 = 2112;
      v16 = checkableURLs;
      v17 = 2112;
      v18 = identifier;
      _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] %@: Space Attribution registration for paths %@ and bundle %@", buf, 0x20u);
    }

    checkableURLs2 = [(FPDDomain *)self checkableURLs];
    v8 = [checkableURLs2 fp_map:&__block_literal_global_198];

    saPathManager = self->_saPathManager;
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__FPDDomain__registerInSpaceForce__block_invoke_2;
    v12[3] = &unk_1E83BDFC8;
    v12[4] = self;
    [(SAPathManager *)saPathManager registerPaths:v8 forBundleID:identifier2 completionHandler:v12];
  }
}

void __34__FPDDomain__registerInSpaceForce__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __34__FPDDomain__registerInSpaceForce__block_invoke_2_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = [*(a1 + 32) checkableURLs];
    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Paths %@ were registered in Space Attribution with bundle %@", &v9, 0x16u);
  }
}

- (void)_unregisterFromFileCoordinatorAndSpaceForce
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = fpfs_adopt_log();
  obj = fileCoordinationProviderByURL;
  objc_sync_enter(obj);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  coordinationRootURLs = [(FPDDomain *)self coordinationRootURLs];
  v4 = [coordinationRootURLs countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(coordinationRootURLs);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [fileCoordinationProviderByURL objectForKeyedSubscript:{v7, obj}];
        delegate = [v8 delegate];
        v10 = delegate == self;

        if (v10)
        {
          [fileCoordinationProviderByURL removeObjectForKey:v7];
          providedItemsOperationQueue = self->_providedItemsOperationQueue;
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 3221225472;
          v13[2] = __56__FPDDomain__unregisterFromFileCoordinatorAndSpaceForce__block_invoke;
          v13[3] = &unk_1E83BDE60;
          v14 = v8;
          selfCopy = self;
          v16 = v7;
          [(NSOperationQueue *)providedItemsOperationQueue addOperationWithBlock:v13];
        }
      }

      v4 = [coordinationRootURLs countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  [(NSOperationQueue *)self->_providedItemsOperationQueue waitUntilAllOperationsAreFinished];
  __fp_pop_log();
}

void __56__FPDDomain__unregisterFromFileCoordinatorAndSpaceForce__block_invoke(id *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([a1[4] isRegistered])
  {
    [a1[4] setRegistered:0];
    [MEMORY[0x1E696ABF8] _removeFileProvider:a1[4]];
    [a1[5] _unregisterURLFromSpaceForce:a1[6]];
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [a1[5] fp_prettyDescription];
      WeakRetained = objc_loadWeakRetained(a1[5] + 26);
      v5 = [WeakRetained identifier];
      v6 = [a1[6] fp_shortDescription];
      v7 = a1[4];
      v8 = 138413058;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] 🅾️ Deregistered file provider extension %@ (%@) for path %@: %@", &v8, 0x2Au);
    }
  }
}

- (void)_unregisterURLFromSpaceForce:(id)force
{
  v21 = *MEMORY[0x1E69E9840];
  forceCopy = force;
  if ([(FPDDomain *)self isUsingFPFS]&& FPFeatureFlagSpaceAttributionIsEnabled())
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      provider = [(FPDDomain *)self provider];
      identifier = [provider identifier];
      *buf = 138412802;
      selfCopy = self;
      v17 = 2112;
      v18 = forceCopy;
      v19 = 2112;
      v20 = identifier;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] %@: Space Attribution unregistration for path %@ and bundle %@", buf, 0x20u);
    }

    saPathManager = self->_saPathManager;
    v14 = forceCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    provider2 = [(FPDDomain *)self provider];
    identifier2 = [provider2 identifier];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke;
    v12[3] = &unk_1E83BE760;
    v12[4] = self;
    v13 = forceCopy;
    [(SAPathManager *)saPathManager unregisterURLs:v9 forBundleID:identifier2 completionHandler:v12];
  }
}

void __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] Path %@ was unregistered from Space Attribution with bundle %@", &v9, 0x16u);
  }
}

- (BOOL)isProviderForRealPathURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (([(FPDDomainBackend *)self->_defaultBackend isProviderForRealPathURL:lCopy]& 1) != 0)
  {
LABEL_2:
    v5 = 1;
  }

  else
  {
    extensionBackend = self->_extensionBackend;
    if (self->_defaultBackend == extensionBackend)
    {
      if (![(FPDDomain *)self isConnectedToAppExtension])
      {
        provider = [(FPDDomain *)self provider];
        extensionStorageURLs = [provider extensionStorageURLs];

        pathRelativeToDocumentStorage = [(NSFileProviderDomain *)self->_nsDomain pathRelativeToDocumentStorage];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = extensionStorageURLs;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v20 + 1) + 8 * i);
              v16 = v15;
              v17 = v15;
              if (pathRelativeToDocumentStorage)
              {
                v17 = [v15 URLByAppendingPathComponent:{pathRelativeToDocumentStorage, v20}];
              }

              v18 = [v16 fp_realPathRelationshipToItemAtRealPathURL:{lCopy, v20}];

              if (v18 != 2)
              {

                goto LABEL_2;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = 0;
    }

    else
    {
      v5 = [(FPDDomainBackend *)extensionBackend isProviderForRealPathURL:lCopy];
    }
  }

  return v5;
}

- (void)daemonSideItemChange:(id)change changedFields:(unint64_t)fields request:(id)request completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  handlerCopy = handler;
  requestCopy = request;
  defaultBackend = [(FPDDomain *)self defaultBackend];
  v22[0] = changeCopy;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__FPDDomain_daemonSideItemChange_changedFields_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83BF9F8;
  v18 = changeCopy;
  selfCopy = self;
  v20 = handlerCopy;
  fieldsCopy = fields;
  v15 = handlerCopy;
  v16 = changeCopy;
  [defaultBackend bulkItemChanges:v14 changedFields:fields request:requestCopy completionHandler:v17];
}

void __74__FPDDomain_daemonSideItemChange_changedFields_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 itemIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [*(a1 + 32) itemIdentifier];
  v11 = [v6 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 40) identifier];
      v14 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = 138413058;
      v17 = v13;
      v18 = 2048;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_ERROR, "[ERROR] can't notify extension %@ of item change %lu for item %@; %@", &v16, 0x2Au);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)didChangeItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  v8 = requestCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  fp_dispatch_async_with_logs();
}

void __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke(id *a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_cold_1();
  }

  v4 = [a1[4] domainIdentifier];
  v5 = [v4 isEqualToString:*(a1[5] + 18)];

  if ((v5 & 1) == 0)
  {
    v14 = a1[7];
    v15 = [a1[4] domainIdentifier];
LABEL_9:
    v16 = FPInvalidParameterError();
    v14[2](v14, v16);

    return;
  }

  v6 = [a1[4] providerID];
  WeakRetained = objc_loadWeakRetained(a1[5] + 26);
  v8 = [WeakRetained identifier];
  v9 = [v6 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    v14 = a1[7];
    v15 = [a1[4] providerID];
    goto LABEL_9;
  }

  v10 = [a1[4] identifier];
  v11 = [v10 isEqualToString:*MEMORY[0x1E6967298]];

  v12 = a1[5];
  if (v11)
  {
    v13 = [v12 defaultBackend];
    [v13 workingSetDidChangeWithCompletionHandler:a1[7]];
  }

  else
  {
    v17 = [v12 provider];
    v18 = [v17 server];
    v19 = [v18 presenterManager];
    [v19 signalPresentersForItemID:a1[4]];

    v20 = [a1[5] defaultBackend];
    LOBYTE(v18) = objc_opt_respondsToSelector();

    v21 = a1[5];
    if (v18)
    {
      v22 = [v21 defaultBackend];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_209;
      v25[3] = &unk_1E83BE3B0;
      v24 = *(a1 + 2);
      v23 = v24.i64[0];
      v26 = vextq_s8(v24, v24, 8uLL);
      v27 = a1[6];
      v28 = a1[7];
      [v22 didChangeItemID:v23 completionHandler:v25];
    }

    else
    {
      [v21 callExtensionForItemDidChange:a1[4] request:a1[6] completionHandler:a1[7]];
    }
  }
}

void __55__FPDDomain_didChangeItemID_request_completionHandler___block_invoke_209(uint64_t a1)
{
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v7 = v5;
  fp_dispatch_async_with_logs();
}

- (void)callExtensionForItemDidChange:(id)change request:(id)request completionHandler:(id)handler
{
  changeCopy = change;
  handlerCopy = handler;
  serialQueue = self->_serialQueue;
  requestCopy = request;
  dispatch_assert_queue_V2(serialQueue);
  session = [(FPDDomain *)self session];
  v13 = [requestCopy pid];

  v14 = [session existingFileProviderProxyWithTimeout:1 onlyAlreadyLifetimeExtended:v13 pid:180.0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83BFA20;
  v17[4] = self;
  v18 = changeCopy;
  v19 = handlerCopy;
  v15 = handlerCopy;
  v16 = changeCopy;
  [v14 didChangeItemID:v16 completionHandler:v17];
}

void __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 fp_isCocoaErrorCode:3072];
    v6 = fp_current_or_default_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 32) identifier];
        v9 = *(a1 + 40);
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] Extension %@ signalled for item at %@ without active enumerators, not launching it", &v10, 0x16u);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchOperationServiceOrEndpointWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(FPDDomain *)self isPendingInitialization])
  {
    v7 = FPDomainUnavailableError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
  }

  else
  {
    [(FPDDomainBackend *)self->_defaultBackend fetchOperationServiceOrEndpointWithRequest:requestCopy completionHandler:handlerCopy];
  }
}

- (id)materializedURLForItemID:(id)d
{
  dCopy = d;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(FPDDomainBackend *)self->_defaultBackend materializedURLForItemID:dCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)forceIngestionAtURL:(id)l
{
  lCopy = l;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceIngestionAtURL:lCopy];
  }
}

- (void)forceFSIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceFSIngestionForItemID:dCopy request:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)forceIngestionForItemID:(id)d request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend forceIngestionForItemID:dCopy request:requestCopy openFD:1 completionHandler:handlerCopy];
  }

  else
  {
    v10 = FPNotSupportedError();
    handlerCopy[2](handlerCopy, 0, v10);
  }
}

- (void)downloadItemWithItemID:(id)d request:(id)request progress:(id)progress completionHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  progressCopy = progress;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend downloadItemWithItemID:dCopy request:requestCopy progress:progressCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = FPNotSupportedError();
    handlerCopy[2](handlerCopy, 0, v13);
  }
}

- (void)downloadVersionThumbnail:(id)thumbnail version:(id)version completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  versionCopy = version;
  handlerCopy = handler;
  defaultBackend = self->_defaultBackend;
  fileURL = [thumbnailCopy fileURL];
  version = [versionCopy version];
  v22[0] = version;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke;
  v18[3] = &unk_1E83BFA48;
  v19 = thumbnailCopy;
  v20 = versionCopy;
  v21 = handlerCopy;
  v15 = handlerCopy;
  v16 = versionCopy;
  v17 = thumbnailCopy;
  [(FPDDomainBackend *)defaultBackend fetchThumbnailsAtURL:fileURL versions:v14 size:v18 perThumbnailCompletionHandler:&__block_literal_global_223 completionHandler:1024.0, 1024.0];
}

void __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a4;
  v10 = a7;
  if (v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v9 url];
    [v12 removeItemAtURL:v13 error:0];
  }
}

- (void)downloadVersionWithItemID:(id)d etag:(id)etag request:(id)request completionHandler:(id)handler
{
  dCopy = d;
  etagCopy = etag;
  requestCopy = request;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    defaultBackend = self->_defaultBackend;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke;
    v16[3] = &unk_1E83BFAC0;
    v20 = handlerCopy;
    v16[4] = self;
    v17 = etagCopy;
    v18 = dCopy;
    v19 = requestCopy;
    [(FPDDomainBackend *)defaultBackend itemForItemID:v18 creatingPlaceholderIfMissing:0 ignoreAlternateContentsURL:1 request:v19 completionHandler:v16];
  }

  else
  {
    v15 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v15);
  }
}

void __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_2;
    aBlock[3] = &unk_1E83BFA70;
    v29 = *(a1 + 64);
    v6 = v5;
    v28 = v6;
    v7 = _Block_copy(aBlock);
    v8 = [*(a1 + 32) versionsCache];
    v9 = [v8 objectForKey:*(a1 + 40)];

    if (v9 && ([v9 fpItemIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToItemID:", *(a1 + 48)), v10, v11))
    {
      v12 = *(a1 + 32);
      v13 = [v6 providerItemID];
      v14 = [v9 version];
      v15 = [v6 fileURL];
      [v12 downloadVersionWithItemID:v13 version:v14 originalURL:v15 completionHandler:v7];
    }

    else
    {
      v16 = *(*(a1 + 32) + 128);
      v13 = [v6 fileURL];
      v17 = *(a1 + 56);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_3;
      v20[3] = &unk_1E83BFA98;
      v18 = *(a1 + 40);
      v19 = *(a1 + 32);
      v21 = v18;
      v22 = v19;
      v23 = v6;
      v25 = v7;
      v26 = *(a1 + 64);
      v24 = *(a1 + 48);
      [v16 listRemoteVersionsOfItemAtURL:v13 includeCachedVersions:1 request:v17 completionHandler:v20];

      v14 = v21;
    }
  }
}

void __70__FPDDomain_downloadVersionWithItemID_etag_request_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 etag];
        v11 = [v10 isEqualToString:*(a1 + 32)];

        if (v11)
        {
          v15 = *(a1 + 40);
          v14 = [*(a1 + 48) providerItemID];
          v16 = [v9 version];
          v17 = [*(a1 + 48) fileURL];
          [v15 downloadVersionWithItemID:v14 version:v16 originalURL:v17 completionHandler:*(a1 + 64)];

          v13 = v4;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = *(a1 + 72);
  v13 = [*(a1 + 56) identifier];
  v14 = FPItemNotFoundError();
  (*(v12 + 16))(v12, 0, 0, 0, v14);
LABEL_11:
}

- (void)downloadVersionWithItemID:(id)d version:(id)version originalURL:(id)l completionHandler:(id)handler
{
  dCopy = d;
  versionCopy = version;
  lCopy = l;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    [(FPDDomainBackend *)self->_defaultBackend downloadVersionWithItemID:dCopy version:versionCopy originalURL:lCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = FPNotSupportedError();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v13);
  }
}

- (int64_t)nonEvictableSpace
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  defaultBackend = self->_defaultBackend;

  return [(FPDDomainBackend *)defaultBackend nonEvictableSpace];
}

- (int64_t)accumulatedSizeOfPinnedItems
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  defaultBackend = self->_defaultBackend;

  return [(FPDDomainBackend *)defaultBackend accumulatedSizeOfPinnedItems];
}

- (id)accumulatedSizeOfItems
{
  if (objc_opt_respondsToSelector())
  {
    accumulatedSizeOfItems = [(FPDDomainBackend *)self->_defaultBackend accumulatedSizeOfItems];
  }

  else
  {
    accumulatedSizeOfItems = 0;
  }

  return accumulatedSizeOfItems;
}

- (id)providerVersion
{
  if (objc_opt_respondsToSelector())
  {
    providerVersion = [(FPDDomainBackend *)self->_defaultBackend providerVersion];
  }

  else
  {
    providerVersion = 0;
  }

  return providerVersion;
}

- (void)setSupportsSyncingTrash:(BOOL)trash
{
  trashCopy = trash;
  nsDomain = [(FPDDomain *)self nsDomain];
  [nsDomain setSupportsSyncingTrash:trashCopy];
}

- (void)setSupportsSearch:(BOOL)search
{
  searchCopy = search;
  nsDomain = [(FPDDomain *)self nsDomain];
  [nsDomain setSupportsSearch:searchCopy];
}

- (BOOL)supportsStringSearchRequest
{
  nsDomain = [(FPDDomain *)self nsDomain];
  supportsStringSearchRequest = [nsDomain supportsStringSearchRequest];

  return supportsStringSearchRequest;
}

- (void)setSupportsRemoteVersions:(BOOL)versions
{
  versionsCopy = versions;
  nsDomain = [(FPDDomain *)self nsDomain];
  [nsDomain setSupportsRemoteVersions:versionsCopy];
}

- (void)dumpStateTo:(id)to providerDomain:(id)domain options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  v141 = *MEMORY[0x1E69E9840];
  toCopy = to;
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  identifier = [(FPDDomain *)self identifier];
  v14 = [identifier isEqualToString:*MEMORY[0x1E6967178]];

  [toCopy write:@"-----------------------------------------------------\n"];
  if (v14)
  {
    fp_obfuscatedFilename = @"(default)";
  }

  else
  {
    identifier = [(FPDDomain *)self identifier];
    fp_obfuscatedFilename = [identifier fp_obfuscatedFilename];
  }

  nsDomain = [(FPDDomain *)self nsDomain];
  isHidden = [nsDomain isHidden];
  v18 = &stru_1F4C2FFD0;
  v19 = @" (hidden)";
  if (!isHidden)
  {
    v19 = &stru_1F4C2FFD0;
  }

  [toCopy write:{@"domain: %@%@", fp_obfuscatedFilename, v19}];

  if ((v14 & 1) == 0)
  {
  }

  nsDomain2 = [(FPDDomain *)self nsDomain];
  displayName = [nsDomain2 displayName];
  v22 = [displayName length];

  if (v22)
  {
    nsDomain3 = [(FPDDomain *)self nsDomain];
    displayName2 = [nsDomain3 displayName];
    fp_obfuscatedFilename2 = [displayName2 fp_obfuscatedFilename];
    [toCopy write:{@" (%@)", fp_obfuscatedFilename2}];
  }

  nsDomain4 = [(FPDDomain *)self nsDomain];
  containsPhotos = [nsDomain4 containsPhotos];

  if (containsPhotos)
  {
    [toCopy write:@" (photos)"];
  }

  nsDomain5 = [(FPDDomain *)self nsDomain];
  readOnly = [nsDomain5 readOnly];

  if (readOnly)
  {
    [toCopy write:@" (readOnly)"];
  }

  nsDomain6 = [(FPDDomain *)self nsDomain];
  isErasable = [nsDomain6 isErasable];

  if (isErasable)
  {
    [toCopy write:@" (erasable)"];
  }

  nsDomain7 = [(FPDDomain *)self nsDomain];
  isContentManaged = [nsDomain7 isContentManaged];

  if (isContentManaged)
  {
    [toCopy startFgColor:1];
    [toCopy startAttributes:2];
    [toCopy write:@" (managed)"];
    [toCopy reset];
  }

  [toCopy write:@"\n"];
  [toCopy write:@"-----------------------------------------------------\n"];
  session = [(FPDDomain *)self session];
  [session dumpStateTo:toCopy];

  if (![(FPDDomain *)self userEnabled])
  {
    [toCopy startFgColor:3];
    [toCopy write:@"  + (⏹  user-disabled)\n"];
    [toCopy reset];
  }

  if (self->_unableToStartup)
  {
    [toCopy startFgColor:1];
    startupError = [(FPDDomain *)self startupError];
    v36 = [startupError fp_isFileProviderInternalError:22];

    if (v36)
    {
      [toCopy write:@"  + (⏹  unable to startup - needs reimport)\n"];
    }

    else
    {
      fp_prettyDescription = [(NSError *)self->_startupError fp_prettyDescription];
      [toCopy write:{@"  + (⏹  unable to startup)\n    %@\n", fp_prettyDescription}];
    }

    [toCopy reset];
  }

  if ([(FPDDomain *)self disconnectionState]!= 1)
  {
    [toCopy startFgColor:3];
    [(FPDDomain *)self disconnectionState];
    disconnectionReason = [domainCopy disconnectionReason];
    v39 = FPConnectionStateToPrettyString();

    [toCopy write:{@"  + %@\n", v39}];
    [toCopy reset];
  }

  WeakRetained = objc_loadWeakRetained(&self->_provider);
  isAppExtensionReachable = [WeakRetained isAppExtensionReachable];

  if ((isAppExtensionReachable & 1) == 0)
  {
    [toCopy startFgColor:3];
    [toCopy write:@"  + (❔ app-ext not reachable)\n"];
    [toCopy reset];
  }

  if ([(FPDDomain *)self ejectable])
  {
    [toCopy startFgColor:9];
    [toCopy write:@"  + (ejectable)\n"];
    [toCopy reset];
  }

  nsDomain8 = [(FPDDomain *)self nsDomain];
  isReplicated = [nsDomain8 isReplicated];

  v44 = @"repl,";
  if (!isReplicated)
  {
    v44 = &stru_1F4C2FFD0;
  }

  v45 = v44;
  v46 = &stru_1F4C2FFD0;
  v47 = &stru_1F4C2FFD0;
  v48 = &stru_1F4C2FFD0;
  if (isReplicated)
  {
    nsDomain9 = [(FPDDomain *)self nsDomain];
    supportsSyncingTrash = [nsDomain9 supportsSyncingTrash];
    v51 = @"syncTrash,";
    if (!supportsSyncingTrash)
    {
      v51 = &stru_1F4C2FFD0;
    }

    v52 = v51;

    nsDomain10 = [(FPDDomain *)self nsDomain];
    supportsSearch = [nsDomain10 supportsSearch];
    v55 = @"searchLegacy,";
    if (!supportsSearch)
    {
      v55 = &stru_1F4C2FFD0;
    }

    v46 = v55;

    nsDomain11 = [(FPDDomain *)self nsDomain];
    supportsStringSearchRequest = [nsDomain11 supportsStringSearchRequest];
    v58 = @"search,";
    if (!supportsStringSearchRequest)
    {
      v58 = &stru_1F4C2FFD0;
    }

    v47 = v58;

    nsDomain12 = [(FPDDomain *)self nsDomain];
    supportsRemoteVersions = [nsDomain12 supportsRemoteVersions];
    v61 = @"remoteVersions,";
    if (!supportsRemoteVersions)
    {
      v61 = &stru_1F4C2FFD0;
    }

    v62 = v61;

    v48 = v62;
    v18 = v52;
  }

  v118 = v48;
  v119 = v47;
  [toCopy write:{@"  + features: %@%@%@%@%@\n", v45, v18, v47, v46, v48}];
  rootURLs = [(FPDDomain *)self rootURLs];
  v64 = [rootURLs count];

  selfCopy = self;
  v121 = v45;
  v122 = v18;
  v120 = v46;
  if (v64)
  {
    rootURLs2 = [(FPDDomain *)self rootURLs];
    v66 = [rootURLs2 count];

    if (v66 == 1)
    {
      rootURLs3 = [(FPDDomain *)self rootURLs];
      firstObject = [rootURLs3 firstObject];
      fp_shortDescription = [firstObject fp_shortDescription];
      [toCopy write:{@"  + root: %@\n", fp_shortDescription}];
    }

    else
    {
      v70 = domainCopy;
      [toCopy write:@"  + roots:\n"];
      v137 = 0u;
      v138 = 0u;
      v136 = 0u;
      v135 = 0u;
      rootURLs4 = [(FPDDomain *)self rootURLs];
      v72 = [rootURLs4 countByEnumeratingWithState:&v135 objects:v140 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v136;
        do
        {
          for (i = 0; i != v73; ++i)
          {
            if (*v136 != v74)
            {
              objc_enumerationMutation(rootURLs4);
            }

            fp_shortDescription2 = [*(*(&v135 + 1) + 8 * i) fp_shortDescription];
            [toCopy write:{@"    + %@\n", fp_shortDescription2}];
          }

          v73 = [rootURLs4 countByEnumeratingWithState:&v135 objects:v140 count:16];
        }

        while (v73);
      }

      domainCopy = v70;
      self = selfCopy;
    }
  }

  else
  {
    [toCopy startFgColor:1];
    [toCopy write:@"  + no root\n"];
    [toCopy reset];
  }

  [toCopy write:{@"  + FPDDomain instance: <%@:%p>\n", objc_opt_class(), self}];
  [toCopy write:{@"      - default backend: <%@:%p>\n", objc_opt_class(), self->_defaultBackend}];
  [toCopy write:{@"      - extension backend: <%@:%p>\n", objc_opt_class(), self->_extensionBackend}];
  [toCopy write:{@"      - deactivated backend: <%@:%p>\n", objc_opt_class(), self->_deactivatedBackend}];
  [toCopy write:{@"      - volume: %@\n", self->_volume}];
  nsDomain13 = [(FPDDomain *)self nsDomain];
  personaIdentifier = [nsDomain13 personaIdentifier];
  v79 = objc_loadWeakRetained(&self->_provider);
  descriptor = [v79 descriptor];
  personaIdentifier2 = [descriptor personaIdentifier];
  v82 = personaIdentifier2;
  v83 = toCopy;
  v125 = domainCopy;
  if (personaIdentifier == personaIdentifier2)
  {
  }

  else
  {
    [(FPDDomain *)self nsDomain];
    v84 = v117 = personaIdentifier;
    personaIdentifier3 = [v84 personaIdentifier];
    v86 = objc_loadWeakRetained(&self->_provider);
    [v86 descriptor];
    v88 = v87 = nsDomain13;
    personaIdentifier4 = [v88 personaIdentifier];
    v116 = [personaIdentifier3 isEqual:personaIdentifier4];

    toCopy = v83;
    domainCopy = v125;
    if ((v116 & 1) == 0)
    {
      [v83 startFgColor:1];
    }
  }

  v90 = selfCopy;
  nsDomain14 = [(FPDDomain *)selfCopy nsDomain];
  personaIdentifier5 = [nsDomain14 personaIdentifier];
  v93 = personaIdentifier5;
  v94 = @"none";
  if (personaIdentifier5)
  {
    v94 = personaIdentifier5;
  }

  [toCopy write:{@"  + persona: %@\n", v94}];

  [toCopy reset];
  nsDomain15 = [(FPDDomain *)selfCopy nsDomain];
  userInfo = [nsDomain15 userInfo];

  if (userInfo)
  {
    nsDomain16 = [(FPDDomain *)selfCopy nsDomain];
    userInfo2 = [nsDomain16 userInfo];

    [toCopy write:{@"  + userInfo: %d keys\n", objc_msgSend(userInfo2, "count")}];
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v99 = userInfo2;
    v100 = [v99 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v132;
      do
      {
        for (j = 0; j != v101; ++j)
        {
          if (*v132 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v104 = *(*(&v131 + 1) + 8 * j);
          if ((options & 2) != 0)
          {
            fp_obfuscatedFilename3 = [v99 objectForKeyedSubscript:*(*(&v131 + 1) + 8 * j)];
            v109 = objc_opt_class();
            v106 = NSStringFromClass(v109);
            v108 = [v99 objectForKeyedSubscript:v104];
            v114 = v104;
            toCopy = v83;
            [v83 write:{@"      %@: %@ - %@\n", v114, v106, v108}];
          }

          else
          {
            fp_obfuscatedFilename3 = [*(*(&v131 + 1) + 8 * j) fp_obfuscatedFilename];
            v106 = [v99 objectForKeyedSubscript:v104];
            v107 = objc_opt_class();
            v108 = NSStringFromClass(v107);
            toCopy = v83;
            [v83 write:{@"      %@: %@\n", fp_obfuscatedFilename3, v108, v115}];
          }
        }

        v101 = [v99 countByEnumeratingWithState:&v131 objects:v139 count:16];
      }

      while (v101);
    }

    domainCopy = v125;
    v90 = selfCopy;
  }

  [toCopy write:@"  + indexer:\n"];
  indexer = [(FPDDomain *)v90 indexer];
  [indexer dumpStateTo:toCopy];

  defaultBackend = [(FPDDomain *)v90 defaultBackend];
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke;
  v128[3] = &unk_1E83BFA20;
  v128[4] = v90;
  v129 = toCopy;
  v130 = handlerCopy;
  v112 = handlerCopy;
  v113 = toCopy;
  [defaultBackend dumpStateTo:v113 options:options request:requestCopy completionHandler:v128];
}

void __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke_2;
  v8[3] = &unk_1E83BF228;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v6 = *(a1 + 48);
  v10 = v3;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

void __74__FPDDomain_dumpStateTo_providerDomain_options_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 208));
  v3 = [WeakRetained server];
  v4 = [v3 presenterManager];
  v5 = [v4 presentersForDomain:*(a1 + 32)];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) dumpStateTo:{*(a1 + 40), v11}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [*(a1 + 40) write:@"\n"];
  (*(*(a1 + 56) + 16))();
}

- (id)providerSupportURL
{
  provider = [(FPDDomain *)self provider];
  identifier = [provider identifier];
  v18 = 0;
  v5 = [identifier fp_isValidProviderIdentifierWithError:&v18];
  v6 = v18;

  if ((v5 & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    provider2 = [(FPDDomain *)self provider];
    v16 = identifier2 = [provider2 identifier];

    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain providerSupportURL]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 2334, [v16 UTF8String]);
  }

  volume = [(FPDDomain *)self volume];
  systemDirectory = [volume systemDirectory];
  provider3 = [(FPDDomain *)self provider];
  identifier3 = [provider3 identifier];
  v11 = [systemDirectory URLByAppendingPathComponent:identifier3 isDirectory:1];

  return v11;
}

- (NSURL)supportURL
{
  identifier = [(FPDDomain *)self identifier];
  v15 = 0;
  v4 = [identifier fp_isValidDomainIdentifierWithError:&v15];
  v5 = v15;

  if ((v4 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    provider = [(FPDDomain *)self provider];
    v13 = identifier2 = [provider identifier];

    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDDomain supportURL]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDDomain.m", 2342, [v13 UTF8String]);
  }

  providerSupportURL = [(FPDDomain *)self providerSupportURL];
  identifier3 = [(FPDDomain *)self identifier];
  v8 = [providerSupportURL URLByAppendingPathComponent:identifier3 isDirectory:1];

  return v8;
}

- (id)cleanupDomainWithMode:(unint64_t)mode error:(id *)error
{
  selfCopy = self;
  v6 = FPDDomain.cleanupDomain(with:)(mode);

  return v6;
}

- (BOOL)forceRecursiveRemoveAt:(id)at error:(id *)error
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E59D8();
  selfCopy = self;
  sub_1CF1B5EF0(v8);
  (*(v6 + 8))(v8, v5);

  return 1;
}

- (id)moveAwaySyncRootAndReturnError:(id *)error
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  selfCopy = self;
  volume = [(FPDDomain *)selfCopy volume];
  removedURL = [(FPDVolume *)volume removedURL];

  sub_1CF9E59D8();
  v13[2].isa = v7;
  sub_1CF1AF818(1702260589, 0xE400000000000000, sub_1CF1B7E48, v13);

  v11 = sub_1CF9E5928();
  (*(v5 + 8))(v7, v4);

  return v11;
}

- (void)removeEbihilSymlink
{
  selfCopy = self;
  sub_1CF1B394C();
}

- (BOOL)removeEbihilSymlinkFromDefaultLocation
{
  selfCopy = self;
  v3 = sub_1CF1B3A1C();

  return v3 & 1;
}

- (id)getDefaultRootExposureSymlinkURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_1CF1B3FCC(v5);

  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1CF9E5928();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)unregisterFromSpaceForceWithUrl:(id)url
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (url)
  {
    sub_1CF9E59D8();
    v8 = sub_1CF9E5A58();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1CF9E5A58();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_1CF1B4D9C();

  sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
}

- (BOOL)mergeSyncRootsWithPathsManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  selfCopy = self;
  sub_1CF1B68F0();

  return 1;
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __41__FPDDomain_createRootURLWithCompletion___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_1_2(&dword_1CEFC7000, a2, a3, "[DEBUG] %@: creating default root", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __88__FPDDomain__startObservingRootAndResumeIndexerWithReason_userAllowedDBDrop_completion___block_invoke_132_cold_2(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __81__FPDDomain_createRootAndObserveIfNeededWithReason_userAllowedDBDrop_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v6, v4, "[ERROR] %@: error while creating root for domain: %@", v5);
}

- (void)_startWithReason:userAllowedDBDrop:completion:.cold.3()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_7_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, v6, v4, "[ERROR] cannot create indexer for domain %@: %@", v5);
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_15_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)cleanupDomainWithMode:(uint64_t)a3 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a2 = 138412546;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2080;
  *(a2 + 14) = a1;
  OUTLINED_FUNCTION_13_0(&dword_1CEFC7000, a4, a3, "[ERROR] failed removing domainSupportFolder at %@: %s", a2);
}

void __35__FPDDomain_cleanupDomainWithMode___block_invoke_158_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) indexer];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __117__FPDDomain__provideItemAtURL_withReaderID_withProcessID_withAuditToken_kernelInfo_readingOptions_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_1(void *a1)
{
  v1 = [a1 progress];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __54__FPDDomain__cancelProvidingItemAtURL_toReaderWithID___block_invoke_cold_2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_14(&dword_1CEFC7000, a2, a3, "[ERROR] got cancellation request for unknown reader ID %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_writerWithID:didFinishWritingForURL:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0(v1, v3, v4, 5.778e-34);
  _os_log_debug_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] The item at %@ is provided by the domain %@", v5, 0x16u);
}

void __50__FPDDomain__writerWithID_didFinishWritingForURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v1 = [OUTLINED_FUNCTION_8(v0) fp_shortDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_providedItemAtURL:didGainPresenterWithInfo:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__FPDDomain__providedItemAtURL_didGainPresenterWithInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __65__FPDDomain__providedItemAtURL_withPresenterWithID_didMoveToURL___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [OUTLINED_FUNCTION_8(v1) fp_shortDescription];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __57__FPDDomain__movingItemAtURL_withInfo_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  [v1 requiresProviding];
  v3 = [*(v0 + 32) fp_shortDescription];
  v4 = [v2 syncRootID];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __34__FPDDomain__registerInSpaceForce__block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = [v6 checkableURLs];
  v8 = [*(a1 + 32) provider];
  v9 = [v8 identifier];
  v10 = [a2 fp_prettyDescription];
  v13 = 138413058;
  v14 = v6;
  OUTLINED_FUNCTION_3_1();
  v15 = v7;
  v16 = v11;
  v17 = v9;
  v18 = v11;
  v19 = v12;
  _os_log_fault_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_FAULT, "[CRIT] %@: paths %@ for bundle %@ Space Attribution registration error: %@", &v13, 0x2Au);
}

void __42__FPDDomain__unregisterURLFromSpaceForce___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 40);
  v4 = [*(v2 + 32) provider];
  v5 = [v4 identifier];
  v6 = [v1 fp_prettyDescription];
  OUTLINED_FUNCTION_3_0();
  v10 = v3;
  v11 = v7;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  _os_log_fault_impl(&dword_1CEFC7000, v0, OS_LOG_TYPE_FAULT, "[CRIT] %@: path %@ for bundle %@ Space Attribution unregistration error: %@", v9, 0x2Au);
}

void __69__FPDDomain_callExtensionForItemDidChange_request_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11();
  v2 = [*(v1 + 32) identifier];
  v3 = [v0 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __64__FPDDomain_downloadVersionThumbnail_version_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v2 = [OUTLINED_FUNCTION_8(a1) providerItemID];
  v3 = [*(a1 + 40) etag];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end