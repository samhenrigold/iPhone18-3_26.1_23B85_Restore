@interface SYService
- (BOOL)_handleEndSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleResetResponse:(id)response error:(id *)error;
- (BOOL)_handleRestartSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleStartSessionResponse:(id)response error:(id *)error;
- (BOOL)_handleSyncBatchResponse:(id)response error:(id *)error;
- (BOOL)_initializeMessaging:(id *)messaging;
- (BOOL)_initializeServiceDB:(id *)b;
- (BOOL)_request:(id)_request hasValidSessionIDForSession:(id)session response:(id)response completion:(id)completion;
- (BOOL)_shouldSession:(id)session fromPeer:(id)peer supercedeSession:(id)supercedeSession ofAge:(double)age collisionDetected:(BOOL *)detected;
- (BOOL)_v1_handleBatchChunkAck:(id)ack error:(id *)error;
- (BOOL)_v1_handleBatchEndResponse:(id)response error:(id *)error;
- (BOOL)_v1_handleFullSyncRequestAck:(id)ack error:(id *)error;
- (BOOL)hasPairingStore;
- (BOOL)resume:(id *)resume;
- (BOOL)sendData:(id)data options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)willAcceptMessageWithHeader:(id)header messageID:(id)d;
- (NSDictionary)extraTransportOptions;
- (NSString)peerID;
- (PBCodable)stateForLogging;
- (SYPersistentStore)persistentStore;
- (SYService)init;
- (SYService)initWithService:(id)service priority:(int64_t)priority asMasterStore:(BOOL)store options:(id)options;
- (SYService)initWithService:(id)service priority:(int64_t)priority qos:(unsigned int)qos asMasterStore:(BOOL)store options:(id)options;
- (id)_chooseBetweenCollidingSessions:(id)sessions :(id)a4;
- (id)_claimOwnershipOfFileAtURL:(id)l error:(id *)error;
- (id)_makeSessionForDeltaSync:(BOOL)sync;
- (id)_makeSyncEngineOfType:(unsigned int)type;
- (id)_newMessageHeader;
- (id)_sessionFromIncomingStartRequest:(id)request;
- (id)dataStreamWithMetadata:(id)metadata options:(id)options identifier:(id *)identifier error:(id *)error;
- (void)_copyPeerClockFromMessageHeaderIfNecessary:(id)necessary;
- (void)_dealWithPotentiallyStallingCurrentSession;
- (void)_deviceOSInfoChanged:(id)changed;
- (void)_deviceRemoved:(id)removed;
- (void)_deviceTargetabilityChanged:(id)changed;
- (void)_downgradeEngineForVersion:(int)version;
- (void)_enqueueIncomingStartSessionRequest:(id)request withCompletion:(id)completion;
- (void)_handleEndSession:(id)session completion:(id)completion;
- (void)_handleError:(id)error;
- (void)_handleResetRequest:(id)request completion:(id)completion;
- (void)_handleRestartSession:(id)session completion:(id)completion;
- (void)_handleStartSession:(id)session completion:(id)completion;
- (void)_handleSyncBatch:(id)batch completion:(id)completion;
- (void)_ifDelegateImplements:(SEL)implements do:(id)do then:(id)then;
- (void)_peerRejectedVersion:(id)version completion:(id)completion;
- (void)_postVersionRejectionMessageForMessageWithID:(id)d;
- (void)_processPendingChanges;
- (void)_removePairingStoreDevice;
- (void)_sendResetRequest;
- (void)_setProtocolVersionForRemoteOSVersion:(id)version build:(id)build remoteIsWatch:(BOOL)watch switchingEngines:(BOOL)engines;
- (void)_setupPairingNotifications;
- (void)_setupPairingStoreWithDevice:(id)device;
- (void)_signalPairingStoreAvailable;
- (void)_signalPairingStoreUnavailable;
- (void)_suspend;
- (void)_swapEngineTo:(unsigned int)to;
- (void)_swapSessionForVersionChange;
- (void)_switchToNewTargetedDevice:(id)device;
- (void)_updateMetaProtocolInfoForDevice:(id)device;
- (void)_upgradeEngineTo:(unsigned int)to;
- (void)_v1_handleBatchSyncChunk:(id)chunk completion:(id)completion;
- (void)_v1_handleBatchSyncEnd:(id)end completion:(id)completion;
- (void)_v1_handleBatchSyncStart:(id)start completion:(id)completion;
- (void)_v1_handleChangeMessage:(id)message completion:(id)completion;
- (void)_v1_handleFullSyncRequest:(id)request completion:(id)completion;
- (void)_v1_handleSyncAllObjects:(id)objects completion:(id)completion;
- (void)_vectorClockUpdated;
- (void)_whenSessionEnds:(id)ends;
- (void)_wrapUpCurrentSession:(id)session;
- (void)currentDeviceConnectionChanged:(BOOL)changed;
- (void)currentDeviceProximityChanged:(BOOL)changed;
- (void)dataStreamWithMetadata:(id)metadata options:(id)options completion:(id)completion;
- (void)dealloc;
- (void)deliveredMessageWithID:(id)d context:(id)context;
- (void)enqueuedMessageWithID:(id)d context:(id)context;
- (void)handleFileTransfer:(id)transfer metadata:(id)metadata completion:(id)completion;
- (void)handleOutOfBandData:(id)data completion:(id)completion;
- (void)handleSyncError:(id)error forMessageWithIdentifier:(id)identifier;
- (void)handleSyncRequest:(id)request ofType:(unsigned __int16)type response:(id)response;
- (void)handleSyncResponse:(id)response ofType:(unsigned __int16)type completion:(id)completion;
- (void)sendData:(id)data options:(id)options completion:(id)completion;
- (void)sentMessageWithID:(id)d context:(id)context;
- (void)serializeForIncomingSession:(id)session;
- (void)sessionDidEnd:(id)end withError:(id)error;
- (void)sessionFailedToCancelMessageUUIDs:(id)ds;
- (void)setCustomIDSOptions:(id)options;
- (void)setDelegate:(id)delegate queue:(id)queue;
- (void)setHasChangesAvailable;
- (void)setNeedsResetSync;
- (void)suspend;
@end

@implementation SYService

- (PBCodable)stateForLogging
{
  v3 = objc_opt_new();
  name = [(SYService *)self name];
  [v3 setName:name];

  syncEngine = [(SYService *)self syncEngine];
  stateForLogging = [syncEngine stateForLogging];
  [v3 setEngine:stateForLogging];

  currentSession = [(SYService *)self currentSession];
  stateForLogging2 = [currentSession stateForLogging];
  [v3 setSession:stateForLogging2];

  [v3 setSessionQueueRunning:{-[_SYMultiSuspendableQueue isSuspended](self->_sessionQueue, "isSuspended") ^ 1}];
  stateForLogging3 = [(SYDevice *)self->_targetedDevice stateForLogging];
  [v3 setTargetedDevice:stateForLogging3];

  options = [(SYService *)self options];
  [v3 setCocoaTransportOptions:options];

  peerID = [(SYService *)self peerID];
  [v3 setPeerID:peerID];

  [v3 setPeerGenerationID:self->_generationID];
  if ([(SYService *)self isMasterStore])
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  [v3 setServiceType:v12];
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  if ((*&flags & 4) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = (*&flags >> 1) & 1;
  }

  [v3 setEnqueuedSyncType:v14];
  os_unfair_lock_unlock(&self->_flagLock);

  return v3;
}

- (NSString)peerID
{
  peerID = self->_peerID;
  if (peerID || (-[SYService persistentStore](self, "persistentStore"), v4 = objc_claimAutoreleasedReturnValue(), [v4 peerID], v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_peerID, self->_peerID = v5, v6, v4, (peerID = self->_peerID) != 0))
  {
    v7 = peerID;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_ERROR))
    {
      [SYService peerID];
    }

    v7 = @"0BADF00D-DEAD-0000-9999-1234567890AB";
  }

  return v7;
}

- (SYPersistentStore)persistentStore
{
  os_unfair_lock_lock(&self->_persistentStoreLock);
  v3 = self->_persistentStore;
  if (!v3)
  {
    v4 = [SYPersistentStore sharedPersistentStoreForService:self->_serviceName];
    persistentStore = self->_persistentStore;
    self->_persistentStore = v4;

    v3 = self->_persistentStore;
  }

  os_unfair_lock_unlock(&self->_persistentStoreLock);

  return v3;
}

- (SYService)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 raise:v4 format:{@"-[%@ init] is not supported.", v6}];

  return 0;
}

- (SYService)initWithService:(id)service priority:(int64_t)priority asMasterStore:(BOOL)store options:(id)options
{
  storeCopy = store;
  defaultPriority = self->_defaultPriority;
  if (defaultPriority)
  {
    v9 = 17;
  }

  else
  {
    v9 = 21;
  }

  if (defaultPriority == 20)
  {
    v10 = 25;
  }

  else
  {
    v10 = v9;
  }

  return [(SYService *)self initWithService:service priority:priority qos:v10 asMasterStore:storeCopy options:options];
}

- (SYService)initWithService:(id)service priority:(int64_t)priority qos:(unsigned int)qos asMasterStore:(BOOL)store options:(id)options
{
  storeCopy = store;
  v9 = *&qos;
  v92 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  optionsCopy = options;
  v83.receiver = self;
  v83.super_class = SYService;
  v12 = [(SYService *)&v83 init];
  v13 = v12;
  if (v12)
  {
    v12->_flagLock._os_unfair_lock_opaque = 0;
    v14 = serviceCopy;
    if ([v14 hasSuffix:@"addressbooksync"])
    {
      v15 = "addressbooksync";
    }

    else if ([v14 hasSuffix:@"appregistrysync"])
    {
      v15 = "appregistrysync";
    }

    else if ([v14 hasSuffix:@"eventkitsync"])
    {
      v15 = "eventkitsync";
    }

    else if ([v14 hasSuffix:@"location.auth"])
    {
      v15 = "location.auth";
    }

    else if ([v14 hasSuffix:@"location.wifitilesync"])
    {
      v15 = "location.wifitilesync";
    }

    else if ([v14 hasSuffix:@"maps.sync"])
    {
      v15 = "maps.sync";
    }

    else if ([v14 hasSuffix:@"tccd.sync"])
    {
      v15 = "tccd.sync";
    }

    else if ([v14 hasSuffix:@"voicemailsync"])
    {
      v15 = "voicemailsync";
    }

    else
    {
      v15 = "SYService";
    }

    v16 = _os_activity_create(&dword_1DF835000, v15, MEMORY[0x1E69E9C08], OS_ACTIVITY_FLAG_DEFAULT);

    serviceActivity = v13->_serviceActivity;
    v13->_serviceActivity = v16;

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v13->_serviceActivity, &state);
    v18 = objc_opt_new();
    uUIDString = [v18 UUIDString];
    generationID = v13->_generationID;
    v13->_generationID = uUIDString;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = v21;
    if (v9)
    {
      v23 = dispatch_queue_attr_make_with_qos_class(v21, v9, 0);

      v22 = v23;
    }

    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    pathExtension = [v14 pathExtension];
    v26 = [v24 initWithFormat:@"CompanionSync.SYService.%@.%p", pathExtension, v13];

    v27 = v26;
    v28 = dispatch_queue_create([v26 UTF8String], v22);
    queue = v13->_queue;
    v13->_queue = v28;

    dispatch_queue_set_specific(v13->_queue, __SYService_Queue_Tag_Key, v13, 0);
    [SYQueueDumper registerQueue:v13->_queue];
    v30 = objc_alloc(MEMORY[0x1E696AEC0]);
    pathExtension2 = [v14 pathExtension];
    v32 = [v30 initWithFormat:@"CompanionSync.SYService.%@.incoming-io", pathExtension2];

    v33 = v32;
    v34 = dispatch_queue_create_with_target_V2([v32 UTF8String], v22, v13->_queue);
    incomingIOQueue = v13->_incomingIOQueue;
    v13->_incomingIOQueue = v34;

    [SYQueueDumper registerQueue:v13->_incomingIOQueue];
    v36 = objc_alloc(MEMORY[0x1E696AEC0]);
    pathExtension3 = [v14 pathExtension];
    v38 = [v36 initWithFormat:@"CompanionSync.SYService.%@.delegate", pathExtension3];

    v39 = v38;
    v40 = dispatch_queue_create([v38 UTF8String], v22);
    delegateQueue = v13->_delegateQueue;
    v13->_delegateQueue = v40;

    [SYQueueDumper registerQueue:v13->_delegateQueue];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v42 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      v43 = !storeCopy;
      v44 = v22;
      v45 = v38;
      v46 = storeCopy;
      v47 = v9;
      if (v43)
      {
        v48 = "as Slave";
      }

      else
      {
        v48 = "as Master";
      }

      v49 = @"low";
      if (!priority)
      {
        v49 = @"high";
      }

      if (priority == 20)
      {
        v49 = @"urgent";
      }

      v50 = v49;
      v51 = v13->_generationID;
      *buf = 138544130;
      v85 = v14;
      v86 = 2080;
      v87 = v48;
      v9 = v47;
      storeCopy = v46;
      v38 = v45;
      v22 = v44;
      v88 = 2114;
      v89 = v50;
      v90 = 2114;
      v91 = v51;
      v52 = v42;
      _os_log_impl(&dword_1DF835000, v52, OS_LOG_TYPE_DEFAULT, "CompanionSync initializing new SYService %{public}@ %s, %{public}@ priority, generation %{public}@", buf, 0x2Au);
    }

    v53 = [v14 copy];
    serviceName = v13->_serviceName;
    v13->_serviceName = v53;

    v13->_flags = (*&v13->_flags & 0xFFFFFFFE | storeCopy);
    v13->_defaultPriority = priority;
    v55 = [optionsCopy copy];
    defaultOptions = v13->_defaultOptions;
    v13->_defaultOptions = v55;

    v57 = *&v13->_flags & 0xFFFFFE3F | 0x80;
    *&v13->_defaultMessageTimeout = xmmword_1DF8E3D70;
    v13->_flags = v57;
    v13->_engineType = 1;
    v13->_sendingBufferCap = 0x200000;
    v58 = objc_alloc(MEMORY[0x1E696AEC0]);
    pathExtension4 = [v14 pathExtension];
    v60 = [v58 initWithFormat:@"CompanionSync.SYService.%@.SessionStartQueue", pathExtension4];

    v61 = [[_SYMultiSuspendableQueue alloc] initWithName:v60 qosClass:v9 serial:1 target:v13->_queue];
    sessionQueue = v13->_sessionQueue;
    v13->_sessionQueue = v61;

    [(_SYMultiSuspendableQueue *)v13->_sessionQueue suspend];
    if (![(_SYMultiSuspendableQueue *)v13->_sessionQueue isSuspended])
    {
      _os_assumes_log();
      [SYService initWithService:priority:qos:asMasterStore:options:];
    }

    [(SYService *)v13 _setupPairingNotifications];
    v63 = +[SYDevice targetableDevice];
    targetedDevice = v13->_targetedDevice;
    v13->_targetedDevice = v63;

    pairingStorePath = [(SYDevice *)v13->_targetedDevice pairingStorePath];
    v66 = pairingStorePath == 0;

    if (!v66)
    {
      *&v13->_flags |= 8u;
      [(SYService *)v13 _updateMetaProtocolInfoForDevice:v13->_targetedDevice];
    }

    objc_initWeak(buf, v13);
    dispatchQueue = [(_SYMultiSuspendableQueue *)v13->_sessionQueue dispatchQueue];
    v68 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, dispatchQueue);
    processSignalSource = v13->_processSignalSource;
    v13->_processSignalSource = v68;

    v70 = v13->_processSignalSource;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __64__SYService_initWithService_priority_qos_asMasterStore_options___block_invoke;
    handler[3] = &unk_1E86CA190;
    objc_copyWeak(&v81, buf);
    dispatch_source_set_event_handler(v70, handler);
    dispatch_resume(v13->_processSignalSource);
    v71 = objc_opt_new();
    onSessionEnd = v13->_onSessionEnd;
    v13->_onSessionEnd = v71;

    v73 = [v14 copy];
    objc_copyWeak(&v79, buf);
    v74 = v73;
    v13->_stateHandle = os_state_add_handler();
    v75 = v13;

    objc_destroyWeak(&v79);
    objc_destroyWeak(&v81);
    objc_destroyWeak(buf);

    os_activity_scope_leave(&state);
  }

  return v13;
}

void __64__SYService_initWithService_priority_qos_asMasterStore_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processPendingChanges];
    WeakRetained = v2;
  }
}

char *__64__SYService_initWithService_priority_qos_asMasterStore_options___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [WeakRetained stateForLogging];
    v7 = [v6 dictionaryRepresentation];
    v13 = 0;
    v8 = [v5 dataWithPropertyList:v7 format:200 options:0 error:&v13];
    v9 = v13;

    if (!v8)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Error while generating state: %@", v9];
      v8 = [v10 dataUsingEncoding:4];
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = malloc_type_malloc([v8 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  snprintf(v11 + 136, 0x40uLL, "Service '%s'", [*(a1 + 32) UTF8String]);
  *(v11 + 1) = [v8 length];
  [v8 getBytes:v11 + 200 length:{objc_msgSend(v8, "length")}];

  objc_autoreleasePoolPop(v2);
  return v11;
}

- (void)dealloc
{
  os_state_remove_handler();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SYService;
  [(SYService *)&v4 dealloc];
}

- (void)_setupPairingNotifications
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SYService__setupPairingNotifications__block_invoke;
  block[3] = &unk_1E86C9FB0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __39__SYService__setupPairingNotifications__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 188);
  if ((v2 & 0x20) == 0)
  {
    *(v1 + 188) = v2 | 0x20;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel__deviceTargetabilityChanged_ name:@"SYDeviceTargetabilityChangedNotification" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:sel__deviceRemoved_ name:@"SYDeviceRemovedNotification" object:0];
  }
}

- (void)_setProtocolVersionForRemoteOSVersion:(id)version build:(id)build remoteIsWatch:(BOOL)watch switchingEngines:(BOOL)engines
{
  enginesCopy = engines;
  watchCopy = watch;
  v25 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  buildCopy = build;
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if (!watchCopy)
  {
    if ([buildCopy compare:@"13E" options:64] == -1)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v13 = _sync_log_facilities;
      if (!os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v21 = 138543618;
      v22 = versionCopy;
      v23 = 2114;
      v24 = buildCopy;
      v14 = "Remote device is an iDevice running OS %{public}@ (%{public}@). Will use protocol v1 when communicating with this device.";
      goto LABEL_13;
    }

LABEL_8:
    v15 = 2;
    goto LABEL_15;
  }

  if ([buildCopy compare:@"13V" options:64 range:{0, 3}] != -1)
  {
    goto LABEL_8;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v13 = _sync_log_facilities;
  if (!os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_14;
  }

  v21 = 138543618;
  v22 = versionCopy;
  v23 = 2114;
  v24 = buildCopy;
  v14 = "Remote device is an WATCH running OS %{public}@ (%{public}@). Will use protocol v1 when communicating with this device.";
LABEL_13:
  _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, v14, &v21, 0x16u);
LABEL_14:
  v15 = 1;
LABEL_15:
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v16 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 67109120;
    LODWORD(v22) = v15;
    _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Updating protocol version for device OSInfo change: will use protocol v%d", &v21, 8u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  self->_flags = (*&self->_flags & 0xFFFFFE3F | (v15 << 6));
  os_unfair_lock_unlock(&self->_flagLock);
  if (enginesCopy)
  {
    v17 = (*&flags >> 6) & 7;
    if (v15 != v17)
    {
      os_unfair_lock_lock(&self->_flagLock);
      v18 = self->_flags;
      v19 = (*&v18 >> 14) & 7;
      os_unfair_lock_unlock(&self->_flagLock);
      if (v15 <= v17 || (v20 = (*&v18 >> 11) & 7, v20 == v19) || ![(SYService *)self _protocolVersion:v15 supportsEngineType:v20])
      {
        if (v15 < v17 && ![(SYService *)self _protocolVersion:v15 supportsEngineType:v19])
        {
          [(SYService *)self _downgradeEngineForVersion:v15];
        }
      }

      else
      {
        [(SYService *)self _upgradeEngineTo:v20];
      }
    }
  }
}

- (void)_updateMetaProtocolInfoForDevice:(id)device
{
  v18 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v5 = deviceCopy;
  if (deviceCopy)
  {
    deviceClass = [deviceCopy deviceClass];
    systemVersion = [v5 systemVersion];
    systemBuildVersion = [v5 systemBuildVersion];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
    {
      v12 = 138543874;
      v13 = deviceClass;
      v14 = 2114;
      v15 = systemVersion;
      v16 = 2114;
      v17 = systemBuildVersion;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Remote device is a %{public}@ with system version %{public}@, build %{public}@", &v12, 0x20u);
    }

    v10 = [deviceClass hasPrefix:@"Watch"];
    if (v10)
    {
      os_unfair_lock_lock(&self->_flagLock);
      *&self->_flags |= 0x200u;
      os_unfair_lock_unlock(&self->_flagLock);
    }

    [(SYService *)self _setProtocolVersionForRemoteOSVersion:systemVersion build:systemBuildVersion remoteIsWatch:v10 switchingEngines:0];
    if ((*(&self->_flags + 1) & 4) == 0)
    {
      os_unfair_lock_lock(&self->_flagLock);
      *&self->_flags |= 0x400u;
      os_unfair_lock_unlock(&self->_flagLock);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__deviceOSInfoChanged_ name:@"SYDeviceOSInfoChangedNotification" object:v5];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, 0x90u))
    {
      [SYService _updateMetaProtocolInfoForDevice:];
    }

    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFFFE3F | 0x80);
    os_unfair_lock_unlock(&self->_flagLock);
  }
}

- (void)_deviceOSInfoChanged:(id)changed
{
  changedCopy = changed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  object = [changedCopy object];
  deviceClass = [object deviceClass];
  systemVersion = [object systemVersion];
  systemBuildVersion = [object systemBuildVersion];
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__SYService__deviceOSInfoChanged___block_invoke;
  v13[3] = &unk_1E86CA728;
  v13[4] = self;
  v14 = systemVersion;
  v15 = systemBuildVersion;
  v16 = deviceClass;
  v10 = deviceClass;
  v11 = systemBuildVersion;
  v12 = systemVersion;
  dispatch_async(queue, v13);

  os_activity_scope_leave(&state);
}

uint64_t __34__SYService__deviceOSInfoChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) hasPrefix:@"Watch"];

  return [v1 _setProtocolVersionForRemoteOSVersion:v2 build:v3 remoteIsWatch:v4 switchingEngines:1];
}

- (void)_ifDelegateImplements:(SEL)implements do:(id)do then:(id)then
{
  doCopy = do;
  thenCopy = then;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__SYService__ifDelegateImplements_do_then___block_invoke;
    v15[3] = &unk_1E86CA750;
    v16 = doCopy;
    v17 = thenCopy;
    v15[4] = self;
    v12 = delegateQueue;
    v13 = [v15 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v19 = v13;
    v14 = v13;
    dispatch_async(v12, block);
  }

  else if (thenCopy)
  {
    thenCopy[2](thenCopy);
  }
}

void __43__SYService__ifDelegateImplements_do_then___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[6];
  if (v2)
  {
    v3 = *(a1[4] + 56);

    dispatch_async(v3, v2);
  }
}

- (void)_switchToNewTargetedDevice:(id)device
{
  deviceCopy = device;
  pairingID = [(SYDevice *)self->_targetedDevice pairingID];
  pairingID2 = [deviceCopy pairingID];
  [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
  currentSession = [(SYService *)self currentSession];
  v8 = currentSession;
  if (currentSession)
  {
    [currentSession _pause];
  }

  dispatch_suspend(self->_incomingIOQueue);
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__SYService__switchToNewTargetedDevice___block_invoke;
  v20[3] = &unk_1E86CA0F8;
  v21 = pairingID;
  v22 = pairingID2;
  selfCopy = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_91;
  v14[3] = &unk_1E86CA778;
  v14[4] = self;
  v15 = deviceCopy;
  v19 = (flags & 0x10) != 0;
  v16 = v22;
  v17 = v21;
  v18 = v8;
  v10 = v8;
  v11 = v21;
  v12 = v22;
  v13 = deviceCopy;
  [(SYService *)self _ifDelegateImplements:sel_service_willSwitchFromPairingID_toPairingID_ do:v20 then:v14];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Calling delegate willSwitchFromPairingID:%{public}@ toPairingID:%{public}@", &v6, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1[6] + 48));
  [WeakRetained service:a1[6] willSwitchFromPairingID:a1[4] toPairingID:a1[5]];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_91(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 184));
  v2 = *(a1 + 32);
  os_unfair_lock_opaque = v2[47]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v2 + 46);
  if ((os_unfair_lock_opaque & 0x10) != 0)
  {
    [*(a1 + 32) _suspend];
    os_unfair_lock_lock((*(a1 + 32) + 184));
    *(*(a1 + 32) + 188) |= 0x20000u;
    os_unfair_lock_unlock((*(a1 + 32) + 184));
  }

  [*(a1 + 32) _removePairingStoreDevice];
  [*(a1 + 32) _updateMetaProtocolInfoForDevice:*(a1 + 40)];
  [*(a1 + 32) _setupPairingStoreWithDevice:*(a1 + 40)];
  if ((os_unfair_lock_opaque & 0x10) != 0 && *(a1 + 72) == 1 && *(a1 + 40) || (os_unfair_lock_lock((*(a1 + 32) + 184)), v4 = *(a1 + 32), v5 = v4[47]._os_unfair_lock_opaque, os_unfair_lock_unlock(v4 + 46), (v5 & 0x20000) != 0))
  {
    v6 = *(a1 + 32);
    v23 = 0;
    v7 = [v6 resume:&v23];
    v8 = v23;
    if (v7)
    {
      os_unfair_lock_lock((*(a1 + 32) + 184));
      *(*(a1 + 32) + 188) &= ~0x20000u;
      os_unfair_lock_unlock((*(a1 + 32) + 184));
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Failed to resume store after switching devices!", buf, 2u);
      }
    }
  }

  [*(a1 + 32) _dealWithPotentiallyStallingCurrentSession];
  if (*(a1 + 48))
  {
    v10 = objc_opt_new();
    v11 = [v10 UUIDString];
    v12 = *(a1 + 32);
    v13 = *(v12 + 232);
    *(v12 + 232) = v11;

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(v15 + 232);
      *buf = 134218242;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "SYService %p has new generation %{public}@", buf, 0x16u);
    }
  }

  v17 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_94;
  v20[3] = &unk_1E86CA0F8;
  v20[4] = v17;
  v21 = *(a1 + 56);
  v22 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __40__SYService__switchToNewTargetedDevice___block_invoke_2;
  v18[3] = &unk_1E86C9E90;
  v18[4] = *(a1 + 32);
  v19 = *(a1 + 64);
  [v17 _ifDelegateImplements:sel_service_didSwitchFromPairingID_toPairingID_ do:v20 then:v18];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_94(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] didSwitchFromPairingID:a1[5] toPairingID:a1[6]];
}

void __40__SYService__switchToNewTargetedDevice___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasPairingStore])
  {
    [*(a1 + 32) _signalPairingStoreAvailable];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 _continue];
  }

  [*(*(a1 + 32) + 80) resume];
  v3 = *(*(a1 + 32) + 64);

  dispatch_resume(v3);
}

- (void)_deviceTargetabilityChanged:(id)changed
{
  changedCopy = changed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SYService__deviceTargetabilityChanged___block_invoke;
  block[3] = &unk_1E86CA7A0;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

void __41__SYService__deviceTargetabilityChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
    {
      __41__SYService__deviceTargetabilityChanged___block_invoke_cold_2();
    }

    v3 = [*(a1 + 32) object];
    v4 = [v3 isTargetable];
    v5 = WeakRetained[19];
    if (v4)
    {
      if (v5 && [v3 isEqual:?])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = _sync_log_facilities;
        if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Newly-targetable device is our existing targeted device. No switch actually occurring.", buf, 2u);
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v7 = _sync_log_facilities;
        if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
        {
          __41__SYService__deviceTargetabilityChanged___block_invoke_cold_8((WeakRetained + 19), v7);
        }
      }

      else
      {
        [WeakRetained _switchToNewTargetedDevice:v3];
      }
    }

    else if ([v3 isEqual:v5])
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Targeted device became untargetable. We should get a new targetable-device notification soon.", v10, 2u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEBUG))
      {
        __41__SYService__deviceTargetabilityChanged___block_invoke_cold_5((WeakRetained + 19), v9);
      }
    }
  }
}

- (void)_deviceRemoved:(id)removed
{
  removedCopy = removed;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SYService__deviceRemoved___block_invoke;
  block[3] = &unk_1E86CA7A0;
  objc_copyWeak(&v9, &location);
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
}

void __28__SYService__deviceRemoved___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) object];
    v4 = [v3 isEqual:WeakRetained[19]];

    if (v4)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v5 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        v6 = WeakRetained[19];
        v10 = 138412290;
        v11 = v6;
        _os_log_impl(&dword_1DF835000, v5, OS_LOG_TYPE_DEFAULT, "Current targeted device (%@) was removed from known devices list.", &v10, 0xCu);
      }
    }

    v7 = +[SYDevice knownDevices];
    v8 = [v7 count];

    if (!v8)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Last known paired device has unpaired. SYService can no longer function.", &v10, 2u);
      }

      [WeakRetained _signalPairingStoreUnavailable];
      [WeakRetained _switchToNewTargetedDevice:0];
    }
  }
}

- (void)_removePairingStoreDevice
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SYDeviceOSInfoChangedNotification" object:self->_targetedDevice];

  *&self->_flags &= ~0x400u;
  targetedDevice = self->_targetedDevice;
  self->_targetedDevice = 0;

  *&self->_flags &= ~8u;
}

- (void)_setupPairingStoreWithDevice:(id)device
{
  deviceCopy = device;
  v9 = deviceCopy;
  if (deviceCopy)
  {
    pairingStorePath = [deviceCopy pairingStorePath];
    os_unfair_lock_lock(&self->_flagLock);
    objc_storeStrong(&self->_targetedDevice, device);
    *&self->_flags |= 8u;
    os_unfair_lock_unlock(&self->_flagLock);
  }

  else
  {
    os_unfair_lock_lock(&self->_flagLock);
    targetedDevice = self->_targetedDevice;
    self->_targetedDevice = 0;

    *&self->_flags &= ~8u;
    os_unfair_lock_lock(&self->_persistentStoreLock);
    persistentStore = self->_persistentStore;
    self->_persistentStore = 0;

    os_unfair_lock_unlock(&self->_persistentStoreLock);
    os_unfair_lock_unlock(&self->_flagLock);
  }
}

- (void)_signalPairingStoreAvailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__SYService__signalPairingStoreAvailable__block_invoke;
    v8[3] = &unk_1E86C9E90;
    v9 = WeakRetained;
    selfCopy = self;
    v5 = delegateQueue;
    v6 = [v8 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v12 = v6;
    v7 = v6;
    dispatch_async(v5, block);
  }
}

uint64_t __41__SYService__signalPairingStoreAvailable__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -serviceDidPairDevice", v4, 2u);
  }

  return [*(a1 + 32) serviceDidPairDevice:*(a1 + 40)];
}

- (void)_signalPairingStoreUnavailable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegateQueue = self->_delegateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__SYService__signalPairingStoreUnavailable__block_invoke;
    v8[3] = &unk_1E86C9E90;
    v9 = WeakRetained;
    selfCopy = self;
    v5 = delegateQueue;
    v6 = [v8 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v12 = v6;
    v7 = v6;
    dispatch_async(v5, block);
  }
}

uint64_t __43__SYService__signalPairingStoreUnavailable__block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -serviceDidUnpairDevice", v4, 2u);
  }

  return [*(a1 + 32) serviceDidUnpairDevice:*(a1 + 40)];
}

- (void)_dealWithPotentiallyStallingCurrentSession
{
  v25 = *MEMORY[0x1E69E9840];
  currentSession = [(SYService *)self currentSession];
  v3 = currentSession;
  if (currentSession)
  {
    isSending = [currentSession isSending];
    state = [v3 state];
    if (isSending)
    {
      if ((state & 0xFFFFFFFE) == 6)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v6 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          v8 = _SYObfuscate(v3);
          v21 = 138543362;
          v22 = v8;
          _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Canceling current sending session %{public}@ due to QWS", &v21, 0xCu);
        }

        v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
        [v3 _handleError:v9];
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v10 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v12 = _SYObfuscate(v3);
        state2 = [v3 state];
        v21 = 138543618;
        v22 = v12;
        v23 = 2048;
        v24 = state2;
        v14 = "Sending session (%{public}@}) still active at time of QWS. State is %{companionsync:SYSessionState}ld, so I'm letting it continue so that IDS can give it a not-the-active-device error next time it sends";
LABEL_23:
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_INFO, v14, &v21, 0x16u);
      }
    }

    else
    {
      if (state <= 1)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v15 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = _SYObfuscate(v3);
          v21 = 138543362;
          v22 = v17;
          _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Canceling current receiving session %{public}@ due to QWS", &v21, 0xCu);
        }

        v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2021 userInfo:0];
        [v3 _handleError:v18];
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
      {
        v11 = v19;
        v12 = _SYObfuscate(v3);
        state3 = [v3 state];
        v21 = 138543618;
        v22 = v12;
        v23 = 2048;
        v24 = state3;
        v14 = "Receiving session (%{public}@}) still active at time of QWS. State is %{companionsync:SYSessionState}ld, so I'm letting it continue so that IDS can give it a not-the-active-device error next time it sends";
        goto LABEL_23;
      }
    }
  }
}

- (void)_whenSessionEnds:(id)ends
{
  v6 = [ends copy];
  os_unfair_lock_lock(&self->_flagLock);
  onSessionEnd = self->_onSessionEnd;
  v5 = MEMORY[0x1E12E11B0](v6);
  [(NSMutableArray *)onSessionEnd addObject:v5];

  os_unfair_lock_unlock(&self->_flagLock);
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  queueCopy = queue;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (queueCopy)
  {
    objc_storeStrong(&self->_delegateQueue, queue);
  }

  else
  {
    lastPathComponent = [(NSString *)self->_serviceName lastPathComponent];
    v9 = lastPathComponent;
    __snprintf_chk(label, 0x80uLL, 0, 0x80uLL, "CompanionSync.SYService.%s.delegate", [lastPathComponent UTF8String]);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(label, v10);
    delegateQueue = self->_delegateQueue;
    self->_delegateQueue = v11;
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
  os_activity_scope_leave(&state);
}

- (BOOL)resume:(id *)resume
{
  v31[1] = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  os_unfair_lock_lock(&self->_flagLock);
  flags = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if ((*&flags & 0x10) != 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (resume)
    {
      v10 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31[0] = @"SYService has already been resumed.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *resume = [v10 errorWithSYError:2002 userInfo:v11];
    }

    goto LABEL_22;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained == 0;

  if (v7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (resume)
    {
      v12 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A578];
      v29 = @"SYService cannot be resumed until a delegate has been set.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *resume = [v12 errorWithSYError:2001 userInfo:v13];
    }

    goto LABEL_22;
  }

  os_unfair_lock_lock(&self->_flagLock);
  v8 = self->_flags;
  os_unfair_lock_unlock(&self->_flagLock);
  if ((*&v8 & 8) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      [SYService resume:];
    }

    if (resume)
    {
      [MEMORY[0x1E696ABC0] errorWithSYError:2003 userInfo:0];
      *resume = v9 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __20__SYService_resume___block_invoke;
  v16[3] = &unk_1E86CA7C8;
  v16[4] = self;
  v16[5] = &v17;
  v16[6] = &v23;
  _dispatch_sync_safe_tagged(queue, self, v16);
  v9 = *(v24 + 24);
  if (resume && (v24[3] & 1) == 0)
  {
    *resume = v18[5];
    v9 = *(v24 + 24);
  }

  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
LABEL_23:
  os_activity_scope_leave(&state);
  return v9 & 1;
}

void __20__SYService_resume___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(v2 + 8);
  obj = *(v4 + 40);
  v5 = [v3 _initializeServiceDB:&obj];
  objc_storeStrong((v4 + 40), obj);
  if ((v5 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __20__SYService_resume___block_invoke_cold_2();
    }

    goto LABEL_14;
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v13 = *(v7 + 40);
  v8 = [v6 _initializeMessaging:&v13];
  objc_storeStrong((v7 + 40), v13);
  if ((v8 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __20__SYService_resume___block_invoke_cold_4();
    }

LABEL_14:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    return;
  }

  v9 = [*(a1 + 32) persistentStore];
  v10 = [v9 peerID];
  v11 = *(a1 + 32);
  v12 = *(v11 + 200);
  *(v11 + 200) = v10;

  [*(*(a1 + 32) + 80) resume];
  if ([*(*(a1 + 32) + 80) isSuspended])
  {
    __20__SYService_resume___block_invoke_cold_5();
  }

  *(*(a1 + 32) + 188) |= 0x10u;
}

- (void)suspend
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __20__SYService_suspend__block_invoke;
  v4[3] = &unk_1E86C9FB0;
  v4[4] = self;
  _dispatch_sync_safe_tagged(queue, self, v4);
  os_activity_scope_leave(&state);
}

uint64_t __20__SYService_suspend__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 184));
  *(*(a1 + 32) + 188) &= ~0x20000u;
  os_unfair_lock_unlock((*(a1 + 32) + 184));
  v2 = *(a1 + 32);

  return [v2 _suspend];
}

- (id)_makeSessionForDeltaSync:(BOOL)sync
{
  if ((*&self->_flags & 0x1C0) == 0x40)
  {
    if (sync)
    {
      v4 = SYOutgoingDeltaTransactionSession;
    }

    else
    {
      name = [(SYService *)self name];
      v7 = [name isEqualToString:@"com.apple.private.alloy.maps.sync"];

      if (v7)
      {
        v4 = SYOutgoingSyncAllObjectsSession;
      }

      else
      {
        v4 = SYOutgoingBatchSyncSession;
      }
    }

    v5 = [[v4 alloc] initWithService:self];
  }

  else
  {
    v5 = [[SYSendingSession alloc] initWithService:self isReset:!sync];
  }

  return v5;
}

- (void)_processPendingChanges
{
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == YES", v2, v3, v4, v5, 0);
  }
}

void __35__SYService__processPendingChanges__block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __35__SYService__processPendingChanges__block_invoke_119(uint64_t a1, char a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      pseudo_signpost_id = _next_pseudo_signpost_id();
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = qword_1EDE73450;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (a1 + 40);
        if (*(a1 + 56))
        {
          v10 = "delta";
        }

        else
        {
          v10 = "reset";
        }

        v11 = objc_opt_class();
        v19 = NSStringFromClass(v11);
        v12 = [*v9 identifier];
        v13 = [WeakRetained name];
        v14 = [*v9 reason];
        if (v14)
        {
          v15 = [*(a1 + 40) reason];
        }

        else
        {
          v15 = @"-";
        }

        *buf = 134219266;
        v22 = pseudo_signpost_id;
        v23 = 2082;
        v24 = v10;
        v25 = 2114;
        v26 = v19;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v13;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Start signpost %llu: Started outgoing %{public}s %{public}@ with identifier %{public}@ for service %{public}@. Reason = '%{public}@'", buf, 0x3Eu);
        if (v14)
        {
        }
      }

      [*(a1 + 40) setSessionSignpost:pseudo_signpost_id];
    }

    else
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(*(*(a1 + 32) + 168), &state);
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v16 = qword_1EDE73420;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543618;
        v22 = v18;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to start: %@", buf, 0x16u);
      }

      os_activity_scope_leave(&state);
    }
  }
}

- (void)_sendResetRequest
{
  if ((*&self->_flags & 0x1C0) == 0x40)
  {
    v3 = objc_opt_new();
    _newMessageHeader = [(SYService *)self _newMessageHeader];
    [v3 setHeader:_newMessageHeader];

    v5 = objc_opt_new();
    uUIDString = [v5 UUIDString];
    [v3 setSyncID:uUIDString];

    syncEngine = self->_syncEngine;
    priority = [(SYService *)self priority];
    customIDSOptions = self->_customIDSOptions;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __30__SYService__sendResetRequest__block_invoke;
    v24 = &unk_1E86CA320;
    selfCopy = self;
    v10 = &v21;
    v11 = syncEngine;
    v12 = v3;
    v13 = 1;
  }

  else
  {
    v3 = objc_opt_new();
    _newMessageHeader2 = [(SYService *)self _newMessageHeader];
    [v3 setHeader:_newMessageHeader2];

    v15 = self->_syncEngine;
    priority = [(SYService *)self priority];
    customIDSOptions = self->_customIDSOptions;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __30__SYService__sendResetRequest__block_invoke_129;
    v19 = &unk_1E86CA320;
    selfCopy2 = self;
    v10 = &v16;
    v11 = v15;
    v12 = v3;
    v13 = 101;
  }

  [(SYSyncEngine *)v11 enqueueSyncRequest:v12 withMessageID:v13 priority:priority options:customIDSOptions userContext:0 callback:v10, v16, v17, v18, v19, selfCopy2, v21, v22, v23, v24, selfCopy];
}

void __30__SYService__sendResetRequest__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 168), &v12);
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Enqueued full-sync request with ID %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1 + 32) + 136), a3);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enqueue full-sync request: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v12);
}

void __30__SYService__sendResetRequest__block_invoke_129(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 168), &v12);
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Enqueued reset request with ID %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1 + 32) + 136), a3);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enqueue reset request: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v12);
}

- (void)setHasChangesAvailable
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Delta requested", v4, 2u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  *&self->_flags |= 2u;
  os_unfair_lock_unlock(&self->_flagLock);
  dispatch_source_merge_data(self->_processSignalSource, 1uLL);
  os_activity_scope_leave(&state);
}

- (void)setNeedsResetSync
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v3 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEFAULT, "Reset requested", v4, 2u);
  }

  os_unfair_lock_lock(&self->_flagLock);
  *&self->_flags |= 4u;
  os_unfair_lock_unlock(&self->_flagLock);
  dispatch_source_merge_data(self->_processSignalSource, 1uLL);
  os_activity_scope_leave(&state);
}

- (BOOL)_initializeServiceDB:(id *)b
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DF835000, "SYService DB Setup", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  v29.opaque[0] = 0;
  v29.opaque[1] = 0;
  os_activity_scope_enter(v5, &v29);
  _pathForDataStore = [(SYService *)self _pathForDataStore];
  if ([_pathForDataStore length])
  {
    v7 = *MEMORY[0x1E696A328];
    v36[0] = *MEMORY[0x1E696A360];
    v36[1] = v7;
    v37[0] = @"mobile";
    v37[1] = @"mobile";
    v36[2] = *MEMORY[0x1E696A370];
    v37[2] = &unk_1F5AE2680;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager createDirectoryAtPath:_pathForDataStore withIntermediateDirectories:1 attributes:v8 error:b];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = _sync_log_facilities;
      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Setting up change-list database", buf, 2u);
      }

      self->_persistentStoreLock._os_unfair_lock_opaque = 0;
      persistentStore = [(SYService *)self persistentStore];
      v13 = persistentStore != 0;

      if (v13)
      {
        v14 = [SYVectorClock alloc];
        persistentStore2 = [(SYService *)self persistentStore];
        vectorClockJSON = [persistentStore2 vectorClockJSON];
        v17 = [(SYVectorClock *)v14 initWithJSONRepresentation:vectorClockJSON];
        vectorClock = self->_vectorClock;
        self->_vectorClock = v17;

        if (![(SYVectorClock *)self->_vectorClock clocksCount])
        {
          v19 = self->_vectorClock;
          peerID = [(SYService *)self peerID];
          [(SYVectorClock *)v19 incrementClockForPeerID:peerID];

          [(SYService *)self _vectorClockUpdated];
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v21 = _sync_log_facilities;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          peerID2 = [(SYService *)self peerID];
          persistentStore3 = [(SYService *)self persistentStore];
          vectorClockJSON2 = [persistentStore3 vectorClockJSON];
          *buf = 138543618;
          v31 = peerID2;
          v32 = 2114;
          v33 = vectorClockJSON2;
          _os_log_impl(&dword_1DF835000, v21, OS_LOG_TYPE_DEFAULT, "SYService persistent store initialized. PeerID = %{public}@, vector clock = %{public}@.", buf, 0x16u);
        }

        goto LABEL_27;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
      {
        [SYService _initializeServiceDB:];
      }

      if (b)
      {
        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v34 = *MEMORY[0x1E696A578];
        v35 = @"Failed to create persistent store";
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *b = [v27 initWithSYError:2001 userInfo:v21];
LABEL_27:

        goto LABEL_29;
      }
    }

    v13 = 0;
    goto LABEL_29;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
  {
    [SYService _initializeServiceDB:];
  }

  if (b)
  {
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = *MEMORY[0x1E696A578];
    v39[0] = @"No pairing store path is available, which usually indicates we are not paired.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v26 = [v25 initWithSYError:2003 userInfo:v8];
    v13 = 0;
    *b = v26;
LABEL_29:

    goto LABEL_30;
  }

  v13 = 0;
LABEL_30:

  os_activity_scope_leave(&v29);
  return v13;
}

- (void)_vectorClockUpdated
{
  dispatch_assert_queue_V2(self->_queue);
  jsonRepresentation = [(SYVectorClock *)self->_vectorClock jsonRepresentation];
  persistentStore = [(SYService *)self persistentStore];
  [persistentStore setVectorClockJSON:jsonRepresentation];
}

- (id)_makeSyncEngineOfType:(unsigned int)type
{
  v3 = off_1E86C9778;
  if (type != 2)
  {
    v3 = off_1E86C97B0;
  }

  v4 = [objc_alloc(*v3) initWithService:self queue:self->_queue];

  return v4;
}

- (BOOL)_initializeMessaging:(id *)messaging
{
  v5 = _os_activity_create(&dword_1DF835000, "SYService Sync Engine Setup", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  v15.opaque[0] = 0;
  v15.opaque[1] = 0;
  os_activity_scope_enter(v5, &v15);
  os_unfair_lock_lock(&self->_flagLock);
  self->_flags = (*&self->_flags & 0xFFFFC7FF | ((self->_engineType & 7) << 11));
  os_unfair_lock_unlock(&self->_flagLock);
  syncEngine = self->_syncEngine;
  if (!syncEngine)
  {
    os_unfair_lock_lock(&self->_flagLock);
    flags = self->_flags;
    os_unfair_lock_unlock(&self->_flagLock);
    if ((*&flags & 0x1C0) == 0x40)
    {
      v8 = [(SYService *)self _makeSyncEngineOfType:1];
      v9 = self->_syncEngine;
      self->_syncEngine = v8;

      os_unfair_lock_lock(&self->_flagLock);
      v10 = 0x4000;
    }

    else
    {
      v11 = [(SYService *)self _makeSyncEngineOfType:self->_engineType];
      v12 = self->_syncEngine;
      self->_syncEngine = v11;

      os_unfair_lock_lock(&self->_flagLock);
      v10 = (self->_engineType & 7) << 14;
    }

    self->_flags = (*&self->_flags & 0xFFFE3FFF | v10);
    os_unfair_lock_unlock(&self->_flagLock);
    [(SYSyncEngine *)self->_syncEngine setResponder:self];
    syncEngine = self->_syncEngine;
  }

  v13 = [(SYSyncEngine *)syncEngine resume:messaging];

  os_activity_scope_leave(&v15);
  return v13;
}

- (void)_swapEngineTo:(unsigned int)to
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1DF835000, "SYService Sync Engine Swap", self->_serviceActivity, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  p_syncEngine = &self->_syncEngine;
  syncEngine = self->_syncEngine;
  v8 = syncEngine;
  [(SYSyncEngine *)v8 suspend];
  v9 = self->_syncEngine;
  self->_syncEngine = 0;

  v10 = off_1E86C9778;
  if (to != 2)
  {
    v10 = off_1E86C97B0;
  }

  v11 = [objc_alloc(*v10) initWithService:self queue:self->_queue];
  v12 = self->_syncEngine;
  self->_syncEngine = v11;

  [(SYSyncEngine *)self->_syncEngine setResponder:self];
  v13 = *p_syncEngine;
  v34 = 0;
  v14 = [(SYSyncEngine *)v13 resume:&v34];
  v15 = v34;
  if (v14)
  {
    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFE3FFF | ((to & 7) << 14));
    os_unfair_lock_unlock(&self->_flagLock);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v16, OS_LOG_TYPE_DEFAULT, "Returning to original engine after swap error", buf, 2u);
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v17 = _sync_log_facilities;
    if (os_log_type_enabled(v17, 0x90u))
    {
      _SYObfuscate(v15);
      objc_claimAutoreleasedReturnValue();
      [SYService _swapEngineTo:];
    }

    objc_storeStrong(&self->_syncEngine, syncEngine);
    v18 = *p_syncEngine;
    v33 = 0;
    v19 = [(SYSyncEngine *)v18 resume:&v33];
    v15 = v33;
    if (!v19)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v20 = _sync_log_facilities;
      if (os_log_type_enabled(v20, 0x90u))
      {
        _SYObfuscate(v15);
        objc_claimAutoreleasedReturnValue();
        [SYService _swapEngineTo:];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        delegateQueue = self->_delegateQueue;
        v27 = MEMORY[0x1E69E9820];
        v28 = 3221225472;
        v29 = __27__SYService__swapEngineTo___block_invoke;
        v30 = &unk_1E86C9E90;
        selfCopy = self;
        v32 = v15;
        v24 = delegateQueue;
        v25 = [&v27 copy];
        *buf = MEMORY[0x1E69E9820];
        v37 = 3221225472;
        v38 = ___dispatch_async_autoreleased_block_invoke;
        v39 = &unk_1E86CAA90;
        v40 = v25;
        v26 = v25;
        dispatch_async(v24, buf);
      }

      [(SYService *)self suspend:v27];
    }
  }

  os_activity_scope_leave(&state);
}

void __27__SYService__swapEngineTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained service:*(a1 + 32) encounteredError:*(a1 + 40) context:0];
}

- (void)_upgradeEngineTo:(unsigned int)to
{
  v3 = *&to;
  currentSession = [(SYService *)self currentSession];

  if (currentSession)
  {
    currentSession2 = [(SYService *)self currentSession];
    [currentSession2 cancel];

    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __30__SYService__upgradeEngineTo___block_invoke;
    v7[3] = &unk_1E86CA840;
    objc_copyWeak(&v8, &location);
    v9 = v3;
    [(SYService *)self _whenSessionEnds:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  [(SYService *)self _swapEngineTo:v3];
}

void __30__SYService__upgradeEngineTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _upgradeEngineTo:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_downgradeEngineForVersion:(int)version
{
  currentSession = [(SYService *)self currentSession];

  if (currentSession)
  {
    currentSession2 = [(SYService *)self currentSession];
    [currentSession2 cancel];

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__SYService__downgradeEngineForVersion___block_invoke;
    v8[3] = &unk_1E86CA840;
    objc_copyWeak(&v9, &location);
    versionCopy = version;
    [(SYService *)self _whenSessionEnds:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  if (version == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [(SYService *)self _swapEngineTo:v7];
}

void __40__SYService__downgradeEngineForVersion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _downgradeEngineForVersion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_suspend
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == YES", v2, v3, v4, v5, 0);
  }
}

- (void)_copyPeerClockFromMessageHeaderIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  vectorClock = self->_vectorClock;
  v11 = necessaryCopy;
  sender = [necessaryCopy sender];
  LOBYTE(vectorClock) = [(SYVectorClock *)vectorClock hasClockForPeer:sender];

  if ((vectorClock & 1) == 0)
  {
    v7 = self->_vectorClock;
    state = [v11 state];
    sender2 = [v11 sender];
    v10 = [state clockForPeer:sender2];
    [(SYVectorClock *)v7 addClocks:v10];

    [(SYService *)self _vectorClockUpdated];
  }
}

- (id)_newMessageHeader
{
  v3 = objc_opt_new();
  [v3 setTimestamp:CFAbsoluteTimeGetCurrent()];
  v4 = [SYPeer alloc];
  peerID = [(SYService *)self peerID];
  v6 = [(SYPeer *)v4 initWithPeerID:peerID generation:self->_generationID];
  [v3 setSender:v6];

  v7 = [(SYVectorClock *)self->_vectorClock copy];
  [v3 setState:v7];

  [v3 setVersion:(*&self->_flags >> 6) & 7];
  persistentStore = [(SYService *)self persistentStore];
  [v3 setSequenceNumber:{objc_msgSend(persistentStore, "nextSequenceNumber")}];

  return v3;
}

- (void)sessionDidEnd:(id)end withError:(id)error
{
  endCopy = end;
  errorCopy = error;
  if (self->_currentSession == endCopy)
  {
LABEL_11:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegateQueue = self->_delegateQueue;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __37__SYService_sessionDidEnd_withError___block_invoke;
      v20[3] = &unk_1E86CA0F8;
      v20[4] = self;
      v13 = &v21;
      v21 = endCopy;
      v22 = errorCopy;
      v14 = delegateQueue;
      v15 = [v20 copy];
      *buf = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = ___dispatch_async_autoreleased_block_invoke;
      v26 = &unk_1E86CAA90;
      v27 = v15;
      v16 = v15;
      dispatch_async(v14, buf);
    }

    else
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__SYService_sessionDidEnd_withError___block_invoke_2;
      block[3] = &unk_1E86C9E90;
      block[4] = self;
      v13 = &v19;
      v19 = endCopy;
      dispatch_async(queue, block);
    }

    goto LABEL_15;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
  {
    [SYService sessionDidEnd:v8 withError:?];
  }

  if (!self->_currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "The current session is nil, so I'll inform the delegate anyway", buf, 2u);
    }

    goto LABEL_11;
  }

LABEL_15:
}

void __37__SYService_sessionDidEnd_withError___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:sessionEnded:error:", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] sessionEnded:a1[5] error:a1[6]];

  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SYService_sessionDidEnd_withError___block_invoke_151;
  v7[3] = &unk_1E86C9E90;
  v7[4] = v5;
  v8 = v4;
  dispatch_async(v6, v7);
}

- (void)_wrapUpCurrentSession:(id)session
{
  v55 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    if ([(SYSession *)sessionCopy isResetSync])
    {
      v7 = "reset";
    }

    else
    {
      v7 = "delta";
    }

    name = [(SYService *)self name];
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = name;
    _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_INFO, "Wrapping up %s session for service %{public}@", buf, 0x16u);
  }

  if (self->_currentSession == sessionCopy)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(SYSession *)sessionCopy birthDate];
    v15 = Current - v14;
    if (v15 < 0.0)
    {
      v16 = MEMORY[0x1E695DF00];
      [(SYSession *)sessionCopy birthDate];
      v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v18 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [(SYService *)v17 _wrapUpCurrentSession:v18];
      }
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v19 = qword_1EDE73450;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sessionSignpost = [(SYSession *)sessionCopy sessionSignpost];
      if ([(SYSession *)sessionCopy isResetSync])
      {
        v21 = "Reset";
      }

      else
      {
        v21 = "Delta";
      }

      identifier = [(SYSession *)sessionCopy identifier];
      name2 = [(SYService *)self name];
      reason = [(SYSession *)sessionCopy reason];
      if (reason)
      {
        reason2 = [(SYSession *)sessionCopy reason];
      }

      else
      {
        reason2 = @"-";
      }

      *buf = 134219266;
      *&buf[4] = sessionSignpost;
      *&buf[12] = 2080;
      *&buf[14] = v21;
      v47 = 2114;
      v48 = identifier;
      v49 = 2114;
      v50 = name2;
      v51 = 2114;
      v52 = reason2;
      v53 = 2048;
      v54 = v15;
      _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "End signpost %llu: %s session with identifier %{public}@ for service %{public}@ (reason '%{public}@') completed in %.04f seconds.", buf, 0x3Eu);
      if (reason)
      {
      }
    }

    [(SYSession *)sessionCopy isSending];
    [(SYSyncEngine *)self->_syncEngine endSession];
    currentSession = self->_currentSession;
    self->_currentSession = 0;

    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(self->_serviceActivity, buf);
    os_unfair_lock_lock(&self->_flagLock);
    if ([(NSMutableArray *)self->_onSessionEnd count])
    {
      v27 = [(NSMutableArray *)self->_onSessionEnd copy];
      [(NSMutableArray *)self->_onSessionEnd removeAllObjects];
    }

    else
    {
      v27 = 0;
    }

    os_unfair_lock_unlock(&self->_flagLock);
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v29)
    {
      v30 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v28);
          }

          (*(*(*(&v41 + 1) + 8 * i) + 16))();
        }

        v29 = [v28 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    queuedStartSession = self->_queuedStartSession;
    if (queuedStartSession)
    {
      v33 = queuedStartSession;
      v34 = self->_queuedStartSession;
      self->_queuedStartSession = 0;

      objc_initWeak(&location, self);
      queue = self->_queue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __35__SYService__wrapUpCurrentSession___block_invoke;
      v37[3] = &unk_1E86CA868;
      objc_copyWeak(&v39, &location);
      v37[4] = self;
      v38 = v33;
      v36 = v33;
      dispatch_async(queue, v37);

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      [(_SYMultiSuspendableQueue *)self->_sessionQueue resume];
    }

    os_activity_scope_leave(buf);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      identifier2 = [(SYSession *)sessionCopy identifier];
      identifier3 = [(SYSession *)self->_currentSession identifier];
      *buf = 138543618;
      *&buf[4] = identifier2;
      *&buf[12] = 2114;
      *&buf[14] = identifier3;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Wrapping up session %{public}@ is not the current session (%{public}@)", buf, 0x16u);
    }

    [(_SYMultiSuspendableQueue *)self->_sessionQueue resume];
  }
}

void __35__SYService__wrapUpCurrentSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(*(a1 + 32) + 64);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __35__SYService__wrapUpCurrentSession___block_invoke_2;
    v5[3] = &unk_1E86C9E90;
    v5[4] = WeakRetained;
    v6 = *(a1 + 40);
    dispatch_async(v4, v5);
  }
}

void __35__SYService__wrapUpCurrentSession___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) request];
  v4 = [*(a1 + 40) completion];
  [v2 _handleStartSession:v3 completion:v4];

  if (([*(*(a1 + 32) + 80) isSuspended] & 1) == 0)
  {
    __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1();
  }

  [*(*(a1 + 32) + 80) resume];
  if (([*(*(a1 + 32) + 80) isSuspended] & 1) == 0)
  {
    __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1();
  }
}

- (void)sessionFailedToCancelMessageUUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    persistentStore = [(SYService *)self persistentStore];
    [persistentStore addMessageIDsToIgnore:dsCopy];
  }
}

- (id)_chooseBetweenCollidingSessions:(id)sessions :(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  v7 = a4;
  isResetSync = [sessionsCopy isResetSync];
  isResetSync2 = [v7 isResetSync];
  if (isResetSync != isResetSync2)
  {
    v10 = [sessionsCopy isResetSync] ? v7 : sessionsCopy;
    isResetSync2 = v10;
    v11 = isResetSync2;
    if (isResetSync2)
    {
      goto LABEL_22;
    }
  }

  v12 = (*&self->_flags >> 6) & 7;
  if (v12 < 2)
  {
    if (v12 != 1)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }

    [v7 birthDate];
    v23 = v22;
    [sessionsCopy birthDate];
    v21 = v23 - v24;
  }

  else
  {
    v13 = _SessionIdentifierDateFormatter(isResetSync2);
    identifier = [sessionsCopy identifier];
    v15 = [v13 dateFromString:identifier];

    v17 = _SessionIdentifierDateFormatter(v16);
    identifier2 = [v7 identifier];
    v19 = [v17 dateFromString:identifier2];

    [v15 timeIntervalSinceDate:v19];
    v21 = v20;
  }

  v25 = v7;
  if (v21 <= 1.0)
  {
    v25 = sessionsCopy;
    if (v21 >= -1.0)
    {
      goto LABEL_16;
    }
  }

  v26 = v25;
  v11 = v26;
  if (!v26 || ![v26 hasRejectedPeerSession])
  {
LABEL_17:
    [v11 setHasRejectedPeerSession:1];
    if (v11)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v11 == sessionsCopy)
  {
    v27 = v7;
  }

  else
  {
    v27 = sessionsCopy;
  }

  v42 = v27;

  v11 = v42;
  if (!v42)
  {
LABEL_18:
    isMasterStore = [(SYService *)self isMasterStore];
    if ([sessionsCopy isSending] != isMasterStore)
    {
      v29 = sessionsCopy;
    }

    else
    {
      v29 = v7;
    }

    v11 = v29;
  }

LABEL_22:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v32 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
    {
      [SYService _chooseBetweenCollidingSessions:v32];
    }

    if (v11 == sessionsCopy)
    {
      v33 = v7;
    }

    else
    {
      v33 = sessionsCopy;
    }

    v34 = v33;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__5;
    v55 = __Block_byref_object_dispose__5;
    v56 = 0;
    delegateQueue = self->_delegateQueue;
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __46__SYService__chooseBetweenCollidingSessions::__block_invoke;
    v46 = &unk_1E86CA890;
    v50 = &v51;
    selfCopy = self;
    v11 = v11;
    v48 = v11;
    v36 = v34;
    v49 = v36;
    v37 = &v43;
    *&block = MEMORY[0x1E69E9820];
    *(&block + 1) = 3221225472;
    v58 = ___dispatch_sync_autoreleased_block_invoke;
    v59 = &unk_1E86CAA90;
    v60 = v37;
    dispatch_sync(delegateQueue, &block);

    if (v52[5] == v36)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v38 = qword_1EDE73420;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [v52[5] identifier];
        LODWORD(block) = 138543362;
        *(&block + 4) = identifier3;
        _os_log_impl(&dword_1DF835000, v38, OS_LOG_TYPE_DEFAULT, "Delegate vetoed our decision. Session %{public}@ is now the winner", &block, 0xCu);
      }

      v40 = v52[5];
      v11 = v40;
    }

    _Block_object_dispose(&v51, 8);
  }

  return v11;
}

void __46__SYService__chooseBetweenCollidingSessions::__block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:willPreferSession:overSession:", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v4 = [WeakRetained service:a1[4] willPreferSession:a1[5] overSession:a1[6]];
  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)_shouldSession:(id)session fromPeer:(id)peer supercedeSession:(id)supercedeSession ofAge:(double)age collisionDetected:(BOOL *)detected
{
  sessionCopy = session;
  peerCopy = peer;
  supercedeSessionCopy = supercedeSession;
  state = [supercedeSessionCopy state];
  switch(state)
  {
    case 0:
      goto LABEL_4;
    case 7:
      buffersSessions = [(SYSyncEngine *)self->_syncEngine buffersSessions];
      if (buffersSessions)
      {
        buffersSessions = [(SYSyncEngine *)self->_syncEngine buffersHandshake];
      }

      break;
    case 6:
LABEL_4:
      buffersSessions = 1;
      break;
    default:
      buffersSessions = 0;
      break;
  }

  if (detected)
  {
    *detected = buffersSessions;
  }

  if (buffersSessions && self->_sessionStalenessInterval > age)
  {
    identifier = [(SYService *)self _chooseBetweenCollidingSessions:sessionCopy];
    if (identifier == sessionCopy)
    {
      v18 = 1;
    }

    else
    {
      v18 = [supercedeSessionCopy _willAcquiesceToNewSessionFromPeer:peerCopy];
    }

    goto LABEL_21;
  }

  if ([supercedeSessionCopy _willAcquiesceToNewSessionFromPeer:peerCopy])
  {
    v18 = 1;
  }

  else if (self->_sessionStalenessInterval <= age)
  {
    v19 = (*&self->_flags >> 6) & 7;
    if (v19 >= 2)
    {
      identifier = [sessionCopy identifier];
      identifier2 = [supercedeSessionCopy identifier];
      v18 = [identifier compare:identifier2] == 1;

LABEL_21:
      goto LABEL_28;
    }

    v18 = age > 1800.0 && v19 == 1;
  }

  else
  {
    v18 = 0;
  }

LABEL_28:

  return v18;
}

- (void)_postVersionRejectionMessageForMessageWithID:(id)d
{
  dCopy = d;
  queue = [(SYService *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke;
  v7[3] = &unk_1E86C9E90;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_new();
  v3 = [*(a1 + 32) _newMessageHeader];
  [v4 setHeader:v3];

  [v4 setInReplyTo:*(a1 + 40)];
  [v4 setSupportedVersions:&_postVersionRejectionMessageForMessageWithID__supportedVersions count:2];
  [*(*(a1 + 32) + 112) enqueueSyncRequest:v4 withMessageID:0x7FFFLL priority:objc_msgSend(*(a1 + 32) options:"priority") userContext:0 callback:{0, &__block_literal_global_159}];
}

void __58__SYService__postVersionRejectionMessageForMessageWithID___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (a2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Enqueued version rejection message with ID %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = _SYObfuscate(v7);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Failed to enqueue version rejection message: %{public}@", &v12, 0xCu);
    }
  }
}

- (NSDictionary)extraTransportOptions
{
  currentSession = [(SYService *)self currentSession];
  options = [(SYService *)self options];
  if (currentSession)
  {
    options2 = [currentSession options];
    v6 = CoalesceOptionDictionaries(options, options2);

    options = v6;
  }

  return options;
}

- (BOOL)willAcceptMessageWithHeader:(id)header messageID:(id)d
{
  v51 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  dCopy = d;
  sequenceNumber = [headerCopy sequenceNumber];
  if ([headerCopy version] <= 2 && objc_msgSend(headerCopy, "version"))
  {
    persistentStore = [(SYService *)self persistentStore];
    v10 = [persistentStore shouldIgnoreMessageID:dCopy];

    if (v10)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v11 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 138543362;
        v46 = dCopy;
        _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring message ID %{public}@, it's in the 'cancellation failed' list", &v45, 0xCu);
      }

      persistentStore2 = [(SYService *)self persistentStore];
      [persistentStore2 removeMessageIDFromIgnoreList:dCopy];

      goto LABEL_10;
    }

    v15 = (*&self->_flags >> 6) & 7;
    if (v15 != [headerCopy version])
    {
      self->_flags = (*&self->_flags & 0xFFFFFE3F | (([headerCopy version] & 7) << 6));
    }

    v16 = MEMORY[0x1E695DF00];
    [headerCopy timestamp];
    v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
    persistentStore3 = [(SYService *)self persistentStore];
    lastMessageReceived = [persistentStore3 lastMessageReceived];

    persistentStore4 = [(SYService *)self persistentStore];
    sender = [headerCopy sender];
    peerID = [sender peerID];
    v23 = [persistentStore4 sequenceNumberIsDuplicate:sequenceNumber forPeer:peerID];

    if (v23)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v24 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 138543618;
        v46 = dCopy;
        v47 = 2048;
        v48 = sequenceNumber;
        _os_log_impl(&dword_1DF835000, v24, OS_LOG_TYPE_DEFAULT, "Possible duplicate message %{public}@ received with seqno %llu. Comparing timestamps.", &v45, 0x16u);
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v25 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v26 = MEMORY[0x1E695DF00];
        v27 = v25;
        [headerCopy timestamp];
        v28 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
        v45 = 138543618;
        v46 = v28;
        v47 = 2114;
        v48 = lastMessageReceived;
        _os_log_impl(&dword_1DF835000, v27, OS_LOG_TYPE_DEFAULT, "This message timestamp = %{public}@ vs. last message timestamp = %{public}@", &v45, 0x16u);
      }

      if ([v17 compare:lastMessageReceived] != 1)
      {
        v44 = +[SYTransportLog sharedInstance];
        oslog = [v44 oslog];

        if (os_log_type_enabled(oslog, 0x90u))
        {
          [(SYService *)dCopy willAcceptMessageWithHeader:sequenceNumber messageID:oslog];
        }

        v13 = 0;
        goto LABEL_46;
      }

      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v29 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v45) = 0;
        _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_DEFAULT, "Sequence numbers were reset; clearing our received seqno set.", &v45, 2u);
      }

      persistentStore5 = [(SYService *)self persistentStore];
      sender2 = [headerCopy sender];
      peerID2 = [sender2 peerID];
      [persistentStore5 resetSequenceNumbersForPeer:peerID2];
    }

    persistentStore6 = [(SYService *)self persistentStore];
    sender3 = [headerCopy sender];
    peerID3 = [sender3 peerID];
    v36 = [persistentStore6 lastSequenceNumberForPeerID:peerID3];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v37 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
    {
      v45 = 134218240;
      v46 = sequenceNumber;
      v47 = 2048;
      v48 = v36;
      _os_log_impl(&dword_1DF835000, v37, OS_LOG_TYPE_INFO, "Received seqno=%llu, last seen=%llu", &v45, 0x16u);
    }

    if (sequenceNumber != v36 + 1)
    {
      v38 = +[SYTransportLog sharedInstance];
      oslog2 = [v38 oslog];

      if (os_log_type_enabled(oslog2, 0x90u))
      {
        v45 = 138543874;
        v46 = dCopy;
        v47 = 2048;
        v48 = sequenceNumber;
        v49 = 2048;
        v50 = v36;
        _os_log_error_impl(&dword_1DF835000, oslog2, 0x90u, "Out of order delivery or dropped message detected on receipt of message with ID %{public}@. Message sequence number = %llu, last received sequence number = %llu", &v45, 0x20u);
      }
    }

    if ([headerCopy version] >= 3)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v40 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYService willAcceptMessageWithHeader:v40 messageID:?];
      }
    }

    v41 = MEMORY[0x1E695DF00];
    [headerCopy timestamp];
    oslog = [v41 dateWithTimeIntervalSinceReferenceDate:?];
    persistentStore7 = [(SYService *)self persistentStore];
    [persistentStore7 setLastMessageReceived:oslog];

    v13 = 1;
LABEL_46:

    goto LABEL_11;
  }

  [(SYService *)self _postVersionRejectionMessageForMessageWithID:dCopy];
LABEL_10:
  v13 = 0;
LABEL_11:

  return v13;
}

- (void)handleSyncRequest:(id)request ofType:(unsigned __int16)type response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  incomingIOQueue = self->_incomingIOQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SYService_handleSyncRequest_ofType_response___block_invoke;
  v13[3] = &unk_1E86CA8D8;
  typeCopy = type;
  v13[4] = self;
  v14 = requestCopy;
  v15 = responseCopy;
  v11 = responseCopy;
  v12 = requestCopy;
  dispatch_async(incomingIOQueue, v13);
}

uint64_t __47__SYService_handleSyncRequest_ofType_response___block_invoke(uint64_t a1)
{
  v3 = a1 + 56;
  v2 = *(a1 + 56);
  if (v2 > 0x64)
  {
    if (*(a1 + 56) > 0x67u)
    {
      switch(v2)
      {
        case 0x68u:
          v26 = *(a1 + 32);
          v27 = *(a1 + 40);
          v28 = *(a1 + 48);

          return [v26 _handleRestartSession:v27 completion:v28];
        case 0x69u:
          v38 = *(a1 + 32);
          v39 = *(a1 + 40);
          v40 = *(a1 + 48);

          return [v38 _handleEndSession:v39 completion:v40];
        case 0x7FFFu:
          v14 = *(a1 + 32);
          v15 = *(a1 + 40);
          v16 = *(a1 + 48);

          return [v14 _peerRejectedVersion:v15 completion:v16];
      }
    }

    else
    {
      switch(v2)
      {
        case 'e':
          v20 = *(a1 + 32);
          v21 = *(a1 + 40);
          v22 = *(a1 + 48);

          return [v20 _handleResetRequest:v21 completion:v22];
        case 'f':
          v32 = *(a1 + 32);
          v33 = *(a1 + 40);
          v34 = *(a1 + 48);

          return [v32 _handleStartSession:v33 completion:v34];
        case 'g':
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v10 = *(a1 + 48);

          return [v8 _handleSyncBatch:v9 completion:v10];
      }
    }

LABEL_52:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v41 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, 0x90u))
    {
      __47__SYService_handleSyncRequest_ofType_response___block_invoke_cold_2(v3, a1, v41);
    }

    return (*(*(a1 + 48) + 16))();
  }

  if (*(a1 + 56) > 3u)
  {
    switch(v2)
    {
      case 4u:
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);

        return [v23 _v1_handleBatchSyncChunk:v24 completion:v25];
      case 5u:
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v37 = *(a1 + 48);

        return [v35 _v1_handleBatchSyncEnd:v36 completion:v37];
      case 6u:
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);

        return [v11 _v1_handleChangeMessage:v12 completion:v13];
    }

    goto LABEL_52;
  }

  switch(v2)
  {
    case 1u:
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);

      return [v17 _v1_handleFullSyncRequest:v18 completion:v19];
    case 2u:
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);

      return [v29 _v1_handleSyncAllObjects:v30 completion:v31];
    case 3u:
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);

      return [v4 _v1_handleBatchSyncStart:v5 completion:v6];
    default:
      goto LABEL_52;
  }
}

- (void)handleSyncResponse:(id)response ofType:(unsigned __int16)type completion:(id)completion
{
  responseCopy = response;
  completionCopy = completion;
  incomingIOQueue = self->_incomingIOQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__SYService_handleSyncResponse_ofType_completion___block_invoke;
  v13[3] = &unk_1E86CA8D8;
  typeCopy = type;
  v13[4] = self;
  v14 = responseCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = responseCopy;
  dispatch_async(incomingIOQueue, v13);
}

void __50__SYService_handleSyncResponse_ofType_completion___block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 56);
  if (v3 <= 0x64)
  {
    if (*(a1 + 56) > 3u)
    {
      if (v3 == 4)
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v38 = 0;
        v6 = [v14 _v1_handleBatchChunkAck:v15 error:&v38];
        v7 = v38;
        goto LABEL_22;
      }

      if (v3 != 5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v39 = 0;
        v6 = [v12 _v1_handleFullSyncRequestAck:v13 error:&v39];
        v7 = v39;
        goto LABEL_22;
      }

      if (v3 != 2)
      {
        goto LABEL_23;
      }
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v37 = 0;
    v6 = [v8 _v1_handleBatchEndResponse:v9 error:&v37];
    v7 = v37;
    goto LABEL_22;
  }

  if (*(a1 + 56) <= 0x66u)
  {
    if (v3 == 101)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v36 = 0;
      v6 = [v18 _handleResetResponse:v19 error:&v36];
      v7 = v36;
    }

    else
    {
      if (v3 != 102)
      {
        goto LABEL_23;
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v35 = 0;
      v6 = [v10 _handleStartSessionResponse:v11 error:&v35];
      v7 = v35;
    }

LABEL_22:
    v2 = v7;
    if (v6)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  switch(v3)
  {
    case 'g':
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v34 = 0;
      v6 = [v16 _handleSyncBatchResponse:v17 error:&v34];
      v7 = v34;
      goto LABEL_22;
    case 'h':
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v33 = 0;
      v6 = [v20 _handleRestartSessionResponse:v21 error:&v33];
      v7 = v33;
      goto LABEL_22;
    case 'i':
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v32 = 0;
      v6 = [v4 _handleEndSessionResponse:v5 error:&v32];
      v7 = v32;
      goto LABEL_22;
  }

LABEL_23:
  if (*(a1 + 56) - 102 <= 2 && ([*(a1 + 40) hasError] & 1) == 0)
  {
    v22 = objc_opt_new();
    v23 = [*(a1 + 32) _newMessageHeader];
    [v22 setHeader:v23];

    v24 = [*(a1 + 40) sessionID];
    [v22 setSessionID:v24];

    v25 = [SYErrorInfo alloc];
    v26 = v25;
    if (v2)
    {
      v27 = [(SYErrorInfo *)v25 initWithError:v2];
      [v22 setError:v27];
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
      v28 = [(SYErrorInfo *)v26 initWithError:v27];
      [v22 setError:v28];
    }

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v29 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
    {
      v31[0] = 0;
      _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_INFO, "Enqueueing end-session message to cancel an orphaned receiving session on peer.", v31, 2u);
    }

    v30 = [*(a1 + 32) syncEngine];
    [v30 enqueueSyncRequest:v22 withMessageID:105 priority:objc_msgSend(*(a1 + 32) options:"priority") userContext:0 callback:{0, &__block_literal_global_165}];
  }

LABEL_33:
  (*(*(a1 + 48) + 16))();
}

void __50__SYService_handleSyncResponse_ofType_completion___block_invoke_163(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v7 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Enqueued end-session message to orphaned session on peer.", v8, 2u);
  }
}

- (void)handleOutOfBandData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__SYService_handleOutOfBandData_completion___block_invoke;
    v15[3] = &unk_1E86CA1B8;
    v16 = WeakRetained;
    selfCopy = self;
    v18 = dataCopy;
    v19 = completionCopy;
    v10 = delegateQueue;
    v11 = [v15 copy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_async_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v21 = v11;
    v12 = v11;
    dispatch_async(v10, block);

    v13 = v16;
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v14 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "SYService received OOB data, but delegate doesn't support it", block, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

uint64_t __44__SYService_handleOutOfBandData_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:incomingData:completion:", v4, 2u);
  }

  return [*(a1 + 32) service:*(a1 + 40) incomingData:*(a1 + 48) completion:*(a1 + 56)];
}

- (id)_claimOwnershipOfFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v8 = [path stringByAppendingPathComponent:@"SYFileTransfer-XXXXX"];

  v9 = strdup([v8 UTF8String]);
  v10 = mkdtemp(v9);
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v10 isDirectory:1 relativeToURL:0];
    free(v9);
    lastPathComponent = [lCopy lastPathComponent];
    v13 = [v11 URLByAppendingPathComponent:lastPathComponent];

    if (link([lCopy fileSystemRepresentation], objc_msgSend(v13, "fileSystemRepresentation")))
    {
      v14 = __error();
      if (error)
      {
        v15 = *v14;
        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = [v16 initWithDomain:*MEMORY[0x1E696A798] code:v15 userInfo:0];
        v18 = 0;
        *error = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v13;
    }
  }

  else
  {
    v19 = __error();
    if (error)
    {
      v20 = *v19;
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = 0;
      *error = [v21 initWithDomain:*MEMORY[0x1E696A798] code:v20 userInfo:0];
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (void)handleFileTransfer:(id)transfer metadata:(id)metadata completion:(id)completion
{
  transferCopy = transfer;
  metadataCopy = metadata;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v25 = 0;
    v12 = [(SYService *)self _claimOwnershipOfFileAtURL:transferCopy error:&v25];
    v13 = v25;
    if (v12)
    {
      delegateQueue = self->_delegateQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __52__SYService_handleFileTransfer_metadata_completion___block_invoke;
      v19[3] = &unk_1E86CA928;
      v20 = v12;
      v21 = WeakRetained;
      selfCopy = self;
      v23 = metadataCopy;
      v24 = completionCopy;
      v15 = delegateQueue;
      v16 = [v19 copy];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___dispatch_async_autoreleased_block_invoke;
      block[3] = &unk_1E86CAA90;
      v27 = v16;
      v17 = v16;
      dispatch_async(v15, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v18 = _sync_log_facilities;
    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_1DF835000, v18, OS_LOG_TYPE_DEFAULT, "SYService received OOB file transfer, but delegate doesn't support it", block, 2u);
    }

    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2008 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = _sync_log_facilities;
  if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:incomingStream:metadata:completion:", buf, 2u);
  }

  v3 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:*(a1 + 32)];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175;
  v7[3] = &unk_1E86CA900;
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  [v4 service:v5 incomingStream:v3 metadata:v6 completion:v7];
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [*(a1 + 32) URLByDeletingLastPathComponent];
  v9 = 0;
  v7 = [v5 removeItemAtURL:v6 error:&v9];
  v8 = v9;

  if ((v7 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, OS_LOG_TYPE_ERROR))
    {
      __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175_cold_2();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleSyncError:(id)error forMessageWithIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  identifierCopy = identifier;
  if (identifierCopy && (-[SYService persistentStore](self, "persistentStore"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldIgnoreMessageID:identifierCopy], v8, v9))
  {
    persistentStore = [(SYService *)self persistentStore];
    [persistentStore removeMessageIDFromIgnoreList:identifierCopy];

    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v11 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = identifierCopy;
      v25 = 2114;
      v26 = errorCopy;
      _os_log_impl(&dword_1DF835000, v11, OS_LOG_TYPE_DEFAULT, "Received expected error for message ID %{public}@, will ignore it. Error is %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = errorCopy;
      _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Sync error occurred: %@", buf, 0xCu);
    }

    persistentUserInfo = [errorCopy persistentUserInfo];
    v14 = persistentUserInfo;
    if (persistentUserInfo)
    {
      v15 = [persistentUserInfo objectForKeyedSubscript:0x1F5ACCE40];
    }

    else
    {
      userInfo = [errorCopy userInfo];
      v15 = [userInfo objectForKeyedSubscript:0x1F5ACCE40];
    }

    queue = self->_queue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__SYService_handleSyncError_forMessageWithIdentifier___block_invoke;
    v19[3] = &unk_1E86CA728;
    v19[4] = self;
    v20 = v15;
    v21 = identifierCopy;
    v22 = errorCopy;
    v18 = v15;
    dispatch_async(queue, v19);
  }
}

void __54__SYService_handleSyncError_forMessageWithIdentifier___block_invoke(void *a1)
{
  v5 = *(a1[4] + 40);
  if (v5 && a1[5] && ([v5 identifier], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", a1[5]), v2, v4 = v5, v3))
  {
    if (a1[6])
    {
      [v5 _clearOutgoingMessageUUID:?];
      v4 = v5;
    }
  }

  else
  {
    v4 = a1[4];
  }

  [v4 _handleError:a1[7]];
}

- (void)enqueuedMessageWithID:(id)d context:(id)context
{
  dCopy = d;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__SYService_enqueuedMessageWithID_context___block_invoke;
  v8[3] = &unk_1E86C9E90;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  dispatch_async(queue, v8);
}

void __43__SYService_enqueuedMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSession];
  if (v2)
  {
    v3 = v2;
    [v2 _recordOutgoingMessageUUID:*(a1 + 40)];
    v2 = v3;
  }
}

- (void)sentMessageWithID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SYService_sentMessageWithID_context___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v12 = dCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __39__SYService_sentMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  [v2 removeMessageIDFromIgnoreList:*(a1 + 40)];

  v3 = [*(a1 + 32) currentSession];
  if (v3)
  {
    v4 = v3;
    [v3 _sentMessageWithIdentifier:*(a1 + 40) userInfo:*(a1 + 48)];
    v3 = v4;
  }
}

- (void)deliveredMessageWithID:(id)d context:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SYService_deliveredMessageWithID_context___block_invoke;
  block[3] = &unk_1E86CA0F8;
  block[4] = self;
  v12 = dCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __44__SYService_deliveredMessageWithID_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStore];
  [v2 removeMessageIDFromIgnoreList:*(a1 + 40)];

  v3 = [*(a1 + 32) currentSession];
  if (v3)
  {
    v4 = v3;
    [v3 _clearOutgoingMessageUUID:*(a1 + 40)];
    [v4 _peerProcessedMessageWithIdentifier:*(a1 + 40) userInfo:*(a1 + 48)];
    v3 = v4;
  }
}

- (void)serializeForIncomingSession:(id)session
{
  block = session;
  syncEngine = [(SYService *)self syncEngine];
  if ([syncEngine buffersSessions])
  {
    _readyToProcessIncomingMessages = [(SYSession *)self->_currentSession _readyToProcessIncomingMessages];

    if (_readyToProcessIncomingMessages)
    {
      queue = [(SYService *)self queue];
      dispatch_async(queue, block);

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(_SYMultiSuspendableQueue *)self->_sessionQueue barrierAsync:block];
LABEL_6:
}

- (void)currentDeviceProximityChanged:(BOOL)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SYService_currentDeviceProximityChanged___block_invoke;
    block[3] = &unk_1E86C9E40;
    v8 = WeakRetained;
    selfCopy = self;
    changedCopy = changed;
    dispatch_async(delegateQueue, block);
  }
}

- (void)currentDeviceConnectionChanged:(BOOL)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SYService_currentDeviceConnectionChanged___block_invoke;
    block[3] = &unk_1E86C9E40;
    v8 = WeakRetained;
    selfCopy = self;
    changedCopy = changed;
    dispatch_async(delegateQueue, block);
  }
}

- (id)_sessionFromIncomingStartRequest:(id)request
{
  requestCopy = request;
  header = [requestCopy header];
  sender = [header sender];

  header2 = [requestCopy header];
  state = [header2 state];
  v9 = [state clockForPeer:sender];

  v25 = v9;
  v26 = sender;
  -[SYVectorClock setClockValue:forPeer:](self->_vectorClock, "setClockValue:forPeer:", [v9 version], sender);
  [(SYService *)self _vectorClockUpdated];
  if ([requestCopy hasMetadata])
  {
    metadata = [requestCopy metadata];
    v11 = [SYSession unarchiveMetadata:metadata];
  }

  else
  {
    v11 = 0;
  }

  v12 = -[SYReceivingSession initWithService:isReset:metadata:]([SYReceivingSession alloc], "initWithService:isReset:metadata:", self, [requestCopy isResetSync], v11);
  sessionID = [requestCopy sessionID];
  [(SYSession *)v12 setIdentifier:sessionID];

  header3 = [requestCopy header];
  [header3 timestamp];
  [(SYSession *)v12 setBirthDate:?];

  header4 = [requestCopy header];
  sender2 = [header4 sender];
  generationID = [sender2 generationID];
  peerGenerationIDs = [(SYSession *)v12 peerGenerationIDs];
  header5 = [requestCopy header];
  sender3 = [header5 sender];
  peerID = [sender3 peerID];
  [peerGenerationIDs setObject:generationID forKeyedSubscript:peerID];

  reason = [requestCopy reason];
  [(SYSession *)v12 setReason:reason];

  [requestCopy sessionTimeout];
  [(SYSession *)v12 setFullSessionTimeout:v23 - CFAbsoluteTimeGetCurrent()];

  return v12;
}

- (void)_enqueueIncomingStartSessionRequest:(id)request withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (self->_queuedStartSession)
  {
    [SYService _enqueueIncomingStartSessionRequest:withCompletion:];
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v8 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    sessionID = [requestCopy sessionID];
    v11 = _SYObfuscate(self->_currentSession);
    v14 = 138543618;
    v15 = sessionID;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Deferring incoming start-session (%{public}@) to allow current session (%{public}@) to finish closing.", &v14, 0x16u);
  }

  v12 = [[_SYQueuedStartSession alloc] initWithRequest:requestCopy completion:completionCopy];
  queuedStartSession = self->_queuedStartSession;
  self->_queuedStartSession = v12;
}

- (BOOL)_request:(id)_request hasValidSessionIDForSession:(id)session response:(id)response completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  _requestCopy = _request;
  responseCopy = response;
  completionCopy = completion;
  sessionCopy = session;
  sessionID = [_requestCopy sessionID];
  identifier = [sessionCopy identifier];

  v15 = [sessionID isEqualToString:identifier];
  if ((v15 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v16 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v24 = 138543362;
      v25 = v19;
      _os_log_impl(&dword_1DF835000, v17, OS_LOG_TYPE_DEFAULT, "Received %{public}@ message for another session ID", &v24, 0xCu);
    }

    v20 = [SYErrorInfo alloc];
    v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2006 userInfo:0];
    v22 = [(SYErrorInfo *)v20 initWithError:v21];
    [responseCopy setError:v22];

    completionCopy[2](completionCopy, responseCopy, 0);
  }

  return v15;
}

- (void)_handleStartSession:(id)session completion:(id)completion
{
  v86 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_delegateQueue);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  [v8 setAccepted:0];
  sessionID = [sessionCopy sessionID];
  [v8 setSessionID:sessionID];

  v11 = [(SYService *)self _sessionFromIncomingStartRequest:sessionCopy];
  p_currentSession = &self->_currentSession;
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    if ([sessionCopy isResetSync] && -[SYService isMasterStore](self, "isMasterStore"))
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
      {
        [SYService _handleStartSession:completion:];
      }

      v28 = [SYErrorInfo alloc];
      v29 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2014 userInfo:0];
      v30 = [(SYErrorInfo *)v28 initWithError:v29];
      [v8 setError:v30];

      sessionID2 = [sessionCopy sessionID];
      v31 = UserInfoDictionaryWithAssociatedSessionID(sessionID2);
      completionCopy[2](completionCopy, v8, v31);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v80 = __Block_byref_object_copy__5;
      v81 = __Block_byref_object_dispose__5;
      v82 = 0;
      delegateQueue = self->_delegateQueue;
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __44__SYService__handleStartSession_completion___block_invoke_184;
      v64[3] = &unk_1E86CA7F0;
      v68 = &v70;
      sessionID2 = WeakRetained;
      v65 = sessionID2;
      selfCopy = self;
      v56 = v11;
      v67 = v56;
      v69 = buf;
      v34 = v64;
      *block = MEMORY[0x1E69E9820];
      *&block[8] = 3221225472;
      *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
      v84 = &unk_1E86CAA90;
      v85 = v34;
      dispatch_sync(delegateQueue, block);

      if (v71[3])
      {
        if (*p_currentSession)
        {
          if (_sync_log_facilities_pred != -1)
          {
            [SYIncomingSyncAllObjectsSession _continueProcessing];
          }

          v35 = qword_1EDE73420;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            _SYObfuscate(*p_currentSession);
            objc_claimAutoreleasedReturnValue();
            [SYService _handleStartSession:completion:];
          }
        }

        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEBUG))
        {
          [SYService _handleStartSession:completion:];
        }

        [(SYSyncEngine *)self->_syncEngine beginSession];
        if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
        {
          _os_assumes_log();
          [SYService _processPendingChanges];
        }

        [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
        if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
        {
          _os_assumes_log();
          [SYService _processPendingChanges];
        }

        objc_storeStrong(&self->_currentSession, v11);
        objc_initWeak(&location, self);
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __44__SYService__handleStartSession_completion___block_invoke_185;
        v57[3] = &unk_1E86CA978;
        objc_copyWeak(&v62, &location);
        v58 = v56;
        v59 = v8;
        v60 = sessionCopy;
        v61 = completionCopy;
        [v58 start:v57];

        objc_destroyWeak(&v62);
        objc_destroyWeak(&location);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v48 = qword_1EDE73420;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = _SYObfuscate(v56);
          v50 = _SYObfuscate(*(*&buf[8] + 40));
          *block = 138543618;
          *&block[4] = v49;
          *&block[12] = 2114;
          *&block[14] = v50;
          _os_log_impl(&dword_1DF835000, v48, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %{public}@", block, 0x16u);
        }

        v51 = [SYErrorInfo alloc];
        v52 = [(SYErrorInfo *)v51 initWithError:*(*&buf[8] + 40)];
        [v8 setError:v52];

        wrappedUserContext = [v56 wrappedUserContext];
        completionCopy[2](completionCopy, v8, wrappedUserContext);
      }

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v70, 8);
    }

    goto LABEL_67;
  }

  if (self->_queuedStartSession || (v36 = [(SYSession *)currentSession state], v36 > 9) || ((1 << v36) & 0x228) == 0)
  {
    sessionID2 = [sessionCopy sessionID];
    Current = CFAbsoluteTimeGetCurrent();
    [*p_currentSession birthDate];
    v17 = v16;
    block[0] = 0;
    header = [sessionCopy header];
    sender = [header sender];
    v20 = Current - v17;
    v21 = [(SYService *)self _shouldSession:v11 fromPeer:sender supercedeSession:self->_currentSession ofAge:block collisionDetected:v20];

    if (v21)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73420;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SYObfuscate(*p_currentSession);
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = sessionID2;
        _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Cancelling current session (%{public}@) to make way for a new one (%{public}@).", buf, 0x16u);
      }

      v24 = *p_currentSession;
      v25 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (block[0])
      {
        v26 = 2023;
      }

      else
      {
        v26 = 2005;
      }

      v27 = [v25 initWithSYError:v26 userInfo:0];
      [v24 cancelWithError:v27];

      [(SYService *)self _enqueueIncomingStartSessionRequest:sessionCopy withCompletion:completionCopy];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v38 = qword_1EDE73420;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = _SYObfuscate(*p_currentSession);
        *buf = 138543874;
        *&buf[4] = sessionID2;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v80 = *&v20;
        _os_log_impl(&dword_1DF835000, v38, OS_LOG_TYPE_DEFAULT, "A new StartSyncSession (%{public}@) arrived, but there is a current session (%{public}@) with an age of %.02f, so we are rejecting the new session.", buf, 0x20u);
      }

      v40 = [SYErrorInfo alloc];
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (block[0])
      {
        v42 = 2023;
      }

      else
      {
        v42 = 2005;
      }

      v43 = [v41 initWithSYError:v42 userInfo:0];
      v44 = [(SYErrorInfo *)v40 initWithError:v43];
      [v8 setError:v44];

      sessionID3 = [sessionCopy sessionID];
      v46 = UserInfoDictionaryWithAssociatedSessionID(sessionID3);

      if ([*p_currentSession state])
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v47 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v47, OS_LOG_TYPE_DEFAULT, "Issuing immediate rejection of incoming session request", buf, 2u);
        }

        completionCopy[2](completionCopy, v8, v46);
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v54 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v54, OS_LOG_TYPE_DEFAULT, "Terrifying deferred session rejection path (enqueue).", buf, 2u);
        }

        v55 = *p_currentSession;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __44__SYService__handleStartSession_completion___block_invoke;
        v74[3] = &unk_1E86CA950;
        v77 = completionCopy;
        v75 = v8;
        v76 = v46;
        [v55 _onSessionStateChangedTo:6 do:v74];
      }
    }

LABEL_67:

    goto LABEL_68;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v37 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v37, OS_LOG_TYPE_DEFAULT, "Deferring incoming session requst for a short while", buf, 2u);
  }

  [(SYService *)self _enqueueIncomingStartSessionRequest:sessionCopy withCompletion:completionCopy];
LABEL_68:

  os_activity_scope_leave(&state);
}

uint64_t __44__SYService__handleStartSession_completion___block_invoke(uint64_t a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_DEFAULT, "Terrifying deferred session rejection path (dequeue).", v4, 2u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __44__SYService__handleStartSession_completion___block_invoke_184(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error: (receiving)", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __44__SYService__handleStartSession_completion___block_invoke_185(uint64_t a1, int a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if ([*(a1 + 32) metadataModified])
    {
      v7 = [*(a1 + 32) sessionMetadata];

      if (v7)
      {
        v8 = MEMORY[0x1E696ACC8];
        v9 = [*(a1 + 32) sessionMetadata];
        v10 = [v8 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
        [*(a1 + 40) setMetadata:v10];
      }
    }

    if (a2)
    {
      [*(a1 + 40) setAccepted:1];
      pseudo_signpost_id = _next_pseudo_signpost_id();
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v12 = qword_1EDE73450;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if ([*(a1 + 48) isResetSync])
        {
          v13 = "reset";
        }

        else
        {
          v13 = "delta";
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [*(a1 + 32) identifier];
        v17 = [*(a1 + 32) reason];
        if (v17)
        {
          v18 = [*(a1 + 32) reason];
        }

        else
        {
          v18 = @"-";
        }

        v25 = 134219010;
        v26 = pseudo_signpost_id;
        v27 = 2082;
        v28 = v13;
        v29 = 2114;
        v30 = v15;
        v31 = 2114;
        v32 = v16;
        v33 = 2114;
        v34 = v18;
        _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Start signpost %llu: Started incoming %{public}s %{public}@ with identifier %{public}@. Reason = '%{public}@'", &v25, 0x34u);
        if (v17)
        {
        }
      }

      [*(a1 + 32) setSessionSignpost:pseudo_signpost_id];
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v19 = qword_1EDE73420;
      if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        v25 = 138543362;
        v26 = v20;
        _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ decided not to come out and play.", &v25, 0xCu);
      }

      v21 = [[SYErrorInfo alloc] initWithError:v5];
      [*(a1 + 40) setError:v21];
    }

    v22 = *(a1 + 56);
    v23 = *(a1 + 40);
    v24 = [*(a1 + 32) wrappedUserContext];
    (*(v22 + 16))(v22, v23, v24);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      __44__SYService__handleStartSession_completion___block_invoke_185_cold_4();
    }
  }
}

- (void)_handleResetRequest:(id)request completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v23.opaque[0] = 0;
  v23.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v23);
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  [v8 setAccepted:0];
  if ([(SYService *)self isMasterStore])
  {
    currentSession = [(SYService *)self currentSession];
    v11 = currentSession;
    if (currentSession)
    {
      identifier = [currentSession identifier];
      cancelSessionID = [requestCopy cancelSessionID];
      v14 = [identifier compare:cancelSessionID] == 1;

      if (v14)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v15 = qword_1EDE73420;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          isResetSync = [v11 isResetSync];
          v17 = @"delta";
          if (isResetSync)
          {
            v17 = @"reset";
          }

          *buf = 138543362;
          v25 = v17;
          _os_log_impl(&dword_1DF835000, v15, OS_LOG_TYPE_DEFAULT, "Accepting reset request: %{public}@ sync in progress, which will be canceled to make way for the requested reset.", buf, 0xCu);
        }

        [v11 cancel];
        v18 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2022 userInfo:0];
        [v11 setError:v18];
      }

      else
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v22 = qword_1EDE73420;
        if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Canceling current session-- cancelation was explicitly requested by a reset request.", buf, 2u);
        }

        [v11 cancel];
      }
    }

    [v8 setAccepted:1];
    [(SYService *)self setNeedsResetSync];
    completionCopy[2](completionCopy, v8, 0);
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(_sync_log_facilities, 0x90u))
    {
      [SYService _handleResetRequest:completion:];
    }

    v19 = [SYErrorInfo alloc];
    v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2024 userInfo:0];
    v21 = [(SYErrorInfo *)v19 initWithError:v20];
    [v8 setError:v21];

    completionCopy[2](completionCopy, v8, 0);
  }

  os_activity_scope_leave(&v23);
}

- (void)_handleSyncBatch:(id)batch completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  sessionID = [batchCopy sessionID];
  [v8 setSessionID:sessionID];

  [v8 setIndex:{objc_msgSend(batchCopy, "index")}];
  currentSession = [(SYService *)self currentSession];
  if (currentSession)
  {
    if ([(SYService *)self _request:batchCopy hasValidSessionIDForSession:currentSession response:v8 completion:completionCopy])
    {
      [currentSession _handleSyncBatch:batchCopy response:v8 completion:completionCopy];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleSyncBatch:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    sessionID2 = [batchCopy sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(sessionID2);
    completionCopy[2](completionCopy, v8, v16);
  }
}

- (void)_handleRestartSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  sessionID = [sessionCopy sessionID];
  [v8 setSessionID:sessionID];

  [v8 setAccepted:0];
  currentSession = [(SYService *)self currentSession];
  if (currentSession)
  {
    if ([(SYService *)self _request:sessionCopy hasValidSessionIDForSession:currentSession response:v8 completion:completionCopy])
    {
      [currentSession _handleRestartSession:sessionCopy response:v8 completion:completionCopy];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleRestartSession:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    sessionID2 = [sessionCopy sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(sessionID2);
    completionCopy[2](completionCopy, v8, v16);
  }
}

- (void)_handleEndSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  sessionID = [sessionCopy sessionID];
  [v8 setSessionID:sessionID];

  currentSession = [(SYService *)self currentSession];
  if (currentSession)
  {
    if ([(SYService *)self _request:sessionCopy hasValidSessionIDForSession:currentSession response:v8 completion:completionCopy])
    {
      [currentSession _handleEndSession:sessionCopy response:v8 completion:completionCopy];
    }
  }

  else
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleEndSession:completion:];
    }

    v12 = [SYErrorInfo alloc];
    v13 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2004 userInfo:0];
    v14 = [(SYErrorInfo *)v12 initWithError:v13];
    [v8 setError:v14];

    sessionID2 = [sessionCopy sessionID];
    v16 = UserInfoDictionaryWithAssociatedSessionID(sessionID2);
    completionCopy[2](completionCopy, v8, v16);
  }
}

- (BOOL)_handleResetResponse:(id)response error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v12);
  inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
  self->_inFlightSyncRequestIdentifier = 0;

  if (([responseCopy accepted] & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = _sync_log_facilities;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      error = [responseCopy error];
      v9 = error;
      v10 = @"(no error)";
      if (error)
      {
        v10 = error;
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Reset Sync request was denied: %@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v12);

  return 1;
}

- (BOOL)_handleStartSessionResponse:(id)response error:(id *)error
{
  responseCopy = response;
  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = 2004;
LABEL_11:
    v18 = 0;
    *error = [v19 initWithSYError:v20 userInfo:0];
    goto LABEL_14;
  }

  sessionID = [responseCopy sessionID];
  identifier = [currentSession identifier];
  v10 = [sessionID isEqualToString:identifier];

  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  header = [responseCopy header];
  sender = [header sender];
  generationID = [sender generationID];
  peerGenerationIDs = [currentSession peerGenerationIDs];
  header2 = [responseCopy header];
  sender2 = [header2 sender];
  peerID = [sender2 peerID];
  [peerGenerationIDs setObject:generationID forKeyedSubscript:peerID];

  v18 = [currentSession _handleStartSessionResponse:responseCopy error:error];
LABEL_14:

  return v18;
}

- (BOOL)_handleSyncBatchResponse:(id)response error:(id *)error
{
  responseCopy = response;
  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *error = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  sessionID = [responseCopy sessionID];
  identifier = [currentSession identifier];
  v10 = [sessionID isEqualToString:identifier];

  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [currentSession _handleSyncBatchResponse:responseCopy error:error];
LABEL_14:

  return v11;
}

- (BOOL)_handleRestartSessionResponse:(id)response error:(id *)error
{
  responseCopy = response;
  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *error = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  sessionID = [responseCopy sessionID];
  identifier = [currentSession identifier];
  v10 = [sessionID isEqualToString:identifier];

  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [currentSession _handleRestartSessionResponse:responseCopy error:error];
LABEL_14:

  return v11;
}

- (BOOL)_handleEndSessionResponse:(id)response error:(id *)error
{
  responseCopy = response;
  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _handleStartSessionResponse:error:];
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = 2004;
LABEL_11:
    v11 = 0;
    *error = [v12 initWithSYError:v13 userInfo:0];
    goto LABEL_14;
  }

  sessionID = [responseCopy sessionID];
  identifier = [currentSession identifier];
  v10 = [sessionID isEqualToString:identifier];

  if ((v10 & 1) == 0)
  {
    if (error)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = 2006;
      goto LABEL_11;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v11 = [currentSession _handleEndSessionResponse:responseCopy error:error];
LABEL_14:

  return v11;
}

- (void)_handleError:(id)error
{
  errorCopy = error;
  persistentUserInfo = [errorCopy persistentUserInfo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegateQueue = self->_delegateQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26__SYService__handleError___block_invoke;
    v10[3] = &unk_1E86CA0F8;
    v10[4] = self;
    v11 = errorCopy;
    v12 = persistentUserInfo;
    v9 = v10;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___dispatch_sync_autoreleased_block_invoke;
    block[3] = &unk_1E86CAA90;
    v14 = v9;
    dispatch_sync(delegateQueue, block);
  }
}

void __26__SYService__handleError___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:encounteredError:context:", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  [WeakRetained service:a1[4] encounteredError:a1[5] context:a1[6]];
}

- (void)_peerRejectedVersion:(id)version completion:(id)completion
{
  versionCopy = version;
  completionCopy = completion;
  supportedVersionsCount = [versionCopy supportedVersionsCount];
  v9 = supportedVersionsCount;
  if (supportedVersionsCount)
  {
    v10 = 0;
    while (1)
    {
      v11 = [versionCopy supportedVersionsAtIndex:v10];
      if ((v11 - 3) >= 0xFFFFFFFE)
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_5;
      }
    }

    v12 = v11;
    os_unfair_lock_lock(&self->_flagLock);
    self->_flags = (*&self->_flags & 0xFFFFFE3F | (v12 << 6));
    os_unfair_lock_unlock(&self->_flagLock);
    inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
    inReplyTo = [versionCopy inReplyTo];
    LODWORD(inFlightSyncRequestIdentifier) = [(NSString *)inFlightSyncRequestIdentifier isEqualToString:inReplyTo];

    if (inFlightSyncRequestIdentifier)
    {
      v15 = self->_inFlightSyncRequestIdentifier;
      self->_inFlightSyncRequestIdentifier = 0;

      [(SYService *)self _sendResetRequest];
    }

    else
    {
      [(SYService *)self _swapSessionForVersionChange];
    }
  }

  else
  {
LABEL_5:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_ERROR))
    {
      [SYService _peerRejectedVersion:completion:];
    }
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)_swapSessionForVersionChange
{
  v3 = self->_currentSession;
  v4 = v3;
  if (v3)
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SYService__swapSessionForVersionChange__block_invoke;
    v6[3] = &unk_1E86C9E90;
    v6[4] = self;
    v7 = v3;
    dispatch_async(queue, v6);
  }
}

void __41__SYService__swapSessionForVersionChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeSessionForDeltaSync:{objc_msgSend(*(a1 + 40), "isResetSync") ^ 1}];
  [*(a1 + 40) _supercededWithSession:v2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__SYService__swapSessionForVersionChange__block_invoke_2;
  v6[3] = &unk_1E86C9E68;
  v6[4] = *(a1 + 32);
  [v5 start:v6];
}

void __41__SYService__swapSessionForVersionChange__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v6 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Swapped-out session (version rejection) failed to start: %@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = *MEMORY[0x1E696AA08];
    v11 = v5;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v9 = [v7 initWithSYError:2018 userInfo:v8];

    [*(a1 + 32) _handleError:v9];
  }
}

- (void)sendData:(id)data options:(id)options completion:(id)completion
{
  dataCopy = data;
  optionsCopy = options;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v11 = [completionCopy copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke;
  v15[3] = &unk_1E86CA1B8;
  v16 = dataCopy;
  selfCopy = self;
  v18 = optionsCopy;
  v19 = v11;
  v12 = v11;
  v13 = optionsCopy;
  v14 = dataCopy;
  _os_activity_initiate(&dword_1DF835000, "Send OOB Data", OS_ACTIVITY_FLAG_DEFAULT, v15);

  os_activity_scope_leave(&state);
}

void __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  [v3 setPayload:*(a1 + 32)];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_2;
  v8[3] = &unk_1E86CA1B8;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[14];
  v5 = [v2 priority];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SYService_AtomicTransactions__sendData_options_completion___block_invoke_3;
  v7[3] = &unk_1E86CA9A0;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v4 enqueueSyncRequest:v3 withMessageID:106 priority:v5 options:v6 userContext:0 callback:v7];
}

- (BOOL)sendData:(id)data options:(id)options identifier:(id *)identifier error:(id *)error
{
  dataCopy = data;
  optionsCopy = options;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v12 = dispatch_group_create();
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5;
  v40 = __Block_byref_object_dispose__5;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5;
  v34 = __Block_byref_object_dispose__5;
  v35 = 0;
  dispatch_group_enter(v12);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __67__SYService_AtomicTransactions__sendData_options_identifier_error___block_invoke;
  v25 = &unk_1E86CA9C8;
  v27 = &v42;
  v28 = &v36;
  v29 = &v30;
  v13 = v12;
  v26 = v13;
  [(SYService *)self sendData:dataCopy options:optionsCopy completion:&v22];
  [(SYService *)self defaultMessageTimeout:v22];
  v15 = v14;
  v16 = [optionsCopy objectForKeyedSubscript:@"SYServiceOptionMessageTimeout"];

  if (v16)
  {
    v17 = [optionsCopy objectForKeyedSubscript:@"SYServiceOptionMessageTimeout"];
    [v17 doubleValue];
    v15 = v18;
  }

  v19 = dispatch_walltime(0, (v15 * 1000000000.0));
  if (dispatch_group_wait(v13, v19))
  {
    v20 = 0;
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2007 userInfo:0];
    }
  }

  else
  {
    if (identifier)
    {
      *identifier = v37[5];
    }

    if (error)
    {
      *error = v31[5];
    }

    v20 = *(v43 + 24);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  os_activity_scope_leave(&state);

  return v20 & 1;
}

void __67__SYService_AtomicTransactions__sendData_options_identifier_error___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_group_leave(*(a1 + 32));
}

- (void)dataStreamWithMetadata:(id)metadata options:(id)options completion:(id)completion
{
  metadataCopy = metadata;
  optionsCopy = options;
  completionCopy = completion;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v11 = [completionCopy copy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke;
  v15[3] = &unk_1E86CA1B8;
  v15[4] = self;
  v16 = metadataCopy;
  v17 = optionsCopy;
  v18 = v11;
  v12 = v11;
  v13 = optionsCopy;
  v14 = metadataCopy;
  _os_activity_initiate(&dword_1DF835000, "OOB Data Stream", OS_ACTIVITY_FLAG_DEFAULT, v15);

  os_activity_scope_leave(&state);
}

void __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke_2;
  block[3] = &unk_1E86CA1B8;
  v7 = *(a1 + 32);
  v2 = *(v7 + 56);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, block);
}

void __75__SYService_AtomicTransactions__dataStreamWithMetadata_options_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = v2[14];
  v5 = [v2 priority];
  v6 = a1[6];
  v9 = 0;
  v7 = [v4 outputStreamWithMetadata:v3 priority:v5 options:v6 context:0 error:&v9];
  v8 = v9;
  (*(a1[7] + 16))();
}

- (id)dataStreamWithMetadata:(id)metadata options:(id)options identifier:(id *)identifier error:(id *)error
{
  metadataCopy = metadata;
  optionsCopy = options;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &state);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke;
  activity_block[3] = &unk_1E86CAA18;
  activity_block[4] = self;
  v16 = metadataCopy;
  v17 = optionsCopy;
  v18 = &v20;
  errorCopy = error;
  v11 = optionsCopy;
  v12 = metadataCopy;
  _os_activity_initiate(&dword_1DF835000, "OOB Data Stream", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  v13 = v21[5];
  _Block_object_dispose(&v20, 8);

  os_activity_scope_leave(&state);

  return v13;
}

void __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke_2;
  v7[3] = &unk_1E86CA9F0;
  v2 = *(a1 + 56);
  v6 = *(a1 + 32);
  v3 = *(v6 + 56);
  v4 = *(&v6 + 1);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v2;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  _dispatch_sync_safe_tagged(v3, v6, v7);
}

uint64_t __81__SYService_AtomicTransactions__dataStreamWithMetadata_options_identifier_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) outputStreamWithMetadata:*(a1 + 40) priority:objc_msgSend(*(a1 + 32) options:"priority") context:*(a1 + 48) error:{0, *(a1 + 64)}];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)setCustomIDSOptions:(id)options
{
  v4 = [options copy];
  customIDSOptions = self->_customIDSOptions;
  self->_customIDSOptions = v4;

  MEMORY[0x1EEE66BB8](v4, customIDSOptions);
}

- (BOOL)hasPairingStore
{
  os_unfair_lock_lock(&self->_flagLock);
  v3 = (*&self->_flags >> 3) & 1;
  os_unfair_lock_unlock(&self->_flagLock);
  return v3;
}

- (void)_v1_handleFullSyncRequest:(id)request completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v24);
  v8 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader];

  syncID = [requestCopy syncID];
  [v8 setRequestSyncID:syncID];

  [v8 setAccepted:0];
  if ([(SYService *)self isMasterStore])
  {
    currentSession = [(SYService *)self currentSession];
    if (currentSession)
    {
      Current = CFAbsoluteTimeGetCurrent();
      [currentSession birthDate];
      if (Current - v13 <= 1800.0)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v19 = qword_1EDE73420;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [currentSession identifier];
          *buf = 138543362;
          v26 = identifier;
          _os_log_impl(&dword_1DF835000, v19, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync request: session (%{public}@) in progress", buf, 0xCu);
        }

        v21 = [SYErrorInfo alloc];
        v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2005 userInfo:0];
        v23 = [(SYErrorInfo *)v21 initWithError:v22];
        [v8 setError:v23];

        syncID2 = [requestCopy syncID];
        v15 = UserInfoDictionaryWithAssociatedSessionID(syncID2);
        completionCopy[2](completionCopy, v8, v15);
        goto LABEL_16;
      }

      [currentSession cancel];
    }

    [v8 setAccepted:1];
    [(SYService *)self setNeedsResetSync];
    syncID2 = [requestCopy syncID];
    v15 = UserInfoDictionaryWithAssociatedSessionID(syncID2);
    completionCopy[2](completionCopy, v8, v15);
LABEL_16:

    goto LABEL_17;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(_sync_log_facilities, 0x90u))
  {
    [SYService _handleResetRequest:completion:];
  }

  v16 = [SYErrorInfo alloc];
  v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2024 userInfo:0];
  v18 = [(SYErrorInfo *)v16 initWithError:v17];
  [v8 setError:v18];

  currentSession = [requestCopy syncID];
  syncID2 = UserInfoDictionaryWithAssociatedSessionID(currentSession);
  completionCopy[2](completionCopy, v8, syncID2);
LABEL_17:

  os_activity_scope_leave(&v24);
}

- (void)_v1_handleSyncAllObjects:(id)objects completion:(id)completion
{
  v59 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  completionCopy = completion;
  v8 = objc_opt_new();
  syncID = [objectsCopy syncID];
  [v8 setSyncID:syncID];

  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)currentSession birthDate];
  if (Current - v12 > 1800.0)
  {
    [(SYSession *)currentSession cancel];
LABEL_4:
    v13 = [[SYIncomingSyncAllObjectsSession alloc] initWithService:self message:objectsCopy completion:completionCopy];
    v14 = currentSession;
    v15 = v13;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__5;
    v54 = __Block_byref_object_dispose__5;
    v55 = 0;
    delegateQueue = self->_delegateQueue;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke;
    v41[3] = &unk_1E86CA7F0;
    v45 = &v47;
    syncID2 = WeakRetained;
    v42 = syncID2;
    selfCopy = self;
    obj = v15;
    currentSession = v15;
    v44 = currentSession;
    p_buf = &buf;
    v19 = v41;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v57 = &unk_1E86CAA90;
    v58 = v19;
    dispatch_sync(delegateQueue, block);

    if (v48[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v20 = qword_1EDE73420;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, obja);
      objc_initWeak(&location, self);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke_490;
      v38[3] = &unk_1E86CAA40;
      objc_copyWeak(&v39, &location);
      [(SYIncomingFullSyncSession *)currentSession start:v38];
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v29 = qword_1EDE73420;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = _SYObfuscate(currentSession);
        v31 = _SYObfuscate(*(*(&buf + 1) + 40));
        *block = 138543618;
        *&block[4] = v30;
        *&block[12] = 2114;
        *&block[14] = v31;
        _os_log_impl(&dword_1DF835000, v29, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %{public}@", block, 0x16u);
      }

      _newMessageHeader = [(SYService *)self _newMessageHeader];
      [v8 setHeader:_newMessageHeader];

      v33 = [SYErrorInfo alloc];
      v34 = [(SYErrorInfo *)v33 initWithError:*(*(&buf + 1) + 40)];
      [v8 setError:v34];

      wrappedUserContext = [(SYSession *)currentSession wrappedUserContext];
      completionCopy[2](completionCopy, v8, wrappedUserContext);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v47, 8);
    goto LABEL_27;
  }

  _newMessageHeader2 = [(SYService *)self _newMessageHeader];
  [v8 setHeader:_newMessageHeader2];

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v22 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    identifier = [(SYSession *)currentSession identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1DF835000, v23, OS_LOG_TYPE_DEFAULT, "Rejecting sync-all-objects: session (%{public}@) in progress", &buf, 0xCu);
  }

  v25 = [SYErrorInfo alloc];
  v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:2005 userInfo:0];
  v27 = [(SYErrorInfo *)v25 initWithError:v26];
  [v8 setError:v27];

  syncID2 = [objectsCopy syncID];
  v28 = UserInfoDictionaryWithAssociatedSessionID(syncID2);
  completionCopy[2](completionCopy, v8, v28);

LABEL_27:
}

void __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __71__SYService_CompanionSyncProtoV1___v1_handleSyncAllObjects_completion___block_invoke_490(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (a2 & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = _SYObfuscate(v5);
      v10 = 138543362;
      v11 = v9;
      _os_log_impl(&dword_1DF835000, v8, OS_LOG_TYPE_DEFAULT, "Incoming v1 SyncAllObjects session failed to start: %{public}@. Error response message will be delivered by the session when it's completed.", &v10, 0xCu);
    }
  }
}

- (void)_v1_handleBatchSyncStart:(id)start completion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  startCopy = start;
  completionCopy = completion;
  if (!self->_rejectingV1SyncSessions)
  {
    v8 = objc_opt_new();
    rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
    self->_rejectingV1SyncSessions = v8;
  }

  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    goto LABEL_6;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)currentSession birthDate];
  if (Current - v12 > 1800.0)
  {
    [(SYSession *)currentSession cancel];
LABEL_6:
    v13 = [[SYIncomingBatchSyncSession alloc] initWithService:self];

    syncID = [startCopy syncID];
    [(SYSession *)v13 setIdentifier:syncID];

    header = [startCopy header];
    [header timestamp];
    [(SYSession *)v13 setBirthDate:?];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__5;
    v50 = __Block_byref_object_dispose__5;
    v51 = 0;
    delegateQueue = self->_delegateQueue;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke;
    v37[3] = &unk_1E86CA7F0;
    v41 = &v43;
    v18 = WeakRetained;
    v38 = v18;
    selfCopy = self;
    currentSession = v13;
    v40 = currentSession;
    p_buf = &buf;
    v19 = v37;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v53 = &unk_1E86CAA90;
    v54 = v19;
    dispatch_sync(delegateQueue, block);

    if (v44[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v20 = qword_1EDE73420;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, v13);
      objc_initWeak(&location, self);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke_493;
      v31[3] = &unk_1E86CAA68;
      objc_copyWeak(&v35, &location);
      v32 = startCopy;
      v34 = completionCopy;
      v33 = currentSession;
      [(SYIncomingFullSyncSession *)v33 start:v31];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v26 = qword_1EDE73420;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = _SYObfuscate(currentSession);
        v28 = *(*(&buf + 1) + 40);
        *block = 138543618;
        *&block[4] = v27;
        *&block[12] = 2112;
        *&block[14] = v28;
        _os_log_impl(&dword_1DF835000, v26, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming sync session (%{public}@) with error %@", block, 0x16u);
      }

      v29 = self->_rejectingV1SyncSessions;
      syncID2 = [startCopy syncID];
      [(NSMutableSet *)v29 addObject:syncID2];

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v43, 8);

    goto LABEL_29;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v21 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    identifier = [(SYSession *)currentSession identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync start: session (%{public}@) in progress", &buf, 0xCu);
  }

  v24 = self->_rejectingV1SyncSessions;
  syncID3 = [startCopy syncID];
  [(NSMutableSet *)v24 addObject:syncID3];

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_29:
}

void __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __71__SYService_CompanionSyncProtoV1___v1_handleBatchSyncStart_completion___block_invoke_493(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v4 = *(WeakRetained + 16);
    v5 = [*(a1 + 32) syncID];
    [v4 addObject:v5];

    v6 = *(WeakRetained + 5);
    *(WeakRetained + 5) = 0;

    [*(WeakRetained + 10) resume];
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 40) wrappedUserContext];
  (*(v7 + 16))(v7, 0, v8);
}

- (void)_v1_handleBatchSyncChunk:(id)chunk completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  chunkCopy = chunk;
  completionCopy = completion;
  v8 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  syncID = [chunkCopy syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:syncID]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SYSession *)v8 _handleBatchChunk:chunkCopy completion:completionCopy];
      goto LABEL_10;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    identifier = [(SYSession *)v8 identifier];
    v23 = 138543362;
    v24 = identifier;
    _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync batch: session (%{public}@) in progress", &v23, 0xCu);
  }

  v15 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v15 setHeader:_newMessageHeader];

  syncID2 = [chunkCopy syncID];
  [v15 setSyncID:syncID2];

  [v15 setChunkIndex:{objc_msgSend(chunkCopy, "chunkIndex")}];
  v18 = [SYErrorInfo alloc];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  v20 = [(SYErrorInfo *)v18 initWithError:v19];
  [v15 setError:v20];

  syncID3 = [chunkCopy syncID];
  v22 = UserInfoDictionaryWithAssociatedSessionID(syncID3);
  completionCopy[2](completionCopy, v15, v22);

LABEL_10:
}

- (void)_v1_handleBatchSyncEnd:(id)end completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  endCopy = end;
  completionCopy = completion;
  v8 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  syncID = [endCopy syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:syncID]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(SYSession *)v8 _handleEndSync:endCopy completion:completionCopy];
      goto LABEL_10;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    identifier = [(SYSession *)v8 identifier];
    v23 = 138543362;
    v24 = identifier;
    _os_log_impl(&dword_1DF835000, v13, OS_LOG_TYPE_DEFAULT, "Rejecting full-sync end: session (%{public}@) in progress", &v23, 0xCu);
  }

  v15 = objc_opt_new();
  _newMessageHeader = [(SYService *)self _newMessageHeader];
  [v15 setHeader:_newMessageHeader];

  syncID2 = [endCopy syncID];
  [v15 setSyncID:syncID2];

  v18 = [SYErrorInfo alloc];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  v20 = [(SYErrorInfo *)v18 initWithError:v19];
  [v15 setError:v20];

  [v15 setErrorResolution:0];
  syncID3 = [endCopy syncID];
  v22 = UserInfoDictionaryWithAssociatedSessionID(syncID3);
  completionCopy[2](completionCopy, v15, v22);

LABEL_10:
}

- (void)_v1_handleChangeMessage:(id)message completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  completionCopy = completion;
  currentSession = [(SYService *)self currentSession];
  if (!currentSession)
  {
    goto LABEL_4;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(SYSession *)currentSession birthDate];
  if (Current - v10 > 1800.0)
  {
    [(SYSession *)currentSession cancel];
LABEL_4:
    v11 = [[SYIncomingTransactionSession alloc] initWithService:self transaction:messageCopy completion:completionCopy];

    v12 = objc_opt_new();
    uUIDString = [v12 UUIDString];
    [(SYSession *)v11 setIdentifier:uUIDString];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__5;
    v41 = __Block_byref_object_dispose__5;
    v42 = 0;
    delegateQueue = self->_delegateQueue;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke;
    v28[3] = &unk_1E86CA7F0;
    v32 = &v34;
    v16 = WeakRetained;
    v29 = v16;
    selfCopy = self;
    currentSession = v11;
    v31 = currentSession;
    p_buf = &buf;
    v17 = v28;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = ___dispatch_sync_autoreleased_block_invoke;
    v44 = &unk_1E86CAA90;
    v45 = v17;
    dispatch_sync(delegateQueue, block);

    if (v35[3])
    {
      if (self->_currentSession)
      {
        if (_sync_log_facilities_pred != -1)
        {
          [SYIncomingSyncAllObjectsSession _continueProcessing];
        }

        v18 = qword_1EDE73420;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          _SYObfuscate(self->_currentSession);
          objc_claimAutoreleasedReturnValue();
          [SYService _handleStartSession:completion:];
        }
      }

      [(SYSyncEngine *)self->_syncEngine beginSession];
      if ([(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      [(_SYMultiSuspendableQueue *)self->_sessionQueue suspend];
      if (![(_SYMultiSuspendableQueue *)self->_sessionQueue isSuspended])
      {
        _os_assumes_log();
        [SYService _processPendingChanges];
      }

      objc_storeStrong(&self->_currentSession, v11);
      objc_initWeak(&location, self);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke_496;
      v25[3] = &unk_1E86CAA40;
      objc_copyWeak(&v26, &location);
      [(SYIncomingTransactionSession *)currentSession start:v25];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    else
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v22 = qword_1EDE73420;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = _SYObfuscate(currentSession);
        v24 = *(*(&buf + 1) + 40);
        *block = 138543618;
        *&block[4] = v23;
        *&block[12] = 2112;
        *&block[14] = v24;
        _os_log_impl(&dword_1DF835000, v22, OS_LOG_TYPE_DEFAULT, "Delegate rejected incoming v1 transaction (%{public}@) with error %@", block, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v34, 8);

    goto LABEL_27;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v19 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    identifier = [(SYSession *)currentSession identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1DF835000, v20, OS_LOG_TYPE_DEFAULT, "Rejecting delta change: session (%{public}@) in progress", &buf, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_27:
}

void __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke(void *a1)
{
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v2 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF835000, v2, OS_LOG_TYPE_INFO, "Delegate: -service:startSession:error:", buf, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [v3 service:v4 startSession:v5 error:&v9];
  v7 = v9;
  v8 = v9;
  *(*(a1[7] + 8) + 24) = v6;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[8] + 8) + 40), v7);
  }
}

void __70__SYService_CompanionSyncProtoV1___v1_handleChangeMessage_completion___block_invoke_496(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 & 1) == 0 && WeakRetained)
  {
    v4 = WeakRetained[5];
    WeakRetained[5] = 0;
    v5 = WeakRetained;

    [v5[10] resume];
    WeakRetained = v5;
  }
}

- (BOOL)_v1_handleFullSyncRequestAck:(id)ack error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  ackCopy = ack;
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(self->_serviceActivity, &v11);
  inFlightSyncRequestIdentifier = self->_inFlightSyncRequestIdentifier;
  self->_inFlightSyncRequestIdentifier = 0;

  if (([ackCopy accepted] & 1) == 0)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      error = [ackCopy error];
      v9 = _SYObfuscate(error);
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_DEFAULT, "Protocol v1 full-sync-request was DENIED with error %{public}@", buf, 0xCu);
    }
  }

  os_activity_scope_leave(&v11);

  return 1;
}

- (BOOL)_v1_handleBatchChunkAck:(id)ack error:(id *)error
{
  ackCopy = ack;
  v7 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  syncID = [ackCopy syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:syncID]& 1) != 0)
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(SYSession *)v7 _handleBatchAck:ackCopy error:error];
      goto LABEL_11;
    }
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v12 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF835000, v12, OS_LOG_TYPE_DEFAULT, "Response received for rejected v1 session", v14, 2u);
  }

  v11 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  }

LABEL_11:

  return v11;
}

- (BOOL)_v1_handleBatchEndResponse:(id)response error:(id *)error
{
  responseCopy = response;
  v7 = self->_currentSession;
  rejectingV1SyncSessions = self->_rejectingV1SyncSessions;
  syncID = [responseCopy syncID];
  if (([(NSMutableSet *)rejectingV1SyncSessions containsObject:syncID]& 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v11 = [(SYSession *)v7 _handleBatchSyncEndResponse:responseCopy error:error];
    goto LABEL_13;
  }

LABEL_3:
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v10 = qword_1EDE73420;
  if (os_log_type_enabled(qword_1EDE73420, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Response received for rejected v1 session", v14, 2u);
  }

  v11 = 0;
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithSYError:1002 userInfo:0];
  }

LABEL_13:

  return v11;
}

- (void)initWithService:priority:qos:asMasterStore:options:.cold.2()
{
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended", v2, v3, v4, v5, 0);
  }
}

void __41__SYService__deviceTargetabilityChanged___block_invoke_cold_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

void __41__SYService__deviceTargetabilityChanged___block_invoke_cold_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

void __20__SYService_resume___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __20__SYService_resume___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_14_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __20__SYService_resume___block_invoke_cold_5()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _sessionQueue.suspended == NO", v2, v3, v4, v5, 0);
  }
}

- (void)_initializeServiceDB:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_swapEngineTo:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  *v1 = 67109378;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2114;
  *(v1 + 10) = v3;
  _os_log_error_impl(&dword_1DF835000, v5, 0x90u, "Failed to swap to engine type %{companionsync:SYServiceEngineType}d: %{public}@", v4, 0x12u);
}

- (void)_swapEngineTo:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_9_0(v1, v2, 5.8381e-34);
  _os_log_error_impl(&dword_1DF835000, v3, 0x90u, "Failed to restore original engine! I can only suspend the entire service now... %{public}@", v4, 0xCu);
}

- (void)sessionDidEnd:(void *)a1 withError:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() identifier];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0xCu);
}

- (void)_wrapUpCurrentSession:(uint64_t)a1 .cold.4(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_1DF835000, v3, OS_LOG_TYPE_ERROR, "Concluding session has birthDate in the future! birthDate = %{public}@, now = %{public}@", &v5, 0x16u);
}

void __35__SYService__wrapUpCurrentSession___block_invoke_2_cold_1()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: service->_sessionQueue.isSuspended == YES", v2, v3, v4, v5, 0);
  }
}

- (void)_chooseBetweenCollidingSessions:(void *)a1 :(void *)a2 .cold.2(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_1DF835000, v3, OS_LOG_TYPE_DEBUG, "Asking delegate about session collision preference. We have chosen %{public}@ as the winner", v5, 0xCu);
}

- (void)willAcceptMessageWithHeader:(os_log_t)log messageID:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_1DF835000, log, 0x90u, "Message repeated (bubble): seqno = %llu, GUID = %{public}@", &v3, 0x16u);
}

- (void)willAcceptMessageWithHeader:(void *)a1 messageID:.cold.7(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() version];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 8u);
}

void __47__SYService_handleSyncRequest_ofType_response___block_invoke_cold_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  OUTLINED_FUNCTION_7();
  v5 = objc_opt_class();
  v10 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v6, v7, 0x90u, v8, v9, 0x12u);
}

void __52__SYService_handleFileTransfer_metadata_completion___block_invoke_175_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_enqueueIncomingStartSessionRequest:withCompletion:.cold.1()
{
  _os_assumes_log();
  if (_sync_log_facilities_pred != -1)
  {
    OUTLINED_FUNCTION_0_0(&_sync_log_facilities_pred);
  }

  if (OUTLINED_FUNCTION_6_0())
  {
    OUTLINED_FUNCTION_1_4(&dword_1DF835000, v0, v1, "Queue state assumption failed: _queuedStartSession == nil", v2, v3, v4, v5, 0);
  }
}

- (void)_handleStartSession:completion:.cold.7()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_9_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_8_0(&dword_1DF835000, v3, v4, "About to build a new session, but there's already one running! Currently-running session is %{public}@", v5);
}

@end