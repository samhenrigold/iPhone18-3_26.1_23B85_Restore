@interface RBAssertionManager
+ (id)sharedWorkloop;
- (BOOL)_decreaseInFlightOperationsForOriginator:(id)originator;
- (BOOL)_increaseInFlightOperationsForOriginator:(id)originator andSuspendIfNeeded:(id)needed;
- (BOOL)_invalidateAssertion:(id)assertion sync:(BOOL)sync;
- (BOOL)_lock_batchContextInvalidatesSynchronously:(id)synchronously;
- (BOOL)_lock_enforceAssertionLimitIfNecessaryForBatchContext:(id)context originatorProcess:(id)process error:(id *)error;
- (BOOL)_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity;
- (BOOL)_lock_originatorHasExited:(id)exited;
- (BOOL)_lock_validateDescriptor:(id)descriptor originatorProcess:(id)process originatorState:(id)state concreteTarget:(id)target targetProcess:(id)targetProcess targetIdentity:(id)identity targetIdentifier:(id)identifier targetState:(id)self0 acquisitionContext:(id)self1 error:(id *)self2;
- (BOOL)_lock_willExceedAssertionLimitForOriginatorProcess:(id)process withIncomingCount:(unint64_t)count;
- (BOOL)addSavedEndowment:(id)endowment forProcess:(id)process;
- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name;
- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name;
- (BOOL)hasAssertionWithIdentifier:(id)identifier;
- (BOOL)hasAssertionWithIdentifierForTarget:(id)target identifier:(id)identifier;
- (BOOL)invalidateAssertionFromOriginator:(id)originator sync:(BOOL)sync withIdentifier:(id)identifier;
- (BOOL)invalidateAssertionWithIdentifier:(id)identifier;
- (BOOL)invalidateAssertionsDueToCPUUsageViolationForProcessIdentifier:(id)identifier;
- (BOOL)isProcessForeground:(id)foreground;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBAssertionManager)init;
- (RBAssertionManager)initWithDelegate:(id)delegate bundlePropertiesManager:(id)manager originatorPidStore:(id)store assertionDescriptorValidator:(id)validator timeProvider:(id)provider daemonContext:(id)context maxOperationsInFlight:(unint64_t)flight maxAssertionsPerOriginator:(unint64_t)self0;
- (RBSystemState)systemState;
- (double)_lock_delayedStartTimeForAssertion:(id)assertion;
- (double)_lock_invalidationTimeForAssertion:(id)assertion;
- (double)_lock_originatorExitTimeForAssertion:(id)assertion;
- (double)_lock_relativeStartTimeForAssertion:(id)assertion;
- (double)_lock_startTimeForAssertion:(id)assertion;
- (double)_remainingRuntimeForProcessIdentity:(id)identity;
- (double)eventQueue:(id)queue startTimeForAssertion:(id)assertion;
- (id)_concreteTargetForTarget:(id)target allowAbstractTarget:(BOOL)abstractTarget;
- (id)_lock_activateDelayedAssertionsForTargets:(id)targets;
- (id)_lock_assertionCreationAttributeContextForTargetIdentity:(id)identity originator:(id)originator;
- (id)_lock_createAssertionForDescriptor:(id)descriptor originatorState:(id)state acquisitionContext:(id)context error:(id *)error;
- (id)_lock_createAssertionWithAcquisitionContext:(id)context attributeContext:(id)attributeContext concreteTarget:(id)target targetIdentity:(id)identity originator:(id)originator error:(id *)error;
- (id)_lock_createAssertionsForBatchContext:(id)context originatorState:(id)state errorsByIndex:(id)index;
- (id)_lock_deactivateAssertions:(id)assertions;
- (id)_lock_deactivateDelayedAssertionsForTargets:(id)targets;
- (id)_lock_deactivateExistingAssertionsDelayedByIncomingAssertions:(id)assertions;
- (id)_lock_invalidateAssertionByConditions:(id)conditions changedAssertions:(id *)assertions;
- (id)_lock_originatorIdentifiersInAssertions:(id)assertions;
- (id)_lock_sortedAssertionsForTarget:(id)target;
- (id)_lock_targetIdentitiesInAssertions:(id)assertions;
- (id)_lock_updateStatesDueToChangingAssertions:(id)assertions invalidatedAssertions:(id)invalidatedAssertions;
- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name;
- (id)allEntitlements;
- (id)assertionDescriptorsWithFlattenedAttributes:(BOOL)attributes;
- (id)assertionWithIdentifier:(id)identifier;
- (id)assertionsForOriginator:(id)originator;
- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error;
- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name;
- (id)limitationsForInstance:(id)instance;
- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name;
- (id)popPluginHoldForAssertion:(id)assertion;
- (id)restrictionsForDomain:(id)domain andName:(id)name;
- (id)savedEndowmentsForProcess:(id)process;
- (id)stateForIdentity:(id)identity;
- (id)targetEntitlementsForDomain:(id)domain andName:(id)name;
- (unint64_t)_lock_incomingAssertionCountForBatchContext:(id)context originatorIdentifier:(id)identifier;
- (unint64_t)_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity;
- (unint64_t)_lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:(id)assertions completionPolicy:(unint64_t)policy;
- (void)_acquireAssertions:(id)assertions invalidateIdentifiers:(id)identifiers forOriginatorProcess:(id)process completionPolicy:(unint64_t)policy acquisitionErrorsByIndex:(id)index completeStage:(id)stage;
- (void)_acquireUnderlyingAssertionForProcess:(id)process;
- (void)_decreaseInFlightOperationsForTargetIdentities:(id)identities;
- (void)_dumpAssertions;
- (void)_increaseInFlightOperationsForTargetIdentities:(id)identities;
- (void)_invalidateAssertionsWithContext:(id)context;
- (void)_lock_addAssertion:(id)assertion;
- (void)_lock_checkAssertionToInvalidateByCondition:(id)condition condition:(id)a4 currentValue:(id)value assertionsToInvalidate:(id)invalidate;
- (void)_lock_clearStartTimesForUnbusyTargets:(id)targets;
- (void)_lock_dumpAssertionsForTarget:(id)target;
- (void)_lock_enqueueAssertionsForRemoval:(id)removal;
- (void)_lock_finalizeRemovingAssertions:(id)assertions;
- (void)_lock_invalidateAssertions:(id)assertions forceSync:(BOOL)sync;
- (void)_lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:(id)process;
- (void)_lock_notifyDelegateOfInvalidatedAssertions:(id)assertions;
- (void)_lock_notifyDelegateOfProcessStateChangeSet:(id)set;
- (void)_lock_removeAssertion:(id)assertion;
- (void)_lock_removeAssertions:(id)assertions andUpdateChangedAssertions:(id)changedAssertions;
- (void)_lock_removeInvalidAssertions;
- (void)_lock_removeStateForProcessIdentityIfNecessary:(id)necessary;
- (void)_lock_setState:(id)state forProcessIdentity:(id)identity;
- (void)_lock_setSystemState:(id)state;
- (void)_removeInvalidAssertions;
- (void)acquireAssertionWithContext:(id)context completion:(id)completion;
- (void)commitBatchWithContext:(id)context completion:(id)completion;
- (void)eventQueue:(id)queue handleAssertionsExpirationWarningEventForProcessIdentity:(id)identity expirationTime:(double)time;
- (void)eventQueue:(id)queue handleInvalidationEventForAssertion:(id)assertion;
- (void)eventQueue:(id)queue handleWarningEventForAssertion:(id)assertion;
- (void)periodicRunningProcessDump;
- (void)processDidLaunch:(id)launch;
- (void)processDidTerminate:(id)terminate;
- (void)revalidateAssertionsForProcessIdentities:(id)identities;
@end

@implementation RBAssertionManager

void __37__RBAssertionManager__dumpAssertions__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 192) copy];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _lock_dumpAssertionsForTarget:{*(*(&v8 + 1) + 8 * v7++), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [*(a1 + 32) _dumpAssertions];
}

- (void)_dumpAssertions
{
  timeProvider = self->_timeProvider;
  v4 = dispatch_get_global_queue(17, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__RBAssertionManager__dumpAssertions__block_invoke;
  v5[3] = &unk_279B32CB0;
  v5[4] = self;
  [(RBTimeProviding *)timeProvider executeAfter:v4 onQueue:v5 block:600.0];
}

- (void)_removeInvalidAssertions
{
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionManager *)self _lock_removeInvalidAssertions];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeInvalidAssertions
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = rbs_assertion_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableSet *)self->_invalidAssertions count];
    v6 = 134349056;
    v7 = v4;
    _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "Processing invalidation queue with %{public}lu assertions", &v6, 0xCu);
  }

  v5 = [(NSMutableSet *)self->_invalidAssertions copy];
  [(RBAssertionManager *)self _lock_removeAssertions:v5 andUpdateChangedAssertions:0];

  [(NSMutableSet *)self->_invalidAssertions removeAllObjects];
}

- (RBSystemState)systemState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(RBSystemState *)self->_systemState copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)sharedWorkloop
{
  if (sharedWorkloop_onceToken != -1)
  {
    +[RBAssertionManager sharedWorkloop];
  }

  v3 = sharedWorkloop_workloop;

  return v3;
}

void __36__RBAssertionManager_sharedWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBAssertionManager");
  v1 = sharedWorkloop_workloop;
  sharedWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedWorkloop_workloop;

  dispatch_activate(v2);
}

- (void)periodicRunningProcessDump
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RBAssertionManager_periodicRunningProcessDump__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (periodicRunningProcessDump_onceToken != -1)
  {
    dispatch_once(&periodicRunningProcessDump_onceToken, block);
  }
}

void __48__RBAssertionManager_periodicRunningProcessDump__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("RBRunningProcessDump", v2);
  v4 = periodicRunningProcessDump_periodicQueue;
  periodicRunningProcessDump_periodicQueue = v3;

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, periodicRunningProcessDump_periodicQueue);
  v6 = periodicRunningProcessDump_periodicSource;
  periodicRunningProcessDump_periodicSource = v5;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__RBAssertionManager_periodicRunningProcessDump__block_invoke_2;
  handler[3] = &unk_279B32CB0;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(periodicRunningProcessDump_periodicSource, handler);
  dispatch_activate(periodicRunningProcessDump_periodicSource);
  v7 = periodicRunningProcessDump_periodicSource;
  v8 = dispatch_time(0, 1800000000000);
  dispatch_source_set_timer(v7, v8, 0x1A3185C5000uLL, 0x29E8D60800uLL);
}

void __48__RBAssertionManager_periodicRunningProcessDump__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 64) allValue];
  v2 = rbs_process_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Periodic Run States >>>>>", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138543362;
    v13 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 preventSuspend])
        {
          v10 = rbs_process_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v9 debugDescription];
            *buf = v13;
            v19 = v11;
            _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Periodic Run States %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = rbs_process_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Periodic Run States <<<<<", buf, 2u);
  }
}

- (RBAssertionManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBAssertionManager.m" lineNumber:159 description:@"-init is not allowed on RBAssertionManager"];

  return 0;
}

- (RBAssertionManager)initWithDelegate:(id)delegate bundlePropertiesManager:(id)manager originatorPidStore:(id)store assertionDescriptorValidator:(id)validator timeProvider:(id)provider daemonContext:(id)context maxOperationsInFlight:(unint64_t)flight maxAssertionsPerOriginator:(unint64_t)self0
{
  delegateCopy = delegate;
  managerCopy = manager;
  storeCopy = store;
  validatorCopy = validator;
  providerCopy = provider;
  obj = context;
  contextCopy = context;
  v67.receiver = self;
  v67.super_class = RBAssertionManager;
  v21 = [(RBAssertionManager *)&v67 init];
  if (!v21)
  {
    goto LABEL_11;
  }

  if (!delegateCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
    if (managerCopy)
    {
      goto LABEL_4;
    }

LABEL_13:
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
    goto LABEL_4;
  }

  if (!managerCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!storeCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  if (!validatorCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  v63 = contextCopy;
  if (!contextCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  v21->_lock._os_unfair_lock_opaque = 0;
  v22 = +[RBAssertionManager sharedWorkloop];
  workloop = v21->_workloop;
  v21->_workloop = v22;

  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create("RBAssertionManagerCallOut", v24);
  calloutQueue = v21->_calloutQueue;
  v21->_calloutQueue = v25;

  objc_storeStrong(&v21->_delegate, delegate);
  objc_storeStrong(&v21->_bundlePropertiesManager, manager);
  objc_storeStrong(&v21->_descriptorValidator, validator);
  objc_storeStrong(&v21->_originatorPidStore, store);
  objc_storeStrong(&v21->_timeProvider, provider);
  v21->_maxOperationsInFlight = flight;
  v21->_maxAssertionsPerOriginator = originator;
  objc_storeStrong(&v21->_daemonContext, obj);
  v27 = objc_alloc_init(RBAssertionCollection);
  assertions = v21->_assertions;
  v21->_assertions = v27;

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pluginHoldsForAssertions = v21->_pluginHoldsForAssertions;
  v21->_pluginHoldsForAssertions = v29;

  v31 = objc_alloc_init(RBProcessIndex);
  processIndex = v21->_processIndex;
  v21->_processIndex = v31;

  v33 = objc_alloc_init(RBProcessMap);
  stateMap = v21->_stateMap;
  v21->_stateMap = v33;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relativeStartTimesByTargetIdentity = v21->_relativeStartTimesByTargetIdentity;
  v21->_relativeStartTimesByTargetIdentity = dictionary;

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  originatorExitTimesByAssertion = v21->_originatorExitTimesByAssertion;
  v21->_originatorExitTimesByAssertion = weakToStrongObjectsMapTable;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  originatorToInFlightOperationsCountMap = v21->_originatorToInFlightOperationsCountMap;
  v21->_originatorToInFlightOperationsCountMap = dictionary2;

  v41 = objc_alloc_init(MEMORY[0x277CCA940]);
  inFlightAssertionTargets = v21->_inFlightAssertionTargets;
  v21->_inFlightAssertionTargets = v41;

  v21->_inFlightOperationsLock._os_unfair_lock_opaque = 0;
  v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
  inFlightTerminations = v21->_inFlightTerminations;
  v21->_inFlightTerminations = v43;

  v45 = [[RBAssertionManagerEventQueue alloc] initWithTimeProvider:providerCopy];
  eventQueue = v21->_eventQueue;
  v21->_eventQueue = v45;

  [(RBAssertionManagerEventQueue *)v21->_eventQueue setDelegate:v21];
  v47 = [MEMORY[0x277CBEB58] set];
  assertionTargets = v21->_assertionTargets;
  v21->_assertionTargets = v47;

  v49 = [MEMORY[0x277CBEB58] set];
  acquiringAssertionIdentifiers = v21->_acquiringAssertionIdentifiers;
  v21->_acquiringAssertionIdentifiers = v49;

  v51 = [MEMORY[0x277CBEB58] set];
  invalidAssertions = v21->_invalidAssertions;
  v21->_invalidAssertions = v51;

  weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  savedEndowments = v21->_savedEndowments;
  v21->_savedEndowments = weakToStrongObjectsMapTable2;

  v55 = objc_alloc_init(RBAssertionStateResolver);
  stateResolver = v21->_stateResolver;
  v21->_stateResolver = v55;

  [(RBAssertionStateResolver *)v21->_stateResolver setAssertionCollection:v21->_assertions];
  [(RBAssertionStateResolver *)v21->_stateResolver setProcessIndex:v21->_processIndex];
  [(RBAssertionStateResolver *)v21->_stateResolver setStateMap:v21->_stateMap];
  v57 = v21->_stateResolver;
  contextCopy = v63;
  domainAttributeManager = [v63 domainAttributeManager];
  [(RBAssertionStateResolver *)v57 setDomainAttributeManager:domainAttributeManager];

  [(RBAssertionStateResolver *)v21->_stateResolver setBundlePropertiesManager:v21->_bundlePropertiesManager];
  v59 = v21->_stateResolver;
  entitlementManager = [(RBDaemonContextProviding *)v21->_daemonContext entitlementManager];
  [(RBAssertionStateResolver *)v59 setEntitlementManager:entitlementManager];

  [(RBAssertionStateResolver *)v21->_stateResolver setSavedEndowments:v21->_savedEndowments];
  [(RBAssertionManager *)v21 periodicRunningProcessDump];
LABEL_11:

  return v21;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(RBAssertionCollection *)self->_assertions count];
  v6 = [(RBSystemState *)self->_systemState debugDescription];
  v7 = [(RBAssertionManagerEventQueue *)self->_eventQueue count];
  dictionary = [(RBProcessMap *)self->_stateMap dictionary];
  v9 = [dictionary entriesToStringWithIndent:1 debug:1];
  v10 = [v3 initWithFormat:@"<%@| assertionCount:%lu systemState:%@ eventQueueCount:%lu processStates:{\n%@}>", v4, v5, v6, v7, v9];

  return v10;
}

- (void)commitBatchWithContext:(id)context completion:(id)completion
{
  v100 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_workloop);
  dispatch_assert_queue_not_V2(self->_calloutQueue);
  selfCopy = self;
  if (!contextCopy)
  {
    [RBAssertionManager commitBatchWithContext:completion:];
  }

  v91[0] = 0;
  v91[1] = v91;
  v91[2] = 0x2020000000;
  v92 = 0;
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke;
  v86[3] = &unk_279B32D50;
  v89 = v91;
  v90 = a2;
  v86[4] = self;
  v58 = contextCopy;
  v87 = v58;
  v51 = completionCopy;
  v88 = v51;
  v53 = MEMORY[0x266729AD0](v86);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_lock);
  process = [v58 process];
  identifier = [process identifier];
  identity = [process identity];
  acquisitionPolicy = [v58 acquisitionPolicy];
  if (acquisitionPolicy == 1)
  {
    v12 = 1;
  }

  else if ([(RBAssertionManager *)selfCopy _lock_batchContextInvalidatesSynchronously:v58])
  {
    v12 = 1;
  }

  else
  {
    v12 = acquisitionPolicy;
  }

  v56 = v12;
  descriptorsToAcquire = [v58 descriptorsToAcquire];
  v55 = process;
  v14 = [descriptorsToAcquire count] == 0;

  if (v14)
  {
    v50 = 0;
  }

  else
  {
    v85 = 0;
    v15 = [(RBAssertionManager *)selfCopy _lock_enforceAssertionLimitIfNecessaryForBatchContext:v58 originatorProcess:v55 error:&v85];
    v16 = v85;
    if (v15)
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      (v53)[2](v53, 0, 0, v16);
      goto LABEL_39;
    }

    v49 = [(RBProcessMap *)selfCopy->_stateMap valueForIdentity:identity];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v47 = v16;

    v50 = [(RBAssertionManager *)selfCopy _lock_createAssertionsForBatchContext:v58 originatorState:v49 errorsByIndex:dictionary3];
    if ([v50 count])
    {
      v56 = [(RBAssertionManager *)selfCopy _lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:v50 completionPolicy:v56, v16];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      obj = v50;
      v17 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
      if (v17)
      {
        v60 = *v82;
        do
        {
          v62 = v17;
          for (i = 0; i != v62; ++i)
          {
            if (*v82 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v81 + 1) + 8 * i);
            v20 = [obj objectForKeyedSubscript:v19];
            identifier2 = [v20 identifier];
            [dictionary setObject:identifier2 forKeyedSubscript:v19];
            target = [v20 target];
            identity2 = [target identity];

            if (identity2)
            {
              [array addObject:identity2];
            }

            target2 = [v20 target];
            process2 = [target2 process];

            v26 = rbs_sp_assertion_log();
            v27 = os_signpost_id_make_with_pointer(v26, [identifier2 hash]);

            v28 = rbs_sp_assertion_log();
            v29 = v28;
            if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
            {
              explanation = [v20 explanation];
              shortDescription = [process2 shortDescription];
              v32 = [identifier2 description];
              *buf = 138543874;
              v94 = explanation;
              v95 = 2114;
              v96 = shortDescription;
              v97 = 2114;
              v98 = v32;
              _os_signpost_emit_with_name_impl(&dword_262485000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "ClientAssertion", "explanation=%{public}@;target=%{public}@;identifier=%{public}@", buf, 0x20u);
            }
          }

          v17 = [obj countByEnumeratingWithState:&v81 objects:v99 count:16];
        }

        while (v17);
      }
    }

    dictionary2 = dictionary3;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  dispatch_sync(selfCopy->_calloutQueue, &__block_literal_global_53);
  currentContext = [MEMORY[0x277D47038] currentContext];
  connection = [currentContext connection];

  [(RBAssertionManager *)selfCopy _increaseInFlightOperationsForTargetIdentities:array];
  if (connection && [(RBAssertionManager *)selfCopy _increaseInFlightOperationsForOriginator:identifier andSuspendIfNeeded:connection])
  {
    v35 = rbs_process_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [RBAssertionManager commitBatchWithContext:completion:];
    }
  }

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_55;
  v71[3] = &unk_279B32D78;
  v71[4] = selfCopy;
  v72 = array;
  v36 = v50;
  v73 = v36;
  v37 = connection;
  v74 = v37;
  v75 = identifier;
  v38 = v55;
  v76 = v38;
  v80 = v56;
  v79 = v53;
  v77 = dictionary;
  v39 = dictionary2;
  v78 = v39;
  v40 = [v71 copy];
  v40[2](v40, 0, 0);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_58;
  v64[3] = &unk_279B32DA0;
  v64[4] = selfCopy;
  v41 = v36;
  v65 = v41;
  v66 = v58;
  v67 = v38;
  v70 = v56;
  dictionary2 = v39;
  v68 = dictionary2;
  v42 = v40;
  v69 = v42;
  v43 = MEMORY[0x266729AD0](v64);
  currentContext2 = [MEMORY[0x277D47038] currentContext];
  v45 = currentContext2;
  if (v56 == 1 && currentContext2)
  {
    [currentContext2 handoffToQueue:selfCopy->_workloop block:v43];
  }

  else
  {
    workloop = selfCopy->_workloop;
    if (v56 == 1)
    {
      dispatch_async_and_wait(workloop, v43);
    }

    else
    {
      dispatch_async(workloop, v43);
    }
  }

  v16 = v41;
LABEL_39:

  _Block_object_dispose(v91, 8);
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 56) + 8);
  if (*(v10 + 24) == 1)
  {
    __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_1(a1, a1 + 56, &v13);
    v10 = v13;
  }

  *(v10 + 24) = 1;
  if (v9)
  {
    v11 = rbs_assertion_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_2(a1, v9, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v17 = v5;
    [*(a1 + 32) _decreaseInFlightOperationsForTargetIdentities:*(a1 + 40)];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
          v13 = rbs_assertion_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v26 = v12;
            _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "Finished acquiring assertion %{public}@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v9);
    }

    v6 = v17;
    if (*(a1 + 56) && [*(a1 + 32) _decreaseInFlightOperationsForOriginator:*(a1 + 64)])
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 144);
      v16 = *(v14 + 8);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_56;
      v18[3] = &unk_279B32B80;
      v19 = *(a1 + 72);
      v20 = *(a1 + 56);
      [v15 executeAfter:v16 onQueue:v18 block:0.01];
    }
  }

  if (*(a1 + 104) == a2)
  {
    (*(*(a1 + 96) + 16))();
  }
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_56(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = rbs_process_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Resuming connection from %{public}@", &v4, 0xCu);
  }

  xpc_connection_resume(*(a1 + 40));
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifiersToInvalidate];
  [v2 _acquireAssertions:v3 invalidateIdentifiers:v4 forOriginatorProcess:*(a1 + 56) completionPolicy:*(a1 + 80) acquisitionErrorsByIndex:*(a1 + 64) completeStage:*(a1 + 72)];
}

- (void)acquireAssertionWithContext:(id)context completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  process = [contextCopy process];
  descriptor = [contextCopy descriptor];
  v18[0] = descriptor;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v11 = [RBAssertionBatchContext contextForProcess:process withDescriptorsToAcquire:v10 identifiersToInvalidate:MEMORY[0x277CBEBF8] daemonContext:self->_daemonContext];

  [v11 setUnitTesting:{objc_msgSend(contextCopy, "unitTesting")}];
  holdToken = [contextCopy holdToken];
  [v11 setHoldToken:holdToken];

  [v11 setAllowAbstractTarget:{objc_msgSend(contextCopy, "allowAbstractTarget")}];
  targetClientRestriction = [contextCopy targetClientRestriction];
  [v11 setTargetClientRestriction:targetClientRestriction];

  [v11 setAcquisitionPolicy:{objc_msgSend(contextCopy, "acquisitionPolicy")}];
  launchAssertion = [contextCopy launchAssertion];

  [v11 setLaunchAssertion:launchAssertion];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__RBAssertionManager_acquireAssertionWithContext_completion___block_invoke;
  v16[3] = &unk_279B32DC8;
  v17 = completionCopy;
  v15 = completionCopy;
  [(RBAssertionManager *)self commitBatchWithContext:v11 completion:v16];
}

void __61__RBAssertionManager_acquireAssertionWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, a4);
  }

  else
  {
    v7 = [a3 objectForKeyedSubscript:&unk_28751AD68];
    (*(v4 + 16))(v4, v7);
  }
}

- (BOOL)invalidateAssertionFromOriginator:(id)originator sync:(BOOL)sync withIdentifier:(id)identifier
{
  syncCopy = sync;
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifierCopy];
  if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifierCopy])
  {
    [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:identifierCopy];
    os_unfair_lock_unlock(&self->_lock);
    if (!v8)
    {
      v9 = 1;
      goto LABEL_9;
    }

LABEL_5:
    v9 = [(RBAssertionManager *)self _invalidateAssertion:v8 sync:syncCopy];
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    goto LABEL_5;
  }

  v10 = rbs_assertion_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = identifierCopy;
    _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Ignoring invalidation request for %{public}@ because it doesn't exist", &v12, 0xCu);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)invalidateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [RBAssertionManager invalidateAssertionWithIdentifier:];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifierCopy];
  if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifierCopy])
  {
    [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(RBAssertionManager *)self invalidateAssertion:v5];

  return v6;
}

- (BOOL)_invalidateAssertion:(id)assertion sync:(BOOL)sync
{
  syncCopy = sync;
  assertionCopy = assertion;
  if (assertionCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [MEMORY[0x277CBEB98] setWithObject:assertionCopy];
    [(RBAssertionManager *)self _lock_invalidateAssertions:v7 forceSync:syncCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v8 = rbs_assertion_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBAssertionManager _invalidateAssertion:v8 sync:?];
    }
  }

  return assertionCopy != 0;
}

- (BOOL)invalidateAssertionsDueToCPUUsageViolationForProcessIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifierCopy];
  identity = [v5 identity];
  if (identity)
  {
    v22 = v5;
    v21 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    role = [v21 role];
    v8 = [MEMORY[0x277CBEB58] set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if ([v14 maxCPUUsageViolationPolicyForRole:role] == 1)
          {
            [v14 setInvalidationReason:5];
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v11);
    }

    v15 = rbs_process_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [identifierCopy pid];
      v17 = [v8 count];
      *buf = 67240448;
      v28 = v16;
      v29 = 2050;
      v30 = v17;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "%{public}d violated CPU limit; removing %{public}lu assertions", buf, 0x12u);
    }

    v18 = [v8 count];
    v19 = v18 != 0;
    v5 = v22;
    if (v18)
    {
      [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v8];
    }
  }

  else
  {
    v19 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v19;
}

- (id)assertionDescriptorsWithFlattenedAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionStateResolver *)self->_stateResolver assertionDescriptorsWithFlattenedAttributes:attributesCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)limitationsForInstance:(id)instance
{
  v4 = MEMORY[0x277D46F78];
  instanceCopy = instance;
  v6 = objc_alloc_init(v4);
  identity = [instanceCopy identity];

  [(RBAssertionManager *)self _remainingRuntimeForProcessIdentity:identity];
  [v6 setRunTime:?];

  return v6;
}

- (id)assertionsForOriginator:(id)originator
{
  v3 = [(RBAssertionCollection *)self->_assertions assertionsForOriginator:originator];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasAssertionWithIdentifier:(id)identifier
{
  v3 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)assertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)hasAssertionWithIdentifierForTarget:(id)target identifier:(id)identifier
{
  targetCopy = target;
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  assertions = self->_assertions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__RBAssertionManager_hasAssertionWithIdentifierForTarget_identifier___block_invoke;
  v11[3] = &unk_279B32DF0;
  v9 = identifierCopy;
  v12 = v9;
  v13 = &v14;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:targetCopy withBlock:v11];
  LOBYTE(assertions) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return assertions;
}

void __69__RBAssertionManager_hasAssertionWithIdentifierForTarget_identifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)popPluginHoldForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_pluginHoldsForAssertions objectForKey:assertionCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pluginHoldsForAssertions removeObjectForKey:assertionCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)processDidLaunch:(id)launch
{
  v33 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  os_unfair_lock_assert_not_owner(&self->_lock);
  identity = [launchCopy identity];
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex addProcess:launchCopy])
  {
    v6 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    if (!v6)
    {
      v6 = [[RBProcessState alloc] initWithIdentity:identity];
      [(RBAssertionManager *)self _lock_setState:v6 forProcessIdentity:identity];
    }

    v18 = v6;
    v19 = identity;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    selfCopy = self;
    v7 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          [v13 setTargetProcessForAbstract:launchCopy];
          if (!v10)
          {
            v10 = [MEMORY[0x277CBEB58] set];
          }

          v14 = rbs_assertion_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v29 = launchCopy;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%@: applying persistent assertion '%@'", buf, 0x16u);
          }

          [v10 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    self = selfCopy;
    calloutQueue = selfCopy->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__RBAssertionManager_processDidLaunch___block_invoke;
    block[3] = &unk_279B329D0;
    block[4] = selfCopy;
    v22 = launchCopy;
    v23 = v18;
    v16 = v18;
    dispatch_async(calloutQueue, block);

    if (v10)
    {
      v17 = [MEMORY[0x277CBEB98] set];
      [(RBAssertionManager *)selfCopy _lock_removeAssertions:v17 andUpdateChangedAssertions:v10];
    }

    identity = v19;
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  dispatch_sync(self->_calloutQueue, &__block_literal_global_70);
  [(RBAssertionManager *)self _acquireUnderlyingAssertionForProcess:launchCopy];
}

- (BOOL)isProcessForeground:(id)foreground
{
  v33 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex containsProcess:foregroundCopy])
  {
    identity = [foregroundCopy identity];
    v6 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    os_unfair_lock_unlock(&self->_lock);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      v11 = *MEMORY[0x277D470D0];
      v22 = *v28;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          inheritances = [v13 inheritances];
          allNamespaces = [inheritances allNamespaces];

          v16 = [allNamespaces countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v24;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v24 != v18)
                {
                  objc_enumerationMutation(allNamespaces);
                }

                if ([*(*(&v23 + 1) + 8 * j) isEqual:v11])
                {

                  v20 = 1;
                  goto LABEL_23;
                }
              }

              v17 = [allNamespaces countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v10 = v22;
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v20 = 0;
      }

      while (v9);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    identity = rbs_process_log();
    if (os_log_type_enabled(identity, OS_LOG_TYPE_ERROR))
    {
      [RBAssertionManager isProcessForeground:];
    }

    v20 = 0;
  }

  return v20;
}

- (void)processDidTerminate:(id)terminate
{
  v62 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex containsProcess:terminateCopy])
  {
    [(NSMutableSet *)self->_inFlightTerminations addObject:terminateCopy];
    identity = [(RBProcessState *)terminateCopy identity];
    identifier = [(RBProcessState *)terminateCopy identifier];
    v6 = rbs_process_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v55 = terminateCopy;
      _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "Removing assertions for terminated process: %{public}@", buf, 0xCu);
    }

    v40 = terminateCopy;

    v7 = MEMORY[0x277CBEB58];
    v37 = identifier;
    v8 = [(RBAssertionCollection *)self->_assertions assertionsForOriginator:identifier];
    v9 = [v7 setWithSet:v8];

    v10 = [MEMORY[0x277CBEB58] set];
    v42 = [MEMORY[0x277CBEB58] set];
    v11 = MEMORY[0x277CCABB0];
    [(RBTimeProviding *)self->_timeProvider currentTime];
    v41 = [v11 numberWithDouble:?];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          if ([v17 startPolicy] == 3)
          {
            [(NSMapTable *)self->_originatorExitTimesByAssertion setObject:v41 forKey:v17];
            [v17 activate];
            [v42 addObject:v17];
            v18 = rbs_ttl_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v17 identifier];
              *buf = 138543362;
              v55 = identifier2;
              _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Activating after-originator-exit assertion %{public}@", buf, 0xCu);
            }
          }

          else
          {
            [v17 setInvalidationReason:1];
            [v10 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v50 objects:v61 count:16];
      }

      while (v14);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    selfCopy = self;
    v20 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v21 = [v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
    v22 = v40;
    if (v21)
    {
      v23 = v21;
      v24 = *v47;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v46 + 1) + 8 * j);
          if (([(RBProcessState *)v26 isPersistent]& 1) == 0)
          {
            if (-[RBProcessState isLaunchAssertion](v26, "isLaunchAssertion") && (-[RBProcessState identifier](v26, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), -[RBProcessState launchAssertionIdentifier](v22, "launchAssertionIdentifier"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v27 isEqual:v28], v28, v22 = v40, v27, (v29 & 1) == 0))
            {
              v30 = rbs_assertion_log();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                rbs_pid = [(RBProcessState *)v40 rbs_pid];
                *buf = 138412802;
                v55 = v26;
                v56 = 2112;
                v57 = v40;
                v58 = 1024;
                v59 = rbs_pid;
                _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "Skipping assertion: %@ for invalidation as this doesn't belong to the terminating process: %@ with pid: %d", buf, 0x1Cu);
              }
            }

            else
            {
              [(RBProcessState *)v26 setInvalidationReason:1];
              [v10 addObject:v26];
            }
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v46 objects:v60 count:16];
      }

      while (v23);
    }

    self = selfCopy;
    [(RBAssertionManager *)selfCopy _lock_removeAssertions:v10 andUpdateChangedAssertions:v42];
    [(NSMutableDictionary *)selfCopy->_relativeStartTimesByTargetIdentity removeObjectForKey:identity];
    v32 = [(RBProcessMap *)selfCopy->_stateMap valueForIdentity:identity];
    if (!v32)
    {
      v32 = [[RBProcessState alloc] initWithIdentity:identity];
    }

    v33 = rbs_process_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v55 = v32;
      _os_log_impl(&dword_262485000, v33, OS_LOG_TYPE_INFO, "Resolved state for exited process: %{public}@", buf, 0xCu);
    }

    [(RBProcessIndex *)selfCopy->_processIndex removeProcess:v40];
    [(NSMutableSet *)selfCopy->_inFlightTerminations removeObject:v40];
    calloutQueue = selfCopy->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__RBAssertionManager_processDidTerminate___block_invoke;
    block[3] = &unk_279B329D0;
    block[4] = selfCopy;
    v44 = v40;
    v45 = v32;
    v35 = v32;
    terminateCopy = v40;
    v36 = v35;
    dispatch_async(calloutQueue, block);
    [(RBAssertionManager *)selfCopy _lock_removeStateForProcessIdentityIfNecessary:identity];
  }

  [(NSMapTable *)self->_savedEndowments removeObjectForKey:terminateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)stateForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcessMap *)self->_stateMap valueForIdentity:identityCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)revalidateAssertionsForProcessIdentities:(id)identities
{
  v20 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = identitiesCopy;
  v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        assertions = self->_assertions;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __63__RBAssertionManager_revalidateAssertionsForProcessIdentities___block_invoke;
        v13[3] = &unk_279B32E18;
        v13[4] = self;
        v13[5] = v10;
        v14 = v5;
        [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v10 withBlock:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(RBAssertionManager *)self _lock_removeAssertions:v5 andUpdateChangedAssertions:0];
  os_unfair_lock_unlock(&self->_lock);
}

void __63__RBAssertionManager_revalidateAssertionsForProcessIdentities___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 target];
  v6 = MEMORY[0x277D46DC8];
  v7 = [v5 createRBSTarget];
  v8 = [v3 explanation];
  v9 = [v3 attributes];
  v32 = v4;
  v10 = [v6 descriptorWithIdentifier:v4 target:v7 explanation:v8 attributes:v9];

  v11 = [*(*(a1 + 32) + 56) processForIdentity:*(a1 + 40)];
  v12 = [v11 identifier];
  v13 = [*(*(a1 + 32) + 64) valueForIdentity:*(a1 + 40)];
  v14 = [v3 originator];
  v29 = [v14 identity];
  v15 = [*(*(a1 + 32) + 64) valueForIdentity:?];
  v16 = +[RBAssertionDescriptorValidatorContext context];
  v31 = v10;
  [v16 setAssertionDescriptor:v10];
  [v16 setOriginatorState:v15];
  [v16 setOriginatorProcess:v14];
  v28 = v15;
  [v16 setOriginatorState:v15];
  v17 = [*(*(a1 + 32) + 152) entitlementManager];
  v18 = [v17 entitlementsForProcess:v14];
  [v16 setOriginatorEntitlements:v18];

  [v16 setTarget:v5];
  [v16 setTargetProcess:v11];
  [v16 setTargetIdentity:*(a1 + 40)];
  v30 = v12;
  [v16 setTargetIdentifier:v12];
  [v16 setTargetState:v13];
  v19 = [*(*(a1 + 32) + 152) entitlementManager];
  v20 = [v19 entitlementsForProcess:v11];
  [v16 setTargetEntitlements:v20];

  v21 = [*(a1 + 32) _lock_savedEndowmentsForProcess:v14];
  [v16 setSavedEndowments:v21];

  v22 = [*(*(a1 + 32) + 152) entitlementManager];
  [v16 setEntitlementManager:v22];

  [v16 setBundlePropertiesManager:*(*(a1 + 32) + 120)];
  v23 = [*(*(a1 + 32) + 152) domainAttributeManager];
  [v16 setDomainAttributeManager:v23];

  [v16 setSystemState:*(*(a1 + 32) + 224)];
  v24 = *(*(a1 + 32) + 128);
  v33 = 0;
  LODWORD(v12) = [v24 isAssertionValidForContext:v16 error:&v33];
  v25 = v33;
  v26 = rbs_assertion_log();
  v27 = v26;
  if (v12)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v35 = v3;
      _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_INFO, "Assertion %{public}@ revalidated correctly", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = v3;
      _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_DEFAULT, "Assertion %{public}@ is invalid because its target's properties have changed", buf, 0xCu);
    }

    [v3 setInvalidationReason:6];
    [*(a1 + 48) addObject:v3];
  }
}

- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error
{
  daemonContext = self->_daemonContext;
  contextCopy = context;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v14 = [domainAttributeManager attributesForDomain:domainCopy andName:nameCopy context:contextCopy withError:error];

  return v14;
}

- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager originatorEntitlementsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager endowmentNamespaceForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager containsAttributeWithDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)allEntitlements
{
  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  allEntitlements = [domainAttributeManager allEntitlements];

  return allEntitlements;
}

- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  contextCopy = context;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v12 = [domainAttributeManager areTargetPropertiesValidForContext:contextCopy forAttributeWithDomain:domainCopy andName:nameCopy];

  return v12;
}

- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager additionalRestrictionsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)restrictionsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager restrictionsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)targetEntitlementsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager targetEntitlementsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (void)eventQueue:(id)queue handleAssertionsExpirationWarningEventForProcessIdentity:(id)identity expirationTime:(double)time
{
  v16 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(RBProcessIndex *)self->_processIndex processForIdentity:identityCopy];

  if (v8)
  {
    v9 = rbs_process_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Assertions for process will expire soon: %{public}@", buf, 0xCu);
    }

    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__RBAssertionManager_eventQueue_handleAssertionsExpirationWarningEventForProcessIdentity_expirationTime___block_invoke;
    block[3] = &unk_279B32E40;
    block[4] = self;
    v12 = v8;
    timeCopy = time;
    dispatch_async(calloutQueue, block);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)eventQueue:(id)queue handleWarningEventForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  if ([(RBAssertionCollection *)self->_assertions hasAssertion:assertionCopy])
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__RBAssertionManager_eventQueue_handleWarningEventForAssertion___block_invoke;
    v7[3] = &unk_279B32B80;
    v7[4] = self;
    v8 = assertionCopy;
    dispatch_async(calloutQueue, v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)eventQueue:(id)queue handleInvalidationEventForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  if ([assertionCopy isValid])
  {
    [assertionCopy setInvalidationReason:4];
    v5 = [MEMORY[0x277CBEB98] setWithObject:assertionCopy];
    [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (double)eventQueue:(id)queue startTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionManager *)self _lock_startTimeForAssertion:assertionCopy];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)_remainingRuntimeForProcessIdentity:(id)identity
{
  v36 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identityCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v32;
    v13 = 0.0;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if ([v16 isActive])
        {
          [v16 invalidationDuration];
          if (v17 <= 0.0)
          {
            processState = [v16 processState];
            v28 = [processState role] > 1;

            v11 |= v28;
          }

          else
          {
            v18 = v17;
            [(RBAssertionManager *)self _lock_startTimeForAssertion:v16];
            v20 = v19;
            endPolicy = [v16 endPolicy];
            v22 = v18 + v20 - v6;
            if (v14 >= v22)
            {
              v23 = v22;
            }

            else
            {
              v23 = v14;
            }

            if (endPolicy == 2)
            {
              v14 = v23;
            }

            v10 |= endPolicy == 2;
            processState2 = [v16 processState];
            role = [processState2 role];

            if (v13 < v22 && role > 1)
            {
              v13 = v22;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      if (v10)
      {
        v13 = v14;
      }

      else
      {
        v13 = *MEMORY[0x277D47080];
      }
    }

    else if (v10)
    {
      if (v14 >= v13)
      {
        v29 = v13;
      }

      else
      {
        v29 = v14;
      }

      if (v13 > 0.0)
      {
        v13 = v29;
      }

      else
      {
        v13 = 0.0;
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
    v13 = 0.0;
  }

  return v13;
}

- (id)_concreteTargetForTarget:(id)target allowAbstractTarget:(BOOL)abstractTarget
{
  abstractTargetCopy = abstractTarget;
  v19 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  if (!targetCopy)
  {
    [RBAssertionManager _concreteTargetForTarget:allowAbstractTarget:];
  }

  if ([targetCopy isSystem])
  {
    v7 = +[RBConcreteTarget systemTarget];
    goto LABEL_22;
  }

  processIdentity = [targetCopy processIdentity];
  processIndex = self->_processIndex;
  if (processIdentity)
  {
    v10 = [(RBProcessIndex *)processIndex processForIdentity:processIdentity];
  }

  else
  {
    processIdentifier = [targetCopy processIdentifier];
    v10 = [(RBProcessIndex *)processIndex processForIdentifier:processIdentifier];
  }

  if ([v10 isTerminating])
  {
    v12 = rbs_assertion_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v10;
      _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "ignoring %{public}@ as candidate for concrete target as it is terminating", &v17, 0xCu);
    }

    v10 = 0;
    v7 = 0;
    if (!abstractTargetCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (abstractTargetCopy)
  {
LABEL_14:
    if (processIdentity)
    {
      identity = processIdentity;
LABEL_19:
      environment = [targetCopy environment];
      v7 = [RBConcreteTarget targetWithIdentity:identity environment:environment];

      goto LABEL_21;
    }

    identity = [v10 identity];
    if (identity)
    {
      goto LABEL_19;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  environment2 = [targetCopy environment];
  v7 = [RBConcreteTarget targetWithProcess:v10 environment:environment2];

LABEL_21:
LABEL_22:

  return v7;
}

- (void)_increaseInFlightOperationsForTargetIdentities:(id)identities
{
  v18 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if (identitiesCopy)
  {
    os_unfair_lock_lock(&self->_inFlightOperationsLock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = identitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [(NSCountedSet *)self->_inFlightAssertionTargets addObject:v10];
          if ([(NSCountedSet *)self->_inFlightAssertionTargets countForObject:v10]== 1)
          {
            calloutQueue = self->_calloutQueue;
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = __69__RBAssertionManager__increaseInFlightOperationsForTargetIdentities___block_invoke;
            v12[3] = &unk_279B32B80;
            v12[4] = self;
            v12[5] = v10;
            dispatch_async(calloutQueue, v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_inFlightOperationsLock);
  }
}

- (void)_decreaseInFlightOperationsForTargetIdentities:(id)identities
{
  v18 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if (identitiesCopy)
  {
    os_unfair_lock_lock(&self->_inFlightOperationsLock);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = identitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          [(NSCountedSet *)self->_inFlightAssertionTargets removeObject:v10];
          if (![(NSCountedSet *)self->_inFlightAssertionTargets countForObject:v10])
          {
            calloutQueue = self->_calloutQueue;
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = __69__RBAssertionManager__decreaseInFlightOperationsForTargetIdentities___block_invoke;
            v12[3] = &unk_279B32B80;
            v12[4] = self;
            v12[5] = v10;
            dispatch_async(calloutQueue, v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_inFlightOperationsLock);
  }
}

- (BOOL)_increaseInFlightOperationsForOriginator:(id)originator andSuspendIfNeeded:(id)needed
{
  neededCopy = needed;
  originatorCopy = originator;
  os_unfair_lock_lock(&self->_inFlightOperationsLock);
  v8 = [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap objectForKeyedSubscript:originatorCopy];
  v9 = [v8 unsignedIntegerValue] + 1;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:v10 forKeyedSubscript:originatorCopy];

  maxOperationsInFlight = self->_maxOperationsInFlight;
  if (v9 == maxOperationsInFlight)
  {
    xpc_connection_suspend(neededCopy);
  }

  os_unfair_lock_unlock(&self->_inFlightOperationsLock);

  return v9 == maxOperationsInFlight;
}

- (BOOL)_decreaseInFlightOperationsForOriginator:(id)originator
{
  originatorCopy = originator;
  os_unfair_lock_lock(&self->_inFlightOperationsLock);
  v5 = [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap objectForKeyedSubscript:originatorCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v8 = unsignedIntegerValue - 1;
    if (unsignedIntegerValue == 1)
    {
      [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:0 forKeyedSubscript:originatorCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:v9 forKeyedSubscript:originatorCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 == self->_maxOperationsInFlight - 1;
  os_unfair_lock_unlock(&self->_inFlightOperationsLock);

  return v10;
}

- (void)_lock_enqueueAssertionsForRemoval:(id)removal
{
  removalCopy = removal;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(NSMutableSet *)self->_invalidAssertions count])
  {
    [(NSMutableSet *)self->_invalidAssertions unionSet:removalCopy];
  }

  else
  {
    v5 = [removalCopy count];
    [(NSMutableSet *)self->_invalidAssertions unionSet:removalCopy];
    if (v5)
    {
      timeProvider = self->_timeProvider;
      mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__RBAssertionManager__lock_enqueueAssertionsForRemoval___block_invoke;
      v8[3] = &unk_279B32CB0;
      v8[4] = self;
      [(RBTimeProviding *)timeProvider executeAfter:mEMORY[0x277D47028] onQueue:v8 block:0.1];
    }
  }
}

- (void)_lock_notifyDelegateOfProcessStateChangeSet:(id)set
{
  setCopy = set;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke;
  v6[3] = &unk_279B32B80;
  v6[4] = self;
  v7 = setCopy;
  v5 = setCopy;
  _os_activity_initiate(&dword_262485000, "state notification", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(a1 + 32) + 24));
  if ([*(a1 + 40) hasChanges])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke_2;
    v5[3] = &unk_279B32B80;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (id)_lock_targetIdentitiesInAssertions:(id)assertions
{
  v18 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assertionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        target = [*(*(&v13 + 1) + 8 * i) target];
        identity = [target identity];

        if (identity)
        {
          [v4 addObject:identity];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_lock_originatorIdentifiersInAssertions:(id)assertions
{
  v18 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assertionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        originator = [*(*(&v13 + 1) + 8 * i) originator];
        identifier = [originator identifier];

        if (identifier)
        {
          [v4 addObject:identifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_lock_deactivateAssertions:(id)assertions
{
  v45 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = rbs_assertion_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v44 = [assertionsCopy count];
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Removing %{public}lu assertions", buf, 0xCu);
  }

  if ([assertionsCopy count])
  {
    context = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v32 = [MEMORY[0x277CBEB58] set];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v30 = assertionsCopy;
    v7 = assertionsCopy;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          if (![v12 invalidationReason])
          {
            [RBAssertionManager _lock_deactivateAssertions:];
          }

          target = [v12 target];
          identity = [target identity];

          if (identity && [v12 definesRelativeStartTime] && objc_msgSend(v12, "isActive"))
          {
            v15 = [dictionary objectForKeyedSubscript:identity];
            if (v15)
            {
              v16 = v15;
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") - 1}];
            }

            else
            {
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RBAssertionManager _lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:](selfCopy, "_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:", identity) - 1}];
            }

            [dictionary setObject:v17 forKeyedSubscript:identity];
            if (![v17 unsignedIntegerValue])
            {
              v18 = rbs_assertion_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v44 = identity;
                _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Removed last relative-start-date-defining assertion for process %{public}@", buf, 0xCu);
              }

              [v32 addObject:identity];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v9);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v34;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v33 + 1) + 8 * j) deactivate];
        }

        v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v21);
    }

    v24 = [(RBAssertionManager *)selfCopy _lock_activateDelayedAssertionsForTargets:v32];
    v25 = [(RBAssertionManager *)selfCopy _lock_targetIdentitiesInAssertions:v19];
    [(RBAssertionManager *)selfCopy _lock_clearStartTimesForUnbusyTargets:v25];
    if (v24)
    {
      v26 = [v19 setByAddingObjectsFromSet:v24];
    }

    else
    {
      v26 = v19;
    }

    v27 = v26;
    assertionsCopy = v30;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)_lock_finalizeRemovingAssertions:(id)assertions
{
  v24 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [assertionsCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(assertionsCopy);
        }

        [(RBAssertionManager *)self _lock_removeAssertion:*(*(&v18 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [assertionsCopy countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v9 = [(RBAssertionManager *)self _lock_targetIdentitiesInAssertions:assertionsCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(v9);
        }

        [(RBAssertionManager *)self _lock_removeStateForProcessIdentityIfNecessary:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)_lock_notifyDelegateOfInvalidatedAssertions:(id)assertions
{
  assertionsCopy = assertions;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RBAssertionManager__lock_notifyDelegateOfInvalidatedAssertions___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = assertionsCopy;
  v6 = assertionsCopy;
  dispatch_async(calloutQueue, v7);
}

- (void)_lock_removeAssertions:(id)assertions andUpdateChangedAssertions:(id)changedAssertions
{
  assertionsCopy = assertions;
  changedAssertionsCopy = changedAssertions;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [(RBAssertionManager *)self _lock_deactivateAssertions:assertionsCopy];
  v8 = [MEMORY[0x277CBEB58] set];
  if ([v7 count])
  {
    [v8 unionSet:v7];
  }

  if ([changedAssertionsCopy count])
  {
    [v8 unionSet:changedAssertionsCopy];
  }

  v9 = [assertionsCopy mutableCopy];
  v10 = [(RBAssertionManager *)self _lock_updateStatesDueToChangingAssertions:v8 invalidatedAssertions:v9];
  [(RBAssertionManager *)self _lock_finalizeRemovingAssertions:v9];
  [(RBAssertionManager *)self _lock_notifyDelegateOfInvalidatedAssertions:v9];
  [(RBAssertionManager *)self _lock_notifyDelegateOfProcessStateChangeSet:v10];
}

- (void)_lock_dumpAssertionsForTarget:(id)target
{
  v36 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(RBAssertionManager *)self _lock_sortedAssertionsForTarget:targetCopy];
  v17 = [v5 count];
  v6 = rbs_assertion_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v24 = targetCopy;
    v25 = 2048;
    v26 = v17;
    _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_INFO, "%{public}@ has %lu targeting assertions. Debug log lines of their details follow.", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = rbs_assertion_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          ++v9;
          identifier = [v12 identifier];
          explanation = [v12 explanation];
          attributes = [v12 attributes];
          *buf = 138544642;
          v24 = targetCopy;
          v25 = 2048;
          v26 = v9;
          v27 = 2048;
          v28 = v17;
          v29 = 2114;
          v30 = identifier;
          v31 = 2114;
          v32 = explanation;
          v33 = 2114;
          v34 = attributes;
          _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "%{public}@ assertion details %lu/%lu. ID:%{public}@ Explanation:%{public}@ Attributes:\n%{public}@", buf, 0x3Eu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v35 count:16];
    }

    while (v8);
  }
}

- (id)_lock_sortedAssertionsForTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:targetCopy];

  allObjects = [v5 allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_84];

  return v7;
}

uint64_t __54__RBAssertionManager__lock_sortedAssertionsForTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 identifier];

  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "count")}];
  v11 = [v7 compare:v10];

  return v11;
}

- (void)_lock_removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBAssertionCollection *)self->_assertions removeAssertion:assertionCopy];
  historicalStatistics = [(RBDaemonContextProviding *)self->_daemonContext historicalStatistics];
  [historicalStatistics notifyAssertionCount:{-[RBAssertionCollection count](self->_assertions, "count")}];

  stateCaptureManager = [(RBDaemonContextProviding *)self->_daemonContext stateCaptureManager];
  [stateCaptureManager removeItem:assertionCopy];

  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (![(RBAssertionCollection *)self->_assertions hasAssertionsForOriginator:identifier])
  {
    v8 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifier];
    if ([v8 isReported])
    {
      -[RBAssertionOriginatorPidPersisting removePid:](self->_originatorPidStore, "removePid:", [identifier pid]);
    }
  }

  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    RBPowerlogEvent(2, identity, [(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:identity], 0xFFFFFFFFLL);
  }
}

- (void)_lock_addAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RBAssertionManager__lock_addAssertion___block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (_lock_addAssertion__onceToken != -1)
  {
    dispatch_once(&_lock_addAssertion__onceToken, block);
  }

  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (![(RBAssertionCollection *)self->_assertions hasAssertionsForOriginator:identifier])
  {
    v7 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifier];
    if ([v7 isReported])
    {
      -[RBAssertionOriginatorPidPersisting addPid:](self->_originatorPidStore, "addPid:", [identifier pid]);
    }
  }

  [(RBAssertionCollection *)self->_assertions addAssertion:assertionCopy];
  historicalStatistics = [(RBDaemonContextProviding *)self->_daemonContext historicalStatistics];
  [historicalStatistics notifyAssertionCount:{-[RBAssertionCollection count](self->_assertions, "count")}];

  stateCaptureManager = [(RBDaemonContextProviding *)self->_daemonContext stateCaptureManager];
  [stateCaptureManager addItem:assertionCopy];

  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    RBPowerlogEvent(1, identity, [(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:identity], 0xFFFFFFFFLL);
  }
}

- (void)_lock_checkAssertionToInvalidateByCondition:(id)condition condition:(id)a4 currentValue:(id)value assertionsToInvalidate:(id)invalidate
{
  conditionCopy = condition;
  v9 = a4;
  valueCopy = value;
  invalidateCopy = invalidate;
  if ([conditionCopy isActive])
  {
    intransientState = [conditionCopy intransientState];
    invalidatesOnConditions = [intransientState invalidatesOnConditions];
    v14 = [invalidatesOnConditions objectForKey:v9];

    if (v14)
    {
      if (!valueCopy)
      {
        [RBAssertionManager _lock_checkAssertionToInvalidateByCondition:condition:currentValue:assertionsToInvalidate:];
      }

      integerValue = [valueCopy integerValue];
      if (integerValue > [v14 integerValue])
      {
        [invalidateCopy addObject:conditionCopy];
        [conditionCopy setInvalidationReason:8];
      }
    }
  }
}

- (id)_lock_invalidateAssertionByConditions:(id)conditions changedAssertions:(id *)assertions
{
  v26 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v6 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = conditionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        assertions = self->_assertions;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __78__RBAssertionManager__lock_invalidateAssertionByConditions_changedAssertions___block_invoke;
        v18[3] = &unk_279B32E88;
        v18[4] = self;
        v18[5] = v12;
        v19 = v13;
        v20 = v6;
        v15 = v13;
        [(RBAssertionCollection *)assertions enumerateAssertionsWithBlock:v18];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  *assertions = [(RBAssertionManager *)self _lock_deactivateAssertions:v6];

  return v6;
}

- (id)_lock_updateStatesDueToChangingAssertions:(id)assertions invalidatedAssertions:(id)invalidatedAssertions
{
  assertionsCopy = assertions;
  invalidatedAssertionsCopy = invalidatedAssertions;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v8 = [RBProcessStateChangeSet alloc];
  v23 = [(RBProcessStateChangeSet *)v8 initWithChanges:MEMORY[0x277CBEBF8]];
  os_unfair_lock_assert_owner(&self->_lock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke;
  v13[3] = &unk_279B32EB0;
  v14 = assertionsCopy;
  selfCopy = self;
  v16 = invalidatedAssertionsCopy;
  v17 = &v18;
  v9 = invalidatedAssertionsCopy;
  v10 = assertionsCopy;
  _os_activity_initiate(&dword_262485000, "state update", OS_ACTIVITY_FLAG_DEFAULT, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = [*(*(a1 + 40) + 224) conditions];
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 176);
    if (v4)
    {
      v7 = [v4 systemState];
      [v6 setSystemState:v7];
    }

    else
    {
      [*(v5 + 176) setSystemState:*(v5 + 224)];
    }

    v8 = [*(*(a1 + 40) + 176) resolveForAssertions:v2];

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v8 changeSet];
    [v9 applyChanges:v10];

    v11 = *(a1 + 40);
    v12 = [v8 gainedStartTimeDefining];
    v13 = [v11 _lock_deactivateDelayedAssertionsForTargets:v12];

    v14 = *(a1 + 40);
    v15 = [v8 lostStartTimeDefining];
    v16 = [v14 _lock_activateDelayedAssertionsForTargets:v15];

    v47 = v16;
    v17 = [v16 setByAddingObjectsFromSet:v13];

    if (_os_feature_enabled_impl())
    {
      v18 = *(a1 + 40);
      v19 = [v8 systemState];
      v20 = [v19 conditions];
      v52 = 0;
      v21 = [v18 _lock_invalidateAssertionByConditions:v20 changedAssertions:&v52];
      v22 = v52;

      if ([v21 count])
      {
        if (!v22)
        {
          __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_1();
        }

        [*(a1 + 48) unionSet:v21];
        v23 = [v17 setByAddingObjectsFromSet:v22];

        v17 = v23;
      }

      else if (v22)
      {
        __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_2();
      }

      v24 = [v8 systemState];
      v25 = [v24 conditions];
      if (v43 == v25)
      {
      }

      else
      {
        if (v43 && v25)
        {
          v26 = [v43 isEqual:v25];

          if (v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        v27 = [v8 systemState];
        v28 = [v27 conditions];

        [*(*(a1 + 40) + 40) allAssertions];
        v24 = v17;
        v17 = v43 = v28;
      }

LABEL_19:
    }

    v2 = v17;
    if (v3 == 50)
    {
      break;
    }

    v45 = v17;
    v46 = v13;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v29 = [v8 changeSet];
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v48 + 1) + 8 * i);
          v35 = *(a1 + 40);
          v36 = [v34 updatedState];
          v37 = [v34 identity];
          [v35 _lock_setState:v36 forProcessIdentity:v37];
        }

        v31 = [v29 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v31);
    }

    ++v3;

    v38 = [v8 touchedAssertions];
    [v44 unionSet:v38];

    v2 = v45;
    v39 = [v45 anyObject];

    v4 = v8;
    if (!v39)
    {
      goto LABEL_33;
    }
  }

  v40 = rbs_assertion_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_3(v17, a1 + 56, v40);
  }

LABEL_33:
  v41 = *(a1 + 40);
  v42 = [v8 systemState];
  [v41 _lock_setSystemState:v42];

  [*(*(a1 + 40) + 184) updateEventsForAssertions:v44];
}

- (void)_lock_removeStateForProcessIdentityIfNecessary:(id)necessary
{
  v11 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:necessaryCopy]&& ![(RBProcessIndex *)self->_processIndex containsIdentity:necessaryCopy])
  {
    [(RBProcessMap *)self->_stateMap removeIdentity:necessaryCopy];
    [(NSMutableSet *)self->_assertionTargets removeObject:necessaryCopy];
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = necessaryCopy;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Ended tracking state for process identity %{public}@", buf, 0xCu);
    }

    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__RBAssertionManager__lock_removeStateForProcessIdentityIfNecessary___block_invoke;
    v7[3] = &unk_279B32B80;
    v7[4] = self;
    v8 = necessaryCopy;
    dispatch_async(calloutQueue, v7);
  }
}

- (void)_lock_setState:(id)state forProcessIdentity:(id)identity
{
  stateCopy = state;
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(RBProcessMap *)self->_stateMap containsIdentity:identityCopy];
  v9 = [(RBProcessMap *)self->_stateMap setValue:stateCopy forIdentity:identityCopy];
  if (!v8)
  {
    [(NSMutableSet *)self->_assertionTargets addObject:identityCopy];
    calloutQueue = self->_calloutQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__RBAssertionManager__lock_setState_forProcessIdentity___block_invoke;
    v11[3] = &unk_279B32B80;
    v11[4] = self;
    v12 = identityCopy;
    dispatch_async(calloutQueue, v11);
  }
}

- (void)_lock_setSystemState:(id)state
{
  stateCopy = state;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([stateCopy isEqual:self->_systemState] & 1) == 0)
  {
    v5 = [stateCopy copy];
    systemState = self->_systemState;
    self->_systemState = v5;

    calloutQueue = self->_calloutQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__RBAssertionManager__lock_setSystemState___block_invoke;
    v9[3] = &unk_279B32B80;
    v9[4] = self;
    v10 = v5;
    v8 = v5;
    dispatch_async(calloutQueue, v9);
  }
}

- (double)_lock_startTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [assertionCopy creationTime];
  v6 = v5;
  startPolicy = [assertionCopy startPolicy];
  if (startPolicy > 100)
  {
    if (startPolicy == 101)
    {
      [(RBAssertionManager *)self _lock_relativeStartTimeForAssertion:assertionCopy];
    }

    else
    {
      if (startPolicy != 102)
      {
        if (startPolicy == 103)
        {
          [(RBAssertionManager *)self _lock_delayedStartTimeForAssertion:assertionCopy];
          v6 = v8;
          [assertionCopy creationTime];
          if (v6 < v9)
          {
            v6 = v9;
          }
        }

        goto LABEL_14;
      }

      [(RBAssertionManager *)self _lock_delayedStartTimeForAssertion:assertionCopy];
    }

LABEL_13:
    v6 = v10;
    goto LABEL_14;
  }

  if (startPolicy != 2)
  {
    if (startPolicy != 3)
    {
      goto LABEL_14;
    }

    [(RBAssertionManager *)self _lock_originatorExitTimeForAssertion:assertionCopy];
    goto LABEL_13;
  }

  target = [assertionCopy target];
  process = [target process];

  if (process)
  {
    timeProvider = self->_timeProvider;
    target2 = [assertionCopy target];
    process2 = [target2 process];
    [(RBTimeProviding *)timeProvider startTimeForProcess:process2];
    v6 = v17;
  }

LABEL_14:

  return v6;
}

- (double)_lock_invalidationTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBAssertionManager *)self _lock_startTimeForAssertion:assertionCopy];
  v6 = v5;
  [assertionCopy invalidationDuration];
  v8 = v6 + v7;
  startPolicy = [assertionCopy startPolicy];
  if (((startPolicy - 102) < 2 || startPolicy == 3) && ![assertionCopy isActive])
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (double)_lock_relativeStartTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    if (([assertionCopy isActive] & 1) != 0 || !-[RBAssertionManager _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:](self, "_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:", identity))
    {
      v10 = [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity objectForKeyedSubscript:identity];
      v11 = v10;
      if (v10)
      {
        [v10 doubleValue];
        v6 = v12;
      }
    }

    else
    {
      [(RBTimeProviding *)self->_timeProvider currentTime];
      v6 = v9;
    }
  }

  return v6;
}

- (double)_lock_originatorExitTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (identifier)
  {
    if ([assertionCopy isActive])
    {
      v9 = [(NSMapTable *)self->_originatorExitTimesByAssertion objectForKey:assertionCopy];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = MEMORY[0x277CCABB0];
        [(RBTimeProviding *)self->_timeProvider currentTime];
        v10 = [v11 numberWithDouble:?];
        [(NSMapTable *)self->_originatorExitTimesByAssertion setObject:v10 forKey:assertionCopy];
        if (!v10)
        {
          [RBAssertionManager _lock_originatorExitTimeForAssertion:];
        }
      }

      [v10 doubleValue];
      v6 = v12;
    }

    else
    {
      v6 = 1.79769313e308;
    }
  }

  return v6;
}

- (id)_lock_deactivateDelayedAssertionsForTargets:(id)targets
{
  v21 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = targetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v11])
        {
          assertions = self->_assertions;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __66__RBAssertionManager__lock_deactivateDelayedAssertionsForTargets___block_invoke;
          v14[3] = &unk_279B32ED8;
          v15 = v5;
          [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v11 withBlock:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

void __66__RBAssertionManager__lock_deactivateDelayedAssertionsForTargets___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 startPolicy] == 103 || objc_msgSend(v3, "startPolicy") == 102) && objc_msgSend(v3, "isActive") && !objc_msgSend(v3, "invalidationReason"))
  {
    v4 = rbs_ttl_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Deactivating delayed assertion %{public}@", &v5, 0xCu);
    }

    [v3 deactivate];
    [*(a1 + 32) addObject:v3];
  }
}

- (id)_lock_activateDelayedAssertionsForTargets:(id)targets
{
  v24 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([targetsCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = targetsCopy;
    v6 = targetsCopy;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = MEMORY[0x277CCABB0];
          [(RBTimeProviding *)self->_timeProvider currentTime];
          v13 = [v12 numberWithDouble:?];
          [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:v13 forKeyedSubscript:v11];

          if (![(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v11])
          {
            assertions = self->_assertions;
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __64__RBAssertionManager__lock_activateDelayedAssertionsForTargets___block_invoke;
            v17[3] = &unk_279B32ED8;
            v18 = v5;
            [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v11 withBlock:v17];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    targetsCopy = v16;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  return v5;
}

void __64__RBAssertionManager__lock_activateDelayedAssertionsForTargets___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 startPolicy] & 0xFFFFFFFFFFFFFFFELL) == 0x66 && (objc_msgSend(v3, "isActive") & 1) == 0 && objc_msgSend(v3, "isValid"))
  {
    v4 = rbs_ttl_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Activating delayed assertion %{public}@", &v5, 0xCu);
    }

    [v3 activate];
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_lock_clearStartTimesForUnbusyTargets:(id)targets
{
  v22 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([targetsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = targetsCopy;
    v5 = targetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if (![(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v9, v11])
          {
            v13 = 0;
            v14 = &v13;
            v15 = 0x2020000000;
            v16 = 0;
            assertions = self->_assertions;
            v12[0] = MEMORY[0x277D85DD0];
            v12[1] = 3221225472;
            v12[2] = __60__RBAssertionManager__lock_clearStartTimesForUnbusyTargets___block_invoke;
            v12[3] = &unk_279B32F00;
            v12[4] = &v13;
            [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v9 withBlock:v12];
            if ((v14[3] & 1) == 0)
            {
              [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity removeObjectForKey:v9];
            }

            _Block_object_dispose(&v13, 8);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    targetsCopy = v11;
  }
}

void __60__RBAssertionManager__lock_clearStartTimesForUnbusyTargets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 startPolicy] - 101) <= 2 && objc_msgSend(v3, "isActive") && objc_msgSend(v3, "isValid"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (double)_lock_delayedStartTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    if (([assertionCopy isActive] & 1) != 0 || !-[RBAssertionManager _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:](self, "_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:", identity))
    {
      v9 = [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity objectForKeyedSubscript:identity];
      v10 = v9;
      if (v9)
      {
        [v9 doubleValue];
        v6 = v11;
      }
    }

    else
    {
      v6 = 1.79769313e308;
    }
  }

  return v6;
}

- (unint64_t)_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  assertions = self->_assertions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__RBAssertionManager__lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke;
  v8[3] = &unk_279B32F00;
  v8[4] = &v9;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:identityCopy withBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __88__RBAssertionManager__lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 definesRelativeStartTime] && objc_msgSend(v3, "isActive"))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  assertions = self->_assertions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__RBAssertionManager__lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke;
  v7[3] = &unk_279B32F00;
  v7[4] = &v8;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:identityCopy withBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

void __83__RBAssertionManager__lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 definesRelativeStartTime] && objc_msgSend(v5, "isActive"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_acquireUnderlyingAssertionForProcess:(id)process
{
  v36 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  underlyingAssertion = [processCopy underlyingAssertion];
  if (!v28[5])
  {
    identity = [processCopy identity];
    isApplication = [identity isApplication];

    if (isApplication)
    {
      if (!os_variant_has_internal_content() || ([processCopy identity], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "embeddedApplicationIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"com.apple.runningboard.test"), v8, v7, (v9 & 1) == 0))
      {
        v10 = v28[5];
        v28[5] = @"defaultUnderlyingAppAssertion";

        v11 = rbs_assertion_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = processCopy;
          _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Using default underlying assertion for app: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (v28[5])
  {
    auditToken = [processCopy auditToken];
    v13 = auditToken == 0;

    if (v13)
    {
      v22 = rbs_assertion_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [RBAssertionManager _acquireUnderlyingAssertionForProcess:];
      }
    }

    else
    {
      v14 = MEMORY[0x277D46DC8];
      v15 = [MEMORY[0x277D46DD0] identifierWithClientPid:getpid()];
      v16 = MEMORY[0x277D47008];
      identifier = [processCopy identifier];
      v18 = [v16 targetWithProcessIdentifier:identifier];
      v19 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.underlying" name:v28[5]];
      v33[0] = v19;
      v20 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
      v33[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      v22 = [v14 descriptorWithIdentifier:v15 target:v18 explanation:@"RB Underlying Assertion" attributes:v21];

      v23 = [RBAssertionAcquisitionContext contextForProcess:processCopy withDescriptor:v22 daemonContext:self->_daemonContext];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke;
      v24[3] = &unk_279B32F28;
      v25 = processCopy;
      v26 = &v27;
      [(RBAssertionManager *)self acquireAssertionWithContext:v23 completion:v24];
    }
  }

  _Block_object_dispose(&v27, 8);
}

void __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userInfo];
    v6 = [v5 valueForKey:@"IgnoreOnReconnect"];
    v7 = rbs_assertion_log();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v12 = 138543874;
        v13 = v9;
        v14 = 2114;
        v15 = v10;
        v16 = 2114;
        v17 = v4;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Underlying assertion for %{public}@ with name %{public}@ failed to acquire with error %{public}@", &v12, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke_cold_1(a1, v4, v8);
    }
  }

  else
  {
    v5 = rbs_assertion_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Successfully acquired underlying assertion for %{public}@", &v12, 0xCu);
    }
  }
}

- (void)_invalidateAssertionsWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = contextCopy;
  identifiersToInvalidate = [contextCopy identifiersToInvalidate];
  v7 = [identifiersToInvalidate countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(identifiersToInvalidate);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:v11])
        {
          [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v11];
        }

        else
        {
          v13 = rbs_assertion_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_error_impl(&dword_262485000, v13, OS_LOG_TYPE_ERROR, "Attempt to invalidate nonexistent assertion failed for identifier %@", buf, 0xCu);
          }
        }
      }

      v8 = [identifiersToInvalidate countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(RBAssertionManager *)self _lock_invalidateAssertions:v5 forceSync:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_lock_validateDescriptor:(id)descriptor originatorProcess:(id)process originatorState:(id)state concreteTarget:(id)target targetProcess:(id)targetProcess targetIdentity:(id)identity targetIdentifier:(id)identifier targetState:(id)self0 acquisitionContext:(id)self1 error:(id *)self2
{
  contextCopy = context;
  targetStateCopy = targetState;
  identifierCopy = identifier;
  identityCopy = identity;
  targetProcessCopy = targetProcess;
  targetCopy = target;
  stateCopy = state;
  processCopy = process;
  descriptorCopy = descriptor;
  os_unfair_lock_assert_owner(&self->_lock);
  v26 = +[RBAssertionDescriptorValidatorContext context];
  [v26 setAssertionDescriptor:descriptorCopy];

  [v26 setOriginatorProcess:processCopy];
  [v26 setOriginatorState:stateCopy];

  [v26 setTarget:targetCopy];
  [v26 setTargetProcess:targetProcessCopy];

  [v26 setTargetIdentity:identityCopy];
  [v26 setTargetIdentifier:identifierCopy];

  [v26 setTargetState:targetStateCopy];
  [v26 setAcquisitionContext:contextCopy];

  entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
  [v26 setEntitlementManager:entitlementManager];

  [v26 setBundlePropertiesManager:self->_bundlePropertiesManager];
  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  [v26 setDomainAttributeManager:domainAttributeManager];

  v29 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:processCopy];

  [v26 setSavedEndowments:v29];
  [v26 setSystemState:self->_systemState];
  descriptorValidator = self->_descriptorValidator;
  v38 = 0;
  v31 = [(RBAssertionDescriptorValidating *)descriptorValidator isAssertionValidForContext:v26 error:&v38];
  v32 = v38;
  v33 = v32;
  if ((v31 & 1) == 0)
  {
    if (!v32)
    {
      [RBAssertionManager _lock_validateDescriptor:originatorProcess:originatorState:concreteTarget:targetProcess:targetIdentity:targetIdentifier:targetState:acquisitionContext:error:];
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      v34 = v33;
      *error = v33;
    }
  }

LABEL_5:

  return v31;
}

- (id)_lock_assertionCreationAttributeContextForTargetIdentity:(id)identity originator:(id)originator
{
  originatorCopy = originator;
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = objc_alloc_init(RBAttributeContext);
  entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
  [(RBAttributeContext *)v8 setEntitlementManager:entitlementManager];

  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  [(RBAttributeContext *)v8 setDomainAttributeManager:domainAttributeManager];

  [(RBAttributeContext *)v8 setBundlePropertiesManager:self->_bundlePropertiesManager];
  v11 = [(RBProcessMap *)self->_stateMap valueForIdentity:identityCopy];

  [(RBAttributeContext *)v8 setInitialProcessState:v11];
  v12 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:originatorCopy];

  [(RBAttributeContext *)v8 setSavedEndowments:v12];
  [(RBAttributeContext *)v8 setSystemState:self->_systemState];

  return v8;
}

- (BOOL)_lock_originatorHasExited:(id)exited
{
  originator = [exited originator];
  v4 = originator;
  if (originator)
  {
    isTerminating = [originator isTerminating];
  }

  else
  {
    isTerminating = 1;
  }

  return isTerminating;
}

- (id)_lock_createAssertionWithAcquisitionContext:(id)context attributeContext:(id)attributeContext concreteTarget:(id)target targetIdentity:(id)identity originator:(id)originator error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  targetCopy = target;
  identityCopy = identity;
  originatorCopy = originator;
  attributeContextCopy = attributeContext;
  descriptor = [contextCopy descriptor];
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v20 = [RBAssertion assertionWithDescriptor:descriptor target:targetCopy originator:originatorCopy context:attributeContextCopy creationTime:?];

  startPolicy = [v20 startPolicy];
  if (startPolicy <= 100)
  {
    if (startPolicy >= 3)
    {
      if (startPolicy != 3)
      {
        goto LABEL_22;
      }

      v22 = [(RBAssertionManager *)self _lock_originatorHasExited:v20];
      v23 = rbs_ttl_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          *buf = 138543362;
          v50 = v20;
          v25 = "Assertion %{public}@ will be created as active as originator process has exited";
LABEL_14:
          _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if (v24)
      {
        *buf = 138543362;
        v50 = v20;
        v28 = "Assertion %{public}@ will be created as inactive as originator process has not exited";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

LABEL_12:
    v23 = rbs_ttl_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v50 = v20;
      v25 = "Assertion %{public}@ will be created as active";
      goto LABEL_14;
    }

LABEL_15:

    [v20 activate];
    goto LABEL_22;
  }

  if ((startPolicy - 102) >= 2)
  {
    if (startPolicy != 101)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v26 = [(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:identityCopy];
  v23 = rbs_ttl_log();
  v27 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v50 = v20;
    v25 = "Assertion %{public}@ will be created as active as no start-time-defining assertions exist";
    goto LABEL_14;
  }

  if (v27)
  {
    *buf = 138543362;
    v50 = v20;
    v28 = "Assertion %{public}@ will be created as inactive as start-time-defining assertions exist";
LABEL_20:
    _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
  }

LABEL_21:

  [v20 deactivate];
LABEL_22:
  identity = [targetCopy identity];
  if (([v20 startPolicy] == 103 || objc_msgSend(v20, "startPolicy") == 101 || objc_msgSend(v20, "startPolicy") == 102) && (-[NSMutableDictionary objectForKeyedSubscript:](self->_relativeStartTimesByTargetIdentity, "objectForKeyedSubscript:", identity), v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v32 = MEMORY[0x277CCABB0];
    [(RBTimeProviding *)self->_timeProvider currentTime];
    v33 = [v32 numberWithDouble:?];
    [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:v33 forKeyedSubscript:identity];

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  [v20 invalidationDuration];
  v35 = v34;
  [(RBAssertionManager *)self _lock_invalidationTimeForAssertion:v20];
  if (v35 == 0.0 || (v37 = v36, [(RBTimeProviding *)self->_timeProvider currentTime], v37 > v38))
  {
    holdToken = [contextCopy holdToken];

    if (holdToken)
    {
      pluginHoldsForAssertions = self->_pluginHoldsForAssertions;
      holdToken2 = [contextCopy holdToken];
      identifier = [v20 identifier];
      [(NSMutableDictionary *)pluginHoldsForAssertions setObject:holdToken2 forKey:identifier];
    }

    error = v20;
  }

  else
  {
    if (v31)
    {
      [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:0 forKeyedSubscript:identity];
    }

    if (error)
    {
      v43 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277D47050];
      v47[0] = *MEMORY[0x277CCA470];
      v47[1] = @"IgnoreOnReconnect";
      v48[0] = @"Assertion's invalidation time is in the past";
      v48[1] = MEMORY[0x277CBEC38];
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
      *error = [v43 errorWithDomain:v44 code:2 userInfo:v45];

      error = 0;
    }
  }

  return error;
}

- (id)_lock_createAssertionForDescriptor:(id)descriptor originatorState:(id)state acquisitionContext:(id)context error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  stateCopy = state;
  contextCopy = context;
  target = [descriptorCopy target];
  process = [contextCopy process];
  v13 = -[RBAssertionManager _concreteTargetForTarget:allowAbstractTarget:](self, "_concreteTargetForTarget:allowAbstractTarget:", target, [contextCopy allowAbstractTarget]);
  if ([contextCopy allowAbstractTarget])
  {
    v14 = [(RBAssertionManager *)self _concreteTargetForTarget:target allowAbstractTarget:0];
    process2 = [v14 process];
  }

  else
  {
    process2 = 0;
  }

  v15 = rbs_ttl_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 description];
    shortDescription = v16;
    if (!v16)
    {
      shortDescription = [target shortDescription];
    }

    v18 = [descriptorCopy debugDescription];
    *buf = 138543874;
    v52 = shortDescription;
    v53 = 2114;
    v54 = process;
    v55 = 2114;
    v56 = v18;
    _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "Acquiring assertion targeting %{public}@ from originator %{public}@ with description %{public}@", buf, 0x20u);
    if (!v16)
    {
    }
  }

  v46 = process;
  if (v13)
  {
    v42 = target;
    identity = [v13 identity];
    process3 = [v13 process];
    v21 = process3;
    if (process3)
    {
      v22 = process3;
    }

    else
    {
      v22 = [(RBProcessIndex *)self->_processIndex processForIdentity:identity];
    }

    v27 = v22;

    identifier = [v27 identifier];
    v31 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    v48 = 0;
    v41 = identifier;
    v32 = [(RBAssertionManager *)self _lock_validateDescriptor:descriptorCopy originatorProcess:v46 originatorState:stateCopy concreteTarget:v13 targetProcess:v27 targetIdentity:identity targetIdentifier:identifier targetState:v31 acquisitionContext:contextCopy error:&v48];
    v33 = v48;
    v34 = v33;
    if (v32)
    {
      v40 = [(RBAssertionManager *)self _lock_assertionCreationAttributeContextForTargetIdentity:identity originator:v46];
      v28 = [RBAssertionManager _lock_createAssertionWithAcquisitionContext:"_lock_createAssertionWithAcquisitionContext:attributeContext:concreteTarget:targetIdentity:originator:error:" attributeContext:contextCopy concreteTarget:? targetIdentity:? originator:? error:?];
      shortDescription2 = 0;

      if (v28)
      {
        v29 = process2;
        if ([contextCopy allowAbstractTarget] && process2)
        {
          v35 = rbs_ttl_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v44 = [descriptorCopy debugDescription];
            *buf = 138543618;
            v52 = v44;
            v53 = 2114;
            v54 = process2;
            _os_log_impl(&dword_262485000, v35, OS_LOG_TYPE_DEFAULT, "setting abstract target for %{public}@ to %{public}@", buf, 0x16u);
          }

          [v28 setTargetProcessForAbstract:process2];
        }

        if ([contextCopy launchAssertion])
        {
          [v28 setLaunchAssertion:1];
        }

        v36 = v28;
      }

      else
      {
        v29 = process2;
        if (error)
        {
          v38 = shortDescription2;
          *error = shortDescription2;
        }
      }
    }

    else
    {
      if (error)
      {
        v37 = v33;
        v28 = 0;
        *error = v34;
      }

      else
      {
        v28 = 0;
      }

      shortDescription2 = v34;
      v29 = process2;
    }
  }

  else
  {
    if (!error)
    {
      v28 = 0;
      v29 = process2;
      goto LABEL_36;
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D47050];
    v49 = *MEMORY[0x277CCA470];
    v25 = MEMORY[0x277CCACA8];
    v42 = target;
    shortDescription2 = [target shortDescription];
    identity = [v25 stringWithFormat:@"Specified target process %@ does not exist", shortDescription2];
    v50 = identity;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [v23 errorWithDomain:v24 code:2 userInfo:v27];
    *error = v28 = 0;
    v29 = process2;
  }

  target = v42;
  process = v46;
LABEL_36:

  return v28;
}

- (unint64_t)_lock_incomingAssertionCountForBatchContext:(id)context originatorIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  descriptorsToAcquire = [contextCopy descriptorsToAcquire];
  v9 = [descriptorsToAcquire count];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = contextCopy;
  obj = [contextCopy identifiersToInvalidate];
  v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:*(*(&v21 + 1) + 8 * v13)];
        originator = [v14 originator];
        identifier = [originator identifier];
        v17 = [identifier isEqual:identifierCopy];

        v9 -= v17;
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  return v9;
}

- (BOOL)_lock_willExceedAssertionLimitForOriginatorProcess:(id)process withIncomingCount:(unint64_t)count
{
  processCopy = process;
  v7 = processCopy;
  maxAssertionsPerOriginator = self->_maxAssertionsPerOriginator;
  v9 = maxAssertionsPerOriginator >= count;
  v10 = maxAssertionsPerOriginator - count;
  if (v10 != 0 && v9)
  {
    assertions = self->_assertions;
    identifier = [processCopy identifier];
    v13 = [(RBAssertionCollection *)assertions hasAssertionsForOriginator:identifier exceedingCount:v10];

    if (v13)
    {
      entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
      v15 = [entitlementManager entitlementsForProcess:v7];
      v16 = [v15 rb_hasEntitlement:@"com.apple.runningboard.performancetest"];

      v17 = v16 ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)_lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:(id)process
{
  processCopy = process;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__RBAssertionManager__lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = processCopy;
  v6 = processCopy;
  dispatch_async(calloutQueue, v7);
}

- (BOOL)_lock_enforceAssertionLimitIfNecessaryForBatchContext:(id)context originatorProcess:(id)process error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  contextCopy = context;
  identifier = [processCopy identifier];
  v11 = [(RBAssertionManager *)self _lock_incomingAssertionCountForBatchContext:contextCopy originatorIdentifier:identifier];

  v12 = [(RBAssertionManager *)self _lock_willExceedAssertionLimitForOriginatorProcess:processCopy withIncomingCount:v11];
  if (v12)
  {
    [(RBAssertionManager *)self _lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:processCopy];
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D47050];
      v17 = *MEMORY[0x277CCA470];
      v18[0] = @"Originator is holding too many assertions";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v13 errorWithDomain:v14 code:2 userInfo:v15];
    }
  }

  return v12;
}

- (id)_lock_createAssertionsForBatchContext:(id)context originatorState:(id)state errorsByIndex:(id)index
{
  contextCopy = context;
  stateCopy = state;
  indexCopy = index;
  descriptorsToAcquire = [contextCopy descriptorsToAcquire];
  v10 = [descriptorsToAcquire count];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      descriptorsToAcquire2 = [contextCopy descriptorsToAcquire];
      v13 = [descriptorsToAcquire2 objectAtIndexedSubscript:i];

      v14 = [contextCopy acquisitionContextForDescriptor:v13];
      v24 = 0;
      v15 = [(RBAssertionManager *)self _lock_createAssertionForDescriptor:v13 originatorState:stateCopy acquisitionContext:v14 error:&v24];
      v16 = v24;
      if (v15)
      {
        acquiringAssertionIdentifiers = self->_acquiringAssertionIdentifiers;
        identifier = [v15 identifier];
        [(NSMutableSet *)acquiringAssertionIdentifiers addObject:identifier];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [dictionary setObject:v15 forKeyedSubscript:v19];
      }

      else
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [indexCopy setObject:v16 forKeyedSubscript:v19];
      }
    }
  }

  return dictionary;
}

- (id)_lock_deactivateExistingAssertionsDelayedByIncomingAssertions:(id)assertions
{
  v22 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v5 = [MEMORY[0x277CBEB58] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = assertionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        target = [v11 target];
        identity = [target identity];

        if ([v11 definesRelativeStartTime])
        {
          v14 = identity == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14 && ([v5 containsObject:identity] & 1) == 0)
        {
          [v5 addObject:identity];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [(RBAssertionManager *)self _lock_deactivateDelayedAssertionsForTargets:v5];

  return v15;
}

- (void)_lock_invalidateAssertions:(id)assertions forceSync:(BOOL)sync
{
  syncCopy = sync;
  v28 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  os_unfair_lock_assert_owner(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = assertionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
        v13 = rbs_ttl_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          originator = [v12 originator];
          *buf = 138543618;
          v24 = v12;
          v25 = 2114;
          v26 = originator;
          _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "Invalidating assertion %{public}@ from originator %{public}@", buf, 0x16u);
        }

        [v12 setInvalidationReason:3];
        identifier = [v12 identifier];
        if (([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifier]& 1) != 0)
        {
          [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:identifier];
        }

        else
        {
          v16 = [MEMORY[0x277CBEB98] setWithObject:v12];
          [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v16];

          syncCopy |= [v12 invalidatesSynchronously];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  if (syncCopy)
  {
    v17 = rbs_assertion_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(NSMutableSet *)self->_invalidAssertions count];
      *buf = 134349056;
      v24 = v18;
      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "Invalidating %{public}lu assertions synchronously", buf, 0xCu);
    }

    [(RBAssertionManager *)self _lock_removeInvalidAssertions];
  }
}

- (void)_acquireAssertions:(id)assertions invalidateIdentifiers:(id)identifiers forOriginatorProcess:(id)process completionPolicy:(unint64_t)policy acquisitionErrorsByIndex:(id)index completeStage:(id)stage
{
  v125 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  identifiersCopy = identifiers;
  processCopy = process;
  indexCopy = index;
  stageCopy = stage;
  dispatch_assert_queue_V2(self->_workloop);
  os_unfair_lock_lock(&self->_lock);
  v82 = [MEMORY[0x277CBEB58] set];
  v83 = [MEMORY[0x277CBEB58] set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = assertionsCopy;
  v87 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (v87)
  {
    v88 = *v111;
    v79 = *MEMORY[0x277CCA470];
    v80 = *MEMORY[0x277D47050];
    v85 = processCopy;
    do
    {
      v15 = 0;
      do
      {
        if (*v111 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v110 + 1) + 8 * v15);
        v17 = [obj objectForKeyedSubscript:v16];
        identifier = [v17 identifier];
        target = [v17 target];
        process = [target process];
        v95 = identifier;
        v96 = v15;
        v93 = process;
        v94 = target;
        v89 = v16;
        v92 = [(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifier];
        if (!process)
        {
          v21 = 1;
          goto LABEL_10;
        }

        if ([(RBProcessIndex *)self->_processIndex containsProcess:process])
        {
          v21 = [(NSMutableSet *)self->_inFlightTerminations containsObject:process]^ 1;
LABEL_10:
          v91 = v21;
          goto LABEL_12;
        }

        v91 = 0;
LABEL_12:
        v90 = [(RBProcessIndex *)self->_processIndex containsProcess:processCopy];
        v98 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        conditions = [(RBSystemState *)self->_systemState conditions];
        allKeys = [conditions allKeys];

        v24 = [allKeys countByEnumeratingWithState:&v106 objects:v123 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v107;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v107 != v26)
              {
                objc_enumerationMutation(allKeys);
              }

              v28 = *(*(&v106 + 1) + 8 * i);
              intransientState = [v17 intransientState];
              invalidatesOnConditions = [intransientState invalidatesOnConditions];
              v31 = [invalidatesOnConditions objectForKey:v28];

              if (v31)
              {
                conditions2 = [(RBSystemState *)self->_systemState conditions];
                v33 = [conditions2 objectForKey:v28];

                if (!v33)
                {
                  [RBAssertionManager _acquireAssertions:invalidateIdentifiers:forOriginatorProcess:completionPolicy:acquisitionErrorsByIndex:completeStage:];
                }

                integerValue = [v33 integerValue];
                if (integerValue > [v31 integerValue])
                {
                  [v98 addObject:v28];
                }
              }
            }

            v25 = [allKeys countByEnumeratingWithState:&v106 objects:v123 count:16];
          }

          while (v25);
        }

        if ([v17 suspendsOnOriginatorSuspension])
        {
          processCopy = v85;
          v35 = v95;
          if ([v85 isLifecycleManaged])
          {
            stateMap = self->_stateMap;
            identity = [v85 identity];
            v38 = [(RBProcessMap *)stateMap valueForIdentity:identity];
            v39 = [v38 role] == 1;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
          processCopy = v85;
          v35 = v95;
        }

        [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v35];
        if ([v98 count])
        {
          if (policy != 1)
          {
            [v83 addObject:v17];
            v46 = rbs_assertion_log();
            v44 = v96;
            v45 = v94;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v118 = v17;
              v119 = 2114;
              v120 = v98;
              v47 = v46;
              v48 = "Invalidating assertion <%{public}@> on acquisition for unmet conditions: %{public}@";
              v49 = 22;
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          v40 = MEMORY[0x277CCA9B8];
          v121 = v79;
          v122 = @"Conditions do not allow this assertion";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
          v42 = [v40 errorWithDomain:v80 code:5 userInfo:v41];

          goto LABEL_32;
        }

        if (!v39 && (v92 & v90 & v91 & 1) != 0)
        {
          [(RBAssertionManager *)self _lock_addAssertion:v17];
          [v82 addObject:v17];
          goto LABEL_43;
        }

        if ((v92 & v90 & v91 & v39) != 1)
        {
          if ((v92 & v90 ^ 1 | v91))
          {
            v46 = rbs_ttl_log();
            v44 = v96;
            v45 = v94;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v118 = v17;
              v47 = v46;
              v48 = "Silently discarding acquired but invalid %{public}@";
              goto LABEL_53;
            }

            goto LABEL_41;
          }

          if (policy != 1)
          {
            [v83 addObject:v17];
            v46 = rbs_assertion_log();
            v44 = v96;
            v45 = v94;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v118 = v17;
              v47 = v46;
              v48 = "Silently discarding assertion acquired after target exited: %{public}@";
LABEL_53:
              v49 = 12;
LABEL_40:
              _os_log_impl(&dword_262485000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
            }

LABEL_41:

            goto LABEL_44;
          }

          v50 = MEMORY[0x277CCA9B8];
          v115 = v79;
          v51 = MEMORY[0x277CCACA8];
          shortDescription = [v93 shortDescription];
          v53 = [v51 stringWithFormat:@"Specified target process %@ does not exist", shortDescription];
          v116 = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
          v42 = [v50 errorWithDomain:v80 code:2 userInfo:v54];

LABEL_32:
          [indexCopy setObject:v42 forKeyedSubscript:v89];

LABEL_43:
          v44 = v96;
          v45 = v94;
          goto LABEL_44;
        }

        v43 = rbs_assertion_log();
        v44 = v96;
        v45 = v94;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v118 = v17;
          _os_log_impl(&dword_262485000, v43, OS_LOG_TYPE_DEFAULT, "Suspended assertion %{public}@ on acquisition", buf, 0xCu);
        }

        [v17 suspend];
        [(RBAssertionManager *)self _lock_addAssertion:v17];
LABEL_44:

        v15 = v44 + 1;
      }

      while (v15 != v87);
      v55 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
      v87 = v55;
    }

    while (v55);
  }

  v56 = v82;
  v57 = [(RBAssertionManager *)self _lock_deactivateExistingAssertionsDelayedByIncomingAssertions:v82];
  [v82 unionSet:v57];
  v58 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v86 = processCopy;
    v59 = [MEMORY[0x277CBEB58] set];
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v60 = identifiersCopy;
    v61 = [v60 countByEnumeratingWithState:&v102 objects:v114 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v103;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v103 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v102 + 1) + 8 * j);
          if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:v65])
          {
            [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v65];
            v66 = rbs_assertion_log();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v118 = v65;
              _os_log_impl(&dword_262485000, v66, OS_LOG_TYPE_DEFAULT, "Dropping unacquired identifier %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v66 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:v65];
            v67 = rbs_assertion_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v118 = v65;
              _os_log_impl(&dword_262485000, v67, OS_LOG_TYPE_DEFAULT, "Invalidating identifier %{public}@", buf, 0xCu);
            }

            if (v66)
            {
              [v66 setInvalidationReason:3];
              [v59 addObject:v66];
            }

            else
            {
              v68 = rbs_assertion_log();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v118 = v65;
                _os_log_error_impl(&dword_262485000, v68, OS_LOG_TYPE_ERROR, "Cannot invalidate unknown identifier %{public}@", buf, 0xCu);
              }
            }
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v102 objects:v114 count:16];
      }

      while (v62);
    }

    v69 = [(RBAssertionManager *)self _lock_deactivateAssertions:v59];
    v56 = v82;
    [v82 unionSet:v69];
    [v83 unionSet:v59];

    v58 = identifiersCopy;
    processCopy = v86;
  }

  if ([v56 count])
  {
    v70 = v56;
    v71 = v83;
    v72 = [(RBAssertionManager *)self _lock_updateStatesDueToChangingAssertions:v70 invalidatedAssertions:v83];
    v73 = stageCopy;
  }

  else
  {
    v72 = 0;
    v73 = stageCopy;
    v71 = v83;
  }

  if ([v71 count])
  {
    [(RBAssertionManager *)self _lock_finalizeRemovingAssertions:v71];
    [(RBAssertionManager *)self _lock_notifyDelegateOfInvalidatedAssertions:v71];
  }

  if ([v72 hasChanges])
  {
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke;
    v99[3] = &unk_279B32F78;
    v99[4] = self;
    v100 = v72;
    v101 = v73;
    v74 = MEMORY[0x266729AD0](v99);
    currentContext = [MEMORY[0x277D47038] currentContext];
    v76 = currentContext;
    if (policy == 1 && currentContext)
    {
      [currentContext handoffToQueue:self->_calloutQueue block:v74];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      dispatch_async(self->_calloutQueue, v74);
      os_unfair_lock_unlock(&self->_lock);
      if (policy == 1)
      {
        dispatch_sync(self->_calloutQueue, &__block_literal_global_132);
      }
    }

    v73 = stageCopy;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v73[2](v73, 1, 0);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);
}

void __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke_2;
  v5[3] = &unk_279B32F50;
  v6 = *(a1 + 48);
  [v4 assertionManager:v2 didUpdateProcessStates:v3 completion:v5];
}

- (unint64_t)_lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:(id)assertions completionPolicy:(unint64_t)policy
{
  policyCopy = policy;
  v54 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = assertionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
  v37 = v6;
  if (v7)
  {
    v8 = v7;
    v41 = 0;
    v9 = *v49;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKeyedSubscript:{*(*(&v48 + 1) + 8 * i), policyCopy}];
        target = [v11 target];
        process = [target process];
        identity = [target identity];
        v15 = identity;
        if (process)
        {
          v16 = 1;
        }

        else
        {
          v16 = identity == 0;
        }

        if (!v16)
        {
          selfCopy = self;
          v18 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
          if (!v18 && [v11 isActive] && (objc_msgSend(v11, "isPersistent") & 1) == 0)
          {
            originator = [v11 originator];
            v19 = [(RBAssertionManager *)selfCopy _lock_assertionCreationAttributeContextForTargetIdentity:v15 originator:originator];

            v40 = v19;
            v20 = [v11 updateProcessStateWithAttributeContext:v19];
            if (v20)
            {
              v38 = v20;
              v21 = [dictionary objectForKeyedSubscript:v15];
              if (v21)
              {
                v22 = v21;
                [v21 unionState:v38];
              }

              else
              {
                v22 = [v38 mutableCopy];
                [dictionary setObject:v22 forKeyedSubscript:v15];
              }

              v20 = v38;
            }

            ++v41;

            v6 = v37;
          }

          self = selfCopy;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v8);
  }

  else
  {
    v41 = 0;
  }

  if ([dictionary count])
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v23 = dictionary;
    v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v45;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v44 + 1) + 8 * j);
          v29 = [v23 objectForKeyedSubscript:{v28, policyCopy}];
          [(RBAssertionManager *)self _lock_setState:v29 forProcessIdentity:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v25);
    }

    v30 = policyCopy;
    if (v41 == [v37 count] && policyCopy == 1)
    {
      v30 = 0;
    }

    v32 = MEMORY[0x277D47038];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke;
    v42[3] = &unk_279B32B80;
    v42[4] = self;
    v43 = v23;
    v33 = v32;
    v6 = v37;
    [v33 runWithoutContext:v42];
  }

  else
  {
    v30 = policyCopy;
  }

  return v30;
}

void __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke_2;
  v5[3] = &unk_279B32B80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v8 = [[RBProcessStateChange alloc] initWithIdentity:v6 originalState:0 updatedState:v7];
        v9 = [RBProcessStateChangeSet alloc];
        v17 = v8;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        v11 = [(RBProcessStateChangeSet *)v9 initWithChanges:v10];

        [*(*(a1 + 40) + 32) assertionManager:*(a1 + 40) didUpdateProcessStates:v11 completion:0];
      }

      v3 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v3);
  }
}

- (BOOL)_lock_batchContextInvalidatesSynchronously:(id)synchronously
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  identifiersToInvalidate = [synchronously identifiersToInvalidate];
  v5 = [identifiersToInvalidate countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(identifiersToInvalidate);
        }

        v9 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:*(*(&v13 + 1) + 8 * i)];
        invalidatesSynchronously = [v9 invalidatesSynchronously];

        if (invalidatesSynchronously)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [identifiersToInvalidate countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (BOOL)addSavedEndowment:(id)endowment forProcess:(id)process
{
  endowmentCopy = endowment;
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  p_savedEndowments = &self->_savedEndowments;
  v9 = [(NSMapTable *)self->_savedEndowments objectForKey:processCopy];
  if (v9)
  {
    v10 = v9;
    v11 = [endowmentCopy key];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v17 = [v10 mutableCopy];
    endowment = [endowmentCopy endowment];
    v19 = [endowmentCopy key];
    [v17 setObject:endowment forKey:v19];

    v20 = *p_savedEndowments;
    v21 = [v17 copy];
    [v20 setObject:v21 forKey:processCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEAC0];
    endowment2 = [endowmentCopy endowment];
    v16 = [endowmentCopy key];
    v10 = [v14 dictionaryWithObject:endowment2 forKey:v16];

    [*p_savedEndowments setObject:v10 forKey:processCopy];
  }

  v13 = 1;
LABEL_7:
  v22 = rbs_assertion_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [RBAssertionManager addSavedEndowment:v22 forProcess:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (id)savedEndowmentsForProcess:(id)process
{
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:processCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"bundlePropertiesManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"originatorPidStore" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"validator" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"daemonContext" object:? file:? lineNumber:? description:?];
}

- (void)commitBatchWithContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"batchContext" object:? file:? lineNumber:? description:?];
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"RBAssertionManager.m" lineNumber:249 description:@"called completion more than once"];

  *a3 = *(*a2 + 8);
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Error committing batch context %@: %@", &v4, 0x16u);
}

- (void)invalidateAssertionWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)_concreteTargetForTarget:allowAbstractTarget:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)_lock_deactivateAssertions:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(*(*a2 + 8) + 40) processIdentities];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_fault_impl(&dword_262485000, a3, OS_LOG_TYPE_FAULT, "State resolution exceeded max depth, possible cycle in assertion activation, latest assertions %{public}@ and changed ids %{public}@", &v6, 0x16u);
}

void __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = 138543874;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  v9 = 2114;
  v10 = a2;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "Underlying assertion for %{public}@ with name %{public}@ failed to acquire with error %{public}@", &v5, 0x20u);
}

- (void)_lock_validateDescriptor:originatorProcess:originatorState:concreteTarget:targetProcess:targetIdentity:targetIdentifier:targetState:acquisitionContext:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addSavedEndowment:(id *)a1 forProcess:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Saved endowments: %@", v4, 0xCu);
}

@end