@interface CPLDaemonLibraryManager
- (CPLDaemonLibraryManager)initWithConnection:(id)connection name:(id)name allowedProcol:(id)procol isManagement:(BOOL)management;
- (CPLDaemonLibraryManagerDelegate)delegate;
- (NSString)description;
- (NSString)status;
- (void)_dropAllOtherLibraryManagersAndCallBlock:(id)block;
- (void)_dropManagerWithCompletionBlock:(id)block;
- (void)_dropWithCompletionBlock:(id)block;
- (void)_killWithCompletionBlock:(id)block;
- (void)_storeUploadTransferTask:(id)task;
- (void)_storeVoucher:(id)voucher forTaskWithIdentifier:(id)identifier;
- (void)_whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:(id)identifier callBlock:(id)block;
- (void)_withVoucherForTaskWithIdentifier:(id)identifier do:(id)do;
- (void)acceptSharedScope:(id)scope completionHandler:(id)handler;
- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)acknowledgeChangedStatuses:(id)statuses;
- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler;
- (void)addInfoToLog:(id)log;
- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist;
- (void)attachComputeStates:(id)states completionHandler:(id)handler;
- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier reply:(id)reply;
- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d reply:(id)reply;
- (void)beginPullSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)beginPushSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)cancelSyncTaskWithIdentifier:(id)identifier;
- (void)cancelTaskWithIdentifier:(id)identifier;
- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler;
- (void)checkResourcesAreSafeToPrune:(id)prune checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- (void)closeLibraryWithCompletionHandler:(id)handler;
- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler;
- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)compactFileCacheWithCompletionHandler:(id)handler;
- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply;
- (void)createScope:(id)scope completionHandler:(id)handler;
- (void)deactivateLibraryWithCompletionHandler:(id)handler;
- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)deleteResources:(id)resources checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler;
- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler;
- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler;
- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler;
- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler;
- (void)finalizeSessionWithCompletionHandler:(id)handler;
- (void)forceBackupWithCompletionHandler:(id)handler;
- (void)forceSyncForScopeIdentifiers:(id)identifiers reply:(id)reply;
- (void)getChangeBatchWithCompletionHandler:(id)handler;
- (void)getChangedStatusesWithCompletionHandler:(id)handler;
- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler;
- (void)getListOfComponentsWithCompletionHandler:(id)handler;
- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler;
- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getStatusArrayForComponents:(id)components completionHandler:(id)handler;
- (void)getStatusForComponents:(id)components completionHandler:(id)handler;
- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler;
- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler;
- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler;
- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)libraryManager:(id)manager backgroundDownloadDidFailForResource:(id)resource;
- (void)libraryManager:(id)manager backgroundDownloadDidFinishForResource:(id)resource;
- (void)libraryManager:(id)manager didFinishForceSyncTask:(id)task withErrors:(id)errors;
- (void)libraryManager:(id)manager downloadDidFinishForResourceTransferTask:(id)task finalResource:(id)resource withError:(id)error;
- (void)libraryManager:(id)manager downloadDidProgress:(float)progress forResourceTransferTask:(id)task;
- (void)libraryManager:(id)manager downloadDidStartForResourceTransferTask:(id)task;
- (void)libraryManager:(id)manager inMemoryDownloadDidFinishForResourceTransferTask:(id)task data:(id)data withError:(id)error;
- (void)libraryManager:(id)manager provideLocalResource:(id)resource recordClass:(Class)class completionHandler:(id)handler;
- (void)libraryManager:(id)manager providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler;
- (void)libraryManager:(id)manager pushAllChangesWithCompletionHandler:(id)handler;
- (void)libraryManager:(id)manager uploadDidFinishForResourceTransferTask:(id)task withError:(id)error;
- (void)libraryManager:(id)manager uploadDidProgress:(float)progress forResourceTransferTask:(id)task;
- (void)libraryManager:(id)manager uploadDidStartForResourceTransferTask:(id)task;
- (void)libraryManagerDidStartSynchronization:(id)synchronization;
- (void)libraryManagerHasChangesToPull:(id)pull;
- (void)libraryManagerHasStatusChanges:(id)changes;
- (void)libraryManagerStatusDidChange:(id)change;
- (void)openLibraryWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options completionHandler:(id)handler;
- (void)processSessionContext:(id)context;
- (void)provideCloudResource:(id)resource completionHandler:(id)handler;
- (void)provideRecordWithCloudScopeIdentifier:(id)identifier completionHandler:(id)handler;
- (void)provideScopeChangeForScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler;
- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler;
- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)reportMiscInformation:(id)information;
- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value;
- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler;
- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler;
- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler;
- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)manager;
- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler;
- (void)testKey:(id)key value:(id)value completionHandler:(id)handler;
- (void)updateShareForScope:(id)scope completionHandler:(id)handler;
@end

@implementation CPLDaemonLibraryManager

- (CPLDaemonLibraryManager)initWithConnection:(id)connection name:(id)name allowedProcol:(id)procol isManagement:(BOOL)management
{
  connectionCopy = connection;
  nameCopy = name;
  procolCopy = procol;
  v44.receiver = self;
  v44.super_class = CPLDaemonLibraryManager;
  v14 = [(CPLDaemonLibraryManager *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_connection, connection);
    v15->_processIdentifier = [connectionCopy processIdentifier];
    v15->_isManagement = management;
    if ([nameCopy hasPrefix:@"com.apple."])
    {
      v16 = [nameCopy substringFromIndex:10];

      nameCopy = v16;
    }

    v17 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    downloadTasksPerIdentifier = v15->_downloadTasksPerIdentifier;
    v15->_downloadTasksPerIdentifier = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    uploadTasksPerIdentifier = v15->_uploadTasksPerIdentifier;
    v15->_uploadTasksPerIdentifier = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    forceSyncTasksPerIdentifier = v15->_forceSyncTasksPerIdentifier;
    v15->_forceSyncTasksPerIdentifier = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    vouchersPerTaskIdentifier = v15->_vouchersPerTaskIdentifier;
    v15->_vouchersPerTaskIdentifier = v25;

    v27 = CPLCopyDefaultSerialQueueAttributes();
    _queue = [connectionCopy _queue];
    v29 = dispatch_queue_create_with_target_V2("com.apple.cloudphotod.daemon.librarymanager", v27, _queue);
    queue = v15->_queue;
    v15->_queue = v29;

    objc_storeStrong(&v15->_allowedProtocol, procol);
    v31 = NSStringFromProtocol(v15->_allowedProtocol);
    protocolDescription = v15->_protocolDescription;
    v15->_protocolDescription = v31;

    if ([(NSString *)v15->_protocolDescription hasPrefix:@"CPLDaemon"])
    {
      v33 = [(NSString *)v15->_protocolDescription substringFromIndex:9];
      v34 = v15->_protocolDescription;
      v15->_protocolDescription = v33;
    }

    if ([(NSString *)v15->_protocolDescription hasSuffix:@"Protocol"])
    {
      v35 = [(NSString *)v15->_protocolDescription substringToIndex:[(NSString *)v15->_protocolDescription length]- 8];
      v36 = v15->_protocolDescription;
      v15->_protocolDescription = v35;
    }

    v15->_isLibraryManager = v15->_allowedProtocol == &OBJC_PROTOCOL___CPLDaemonLibraryManagerProtocol;
    v37 = +[CPLProxyLibraryManager daemonProtocolInterface];
    [connectionCopy setExportedInterface:v37];
    [connectionCopy setExportedObject:v15];
    v38 = +[CPLProxyLibraryManager clientProtocolInterface];
    [connectionCopy setRemoteObjectInterface:v38];
    [connectionCopy _setQueue:v15->_queue];
    [connectionCopy setDelegate:v15];
    objc_initWeak(&location, connectionCopy);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001A440;
    v40[3] = &unk_100272CC0;
    objc_copyWeak(&v42, &location);
    v41 = v15;
    [connectionCopy setInvalidationHandler:v40];
    [connectionCopy resume];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v15;
}

- (NSString)status
{
  engineWrapper = self->_engineWrapper;
  v4 = [NSString alloc];
  v5 = v4;
  name = self->_name;
  processIdentifier = self->_processIdentifier;
  if (engineWrapper)
  {
    libraryIdentifier = [(CPLEngineWrapper *)self->_engineWrapper libraryIdentifier];
    v9 = [v5 initWithFormat:@"%@ - pid: %d - proxy: %p - attached to %@", name, processIdentifier, self, libraryIdentifier];
  }

  else
  {
    v9 = [v4 initWithFormat:@"%@ - pid: %d - proxy: %p - waiting for client to open a library manager", name, self->_processIdentifier, self];
  }

  return v9;
}

- (NSString)description
{
  engineWrapper = self->_engineWrapper;
  v4 = [NSString alloc];
  v5 = v4;
  name = self->_name;
  processIdentifier = self->_processIdentifier;
  protocolDescription = self->_protocolDescription;
  if (self->_killed)
  {
    v9 = " (killed)";
  }

  else
  {
    v9 = "";
  }

  if (engineWrapper)
  {
    libraryIdentifier = [(CPLEngineWrapper *)self->_engineWrapper libraryIdentifier];
    v11 = [v5 initWithFormat:@"<%@ (%d) %@ %p%s for %@>", name, processIdentifier, protocolDescription, self, v9, libraryIdentifier];
  }

  else
  {
    v11 = [v4 initWithFormat:@"<%@ (%d) %@ %p%s waiting for open>", name, processIdentifier, protocolDescription, self, v9];
  }

  return v11;
}

- (void)_dropManagerWithCompletionBlock:(id)block
{
  blockCopy = block;
  manager = self->_manager;
  if (manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_10001A484(manager);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_manager;
        *buf = 138412546;
        selfCopy3 = v7;
        v23 = 2112;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closing %@ for %@", buf, 0x16u);
      }

      manager = self->_manager;
    }

    currentSession = [(CPLLibraryManager *)manager currentSession];
    if (currentSession)
    {
      sub_10018DED4(self, currentSession);
    }

    removeAllObjects = [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10001A484(removeAllObjects);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(NSMutableDictionary *)self->_downloadTasksPerIdentifier count];
        *buf = 138412546;
        selfCopy3 = self;
        v23 = 2048;
        selfCopy = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%@ cancelling %lu tasks", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_downloadTasksPerIdentifier enumerateKeysAndObjectsUsingBlock:&stru_100272D00];
    removeAllObjects2 = [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeAllObjects];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_10001A484(removeAllObjects2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier count];
        *buf = 138412546;
        selfCopy3 = self;
        v23 = 2048;
        selfCopy = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ cancelling %lu sync tasks", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier enumerateKeysAndObjectsUsingBlock:&stru_100272D40];
    [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier removeAllObjects];
    [(NSMutableDictionary *)self->_uploadTasksPerIdentifier removeAllObjects];
    v15 = self->_manager;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001A96C;
    v18[3] = &unk_1002724D0;
    v19 = v15;
    v20 = blockCopy;
    v16 = v15;
    [(CPLLibraryManager *)v16 closeWithCompletionHandler:v18];
    self->_killed = 1;
    v17 = self->_manager;
    self->_manager = 0;
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_killWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AACC;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = blockCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002874;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = blockCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_dropWithCompletionBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018B380;
  v10[3] = &unk_1002723C8;
  v10[4] = self;
  v11 = blockCopy;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002874;
  block[3] = &unk_100271E98;
  v13 = v6;
  v7 = queue;
  v8 = blockCopy;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

- (void)_whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:(id)identifier callBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained daemonLibraryManagerOtherLibraryManager:self withLibraryIdentifier:identifierCopy];

  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = self;
        v17 = 2112;
        v18 = v9;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ is connecting to engine while %@ is already connected. Will drop %@", buf, 0x20u);
      }
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001AFF4;
    v12[3] = &unk_100271DE0;
    v12[4] = self;
    v13 = identifierCopy;
    v14 = blockCopy;
    [v9 _killWithCompletionBlock:v12];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_dropAllOtherLibraryManagersAndCallBlock:(id)block
{
  blockCopy = block;
  v5 = dispatch_group_create();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  engineWrapper = [(CPLDaemonLibraryManager *)self engineWrapper];
  libraryIdentifier = [engineWrapper libraryIdentifier];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001B280;
  v14[3] = &unk_100272DA8;
  v14[4] = self;
  v15 = v5;
  v9 = v5;
  [WeakRetained enumerateDaemonLibraryManagersWithLibraryIdentifier:libraryIdentifier block:v14];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B344;
  block[3] = &unk_100271E98;
  v13 = blockCopy;
  v11 = blockCopy;
  dispatch_group_notify(v9, queue, block);
}

- (void)openLibraryWithClientLibraryBaseURL:(id)l cloudLibraryStateStorageURL:(id)rL cloudLibraryResourceStorageURL:(id)uRL libraryIdentifier:(id)identifier mainScopeIdentifier:(id)scopeIdentifier options:(unint64_t)options completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  identifierCopy = identifier;
  scopeIdentifierCopy = scopeIdentifier;
  handlerCopy = handler;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001B4F8;
  v30[3] = &unk_100272DF8;
  v30[4] = self;
  v31 = lCopy;
  v32 = rLCopy;
  v33 = uRLCopy;
  v22 = identifierCopy;
  v34 = v22;
  v35 = scopeIdentifierCopy;
  optionsCopy = options;
  v38 = a2;
  v36 = handlerCopy;
  v23 = handlerCopy;
  v24 = scopeIdentifierCopy;
  v25 = uRLCopy;
  v26 = rLCopy;
  v27 = lCopy;
  v28 = objc_retainBlock(v30);
  v29 = v28;
  if (self->_isLibraryManager)
  {
    [(CPLDaemonLibraryManager *)self _whenThereIsNoOtherLibraryManagersOpenedWithLibraryIdentifier:v22 callBlock:v28];
  }

  else
  {
    (v28[2])(v28);
  }
}

- (void)closeLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Closing library manager for %@", buf, 0xCu);
      }
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001BF40;
    v9[3] = &unk_100271E98;
    v10 = v5;
    [(CPLDaemonLibraryManager *)self _dropManagerWithCompletionBlock:v9];
    v7 = v10;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ tried to close a manager that is not present", buf, 0xCu);
      }
    }

    v7 = +[CPLErrors unknownError];
    (v5)[2](v5, v7);
  }
}

- (void)deactivateLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10001A484(_CPLSilentLogging);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        libraryIdentifier = [(CPLLibraryManager *)self->_manager libraryIdentifier];
        *buf = 138543362;
        v10 = libraryIdentifier;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DEACTIVATING LIBRARY %{public}@", buf, 0xCu);
      }
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001C0AC;
    v7[3] = &unk_1002723C8;
    v7[4] = self;
    v8 = handlerCopy;
    [(CPLDaemonLibraryManager *)self _dropAllOtherLibraryManagersAndCallBlock:v7];
  }

  else
  {
    sub_10018E3A4(_CPLSilentLogging, self);
  }
}

- (void)activateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    mainScopeIdentifier = [(CPLLibraryManager *)manager mainScopeIdentifier];
    v10 = [identifierCopy isEqualToString:mainScopeIdentifier];

    v11 = self->_manager;
    if (v10)
    {
      [(CPLLibraryManager *)v11 enableMainScopeWithCompletionHandler:handlerCopy];
    }

    else
    {
      [(CPLLibraryManager *)v11 activateScopeWithIdentifier:identifierCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    sub_10018E478(self);
  }
}

- (void)deactivateScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    mainScopeIdentifier = [(CPLLibraryManager *)manager mainScopeIdentifier];
    v10 = [identifierCopy isEqualToString:mainScopeIdentifier];

    v11 = self->_manager;
    if (v10)
    {
      [(CPLLibraryManager *)v11 disableMainScopeWithCompletionHandler:handlerCopy];
    }

    else
    {
      [(CPLLibraryManager *)v11 deactivateScopeWithIdentifier:identifierCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    sub_10018E478(self);
  }
}

- (void)boostPriorityForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager boostPriorityForScopeWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018E544(self);
  }
}

- (void)beginDownloadForResource:(id)resource clientBundleID:(id)d options:(id)options proposedTaskIdentifier:(id)identifier reply:(id)reply
{
  resourceCopy = resource;
  dCopy = d;
  optionsCopy = options;
  identifierCopy = identifier;
  replyCopy = reply;
  if (self->_manager)
  {
    v17 = voucher_copy();
    v18 = v17;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10001A484(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412802;
        v30 = manager;
        v31 = 2112;
        v32 = resourceCopy;
        v33 = 2112;
        v34 = optionsCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to download %@(%@)", buf, 0x20u);
      }
    }

    v21 = self->_manager;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001C660;
    v23[3] = &unk_100272E48;
    v24 = resourceCopy;
    v25 = optionsCopy;
    selfCopy = self;
    v27 = v18;
    v28 = replyCopy;
    v22 = v18;
    [(CPLLibraryManager *)v21 beginDownloadForResource:v24 clientBundleID:dCopy options:v25 proposedTaskIdentifier:identifierCopy completionHandler:v23];
  }

  else
  {
    sub_10018E620(self);
  }
}

- (void)processSessionContext:(id)context
{
  manager = self->_manager;
  contextCopy = context;
  -[CPLLibraryManager setEstimatedInitialSizeForLocalLibrary:](manager, "setEstimatedInitialSizeForLocalLibrary:", [contextCopy estimatedInitialSizeForLocalLibrary]);
  v6 = self->_manager;
  estimatedInitialAssetCountForLocalLibrary = [contextCopy estimatedInitialAssetCountForLocalLibrary];

  [(CPLLibraryManager *)v6 setEstimatedInitialAssetCountForLocalLibrary:estimatedInitialAssetCountForLocalLibrary];
}

- (void)beginPushSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412290;
        selfCopy = manager;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Beginning push session with %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained startSyncTaskForDaemonLibraryManager:self];

    [(CPLDaemonLibraryManager *)self processSessionContext:contextCopy];
    resetTracker = [contextCopy resetTracker];
    v16 = +[CPLResetTracker currentTracker];
    earliestReasonDate = [resetTracker earliestReasonDate];
    earliestReasonDate2 = [v16 earliestReasonDate];
    v19 = [earliestReasonDate compare:earliestReasonDate2];

    if (v19 == -1)
    {
      v20 = resetTracker;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20;
    v22 = self->_manager;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001CAB0;
    v25[3] = &unk_100272E70;
    v26 = v16;
    v27 = v11;
    v23 = v16;
    [(CPLLibraryManager *)v22 beginPushChangeSessionWithKnownLibraryVersion:versionCopy resetTracker:v21 completionHandler:v25];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v24 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@ tried to begin a push session for a manager that is not present", buf, 0xCu);
      }
    }

    resetTracker = +[CPLErrors unknownError];
    (v11)[2](v11, resetTracker);
  }
}

- (void)beginPullSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (self->_manager)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412290;
        selfCopy = manager;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Beginning pull session with %@", buf, 0xCu);
      }
    }

    [(CPLDaemonLibraryManager *)self processSessionContext:contextCopy];
    resetTracker = [contextCopy resetTracker];
    v15 = +[CPLResetTracker currentTracker];
    earliestReasonDate = [resetTracker earliestReasonDate];
    earliestReasonDate2 = [v15 earliestReasonDate];
    v18 = [earliestReasonDate compare:earliestReasonDate2];

    if (v18 == -1)
    {
      v19 = resetTracker;
    }

    else
    {
      v19 = v15;
    }

    v20 = v19;
    v21 = self->_manager;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001CDAC;
    v24[3] = &unk_100272E98;
    v25 = v15;
    v26 = v11;
    v22 = v15;
    [(CPLLibraryManager *)v21 beginPullChangeSessionWithKnownLibraryVersion:versionCopy resetTracker:v20 completionHandler:v24];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ tried to begin a pull session for a manager that is not present", buf, 0xCu);
      }
    }

    resetTracker = +[CPLErrors unknownError];
    (v11)[2](v11, resetTracker);
  }
}

- (void)finalizeSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    currentSession = [(CPLLibraryManager *)manager currentSession];
    v7 = currentSession;
    if (currentSession)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_10001A484(currentSession);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Finalizing %@", buf, 0xCu);
        }
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001D010;
      v12[3] = &unk_100272EC0;
      v13 = handlerCopy;
      [v7 finalizeWithCompletionHandler:v12];
      v9 = v13;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_10001A484(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v15 = 2112;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ tried to finalize a session for %@ but there is no current session", buf, 0x16u);
        }
      }

      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(handlerCopy + 2))(handlerCopy, v9);
    }
  }

  else
  {
    sub_10018EA3C();
    v7 = *buf;
  }
}

- (void)getChangeBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    isKindOfClass = [(CPLLibraryManager *)manager currentSession];
    v7 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v8 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Getting changes from %@", buf, 0xCu);
        }
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10001D284;
      v12[3] = &unk_100272EE8;
      v13 = handlerCopy;
      [v7 getChangeBatchWithCompletionHandler:v12];
      v9 = v13;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v15 = 2112;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ tried to get changes for %@ but there is no current pull session", buf, 0x16u);
        }
      }

      v9 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(handlerCopy + 2))(handlerCopy, v9, 0);
    }
  }

  else
  {
    sub_10018EC14();
    v7 = *buf;
  }
}

- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  batchCopy = batch;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    isKindOfClass = [(CPLLibraryManager *)manager currentSession];
    v10 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          v18 = 2112;
          v19 = batchCopy;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Acknowledging batch from %@: %@", buf, 0x16u);
        }
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001D6B8;
      v15[3] = &unk_100272F10;
      v16 = handlerCopy;
      [v10 acknowledgeChangeBatch:batchCopy withCompletionHandler:v15];
      v12 = v16;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v18 = 2112;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ tried to acknowledge a batch for %@ but there is no current pull session", buf, 0x16u);
        }
      }

      v12 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(handlerCopy + 2))(handlerCopy, v12, 0);
    }
  }

  else
  {
    sub_10018EE34();
    v10 = *buf;
  }
}

- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  batchCopy = batch;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    isKindOfClass = [(CPLLibraryManager *)manager currentSession];
    v10 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          v18 = 2112;
          v19 = batchCopy;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Committing batch to %@: %@", buf, 0x16u);
        }
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10001D978;
      v15[3] = &unk_100272F38;
      v16 = handlerCopy;
      [v10 commitChangeBatch:batchCopy withUnderlyingCompletionHandler:v15];
      v12 = v16;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_10001A484(isKindOfClass);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = self->_manager;
          *buf = 138412546;
          *&buf[4] = self;
          v18 = 2112;
          v19 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ tried to commit a batch for %@ but there is no current push session", buf, 0x16u);
        }
      }

      v12 = [CPLErrors incorrectMachineStateErrorWithReason:@"No session opened"];
      (*(handlerCopy + 2))(handlerCopy, v12, 0, 0, 0);
    }
  }

  else
  {
    sub_10018F04C();
    v10 = *buf;
  }
}

- (void)deleteResources:(id)resources checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  necessaryCopy = necessary;
  resourcesCopy = resources;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager deleteResources:resourcesCopy checkServerIfNecessary:necessaryCopy completionHandler:handlerCopy];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ tried to delete resources for a manager that is not present", buf, 0xCu);
      }
    }

    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(resourcesCopy, "count")}];
    v13 = +[CPLErrors unknownError];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = resourcesCopy;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v12 setObject:v13 forKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, v12);
  }
}

- (void)checkResourcesAreSafeToPrune:(id)prune checkServerIfNecessary:(BOOL)necessary completionHandler:(id)handler
{
  necessaryCopy = necessary;
  pruneCopy = prune;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager checkResourcesAreSafeToPrune:pruneCopy checkServerIfNecessary:necessaryCopy completionHandler:handlerCopy];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10001A484(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ tried to check purgeable resources for a manager that is not present", buf, 0xCu);
      }
    }

    v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(pruneCopy, "count")}];
    v13 = +[CPLErrors unknownError];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = pruneCopy;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v12 setObject:v13 forKeyedSubscript:{*(*(&v19 + 1) + 8 * i), v19}];
        }

        v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct, v12);
  }
}

- (void)getResourcesForItemWithScopedIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getResourcesForItemWithScopedIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F124(self);
  }
}

- (void)compactFileCacheWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager compactFileCacheWithCompletionHandler:handlerCopy];
  }

  else
  {
    sub_10018F1F4(self);
  }
}

- (void)checkHasBackgroundDownloadOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001E15C;
    v11[3] = &unk_100272F60;
    v12 = handlerCopy;
    [(CPLLibraryManager *)manager checkHasBackgroundDownloadOperationsWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)getStatusForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForRecordsWithScopedIdentifiers:identifiersCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getChangedStatusesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getChangedStatusesWithCompletionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getScopeStatusCountsForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getScopeStatusCountsForScopeWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)testKey:(id)key value:(id)value completionHandler:(id)handler
{
  keyCopy = key;
  valueCopy = value;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager testKey:keyCopy value:valueCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getTargetsForRecordsWithScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getTargetsForRecordsWithScopedIdentifiers:identifiersCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)resetCacheWithOption:(unint64_t)option reason:(id)reason completionHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager resetCacheWithOption:option reason:reasonCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F39C();
  }
}

- (void)getListOfComponentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getListOfComponentsWithCompletionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getStatusForComponents:(id)components completionHandler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForComponents:componentsCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getStatusArrayForComponents:(id)components completionHandler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusArrayForComponents:componentsCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getStatusesForScopesWithIdentifiers:(id)identifiers includeStorages:(BOOL)storages completionHandler:(id)handler
{
  storagesCopy = storages;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusesForScopesWithIdentifiers:identifiersCopy includeStorages:storagesCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getCloudCacheRecordsWithLocalScopedIdentifiers:(id)identifiers desiredProperties:(id)properties completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  propertiesCopy = properties;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getCloudCacheRecordsWithLocalScopedIdentifiers:identifiersCopy desiredProperties:propertiesCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)cloudCacheGetDescriptionForRecordWithScopedIdentifier:(id)identifier related:(BOOL)related completionHandler:(id)handler
{
  relatedCopy = related;
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager cloudCacheGetDescriptionForRecordWithScopedIdentifier:identifierCopy related:relatedCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F47C();
  }
}

- (void)forceBackupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E7E8;
    v8[3] = &unk_100272EC0;
    v9 = handlerCopy;
    [(CPLLibraryManager *)manager forceBackupWithCompletionHandler:v8];
    v7 = v9;
  }

  else
  {
    sub_10018F564();
    v7 = v10;
  }
}

- (void)requestClientToPushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001E904;
    v8[3] = &unk_100272EC0;
    v9 = handlerCopy;
    [(CPLLibraryManager *)manager requestClientToPushAllChangesWithCompletionHandler:v8];
    v7 = v9;
  }

  else
  {
    sub_10018F630();
    v7 = v10;
  }
}

- (void)requestClientToPullAllChangesInScopeIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001EA34;
    v11[3] = &unk_100272EC0;
    v12 = handlerCopy;
    [(CPLLibraryManager *)manager requestClientToPullAllChangesInScopeIdentifiers:identifiersCopy completionHandler:v11];
    v10 = v12;
  }

  else
  {
    sub_10018F6FC();
    v10 = v13;
  }
}

- (void)provideScopeChangeForScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideScopeChangeForScopeWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)provideRecordWithCloudScopeIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideRecordWithCloudScopeIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)provideCloudResource:(id)resource completionHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager provideCloudResource:resourceCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F7C8();
  }
}

- (void)addDropDerivativesRecipe:(id)recipe writeToUserDefaults:(BOOL)defaults withCompletionHandler:(id)handler
{
  defaultsCopy = defaults;
  recipeCopy = recipe;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager addDropDerivativesRecipe:recipeCopy writeToUserDefaults:defaultsCopy withCompletionHandler:handlerCopy];
  }

  else
  {
    sub_10018F894();
  }
}

- (void)attachComputeStates:(id)states completionHandler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager attachComputeStates:statesCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F894();
  }
}

- (void)fetchComputeStatesForRecordsWithScopedIdentifiers:(id)identifiers validator:(id)validator shouldDecrypt:(BOOL)decrypt onDemand:(BOOL)demand completionHandler:(id)handler
{
  demandCopy = demand;
  decryptCopy = decrypt;
  identifiersCopy = identifiers;
  validatorCopy = validator;
  handlerCopy = handler;
  v16 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10001EEB8;
    v21[3] = &unk_100272F88;
    v22 = handlerCopy;
    [(CPLLibraryManager *)manager fetchComputeStatesForRecordsWithScopedIdentifiers:identifiersCopy validator:validatorCopy shouldDecrypt:decryptCopy onDemand:demandCopy completionHandler:v21];
    v18 = v22;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ called for '%@' but manager is not present", buf, 0x16u);
      }
    }

    v18 = +[CPLErrors unknownError];
    (v16)[2](v16, 0, v18);
  }
}

- (void)getStreamingURLForResource:(id)resource intent:(unint64_t)intent hints:(id)hints timeRange:(id *)range clientBundleID:(id)d completionHandler:(id)handler
{
  resourceCopy = resource;
  hintsCopy = hints;
  dCopy = d;
  handlerCopy = handler;
  v19 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10001F138;
    v25[3] = &unk_100272FB0;
    v26 = handlerCopy;
    v21 = *&range->var0.var3;
    *buf = *&range->var0.var0;
    *&buf[16] = v21;
    v28 = *&range->var1.var1;
    [(CPLLibraryManager *)manager getStreamingURLOrMediaMakerDataForResource:resourceCopy intent:intent hints:hintsCopy timeRange:buf clientBundleID:dCopy completionHandler:v25];
    v22 = v26;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v22 = +[CPLErrors unknownError];
    (v19)[2](v19, 0, 0, 0, 0, v22);
  }
}

- (void)rampingRequestForResourceType:(unint64_t)type numRequested:(unint64_t)requested completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001F398;
    v15[3] = &unk_100272FD8;
    v16 = handlerCopy;
    [(CPLLibraryManager *)manager rampingRequestForResourceType:type numRequested:requested completionHandler:v15];
    v12 = v16;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v12 = +[CPLErrors unknownError];
    (v10)[2](v10, 0, 0, v12);
  }
}

- (void)beginInMemoryDownloadOfResource:(id)resource clientBundleID:(id)d reply:(id)reply
{
  resourceCopy = resource;
  dCopy = d;
  replyCopy = reply;
  if (self->_manager)
  {
    v11 = voucher_copy();
    v12 = v11;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_10001A484(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        *buf = 138412546;
        v23 = manager;
        v24 = 2112;
        v25 = resourceCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to download %@ in-memory", buf, 0x16u);
      }
    }

    v15 = self->_manager;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10001F5D0;
    v17[3] = &unk_100273000;
    v18 = resourceCopy;
    selfCopy = self;
    v20 = v12;
    v21 = replyCopy;
    v16 = v12;
    [(CPLLibraryManager *)v15 beginInMemoryDownloadOfResource:v18 clientBundleID:dCopy completionHandler:v17];
  }

  else
  {
    sub_10018F95C(self);
  }
}

- (void)resolveLocalScopedIdentifiersForCloudScopedIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager resolveLocalScopedIdentifiersForCloudScopedIdentifiers:identifiersCopy completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)getMappedScopedIdentifiersForScopedIdentifiers:(id)identifiers inAreLocalIdentifiers:(BOOL)localIdentifiers completionHandler:(id)handler
{
  localIdentifiersCopy = localIdentifiers;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    if (localIdentifiersCopy)
    {
      [(CPLLibraryManager *)manager getCloudScopedIdentifiersForLocalScopedIdentifiers:identifiersCopy completionHandler:handlerCopy];
    }

    else
    {
      [(CPLLibraryManager *)manager getLocalScopedIdentifiersForCloudScopedIdentifiers:identifiersCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)createScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001F99C;
    v14[3] = &unk_100273028;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager createScope:scopeCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)updateShareForScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FBB8;
    v14[3] = &unk_100273028;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager updateShareForScope:scopeCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)deleteScopeWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler
{
  forcedCopy = forced;
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001FDD8;
    v16[3] = &unk_100272EC0;
    v17 = handlerCopy;
    [(CPLLibraryManager *)manager deleteScopeWithIdentifier:identifierCopy forced:forcedCopy completionHandler:v16];
    v13 = v17;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v20 = 2112;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v13 = +[CPLErrors unknownError];
    (v11)[2](v11, v13);
  }
}

- (void)refreshScopeWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001FFD8;
    v14[3] = &unk_100273028;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager refreshScopeWithIdentifier:identifierCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)fetchSharedScopeFromShareURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000201F4;
    v14[3] = &unk_100273028;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager fetchSharedScopeFromShareURL:lCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)acceptSharedScope:(id)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002040C;
    v14[3] = &unk_100272EC0;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager acceptSharedScope:scopeCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, v11);
  }
}

- (void)fetchExistingSharedLibraryScopeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000205F0;
    v11[3] = &unk_100273028;
    v12 = handlerCopy;
    [(CPLLibraryManager *)manager fetchExistingSharedLibraryScopeWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)startExitFromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v13 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100020824;
    v18[3] = &unk_100273050;
    v19 = handlerCopy;
    [(CPLLibraryManager *)manager startExitFromSharedScopeWithIdentifier:identifierCopy retentionPolicy:policy exitSource:source completionHandler:v18];
    v15 = v19;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v15 = +[CPLErrors unknownError];
    (v13)[2](v13, 0, v15);
  }
}

- (void)removeParticipants:(id)participants fromSharedScopeWithIdentifier:(id)identifier retentionPolicy:(int64_t)policy exitSource:(int64_t)source completionHandler:(id)handler
{
  participantsCopy = participants;
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100020A6C;
    v21[3] = &unk_100273050;
    v22 = handlerCopy;
    [(CPLLibraryManager *)manager removeParticipants:participantsCopy fromSharedScopeWithIdentifier:identifierCopy retentionPolicy:policy exitSource:source completionHandler:v21];
    v18 = v22;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v25 = 2112;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v18 = +[CPLErrors unknownError];
    (v16)[2](v16, 0, v18);
  }
}

- (void)sharedLibraryRampCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100020C6C;
    v11[3] = &unk_100272F60;
    v12 = handlerCopy;
    [(CPLLibraryManager *)manager sharedLibraryRampCheckWithCompletionHandler:v11];
    v8 = v12;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v8 = +[CPLErrors unknownError];
    (v6)[2](v6, 0, v8);
  }
}

- (void)getStatusForPendingRecordsSharedToScopeWithIdentifier:(id)identifier maximumCount:(unint64_t)count completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager getStatusForPendingRecordsSharedToScopeWithIdentifier:identifierCopy maximumCount:count completionHandler:handlerCopy];
  }

  else
  {
    sub_10018F2C0();
  }
}

- (void)queryUserDetailsForShareParticipants:(id)participants completionHandler:(id)handler
{
  participantsCopy = participants;
  handlerCopy = handler;
  v9 = handlerCopy;
  manager = self->_manager;
  if (manager)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100020EF4;
    v14[3] = &unk_100273078;
    v15 = handlerCopy;
    [(CPLLibraryManager *)manager queryUserDetailsForShareParticipants:participantsCopy completionHandler:v14];
    v11 = v15;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10001A484(handlerCopy);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        selfCopy = self;
        v18 = 2112;
        v19 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@ tried to call %@ for a manager that is not present", buf, 0x16u);
      }
    }

    v11 = +[CPLErrors unknownError];
    (v9)[2](v9, 0, v11);
  }
}

- (void)forceSyncForScopeIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  if (self->_manager)
  {
    v8 = voucher_copy();
    v9 = v8;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10001A484(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        manager = self->_manager;
        v12 = [identifiersCopy componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v21 = manager;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Asking %@ for a task to sync %@", buf, 0x16u);
      }
    }

    v13 = self->_manager;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100021138;
    v15[3] = &unk_1002730A0;
    v16 = identifiersCopy;
    selfCopy = self;
    v18 = v9;
    v19 = replyCopy;
    v14 = v9;
    [(CPLLibraryManager *)v13 forceSynchronizingScopeWithIdentifiers:v16 completionHandler:v15];
  }

  else
  {
    sub_10018FAB4(self);
  }
}

- (void)_storeUploadTransferTask:(id)task
{
  taskCopy = task;
  taskIdentifier = [taskCopy taskIdentifier];
  v5 = [(NSMutableDictionary *)self->_uploadTasksPerIdentifier objectForKey:taskIdentifier];

  if (!v5)
  {
    [(NSMutableDictionary *)self->_uploadTasksPerIdentifier setObject:taskCopy forKey:taskIdentifier];
  }
}

- (void)libraryManager:(id)manager providePayloadForComputeStates:(id)states inFolderWithURL:(id)l completionHandler:(id)handler
{
  statesCopy = states;
  lCopy = l;
  handlerCopy = handler;
  v12 = [NSProgress progressWithTotalUnitCount:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100021820;
  v16[3] = &unk_1002731C0;
  v16[4] = self;
  v17 = statesCopy;
  v18 = lCopy;
  v19 = handlerCopy;
  v13 = lCopy;
  v14 = statesCopy;
  v15 = handlerCopy;
  [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v16];
}

- (void)connection:(id)connection handleInvocation:(id)invocation isReply:(BOOL)reply
{
  replyCopy = reply;
  connectionCopy = connection;
  invocationCopy = invocation;
  v10 = invocationCopy;
  if (replyCopy)
  {
    sub_10018FC30(self, invocationCopy);
  }

  else
  {
    selector = [invocationCopy selector];
    name = protocol_getMethodDescription(self->_allowedProtocol, selector, 1, 1).name;
    if (name)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v13 = sub_10001A484(name);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = NSStringFromSelector(selector);
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%@ is calling %@", &v17, 0x16u);
        }
      }

      [v10 invoke];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v15 = sub_10001A484(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(selector);
          v17 = 138412546;
          selfCopy2 = self;
          v19 = 2112;
          v20 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@ tried to call %@ but is not allowed to", &v17, 0x16u);
        }
      }

      [connectionCopy invalidate];
    }
  }
}

- (void)_withVoucherForTaskWithIdentifier:(id)identifier do:(id)do
{
  doCopy = do;
  v6 = [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier objectForKeyedSubscript:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    voucher_adopt();
    doCopy[2]();
  }

  else
  {
    doCopy[2]();
  }
}

- (void)_storeVoucher:(id)voucher forTaskWithIdentifier:(id)identifier
{
  if (voucher)
  {
    [(NSMutableDictionary *)self->_vouchersPerTaskIdentifier setObject:voucher forKeyedSubscript:identifier];
  }
}

- (CPLDaemonLibraryManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484(self);
    if (sub_100021E38(v4))
    {
      v7 = 138412290;
      selfCopy = self;
      sub_10000FB94(&_mh_execute_header, v2, v5, "%@ has been deallocated", &v7);
    }
  }

  v6.receiver = self;
  v6.super_class = CPLDaemonLibraryManager;
  [(CPLDaemonLibraryManager *)&v6 dealloc];
}

- (void)cancelTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_downloadTasksPerIdentifier objectForKey:identifierCopy];
    v3 = v7;
    if (!v7)
    {
      v7 = [(NSMutableDictionary *)self->_uploadTasksPerIdentifier objectForKey:v6];
      v3 = v7;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10001A484(v7);
      if (sub_100021E20(v8))
      {
        sub_1000139A0();
        sub_100021D94(&_mh_execute_header, v9, v10, "Cancelling %@", v11, v12, v13, v14);
      }
    }

    [v3 cancelTask];
LABEL_12:

    goto LABEL_13;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_10001A484(0);
    if (sub_100003448(v15))
    {
      sub_100021D44();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)acknowledgeChangedStatuses:(id)statuses
{
  sub_100021DB4();
  v7 = v6;
  v8 = sub_100021EB4();
  if (v8)
  {
    [v8 acknowledgeChangedStatuses:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484(0);
    if (sub_100003448(v9))
    {
      v10 = NSStringFromSelector(v5);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }
}

- (void)addStatusChangesForRecordsWithScopedIdentifiers:(id)identifiers persist:(BOOL)persist
{
  persistCopy = persist;
  sub_100021DB4();
  v8 = v7;
  v9 = sub_100021EB4();
  if (v9)
  {
    [v9 addStatusChangesForRecordsWithScopedIdentifiers:v4 persist:persistCopy];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10001A484(0);
    if (sub_100003448(v10))
    {
      v11 = NSStringFromSelector(v5);
      sub_100021CC8();
      sub_100021D44();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }
  }
}

- (void)addInfoToLog:(id)log
{
  logCopy = log;
  v6 = sub_100021EB4();
  if (v6)
  {
    [v6 addInfoToLog:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484(0);
    if (sub_100003448(v7))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }
}

- (void)reportSetting:(id)setting hasBeenSetToValue:(id)value
{
  settingCopy = setting;
  valueCopy = value;
  manager = self->_manager;
  if (manager)
  {
    [(CPLLibraryManager *)manager reportSetting:settingCopy hasBeenSetToValue:valueCopy];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10001A484(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100021CFC();
      v12 = settingCopy;
      v13 = v10;
      v14 = valueCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ wants to report setting '%@' has been set to %@ but manager is not present", v11, 0x20u);
    }
  }
}

- (void)reportMiscInformation:(id)information
{
  informationCopy = information;
  v6 = sub_100021EB4();
  if (v6)
  {
    [v6 reportMiscInformation:v3];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484(0);
    if (sub_100003448(v7))
    {
      sub_100021CFC();
      sub_100021D44();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }
}

- (void)cancelSyncTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (identifierCopy)
  {
    v7 = [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier objectForKeyedSubscript:identifierCopy];
    self = v7;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10001A484(v7);
      if (sub_100021E20(v8))
      {
        sub_1000139A0();
        sub_100021D94(&_mh_execute_header, v9, v10, "Cancelling %@", v11, v12, v13, v14);
      }
    }

    [(CPLDaemonLibraryManager *)self cancelTask];
LABEL_10:

    goto LABEL_11;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_10001A484(0);
    if (sub_100003448(v15))
    {
      sub_100021D44();
      _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)libraryManagerStatusDidChange:(id)change
{
  changeCopy = change;
  v6 = changeCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484(changeCopy);
    if (sub_100021E20(v7))
    {
      manager = self->_manager;
      status = [(CPLLibraryManager *)manager status];
      [(CPLLibraryManager *)self->_manager statusError];
      v23 = 138412802;
      v24 = manager;
      v25 = 2048;
      v26 = status;
      v28 = v27 = 2112;
      sub_100021DDC();
      _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
    }
  }

  v15 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_1002730C0];
  v16 = [NSNumber numberWithUnsignedInteger:[(CPLLibraryManager *)self->_manager status]];
  v21[1] = @"error";
  v22[0] = v16;
  statusError = [(CPLLibraryManager *)self->_manager statusError];
  cplSafeErrorForXPC = [statusError cplSafeErrorForXPC];
  v19 = cplSafeErrorForXPC;
  if (!cplSafeErrorForXPC)
  {
    v19 = +[NSNull null];
  }

  v22[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v15 libraryManagerDidUpdateStatusWithProperties:v20];

  if (!cplSafeErrorForXPC)
  {
  }
}

- (void)libraryManagerDidStartSynchronization:(id)synchronization
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10001A484(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(a2);
      v7 = 138412290;
      v8 = v5;
      sub_10000FB94(&_mh_execute_header, v4, v6, "%@ is not implemented yet", &v7);
    }
  }
}

- (void)libraryManagerHasChangesToPull:(id)pull
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484(self);
    if (sub_100021E38(v5))
    {
      sub_100003474();
      sub_100021D64();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_1002730E0];
  [v11 libraryManagerHasChangesToPull];
}

- (void)libraryManagerHasStatusChanges:(id)changes
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10001A484(self);
    if (sub_100021E38(v5))
    {
      sub_100003474();
      sub_100021D64();
      _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    }
  }

  v11 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_100273100];
  [v11 libraryManagerHasStatusChanges];
}

- (void)libraryManager:(id)manager provideLocalResource:(id)resource recordClass:(Class)class completionHandler:(id)handler
{
  resourceCopy = resource;
  handlerCopy = handler;
  v12 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484(handlerCopy);
    if (sub_100021EE0(v13))
    {
      sub_100021E9C();
      v22 = 2112;
      v23 = resourceCopy;
      v24 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ wants (local) %@. Asking %@", buf, 0x20u);
    }
  }

  sub_100021D24();
  sub_100021E90();
  v18[2] = sub_10018C398;
  v18[3] = &unk_1002727E8;
  v19 = resourceCopy;
  v20 = v12;
  v14 = v12;
  v15 = resourceCopy;
  v16 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:v18];
  v17 = NSStringFromClass(class);
  [v16 provideLocalResource:v15 recordClassString:v17 completionHandler:v14];
}

- (void)libraryManager:(id)manager pushAllChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10001A484(handlerCopy);
    if (sub_100021E20(v8))
    {
      sub_100021E9C();
      sub_100021DDC();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v14 = v7;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v15 pushAllChangesWithCompletionHandler:?];
}

- (void)libraryManager:(id)manager downloadDidStartForResourceTransferTask:(id)task
{
  taskCopy = task;
  v6 = taskCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v7 = sub_10001A484(taskCopy);
    if (sub_100021E20(v7))
    {
      sub_100021DDC();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
    }
  }

  [v6 taskIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000033D8();
  sub_10000FB28();
  v16 = v13;
  v14 = v13;
  v15 = v6;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v14 do:?];
}

- (void)libraryManager:(id)manager downloadDidProgress:(float)progress forResourceTransferTask:(id)task
{
  taskCopy = task;
  v9 = taskCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10001A484(taskCopy);
    if (sub_100021E20(v10))
    {
      v23 = 138412802;
      v24 = v9;
      v25 = 2048;
      v26 = (progress * 100.0);
      v27 = 2112;
      selfCopy = self;
      sub_100021DDC();
      _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
    }
  }

  [v9 taskIdentifier];
  objc_claimAutoreleasedReturnValue();
  sub_100021D24();
  sub_100021E90();
  v19[2] = sub_10002132C;
  v19[3] = &unk_100273128;
  v19[4] = self;
  v20 = v9;
  progressCopy = progress;
  v21 = v16;
  v17 = v16;
  v18 = v9;
  [(CPLDaemonLibraryManager *)self _withVoucherForTaskWithIdentifier:v17 do:v19];
}

- (void)libraryManager:(id)manager downloadDidFinishForResourceTransferTask:(id)task finalResource:(id)resource withError:(id)error
{
  taskCopy = task;
  resourceCopy = resource;
  errorCopy = error;
  v13 = errorCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_10001A484(errorCopy);
    if (sub_100021EE0(v14))
    {
      resource = [taskCopy resource];
      v27 = 138413058;
      v28 = taskCopy;
      v29 = 2112;
      v30 = resource;
      sub_100021E7C();
      sub_100021E60(&_mh_execute_header, v16, v17, "Download for %@ did finish with final resource %@ and error: %@. Notifying %@", &v27);
    }
  }

  taskIdentifier = [taskCopy taskIdentifier];
  sub_1000033D8();
  sub_10000FB28();
  v24 = v19;
  v25 = resourceCopy;
  v26 = v13;
  v20 = v13;
  v21 = resourceCopy;
  v22 = taskIdentifier;
  v23 = taskCopy;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v22 do:?];
  [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeObjectForKey:v22];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v22];
}

- (void)libraryManager:(id)manager inMemoryDownloadDidFinishForResourceTransferTask:(id)task data:(id)data withError:(id)error
{
  taskCopy = task;
  dataCopy = data;
  errorCopy = error;
  v13 = errorCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v14 = sub_10001A484(errorCopy);
    if (sub_100021EE0(v14))
    {
      v26 = 138413058;
      v27 = taskCopy;
      v28 = 2048;
      v29 = [dataCopy length];
      sub_100021E7C();
      sub_100021E60(&_mh_execute_header, v15, v16, "In-memory download for %@ did finish with %lu bytes and error: %@. Notifying %@", &v26);
    }
  }

  taskIdentifier = [taskCopy taskIdentifier];
  sub_1000033D8();
  sub_10000FB28();
  v23 = v18;
  v24 = dataCopy;
  v25 = v13;
  v19 = v13;
  v20 = dataCopy;
  v21 = taskIdentifier;
  v22 = taskCopy;
  [sub_100021E50() _withVoucherForTaskWithIdentifier:v21 do:?];
  [(NSMutableDictionary *)self->_downloadTasksPerIdentifier removeObjectForKey:v21];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v21];
}

- (void)libraryManager:(id)manager backgroundDownloadDidFinishForResource:(id)resource
{
  resourceCopy = resource;
  v7 = resourceCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10001A484(resourceCopy);
    if (sub_100021E20(v8))
    {
      v13 = 138412290;
      v14 = v7;
      sub_100021DC0(&_mh_execute_header, v9, v10, "Background download for %@ did finish", &v13);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v11 = v7;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v12 backgroundDownloadDidFinishForResource:?];
}

- (void)libraryManager:(id)manager backgroundDownloadDidFailForResource:(id)resource
{
  resourceCopy = resource;
  v7 = resourceCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10001A484(resourceCopy);
    if (sub_100021E20(v8))
    {
      v13 = 138412290;
      v14 = v7;
      sub_100021DC0(&_mh_execute_header, v9, v10, "Background download for %@ did fail", &v13);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v11 = v7;
  [sub_100021DF8() _clientWithErrorHandler:?];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v12 backgroundDownloadDidFailForResource:?];
}

- (void)libraryManager:(id)manager uploadDidStartForResourceTransferTask:(id)task
{
  taskCopy = task;
  v7 = taskCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10001A484(taskCopy);
    if (sub_100021E20(v8))
    {
      resource = [v7 resource];
      v16 = 138412290;
      v17 = resource;
      sub_100021DC0(&_mh_execute_header, v10, v11, "Upload for %@ did start", &v16);
    }
  }

  [(CPLDaemonLibraryManager *)self _storeUploadTransferTask:v7];
  sub_1000033D8();
  sub_10000FB28();
  v12 = v7;
  v13 = [sub_100021DF8() _clientWithErrorHandler:?];
  resource2 = [v7 resource];
  taskIdentifier = [v7 taskIdentifier];
  [v13 uploadDidStartForResource:resource2 withResourceTransferTask:taskIdentifier];
}

- (void)libraryManager:(id)manager uploadDidFinishForResourceTransferTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v9 = errorCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10001A484(errorCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      resource = [taskCopy resource];
      *buf = 138412546;
      v24 = resource;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Upload for %@ did finish with error %@", buf, 0x16u);
    }
  }

  sub_1000033D8();
  sub_10000FB28();
  v20 = sub_10018D610;
  v21 = &unk_100272468;
  v22 = taskCopy;
  v12 = taskCopy;
  v13 = [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:v19];
  resource2 = [v12 resource];
  taskIdentifier = [v12 taskIdentifier];
  cplSafeErrorForXPC = [v9 cplSafeErrorForXPC];
  [v13 uploadOfResource:resource2 didFinishForResourceTransferTask:taskIdentifier withError:cplSafeErrorForXPC];

  uploadTasksPerIdentifier = self->_uploadTasksPerIdentifier;
  taskIdentifier2 = [v12 taskIdentifier];
  [(NSMutableDictionary *)uploadTasksPerIdentifier removeObjectForKey:taskIdentifier2];
}

- (void)libraryManager:(id)manager uploadDidProgress:(float)progress forResourceTransferTask:(id)task
{
  taskCopy = task;
  v9 = taskCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_10001A484(taskCopy);
    if (sub_100021E20(v10))
    {
      resource = [v9 resource];
      sub_100021DDC();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }
  }

  [(CPLDaemonLibraryManager *)self _storeUploadTransferTask:v9];
  sub_1000033D8();
  sub_10000FB28();
  v16 = v9;
  v17 = [sub_100021DF8() _clientWithErrorHandler:?];
  resource2 = [v9 resource];
  taskIdentifier = [v9 taskIdentifier];
  *&v20 = progress;
  [v17 uploadOfResource:resource2 didProgress:taskIdentifier forResourceTransferTask:v20];
}

- (void)sizeOfResourcesToUploadDidChangeForLibraryManager:(id)manager
{
  managerCopy = manager;
  [managerCopy sizeOfResourcesToUpload];
  [managerCopy sizeOfOriginalResourcesToUpload];
  [managerCopy numberOfImagesToUpload];
  [managerCopy numberOfVideosToUpload];
  [managerCopy numberOfOtherItemsToUpload];

  if ((_CPLSilentLogging & 1) == 0)
  {
    v6 = sub_10001A484(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000139A0();
      sub_10000FB94(&_mh_execute_header, v6, v7, "Size of resources to upload did change to %llu", v9);
    }
  }

  [(CPLDaemonLibraryManager *)self _clientWithErrorHandler:&stru_100273148];
  objc_claimAutoreleasedReturnValue();
  sub_100021EA8();
  [v8 libraryManagerDidUpdateSizeOfResourcesToUploadToSize:? sizeOfOriginalResourcesToUpload:? numberOfImages:? numberOfVideos:? numberOfOtherItems:?];
}

- (void)libraryManager:(id)manager didFinishForceSyncTask:(id)task withErrors:(id)errors
{
  managerCopy = manager;
  taskCopy = task;
  errorsCopy = errors;
  v12 = errorsCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10001A484(errorsCopy);
    if (sub_100021EE0(v13))
    {
      scopeIdentifiers = [taskCopy scopeIdentifiers];
      v32 = 138413058;
      v33 = taskCopy;
      v34 = 2112;
      v35 = scopeIdentifiers;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      selfCopy = self;
      sub_100021E60(&_mh_execute_header, v15, v16, "Force sync %@ for %@ did finish with errors: %@. Notifying %@", &v32);
    }
  }

  taskIdentifier = [taskCopy taskIdentifier];
  if ([v12 count])
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100021600;
    v30[3] = &unk_100273170;
    v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
    v31 = v18;
    [v12 enumerateKeysAndObjectsUsingBlock:v30];
    v19 = v18;

    v12 = v19;
  }

  sub_1000033D8();
  sub_10000FB28();
  v24 = sub_100021674;
  v25 = &unk_100273198;
  selfCopy2 = self;
  v27 = taskCopy;
  v28 = taskIdentifier;
  v29 = v12;
  v20 = v12;
  v21 = taskIdentifier;
  v22 = taskCopy;
  [(CPLDaemonLibraryManager *)self _withVoucherForTaskWithIdentifier:v21 do:v23];
  [(NSMutableDictionary *)self->_forceSyncTasksPerIdentifier removeObjectForKey:v21];
  [(CPLDaemonLibraryManager *)self _dropVoucherForTaskWithIdentifier:v21];
}

@end