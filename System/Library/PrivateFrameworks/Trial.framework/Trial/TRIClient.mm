@interface TRIClient
+ (BOOL)_isFactorRecordFileType:(id)type;
+ (BOOL)isPlatformBinary;
+ (BOOL)sysdiagnoseInfoToDir:(id)dir error:(id *)error;
+ (id)_sysdiagnoseLogProviders;
+ (id)activeRolloutInformation:(id *)information;
+ (id)clientWithExperimentIdentifiers:(id)identifiers;
+ (id)clientWithIdentifier:(int)identifier;
+ (id)clientWithIdentifier:(int)identifier forTrialdSystem:(BOOL)system;
+ (id)clientWithProjectId:(int)id factorsState:(id)state;
+ (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)error;
+ (id)printedNCVInformation;
+ (id)printedOnDemandReferenceCountsPerUserInformationWithError:(id *)error;
+ (void)logSystemCovariates;
+ (void)printCurrentSettings;
- (BOOL)_hasAppropriatePermissionsForNamespaceName:(id)name;
- (BOOL)deregisterNamespaceName:(id)name error:(id *)error;
- (BOOL)enumerateCounterfactualsWithNamespace:(id)namespace error:(id *)error usingBlock:(id)block;
- (BOOL)hasCounterfactualsForNamespace:(id)namespace;
- (BOOL)hasDownloadedNamespaceWithName:(id)name;
- (BOOL)immediateDownloadForNamespaceNames:(id)names allowExpensiveNetworking:(BOOL)networking error:(id *)error;
- (BOOL)promoteFactorsForNamespace:(id)namespace error:(id *)error;
- (BOOL)registerNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l applicationGroup:(id)group cloudKitContainerId:(int)id error:(id *)error;
- (BOOL)setFactorsProvisionalForNamespace:(id)namespace error:(id *)error;
- (BOOL)setPurgeabilityLevelsForFactors:(id)factors withNamespaceName:(id)name;
- (BOOL)trialIdentifiersWithNamespaceName:(id)name experimentId:(id *)id deploymentId:(int *)deploymentId treatmentId:(id *)treatmentId;
- (TRIClient)init;
- (TRIClient)initWithClientIdentifier:(int)identifier paths:(id)paths factorsState:(id)state staleFactorsUsageGracePeriod:(double)period logger:(id)logger;
- (TRITrackingId)trackingId;
- (id)_rampIdForRolloutDeployment:(id)deployment;
- (id)_refresh:(BOOL)_refresh;
- (id)addUpdateHandlerForNamespaceId:(unsigned int)id queue:(id)queue usingBlock:(id)block;
- (id)addUpdateHandlerForNamespaceId:(unsigned int)id usingBlock:(id)block;
- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block;
- (id)addUpdateHandlerForNamespaceName:(id)name usingBlock:(id)block;
- (id)experimentIdWithNamespace:(unsigned int)namespace;
- (id)experimentIdWithNamespaceName:(id)name;
- (id)experimentIdentifiersWithNamespaceName:(id)name;
- (id)factorLevelsWithNamespace:(unsigned int)namespace;
- (id)factorLevelsWithNamespaceName:(id)name;
- (id)levelForFactor:(id)factor withNamespace:(unsigned int)namespace;
- (id)levelForFactor:(id)factor withNamespaceName:(id)name;
- (id)purgeabilityLevelsForFactorsWithNamespaceName:(id)name;
- (id)rolloutIdWithNamespaceName:(id)name;
- (id)rolloutIdentifiersWithNamespaceName:(id)name;
- (id)sizesForFactors:(id)factors withNamespaceName:(id)name forMetric:(unint64_t)metric error:(id *)error;
- (id)treatmentIdWithNamespace:(unsigned int)namespace;
- (id)treatmentIdWithNamespaceName:(id)name;
- (int64_t)_appContainerType:(id)type;
- (unint64_t)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace token:(id *)token queue:(id)queue progress:(id)progress completion:(id)completion;
- (void)_checkEntitlements;
- (void)_invalidateFactors;
- (void)_lazyInit;
- (void)_registerUpdateHandlerForNamespaceName:(id)name notificationCallback:(id)callback clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging;
- (void)_setupExcessiveStaleFactorsUsageTimerWithGuardedData:(id)data namespace:(id)namespace clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging;
- (void)cacheFactorLevelsWithNamespaceName:(id)name;
- (void)dealloc;
- (void)downloadLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue options:(id)options progress:(id)progress completion:(id)completion;
- (void)downloadNamespaceWithName:(id)name options:(id)options progress:(id)progress completion:(id)completion;
- (void)removeDownloadStatusHandlersWithToken:(id)token;
- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue completion:(id)completion;
- (void)removeLevelsForFactorsImmediately:(id)immediately withNamespace:(id)namespace queue:(id)queue completion:(id)completion;
- (void)removeUpdateHandlerForToken:(id)token;
@end

@implementation TRIClient

- (void)_lazyInit
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __22__TRIClient__lazyInit__block_invoke;
  v3[3] = &unk_27885F0A0;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __22__TRIClient__lazyInit__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    *(a2 + 40) = 1;
    [*(a1 + 32) refresh];
    [*(a1 + 32) _checkEntitlements];
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_DEFAULT, "Finished lazy initialization of TRIClient", v4, 2u);
    }
  }
}

- (void)_invalidateFactors
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_322];
  defaultFactorProvider = self->_defaultFactorProvider;

  [(TRIDefaultFactorProvider *)defaultFactorProvider invalidateAllFactorProviders];
}

void __31__TRIClient__invalidateFactors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2;
  [v3 invalidate];
  v5 = a2[4];
  a2[4] = 0;
}

+ (BOOL)isPlatformBinary
{
  if (qword_280ACAE80 != -1)
  {
    dispatch_once(&qword_280ACAE80, &__block_literal_global_16);
  }

  return _MergedGlobals_13;
}

void __29__TRIClient_isPlatformBinary__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_13 = (SecTaskGetCodeSignStatus(v0) & 0xC000001) == 67108865;

    CFRelease(v1);
  }
}

- (void)_checkEntitlements
{
  v9 = *MEMORY[0x277D85DE8];
  requiresTrialDataVaultAccess = [objc_opt_class() requiresTrialDataVaultAccess];
  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  fileSystemRepresentation = [namespaceDescriptorsDir fileSystemRepresentation];

  *__error() = 0;
  if (requiresTrialDataVaultAccess && access(fileSystemRepresentation, 4) && *__error() == 1)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = fileSystemRepresentation;
      _os_log_fault_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_FAULT, "Cannot access %s - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", &v7, 0xCu);
    }
  }
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_205];
  v3.receiver = self;
  v3.super_class = TRIClient;
  [(TRIClient *)&v3 dealloc];
}

void __20__TRIClient_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_208];
  v5 = a2[2];
  a2[2] = 0;
}

- (TRIClient)init
{
  v3 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_FAULT, "API MISUSE IN CLIENT OF TRIAL: [TRIClient new] and TRIClient() are not supported. Please see TRIClient.h for a recommendation on what to use instead", v7, 2u);
  }

  v4 = +[TRIStandardPaths sharedPaths];
  v5 = [(TRIClient *)self initWithClientIdentifier:1 paths:v4 factorsState:0 staleFactorsUsageGracePeriod:0 logger:86400.0];

  return v5;
}

+ (id)clientWithIdentifier:(int)identifier
{
  v3 = *&identifier;
  v4 = +[TRIProcessInfo callerIsRunningFromSystemContext];

  return [TRIClient clientWithIdentifier:v3 forTrialdSystem:v4];
}

+ (id)clientWithIdentifier:(int)identifier forTrialdSystem:(BOOL)system
{
  systemCopy = system;
  v5 = *&identifier;
  if (system)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:195 description:@"Wrong param provided to [TRIClient clientWithIdentifier:forTrialdSystem:] triald_system only exists on macOS"];
  }

  v8 = +[TRIStandardPaths sharedPaths];
  if (systemCopy)
  {
    v9 = +[TRIStandardPaths sharedPathsForSystem];

    v8 = v9;
  }

  v10 = [[TRIClient alloc] initWithClientIdentifier:v5 paths:v8 factorsState:0 staleFactorsUsageGracePeriod:0 logger:86400.0];
  if (!v10)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:206 description:{@"Expression was unexpectedly nil/false: %@", @"[[TRIClient alloc] initWithClientIdentifier:projectId paths:paths factorsState:nil staleFactorsUsageGracePeriod:kTwentyFourHoursInSeconds logger:nil]"}];
  }

  return v10;
}

+ (id)clientWithProjectId:(int)id factorsState:(id)state
{
  v4 = *&id;
  stateCopy = state;
  v6 = +[TRIStandardPaths sharedPaths];
  v7 = [[TRIClient alloc] initWithClientIdentifier:v4 paths:v6 factorsState:stateCopy staleFactorsUsageGracePeriod:0 logger:86400.0];

  return v7;
}

+ (id)clientWithExperimentIdentifiers:(id)identifiers
{
  asFactorsState = [identifiers asFactorsState];
  v5 = [self clientWithProjectId:0 factorsState:asFactorsState];

  return v5;
}

- (TRIClient)initWithClientIdentifier:(int)identifier paths:(id)paths factorsState:(id)state staleFactorsUsageGracePeriod:(double)period logger:(id)logger
{
  v35 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  stateCopy = state;
  loggerCopy = logger;
  v32.receiver = self;
  v32.super_class = TRIClient;
  v16 = [(TRIClient *)&v32 init];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = @"TrialXP-474.2";
    _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, "Initializing TRIClient. Trial version: %@", buf, 0xCu);
  }

  objc_storeStrong(&v16->_paths, paths);
  v18 = [[TRIDefaultFactorProvider alloc] initWithPaths:pathsCopy factorsState:stateCopy];
  defaultFactorProvider = v16->_defaultFactorProvider;
  v16->_defaultFactorProvider = v18;

  if (v16->_defaultFactorProvider)
  {
    v16->_projectId = identifier;
    objc_storeStrong(&v16->_logger, logger);
    v16->_staleFactorsUsageGracePeriod = period;
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v22 = *(v20 + 16);
    *(v20 + 16) = v21;

    v23 = objc_opt_new();
    v24 = *(v20 + 24);
    *(v20 + 24) = v23;

    *(v20 + 40) = 0;
    v25 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v20];
    lock = v16->_lock;
    v16->_lock = v25;

    v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.Trial.notificationQueue" qosClass:17];
    notificationQueue = v16->_notificationQueue;
    v16->_notificationQueue = v27;

    objc_storeStrong(&v16->_factorsState, state);
LABEL_6:
    v29 = v16;
    goto LABEL_10;
  }

  v30 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v30, OS_LOG_TYPE_ERROR, "Initializing TRIClient with factor state failed. No default factor provider found", buf, 2u);
  }

  v29 = 0;
LABEL_10:

  return v29;
}

- (id)_refresh:(BOOL)_refresh
{
  [(TRIClient *)self _lazyInit];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__TRIClient__refresh___block_invoke;
  v8[3] = &unk_27885F0C8;
  _refreshCopy = _refresh;
  v8[4] = self;
  v8[5] = &v10;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __22__TRIClient__refresh___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  v7 = *(v5 + 8);
  if (*(a1 + 48) == 1)
  {
    v8 = [TRITrackingId trackingIdWithProjectId:*(v5 + 24) paths:*(v5 + 8)];
    v9 = v4[1];
    v4[1] = v8;

    [*(a1 + 32) _invalidateFactors];
  }

  else
  {
    v10 = [v3[1] treatments];
    v11 = [TRITrackingId trackingIdWithProjectId:v6 paths:v7 treatments:v10];
    v12 = v4[1];
    v4[1] = v11;
  }

  v13 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v4[1] uuid];
    v15 = [v4[1] subject];
    v16 = [v15 deviceId];
    v17 = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v16;
    _os_log_debug_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_DEBUG, "Generated new tracking id %@ for subject with device id %@", &v17, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4[1]);
}

- (TRITrackingId)trackingId
{
  [(TRIClient *)self _lazyInit];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__TRIClient_trackingId__block_invoke;
  v8[3] = &unk_27885F0F0;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:351 description:@"trackingId unexpectedly not assigned"];
  }

  return v5;
}

- (id)levelForFactor:(id)factor withNamespaceName:(id)name
{
  nameCopy = name;
  factorCopy = factor;
  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient levelForFactor:withNamespaceName:]" callingFunctionReturnAddressForLogging:v4];
  v9 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider levelForFactor:factorCopy withNamespaceName:nameCopy];

  return v9;
}

- (id)factorLevelsWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient factorLevelsWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorLevelsWithNamespaceName:nameCopy];

  return v7;
}

- (void)cacheFactorLevelsWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient cacheFactorLevelsWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  [(TRIDefaultFactorProvider *)self->_defaultFactorProvider cacheFactorLevelsWithNamespaceName:nameCopy];
}

- (id)addUpdateHandlerForNamespaceName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v9 = objc_opt_new();
  [v9 setQueue:self->_notificationQueue];
  [v9 setHandler:blockCopy];

  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:v9 clientMethodNameForLogging:"[TRIClient addUpdateHandlerForNamespaceName:usingBlock:]" callingFunctionReturnAddressForLogging:v4];

  return v9;
}

- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v12 = objc_opt_new();
  v13 = v12;
  notificationQueue = queueCopy;
  if (!queueCopy)
  {
    notificationQueue = self->_notificationQueue;
  }

  [v12 setQueue:notificationQueue];

  [v13 setHandler:blockCopy];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:v13 clientMethodNameForLogging:"[TRIClient addUpdateHandlerForNamespaceName:queue:usingBlock:]" callingFunctionReturnAddressForLogging:v5];

  return v13;
}

- (void)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  [(TRIClient *)self _lazyInit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
    if (v5)
    {
      lock = self->_lock;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __41__TRIClient_removeUpdateHandlerForToken___block_invoke;
      v7[3] = &unk_27885F0A0;
      v8 = v5;
      [(_PASLock *)lock runWithLockAcquired:v7];
    }
  }
}

void __41__TRIClient_removeUpdateHandlerForToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__TRIClient_removeUpdateHandlerForToken___block_invoke_2;
  v3[3] = &unk_27885F118;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __41__TRIClient_removeUpdateHandlerForToken___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  [v6 removeObject:*(a1 + 32)];
  v8 = [v6 count];

  if (v8 < v7)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) id];
      v11 = 134218242;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "removed update handler %lu for namespace %@", &v11, 0x16u);
    }
  }
}

- (void)_setupExcessiveStaleFactorsUsageTimerWithGuardedData:(id)data namespace:(id)namespace clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging
{
  dataCopy = data;
  namespaceCopy = namespace;
  if (!dataCopy[4])
  {
    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke;
    v19 = &unk_27885F168;
    objc_copyWeak(v20, &location);
    v20[1] = forLogging;
    v20[2] = logging;
    v12 = MEMORY[0x2318F2490](&v16);
    v13 = [TRIExcessiveStaleFactorsUsageTimer alloc];
    v14 = [(TRIExcessiveStaleFactorsUsageTimer *)v13 initWithNamespaceName:namespaceCopy delayTimeInSeconds:v12 block:self->_staleFactorsUsageGracePeriod, v16, v17, v18, v19];
    v15 = dataCopy[4];
    dataCopy[4] = v14;

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_2;
    v9[3] = &unk_27885F140;
    v11 = *(a1 + 40);
    v7 = v3;
    v8 = *(a1 + 48);
    v10 = v7;
    v12 = v8;
    [v6 runWithLockAcquired:v9];
  }
}

void __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_2(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1[5])
  {
    v4 = [TRIMisc bestEffortSymbolicateAddress:?];
  }

  else
  {
    v4 = @"(not recorded)";
  }

  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = a1[4];
    v7 = a1[6];
    v8 = 138413058;
    v9 = v6;
    v10 = 1024;
    v11 = 24;
    v12 = 2080;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_fault_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_FAULT, "TRIClient MISUSE: Factor levels for namespace %@ have been stale for %u hours.\n    Factor levels were pinned by TRIClient method call: %s\n    Calling function: %@\nPinning stale factor levels increases disk space requirements.  Use [TRIClient addUpdateHandlerForNamespaceName:usingBlock:] to detect factor level updates and respond to them (e.g. with [TRIClient refresh]).", &v8, 0x26u);
  }
}

- (void)_registerUpdateHandlerForNamespaceName:(id)name notificationCallback:(id)callback clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging
{
  nameCopy = name;
  callbackCopy = callback;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke;
  v15[3] = &unk_27885F1B8;
  v16 = callbackCopy;
  v17 = nameCopy;
  selfCopy = self;
  loggingCopy = logging;
  forLoggingCopy = forLogging;
  v13 = nameCopy;
  v14 = callbackCopy;
  [(_PASLock *)lock runWithLockAcquired:v15];
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) id];
      v6 = *(a1 + 40);
      *buf = 134218242;
      v24 = v5;
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "adding update handler %lu for namespace %@", buf, 0x16u);
    }

    v7 = [v3[3] objectForKeyedSubscript:*(a1 + 40)];
    if (!v7)
    {
      v7 = objc_opt_new();
      [v3[3] setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    [v7 addObject:*(a1 + 32)];
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) id];
      v14 = *(a1 + 40);
      v15 = [v7 count];
      *buf = 134218498;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2048;
      v28 = v15;
      _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "added update handler %lu for namespace %@ — now %lu handlers for this namespace", buf, 0x20u);
    }
  }

  v9 = [v3[2] objectForKey:*(a1 + 40)];
  v10 = v9 == 0;

  if (v10)
  {
    objc_initWeak(buf, *(a1 + 48));
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_231;
    v19 = &unk_27885F1E0;
    v20 = *(a1 + 40);
    objc_copyWeak(&v21, buf);
    v22 = *(a1 + 56);
    v11 = MEMORY[0x2318F2490](&v16);
    v12 = [TRINamespaceUpdateNotification registerUpdateForNamespaceName:*(a1 + 40) queue:*(*(a1 + 48) + 48) usingBlock:v11, v16, v17, v18, v19];
    if (v12)
    {
      [v3[2] setObject:v12 forKeyedSubscript:*(a1 + 40)];
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_231(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "handling namespace update for %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_232;
    v9[3] = &unk_27885F1B8;
    v9[4] = WeakRetained;
    v10 = *(a1 + 32);
    v12 = *(a1 + 48);
    v11 = v3;
    [v8 runWithLockAcquired:v9];
  }
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_232(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _setupExcessiveStaleFactorsUsageTimerWithGuardedData:v3 namespace:*(a1 + 40) clientMethodNameForLogging:*(a1 + 56) callingFunctionReturnAddressForLogging:*(a1 + 64)];
  v4 = [v3[3] objectForKeyedSubscript:*(a1 + 40)];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [v4 count];
    _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "dispatching updates to %lu callbacks", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v11 id];
          v15 = *(a1 + 40);
          *buf = 134218242;
          v25 = v14;
          v26 = 2112;
          v27 = v15;
          _os_log_debug_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_DEBUG, "calling update handler %lu for namespace %@", buf, 0x16u);
        }

        v13 = [v11 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_233;
        block[3] = &unk_27885F190;
        block[4] = v11;
        v19 = *(a1 + 48);
        dispatch_async(v13, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138412290;
    v25 = v17;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_DEFAULT, "handled namespace update for %@", buf, 0xCu);
  }
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_233(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (id)rolloutIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:538 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient rolloutIdWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorPackIdForRolloutWithNamespaceName:nameCopy];

  return v7;
}

- (id)treatmentIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:548 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient treatmentIdWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider treatmentIdWithNamespaceName:nameCopy];

  return v7;
}

- (id)experimentIdentifiersWithNamespaceName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  namespaceDescriptorsDir = [treatmentsDir stringByAppendingPathComponent:nameCopy];

  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v23 = nameCopy;
    _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "Looking for experiment identifiers for namespace name: %{private}@", buf, 0xCu);
  }

  if (access([namespaceDescriptorsDir fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = namespaceDescriptorsDir;
        _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      }
    }

    v10 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy];
    treatmentsDir2 = [(TRIPaths *)self->_paths treatmentsDir];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v10];
    v13 = [treatmentsDir2 stringByAppendingPathComponent:v12];

    v14 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v23 = nameCopy;
      v24 = 1024;
      LODWORD(v25) = v10;
      _os_log_debug_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEBUG, "Looking for experiment identifiers for namespace name: %{private}@ and namespace id: %d", buf, 0x12u);
    }

    if (access([v13 fileSystemRepresentation], 4) && *__error() == 1)
    {
      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v13;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      }

LABEL_22:
      v16 = 0;
      goto LABEL_30;
    }
  }

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (access([namespaceDescriptorsDir fileSystemRepresentation], 4) && *__error() == 1)
  {
    v13 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = namespaceDescriptorsDir;
      _os_log_fault_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_FAULT, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
    }

    goto LABEL_22;
  }

  namespaceDescriptorsDir = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider experimentDeploymentWithNamespaceName:nameCopy];
  v17 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider treatmentIdWithNamespaceName:nameCopy];
  v13 = v17;
  if (namespaceDescriptorsDir && v17)
  {
    v18 = [TRIExperimentIdentifiers alloc];
    experimentId = [namespaceDescriptorsDir experimentId];
    v16 = [(TRIExperimentIdentifiers *)v18 initWithExperimentId:experimentId deploymentId:[namespaceDescriptorsDir deploymentId] treatmentId:v13];
  }

  else
  {
    experimentId = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(experimentId, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v23 = namespaceDescriptorsDir;
      v24 = 2113;
      v25 = v13;
      _os_log_debug_impl(&dword_22EA6B000, experimentId, OS_LOG_TYPE_DEBUG, "Either of ExperimentDeployment %{private}@ or Treatment %{private}@ is nil", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_30:

  return v16;
}

- (id)rolloutIdentifiersWithNamespaceName:(id)name
{
  v29 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:616 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [treatmentsDir stringByAppendingPathComponent:nameCopy];

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (![(TRIClient *)self _hasAccessToDirectory:v7])
  {
    v9 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy];
    if (!v9)
    {
      v21 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v7;
        goto LABEL_24;
      }

LABEL_15:

LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    v10 = v9;
    treatmentsDir2 = [(TRIPaths *)self->_paths treatmentsDir];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v10];
    v13 = [treatmentsDir2 stringByAppendingPathComponent:v12];

    if (![(TRIClient *)self _hasAccessToDirectory:v13])
    {
      v22 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v7;
        v27 = 2112;
        v28 = v13;
        _os_log_error_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_ERROR, "Cannot access %@ or %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0x16u);
      }

      goto LABEL_19;
    }
  }

  if (![(TRIClient *)self _hasAccessToDirectory:namespaceDescriptorsDir])
  {
    v21 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = namespaceDescriptorsDir;
LABEL_24:
      _os_log_error_impl(&dword_22EA6B000, v21, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v14 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider rolloutDeploymentWithNamespaceName:nameCopy];
  v15 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorPackIdForRolloutWithNamespaceName:nameCopy];
  v16 = v15;
  v17 = 0;
  if (v14 && v15)
  {
    v18 = [(TRIClient *)self _rampIdForRolloutDeployment:v14];
    v19 = [TRIRolloutIdentifiers alloc];
    rolloutId = [v14 rolloutId];
    v17 = -[TRIRolloutIdentifiers initWithRolloutId:deploymentId:factorPackId:rampId:](v19, "initWithRolloutId:deploymentId:factorPackId:rampId:", rolloutId, [v14 deploymentId], v16, v18);
  }

LABEL_20:

  return v17;
}

- (id)_rampIdForRolloutDeployment:(id)deployment
{
  v24 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  deploymentCopy = deployment;
  namespaceDescriptorsDir = [(TRIPaths *)paths namespaceDescriptorsDir];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  rolloutId = [deploymentCopy rolloutId];
  deploymentId = [deploymentCopy deploymentId];

  v9 = [v6 initWithFormat:@"v2/rolloutV2/%@/%d/%@", rolloutId, deploymentId, @"rampId"];
  v10 = [namespaceDescriptorsDir stringByAppendingPathComponent:v9];

  v19 = 0;
  v11 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v10 encoding:4 error:&v19];
  v12 = v19;
  v13 = v12;
  if (v11)
  {
    v14 = TRIValidateRampId(v11);
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

  domain = [v12 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_9:
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v13;
      _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "Unable to read ramp ID from file at path %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  code = [v13 code];

  if (code != 260)
  {
    goto LABEL_9;
  }

  v17 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v21 = v10;
    _os_log_debug_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEBUG, "No ramp ID file found at path %{public}@", buf, 0xCu);
  }

LABEL_11:

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)trialIdentifiersWithNamespaceName:(id)name experimentId:(id *)id deploymentId:(int *)deploymentId treatmentId:(id *)treatmentId
{
  nameCopy = name;
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:nameCopy])
  {
    if (id)
    {
      *id = 0;
    }

    if (deploymentId)
    {
      *deploymentId = -1;
    }

    if (treatmentId)
    {
      *treatmentId = 0;
    }

    v11 = [(TRIClient *)self treatmentIdWithNamespaceName:nameCopy];
    v12 = v11;
    if (v11)
    {
      if (treatmentId)
      {
        v13 = v11;
        *treatmentId = v12;
      }

      v14 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider experimentDeploymentWithNamespaceName:nameCopy];
      v15 = v14;
      v16 = v14 != 0;
      if (v14)
      {
        if (id)
        {
          *id = [v14 experimentId];
        }

        if (deploymentId)
        {
          *deploymentId = [v15 deploymentId];
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)experimentIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:720 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v13 = 0;
  v6 = [(TRIClient *)self trialIdentifiersWithNamespaceName:nameCopy experimentId:&v13 deploymentId:0 treatmentId:0];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (int64_t)_appContainerType:(id)type
{
  typeCopy = type;
  if (typeCopy && (v4 = MEMORY[0x277D425B0], TRILogCategory_ClientFramework(), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = [v4 hasTrueBooleanEntitlement:@"application-identifier" logHandle:v5], v5, v4))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (bundleIdentifier)
    {
      if ([typeCopy isEqualToString:bundleIdentifier])
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (BOOL)registerNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l applicationGroup:(id)group cloudKitContainerId:(int)id error:(id *)error
{
  v9 = *&id;
  v12 = *&version;
  v36[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  lCopy = l;
  groupCopy = group;
  [(TRIClient *)self _lazyInit];
  if (v12)
  {
    if (![(TRIClient *)self hasRegisteredNamespaceWithName:nameCopy])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      if (groupCopy | bundleIdentifier)
      {
        v24 = objc_opt_new();
        v18 = [v24 registerNamespaceWithNamespaceName:nameCopy compatibilityVersion:v12 defaultsFileURL:lCopy applicationGroup:groupCopy cloudKitContainerId:v9 error:error];
        if (v18)
        {
          if (groupCopy)
          {
            v25 = groupCopy;
          }

          else
          {
            v25 = bundleIdentifier;
          }

          if (groupCopy)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          v27 = v25;
          v28 = [TRIAppContainer containerWithIdentifier:v27 type:v26];
          [(TRIDefaultFactorProvider *)self->_defaultFactorProvider setContainer:v28 forNamespaceName:nameCopy];
          [(TRIClient *)self _invalidateFactors];
        }
      }

      else
      {
        v29 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v31) = 0;
          _os_log_error_impl(&dword_22EA6B000, v29, OS_LOG_TYPE_ERROR, "No application group provided and application bundle identifier could not be identified.", &v31, 2u);
        }

        bundleIdentifier = 0;
        LOBYTE(v18) = 0;
      }

      goto LABEL_26;
    }

    if ([(TRIClient *)self compatibilityVersionWithNamespaceName:nameCopy]== v12)
    {
      bundleIdentifier = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
      {
        v31 = 138412290;
        v32 = nameCopy;
        _os_log_debug_impl(&dword_22EA6B000, bundleIdentifier, OS_LOG_TYPE_DEBUG, "Namespace %@ is already registered", &v31, 0xCu);
      }

      LOBYTE(v18) = 1;
      goto LABEL_26;
    }

    if (error)
    {
      v19 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Namespace is already registered with different compatibility version";
      v20 = MEMORY[0x277CBEAC0];
      v21 = &v34;
      v22 = &v33;
      goto LABEL_21;
    }
  }

  else if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"compatibility version must be greater than 0";
    v20 = MEMORY[0x277CBEAC0];
    v21 = v36;
    v22 = &v35;
LABEL_21:
    bundleIdentifier = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    [v19 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:bundleIdentifier];
    *error = LOBYTE(v18) = 0;
LABEL_26:

    goto LABEL_27;
  }

  LOBYTE(v18) = 0;
LABEL_27:

  return v18;
}

- (BOOL)deregisterNamespaceName:(id)name error:(id *)error
{
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v7 = objc_opt_new();
  v8 = [v7 deregisterNamespaceWithNamespaceName:nameCopy error:error];
  if (v8)
  {
    [(TRIDefaultFactorProvider *)self->_defaultFactorProvider setContainer:0 forNamespaceName:nameCopy];
  }

  return v8;
}

- (BOOL)hasDownloadedNamespaceWithName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  if ([(TRIDefaultFactorProvider *)self->_defaultFactorProvider hasTreatmentInAnyOfLayers:38 withNamespaceName:nameCopy])
  {
    lastFetchWasSuccess = 1;
  }

  else
  {
    v7 = [[TRINamespaceStatusProvider alloc] initWithPaths:self->_paths];
    v8 = [(TRINamespaceStatusProvider *)v7 statusForNamespaceWithName:nameCopy];
    v9 = [(TRIClient *)self compatibilityVersionWithNamespaceName:nameCopy];
    if (v8 && [v8 compatibilityVersion] == v9)
    {
      lastFetchAttempt = [v8 lastFetchAttempt];
      if (lastFetchAttempt)
      {
        lastFetchWasSuccess = [v8 lastFetchWasSuccess];
      }

      else
      {
        lastFetchWasSuccess = 0;
      }
    }

    else
    {
      lastFetchWasSuccess = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return lastFetchWasSuccess;
}

- (void)downloadNamespaceWithName:(id)name options:(id)options progress:(id)progress completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  [(TRIClient *)self _lazyInit];
  if ([(TRIClient *)self hasRegisteredNamespaceWithName:nameCopy])
  {
    if ([(TRIClient *)self hasDownloadedNamespaceWithName:nameCopy])
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = nameCopy;
        _os_log_debug_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEBUG, "namespace %@ already has downloaded treatment", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke;
      v41[3] = &unk_27885F208;
      v20 = nameCopy;
      v42 = v20;
      v21 = completionCopy;
      v43 = v21;
      v31 = MEMORY[0x2318F2490](v41);
      v22 = [(TRIClient *)self addUpdateHandlerForNamespaceName:v20 usingBlock:?];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke_264;
      v35[3] = &unk_27885F230;
      v23 = v20;
      v36 = v23;
      v39 = progressCopy;
      v24 = v21;
      v40 = v24;
      selfCopy = self;
      v33 = v22;
      v38 = v33;
      v30 = MEMORY[0x2318F2490](v35);
      v32 = [TRIDownloadNotification registerDownloadNotificationForKey:v23 queue:0 usingBlock:?];
      v25 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v47 = v23;
        _os_log_debug_impl(&dword_22EA6B000, v25, OS_LOG_TYPE_DEBUG, "requesting treatment download for namespace %@", buf, 0xCu);
      }

      v26 = objc_opt_new();
      v34 = 0;
      v27 = [v26 startNamespaceDownloadWithName:v23 options:optionsCopy error:&v34];
      v28 = v34;
      if ((v27 & 1) == 0)
      {
        v29 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v47 = v23;
          _os_log_debug_impl(&dword_22EA6B000, v29, OS_LOG_TYPE_DEBUG, "failed to request treatment download for namespace %@", buf, 0xCu);
        }

        if (v32)
        {
          [TRIDownloadNotification deregisterNotificationWithToken:?];
        }

        [(TRIClient *)self removeUpdateHandlerForToken:v33];
        if (v24)
        {
          (v24)[2](v24, 0, v28);
        }
      }
    }
  }

  else
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v47 = nameCopy;
      _os_log_debug_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_DEBUG, "cannot download treatment because namespace %@ is not registered", buf, 0xCu);
    }

    if (completionCopy)
    {
      v16 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"namespace is not registered: %@", nameCopy];
      v45 = nameCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v19 = [v16 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v18];

      (completionCopy)[2](completionCopy, 0, v19);
    }
  }
}

void __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_debug_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEBUG, "received downloaded treatment activated notification for namespace %@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [v3 token];

  [TRINamespaceUpdateNotification deregisterUpdateWithToken:v5];
}

void __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke_264(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 type];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a1 + 32);
          v20 = 138412290;
          *v21 = v17;
          _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "received download completed notification for namespace %@", &v20, 0xCu);
        }

        v9 = *(a1 + 56);
        if (v9)
        {
          (*(v9 + 16))(v9, [v6 progressMaxValue]);
        }

        [TRIDownloadNotification deregisterNotificationWithToken:v5];
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_20;
    }

LABEL_11:
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v6 progress];
      v16 = *(a1 + 32);
      v20 = 67109378;
      *v21 = v15;
      *&v21[4] = 2112;
      *&v21[6] = v16;
      _os_log_debug_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_DEBUG, "received download progress %u for namespace %@", &v20, 0x12u);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, [v6 progress]);
    }

    goto LABEL_20;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = [v6 error];
    v20 = 138412546;
    *v21 = v18;
    *&v21[8] = 2112;
    *&v21[10] = v19;
    _os_log_debug_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_DEBUG, "received download failed notification for namespace %@, error: %@", &v20, 0x16u);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = [v6 error];
    (*(v13 + 16))(v13, 0, v14);
  }

  [TRIDownloadNotification deregisterNotificationWithToken:v5];
  [*(a1 + 40) removeUpdateHandlerForToken:*(a1 + 48)];
LABEL_20:
}

- (id)sizesForFactors:(id)factors withNamespaceName:(id)name forMetric:(unint64_t)metric error:(id *)error
{
  v95[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  nameCopy = name;
  v13 = nameCopy;
  if (!factorsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:953 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_57:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:954 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    goto LABEL_3;
  }

  if (!nameCopy)
  {
    goto LABEL_57;
  }

LABEL_3:
  if (qword_280ACAE88 != -1)
  {
    dispatch_once(&qword_280ACAE88, &__block_literal_global_278);
  }

  v14 = byte_280ACAE71;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_2;
  block[3] = &unk_27885F278;
  v76 = &__block_literal_global_272;
  if (qword_280ACAE90 != -1)
  {
    dispatch_once(&qword_280ACAE90, block);
  }

  v15 = byte_280ACAE72;

  if ((v14 & 1) == 0 && (v15 & 1) == 0)
  {
    v43 = objc_alloc(MEMORY[0x277CCA9B8]);
    v94 = *MEMORY[0x277CCA450];
    v95[0] = @"Process is not entitled for on-demand factor download, please see logs for details.";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:&v94 count:1];
    v45 = [v43 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v44];

    if (error)
    {
      v46 = v45;
      *error = v45;
    }

    v42 = 0;
    goto LABEL_52;
  }

  v73 = 0;
  v74 = 0;
  v72 = 0;
  [(TRIClient *)self _lazyInit];
  if (![TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:v13 paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v73 experimentIds:0 assetIdsByFactorPack:&v72 rolloutFactorNames:0 rolloutDeployments:0 error:&v74])
  {
    v41 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v89 = factorsCopy;
      v90 = 2112;
      v91 = v13;
      v92 = 2112;
      v93 = v74;
      _os_log_impl(&dword_22EA6B000, v41, OS_LOG_TYPE_INFO, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
    }

    v42 = 0;
    if (error)
    {
      *error = v74;
    }

    goto LABEL_51;
  }

  v16 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v17 = factorsCopy;
  v65 = [v17 countByEnumeratingWithState:&v68 objects:v87 count:16];
  if (!v65)
  {

LABEL_49:
    v42 = v16;
    v18 = 0;
    goto LABEL_50;
  }

  metricCopy = metric;
  v18 = 0;
  v66 = *v69;
  v62 = v13;
  v63 = *MEMORY[0x277CCA450];
  selfCopy = self;
  errorCopy = error;
  v58 = factorsCopy;
  v60 = v16;
  obj = v17;
  do
  {
    v67 = v18;
    v19 = 0;
    do
    {
      if (*v69 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v68 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      if (![(TRIClient *)self hasDownloadedNamespaceWithName:v13])
      {
        v47 = MEMORY[0x277CCA9B8];
        v85 = v63;
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No active rollout or experiment found for factor %@", v20];
        v86 = v22;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
        v49 = [v47 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v48];
        v50 = v67;
LABEL_44:

        objc_autoreleasePoolPop(v21);
        v18 = v49;
        v40 = errorCopy;
        factorsCopy = v58;
        v16 = v60;
        v38 = obj;
        goto LABEL_46;
      }

      v22 = [TRINamespaceFactorProviderChain factorProviderWithPaths:self->_paths namespaceName:v13 excludingTreatmentLayers:1];
      v23 = [v22 levelForFactor:v20];
      if (!v23)
      {
        v51 = MEMORY[0x277CCA9B8];
        v83 = v63;
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"No level found for factor %@", v20];
        v84 = v50;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v49 = [v51 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v52];

        v48 = 0;
        goto LABEL_44;
      }

      v24 = v23;
      v25 = [v23 fileOrDirectoryLevelWithIsDir:0];
      v26 = v25;
      if (!v25)
      {
        v29 = MEMORY[0x277CCA9B8];
        v81 = v63;
        asset = [MEMORY[0x277CCACA8] stringWithFormat:@"Factor %@ is not file / directory typed", v20];
        v82 = asset;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v82;
        v32 = &v81;
LABEL_24:
        v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
        v34 = [v29 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v33];

        v28 = 0;
        v67 = v34;
        goto LABEL_25;
      }

      if (([v25 hasAsset] & 1) == 0)
      {
        v29 = MEMORY[0x277CCA9B8];
        v79 = v63;
        asset = [MEMORY[0x277CCACA8] stringWithFormat:@"No asset metadata found for factor %@", v20];
        v80 = asset;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v80;
        v32 = &v79;
        goto LABEL_24;
      }

      asset = [v26 asset];
      if ([asset hasSize])
      {
        if (metricCopy)
        {
          v28 = 1;
          goto LABEL_26;
        }

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(asset, "size")}];
        [v60 setObject:v33 forKeyedSubscript:v20];
        v28 = 1;
      }

      else
      {
        v35 = MEMORY[0x277CCA9B8];
        v77 = v63;
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"No size found for asset of factor %@", v20];
        v78 = v33;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v37 = [v35 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v36];

        v28 = 0;
        v67 = v37;
      }

LABEL_25:

      v13 = v62;
LABEL_26:

      objc_autoreleasePoolPop(v21);
      if (!v28)
      {
        v40 = errorCopy;
        factorsCopy = v58;
        v16 = v60;
        v38 = obj;
        v18 = v67;
        goto LABEL_46;
      }

      ++v19;
      self = selfCopy;
    }

    while (v65 != v19);
    v38 = obj;
    v39 = [obj countByEnumeratingWithState:&v68 objects:v87 count:16];
    v40 = errorCopy;
    factorsCopy = v58;
    v16 = v60;
    v18 = v67;
    v65 = v39;
  }

  while (v39);
LABEL_46:

  if (!v18)
  {
    goto LABEL_49;
  }

  if (v40)
  {
    v53 = v18;
    v42 = 0;
    *v40 = v18;
  }

  else
  {
    v42 = 0;
  }

LABEL_50:

LABEL_51:
LABEL_52:

  return v42;
}

uint64_t __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
  if (!v0)
  {
    v1 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v1, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor download: <key>%@</key><array>    <string>...</string></array>", buf, 0xCu);
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    v1 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x277CCAC38] processInfo];
      v9 = [v8 processName];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412802;
      v17 = v9;
      v18 = 2112;
      v19 = @"com.apple.trial.client";
      v20 = 2112;
      v21 = v11;
      _os_log_error_impl(&dword_22EA6B000, v1, OS_LOG_TYPE_ERROR, "Process %@ has incorrectly-typed entitlement %@ (expected array of string, decoded %@)", buf, 0x20u);
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_15;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v22 count:16];
      v6 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 1;
  }

LABEL_18:

  return v6;
}

void __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_276()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  byte_280ACAE71 = [v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2];

  objc_autoreleasePoolPop(v0);
}

void __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  byte_280ACAE72 = (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)downloadLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue options:(id)options progress:(id)progress completion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1096 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (qword_280ACAE98 != -1)
  {
    dispatch_once(&qword_280ACAE98, &__block_literal_global_302);
  }

  if (dword_280ACAE74)
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    [(TRIClient *)self _lazyInit];
    if ([TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:namespaceCopy paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v30 experimentIds:0 assetIdsByFactorPack:&v29 rolloutFactorNames:0 rolloutDeployments:0 error:&v31])
    {
      v21 = objc_opt_new();
      [v21 downloadLevelsForFactors:factorsCopy withNamespace:namespaceCopy queue:queueCopy factorsState:self->_factorsState options:optionsCopy progress:progressCopy completion:completionCopy];
    }

    else
    {
      v26 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v33 = factorsCopy;
        v34 = 2112;
        v35 = namespaceCopy;
        v36 = 2112;
        v37 = v31;
        _os_log_impl(&dword_22EA6B000, v26, OS_LOG_TYPE_DEFAULT, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v31);
      }
    }
  }

  else
  {
    v22 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor download: <key>%@</key><array>...</array>", buf, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Process is not entitled for on-demand factor download.";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v25 = [v23 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v24];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v25);
    }
  }
}

void __86__TRIClient_downloadLevelsForFactors_withNamespace_queue_options_progress_completion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    dword_280ACAE74 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    dword_280ACAE74 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue completion:(id)completion
{
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  completionCopy = completion;
  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

  if (!namespaceCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  [(TRIClient *)self _lazyInit];
  v15 = objc_opt_new();
  factorsState = self->_factorsState;
  v26 = 0;
  v17 = [v15 removeLevelsForFactors:factorsCopy withNamespace:namespaceCopy factorsState:factorsState removeImmediately:0 error:&v26];
  v18 = v26;
  if (completionCopy)
  {
    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__TRIClient_removeLevelsForFactors_withNamespace_queue_completion___block_invoke;
      block[3] = &unk_27885F2A0;
      v24 = completionCopy;
      v25 = v17;
      v23 = v18;
      dispatch_async(queueCopy, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v17, v18);
    }
  }
}

- (void)removeLevelsForFactorsImmediately:(id)immediately withNamespace:(id)namespace queue:(id)queue completion:(id)completion
{
  immediatelyCopy = immediately;
  namespaceCopy = namespace;
  queueCopy = queue;
  completionCopy = completion;
  if (immediatelyCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1189 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1188 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

  if (!namespaceCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  [(TRIClient *)self _lazyInit];
  v15 = objc_opt_new();
  factorsState = self->_factorsState;
  v26 = 0;
  v17 = [v15 removeLevelsForFactors:immediatelyCopy withNamespace:namespaceCopy factorsState:factorsState removeImmediately:1 error:&v26];
  v18 = v26;
  if (completionCopy)
  {
    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__TRIClient_removeLevelsForFactorsImmediately_withNamespace_queue_completion___block_invoke;
      block[3] = &unk_27885F2A0;
      v24 = completionCopy;
      v25 = v17;
      v23 = v18;
      dispatch_async(queueCopy, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v17, v18);
    }
  }
}

- (BOOL)setPurgeabilityLevelsForFactors:(id)factors withNamespaceName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  nameCopy = name;
  v9 = nameCopy;
  if (factorsCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1217 description:{@"Invalid parameter not satisfying: %@", @"factorsWithPurgeabilityLevels"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:v9])
  {
    v10 = objc_opt_new();
    v17 = 0;
    v11 = [v10 setPurgeabilityLevelsForFactors:factorsCopy forNamespaceName:v9 error:&v17];
    v12 = v17;
    if ((v11 & 1) == 0)
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v19 = v9;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Failed to save purgeability levels for namespace %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)purgeabilityLevelsForFactorsWithNamespaceName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1240 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:nameCopy])
  {
    v7 = objc_opt_new();
    v19 = 0;
    v8 = [v7 loadNamespaceMetadataForNamespaceName:nameCopy error:&v19];
    v9 = v19;
    if (!v8)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v21 = nameCopy;
        v22 = 2112;
        v23 = v9;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Failed to save purgeability levels for namespace %@ : %@", buf, 0x16u);
      }
    }

    factorNamePurgeabilityLevels = [v8 factorNamePurgeabilityLevels];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__TRIClient_purgeabilityLevelsForFactorsWithNamespaceName___block_invoke;
    v17[3] = &unk_27885F2C8;
    v12 = dictionary;
    v18 = v12;
    [factorNamePurgeabilityLevels enumerateKeysAndEnumsUsingBlock:v17];

    v13 = v18;
    v14 = v12;
  }

  return dictionary;
}

void __59__TRIClient_purgeabilityLevelsForFactorsWithNamespaceName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithInt:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)setFactorsProvisionalForNamespace:(id)namespace error:(id *)error
{
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1269 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  v8 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider promotableFactorPackIdForNamespaceName:namespaceCopy];
  if (!v8)
  {
    v11 = 0;
    v10 = 1;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = objc_opt_new();
  v15 = 0;
  v10 = [v9 setProvisionalFactorPackId:v8 forNamespaceName:namespaceCopy error:&v15];
  v11 = v15;

  if (error)
  {
LABEL_5:
    v12 = v11;
    *error = v11;
  }

LABEL_6:

  return v10;
}

- (BOOL)promoteFactorsForNamespace:(id)namespace error:(id *)error
{
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1289 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  v8 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider promotableFactorPackIdForNamespaceName:namespaceCopy];
  if (!v8)
  {
    v13 = 0;
    v14 = 1;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = [(TRIClient *)self rolloutIdentifiersWithNamespaceName:namespaceCopy];
  v10 = v9;
  if (v9)
  {
    rolloutId = [v9 rolloutId];
    v12 = +[TRIRolloutDeployment deploymentWithRolloutId:deploymentId:](TRIRolloutDeployment, "deploymentWithRolloutId:deploymentId:", rolloutId, [v10 deploymentId]);
  }

  else
  {
    v12 = 0;
  }

  v15 = objc_opt_new();
  v19 = 0;
  v14 = [v15 promoteFactorPackId:v8 forNamespaceName:namespaceCopy rolloutDeployment:v12 error:&v19];
  v13 = v19;

  if (error)
  {
LABEL_10:
    v16 = v13;
    *error = v13;
  }

LABEL_11:

  return v14;
}

- (unint64_t)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace token:(id *)token queue:(id)queue progress:(id)progress completion:(id)completion
{
  v70[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  progressCopy = progress;
  completionCopy = completion;
  if (token)
  {
    *token = 0;
  }

  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1322 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (namespaceCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1323 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_5:
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke;
  v60[3] = &unk_27885F2F0;
  v20 = completionCopy;
  v62 = v20;
  v21 = queueCopy;
  v61 = v21;
  v22 = MEMORY[0x2318F2490](v60);
  if (qword_280ACAEA0 != -1)
  {
    dispatch_once(&qword_280ACAEA0, &__block_literal_global_316);
  }

  if (dword_280ACAE78)
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    [(TRIClient *)self _lazyInit];
    if ([TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:namespaceCopy paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v58 experimentIds:0 assetIdsByFactorPack:&v57 rolloutFactorNames:0 rolloutDeployments:0 error:&v59])
    {
      if ([v58 count] || objc_msgSend(v57, "count"))
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_320;
        v50[3] = &unk_27885F318;
        v23 = progressCopy;
        v51 = progressCopy;
        v52 = v20;
        v24 = MEMORY[0x2318F2490](v50);
        *buf = 0;
        v49 = 0;
        v25 = objc_opt_new();
        v26 = [v25 statusOfDownloadForFactors:factorsCopy withNamespace:namespaceCopy factorsState:self->_factorsState notificationKey:buf error:&v49];
        v27 = v26;
        if ((v26 - 2) < 2)
        {
          if (*buf)
          {
            v33 = [TRIDownloadNotification registerDownloadNotificationForKey:*buf queue:v21 usingBlock:v24];
            if (token)
            {
              v33 = v33;
              *token = v33;
            }
          }
        }

        else if (v26)
        {
          if (v26 == 1)
          {
            v22[2](v22, 0, 0);
          }
        }

        else
        {
          (v22)[2](v22, 0, v49);
        }

        progressCopy = v23;
      }

      else
      {
        v46 = v20;
        v47 = v21;
        v48 = progressCopy;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v35 = factorsCopy;
        v36 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v54;
          while (2)
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v54 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider levelForFactor:*(*(&v53 + 1) + 8 * i) withNamespaceName:namespaceCopy];
              if (v40)
              {
                v41 = v40;
                v42 = [v40 fileOrDirectoryLevelWithIsDir:0];
                v43 = v42;
                if (v42 && ([v42 hasAsset] & 1) == 0)
                {
                  v22[2](v22, 0, 0);

                  v27 = 1;
                  goto LABEL_42;
                }
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v37)
            {
              continue;
            }

            break;
          }
        }

        v22[2](v22, 1, 0);
        v27 = 4;
LABEL_42:
        v21 = v47;
        progressCopy = v48;
        v20 = v46;
      }
    }

    else
    {
      v32 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = factorsCopy;
        v65 = 2112;
        v66 = namespaceCopy;
        v67 = 2112;
        v68 = v59;
        _os_log_impl(&dword_22EA6B000, v32, OS_LOG_TYPE_INFO, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
      }

      (v22)[2](v22, 0, v59);
      v27 = 0;
    }
  }

  else
  {
    v28 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor status: <key>%@</key><array>...</array>", buf, 0xCu);
    }

    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v69 = *MEMORY[0x277CCA450];
    v70[0] = @"Process is not entitled for on-demand factor status.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v31 = [v29 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v30];

    (v22)[2](v22, 0, v31);
    v27 = 0;
  }

  return v27;
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_2;
      block[3] = &unk_27885F2A0;
      v10 = v6;
      v11 = a2;
      v9 = v5;
      dispatch_async(v7, block);
    }

    else
    {
      (v6)[2](v6, a2, v5);
    }
  }
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    dword_280ACAE78 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    dword_280ACAE78 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 type];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        (*(v13 + 16))(v13, 1, [v5 progress] / 100.0);
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = [v5 error];
        (*(v14 + 16))(v14, 0, v15);
      }

LABEL_19:
      [TRIDownloadNotification deregisterNotificationWithToken:v16];
      goto LABEL_20;
    }

    if (v6 == 3)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10.n128_f64[0] = [v5 progress] / 100.0;
        (*(v9 + 16))(v9, 3, v10);
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, 4, 1.0);
      }

      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }

      goto LABEL_19;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12.n128_f64[0] = [v5 progress] / 100.0;
      (*(v11 + 16))(v11, 2, v12);
    }
  }

LABEL_20:
}

- (void)removeDownloadStatusHandlersWithToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    [(TRIClient *)self _lazyInit];
    [TRIDownloadNotification deregisterNotificationWithToken:tokenCopy];
  }
}

- (id)levelForFactor:(id)factor withNamespace:(unsigned int)namespace
{
  v4 = *&namespace;
  factorCopy = factor;
  [(TRIClient *)self _lazyInit];
  v7 = [MEMORY[0x277D73B50] namespaceNameFromId:v4];
  v8 = [(TRIClient *)self levelForFactor:factorCopy withNamespaceName:v7];

  return v8;
}

- (id)factorLevelsWithNamespace:(unsigned int)namespace
{
  v3 = *&namespace;
  [(TRIClient *)self _lazyInit];
  v5 = [MEMORY[0x277D73B50] namespaceNameFromId:v3];
  v6 = [(TRIClient *)self factorLevelsWithNamespaceName:v5];

  return v6;
}

- (id)addUpdateHandlerForNamespaceId:(unsigned int)id usingBlock:(id)block
{
  v4 = *&id;
  v6 = MEMORY[0x277D73B50];
  blockCopy = block;
  v8 = [v6 namespaceNameFromId:v4];
  v9 = [(TRIClient *)self addUpdateHandlerForNamespaceName:v8 queue:0 usingBlock:blockCopy];

  return v9;
}

- (id)addUpdateHandlerForNamespaceId:(unsigned int)id queue:(id)queue usingBlock:(id)block
{
  v6 = *&id;
  v8 = MEMORY[0x277D73B50];
  blockCopy = block;
  queueCopy = queue;
  v11 = [v8 namespaceNameFromId:v6];
  v12 = [(TRIClient *)self addUpdateHandlerForNamespaceName:v11 queue:queueCopy usingBlock:blockCopy];

  return v12;
}

- (id)treatmentIdWithNamespace:(unsigned int)namespace
{
  v3 = *&namespace;
  [(TRIClient *)self _lazyInit];
  v5 = [MEMORY[0x277D73B50] namespaceNameFromId:v3];
  v6 = [(TRIClient *)self treatmentIdWithNamespaceName:v5];

  return v6;
}

- (id)experimentIdWithNamespace:(unsigned int)namespace
{
  v3 = *&namespace;
  [(TRIClient *)self _lazyInit];
  v5 = [MEMORY[0x277D73B50] namespaceNameFromId:v3];
  v6 = [(TRIClient *)self experimentIdWithNamespaceName:v5];

  return v6;
}

- (BOOL)immediateDownloadForNamespaceNames:(id)names allowExpensiveNetworking:(BOOL)networking error:(id *)error
{
  networkingCopy = networking;
  v33 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v9 = namesCopy;
  if (namesCopy && [namesCopy count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          LOBYTE(v15) = [(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:v15];
          objc_autoreleasePoolPop(v16);
          if ((v15 & 1) == 0)
          {
            if (error)
            {
              v21 = objc_alloc(MEMORY[0x277CCA9B8]);
              v30 = *MEMORY[0x277CCA450];
              v31 = @"Process is not entitled for immediate download.";
              v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
              *error = [v21 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v22];
            }

            v18 = 0;
            goto LABEL_20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v17 = objc_opt_new();
    v24 = 0;
    v18 = [v17 immediateDownloadForNamespaceNames:v10 allowExpensiveNetworking:networkingCopy error:&v24];
    v19 = v24;
    v10 = v19;
    if (error)
    {
      v20 = v19;
      *error = v10;
    }
  }

  else
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_DEFAULT, "Immediate download is not needed, namespace names are either nil or empty", buf, 2u);
    }

    v18 = 1;
  }

LABEL_20:

  return v18;
}

- (BOOL)_hasAppropriatePermissionsForNamespaceName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B50] namespaceIdFromName:name];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v4];
  v7 = [treatmentsDir stringByAppendingPathComponent:v6];

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (access([v7 fileSystemRepresentation], 4) && *__error() == 1)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
LABEL_12:
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
    }
  }

  else
  {
    if (!access([namespaceDescriptorsDir fileSystemRepresentation], 4) || *__error() != 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = namespaceDescriptorsDir;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (id)activeRolloutInformation:(id *)information
{
  v4 = objc_opt_new();
  v5 = [v4 activeRolloutInformation:information];

  return v5;
}

+ (BOOL)_isFactorRecordFileType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy objectForKey:@"assetReference"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [typeCopy objectForKey:@"path"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [typeCopy objectForKey:@"type"];
      v5 = [@"file" isEqual:v7];
    }
  }

  return v5;
}

+ (id)printedNCVInformation
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:@"NCVs:"];
  v3 = +[TRIStandardPaths sharedPaths];
  namespaceDescriptorsDefaultDir = [v3 namespaceDescriptorsDefaultDir];
  v5 = [TRINamespaceDescriptor descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_346];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        namespaceName = [v11 namespaceName];
        v15 = [v13 initWithFormat:@"    - %@", namespaceName];
        [v2 addObject:v15];

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       downloadNCV: %u", objc_msgSend(v11, "downloadNCV")];
        [v2 addObject:v16];

        upgradeNCVs = [v11 upgradeNCVs];

        if (upgradeNCVs)
        {
          v18 = objc_alloc(MEMORY[0x277CCACA8]);
          upgradeNCVs2 = [v11 upgradeNCVs];
          allObjects = [upgradeNCVs2 allObjects];
          v21 = [allObjects componentsJoinedByString:{@", "}];
          v22 = [v18 initWithFormat:@"       upgradeNCVs: [%@]", v21];
          [v2 addObject:v22];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  return v2;
}

uint64_t __34__TRIClient_printedNCVInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 namespaceName];
  v6 = [v4 namespaceName];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)printedOnDemandReferenceCountsPerUserInformationWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_opt_new();
  v6 = +[TRIStandardPaths sharedPaths];
  v7 = [v6 treatmentsDirUsingGlobal:1];
  v8 = [v5 getOnDemandReferenceCountsPerUserAtGlobalPath:v7 error:error];

  if (*error)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [*error localizedDescription];
      *buf = 138412290;
      v18 = localizedDescription;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Could not get the on-demand references: %@", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"unable to get on-demand reference counts per user", 0}];
    goto LABEL_5;
  }

  if (![v8 count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"no on-demand references", 0}];
LABEL_5:
    v11 = v10;
    goto LABEL_8;
  }

  [v4 addObject:@"on-demand reference per user:"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke;
  v15[3] = &unk_27885F388;
  v12 = v4;
  v16 = v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v11 = v12;

LABEL_8:

  return v11;
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithFormat:@"    - %@", v8];

  [v5 addObject:v9];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_2;
  v10[3] = &unk_27885F388;
  v11 = *(a1 + 32);
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  v8 = a2;
  v9 = [[v7 alloc] initWithFormat:@"       factorPackId: %@", v8];

  [v6 addObject:v9];
  if ([v5 count])
  {
    [*(a1 + 32) addObject:@"       factors:"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_3;
    v10[3] = &unk_27885F360;
    v11 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = [v6 componentsJoinedByString:{@", "}];

  v9 = [v8 initWithFormat:@"       - %@: [%@]", v7, v10];
  [v4 addObject:v9];
}

+ (id)_sysdiagnoseLogProviders
{
  v21[2] = *MEMORY[0x277D85DE8];
  v2 = [[TRIBlockBasedSysdiagnoseInfoProvider alloc] initWithOutputFilename:@"trial-namespace-compatibility-versions.log" block:&__block_literal_global_385];
  v21[0] = v2;
  v3 = objc_opt_new();
  v21[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v5 = [v4 mutableCopy];

  v6 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v7 = +[TRIAllocationStatus _defaultProviderImpl];
  v8 = [(TRIActiveExperimentsSysdiagnoseProvider *)v6 initWithAllocationStatusProvider:v7 outputFilename:@"trial-experiment-info.log" environments:&unk_28436FB70];
  v9 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v10 = +[TRIAllocationStatus _defaultProviderImpl];
  v11 = [(TRIActiveExperimentsSysdiagnoseProvider *)v9 initWithAllocationStatusProvider:v10 outputFilename:@"trial-server-side-experiment-info.log" environments:&unk_28436FB88];
  v20[1] = v11;
  v12 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v13 = +[TRIAllocationStatus _defaultProviderImpl];
  v14 = [(TRIActiveExperimentsSysdiagnoseProvider *)v12 initWithAllocationStatusProvider:v13 outputFilename:@"trial-mixed-experiment-info.log" environments:&unk_28436FBA0];
  v20[2] = v14;
  v15 = +[TRIExperimentHistorySysdiagnoseProvider defaultProvider];
  v20[3] = v15;
  v16 = objc_opt_new();
  v20[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:5];

  [v5 addObjectsFromArray:v17];
  v18 = [v5 copy];

  return v18;
}

+ (BOOL)sysdiagnoseInfoToDir:(id)dir error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  _sysdiagnoseLogProviders = [self _sysdiagnoseLogProviders];
  v8 = [[TRISysdiagnoseLogWriter alloc] initWithDirectory:dirCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = _sysdiagnoseLogProviders;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v21 = 0;
        v16 = [(TRISysdiagnoseLogWriter *)v8 writeSysdiagnoseInfoForProvider:v14 error:&v21];
        v17 = v21;
        objc_autoreleasePoolPop(v15);
        if (!v16)
        {
          if (error)
          {
            if (!v17)
            {
              v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:0];
            }

            v19 = v17;
            *error = v17;
          }

          v18 = 0;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  +[TRIClient logSystemCovariates];
  +[TRIClient printCurrentSettings];
  v18 = 1;
LABEL_15:

  return v18;
}

+ (void)printCurrentSettings
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  v3 = [v2 integerForKey:@"com.apple.triald.population.override"];
  isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (isInternalBuild)
    {
      v6 = @"INTERNAL";
    }

    else
    {
      v6 = @"GENERAL_PUBLIC";
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "Current population is %@ with population override: %@", &v11, 0x16u);
  }

  v8 = +[TRICEnvironmentManager currentEnv];
  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [TRICEnvironmentManager envToString:v8];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "Current CloudKit environment is %@", &v11, 0xCu);
  }
}

+ (void)logSystemCovariates
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v2 = objc_opt_new();
  [v2 logSystemCovariatesWithError:&v4];
  if (v4)
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_DEFAULT, "Could not log covariates -- %@", buf, 0xCu);
    }
  }
}

+ (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  if (+[TRIProcessInfo hostingProcessIsCoreAnalytics])
  {
    v4 = objc_opt_new();
    v5 = [v4 getSandboxExtensionTokensForIdentifierQueryWithError:error];
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = @"Process is not allowlisted to access getSandboxExtensionTokensForIdentifierQueryWithError, please contact Trial team to request access if necessary.";
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Error generating sandbox tokens: %@", buf, 0xCu);
    }

    if (error)
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v10 = *MEMORY[0x277CCA450];
      v11 = @"Process is not allowlisted to access getSandboxExtensionTokensForIdentifierQueryWithError, please contact Trial team to request access if necessary.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      *error = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:16 userInfo:v8];
    }

    v5 = objc_opt_new();
  }

  return v5;
}

- (BOOL)hasCounterfactualsForNamespace:(id)namespace
{
  v3 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider counterfactualFactorsStatesForNamespace:namespace];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)enumerateCounterfactualsWithNamespace:(id)namespace error:(id *)error usingBlock:(id)block
{
  v29 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(TRIDefaultFactorProvider *)self->_defaultFactorProvider counterfactualFactorsStatesForNamespace:namespace];
  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (v25)
      {
        break;
      }

      experimentIdentifiers = [*(*(&v21 + 1) + 8 * v12) experimentIdentifiers];
      treatmentId = [experimentIdentifiers treatmentId];

      if (treatmentId)
      {
        v15 = [TRIExperimentIdentifiers alloc];
        experimentId = [experimentIdentifiers experimentId];
        deploymentId = [experimentIdentifiers deploymentId];
        treatmentId2 = [experimentIdentifiers treatmentId];
        v19 = [(TRIExperimentIdentifiers *)v15 initWithExperimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2];
        blockCopy[2](blockCopy, v19, &v25);
      }

      else
      {
        experimentId = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(experimentId, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v27 = experimentIdentifiers;
          _os_log_error_impl(&dword_22EA6B000, experimentId, OS_LOG_TYPE_ERROR, "Skipping counterfactual due to not having a treatment ID: %@", buf, 0xCu);
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return 1;
}

@end