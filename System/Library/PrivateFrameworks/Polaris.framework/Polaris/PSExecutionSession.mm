@interface PSExecutionSession
+ (PSExecutionSession)sessionWithName:(id)name;
+ (PSExecutionSession)sharedInstance;
+ (id)nameForExecutionSessionKey:(int)key;
+ (id)sessionRegistrationDict;
+ (id)sharedInstanceForExecutionSessionKey:(int)key;
+ (id)sharedInstanceWithProvider:(id)provider;
+ (id)uniqueSessionWithName:(id)name;
+ (os_unfair_lock_s)sessionRegistrationLock;
+ (void)removeSessionWithName:(id)name;
+ (void)setSession:(id)session forName:(id)name;
- (BOOL)createWorkgroupInterval:(const char *)interval workloadID:(const char *)d type:(unsigned __int16)type graphTag:(id)tag;
- (BOOL)destroyWorkgroupForGraphTag:(id)tag;
- (BOOL)requestSystemReplayEnd;
- (BOOL)requestSystemReplayStart;
- (PSExecutionSession)initWithName:(id)name isUniqueSession:(BOOL)session;
- (id)initForLocalReplay;
- (id)initForLocalReplayWithSystemPulseRate:(id)rate telemetryEnabled:(BOOL)enabled;
- (id)initForLocalReplayWithTelemetryEnabled;
- (uint64_t)deleteSession;
- (uint64_t)publishContext;
- (unint64_t)getRetainedBufferCountForKey:(id)key;
- (unint64_t)getRetainedBufferCountForStream:(id)stream;
- (unsigned)copyWorkgroupPortForGraphTag:(id)tag;
- (void)dealloc;
- (void)deleteSession;
- (void)deregisterFromResourceAvailabilityUpdates:(id)updates;
- (void)enteringSleep;
- (void)exitingSleep;
- (void)failedToProcessNotificationsOfResourcesNoLongerWanted:(id)wanted reason:(unint64_t)reason;
- (void)failedToProcessPauseRequests:(id)requests reason:(unint64_t)reason;
- (void)failedToProcessResourceRequests:(id)requests reason:(unint64_t)reason;
- (void)failedToProcessSetupRequests:(id)requests reason:(unint64_t)reason;
- (void)pauseRequestsAreComplete:(id)complete;
- (void)producedStridesWillChangeTo:(id)to atFrameID:(id)d isPhysicalFrameID:(BOOL)iD forBaseMSGSyncID:(id)syncID;
- (void)producedStridesWillChangeTo:(id)to atPhysicalFrameID:(id)d;
- (void)producibleStridesHaveChangedTo:(id)to;
- (void)publishContext;
- (void)publishContext:(id)context;
- (void)publishContextForLocalReplay;
- (void)registerForContextUpdatesFromResourcesWithCategory:(unint64_t)category;
- (void)registerForResourceAvailabilityUpdates:(id)updates;
- (void)requestedResourcesAreBeingProduced:(id)produced;
- (void)resourceAvailabilityHasChangedTo:(id)to;
- (void)resourceRequestsAreComplete:(id)complete;
- (void)resourcesNoLongerWantedProcessed:(id)processed;
- (void)resumedProducingRequestedResources:(id)resources reason:(unint64_t)reason;
- (void)setDeterministicReplay:(BOOL)replay;
- (void)setupRequestsAreComplete:(id)complete;
- (void)waitForContextFromExecutionSession:(int)session;
- (void)waitForContextFromExecutionSessionsProvidingResources:(id)resources;
- (void)willStopProducingRequestedResources:(id)resources reason:(unint64_t)reason;
@end

@implementation PSExecutionSession

+ (id)sharedInstanceForExecutionSessionKey:(int)key
{
  v3 = *&key;
  v4 = +[PSExecutionSession sessionRegistrationLock];
  os_unfair_lock_lock(v4);
  v5 = [PSExecutionSession nameForExecutionSessionKey:v3];
  v6 = [PSExecutionSession sessionWithName:v5];
  if (!v6)
  {
    v6 = [[PSExecutionSession alloc] initWithName:v5];
    if (v6)
    {
      [PSExecutionSession setSession:v6 forName:v5];
    }
  }

  os_unfair_lock_unlock(v4);

  return v6;
}

+ (id)uniqueSessionWithName:(id)name
{
  nameCopy = name;
  v4 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = uUIDString;
  if (nameCopy)
  {
    [v4 stringWithFormat:@"%@-%@-%@", processName, nameCopy, uUIDString];
  }

  else
  {
    [v4 stringWithFormat:@"%@-%@", processName, uUIDString, v13];
  }
  v10 = ;

  v11 = [[PSExecutionSession alloc] initWithName:v10 isUniqueSession:1];

  return v11;
}

+ (PSExecutionSession)sharedInstance
{
  v2 = +[PSExecutionSessionWorkarounds sharedInstance];
  v3 = [v2 keyForProviderName:0];

  if (v3 == 28)
  {
    v5 = __PLSLogSharedInstance(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Deprecated API +[PSExecutionSession sharedInstance] was called and the current process was not grandfathered in. Please use +[PSExecutionSession sharedInstanceForExecutionSessionKey] instead", v9, 2u);
    }
  }

  v6 = +[PSExecutionSessionWorkarounds sharedInstance];
  [v6 setIsUsingLegacyAPI:1];

  v7 = [PSExecutionSession sharedInstanceForExecutionSessionKey:v3];

  return v7;
}

+ (id)sharedInstanceWithProvider:(id)provider
{
  v13 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v4 = +[PSExecutionSessionWorkarounds sharedInstance];
  v5 = [v4 keyForProviderName:providerCopy];

  if (v5 == 28)
  {
    v7 = __PLSLogSharedInstance(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      uTF8String = [providerCopy UTF8String];
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Deprecated API +[PSExecutionSession sharedInstanceWithProvider:] was called and the given providerName (%s) was not grandfathered in. Please use +[PSExecutionSession sharedInstanceForExecutionSessionKey] instead", &v11, 0xCu);
    }
  }

  v8 = +[PSExecutionSessionWorkarounds sharedInstance];
  [v8 setIsUsingLegacyAPI:1];

  v9 = [PSExecutionSession sharedInstanceForExecutionSessionKey:v5];

  return v9;
}

- (void)deleteSession
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_name)
  {
    v3 = __PLSLogSharedInstance(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(NSString *)self->_name UTF8String];
      v19 = 136315138;
      v20 = uTF8String;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Deleting execution session for key %s", &v19, 0xCu);
    }

    getRunningGraphs = [(PSExecutionDashboard *)self->_dashboard getRunningGraphs];
    v6 = [getRunningGraphs count] == 0;

    if (v6)
    {
      transitionManager = self->_transitionManager;
      if (transitionManager)
      {
        compiler = [(PSTransitionManager *)transitionManager compiler];
        [compiler destroyAllThreadPools];

        v9 = self->_transitionManager;
        self->_transitionManager = 0;
      }

      prm_mgr = self->_prm_mgr;
      if (prm_mgr)
      {
        ps_prm_delete_manager(prm_mgr);
        self->_prm_mgr = 0;
      }

      gsm = self->_gsm;
      if (gsm)
      {
        ps_gsm_remove_gsm(&gsm->var0);
        self->_gsm = 0;
      }

      if (self->_isLivenessEnabled)
      {
        ps_frame_history_client_handle_deinit(self->_frameHistoryClientHandle);
        uTF8String2 = [(NSString *)self->_name UTF8String];
        ps_liveness_destroy(uTF8String2, v13);
        self->_isLivenessEnabled = 0;
      }

      if (self->_isCoreAnalyticsEnabled)
      {
        ps_ca_client_deinit();
      }

      systemGraph = self->_systemGraph;
      if (systemGraph)
      {
        [(PSSystemGraphClientInterface *)systemGraph deregister];
        v15 = self->_systemGraph;
        self->_systemGraph = 0;
      }

      systemGraphSession = self->_systemGraphSession;
      if (systemGraphSession)
      {
        xpc_session_cancel(systemGraphSession);
        v17 = self->_systemGraphSession;
        self->_systemGraphSession = 0;
      }

      if (![(PSExecutionDashboard *)self->_dashboard isLocalReplaySession])
      {
        v18 = +[PSExecutionSession sessionRegistrationLock];
        os_unfair_lock_lock(v18);
        [PSExecutionSession removeSessionWithName:self->_name];
        os_unfair_lock_unlock(v18);
      }

      pbs_ringbufferlogger_enable_for_process();
    }

    else
    {
      [(PSExecutionSession *)&v19 deleteSession];
      __break(1u);
    }
  }
}

- (void)dealloc
{
  [(PSExecutionSession *)self deleteSession];
  v3.receiver = self;
  v3.super_class = PSExecutionSession;
  [(PSExecutionSession *)&v3 dealloc];
}

+ (os_unfair_lock_s)sessionRegistrationLock
{
  if (sessionRegistrationLock_onceToken != -1)
  {
    +[PSExecutionSession sessionRegistrationLock];
  }

  return &sessionRegistrationLock_lock;
}

+ (id)sessionRegistrationDict
{
  if (sessionRegistrationDict_onceToken != -1)
  {
    +[PSExecutionSession sessionRegistrationDict];
  }

  v3 = sessionRegistrationDict_sessionDict;

  return v3;
}

uint64_t __45__PSExecutionSession_sessionRegistrationDict__block_invoke()
{
  sessionRegistrationDict_sessionDict = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (PSExecutionSession)sessionWithName:(id)name
{
  nameCopy = name;
  v4 = +[PSExecutionSession sessionRegistrationDict];
  v5 = [v4 objectForKey:nameCopy];

  return v5;
}

+ (void)setSession:(id)session forName:(id)name
{
  nameCopy = name;
  sessionCopy = session;
  v7 = +[PSExecutionSession sessionRegistrationDict];
  [v7 setObject:sessionCopy forKey:nameCopy];
}

+ (void)removeSessionWithName:(id)name
{
  nameCopy = name;
  v4 = +[PSExecutionSession sessionRegistrationDict];
  [v4 removeObjectForKey:nameCopy];
}

+ (id)nameForExecutionSessionKey:(int)key
{
  if (key < 0x1C)
  {
    goto LABEL_2;
  }

  if (key > 32)
  {
    if (key == 33)
    {
LABEL_13:
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      goto LABEL_14;
    }

    if (key != 34)
    {
LABEL_12:
      [(PSExecutionSession *)&v7 nameForExecutionSessionKey:key];
      goto LABEL_13;
    }

LABEL_2:
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:PSExecutionSessionKeyDescription[key]];
    goto LABEL_3;
  }

  if ((key - 29) < 4)
  {
    goto LABEL_2;
  }

  if (key != 28)
  {
    goto LABEL_12;
  }

  uUID = [MEMORY[0x277CCAC38] processInfo];
  uUIDString = [uUID processName];
LABEL_14:
  v3 = uUIDString;

LABEL_3:

  return v3;
}

- (PSExecutionSession)initWithName:(id)name isUniqueSession:(BOOL)session
{
  v60 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v57.receiver = self;
  v57.super_class = PSExecutionSession;
  v7 = [(PSExecutionSession *)&v57 init];
  v8 = v7;
  if (v7)
  {
    [(PSExecutionSession *)v7 setName:nameCopy];
    v8->_isUniqueSession = session;
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    resourceCategorySubscriptions = v8->_resourceCategorySubscriptions;
    v8->_resourceCategorySubscriptions = v9;

    v11 = +[PLSSettings currentSettings];
    enableEntitlementChecks = [v11 enableEntitlementChecks];

    if (!enableEntitlementChecks || (ps_util_check_process_entitlements() & 1) != 0)
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = +[PLSSettings currentSettings];
      v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v14, "systemPulseRate")}];
      [(PSExecutionSession *)v8 setSystemPulseRate:v15];

      if (ps_util_init_mach_time_factor(v16, v17) != 0.0)
      {
        ps_util_is_internal_build(v18, v19);
        v20 = [[PSSystemGraphClientInterface alloc] initWithSession:v8];
        systemGraph = v8->_systemGraph;
        v8->_systemGraph = v20;

        v22 = +[PLSSettings currentSettings];
        enableFastTransition = [v22 enableFastTransition];

        if (enableFastTransition)
        {
          error_out = 0;
          v24 = xpc_session_create_mach_service("com.apple.polaris.systemgraph_v2", 0, XPC_SESSION_CREATE_NONE, &error_out);
          v25 = error_out;
          systemGraphSession = v8->_systemGraphSession;
          v8->_systemGraphSession = v24;

          if (v25)
          {
            v28 = xpc_rich_error_copy_description(v25);
            v29 = __PLSLogSharedInstance(v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v59 = v28;
              _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "Encountered an error while connecting to sysgraph xpc service : error = %s", buf, 0xCu);
            }

            free(v28);
          }

          else
          {
            v30 = __PLSLogSharedInstance(v27);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = getpid();
              *buf = 67109120;
              LODWORD(v59) = v31;
              _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Client %d was able to establish connection with PS_POLARISD_SYSGRAPH_XPC_SERVICE", buf, 8u);
            }
          }
        }

        v8->_isCoreAnalyticsEnabled = 1;
        v32 = +[PSExecutionSessionWorkarounds sharedInstance];
        shouldDisableCoreAnalytics = [v32 shouldDisableCoreAnalytics];

        if (shouldDisableCoreAnalytics)
        {
          v36 = __PLSLogSharedInstance(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_DEFAULT, "Polaris CoreAnalytics is disabled for this process...", buf, 2u);
          }

          v8->_isCoreAnalyticsEnabled = 0;
        }

        else if (v8->_isCoreAnalyticsEnabled)
        {
          ps_ca_client_init(v34, v35);
        }

        v37 = objc_alloc(MEMORY[0x277D3E688]);
        name = [(PSExecutionSession *)v8 name];
        v39 = [v37 initForExecutionSession:name];
        context = v8->_context;
        v8->_context = v39;

        v41 = [[PLSDevice alloc] initWithContext:v8->_context];
        device = v8->_device;
        v8->_device = v41;

        v43 = objc_alloc_init(PSExecutionDashboard);
        dashboard = v8->_dashboard;
        v8->_dashboard = v43;

        v45 = objc_alloc_init(PSComputeDevices);
        computeDevices = v8->_computeDevices;
        v8->_computeDevices = v45;

        v8->_gsm = ps_gsm_map_shared();
        if (v8->_systemGraphSession)
        {
          v47 = +[PLSSettings currentSettings];
          enableFastTransition2 = [v47 enableFastTransition];

          if (enableFastTransition2)
          {
            ps_gsm_assign_system_graph_session(v8->_gsm, v8->_systemGraphSession);
          }
        }

        [(PSExecutionSession *)v8 name];
        uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
        ps_prm_create_manager(uTF8String);
      }

      [PSExecutionSession initWithName:buf isUniqueSession:?];
    }

    v54 = [PSExecutionSession initWithName:buf isUniqueSession:?];
    return [(PSExecutionSession *)v54 initForLocalReplay];
  }

  else
  {
    v50 = ps_util_check_sandbox_for_syscall_threadself();
    if (v50)
    {
      v51 = __PLSLogSharedInstance(v50);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_DEFAULT, "Process is allowed to call thread_self APIs", buf, 2u);
      }
    }

    v52 = __PLSLogSharedInstance(v50);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = nameCopy;
      _os_log_impl(&dword_25EA3A000, v52, OS_LOG_TYPE_DEFAULT, "Created execution session with name %@", buf, 0xCu);
    }

    return 0;
  }
}

- (id)initForLocalReplay
{
  v3 = [[PSExecutionSession alloc] initForLocalReplayWithSystemPulseRate:0 telemetryEnabled:0];

  return v3;
}

- (id)initForLocalReplayWithSystemPulseRate:(id)rate telemetryEnabled:(BOOL)enabled
{
  v35 = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  v28.receiver = self;
  v28.super_class = PSExecutionSession;
  v6 = [(PSExecutionSession *)&v28 init];
  v7 = v6;
  if (v6)
  {
    name = v6->_name;
    v6->_name = @"LocalReplaySession";

    initForLocalResources = [objc_alloc(MEMORY[0x277D3E688]) initForLocalResources];
    context = v7->_context;
    v7->_context = initForLocalResources;

    v11 = [[PLSDevice alloc] initWithContext:v7->_context isLocalReplay:1];
    device = v7->_device;
    v7->_device = v11;

    v13 = objc_alloc_init(PSExecutionDashboard);
    dashboard = v7->_dashboard;
    v7->_dashboard = v13;

    v15 = objc_alloc_init(PSComputeDevices);
    computeDevices = v7->_computeDevices;
    v7->_computeDevices = v15;

    v7->_gsm = ps_gsm_create_local(v17);
    [(PSExecutionSession *)v7 setSystemPulseRate:&unk_2870CABF0];
    if (rateCopy)
    {
      if (([rateCopy isEqual:&unk_2870CAC08] & 1) != 0 || (v18 = objc_msgSend(rateCopy, "isEqual:", &unk_2870CABF0), v18))
      {
        [(PSExecutionSession *)v7 setSystemPulseRate:rateCopy];
      }

      else
      {
        v19 = __PLSLogSharedInstance(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          intValue = [rateCopy intValue];
          *buf = 67175425;
          *v30 = intValue;
          *&v30[4] = 1025;
          *&v30[6] = 90;
          v31 = 1025;
          v32 = 360;
          v33 = 1025;
          v34 = 90;
          _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_ERROR, "initForLocalReplayWithSystemPulseRate invalid pulse rate %{private}d, must be either %{private}d or %{private}d -- initializing to %{private}d", buf, 0x1Au);
        }
      }
    }

    [(PSExecutionDashboard *)v7->_dashboard setIsLocalReplaySession:1];
    v27 = 0;
    pthread_threadid_np(0, &v27);
    v21 = MEMORY[0x277CCACA8];
    v22 = v27;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v25 = [v21 stringWithFormat:@"LocalReplayFactory-%llu-%@", v22, uUIDString];

    ps_prm_create_manager_for_replay_session([v25 UTF8String]);
  }

  return 0;
}

- (id)initForLocalReplayWithTelemetryEnabled
{
  v3 = [[PSExecutionSession alloc] initForLocalReplayWithSystemPulseRate:0 telemetryEnabled:1];

  return v3;
}

- (void)setDeterministicReplay:(BOOL)replay
{
  replayCopy = replay;
  v12 = *MEMORY[0x277D85DE8];
  v5 = __PLSLogSharedInstance(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = replayCopy;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Setting PSExecutionSession deterministic mode: %d", &buf, 8u);
  }

  self->_deterministicReplay = replayCopy;
  transitionManager = [(PSExecutionSession *)self transitionManager];
  compiler = [transitionManager compiler];
  [compiler setDeterministicReplay:replayCopy];

  objc_initWeak(&buf, self);
  v8 = [(PSExecutionSession *)self gsm];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__PSExecutionSession_setDeterministicReplay___block_invoke;
  aBlock[3] = &unk_279A48298;
  objc_copyWeak(&v10, &buf);
  ps_gsm_set_deterministic_replay(v8, aBlock);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&buf);
}

void __45__PSExecutionSession_setDeterministicReplay___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained transitionManager];
  [v4 callTransitionCallback:3 retainedContext:0];

  objc_autoreleasePoolPop(v2);
}

- (void)publishContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  context = [(PSExecutionSession *)self context];

  if (context == contextCopy)
  {
    [(PSExecutionSession *)self publishContext];
  }

  else
  {
    v6 = [contextCopy resourceStreamsForExecutionSession:&stru_2870BCDD8];
    v18 = [MEMORY[0x277CBEB58] set];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = +[PSExecutionSessionWorkarounds sharedInstance];
          name = [(PSExecutionSession *)self name];
          v15 = [v13 shouldOverrideCameraStreamProviderType:name];

          if (v15)
          {
            [(PLSDevice *)self->_device populateProviderTypeForStream:v12];
          }

          if ([v12 options] == 2)
          {
            v16 = [v12 key];
            [v18 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    systemGraph = [(PSExecutionSession *)self systemGraph];
    [systemGraph publishResourceStreamsForKeys:v18 fromContext:contextCopy withDevice:self->_device];
  }
}

- (void)publishContextForLocalReplay
{
  v29 = *MEMORY[0x277D85DE8];
  context = [(PSExecutionSession *)self context];
  name = [(PSExecutionSession *)self name];
  v5 = [context resourceStreamsForExecutionSession:name];

  v6 = createSupportedStridesInfo();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v22 + 1) + 8 * v11) key];
        context2 = [(PSExecutionSession *)self context];
        v14 = [context2 resourceStreamForKey:v12];

        supportedStrides = [v14 supportedStrides];
        defaultStride = [v14 defaultStride];
        populateSupportedStridesInfo(v6, v12, supportedStrides, defaultStride);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  systemGraphSession = [(PSExecutionSession *)self systemGraphSession];
  v18 = xpc_session_send_message(systemGraphSession, v6);

  if (v18)
  {
    v20 = __PLSLogSharedInstance(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = xpc_rich_error_copy_description(v18);
      *buf = 136315138;
      v27 = v21;
      _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "Failed to send an XPC message for supportedStrides! Error = %s", buf, 0xCu);
    }
  }
}

- (void)publishContext
{
  v60 = *MEMORY[0x277D85DE8];
  context = [(PSExecutionSession *)self context];
  name = [(PSExecutionSession *)self name];
  v5 = [context resourceStreamsForExecutionSession:name];

  v6 = +[PSExecutionSessionWorkarounds sharedInstance];
  LODWORD(name) = [v6 shouldOverrideCameraStreamDomains];

  if (name)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v7 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          domain = [v13 domain];

          if (!domain)
          {
            device = self->_device;
            v16 = [v13 key];
            v17 = [(PLSDevice *)device propertiesForKey:v16];

            if (v17 && [v17 type] == 4)
            {
              v18 = self->_device;
              v19 = [v13 key];
              v20 = [(PLSDevice *)v18 getDomainForCameraKey:v19];

              if (!v20)
              {
                [(PSExecutionSession *)&v52 publishContext];
              }

              [v13 setDomain:v20];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v10);
    }

    v5 = v7;
  }

  v21 = [MEMORY[0x277CBEB58] set];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v22 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v49;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v48 + 1) + 8 * j);
        v27 = +[PSExecutionSessionWorkarounds sharedInstance];
        name2 = [(PSExecutionSession *)self name];
        v29 = [v27 shouldOverrideCameraStreamProviderType:name2];

        if (v29)
        {
          [(PLSDevice *)self->_device populateProviderTypeForStream:v26];
        }

        if ([v26 options] == 2 || -[PSExecutionDashboard isLocalReplaySession](self->_dashboard, "isLocalReplaySession"))
        {
          v30 = [v26 key];
          [v21 addObject:v30];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v23);
  }

  systemGraph = [(PSExecutionSession *)self systemGraph];
  context2 = [(PSExecutionSession *)self context];
  [systemGraph publishResourceStreamsForKeys:v21 fromContext:context2 withDevice:self->_device];

  array = [MEMORY[0x277CBEB18] array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v34 = v21;
  v35 = [v34 countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v45;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v44 + 1) + 8 * k);
        v40 = [PSExecutionSessionResourceAvailability alloc];
        context3 = [(PSExecutionSession *)self context];
        v42 = -[PSExecutionSessionResourceAvailability initWithResourceKey:availability:](v40, "initWithResourceKey:availability:", v39, [context3 availabilityForResource:v39]);
        [array addObject:v42];
      }

      v36 = [v34 countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v36);
  }

  [(PSExecutionSession *)self resourceAvailabilityHasChangedTo:array];
}

- (void)waitForContextFromExecutionSession:(int)session
{
  v3 = *&session;
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:PSExecutionSessionKeyDescription[session]];
  name = [(PSExecutionSession *)self name];
  v6 = [v11 isEqualToString:name];

  if ((v6 & 1) == 0)
  {
    context = [(PSExecutionSession *)self context];
    v8 = [context containsResourceStreamsForExecutionSession:v11];

    if ((v8 & 1) == 0)
    {
      systemGraph = [(PSExecutionSession *)self systemGraph];
      v10 = [PSExecutionSession nameForExecutionSessionKey:v3];
      [systemGraph addResourceStreamsForSessionName:v10 toContext:self->_context];
    }
  }
}

- (void)waitForContextFromExecutionSessionsProvidingResources:(id)resources
{
  v9 = [MEMORY[0x277CBEB58] setWithSet:resources];
  v4 = MEMORY[0x277CBEB98];
  context = [(PSExecutionSession *)self context];
  allResourceKeys = [context allResourceKeys];
  v7 = [v4 setWithArray:allResourceKeys];

  [v9 minusSet:v7];
  if ([v9 count])
  {
    systemGraph = [(PSExecutionSession *)self systemGraph];
    [systemGraph addResourceStreamsForResourceKeys:v9 toContext:self->_context];
  }
}

- (void)enteringSleep
{
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph enteringSleep];
}

- (void)exitingSleep
{
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph exitingSleep];
}

- (unint64_t)getRetainedBufferCountForKey:(id)key
{
  keyCopy = key;
  if ([PSRCConstants checkBufferConfigExistsForKey:keyCopy])
  {
    v4 = [PSRCConstants getCameraDepthForKey:keyCopy];
    v5 = [PSRCConstants getReaderDepthForKey:keyCopy]+ v4;
    v6 = v5 + [PSRCConstants getWriterDepthForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)getRetainedBufferCountForStream:(id)stream
{
  streamCopy = stream;
  resourceClass = [streamCopy resourceClass];
  v5 = [streamCopy key];
  if ([PSRCConstants checkBufferConfigExistsForKey:v5])
  {
    v6 = resourceClass == 9;
    v7 = [streamCopy key];
    v8 = [PSRCConstants getCameraDepthForKey:v7];
    v9 = [streamCopy key];
    v10 = [PSRCConstants getReaderDepthForKey:v9];
    v11 = [streamCopy key];
    v12 = (([PSRCConstants getWriterDepthForKey:v11]+ v10) << (2 * v6)) + v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)resumedProducingRequestedResources:(id)resources reason:(unint64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  if (reason > 1)
  {
    [PSExecutionSession resumedProducingRequestedResources:reason reason:?];
  }

  v7 = resourcesCopy;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [resourcesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        compiler = [(PSTransitionManager *)self->_transitionManager compiler];
        [compiler withWriterForKey:v12 perform:&__block_literal_global_53];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void __64__PSExecutionSession_resumedProducingRequestedResources_reason___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

- (void)producedStridesWillChangeTo:(id)to atFrameID:(id)d isPhysicalFrameID:(BOOL)iD forBaseMSGSyncID:(id)syncID
{
  v32 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  syncIDCopy = syncID;
  v13 = +[PLSSettings currentSettings];
  enableFastTransition = [v13 enableFastTransition];

  if (enableFastTransition)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(toCopy, "count")}];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __95__PSExecutionSession_producedStridesWillChangeTo_atFrameID_isPhysicalFrameID_forBaseMSGSyncID___block_invoke;
    v28[3] = &unk_279A482E0;
    v17 = v16;
    v29 = v17;
    [toCopy enumerateObjectsUsingBlock:v28];
    v27 = 0;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v27];
    v19 = v27;
    v20 = v19;
    if (v19)
    {
      v21 = __PLSLogSharedInstance(v19);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      localizedDescription = [v20 localizedDescription];
      v23 = [localizedDescription cStringUsingEncoding:134217984];
      *buf = 136315138;
      v31 = v23;
      _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "Error encoding array: %s", buf, 0xCu);
    }

    else
    {
      if (!v18)
      {
        v21 = __PLSLogSharedInstance(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, "Error encoding array", buf, 2u);
        }

        goto LABEL_13;
      }

      v21 = xpc_dictionary_create(0, 0, 0);
      populateProducedStridesWillChange(v21, v18, [dCopy integerValue], iD, syncIDCopy);
      systemGraphSession = [(PSExecutionSession *)self systemGraphSession];
      localizedDescription = xpc_session_send_message(systemGraphSession, v21);

      if (localizedDescription)
      {
        v25 = xpc_rich_error_copy_description(localizedDescription);
        v26 = __PLSLogSharedInstance(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v31 = v25;
          _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_ERROR, "Could not send producedStrides to xpc listener. Error = %s", buf, 0xCu);
        }

        free(v25);
      }
    }

    goto LABEL_13;
  }

  v17 = __PLSLogSharedInstance(v15);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v31 = "[PSExecutionSession producedStridesWillChangeTo:atFrameID:isPhysicalFrameID:forBaseMSGSyncID:]";
    _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "%s: ignoring, enableFastTransition is not set.", buf, 0xCu);
  }

LABEL_14:
}

void __95__PSExecutionSession_producedStridesWillChangeTo_atFrameID_isPhysicalFrameID_forBaseMSGSyncID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [PSExecutionSessionResourceWithStride alloc];
  v7 = [v3 resourceKey];
  v5 = [v3 stride];

  v6 = [(PSExecutionSessionResourceWithStride *)v4 initWithResourceKey:v7 stride:v5];
  [v2 addObject:v6];
}

- (void)producedStridesWillChangeTo:(id)to atPhysicalFrameID:(id)d
{
  v42 = *MEMORY[0x277D85DE8];
  toCopy = to;
  dCopy = d;
  if (![toCopy count])
  {
    goto LABEL_26;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = toCopy;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v28;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        resourceKey = [*(*(&v27 + 1) + 8 * i) resourceKey];
        context = [(PSExecutionSession *)self context];
        v16 = [context resourceStreamForKey:resourceKey];

        baseMSGSyncID = [v16 baseMSGSyncID];
        if (!baseMSGSyncID)
        {
          [PSExecutionSession producedStridesWillChangeTo:buf atPhysicalFrameID:resourceKey];
LABEL_18:
          v26 = 0;
          v18 = asprintf(&v26, "All resources must have the same MSG sync id: %s (%u != %u)", [resourceKey UTF8String], objc_msgSend(context, "unsignedIntValue"), objc_msgSend(v11, "unsignedIntValue"));
          v19 = __PLSLogSharedInstance(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            uTF8String = [resourceKey UTF8String];
            unsignedIntValue = [context unsignedIntValue];
            unsignedIntValue2 = [v11 unsignedIntValue];
            *buf = 136316162;
            v32 = "[PSExecutionSession producedStridesWillChangeTo:atPhysicalFrameID:]";
            v33 = 1024;
            v34 = 953;
            v35 = 2080;
            v36 = uTF8String;
            v37 = 1024;
            v38 = unsignedIntValue;
            v39 = 1024;
            v40 = unsignedIntValue2;
            _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_FAULT, "%s:%d All resources must have the same MSG sync id: %s (%u != %u)", buf, 0x28u);
          }

          v23 = OSLogFlushBuffers();
          if (v23)
          {
            v24 = v23;
            v25 = __PLSLogSharedInstance(v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v32 = "[PSExecutionSession producedStridesWillChangeTo:atPhysicalFrameID:]";
              v33 = 1024;
              v34 = v24;
              _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          abort_with_reason();
LABEL_26:
          [PSExecutionSession producedStridesWillChangeTo:buf atPhysicalFrameID:?];
        }

        context = baseMSGSyncID;
        if (v11)
        {
          if (([v11 isEqualToNumber:baseMSGSyncID] & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v11 = baseMSGSyncID;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v41 count:16];
      if (!v10)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = 0;
LABEL_16:

  [(PSExecutionSession *)self producedStridesWillChangeTo:v8 atFrameID:dCopy isPhysicalFrameID:1 forBaseMSGSyncID:v11];
}

- (void)requestedResourcesAreBeingProduced:(id)produced
{
  v17 = *MEMORY[0x277D85DE8];
  producedCopy = produced;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = producedCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277D3E828] entryWithKey:*(*(&v12 + 1) + 8 * v10) stride:{0, v12}];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(PSExecutionSession *)self resourceRequestsAreComplete:array];
}

- (void)resourceRequestsAreComplete:(id)complete
{
  v19 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  v5 = objc_alloc_init(MEMORY[0x277D3E820]);
  [v5 setResourcesNoLongerWanted:0];
  [v5 setResourcesWantedWithStrides:completeCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  resourcesWantedWithStrides = [v5 resourcesWantedWithStrides];
  v7 = [resourcesWantedWithStrides countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(resourcesWantedWithStrides);
        }

        resourceKey = [*(*(&v14 + 1) + 8 * v10) resourceKey];
        compiler = [(PSTransitionManager *)self->_transitionManager compiler];
        [compiler withWriterForKey:resourceKey perform:&__block_literal_global_268];

        ++v10;
      }

      while (v8 != v10);
      v8 = [resourcesWantedWithStrides countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph resourceRequestWithStridesCompleted:v5];
}

void __68__PSExecutionSession_ResourceProvider__resourceRequestsAreComplete___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

- (void)willStopProducingRequestedResources:(id)resources reason:(unint64_t)reason
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  resourcesCopy = resources;
  v7 = [resourcesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(resourcesCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        compiler = [(PSTransitionManager *)self->_transitionManager compiler];
        [compiler withWriterForKey:v11 perform:&__block_literal_global_270];

        ++v10;
      }

      while (v8 != v10);
      v8 = [resourcesCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  if (reason - 1 < 2)
  {
    systemGraph = __PLSLogSharedInstance(v13);
    if (os_log_type_enabled(systemGraph, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_25EA3A000, systemGraph, OS_LOG_TYPE_DEFAULT, "OysterID transition", v17, 2u);
    }

    goto LABEL_13;
  }

  if (!reason)
  {
    systemGraph = [(PSExecutionSession *)self systemGraph];
    [systemGraph resourcesAreStopped:resourcesCopy reason:0];
LABEL_13:

    return;
  }

  [PSExecutionSession(ResourceProvider) willStopProducingRequestedResources:v17 reason:reason];
  __83__PSExecutionSession_ResourceProvider__willStopProducingRequestedResources_reason___block_invoke(v15, v16);
}

void __83__PSExecutionSession_ResourceProvider__willStopProducingRequestedResources_reason___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F860](v2);
  }
}

- (void)failedToProcessResourceRequests:(id)requests reason:(unint64_t)reason
{
  v21 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v6 = objc_alloc_init(MEMORY[0x277D3E820]);
  [v6 setResourcesNoLongerWanted:0];
  [v6 setResourcesWantedWithStrides:requestsCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  resourcesWantedWithStrides = [v6 resourcesWantedWithStrides];
  v8 = [resourcesWantedWithStrides countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(resourcesWantedWithStrides);
        }

        resourceKey = [*(*(&v16 + 1) + 8 * v11) resourceKey];
        compiler = [(PSTransitionManager *)self->_transitionManager compiler];
        [compiler withWriterForKey:resourceKey perform:&__block_literal_global_273];

        ++v11;
      }

      while (v9 != v11);
      v9 = [resourcesWantedWithStrides countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph resourceRequestsFailed:v6 reason:reason];
}

void __79__PSExecutionSession_ResourceProvider__failedToProcessResourceRequests_reason___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F860](v2);
  }
}

- (void)failedToProcessNotificationsOfResourcesNoLongerWanted:(id)wanted reason:(unint64_t)reason
{
  wantedCopy = wanted;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph resourcesNoLongerWantedFailed:wantedCopy reason:reason];
}

- (void)producibleStridesHaveChangedTo:(id)to
{
  v24 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = +[PLSSettings currentSettings];
  enableFastTransition = [v5 enableFastTransition];

  if (enableFastTransition)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(toCopy, "count")}];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__PSExecutionSession_ResourceProvider__producibleStridesHaveChangedTo___block_invoke;
    v20[3] = &unk_279A48308;
    v9 = v8;
    v21 = v9;
    [toCopy enumerateObjectsUsingBlock:v20];
    v19 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v19];
    v11 = v19;
    v12 = v11;
    if (v11)
    {
      v13 = __PLSLogSharedInstance(v11);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        goto LABEL_14;
      }

      localizedDescription = [v12 localizedDescription];
      v15 = [localizedDescription cStringUsingEncoding:134217984];
      *buf = 136315138;
      v23 = v15;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Error encoding array: %s", buf, 0xCu);
    }

    else
    {
      if (!v10)
      {
        v13 = __PLSLogSharedInstance(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Error encoding array", buf, 2u);
        }

        goto LABEL_13;
      }

      v13 = xpc_dictionary_create(0, 0, 0);
      populateProducibleStridesHaveChangedTo(v13, v10);
      systemGraphSession = [(PSExecutionSession *)self systemGraphSession];
      localizedDescription = xpc_session_send_message(systemGraphSession, v13);

      if (localizedDescription)
      {
        v17 = xpc_rich_error_copy_description(localizedDescription);
        v18 = __PLSLogSharedInstance(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v23 = v17;
          _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_ERROR, "Could not send producibleStrides to polarisd. Aborting. Error = %s", buf, 0xCu);
        }

        free(v17);
      }
    }

    goto LABEL_13;
  }

  v9 = __PLSLogSharedInstance(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v23 = "[PSExecutionSession(ResourceProvider) producibleStridesHaveChangedTo:]";
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s: ignoring, enableFastTransition is not set.", buf, 0xCu);
  }

LABEL_14:
}

void __71__PSExecutionSession_ResourceProvider__producibleStridesHaveChangedTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [PSExecutionSessionResourceWithStrides alloc];
  v7 = [v3 resourceKey];
  v5 = [v3 strides];

  v6 = [(PSExecutionSessionResourceWithStrides *)v4 initWithResourceKey:v7 strides:v5];
  [v2 addObject:v6];
}

- (void)resourceAvailabilityHasChangedTo:(id)to
{
  toCopy = to;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph resourceAvailabilityHasChangedTo:toCopy];
}

- (void)resourcesNoLongerWantedProcessed:(id)processed
{
  processedCopy = processed;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph resourcesNoLongerWantedProcessed:processedCopy];
}

- (void)setupRequestsAreComplete:(id)complete
{
  v4 = MEMORY[0x277D3E820];
  completeCopy = complete;
  v7 = objc_alloc_init(v4);
  [v7 setResourcesNoLongerWanted:0];
  [v7 setResourcesWantedWithStrides:completeCopy];

  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph setupRequestsAreComplete:v7];
}

- (void)failedToProcessSetupRequests:(id)requests reason:(unint64_t)reason
{
  requestsCopy = requests;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph failedToProcessSetupRequests:requestsCopy reason:reason];
}

- (void)pauseRequestsAreComplete:(id)complete
{
  completeCopy = complete;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph pauseRequestsAreComplete:completeCopy];
}

- (void)failedToProcessPauseRequests:(id)requests reason:(unint64_t)reason
{
  v19 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [requestsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(requestsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        compiler = [(PSTransitionManager *)self->_transitionManager compiler];
        [compiler withWriterForKey:v11 perform:&__block_literal_global_286];

        ++v10;
      }

      while (v8 != v10);
      v8 = [requestsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph failedToProcessPauseRequests:requestsCopy reason:reason];
}

void __77__PSExecutionSession_PauseSetupSupport__failedToProcessPauseRequests_reason___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = [a2 context];

    MEMORY[0x28219F878](v2);
  }
}

- (BOOL)createWorkgroupInterval:(const char *)interval workloadID:(const char *)d type:(unsigned __int16)type graphTag:(id)tag
{
  v39 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  transitionManager = [(PSExecutionSession *)self transitionManager];
  compiler = [transitionManager compiler];

  os_unfair_lock_lock(compiler + 2);
  transitionManager2 = [(PSExecutionSession *)self transitionManager];
  compiler2 = [transitionManager2 compiler];
  taggedWorkgroups = [compiler2 taggedWorkgroups];
  v14 = [taggedWorkgroups objectForKeyedSubscript:tagCopy];

  if (!v14)
  {
    memset(v38, 0, sizeof(v38));
    v37 = 0u;
    v36 = 0u;
    *buf = 799564724;
    v18 = os_workgroup_attr_set_interval_type();
    if (v18)
    {
      v19 = __PLSLogSharedInstance(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        v20 = "Couldn't set workgroup attributes from interval type";
        v21 = v19;
        v22 = 2;
LABEL_11:
        _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_ERROR, v20, v31, v22);
      }
    }

    else
    {
      v23 = os_workgroup_attr_set_telemetry_flavor();
      v24 = v23;
      if (!v23)
      {
        if (d)
        {
          v19 = os_workgroup_interval_create_with_workload_id();
        }

        else
        {
          v19 = os_workgroup_interval_create();
        }

        v26 = __error();
        v17 = v19 != 0;
        if (v19)
        {
          transitionManager3 = [(PSExecutionSession *)self transitionManager];
          compiler3 = [transitionManager3 compiler];
          taggedWorkgroups2 = [compiler3 taggedWorkgroups];
          [taggedWorkgroups2 setObject:v19 forKeyedSubscript:tagCopy];
        }

        else
        {
          v30 = *v26;
          transitionManager3 = __PLSLogSharedInstance(v26);
          if (os_log_type_enabled(transitionManager3, OS_LOG_TYPE_ERROR))
          {
            *v31 = 136315394;
            v32 = strerror(v30);
            v33 = 1024;
            v34 = v30;
            _os_log_impl(&dword_25EA3A000, transitionManager3, OS_LOG_TYPE_ERROR, "Couldn't create workgroup interval: %s (%d)", v31, 0x12u);
          }
        }

        goto LABEL_13;
      }

      v19 = __PLSLogSharedInstance(v23);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v31 = 67109120;
        LODWORD(v32) = v24;
        v20 = "Couldn't set telemetry flavor on workgroup attributes: error %d";
        v21 = v19;
        v22 = 8;
        goto LABEL_11;
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = __PLSLogSharedInstance(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&v36 = tagCopy;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_ERROR, "Workgroup interval already exists for graph tag %@", buf, 0xCu);
  }

  v17 = 0;
LABEL_14:
  os_unfair_lock_unlock(compiler + 2);

  return v17;
}

- (unsigned)copyWorkgroupPortForGraphTag:(id)tag
{
  tagCopy = tag;
  transitionManager = [(PSExecutionSession *)self transitionManager];
  compiler = [transitionManager compiler];

  os_unfair_lock_lock(compiler + 2);
  transitionManager2 = [(PSExecutionSession *)self transitionManager];
  compiler2 = [transitionManager2 compiler];
  taggedWorkgroups = [compiler2 taggedWorkgroups];
  v10 = [taggedWorkgroups objectForKeyedSubscript:tagCopy];

  os_unfair_lock_unlock(compiler + 2);
  if (v10)
  {
    mach_port_out = 0;
    if (os_workgroup_copy_port(v10, &mach_port_out))
    {
      v11 = 0;
    }

    else
    {
      v11 = mach_port_out;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)destroyWorkgroupForGraphTag:(id)tag
{
  tagCopy = tag;
  transitionManager = [(PSExecutionSession *)self transitionManager];
  compiler = [transitionManager compiler];

  os_unfair_lock_lock(compiler + 2);
  transitionManager2 = [(PSExecutionSession *)self transitionManager];
  compiler2 = [transitionManager2 compiler];
  taggedWorkgroups = [compiler2 taggedWorkgroups];
  v10 = [taggedWorkgroups objectForKeyedSubscript:tagCopy];

  if (v10)
  {
    transitionManager3 = [(PSExecutionSession *)self transitionManager];
    compiler3 = [transitionManager3 compiler];
    taggedWorkgroups2 = [compiler3 taggedWorkgroups];
    [taggedWorkgroups2 removeObjectForKey:tagCopy];

    os_unfair_lock_unlock(compiler + 2);
    os_workgroup_cancel(v10);
  }

  else
  {
    os_unfair_lock_unlock(compiler + 2);
  }

  return v10 != 0;
}

- (BOOL)requestSystemReplayStart
{
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph startSystemReplay];

  return 1;
}

- (BOOL)requestSystemReplayEnd
{
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph stopSystemReplay];

  return 1;
}

- (void)registerForContextUpdatesFromResourcesWithCategory:(unint64_t)category
{
  resourceCategorySubscriptions = self->_resourceCategorySubscriptions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  [(NSMutableSet *)resourceCategorySubscriptions addObject:v6];

  if (category == 1 && ![(PSExecutionDashboard *)self->_dashboard isLocalReplaySession])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__PSExecutionSession_ResourceConsumer__registerForContextUpdatesFromResourcesWithCategory___block_invoke;
    block[3] = &unk_279A48330;
    block[4] = self;
    if (registerForContextUpdatesFromResourcesWithCategory__onceToken_0 != -1)
    {
      dispatch_once(&registerForContextUpdatesFromResourcesWithCategory__onceToken_0, block);
    }
  }

  else
  {
    v8 = [(PSContext *)self->_context resourceKeysForCategory:category];
    if ([v8 count])
    {
      transitionManager = [(PSExecutionSession *)self transitionManager];
      [transitionManager deliverDynamicResourcesAvailableNotification:v8];
    }
  }
}

void __91__PSExecutionSession_ResourceConsumer__registerForContextUpdatesFromResourcesWithCategory___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[PSDeviceManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  [*(*(a1 + 32) + 136) setExecutionSession:*(a1 + 32) withTransitionManager:*(*(a1 + 32) + 96)];
  v5 = [*(*(a1 + 32) + 136) startServiceMatching];
  if (v5)
  {
    v6 = v5;
    v7 = __PLSLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "Failed to start PSDeviceManager service matching with err:0x%x", v8, 8u);
    }
  }
}

- (void)registerForResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph registerForResourceAvailabilityUpdates:updatesCopy context:self->_context];
}

- (void)deregisterFromResourceAvailabilityUpdates:(id)updates
{
  updatesCopy = updates;
  systemGraph = [(PSExecutionSession *)self systemGraph];
  [systemGraph deregisterFromResourceAvailabilityUpdates:updatesCopy];
}

- (uint64_t)deleteSession
{
  v18 = *MEMORY[0x277D85DE8];
  *self = 0;
  v2 = asprintf(self, "Execution session was deallocated while graphs were still running.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    v17 = 191;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Execution session was deallocated while graphs were still running.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  v11 = v10;
  if (v10)
  {
    v12 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_14();
      v17 = v11;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

+ (uint64_t)nameForExecutionSessionKey:(char *)a1 .cold.1(char **a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "Unrecognized PSExecutionSessionKey: %d", a2);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_11();
    v20 = 330;
    v21 = v6;
    v22 = a2;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Unrecognized PSExecutionSessionKey: %d", buf, 0x18u);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession initWithName:v15 isUniqueSession:?];
}

- (uint64_t)initWithName:(char *)a1 isUniqueSession:.cold.1(char **a1)
{
  v27 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = getprogname();
  v3 = getpid();
  v4 = asprintf(a1, "Client (procname:%s pid:%d) does not have the necessary entitlements or Polaris was unable to get the entitlements for the client. Aborting!", v2, v3);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = getprogname();
    getpid();
    OUTLINED_FUNCTION_11();
    v22 = 357;
    v23 = 2080;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Client (procname:%s pid:%d) does not have the necessary entitlements or Polaris was unable to get the entitlements for the client. Aborting!", buf, 0x22u);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = __PLSLogSharedInstance(v9);
    if (OUTLINED_FUNCTION_6(v10))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession initWithName:v17 isUniqueSession:?];
}

- (uint64_t)initWithName:(char *)a1 isUniqueSession:.cold.2(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Failed to initialize mach timebase factor. This will cause incorrect conversions from mach ticks to nanoseconds which will probably cause wrong timestamps and algorithms to fail");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    v19 = 367;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to initialize mach timebase factor. This will cause incorrect conversions from mach ticks to nanoseconds which will probably cause wrong timestamps and algorithms to fail", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_14();
      v19 = v11;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return [(PSExecutionSession *)v15 publishContext];
}

- (uint64_t)publishContext
{
  *self = 0;
  v4 = [a2 key];
  asprintf(self, "Unable to populate domain from RC for camera key %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Unable to populate domain from RC for camera key %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession resumedProducingRequestedResources:v22 reason:v23];
}

- (uint64_t)resumedProducingRequestedResources:(char *)a1 reason:(uint64_t)a2 .cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid reason %llu for PSESResourcesResumedReason", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid reason %llu for PSESResourcesResumedReason", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession producedStridesWillChangeTo:v19 atPhysicalFrameID:v20];
}

- (uint64_t)producedStridesWillChangeTo:(char *)a1 atPhysicalFrameID:(id)a2 .cold.1(char **a1, id a2)
{
  *a1 = 0;
  v5 = a2;
  v6 = asprintf(a1, "Did not provide MSG sync ID for resource: %s", [a2 UTF8String]);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Did not provide MSG sync ID for resource: %s", v10, v11, v12, v13, v24, v25);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession producedStridesWillChangeTo:v22 atPhysicalFrameID:?];
}

- (uint64_t)producedStridesWillChangeTo:(char *)a1 atPhysicalFrameID:.cold.2(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Produced strides array cannot be empty.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    v19 = 931;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Produced strides array cannot be empty.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_14();
      v19 = v11;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return [PSExecutionSession(ResourceProvider) willStopProducingRequestedResources:v15 reason:v16];
}

@end