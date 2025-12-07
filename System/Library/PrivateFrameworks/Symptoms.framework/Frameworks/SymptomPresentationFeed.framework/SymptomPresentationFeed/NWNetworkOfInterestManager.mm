@interface NWNetworkOfInterestManager
- (BOOL)_connect;
- (BOOL)_validateKeyPath:(id)path;
- (BOOL)isClosing;
- (NWNetworkOfInterestManager)init;
- (id)delegate;
- (void)_commonFinalizeRequestFor:(id)for orPredicate:(id)predicate options:(id)options isStaged:(BOOL)staged;
- (void)_commonTrackRequestFor:(unsigned __int8)for isAny:(BOOL)any isBuiltin:(BOOL)builtin options:(id)options isCustom:(id)custom;
- (void)_unloadState;
- (void)auditableLinkQualityForNOI:(id)i reply:(id)reply;
- (void)canUseOnAlternateNOI:(id)i appStates:(id)states reply:(id)reply;
- (void)canUseOnAlternateNOI:(id)i apps:(id)apps reply:(id)reply;
- (void)dayOfWeekPredictionGroupingForNOI:(id)i reply:(id)reply;
- (void)dealloc;
- (void)destroy;
- (void)errorPredictionsForNOI:(id)i reply:(id)reply;
- (void)estimatedDataTransferTimeOnNOI:(id)i withPayloadInfo:(id)info reply:(id)reply;
- (void)foregroundNetworkActivityUnderwayOn:(id)on reply:(id)reply;
- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options reply:(id)reply;
- (void)instantQualityForNOI:(id)i reply:(id)reply;
- (void)interfaceTimelineForNOI:(id)i reply:(id)reply;
- (void)linkThroughputOnNOI:(id)i reply:(id)reply;
- (void)networkAttachmentInfoForScopedNOI:(id)i reply:(id)reply;
- (void)proxyHaveNOIs:(id)is tornDown:(BOOL)down;
- (void)proxyUpdateNOI:(id)i keyPath:(id)path change:(id)change;
- (void)setQueue:(id)queue;
- (void)stopTrackingNOIs:(id)is;
- (void)trackAllBuiltinNOIsForInterfaceType:(int64_t)type options:(id)options;
- (void)trackCustomNOI:(id)i options:(id)options;
- (void)trackNOIAnyForInterfaceSubtype:(int64_t)subtype options:(id)options;
- (void)trackNOIAnyForInterfaceType:(int64_t)type options:(id)options;
- (void)trafficInvitesHourlyDistributionForNOI:(id)i reply:(id)reply;
- (void)trainingProgressForNOI:(id)i reply:(id)reply;
- (void)updatePredictionsForNOI:(id)i reply:(id)reply;
@end

@implementation NWNetworkOfInterestManager

- (NWNetworkOfInterestManager)init
{
  v3 = noiLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> init", buf, 2u);
  }

  v13.receiver = self;
  v13.super_class = NWNetworkOfInterestManager;
  v4 = [(NWNetworkOfInterestManager *)&v13 init];
  v5 = v4;
  if (!v4 || (objc_storeStrong(&v4->_callerQueue, MEMORY[0x1E69E96A0]), v6 = objc_alloc(MEMORY[0x1E69D5130]), v7 = [v6 initWorkspaceWithService:*MEMORY[0x1E69D5290]], workspace = v5->workspace, v5->workspace = v7, workspace, v5->workspace) && (v9 = objc_msgSend(objc_alloc(MEMORY[0x1E695DFA8]), "initWithCapacity:", 5), registryNOI = v5->registryNOI, v5->registryNOI = v9, registryNOI, v5->registryNOI))
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __38__NWNetworkOfInterestManager__connect__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4845530];
  v1 = _connect__serviceInterface;
  _connect__serviceInterface = v0;

  _connect__clientInterface = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4842AA0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_connect
{
  v54 = *MEMORY[0x1E69E9840];
  if (_connect_interfaceToken != -1)
  {
    [NWNetworkOfInterestManager _connect];
  }

  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = [v3 initWithMachServiceName:*MEMORY[0x1E69D5290] options:4096];
  connection = self->_connection;
  self->_connection = v4;

  v6 = self->_connection;
  if (!v6)
  {
    return 0;
  }

  [(NSXPCConnection *)v6 setRemoteObjectInterface:_connect__serviceInterface];
  [(NSXPCConnection *)self->_connection setExportedInterface:_connect__clientInterface];
  v7 = [[NWNetworkOfInterestClientProxy alloc] initWithDelegate:self];
  [(NSXPCConnection *)self->_connection setExportedObject:v7];

  objc_initWeak(&location, self);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __38__NWNetworkOfInterestManager__connect__block_invoke_2;
  v49[3] = &unk_1E8318EA0;
  objc_copyWeak(&v50, &location);
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v49];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  exportedInterface = [(NSXPCConnection *)self->_connection exportedInterface];
  [exportedInterface setClasses:v13 forSelector:sel_haveNOIs_tornDown_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];

  exportedInterface2 = [(NSXPCConnection *)self->_connection exportedInterface];
  [exportedInterface2 setClasses:v19 forSelector:sel_updateNOI_keyPath_change_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v21 setWithObjects:{v22, v23, v24, v25, v26, v27, objc_opt_class(), 0}];

  exportedInterface3 = [(NSXPCConnection *)self->_connection exportedInterface];
  [exportedInterface3 setClasses:v28 forSelector:sel_updateNOI_keyPath_change_ argumentIndex:2 ofReply:0];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = [v30 setWithObjects:{v31, v32, v33, v34, v35, v36, objc_opt_class(), 0}];
  remoteObjectInterface = [(NSXPCConnection *)self->_connection remoteObjectInterface];
  [remoteObjectInterface setClasses:v37 forSelector:sel_inquireNOIFor_orPredicate_requestedKeys_options_reply_ argumentIndex:0 ofReply:1];

  [(NSXPCConnection *)self->_connection resume];
  v39 = self->_connection;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __38__NWNetworkOfInterestManager__connect__block_invoke_129;
  v47[3] = &unk_1E8318EC8;
  objc_copyWeak(&v48, &location);
  v40 = [(NSXPCConnection *)v39 remoteObjectProxyWithErrorHandler:v47];
  service = self->_service;
  self->_service = v40;

  v43 = self->_service;
  v44 = v43 != 0;
  if (!v43)
  {
    v45 = noiLogHandle(v42);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1C85F9000, v45, OS_LOG_TYPE_DEFAULT, "%p Failed to connect to remote service", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v48);

  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
  return v44;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_unloadState
{
  delegate = [(NWNetworkOfInterestManager *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate performSelector:sel_didStopTrackingAllNOIs_ withObject:self->registryNOI];
  }

  service = self->_service;
  self->_service = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  [(NSMutableSet *)self->registryNOI removeAllObjects];
}

void __38__NWNetworkOfInterestManager__connect__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && ([WeakRetained callerQueue], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [v2 callerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__NWNetworkOfInterestManager__connect__block_invoke_3;
    block[3] = &unk_1E8318E78;
    block[4] = v2;
    dispatch_async(v4, block);
  }

  else
  {
    v4 = noiLogHandle(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEFAULT, "Interruption handler called, but strongSelf is %p", buf, 0xCu);
    }
  }
}

uint64_t __38__NWNetworkOfInterestManager__connect__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = noiLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_DEFAULT, "%p Remote service endpoint gone, unloading state", &v5, 0xCu);
  }

  return [*(a1 + 32) _unloadState];
}

void __38__NWNetworkOfInterestManager__connect__block_invoke_129(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = noiLogHandle(WeakRetained);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 localizedDescription];
    v7 = 134218242;
    v8 = WeakRetained;
    v9 = 2080;
    v10 = [v6 UTF8String];
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "%p Failed to query remote service, error:%s", &v7, 0x16u);
  }

  if (WeakRetained)
  {
    [WeakRetained setService:0];
  }
}

- (void)_commonTrackRequestFor:(unsigned __int8)for isAny:(BOOL)any isBuiltin:(BOOL)builtin options:(id)options isCustom:(id)custom
{
  builtinCopy = builtin;
  anyCopy = any;
  forCopy = for;
  optionsCopy = options;
  customCopy = custom;
  bOOLValue = [optionsCopy objectForKeyedSubscript:@"InvitesWhenForegroundToo"];

  if (bOOLValue)
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"InvitesWhenForegroundToo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  if (anyCopy)
  {
    v15 = [objc_alloc(MEMORY[0x1E69D5120]) initWithSpec:forCopy isAny:1 isBuiltin:0 scopedToLOI:-1 flags:bOOLValue hasCustomSignature:0];
    [(NWNetworkOfInterestManager *)self _commonFinalizeRequestFor:v15 orPredicate:customCopy options:0 isStaged:0];
  }

  else if (builtinCopy)
  {
    v16 = [objc_alloc(MEMORY[0x1E69D5120]) initWithSpec:forCopy isAny:0 isBuiltin:1 scopedToLOI:0 flags:bOOLValue hasCustomSignature:customCopy];
    [(NWNetworkOfInterestManager *)self _commonFinalizeRequestFor:v16 orPredicate:customCopy options:0 isStaged:0];
    v17 = [objc_alloc(MEMORY[0x1E69D5120]) initWithSpec:forCopy isAny:0 isBuiltin:1 scopedToLOI:1 flags:bOOLValue hasCustomSignature:customCopy];
    [(NWNetworkOfInterestManager *)self _commonFinalizeRequestFor:v17 orPredicate:customCopy options:0 isStaged:0];
  }

  else if (customCopy)
  {
    [(NWNetworkOfInterestManager *)self _commonFinalizeRequestFor:0 orPredicate:customCopy options:0 isStaged:0];
  }
}

- (void)_commonFinalizeRequestFor:(id)for orPredicate:(id)predicate options:(id)options isStaged:(BOOL)staged
{
  stagedCopy = staged;
  v18 = *MEMORY[0x1E69E9840];
  forCopy = for;
  predicateCopy = predicate;
  service = [(NWNetworkOfInterestManager *)self service];

  if (!service && !stagedCopy)
  {
    [(NWNetworkOfInterestManager *)self _connect];
  }

  service2 = [(NWNetworkOfInterestManager *)self service];

  if (service2)
  {
    service3 = [(NWNetworkOfInterestManager *)self service];
    [service3 subscribeToNOIsFor:forCopy orPredicate:predicateCopy options:0];
  }

  else
  {
    if (stagedCopy)
    {
      v15 = [MEMORY[0x1E695DFD8] setWithObject:forCopy];
      [(NWNetworkOfInterestManager *)self proxyHaveNOIs:v15 tornDown:0];
    }

    else
    {
      v15 = noiLogHandle(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEFAULT, "%p Unable to work with remote service", &v16, 0xCu);
      }
    }
  }
}

- (BOOL)_validateKeyPath:(id)path
{
  v10 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = [&unk_1F4841BA8 containsObject:pathCopy];
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    v6 = noiLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = pathCopy;
      _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEFAULT, "NWNetworkOfInterestManager: Invalid keypath: %@", &v8, 0xCu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = noiLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> dealloc %p", buf, 0xCu);
  }

  service = self->_service;
  self->_service = 0;

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v6.receiver = self;
  v6.super_class = NWNetworkOfInterestManager;
  [(NWNetworkOfInterestManager *)&v6 dealloc];
}

- (void)setQueue:(id)queue
{
  v9 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = noiLogHandle(queueCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = queueCopy;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> setQueue:%@", &v7, 0xCu);
  }

  callerQueue = self->_callerQueue;
  self->_callerQueue = queueCopy;
}

- (void)trackNOIAnyForInterfaceType:(int64_t)type options:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = noiLogHandle(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    typeCopy = type;
    v15 = 2112;
    v16 = optionsCopy;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "> trackNOIAnyForInterfaceType:%ld options:%@", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__NWNetworkOfInterestManager_trackNOIAnyForInterfaceType_options___block_invoke;
  block[3] = &unk_1E8318EF0;
  v11 = optionsCopy;
  typeCopy2 = type;
  block[4] = self;
  v9 = optionsCopy;
  dispatch_async(callerQueue, block);
}

uint64_t __66__NWNetworkOfInterestManager_trackNOIAnyForInterfaceType_options___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69D5110] nwFunctionalInterfaceTypeForNWInterfaceType:a1[6]];
  v3 = a1[4];
  v4 = a1[5];

  return [v3 _commonTrackRequestFor:v2 isAny:1 isBuiltin:0 options:v4 isCustom:0];
}

- (void)trackNOIAnyForInterfaceSubtype:(int64_t)subtype options:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = noiLogHandle(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    subtypeCopy = subtype;
    v15 = 2112;
    v16 = optionsCopy;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "> trackNOIAnyForInterfaceSubtype:%ld options:%@", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__NWNetworkOfInterestManager_trackNOIAnyForInterfaceSubtype_options___block_invoke;
  block[3] = &unk_1E8318EF0;
  v11 = optionsCopy;
  subtypeCopy2 = subtype;
  block[4] = self;
  v9 = optionsCopy;
  dispatch_async(callerQueue, block);
}

uint64_t __69__NWNetworkOfInterestManager_trackNOIAnyForInterfaceSubtype_options___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69D5110] nwFunctionalInterfaceTypeForNWInterfaceSubtype:a1[6]];
  v3 = a1[4];
  v4 = a1[5];

  return [v3 _commonTrackRequestFor:v2 isAny:1 isBuiltin:0 options:v4 isCustom:0];
}

- (void)trackAllBuiltinNOIsForInterfaceType:(int64_t)type options:(id)options
{
  v17 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = noiLogHandle(optionsCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    typeCopy = type;
    v15 = 2112;
    v16 = optionsCopy;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "> trackAllBuiltinNOIsForInterfaceType:%ld options:%@", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__NWNetworkOfInterestManager_trackAllBuiltinNOIsForInterfaceType_options___block_invoke;
  block[3] = &unk_1E8318EF0;
  v11 = optionsCopy;
  typeCopy2 = type;
  block[4] = self;
  v9 = optionsCopy;
  dispatch_async(callerQueue, block);
}

uint64_t __74__NWNetworkOfInterestManager_trackAllBuiltinNOIsForInterfaceType_options___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E69D5110] nwFunctionalInterfaceTypeForNWInterfaceType:a1[6]];
  v3 = a1[4];
  v4 = a1[5];

  return [v3 _commonTrackRequestFor:v2 isAny:0 isBuiltin:1 options:v4 isCustom:0];
}

- (void)trackCustomNOI:(id)i options:(id)options
{
  v19 = *MEMORY[0x1E69E9840];
  iCopy = i;
  optionsCopy = options;
  v8 = noiLogHandle(optionsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = iCopy;
    v17 = 2112;
    v18 = optionsCopy;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> trackCustomNOI:%@ options:%@", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NWNetworkOfInterestManager_trackCustomNOI_options___block_invoke;
  block[3] = &unk_1E8318F18;
  block[4] = self;
  v13 = optionsCopy;
  v14 = iCopy;
  v10 = iCopy;
  v11 = optionsCopy;
  dispatch_async(callerQueue, block);
}

- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options reply:(id)reply
{
  v41 = *MEMORY[0x1E69E9840];
  forCopy = for;
  predicateCopy = predicate;
  keysCopy = keys;
  optionsCopy = options;
  replyCopy = reply;
  v17 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138413314;
    v32 = forCopy;
    v33 = 2112;
    v34 = predicateCopy;
    v35 = 2112;
    v36 = keysCopy;
    v37 = 2112;
    v38 = optionsCopy;
    v39 = 2048;
    v40 = v18;
    _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "> inquireNOIFor:%@ orPredicate:%@ requestedKeys:%@ options:%@ reply:%p", buf, 0x34u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __84__NWNetworkOfInterestManager_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke;
  v25[3] = &unk_1E8318F68;
  v25[4] = self;
  v26 = forCopy;
  v27 = predicateCopy;
  v28 = keysCopy;
  v29 = optionsCopy;
  v30 = replyCopy;
  v20 = replyCopy;
  v21 = optionsCopy;
  v22 = keysCopy;
  v23 = predicateCopy;
  v24 = forCopy;
  dispatch_async(callerQueue, v25);
}

void __84__NWNetworkOfInterestManager_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) service];

  if (!v2)
  {
    [*(a1 + 32) _connect];
  }

  v3 = [*(a1 + 32) service];

  if (v3)
  {
    v4 = [*(a1 + 40) identityAttrsOnly];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 64);
      *buf = 138413058;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:%@ requestedKeys:%@ options:%@", buf, 0x2Au);
    }

    v9 = [*(a1 + 32) service];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__NWNetworkOfInterestManager_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke_168;
    v13[3] = &unk_1E8318F40;
    v13[4] = *(a1 + 32);
    v12 = *(a1 + 64);
    v14 = *(a1 + 72);
    [v9 inquireNOIFor:v4 orPredicate:v10 requestedKeys:v11 options:v12 reply:v13];
  }
}

void __84__NWNetworkOfInterestManager_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke_168(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__NWNetworkOfInterestManager_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke_169;
  block[3] = &unk_1E8318A50;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)updatePredictionsForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> updatePredictionsForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke(id *a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v22 = *MEMORY[0x1E69D5338];
    v4 = MEMORY[0x1E695E118];
    v23[0] = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v20 = *MEMORY[0x1E69D5358];
    v21 = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v7 = noiLogHandle(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:%@", buf, 0x20u);
    }

    v8 = [a1[4] service];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke_171;
    v11[3] = &unk_1E8318FB8;
    v9 = a1[5];
    v11[4] = a1[4];
    v12 = v9;
    v13 = a1[6];
    [v8 inquireNOIFor:v3 orPredicate:0 requestedKeys:v5 options:v6 reply:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke_171(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [a1[4] callerQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke_172;
  v12[3] = &unk_1E8318F90;
  v13 = v5;
  v14 = a1[5];
  v9 = a1[6];
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, v12);
}

void __60__NWNetworkOfInterestManager_updatePredictionsForNOI_reply___block_invoke_172(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5338]];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 40) setPredictions:v2];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)instantQualityForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> instantQualityForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5318];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke_174;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke_175;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __57__NWNetworkOfInterestManager_instantQualityForNOI_reply___block_invoke_175(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5318]];
  (*(*(a1 + 48) + 16))(*(a1 + 48), [v2 integerValue], *(a1 + 40));
}

- (void)auditableLinkQualityForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> auditableLinkQualityForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D52F8];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke_176;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke_177;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __63__NWNetworkOfInterestManager_auditableLinkQualityForNOI_reply___block_invoke_177(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D52F8]];
  (*(*(a1 + 48) + 16))();
}

- (void)networkAttachmentInfoForScopedNOI:(id)i reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v22 = iCopy;
    v23 = 2048;
    v24 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> networkAttachmentInfoForScopedNOI:%@ reply:%p", buf, 0x16u);
  }

  if ([iCopy scopedToLOI] == -1)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke_2;
    v15[3] = &unk_1E8318A00;
    v16 = v12;
    v17 = replyCopy;
    v14 = replyCopy;
    v11 = v12;
    dispatch_async(callerQueue, v15);
  }

  else
  {
    callerQueue2 = [(NWNetworkOfInterestManager *)self callerQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke;
    block[3] = &unk_1E8318FE0;
    block[4] = self;
    v19 = iCopy;
    v20 = replyCopy;
    v11 = replyCopy;
    dispatch_async(callerQueue2, block);
  }
}

void __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5330];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke_178;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke_178(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke_179;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __70__NWNetworkOfInterestManager_networkAttachmentInfoForScopedNOI_reply___block_invoke_179(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5330]];
  (*(*(a1 + 48) + 16))();
}

- (void)linkThroughputOnNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> linkThroughputOnNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5328];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke_180;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke_181;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __56__NWNetworkOfInterestManager_linkThroughputOnNOI_reply___block_invoke_181(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5328]];
  (*(*(a1 + 48) + 16))();
}

- (void)estimatedDataTransferTimeOnNOI:(id)i withPayloadInfo:(id)info reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  iCopy = i;
  infoCopy = info;
  replyCopy = reply;
  v11 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412802;
    v22 = iCopy;
    v23 = 2112;
    v24 = infoCopy;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> estimatedDataTransferTimeOnNOI:%@ withPayloadInfo:%@ reply:%p", buf, 0x20u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke;
  v17[3] = &unk_1E8319030;
  v17[4] = self;
  v18 = iCopy;
  v19 = infoCopy;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = infoCopy;
  v16 = iCopy;
  dispatch_async(callerQueue, v17);
}

void __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) service];

  if (v2)
  {
    v3 = [*(a1 + 40) identityAttrsOnly];
    v18 = *MEMORY[0x1E69D5308];
    v19[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      *buf = 138412802;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:%@", buf, 0x20u);
    }

    v7 = [*(a1 + 32) service];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke_182;
    v10[3] = &unk_1E8318F40;
    v10[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    v11 = *(a1 + 56);
    [v7 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:v8 reply:v10];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke_182(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke_183;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __83__NWNetworkOfInterestManager_estimatedDataTransferTimeOnNOI_withPayloadInfo_reply___block_invoke_183(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5308]];
  (*(*(a1 + 48) + 16))();
}

- (void)foregroundNetworkActivityUnderwayOn:(id)on reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  onCopy = on;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = onCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> foregroundNetworkActivityUnderwayOn:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = onCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = onCopy;
  dispatch_async(callerQueue, block);
}

void __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5310];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke_184;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke_184(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke_185;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __72__NWNetworkOfInterestManager_foregroundNetworkActivityUnderwayOn_reply___block_invoke_185(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5310]];
  (*(*(a1 + 48) + 16))(*(a1 + 48), [v2 integerValue] != 0, *(a1 + 40));
}

- (void)canUseOnAlternateNOI:(id)i apps:(id)apps reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  iCopy = i;
  appsCopy = apps;
  replyCopy = reply;
  v11 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412802;
    v18 = iCopy;
    v19 = 2112;
    v20 = appsCopy;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> canUseOnAlternateNOI:%@ apps:%@ reply:%p", buf, 0x20u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__NWNetworkOfInterestManager_canUseOnAlternateNOI_apps_reply___block_invoke;
  v15[3] = &unk_1E8319058;
  v16 = dictionary;
  v14 = dictionary;
  [appsCopy enumerateObjectsUsingBlock:v15];
  [(NWNetworkOfInterestManager *)self canUseOnAlternateNOI:iCopy appStates:v14 reply:replyCopy];
}

- (void)canUseOnAlternateNOI:(id)i appStates:(id)states reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  iCopy = i;
  statesCopy = states;
  replyCopy = reply;
  v11 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412802;
    v22 = iCopy;
    v23 = 2112;
    v24 = statesCopy;
    v25 = 2048;
    v26 = v12;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, "> canUseOnAlternateNOI:%@ appStates:%@ reply:%p", buf, 0x20u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke;
  v17[3] = &unk_1E8319030;
  v17[4] = self;
  v18 = statesCopy;
  v19 = iCopy;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = iCopy;
  v16 = statesCopy;
  dispatch_async(callerQueue, v17);
}

void __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) service];
  if (v2 && (v3 = *(a1 + 40), v2, v3))
  {
    v4 = [*(a1 + 48) identityAttrsOnly];
    v22 = *MEMORY[0x1E69D52E0];
    v23[0] = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v6 = *(a1 + 40);
    v20 = *MEMORY[0x1E69D52D8];
    v21 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v8 = noiLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:%@", buf, 0x20u);
    }

    v9 = [*(a1 + 32) service];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke_189;
    v12[3] = &unk_1E8318F40;
    v12[4] = *(a1 + 32);
    v13 = *(a1 + 56);
    [v9 inquireNOIFor:v4 orPredicate:0 requestedKeys:v5 options:v7 reply:v12];
  }

  else
  {
    if (*(a1 + 40))
    {
      v10 = 54;
    }

    else
    {
      v10 = 22;
    }

    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:0];
    (*(*(a1 + 56) + 16))();
  }
}

void __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke_189(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke_190;
  block[3] = &unk_1E8319008;
  v13 = v6;
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, block);
}

void __67__NWNetworkOfInterestManager_canUseOnAlternateNOI_appStates_reply___block_invoke_190(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v6 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E69D52E0]];
    v3 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69D52E8]];
    v4 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69D52F0]];
    if (v3)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)stopTrackingNOIs:(id)is
{
  v12 = *MEMORY[0x1E69E9840];
  isCopy = is;
  v5 = noiLogHandle(isCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v11 = isCopy;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> stopTrackingNOIs:%@", buf, 0xCu);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NWNetworkOfInterestManager_stopTrackingNOIs___block_invoke;
  v8[3] = &unk_1E8319080;
  v8[4] = self;
  v9 = isCopy;
  v7 = isCopy;
  dispatch_async(callerQueue, v8);
}

void __47__NWNetworkOfInterestManager_stopTrackingNOIs___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) service];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 40) count];

    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:*(a1 + 40) copyItems:1];
      v6 = noiLogHandle(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "unsubscribeToNOIs:%@", &v8, 0xCu);
      }

      v7 = [*(a1 + 32) service];
      [v7 unsubscribeToNOIs:v5];
    }
  }
}

- (BOOL)isClosing
{
  v3 = noiLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> isClosing", v5, 2u);
  }

  return self->closing;
}

- (void)destroy
{
  v3 = noiLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> destroy", buf, 2u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__NWNetworkOfInterestManager_destroy__block_invoke;
  block[3] = &unk_1E8318E78;
  block[4] = self;
  dispatch_async(callerQueue, block);
}

uint64_t __37__NWNetworkOfInterestManager_destroy__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);

  return [v2 _unloadState];
}

- (void)errorPredictionsForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> errorPredictionsForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5340];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke_191;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))(1.0);
  }
}

void __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke_191(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke_192;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __59__NWNetworkOfInterestManager_errorPredictionsForNOI_reply___block_invoke_192(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5340]];
  v2 = *(a1 + 48);
  [v3 doubleValue];
  (*(v2 + 16))(v2, *(a1 + 40));
}

- (void)dayOfWeekPredictionGroupingForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> dayOfWeekPredictionGroupingForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5300];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke_193;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke_193(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke_194;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __70__NWNetworkOfInterestManager_dayOfWeekPredictionGroupingForNOI_reply___block_invoke_194(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5300]];
  (*(*(a1 + 48) + 16))();
}

- (void)trainingProgressForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> trainingProgressForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5350];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke_195;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))(0.0);
  }
}

void __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke_195(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke_196;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __59__NWNetworkOfInterestManager_trainingProgressForNOI_reply___block_invoke_196(uint64_t a1)
{
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5350]];
  v2 = *(a1 + 48);
  [v3 doubleValue];
  (*(v2 + 16))(v2, *(a1 + 40));
}

- (void)trafficInvitesHourlyDistributionForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> trafficInvitesHourlyDistributionForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5348];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke_197;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke_197(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke_198;
  block[3] = &unk_1E8319008;
  v13 = v5;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void __75__NWNetworkOfInterestManager_trafficInvitesHourlyDistributionForNOI_reply___block_invoke_198(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5348]];
  v2 = [v6 count];
  v3 = *(a1 + 48);
  if (v2 == 48)
  {
    v4 = [v6 subarrayWithRange:{0, 24}];
    v5 = [v6 subarrayWithRange:{24, 24}];
    (*(v3 + 16))(v3, v4, v5, *(a1 + 40));
  }

  else
  {
    (*(v3 + 16))(*(a1 + 48), 0, 0, *(a1 + 40));
  }
}

- (void)interfaceTimelineForNOI:(id)i reply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  iCopy = i;
  replyCopy = reply;
  v8 = noiLogHandle(replyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v17 = iCopy;
    v18 = 2048;
    v19 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> interfaceTimelineForNOI:%@ reply:%p", buf, 0x16u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke;
  block[3] = &unk_1E8318FE0;
  block[4] = self;
  v14 = iCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = iCopy;
  dispatch_async(callerQueue, block);
}

void __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke(id *a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[4] service];

  if (v2)
  {
    v3 = [a1[5] identityAttrsOnly];
    v14 = *MEMORY[0x1E69D5320];
    v15[0] = MEMORY[0x1E695E118];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = noiLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "inquireNOIFor:%@ orPredicate:nil requestedKeys:%@ options:nil", buf, 0x16u);
    }

    v6 = [a1[4] service];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke_199;
    v8[3] = &unk_1E8318F40;
    v8[4] = a1[4];
    v9 = a1[6];
    [v6 inquireNOIFor:v3 orPredicate:0 requestedKeys:v4 options:0 reply:v8];
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (*(a1[6] + 2))();
  }
}

void __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "inquireNOIFor:orPredicate:requestedKeys:options:reply: received callback with error:%@ data:%@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke_200;
  block[3] = &unk_1E8318FE0;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void __60__NWNetworkOfInterestManager_interfaceTimelineForNOI_reply___block_invoke_200(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69D5320]];
  (*(*(a1 + 48) + 16))();
}

- (void)proxyHaveNOIs:(id)is tornDown:(BOOL)down
{
  downCopy = down;
  v17 = *MEMORY[0x1E69E9840];
  isCopy = is;
  v7 = noiLogHandle(isCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v14 = isCopy;
    v15 = 1024;
    v16 = downCopy;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, ">> haveNOIs:%@ tornDown:%{BOOL}d", buf, 0x12u);
  }

  callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__NWNetworkOfInterestManager_proxyHaveNOIs_tornDown___block_invoke;
  block[3] = &unk_1E83190D0;
  block[4] = self;
  v11 = isCopy;
  v12 = downCopy;
  v9 = isCopy;
  dispatch_async(callerQueue, block);
}

void __53__NWNetworkOfInterestManager_proxyHaveNOIs_tornDown___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v45 = [*(a1 + 32) delegate];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *(a1 + 40);
  v47 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v47)
  {
    v46 = *v56;
    *&v2 = 138412290;
    v43 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v56 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v55 + 1) + 8 * v3);
        v49 = 0;
        v50 = &v49;
        v51 = 0x3032000000;
        v52 = __Block_byref_object_copy__0;
        v53 = __Block_byref_object_dispose__0;
        v54 = 0;
        v5 = *(*(a1 + 32) + 16);
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __53__NWNetworkOfInterestManager_proxyHaveNOIs_tornDown___block_invoke_201;
        v48[3] = &unk_1E83190A8;
        v48[4] = v4;
        v48[5] = &v49;
        v6 = [v5 enumerateObjectsUsingBlock:{v48, v43}];
        if (v50[5])
        {
          if (!*(a1 + 48))
          {
            v13 = [v50[5] discretionaryTrafficInvited];
            if (v13 != [v4 discretionaryTrafficInvited])
            {
              v14 = [v4 discretionaryTrafficInvited];
              [v50[5] setDiscretionaryTrafficInvited:v14];
            }

            v15 = [v50[5] interfaceClass];
            if (v15 != [v4 interfaceClass])
            {
              v16 = [v4 interfaceClass];
              [v50[5] setInterfaceClass:v16];
            }

            v17 = [v50[5] isTrafficEligible];
            if (v17 != [v4 isTrafficEligible])
            {
              v18 = [v4 isTrafficEligible];
              [v50[5] setIsTrafficEligible:v18];
            }

            v19 = [v50[5] willGetDiscretionaryTrafficInvites];
            if (v19 != [v4 willGetDiscretionaryTrafficInvites])
            {
              v20 = [v4 willGetDiscretionaryTrafficInvites];
              [v50[5] setWillGetDiscretionaryTrafficInvites:v20];
            }

            v21 = [v50[5] linkQuality];
            if (v21 != [v4 linkQuality])
            {
              v22 = [v4 linkQuality];
              [v50[5] setLinkQuality:v22];
            }

            v23 = [v50[5] powerCostDL];
            if (v23 != [v4 powerCostDL])
            {
              v24 = [v4 powerCostDL];
              [v50[5] setPowerCostDL:v24];
            }

            v25 = [v50[5] powerCostUL];
            if (v25 != [v4 powerCostUL])
            {
              v26 = [v4 powerCostUL];
              [v50[5] setPowerCostUL:v26];
            }

            v27 = [v4 predictionsGeneratedAt];
            if (v27)
            {
              v28 = [v50[5] predictionsGeneratedAt];
              if (!v28)
              {
                goto LABEL_34;
              }

              v29 = [v50[5] predictionsGeneratedAt];
              v30 = [MEMORY[0x1E695DFB0] null];
              if ([v29 isEqual:v30])
              {

LABEL_34:
LABEL_35:
                v31 = [v4 predictionsGeneratedAt];
                [v50[5] setPredictionsGeneratedAt:v31];

                v32 = [v4 predictions];
                [v50[5] setPredictions:v32];
              }

              else
              {
                v38 = [v4 predictionsGeneratedAt];
                v39 = [v50[5] predictionsGeneratedAt];
                [v38 timeIntervalSinceDate:v39];
                v41 = v40 > 0.0;

                if (v41)
                {
                  goto LABEL_35;
                }
              }
            }

            v33 = [v50[5] considerAlternateUpdate];
            v34 = [v4 considerAlternateUpdate];
            v35 = [v33 isEqual:v34];

            if (v35)
            {
              goto LABEL_45;
            }

            v11 = [v4 considerAlternateUpdate];
            [v50[5] setConsiderAlternateUpdate:v11];
            goto LABEL_38;
          }

          [*(*(a1 + 32) + 16) removeObject:?];
          if (v45)
          {
            v7 = objc_opt_respondsToSelector();
            if (v7)
            {
              v8 = noiLogHandle(v7);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                v9 = v50[5];
                *buf = v43;
                v60 = v9;
                _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEFAULT, "delegate callback didStopTrackingNOI:%@", buf, 0xCu);
              }

              v4 = v50[5];
              v10 = sel_didStopTrackingNOI_;
LABEL_44:
              [v45 performSelector:v10 withObject:v4];
            }
          }
        }

        else
        {
          if (*(a1 + 48))
          {
            v11 = noiLogHandle(v6);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 32);
              *buf = 138412546;
              v60 = v12;
              v61 = 2112;
              v62 = v4;
              _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEFAULT, "%@ Attempting to stop tracking a non-existent NOI: %@", buf, 0x16u);
            }

LABEL_38:

            goto LABEL_45;
          }

          [*(*(a1 + 32) + 16) addObject:v4];
          if (v45)
          {
            v36 = objc_opt_respondsToSelector();
            if (v36)
            {
              v37 = noiLogHandle(v36);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v43;
                v60 = v4;
                _os_log_impl(&dword_1C85F9000, v37, OS_LOG_TYPE_DEFAULT, "delegate callback didStartTrackingNOI:%@", buf, 0xCu);
              }

              v10 = sel_didStartTrackingNOI_;
              goto LABEL_44;
            }
          }
        }

LABEL_45:
        _Block_object_dispose(&v49, 8);

        ++v3;
      }

      while (v47 != v3);
      v42 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
      v47 = v42;
    }

    while (v42);
  }
}

void __53__NWNetworkOfInterestManager_proxyHaveNOIs_tornDown___block_invoke_201(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) isEqual:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)proxyUpdateNOI:(id)i keyPath:(id)path change:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  iCopy = i;
  pathCopy = path;
  changeCopy = change;
  v11 = noiLogHandle(changeCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v18 = iCopy;
    v19 = 2112;
    v20 = pathCopy;
    v21 = 2112;
    v22 = changeCopy;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_DEBUG, ">> updateNOI:%@ keyPath:%@ change:%@", buf, 0x20u);
  }

  if ([(NWNetworkOfInterestManager *)self _validateKeyPath:pathCopy])
  {
    callerQueue = [(NWNetworkOfInterestManager *)self callerQueue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__NWNetworkOfInterestManager_proxyUpdateNOI_keyPath_change___block_invoke;
    v13[3] = &unk_1E8319120;
    v13[4] = self;
    v14 = changeCopy;
    v15 = iCopy;
    v16 = pathCopy;
    dispatch_async(callerQueue, v13);
  }
}

void __60__NWNetworkOfInterestManager_proxyUpdateNOI_keyPath_change___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__NWNetworkOfInterestManager_proxyUpdateNOI_keyPath_change___block_invoke_2;
  v3[3] = &unk_1E83190F8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v3];
}

void __60__NWNetworkOfInterestManager_proxyUpdateNOI_keyPath_change___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  v7 = [*(a1 + 40) isEqual:v5];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = noiLogHandle(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      v14 = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, ">> debug (enumeration): %@ doesn't match incoming %@", &v14, 0x16u);
    }
  }

  else
  {
    v10 = [v5 valueForKey:*(a1 + 48)];
    v11 = [v6 isEqual:v10];
    if ((v11 & 1) == 0)
    {
      v12 = noiLogHandle(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 48);
        v14 = 138413058;
        v15 = v10;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_DEBUG, ">>> set: %@ -> %@ forKey:%@ on %@", &v14, 0x2Au);
      }

      [v5 setValue:v6 forKey:*(a1 + 48)];
    }

    *a3 = 1;
  }
}

@end