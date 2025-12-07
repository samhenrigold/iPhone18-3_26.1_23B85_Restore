@interface LiveFSFPExtensionHelper
+ (id)getNSErrorFromLiveFSErrno:(int)errno;
+ (id)getNSErrorFromUnknownError:(id)error;
- (BOOL)_hasManagerOrError:(id *)error;
- (BOOL)_isLoggedInOrError:(id *)error;
- (BOOL)_isLoggedInOrErrorLocked:(id *)locked;
- (LiveFSFPExtensionHelper)init;
- (id)LiveFSDefaultMover;
- (id)URLForItemWithIdentifier:(id)identifier;
- (id)disconnectWithOptions:(unint64_t)options completionHandler:(id)handler;
- (id)ensureMountPathSetup;
- (id)enumeratorForContainerItemIdentifier:(id)identifier error:(id *)error;
- (id)enumeratorForSearchQuery:(id)query error:(id *)error;
- (id)fileProviderErrorFromFSError:(id)error;
- (id)getItemForParent:(id)parent name:(id)name;
- (id)getVolumeManagerWithError:(id *)error;
- (id)itemAtPath:(id)path parent:(id)parent;
- (id)itemAtPathLocked:(id)locked parent:(id)parent cachedOnly:(BOOL)only;
- (id)itemForIdentifier:(id)identifier error:(id *)error;
- (id)itemForIdentifierLocked:(id)locked error:(id *)error;
- (id)itemForPath:(id)path cachedOnly:(BOOL)only error:(id *)error;
- (id)itemForURL:(id)l cachedOnly:(BOOL)only error:(id *)error;
- (id)itemPathForURL:(id)l;
- (id)makeVolumeListenerEndpointAndReturnError:(id *)error;
- (id)makeVolumeListenerEndpointAndReturnErrorLocked:(id *)locked;
- (id)pathForInodeID:(id)d error:(id *)error;
- (id)persistentIdentifierForItemAtURL:(id)l;
- (id)supportedServiceSourcesForItemIdentifier:(id)identifier error:(id *)error;
- (void)addItem:(id)item identifier:(id)identifier fileHandle:(id)handle;
- (void)createDirectoryWithName:(id)name inParentItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)doInvalidate:(BOOL)invalidate;
- (void)enumerateRootContainer;
- (void)fetchTrashIdentifiersWithCompletionHandler:(id)handler;
- (void)getVolumeInfoLocked;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)importDocumentAtURL:(id)l toParentItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)init;
- (void)itemChangedAtURL:(id)l;
- (void)providePlaceholderAtURL:(id)l completionHandler:(id)handler;
- (void)reIDItem:(id)item oldID:(id)d;
- (void)refreshVolumeInfo;
- (void)removeEnumeratorForContainer:(id)container;
- (void)removeEnumeratorForContainerLocked:(id)locked;
- (void)removeItem:(id)item parent:(id)parent name:(id)name fileHandle:(id)handle;
- (void)renameItemWithIdentifier:(id)identifier toName:(id)name completionHandler:(id)handler;
- (void)reparentItem:(id)item oldID:(id)d oldParent:(id)parent oldName:(id)name newParent:(id)newParent newName:(id)newName;
- (void)reparentItemWithIdentifier:(id)identifier toParentItemWithIdentifier:(id)withIdentifier newName:(id)name completionHandler:(id)handler;
- (void)setFavoriteRank:(id)rank forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setLastUsedDate:(id)date forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)setTagData:(id)data forItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)startProvidingItemAtURL:(id)l completionHandler:(id)handler;
- (void)stopProvidingItemAtURL:(id)l;
- (void)trashItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)unlockWithPassword:(id)password remember:(BOOL)remember completionHandler:(id)handler;
- (void)untrashItemWithIdentifier:(id)identifier toParentItemIdentifier:(id)itemIdentifier completionHandler:(id)handler;
@end

@implementation LiveFSFPExtensionHelper

- (LiveFSFPExtensionHelper)init
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[LiveFSFPExtensionHelper init]";
    _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_DEFAULT, "%s starting", buf, 0xCu);
  }

  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    domain = [(NSFileProviderExtension *)self domain];
    domain2 = [(NSFileProviderExtension *)self domain];
    if (domain2)
    {
      domain3 = [(NSFileProviderExtension *)self domain];
      identifier = [domain3 identifier];
    }

    else
    {
      identifier = &stru_286811DF0;
    }

    *buf = 136316162;
    v45 = "[LiveFSFPExtensionHelper init]";
    v46 = 2112;
    v47 = docPath;
    v48 = 2112;
    v49 = providerName;
    v50 = 2112;
    v51 = domain;
    v52 = 2112;
    v53 = identifier;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier; %@", buf, 0x34u);
    if (domain2)
    {
    }
  }

  v43.receiver = self;
  v43.super_class = LiveFSFPExtensionHelper;
  v11 = [(NSFileProviderExtension *)&v43 init];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11->_docPath;
    v14 = v11->providerName;
    domain4 = [(NSFileProviderExtension *)v11 domain];
    domain5 = [(NSFileProviderExtension *)v11 domain];
    if (domain5)
    {
      domain3 = [(NSFileProviderExtension *)v11 domain];
      identifier2 = [domain3 identifier];
    }

    else
    {
      identifier2 = &stru_286811DF0;
    }

    *buf = 136316162;
    v45 = "[LiveFSFPExtensionHelper init]";
    v46 = 2112;
    v47 = v13;
    v48 = 2112;
    v49 = v14;
    v50 = 2112;
    v51 = domain4;
    v52 = 2112;
    v53 = identifier2;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier; %@", buf, 0x34u);
    if (domain5)
    {
    }
  }

  manager = v11->_manager;
  v11->_manager = 0;

  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  itemHandleMap = v11->itemHandleMap;
  v11->itemHandleMap = strongToWeakObjectsMapTable;

  strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  itemIDMap = v11->itemIDMap;
  v11->itemIDMap = strongToWeakObjectsMapTable2;

  strongToWeakObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  enumerators = v11->enumerators;
  v11->enumerators = strongToWeakObjectsMapTable3;

  v25 = objc_opt_new();
  itemCache = v11->itemCache;
  v11->itemCache = v25;

  v27 = objc_opt_new();
  serviceClient = v11->_serviceClient;
  v11->_serviceClient = v27;

  v29 = dispatch_queue_create("com.apple.userfsfp.rename_queue", 0);
  renameUpdateQueue = v11->renameUpdateQueue;
  v11->renameUpdateQueue = v29;

  if (v11->itemHandleMap && v11->itemCache && v11->_serviceClient && v11->itemIDMap && v11->enumerators)
  {
    v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/LiveFiles"];
    conn = v11->_conn;
    v11->_conn = 0;

    [(LiveFSLRUCache *)v11->itemCache setCountLimit:128];
    v33 = v11->_docPath;
    v11->_docPath = v31;
    v34 = v31;

    v11->_supportsTagging = 0;
    v11->_isDead = 0;
    v35 = [[LiveFSThumbnailsServiceSource alloc] initWithFileProviderExtension:v11];
    thumbnailsServiceSource = v11->thumbnailsServiceSource;
    v11->thumbnailsServiceSource = v35;

    v37 = dispatch_queue_create("com.apple.LiveFSFPEnumeratorHelperQueue", 0);
    enumeratorHelperQueue = v11->_enumeratorHelperQueue;
    v11->_enumeratorHelperQueue = v37;

    v39 = livefs_std_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[LiveFSFPExtensionHelper init]";
      _os_log_impl(&dword_255FE9000, v39, OS_LOG_TYPE_DEFAULT, "%s done", buf, 0xCu);
    }

LABEL_26:
    v40 = v11;
    goto LABEL_30;
  }

  v41 = livefs_std_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPExtensionHelper init];
  }

  v40 = 0;
LABEL_30:

  return v40;
}

- (id)ensureMountPathSetup
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_mountPath)
  {
    v4 = 0;
    goto LABEL_21;
  }

  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    docPath = selfCopy->_docPath;
    providerName = selfCopy->providerName;
    domain = [(NSFileProviderExtension *)selfCopy domain];
    domain2 = [(NSFileProviderExtension *)selfCopy domain];
    if (domain2)
    {
      domain3 = [(NSFileProviderExtension *)selfCopy domain];
      identifier = [domain3 identifier];
    }

    else
    {
      identifier = @"N/A";
    }

    v36 = 136316162;
    v37 = "[LiveFSFPExtensionHelper ensureMountPathSetup]";
    v38 = 2112;
    v39 = docPath;
    v40 = 2112;
    v41 = providerName;
    v42 = 2112;
    v43 = domain;
    v44 = 2112;
    v45 = identifier;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_INFO, "%s starting for docpath %@, providerName %@, domain: %@, identifier: %@", &v36, 0x34u);
    if (domain2)
    {
    }
  }

  if (!selfCopy->_docPath || !selfCopy->providerName || (-[NSFileProviderExtension domain](selfCopy, "domain"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (-[NSFileProviderExtension domain](selfCopy, "domain"), v12 = objc_claimAutoreleasedReturnValue(), [v12 identifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 == 0, v13, v12, v11, v14))
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (selfCopy->_docPath)
      {
        v29 = &stru_286811DF0;
      }

      else
      {
        v29 = @"doc path, ";
      }

      if (selfCopy->providerName)
      {
        v30 = &stru_286811DF0;
      }

      else
      {
        v30 = @"provider name, ";
      }

      domain4 = [(NSFileProviderExtension *)selfCopy domain];
      if (domain4)
      {
        v32 = &stru_286811DF0;
      }

      else
      {
        v32 = @"domain, ";
      }

      domain5 = [(NSFileProviderExtension *)selfCopy domain];
      identifier2 = [domain5 identifier];
      v37 = "[LiveFSFPExtensionHelper ensureMountPathSetup]";
      v35 = @"domain identifier";
      v36 = 136316162;
      if (identifier2)
      {
        v35 = &stru_286811DF0;
      }

      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v32;
      v44 = 2112;
      v45 = v35;
      _os_log_error_impl(&dword_255FE9000, v27, OS_LOG_TYPE_ERROR, "%s - Missing %@%@%@%@", &v36, 0x34u);
    }

    v4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v15 = 0;
    goto LABEL_20;
  }

  v15 = [(NSURL *)selfCopy->_docPath URLByAppendingPathComponent:selfCopy->providerName isDirectory:1];
  domain6 = [(NSFileProviderExtension *)selfCopy domain];
  identifier3 = [domain6 identifier];
  v18 = [v15 URLByAppendingPathComponent:identifier3 isDirectory:1];
  mountPath = selfCopy->_mountPath;
  selfCopy->_mountPath = v18;

  if (selfCopy->_clusterDomain)
  {
    domain7 = [(NSFileProviderExtension *)selfCopy domain];
    identifier4 = [domain7 identifier];
    v22 = [identifier4 length] > 6;

    if (!v22)
    {
      v4 = 0;
      selfCopy->_clusterMaster = 1;
      goto LABEL_20;
    }

    selfCopy->_clusterMaster = 0;
    domain8 = [(NSFileProviderExtension *)selfCopy domain];
    identifier5 = [domain8 identifier];
    v25 = [identifier5 substringToIndex:6];
    clusterMasterID = selfCopy->_clusterMasterID;
    selfCopy->_clusterMasterID = v25;
  }

  v4 = 0;
LABEL_20:

LABEL_21:
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)getVolumeInfoLocked
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2810000000;
  v12 = &unk_25600C5DB;
  v13 = 0;
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke;
  v8[3] = &unk_27981A740;
  v8[4] = &v14;
  v4 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_2;
  v7[3] = &unk_27981A830;
  v7[4] = &v14;
  v7[5] = &v20;
  [v4 getRootFileHandleWithError:v7];
  if (v21[5])
  {
    if (!v15[5])
    {
      v6[6] = MEMORY[0x277D85DD0];
      v6[7] = 3221225472;
      v6[8] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_3;
      v6[9] = &unk_27981A858;
      v6[10] = &v9;
      v6[11] = &v14;
      [v4 otherAttributeOf:? named:? requestID:? reply:?];
      if (!v15[5])
      {
        self->_idsPersist = v10[4] & 1;
        v5 = v21[5];
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_4;
        v6[3] = &unk_27981A858;
        v6[4] = &v9;
        v6[5] = &v14;
        [v4 otherAttributeOf:v5 named:@"_N_mntflags" requestID:-1 reply:v6];
        if (!v15[5])
        {
          self->_isReadOnlyVolume = v10[4] & 1;
          self->_supportsTagging = 1;
        }
      }
    }
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
}

void __46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *__46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_3(uint64_t a1, uint64_t a2, id a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 40) = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    result = [a3 bytes];
    *(v4 + 32) = *result;
  }

  return result;
}

void *__46__LiveFSFPExtensionHelper_getVolumeInfoLocked__block_invoke_4(uint64_t a1, uint64_t a2, id a3)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 40) = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];

    return MEMORY[0x2821F96F8]();
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    result = [a3 bytes];
    *(v4 + 32) = *result;
  }

  return result;
}

- (void)refreshVolumeInfo
{
  obj = self;
  objc_sync_enter(obj);
  [(LiveFSFPExtensionHelper *)obj getVolumeInfoLocked];
  objc_sync_exit(obj);
}

- (id)itemPathForURL:(id)l
{
  v39 = *MEMORY[0x277D85DE8];
  standardizedURL = [l standardizedURL];
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    domain = [(NSFileProviderExtension *)self domain];
    domain2 = [(NSFileProviderExtension *)self domain];
    if (domain2)
    {
      domain3 = [(NSFileProviderExtension *)self domain];
      identifier = [domain3 identifier];
    }

    else
    {
      identifier = &stru_286811DF0;
    }

    v27 = 136316418;
    v28 = "[LiveFSFPExtensionHelper itemPathForURL:]";
    v29 = 2112;
    v30 = standardizedURL;
    v31 = 2112;
    v32 = docPath;
    v33 = 2112;
    v34 = providerName;
    v35 = 2112;
    v36 = domain;
    v37 = 2112;
    v38 = identifier;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_INFO, "%s starting for url %@, docpath %@, providerName %@, domain: %@, identifier; %@", &v27, 0x3Eu);
    if (domain2)
    {
    }
  }

  v12 = 0;
  if ([(LiveFSFPExtensionHelper *)self _isLoggedInOrError:0])
  {
    v13 = [(NSURL *)self->_docPath URLByAppendingPathComponent:self->providerName isDirectory:1];
    domain4 = [(NSFileProviderExtension *)self domain];
    pathRelativeToDocumentStorage = [domain4 pathRelativeToDocumentStorage];
    v16 = [v13 URLByAppendingPathComponent:pathRelativeToDocumentStorage isDirectory:1];

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v27 = 138412290;
      v28 = v16;
      _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_INFO, "perItemDirectory: %@", &v27, 0xCu);
    }

    path = [v16 path];
    path2 = [standardizedURL path];
    if ([path2 hasPrefix:@"/var/mobile"])
    {
      v20 = [@"/private" stringByAppendingString:path2];

      path2 = v20;
    }

    if ([path2 hasPrefix:path])
    {
      v21 = [path2 substringFromIndex:{-[__CFString length](path, "length")}];

      if (([(__CFString *)v21 isEqualToString:&stru_286811DF0]& 1) != 0 || [(__CFString *)v21 isEqualToString:@"/._"])
      {
        v22 = livefs_std_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPExtensionHelper itemPathForURL:];
        }

        v12 = &stru_286811DF0;
        path = v21;
      }

      else
      {
        if ([(__CFString *)v21 hasPrefix:@"/"])
        {
          v25 = [(__CFString *)v21 substringFromIndex:1];

          v21 = v25;
        }

        v26 = livefs_std_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [LiveFSFPExtensionHelper itemPathForURL:];
        }

        path = v21;
        v12 = path;
      }
    }

    else
    {
      v23 = livefs_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper itemPathForURL:];
      }

      v12 = 0;
    }
  }

  return v12;
}

- (id)itemForPath:(id)path cachedOnly:(BOOL)only error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  ensureMountPathSetup = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  v9 = ensureMountPathSetup;
  if (ensureMountPathSetup)
  {
    selfCopy = ensureMountPathSetup;
    v11 = livefs_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForPath:cachedOnly:error:];
    }

    if (error)
    {
      v12 = selfCopy;
      v13 = 0;
      *error = selfCopy;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(LiveFSFPExtensionHelper *)selfCopy _isLoggedInOrErrorLocked:0])
    {
      v14 = livefs_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = pathCopy;
        _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "perItemPath is '%@'", &v20, 0xCu);
      }

      if (([pathCopy isEqualToString:&stru_286811DF0] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"._") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"/._"))
      {
        v15 = livefs_std_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        v17 = *MEMORY[0x277CC6348];
        if (v16)
        {
          v20 = 138412290;
          v21 = v17;
          _os_log_impl(&dword_255FE9000, v15, OS_LOG_TYPE_DEFAULT, "About to return ID %@", &v20, 0xCu);
        }

        v13 = [(LiveFSFPExtensionHelper *)selfCopy itemForIdentifierLocked:v17 error:0];
      }

      else
      {
        v19 = [(LiveFSFPExtensionHelper *)selfCopy itemForIdentifierLocked:*MEMORY[0x277CC6348] error:0];
        v13 = [(LiveFSFPExtensionHelper *)selfCopy itemAtPathLocked:pathCopy parent:v19];
      }
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  return v13;
}

- (id)itemForURL:(id)l cachedOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  if (error)
  {
    *error = 0;
  }

  v8 = [(LiveFSFPExtensionHelper *)self itemPathForURL:l];
  if (v8)
  {
    v9 = [(LiveFSFPExtensionHelper *)self itemForPath:v8 cachedOnly:onlyCopy error:error];
    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v9 && !*error)
  {
    *error = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:2];
  }

LABEL_10:

  return v9;
}

- (id)fileProviderErrorFromFSError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v12 = 0;
    goto LABEL_19;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:*MEMORY[0x277CCA050]])
  {

    goto LABEL_11;
  }

  code = [v5 code];

  if (code != 516)
  {
LABEL_11:
    domain2 = [v5 domain];
    v14 = [domain2 isEqualToString:*MEMORY[0x277CCA5B8]];

    if (v14)
    {
      v15 = +[LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:](LiveFSFPExtensionHelper, "getNSErrorFromLiveFSErrno:", [v5 code]);
    }

    else
    {
      v15 = v5;
    }

    v12 = v15;
    goto LABEL_19;
  }

  fp_collidingURL = [v5 fp_collidingURL];
  if (fp_collidingURL)
  {
    v9 = [(LiveFSFPExtensionHelper *)self itemForURL:fp_collidingURL error:0];
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[LiveFSFPExtensionHelper fileProviderErrorFromFSError:]";
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = fp_collidingURL;
      v23 = 2112;
      v24 = v9;
      _os_log_error_impl(&dword_255FE9000, v10, OS_LOG_TYPE_ERROR, "%s: got error %@, URL %@, item %@", &v17, 0x2Au);
    }

    if (v9)
    {
      v11 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v9];
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

LABEL_19:

  return v12;
}

- (void)handleInterruption
{
  v3 = livefs_std_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPExtensionHelper handleInterruption];
  }

  [(LiveFSFPExtensionHelper *)self doInvalidate:0];
}

- (void)handleInvalidation
{
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [LiveFSFPExtensionHelper handleInvalidation];
  }
}

- (void)doInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper doInvalidate:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (invalidateCopy)
  {
    selfCopy->_isDead = 1;
  }

  objectEnumerator = [(NSMapTable *)selfCopy->itemHandleMap objectEnumerator];
  if (objectEnumerator)
  {
    for (i = 0; ; i = nextObject)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      [nextObject resetFileHandle];
    }
  }

  [(NSMapTable *)selfCopy->itemHandleMap removeAllObjects];
  [(NSMapTable *)selfCopy->enumerators removeAllObjects];
  manager = selfCopy->_manager;
  selfCopy->_manager = 0;

  conn = selfCopy->_conn;
  if (conn)
  {
    exportedObject = [(NSXPCConnection *)conn exportedObject];
    [(NSXPCConnection *)selfCopy->_conn invalidate];
    v13 = selfCopy->_conn;
  }

  else
  {
    v13 = 0;
    exportedObject = 0;
  }

  selfCopy->_conn = 0;

  objc_sync_exit(selfCopy);
  if (exportedObject)
  {
    [exportedObject connectionWasInterupted];
  }
}

- (BOOL)_hasManagerOrError:(id *)error
{
  if (self->_isDead)
  {
    if (error)
    {
      *error = getNSErrorFromLiveFSErrno();
    }

    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_255FE9000, v4, OS_LOG_TYPE_INFO, "Call to _hasManagerOrError after extension torn down", v10, 2u);
    }
  }

  else
  {
    if (self->_manager)
    {
      return 1;
    }

    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _hasManagerOrError:];
    }

    v7 = [MEMORY[0x277D23D78] newConnectionForService:self->connectionURL];
    manager = self->_manager;
    self->_manager = v7;

    if (self->_manager)
    {
      return 1;
    }

    if (error)
    {
      *error = getNSErrorFromLiveFSErrno();
    }

    v4 = livefs_std_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _hasManagerOrError:];
    }
  }

  return 0;
}

- (id)getVolumeManagerWithError:(id *)error
{
  if ([(LiveFSFPExtensionHelper *)self _hasManagerOrError:?])
  {
    v4 = self->_manager;
  }

  else
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper getVolumeManagerWithError:];
    }

    v4 = 0;
  }

  return v4;
}

- (id)makeVolumeListenerEndpointAndReturnErrorLocked:(id *)locked
{
  v43 = *MEMORY[0x277D85DE8];
  if (![(LiveFSFPExtensionHelper *)self _hasManagerOrError:?])
  {
LABEL_20:
    v18 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  domain = [(NSFileProviderExtension *)self domain];
  if (!domain)
  {
    goto LABEL_13;
  }

  v6 = domain;
  domain2 = [(NSFileProviderExtension *)self domain];
  identifier = [domain2 identifier];
  if (!identifier)
  {

    goto LABEL_13;
  }

  v9 = identifier;
  domain3 = [(NSFileProviderExtension *)self domain];
  identifier2 = [domain3 identifier];
  v12 = [identifier2 isEqualToString:&stru_286811DF0];

  if (v12)
  {
LABEL_13:
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (v22)
    {
      v23 = livefs_std_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
      }
    }

    if (locked)
    {
      v24 = v22;
      *locked = v22;
    }

    goto LABEL_20;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    domain4 = [(NSFileProviderExtension *)self domain];
    identifier3 = [domain4 identifier];
    *buf = 136315394;
    v38 = "[LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:]";
    v39 = 2112;
    v40 = identifier3;
    _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "%s: About to get listener for volume %@", buf, 0x16u);
  }

  manager = self->_manager;
  v36 = 0;
  v17 = [(LiveFSClient *)manager volumes:&v36];
  v18 = v36;
  v19 = livefs_std_log();
  v20 = v19;
  if (v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }

    v21 = v18;
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v38 = "[LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:]";
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = 0;
    _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_DEFAULT, "%s: got vols %@ error %@", buf, 0x20u);
  }

  if (locked)
  {
    v27 = v18;
    *locked = v18;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

  if ([v17 count])
  {
    domain5 = [(NSFileProviderExtension *)self domain];
    identifier4 = [domain5 identifier];
    v30 = [v17 objectForKey:identifier4];

    if (v30)
    {
      v31 = self->_manager;
      domain6 = [(NSFileProviderExtension *)self domain];
      identifier5 = [domain6 identifier];
      v25 = [(LiveFSClient *)v31 listenerForVolume:identifier5 error:locked];

      goto LABEL_22;
    }

    v35 = livefs_std_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper makeVolumeListenerEndpointAndReturnErrorLocked:];
    }

    if (locked)
    {
      v34 = 2;
      goto LABEL_39;
    }

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  if (!locked)
  {
    goto LABEL_21;
  }

  v34 = 65;
LABEL_39:
  [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:v34];
  *locked = v25 = 0;
LABEL_22:

  return v25;
}

- (id)makeVolumeListenerEndpointAndReturnError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [(LiveFSFPExtensionHelper *)selfCopy makeVolumeListenerEndpointAndReturnErrorLocked:error];
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)_isLoggedInOrErrorLocked:(id *)locked
{
  domain = [(NSFileProviderExtension *)self domain];
  if (!domain)
  {
    goto LABEL_8;
  }

  v6 = domain;
  domain2 = [(NSFileProviderExtension *)self domain];
  identifier = [domain2 identifier];
  if (!identifier)
  {

    goto LABEL_8;
  }

  v9 = identifier;
  domain3 = [(NSFileProviderExtension *)self domain];
  identifier2 = [domain3 identifier];
  v12 = [identifier2 isEqualToString:&stru_286811DF0];

  if (v12)
  {
LABEL_8:
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (!v14)
    {
LABEL_12:
      if (locked)
      {
        v16 = v14;
        *locked = v14;
      }

      LOBYTE(v17) = 0;
      return v17;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

LABEL_11:

    goto LABEL_12;
  }

  if (self->_conn)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
    }

LABEL_19:

    if (locked)
    {
      *locked = 0;
    }

LABEL_21:
    LOBYTE(v17) = 1;
    return v17;
  }

  if (self->_clusterMaster)
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
    }

    goto LABEL_19;
  }

  isDead = self->_isDead;
  v19 = livefs_std_log();
  v20 = v19;
  if (isDead)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_INFO, "isLoggedInOrError called on dead extension", buf, 2u);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CC6300] code:-1004 userInfo:0];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:?];
  }

  v17 = [(LiveFSFPExtensionHelper *)self makeVolumeListenerEndpointAndReturnError:locked];
  if (v17)
  {
    v21 = v17;
    v22 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v17];
    conn = self->_conn;
    self->_conn = v22;

    v24 = livefs_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [LiveFSFPExtensionHelper _isLoggedInOrErrorLocked:];
    }

    v25 = self->_conn;
    interfaceForListeners = [MEMORY[0x277D23D78] interfaceForListeners];
    [(NSXPCConnection *)v25 setRemoteObjectInterface:interfaceForListeners];

    v27 = self->_conn;
    exportedClientInterface = [MEMORY[0x277D23DC0] exportedClientInterface];
    [(NSXPCConnection *)v27 setExportedInterface:exportedClientInterface];

    [(NSXPCConnection *)self->_conn setExportedObject:self->_serviceClient];
    objc_initWeak(buf, self);
    v29 = self->_conn;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke;
    v37[3] = &unk_27981A8A8;
    objc_copyWeak(&v38, buf);
    [(NSXPCConnection *)v29 setInterruptionHandler:v37];
    v30 = self->_conn;
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_3;
    v35 = &unk_27981A8A8;
    objc_copyWeak(&v36, buf);
    [(NSXPCConnection *)v30 setInvalidationHandler:&v32];
    [(NSXPCConnection *)self->_conn resume:v32];
    [(LiveFSFPExtensionHelper *)self getVolumeInfoLocked];
    if (locked)
    {
      *locked = 0;
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);

    goto LABEL_21;
  }

  return v17;
}

void __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_2;
    block[3] = &unk_27981A880;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

void __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_global_queue(2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__LiveFSFPExtensionHelper__isLoggedInOrErrorLocked___block_invoke_4;
    block[3] = &unk_27981A880;
    block[4] = WeakRetained;
    dispatch_async(v2, block);
  }
}

- (BOOL)_isLoggedInOrError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LOBYTE(error) = [(LiveFSFPExtensionHelper *)selfCopy _isLoggedInOrErrorLocked:error];
  objc_sync_exit(selfCopy);

  return error;
}

- (id)pathForInodeID:(id)d error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  if ([dCopy length] <= 0xC)
  {
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v8 = v46[5];
    v46[5] = v7;

    v9 = v46[5];
    if (v9)
    {
      v10 = livefs_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper pathForInodeID:error:];
      }
    }

    if (error)
    {
      v11 = v9;
      v12 = 0;
      *error = v9;
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v9 = [dCopy substringToIndex:12];
  v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v9 options:0];
  v14 = v13;
  if (!v13)
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = dCopy;
      _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_INFO, "pathForInodeID given invalid ID %@", buf, 0xCu);
    }

    v28 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    v29 = v46[5];
    v46[5] = v28;

    v30 = v46[5];
    if (v30)
    {
      v31 = livefs_std_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper pathForInodeID:error:];
      }
    }

    if (error)
    {
      v32 = v30;
      *error = v30;
    }

LABEL_26:
    v12 = 0;
    goto LABEL_29;
  }

  v15 = v13;
  bytes = [v14 bytes];
  v17 = *bytes;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*bytes];
  v19 = livefs_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v52 = v9;
    v53 = 2112;
    v54 = v14;
    v55 = 2048;
    v56 = v17;
    v57 = 2112;
    v58 = v18;
    _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "pathForID got base64 %@, parentData %@, number %llu, number %@", buf, 0x2Au);
  }

  conn = self->_conn;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke;
  v38[3] = &unk_27981A740;
  v38[4] = &v45;
  v21 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v38];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke_2;
  v34[3] = &unk_27981A8D0;
  v36 = &v45;
  v22 = v18;
  v35 = v22;
  v37 = &v39;
  [v21 pathsAndAttributesForItemsByIDs:v14 requestID:-1 reply:v34];
  v23 = v46[5];
  if (v23)
  {
    v24 = v23;
    v25 = livefs_std_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper pathForInodeID:error:];
    }

    if (error)
    {
      v26 = v24;
      *error = v24;
    }

    v12 = 0;
  }

  else
  {
    v12 = v40[5];
  }

  v9 = v21;
LABEL_29:

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v12;
}

void __48__LiveFSFPExtensionHelper_pathForInodeID_error___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "GetPaths result %d results dict %@", v13, 0x12u);
  }

  if (a2)
  {
    v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:a1[4]];
    v10 = [v9 objectForKeyedSubscript:@"path"];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (id)itemForIdentifierLocked:(id)locked error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
  }

  if (![(LiveFSFPExtensionHelper *)self _isLoggedInOrError:error])
  {
    v10 = 0;
    goto LABEL_56;
  }

  v8 = [(NSMapTable *)self->itemIDMap objectForKey:lockedCopy];
  if (v8)
  {
    v9 = [(LiveFSLRUCache *)self->itemCache objectForKey:lockedCopy];
LABEL_54:
    v8 = v8;
    v10 = v8;
    goto LABEL_55;
  }

  v11 = *MEMORY[0x277CC6348];
  if (![lockedCopy isEqualToString:*MEMORY[0x277CC6348]])
  {
    v47 = 0;
    v13 = [(LiveFSFPExtensionHelper *)self itemForIdentifierLocked:v11 error:&v47];
    v14 = v47;
    v15 = v14;
    if (!v13)
    {
      v20 = 0;
      goto LABEL_31;
    }

    if (self->_idsPersist)
    {
      v46 = v14;
      v8 = [(LiveFSFPExtensionHelper *)self pathForInodeID:lockedCopy error:&v46];
      v16 = v46;

      if (!v8)
      {
        v20 = 0;
        goto LABEL_47;
      }

      v17 = livefs_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [lockedCopy substringFromIndex:12];
        *buf = 138412802;
        *&buf[4] = lockedCopy;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v70 = v18;
        _os_log_impl(&dword_255FE9000, v17, OS_LOG_TYPE_DEFAULT, "id->item, id %@ building path %@ with name %@", buf, 0x20u);
      }

      v19 = [lockedCopy substringFromIndex:12];
      v20 = [v8 stringByAppendingPathComponent:v19];
    }

    else
    {
      v20 = lockedCopy;
      v16 = v15;
    }

    v8 = [(LiveFSFPExtensionHelper *)self itemAtPathLocked:v20 parent:v13];
    if (!v8)
    {
      v27 = livefs_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[LiveFSFPExtensionHelper itemForIdentifierLocked:error:]";
        *&buf[12] = 2112;
        *&buf[14] = lockedCopy;
        _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_INFO, "%s: asked for non-existent item %@", buf, 0x16u);
      }

      v15 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:lockedCopy];

LABEL_31:
      v8 = 0;
      if (!v15)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

LABEL_47:
    v15 = v16;
    if (!v16)
    {
LABEL_53:

      goto LABEL_54;
    }

LABEL_48:
    v38 = v15;
    v39 = livefs_std_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
    }

    if (error)
    {
      v40 = v38;
      *error = v38;
    }

    goto LABEL_53;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v70 = __Block_byref_object_copy__0;
  v71 = __Block_byref_object_dispose__0;
  v72 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__0;
  v61 = __Block_byref_object_dispose__0;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  if (self->_clusterMaster)
  {
    v12 = 0;
    v62 = 0;
  }

  else
  {
    conn = self->_conn;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke;
    v50[3] = &unk_27981A740;
    v50[4] = buf;
    v12 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v50];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_2;
    v49[3] = &unk_27981A830;
    v49[4] = buf;
    v49[5] = &v57;
    [v12 getRootFileHandleWithError:v49];
    if (*(*&buf[8] + 40))
    {
      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = *(*&buf[8] + 40);
        *v63 = 138412290;
        v64 = v23;
        _os_log_impl(&dword_255FE9000, v22, OS_LOG_TYPE_INFO, "Getting RootFH failed with %@", v63, 0xCu);
      }

      domain2 = *(*&buf[8] + 40);
      if (domain2)
      {
        v25 = livefs_std_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
        }
      }

      if (error)
      {
        v26 = domain2;
LABEL_41:
        v8 = 0;
        v33 = 0;
        *error = domain2;
        goto LABEL_44;
      }

      goto LABEL_42;
    }

    v28 = v58[5];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_213;
    v48[3] = &unk_27981A858;
    v48[4] = buf;
    v48[5] = &v51;
    [v12 fileAttributes:v28 requestID:-1 reply:v48];
  }

  v29 = livefs_std_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v42 = *(*&buf[8] + 40);
    v43 = v58[5];
    domain = [(NSFileProviderExtension *)self domain];
    identifier = [domain identifier];
    *v63 = 138412802;
    v64 = v42;
    v65 = 2112;
    v66 = v43;
    v67 = 2112;
    v68 = identifier;
    _os_log_debug_impl(&dword_255FE9000, v29, OS_LOG_TYPE_DEBUG, "LIGetRootFileHandle returned e %@ fh %@ in domain %@", v63, 0x20u);
  }

  v30 = *(*&buf[8] + 40);
  if (v30)
  {
    domain2 = v30;
    v31 = livefs_std_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifierLocked:error:];
    }

    if (error)
    {
      v32 = domain2;
      goto LABEL_41;
    }

LABEL_42:
    v8 = 0;
    v33 = 0;
    goto LABEL_44;
  }

  ItemClass = self->ItemClass;
  v35 = v58[5];
  domain2 = [(NSFileProviderExtension *)self domain];
  displayName = [domain2 displayName];
  dt_dir = [(objc_class *)self->ItemClass dt_dir];
  v8 = [(objc_class *)ItemClass newItemForFH:v35 withReference:v35 != 0 name:displayName parent:0 type:dt_dir attrs:v52[5] extension:self];

  v33 = 1;
LABEL_44:

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(buf, 8);
  if (v33)
  {
    goto LABEL_54;
  }

  v10 = 0;
LABEL_55:

LABEL_56:

  return v10;
}

void __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __57__LiveFSFPExtensionHelper_itemForIdentifierLocked_error___block_invoke_213(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 40) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

- (id)itemForIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  ensureMountPathSetup = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  v8 = ensureMountPathSetup;
  if (ensureMountPathSetup)
  {
    v9 = ensureMountPathSetup;
    v10 = livefs_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper itemForIdentifier:error:];
    }

    if (error)
    {
      v11 = v9;
      *error = v9;
    }

    v12 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12 = [(LiveFSFPExtensionHelper *)selfCopy itemForIdentifierLocked:identifierCopy error:error];
    objc_sync_exit(selfCopy);
  }

  return v12;
}

- (void)addItem:(id)item identifier:(id)identifier fileHandle:(id)handle
{
  itemCopy = item;
  handleCopy = handle;
  identifierCopy = identifier;
  parent = [itemCopy parent];
  v11 = parent;
  if (parent)
  {
    itemNameCache = [parent itemNameCache];
    filename = [itemCopy filename];
    [itemNameCache setObject:itemCopy forKey:filename];
  }

  if (handleCopy)
  {
    [(NSMapTable *)self->itemHandleMap setObject:itemCopy forKey:handleCopy];
  }

  [(NSMapTable *)self->itemIDMap setObject:itemCopy forKey:identifierCopy];
  [(LiveFSLRUCache *)self->itemCache setObject:itemCopy forKey:identifierCopy];
}

- (id)getItemForParent:(id)parent name:(id)name
{
  nameCopy = name;
  itemNameCache = [parent itemNameCache];
  v7 = [itemNameCache objectForKey:nameCopy];

  return v7;
}

- (void)reparentItem:(id)item oldID:(id)d oldParent:(id)parent oldName:(id)name newParent:(id)newParent newName:(id)newName
{
  itemCopy = item;
  dCopy = d;
  parentCopy = parent;
  nameCopy = name;
  newParentCopy = newParent;
  newNameCopy = newName;
  if (dCopy)
  {
    [(LiveFSFPExtensionHelper *)self reIDItem:itemCopy oldID:dCopy];
    [(LiveFSLRUCache *)self->itemCache removeObjectForKey:dCopy];
  }

  if (![newParentCopy isEqual:parentCopy] || (objc_msgSend(newNameCopy, "isEqualToString:", nameCopy) & 1) == 0)
  {
    itemNameCache = [newParentCopy itemNameCache];
    [itemNameCache setObject:itemCopy forKey:newNameCopy];

    itemNameCache2 = [parentCopy itemNameCache];
    [itemNameCache2 removeObjectForKey:nameCopy];
  }

  itemCache = self->itemCache;
  itemIdentifier = [itemCopy itemIdentifier];
  [(LiveFSLRUCache *)itemCache setObject:itemCopy forKey:itemIdentifier];
}

- (void)reIDItem:(id)item oldID:(id)d
{
  itemIDMap = self->itemIDMap;
  itemCopy = item;
  [(NSMapTable *)itemIDMap removeObjectForKey:d];
  v8 = self->itemIDMap;
  itemIdentifier = [itemCopy itemIdentifier];
  [(NSMapTable *)v8 setObject:itemCopy forKey:itemIdentifier];
}

- (void)removeItem:(id)item parent:(id)parent name:(id)name fileHandle:(id)handle
{
  itemCopy = item;
  parentCopy = parent;
  nameCopy = name;
  handleCopy = handle;
  [(NSMapTable *)self->itemIDMap setObject:0 forKey:itemCopy];
  if (parentCopy)
  {
    itemNameCache = [parentCopy itemNameCache];
    [itemNameCache removeObjectForKey:nameCopy];
  }

  if (handleCopy)
  {
    [(NSMapTable *)self->itemHandleMap removeObjectForKey:handleCopy];
  }

  [(LiveFSLRUCache *)self->itemCache removeObjectForKey:itemCopy];
}

- (void)removeEnumeratorForContainerLocked:(id)locked
{
  lockedCopy = locked;
  v4 = [(NSMapTable *)self->enumerators objectForKey:?];

  if (v4)
  {
    [(NSMapTable *)self->enumerators setObject:0 forKey:lockedCopy];
  }
}

- (void)removeEnumeratorForContainer:(id)container
{
  containerCopy = container;
  enumeratorHelperQueue = self->_enumeratorHelperQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__LiveFSFPExtensionHelper_removeEnumeratorForContainer___block_invoke;
  v7[3] = &unk_27981A8F8;
  v7[4] = self;
  v8 = containerCopy;
  v6 = containerCopy;
  dispatch_sync(enumeratorHelperQueue, v7);
}

void __56__LiveFSFPExtensionHelper_removeEnumeratorForContainer___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) removeEnumeratorForContainerLocked:*(a1 + 40)];
  objc_sync_exit(obj);
}

- (id)URLForItemWithIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  domain = [(NSFileProviderExtension *)self domain];
  if (!domain)
  {
LABEL_11:
    mountPath = livefs_std_log();
    if (os_log_type_enabled(mountPath, OS_LOG_TYPE_FAULT))
    {
      [LiveFSFPExtensionHelper URLForItemWithIdentifier:];
    }

    goto LABEL_13;
  }

  v6 = domain;
  domain2 = [(NSFileProviderExtension *)self domain];
  identifier = [domain2 identifier];
  if (!identifier)
  {

    goto LABEL_11;
  }

  v9 = identifier;
  domain3 = [(NSFileProviderExtension *)self domain];
  identifier2 = [domain3 identifier];
  v12 = [identifier2 isEqualToString:&stru_286811DF0];

  if (v12)
  {
    goto LABEL_11;
  }

  v13 = livefs_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper URLForItemWithIdentifier:];
  }

  ensureMountPathSetup = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  if (!ensureMountPathSetup)
  {
    if ([(LiveFSFPExtensionHelper *)self _isLoggedInOrError:0])
    {
      if ([identifierCopy isEqualToString:*MEMORY[0x277CC6348]])
      {
        path = &stru_286811DF0;
LABEL_24:
        v20 = livefs_std_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v24 = "[LiveFSFPExtensionHelper URLForItemWithIdentifier:]";
          v25 = 2112;
          v26 = path;
          v27 = 2112;
          v28 = identifierCopy;
          _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_DEFAULT, "%s: returning perVolPath %@ for item %@", buf, 0x20u);
        }

        mountPath = [(LiveFSFPExtensionHelper *)self mountPath];
        v17 = [mountPath URLByAppendingPathComponent:path isDirectory:0];
        goto LABEL_14;
      }

      if (!self->_idsPersist)
      {
        path = identifierCopy;
        goto LABEL_24;
      }

      v22 = 0;
      v19 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:&v22];
      mountPath = v22;
      if (v19)
      {
        path = [v19 path];

        goto LABEL_24;
      }

      v21 = livefs_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = identifierCopy;
        _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "URLForItem: didn't find item for ID %@", buf, 0xCu);
      }

LABEL_13:
      path = 0;
      v17 = 0;
LABEL_14:

      ensureMountPathSetup = 0;
      goto LABEL_15;
    }

    ensureMountPathSetup = 0;
  }

  path = 0;
  v17 = 0;
LABEL_15:

  return v17;
}

- (id)itemAtPathLocked:(id)locked parent:(id)parent cachedOnly:(BOOL)only
{
  onlyCopy = only;
  v58 = *MEMORY[0x277D85DE8];
  lockedCopy = locked;
  parentCopy = parent;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__0;
  v48 = __Block_byref_object_dispose__0;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v32 = lockedCopy;
  pathComponents = [lockedCopy pathComponents];
  if (self->_clusterMaster)
  {
    v35 = 0;
    onlyCopy = 1;
  }

  else
  {
    conn = self->_conn;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke;
    v37[3] = &unk_27981A740;
    v37[4] = &v38;
    v35 = [(NSXPCConnection *)conn synchronousRemoteObjectProxyWithErrorHandler:v37];
  }

  v33 = parentCopy;
  v11 = [pathComponents count];
  v12 = v11;
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
    v16 = v33;
LABEL_20:
    itemCache = self->itemCache;
    itemIdentifier = [v16 itemIdentifier];
    v28 = [(LiveFSLRUCache *)itemCache objectForKey:itemIdentifier];

    v29 = v16;
    v18 = v13;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x277CBEBF8];
  v16 = v33;
  while (1)
  {
    v17 = [pathComponents objectAtIndexedSubscript:0];

    v14 = v17;
    if (([v17 isEqualToString:@"/"] & 1) == 0)
    {
      break;
    }

LABEL_14:
    if (v12 < 2)
    {

      --v12;
      pathComponents = v15;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v25 = [pathComponents subarrayWithRange:{1, --v12}];

      pathComponents = v25;
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

  v18 = v16;

  v16 = [(LiveFSFPExtensionHelper *)self getItemForParent:v18 name:v17];

  if (v16)
  {
LABEL_13:
    v13 = v18;
    goto LABEL_14;
  }

  if (!onlyCopy)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [pathComponents objectAtIndexedSubscript:0];
      *buf = 138412290;
      v57 = v20;
      _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "About to look up name '%@'", buf, 0xCu);
    }

    v21 = [v18 fh];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke_216;
    v36[3] = &unk_27981A920;
    v36[4] = &v38;
    v36[5] = &v50;
    v36[6] = &v44;
    [v35 lookupIn:v21 name:v14 usingFlags:0 requestID:-1 reply:v36];

    if (v39[5])
    {
      v31 = livefs_std_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper itemAtPathLocked:parent:cachedOnly:];
      }

      goto LABEL_29;
    }

    ItemClass = self->ItemClass;
    v23 = v51[5];
    dt_examine = [(objc_class *)ItemClass dt_examine];
    v16 = [(objc_class *)ItemClass newItemForFH:v23 withReference:1 name:v14 parent:v18 type:dt_examine attrs:v45[5] extension:self];
    goto LABEL_13;
  }

  v31 = livefs_std_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v32;
    _os_log_impl(&dword_255FE9000, v31, OS_LOG_TYPE_INFO, "Cache miss for name %@", buf, 0xCu);
  }

LABEL_29:

  v29 = 0;
LABEL_21:

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return v29;
}

void __62__LiveFSFPExtensionHelper_itemAtPathLocked_parent_cachedOnly___block_invoke_216(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v15 = a4;
  v9 = a5;
  if (a2)
  {
    v10 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:a2];
    v11 = *(a1[4] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a4);
    v13 = *(a1[6] + 8);
    v14 = v9;
    v12 = *(v13 + 40);
    *(v13 + 40) = v14;
  }
}

- (id)itemAtPath:(id)path parent:(id)parent
{
  pathCopy = path;
  parentCopy = parent;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(LiveFSFPExtensionHelper *)selfCopy _isLoggedInOrErrorLocked:0])
  {
    v9 = [(LiveFSFPExtensionHelper *)selfCopy itemAtPathLocked:pathCopy parent:parentCopy cachedOnly:0];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);

  return v9;
}

- (void)enumerateRootContainer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *MEMORY[0x277CC6348];
  v4 = [(LiveFSFPExtensionHelper *)selfCopy getEnumeratorForContainer:*MEMORY[0x277CC6348]];
  objc_sync_exit(selfCopy);

  if (v4)
  {
    [LiveFSFPEnumeratorHelper applyParentUpdateAcrossEnumerators:v4];
    v5 = 0;
    v6 = 0;
  }

  else
  {
    selfCopy->_fetchRoot = 1;
    v7 = 0;
    v5 = [LiveFSFPEnumeratorHelper newWithEnumeratedItem:v3 extension:selfCopy error:&v7];
    v6 = v7;
    if (!v6)
    {
      [v5 signalEnumeratedItemChanged];
    }
  }
}

- (id)persistentIdentifierForItemAtURL:(id)l
{
  v36 = *MEMORY[0x277D85DE8];
  standardizedURL = [l standardizedURL];
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    docPath = self->_docPath;
    providerName = self->providerName;
    domain = [(NSFileProviderExtension *)self domain];
    domain2 = [(NSFileProviderExtension *)self domain];
    if (domain2)
    {
      domain3 = [(NSFileProviderExtension *)self domain];
      identifier = [domain3 identifier];
    }

    else
    {
      identifier = &stru_286811DF0;
    }

    v24 = 136316418;
    v25 = "[LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:]";
    v26 = 2112;
    v27 = standardizedURL;
    v28 = 2112;
    v29 = docPath;
    v30 = 2112;
    v31 = providerName;
    v32 = 2112;
    v33 = domain;
    v34 = 2112;
    v35 = identifier;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "%s starting for url %@, docpath %@, providerName %@, domain: %@, identifier; %@", &v24, 0x3Eu);
    if (domain2)
    {
    }
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemPathForURL:standardizedURL];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(LiveFSFPExtensionHelper *)selfCopy _isLoggedInOrErrorLocked:0])
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "perItemPath is '%@'", &v24, 0xCu);
    }

    if ([v12 isEqualToString:&stru_286811DF0])
    {
      v15 = livefs_std_log();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      v17 = *MEMORY[0x277CC6348];
      if (v16)
      {
        [LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:];
      }

      v18 = v17;
    }

    else
    {
      if (selfCopy->_idsPersist)
      {
        v20 = [(LiveFSFPExtensionHelper *)selfCopy itemForPath:v12 cachedOnly:0 error:0];
        v21 = v20;
        if (v20)
        {
          itemIdentifier = [v20 itemIdentifier];
        }

        else
        {
          itemIdentifier = 0;
        }

        goto LABEL_25;
      }

      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper persistentIdentifierForItemAtURL:];
      }

      v18 = v12;
    }

    itemIdentifier = v18;
  }

  else
  {
    itemIdentifier = 0;
  }

LABEL_25:
  objc_sync_exit(selfCopy);

  return itemIdentifier;
}

- (void)providePlaceholderAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper providePlaceholderAtURL:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)startProvidingItemAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper startProvidingItemAtURL:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)itemChangedAtURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(LiveFSFPExtensionHelper *)self itemForURL:lCopy cachedOnly:1 error:0];
  v6 = v5;
  if (v5)
  {
    [v5 setAttributesStale];
  }

  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = " found item at";
    v10 = "[LiveFSFPExtensionHelper itemChangedAtURL:]";
    v9 = 136315650;
    if (!v6)
    {
      v8 = "";
    }

    v11 = 2080;
    v12 = v8;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: called on%s url %@", &v9, 0x20u);
  }
}

- (void)stopProvidingItemAtURL:(id)l
{
  lCopy = l;
  v4 = livefs_std_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper stopProvidingItemAtURL:];
  }
}

- (id)LiveFSDefaultMover
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__LiveFSFPExtensionHelper_LiveFSDefaultMover__block_invoke;
  v5[3] = &unk_27981A948;
  v5[4] = self;
  v2 = MEMORY[0x259C563F0](v5, a2);
  v3 = MEMORY[0x259C563F0]();

  return v3;
}

BOOL __45__LiveFSFPExtensionHelper_LiveFSDefaultMover__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  v9 = a2;
  v10 = [v7 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];

  dst = 0;
  v12 = copyfile_state_alloc();
  if (v12)
  {
    v13 = v12;
    copyfile_state_set(v12, 6u, copyFileFromPath_callback);
    v14 = copyfile(v11, v10, v13, 0x10E800Fu);
    v15 = v14 == 0;
    if (v14)
    {
      if (a4)
      {
        if (*__error() == 17)
        {
          v16 = [*(a1 + 32) itemForURL:v7 error:a4];
          if (v16)
          {
            *a4 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v16];
          }
        }

        else
        {
          *a4 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:*__error()];
        }
      }
    }

    else
    {
      copyfile_state_get(v13, 0xAu, &dst);
    }

    copyfile_state_free(v13);
  }

  else if (a4)
  {
    [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:12];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)importDocumentAtURL:(id)l toParentItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = lCopy;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "importing document at %@ to %@", buf, 0x16u);
  }

  if (v11)
  {
    liveFSDefaultMover = [(LiveFSFPExtensionHelper *)self LiveFSDefaultMover];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke;
    v15[3] = &unk_27981A970;
    v15[4] = self;
    v17 = handlerCopy;
    v16 = lCopy;
    [v16 fp_importUnderFolder:v11 usingBlock:liveFSDefaultMover completionHandler:v15];
  }

  else
  {
    v14 = livefs_std_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    liveFSDefaultMover = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    (*(handlerCopy + 2))(handlerCopy, 0, liveFSDefaultMover);
  }
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_1();
  }

  v8 = [*(a1 + 32) fileProviderErrorFromFSError:v6];

  if (v8)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v15 = 0;
    v10 = [v9 itemForURL:v5 error:&v15];
    v11 = v15;
    if (!v10)
    {
      v12 = livefs_std_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_2();
      }
    }

    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_255FE9000, v13, OS_LOG_TYPE_DEFAULT, "importing document at %@ to item %@, error %@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)createDirectoryWithName:(id)name inParentItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v40[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = nameCopy;
    v35 = 2112;
    v36 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "creating directory %@ under %@", buf, 0x16u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  if (!v12)
  {
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v18, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    goto LABEL_14;
  }

  v32 = 0;
  v13 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v32];
  v14 = v32;
  v15 = v14;
  if (!v13)
  {
    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:inParentItemIdentifier:completionHandler:];
    }

LABEL_14:
    handlerCopy[2](handlerCopy, 0, v15);
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v16 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:v17 inParentItemIdentifier:? completionHandler:?];
    }

LABEL_18:

    handlerCopy[2](handlerCopy, 0, v16);
    v15 = v16;
    goto LABEL_19;
  }

  v31 = v14;
  v20 = [v12 ensureFileHandleOrError:&v31];
  v16 = v31;

  if (v20)
  {
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper createDirectoryWithName:inParentItemIdentifier:completionHandler:];
    }

    goto LABEL_18;
  }

  v21 = [(LiveFSFPExtensionHelper *)self itemAtPath:nameCopy parent:v12];
  if (v21)
  {
    v15 = v21;
    v22 = livefs_std_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v34 = nameCopy;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_255FE9000, v22, OS_LOG_TYPE_DEFAULT, "creating directory %@ colliding with %@", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v15];
    handlerCopy[2](handlerCopy, 0, v23);
  }

  else
  {
    v24 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
    v25 = [v24 URLByAppendingPathComponent:nameCopy];

    v39 = *MEMORY[0x277CCA180];
    v40[0] = &unk_286815020;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v30 = v16;
    [defaultManager createDirectoryAtURL:v25 withIntermediateDirectories:0 attributes:v26 error:&v30];
    v28 = v30;

    if (v28)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(LiveFSFPExtensionHelper *)self itemAtPath:nameCopy parent:v12];
    }

    v29 = livefs_std_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = nameCopy;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_255FE9000, v29, OS_LOG_TYPE_DEFAULT, "creating directory %@ returning %@ and error %@", buf, 0x20u);
    }

    (handlerCopy)[2](handlerCopy, v15, v28);
  }

LABEL_19:
}

- (void)renameItemWithIdentifier:(id)identifier toName:(id)name completionHandler:(id)handler
{
  v58 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nameCopy = name;
  handlerCopy = handler;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__0;
  v52 = __Block_byref_object_dispose__0;
  v53 = 0;
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v55 = identifierCopy;
    v56 = 2112;
    v57 = nameCopy;
    _os_log_impl(&dword_255FE9000, v10, OS_LOG_TYPE_DEFAULT, "renaming %@ to %@", buf, 0x16u);
  }

  v11 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  v12 = v11;
  if (!v11)
  {
    v21 = livefs_std_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v21, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    handlerCopy[2](handlerCopy, 0, v22);
    goto LABEL_14;
  }

  parent = [v11 parent];
  if (!parent)
  {
    v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    handlerCopy[2](handlerCopy, 0, v22);
LABEL_14:
    v23 = 0;
    v24 = 0;
    v17 = 0;
    parent = 0;
    v25 = 0;
    goto LABEL_15;
  }

  v47 = 0;
  v14 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v47];
  v15 = v47;
  v16 = v15;
  if (!v14)
  {
    handlerCopy[2](handlerCopy, 0, v15);
    v23 = 0;
    v24 = 0;
LABEL_18:
    v25 = 0;
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v17 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      domain = [(NSFileProviderExtension *)self domain];
      identifier = [domain identifier];
      [(LiveFSFPExtensionHelper *)identifier renameItemWithIdentifier:buf toName:v18 completionHandler:domain];
    }

    handlerCopy[2](handlerCopy, 0, v17);
    goto LABEL_22;
  }

  v46 = v15;
  v26 = [parent ensureFileHandleOrError:&v46];
  v17 = v46;

  if (v26)
  {
    handlerCopy[2](handlerCopy, 0, v17);
LABEL_22:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_16;
  }

  v25 = [(LiveFSFPExtensionHelper *)self itemAtPath:nameCopy parent:parent];
  if (v25)
  {
    v27 = livefs_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v55 = identifierCopy;
      v56 = 2112;
      v57 = v25;
      _os_log_impl(&dword_255FE9000, v27, OS_LOG_TYPE_DEFAULT, "renaming %@ colliding with %@", buf, 0x16u);
    }

    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForCollisionWithItem:v25];
    handlerCopy[2](handlerCopy, 0, v22);
    v23 = 0;
    v24 = 0;
    goto LABEL_15;
  }

  v24 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
  uRLByDeletingLastPathComponent = [v24 URLByDeletingLastPathComponent];
  v23 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:nameCopy];

  itemIdentifier = [parent itemIdentifier];
  v45 = v17;
  v30 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:itemIdentifier error:&v45];
  v35 = itemIdentifier;
  v16 = v45;

  v31 = v49[5];
  v49[5] = v30;

  v32 = v49[5];
  if (v32)
  {
    ensureConnectedForUpdates = [v32 ensureConnectedForUpdates];

    v16 = ensureConnectedForUpdates;
  }

  if (v16)
  {
    handlerCopy[2](handlerCopy, 0, v16);
    goto LABEL_18;
  }

  renameUpdateQueue = self->renameUpdateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke;
  block[3] = &unk_27981A9C0;
  v38 = v12;
  parent = parent;
  v39 = parent;
  selfCopy = self;
  v23 = v23;
  v41 = v23;
  v44 = &v48;
  v43 = handlerCopy;
  v24 = v24;
  v42 = v24;
  dispatch_async(renameUpdateQueue, block);

  v17 = 0;
  v25 = 0;
  v22 = v38;
LABEL_15:

LABEL_16:
  v16 = v17;
LABEL_19:
  _Block_object_dispose(&v48, 8);
}

void __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke_2;
  v15[3] = &unk_27981A998;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v15[4] = *(a1 + 48);
  v16 = v5;
  v13 = *(a1 + 72);
  v6 = v13;
  v17 = v13;
  [v4 afterRename:v3 performBlock:v15];
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[LiveFSFPExtensionHelper renameItemWithIdentifier:toName:completionHandler:]_block_invoke";
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: rename about to happen", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = 0;
  [v8 moveItemAtURL:v9 toURL:v10 error:&v14];
  v11 = v14;

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[LiveFSFPExtensionHelper renameItemWithIdentifier:toName:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "%s: got error %@", buf, 0x16u);
  }

  if (v11)
  {
    [*(a1 + 40) dropAfterRenameBlockForName:v3];
    (*(*(a1 + 72) + 16))();
  }
}

void __77__LiveFSFPExtensionHelper_renameItemWithIdentifier_toName_completionHandler___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 itemForURL:v3 error:&v9];
  v5 = v9;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "Reparented, it is item %@ newError %@", buf, 0x16u);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  (*(a1[6] + 16))();
}

- (void)reparentItemWithIdentifier:(id)identifier toParentItemWithIdentifier:(id)withIdentifier newName:(id)name completionHandler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  nameCopy = name;
  handlerCopy = handler;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__0;
  v62 = __Block_byref_object_dispose__0;
  v63 = 0;
  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v65 = identifierCopy;
    v66 = 2112;
    v67 = withIdentifierCopy;
    v68 = 2112;
    v69 = nameCopy;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "reparenting %@ under %@, with newName %@", buf, 0x20u);
  }

  v41 = identifierCopy;

  v57 = 0;
  v13 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v57];
  v14 = v57;
  if (!v13)
  {
    handlerCopy[2](handlerCopy, 0, v14);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_19;
  }

  if (self->_clusterMaster)
  {
    v15 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:30];

    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      domain = [(NSFileProviderExtension *)self domain];
      identifier = [domain identifier];
      [(LiveFSFPExtensionHelper *)identifier renameItemWithIdentifier:buf toName:v16 completionHandler:domain];
    }

    handlerCopy[2](handlerCopy, 0, v15);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_8;
  }

  v25 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  v24 = v25;
  if (!v25)
  {
    v28 = livefs_std_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v28, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    v29 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:v41];
    handlerCopy[2](handlerCopy, 0, v29);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_18;
  }

  parent = [v25 parent];
  v23 = parent;
  if (!parent)
  {
    v29 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    handlerCopy[2](handlerCopy, 0, v29);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v56 = v14;
  v27 = [parent ensureFileHandleOrError:&v56];
  v15 = v56;

  if (!v27)
  {
    v55 = v15;
    v22 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:withIdentifierCopy error:&v55];
    v14 = v55;

    if (v14)
    {
      handlerCopy[2](handlerCopy, 0, v14);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      goto LABEL_19;
    }

    v54 = 0;
    v30 = [v22 ensureFileHandleOrError:&v54];
    v40 = v54;
    if (v30)
    {
      handlerCopy[2](handlerCopy, 0, v40);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v14 = v40;
      goto LABEL_19;
    }

    if (nameCopy)
    {
      filename2 = nameCopy;
    }

    else
    {
      v32 = livefs_std_log();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        filename = [v24 filename];
        [LiveFSFPExtensionHelper reparentItemWithIdentifier:filename toParentItemWithIdentifier:buf newName:v32 completionHandler:?];
      }

      filename2 = [v24 filename];
    }

    v21 = filename2;
    v20 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v41];
    v34 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:withIdentifierCopy];
    v19 = [v34 URLByAppendingPathComponent:v21];

    itemIdentifier = [v23 itemIdentifier];
    v53 = v40;
    v36 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:itemIdentifier error:&v53];
    v39 = itemIdentifier;
    v14 = v53;

    v37 = v59[5];
    v59[5] = v36;

    if (v14)
    {
      handlerCopy[2](handlerCopy, 0, v14);
      goto LABEL_19;
    }

    renameUpdateQueue = self->renameUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke;
    block[3] = &unk_27981A9E8;
    v24 = v24;
    v45 = v24;
    v23 = v23;
    v46 = v23;
    selfCopy = self;
    v19 = v19;
    v48 = v19;
    v52 = &v58;
    v51 = handlerCopy;
    v20 = v20;
    v49 = v20;
    v50 = 0;
    dispatch_async(renameUpdateQueue, block);

    v14 = 0;
    v29 = v45;
    goto LABEL_18;
  }

  handlerCopy[2](handlerCopy, 0, v15);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
LABEL_8:
  v14 = v15;
LABEL_19:
  _Block_object_dispose(&v58, 8);
}

void __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke_2;
  v15[3] = &unk_27981A998;
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v15[4] = *(a1 + 48);
  v16 = v5;
  v13 = *(a1 + 80);
  v6 = v13;
  v17 = v13;
  [v4 afterRename:v3 performBlock:v15];
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[LiveFSFPExtensionHelper reparentItemWithIdentifier:toParentItemWithIdentifier:newName:completionHandler:]_block_invoke";
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "%s: rename about to happen", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = 0;
  [v8 moveItemAtURL:v9 toURL:v10 error:&v14];
  v11 = v14;

  v12 = livefs_std_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[LiveFSFPExtensionHelper reparentItemWithIdentifier:toParentItemWithIdentifier:newName:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_255FE9000, v12, OS_LOG_TYPE_DEFAULT, "%s: got error %@", buf, 0x16u);
  }

  if (v11)
  {
    [*(a1 + 40) dropAfterRenameBlockForName:v3];
    (*(*(a1 + 80) + 16))();
  }
}

void __107__LiveFSFPExtensionHelper_reparentItemWithIdentifier_toParentItemWithIdentifier_newName_completionHandler___block_invoke_2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v9 = 0;
  v4 = [v2 itemForURL:v3 error:&v9];
  v5 = v9;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "Reparented, it is item %@ newError %@", buf, 0x16u);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  (*(a1[6] + 16))();
}

- (void)fetchTrashIdentifiersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v19 = 0;
  v5 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v19];
  v6 = v19;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v8 = [(LiveFSFPExtensionHelper *)self itemForPath:@".Trashes" cachedOnly:0 error:&v18];
    v9 = v18;

    if (v8)
    {
      itemIdentifier = [v8 itemIdentifier];
      v17 = v9;
      v11 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:itemIdentifier error:&v17];
      v7 = v17;

      if (v11)
      {
        v12 = [LiveFSFPTrashObserver newWithCompletionHandler:handlerCopy];
        if (v12)
        {
          v13 = v12;
          v14 = *MEMORY[0x277CC6328];
          if (v14)
          {
            v15 = v14;
            do
            {
              [v11 enumerateItemsForObserver:v13 startingAtPage:v15];
              lastPage = [v13 lastPage];

              v15 = lastPage;
            }

            while (lastPage);
          }
        }

        else
        {
          v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:12];
          handlerCopy[2](handlerCopy, 0, v13);
        }
      }

      else
      {
        handlerCopy[2](handlerCopy, 0, v7);
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, v9);
      v7 = v9;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v6);
  }
}

- (void)trashItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = identifierCopy;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_INFO, "trashing item %@", &buf, 0xCu);
  }

  v60 = 0;
  v9 = [(LiveFSFPExtensionHelper *)self _isLoggedInOrError:&v60];
  v10 = v60;
  if (!v9)
  {
    handlerCopy[2](handlerCopy, 0, v10);
    goto LABEL_7;
  }

  v11 = *MEMORY[0x277CC6348];
  if (![identifierCopy isEqualToString:*MEMORY[0x277CC6348]])
  {
    v14 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
    if (!v14)
    {
      v26 = livefs_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_255FE9000, v26, OS_LOG_TYPE_DEFAULT, "Where is IT", &buf, 2u);
      }

      v27 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
      handlerCopy[2](handlerCopy, 0, v27);

      goto LABEL_7;
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v62 = 0x3032000000;
    v63 = __Block_byref_object_copy__0;
    v64 = __Block_byref_object_dispose__0;
    v65 = 0;
    v46 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
    v15 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v11];
    v47 = [v15 URLByAppendingPathComponent:@".Trashes"];

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", getuid()];
    v48 = [v47 URLByAppendingPathComponent:v16];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v48 path];
    v59 = v10;
    v19 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v59];
    v20 = v59;

    if ((v19 & 1) == 0)
    {
      domain = [v20 domain];
      v22 = *MEMORY[0x277CCA050];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        v23 = [v20 code] == 516;

        if (!v23)
        {
          connection = xpc_connection_create_mach_service("com.apple.filesystems.userfs_helper", 0, 0);
          if (!connection || MEMORY[0x259C56690](connection) != MEMORY[0x277D86450])
          {
            v24 = [MEMORY[0x277CCA9B8] errorWithDomain:v22 code:512 userInfo:0];
            handlerCopy[2](handlerCopy, 0, v24);
            v25 = 0;
            xdict = 0;
            parent = 0;
            goto LABEL_28;
          }

          xpc_connection_set_event_handler(connection, &__block_literal_global);
          xpc_connection_resume(connection);
          xdict = xpc_dictionary_create(0, 0, 0);
          v35 = getuid();
          xpc_dictionary_set_int64(xdict, "uid", v35);
          v36 = getgid();
          xpc_dictionary_set_int64(xdict, "gid", v36);
          v37 = v47;
          fileSystemRepresentation = [v47 fileSystemRepresentation];
          v39 = v48;
          fileSystemRepresentation2 = [v48 fileSystemRepresentation];
          if (fileSystemRepresentation)
          {
            xpc_dictionary_set_string(xdict, "trash", fileSystemRepresentation);
          }

          if (fileSystemRepresentation2)
          {
            xpc_dictionary_set_string(xdict, "path", fileSystemRepresentation2);
          }

          v41 = livefs_std_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 0;
            _os_log_impl(&dword_255FE9000, v41, OS_LOG_TYPE_DEFAULT, "asking for Trash to be created", v58, 2u);
          }

          v42 = xpc_connection_send_message_with_reply_sync(connection, xdict);
          v25 = v42;
          if (!v42 || MEMORY[0x259C56690](v42) != MEMORY[0x277D86468] || xpc_dictionary_get_int64(v25, "error"))
          {
            v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v22 code:512 userInfo:0];

            v43 = livefs_std_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [LiveFSFPExtensionHelper trashItemWithIdentifier:completionHandler:];
            }

            handlerCopy[2](handlerCopy, 0, v10);
            parent = 0;
            goto LABEL_29;
          }

          xpc_connection_cancel(connection);
LABEL_21:
          parent = [v14 parent];
          itemIdentifier = [parent itemIdentifier];
          v57 = v20;
          v29 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:itemIdentifier error:&v57];
          v10 = v57;

          v30 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v29;

          v31 = *(*(&buf + 1) + 40);
          if (v31)
          {
            ensureConnectedForUpdates = [v31 ensureConnectedForUpdates];

            v10 = ensureConnectedForUpdates;
          }

          if (v10)
          {
            handlerCopy[2](handlerCopy, 0, v10);
LABEL_29:

            _Block_object_dispose(&buf, 8);
            goto LABEL_8;
          }

          v33 = livefs_std_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *v58 = 0;
            _os_log_impl(&dword_255FE9000, v33, OS_LOG_TYPE_DEFAULT, "about to dispatch_async actual trashing work", v58, 2u);
          }

          renameUpdateQueue = self->renameUpdateQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_236;
          block[3] = &unk_27981AAA8;
          v50 = v14;
          selfCopy = self;
          v55 = handlerCopy;
          p_buf = &buf;
          parent = parent;
          v52 = parent;
          v53 = v46;
          v54 = v48;
          dispatch_async(renameUpdateQueue, block);

          v20 = 0;
          v24 = v50;
LABEL_28:

          v10 = v20;
          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    xdict = 0;
    connection = 0;
    v25 = 0;
    goto LABEL_21;
  }

  v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:513 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v12);

LABEL_7:
  parent = 0;
  v14 = 0;
LABEL_8:
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_236(uint64_t a1)
{
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v4 = objc_alloc(MEMORY[0x277D23D88]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_2;
  v24[3] = &unk_27981AA30;
  v5 = *(a1 + 72);
  v24[4] = *(a1 + 40);
  v25 = v5;
  v26 = *(a1 + 80);
  v6 = [v4 initWithCount:2 workBlock:v24];
  v7 = *(a1 + 48);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_239;
  v22[3] = &unk_27981AA58;
  v8 = v6;
  v23 = v8;
  [v7 afterRename:v3 performBlock:v22];
  v9 = livefs_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "registered for renameUpdate", buf, 2u);
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_240;
  v15[3] = &unk_27981AA80;
  v16 = v10;
  v17 = *(a1 + 48);
  v18 = v3;
  v19 = v8;
  v20 = *(a1 + 72);
  v12 = v8;
  v13 = v3;
  [v16 fp_trashUnderFolder:v11 completionHandler:v15];
  v14 = livefs_std_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_255FE9000, v14, OS_LOG_TYPE_DEFAULT, "Asked FP to trash the item", buf, 2u);
  }
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 parameter];

  if (v4)
  {
    v5 = [v3 parameter];
    v6 = a1[4];
    v14 = 0;
    v7 = [v6 itemForURL:v5 error:&v14];
    v8 = v14;
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "trash returning item %@ newError %@", buf, 0x16u);
    }

    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    (*(a1[5] + 16))();
  }

  else
  {
    v12 = a1[5];
    v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    (*(v12 + 16))(v12, 0, v13);
  }
}

void __69__LiveFSFPExtensionHelper_trashItemWithIdentifier_completionHandler___block_invoke_240(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = livefs_std_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_255FE9000, v8, OS_LOG_TYPE_ERROR, "trashing item at url %@ newURL %@ failed with error: %@", &v10, 0x20u);
    }

    [*(a1 + 40) dropAfterRenameBlockForName:*(a1 + 48)];
    [*(a1 + 56) abort];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "item trashed, newURL:%@", &v10, 0xCu);
    }

    [*(a1 + 56) setParameter:v5];
    [*(a1 + 56) approve];
  }
}

- (void)untrashItemWithIdentifier:(id)identifier toParentItemIdentifier:(id)itemIdentifier completionHandler:(id)handler
{
  v43 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  handlerCopy = handler;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "untrashing item %@", buf, 0xCu);
  }

  v34 = 0;
  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:&v34];
  ensureConnectedForUpdates = v34;
  if (!v12)
  {
    v22 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    handlerCopy[2](handlerCopy, 0, v22);
LABEL_13:
    v14 = 0;
    parent = 0;
LABEL_18:

    v16 = itemIdentifierCopy;
    goto LABEL_19;
  }

  v14 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
  if (!v14)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v22);
    goto LABEL_13;
  }

  v15 = *MEMORY[0x277CC6348];
  if (itemIdentifierCopy)
  {
    v15 = itemIdentifierCopy;
  }

  v16 = v15;

  parent = [v12 parent];
  if (!parent)
  {
    v22 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    handlerCopy[2](handlerCopy, 0, v22);
    parent = 0;
LABEL_17:
    itemIdentifierCopy = v16;
    goto LABEL_18;
  }

  v33 = ensureConnectedForUpdates;
  v18 = [(LiveFSFPExtensionHelper *)self enumeratorForContainerItemIdentifier:v16 error:&v33];
  v19 = v33;

  v20 = v36[5];
  v36[5] = v18;

  v21 = v36[5];
  if (!v21)
  {
    ensureConnectedForUpdates = v19;
    if (v19)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  ensureConnectedForUpdates = [v21 ensureConnectedForUpdates];

  if (!ensureConnectedForUpdates)
  {
LABEL_16:
    v23 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:v16];
    renameUpdateQueue = self->renameUpdateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke;
    block[3] = &unk_27981AAA8;
    v26 = v12;
    selfCopy = self;
    v31 = handlerCopy;
    v32 = &v35;
    parent = parent;
    v28 = parent;
    v14 = v14;
    v29 = v14;
    v30 = v23;
    v22 = v23;
    dispatch_async(renameUpdateQueue, block);

    ensureConnectedForUpdates = 0;
    goto LABEL_17;
  }

LABEL_10:
  handlerCopy[2](handlerCopy, 0, ensureConnectedForUpdates);
LABEL_19:
  _Block_object_dispose(&v35, 8);
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) filename];
  v3 = [v2 copy];

  v4 = objc_alloc(MEMORY[0x277D23D88]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2;
  v18[3] = &unk_27981AA30;
  v5 = *(a1 + 72);
  v18[4] = *(a1 + 40);
  v19 = v5;
  v20 = *(a1 + 80);
  v6 = [v4 initWithCount:2 workBlock:v18];
  v7 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_241;
  v16[3] = &unk_27981AA58;
  v8 = v6;
  v17 = v8;
  [v7 afterRename:v3 performBlock:v16];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242;
  v12[3] = &unk_27981AAD0;
  v13 = v8;
  v14 = v9;
  v15 = *(a1 + 72);
  v11 = v8;
  [v9 fp_reparentUnderFolder:v10 allowBouncing:1 completionHandler:v12];
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 parameter];

  if (v4)
  {
    v5 = [v3 parameter];
    v6 = a1[4];
    v14 = 0;
    v7 = [v6 itemForURL:v5 error:&v14];
    v8 = v14;
    v9 = livefs_std_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_255FE9000, v9, OS_LOG_TYPE_DEFAULT, "untrash returning item %@ newError %@", buf, 0x16u);
    }

    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    (*(a1[5] + 16))();
  }

  else
  {
    v12 = a1[5];
    v13 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    (*(v12 + 16))(v12, 0, v13);
  }
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setParameter:a2];
  if (a2)
  {
    [*(a1 + 32) approve];
  }

  else
  {
    v6 = livefs_std_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)deleteItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = livefs_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v8, OS_LOG_TYPE_DEFAULT, "deleting item %@", buf, 0xCu);
  }

  v9 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  v10 = v9;
  if (v9)
  {
    parent = [v9 parent];
    v12 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    [defaultManager removeItemAtURL:v12 error:&v21];
    v14 = v21;

    if (!v14)
    {
      itemIDMap = self->itemIDMap;
      itemIdentifier = [v10 itemIdentifier];
      [(NSMapTable *)itemIDMap removeObjectForKey:itemIdentifier];

      itemCache = self->itemCache;
      itemIdentifier2 = [v10 itemIdentifier];
      [(LiveFSLRUCache *)itemCache removeObjectForKey:itemIdentifier2];

      [parent setAttributesStale];
    }

    v19 = livefs_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_255FE9000, v19, OS_LOG_TYPE_DEFAULT, "deleting returning %@", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, v14);
  }

  else
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_DEFAULT, "Where is IT", buf, 2u);
    }

    parent = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    handlerCopy[2](handlerCopy, parent);
  }
}

- (void)setLastUsedDate:(id)date forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v23 = "[LiveFSFPExtensionHelper setLastUsedDate:forItemIdentifier:completionHandler:]";
    v24 = 2112;
    v25 = dateCopy;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting lastUsedDate %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  v13 = v12;
  if (!v12)
  {
    v16 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    handlerCopy[2](handlerCopy, 0, v16);
LABEL_15:

    goto LABEL_16;
  }

  if (*MEMORY[0x277CC6348] != identifierCopy)
  {
    fullPath = [v12 fullPath];
    v15 = open([fullPath UTF8String], 0);

    if (v15 < 0)
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *__error();
      v20 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
      v16 = [v18 fp_errorWithPOSIXCode:v19 itemURL:v20 debugDescription:@"Opening file for setLastUsedDate"];

      v21 = livefs_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper setLastUsedDate:forItemIdentifier:completionHandler:];
      }

      v17 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v16];
      handlerCopy[2](handlerCopy, 0, v17);
    }

    else
    {
      FPFileMetadataSetLastUsedDate();
      v16 = 0;
      close(v15);
      if (!v16)
      {
        [v13 setLastUsedDate:dateCopy];
      }

      v17 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v16];
      (handlerCopy)[2](handlerCopy, v13, v17);
    }

    goto LABEL_15;
  }

  (handlerCopy)[2](handlerCopy, v12, 0);
LABEL_16:
}

- (void)setTagData:(id)data forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!self->_supportsTagging)
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
LABEL_12:
    v13 = v20;
    handlerCopy[2](handlerCopy, 0, v20);
    goto LABEL_13;
  }

  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v26 = "[LiveFSFPExtensionHelper setTagData:forItemIdentifier:completionHandler:]";
    v27 = 2112;
    v28 = dataCopy;
    v29 = 2112;
    v30 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting tagData %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  if (!v12)
  {
    v20 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    goto LABEL_12;
  }

  v13 = v12;
  if (*MEMORY[0x277CC6348] == identifierCopy)
  {
    (handlerCopy)[2](handlerCopy, v12, 0);
  }

  else
  {
    fullPath = [v12 fullPath];
    uTF8String = [fullPath UTF8String];

    v16 = open(uTF8String, 0);
    if (v16 < 0)
    {
      v21 = livefs_std_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [LiveFSFPExtensionHelper setTagData:uTF8String forItemIdentifier:v21 completionHandler:?];
      }

      v22 = MEMORY[0x277CCA9B8];
      v23 = *__error();
      v24 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
      v18 = [v22 fp_errorWithPOSIXCode:v23 itemURL:v24 debugDescription:@"Opening file for setTagData"];

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      handlerCopy[2](handlerCopy, 0, v19);
    }

    else
    {
      v17 = v16;
      FPFileMetadataSetTagData();
      v18 = 0;
      close(v17);
      if (!v18)
      {
        [v13 setTagData:dataCopy];
      }

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      (handlerCopy)[2](handlerCopy, v13, v19);
    }
  }

LABEL_13:
}

- (void)setFavoriteRank:(id)rank forItemIdentifier:(id)identifier completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  rankCopy = rank;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:]";
    v28 = 2112;
    v29 = rankCopy;
    v30 = 2112;
    v31 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_INFO, "%s: setting rank %@ for %@", buf, 0x20u);
  }

  v12 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:0];
  v13 = v12;
  if (!v12)
  {
    v20 = livefs_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:]";
      _os_log_impl(&dword_255FE9000, v20, OS_LOG_TYPE_INFO, "%s: item not found", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CCA9B8] fileProviderErrorForNonExistentItemWithIdentifier:identifierCopy];
    handlerCopy[2](handlerCopy, 0, v18);
    goto LABEL_19;
  }

  if (*MEMORY[0x277CC6348] != identifierCopy)
  {
    fullPath = [v12 fullPath];
    uTF8String = [fullPath UTF8String];

    v16 = open(uTF8String, 0);
    if (v16 < 0)
    {
      v22 = livefs_std_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper setFavoriteRank:uTF8String forItemIdentifier:v22 completionHandler:?];
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *__error();
      v25 = [(LiveFSFPExtensionHelper *)self URLForItemWithIdentifier:identifierCopy];
      v18 = [v23 fp_errorWithPOSIXCode:v24 itemURL:v25 debugDescription:@"Opening file for setFavoriteRank"];

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      handlerCopy[2](handlerCopy, 0, v19);
    }

    else
    {
      v17 = v16;
      FPFileMetadataSetFavoriteRank();
      v18 = 0;
      close(v17);
      if (!v18)
      {
        [v13 setFavoriteRank:rankCopy];
      }

      v19 = [LiveFSFPExtensionHelper getNSErrorFromUnknownError:v18];
      (handlerCopy)[2](handlerCopy, v13, v19);
    }

LABEL_19:
    goto LABEL_20;
  }

  v21 = livefs_std_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSFPExtensionHelper setFavoriteRank:forItemIdentifier:completionHandler:];
  }

  (handlerCopy)[2](handlerCopy, v13, 0);
LABEL_20:
}

- (id)disconnectWithOptions:(unint64_t)options completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v6 = livefs_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    domain = [(NSFileProviderExtension *)self domain];
    identifier = [domain identifier];
    *buf = 136315394;
    *&buf[4] = "[LiveFSFPExtensionHelper disconnectWithOptions:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    _os_log_impl(&dword_255FE9000, v6, OS_LOG_TYPE_DEFAULT, "%s: called on domain %@", buf, 0x16u);
  }

  domain2 = [(NSFileProviderExtension *)self domain];
  if (!domain2 || (-[NSFileProviderExtension domain](self, "domain"), v10 = objc_claimAutoreleasedReturnValue(), [v10 identifier], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v10, domain2, v12))
  {
    v20 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    handlerCopy[2](handlerCopy, v20);

    v19 = objc_opt_new();
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v28 = __Block_byref_object_copy__0;
    v29 = __Block_byref_object_dispose__0;
    v30 = 0;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v14 = (*&buf[8] + 40);
    obj = *(*&buf[8] + 40);
    v15 = [(LiveFSFPExtensionHelper *)selfCopy _hasManagerOrError:&obj];
    objc_storeStrong(v14, obj);
    if (v15)
    {
      objc_sync_exit(selfCopy);

      v16 = selfCopy->_manager;
      v17 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke;
      block[3] = &unk_27981AB20;
      block[4] = selfCopy;
      v25 = buf;
      selfCopy = v16;
      v23 = selfCopy;
      v24 = handlerCopy;
      dispatch_async(v17, block);
      v18 = livefs_std_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [LiveFSFPExtensionHelper disconnectWithOptions:completionHandler:];
      }

      v19 = objc_opt_new();
    }

    else
    {
      handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
      v19 = objc_opt_new();
      objc_sync_exit(selfCopy);
    }

    _Block_object_dispose(buf, 8);
  }

  return v19;
}

uint64_t __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = livefs_std_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) domain];
    v4 = [v3 identifier];
    *buf = 138412290;
    v29 = v4;
    _os_log_impl(&dword_255FE9000, v2, OS_LOG_TYPE_DEFAULT, "About to call forgetVolume on %@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) domain];
  v7 = [v6 identifier];
  v8 = [v5 forgetVolume:v7 withFlags:3];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = livefs_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412290;
    v29 = v12;
    _os_log_impl(&dword_255FE9000, v11, OS_LOG_TYPE_DEFAULT, "forgetVolume returned %@", buf, 0xCu);
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = [v15 domain];
    if (![v16 isEqualToString:*MEMORY[0x277CCA050]])
    {
LABEL_9:

      return (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40), v13, v14);
    }

    v17 = [*(*(*(a1 + 56) + 8) + 40) code];

    if (v17 == 4)
    {
      v18 = MEMORY[0x277CC64A8];
      v19 = [*(a1 + 32) domain];
      v16 = [v18 managerForDomain:v19];

      v20 = dispatch_semaphore_create(0);
      v21 = [*(a1 + 32) domain];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254;
      v25[3] = &unk_27981AAF8;
      v26 = v20;
      v27 = *(a1 + 48);
      v22 = v20;
      [v16 removeDomain:v21 completionHandler:v25];

      v23 = dispatch_time(0, 10000000000);
      dispatch_semaphore_wait(v22, v23);

      goto LABEL_9;
    }
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(*(*(a1 + 56) + 8) + 40), v13, v14);
}

void __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = livefs_std_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = 0;
    _os_log_impl(&dword_255FE9000, v5, OS_LOG_TYPE_DEFAULT, "Self removeDomain replied %@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

- (id)enumeratorForContainerItemIdentifier:(id)identifier error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  domain = [(NSFileProviderExtension *)self domain];
  if (!domain)
  {
LABEL_8:
    v18 = livefs_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

    v16 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = livefs_std_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = domain;
  domain2 = [(NSFileProviderExtension *)self domain];
  identifier = [domain2 identifier];
  if (!identifier)
  {

    goto LABEL_8;
  }

  v11 = identifier;
  domain3 = [(NSFileProviderExtension *)self domain];
  identifier2 = [domain3 identifier];
  v14 = [identifier2 isEqualToString:&stru_286811DF0];

  if (v14)
  {
    goto LABEL_8;
  }

  ensureMountPathSetup = [(LiveFSFPExtensionHelper *)self ensureMountPathSetup];
  if (ensureMountPathSetup)
  {
    v16 = ensureMountPathSetup;
    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

LABEL_13:

LABEL_14:
    if (error)
    {
      v19 = v16;
      *error = v16;
    }

    v20 = 0;
    goto LABEL_17;
  }

  v22 = livefs_std_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    clusterMasterID = [(LiveFSFPExtensionHelper *)self clusterMasterID];
    *buf = 136316162;
    v36 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
    v37 = 2112;
    v38 = identifierCopy;
    v39 = 2112;
    v40 = clusterMasterID;
    v41 = 1024;
    isClusterMaster = [(LiveFSFPExtensionHelper *)self isClusterMaster];
    v43 = 1024;
    isClusterDomain = [(LiveFSFPExtensionHelper *)self isClusterDomain];
    _os_log_impl(&dword_255FE9000, v22, OS_LOG_TYPE_DEFAULT, "%s starting for containerItem %@, clusterMasterID (%@), clusterMaster (%d) clusterDomain (%d)", buf, 0x2Cu);
  }

  if ([(LiveFSFPExtensionHelper *)self isClusterMaster])
  {
    v20 = [LiveFSFPClusterEnumeratorHelper newWithEnumeratedItem:identifierCopy extension:self error:error];
    goto LABEL_17;
  }

  v24 = [identifierCopy isEqualToString:*MEMORY[0x277CC6368]];
  v25 = livefs_std_log();
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      domain4 = [(NSFileProviderExtension *)self domain];
      identifier3 = [domain4 identifier];
      *buf = 136315394;
      v36 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
      v37 = 2112;
      v38 = identifier3;
      _os_log_impl(&dword_255FE9000, v25, OS_LOG_TYPE_DEFAULT, "%s starting for container NSFileProviderWorkingSetContainerItemIdentifier self.domain.identifier %@", buf, 0x16u);
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
    if (!v16)
    {
      goto LABEL_14;
    }

    v17 = livefs_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }

    goto LABEL_13;
  }

  if (v26)
  {
    domain5 = [(NSFileProviderExtension *)self domain];
    identifier4 = [domain5 identifier];
    *buf = 136315394;
    v36 = "[LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:]";
    v37 = 2112;
    v38 = identifier4;
    _os_log_impl(&dword_255FE9000, v25, OS_LOG_TYPE_DEFAULT, "%s starting for container LiveFSFPEnumeratorHelper self.domain.identifier %@", buf, 0x16u);
  }

  v34 = 0;
  v20 = [LiveFSFPEnumeratorHelper newWithEnumeratedItem:identifierCopy extension:self error:&v34];
  v31 = v34;
  if (v31)
  {
    v32 = livefs_std_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper enumeratorForContainerItemIdentifier:error:];
    }
  }

  if (error)
  {
    v33 = v31;
    *error = v31;
  }

LABEL_17:

  return v20;
}

- (id)supportedServiceSourcesForItemIdentifier:(id)identifier error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = livefs_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    domain = [(NSFileProviderExtension *)self domain];
    identifier = [domain identifier];
    *buf = 138412802;
    selfCopy = self;
    v30 = 2112;
    v31 = identifier;
    v32 = 2112;
    v33 = identifierCopy;
    _os_log_impl(&dword_255FE9000, v7, OS_LOG_TYPE_DEFAULT, "supportedServices called in extension %@, domain id %@ item %@", buf, 0x20u);
  }

  domain2 = [(NSFileProviderExtension *)self domain];
  if (domain2 && (v11 = domain2, -[NSFileProviderExtension domain](self, "domain"), v12 = objc_claimAutoreleasedReturnValue(), [v12 identifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v11, v13))
  {
    v14 = [[LiveFSFPUnlockServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:identifierCopy];
    v25 = 0;
    v15 = [(LiveFSFPExtensionHelper *)self itemForIdentifier:identifierCopy error:&v25];
    v16 = v25;
    if (v15)
    {
      v17 = [[LiveFSClientServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:identifierCopy];
      v18 = [[LiveFSValidationServiceSource alloc] initWithFileProviderExtension:self itemIdentifier:identifierCopy];
      thumbnailsServiceSource = self->thumbnailsServiceSource;
      v26[0] = v17;
      v26[1] = thumbnailsServiceSource;
      v26[2] = v18;
      v26[3] = v14;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x277CC6348]])
    {
      v27 = v14;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    }

    else
    {
      v21 = v16;
      if (v21)
      {
        v22 = livefs_std_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [LiveFSFPExtensionHelper supportedServiceSourcesForItemIdentifier:error:];
        }
      }

      if (error)
      {
        v23 = v21;
        *error = v21;
      }

      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [LiveFSFPExtensionHelper supportedServiceSourcesForItemIdentifier:error:];
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

- (id)enumeratorForSearchQuery:(id)query error:(id *)error
{
  queryCopy = query;
  if ([(LiveFSFPExtensionHelper *)self serverSearchUsesCS])
  {
    v7 = objc_alloc(MEMORY[0x277CC6448]);
    domain = [(NSFileProviderExtension *)self domain];
    identifier = [domain identifier];
    v10 = [v7 initWithSearchQuery:queryCopy mountPoint:identifier];
  }

  else
  {
    v11 = [LiveFSFPSearchEnumeratorHelper newForQuery:queryCopy withExtension:self];
    v10 = v11;
    if (error && !v11)
    {
      *error = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:22];
    }
  }

  return v10;
}

- (void)unlockWithPassword:(id)password remember:(BOOL)remember completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [LiveFSFPExtensionHelper getNSErrorFromLiveFSErrno:45];
  (*(handler + 2))(handlerCopy, v7);
}

+ (id)getNSErrorFromLiveFSErrno:(int)errno
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (errno > 44)
  {
    if (errno > 79)
    {
      switch(errno)
      {
        case 80:
          goto LABEL_19;
        case 89:
          v3 = MEMORY[0x277CCA9B8];
          v4 = *MEMORY[0x277CCA050];
          v5 = 3072;
          goto LABEL_26;
        case 10100:
LABEL_19:
          v3 = MEMORY[0x277CCA9B8];
          v4 = *MEMORY[0x277CC6300];
          v5 = -1000;
          goto LABEL_26;
      }
    }

    else
    {
      if (errno == 45)
      {
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 3328;
        goto LABEL_26;
      }

      if (errno == 57 || errno == 65)
      {
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CC6300];
        v5 = -1004;
        goto LABEL_26;
      }
    }

    goto LABEL_30;
  }

  if (errno <= 21)
  {
    switch(errno)
    {
      case 0:
        v6 = 0;
        goto LABEL_27;
      case 2:
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 4;
        goto LABEL_26;
      case 13:
        v3 = MEMORY[0x277CCA9B8];
        v4 = *MEMORY[0x277CCA050];
        v5 = 257;
LABEL_26:
        v6 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
        goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (errno != 22)
  {
    if (errno == 28)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA050];
      v5 = 640;
      goto LABEL_26;
    }

    if (errno == 30)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA050];
      v5 = 642;
      goto LABEL_26;
    }

LABEL_30:
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA050];
    v15 = *MEMORY[0x277CCA7E8];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:errno userInfo:0];
    v16 = v9;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v16;
    v12 = &v15;
    goto LABEL_31;
  }

  v7 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA050];
  v17 = *MEMORY[0x277CCA7E8];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  v18[0] = v9;
  v10 = MEMORY[0x277CBEAC0];
  v11 = v18;
  v12 = &v17;
LABEL_31:
  v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v6 = [v7 errorWithDomain:v8 code:256 userInfo:v14];

LABEL_27:

  return v6;
}

+ (id)getNSErrorFromUnknownError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CCA5B8]), v5, v6))
  {
    [v4 code];
    v7 = getNSErrorFromLiveFSErrno();
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

- (void)init
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)itemPathForURL:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)itemPathForURL:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)itemPathForURL:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)itemForPath:cachedOnly:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)doInvalidate:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_hasManagerOrError:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)makeVolumeListenerEndpointAndReturnErrorLocked:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)makeVolumeListenerEndpointAndReturnErrorLocked:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.2(void *a1)
{
  v2 = [a1 domain];
  v3 = [v2 identifier];
  v4 = [a1 domain];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_isLoggedInOrErrorLocked:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_isLoggedInOrErrorLocked:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 domain];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)pathForInodeID:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)itemForIdentifierLocked:error:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)itemForIdentifierLocked:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)itemForIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)persistentIdentifierForItemAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)providePlaceholderAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)startProvidingItemAtURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)stopProvidingItemAtURL:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v3 = v0;
  _os_log_debug_impl(&dword_255FE9000, v1, OS_LOG_TYPE_DEBUG, "got new URL %@; %@", v2, 0x16u);
}

void __88__LiveFSFPExtensionHelper_importDocumentAtURL_toParentItemIdentifier_completionHandler___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createDirectoryWithName:inParentItemIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createDirectoryWithName:inParentItemIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createDirectoryWithName:(void *)a1 inParentItemIdentifier:(NSObject *)a2 completionHandler:.cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 domain];
  v4 = [v3 identifier];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "Cluster master %@ is not writable", v5, 0xCu);
}

- (void)renameItemWithIdentifier:(os_log_t)log toName:(void *)a4 completionHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_255FE9000, log, OS_LOG_TYPE_ERROR, "Cluster master %@ is not writable", buf, 0xCu);
}

- (void)reparentItemWithIdentifier:(os_log_t)log toParentItemWithIdentifier:newName:completionHandler:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_255FE9000, log, OS_LOG_TYPE_DEBUG, "passed new name is null, changing to %@", buf, 0xCu);
}

- (void)trashItemWithIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __94__LiveFSFPExtensionHelper_untrashItemWithIdentifier_toParentItemIdentifier_completionHandler___block_invoke_2_242_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setLastUsedDate:forItemIdentifier:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setTagData:(uint64_t)a1 forItemIdentifier:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = __error();
  strerror(*v4);
  OUTLINED_FUNCTION_0();
  v6 = 2080;
  v7 = a1;
  _os_log_debug_impl(&dword_255FE9000, a2, OS_LOG_TYPE_DEBUG, "tagData: error '%s' opening file %s", v5, 0x16u);
}

- (void)setFavoriteRank:(uint64_t)a1 forItemIdentifier:(NSObject *)a2 completionHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = __error();
  strerror(*v4);
  OUTLINED_FUNCTION_0();
  v6 = 2080;
  v7 = a1;
  _os_log_error_impl(&dword_255FE9000, a2, OS_LOG_TYPE_ERROR, "setFavoriteRank: error '%s' opening file %s", v5, 0x16u);
}

- (void)setFavoriteRank:forItemIdentifier:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)disconnectWithOptions:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __67__LiveFSFPExtensionHelper_disconnectWithOptions_completionHandler___block_invoke_254_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)enumeratorForContainerItemIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)supportedServiceSourcesForItemIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)supportedServiceSourcesForItemIdentifier:error:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end