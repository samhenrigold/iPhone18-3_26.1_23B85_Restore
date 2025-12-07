@interface RBDaemon
+ (id)_sharedInstance;
+ (void)run;
- (RBDaemon)init;
- (RBProcess)process;
- (id)_EnterSandbox;
- (uint64_t)setLowDiskIOPolicy;
- (void)_start;
- (void)assertionManager:(id)manager didEndTrackingStateForProcessIdentity:(id)identity;
- (void)assertionManager:(id)manager didInvalidateAssertions:(id)assertions;
- (void)assertionManager:(id)manager didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)assertions;
- (void)assertionManager:(id)manager didRemoveProcess:(id)process withState:(id)state;
- (void)assertionManager:(id)manager didResolveSystemState:(id)state;
- (void)assertionManager:(id)manager didUpdateProcessStates:(id)states completion:(id)completion;
- (void)assertionManager:(id)manager willExpireAssertionsSoonForProcess:(id)process expirationTime:(double)time;
- (void)assertionManager:(id)manager willInvalidateAssertion:(id)assertion;
- (void)emitAssertionSignpostForTimeout:(uint64_t)timeout;
- (void)processManager:(id)manager didAddProcess:(id)process withState:(id)state;
- (void)processManager:(id)manager didReconnectProcesses:(id)processes;
- (void)processManager:(id)manager didRemoveProcess:(id)process;
- (void)setLowDiskIOPolicy;
- (void)watchdogRegister;
@end

@implementation RBDaemon

- (RBProcess)process
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__RBDaemon_process__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (process_onceToken != -1)
  {
    dispatch_once(&process_onceToken, block);
  }

  return process_process;
}

+ (void)run
{
  if (run_onceToken != -1)
  {
    +[RBDaemon run];
  }
}

void __15__RBDaemon_run__block_invoke()
{
  v0 = +[RBDaemon _sharedInstance];
  [(RBDaemon *)v0 _start];
}

+ (id)_sharedInstance
{
  objc_opt_self();
  if (_sharedInstance_onceToken != -1)
  {
    +[RBDaemon _sharedInstance];
  }

  v1 = _sharedInstance___sharedInstance;

  return v1;
}

- (RBDaemon)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBDaemon.m" lineNumber:122 description:@"-init is not allowed on RBDaemon"];

  return 0;
}

- (void)assertionManager:(id)manager didUpdateProcessStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  processManager = self->_processManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RBDaemon_assertionManager_didUpdateProcessStates_completion___block_invoke;
  v12[3] = &unk_279B32F78;
  v12[4] = self;
  v13 = statesCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = statesCopy;
  [(RBProcessManager *)processManager didUpdateProcessStates:v11 completion:v12];
  [(RBCoalitionManager *)self->_coalitionManager didUpdateProcessStates:v11];
  [(RBPowerAssertionManager *)self->_powerAssertionManager didUpdateProcessStates:v11];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager didUpdateProcessStates:v11];
  [(RBProcessMonitor *)self->_processMonitor didUpdateProcessStates:v11];
}

uint64_t __63__RBDaemon_assertionManager_didUpdateProcessStates_completion___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(RBConnectionListener *)*(a1[4] + 64) readyClients];
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

        [(RBConnectionClient *)*(*(&v8 + 1) + 8 * v6++) didUpdateProcessStates:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result);
  }

  return result;
}

- (void)assertionManager:(id)manager didResolveSystemState:(id)state
{
  processManager = self->_processManager;
  stateCopy = state;
  [(RBProcessManager *)processManager applySystemState:stateCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager applySystemState:stateCopy];
  processMonitor = self->_processMonitor;
  preventLaunchPredicates = [stateCopy preventLaunchPredicates];

  [(RBProcessMonitor *)processMonitor didResolvePreventLaunchPredicates:preventLaunchPredicates];
}

- (void)assertionManager:(id)manager didRemoveProcess:(id)process withState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  processCopy = process;
  stateCopy = state;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v10 = [readyClients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(readyClients);
        }

        [RBConnectionClient didRemoveProcess:withState:];
        ++v13;
      }

      while (v11 != v13);
      v11 = [readyClients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(RBProcessMonitor *)self->_processMonitor didRemoveProcess:processCopy withState:stateCopy, v14];
}

- (void)assertionManager:(id)manager willExpireAssertionsSoonForProcess:(id)process expirationTime:(double)time
{
  v18 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v9 = [readyClients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v13 + 1) + 8 * v12++) willExpireAssertionsSoonForProcess:processCopy expirationTime:time];
      }

      while (v10 != v12);
      v10 = [readyClients countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)assertionManager:(id)manager willInvalidateAssertion:(id)assertion
{
  v16 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v7 = [readyClients countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v11 + 1) + 8 * v10++) willInvalidateAssertion:assertionCopy];
      }

      while (v8 != v10);
      v8 = [readyClients countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)assertionManager:(id)manager didInvalidateAssertions:(id)assertions
{
  v48 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [assertionsCopy countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v33 = v40;
    v34 = *v43;
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(assertionsCopy);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        [(RBProcessReconnectManager *)self->_reconnectManager didInvalidateAssertion:v9, v33];
        target = [v9 target];
        identity = [target identity];

        invalidationReason = [v9 invalidationReason];
        v13 = [(RBProcessManager *)self->_processManager processForIdentity:identity];
        if (v13)
        {
          processManager = self->_processManager;
          originator = [v9 originator];
          v16 = [v9 terminationContextForTargetProcess:v13 originatorProcessIsActive:{-[RBProcessManager isActiveProcess:](processManager, "isActiveProcess:", originator)}];

          endPolicy = [v9 endPolicy];
          if ([v13 isLifecycleManaged])
          {
            v18 = invalidationReason == 4;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && endPolicy == 2)
          {
            [(RBDaemon *)self emitAssertionSignpostForTimeout:v9];
            if (v16)
            {
LABEL_15:
              v20 = objc_alloc(MEMORY[0x277D47018]);
              v21 = MEMORY[0x277D46FA0];
              identifier = [v13 identifier];
              v23 = [v21 predicateMatchingIdentifier:identifier];
              v24 = [v20 initWithPredicate:v23 context:v16];

              mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              v40[0] = __53__RBDaemon_assertionManager_didInvalidateAssertions___block_invoke;
              v40[1] = &unk_279B32B80;
              v40[2] = self;
              v41 = v24;
              v26 = v24;
              dispatch_async(mEMORY[0x277D47028], block);
            }
          }

          else if (v16)
          {
            goto LABEL_15;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v27 = [assertionsCopy countByEnumeratingWithState:&v42 objects:v47 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v29 = [readyClients countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v35 + 1) + 8 * i) didInvalidateAssertions:assertionsCopy];
      }

      v30 = [readyClients countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v30);
  }
}

- (void)assertionManager:(id)manager didEndTrackingStateForProcessIdentity:(id)identity
{
  processManager = self->_processManager;
  identityCopy = identity;
  [(RBProcessManager *)processManager removeStateForProcessIdentity:identityCopy];
  [(RBProcessMonitor *)self->_processMonitor removeStateForProcessIdentity:identityCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeStateForProcessIdentity:identityCopy];
}

- (void)assertionManager:(id)manager didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)assertions
{
  v28 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v7 = MEMORY[0x277D47010];
  assertionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Process %@ has an excessive number of assertions. Direct this report to owners of that process", assertionsCopy];
  v9 = [v7 defaultContextWithExplanation:assertionsCopy];

  [v9 setPreventIfBeingDebugged:1];
  [v9 setReportType:1];
  [v9 setExceptionCode:3490524077];
  identity = [assertionsCopy identity];
  v11 = rbs_sp_telemetry_log();
  if (os_signpost_enabled(v11))
  {
    embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
    v13 = embeddedApplicationIdentifier;
    if (embeddedApplicationIdentifier)
    {
      v14 = 0;
      consistentLaunchdJobLabel = embeddedApplicationIdentifier;
    }

    else
    {
      xpcServiceIdentifier = [identity xpcServiceIdentifier];
      v4 = xpcServiceIdentifier;
      if (xpcServiceIdentifier)
      {
        v14 = 0;
        consistentLaunchdJobLabel = xpcServiceIdentifier;
      }

      else
      {
        consistentLaunchdJobLabel = [identity consistentLaunchdJobLabel];
        v14 = 1;
      }
    }

    *buf = 138543362;
    v27 = consistentLaunchdJobLabel;
    _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RBAssertionMaxCountReached_ProcessTerminated", "BundleIdOverride=%{public, signpost.description:attribute}@ enableTelemetry=YES ", buf, 0xCu);
    if (v14)
    {
    }

    if (!v13)
    {
    }
  }

  v17 = objc_alloc(MEMORY[0x277D47018]);
  v18 = MEMORY[0x277D46FA0];
  identifier = [assertionsCopy identifier];
  v20 = [v18 predicateMatchingIdentifier:identifier];
  v21 = [v17 initWithPredicate:v20 context:v9];

  mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RBDaemon_assertionManager_didRejectAcquisitionFromOriginatorWithExcessiveAssertions___block_invoke;
  block[3] = &unk_279B32B80;
  block[4] = self;
  v25 = v21;
  v23 = v21;
  dispatch_async(mEMORY[0x277D47028], block);
}

- (void)processManager:(id)manager didReconnectProcesses:(id)processes
{
  [(RBProcessReconnectManager *)self->_reconnectManager reconnectProcesses:processes];
  listener = self->_listener;

  [(RBConnectionListener *)listener start];
}

- (void)processManager:(id)manager didAddProcess:(id)process withState:(id)state
{
  assertionManager = self->_assertionManager;
  stateCopy = state;
  processCopy = process;
  [(RBAssertionManager *)assertionManager processDidLaunch:processCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager addProcess:processCopy];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager addProcess:processCopy];
  [(RBCoalitionManager *)self->_coalitionManager addProcess:processCopy withState:stateCopy];
}

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  v20 = *MEMORY[0x277D85DE8];
  processCopy = process;
  identity = [processCopy identity];
  if ([identity isApplication])
  {
    lastExitContext = [processCopy lastExitContext];
    status = [lastExitContext status];
    embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
    v10 = [(RBAssertionManager *)self->_assertionManager isProcessForeground:processCopy];
    v11 = rbs_sp_telemetry_log();
    if (os_signpost_enabled(v11))
    {
      domain = [status domain];
      code = [status code];
      v14 = "NO";
      *v15 = 138544130;
      *&v15[12] = 1026;
      *&v15[4] = embeddedApplicationIdentifier;
      if (v10)
      {
        v14 = "YES";
      }

      *&v15[14] = domain;
      v16 = 2050;
      v17 = code;
      v18 = 2082;
      v19 = v14;
      _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessExited", "BundleIdOverride=%{public,signpost.description:attribute}@ exitStatusDomain=%{public,signpost.telemetry:number1}u exitStatusCode=%{public,signpost.telemetry:number2}llu foreground=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", v15, 0x26u);
    }
  }

  [(RBAssertionManager *)self->_assertionManager processDidTerminate:processCopy, *v15, *&v15[8]];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeProcess:processCopy];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager removeProcess:processCopy];
  [(RBBundlePropertiesManager *)self->_bundlePropertiesManager removeProcess:processCopy];
  [(RBCoalitionManager *)self->_coalitionManager removeProcess:processCopy];
}

- (uint64_t)setLowDiskIOPolicy
{
  v3 = *MEMORY[0x277D85DE8];
  if (result)
  {
    result = setiopolicy_np(9, 0, 1);
    if (result)
    {
      [(RBDaemon *)&v1 setLowDiskIOPolicy];
    }
  }

  return result;
}

- (void)watchdogRegister
{
  v4 = 0;
  *a2 = self;
  do
  {
    wd_endpoint_add_queue();
    v4 += 8;
  }

  while (v4 != 40);
  wd_endpoint_activate();
  for (i = 32; i != -8; i -= 8)
  {
  }
}

- (id)_EnterSandbox
{
  if (result)
  {
    if ((_set_user_dir_suffix() & 1) == 0)
    {
      v1 = rbs_general_log();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        [(RBDaemon *)v1 _EnterSandbox];
      }

      exit(1);
    }

    return NSTemporaryDirectory();
  }

  return result;
}

void __19__RBDaemon_process__block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277D46F50] identifierWithPid:getpid()];
  v2 = MEMORY[0x277D46F60];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKey:@"XPC_SERVICE_NAME"];
  v6 = [v2 identityForDaemonJobLabel:v5];

  v7 = [MEMORY[0x277D46F70] instanceWithIdentifier:v10 identity:v6];
  v8 = [*(*(a1 + 32) + 80) processForInstance:v7];
  v9 = process_process;
  process_process = v8;
}

- (void)_start
{
  v68 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = rbs_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Battlecruiser operational.", buf, 2u);
    }

    [(RBDaemon *)self setLowDiskIOPolicy];
    [(RBDaemon *)self watchdogRegister];
    [(RBDaemon *)self _EnterSandbox];
    [MEMORY[0x277CCA9B8] _setFileNameLocalizationEnabled:0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v5 = [environment objectForKey:@"XPC_SERVICE_NAME"];
    v6 = [RBLaunchdJobManager lastExitStatusForLabel:v5 error:0];

    if ([v6 isValid])
    {
      v7 = rbs_general_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v67 = v6;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Back online after last exit: %{public}@", buf, 0xCu);
      }
    }

    [MEMORY[0x277D46E20] setInDaemon];
    v8 = objc_alloc_init(RBStateCaptureManager);
    v9 = *(self + 104);
    *(self + 104) = v8;

    v10 = objc_alloc_init(RBPowerAssertionManager);
    v11 = *(self + 72);
    *(self + 72) = v10;

    [*(self + 72) setDelegate:self];
    v12 = RBSPathForSystemDirectory();
    v13 = [v12 stringByAppendingPathComponent:@"LifecyclePolicy"];
    v14 = [v13 stringByAppendingPathComponent:@"DomainAttributes"];

    v15 = [[RBDomainAttributeManagerDataProvider alloc] initWithPath:v14];
    v16 = [[RBDomainAttributeManager alloc] initWithDataProvider:v15];
    v17 = *(self + 32);
    *(self + 32) = v16;

    v18 = [RBEntitlementManager alloc];
    allEntitlements = [*(self + 32) allEntitlements];
    v20 = [(RBEntitlementManager *)v18 initWithDomainAttributeEntitlements:allEntitlements];
    v21 = *(self + 48);
    *(self + 48) = v20;

    v22 = [[RBJetsamPropertyManager alloc] initWithEntitlementManager:*(self + 48)];
    v23 = *(self + 56);
    *(self + 56) = v22;

    v24 = objc_alloc_init(RBBundlePropertiesManager);
    v25 = *(self + 40);
    *(self + 40) = v24;

    [*(self + 40) setDelegate:self];
    v26 = objc_alloc_init(RBAssertionDescriptorValidator);
    v27 = *(self + 8);
    *(self + 8) = v26;

    v28 = [[RBAssertionOriginatorPidStore alloc] initWithPath:@"/runningboard"];
    v29 = *(self + 24);
    *(self + 24) = v28;

    v30 = [[RBHistoricalStatistics alloc] initWithReportFrequency:30];
    v31 = *(self + 128);
    *(self + 128) = v30;

    v32 = [RBProcessManager alloc];
    v33 = +[RBTimeProvider sharedInstance];
    v34 = [OUTLINED_FUNCTION_4_7() initWithBundlePropertiesManager:? entitlementManager:? jetsamPropertytManager:? timeProvider:? historialStatistics:? delegate:?];
    v35 = *(self + 80);
    *(self + 80) = v34;

    v36 = [RBAssertionManager alloc];
    v37 = *(self + 40);
    v38 = *(self + 24);
    v39 = *(self + 8);
    v40 = +[RBTimeProvider sharedInstance];
    v41 = [(RBAssertionManager *)v36 initWithDelegate:self bundlePropertiesManager:v37 originatorPidStore:v38 assertionDescriptorValidator:v39 timeProvider:v40 daemonContext:self maxOperationsInFlight:50 maxAssertionsPerOriginator:2000];
    v42 = *(self + 16);
    *(self + 16) = v41;

    v43 = [RBProcessReconnectManager alloc];
    process = [self process];
    v45 = [(RBProcessReconnectManager *)v43 initWithDaemonContext:self originatorProcess:process];
    v46 = *(self + 96);
    *(self + 96) = v45;

    v47 = objc_alloc_init(RBThrottleBestEffortNetworkingManager);
    v48 = *(self + 112);
    *(self + 112) = v47;

    v49 = +[RBResourceViolationHandler sharedInstance];
    [(RBResourceViolationHandler *)v49 startWithAssertionManager:?];

    v50 = [RBProcessMonitor alloc];
    v51 = objc_alloc_init(RBXNUWrapper);
    v52 = [OUTLINED_FUNCTION_4_7() initWithStateCaptureManager:? historialStatistics:? xnuWrapper:?];
    v53 = *(self + 88);
    *(self + 88) = v52;

    v54 = [[RBConnectionListener alloc] initWithContext:self];
    v55 = *(self + 64);
    *(self + 64) = v54;

    v56 = objc_alloc_init(RBExtensionDataProvider);
    v57 = *(self + 144);
    *(self + 144) = v56;

    v58 = [[RBRequestManager alloc] initWithContext:self];
    v59 = *(self + 152);
    *(self + 152) = v58;

    v60 = *(self + 136);
    *(self + 136) = 0;

    [*(self + 104) addItem:*(self + 16) withIdentifier:@"assertion"];
    [*(self + 104) addItem:*(self + 64) withIdentifier:@"connection"];
    [*(self + 104) addItem:*(self + 32) withIdentifier:@"domain"];
    [*(self + 104) addItem:*(self + 48) withIdentifier:@"entitlements"];
    [*(self + 104) addItem:*(self + 24) withIdentifier:@"originatorpids"];
    [*(self + 104) addItem:*(self + 72) withIdentifier:@"power"];
    [*(self + 104) addItem:*(self + 80) withIdentifier:@"process"];
    [*(self + 104) addItem:*(self + 40) withIdentifier:@"bundles"];
    [*(self + 104) addItem:*(self + 112) withIdentifier:@"throttleBestEffort"];
    [*(self + 104) addItem:*(self + 88) withIdentifier:@"processMonitor"];
    start = [*(self + 80) start];
    if (currentDeviceClass(start, v62) == 2)
    {
      v63 = [RBThermalResponseManager managerWithDaemonContext:self notificationName:@"com.apple.system.thermalpressurelevel"];
      v64 = *(self + 120);
      *(self + 120) = v63;
    }

    else
    {
      v64 = rbs_process_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v64, OS_LOG_TYPE_DEFAULT, "Thermal mitigation disabled, device is not an iPad", buf, 2u);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D47068], 0, 0, 1u);
  }
}

- (void)emitAssertionSignpostForTimeout:(uint64_t)timeout
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (timeout)
  {
    target = [v6 target];
    identity = [target identity];

    legacyReason = [v7 legacyReason];
    v11 = rbs_sp_telemetry_log();
    v12 = os_signpost_enabled(v11);
    switch(legacyReason)
    {
      case 1:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_MediaPlayback";
          goto LABEL_203;
        }

        break;
      case 2:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Location";
          goto LABEL_203;
        }

        break;
      case 3:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ExternalAccessory";
          goto LABEL_203;
        }

        break;
      case 4:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_FinishTask";
          goto LABEL_203;
        }

        break;
      case 5:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Bluetooth";
          goto LABEL_203;
        }

        break;
      case 6:
      case 11:
      case 14:
      case 15:
      case 17:
      case 22:
LABEL_16:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "AssertionTimedOut";
          goto LABEL_203;
        }

        break;
      case 7:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_BackgroundUI";
          goto LABEL_203;
        }

        break;
      case 8:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_InterAppAudioStreaming";
          goto LABEL_203;
        }

        break;
      case 9:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ViewService";
          goto LABEL_203;
        }

        break;
      case 10:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_NewsstandDownload";
          goto LABEL_203;
        }

        break;
      case 12:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_VoIP";
          goto LABEL_203;
        }

        break;
      case 13:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Extension";
          goto LABEL_203;
        }

        break;
      case 16:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_WatchConnectivity";
          goto LABEL_203;
        }

        break;
      case 18:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ComplicationUpdate";
          goto LABEL_203;
        }

        break;
      case 19:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_WorkoutProcessing";
          goto LABEL_203;
        }

        break;
      case 20:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ComplicationPushUpdate";
          goto LABEL_203;
        }

        break;
      case 21:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_BackgroundLocationProcessing";
          goto LABEL_203;
        }

        break;
      case 23:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_AudioRecording";
LABEL_203:
          _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, "BundleIdOverride=%{public, signpost.description:attribute}@ permittedBackgroundDuration=%{public, signpost.telemetry:number1}f enableTelemetry=YES ", v15, 0x16u);
          if (v4)
          {
          }

          if (!embeddedApplicationIdentifier)
          {
          }
        }

        break;
      default:
        switch(legacyReason)
        {
          case 10000:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_Resume";
            goto LABEL_203;
          case 10001:
          case 10003:
            goto LABEL_16;
          case 10002:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_TransientWakeup";
            goto LABEL_203;
          case 10004:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_FinishTaskUnbounded";
            goto LABEL_203;
          case 10005:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_Continuous";
            goto LABEL_203;
          case 10006:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_BackgroundContentFetching";
            goto LABEL_203;
          case 10007:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_NotificationAction";
            goto LABEL_203;
          case 10008:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_PIP";
            goto LABEL_203;
          default:
            if (legacyReason == 50000)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterBackgroundContentFetching";
              goto LABEL_203;
            }

            if (legacyReason == 50003)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterNotificationAction";
              goto LABEL_203;
            }

            if (legacyReason != 50004)
            {
              goto LABEL_16;
            }

            if (v12)
            {
              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterWatchConnectivity";
              goto LABEL_203;
            }

            break;
        }

        break;
    }

LABEL_208:
  }
}

void __27__RBDaemon__sharedInstance__block_invoke()
{
  v0 = [RBDaemon alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = RBDaemon;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = _sharedInstance___sharedInstance;
  _sharedInstance___sharedInstance = v0;
}

- (void)setLowDiskIOPolicy
{
  *self = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = *__error();
  v7 = __error();
  v8 = strerror(*v7);
  v10[0] = 67109378;
  v10[1] = v6;
  v11 = 2080;
  v12 = v8;
  LODWORD(v9) = 18;
  _os_log_send_and_compose_impl(v5, self, a2, 80, &dword_262485000, v4, 16, "Error setting low space io policy: %d (%s)", v10, v9);
  _os_crash_msg();
  __break(1u);
}

@end