@interface FPDExtensionSession
- (BOOL)_evaluateExtensionForegroundness;
- (BOOL)_setUpConnectionWithError:(id *)error;
- (BOOL)hasFileProviderAttributionMDMAccess;
- (BOOL)terminateExtensionWithReason:(id)reason error:(id *)error;
- (FPDExtensionSession)initWithDomain:(id)domain extension:(id)extension queue:(id)queue;
- (NSString)description;
- (id)_alternateContentsDictionary;
- (id)_connectionWithError:(id *)error;
- (id)existingFileProviderProxyWithTimeout:(double)timeout onlyAlreadyLifetimeExtended:(BOOL)extended pid:(int)pid;
- (id)newAssertionWithAttributeName:(id)name reason:(id)reason;
- (id)newFileProviderProxyWithTimeoutValue:(double)value pid:(int)pid createIfNeeded:(BOOL)needed;
- (void)__invalidate;
- (void)_invalidate;
- (void)_invalidateExtensionIfPossible;
- (void)_networkingGracePeriodOver;
- (void)_notifyNetworkingProviderMonitorWithState:(BOOL)state;
- (void)_unregisterLifetimeExtensionForObject:(id)object;
- (void)assertionWasInvalidated:(id)invalidated;
- (void)asyncUnregisterLifetimeExtensionForObject:(id)object;
- (void)cancelAsync;
- (void)dealloc;
- (void)dumpStateTo:(id)to;
- (void)invalidate;
- (void)processMonitor:(id)monitor didBecomeForeground:(BOOL)foreground;
- (void)registerLifetimeExtensionForObject:(id)object;
- (void)start;
- (void)terminateWithReason:(id)reason;
- (void)unregisterLifetimeExtensionForObject:(id)object;
@end

@implementation FPDExtensionSession

- (BOOL)_evaluateExtensionForegroundness
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (self->_sessionProcess)
  {
    __fp_create_section();
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPDExtensionSession _evaluateExtensionForegroundness];
    }

    isForeground = [(FPDProcessMonitor *)self->_processMonitor isForeground];
    self->_isForeground = isForeground;
    if (isForeground)
    {
      [(FPGracePeriodTimer *)self->_networkingGracePeriodTimer suppress];
      if (self->_foregroundAssertion || (v5 = [(FPDExtensionSession *)self newForegroundAssertion], foregroundAssertion = self->_foregroundAssertion, self->_foregroundAssertion = v5, foregroundAssertion, self->_foregroundAssertion))
      {
        p_backgroundAssertion = &self->_backgroundAssertion;
        [(RBSAssertion *)self->_backgroundAssertion invalidate];
LABEL_13:
        v11 = *p_backgroundAssertion;
        *p_backgroundAssertion = 0;

        [(FPDExtensionSession *)self _notifyNetworkingProviderMonitorWithState:[(FPDProcessMonitor *)self->_processMonitor isForeground]];
        v8 = 1;
LABEL_14:
        __fp_leave_section_Debug();
        return v8;
      }
    }

    else if (self->_backgroundAssertion || (v9 = [(FPDExtensionSession *)self newBackgroundAssertion], backgroundAssertion = self->_backgroundAssertion, self->_backgroundAssertion = v9, backgroundAssertion, self->_backgroundAssertion))
    {
      p_backgroundAssertion = &self->_foregroundAssertion;
      [(RBSAssertion *)self->_foregroundAssertion invalidate];
      goto LABEL_13;
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (self->_connection)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ no process -> no connection"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionSession _evaluateExtensionForegroundness]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 864, [v13 UTF8String]);
  }

  return 0;
}

- (id)_alternateContentsDictionary
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_fpdExtension);
  manager = [WeakRetained manager];
  v5 = [manager alternateContentsDictionaryForProviderIdentifier:self->_providerIdentifier];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v24;
    *&v9 = 138412546;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:{v13, v19}];
        v22 = 0;
        v15 = [MEMORY[0x1E6967408] wrapperWithURL:v14 extensionClass:"com.apple.fileprovider.read-write" error:&v22];
        v16 = v22;
        if (v15)
        {
          [v6 setObject:v15 forKeyedSubscript:v13];
        }

        else
        {
          v17 = fp_current_or_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            fp_shortDescription = [v14 fp_shortDescription];
            fp_prettyDescription = [v16 fp_prettyDescription];
            *buf = v19;
            v28 = fp_shortDescription;
            v29 = 2112;
            v30 = fp_prettyDescription;
            _os_log_error_impl(&dword_1CEFC7000, v17, OS_LOG_TYPE_ERROR, "[ERROR] couldn't get a URL wrapper for URL %@: %@ - this means iWork forgot to remove the alternate URL", buf, 0x16u);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v10);
  }

  return v6;
}

- (void)_invalidateExtensionIfPossible
{
  *buf = 138543362;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] could not terminate extension: %{public}@", buf, 0xCu);
}

void __53__FPDExtensionSession__invalidateExtensionIfPossible__block_invoke(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 proxy];

  if (v6)
  {
    v7 = [v5 proxy];
    v8 = [v7 timeoutState];

    if (v8 == 2)
    {
      v9 = a1[5];
    }

    else
    {
      v9 = a1[6];
    }

    *(*(v9 + 8) + 24) = 1;
  }

  else
  {
    [*(a1[4] + 48) removeObjectForKey:v10];
  }
}

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&selfCopy->_domain);
  providerDomainID = [WeakRetained providerDomainID];
  fp_obfuscatedProviderDomainID = [providerDomainID fp_obfuscatedProviderDomainID];
  allValues = [(NSMutableDictionary *)selfCopy->_inflightProxies allValues];
  v7 = [allValues componentsJoinedByString:{@", "}];
  keyEnumerator = [(NSMapTable *)selfCopy->_lifetimeExtenders keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v10 = [allObjects fp_map:&__block_literal_global_242];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = [v15 stringWithFormat:@"<%@(%@): %p requests{%@}, extenders{%@}>", v3, fp_obfuscatedProviderDomainID, selfCopy, v7, v11];

  objc_sync_exit(selfCopy);

  return v12;
}

- (FPDExtensionSession)initWithDomain:(id)domain extension:(id)extension queue:(id)queue
{
  domainCopy = domain;
  extensionCopy = extension;
  queueCopy = queue;
  v46.receiver = self;
  v46.super_class = FPDExtensionSession;
  v11 = [(FPDExtensionSession *)&v46 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_domain, domainCopy);
    v13 = [domainCopy log];
    log = v12->_log;
    v12->_log = v13;

    objc_storeWeak(&v12->_fpdExtension, extensionCopy);
    v15 = objc_opt_new();
    inflightProxies = v12->_inflightProxies;
    v12->_inflightProxies = v15;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    lifetimeExtenders = v12->_lifetimeExtenders;
    v12->_lifetimeExtenders = weakToStrongObjectsMapTable;

    objc_storeStrong(&v12->_sessionQueue, queue);
    WeakRetained = objc_loadWeakRetained(&v12->_fpdExtension);
    identifier = [WeakRetained identifier];
    providerIdentifier = v12->_providerIdentifier;
    v12->_providerIdentifier = identifier;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    sessionUUID = v12->_sessionUUID;
    v12->_sessionUUID = uUID;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"extension session queue callback queue (%@)", v12->_providerIdentifier];
    uTF8String = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(uTF8String, v26);
    callbackQueue = v12->_callbackQueue;
    v12->_callbackQueue = v27;

    v12->_notifyTokenForFramework = -1;
    v29 = objc_alloc_init(MEMORY[0x1E696AB50]);
    observingBundleIDs = v12->_observingBundleIDs;
    v12->_observingBundleIDs = v29;

    v31 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
    [v31 doubleForKey:@"session-grace-period-delay"];
    v33 = v32;
    objc_initWeak(&location, v12);
    v34 = objc_alloc(MEMORY[0x1E6967350]);
    if (v33 == 0.0)
    {
      v33 = 5.0;
    }

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __54__FPDExtensionSession_initWithDomain_extension_queue___block_invoke;
    v43[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v44, &location);
    v35 = [v34 initWithAction:v43 callbackQueue:v12->_sessionQueue delay:v33];
    gracePeriodTimer = v12->_gracePeriodTimer;
    v12->_gracePeriodTimer = v35;

    v37 = objc_alloc(MEMORY[0x1E6967350]);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __54__FPDExtensionSession_initWithDomain_extension_queue___block_invoke_14;
    v41[3] = &unk_1E83BE0B8;
    objc_copyWeak(&v42, &location);
    v38 = [v37 initWithAction:v41 callbackQueue:v12->_sessionQueue delay:30.0];
    networkingGracePeriodTimer = v12->_networkingGracePeriodTimer;
    v12->_networkingGracePeriodTimer = v38;

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __54__FPDExtensionSession_initWithDomain_extension_queue___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = fpfs_adopt_log();
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[10];
      *buf = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[WARNING] %@: extension request grace timer ran out", buf, 0xCu);
    }

    [WeakRetained __invalidate];
    __fp_pop_log();
  }
}

void __54__FPDExtensionSession_initWithDomain_extension_queue___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _networkingGracePeriodOver];
}

- (void)dealloc
{
  v19 = *MEMORY[0x1E69E9840];
  notifyTokenForFramework = self->_notifyTokenForFramework;
  if (notifyTokenForFramework != -1)
  {
    notify_cancel(notifyTokenForFramework);
  }

  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(FPDExtensionSession *)self description];
    v6 = v5;
    providerIdentifier = self->_providerIdentifier;
    processMonitor = self->_processMonitor;
    *buf = 138543874;
    if (processMonitor)
    {
      v9 = @"missing invalidation";
    }

    else
    {
      v9 = &stru_1F4C2FFD0;
    }

    v14 = v5;
    v15 = 2114;
    v16 = providerIdentifier;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1CEFC7000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%{public}@] %{public}@: dealloc %{public}@", buf, 0x20u);
  }

  if (self->_processMonitor)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ someone forgot to tear this down"];
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionSession dealloc]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 151, [v10 UTF8String]);
  }

  v12.receiver = self;
  v12.super_class = FPDExtensionSession;
  [(FPDExtensionSession *)&v12 dealloc];
}

- (void)_invalidate
{
  [(FPGracePeriodTimer *)self->_gracePeriodTimer suppress];

  [(FPDExtensionSession *)self __invalidate];
}

- (void)__invalidate
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  if (self->_connection)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [FPDExtensionSession __invalidate];
    }

    [(_EXExtensionProcess *)self->_sessionProcess invalidate];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = 0;

    [(NSXPCConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    sessionProcess = self->_sessionProcess;
    self->_sessionProcess = 0;

    self->_isForeground = 0;
  }

  [(FPGracePeriodTimer *)self->_networkingGracePeriodTimer arm];
  [(RBSAssertion *)self->_foregroundAssertion invalidate];
  foregroundAssertion = self->_foregroundAssertion;
  self->_foregroundAssertion = 0;

  [(RBSAssertion *)self->_backgroundAssertion invalidate];
  backgroundAssertion = self->_backgroundAssertion;
  self->_backgroundAssertion = 0;
}

- (BOOL)terminateExtensionWithReason:(id)reason error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    rbs_pid = [(_EXExtensionProcess *)self->_sessionProcess rbs_pid];
    *buf = 67109120;
    v23 = rbs_pid;
    _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_INFO, "[INFO] Terminating session process for pid %u", buf, 8u);
  }

  if (self->_sessionProcess)
  {
    v9 = [MEMORY[0x1E69C7610] predicateMatching:?];
    v10 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:reasonCopy];
    [v10 setReportType:0];
    v11 = [objc_alloc(MEMORY[0x1E69C7660]) initWithPredicate:v9 context:v10];
    v21 = 0;
    v12 = [v11 execute:&v21];
    v13 = v21;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
LABEL_19:
      [(_EXExtensionProcess *)self->_sessionProcess invalidate];

      goto LABEL_20;
    }

    domain = [v13 domain];
    if ([domain isEqualToString:*MEMORY[0x1E69C76A0]])
    {
      code = [v14 code];

      if (code == 3)
      {
        v18 = fp_current_or_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1CEFC7000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to terminate the session, process was not found", buf, 2u);
        }

        v15 = 1;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    if (error)
    {
      v19 = v14;
      *error = v14;
    }

    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionSession terminateExtensionWithReason:error:];
    }

    v15 = 0;
    goto LABEL_18;
  }

  v15 = 1;
LABEL_20:
  [(FPDExtensionSession *)self __invalidate];

  return v15;
}

- (BOOL)_setUpConnectionWithError:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  provider = [WeakRetained provider];
  descriptor = [provider descriptor];
  personaIdentifier = [descriptor personaIdentifier];

  if (personaIdentifier || ([MEMORY[0x1E69DF068] sharedManager], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isSharedIPad"), v9, (v10 & 1) != 0))
  {
    v11 = objc_alloc(MEMORY[0x1E6966CB0]);
    v12 = objc_loadWeakRetained(&self->_fpdExtension);
    extensionRecord = [v12 extensionRecord];
    v14 = [v11 initWithApplicationExtensionRecord:extensionRecord];

    v15 = [objc_alloc(MEMORY[0x1E6966CB8]) initWithIdentifier:self->_sessionUUID];
    v16 = [objc_alloc(MEMORY[0x1E6966CC8]) initWithExtensionIdentity:v14 instanceIdentifier:v15];
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

    if ((isSharedIPad & 1) == 0)
    {
      v19 = [MEMORY[0x1E6966CD0] personaWithPersonaUniqueString:personaIdentifier];
      [v16 setLaunchPersona:v19];
    }

    v20 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.extensionkit" name:@"HandleMessage"];
    v40[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    [v16 setAssertionAttributes:v21];

    v22 = [MEMORY[0x1E6966CC0] extensionProcessWithConfiguration:v16 error:error];
    sessionProcess = self->_sessionProcess;
    self->_sessionProcess = v22;

    [(FPDExtensionSession *)self _evaluateExtensionForegroundness];
    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_loadWeakRetained(&self->_fpdExtension);
      v36 = 138412546;
      v37 = v25;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&dword_1CEFC7000, v24, OS_LOG_TYPE_INFO, "[INFO] [helena] Creating new XPC connection for extension %@, instance %{public}@", &v36, 0x16u);
    }

    v26 = [(_EXExtensionProcess *)self->_sessionProcess newXPCConnectionWithError:error];
    connection = self->_connection;
    self->_connection = v26;

    v28 = FPXVendorXPCInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v28];

    [(NSXPCConnection *)self->_connection resume];
    v29 = self->_connection;
    v30 = v29 != 0;
    if (error && !v29)
    {
      *error = FPProxyNotFoundError();
    }
  }

  else
  {
    v32 = fp_current_or_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionSession _setUpConnectionWithError:];
    }

    if (error)
    {
      *error = FPInvalidParameterError();
    }

    v33 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
    userPersonaUniqueString = [v33 userPersonaUniqueString];

    if (!userPersonaUniqueString)
    {
      v35 = fp_current_or_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        [FPDExtensionSession _setUpConnectionWithError:];
      }

      exit(1);
    }

    v30 = 0;
  }

  return v30;
}

- (id)_connectionWithError:(id *)error
{
  dispatch_assert_queue_V2(self->_sessionQueue);
  connection = self->_connection;
  if (connection)
  {
    v6 = connection;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_domain);
    provider = [WeakRetained provider];
    v9 = provider;
    if (WeakRetained && provider)
    {
      v66[0] = 0;
      [(FPDExtensionSession *)self _setUpConnectionWithError:v66];
      v10 = v66[0];
      v11 = self->_connection;
      v12 = v11;
      if (self->_connection)
      {
        v53 = v11;
        if (!self->_sessionProcess)
        {
          v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ connection -> session process"];
          v48 = fp_current_or_default_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            +[FPDVolume prettyNameForDomain:];
          }

          __assert_rtn("-[FPDExtensionSession _connectionWithError:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 372, [v47 UTF8String]);
        }

        [(RBSAssertion *)self->_foregroundAssertion invalidate];
        foregroundAssertion = self->_foregroundAssertion;
        self->_foregroundAssertion = 0;

        [(RBSAssertion *)self->_backgroundAssertion invalidate];
        backgroundAssertion = self->_backgroundAssertion;
        self->_backgroundAssertion = 0;

        v15 = [FPDXPCDomainServicer alloc];
        provider2 = [WeakRetained provider];
        manager = [provider2 manager];
        server = [manager server];
        providerDomainID = [WeakRetained providerDomainID];
        v20 = [(FPDXPCDomainServicer *)v15 initWithServer:server providerDomainID:providerDomainID domain:WeakRetained connection:v53];

        objc_initWeak(&location, self);
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __44__FPDExtensionSession__connectionWithError___block_invoke;
        v61[3] = &unk_1E83C1DD0;
        objc_copyWeak(&v64, &location);
        v21 = v53;
        v62 = v21;
        v22 = v20;
        v63 = v22;
        [(NSXPCConnection *)v21 setInterruptionHandler:v61];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __44__FPDExtensionSession__connectionWithError___block_invoke_2;
        v57[3] = &unk_1E83C1DD0;
        objc_copyWeak(&v60, &location);
        v23 = v21;
        v58 = v23;
        v52 = v22;
        v59 = v52;
        [(NSXPCConnection *)v23 setInvalidationHandler:v57];
        v24 = objc_alloc(MEMORY[0x1E69674C0]);
        providerDomainID2 = [WeakRetained providerDomainID];
        v26 = [v24 initWithProviderDomainIdentifier:providerDomainID2];
        [(NSXPCConnection *)v23 fp_annotateWithXPCSanitizer:v26];

        nsDomainOrNilForDefault = [WeakRetained nsDomainOrNilForDefault];
        v28 = nsDomainOrNilForDefault;
        if (nsDomainOrNilForDefault)
        {
          v54 = nsDomainOrNilForDefault;
        }

        else
        {
          v30 = objc_alloc(MEMORY[0x1E69674D8]);
          v54 = [v30 initWithIdentifier:*MEMORY[0x1E6967178] displayName:&stru_1F4C2FFD0 pathRelativeToDocumentStorage:&stru_1F4C2FFD0];
        }

        provider3 = [WeakRetained provider];
        descriptor = [provider3 descriptor];
        personaIdentifier = [descriptor personaIdentifier];
        [v54 setPersonaIdentifier:personaIdentifier];
        v51 = v10;

        remoteObjectProxy = [(NSXPCConnection *)v23 remoteObjectProxy];
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __44__FPDExtensionSession__connectionWithError___block_invoke_2_62;
        v55[3] = &unk_1E83BDFC8;
        v35 = WeakRetained;
        v56 = v35;
        v36 = [remoteObjectProxy remoteObjectProxyWithErrorHandler:v55];

        v37 = [v9 providerDomainForDomain:v35];
        if ([v37 isUsingFPFS])
        {
          nsDomainOrNilForDefault2 = [v35 nsDomainOrNilForDefault];
          if (nsDomainOrNilForDefault2)
          {
            volume = [v35 volume];
            role = [volume role];

            if (role != 3)
            {
              domain = [v37 domain];
              backingStoreIdentity = [domain backingStoreIdentity];

              if (!backingStoreIdentity)
              {
                v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ missing backing store identity for domain %@", v35];
                v50 = fp_current_or_default_log();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
                {
                  +[FPDVolume prettyNameForDomain:];
                }

                __assert_rtn("-[FPDExtensionSession _connectionWithError:]", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 428, [v49 UTF8String]);
              }
            }
          }
        }

        _alternateContentsDictionary = [(FPDExtensionSession *)self _alternateContentsDictionary];
        defaultBackend = [v35 defaultBackend];
        domainVersion = [defaultBackend domainVersion];
        [v36 beginRequestWithDomain:v54 alternateContentsDictionary:_alternateContentsDictionary domainServicer:v52 providerDomain:v37 domainVersion:domainVersion completionHandler:&__block_literal_global_33];

        v6 = v23;
        objc_destroyWeak(&v60);

        objc_destroyWeak(&v64);
        objc_destroyWeak(&location);

        v10 = v51;
        v12 = v53;
      }

      else if (error)
      {
        v29 = v10;
        v6 = 0;
        *error = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] fp_invalidArgumentError:{@"nil domain %@ or provider %@", WeakRetained, provider}];
      *error = v6 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void __44__FPDExtensionSession__connectionWithError___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __44__FPDExtensionSession__connectionWithError___block_invoke_cold_1();
    }

    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__FPDExtensionSession__connectionWithError___block_invoke_58;
    block[3] = &unk_1E83BDE60;
    block[4] = WeakRetained;
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void *__44__FPDExtensionSession__connectionWithError___block_invoke_58(void *a1)
{
  result = a1[4];
  if (result[3] == a1[5])
  {
    [result _invalidate];
    v3 = a1[6];

    return [v3 invalidate];
  }

  return result;
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __44__FPDExtensionSession__connectionWithError___block_invoke_2_cold_1();
    }

    v4 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__FPDExtensionSession__connectionWithError___block_invoke_59;
    block[3] = &unk_1E83BDE60;
    block[4] = WeakRetained;
    v6 = a1[4];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void *__44__FPDExtensionSession__connectionWithError___block_invoke_59(void *a1)
{
  result = a1[4];
  if (result[3] == a1[5])
  {
    [result _invalidate];
    v3 = a1[6];

    return [v3 invalidate];
  }

  return result;
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_2_62(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__FPDExtensionSession__connectionWithError___block_invoke_2_62_cold_1(a1, v3);
  }
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_67(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fp_unwrappedInternalError];
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__FPDExtensionSession__connectionWithError___block_invoke_67_cold_1();
    }

    if ([v4 fp_isFileProviderInternalError:18])
    {
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __44__FPDExtensionSession__connectionWithError___block_invoke_67_cold_2();
      }

      exit(1);
    }
  }
}

- (BOOL)hasFileProviderAttributionMDMAccess
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  WeakRetained = objc_loadWeakRetained(&self->_domain);
  nsDomain = [WeakRetained nsDomain];
  if (![nsDomain isContentManaged] || !objc_msgSend(v3, "objectIsForcedForKey:", @"AllowManagedFileProvidersToRequestAttribution"))
  {

    goto LABEL_6;
  }

  v6 = [v3 BOOLForKey:@"AllowManagedFileProvidersToRequestAttribution"];

  if ((v6 & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (id)existingFileProviderProxyWithTimeout:(double)timeout onlyAlreadyLifetimeExtended:(BOOL)extended pid:(int)pid
{
  v5 = *&pid;
  if (!extended)
  {
    goto LABEL_4;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  keyEnumerator = [(NSMapTable *)selfCopy->_lifetimeExtenders keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  if (nextObject)
  {
    objc_sync_exit(selfCopy);

LABEL_4:
    v11 = [(FPDExtensionSession *)self newFileProviderProxyWithTimeoutValue:v5 pid:0 createIfNeeded:timeout];
    goto LABEL_5;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  v11 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:0 protocol:&unk_1F4C8C390 orError:v13 name:selfCopy->_providerIdentifier requestPid:v5];

  objc_sync_exit(selfCopy);
LABEL_5:

  return v11;
}

- (id)newFileProviderProxyWithTimeoutValue:(double)value pid:(int)pid createIfNeeded:(BOOL)needed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__21;
  v15 = __Block_byref_object_dispose__21;
  v16 = 0;
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke;
  block[3] = &unk_1E83C1EE8;
  neededCopy = needed;
  block[4] = self;
  block[5] = &v11;
  pidCopy = pid;
  *&block[6] = value;
  block[7] = a2;
  dispatch_sync(sessionQueue, block);
  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke(uint64_t a1)
{
  v32 = fpfs_adopt_log();
  v2 = *(a1 + 32);
  if (*(v2 + 124) & 1) == 0 && (*(v2 + 24) || (*(a1 + 68)))
  {
    if (*(a1 + 64) >= 1)
    {
      [*(v2 + 112) addPIDToObserveSync:?];
      v2 = *(a1 + 32);
    }

    v31 = 0;
    v7 = [v2 _connectionWithError:&v31];
    v8 = v31;
    v9 = [*(a1 + 32) _evaluateExtensionForegroundness];
    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_cold_1();
      }

      [*(*(a1 + 32) + 136) invalidate];
      [*(*(a1 + 32) + 24) invalidate];
      v12 = *(a1 + 32);
      v13 = *(v12 + 136);
      *(v12 + 136) = 0;

      v14 = *(a1 + 32);
      v15 = *(v14 + 24);
      *(v14 + 24) = 0;

      v16 = *(a1 + 32);
      v30 = v8;
      v17 = [v16 _connectionWithError:&v30];
      v18 = v30;

      [*(a1 + 32) _evaluateExtensionForegroundness];
      v7 = v17;
      v8 = v18;
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__21;
    v28[4] = __Block_byref_object_dispose__21;
    v29 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_215;
    aBlock[3] = &unk_1E83C1E98;
    aBlock[4] = *(a1 + 32);
    aBlock[5] = v28;
    aBlock[6] = *(a1 + 48);
    v27 = *(a1 + 64);
    aBlock[7] = *(a1 + 56);
    v19 = _Block_copy(aBlock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_224;
    v25[3] = &unk_1E83C1EC0;
    v25[4] = *(a1 + 32);
    v25[5] = v28;
    v20 = _Block_copy(v25);
    v21 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:v7 protocol:&unk_1F4C8C390 orError:v8 name:*(*(a1 + 32) + 80) requestPid:*(a1 + 64) requestWillBegin:v19 requestDidBegin:v20];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = fp_current_or_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 96) suppress];
    _Block_object_dispose(v28, 8);
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    v4 = [objc_alloc(MEMORY[0x1E69674B0]) initWithConnection:0 protocol:&unk_1F4C8C390 orError:v3 name:*(*(a1 + 32) + 80) requestPid:*(a1 + 64)];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  __fp_pop_log();
}

id __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_215(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v27 = fpfs_adopt_log();
  objc_initWeak(&location, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2;
  aBlock[3] = &unk_1E83C1E20;
  objc_copyWeak(v25, &location);
  v25[1] = a3;
  v9 = _Block_copy(aBlock);
  v10 = [[_FPDExtensionRequestRecord alloc] initWithSelector:a3 proxy:v7 timeout:*(*(a1 + 32) + 8) queue:*(*(a1 + 32) + 88) log:v9 timeoutHandler:*(a1 + 48)];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);
  objc_sync_enter(v13);
  [*(*(a1 + 32) + 48) setObject:*(*(*(a1 + 40) + 8) + 40) forKey:v8];
  objc_sync_exit(v13);

  LODWORD(v13) = *(a1 + 64);
  if (v13 != [v7 requestEffectivePid])
  {
    [*(*(a1 + 32) + 112) addPIDToObserveSync:{objc_msgSend(v7, "requestEffectivePid")}];
    if (*(a1 + 64) >= 1)
    {
      [*(*(a1 + 32) + 112) removePIDToObserve:?];
    }

    [*(*(a1 + 32) + 112) addPIDToObserve:{objc_msgSend(v7, "requestEffectivePid")}];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_217;
  v20[3] = &unk_1E83C1E70;
  v14 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v8;
  v15 = *(a1 + 56);
  v22 = v14;
  v23 = v15;
  v16 = v8;
  v17 = _Block_copy(v20);
  v18 = _Block_copy(v17);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
  __fp_pop_log();

  return v18;
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_cold_1(a1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateExtensionIfPossible];
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_217(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_218;
  v12[3] = &unk_1E83C1E48;
  v9 = a1[5];
  v16 = a1[6];
  v12[4] = v7;
  v13 = v5;
  v14 = v9;
  v15 = v6;
  v17 = a1[7];
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, v12);
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_218(uint64_t a1)
{
  v7 = fpfs_adopt_log();
  [*(*(*(a1 + 64) + 8) + 40) cancelTimeout];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_218_cold_1();
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(a1 + 56);
  if (*(a1 + 48) != v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ASSERT] ‼️ begin and finished request IDs should match: %@ %@", *(a1 + 48), v4];
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      +[FPDVolume prettyNameForDomain:];
    }

    __assert_rtn("-[FPDExtensionSession newFileProviderProxyWithTimeoutValue:pid:createIfNeeded:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fileproviderd/FPDExtensionSession.m", 608, [v5 UTF8String]);
  }

  [*(*(a1 + 32) + 48) removeObjectForKey:?];
  objc_sync_exit(v3);

  [*(*(a1 + 32) + 112) removePIDToObserve:{objc_msgSend(*(a1 + 40), "requestEffectivePid")}];
  [*(a1 + 32) _invalidateExtensionIfPossible];
  __fp_pop_log();
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_224(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = fpfs_adopt_log();
  if (v10)
  {
    [*(*(*(a1 + 40) + 8) + 40) monitorProgress:v10];
  }

  __fp_pop_log();
}

- (void)registerLifetimeExtensionForObject:(id)object
{
  objectCopy = object;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__FPDExtensionSession_registerLifetimeExtensionForObject___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_sync(sessionQueue, v7);
}

void __58__FPDExtensionSession_registerLifetimeExtensionForObject___block_invoke(uint64_t a1)
{
  v12 = fpfs_adopt_log();
  [*(*(a1 + 32) + 96) suppress];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 40) timeout], v2 > 0.0))
  {
    objc_initWeak(&location, *(a1 + 40));
    objc_initWeak(&from, *(a1 + 32));
    v3 = objc_alloc(MEMORY[0x1E6967350]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__FPDExtensionSession_registerLifetimeExtensionForObject___block_invoke_2;
    v7[3] = &unk_1E83BEFD8;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, &from);
    v4 = *(*(a1 + 32) + 8);
    [*(a1 + 40) timeout];
    v5 = [v3 initWithAction:v7 callbackQueue:v4 delay:?];
    [(__CFString *)v5 arm];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = @"lifetime extender without timeout";
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(*(a1 + 32) + 56) setObject:v5 forKey:*(a1 + 40)];
  objc_sync_exit(v6);

  [*(*(a1 + 32) + 112) addPIDToObserve:{objc_msgSend(*(a1 + 40), "requestEffectivePID")}];
  __fp_pop_log();
}

void __58__FPDExtensionSession_registerLifetimeExtensionForObject___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));

    if (v3)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained setTimeoutState:2];
      }

      v4 = objc_loadWeakRetained((a1 + 40));
      [v4 _unregisterLifetimeExtensionForObject:WeakRetained];
    }
  }
}

- (void)_unregisterLifetimeExtensionForObject:(id)object
{
  objectCopy = object;
  v7 = fpfs_adopt_log();
  dispatch_assert_queue_V2(self->_sessionQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMapTable *)selfCopy->_lifetimeExtenders objectForKey:objectCopy];
  [(NSMapTable *)selfCopy->_lifetimeExtenders removeObjectForKey:objectCopy];
  objc_sync_exit(selfCopy);

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 suppress];
    }

    -[FPDProcessMonitor removePIDToObserve:](selfCopy->_processMonitor, "removePIDToObserve:", [objectCopy requestEffectivePID]);
  }

  [(FPDExtensionSession *)selfCopy _invalidateExtensionIfPossible];

  __fp_pop_log();
}

- (void)unregisterLifetimeExtensionForObject:(id)object
{
  objectCopy = object;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FPDExtensionSession_unregisterLifetimeExtensionForObject___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_sync(sessionQueue, v7);
}

- (void)asyncUnregisterLifetimeExtensionForObject:(id)object
{
  objectCopy = object;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FPDExtensionSession_asyncUnregisterLifetimeExtensionForObject___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(sessionQueue, v7);
}

- (void)start
{
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__FPDExtensionSession_start__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

void __28__FPDExtensionSession_start__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    v4 = *(*(a1 + 32) + 80);
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%{public}@] starting extension request %{public}@", buf, 0x16u);
  }

  if (*(*(a1 + 32) + 80))
  {
    v10 = *(*(a1 + 32) + 80);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [[FPDProcessMonitor alloc] initWithExcludedBundleIDs:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 112);
  *(v7 + 112) = v6;

  [*(*(a1 + 32) + 112) setDelegate:?];
  __fp_pop_log();
}

- (void)terminateWithReason:(id)reason
{
  reasonCopy = reason;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__FPDExtensionSession_terminateWithReason___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(sessionQueue, v7);
}

void __43__FPDExtensionSession_terminateWithReason___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 80);
    *buf = 138543618;
    v14 = v4;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[WARNING] %{public}@: terminating extension request for reason: %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = 0;
  v7 = [v5 terminateExtensionWithReason:v6 error:&v11];
  v8 = v11;
  if ((v7 & 1) == 0)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 fp_prettyDescription];
      [(FPDExtensionSession *)v10 _invalidateExtensionIfPossible];
    }
  }

  __fp_pop_log();
}

- (void)cancelAsync
{
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPDExtensionSession_cancelAsync__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

void __34__FPDExtensionSession_cancelAsync__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = fpfs_adopt_log();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 80);
    *buf = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_DEFAULT, "[WARNING] %{public}@: cancelling extension request", buf, 0xCu);
  }

  [*(a1 + 32) _invalidate];
  __fp_pop_log();
}

- (void)invalidate
{
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPDExtensionSession_invalidate__block_invoke;
  block[3] = &unk_1E83BE068;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

void __33__FPDExtensionSession_invalidate__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v8 = fpfs_adopt_log();
  *(*v2 + 124) = 1;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) description];
    v5 = *(*(a1 + 32) + 80);
    *buf = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] [%{public}@] %{public}@: cancelling extension request", buf, 0x16u);
  }

  [*(a1 + 32) _invalidate];
  [*(*(a1 + 32) + 104) suppress];
  [*(a1 + 32) _notifyNetworkingProviderMonitorWithState:0];
  [*(*(a1 + 32) + 112) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = 0;

  __fp_pop_log();
}

- (void)_networkingGracePeriodOver
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_notifyNetworkingProviderMonitorWithState:(BOOL)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_sessionQueue);
  v5 = [(NSString *)self->_providerIdentifier stringByAppendingString:@".foreground"];
  fp_libnotifyPerUserNotificationName = [v5 fp_libnotifyPerUserNotificationName];

  notifyTokenForFramework = self->_notifyTokenForFramework;
  p_notifyTokenForFramework = &self->_notifyTokenForFramework;
  v6 = notifyTokenForFramework;
  if (notifyTokenForFramework != -1)
  {
    goto LABEL_2;
  }

  if (!notify_register_check([fp_libnotifyPerUserNotificationName UTF8String], p_notifyTokenForFramework))
  {
    v6 = *p_notifyTokenForFramework;
LABEL_2:
    notify_set_state(v6, stateCopy);
    notify_post([fp_libnotifyPerUserNotificationName UTF8String]);
  }
}

- (id)newAssertionWithAttributeName:(id)name reason:(id)reason
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  reasonCopy = reason;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sessionProcess = self->_sessionProcess;
    *location = 138412802;
    *&location[4] = nameCopy;
    v25 = 2112;
    v26 = sessionProcess;
    v27 = 2112;
    v28 = reasonCopy;
    _os_log_debug_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] creating a new assertion %@ for %@ (%@)", location, 0x20u);
  }

  v9 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:self->_sessionProcess];
  v10 = objc_alloc(MEMORY[0x1E69C7548]);
  v11 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.FileProvider" name:nameCopy];
  v23 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v13 = [v10 initWithExplanation:reasonCopy target:v9 attributes:v12];

  objc_initWeak(location, self);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__FPDExtensionSession_newAssertionWithAttributeName_reason___block_invoke;
  v21[3] = &unk_1E83C1F30;
  objc_copyWeak(&v22, location);
  [v13 setInvalidationHandler:v21];
  v20 = 0;
  v14 = [v13 acquireWithError:&v20];
  v15 = v20;
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v17 = fp_current_or_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FPDExtensionSession newAssertionWithAttributeName:reason:];
    }

    v16 = 0;
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(location);

  return v16;
}

void __60__FPDExtensionSession_newAssertionWithAttributeName_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained assertionWasInvalidated:v3];
}

- (void)assertionWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__FPDExtensionSession_assertionWasInvalidated___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = invalidatedCopy;
  selfCopy = self;
  v6 = invalidatedCopy;
  dispatch_async(sessionQueue, v7);
}

void __47__FPDExtensionSession_assertionWasInvalidated___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) explanation];
    v5 = *(a1 + 40);
    v10 = 138543618;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Extension assertion '%{public}@' for %@ was invalidated", &v10, 0x16u);
  }

  v6 = [*(a1 + 40) terminateExtensionWithReason:@"run assertion was invalidated" error:0];
  v7 = fp_current_or_default_log();
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FPDExtensionSession_assertionWasInvalidated___block_invoke_cold_1();
    }

    exit(0);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_1CEFC7000, v8, OS_LOG_TYPE_INFO, "[INFO] Terminated extension %@", &v10, 0xCu);
  }
}

- (void)processMonitor:(id)monitor didBecomeForeground:(BOOL)foreground
{
  sessionQueue = self->_sessionQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__FPDExtensionSession_processMonitor_didBecomeForeground___block_invoke;
  v5[3] = &unk_1E83BFFD0;
  v5[4] = self;
  foregroundCopy = foreground;
  dispatch_async(sessionQueue, v5);
}

void *__58__FPDExtensionSession_processMonitor_didBecomeForeground___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[125];
  v4 = *(a1 + 40);
  result = [v2 _evaluateExtensionForegroundness];
  if (v3 != v4)
  {
    v6 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {

      return [v6 _notifyNetworkingProviderMonitorWithState:1];
    }

    else
    {
      v7 = v6[13];

      return [v7 arm];
    }
  }

  return result;
}

- (void)dumpStateTo:(id)to
{
  toCopy = to;
  sessionQueue = self->_sessionQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__FPDExtensionSession_dumpStateTo___block_invoke;
  v7[3] = &unk_1E83BE158;
  v7[4] = self;
  v8 = toCopy;
  v6 = toCopy;
  dispatch_sync(sessionQueue, v7);
}

void __35__FPDExtensionSession_dumpStateTo___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 144))
  {
    v3 = @"foreground";
    v4 = 2;
  }

  else
  {
    if (!*(v2 + 152))
    {
      goto LABEL_6;
    }

    v3 = @"background";
    v4 = 3;
  }

  [*(a1 + 40) startFgColor:v4];
  [*(a1 + 40) write:v3];
  [*(a1 + 40) reset];
LABEL_6:
  v5 = *(a1 + 32);
  if (*(v5 + 32))
  {
    [*(a1 + 40) startFgColor:3];
    [*(a1 + 40) write:@" request running;"];
    [*(a1 + 40) reset];
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 40);
  v7 = [*(v5 + 112) prettyDescription];
  v8 = [*(*(a1 + 32) + 96) prettyDescription];
  [v6 write:{@" %@; grace period timer %@\n", v7, v8}];

  v9 = [*(*(a1 + 32) + 56) keyEnumerator];
  v10 = [v9 allObjects];

  if ([v10 count])
  {
    v11 = *(a1 + 40);
    if (*(*(a1 + 32) + 24))
    {
      [v11 startFgColor:3];
      [*(a1 + 40) write:{@" alive (%d) via ExtensionKit", objc_msgSend(*(*(a1 + 32) + 136), "rbs_pid")}];
    }

    else
    {
      [v11 startFgColor:1];
      [*(a1 + 40) write:{@" without connection", v24}];
    }

    [*(a1 + 40) reset];
    [*(a1 + 40) write:@" for:\n"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(a1 + 40);
          v18 = [*(*(&v29 + 1) + 8 * v16) prettyDescription];
          [v17 write:{@"     %@\n", v18}];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v14);
    }
  }

  if ([*(*(a1 + 32) + 48) count])
  {
    [*(a1 + 40) startFgColor:3];
    [*(a1 + 40) write:@" alive"];
    [*(a1 + 40) reset];
    [*(a1 + 40) write:@" due to XPC calls\n"];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [*(*(a1 + 32) + 48) allValues];
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(a1 + 40) write:{@"     %@\n", *(*(&v25 + 1) + 8 * v23++)}];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v21);
    }
  }
}

- (void)terminateExtensionWithReason:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setUpConnectionWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_2_62_cold_1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) fp_prettyDescription];
  v4 = [a2 fp_prettyDescription];
  *v11 = 138412546;
  *&v11[4] = v3;
  *&v11[12] = 2112;
  *&v11[14] = v4;
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v5, v6, "[ERROR] Failed to send initial bringup message to domain %@: %@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16]);
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_67_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __44__FPDExtensionSession__connectionWithError___block_invoke_67_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__FPDExtensionSession_newFileProviderProxyWithTimeoutValue_pid_createIfNeeded___block_invoke_2_cold_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = NSStringFromSelector(*(a1 + 40));
  *v10 = 138543618;
  *&v10[4] = WeakRetained;
  *&v10[12] = 2114;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1_5(&dword_1CEFC7000, v4, v5, "[ERROR] %{public}@ took too long to perform: %{public}@, killing it...", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

- (void)newAssertionWithAttributeName:reason:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1CEFC7000, v1, OS_LOG_TYPE_ERROR, "[ERROR] can't acquire %@ assertion: %@", v2, 0x16u);
}

void __47__FPDExtensionSession_assertionWasInvalidated___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end