@interface FPDProvider
+ (id)defaultNSDomainForDescriptor:(id)descriptor;
+ (id)fpfsDomainURLIsRootOf:(id)of;
+ (id)getXattr:(const char *)xattr at:(const char *)at;
+ (id)onDiskProvidersForServer:(id)server;
+ (id)parseDomainProperties:(id)properties descriptor:(id)descriptor volume:(id)volume replicatedByDefault:(BOOL)default;
+ (void)_garbageCollectFoldersWithNoRelatedDomain:(id)domain supportDir:(id)dir;
+ (void)dumpXattrsForContentsOfDirectoryAtURL:(id)l dumper:(id)dumper;
+ (void)dumpXattrsForItemAtURL:(id)l to:(id)to;
+ (void)dumpXattrsForSyncRootDirectoryOfVolume:(id)volume dumper:(id)dumper;
+ (void)dumpXattrsForSystemDirectoryOfVolume:(id)volume dumper:(id)dumper;
- (BOOL)_supportsFPFS;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKnownFolderSyncingAllowedByManagement;
- (BOOL)shouldHideDomainDisplayName;
- (BOOL)supportsFPFS;
- (BOOL)testingProvider;
- (FPDExtension)asAppExtensionBackedProvider;
- (FPDProvider)initWithDescriptor:(id)descriptor server:(id)server;
- (NSArray)providedItemsURLs;
- (NSDictionary)nsDomainsByID;
- (NSDictionary)relevantDomainsByID;
- (id)_domainsWithFilter:(id)filter;
- (id)_recreateDefaultDomainIfNeededOnVolume:(id)volume;
- (id)defaultNSDomain;
- (id)description;
- (id)domainForIdentifier:(id)identifier reason:(unint64_t *)reason;
- (id)domainForRealPathURLFast:(id)fast;
- (id)domainForRealPathURLSlow:(id)slow;
- (id)domainForURL:(id)l;
- (id)importDomainsFromLibrary:(id)library updatePlist:(BOOL)plist;
- (id)loggerForDomainWithIdentifier:(id)identifier;
- (id)newDomainFromNSDomain:(id)domain volume:(id)volume;
- (id)providerDomainForDomain:(id)domain;
- (void)_setEnabledOrHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier newValue:(BOOL)value request:(id)request completionHandler:(id)handler;
- (void)_startOrClearDomain:(id)domain userAllowedDBDrop:(BOOL)drop reason:(id)reason completion:(id)completion;
- (void)_writeDomainPropertiesIntoLibrary:(id)library ifChangedFrom:(id)from;
- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l knownFolders:(id)folders userAllowedDBDrop:(BOOL)drop unableToStartup:(BOOL)startup startupError:(id)error reloadDomain:(BOOL)reloadDomain request:(id)self0 completionHandler:(id)self1;
- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders request:(id)request completionHandler:(id)handler;
- (void)dumpAllDomains:(id)domains domains:(id)a4 auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpDomain:(id)domain allowedToDump:(BOOL)dump dumper:(id)dumper options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (void)dumpStateTo:(id)to auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler;
- (void)dumpValue:(id)value forKey:(id)key to:(id)to;
- (void)dumpXattrsForDomains:(id)domains dumper:(id)dumper;
- (void)enableAllDomainsIfNoUserElection;
- (void)fetchTelemetryReportForAllDomains:(id)domains alwaysFetchExpandedUsageStats:(BOOL)stats resultDictionary:(id)dictionary completionHandler:(id)handler;
- (void)fetchTelemetryReportWithProviderFilter:(id)filter alwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler;
- (void)invalidateAllDomainsOnVolume:(id)volume reason:(id)reason;
- (void)invalidateSingleDomain:(id)domain reason:(id)reason;
- (void)invalidateWithReason:(id)reason;
- (void)materializeRootForDomain:(id)domain;
- (void)reloadDomain:(id)domain unableToStartup:(BOOL)startup startupError:(id)error completionHandler:(id)handler;
- (void)removeAllDomainsForRequest:(id)request completionHandler:(id)handler;
- (void)removeDomain:(id)domain mode:(unint64_t)mode request:(id)request completionHandler:(id)handler;
- (void)setDomainUserInfo:(id)info forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setEjectable:(BOOL)ejectable forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setReplicatedKnownFolders:(unint64_t)folders forDomainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)startDomains:(id)domains completion:(id)completion;
- (void)startWithCompletion:(id)completion;
- (void)writeAllDomainProperties;
@end

@implementation FPDProvider

- (NSDictionary)relevantDomainsByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_domainsByID fp_filter:&__block_literal_global_176];
  objc_sync_exit(selfCopy);

  return v3;
}

uint64_t __34__FPDProvider_relevantDomainsByID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 nsDomain];
  if ([v4 isHidden])
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E6967178]] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSDictionary)nsDomainsByID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_opt_new();
  relevantDomainsByID = [(FPDProvider *)selfCopy relevantDomainsByID];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__FPDProvider_nsDomainsByID__block_invoke;
  v7[3] = &unk_1E83BFD50;
  v5 = v3;
  v8 = v5;
  [relevantDomainsByID enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(selfCopy);

  return v5;
}

void __28__FPDProvider_nsDomainsByID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 nsDomainOrNilForDefault];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (NSArray)providedItemsURLs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        rootURLs = [*(*(&v11 + 1) + 8 * i) rootURLs];
        [v3 addObjectsFromArray:rootURLs];
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)shouldHideDomainDisplayName
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [(FPDProvider *)selfCopy identifier];
  v4 = [identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProviderManaged"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    relevantDomainsByID = [(FPDProvider *)selfCopy relevantDomainsByID];
    v5 = [relevantDomainsByID count] < 2;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)isKnownFolderSyncingAllowedByManagement
{
  if (isKnownFolderSyncingAllowedByManagement_onceToken != -1)
  {
    [FPDProvider isKnownFolderSyncingAllowedByManagement];
  }

  descriptor = [(FPDProvider *)self descriptor];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];

  if (isKnownFolderSyncingAllowedByManagement_knownFolderSyncingIsGloballyDisallowed)
  {
    v5 = 0;
  }

  else if (isKnownFolderSyncingAllowedByManagement_allowedBundleIDs)
  {
    v5 = [isKnownFolderSyncingAllowedByManagement_allowedBundleIDs containsObject:topLevelBundleIdentifier];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (FPDProvider)initWithDescriptor:(id)descriptor server:(id)server
{
  v57 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  serverCopy = server;
  v55.receiver = self;
  v55.super_class = FPDProvider;
  v9 = [(FPDProvider *)&v55 init];
  if (v9)
  {
    v10 = objc_opt_new();
    domainsByID = v9->_domainsByID;
    v9->_domainsByID = v10;

    v12 = objc_opt_new();
    domainsByRootPath = v9->_domainsByRootPath;
    v9->_domainsByRootPath = v12;

    objc_storeStrong(&v9->_descriptor, descriptor);
    identifier = [(FPDProviderDescriptor *)v9->_descriptor identifier];
    v15 = [identifier stringByAppendingString:@".domain"];
    v16 = v15;
    uTF8String = [v15 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    domainQueue = v9->_domainQueue;
    v9->_domainQueue = v19;

    v21 = [identifier stringByAppendingString:@".queue"];
    v22 = v21;
    uTF8String2 = [v21 UTF8String];
    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_create(uTF8String2, v24);
    queue = v9->_queue;
    v9->_queue = v25;

    v27 = [identifier stringByAppendingString:@".presenters"];
    v28 = v27;
    uTF8String3 = [v27 UTF8String];
    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create(uTF8String3, v30);
    presentersQueue = v9->_presentersQueue;
    v9->_presentersQueue = v31;

    objc_storeStrong(&v9->_server, server);
    extensionManager = [serverCopy extensionManager];
    manager = v9->_manager;
    v9->_manager = extensionManager;

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v54 = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    personaIdentifier = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
    if (userPersonaUniqueString == personaIdentifier)
    {
      v46 = 0;
    }

    else
    {
      personaIdentifier2 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
      v40 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

      if ((v40 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
      {
        v46 = 0;
LABEL_15:
        fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
        v49 = [fp_supportDirectory URLByAppendingPathComponent:identifier isDirectory:1];
        objc_storeStrong(&v9->_supportURL, v49);
        v50 = [v49 URLByAppendingPathComponent:@"Provider.plist" isDirectory:0];
        providerPlistURL = v9->_providerPlistURL;
        v9->_providerPlistURL = v50;

        _FPRestorePersona();
        goto LABEL_16;
      }

      v53 = 0;
      v41 = [currentPersona copyCurrentPersonaContextWithError:&v53];
      v42 = v53;
      v43 = v54;
      v54 = v41;

      if (v42)
      {
        v44 = fp_current_or_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [FPDProviderDescriptor initWithExtensionRecord:];
        }
      }

      personaIdentifier3 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
      v46 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

      if (!v46)
      {
        goto LABEL_15;
      }

      personaIdentifier = fp_current_or_default_log();
      if (os_log_type_enabled(personaIdentifier, OS_LOG_TYPE_ERROR))
      {
        personaIdentifier4 = [(FPDProviderDescriptor *)v9->_descriptor personaIdentifier];
        [(FPDProvider *)personaIdentifier4 initWithDescriptor:v46 server:v56];
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  return v9;
}

- (void)startDomains:(id)domains completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  block = completion;
  dispatch_assert_queue_V2(self->_domainQueue);
  v7 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = domainsCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 log];
        v21 = fpfs_adopt_log();

        if (([v12 started] & 1) == 0 && (objc_msgSend(v12, "invalidated") & 1) == 0)
        {
          domainsByID = self->_domainsByID;
          identifier = [v12 identifier];
          v16 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:identifier];
          LOBYTE(domainsByID) = v12 == v16;

          if (domainsByID)
          {
            [v12 finishSetup];
            selfCopy = self;
            objc_sync_enter(selfCopy);
            addRootPathKeys(self->_domainsByRootPath, v12);
            objc_sync_exit(selfCopy);

            dispatch_group_enter(v7);
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __39__FPDProvider_startDomains_completion___block_invoke;
            v19[3] = &unk_1E83BE068;
            v20 = v7;
            [(FPDProvider *)selfCopy _startOrClearDomain:v12 userAllowedDBDrop:0 reason:@"domainStartup" completion:v19];
          }
        }

        __fp_pop_log();
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  dispatch_group_notify(v7, self->_queue, block);
}

- (void)startWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  section = __fp_create_section();
  v13 = section;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProvider *)self identifier];
    *buf = 134218242;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Starting domains for %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  domainQueue = self->_domainQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__FPDProvider_startWithCompletion___block_invoke;
  v10[3] = &unk_1E83BFBB0;
  v11 = completionCopy;
  v12 = buf;
  v10[4] = self;
  v9 = completionCopy;
  dispatch_sync(domainQueue, v10);

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();
}

uint64_t __35__FPDProvider_startWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(*(a1 + 32) + 80) allValues];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  objc_sync_exit(v2);
  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = *(a1 + 32);

  return [v8 startDomains:v7 completion:v6];
}

- (void)invalidateSingleDomain:(id)domain reason:(id)reason
{
  v22 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  reasonCopy = reason;
  section = __fp_create_section();
  v15 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v17 = section;
    v18 = 2114;
    v19 = domainCopy;
    v20 = 2114;
    v21 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Tearing down %{public}@ (reason: %{public}@)", buf, 0x20u);
  }

  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPDProvider_invalidateSingleDomain_reason___block_invoke;
  block[3] = &unk_1E83BE158;
  block[4] = self;
  v11 = domainCopy;
  v14 = v11;
  dispatch_sync(domainQueue, block);
  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating domain %@ (reason: %@)", v11, reasonCopy];
  [v11 invalidateWithReason:reasonCopy];

  [v11 invalidateSession];
  __fp_leave_section_Notice();
}

void __45__FPDProvider_invalidateSingleDomain_reason___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) nsDomain];
  v4 = [v3 identifier];
  v5 = [v4 precomposedStringWithCanonicalMapping];
  [v2 removeObjectForKey:v5];

  removeRootPathKeys(*(*(a1 + 32) + 88), *(a1 + 40));
  objc_sync_exit(obj);
}

- (void)invalidateAllDomainsOnVolume:(id)volume reason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  reasonCopy = reason;
  section = __fp_create_section();
  v25 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = volumeCopy;
    *&buf[22] = 2114;
    v28 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v9, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Tearing down all domains on %{public}@ (reason: %{public}@)", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__8;
  v29 = __Block_byref_object_dispose__8;
  v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__FPDProvider_invalidateAllDomainsOnVolume_reason___block_invoke;
  block[3] = &unk_1E83BFBD8;
  block[4] = self;
  v11 = volumeCopy;
  v23 = v11;
  v24 = buf;
  dispatch_sync(domainQueue, block);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(*&buf[8] + 40);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating domain %@ (reason: %@)", v16, reasonCopy, v18];
        [v16 invalidateWithReason:v17];

        [v16 invalidateSession];
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();
}

void __51__FPDProvider_invalidateAllDomainsOnVolume_reason___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [*(a1 + 32) domainsByID];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v5)
  {
    v7 = *v27;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        v10 = [v9 volume];
        v11 = v10 == *(a1 + 40);

        if (v11)
        {
          v12 = fp_current_or_default_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v32 = v9;
            _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] Invalidating domain %@...", buf, 0xCu);
          }

          [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
          removeRootPathKeys(*(*(a1 + 32) + 88), v9);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(*(*(a1 + 48) + 8) + 40);
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(a1 + 32) + 80);
        v18 = [*(*(&v22 + 1) + 8 * j) nsDomain];
        v19 = [v18 identifier];
        v20 = [v19 precomposedStringWithCanonicalMapping];
        [v17 removeObjectForKey:v20];
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v2);
}

- (void)invalidateWithReason:(id)reason
{
  v62 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    *&buf[4] = section;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v59 = reasonCopy;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Invalidating %{public}@ (reason: %{public}@)...", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v59 = __Block_byref_object_copy__8;
  v60 = __Block_byref_object_dispose__8;
  v61 = 0;
  domainQueue = self->_domainQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPDProvider_invalidateWithReason___block_invoke;
  block[3] = &unk_1E83BF3D8;
  block[4] = self;
  block[5] = buf;
  dispatch_sync(domainQueue, block);
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(*&buf[8] + 40);
  v5 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v5)
  {
    v43 = *v48;
    do
    {
      v6 = 0;
      do
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v47 + 1) + 8 * v6);
        reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidating the provider instance (reason: %@)", reasonCopy];
        [v7 invalidateWithReason:reasonCopy];

        nsDomain = [v7 nsDomain];
        personaIdentifier = [nsDomain personaIdentifier];

        if (personaIdentifier)
        {
          mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
          currentPersona = [mEMORY[0x1E69DF068] currentPersona];

          v46 = 0;
          userPersonaUniqueString = [currentPersona userPersonaUniqueString];
          nsDomain2 = [v7 nsDomain];
          personaIdentifier2 = [nsDomain2 personaIdentifier];
          v16 = personaIdentifier2;
          if (userPersonaUniqueString != personaIdentifier2)
          {
            nsDomain3 = [v7 nsDomain];
            personaIdentifier3 = [nsDomain3 personaIdentifier];
            v19 = [userPersonaUniqueString isEqualToString:personaIdentifier3];

            if ((v19 & 1) != 0 || !voucher_process_can_use_arbitrary_personas())
            {
              v26 = 0;
            }

            else
            {
              v45 = 0;
              v20 = [currentPersona copyCurrentPersonaContextWithError:&v45];
              v21 = v45;
              v22 = v46;
              v46 = v20;

              if (v21)
              {
                v23 = fp_current_or_default_log();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *v53 = 138412290;
                  v54 = v21;
                  _os_log_error_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", v53, 0xCu);
                }
              }

              nsDomain4 = [v7 nsDomain];
              personaIdentifier4 = [nsDomain4 personaIdentifier];
              v26 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier4];

              if (v26)
              {
                nsDomain2 = fp_current_or_default_log();
                if (os_log_type_enabled(nsDomain2, OS_LOG_TYPE_ERROR))
                {
                  nsDomain5 = [v7 nsDomain];
                  personaIdentifier5 = [nsDomain5 personaIdentifier];
                  *v53 = 138412546;
                  v54 = personaIdentifier5;
                  v55 = 2112;
                  v56 = v26;
                  _os_log_error_impl(&dword_1CEFC7000, nsDomain2, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", v53, 0x16u);
                }

LABEL_21:
              }
            }

            mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
            currentPersona2 = [mEMORY[0x1E69DF068]2 currentPersona];
            userPersonaUniqueString2 = [currentPersona2 userPersonaUniqueString];

            if (userPersonaUniqueString2)
            {
              nsDomain6 = [v7 nsDomain];
              personaIdentifier6 = [nsDomain6 personaIdentifier];
              v34 = [userPersonaUniqueString2 isEqualToString:personaIdentifier6];

              if ((v34 & 1) == 0)
              {
                v35 = fp_current_or_default_log();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  nsDomain7 = [v7 nsDomain];
                  personaIdentifier7 = [nsDomain7 personaIdentifier];
                  *v53 = 138412290;
                  v54 = personaIdentifier7;
                  _os_log_fault_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_FAULT, "[CRIT] domain's persona %@ doesn't exist anymore, cleaning up", v53, 0xCu);
                }

                v36 = [v7 cleanupDomainWithMode:0];
              }
            }

            _FPRestorePersona();
            goto LABEL_28;
          }

          v26 = 0;
          goto LABEL_21;
        }

LABEL_28:
        [v7 invalidateSession];
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v5);
  }

  server = self->_server;
  self->_server = 0;

  manager = self->_manager;
  self->_manager = 0;

  _Block_object_dispose(buf, 8);
  __fp_leave_section_Notice();
}

void __36__FPDProvider_invalidateWithReason___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 80) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 88);
  *(v7 + 88) = 0;

  objc_sync_exit(obj);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FPDProviderDescriptor *)self->_descriptor identifier];
  extensionUUID = [(FPDProviderDescriptor *)self->_descriptor extensionUUID];
  personaIdentifier = [(FPDProviderDescriptor *)self->_descriptor personaIdentifier];
  v8 = [v3 stringWithFormat:@"<%@:%p %@ uuid:%@ persona:%@>", v4, self, identifier, extensionUUID, personaIdentifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      descriptor = self->_descriptor;
      descriptor = [(FPDProvider *)equalCopy descriptor];
      v6 = [(FPDProviderDescriptor *)descriptor isEqual:descriptor];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)providerDomainForDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc(MEMORY[0x1E69673D8]);
  identifier = [(FPDProvider *)selfCopy identifier];
  nsDomain = [domainCopy nsDomain];
  v10 = [v7 initWithProviderID:identifier domain:nsDomain];

  descriptor = [(FPDProvider *)selfCopy descriptor];
  localizedName = [descriptor localizedName];
  v13 = localizedName;
  if (localizedName)
  {
    v14 = localizedName;
  }

  else
  {
    v14 = &stru_1F4C2FFD0;
  }

  [v10 setProviderDisplayName:v14];

  extensionPointVersion = [descriptor extensionPointVersion];
  [v10 setVersion:extensionPointVersion];

  supportedFileTypes = [descriptor supportedFileTypes];
  [v10 setSupportedFileTypes:supportedFileTypes];

  [v10 setSupportsEnumeration:{objc_msgSend(descriptor, "supportsEnumeration")}];
  [v10 setIsAvailableSystemWide:{objc_msgSend(descriptor, "isAvailableSystemWide")}];
  readonly = [descriptor readonly];
  if (readonly)
  {
    readOnly = 1;
  }

  else
  {
    nsDomain2 = [domainCopy nsDomain];
    readOnly = [nsDomain2 readOnly];
  }

  [v10 setReadOnly:readOnly];
  if ((readonly & 1) == 0)
  {
  }

  [v10 setCanDisable:{objc_msgSend(descriptor, "canToggleDomainVisibility")}];
  [v10 setShouldHideExtensionName:{objc_msgSend(descriptor, "shouldHideExtensionName")}];
  topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];
  [v10 setTopLevelBundleIdentifier:topLevelBundleIdentifier];

  topLevelBundleURL = [descriptor topLevelBundleURL];
  [v10 setTopLevelBundleURL:topLevelBundleURL];

  [v10 setUsesUniqueItemIdentifiersAcrossDevices:{objc_msgSend(descriptor, "usesUniqueItemIdentifiersAcrossDevices")}];
  supportedSearchFilters = [descriptor supportedSearchFilters];
  [v10 setSupportedSearchFilters:supportedSearchFilters];

  extensionBundleURL = [descriptor extensionBundleURL];
  [v10 setExtensionBundleURL:extensionBundleURL];

  [v10 setOwningApplicationIsHidden:{objc_msgSend(descriptor, "owningApplicationIsHidden")}];
  nsDomain3 = [domainCopy nsDomain];
  [v10 setSupportsPickingFolders:{objc_msgSend(domainCopy, "supportsPickingFolders")}];
  [v10 setUseFPFS:{objc_msgSend(domainCopy, "isUsingFPFS")}];
  [v10 setEnabled:{objc_msgSend(domainCopy, "userEnabled")}];
  [v10 setEjectable:{objc_msgSend(domainCopy, "ejectable")}];
  v33 = 0;
  v24 = [domainCopy rootURLsWithTransientState:&v33];
  [v10 setStorageURLs:v24];

  [v10 setStorageURLsAreInTransientState:v33];
  indexer = [domainCopy indexer];
  [v10 setNeedsAuthentication:{objc_msgSend(indexer, "needsAuthentication")}];

  [v10 setAllowsUserControlledEviction:{objc_msgSend(descriptor, "allowsUserControlledEviction")}];
  [v10 setAllowsSystemDeleteAlerts:{objc_msgSend(descriptor, "allowsSystemDeleteAlerts")}];
  [v10 setAllowsContextualMenuDownloadEntry:{objc_msgSend(descriptor, "allowsContextualMenuDownloadEntry")}];
  [v10 setDisconnectionState:{objc_msgSend(domainCopy, "disconnectionState")}];
  [v10 setAppliesChangesAtomically:{objc_msgSend(descriptor, "appliesChangesAtomically")}];
  domainUserInfo = [domainCopy domainUserInfo];
  [v10 setDomainUserInfo:domainUserInfo];

  [v10 setBackgroundActivityIsPaused:{objc_msgSend(domainCopy, "backgroundActivityIsPaused")}];
  [v10 setSupportsSyncingTrash:{objc_msgSend(domainCopy, "supportsSyncingTrash")}];
  [v10 setSupportsSearch:{objc_msgSend(domainCopy, "supportsSearch")}];
  [v10 setErrorGenerationCount:{objc_msgSend(domainCopy, "errorGenerationCount")}];
  indexer2 = [domainCopy indexer];
  [v10 setIsIndexed:{objc_msgSend(indexer2, "isIndexed")}];

  [v10 setSupportsRemoteVersions:{objc_msgSend(domainCopy, "supportsRemoteVersions")}];
  volume = [domainCopy volume];
  if ([volume role] == 1)
  {
    isKnownFolderSyncingAllowedByManagement = [(FPDProvider *)selfCopy isKnownFolderSyncingAllowedByManagement];

    if (!isKnownFolderSyncingAllowedByManagement)
    {
      goto LABEL_13;
    }

    volume = [domainCopy nsDomain];
    [v10 setSupportedKnownFolders:{objc_msgSend(volume, "supportedKnownFolders")}];
  }

LABEL_13:
  volume2 = [domainCopy volume];
  [v10 setIsOnMainVolume:{objc_msgSend(volume2, "role") == 1}];

  nsDomain4 = [domainCopy nsDomain];
  [v10 setSupportsSearchOnServer:{objc_msgSend(nsDomain4, "supportsStringSearchRequest")}];

  objc_sync_exit(selfCopy);

  return v10;
}

- (FPDExtension)asAppExtensionBackedProvider
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ UNREACHABLE: -asAppExtensionBackedProvider called on a non-app extension backed provider"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_fault_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v4, 0xCu);
  }

  __assert_rtn("-[FPDProvider asAppExtensionBackedProvider]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 343, [v2 UTF8String]);
}

- (BOOL)_supportsFPFS
{
  identifier = [(FPDProvider *)self identifier];
  v4 = [identifier isEqualToString:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];

  if (v4)
  {
    return 0;
  }

  identifier2 = [(FPDProvider *)self identifier];
  v6 = [identifier2 isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v6)
  {
    return 0;
  }

  identifier3 = [(FPDProvider *)self identifier];
  IsDeniedForFPFS = FPFSProviderIsDeniedForFPFS();

  return IsDeniedForFPFS ^ 1;
}

- (BOOL)supportsFPFS
{
  v11 = *MEMORY[0x1E69E9840];
  supportsEnumeration = [(FPDProvider *)self supportsEnumeration];
  if (supportsEnumeration)
  {
    if (![(FPDProvider *)self _supportsFPFS])
    {
      identifier = [(FPDProvider *)self identifier];
      IsForcedForFPFS = FPFSProviderIsForcedForFPFS();

      if (!IsForcedForFPFS)
      {
        LOBYTE(supportsEnumeration) = 0;
        return supportsEnumeration;
      }

      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        identifier2 = [(FPDProvider *)self identifier];
        v9 = 138412290;
        v10 = identifier2;
        _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_INFO, "[INFO] %@ is fpfs-forced", &v9, 0xCu);
      }
    }

    LOBYTE(supportsEnumeration) = 1;
  }

  return supportsEnumeration;
}

- (BOOL)testingProvider
{
  identifier = [(FPDProvider *)self identifier];
  v3 = [identifier isEqualToString:@"com.apple.FileProvider.TestingHarness.TestFileProvider"];

  return v3;
}

- (id)domainForURL:(id)l
{
  fp_realpathURL = [l fp_realpathURL];
  v5 = [(FPDProvider *)self domainForRealPathURLFast:fp_realpathURL];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(FPDProvider *)self domainForRealPathURLSlow:fp_realpathURL];
  }

  v8 = v7;

  return v8;
}

- (id)domainForRealPathURLFast:(id)fast
{
  v63 = *MEMORY[0x1E69E9840];
  fastCopy = fast;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = selfCopy;
  obj = selfCopy->_domainsByRootPath;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v5)
  {
    v46 = *v54;
    v45 = *MEMORY[0x1E6967178];
    *&v6 = 138412546;
    v39 = v6;
    while (2)
    {
      v7 = 0;
      v44 = v5;
      do
      {
        if (*v54 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [(NSMutableDictionary *)v47->_domainsByRootPath objectForKeyedSubscript:v8];
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:v45];

        if (v12)
        {
          v13 = 3;
        }

        else
        {
          path = [fastCopy path];
          v48 = [v8 fp_relativePathWithRealpath:path];

          if (v48)
          {
            domainsByID = v47->_domainsByID;
            identifier2 = [v10 identifier];
            precomposedStringWithCanonicalMapping = [identifier2 precomposedStringWithCanonicalMapping];
            v43 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

            if (v43 == v10)
            {
              rootURLs = [v10 rootURLs];
              v23 = [rootURLs copy];

              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v18 = v23;
              v24 = [v18 countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v24)
              {
                v25 = *v50;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v50 != v25)
                    {
                      objc_enumerationMutation(v18);
                    }

                    path2 = [*(*(&v49 + 1) + 8 * i) path];
                    fp_realpath = [path2 fp_realpath];

                    LOBYTE(path2) = [fp_realpath isEqual:v8];
                    if (path2)
                    {

                      v30 = fp_current_or_default_log();
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                      {
                        identifier3 = [v10 identifier];
                        fp_obfuscatedProviderDomainID = [identifier3 fp_obfuscatedProviderDomainID];
                        fp_shortDescription = [fastCopy fp_shortDescription];
                        *buf = v39;
                        v59 = fp_obfuscatedProviderDomainID;
                        v60 = 2112;
                        v61 = fp_shortDescription;
                        _os_log_debug_impl(&dword_1CEFC7000, v30, OS_LOG_TYPE_DEBUG, "[DEBUG] Found domain %@ with fast path for %@", buf, 0x16u);
                      }

                      v40 = v10;
                      v13 = 1;
                      goto LABEL_28;
                    }
                  }

                  v24 = [v18 countByEnumeratingWithState:&v49 objects:v57 count:16];
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

              v29 = fp_current_or_default_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                fp_shortDescription2 = [fastCopy fp_shortDescription];
                identifier4 = [v10 identifier];
                fp_obfuscatedProviderDomainID2 = [identifier4 fp_obfuscatedProviderDomainID];
                *buf = 138543618;
                v59 = fp_shortDescription2;
                v60 = 2114;
                v61 = fp_obfuscatedProviderDomainID2;
                _os_log_error_impl(&dword_1CEFC7000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Fast path %{public}@ for domain %{public}@ not accurate: root path not present", buf, 0x16u);
              }
            }

            else
            {
              v18 = fp_current_or_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                fp_prettyPath = [v8 fp_prettyPath];
                identifier5 = [v10 identifier];
                fp_obfuscatedProviderDomainID3 = [identifier5 fp_obfuscatedProviderDomainID];
                *buf = 138543618;
                v59 = fp_prettyPath;
                v60 = 2114;
                v61 = fp_obfuscatedProviderDomainID3;
                _os_log_error_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Fast path %{public}@ for domain %{public}@ not accurate: domain not in domainsByID", buf, 0x16u);
              }
            }

            v13 = 2;
LABEL_28:
          }

          else
          {
            v13 = 3;
          }
        }

        objc_autoreleasePoolPop(v9);
        if (v13 != 3)
        {
          if (v13)
          {
            v37 = v40;
          }

          else
          {
            v37 = 0;
          }

          goto LABEL_37;
        }

        ++v7;
      }

      while (v7 != v44);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0;
LABEL_37:

  objc_sync_exit(v47);

  return v37;
}

- (id)domainForRealPathURLSlow:(id)slow
{
  v23 = *MEMORY[0x1E69E9840];
  slowCopy = slow;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  objc_sync_exit(selfCopy);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = allValues;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    v11 = *MEMORY[0x1E6967178];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isProviderForRealPathURL:{slowCopy, v18}])
        {
          identifier = [v13 identifier];
          v15 = [identifier isEqualToString:v11];

          v16 = v13;
          if (!v15)
          {

            goto LABEL_13;
          }

          v8 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v8 = v8;
  v16 = v8;
LABEL_13:

  return v16;
}

void __54__FPDProvider_isKnownFolderSyncingAllowedByManagement__block_invoke()
{
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  if (([v5 objectIsForcedForKey:@"ManagementAllowsKnownFolderSyncing"] & 1) != 0 || FPIgnoresForcedKeyChecks())
  {
    isKnownFolderSyncingAllowedByManagement_knownFolderSyncingIsGloballyDisallowed = [v5 BOOLForKey:@"ManagementAllowsKnownFolderSyncing"] ^ 1;
  }

  if (([v5 objectIsForcedForKey:@"ManagementKnownFolderSyncingAllowList"] & 1) != 0 || FPIgnoresForcedKeyChecks())
  {
    v0 = [v5 stringArrayForKey:@"ManagementKnownFolderSyncingAllowList"];

    if (v0)
    {
      v1 = MEMORY[0x1E695DFD8];
      v2 = [v5 stringArrayForKey:@"ManagementKnownFolderSyncingAllowList"];
      v3 = [v1 setWithArray:v2];
      v4 = isKnownFolderSyncingAllowedByManagement_allowedBundleIDs;
      isKnownFolderSyncingAllowedByManagement_allowedBundleIDs = v3;
    }
  }
}

- (id)domainForIdentifier:(id)identifier reason:(unint64_t *)reason
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no domain identifier"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDProvider domainForIdentifier:reason:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 530, [v13 UTF8String]);
  }

  v7 = identifierCopy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainsByID = selfCopy->_domainsByID;
  precomposedStringWithCanonicalMapping = [v7 precomposedStringWithCanonicalMapping];
  v11 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

  if (reason && !v11)
  {
    *reason = 1;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (id)loggerForDomainWithIdentifier:(id)identifier
{
  identifierCopy = *MEMORY[0x1E6967178];
  if (identifier)
  {
    identifierCopy = identifier;
  }

  v5 = identifierCopy;
  v6 = MEMORY[0x1E696AEC0];
  identifier = [(FPDProvider *)self identifier];
  v8 = [v6 fp_providerDomainIDFromProviderID:identifier domainIdentifier:v5];

  fp_obfuscatedProviderDomainID = [v8 fp_obfuscatedProviderDomainID];
  [fp_obfuscatedProviderDomainID UTF8String];
  v10 = fpfs_create_log_for_provider();

  return v10;
}

+ (id)fpfsDomainURLIsRootOf:(id)of
{
  ofCopy = of;
  v4 = [ofCopy fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
  if (v4 && getxattr([ofCopy fileSystemRepresentation], "com.apple.fileprovider.detached#B", 0, 0, 0, 0) < 0 && getxattr(objc_msgSend(ofCopy, "fileSystemRepresentation"), "com.apple.fileprovider.detached", 0, 0, 0, 0) < 0 && getxattr(objc_msgSend(ofCopy, "fileSystemRepresentation"), "com.apple.fileprovider.detached#PN", 0, 0, 0, 0) < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)onDiskProvidersForServer:(id)server
{
  v75 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v5 = objc_opt_new();
  section = __fp_create_section();
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    fp_shortDescription = [fp_supportDirectory fp_shortDescription];
    *buf = 134218242;
    v72 = section;
    v73 = 2114;
    v74 = fp_shortDescription;
    _os_log_impl(&dword_1CEFC7000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Listing domains & providers in %{public}@", buf, 0x16u);
  }

  volumeManager = [serverCopy volumeManager];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __40__FPDProvider_onDiskProvidersForServer___block_invoke;
  v64[3] = &unk_1E83BFC00;
  v40 = defaultManager;
  v65 = v40;
  selfCopy = self;
  v50 = v5;
  v66 = v50;
  [volumeManager enumerateLibrariesWithBlock:v64];

  v42 = objc_opt_new();
  [v40 enumeratorAtURL:fp_supportDirectory includingPropertiesForKeys:0 options:1 errorHandler:0];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v9 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (v9)
  {
    v48 = *v61;
    do
    {
      v49 = v9;
      for (i = 0; i != v49; ++i)
      {
        if (*v61 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        if ([v11 fp_isFolder])
        {
          v12 = [v11 URLByAppendingPathComponent:@"Provider.plist"];
          v59 = 0;
          v13 = [v12 checkResourceIsReachableAndReturnError:&v59];
          v14 = v59;
          if (v13)
          {
            v58 = __fp_create_section();
            v15 = fp_current_or_default_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v58;
              lastPathComponent = [v11 lastPathComponent];
              *buf = 134218242;
              v72 = v16;
              v73 = 2114;
              v74 = lastPathComponent;
              _os_log_impl(&dword_1CEFC7000, v15, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Loading %{public}@", buf, 0x16u);
            }

            v46 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v12];
            if (v46)
            {
              v18 = MEMORY[0x1E696ACD0];
              v19 = objc_opt_class();
              v57 = v14;
              log = [v18 unarchivedObjectOfClass:v19 fromData:v46 error:&v57];
              v44 = v57;

              if (log)
              {
                v20 = [[FPDProvider alloc] initWithDescriptor:log server:serverCopy];
                if (v20)
                {
                  volumeManager2 = [serverCopy volumeManager];
                  personaIdentifier = [log personaIdentifier];
                  v55[0] = MEMORY[0x1E69E9820];
                  v55[1] = 3221225472;
                  v55[2] = __40__FPDProvider_onDiskProvidersForServer___block_invoke_65;
                  v55[3] = &unk_1E83BDF50;
                  v20 = v20;
                  v56 = v20;
                  [volumeManager2 enumerateLibrariesForPersona:personaIdentifier withBlock:v55];

                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  allValues = [(NSMutableDictionary *)v20->_domainsByID allValues];
                  v24 = [allValues countByEnumeratingWithState:&v51 objects:v69 count:16];
                  if (v24)
                  {
                    v25 = *v52;
                    while (2)
                    {
                      for (j = 0; j != v24; ++j)
                      {
                        if (*v52 != v25)
                        {
                          objc_enumerationMutation(allValues);
                        }

                        v27 = *(*(&v51 + 1) + 8 * j);
                        providerDomainID = [v27 providerDomainID];
                        v29 = [v50 containsObject:providerDomainID];

                        if (v29)
                        {

                          v38 = fp_current_or_default_log();
                          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543362;
                            v72 = v20;
                            _os_log_impl(&dword_1CEFC7000, v38, OS_LOG_TYPE_DEFAULT, "[NOTICE] Read provider %{public}@ from disk", buf, 0xCu);
                          }

                          [v42 addObject:v20];
                          goto LABEL_39;
                        }

                        v30 = fp_current_or_default_log();
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
                        {
                          [v27 providerDomainID];
                          objc_claimAutoreleasedReturnValue();
                          +[FPDProvider onDiskProvidersForServer:];
                        }
                      }

                      v24 = [allValues countByEnumeratingWithState:&v51 objects:v69 count:16];
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v31 = fp_current_or_default_log();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v72 = v20;
                    _os_log_impl(&dword_1CEFC7000, v31, OS_LOG_TYPE_DEFAULT, "[WARNING] no root reachable for provider %@, skipping", buf, 0xCu);
                  }

LABEL_39:
                }
              }

              else
              {
                v20 = fp_current_or_default_log();
                if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_DEFAULT))
                {
                  fp_shortDescription2 = [v12 fp_shortDescription];
                  *buf = 138412546;
                  v72 = fp_shortDescription2;
                  v73 = 2112;
                  v74 = v44;
                  _os_log_impl(&dword_1CEFC7000, &v20->super, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't upack provider descriptor for %@: %@", buf, 0x16u);
                }
              }

              v14 = v44;
            }

            else
            {
              log = fp_current_or_default_log();
              if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
              {
                fp_shortDescription3 = [v12 fp_shortDescription];
                *buf = 138412290;
                v72 = fp_shortDescription3;
                _os_log_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't load data for %@", buf, 0xCu);
              }
            }

            __fp_leave_section_Notice();
          }

          else
          {
            v32 = [v11 fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
            v33 = v32 == 0;

            if (v33)
            {
              v34 = fp_current_or_default_log();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                fp_shortDescription4 = [v11 fp_shortDescription];
                *buf = 138543362;
                v72 = fp_shortDescription4;
                _os_log_impl(&dword_1CEFC7000, v34, OS_LOG_TYPE_DEFAULT, "[WARNING] found directory with no domain plist in it: %{public}@", buf, 0xCu);
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
    }

    while (v9);
  }

  __fp_leave_section_Notice();

  return v42;
}

uint64_t __40__FPDProvider_onDiskProvidersForServer___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v17 = a2;
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v25 = section;
    v26 = 2114;
    v27 = v17;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx Listing domains & providers in %{public}@", buf, 0x16u);
  }

  v4 = *(a1 + 32);
  v5 = [v17 syncRootsDirectory];
  v6 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 fp_isFolder])
        {
          v12 = [*(a1 + 48) fpfsDomainURLIsRootOf:v11];
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v12 fp_obfuscatedProviderDomainID];
            v15 = [v11 fp_shortDescription];
            *buf = 138412546;
            v25 = v14;
            v26 = 2112;
            v27 = v15;
            _os_log_debug_impl(&dword_1CEFC7000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] found domain xattr '%@' on %@", buf, 0x16u);
          }

          if (v12)
          {
            [*(a1 + 40) addObject:v12];
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  __fp_leave_section_Notice();
  return 1;
}

- (void)writeAllDomainProperties
{
  server = [(FPDProvider *)self server];
  volumeManager = [server volumeManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__FPDProvider_writeAllDomainProperties__block_invoke;
  v5[3] = &unk_1E83BDF50;
  v5[4] = self;
  [volumeManager enumerateLibrariesWithBlock:v5];
}

- (void)_writeDomainPropertiesIntoLibrary:(id)library ifChangedFrom:(id)from
{
  v58 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  fromCopy = from;
  section = __fp_create_section();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(FPDProvider *)self identifier];
    *buf = 134218498;
    v53 = section;
    v54 = 2114;
    v55 = identifier;
    v56 = 2114;
    v57 = libraryCopy;
    _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] ┏%llx writing domain properties for %{public}@ onto %{public}@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v44 = objc_opt_new();
  v10 = fromCopy != 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = selfCopy->_domainsByID;
  v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v11)
  {
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v14];
        v16 = v15;
        if (!libraryCopy || ([v15 volume], v17 = objc_claimAutoreleasedReturnValue(), v18 = v17 == libraryCopy, v17, v18))
        {
          v19 = fp_current_or_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            nsDomain = [v16 nsDomain];
            *buf = 138543362;
            v53 = nsDomain;
            _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_INFO, "[INFO] writing properties for domain %{public}@", buf, 0xCu);
          }

          [v16 nsDomainOrNilForDefault];
          nsDomainOrNilForDefault = [v16 nsDomainOrNilForDefault];
          plistDictionary = [nsDomainOrNilForDefault plistDictionary];
          v23 = plistDictionary;
          if (!plistDictionary)
          {
            plistDictionary = MEMORY[0x1E695E0F8];
          }

          v24 = [plistDictionary mutableCopy];

          v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "userEnabled")}];
          [v24 setObject:v25 forKeyedSubscript:@"Enabled"];

          v26 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "ejectable")}];
          [v24 setObject:v26 forKeyedSubscript:@"Connected"];

          domainUserInfo = [v16 domainUserInfo];
          [v24 setObject:domainUserInfo forKeyedSubscript:@"DomainUserInfo"];

          [v44 setObject:v24 forKeyedSubscript:v14];
          v10 = 1;
        }
      }

      v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v11);
  }

  if (v10)
  {
    if ([libraryCopy role] != 1)
    {
      [libraryCopy role];
    }

    if (([v44 isEqualToDictionary:fromCopy] & 1) == 0)
    {
      systemDirectory = [libraryCopy systemDirectory];
      v29 = systemDirectory;
      if (systemDirectory)
      {
        fp_supportDirectory = systemDirectory;
      }

      else
      {
        fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
      }

      v31 = fp_supportDirectory;

      identifier2 = [(FPDProviderDescriptor *)selfCopy->_descriptor identifier];
      v33 = fp_current_or_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v53 = identifier2;
        v54 = 2112;
        v55 = libraryCopy;
        v56 = 2112;
        v57 = v31;
        _os_log_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_INFO, "[INFO] Updating plist for %@ on %@ (%@)", buf, 0x20u);
      }

      v34 = [v31 URLByAppendingPathComponent:identifier2];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:0];

      v45 = 0;
      LODWORD(defaultManager) = [libraryCopy writeDomainsProperties:v44 underDirectoryAtURL:v34 error:&v45];
      v36 = v45;
      if (defaultManager)
      {
        v37 = fp_current_or_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          identifier3 = [(FPDProvider *)selfCopy identifier];
          allKeys = [(NSMutableDictionary *)selfCopy->_domainsByID allKeys];
          *buf = 138412802;
          v53 = identifier3;
          v54 = 2112;
          v55 = v34;
          v56 = 2112;
          v57 = allKeys;
          _os_log_debug_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] updated domain plist for %@ at %@: %@", buf, 0x20u);
        }
      }

      else
      {
        v37 = fp_current_or_default_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          identifier4 = [(FPDProvider *)selfCopy identifier];
          fp_prettyDescription = [v36 fp_prettyDescription];
          *buf = 138412802;
          v53 = identifier4;
          v54 = 2112;
          v55 = v34;
          v56 = 2112;
          v57 = fp_prettyDescription;
          _os_log_error_impl(&dword_1CEFC7000, v37, OS_LOG_TYPE_ERROR, "[ERROR] error while writing domain plist for %@ at %@: %@", buf, 0x20u);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
  __fp_leave_section_Notice();
}

- (id)_recreateDefaultDomainIfNeededOnVolume:(id)volume
{
  volumeCopy = volume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = *MEMORY[0x1E6967178];
  v7 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:*MEMORY[0x1E6967178]];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v6];
    nsDomain = [v8 nsDomain];
    isHidden = [nsDomain isHidden];

    if ([(NSMutableDictionary *)selfCopy->_domainsByID count]== 1 && [(FPDProviderDescriptor *)selfCopy->_descriptor defaultDomainVisible])
    {
      if (!isHidden)
      {
        v12 = 0;
        goto LABEL_18;
      }

      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(FPDProvider *)selfCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
      }

      v12 = 0;
    }

    else
    {
      if (isHidden)
      {
        v12 = 1;
LABEL_18:
        defaultNSDomain = [(NSMutableDictionary *)selfCopy->_domainsByID objectForKeyedSubscript:v6];
        nsDomain2 = [defaultNSDomain nsDomain];
        [nsDomain2 setHidden:v12];

        v14 = 0;
        goto LABEL_19;
      }

      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(FPDProvider *)selfCopy identifier];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
      }

      v12 = 1;
    }

    goto LABEL_18;
  }

  defaultNSDomain = [(FPDProvider *)selfCopy defaultNSDomain];
  v14 = [(FPDProvider *)selfCopy newDomainFromNSDomain:defaultNSDomain volume:volumeCopy];
  descriptor = [(FPDProvider *)selfCopy descriptor];
  [v14 setUserEnabled:{objc_msgSend(descriptor, "enabledByDefault")}];

  [v14 setEjectable:0];
  [v14 setShouldIndexWhenStart:{objc_msgSend(v14, "userEnabled")}];
  v16 = fp_current_or_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(FPDProvider *)selfCopy identifier];
    objc_claimAutoreleasedReturnValue();
    [FPDProvider _recreateDefaultDomainIfNeededOnVolume:];
  }

  [(NSMutableDictionary *)selfCopy->_domainsByID setObject:v14 forKeyedSubscript:v6];
LABEL_19:

  objc_sync_exit(selfCopy);

  return v14;
}

- (id)defaultNSDomain
{
  v3 = objc_alloc(MEMORY[0x1E69674D8]);
  v4 = [v3 initWithIdentifier:*MEMORY[0x1E6967178] displayName:&stru_1F4C2FFD0 pathRelativeToDocumentStorage:&stru_1F4C2FFD0];
  [v4 setHidden:{-[FPDProviderDescriptor defaultDomainVisible](self->_descriptor, "defaultDomainVisible") ^ 1}];
  personaIdentifier = [(FPDProviderDescriptor *)self->_descriptor personaIdentifier];
  [v4 setPersonaIdentifier:personaIdentifier];

  return v4;
}

- (id)newDomainFromNSDomain:(id)domain volume:(id)volume
{
  v29 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  volumeCopy = volume;
  pathRelativeToDocumentStorage = [domainCopy pathRelativeToDocumentStorage];
  if ([pathRelativeToDocumentStorage length])
  {
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    extensionStorageURLs = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v11 = [v9 initWithCapacity:{objc_msgSend(extensionStorageURLs, "count")}];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    extensionStorageURLs2 = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v13 = [extensionStorageURLs2 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(extensionStorageURLs2);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) URLByAppendingPathComponent:pathRelativeToDocumentStorage isDirectory:1];
          [v11 addObject:v17];
        }

        v14 = [extensionStorageURLs2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }
  }

  else
  {
    extensionStorageURLs2 = [(FPDProviderDescriptor *)self->_descriptor extensionStorageURLs];
    v11 = [extensionStorageURLs2 mutableCopy];
  }

  v18 = [FPDDomain alloc];
  identifier = [domainCopy identifier];
  purposeIdentifier = [(FPDProvider *)self purposeIdentifier];
  server = [(FPDProvider *)self server];
  v22 = -[FPDDomain initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:](v18, "initWithIdentifier:nsDomain:extensionStorageURLs:purposeIdentifier:fpfsClass:provider:volume:", identifier, domainCopy, v11, purposeIdentifier, [server fpfsClass], self, volumeCopy);

  return v22;
}

- (void)_startOrClearDomain:(id)domain userAllowedDBDrop:(BOOL)drop reason:(id)reason completion:(id)completion
{
  dropCopy = drop;
  domainQueue = self->_domainQueue;
  completionCopy = completion;
  reasonCopy = reason;
  domainCopy = domain;
  dispatch_assert_queue_V2(domainQueue);
  [domainCopy startWithReason:reasonCopy userAllowedDBDrop:dropCopy completion:completionCopy];
}

+ (id)defaultNSDomainForDescriptor:(id)descriptor
{
  v3 = MEMORY[0x1E69674D8];
  descriptorCopy = descriptor;
  v5 = [v3 alloc];
  v6 = [v5 initWithIdentifier:*MEMORY[0x1E6967178] displayName:&stru_1F4C2FFD0 pathRelativeToDocumentStorage:&stru_1F4C2FFD0];
  [v6 setHidden:{objc_msgSend(descriptorCopy, "defaultDomainVisible") ^ 1}];
  personaIdentifier = [descriptorCopy personaIdentifier];

  [v6 setPersonaIdentifier:personaIdentifier];

  return v6;
}

+ (id)parseDomainProperties:(id)properties descriptor:(id)descriptor volume:(id)volume replicatedByDefault:(BOOL)default
{
  defaultCopy = default;
  v57 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  volumeCopy = volume;
  v38 = objc_opt_new();
  v44 = descriptorCopy;
  identifier = [descriptorCopy identifier];
  v45 = [identifier isEqualToString:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

  v37 = volumeCopy;
  if (volumeCopy)
  {
    v13 = MEMORY[0x1E695DFF8];
    root = [volumeCopy root];
    v43 = [v13 fileURLWithPath:root isDirectory:1];
  }

  else
  {
    v43 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = propertiesCopy;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    v41 = *MEMORY[0x1E6967178];
    v40 = defaultCopy;
    do
    {
      v19 = 0;
      v42 = v17;
      do
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v46 + 1) + 8 * v19);
        v21 = [v15 objectForKeyedSubscript:v20];
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v45 && [v20 hasPrefix:@"Ciconia-"])
            {
              v22 = fp_current_or_default_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] found leftover Ciconia domain - skipping", buf, 2u);
              }
            }

            else
            {
              v24 = [MEMORY[0x1E69674D8] domainFromPlistDictionary:v21 identifier:v20 volumeURL:v43 replicatedByDefault:defaultCopy];
              if (v24 || [v20 isEqualToString:v41] && (objc_msgSend(self, "defaultNSDomainForDescriptor:", v44), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v22 = v24;
                personaIdentifier = [v44 personaIdentifier];
                [v22 setPersonaIdentifier:personaIdentifier];

                personaIdentifier2 = [v22 personaIdentifier];

                if (personaIdentifier2)
                {
                  v27 = MEMORY[0x1E69DF088];
                  personaIdentifier3 = [v22 personaIdentifier];
                  v29 = [v27 personaAttributesForPersonaUniqueString:personaIdentifier3];

                  if (v29)
                  {
                    -[NSObject setIsEnterpriseDomain:](v22, "setIsEnterpriseDomain:", [v29 isEnterprisePersona]);
                    -[NSObject setIsDataSeparatedDomain:](v22, "setIsDataSeparatedDomain:", [v29 isDataSeparatedPersona]);
                  }
                }

                v30 = [v21 objectForKeyedSubscript:@"Enabled"];
                if (!v30)
                {
                  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v44, "enabledByDefault")}];
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  -[NSObject setUserEnabled:](v22, "setUserEnabled:", [v30 BOOLValue]);
                  v31 = [v21 objectForKeyedSubscript:@"Connected"];
                  if (v31)
                  {
                    v32 = v31;
                  }

                  else
                  {
                    v32 = MEMORY[0x1E695E110];
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v22 setEjectable:[v32 BOOLValue]];
                    v33 = [v21 objectForKeyedSubscript:@"DomainUserInfo"];
                    v17 = v42;
                    if (v33)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [v22 setDomainUserInfo:v33];
                        goto LABEL_34;
                      }

                      v35 = fp_current_or_default_log();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v53 = v22;
                        v54 = 2112;
                        v55 = v21;
                        _os_log_error_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_ERROR, "[ERROR] unhandled user info for domain %{public}@ of unknown type: %@", buf, 0x16u);
                      }
                    }

                    else
                    {
LABEL_34:
                      precomposedStringWithCanonicalMapping = [v20 precomposedStringWithCanonicalMapping];
                      [v38 setObject:v22 forKeyedSubscript:precomposedStringWithCanonicalMapping];

                      v35 = fp_current_or_default_log();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138543362;
                        v53 = v22;
                        _os_log_impl(&dword_1CEFC7000, v35, OS_LOG_TYPE_INFO, "[INFO] loaded domain from plist %{public}@", buf, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v33 = fp_current_or_default_log();
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v53 = v22;
                      v54 = 2112;
                      v55 = v21;
                      _os_log_error_impl(&dword_1CEFC7000, v33, OS_LOG_TYPE_ERROR, "[ERROR] unhandled domain state %{public}@ of unknown type: %@", buf, 0x16u);
                    }

                    v17 = v42;
                  }

                  defaultCopy = v40;
                }

                else
                {
                  v32 = fp_current_or_default_log();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v53 = v22;
                    v54 = 2114;
                    v55 = v21;
                    _os_log_error_impl(&dword_1CEFC7000, v32, OS_LOG_TYPE_ERROR, "[ERROR] unhandled domain state %{public}@ of unknown type: %{public}@", buf, 0x16u);
                  }

                  v17 = v42;
                }

                goto LABEL_51;
              }

              v22 = fp_current_or_default_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [FPDProvider parseDomainProperties:v50 descriptor:v20 volume:? replicatedByDefault:?];
              }
            }
          }

          else
          {
            v22 = fp_current_or_default_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              fp_obfuscatedFilename = [v20 fp_obfuscatedFilename];
              *buf = 138543618;
              v53 = fp_obfuscatedFilename;
              v54 = 2112;
              v55 = v21;
              _os_log_error_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_ERROR, "[ERROR] unhandled domain %{public}@ of unknown type: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [FPDProvider parseDomainProperties:v51 descriptor:v20 volume:? replicatedByDefault:?];
          }
        }

LABEL_51:

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v17);
  }

  return v38;
}

- (id)importDomainsFromLibrary:(id)library updatePlist:(BOOL)plist
{
  plistCopy = plist;
  v56 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v42 = libraryCopy;
  v7 = [libraryCopy role] == 1 || objc_msgSend(libraryCopy, "role") == 2;
  if ([(FPDProviderDescriptor *)selfCopy->_descriptor allowsExternalVolumes]|| v7)
  {
    systemDirectory = [v42 systemDirectory];
    identifier = [(FPDProvider *)selfCopy identifier];
    v40 = [systemDirectory URLByAppendingPathComponent:identifier];

    section = __fp_create_section();
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [(FPDProvider *)selfCopy identifier];
      fp_shortDescription = [v40 fp_shortDescription];
      *buf = 134218498;
      v51 = section;
      v52 = 2114;
      v53 = identifier2;
      v54 = 2114;
      v55 = fp_shortDescription;
      _os_log_debug_impl(&dword_1CEFC7000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx loading domain list for %{public}@ from disk %{public}@", buf, 0x20u);
    }

    v47 = 0;
    v11 = [v42 readDomainsPropertiesUnderDirectoryAtURL:v40 error:&v47];
    v37 = v47;
    v41 = v11;
    if (!v11)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [v37 fp_prettyDescription];
        objc_claimAutoreleasedReturnValue();
        [FPDProvider importDomainsFromLibrary:updatePlist:];
      }
    }

    v13 = objc_opt_class();
    v14 = v11;
    if (!v11)
    {
      v14 = objc_opt_new();
    }

    v15 = [v13 parseDomainProperties:v14 descriptor:selfCopy->_descriptor volume:v42 replicatedByDefault:{0, v37}];
    if (!v11)
    {
    }

    v16 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v18)
    {
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          domainsByID = selfCopy->_domainsByID;
          precomposedStringWithCanonicalMapping = [v21 precomposedStringWithCanonicalMapping];
          v24 = [(NSMutableDictionary *)domainsByID objectForKeyedSubscript:precomposedStringWithCanonicalMapping];

          if (v24)
          {
            v25 = fp_current_or_default_log();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              fp_obfuscatedFilename = [v21 fp_obfuscatedFilename];
              *buf = 138543618;
              v51 = fp_obfuscatedFilename;
              v52 = 2114;
              v53 = v42;
              _os_log_error_impl(&dword_1CEFC7000, v25, OS_LOG_TYPE_ERROR, "[ERROR] Found domain %{public}@ on %{public}@, which is already known, ignoring", buf, 0x16u);
            }
          }

          else
          {
            v25 = [v17 objectForKeyedSubscript:v21];
            v27 = [(FPDProvider *)selfCopy newDomainFromNSDomain:v25 volume:v42];
            [v27 setUserEnabled:{-[NSObject userEnabled](v25, "userEnabled")}];
            [v27 setEjectable:{-[NSObject isEjectable](v25, "isEjectable")}];
            domainUserInfo = [v25 domainUserInfo];
            [v27 setDomainUserInfo:domainUserInfo];

            precomposedStringWithCanonicalMapping2 = [v21 precomposedStringWithCanonicalMapping];
            [v16 setObject:v27 forKeyedSubscript:precomposedStringWithCanonicalMapping2];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v18);
    }

    if (!selfCopy->_domainsByRootPath)
    {
      v30 = objc_opt_new();
      domainsByRootPath = selfCopy->_domainsByRootPath;
      selfCopy->_domainsByRootPath = v30;
    }

    if (selfCopy->_domainsByID)
    {
      [(NSMutableDictionary *)selfCopy->_domainsByID addEntriesFromDictionary:v16];
    }

    else
    {
      objc_storeStrong(&selfCopy->_domainsByID, v16);
    }

    if ([v42 isDefaultVolumeForCurrentPersona])
    {
      v33 = [(FPDProvider *)selfCopy _recreateDefaultDomainIfNeededOnVolume:v42];
    }

    if (plistCopy)
    {
      [(FPDProvider *)selfCopy _writeDomainPropertiesIntoLibrary:v42 ifChangedFrom:v41];
    }

    allValues = [v16 allValues];

    __fp_leave_section_Debug();
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)materializeRootForDomain:(id)domain
{
  domainCopy = domain;
  v4 = domainCopy;
  if (domainCopy && [domainCopy isUsingFPFS] && objc_msgSend(v4, "userEnabled") && (objc_msgSend(v4, "isHidden") & 1) == 0)
  {
    serialQueue = [v4 serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__FPDProvider_materializeRootForDomain___block_invoke;
    block[3] = &unk_1E83BE068;
    v7 = v4;
    dispatch_async(serialQueue, block);
  }
}

void __40__FPDProvider_materializeRootForDomain___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) invalidated])
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] [Mat] Tried to materialize invalidated domain %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) defaultBackend];
    v5 = [v4 rootURLs];
    v6 = [v5 firstObject];

    v7 = [*(a1 + 32) provider];
    v8 = [v7 identifier];
    v9 = [v8 fp_isiCloudDriveIdentifier];

    if (v9)
    {
      v10 = @"com~apple~CloudDocs";
      v11 = [v6 URLByAppendingPathComponent:@"com~apple~CloudDocs"];

      v6 = v11;
    }

    else
    {
      v10 = @"root";
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 fp_shortDescription];
      *buf = 138412546;
      v21 = v10;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1CEFC7000, v12, OS_LOG_TYPE_INFO, "[INFO] [Mat] Will try to materialize %@ %{public}@", buf, 0x16u);
    }

    v14 = [*(a1 + 32) defaultBackend];
    v15 = +[FPDRequest requestForSelf];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __40__FPDProvider_materializeRootForDomain___block_invoke_96;
    v17[3] = &unk_1E83BE760;
    v18 = v10;
    v19 = v6;
    v2 = v6;
    v16 = [v14 startProvidingItemAtURL:v2 readerID:@"materializeRootForDomain" readingOptions:0 request:v15 completionHandler:v17];
  }
}

void __40__FPDProvider_materializeRootForDomain___block_invoke_96(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) fp_shortDescription];
    v7 = [v3 fp_prettyDescription];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_INFO, "[INFO] [Mat] Materialized %{public}@ %{public}@ with error: %@", &v8, 0x20u);
  }
}

- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l userAllowedDBDrop:(BOOL)drop knownFolders:(id)folders request:(id)request completionHandler:(id)handler
{
  dropCopy = drop;
  handlerCopy = handler;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke;
  v17[3] = &unk_1E83BFC28;
  v18 = handlerCopy;
  v15 = handlerCopy;
  LOBYTE(v16) = 0;
  [(FPDProvider *)self addDomain:domain byImportingDirectoryAtURL:l knownFolders:folders userAllowedDBDrop:dropCopy unableToStartup:0 startupError:0 reloadDomain:v16 request:request completionHandler:v17];
}

void __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = [v5 rootURLs];
  if (![v7 count])
  {

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v8 = [v5 rootURLs];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = FPClearImportCookieForDomainURL();
  v11 = 0;

  if ((v10 & 1) == 0)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1();
    }
  }

LABEL_9:
  v13 = *(a1 + 32);
  v14 = [v5 provider];
  v15 = [v14 identifier];
  (*(v13 + 16))(v13, v15, v6);
}

- (void)addDomain:(id)domain byImportingDirectoryAtURL:(id)l knownFolders:(id)folders userAllowedDBDrop:(BOOL)drop unableToStartup:(BOOL)startup startupError:(id)error reloadDomain:(BOOL)reloadDomain request:(id)self0 completionHandler:(id)self1
{
  v37 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  lCopy = l;
  foldersCopy = folders;
  errorCopy = error;
  requestCopy = request;
  handlerCopy = handler;
  identifier = [domainCopy identifier];
  v19 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifier];

  v34 = fpfs_adopt_log();
  if (FPFeatureFlagEbihilIsEnabled())
  {
    __assert_rtn("[FPDProvider addDomain:byImportingDirectoryAtURL:knownFolders:userAllowedDBDrop:unableToStartup:startupError:reloadDomain:request:completionHandler:]", "FPDProvider.m", 1108, "!FPFeatureFlagEbihilIsEnabled()");
  }

  if ([domainCopy isReplicated] && !-[FPDProvider supportsFPFS](self, "supportsFPFS", lCopy, foldersCopy, errorCopy) && !-[FPDProvider testingProvider](self, "testingProvider"))
  {
    v20 = fp_current_or_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = domainCopy;
      _os_log_impl(&dword_1CEFC7000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] domain %@ was asked with FPFS, but it's not supported, will fallback", buf, 0xCu);
    }

    [domainCopy setReplicated:0];
  }

  if (([domainCopy isReplicated] & 1) == 0)
  {
    identifier2 = [(FPDProvider *)self identifier];
    IsForcedForFPFS = FPFSProviderIsForcedForFPFS();

    if (IsForcedForFPFS)
    {
      v23 = fp_current_or_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = domainCopy;
        _os_log_impl(&dword_1CEFC7000, v23, OS_LOG_TYPE_DEFAULT, "[WARNING] domain %@ was asked without FPFS, but provider is forced", buf, 0xCu);
      }

      [domainCopy setReplicated:1];
    }
  }

  v28 = domainCopy;
  v33 = handlerCopy;
  v29 = v25;
  v30 = foldersCopy;
  v31 = requestCopy;
  v32 = errorCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke(uint64_t a1)
{
  v129 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) identifier];
  v118 = 0;
  v4 = [v3 fp_isValidDomainIdentifierWithError:&v118];
  v100 = v118;

  if ((v4 & 1) == 0)
  {
    (*(*(a1 + 80) + 16))();
    goto LABEL_109;
  }

  v5 = [*v2 experimentIDIsValid];
  v6 = fp_current_or_default_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [v8 identifier];
      v10 = [v9 fp_obfuscatedFilename];
      v11 = [*(a1 + 40) identifier];
      v12 = [*(a1 + 48) fp_shortDescription];
      v13 = [*(a1 + 56) fp_map:&__block_literal_global_105];
      v14 = [v13 componentsJoinedByString:{@", "}];
      v15 = *(a1 + 64);
      *buf = 138413570;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      *&buf[22] = 2112;
      v122 = v11;
      v123 = 2114;
      v124 = v12;
      v125 = 2114;
      v126 = v14;
      v127 = 2114;
      v128 = v15;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[NOTICE] Adding domain %@ (%{public}@) for extension %@, importing directory %{public}@ (known folders: %{public}@), for %{public}@", buf, 0x3Eu);
    }

    if (*(*(a1 + 40) + 8) == 1)
    {
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_8(a1);
      }

      v17 = *(a1 + 80);
      v18 = FPProviderXPCInvalidError();
      (*(v17 + 16))(v17, 0, v18);

      goto LABEL_109;
    }

    v21 = [*v2 identifier];
    v22 = *MEMORY[0x1E6967178];
    if ([v21 isEqualToString:*MEMORY[0x1E6967178]])
    {
      v23 = [*v2 isReplicated];

      if (v23)
      {
        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_7(v24);
        }

        v25 = *(a1 + 80);
        v26 = FPNotSupportedError();
        (*(v25 + 16))(v25, 0, v26);

        goto LABEL_109;
      }
    }

    else
    {
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v122) = 0;
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v27 = *(a1 + 40);
    objc_sync_enter(v27);
    v28 = [*(*(a1 + 40) + 32) enabledByDefault];
    *(*&buf[8] + 24) = v28;
    *(v115 + 24) = 1;
    if ([*(*(a1 + 40) + 80) count] != 1 || (objc_msgSend(*(*(a1 + 40) + 80), "objectForKeyedSubscript:", v22), v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v30))
    {
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v36 = *(*(a1 + 40) + 80);
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112;
        v113[3] = &unk_1E83BFC70;
        v113[4] = buf;
        [v36 enumerateKeysAndObjectsUsingBlock:v113];
      }

      v37 = *(*(a1 + 40) + 80);
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114;
      v112[3] = &unk_1E83BFC70;
      v112[4] = &v114;
      [v37 enumerateKeysAndObjectsUsingBlock:v112];
    }

    else
    {
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v31 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v22];
        v32 = [v31 userEnabled];
        *(*&buf[8] + 24) = v32;
      }

      v33 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:v22];
      v34 = [v33 isHiddenByUser];
      *(v115 + 24) = v34;

      v35 = fp_current_or_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_2();
      }
    }

    v38 = *(a1 + 32);
    v39 = [*(a1 + 40) descriptor];
    [v38 setIsContentManaged:{objc_msgSend(v39, "owningApplicationIsManaged") | objc_msgSend(v38, "isContentManaged")}];

    v40 = *(*(a1 + 40) + 80);
    v41 = [*(a1 + 32) identifier];
    v42 = [v41 precomposedStringWithCanonicalMapping];
    v43 = [v40 objectForKeyedSubscript:v42];

    if (v43)
    {
      if (*(a1 + 48))
      {
        v44 = *(a1 + 80);
        v45 = [MEMORY[0x1E6967318] errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:0];
        (*(v44 + 16))(v44, 0, v45);
LABEL_32:

        objc_sync_exit(v27);
LABEL_108:

        _Block_object_dispose(&v114, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_109;
      }

      v47 = fp_current_or_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_3();
      }

      v45 = [v43 nsDomainOrNilForDefault];
      if (v45)
      {
        [*v2 copyValuesFromExistingDomain:v45];
      }

      v48 = [v45 testingModes];
      if (v48 == [*v2 testingModes] && (v49 = objc_msgSend(v45, "isReplicated"), v49 == objc_msgSend(*v2, "isReplicated")) && *(a1 + 96) != 1)
      {
        v98 = 0;
        v46 = 0;
      }

      else
      {
        if (([v45 testingModes] & 2) != 0 && (objc_msgSend(*v2, "testingModes") & 2) != 0)
        {
          v56 = *(a1 + 80);
          v57 = FPInvalidParameterError();
          (*(v56 + 16))(v56, 0, v57);

          goto LABEL_32;
        }

        v50 = [v45 testingModes];
        if (v50 == [*v2 testingModes])
        {
          v51 = [v45 isReplicated];
          if (v51 == [*v2 isReplicated])
          {
            v52 = fp_current_or_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *v2;
              *v119 = 138412290;
              v120 = v58;
              _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because we were asked to reload the domain", v119, 0xCu);
            }

            v54 = @"domainReload";
          }

          else
          {
            v52 = fp_current_or_default_log();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = *v2;
              *v119 = 138412290;
              v120 = v53;
              _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because replicated status changed", v119, 0xCu);
            }

            v54 = @"domainReplicationUpdate";
          }
        }

        else
        {
          v52 = fp_current_or_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v55 = *v2;
            *v119 = 138412290;
            v120 = v55;
            _os_log_impl(&dword_1CEFC7000, v52, OS_LOG_TYPE_DEFAULT, "[NOTICE] need a new domain for %@ because testing modes changed", v119, 0xCu);
          }

          v54 = @"domainTestingModeUpdate";
        }

        v98 = v54;

        v46 = 1;
      }
    }

    else
    {
      v46 = 1;
      v98 = @"domainCreation";
    }

    objc_sync_exit(v27);

    if (!((v43 == 0) | v46 & 1))
    {
      v59 = [v43 serialQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_131;
      block[3] = &unk_1E83BE158;
      v110 = v43;
      v111 = *v2;
      dispatch_sync(v59, block);
    }

    if (v46)
    {
      [v43 stopIndexer];
    }

    v60 = *(a1 + 40);
    objc_sync_enter(v60);
    v61 = [v43 volume];
    if (v61)
    {
      v99 = 0;
    }

    else
    {
      v62 = [*v2 volumeUUID];
      v63 = *(a1 + 40);
      if (v62)
      {
        v64 = [v63 server];
        v65 = [v64 volumeManager];
        v108 = 0;
        v61 = [v65 libraryForVolume:v62 createIfNeeded:1 error:&v108];
        v99 = v108;

        if (!v61)
        {
          v96 = fp_current_or_default_log();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            v97 = [v99 fp_prettyDescription];
            __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_5(v62, v97, v119);
          }

          (*(*(a1 + 80) + 16))();
          goto LABEL_102;
        }

        if (([v61 isDefaultVolumeForCurrentPersona] & 1) == 0)
        {
          if (!FPFeatureFlagEbihilIsEnabled() || ([*(a1 + 40) descriptor], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "allowsExternalVolumes"), v66, (v67 & 1) == 0))
          {
            v68 = fp_current_or_default_log();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_4();
            }

            v69 = *(a1 + 80);
            v70 = FPNotSupportedError();
            (*(v69 + 16))(v69, 0, v70);

            goto LABEL_102;
          }
        }
      }

      else
      {
        v71 = [v63 server];
        v72 = [v71 volumeManager];
        v61 = [v72 defaultVolumeForCurrentPersona];

        v99 = 0;
      }
    }

    if ([v61 role] == 3 || (objc_msgSend(*v2, "identifier"), v73 = objc_claimAutoreleasedReturnValue(), v74 = objc_msgSend(v73, "hasPrefix:", *MEMORY[0x1E69675B8]), v73, !v74))
    {
      if (v46)
      {
        v77 = [MEMORY[0x1E696AFB0] UUID];
        v78 = [v77 UUIDString];
        [*v2 setSpotlightDomainIdentifier:v78];

        v79 = [*(a1 + 40) newDomainFromNSDomain:*(a1 + 32) volume:v61];
        [v79 setUnableToStartup:*(a1 + 97)];
        [v79 setStartupError:*(a1 + 72)];
        v80 = [v79 serialQueue];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_133;
        v105[3] = &unk_1E83BE158;
        v27 = v79;
        v106 = v27;
        v107 = *v2;
        dispatch_sync(v80, v105);

        if (v43)
        {
          [v27 setUserEnabled:{objc_msgSend(v43, "userEnabled")}];
          v81 = [v43 fpfsRootBookmarkData];
          [v27 setFpfsRootBookmarkData:v81];

          v82 = [v43 isHiddenByUser];
          v83 = v98;
        }

        else
        {
          [v27 setUserEnabled:*(*&buf[8] + 24)];
          v83 = v98;
          v82 = *(v115 + 24);
        }

        [v27 setHiddenByUser:v82 & 1];
        if ([v27 userEnabled])
        {
          v84 = 1;
        }

        else
        {
          v84 = [*v2 testingModes] & 1;
        }

        [v27 setUserEnabled:v84];
        [v27 setEjectable:0];
        [v27 finishSetup];
        if (v43)
        {
          if (!v83)
          {
            v83 = @"domainConfigurationUpdate";
          }
        }

        else if ([v27 isUsingFPFS])
        {
          v86 = *(a1 + 48);
          v85 = *(a1 + 56);
          v104 = v99;
          v87 = [v27 createRootByImportingDirectoryAtURL:v86 knownFolders:v85 error:&v104];
          if (v86)
          {
            v83 = @"domainImport";
          }

          v88 = v104;

          if ((v87 & 1) == 0)
          {
            (*(*(a1 + 80) + 16))();

            v62 = v106;
            v99 = v88;
            goto LABEL_103;
          }

          v99 = v88;
        }

        v89 = *(a1 + 40);
        v90 = *(a1 + 98);
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_2;
        v101[3] = &unk_1E83BFB10;
        v103 = *(a1 + 97);
        v101[4] = v89;
        v27 = v27;
        v102 = v27;
        [v89 _startOrClearDomain:v27 userAllowedDBDrop:v90 reason:v83 completion:v101];
        v91 = *(*(a1 + 40) + 80);
        v92 = [*(a1 + 32) identifier];
        v93 = [v92 precomposedStringWithCanonicalMapping];
        [v91 setObject:v27 forKeyedSubscript:v93];

        addRootPathKeys(*(*(a1 + 40) + 88), v27);
      }

      else
      {
        v27 = 0;
      }

      if ([v61 isDefaultVolumeForCurrentPersona])
      {
        v94 = [*(a1 + 40) _recreateDefaultDomainIfNeededOnVolume:v61];
      }

      [*(a1 + 40) _writeDomainPropertiesIntoLibrary:v61 ifChangedFrom:0];
      v95 = 1;
      goto LABEL_104;
    }

    v75 = fp_current_or_default_log();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_6();
    }

    v76 = *(a1 + 80);
    v62 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:19];
    (*(v76 + 16))(v76, 0, v62);
LABEL_102:
    v27 = 0;
LABEL_103:

    v95 = 0;
LABEL_104:

    objc_sync_exit(v60);
    if (v95)
    {
      if (v46)
      {
        [v43 invalidateWithReason:@"replaced with newer instance"];
        [v43 invalidateSession];
      }

      (*(*(a1 + 80) + 16))();
    }

    goto LABEL_108;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_1(v7);
  }

  v19 = *(a1 + 80);
  v20 = [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:22];
  (*(v19 + 16))(v19, 0, v20);

LABEL_109:
}

id __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_102(uint64_t a1, void *a2)
{
  v2 = [a2 knownFolder];
  v3 = [v2 fp_shortDescription];

  return v3;
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E6967178]] & 1) == 0 && objc_msgSend(v7, "userEnabled"))
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 isEqualToString:*MEMORY[0x1E6967178]] & 1) == 0 && (objc_msgSend(v7, "isHiddenByUser") & 1) == 0)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114_cold_1();
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id *__150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_2(id *result)
{
  if ((result[6] & 1) == 0)
  {
    return [result[4] materializeRootForDomain:result[5]];
  }

  return result;
}

- (void)removeAllDomainsForRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  domainQueue = self->_domainQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke;
  v12[3] = &unk_1E83BE9B8;
  v12[4] = self;
  v13 = requestCopy;
  v14 = handlerCopy;
  v15 = a2;
  v10 = handlerCopy;
  v11 = requestCopy;
  dispatch_async(domainQueue, v12);
}

void __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v45 = v3;
    v46 = 2114;
    v47 = v4;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] Removing all domains for %@ for %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5[8] == 1)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke_cold_3(a1);
    }

    v7 = *(a1 + 48);
    v36 = FPProviderXPCInvalidError();
    (*(v7 + 16))(v7, v36);
  }

  else
  {
    v8 = v5;
    objc_sync_enter(v8);
    v36 = [*(*(a1 + 32) + 80) copy];
    objc_sync_exit(v8);

    if ([v36 count] == 1)
    {
      v9 = [v36 objectForKeyedSubscript:*MEMORY[0x1E6967178]];
      v10 = v9 == 0;

      if (v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Only domain expected to be the default domain"];
        v12 = fp_current_or_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          +[FPDVolume prettyNameForDomain:];
        }

        v13 = v11;
        __assert_rtn("-[FPDProvider removeAllDomainsForRequest:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 1420, [v11 UTF8String]);
      }
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [v36 allValues];
      v14 = 0;
      v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v15)
      {
        v16 = *v40;
        v17 = *MEMORY[0x1E6967178];
        v18 = 1;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v39 + 1) + 8 * i);
            [v20 invalidateWithReason:@"removing all domains"];
            v21 = [v20 cleanupDomainWithMode:0];
            [v20 invalidateSession];
            v22 = [v20 identifier];
            v23 = [v22 isEqualToString:v17];

            if ((v23 & 1) == 0)
            {
              v14 |= [v20 userEnabled];
              v18 &= [v20 isHiddenByUser];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v15);
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      v24 = *(a1 + 32);
      objc_sync_enter(v24);
      v25 = [*(*(a1 + 32) + 80) count];
      if (v25 != [v36 count])
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ Unexpected number of domains to remove"];
        v34 = fp_current_or_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          +[FPDVolume prettyNameForDomain:];
        }

        v35 = v33;
        __assert_rtn("-[FPDProvider removeAllDomainsForRequest:completionHandler:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDProvider.m", 1446, [v33 UTF8String]);
      }

      [*(*(a1 + 32) + 80) removeAllObjects];
      [*(*(a1 + 32) + 88) removeAllObjects];
      v26 = *(a1 + 32);
      v27 = [v26 server];
      v28 = [v27 volumeManager];
      v29 = [v28 defaultVolumeForCurrentPersona];
      v30 = [v26 _recreateDefaultDomainIfNeededOnVolume:v29];

      if ([*(*(a1 + 32) + 32) canToggleDomainVisibility])
      {
        [v30 setUserEnabled:v14 & 1];
        [v30 setHiddenByUser:v18 & 1];
      }

      [v30 finishSetup];
      v31 = *(a1 + 32);
      if (v30)
      {
        addRootPathKeys(v31[11], v30);
        [*(a1 + 32) _startOrClearDomain:v30 userAllowedDBDrop:0 reason:@"domainCreation" completion:&__block_literal_global_153];
      }

      else
      {
        v32 = [*(a1 + 32) defaultNSDomain];
        [v31 reloadDomain:v32 unableToStartup:0 startupError:0 completionHandler:&__block_literal_global_155];
      }

      [*(a1 + 32) writeAllDomainProperties];

      objc_sync_exit(v24);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)removeDomain:(id)domain mode:(unint64_t)mode request:(id)request completionHandler:(id)handler
{
  domainCopy = domain;
  requestCopy = request;
  handlerCopy = handler;
  v12 = [(FPDProvider *)self loggerForDomainWithIdentifier:domainCopy];
  v16 = fpfs_adopt_log();
  v13 = domainCopy;
  v14 = requestCopy;
  v15 = handlerCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) identifier];
    v6 = *(a1 + 48);
    *buf = 138412802;
    v38 = v4;
    v39 = 2112;
    v40 = v5;
    v41 = 2114;
    v42 = v6;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Removing domain %@ on extension %@ for %{public}@", buf, 0x20u);
  }

  if (*(*(a1 + 40) + 8) != 1)
  {
    v10 = *MEMORY[0x1E6967178];
    if ([*(a1 + 32) isEqualToString:*MEMORY[0x1E6967178]])
    {
      v11 = *(a1 + 56);
      v9 = [MEMORY[0x1E696ABC0] fp_invalidArgumentError:@"Default domain cannot be removed"];
      (*(v11 + 16))(v11, 0, v9);
      goto LABEL_29;
    }

    v12 = *(a1 + 40);
    objc_sync_enter(v12);
    v9 = [*(*(a1 + 40) + 80) mutableCopy];
    v13 = [*(*(a1 + 40) + 88) mutableCopy];
    v14 = [*(a1 + 32) precomposedStringWithCanonicalMapping];
    v15 = [v9 objectForKeyedSubscript:v14];

    if (!v15)
    {
      (*(*(a1 + 56) + 16))();
      objc_sync_exit(v12);
LABEL_28:

      goto LABEL_29;
    }

    removeRootPathKeys(v13, v15);
    v16 = [*(a1 + 32) precomposedStringWithCanonicalMapping];
    [v9 setObject:0 forKeyedSubscript:v16];

    objc_storeStrong((*(a1 + 40) + 80), v9);
    objc_storeStrong((*(a1 + 40) + 88), v13);
    v17 = [v9 objectForKeyedSubscript:v10];
    if (v17 && [v9 count] == 1 || !objc_msgSend(v9, "count"))
    {
      v18 = [v15 userEnabled];
      v19 = [v15 isHiddenByUser];
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    [v17 setUserEnabled:v18];
    [v17 setHiddenByUser:v19];
    v21 = *(a1 + 40);
    v22 = [v21 server];
    v23 = [v22 volumeManager];
    v24 = [v23 defaultVolumeForCurrentPersona];
    v25 = [v21 _recreateDefaultDomainIfNeededOnVolume:v24];

    [v25 finishSetup];
    v26 = *(a1 + 40);
    if (v25)
    {
      addRootPathKeys(v26[11], v25);
      [*(a1 + 40) _startOrClearDomain:v25 userAllowedDBDrop:0 reason:@"domainCreation" completion:&__block_literal_global_168];
    }

    else
    {
      v27 = [*(a1 + 40) defaultNSDomain];
      [v26 reloadDomain:v27 unableToStartup:0 startupError:0 completionHandler:&__block_literal_global_170];
    }

    objc_sync_exit(v12);
    v28 = [v15 rootURLs];
    if ([v28 count])
    {
      v29 = [v15 rootURLs];
      v30 = [v29 objectAtIndexedSubscript:0];
      v31 = FPClearImportCookieForDomainURL();
      v32 = 0;

      if (v31)
      {
LABEL_27:
        [v15 invalidateWithReason:@"removing domain"];
        v33 = [v15 cleanupDomainWithMode:*(a1 + 72)];
        [v15 invalidateSession];
        v34 = *(a1 + 40);
        objc_sync_enter(v34);
        v35 = *(a1 + 40);
        v36 = [v15 volume];
        [v35 _writeDomainPropertiesIntoLibrary:v36 ifChangedFrom:&unk_1F4C62AD0];

        objc_sync_exit(v34);
        (*(*(a1 + 56) + 16))();

        v12 = v32;
        goto LABEL_28;
      }

      v28 = fp_current_or_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v32 = 0;
    }

    goto LABEL_27;
  }

  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_3(a1);
  }

  v8 = *(a1 + 56);
  v9 = FPProviderXPCInvalidError();
  (*(v8 + 16))(v8, 0, v9);
LABEL_29:
}

- (void)reloadDomain:(id)domain unableToStartup:(BOOL)startup startupError:(id)error completionHandler:(id)handler
{
  startupCopy = startup;
  domainCopy = domain;
  errorCopy = error;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [domainCopy identifier];
  v15 = identifier;
  if (!identifier || ([identifier isEqualToString:*MEMORY[0x1E6967178]] & 1) != 0 || (domainsByID = selfCopy->_domainsByID, objc_msgSend(v15, "precomposedStringWithCanonicalMapping"), v17 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](domainsByID, "objectForKeyedSubscript:", v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v18))
  {

    objc_sync_exit(selfCopy);
    v19 = selfCopy->_server;
    v20 = +[FPDRequest requestForSelf];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke;
    v26[3] = &unk_1E83BFD08;
    v27 = v19;
    v28 = handlerCopy;
    v21 = v19;
    LOBYTE(v25) = 1;
    [(FPDProvider *)selfCopy addDomain:domainCopy byImportingDirectoryAtURL:0 knownFolders:MEMORY[0x1E695E0F0] userAllowedDBDrop:0 unableToStartup:startupCopy startupError:errorCopy reloadDomain:v25 request:v20 completionHandler:v26];

    selfCopy = v21;
  }

  else
  {
    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [FPDProvider reloadDomain:unableToStartup:startupError:completionHandler:];
    }

    identifier2 = [domainCopy identifier];
    v24 = FPProviderNotFoundError();
    (*(handlerCopy + 2))(handlerCopy, 0, v24);

    objc_sync_exit(selfCopy);
  }
}

void __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke_cold_1(v5, v6);
    }
  }

  [*(a1 + 32) signalProviderChanges];
  (*(*(a1 + 40) + 16))();
}

- (void)_setEnabledOrHiddenByUser:(BOOL)user forDomainIdentifier:(id)identifier newValue:(BOOL)value request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  requestCopy = request;
  handlerCopy = handler;
  v13 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v18 = fpfs_adopt_log();
  if ([(FPDProviderDescriptor *)self->_descriptor canToggleDomainVisibility])
  {
    v14 = *MEMORY[0x1E6967178];
    if (identifierCopy)
    {
      v14 = identifierCopy;
    }

    v15 = v14;

    v17 = handlerCopy;
    identifierCopy = v15;
    fp_dispatch_async_with_logs();
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v16);
  }

  __fp_pop_log();
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_2(a1);
    }

    v5 = *(a1 + 48);
    v6 = FPProviderXPCInvalidError();
    (*(v5 + 16))(v5, v6);

    return;
  }

  v7 = v3;
  objc_sync_enter(v7);
  v8 = *(*(a1 + 32) + 80);
  v9 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
  v10 = [v8 objectForKeyedSubscript:v9];

  objc_sync_exit(v7);
  if (v10)
  {
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    v12 = *(*(a1 + 32) + 80);
    v13 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v14 = [v12 objectForKeyedSubscript:v13];

    if (*(a1 + 64) == 1)
    {
      if (*(a1 + 65) != [v14 userEnabled])
      {
        [v14 setUserEnabled:?];
        v15 = *(a1 + 65);
        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v14;
          _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_INFO, "[INFO] reloading domain because userEnabled state changed for %@", &buf, 0xCu);
        }

LABEL_18:

        v19 = *(a1 + 32);
        v20 = [v14 volume];
        [v19 _writeDomainPropertiesIntoLibrary:v20 ifChangedFrom:0];

        v18 = 1;
        goto LABEL_19;
      }
    }

    else if (*(a1 + 65) != [v14 isHiddenByUser])
    {
      [v14 setHiddenByUser:?];
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_1CEFC7000, v16, OS_LOG_TYPE_INFO, "[INFO] reloading domain because hiddenByUser state changed for %@", &buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_18;
    }

    v18 = 0;
    v15 = 0;
LABEL_19:
    if ([v14 userEnabled])
    {
      v21 = [v14 isHiddenByUser] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    objc_sync_exit(v11);

    if (v15)
    {
      v22 = [v14 defaultBackend];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = [v24 initWithDomain:*MEMORY[0x1E6967190] code:-2011 userInfo:0];
        v26 = [v14 defaultBackend];
        [v26 signalErrorResolved:v25 completionHandler:&__block_literal_global_187];
      }

      else
      {
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_1();
        }
      }
    }

    if (v18)
    {
      v27 = [v14 indexer];
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__8;
      v37 = __Block_byref_object_dispose__8;
      v38 = 0;
      if (v27)
      {
        v28 = dispatch_semaphore_create(0);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_188;
        v31[3] = &unk_1E83BFD78;
        p_buf = &buf;
        v29 = v28;
        v32 = v29;
        [v27 setIndexingEnabled:v21 completionHandler:v31];
        dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      }

      (*(*(a1 + 48) + 16))();
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    return;
  }

  v17 = *(a1 + 48);
  v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:MEMORY[0x1E695E0F8]];
  (*(v17 + 16))(v17);
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185_cold_1();
    }
  }
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_188(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)enableAllDomainsIfNoUserElection
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = dispatch_group_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_domainsByID allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        dispatch_group_enter(v3);
        identifier = [v9 identifier];
        v11 = +[FPDRequest requestForSelf];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __47__FPDProvider_enableAllDomainsIfNoUserElection__block_invoke;
        v12[3] = &unk_1E83BDFC8;
        v13 = v3;
        [(FPDProvider *)selfCopy setEnabled:1 forDomainIdentifier:identifier request:v11 completionHandler:v12];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
}

void __47__FPDProvider_enableAllDomainsIfNoUserElection__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  dispatch_group_leave(*(a1 + 32));
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 fp_prettyDescription];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[WARNING] unhandled error: %@", &v6, 0xCu);
    }
  }
}

- (void)setEjectable:(BOOL)ejectable forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v14 = fpfs_adopt_log();
  v10 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  v13 = handlerCopy;
  v12 = v11;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v5 = *(a1 + 48);
    v6 = FPProviderXPCInvalidError();
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = v3;
    objc_sync_enter(v7);
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 80);
    v10 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v11 = [v9 objectForKeyedSubscript:v10];

    [v11 setEjectable:*(a1 + 64)];
    v12 = *(a1 + 32);
    v13 = [v11 volume];
    [v12 _writeDomainPropertiesIntoLibrary:v13 ifChangedFrom:0];

    objc_sync_exit(v7);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)setDomainUserInfo:(id)info forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  identifierCopy = identifier;
  v11 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v17 = fpfs_adopt_log();
  v12 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v12 = identifierCopy;
  }

  v13 = v12;

  v16 = handlerCopy;
  v14 = v13;
  v15 = infoCopy;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v5 = *(a1 + 56);
    v6 = FPProviderXPCInvalidError();
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = v3;
    objc_sync_enter(v7);
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 80);
    v10 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      [v11 setDomainUserInfo:*(a1 + 48)];
      v12 = *(a1 + 32);
      v13 = [v11 volume];
      [v12 _writeDomainPropertiesIntoLibrary:v13 ifChangedFrom:0];
    }

    objc_sync_exit(v7);
    (*(*(a1 + 56) + 16))();
  }
}

- (void)setReplicatedKnownFolders:(unint64_t)folders forDomainIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = [(FPDProvider *)self loggerForDomainWithIdentifier:identifierCopy];
  v14 = fpfs_adopt_log();
  v10 = *MEMORY[0x1E6967178];
  if (identifierCopy)
  {
    v10 = identifierCopy;
  }

  v11 = v10;

  v13 = handlerCopy;
  v12 = v11;
  fp_dispatch_async_with_logs();

  __fp_pop_log();
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3[8] == 1)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_2(a1);
    }

    v5 = *(a1 + 48);
    v6 = FPProviderXPCInvalidError();
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = v3;
    objc_sync_enter(v7);
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = *(*(a1 + 32) + 80);
    v10 = [*(a1 + 40) precomposedStringWithCanonicalMapping];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [v11 nsDomain];
      v13 = [v12 replicatedKnownFolders];
      v14 = *(a1 + 64);

      if (v13 != v14)
      {
        v15 = *(a1 + 64);
        v16 = [v11 nsDomain];
        [v16 setReplicatedKnownFolders:v15];

        v17 = *(a1 + 32);
        v18 = [v11 volume];
        [v17 _writeDomainPropertiesIntoLibrary:v18 ifChangedFrom:0];
      }
    }

    objc_sync_exit(v7);
    (*(*(a1 + 48) + 16))();
  }
}

- (void)dumpValue:(id)value forKey:(id)key to:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  toCopy = to;
  v9 = [key stringByAppendingString:@":"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = valueCopy;
      [toCopy write:{@"  + %@ (%lu)\n", v9, -[__CFString count](v10, "count")}];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      fp_shortDescription2 = v10;
      v12 = [(__CFString *)fp_shortDescription2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(fp_shortDescription2);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              fp_shortDescription = [v16 fp_shortDescription];
              [toCopy write:{@"    - %@\n", fp_shortDescription}];
            }

            else
            {
              [toCopy write:{@"    - %@\n", v16}];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(__CFString *)fp_shortDescription2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_19;
      }

      fp_shortDescription2 = [(__CFString *)valueCopy fp_shortDescription];
      [toCopy write:{@"  + %-25@ %@\n", v9, fp_shortDescription2}];
    }

    goto LABEL_22;
  }

  if (![(__CFString *)valueCopy count])
  {
    [toCopy write:{@"  + %-25@ {}\n", v9, v19}];
    goto LABEL_22;
  }

LABEL_19:
  v18 = @"none";
  if (valueCopy)
  {
    v18 = valueCopy;
  }

  [toCopy write:{@"  + %-25@ %@\n", v9, v18}];
LABEL_22:
}

+ (id)getXattr:(const char *)xattr at:(const char *)at
{
  v6 = getxattr(at, xattr, 0, 0, 0, 1);
  if (v6 < 1)
  {
    v10 = &stru_1F4C2FFD0;
  }

  else
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6, 0x555BE6DDuLL);
    v9 = getxattr(at, xattr, v8, v7, 0, 1);
    if (v9 < 1)
    {
      v10 = &stru_1F4C2FFD0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v8 length:v9 encoding:4];
    }

    free(v8);
  }

  return v10;
}

+ (void)dumpXattrsForItemAtURL:(id)l to:(id)to
{
  lCopy = l;
  toCopy = to;
  v6 = lCopy;
  fileSystemRepresentation = [lCopy fileSystemRepresentation];
  v8 = listxattr(fileSystemRepresentation, 0, 0, 0);
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = malloc_type_malloc(v8, 0xF128B63CuLL);
    v11 = listxattr(fileSystemRepresentation, v10, v9, 0);
    if (v11 >= 1)
    {
      v12 = v11;
      lastPathComponent = [lCopy lastPathComponent];
      [toCopy write:{@"%@\n", lastPathComponent}];

      v14 = &v10[v12];
      v15 = v10;
      do
      {
        v16 = [FPDProvider getXattr:v15 at:fileSystemRepresentation];
        [toCopy write:{@"    %s: %@\n", v15, v16}];

        v15 += strnlen(v15, v14 - v15) + 1;
      }

      while (v15 < v14);
    }

    free(v10);
  }
}

- (void)dumpXattrsForDomains:(id)domains dumper:(id)dumper
{
  v52 = *MEMORY[0x1E69E9840];
  domainsCopy = domains;
  dumperCopy = dumper;
  [dumperCopy write:@"== CloudStorage xattrs ==\n"];
  [dumperCopy write:@"=========================\n"];
  fp_cloudStorageDirectory = [MEMORY[0x1E695DFF8] fp_cloudStorageDirectory];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = domainsCopy;
  v29 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v29)
  {
    v27 = *v45;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(FPDProvider *)self providerDomainForDomain:*(*(&v44 + 1) + 8 * v8)];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        storageURLs = [v9 storageURLs];
        v11 = [storageURLs countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v41;
          do
          {
            v14 = 0;
            do
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(storageURLs);
              }

              v15 = [*(*(&v40 + 1) + 8 * v14) fp_commonDirectDescendantOf:fp_cloudStorageDirectory];
              if (v15)
              {
                [FPDProvider dumpXattrsForItemAtURL:v15 to:dumperCopy];
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [storageURLs countByEnumeratingWithState:&v40 objects:v50 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v29);
      v29 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v29);
  }

  [dumperCopy write:@"\n"];
  [dumperCopy write:@"== FileProvider xattrs ==\n"];
  [dumperCopy write:@"=========================\n"];
  fp_supportDirectory = [MEMORY[0x1E695DFF8] fp_supportDirectory];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obja = obj;
  v30 = [obja countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v30)
  {
    v28 = *v37;
    do
    {
      v16 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(obja);
        }

        v17 = [(FPDProvider *)self providerDomainForDomain:*(*(&v36 + 1) + 8 * v16)];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        storageURLs2 = [v17 storageURLs];
        v19 = [storageURLs2 countByEnumeratingWithState:&v32 objects:v48 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
          do
          {
            v22 = 0;
            do
            {
              if (*v33 != v21)
              {
                objc_enumerationMutation(storageURLs2);
              }

              v23 = [*(*(&v32 + 1) + 8 * v22) fp_commonDirectDescendantOf:fp_cloudStorageDirectory];
              if (v23)
              {
                [FPDProvider dumpXattrsForItemAtURL:v23 to:dumperCopy];
              }

              ++v22;
            }

            while (v20 != v22);
            v20 = [storageURLs2 countByEnumeratingWithState:&v32 objects:v48 count:16];
          }

          while (v20);
        }

        ++v16;
      }

      while (v16 != v30);
      v30 = [obja countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v30);
  }

  [dumperCopy write:@"\n"];
}

+ (void)dumpXattrsForSyncRootDirectoryOfVolume:(id)volume dumper:(id)dumper
{
  dumperCopy = dumper;
  syncRootsDirectory = [volume syncRootsDirectory];
  [self dumpXattrsForContentsOfDirectoryAtURL:syncRootsDirectory dumper:dumperCopy];
}

+ (void)dumpXattrsForSystemDirectoryOfVolume:(id)volume dumper:(id)dumper
{
  dumperCopy = dumper;
  systemDirectory = [volume systemDirectory];
  [self dumpXattrsForContentsOfDirectoryAtURL:systemDirectory dumper:dumperCopy];
}

+ (void)dumpXattrsForContentsOfDirectoryAtURL:(id)l dumper:(id)dumper
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  dumperCopy = dumper;
  if (lCopy)
  {
    lastPathComponent = [lCopy lastPathComponent];
    [dumperCopy write:{@"== %@ xattrs ==\n", lastPathComponent}];

    [dumperCopy write:@"=========================\n"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    array = [MEMORY[0x1E695DEC8] array];
    v19 = lCopy;
    v10 = [defaultManager contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:array options:0 error:0];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          lastPathComponent2 = [v16 lastPathComponent];
          v18 = [lastPathComponent2 isEqualToString:@".DS_Store"];

          if ((v18 & 1) == 0)
          {
            [FPDProvider dumpXattrsForItemAtURL:v16 to:dumperCopy];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [dumperCopy write:@"\n"];
    lCopy = v19;
  }
}

- (void)dumpDomain:(id)domain allowedToDump:(BOOL)dump dumper:(id)dumper options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  dumpCopy = dump;
  domainCopy = domain;
  dumperCopy = dumper;
  requestCopy = request;
  if (dumpCopy)
  {
    handlerCopy = handler;
    handlerCopy2 = [(FPDProvider *)self providerDomainForDomain:domainCopy];
    [domainCopy dumpStateTo:dumperCopy providerDomain:handlerCopy2 options:options request:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v18 = *(handler + 2);
    handlerCopy2 = handler;
    v18();
  }
}

- (void)dumpAllDomains:(id)domains domains:(id)a4 auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  domainsCopy = domains;
  v16 = a4;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  if ([v16 count])
  {
    v32 = domainsCopy;
    [v16 firstObject];
    v20 = v31 = options;
    [v16 removeObjectAtIndex:0];
    v21 = MEMORY[0x1E696AEC0];
    identifier = [(FPDProvider *)self identifier];
    [v20 identifier];
    v23 = filterCopy;
    v25 = v24 = requestCopy;
    v26 = [v21 fp_providerDomainIDFromProviderID:identifier domainIdentifier:v25];

    requestCopy = v24;
    filterCopy = v23;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v34[3] = &unk_1E83BFE40;
    v35 = v26;
    selfCopy = self;
    v37 = v20;
    domainsCopy = v32;
    v38 = v32;
    v43 = v31;
    v39 = requestCopy;
    v40 = v16;
    v27 = *&token->var0[4];
    v44 = *token->var0;
    v45 = v27;
    v41 = filterCopy;
    v42 = handlerCopy;
    v28 = *&token->var0[4];
    v33[0] = *token->var0;
    v33[1] = v28;
    v29 = v20;
    v30 = v26;
    [(FPDProvider *)self checkTCCAccessForDomainID:v30 auditToken:v33 completionHandler:v34];
  }

  else
  {
    handlerCopy[2](handlerCopy);
  }
}

void __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_cold_1(a1, v5);
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 96);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_232;
  v16[3] = &unk_1E83BFE18;
  v16[4] = v7;
  v17 = v10;
  v18 = *(a1 + 72);
  v12 = *(a1 + 120);
  v23 = *(a1 + 104);
  v24 = v12;
  v19 = *(a1 + 64);
  v13 = *(a1 + 80);
  v15 = *(a1 + 88);
  v14 = *(a1 + 96);
  v20 = v13;
  v22 = v14;
  v21 = v15;
  [v7 dumpDomain:v8 allowedToDump:a2 dumper:v17 options:v9 request:v11 completionHandler:v16];
}

uint64_t __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_232(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 64);
  v8 = *(a1 + 104);
  v10[0] = *(a1 + 88);
  v10[1] = v8;
  return [v2 dumpAllDomains:v1 domains:v3 auditToken:v10 request:v4 providerFilter:v7 options:v5 completionHandler:v6];
}

- (id)_domainsWithFilter:(id)filter
{
  filterCopy = filter;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  domainsByID = [(FPDProvider *)selfCopy domainsByID];
  allValues = [domainsByID allValues];
  v8 = [allValues copy];

  objc_sync_exit(selfCopy);
  if ([filterCopy length])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__FPDProvider__domainsWithFilter___block_invoke;
    v11[3] = &unk_1E83BFE68;
    v12 = filterCopy;
    v9 = [v8 fp_filter:v11];

    v8 = v9;
  }

  return v8;
}

uint64_t __34__FPDProvider__domainsWithFilter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 providerDomainID];
  if ([v4 localizedCaseInsensitiveContainsString:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 nsDomain];
    v7 = [v6 displayName];
    v5 = [v7 localizedCaseInsensitiveContainsString:*(a1 + 32)];
  }

  return v5;
}

- (void)dumpStateTo:(id)to auditToken:(id *)token request:(id)request providerFilter:(id)filter options:(unint64_t)options completionHandler:(id)handler
{
  toCopy = to;
  requestCopy = request;
  filterCopy = filter;
  handlerCopy = handler;
  v18 = filterCopy;
  v19 = handlerCopy;
  v20 = [(FPDProvider *)self _domainsWithFilter:v18];
  if ([v20 count])
  {
    optionsCopy = options;
    [toCopy write:@"=====================================================\n"];
    [(FPDProvider *)self identifier];
    v21 = v47 = token;
    [toCopy write:{@"%@\n", v21}];

    [toCopy write:@"=====================================================\n"];
    descriptor = [(FPDProvider *)self descriptor];
    extensionPointVersion = [descriptor extensionPointVersion];
    [(FPDProvider *)self dumpValue:extensionPointVersion forKey:@"version" to:toCopy];

    v49 = requestCopy;
    v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "isAvailableSystemWide")}];
    [(FPDProvider *)self dumpValue:v24 forKey:@"available system wide" to:toCopy];

    v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "supportsEnumeration")}];
    [(FPDProvider *)self dumpValue:v25 forKey:@"supports enumeration" to:toCopy];

    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[FPDProvider supportsFPFS](self, "supportsFPFS")}];
    [(FPDProvider *)self dumpValue:v26 forKey:@"supports FPFS" to:toCopy];

    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "readonly")}];
    [(FPDProvider *)self dumpValue:v27 forKey:@"read-only" to:toCopy];

    extensionStorageURLs = [(FPDProvider *)self extensionStorageURLs];
    [(FPDProvider *)self dumpValue:extensionStorageURLs forKey:@"extension storage URLs" to:toCopy];

    purposeIdentifier = [(FPDProvider *)self purposeIdentifier];
    [(FPDProvider *)self dumpValue:purposeIdentifier forKey:@"file coordination purpose ID" to:toCopy];

    localizedName = [descriptor localizedName];
    [(FPDProvider *)self dumpValue:localizedName forKey:@"display name" to:toCopy];

    extensionBundleURL = [descriptor extensionBundleURL];
    [(FPDProvider *)self dumpValue:extensionBundleURL forKey:@"bundle URL" to:toCopy];

    topLevelBundleIdentifier = [descriptor topLevelBundleIdentifier];
    [(FPDProvider *)self dumpValue:topLevelBundleIdentifier forKey:@"containing bundle identifier" to:toCopy];

    personaIdentifier = [descriptor personaIdentifier];
    [(FPDProvider *)self dumpValue:personaIdentifier forKey:@"persona" to:toCopy];

    documentGroupName = [descriptor documentGroupName];
    [(FPDProvider *)self dumpValue:documentGroupName forKey:@"document group name" to:toCopy];

    supportedFileTypes = [descriptor supportedFileTypes];
    [(FPDProvider *)self dumpValue:supportedFileTypes forKey:@"supported file types" to:toCopy];

    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "usesUniqueItemIdentifiersAcrossDevices")}];
    [(FPDProvider *)self dumpValue:v36 forKey:@"uses unique item identifiers across devices" to:toCopy];

    v37 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "appliesChangesAtomically")}];
    [(FPDProvider *)self dumpValue:v37 forKey:@"applies changes atomically" to:toCopy];

    v38 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "supportsFailingUploadOnConflict")}];
    [(FPDProvider *)self dumpValue:v38 forKey:@"supports failing upload on conflict" to:toCopy];

    v39 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(descriptor, "disallowedByMDM")}];
    [(FPDProvider *)self dumpValue:v39 forKey:@"disallowed by MDM" to:toCopy];

    manager = [(FPDProvider *)self manager];
    pushConnection = [manager pushConnection];

    topLevelBundleIdentifier2 = [descriptor topLevelBundleIdentifier];
    v45 = [pushConnection _debugTopicsForApplicationIdentifier:topLevelBundleIdentifier2];

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke;
    v57[3] = &unk_1E83BFE90;
    v57[4] = self;
    v42 = toCopy;
    v58 = v42;
    [v45 enumerateKeysAndObjectsUsingBlock:v57];
    [v42 write:@"\n"];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v43 addObjectsFromArray:v20];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke_2;
    v51[3] = &unk_1E83BE8C8;
    v52 = v42;
    v53 = v18;
    selfCopy = self;
    v55 = v20;
    v56 = v19;
    v44 = *&v47->var0[4];
    v50[0] = *v47->var0;
    v50[1] = v44;
    requestCopy = v49;
    [(FPDProvider *)self dumpAllDomains:v52 domains:v43 auditToken:v50 request:v49 providerFilter:v53 options:optionsCopy completionHandler:v51];
  }

  else
  {
    v19[2](v19);
  }
}

void __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [v6 stringWithFormat:@"push topics (%@)", a2];
  [v5 dumpValue:v7 forKey:v8 to:*(a1 + 40)];
}

uint64_t __87__FPDProvider_dumpStateTo_auditToken_request_providerFilter_options_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) write:@"\n"];
  if ([*(a1 + 40) length])
  {
    [*(a1 + 48) dumpXattrsForDomains:*(a1 + 56) dumper:*(a1 + 32)];
  }

  v2 = *(*(a1 + 64) + 16);

  return v2();
}

- (void)fetchTelemetryReportForAllDomains:(id)domains alwaysFetchExpandedUsageStats:(BOOL)stats resultDictionary:(id)dictionary completionHandler:(id)handler
{
  statsCopy = stats;
  domainsCopy = domains;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  if ([domainsCopy count])
  {
    firstObject = [domainsCopy firstObject];
    [domainsCopy removeObjectAtIndex:0];
    defaultBackend = [firstObject defaultBackend];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      defaultBackend2 = [firstObject defaultBackend];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke;
      v17[3] = &unk_1E83BFEB8;
      v18 = dictionaryCopy;
      v19 = firstObject;
      selfCopy = self;
      v21 = domainsCopy;
      v23 = statsCopy;
      v22 = handlerCopy;
      [defaultBackend2 fetchTelemetryReportWithAlwaysFetchExpandedUsageStats:statsCopy completionHandler:v17];
    }

    else
    {
      [(FPDProvider *)self fetchTelemetryReportForAllDomains:domainsCopy alwaysFetchExpandedUsageStats:statsCopy resultDictionary:dictionaryCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, dictionaryCopy, 0);
  }
}

void __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) identifier];
    v10 = v8;
    v11 = v5;
  }

  else
  {
    if (v6)
    {
      v12 = fp_current_or_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke_cold_1(a1);
      }
    }

    v13 = *(a1 + 32);
    v9 = [*(a1 + 40) identifier];
    v11 = MEMORY[0x1E695E0F8];
    v10 = v13;
  }

  [v10 setObject:v11 forKeyedSubscript:v9];

  [*(a1 + 48) fetchTelemetryReportForAllDomains:*(a1 + 56) alwaysFetchExpandedUsageStats:*(a1 + 72) resultDictionary:*(a1 + 32) completionHandler:*(a1 + 64)];
}

- (void)fetchTelemetryReportWithProviderFilter:(id)filter alwaysFetchExpandedUsageStats:(BOOL)stats completionHandler:(id)handler
{
  statsCopy = stats;
  handlerCopy = handler;
  v8 = [(FPDProvider *)self _domainsWithFilter:filter];
  if ([v8 count])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v9 addObjectsFromArray:v8];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(FPDProvider *)self fetchTelemetryReportForAllDomains:v9 alwaysFetchExpandedUsageStats:statsCopy resultDictionary:v10 completionHandler:handlerCopy];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8], 0);
  }
}

+ (void)_garbageCollectFoldersWithNoRelatedDomain:(id)domain supportDir:(id)dir
{
  v32 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  dirCopy = dir;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v22 = dirCopy;
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:dirCopy];
  v23 = defaultManager;
  v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = *MEMORY[0x1E695DB78];
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v25 = 0;
        [v15 getResourceValue:&v25 forKey:v13 error:0];
        v16 = v25;
        if ([v16 BOOLValue])
        {
          v17 = [v15 fp_fpfsProviderDomainID:0 skipTypeCheck:1 error:0];
          if ([v17 length])
          {
            v18 = [v17 componentsSeparatedByString:@"/"];
            v19 = [v18 objectAtIndex:0];

            if (([domainCopy containsObject:v19] & 1) == 0)
            {
              v20 = fp_current_or_default_log();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                [FPDProvider _garbageCollectFoldersWithNoRelatedDomain:v30 supportDir:v15];
              }

              path = [v15 path];
              [v23 removeItemAtPath:path error:0];
            }
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }
}

- (void)initWithDescriptor:(uint64_t)a3 server:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", v4, 0x16u);
}

+ (void)onDiskProvidersForServer:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v5, v3, "[DEBUG] no root reachable for domain %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] hiding default domain for %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.2()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] exposing default domain for %@", v4);
}

- (void)_recreateDefaultDomainIfNeededOnVolume:.cold.3()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_7_1(&dword_1CEFC7000, v3, v3, "[DEBUG] creating default domain for %@", v4);
}

+ (void)parseDomainProperties:(uint64_t)a1 descriptor:(uint64_t)a2 volume:replicatedByDefault:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_15_1(&dword_1CEFC7000, v5, v6, "[ERROR] cannot parse nsDomain for domain %{public}@");
}

+ (void)parseDomainProperties:(uint64_t)a1 descriptor:(uint64_t)a2 volume:replicatedByDefault:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_15_1(&dword_1CEFC7000, v5, v6, "[ERROR] unhandled domain %{public}@ with missing properties");
}

- (void)importDomainsFromLibrary:updatePlist:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_13_1(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v3, v3, "[ERROR] could not load the domain properties: %{public}@", v4);
}

void __108__FPDProvider_addDomain_byImportingDirectoryAtURL_userAllowedDBDrop_knownFolders_request_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] failed to clear import cookie for domain %@: %@");
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  LODWORD(v0) = *(v0 + 24);
  v2 = *(*v1 + 24);
  v4[0] = 67109376;
  v4[1] = v0;
  v5 = 1024;
  v6 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] inheriting userEnable=%{BOOL}d hiddenByUser=%{BOOL}d from default domain", v4, 0xEu);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15(&dword_1CEFC7000, v0, v1, "[ERROR] Can't add domain %@ on non-default volume %@: not supported");
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_5(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_ERROR, "[ERROR] Unable to resolve library to setup domain at path %@: %@", v4, 0x16u);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] Can't add domain %@ with external identifier to a default volume", v2);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_cold_8(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 88));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_112_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __150__FPDProvider_addDomain_byImportingDirectoryAtURL_knownFolders_userAllowedDBDrop_unableToStartup_startupError_reloadDomain_request_completionHandler___block_invoke_114_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__FPDProvider_removeAllDomainsForRequest_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_0(a1);
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __59__FPDProvider_removeDomain_mode_request_completionHandler___block_invoke_cold_3(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)reloadDomain:unableToStartup:startupError:completionHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] attempt to reactivate a domain that got removed %@", v2);
}

void __75__FPDProvider_reloadDomain_unableToStartup_startupError_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_0(a1);
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __96__FPDProvider__setEnabledOrHiddenByUser_forDomainIdentifier_newValue_request_completionHandler___block_invoke_185_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_0(&dword_1CEFC7000, v0, v1, "[ERROR] error signaling error resolved during domain enablement transition: %@", v2);
}

void __66__FPDProvider_setEjectable_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_0(a1);
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __71__FPDProvider_setDomainUserInfo_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = NSStringFromSelector(*(a1 + 64));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __79__FPDProvider_setReplicatedKnownFolders_forDomainIdentifier_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_12_0(a1);
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void __98__FPDProvider_dumpAllDomains_domains_auditToken_request_providerFilter_options_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) fp_obfuscatedProviderDomainID];
  v4 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __114__FPDProvider_fetchTelemetryReportForAllDomains_alwaysFetchExpandedUsageStats_resultDictionary_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) providerDomainID];
  v2 = [v1 fp_obfuscatedProviderDomainID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)_garbageCollectFoldersWithNoRelatedDomain:(uint64_t)a1 supportDir:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_2_8(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_debug_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] No provider for %@, deleting directory", v4, 0xCu);
}

@end