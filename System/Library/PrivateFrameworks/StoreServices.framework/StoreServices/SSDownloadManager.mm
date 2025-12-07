@interface SSDownloadManager
+ (id)EBookDownloadManager;
+ (id)IPodDownloadManager;
+ (id)softwareDownloadManager;
+ (void)_sendGlobalHandler:(id)handler;
+ (void)_triggerDownloads;
+ (void)reconnectToLSApplicationWorkspace;
+ (void)removePersistenceIdentifier:(id)identifier;
+ (void)retryAllRestoreDownloads;
+ (void)setDownloadHandler:(id)handler;
- (BOOL)isUsingNetwork;
- (NSArray)activeDownloads;
- (NSArray)downloads;
- (SSDownloadManager)initWithDownloadKinds:(id)kinds;
- (SSDownloadManager)initWithManagerOptions:(id)options;
- (SSDownloadManagerOptions)managerOptions;
- (id)_copyDownloadKindsUsingNetwork;
- (id)_copyDownloads;
- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds;
- (id)_initSSDownloadManagerWithOptions:(id)options;
- (id)_newOptionsDictionary;
- (void)_connectAfterDaemonLaunch;
- (void)_connectAsObserver;
- (void)_finishDownloads:(id)downloads;
- (void)_handleDownloadKindsUsingNetworkChanged:(id)changed;
- (void)_handleDownloadStatesChanged:(id)changed;
- (void)_handleDownloadsChanged:(id)changed;
- (void)_handleDownloadsRemoved:(id)removed;
- (void)_handleMessage:(id)message fromServerConnection:(id)connection;
- (void)_handleReply:(id)reply forDownloads:(id)downloads message:(id)message isRetry:(BOOL)retry block:(id)block;
- (void)_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block;
- (void)_loadDownloadKindsUsingNetwork;
- (void)_moveDownload:(id)download before:(id)before after:(id)after completionBlock:(id)block;
- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block;
- (void)_reloadIsUsingNetworkWithDownloadKinds:(id)kinds;
- (void)_sendDownloadsChanged:(id)changed;
- (void)_sendMessage:(id)message withCompletionBlock:(id)block;
- (void)_sendMessageToObservers:(SEL)observers;
- (void)_sendObserverConnection;
- (void)_willFinishDownloads:(id)downloads;
- (void)addObserver:(id)observer;
- (void)cancelAllDownloadsWithCompletionBlock:(id)block;
- (void)cancelDownloads:(id)downloads completionBlock:(id)block;
- (void)dealloc;
- (void)finishDownloads:(id)downloads;
- (void)getDownloadsUsingBlock:(id)block;
- (void)reloadFromServer;
- (void)removeObserver:(id)observer;
- (void)restartDownloads:(id)downloads completionBlock:(id)block;
- (void)resumeDownloads:(id)downloads completionBlock:(id)block;
- (void)setDownloads:(id)downloads forKinds:(id)kinds completionBlock:(id)block;
@end

@implementation SSDownloadManager

- (void)_connectAsObserver
{
  v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  connection = self->_connection;
  self->_connection = v3;

  v5 = [SSWeakReference weakReferenceWithObject:self];
  v6 = objc_alloc_init(SSXPCConnection);
  observerConnection = self->_observerConnection;
  self->_observerConnection = v6;

  v8 = self->_observerConnection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__SSDownloadManager__connectAsObserver__block_invoke;
  v10[3] = &unk_1E84B0620;
  v11 = v5;
  v9 = v5;
  [(SSXPCConnection *)v8 setMessageBlock:v10];
  [(SSDownloadManager *)self _sendObserverConnection];
}

- (void)_sendObserverConnection
{
  v21 = *MEMORY[0x1E69E9840];
  if (!SSIsInternalBuild(self, a2) || !_os_feature_enabled_impl())
  {
    goto LABEL_16;
  }

  v3 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 & 2;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  v19 = 136446210;
  v20 = "[SSDownloadManager _sendObserverConnection]";

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
LABEL_14:
  }

LABEL_16:
  if (self->_observerConnection)
  {
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v15, "0", 18);
    downloadKinds = [(SSDownloadManagerOptions *)self->_options downloadKinds];
    SSXPCDictionarySetObject(v15, "1", downloadKinds);

    createXPCEndpoint = [(SSXPCConnection *)self->_observerConnection createXPCEndpoint];
    xpc_dictionary_set_value(v15, "2", createXPCEndpoint);
    _newOptionsDictionary = [(SSDownloadManager *)self _newOptionsDictionary];
    xpc_dictionary_set_value(v15, "3", _newOptionsDictionary);
    [(SSXPCConnection *)self->_connection sendMessage:v15];
  }
}

- (id)_newOptionsDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  persistenceIdentifier = [(SSDownloadManagerOptions *)self->_options persistenceIdentifier];
  SSXPCDictionarySetObject(v3, "0", persistenceIdentifier);

  xpc_dictionary_set_BOOL(v3, "1", [(SSDownloadManagerOptions *)self->_options shouldFilterExternalOriginatedDownloads]);
  prefetchedDownloadProperties = [(SSDownloadManagerOptions *)self->_options prefetchedDownloadProperties];
  SSXPCDictionarySetObject(v3, "2", prefetchedDownloadProperties);

  prefetchedDownloadExternalProperties = [(SSDownloadManagerOptions *)self->_options prefetchedDownloadExternalProperties];
  SSXPCDictionarySetObject(v3, "3", prefetchedDownloadExternalProperties);

  return v3;
}

- (void)dealloc
{
  notify_cancel(self->_launchNotificationToken);
  [(SSXPCConnection *)self->_connection setDisconnectBlock:0];
  [(SSXPCConnection *)self->_observerConnection setMessageBlock:0];
  [(NSArray *)self->_activeDownloads makeObjectsPerformSelector:sel__becomeManagedOnConnection_ withObject:0];
  [(NSArray *)self->_downloads makeObjectsPerformSelector:sel__becomeManagedOnConnection_ withObject:0];
  v3.receiver = self;
  v3.super_class = SSDownloadManager;
  [(SSDownloadManager *)&v3 dealloc];
}

- (id)_copyDownloads
{
  v27 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v25 = 136446210;
      v26 = "[SSDownloadManager _copyDownloads]";

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if (self->_downloadsChanged || (v15 = self->_downloads) == 0)
  {
    v16 = [(SSDownloadManager *)self _copyDownloadsForMessage:14 downloadIDs:0];
    v17 = v16;
    if (self->_removedDownloads)
    {
      v18 = [v16 count];
      if (v18 >= 1)
      {
        v19 = v18 + 1;
        do
        {
          removedDownloads = self->_removedDownloads;
          v21 = [v17 objectAtIndex:v19 - 2];
          LODWORD(removedDownloads) = [(NSMutableSet *)removedDownloads containsObject:v21];

          if (removedDownloads)
          {
            [v17 removeObjectAtIndex:v19 - 2];
          }

          --v19;
        }

        while (v19 > 1);
      }
    }

    if (self->_downloadsChanged || ![(NSArray *)self->_downloads isEqualToArray:v17])
    {
      v22 = [v17 copy];
      downloads = self->_downloads;
      self->_downloads = v22;
    }

    self->_downloadsChanged = 0;

    v15 = self->_downloads;
  }

  return v15;
}

void __39__SSDownloadManager__connectAsObserver__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 object];
  [v7 _handleMessage:v6 fromServerConnection:v5];
}

- (NSArray)downloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SSDownloadManager_downloads__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__SSDownloadManager_downloads__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyDownloads];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_initSSDownloadManagerWithOptions:(id)options
{
  optionsCopy = options;
  v21.receiver = self;
  v21.super_class = SSDownloadManager;
  v5 = [(SSDownloadManager *)&v21 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;

    v8 = dispatch_queue_create("com.apple.storeservices.SSDownloadManager.access", 0);
    accessQueue = v5->_accessQueue;
    v5->_accessQueue = v8;

    v10 = dispatch_queue_create("com.apple.storeservices.SSDownloadManager.background", 0);
    backgroundQueue = v5->_backgroundQueue;
    v5->_backgroundQueue = v10;

    v12 = dispatch_queue_create("com.apple.storeservices.SSDownloadManager.observer", 0);
    observerQueue = v5->_observerQueue;
    v5->_observerQueue = v12;

    v14 = [SSWeakReference weakReferenceWithObject:v5];
    uTF8String = [(__CFString *)@"com.apple.iTunesStore.daemon.launched" UTF8String];
    v16 = v5->_accessQueue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__SSDownloadManager__initSSDownloadManagerWithOptions___block_invoke;
    handler[3] = &unk_1E84AE5F8;
    v20 = v14;
    v17 = v14;
    notify_register_dispatch(uTF8String, &v5->_launchNotificationToken, v16, handler);
    [(SSDownloadManager *)v5 _connectAsObserver];
  }

  return v5;
}

void __55__SSDownloadManager__initSSDownloadManagerWithOptions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _connectAfterDaemonLaunch];
}

- (SSDownloadManager)initWithDownloadKinds:(id)kinds
{
  kindsCopy = kinds;
  v5 = objc_alloc_init(SSDownloadManagerOptions);
  [(SSDownloadManagerOptions *)v5 setDownloadKinds:kindsCopy];

  v6 = [(SSDownloadManager *)self initWithManagerOptions:v5];
  return v6;
}

- (SSDownloadManager)initWithManagerOptions:(id)options
{
  optionsCopy = options;
  downloadKinds = [optionsCopy downloadKinds];
  if (![downloadKinds count])
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have download kinds"];
    self = 0;
    goto LABEL_17;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    downloadKinds2 = [optionsCopy downloadKinds];
    v11 = SSDownloadKindsContainsBookToShimKind(downloadKinds2);

    downloadKinds3 = [optionsCopy downloadKinds];
    v13 = [downloadKinds3 containsObject:@"software"];

    if (!v11 || (v13 & 1) != 0)
    {
      if (v11)
      {
        v14 = SSDownloadManagerBookShim;
      }

      else
      {
        downloadKinds4 = [optionsCopy downloadKinds];
        v16 = [downloadKinds4 containsObject:@"software"];

        if (!v16)
        {
LABEL_16:
          self = [(SSDownloadManager *)self _initSSDownloadManagerWithOptions:optionsCopy];
          goto LABEL_17;
        }

        v14 = SSDownloadManagerAppShim;
      }
    }

    else
    {
      v14 = SSDownloadManagerBookShim2;
    }

    v17 = [[v14 alloc] initWithManagerOptions:optionsCopy];

    self = v17;
    goto LABEL_17;
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    goto LABEL_16;
  }

  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    goto LABEL_16;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    goto LABEL_16;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Subclassing of SSDownloadManager is not supported"];
LABEL_17:

  return self;
}

+ (void)reconnectToLSApplicationWorkspace
{
  v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v2 = SSXPCCreateMessageDictionary(120);
  [(SSXPCConnection *)v3 sendMessage:v2];
}

+ (void)removePersistenceIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (SSIsInternalBuild(identifierCopy, v4) && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v19 = 136446210;
      v20 = "+[SSDownloadManager removePersistenceIdentifier:]";

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 6);
  SSXPCDictionarySetObject(v18, "1", identifierCopy);

  [(SSXPCConnection *)v17 sendMessage:v18];
}

+ (void)setDownloadHandler:(id)handler
{
  handlerCopy = handler;
  pthread_mutex_lock(&__GlobalHandlerLock);
  if (__GlobalHandler != handlerCopy)
  {
    objc_storeStrong(&__GlobalHandler, handler);
    [self _sendGlobalHandler:__GlobalHandler];
  }

  pthread_mutex_unlock(&__GlobalHandlerLock);
}

- (NSArray)activeDownloads
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      LODWORD(v19) = 136446210;
      *(&v19 + 4) = "[SSDownloadManager activeDownloads]";

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  *&v19 = 0;
  *(&v19 + 1) = &v19;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__30;
  v22 = __Block_byref_object_dispose__30;
  v23 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SSDownloadManager_activeDownloads__block_invoke;
  block[3] = &unk_1E84ABFD8;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(accessQueue, block);
  v16 = *(*(&v19 + 1) + 40);
  _Block_object_dispose(&v19, 8);

  return v16;
}

void __36__SSDownloadManager_activeDownloads__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) != 0 || (v3 = *(v2 + 16)) == 0)
  {
    v4 = [v2 _copyDownloadsForMessage:8 downloadIDs:0];
    if (([*(*(a1 + 32) + 16) isEqualToArray:v4] & 1) == 0)
    {
      v5 = [v4 copy];
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = v5;
    }

    [*(*(a1 + 32) + 16) makeObjectsPerformSelector:sel__resetStatus];
    *(*(a1 + 32) + 24) = 0;

    v3 = *(*(a1 + 32) + 16);
  }

  v8 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v8, v3);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SSDownloadManager_addObserver___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

uint64_t __33__SSDownloadManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    *(v4 + 80) = v3;

    v2 = *(*(a1 + 32) + 80);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (void)cancelAllDownloadsWithCompletionBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v5) && _os_feature_enabled_impl())
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v19 = 136446210;
      v20 = "[SSDownloadManager cancelAllDownloadsWithCompletionBlock:]";

      if (!v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 0);
  xpc_dictionary_set_BOOL(v18, "1", [(SSDownloadManagerOptions *)self->_options shouldFilterExternalOriginatedDownloads]);
  [(SSDownloadManager *)self _sendMessage:v18 withCompletionBlock:blockCopy];
}

- (void)cancelDownloads:(id)downloads completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v33 = 136446210;
      v34 = "[SSDownloadManager cancelDownloads:completionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 1);
  v22 = xpc_array_create(0, 0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = downloadsCopy;
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        xpc_array_set_int64(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v28 + 1) + 8 * i) persistentIdentifier]);
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  xpc_dictionary_set_value(v21, "1", v22);
  [(SSDownloadManager *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)finishDownloads:(id)downloads
{
  downloadsCopy = downloads;
  [(SSDownloadManager *)self _willFinishDownloads:downloadsCopy];
  [(SSDownloadManager *)self _finishDownloads:downloadsCopy];
}

- (void)getDownloadsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSDownloadManager_getDownloadsUsingBlock___block_invoke;
  v7[3] = &unk_1E84AC360;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(accessQueue, v7);
}

void __44__SSDownloadManager_getDownloadsUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyDownloads];
  v3 = *(*(a1 + 32) + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SSDownloadManager_getDownloadsUsingBlock___block_invoke_2;
  v6[3] = &unk_1E84AC338;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

- (BOOL)isUsingNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSDownloadManager_isUsingNetwork__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SSDownloadManagerOptions)managerOptions
{
  v2 = [(SSDownloadManagerOptions *)self->_options copy];

  return v2;
}

- (void)resumeDownloads:(id)downloads completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v33 = 136446210;
      v34 = "[SSDownloadManager resumeDownloads:completionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 19);
  v22 = xpc_array_create(0, 0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = downloadsCopy;
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        xpc_array_set_int64(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v28 + 1) + 8 * i) persistentIdentifier]);
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  xpc_dictionary_set_value(v21, "1", v22);
  [(SSDownloadManager *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)restartDownloads:(id)downloads completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v8) && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v33 = 136446210;
      v34 = "[SSDownloadManager restartDownloads:completionBlock:]";

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:4];
      free(v14);
      SSFileLog(v9, @"%@", v15, v16, v17, v18, v19, v20, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v21, "0", 20);
  v22 = xpc_array_create(0, 0);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = downloadsCopy;
  v24 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        xpc_array_set_int64(v22, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v28 + 1) + 8 * i) persistentIdentifier]);
      }

      v25 = [v23 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  xpc_dictionary_set_value(v21, "1", v22);
  [(SSDownloadManager *)self _sendMessage:v21 withCompletionBlock:blockCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSDownloadManager_removeObserver___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

void *__36__SSDownloadManager_removeObserver___block_invoke(void *result)
{
  if (*(result[4] + 80))
  {
    return [*(result[4] + 80) removeObject:result[5]];
  }

  return result;
}

+ (id)EBookDownloadManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSDownloadManager_EBookDownloadManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (EBookDownloadManager_sOnce != -1)
  {
    dispatch_once(&EBookDownloadManager_sOnce, block);
  }

  v2 = EBookDownloadManager_sEBookManager;

  return v2;
}

void __41__SSDownloadManager_EBookDownloadManager__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) EBookDownloadKinds];
  v3 = [v2 initWithDownloadKinds:v5];
  v4 = EBookDownloadManager_sEBookManager;
  EBookDownloadManager_sEBookManager = v3;
}

+ (id)IPodDownloadManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSDownloadManager_IPodDownloadManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (IPodDownloadManager_sOnce != -1)
  {
    dispatch_once(&IPodDownloadManager_sOnce, block);
  }

  v2 = IPodDownloadManager_sIPodManager;

  return v2;
}

void __40__SSDownloadManager_IPodDownloadManager__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) IPodDownloadKinds];
  v3 = [v2 initWithDownloadKinds:v5];
  v4 = IPodDownloadManager_sIPodManager;
  IPodDownloadManager_sIPodManager = v3;
}

+ (id)softwareDownloadManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSDownloadManager_softwareDownloadManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (softwareDownloadManager_sOnce != -1)
  {
    dispatch_once(&softwareDownloadManager_sOnce, block);
  }

  v2 = softwareDownloadManager_sSoftwareManager;

  return v2;
}

void __44__SSDownloadManager_softwareDownloadManager__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(objc_opt_class());
  v5 = [*(a1 + 32) softwareDownloadKinds];
  v3 = [v2 initWithDownloadKinds:v5];
  v4 = softwareDownloadManager_sSoftwareManager;
  softwareDownloadManager_sSoftwareManager = v3;
}

+ (void)retryAllRestoreDownloads
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = SSIsDaemon();
  if (!v2)
  {
    if (!SSIsInternalBuild(v2, v3) || !_os_feature_enabled_impl())
    {
      goto LABEL_20;
    }

    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v19 = 136446210;
      v20 = "+[SSDownloadManager retryAllRestoreDownloads]";

      if (!v10)
      {
LABEL_19:

LABEL_20:
        v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_int64(v18, "0", 37);
        [(SSXPCConnection *)v17 sendMessage:v18];

        return;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_19;
  }

  v4 = NSClassFromString(&cfstr_Downloadmanage.isa);

  [(objc_class *)v4 retryAllRestoreDownloads];
}

- (void)reloadFromServer
{
  v18 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v16 = 136446210;
      v17 = "[SSDownloadManager reloadFromServer]";

      if (!v8)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v15 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v15, "0", 5);
  [(SSXPCConnection *)self->_connection sendMessage:v15];
}

- (void)setDownloads:(id)downloads forKinds:(id)kinds completionBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  kindsCopy = kinds;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v11) && _os_feature_enabled_impl())
  {
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v45 = 136446210;
      v46 = "[SSDownloadManager setDownloads:forKinds:completionBlock:]";

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
      free(v17);
      SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v24, "0", 39);
  xpc_dictionary_set_BOOL(v24, "1", 1);
  if (kindsCopy)
  {
    SSXPCDictionarySetObject(v24, "3", kindsCopy);
  }

  v25 = xpc_array_create(0, 0);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v26 = downloadsCopy;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v41;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        copyXPCEncoding = [*(*(&v40 + 1) + 8 * i) copyXPCEncoding];
        if (copyXPCEncoding)
        {
          xpc_array_append_value(v25, copyXPCEncoding);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v28);
  }

  xpc_dictionary_set_value(v24, "2", v25);
  [v26 makeObjectsPerformSelector:sel__becomeManagedOnConnection_ withObject:self->_connection];
  connection = self->_connection;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__SSDownloadManager_setDownloads_forKinds_completionBlock___block_invoke;
  v36[3] = &unk_1E84B05F8;
  v36[4] = self;
  v37 = v26;
  v38 = v24;
  v39 = blockCopy;
  v33 = blockCopy;
  v34 = v24;
  v35 = v26;
  [(SSXPCConnection *)connection sendMessage:v34 withReply:v36];
}

+ (void)_triggerDownloads
{
  v19 = *MEMORY[0x1E69E9840];
  if (!SSIsInternalBuild(self, a2) || !_os_feature_enabled_impl())
  {
    goto LABEL_16;
  }

  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
  {
    v6 = v4;
  }

  else
  {
    v6 = v4 & 2;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v17 = 136446210;
  v18 = "+[SSDownloadManager _triggerDownloads]";

  if (v7)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
    free(v7);
    SSFileLog(v2, @"%@", v8, v9, v10, v11, v12, v13, oSLogObject);
LABEL_14:
  }

LABEL_16:
  if (SSIsDaemon())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.triggerdownloads", 0, 0, 1u);
  }

  else
  {
    v15 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v16, "0", 41);
    [(SSXPCConnection *)v15 sendMessage:v16];
  }
}

- (void)_finishDownloads:(id)downloads
{
  v34 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  if (SSIsInternalBuild(downloadsCopy, v5) && _os_feature_enabled_impl())
  {
    v6 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v32 = 136446210;
      v33 = "[SSDownloadManager _finishDownloads:]";

      if (!v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 7);
  v19 = xpc_array_create(0, 0);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = downloadsCopy;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        xpc_array_set_int64(v19, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v27 + 1) + 8 * i) persistentIdentifier]);
      }

      v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  xpc_dictionary_set_value(v18, "1", v19);
  connection = self->_connection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __38__SSDownloadManager__finishDownloads___block_invoke;
  v26[3] = &unk_1E84AEDD0;
  v26[4] = self;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v26];
}

void __38__SSDownloadManager__finishDownloads___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__SSDownloadManager__finishDownloads___block_invoke_2;
  block[3] = &unk_1E84AC050;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __38__SSDownloadManager__finishDownloads___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  *(v1 + 96) = 0;
}

- (void)_willFinishDownloads:(id)downloads
{
  downloadsCopy = downloads;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SSDownloadManager__willFinishDownloads___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = downloadsCopy;
  v6 = downloadsCopy;
  dispatch_async(accessQueue, v7);
}

void __42__SSDownloadManager__willFinishDownloads___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;

    v2 = *(*(a1 + 32) + 96);
  }

  [v2 addObjectsFromArray:*(a1 + 40)];
  v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [*(*(a1 + 32) + 48) count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 96);
      v11 = [*(v9 + 48) objectAtIndex:i];
      LODWORD(v10) = [v10 containsObject:v11];

      if (v10)
      {
        [v16 addIndex:i];
      }
    }
  }

  if ([v16 count])
  {
    v12 = [*(*(a1 + 32) + 48) mutableCopy];
    [v12 removeObjectsAtIndexes:v16];
    v13 = [v12 copy];
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = v13;
  }
}

+ (void)_sendGlobalHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!SSIsInternalBuild(handlerCopy, v4) || !_os_feature_enabled_impl())
  {
    goto LABEL_16;
  }

  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v20 = 136446210;
  v21 = "+[SSDownloadManager _sendGlobalHandler:]";

  if (v10)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:4];
    free(v10);
    SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
LABEL_14:
  }

LABEL_16:
  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v17, "0", 22);
  if (handlerCopy)
  {
    handlerIdentifier = [handlerCopy handlerIdentifier];
  }

  else
  {
    handlerIdentifier = 0;
  }

  xpc_dictionary_set_int64(v17, "1", handlerIdentifier);
  v19 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  [(SSXPCConnection *)v19 sendMessage:v17];
}

- (void)_connectAfterDaemonLaunch
{
  v17 = *MEMORY[0x1E69E9840];
  [(SSDownloadManager *)self _sendObserverConnection];
  [(SSDownloadManager *)self _loadDownloadKindsUsingNetwork];
  [(SSDownloadManager *)self _resetAllDownloads];
  [(SSDownloadManager *)self _sendDownloadsChanged:0];
  pthread_mutex_lock(&__GlobalHandlerLock);
  if (__GlobalHandler)
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      v15 = 138412290;
      v16 = __GlobalHandler;
      v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 1, "SSDownloadManager: Reconnect global handler: %@", &v15, 12);

      if (!v8)
      {
LABEL_14:

        [SSDownloadManager _sendGlobalHandler:__GlobalHandler];
        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
      free(v8);
      SSFileLog(v3, @"%@", v9, v10, v11, v12, v13, v14, oSLogObject);
    }

    goto LABEL_14;
  }

LABEL_15:
  pthread_mutex_unlock(&__GlobalHandlerLock);
}

- (id)_copyDownloadKindsUsingNetwork
{
  v30 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild(self, a2) && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 2;
    }

    if (v7)
    {
      LODWORD(v25) = 136446210;
      *(&v25 + 4) = "[SSDownloadManager _copyDownloadKindsUsingNetwork]";

      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }

    else
    {
    }
  }

  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__30;
  v28 = __Block_byref_object_dispose__30;
  v29 = 0;
  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, "0", 29);
  v17 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __51__SSDownloadManager__copyDownloadKindsUsingNetwork__block_invoke;
  v22[3] = &unk_1E84B0648;
  v24 = &v25;
  v19 = v17;
  v23 = v19;
  [(SSXPCConnection *)connection sendMessage:v16 withReply:v22];
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  v20 = *(*(&v25 + 1) + 40);

  _Block_object_dispose(&v25, 8);
  return v20;
}

void __51__SSDownloadManager__copyDownloadKindsUsingNetwork__block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict && MEMORY[0x1DA6E0380](xdict) == MEMORY[0x1E69E9E80])
  {
    v3 = xpc_dictionary_get_value(xdict, "0");
    v4 = v3;
    if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E50])
    {
      v5 = SSXPCCreateCFObjectFromXPCObject(v4);
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_copyDownloadsForMessage:(int64_t)message downloadIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "0", message);
  xpc_dictionary_set_BOOL(v8, "1", [(SSDownloadManagerOptions *)self->_options shouldFilterExternalOriginatedDownloads]);
  if (dsCopy)
  {
    xpc_dictionary_set_value(v8, "2", dsCopy);
  }

  v9 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__SSDownloadManager__copyDownloadsForMessage_downloadIDs___block_invoke;
  v16[3] = &unk_1E84B0698;
  v16[4] = self;
  v11 = v7;
  v17 = v11;
  v18 = v9;
  v12 = v9;
  [(SSXPCConnection *)connection sendMessage:v8 withReply:v16];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v18;
  v14 = v11;

  return v14;
}

void __58__SSDownloadManager__copyDownloadsForMessage_downloadIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = xpc_dictionary_get_value(v4, "0");
    v6 = v5;
    if (v5 && MEMORY[0x1DA6E0380](v5) == MEMORY[0x1E69E9E50])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__SSDownloadManager__copyDownloadsForMessage_downloadIDs___block_invoke_2;
      v8[3] = &unk_1E84B0670;
      v7 = *(a1 + 40);
      v8[4] = *(a1 + 32);
      v9 = v7;
      xpc_array_apply(v6, v8);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t __58__SSDownloadManager__copyDownloadsForMessage_downloadIDs___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9EB0])
  {
    v5 = [(SSEntity *)[SSDownload alloc] _initWithPersistentIdentifier:xpc_int64_get_value(v4)];
  }

  else
  {
    if (MEMORY[0x1DA6E0380](v4) != MEMORY[0x1E69E9E80])
    {
      goto LABEL_7;
    }

    v5 = [[SSDownload alloc] _initWithLocalPropertyValues:v4];
  }

  v6 = v5;
  if (v5)
  {
    [v5 _becomeManagedOnConnection:*(*(a1 + 32) + 40)];
    [*(a1 + 40) addObject:v6];
  }

LABEL_7:

  return 1;
}

- (void)_handleDownloadKindsUsingNetworkChanged:(id)changed
{
  changedCopy = changed;
  v5 = objc_opt_class();
  v6 = SSXPCDictionaryCopyObjectWithClass(changedCopy, "1", v5);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SSDownloadManager *)self _reloadIsUsingNetworkWithDownloadKinds:v6];
  }

  else
  {
    [(SSDownloadManager *)self _loadDownloadKindsUsingNetwork];
  }
}

- (void)_handleDownloadsChanged:(id)changed
{
  v66 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v53 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v5 = xpc_dictionary_get_value(changedCopy, "1");
  if ([(NSArray *)self->_downloads count])
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || MEMORY[0x1DA6E0380](v5) != MEMORY[0x1E69E9E50] || !xpc_array_get_count(v5))
  {
    goto LABEL_43;
  }

  v51 = changedCopy;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:0x7FFFFFFFFFFFFFFFLL];
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __45__SSDownloadManager__handleDownloadsChanged___block_invoke;
  applier[3] = &unk_1E84B0670;
  v9 = v7;
  v61 = v9;
  v50 = v8;
  v62 = v50;
  xpc_array_apply(v5, applier);
  v10 = [(NSArray *)self->_downloads count];
  v54 = v9;
  v11 = [v9 count];
  v13 = v11;
  v52 = v5;
  if (v10 >= 1 && v11 >= 1)
  {
    v14 = 1;
    do
    {
      v15 = [(NSArray *)self->_downloads objectAtIndex:v14 - 1];
      v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v15, "persistentIdentifier")}];
      v17 = [v54 objectForKey:v16];

      if (v17)
      {
        v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v14 - 1];
        [v54 setObject:v18 forKey:v16];
        --v13;
      }

      if (v14 >= v10)
      {
        break;
      }

      ++v14;
    }

    while (v13 > 0);
  }

  v5 = v52;
  if (v13)
  {
LABEL_42:

    changedCopy = v51;
LABEL_43:
    [(SSDownloadManager *)self _resetAllDownloads];
    selfCopy2 = self;
    v48 = 0;
    goto LABEL_44;
  }

  v19 = 0x1E696A000uLL;
  if (SSIsInternalBuild(v11, v12) && _os_feature_enabled_impl())
  {
    v20 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v23 = shouldLog;
    }

    else
    {
      v23 = shouldLog & 2;
    }

    if (v23)
    {
      v64 = 136446210;
      v65 = "[SSDownloadManager _handleDownloadsChanged:]";

      if (!v24)
      {
LABEL_28:

        goto LABEL_29;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog(v20, @"%@", v25, v26, v27, v28, v29, v30, oSLogObject);
    }

    goto LABEL_28;
  }

LABEL_29:
  v31 = [(SSDownloadManager *)self _copyDownloadsForMessage:14 downloadIDs:v52];
  v32 = [v31 count];
  v33 = v54;
  if (v32 != [v54 count])
  {

    goto LABEL_42;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v31;
  v34 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = *v57;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v57 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v56 + 1) + 8 * i);
        v40 = [objc_alloc(*(v19 + 3480)) initWithLongLong:{objc_msgSend(v39, "persistentIdentifier")}];
        v41 = [v33 objectForKey:v40];
        v42 = v41;
        if (v41 && [v41 integerValue] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v43 = -[NSArray objectAtIndex:](self->_downloads, "objectAtIndex:", [v42 integerValue]);
          [v39 _localExternalValues];
          v45 = v44 = self;
          [v43 _setLocalExternalValues:v45];

          _localValues = [v39 _localValues];
          [v43 _setLocalValues:_localValues];

          self = v44;
          v33 = v54;
          [v53 addObject:v43];
          ++v36;
        }

        v19 = 0x1E696A000;
      }

      v35 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v35);
  }

  else
  {
    v36 = 0;
  }

  v49 = [obj count];
  v6 = v36 == v49;
  changedCopy = v51;
  v5 = v52;
  if (!v6)
  {
    goto LABEL_43;
  }

  if (!self->_observers)
  {
    goto LABEL_45;
  }

  selfCopy2 = self;
  v48 = v53;
LABEL_44:
  [(SSDownloadManager *)selfCopy2 _sendDownloadsChanged:v48];
LABEL_45:
}

uint64_t __45__SSDownloadManager__handleDownloadsChanged___block_invoke(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  v4 = SSXPCCreateCFObjectFromXPCObject(a3);
  if (v4)
  {
    [*(a1 + 32) setObject:*(a1 + 40) forKey:v4];
  }

  return 1;
}

- (void)_handleDownloadsRemoved:(id)removed
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = xpc_dictionary_get_value(removed, "1");
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E50] && [(NSArray *)self->_downloads count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __45__SSDownloadManager__handleDownloadsRemoved___block_invoke;
    applier[3] = &unk_1E84AC3D8;
    v7 = v6;
    v25 = v7;
    xpc_array_apply(v5, applier);
    if ([v7 count])
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      selfCopy = self;
      v9 = self->_downloads;
      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v14, "persistentIdentifier")}];
            if (([v7 containsObject:v15] & 1) == 0)
            {
              [v8 addObject:v14];
            }
          }

          v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v11);
      }

      v16 = [(NSArray *)selfCopy->_downloads count];
      if (v16 != [v8 count])
      {
        v17 = [v8 copy];
        downloads = selfCopy->_downloads;
        selfCopy->_downloads = v17;

        [(SSDownloadManager *)selfCopy _sendDownloadsChanged:0];
      }
    }
  }
}

uint64_t __45__SSDownloadManager__handleDownloadsRemoved___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9EB0])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

- (void)_handleDownloadStatesChanged:(id)changed
{
  v85 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = changedCopy;
  if (self->_observers)
  {
    xdict = changedCopy;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    selfCopy = self;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v78;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v78 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v77 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v77 objects:v84 count:16];
      }

      while (v9);
    }

    v13 = selfCopy;
    selfCopy->_activeDownloadsChanged = 1;
    v5 = xdict;
    if ([v6 count])
    {
      v14 = xpc_dictionary_get_value(xdict, "1");
      v15 = v14;
      if (v14 && MEMORY[0x1DA6E0380](v14) == MEMORY[0x1E69E9E50])
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        prefetchedDownloadExternalProperties = [(SSDownloadManagerOptions *)selfCopy->_options prefetchedDownloadExternalProperties];
        prefetchedDownloadProperties = [(SSDownloadManagerOptions *)selfCopy->_options prefetchedDownloadProperties];
        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __50__SSDownloadManager__handleDownloadStatesChanged___block_invoke;
        applier[3] = &unk_1E84AC3D8;
        v20 = v16;
        v76 = v20;
        xpc_array_apply(v15, applier);
        v58 = v20;
        v51 = prefetchedDownloadProperties;
        v52 = [v20 count];
        v49 = v15;
        v50 = prefetchedDownloadExternalProperties;
        v54 = v17;
        if (v52 == 1)
        {
          v21 = [prefetchedDownloadExternalProperties count];
          v53 = v21 == 0;
          v22 = 0x1E695D000uLL;
          if (v21)
          {
            v23 = SSXPCDictionaryCopyCFObject(xdict, "2");
            v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v25 = prefetchedDownloadExternalProperties;
            v26 = [v25 countByEnumeratingWithState:&v71 objects:v83 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v72;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v72 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v71 + 1) + 8 * j);
                  v31 = [(__CFDate *)v23 objectForKey:v30];
                  if (v31)
                  {
                    [v24 setObject:v31 forKey:v30];
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v71 objects:v83 count:16];
              }

              while (v27);
            }

            v13 = selfCopy;
            v5 = xdict;
            prefetchedDownloadProperties = v51;
            v22 = 0x1E695D000;
          }

          else
          {
            v24 = 0;
          }

          if ([prefetchedDownloadProperties count])
          {
            v33 = SSXPCDictionaryCopyCFObject(v5, "3");
            v32 = objc_alloc_init(*(v22 + 3984));
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v34 = prefetchedDownloadProperties;
            v35 = [v34 countByEnumeratingWithState:&v67 objects:v82 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v68;
              do
              {
                for (k = 0; k != v36; ++k)
                {
                  if (*v68 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v67 + 1) + 8 * k);
                  v40 = [(__CFDate *)v33 objectForKey:v39];
                  if (v40)
                  {
                    [v32 setObject:v40 forKey:v39];
                  }
                }

                v36 = [v34 countByEnumeratingWithState:&v67 objects:v82 count:16];
              }

              while (v36);
            }

            v53 = 0;
            v13 = selfCopy;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 0;
          v24 = 0;
          v53 = 1;
        }

        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = [(SSDownloadManager *)v13 _copyDownloads];
        v41 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v64;
          v44 = v52;
          do
          {
            for (m = 0; m != v42; ++m)
            {
              if (*v64 != v43)
              {
                objc_enumerationMutation(obj);
              }

              v46 = *(*(&v63 + 1) + 8 * m);
              v47 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v46, "persistentIdentifier")}];
              if ([v58 containsObject:v47])
              {
                if ([v24 count])
                {
                  [v46 _addCachedExternalValues:v24];
                  if (![v32 count])
                  {
                    if (v52 < 2)
                    {
                      goto LABEL_55;
                    }

LABEL_52:
                    [v46 _setDirtyCachedProperties:v51];
LABEL_55:
                    if (v53)
                    {
                      [v46 _resetStatus];
                    }

                    [v54 addObject:v46];
                    --v44;
                    goto LABEL_58;
                  }
                }

                else if (v52 <= 1)
                {
                  if (![v32 count])
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  [v46 _setDirtyCachedExternalProperties:v50];
                  if (![v32 count])
                  {
                    goto LABEL_52;
                  }
                }

                [v46 _addCachedPropertyValues:v32];
                goto LABEL_55;
              }

LABEL_58:

              if (!v44)
              {
                goto LABEL_61;
              }
            }

            v42 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
          }

          while (v42);
        }

LABEL_61:

        if ([v54 count])
        {
          observerQueue = selfCopy->_observerQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __50__SSDownloadManager__handleDownloadStatesChanged___block_invoke_2;
          block[3] = &unk_1E84AC078;
          v60 = v6;
          v61 = selfCopy;
          v62 = v54;
          dispatch_async(observerQueue, block);
        }

        v5 = xdict;
        v15 = v49;
      }
    }
  }
}

uint64_t __50__SSDownloadManager__handleDownloadStatesChanged___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x1DA6E0380]() == MEMORY[0x1E69E9EB0])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:xpc_int64_get_value(v4)];
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

void __50__SSDownloadManager__handleDownloadStatesChanged___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v9 = [*(a1 + 48) copy];
        [v7 downloadManager:v8 downloadStatesDidChange:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)_handleMessage:(id)message fromServerConnection:(id)connection
{
  messageCopy = message;
  connectionCopy = connection;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SSDownloadManager__handleMessage_fromServerConnection___block_invoke;
  block[3] = &unk_1E84AC078;
  v12 = messageCopy;
  v13 = connectionCopy;
  selfCopy = self;
  v9 = connectionCopy;
  v10 = messageCopy;
  dispatch_async(accessQueue, block);
}

void __57__SSDownloadManager__handleMessage_fromServerConnection___block_invoke(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "0");
  if (int64)
  {
    v3 = int64;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    xpc_connection_send_message(*(a1 + 40), reply);
    if (v3 > 1005)
    {
      if (v3 == 1008)
      {
        [*(a1 + 48) _handleDownloadsRemoved:*(a1 + 32)];
      }

      else if (v3 == 1006)
      {
        [*(a1 + 48) _handleDownloadKindsUsingNetworkChanged:*(a1 + 32)];
      }
    }

    else if (v3 == 1003)
    {
      [*(a1 + 48) _handleDownloadsChanged:*(a1 + 32)];
    }

    else if (v3 == 1004)
    {
      [*(a1 + 48) _handleDownloadStatesChanged:*(a1 + 32)];
    }
  }
}

- (void)_handleReply:(id)reply forDownloads:(id)downloads message:(id)message isRetry:(BOOL)retry block:(id)block
{
  replyCopy = reply;
  downloadsCopy = downloads;
  messageCopy = message;
  blockCopy = block;
  if (replyCopy && MEMORY[0x1DA6E0380](replyCopy) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_BOOL(replyCopy, "0"))
    {
      v16 = 0;
      goto LABEL_10;
    }

    int64 = xpc_dictionary_get_int64(replyCopy, "1");
    v16 = SSError(@"SSErrorDomain", int64, 0, 0);
  }

  else
  {
    v16 = SSError(@"SSErrorDomain", 111, 0, 0);
    if (!retry)
    {
      connection = self->_connection;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __69__SSDownloadManager__handleReply_forDownloads_message_isRetry_block___block_invoke;
      v24[3] = &unk_1E84B05F8;
      v24[4] = self;
      v25 = downloadsCopy;
      v26 = messageCopy;
      v27 = blockCopy;
      [(SSXPCConnection *)connection sendMessage:v26 withReply:v24];

      v18 = v25;
LABEL_12:

      goto LABEL_13;
    }
  }

  if (v16)
  {
    [downloadsCopy makeObjectsPerformSelector:sel__becomeManagedOnConnection_ withObject:0];
  }

LABEL_10:
  if (blockCopy)
  {
    v20 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __69__SSDownloadManager__handleReply_forDownloads_message_isRetry_block___block_invoke_2;
    v21[3] = &unk_1E84AC338;
    v23 = blockCopy;
    v16 = v16;
    v22 = v16;
    dispatch_async(v20, v21);

    v18 = v23;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_insertDownloads:(id)downloads before:(id)before after:(id)after completionBlock:(id)block
{
  v55 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  beforeCopy = before;
  afterCopy = after;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v14) && _os_feature_enabled_impl())
  {
    v15 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v53 = 136446210;
      v54 = "[SSDownloadManager _insertDownloads:before:after:completionBlock:]";

      if (!v20)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v15, @"%@", v21, v22, v23, v24, v25, v26, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v27 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v27, "0", 15);
  if (beforeCopy)
  {
    v28 = "1";
    v29 = beforeCopy;
  }

  else
  {
    if (!afterCopy)
    {
      goto LABEL_21;
    }

    v28 = "2";
    v29 = afterCopy;
  }

  xpc_dictionary_set_int64(v27, v28, [v29 persistentIdentifier]);
LABEL_21:
  v43 = beforeCopy;
  v30 = afterCopy;
  v31 = xpc_array_create(0, 0);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = downloadsCopy;
  v33 = [v32 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v49;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v49 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v48 + 1) + 8 * i);
        if (([v37 _isManaged] & 1) == 0)
        {
          copyXPCEncoding = [v37 copyXPCEncoding];
          if (copyXPCEncoding)
          {
            xpc_array_append_value(v31, copyXPCEncoding);
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v34);
  }

  xpc_dictionary_set_value(v27, "3", v31);
  [v32 makeObjectsPerformSelector:sel__becomeManagedOnConnection_ withObject:self->_connection];
  connection = self->_connection;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __67__SSDownloadManager__insertDownloads_before_after_completionBlock___block_invoke;
  v44[3] = &unk_1E84B05F8;
  v44[4] = self;
  v45 = v32;
  v46 = v27;
  v47 = blockCopy;
  v40 = blockCopy;
  v41 = v27;
  v42 = v32;
  [(SSXPCConnection *)connection sendMessage:v41 withReply:v44];
}

- (void)_loadDownloadKindsUsingNetwork
{
  backgroundQueue = self->_backgroundQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSDownloadManager__loadDownloadKindsUsingNetwork__block_invoke;
  block[3] = &unk_1E84AC050;
  block[4] = self;
  dispatch_async(backgroundQueue, block);
}

void __51__SSDownloadManager__loadDownloadKindsUsingNetwork__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyDownloadKindsUsingNetwork];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SSDownloadManager__loadDownloadKindsUsingNetwork__block_invoke_2;
  v6[3] = &unk_1E84AC028;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  dispatch_async(v4, v6);
}

- (void)_moveDownload:(id)download before:(id)before after:(id)after completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  afterCopy = after;
  blockCopy = block;
  downloadCopy = download;
  if (SSIsInternalBuild(downloadCopy, v14) && _os_feature_enabled_impl())
  {
    v15 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 2;
    }

    if (v19)
    {
      v31 = 136446210;
      v32 = "[SSDownloadManager _moveDownload:before:after:completionBlock:]";

      if (!v20)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog(v15, @"%@", v21, v22, v23, v24, v25, v26, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v27 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v27, "0", 16);
  persistentIdentifier = [downloadCopy persistentIdentifier];

  xpc_dictionary_set_int64(v27, "1", persistentIdentifier);
  if (beforeCopy)
  {
    v29 = "2";
    v30 = beforeCopy;
LABEL_20:
    xpc_dictionary_set_int64(v27, v29, [v30 persistentIdentifier]);
    goto LABEL_21;
  }

  if (afterCopy)
  {
    v29 = "3";
    v30 = afterCopy;
    goto LABEL_20;
  }

LABEL_21:
  [(SSDownloadManager *)self _sendMessage:v27 withCompletionBlock:blockCopy];
}

- (void)_pauseDownloads:(id)downloads forced:(BOOL)forced completionBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  downloadsCopy = downloads;
  blockCopy = block;
  if (SSIsInternalBuild(blockCopy, v10) && _os_feature_enabled_impl())
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v35 = 136446210;
      v36 = "[SSDownloadManager _pauseDownloads:forced:completionBlock:]";

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v23 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v23, "0", 17);
  xpc_dictionary_set_BOOL(v23, "2", forced);
  v24 = xpc_array_create(0, 0);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = downloadsCopy;
  v26 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        xpc_array_set_int64(v24, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v30 + 1) + 8 * i) persistentIdentifier]);
      }

      v27 = [v25 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }

  xpc_dictionary_set_value(v23, "1", v24);
  [(SSDownloadManager *)self _sendMessage:v23 withCompletionBlock:blockCopy];
}

- (void)_reloadIsUsingNetworkWithDownloadKinds:(id)kinds
{
  options = self->_options;
  kindsCopy = kinds;
  downloadKinds = [(SSDownloadManagerOptions *)options downloadKinds];
  v7 = [kindsCopy firstObjectCommonWithArray:downloadKinds];

  v8 = v7 != 0;
  if (self->_isUsingNetwork != v8)
  {
    self->_isUsingNetwork = v8;

    [(SSDownloadManager *)self _sendMessageToObservers:sel_downloadManagerNetworkUsageDidChange_];
  }
}

- (void)_sendDownloadsChanged:(id)changed
{
  v38 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (self->_observers)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    selfCopy = self;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        v10 = 0;
        do
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * v10);
          if (changedCopy && (v12 = objc_opt_respondsToSelector(), v13 = v25, (v12 & 1) != 0) || (v14 = objc_opt_respondsToSelector(), v13 = v5, (v14 & 1) != 0) || (v15 = objc_opt_respondsToSelector(), v13 = v24, (v15 & 1) != 0))
          {
            [v13 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v8);
    }

    if ([v24 count])
    {
      allObjects = [changedCopy allObjects];
      v17 = selfCopy;
      if (!allObjects)
      {
        allObjects = [(SSDownloadManager *)selfCopy _copyDownloads];
      }
    }

    else
    {
      allObjects = 0;
      v17 = selfCopy;
    }

    observerQueue = v17->_observerQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSDownloadManager__sendDownloadsChanged___block_invoke;
    block[3] = &unk_1E84B06C0;
    v27 = v25;
    v28 = v17;
    v29 = changedCopy;
    v30 = v5;
    v31 = v24;
    v32 = allObjects;
    v19 = allObjects;
    v20 = v24;
    v21 = v5;
    v22 = v25;
    dispatch_async(observerQueue, block);
  }
}

void __43__SSDownloadManager__sendDownloadsChanged___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v25 + 1) + 8 * v6++) downloadManager:*(a1 + 40) downloadsDidChange:*(a1 + 48)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v4);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = *(a1 + 56);
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v21 + 1) + 8 * v11++) downloadManagerDownloadsDidChange:*(a1 + 40)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(a1 + 64);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16++) downloadManager:*(a1 + 40) downloadStatesDidChange:{*(a1 + 72), v17}];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)_sendMessage:(id)message withCompletionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__SSDownloadManager__sendMessage_withCompletionBlock___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __54__SSDownloadManager__sendMessage_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_4:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    goto LABEL_5;
  }

  if (!xpc_dictionary_get_BOOL(v4, "0"))
  {
    v5 = 100;
    goto LABEL_4;
  }

  v6 = 0;
LABEL_5:
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__SSDownloadManager__sendMessage_withCompletionBlock___block_invoke_2;
    v9[3] = &unk_1E84AC338;
    v11 = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }
}

- (void)_sendMessageToObservers:(SEL)observers
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_observers)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 addObject:*(*(&v16 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      observerQueue = self->_observerQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__SSDownloadManager__sendMessageToObservers___block_invoke;
      block[3] = &unk_1E84AD6E0;
      selfCopy = self;
      observersCopy = observers;
      v13 = v5;
      dispatch_async(observerQueue, block);
    }
  }
}

void __45__SSDownloadManager__sendMessageToObservers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 performSelector:*(a1 + 48) withObject:{*(a1 + 40), v8}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end