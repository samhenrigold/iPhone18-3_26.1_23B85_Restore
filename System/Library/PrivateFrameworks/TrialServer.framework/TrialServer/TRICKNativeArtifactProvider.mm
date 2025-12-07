@interface TRICKNativeArtifactProvider
+ (BOOL)isActivityDeferralError:(id)error;
+ (id)cloudkitIdentifierForContainer:(int)container;
+ (id)containerForIdentifier:(id)identifier serverContext:(id)context;
+ (id)fetchRetryDateFromErrorAndOptions:(id)options options:(id)a4;
+ (id)mockSQLiteContainerWithIdentifier:(id)identifier serverContext:(id)context failureInjectionDelegate:(id)delegate;
+ (id)providerForContainer:(int)container teamId:(id)id bundleId:(id)bundleId dateProvider:(id)provider namespaceDescriptorProvider:(id)descriptorProvider serverContext:(id)context;
+ (id)recordZoneForContainerIdentifier:(id)identifier teamId:(id)id;
+ (int)containerFromCkContainer:(id)container;
- (TRICKNativeArtifactProvider)initWithCloudKitContainer:(id)container zoneId:(id)id teamId:(id)teamId bundleId:(id)bundleId dateProvider:(id)provider namespaceDescriptorProvider:(id)descriptorProvider;
- (id)configurationFromOptions:(id)options;
- (id)fetchAssetsWithIndexes:(id)indexes fromTreatmentWithRecordId:(id)id options:(id)options progress:(id)progress completion:(id)completion;
- (id)fetchAssetsWithRecordIds:(id)ids options:(id)options perRecordProgress:(id)progress perRecordCompletionBlockOnSuccess:(id)success perRecordCompletionBlockOnError:(id)error completion:(id)completion;
- (id)fetchDiffSourceRecordIdsWithTargetAssetIds:(id)ids isAcceptableSourceAssetId:(id)id options:(id)options completion:(id)completion;
- (id)fetchDiffsWithRecordIds:(id)ids options:(id)options perRecordProgress:(id)progress perRecordCompletionBlockOnSuccess:(id)success perRecordCompletionBlockOnError:(id)error completion:(id)completion;
- (id)fetchRecordIdsForAssetsWithIds:(id)ids options:(id)options completion:(id)completion;
- (id)fetchTreatmentWithId:(id)id options:(id)options completion:(id)completion;
- (id)queryOperationForRecordType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors desiredKeys:(id)keys options:(id)options recordMatchedBlock:(id)block queryCompletionBlock:(id)completionBlock;
- (id)queryOperationWithCursor:(id)cursor desiredKeys:(id)keys options:(id)options recordMatchedBlock:(id)block queryCompletionBlock:(id)completionBlock;
- (void)_applyBoostIfNeededToOperation:(id)operation fromOptions:(id)options;
- (void)_fetchExperimentWithExperimentId:(id)id deploymentId:(id)deploymentId options:(id)options completion:(id)completion;
- (void)_fetchExperimentsWithCursor:(id)cursor withNamespaceNames:(id)names sinceDate:(id)date fetchRollbacksOnly:(BOOL)only options:(id)options resultsHandler:(id)handler;
- (void)_fetchNotificationsWithQueryType:(unint64_t)type withCursor:(id)cursor withNamespaceNames:(id)names sinceDate:(id)date options:(id)options resultsHandler:(id)handler;
- (void)_fetchRecordIdsForAssetsWithIds:(id)ids options:(id)options cursor:(id)cursor cancelableOp:(id)op resultBuffer:(id)buffer completion:(id)completion;
- (void)_fetchRolloutNotificationWithRolloutId:(id)id deploymentId:(id)deploymentId options:(id)options completion:(id)completion;
- (void)_fetchRolloutNotificationsWithCursor:(id)cursor options:(id)options completion:(id)completion;
- (void)_fetchRolloutNotificationsWithCursor:(id)cursor options:(id)options sinceDate:(id)date namespaceNames:(id)names resultsHandler:(id)handler;
- (void)fetchExperimentNotificationsForLimitedCarryExperimentWithManager:(id)manager options:(id)options rollbacksOnly:(BOOL)only completion:(id)completion;
- (void)fetchExperimentNotificationsWithNamespaceNames:(id)names rollbacksOnly:(BOOL)only lastFetchDateOverride:(id)override options:(id)options completion:(id)completion;
- (void)fetchExperimentWithExperimentDeployment:(id)deployment options:(id)options completion:(id)completion;
- (void)fetchExperimentWithLatestDeploymentForExperimentId:(id)id options:(id)options completion:(id)completion;
- (void)fetchFactorPackSetWithId:(id)id options:(id)options completion:(id)completion;
- (void)fetchRolloutNotificationWithDeployment:(id)deployment options:(id)options completion:(id)completion;
- (void)fetchRolloutNotificationsDateAscendingWithOptions:(id)options lastFetchDateOverride:(id)override namespaceNames:(id)names completion:(id)completion;
@end

@implementation TRICKNativeArtifactProvider

+ (BOOL)isActivityDeferralError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v6 = *MEMORY[0x277CBBF50];
    if (![domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v10 = 0;
LABEL_10:

      goto LABEL_11;
    }

    code = [v4 code];

    if (code == 20)
    {
      userInfo = [v4 userInfo];
      domain = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v5Domain = [domain domain];
      if ([v5Domain isEqualToString:v6])
      {
        v10 = [domain code] == 131;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)fetchRetryDateFromErrorAndOptions:(id)options options:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:options:]"];
    [currentHandler handleFailureInFunction:v21 file:@"TRICKNativeArtifactProvider.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"options"}];

    if (optionsCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    v18 = 0;
    goto LABEL_13;
  }

  if (!optionsCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  userInfo = [optionsCopy userInfo];
  v29 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

  userInfo2 = [optionsCopy userInfo];
  v10 = *MEMORY[0x277CBBFB0];
  v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  if (v11)
  {
    userInfo3 = [optionsCopy userInfo];
    v13 = [userInfo3 objectForKeyedSubscript:v10];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__TRICKNativeArtifactProvider_fetchRetryDateFromErrorAndOptions_options___block_invoke;
    v23[3] = &unk_279DDEFC8;
    v23[4] = &v24;
    [v13 enumerateKeysAndObjectsUsingBlock:v23];
  }

  hasRetryableErrorCode = _hasRetryableErrorCode(optionsCopy);
  discretionaryBehavior = [v7 discretionaryBehavior];
  v16 = +[TRIFetchRetryUtils fetchRetryDateFromRetryAfterSeconds:isDeferral:isRetryable:isNonDiscretionary:](TRIFetchRetryUtils, "fetchRetryDateFromRetryAfterSeconds:isDeferral:isRetryable:isNonDiscretionary:", v25[5], [self isActivityDeferralError:optionsCopy], hasRetryableErrorCode, discretionaryBehavior == 0);
  v17 = v16;
  if ((v16 != 0) | hasRetryableErrorCode & 1)
  {
    v18 = v16;
  }

  else
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = optionsCopy;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "During download from CK, encountered non-retryable error %{public}@", buf, 0xCu);
    }

    v18 = 0;
  }

  _Block_object_dispose(&v24, 8);
LABEL_13:

  return v18;
}

uint64_t __73__TRICKNativeArtifactProvider_fetchRetryDateFromErrorAndOptions_options___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  obj = [v4 objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

  if (obj)
  {
    v5 = *(*(a1 + 32) + 8);
    if (*(v5 + 40))
    {
      if ([obj compare:?] != 1)
      {
        goto LABEL_6;
      }

      v5 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v5 + 40), obj);
  }

LABEL_6:

  return MEMORY[0x2821F96F8]();
}

- (id)configurationFromOptions:(id)options
{
  v24[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = objc_opt_new();
  downloadOptions = [optionsCopy downloadOptions];
  discretionaryBehavior = [downloadOptions discretionaryBehavior];
  if (!discretionaryBehavior)
  {
    goto LABEL_9;
  }

  if (discretionaryBehavior == 2)
  {
    activity = [downloadOptions activity];

    if (activity)
    {
      activity2 = [downloadOptions activity];
      [v5 setXPCActivity:activity2];

      goto LABEL_10;
    }

    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    LOWORD(v22) = 0;
    v11 = "discretionary specified, but xpc activity not present, defaulting to non-discretionary";
    goto LABEL_21;
  }

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    v11 = "un-supported download option - defaulting to non-discretionary";
LABEL_21:
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, v11, &v22, 2u);
  }

LABEL_8:

LABEL_9:
  [v5 setQualityOfService:{17, v22}];
LABEL_10:
  v12 = 1;
  [v5 setPreferAnonymousRequests:1];
  [v5 setAllowsCellularAccess:1];
  [v5 setAllowsExpensiveNetworkAccess:{objc_msgSend(downloadOptions, "allowsExpensiveNetworkAccess")}];
  if ([downloadOptions discretionaryBehavior] == 2)
  {
    activity3 = [downloadOptions activity];
    v12 = activity3 == 0;
  }

  zoneID = [(TRICKNativeArtifactProvider *)self zoneID];

  if (zoneID && v12)
  {
    [v5 setTimeoutIntervalForRequest:300.0];
  }

  zoneID2 = [(TRICKNativeArtifactProvider *)self zoneID];

  if (zoneID2)
  {
    v23 = @"X-Trial-ZoneID";
    zoneID3 = [(TRICKNativeArtifactProvider *)self zoneID];
    zoneName = [zoneID3 zoneName];
    v24[0] = zoneName;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [v5 setAdditionalRequestHTTPHeaders:v18];
  }

  [v5 setApplicationBundleIdentifierOverrideForContainerAccess:@"com.apple.triald"];
  bundleId = [(TRICKNativeArtifactProvider *)self bundleId];
  [v5 setApplicationBundleIdentifierOverrideForNetworkAttribution:bundleId];

  cacheDeleteAvailableSpaceClass = [optionsCopy cacheDeleteAvailableSpaceClass];
  [v5 setCacheDeleteAvailableSpaceClass:cacheDeleteAvailableSpaceClass];

  return v5;
}

- (void)_applyBoostIfNeededToOperation:(id)operation fromOptions:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if ([options boostPriority])
  {
    [operationCopy setQualityOfService:25];
    [operationCopy setQueuePriority:4];
    configuration = [operationCopy configuration];
    [configuration setQualityOfService:25];

    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = operationCopy;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Boosted query operation, now: %@", &v8, 0xCu);
    }
  }
}

- (id)queryOperationForRecordType:(id)type predicate:(id)predicate sortDescriptors:(id)descriptors desiredKeys:(id)keys options:(id)options recordMatchedBlock:(id)block queryCompletionBlock:(id)completionBlock
{
  v40 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  optionsCopy = options;
  completionBlockCopy = completionBlock;
  blockCopy = block;
  keysCopy = keys;
  descriptorsCopy = descriptors;
  typeCopy = type;
  queryLog = [(TRICKNativeArtifactProvider *)self queryLog];
  [queryLog logQueryWithRecordType:typeCopy predicate:predicateCopy sortDescriptors:descriptorsCopy];

  v23 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:typeCopy predicate:predicateCopy];
  [v23 setSortDescriptors:descriptorsCopy];

  v24 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v23];
  zoneID = [(TRICKNativeArtifactProvider *)self zoneID];
  [v24 setZoneID:zoneID];

  [v24 setDesiredKeys:keysCopy];
  [v24 setRecordMatchedBlock:blockCopy];

  [v24 setQueryCompletionBlock:completionBlockCopy];
  [v24 setFetchAllResults:1];
  v26 = [(TRICKNativeArtifactProvider *)self configurationFromOptions:optionsCopy];
  [v24 setConfiguration:v26];
  downloadOptions = [optionsCopy downloadOptions];
  [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v24 fromOptions:downloadOptions];

  v28 = TRILogCategory_Server();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    zoneID2 = [(TRICKNativeArtifactProvider *)self zoneID];
    zoneName = [zoneID2 zoneName];
    v34 = 138412802;
    v35 = predicateCopy;
    v36 = 2114;
    v37 = zoneName;
    v38 = 2114;
    v39 = v24;
    _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "created cloudkit query with predicate {%@} zoneID:%{public}@ operation:%{public}@", &v34, 0x20u);
  }

  downloadOptions2 = [optionsCopy downloadOptions];
  v32 = [TRICKOperationGroupFactory groupForDownloadOptions:downloadOptions2];
  [v24 setGroup:v32];

  return v24;
}

+ (id)providerForContainer:(int)container teamId:(id)id bundleId:(id)bundleId dateProvider:(id)provider namespaceDescriptorProvider:(id)descriptorProvider serverContext:(id)context
{
  v12 = *&container;
  contextCopy = context;
  descriptorProviderCopy = descriptorProvider;
  providerCopy = provider;
  bundleIdCopy = bundleId;
  idCopy = id;
  v18 = [TRICKNativeArtifactProvider cloudkitIdentifierForContainer:v12];
  v19 = [TRICKNativeArtifactProvider containerForIdentifier:v18 serverContext:contextCopy];

  v20 = [TRICKNativeArtifactProvider recordZoneForContainerIdentifier:v18 teamId:idCopy];
  v21 = [[TRICKNativeArtifactProvider alloc] initWithCloudKitContainer:v19 zoneId:v20 teamId:idCopy bundleId:bundleIdCopy dateProvider:providerCopy namespaceDescriptorProvider:descriptorProviderCopy];

  return v21;
}

- (TRICKNativeArtifactProvider)initWithCloudKitContainer:(id)container zoneId:(id)id teamId:(id)teamId bundleId:(id)bundleId dateProvider:(id)provider namespaceDescriptorProvider:(id)descriptorProvider
{
  containerCopy = container;
  idCopy = id;
  teamIdCopy = teamId;
  bundleIdCopy = bundleId;
  providerCopy = provider;
  obj = descriptorProvider;
  descriptorProviderCopy = descriptorProvider;
  v30 = containerCopy;
  if (containerCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:471 description:{@"Invalid parameter not satisfying: %@", @"container"}];

    if (idCopy)
    {
LABEL_3:
      if (bundleIdCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"zoneId"}];

  if (bundleIdCopy)
  {
LABEL_4:
    if (providerCopy)
    {
      goto LABEL_5;
    }

LABEL_14:
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:474 description:{@"Invalid parameter not satisfying: %@", @"dateProvider"}];

    if (descriptorProviderCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_13:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

  if (!providerCopy)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (descriptorProviderCopy)
  {
    goto LABEL_6;
  }

LABEL_15:
  currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:475 description:{@"Invalid parameter not satisfying: %@", @"namespaceDescriptorProvider"}];

LABEL_6:
  v32.receiver = self;
  v32.super_class = TRICKNativeArtifactProvider;
  v19 = [(TRICKNativeArtifactProvider *)&v32 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_container, container);
    objc_storeStrong(&v20->_zoneID, id);
    objc_storeStrong(&v20->_teamId, teamId);
    objc_storeStrong(&v20->_bundleId, bundleId);
    objc_storeStrong(&v20->_dateProvider, provider);
    objc_storeStrong(&v20->_namespaceDescriptorProvider, obj);
    if (qword_281597640 != -1)
    {
      dispatch_once(&qword_281597640, &__block_literal_global_117);
    }

    objc_storeStrong(&v20->_queryLog, _MergedGlobals_28);
  }

  return v20;
}

void __121__TRICKNativeArtifactProvider_initWithCloudKitContainer_zoneId_teamId_bundleId_dateProvider_namespaceDescriptorProvider___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [TRICKQueryLog alloc];
  v2 = [MEMORY[0x277D737E0] sharedPaths];
  v3 = [(TRICKQueryLog *)v1 initWithPaths:v2];
  v4 = _MergedGlobals_28;
  _MergedGlobals_28 = v3;

  objc_autoreleasePoolPop(v0);
}

- (id)queryOperationWithCursor:(id)cursor desiredKeys:(id)keys options:(id)options recordMatchedBlock:(id)block queryCompletionBlock:(id)completionBlock
{
  v29 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  v13 = MEMORY[0x277CBC590];
  completionBlockCopy = completionBlock;
  blockCopy = block;
  optionsCopy = options;
  keysCopy = keys;
  v18 = [[v13 alloc] initWithCursor:cursorCopy];
  [v18 setDesiredKeys:keysCopy];

  [v18 setRecordMatchedBlock:blockCopy];
  [v18 setQueryCompletionBlock:completionBlockCopy];

  [v18 setFetchAllResults:1];
  v19 = [(TRICKNativeArtifactProvider *)self configurationFromOptions:optionsCopy];
  [v18 setConfiguration:v19];
  downloadOptions = [optionsCopy downloadOptions];
  [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v18 fromOptions:downloadOptions];

  downloadOptions2 = [optionsCopy downloadOptions];

  v22 = [TRICKOperationGroupFactory groupForDownloadOptions:downloadOptions2];
  [v18 setGroup:v22];

  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412546;
    v26 = cursorCopy;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "created cloudkit query with cursor: {%@} operation: %{public}@", &v25, 0x16u);
  }

  return v18;
}

+ (id)containerForIdentifier:(id)identifier serverContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v8 = +[TRISystemConfiguration sharedInstance];
  isInternalBuild = [v8 isInternalBuild];

  if (!isInternalBuild)
  {
    v13 = 1;
LABEL_18:
    failureInjectionDelegate2 = [MEMORY[0x277CBC218] containerIDForContainerIdentifier:identifierCopy environment:v13];
    v12 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:failureInjectionDelegate2];
    goto LABEL_19;
  }

  failureInjectionDelegate = [contextCopy failureInjectionDelegate];

  if (failureInjectionDelegate)
  {
    failureInjectionDelegate2 = [contextCopy failureInjectionDelegate];
    v12 = [self mockSQLiteContainerWithIdentifier:identifierCopy serverContext:contextCopy failureInjectionDelegate:failureInjectionDelegate2];
LABEL_19:
    v18 = v12;
    goto LABEL_20;
  }

  if ([MEMORY[0x277D737A8] hostingProcessIsTriald])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    standardUserDefaults = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  }

  failureInjectionDelegate2 = standardUserDefaults;
  v15 = [standardUserDefaults valueForKey:*MEMORY[0x277D739E8]];
  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v15;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "CloudKit container environment found: %@", &v20, 0xCu);
  }

  if (!v15)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  unsignedIntegerValue = [v15 unsignedIntegerValue];
  if (unsignedIntegerValue == 2)
  {
LABEL_15:
    v13 = 2;
LABEL_17:

    goto LABEL_18;
  }

  if (unsignedIntegerValue != 5)
  {
    if (unsignedIntegerValue == 4)
    {
      goto LABEL_15;
    }

LABEL_16:
    v13 = 1;
    goto LABEL_17;
  }

  v18 = [self mockSQLiteContainerWithIdentifier:identifierCopy serverContext:contextCopy failureInjectionDelegate:0];

LABEL_20:

  return v18;
}

+ (id)mockSQLiteContainerWithIdentifier:(id)identifier serverContext:(id)context failureInjectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  ensureFakeCKDatabase = [context ensureFakeCKDatabase];
  [ensureFakeCKDatabase setDelegate:delegateCopy];

  v10 = [TRISQLiteCKDatabase mockContainerWithIdentifier:identifierCopy database:ensureFakeCKDatabase];

  return v10;
}

+ (id)recordZoneForContainerIdentifier:(id)identifier teamId:(id)id
{
  identifierCopy = identifier;
  idCopy = id;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D73818]])
  {
    if (!idCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:559 description:{@"team id required for container %@", identifierCopy}];
    }

    v9 = objc_alloc(MEMORY[0x277CBC5F8]);
    v10 = [@"Zone-" stringByAppendingString:idCopy];
    v11 = [v9 initWithZoneName:v10 ownerName:*MEMORY[0x277CBBF28]];
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x277D73820]])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v13 = [standardUserDefaults objectForKey:@"com.apple.triald.testing.ck.zone"];
    v14 = objc_alloc(MEMORY[0x277CBC5F8]);
    if (v13)
    {
      v15 = *MEMORY[0x277CBBF28];
      v16 = v13;
    }

    else
    {
      v16 = *MEMORY[0x277CBC060];
      v15 = *MEMORY[0x277CBBF28];
    }

    v11 = [v14 initWithZoneName:v16 ownerName:v15];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CBC5F8]);
    v11 = [v17 initWithZoneName:*MEMORY[0x277CBC060] ownerName:*MEMORY[0x277CBBF28]];
  }

  return v11;
}

- (void)_fetchExperimentWithExperimentId:(id)id deploymentId:(id)deploymentId options:(id)options completion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  idCopy = id;
  deploymentIdCopy = deploymentId;
  optionsCopy = options;
  completionCopy = completion;
  container = [(TRICKNativeArtifactProvider *)self container];
  v15 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  if (v15)
  {
    v49 = v15;
    v53 = optionsCopy;
    idCopy = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D738E0], idCopy];
    v16 = [MEMORY[0x277CCAC30] triLoggablePredicateWithValue:1];
    v17 = v16;
    v52 = completionCopy;
    v55 = deploymentIdCopy;
    if (deploymentIdCopy)
    {
      deploymentIdCopy = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D738B8], deploymentIdCopy];
    }

    else
    {
      deploymentIdCopy = v16;
    }

    v20 = +[TRISystemConfiguration sharedInstance];
    populationType = [v20 populationType];

    v22 = MEMORY[0x277CCAC30];
    v23 = *MEMORY[0x277D738C8];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:populationType];
    v69 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    v48 = [v22 triLoggablePredicateWithFormat:@"ANY %K IN %@", v23, v25];

    v26 = *MEMORY[0x277D738F8];
    v47 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K != %@", *MEMORY[0x277D738F8], &unk_287FC4450];
    v46 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K != %@", v26, &unk_287FC4468];
    v27 = MEMORY[0x277CCA920];
    v68[0] = idCopy;
    v68[1] = deploymentIdCopy;
    v51 = deploymentIdCopy;
    v68[2] = v47;
    v68[3] = v46;
    v68[4] = v48;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];
    v29 = [v27 andPredicateWithSubpredicates:v28];

    v30 = objc_opt_new();
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke;
    v64[3] = &unk_279DDEFF0;
    v45 = idCopy;
    v31 = idCopy;
    v65 = v31;
    v32 = v55;
    v66 = v32;
    v33 = v30;
    v67 = v33;
    v34 = MEMORY[0x2743948D0](v64);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke_152;
    v56[3] = &unk_279DDF040;
    v35 = v31;
    v57 = v35;
    v58 = v32;
    v36 = v53;
    v59 = v36;
    completionCopy = v52;
    selfCopy = self;
    v62 = v52;
    v63 = v49;
    v60 = v33;
    v50 = v33;
    v37 = MEMORY[0x2743948D0](v56);
    v38 = *MEMORY[0x277D738A0];
    v39 = +[TRIClientExperimentArtifact allReferencedCKRecordKeys];
    v40 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:v38 predicate:v29 desiredKeys:v39 options:v36 recordMatchedBlock:v34 queryCompletionBlock:v37];

    v41 = v35;
    idCopy = v45;
    v42 = [TRICKOperationGroupFactory groupForExperimentId:v41];
    [v40 setGroup:v42];

    container2 = [(TRICKNativeArtifactProvider *)self container];
    publicCloudDatabase = [container2 publicCloudDatabase];
    [publicCloudDatabase addOperation:v40];

    optionsCopy = v53;
    deploymentIdCopy = v55;
  }

  else
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v71 = idCopy;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "failed to fetch experiment %@ (unknown container)", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }
}

void __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [v4 recordID];
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "received experiment notification for deployment %@.%@ ckRecordID %@", &v9, 0x20u);
    }

    [*(a1 + 48) addObject:v4];
  }
}

void __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke_152(uint64_t a1, void *a2, void *a3)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *buf = 138412802;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v21 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "finished fetchExperiment query for deployment %@.%@ error %@", buf, 0x20u);
  }

  if (v6)
  {
    v10 = [*(a1 + 48) downloadOptions];
    v11 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v10];

    (*(*(a1 + 72) + 16))(*(a1 + 72), 2 * (v11 != 0), 0, v11, v6);
  }

  else
  {
    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"deploymentDate" ascending:0];
    v24[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v12 sortUsingDescriptors:v14];

    v11 = [*(a1 + 56) firstObject];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = __Block_byref_object_copy__0;
    v22 = __Block_byref_object_dispose__0;
    v23 = 0;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 4;
    if (v11)
    {
      v15 = *(a1 + 80);
      v16 = [*(a1 + 64) teamId];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke_155;
      v18[3] = &unk_279DDF018;
      v18[4] = buf;
      v18[5] = v19;
      v17 = [TRIClientExperimentArtifact artifactFromCKRecordResult:v11 withContainer:v15 teamId:v16 requireDeploymentId:0 completion:v18];
    }

    else
    {
      v17 = 0;
    }

    (*(*(a1 + 72) + 16))();
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(buf, 8);
  }
}

void __96__TRICKNativeArtifactProvider__fetchExperimentWithExperimentId_deploymentId_options_completion___block_invoke_155(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)fetchExperimentWithExperimentDeployment:(id)deployment options:(id)options completion:(id)completion
{
  deploymentCopy = deployment;
  optionsCopy = options;
  completionCopy = completion;
  v11 = deploymentCopy;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];

    v11 = 0;
  }

  if (([v11 hasDeploymentId] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:652 description:{@"Invalid parameter not satisfying: %@", @"deployment.hasDeploymentId"}];
  }

  experimentId = [deploymentCopy experimentId];
  v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(deploymentCopy, "deploymentId")}];
  [(TRICKNativeArtifactProvider *)self _fetchExperimentWithExperimentId:experimentId deploymentId:v13 options:optionsCopy completion:completionCopy];
}

- (void)fetchExperimentWithLatestDeploymentForExperimentId:(id)id options:(id)options completion:(id)completion
{
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  v11 = idCopy;
  v12 = completionCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:663 description:{@"Invalid parameter not satisfying: %@", @"experimentId"}];

    v11 = 0;
  }

  [(TRICKNativeArtifactProvider *)self _fetchExperimentWithExperimentId:v11 deploymentId:0 options:optionsCopy completion:v12];
}

- (void)_fetchExperimentsWithCursor:(id)cursor withNamespaceNames:(id)names sinceDate:(id)date fetchRollbacksOnly:(BOOL)only options:(id)options resultsHandler:(id)handler
{
  onlyCopy = only;
  namesCopy = names;
  dateCopy = date;
  optionsCopy = options;
  handlerCopy = handler;
  v17 = objc_opt_new();
  if (onlyCopy)
  {
    [(TRICKNativeArtifactProvider *)self _fetchNotificationsWithQueryType:1 withCursor:0 withNamespaceNames:namesCopy sinceDate:dateCopy options:optionsCopy resultsHandler:handlerCopy];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __130__TRICKNativeArtifactProvider__fetchExperimentsWithCursor_withNamespaceNames_sinceDate_fetchRollbacksOnly_options_resultsHandler___block_invoke;
    v18[3] = &unk_279DDF090;
    v24 = handlerCopy;
    v19 = v17;
    selfCopy = self;
    v21 = namesCopy;
    v22 = dateCopy;
    v23 = optionsCopy;
    [(TRICKNativeArtifactProvider *)self _fetchNotificationsWithQueryType:0 withCursor:0 withNamespaceNames:v21 sinceDate:v22 options:v23 resultsHandler:v18];
  }
}

void __130__TRICKNativeArtifactProvider__fetchExperimentsWithCursor_withNamespaceNames_sinceDate_fetchRollbacksOnly_options_resultsHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_14;
      }

      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unexpected code path for fetchExperimentsWithCursor. The operation is not cancellable.", buf, 2u);
      }

      v17 = *(*(a1 + 72) + 16);
LABEL_12:
      v17();
      goto LABEL_14;
    }

LABEL_11:
    v17 = *(*(a1 + 72) + 16);
    goto LABEL_12;
  }

  switch(a2)
  {
    case 2:
      goto LABEL_11;
    case 3:
      [*(a1 + 32) addObjectsFromArray:v9];
      break;
    case 4:
      [*(a1 + 32) addObjectsFromArray:v9];
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 64);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __130__TRICKNativeArtifactProvider__fetchExperimentsWithCursor_withNamespaceNames_sinceDate_fetchRollbacksOnly_options_resultsHandler___block_invoke_167;
      v18[3] = &unk_279DDF068;
      v21 = *(a1 + 72);
      v19 = v11;
      v20 = *(a1 + 32);
      [v12 _fetchNotificationsWithQueryType:1 withCursor:0 withNamespaceNames:v13 sinceDate:v14 options:v15 resultsHandler:v18];

      break;
  }

LABEL_14:
}

void __130__TRICKNativeArtifactProvider__fetchExperimentsWithCursor_withNamespaceNames_sinceDate_fetchRollbacksOnly_options_resultsHandler___block_invoke_167(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v17 = 0;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unexpected code path for _fetchNotificationsWithQueryType. The operation is not cancellable.", v17, 2u);
        }

        v15 = *(*(a1 + 48) + 16);
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_11:
    v15 = *(*(a1 + 48) + 16);
    goto LABEL_12;
  }

  switch(a2)
  {
    case 2:
      goto LABEL_11;
    case 3:
      [*(a1 + 40) addObjectsFromArray:v9];
      break;
    case 4:
      [*(a1 + 40) addObjectsFromArray:v9];
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D738A8] ascending:1];
      v18[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      [v12 sortUsingDescriptors:v14];

      v15 = *(*(a1 + 48) + 16);
LABEL_12:
      v15();
      break;
  }

LABEL_13:
}

- (void)_fetchNotificationsWithQueryType:(unint64_t)type withCursor:(id)cursor withNamespaceNames:(id)names sinceDate:(id)date options:(id)options resultsHandler:(id)handler
{
  v78 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  namesCopy = names;
  dateCopy = date;
  optionsCopy = options;
  handlerCopy = handler;
  v19 = *MEMORY[0x277D738A8];
  v20 = objc_opt_new();
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke;
  v73[3] = &unk_279DDF0B8;
  v21 = v20;
  v74 = v21;
  v22 = MEMORY[0x2743948D0](v73);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke_169;
  v64[3] = &unk_279DDF128;
  v23 = v21;
  v24 = v19;
  v61 = v23;
  v65 = v23;
  v25 = optionsCopy;
  v66 = v25;
  v26 = handlerCopy;
  v27 = cursorCopy;
  v60 = v26;
  v71 = v26;
  typeCopy = type;
  selfCopy = self;
  v68 = v24;
  v28 = dateCopy;
  v69 = v28;
  v62 = namesCopy;
  v70 = v62;
  v29 = MEMORY[0x2743948D0](v64);
  v30 = +[TRIClientExperimentArtifact allReferencedCKRecordKeys];
  if (v27)
  {
    v63 = v28;
    v31 = [(TRICKNativeArtifactProvider *)self queryOperationWithCursor:v27 desiredKeys:v30 options:v25 recordMatchedBlock:v22 queryCompletionBlock:v29];
    goto LABEL_17;
  }

  typeCopy2 = type;
  v59 = v24;
  if (v28)
  {
    v32 = objc_opt_new();
LABEL_6:
    v38 = TRILogCategory_Server();
    v63 = v28;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = formatLoggingDate(v28);
      *buf = 138543362;
      v77 = v39;
      _os_log_impl(&dword_26F567000, v38, OS_LOG_TYPE_DEFAULT, "CKNative checking for new experiments since %{public}@", buf, 0xCu);

      v28 = v63;
    }

    v40 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K > %@", v24, v28];
    [v32 addObject:v40];

    goto LABEL_9;
  }

  container = [(TRICKNativeArtifactProvider *)self container];
  v34 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  dateProvider = self->_dateProvider;
  teamId = [(TRICKNativeArtifactProvider *)self teamId];
  v37 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:0 container:v34 teamId:teamId];

  v28 = v37;
  v32 = objc_opt_new();
  if (v28)
  {
    goto LABEL_6;
  }

  v63 = 0;
LABEL_9:
  v41 = +[TRISystemConfiguration sharedInstance];
  populationType = [v41 populationType];

  v43 = MEMORY[0x277CCAC30];
  v44 = *MEMORY[0x277D738C8];
  v45 = [MEMORY[0x277CCABB0] numberWithInt:populationType];
  v75 = v45;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v47 = [v43 triLoggablePredicateWithFormat:@"ANY %K IN %@", v44, v46];
  [v32 addObject:v47];

  if (typeCopy2)
  {
    allObjects = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D738F8], &unk_287FC4450];
    [v32 addObject:allObjects];
  }

  else
  {
    allObjects = [v62 allObjects];
    if ([allObjects count])
    {
      v49 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"ANY %K IN %@", *MEMORY[0x277D73918], allObjects];
      [v32 addObject:v49];
    }

    v50 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K IN %@", *MEMORY[0x277D738F8], &unk_287FC4E40];
    [v32 addObject:v50];
  }

  v24 = v59;

  container2 = [(TRICKNativeArtifactProvider *)self container];
  containerIdentifier = [container2 containerIdentifier];
  v53 = [containerIdentifier isEqualToString:*MEMORY[0x277D73818]];

  if ((v53 & 1) == 0)
  {
    v54 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K IN %@", *MEMORY[0x277D738B0], &unk_287FC4E58];
    [v32 addObject:v54];
  }

  v55 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v32];
  v31 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D738A0] predicate:v55 desiredKeys:v30 options:v25 recordMatchedBlock:v22 queryCompletionBlock:v29];

  v27 = 0;
LABEL_17:
  container3 = [(TRICKNativeArtifactProvider *)self container];
  publicCloudDatabase = [container3 publicCloudDatabase];
  [publicCloudDatabase addOperation:v31];
}

void __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 recordID];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "received experiment notification for ckRecordID %{public}@", &v7, 0xCu);
    }

    [*(a1 + 32) addObject:v4];
  }
}

void __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    *buf = 134218498;
    v61 = v8;
    v62 = 2112;
    v63 = v5;
    v64 = 2114;
    v65 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "finished fetchExperiment query with %tu results cursor %@ error %{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v9 = [*(a1 + 40) downloadOptions];
    v10 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v9];

    (*(*(a1 + 80) + 16))();
    goto LABEL_48;
  }

  v48 = 0;
  v50 = v5;
  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) count];
    *buf = 134217984;
    v61 = v12;
    _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "received %lu experiment records from CloudKit", buf, 0xCu);
  }

  v13 = [*(a1 + 48) container];
  v14 = [TRICKNativeArtifactProvider containerFromCkContainer:v13];

  v52 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v15 = *(a1 + 32);
  v16 = [v15 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v56;
    do
    {
      v19 = 0;
      do
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v55 + 1) + 8 * v19);
        v21 = [*(a1 + 48) teamId];
        v22 = [TRIClientExperimentArtifact artifactFromCKRecordResult:v20 withContainer:v14 teamId:v21 requireDeploymentId:*(a1 + 88) == 0 completion:&__block_literal_global_172];

        v23 = [v20 objectForKeyedSubscript:*(a1 + 56)];
        v24 = v23;
        if (v23)
        {
          if (*(a1 + 64) && [v23 compare:?] == -1)
          {
            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = [v22 experimentId];
              v33 = *(a1 + 64);
              *buf = 138412802;
              v61 = v27;
              v62 = 2112;
              v63 = v24;
              v64 = 2112;
              v65 = v33;
              v28 = v26;
              v29 = "received CloudKit record with too old deployment date for experiment %@: %@ < %@";
              v30 = 32;
              goto LABEL_27;
            }
          }

          else
          {
            if (v22)
            {
              v25 = [v22 experimentId];

              if (v25)
              {
                [v52 addObject:v22];
                goto LABEL_24;
              }
            }

            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v51 = [v20 recordID];
              v31 = [v22 experimentId];
              *buf = 138412546;
              v61 = v51;
              v62 = 2112;
              v63 = v31;
              v32 = v31;
              _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "unable to construct artifact from CKRecord %@ for experiment %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v26 = TRILogCategory_Server();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v27 = [v22 experimentId];
            *buf = 138412290;
            v61 = v27;
            v28 = v26;
            v29 = "received CloudKit record without deployment date for experiment %@";
            v30 = 12;
LABEL_27:
            _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, v29, buf, v30);
          }
        }

LABEL_24:
        ++v19;
      }

      while (v17 != v19);
      v34 = [v15 countByEnumeratingWithState:&v55 objects:v59 count:16];
      v17 = v34;
    }

    while (v34);
  }

  v35 = *(a1 + 80);
  v5 = v50;
  if (v50)
  {
    v36 = 3;
  }

  else
  {
    v36 = 4;
  }

  v10 = v52;
  v37 = [v52 copy];
  (*(v35 + 16))(v35, v36, v37, 0, 0);

  v38 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:604800.0];
  v39 = *(a1 + 32);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke_174;
  v53[3] = &unk_279DDF100;
  v53[4] = *(a1 + 56);
  v40 = v38;
  v54 = v40;
  v41 = [v39 indexOfObjectPassingTest:v53];
  if (v41 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = *(a1 + 64);
  }

  else
  {
    v43 = [*(a1 + 32) objectAtIndexedSubscript:v41];
    v42 = [v43 objectForKeyedSubscript:*(a1 + 56)];
  }

  v6 = v49;

  if (!*(a1 + 88))
  {
    v44 = *(a1 + 64) && [v42 compare:?] != 1;
    v45 = v14 == 2 && *(a1 + 72) != 0;
    if (v42 != 0 && !v44 && !v45)
    {
      v46 = [*(a1 + 48) dateProvider];
      v47 = [*(a1 + 48) teamId];
      [v46 setLastFetchDate:v42 type:0 container:v14 teamId:v47];
    }
  }

  if (v50)
  {
    [*(a1 + 48) _fetchNotificationsWithQueryType:*(a1 + 88) withCursor:v50 withNamespaceNames:*(a1 + 72) sinceDate:v42 options:*(a1 + 40) resultsHandler:*(a1 + 80)];
  }

LABEL_48:
}

BOOL __127__TRICKNativeArtifactProvider__fetchNotificationsWithQueryType_withCursor_withNamespaceNames_sinceDate_options_resultsHandler___block_invoke_174(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 compare:*(a1 + 40)] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)fetchExperimentNotificationsForLimitedCarryExperimentWithManager:(id)manager options:(id)options rollbacksOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  v91[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  optionsCopy = options;
  completionCopy = completion;
  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "fetching limited carry experiments", buf, 2u);
  }

  v9 = +[TRISystemConfiguration sharedInstance];
  populationType = [v9 populationType];

  if (populationType != 3)
  {
    v44 = TRILogCategory_Server();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v44, OS_LOG_TYPE_ERROR, "Unable to fetch limited carry experiments, user must be member of INTERNAL population", buf, 2u);
    }

    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch limited carry experiments, user must be member of INTERNAL population"];
    v45 = objc_alloc(MEMORY[0x277CCA9B8]);
    v90 = *MEMORY[0x277CCA450];
    v91[0] = v52;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:&v90 count:1];
    v49 = [v45 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v46];

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v49);
    goto LABEL_32;
  }

  container = [(TRICKNativeArtifactProvider *)self container];
  v12 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  v52 = *MEMORY[0x277D738A8];
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __129__TRICKNativeArtifactProvider_fetchExperimentNotificationsForLimitedCarryExperimentWithManager_options_rollbacksOnly_completion___block_invoke;
  v86[3] = &unk_279DDF0B8;
  v15 = v14;
  v87 = v15;
  v63 = MEMORY[0x2743948D0](v86);
  *buf = 0;
  v83 = buf;
  v84 = 0x2020000000;
  v85 = 0;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __129__TRICKNativeArtifactProvider_fetchExperimentNotificationsForLimitedCarryExperimentWithManager_options_rollbacksOnly_completion___block_invoke_197;
  v73[3] = &unk_279DDF150;
  v47 = v15;
  v74 = v47;
  v59 = optionsCopy;
  v75 = v59;
  v16 = completionCopy;
  v79 = v16;
  v81 = v12;
  selfCopy = self;
  v77 = v52;
  v49 = v13;
  v78 = v49;
  v80 = buf;
  v62 = MEMORY[0x2743948D0](v73);
  lcExperiments = [managerCopy lcExperiments];
  if (![lcExperiments count])
  {
    (*(v16 + 2))(v16, 4, MEMORY[0x277CBEBF8], 0, 0);
    v43 = lcExperiments;
    goto LABEL_31;
  }

  v57 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v17 = lcExperiments;
  v18 = [v17 countByEnumeratingWithState:&v69 objects:v89 count:16];
  if (!v18)
  {
    goto LABEL_19;
  }

  v61 = *v70;
  v60 = *MEMORY[0x277D738C8];
  v56 = *MEMORY[0x277D738E0];
  v54 = *MEMORY[0x277D738B8];
  v55 = *MEMORY[0x277D738F8];
  do
  {
    v19 = 0;
    do
    {
      if (*v70 != v61)
      {
        objc_enumerationMutation(v17);
      }

      v20 = *(*(&v69 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      v22 = [v17 objectForKeyedSubscript:v20];
      v23 = objc_opt_new();
      v24 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"ANY %K IN %@", v60, &unk_287FC4E70, v47];
      [v23 addObject:v24];

      v25 = [v22 objectForKeyedSubscript:@"ExperimentID"];
      v26 = [v22 objectForKeyedSubscript:@"DeploymentID"];
      v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "integerValue")}];
      if (v25)
      {
        v28 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", v56, v25];
        [v23 addObject:v28];

        if (onlyCopy)
        {
          v29 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", v55, &unk_287FC4450];
          [v23 addObject:v29];
          goto LABEL_15;
        }

        if (v27)
        {
          v29 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", v54, v27];
          [v23 addObject:v29];
LABEL_15:
        }

        v30 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v23];
        [v57 addObject:v30];
      }

      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while (v18 != v19);
    v18 = [v17 countByEnumeratingWithState:&v69 objects:v89 count:16];
  }

  while (v18);
LABEL_19:

  v31 = [v57 count];
  *(v83 + 3) += v31;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v32 = v57;
  v33 = [v32 countByEnumeratingWithState:&v65 objects:v88 count:16];
  if (v33)
  {
    v34 = *v66;
    v35 = *MEMORY[0x277D738A0];
    do
    {
      v36 = 0;
      do
      {
        if (*v66 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v65 + 1) + 8 * v36);
        v38 = objc_autoreleasePoolPush();
        v39 = +[TRIClientExperimentArtifact allReferencedCKRecordKeys];
        v40 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:v35 predicate:v37 desiredKeys:v39 options:v59 recordMatchedBlock:v63 queryCompletionBlock:v62];

        container2 = [(TRICKNativeArtifactProvider *)self container];
        publicCloudDatabase = [container2 publicCloudDatabase];
        [publicCloudDatabase addOperation:v40];

        objc_autoreleasePoolPop(v38);
        ++v36;
      }

      while (v33 != v36);
      v33 = [v32 countByEnumeratingWithState:&v65 objects:v88 count:16];
    }

    while (v33);
  }

  v43 = lcExperiments;
LABEL_31:

  _Block_object_dispose(buf, 8);
LABEL_32:
}

void __129__TRICKNativeArtifactProvider_fetchExperimentNotificationsForLimitedCarryExperimentWithManager_options_rollbacksOnly_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 recordID];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "received experiment notification for limited carry ckRecordID %{public}@", &v7, 0xCu);
    }

    [*(a1 + 32) addObject:v4];
  }
}

void __129__TRICKNativeArtifactProvider_fetchExperimentNotificationsForLimitedCarryExperimentWithManager_options_rollbacksOnly_completion___block_invoke_197(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    *buf = 134218498;
    v50 = v8;
    v51 = 2112;
    v52 = v5;
    v53 = 2114;
    v54 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "finished fetchExperiment query with %tu results cursor %@ error %{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v9 = [*(a1 + 40) downloadOptions];
    v10 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v9];

    v11 = *(*(a1 + 72) + 16);
    goto LABEL_5;
  }

  v40 = v5;
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"deploymentDate" ascending:0];
  v48 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
  [v12 sortUsingDescriptors:v14];

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 32) count];
    *buf = 134217984;
    v50 = v16;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "received %lu experiment records from CloudKit", buf, 0xCu);
  }

  v41 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v17 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    v20 = 0x279DDD000uLL;
    do
    {
      v21 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v43 + 1) + 8 * v21);
        v23 = objc_autoreleasePoolPush();
        v24 = *(v20 + 3104);
        v25 = *(a1 + 88);
        v26 = [*(a1 + 48) teamId];
        v27 = [v24 artifactFromCKRecordResult:v22 withContainer:v25 teamId:v26 requireDeploymentId:1 completion:&__block_literal_global_201];

        v28 = [v22 objectForKeyedSubscript:*(a1 + 56)];
        if (!v28)
        {
          v31 = TRILogCategory_Server();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v34 = [v27 experimentId];
          *buf = 138412290;
          v50 = v34;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "received CloudKit record without deployment date for experiment %@", buf, 0xCu);
          goto LABEL_26;
        }

        if (!v27 || ([v27 experimentId], v29 = objc_claimAutoreleasedReturnValue(), v29, !v29))
        {
          v31 = TRILogCategory_Server();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          v34 = [v22 recordID];
          v35 = [v27 experimentId];
          *buf = 138412546;
          v50 = v34;
          v51 = 2112;
          v52 = v35;
          _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "unable to construct artifact from CKRecord %@ for experiment %@", buf, 0x16u);

          v20 = 0x279DDD000;
LABEL_26:

          goto LABEL_23;
        }

        v30 = [v27 experimentId];
        v31 = [v41 objectForKeyedSubscript:v30];

        v20 = 0x279DDD000;
        if (!v31)
        {
          v32 = [v27 experimentId];
          [v41 setObject:v27 forKeyedSubscript:v32];

          v33 = TRILogCategory_Server();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v36 = [v27 experimentId];
            *buf = 138412290;
            v50 = v36;
            _os_log_debug_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEBUG, "generated artifact for experiment %@", buf, 0xCu);
          }

          v31 = 0;
          v20 = 0x279DDD000;
        }

LABEL_23:

        objc_autoreleasePoolPop(v23);
        ++v21;
      }

      while (v18 != v21);
      v37 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v18 = v37;
    }

    while (v37);
  }

  v38 = *(a1 + 64);
  v10 = v41;
  v39 = [v41 allValues];
  [v38 addObjectsFromArray:v39];

  --*(*(*(a1 + 80) + 8) + 24);
  v5 = v40;
  if (v40)
  {
    v6 = 0;
    goto LABEL_31;
  }

  v6 = 0;
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    goto LABEL_31;
  }

  v11 = *(*(a1 + 72) + 16);
LABEL_5:
  v11();
LABEL_31:
}

- (void)fetchExperimentNotificationsWithNamespaceNames:(id)names rollbacksOnly:(BOOL)only lastFetchDateOverride:(id)override options:(id)options completion:(id)completion
{
  onlyCopy = only;
  namesCopy = names;
  overrideCopy = override;
  optionsCopy = options;
  completionCopy = completion;
  container = [(TRICKNativeArtifactProvider *)self container];
  v16 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  if (overrideCopy)
  {
    [(TRICKNativeArtifactProvider *)self _fetchExperimentsWithCursor:0 withNamespaceNames:namesCopy sinceDate:overrideCopy fetchRollbacksOnly:onlyCopy options:optionsCopy resultsHandler:completionCopy];
  }

  else
  {
    dateProvider = self->_dateProvider;
    teamId = [(TRICKNativeArtifactProvider *)self teamId];
    v19 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:0 container:v16 teamId:teamId];
    [(TRICKNativeArtifactProvider *)self _fetchExperimentsWithCursor:0 withNamespaceNames:namesCopy sinceDate:v19 fetchRollbacksOnly:onlyCopy options:optionsCopy resultsHandler:completionCopy];
  }
}

+ (id)cloudkitIdentifierForContainer:(int)container
{
  if (container == 2)
  {
    v6 = MEMORY[0x277D73818];
LABEL_7:
    v7 = *v6;
    goto LABEL_9;
  }

  if (container == 1)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults valueForKey:*MEMORY[0x277D739E8]];
    unsignedIntegerValue = [v4 unsignedIntegerValue];

    v6 = MEMORY[0x277D73828];
    if (unsignedIntegerValue == 4)
    {
      v6 = MEMORY[0x277D73820];
    }

    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

+ (int)containerFromCkContainer:(id)container
{
  containerCopy = container;
  containerIdentifier = [containerCopy containerIdentifier];
  v5 = [containerIdentifier isEqualToString:*MEMORY[0x277D73828]];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    containerIdentifier2 = [containerCopy containerIdentifier];
    v8 = [containerIdentifier2 isEqualToString:*MEMORY[0x277D73818]];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      containerIdentifier3 = [containerCopy containerIdentifier];
      v6 = [containerIdentifier3 isEqualToString:*MEMORY[0x277D73820]];
    }
  }

  return v6;
}

- (id)fetchTreatmentWithId:(id)id options:(id)options completion:(id)completion
{
  v50[4] = *MEMORY[0x277D85DE8];
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  if (idCopy)
  {
    if (optionsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1060 description:{@"Invalid parameter not satisfying: %@", @"options"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1059 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];

  if (!optionsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1061 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  v12 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = __Block_byref_object_copy__0;
  v48[4] = __Block_byref_object_dispose__0;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__0;
  v46[4] = __Block_byref_object_dispose__0;
  v47 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __71__TRICKNativeArtifactProvider_fetchTreatmentWithId_options_completion___block_invoke;
  v40[3] = &unk_279DDF178;
  v42 = v46;
  v13 = idCopy;
  v41 = v13;
  v43 = v48;
  v44 = v45;
  v32 = MEMORY[0x2743948D0](v40);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __71__TRICKNativeArtifactProvider_fetchTreatmentWithId_options_completion___block_invoke_219;
  v33[3] = &unk_279DDF1A0;
  v14 = v12;
  v34 = v14;
  v31 = completionCopy;
  v36 = v31;
  v37 = v45;
  v15 = optionsCopy;
  v35 = v15;
  v38 = v48;
  v39 = v46;
  v16 = MEMORY[0x2743948D0](v33);
  v17 = objc_autoreleasePoolPush();
  v18 = *MEMORY[0x277D739D8];
  v19 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D739D8], v13];
  v20 = *MEMORY[0x277D739C8];
  v50[0] = v18;
  v50[1] = v20;
  v21 = *MEMORY[0x277D739C0];
  v50[2] = *MEMORY[0x277D739D0];
  v50[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  v23 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D739A8] predicate:v19 desiredKeys:v22 options:v15 recordMatchedBlock:v32 queryCompletionBlock:v16];
  container = [(TRICKNativeArtifactProvider *)self container];
  publicCloudDatabase = [container publicCloudDatabase];
  [publicCloudDatabase addOperation:v23];

  [(TRICancelableCKOperation *)v14 addOperation:v23];
  v26 = v14;

  objc_autoreleasePoolPop(v17);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);

  return v26;
}

void __71__TRICKNativeArtifactProvider_fetchTreatmentWithId_options_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    if (*(*(a1[5] + 8) + 40))
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = a1[4];
        v12 = [*(*(a1[6] + 8) + 40) recordName];
        v19 = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Multiple records retrieved for treatmentId: %{public}@. Picking the first one (CKRecordId: %{public}@)", &v19, 0x16u);
      }
    }

    else
    {
      v13 = [MEMORY[0x277D73AF0] treatmentFromCKRecord:v8 treatmentSize:*(a1[7] + 8) + 24];
      v14 = *(a1[5] + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (*(*(a1[5] + 8) + 40))
      {
        v16 = [v8 recordID];
        v17 = *(a1[6] + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;
      }
    }
  }
}

void __71__TRICKNativeArtifactProvider_fetchTreatmentWithId_options_completion___block_invoke_219(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (_isUserCancellation(v7, *(a1 + 32)))
  {
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (v7)
    {
      v5 = [*(a1 + 40) downloadOptions];
      v6 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v7 options:v5];

      (*(*(a1 + 48) + 16))();
      goto LABEL_7;
    }

    v4 = *(*(a1 + 48) + 16);
  }

  v4();
LABEL_7:
}

- (id)fetchAssetsWithIndexes:(id)indexes fromTreatmentWithRecordId:(id)id options:(id)options progress:(id)progress completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  idCopy = id;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  if (indexesCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x277CCA890] currentHandler];
    v41 = v40 = completionCopy;
    [v41 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"assetIndexes"}];

    completionCopy = v40;
    if (idCopy)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_15:
      [MEMORY[0x277CCA890] currentHandler];
      v45 = v44 = completionCopy;
      [v45 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1125 description:{@"Invalid parameter not satisfying: %@", @"options"}];

      completionCopy = v44;
      if (v44)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  [MEMORY[0x277CCA890] currentHandler];
  v43 = v42 = completionCopy;
  [v43 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1124 description:{@"Invalid parameter not satisfying: %@", @"recordId"}];

  completionCopy = v42;
  if (!optionsCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (completionCopy)
  {
    goto LABEL_5;
  }

LABEL_16:
  [MEMORY[0x277CCA890] currentHandler];
  v47 = v46 = completionCopy;
  [v47 handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1126 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

  completionCopy = v46;
LABEL_5:
  v18 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  if ([indexesCopy count])
  {
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke;
    v60[3] = &unk_279DDF1C8;
    v51 = progressCopy;
    v61 = progressCopy;
    v19 = MEMORY[0x2743948D0](v60);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke_2;
    v54[3] = &unk_279DDF1F0;
    v20 = v18;
    v55 = v20;
    v49 = completionCopy;
    v59 = completionCopy;
    v52 = optionsCopy;
    v21 = optionsCopy;
    v56 = v21;
    v53 = idCopy;
    v22 = idCopy;
    v57 = v22;
    v50 = indexesCopy;
    v23 = indexesCopy;
    v58 = v23;
    v24 = MEMORY[0x2743948D0](v54);
    context = objc_autoreleasePoolPush();
    v25 = objc_alloc(MEMORY[0x277CBC3E0]);
    v64 = v22;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v27 = [v25 initWithRecordIDs:v26];

    [v27 setPerRecordProgressBlock:v19];
    [v27 setFetchRecordsCompletionBlock:v24];
    v28 = [(TRICKNativeArtifactProvider *)self configurationFromOptions:v21];
    [v27 setConfiguration:v28];
    downloadOptions = [v21 downloadOptions];
    [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v27 fromOptions:downloadOptions];

    v30 = v23;
    v31 = objc_opt_new();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke_2_232;
    v62[3] = &unk_279DDF218;
    v32 = v31;
    v63 = v32;
    [v30 enumerateRangesUsingBlock:v62];

    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v66 = v32;
      _os_log_debug_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEBUG, "desiredKeysForAssetIndexes: %@", buf, 0xCu);
    }

    v34 = [v32 arrayByAddingObject:*MEMORY[0x277D739C0]];
    [v27 setDesiredKeys:v34];

    container = [(TRICKNativeArtifactProvider *)self container];
    publicCloudDatabase = [container publicCloudDatabase];
    [publicCloudDatabase addOperation:v27];

    [(TRICancelableCKOperation *)v20 addOperation:v27];
    v37 = v20;

    objc_autoreleasePoolPop(context);
    optionsCopy = v52;
    idCopy = v53;
    progressCopy = v51;
    completionCopy = v49;
    indexesCopy = v50;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4, MEMORY[0x277CBEC10], 0, 0);
    v38 = v18;
  }

  return v18;
}

uint64_t __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!_isUserCancellation(v6, *(a1 + 32)))
  {
    if (v6)
    {
      v7 = [*(a1 + 40) downloadOptions];
      v8 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v7];

      v9 = *(*(a1 + 64) + 16);
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:*(a1 + 48)];
      if (v8)
      {
        v10 = [MEMORY[0x277D73AF0] assetURLsFromCKRecord:v8 assetIndexes:*(a1 + 56)];
        (*(*(a1 + 64) + 16))();

        goto LABEL_8;
      }

      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 48);
        v13 = 138412290;
        v14 = v12;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "CKFetchRecordsOperation did not return a record with recordId %@.", &v13, 0xCu);
      }

      v9 = *(*(a1 + 64) + 16);
    }

    v9();
LABEL_8:

    goto LABEL_9;
  }

  (*(*(a1 + 64) + 16))();
LABEL_9:
}

void __108__TRICKNativeArtifactProvider_fetchAssetsWithIndexes_fromTreatmentWithRecordId_options_progress_completion___block_invoke_2_232(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBC5A0] keyForListField:*MEMORY[0x277D739B8] withIndexRange:{a2, a3}];
  [v6 addObject:v7];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CBC5A0] keyForListField:*MEMORY[0x277D739B0] withIndexRange:{a2, a3}];
  [v8 addObject:v9];
}

- (void)fetchRolloutNotificationsDateAscendingWithOptions:(id)options lastFetchDateOverride:(id)override namespaceNames:(id)names completion:(id)completion
{
  optionsCopy = options;
  overrideCopy = override;
  namesCopy = names;
  completionCopy = completion;
  container = [(TRICKNativeArtifactProvider *)self container];
  v14 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  if (overrideCopy)
  {
    [(TRICKNativeArtifactProvider *)self _fetchRolloutNotificationsWithCursor:0 options:optionsCopy sinceDate:overrideCopy namespaceNames:namesCopy resultsHandler:completionCopy];
  }

  else
  {
    dateProvider = self->_dateProvider;
    teamId = [(TRICKNativeArtifactProvider *)self teamId];
    v17 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:1 container:v14 teamId:teamId];
    [(TRICKNativeArtifactProvider *)self _fetchRolloutNotificationsWithCursor:0 options:optionsCopy sinceDate:v17 namespaceNames:namesCopy resultsHandler:completionCopy];
  }
}

- (void)_fetchRolloutNotificationsWithCursor:(id)cursor options:(id)options sinceDate:(id)date namespaceNames:(id)names resultsHandler:(id)handler
{
  v68 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  optionsCopy = options;
  dateCopy = date;
  namesCopy = names;
  handlerCopy = handler;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__0;
  v62[4] = __Block_byref_object_dispose__0;
  v63 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  v61[3] = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __116__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_sinceDate_namespaceNames_resultsHandler___block_invoke;
  v56[3] = &unk_279DDF240;
  v56[4] = self;
  v16 = dateCopy;
  v57 = v16;
  v59 = v62;
  v17 = handlerCopy;
  v58 = v17;
  v60 = v61;
  v45 = MEMORY[0x2743948D0](v56);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __116__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_sinceDate_namespaceNames_resultsHandler___block_invoke_237;
  v48[3] = &unk_279DDF268;
  v54 = v61;
  v18 = optionsCopy;
  v49 = v18;
  v44 = v17;
  v53 = v44;
  selfCopy = self;
  v19 = v16;
  v51 = v19;
  v55 = v62;
  v20 = namesCopy;
  v52 = v20;
  v47 = MEMORY[0x2743948D0](v48);
  v21 = +[TRIClientRolloutArtifact allReferencedCKRecordKeys];
  if (cursorCopy)
  {
    v22 = [(TRICKNativeArtifactProvider *)self queryOperationWithCursor:cursorCopy desiredKeys:v21 options:v18 recordMatchedBlock:v45 queryCompletionBlock:v47];
  }

  else
  {
    if (!v19)
    {
      container = [(TRICKNativeArtifactProvider *)self container];
      v24 = [TRICKNativeArtifactProvider containerFromCkContainer:container];

      dateProvider = self->_dateProvider;
      teamId = [(TRICKNativeArtifactProvider *)self teamId];
      v19 = [(TRIDateProviding *)dateProvider lastFetchDateWithType:1 container:v24 teamId:teamId];
    }

    v43 = objc_opt_new();
    if (v19)
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = formatLoggingDate(v19);
        *buf = 138543362;
        v67 = v28;
        _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "CKNative checking for new rollouts since %{public}@", buf, 0xCu);
      }

      v29 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K > %@", *MEMORY[0x277D73960], v19];
      [v43 addObject:v29];
    }

    v30 = +[TRISystemConfiguration sharedInstance];
    populationType = [v30 populationType];

    v32 = MEMORY[0x277CCAC30];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:populationType];
    v65 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    v35 = [v32 triLoggablePredicateWithFormat:@"ANY %K IN %@", *MEMORY[0x277D73980], v34];
    [v43 addObject:v35];

    allObjects = [v20 allObjects];
    if ([v20 count])
    {
      v37 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"ANY %K IN %@", *MEMORY[0x277D73978], allObjects];
      [v43 addObject:v37];
    }

    v38 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v43];
    v39 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:1];
    v64 = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v22 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D73958] predicate:v38 sortDescriptors:v40 desiredKeys:v21 options:v18 recordMatchedBlock:v45 queryCompletionBlock:v47];
  }

  container2 = [(TRICKNativeArtifactProvider *)self container];
  publicCloudDatabase = [container2 publicCloudDatabase];
  [publicCloudDatabase addOperation:v22];

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v62, 8);
}

void __116__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_sinceDate_namespaceNames_resultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 recordID];
      v31 = 138543362;
      v32 = v11;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Received RolloutNotification with CKRecordID %{public}@", &v31, 0xCu);
    }

    v12 = objc_autoreleasePoolPush();
    v13 = [*(a1 + 32) namespaceDescriptorProvider];
    v14 = [TRIClientRolloutArtifact artifactFromCKRecord:v8 namespaceDescriptorProvider:v13 error:0];

    if (!v14)
    {
      goto LABEL_9;
    }

    v15 = [v14 deploymentDate];
    v16 = objc_opt_new();
    v17 = [v15 compare:v16];

    if (v17 == 1)
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v28 = [v14 deployment];
        v29 = [v28 shortDesc];
        v30 = [v14 deploymentDate];
        v31 = 138543618;
        v32 = v29;
        v33 = 2112;
        v34 = v30;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Received record with future deployment date for rollout %{public}@: %@", &v31, 0x16u);
      }

LABEL_8:

LABEL_9:
      objc_autoreleasePoolPop(v12);
      goto LABEL_18;
    }

    if (*(a1 + 40))
    {
      v19 = [v14 deploymentDate];
      v20 = [v19 compare:*(a1 + 40)];

      if (v20 == -1)
      {
        v18 = TRILogCategory_Server();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v24 = [v14 deployment];
          v25 = [v24 shortDesc];
          v26 = [v14 deploymentDate];
          v27 = *(a1 + 40);
          v31 = 138543874;
          v32 = v25;
          v33 = 2112;
          v34 = v26;
          v35 = 2112;
          v36 = v27;
          _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Received CloudKit record with too old deployment date for rollout %{public}@: %@ < %@", &v31, 0x20u);
        }

        goto LABEL_8;
      }
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v21 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:604800.0];
      v22 = [v8 objectForKeyedSubscript:*MEMORY[0x277D73960]];
      v23 = v22;
      if (v22 && [v22 compare:v21] == -1)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v23);
      }
    }

    (*(*(a1 + 48) + 16))();

    objc_autoreleasePoolPop(v12);
    ++*(*(*(a1 + 64) + 8) + 24);
  }

LABEL_18:
}

void __116__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_sinceDate_namespaceNames_resultsHandler___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 72) + 8) + 24);
    v18 = 134218498;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Finished fetchRolloutNotifications query with %tu results cursor %@ error %{public}@", &v18, 0x20u);
  }

  if (v6)
  {
    v9 = [*(a1 + 32) downloadOptions];
    v10 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v9];

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v11 = [*(a1 + 40) container];
    v12 = [TRICKNativeArtifactProvider containerFromCkContainer:v11];

    v13 = objc_autoreleasePoolPush();
    if (v5)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    (*(*(a1 + 64) + 16))(*(a1 + 64), v14, 0, 0, 0);
    objc_autoreleasePoolPop(v13);
    if (!*(a1 + 48) || [*(*(*(a1 + 80) + 8) + 40) compare:?] == 1)
    {
      if (*(a1 + 56))
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Not setting lastFetchDate since we're only fetching a subset of the namespaces.", &v18, 2u);
        }
      }

      else
      {
        v15 = [*(a1 + 40) dateProvider];
        v16 = *(*(*(a1 + 80) + 8) + 40);
        v17 = [*(a1 + 40) teamId];
        [v15 setLastFetchDate:v16 type:1 container:v12 teamId:v17];
      }
    }

    if (v5)
    {
      [*(a1 + 40) _fetchRolloutNotificationsWithCursor:v5 options:*(a1 + 32) sinceDate:*(*(*(a1 + 80) + 8) + 40) namespaceNames:*(a1 + 56) resultsHandler:*(a1 + 64)];
    }
  }
}

- (void)_fetchRolloutNotificationsWithCursor:(id)cursor options:(id)options completion:(id)completion
{
  v47[1] = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  optionsCopy = options;
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __87__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_completion___block_invoke;
  v39[3] = &unk_279DDF290;
  v39[4] = self;
  v10 = completionCopy;
  v40 = v10;
  v41 = v43;
  v42 = v45;
  v11 = MEMORY[0x2743948D0](v39);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __87__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_completion___block_invoke_238;
  v33[3] = &unk_279DDF2B8;
  v37 = v45;
  v12 = optionsCopy;
  v34 = v12;
  v13 = v10;
  v38 = v43;
  selfCopy = self;
  v36 = v13;
  v14 = MEMORY[0x2743948D0](v33);
  v15 = +[TRIClientRolloutArtifact allReferencedCKRecordKeys];
  if (cursorCopy)
  {
    v16 = [(TRICKNativeArtifactProvider *)self queryOperationWithCursor:cursorCopy desiredKeys:v15 options:v12 recordMatchedBlock:v11 queryCompletionBlock:v14];
  }

  else
  {
    v30 = objc_opt_new();
    v17 = +[TRISystemConfiguration sharedInstance];
    populationType = [v17 populationType];

    v19 = MEMORY[0x277CCAC30];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:populationType];
    v47[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v22 = [v19 triLoggablePredicateWithFormat:@"ANY %K IN %@", *MEMORY[0x277D73980], v21];
    [v30 addObject:v22];

    v23 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v30];
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"deploymentDate" ascending:0];
    v46 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
    v16 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D73958] predicate:v23 sortDescriptors:v25 desiredKeys:v15 options:v12 recordMatchedBlock:v11 queryCompletionBlock:v14];

    downloadOptions = [v12 downloadOptions];
    [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v16 fromOptions:downloadOptions];
  }

  downloadOptions2 = [v12 downloadOptions];
  [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v16 fromOptions:downloadOptions2];

  container = [(TRICKNativeArtifactProvider *)self container];
  publicCloudDatabase = [container publicCloudDatabase];
  [publicCloudDatabase addOperation:v16];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  objc_autoreleasePoolPop(context);
}

void __87__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 recordID];
      v15 = 138543362;
      v16 = v11;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Received RolloutNotification with CKRecordID %{public}@", &v15, 0xCu);
    }

    v12 = objc_autoreleasePoolPush();
    v13 = [*(a1 + 32) namespaceDescriptorProvider];
    v14 = [TRIClientRolloutArtifact artifactFromCKRecord:v8 namespaceDescriptorProvider:v13 error:0];

    if (v14)
    {
      (*(*(a1 + 40) + 16))();

      objc_autoreleasePoolPop(v12);
      ++*(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      objc_autoreleasePoolPop(v12);
    }
  }
}

void __87__TRICKNativeArtifactProvider__fetchRolloutNotificationsWithCursor_options_completion___block_invoke_238(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 56) + 8) + 24);
    v13 = 134218498;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Finished fetchRolloutNotifications query with %tu results cursor %@ error %{public}@", &v13, 0x20u);
  }

  if (v6)
  {
    v9 = [*(a1 + 32) downloadOptions];
    v10 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v9];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    if (v5)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v12, 0, 0, 0, 0);
    objc_autoreleasePoolPop(v11);
    if (v5 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      [*(a1 + 40) _fetchRolloutNotificationsWithCursor:v5 options:*(a1 + 32) completion:*(a1 + 48)];
    }
  }
}

- (void)fetchRolloutNotificationWithDeployment:(id)deployment options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  deploymentCopy = deployment;
  rolloutId = [deploymentCopy rolloutId];
  v11 = MEMORY[0x277CCABB0];
  deploymentId = [deploymentCopy deploymentId];

  v13 = [v11 numberWithInt:deploymentId];
  [(TRICKNativeArtifactProvider *)self _fetchRolloutNotificationWithRolloutId:rolloutId deploymentId:v13 options:optionsCopy completion:completionCopy];
}

- (void)_fetchRolloutNotificationWithRolloutId:(id)id deploymentId:(id)deploymentId options:(id)options completion:(id)completion
{
  v69 = *MEMORY[0x277D85DE8];
  idCopy = id;
  deploymentIdCopy = deploymentId;
  optionsCopy = options;
  completionCopy = completion;
  container = [(TRICKNativeArtifactProvider *)self container];
  LODWORD(completion) = [TRICKNativeArtifactProvider containerFromCkContainer:container];

  if (completion)
  {
    v50 = completionCopy;
    idCopy = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D739A0], idCopy];
    selfCopy = self;
    if (deploymentIdCopy)
    {
      [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D73968], deploymentIdCopy];
    }

    else
    {
      [MEMORY[0x277CCAC30] triLoggablePredicateWithValue:1];
    }
    v17 = ;
    v18 = +[TRISystemConfiguration sharedInstance];
    populationType = [v18 populationType];

    v20 = MEMORY[0x277CCAC30];
    v21 = *MEMORY[0x277D73980];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:populationType];
    v64 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
    v45 = [v20 triLoggablePredicateWithFormat:@"ANY %K IN %@", v21, v23];

    v24 = MEMORY[0x277CCA920];
    v63[0] = idCopy;
    v63[1] = v17;
    v46 = v17;
    v63[2] = v45;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:3];
    v49 = [v24 andPredicateWithSubpredicates:v25];

    v26 = objc_opt_new();
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __102__TRICKNativeArtifactProvider__fetchRolloutNotificationWithRolloutId_deploymentId_options_completion___block_invoke;
    v58[3] = &unk_279DDEFF0;
    v27 = idCopy;
    v59 = v27;
    v28 = deploymentIdCopy;
    v60 = v28;
    v29 = v26;
    v61 = v29;
    v30 = MEMORY[0x2743948D0](v58);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __102__TRICKNativeArtifactProvider__fetchRolloutNotificationWithRolloutId_deploymentId_options_completion___block_invoke_239;
    v51[3] = &unk_279DDF308;
    v31 = v27;
    v52 = v31;
    v53 = v28;
    v47 = idCopy;
    v48 = deploymentIdCopy;
    v32 = optionsCopy;
    v54 = v32;
    v55 = v29;
    v56 = selfCopy;
    v57 = v50;
    v43 = v29;
    v33 = MEMORY[0x2743948D0](v51);
    v34 = *MEMORY[0x277D73958];
    [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"deploymentDate" ascending:0];
    v36 = v35 = optionsCopy;
    v62 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v38 = +[TRIClientRolloutArtifact allReferencedCKRecordKeys];
    v39 = [(TRICKNativeArtifactProvider *)selfCopy queryOperationForRecordType:v34 predicate:v49 sortDescriptors:v37 desiredKeys:v38 options:v32 recordMatchedBlock:v30 queryCompletionBlock:v33];

    optionsCopy = v35;
    v40 = [TRICKOperationGroupFactory groupForRolloutId:v31];
    [v39 setGroup:v40];

    container2 = [(TRICKNativeArtifactProvider *)selfCopy container];
    publicCloudDatabase = [container2 publicCloudDatabase];
    [publicCloudDatabase addOperation:v39];

    completionCopy = v50;
    idCopy = v47;
    deploymentIdCopy = v48;
  }

  else
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v66 = idCopy;
      v67 = 2112;
      v68 = deploymentIdCopy;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "failed to fetch rollout %{public}@.%@ (unknown container)", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }
}

void __102__TRICKNativeArtifactProvider__fetchRolloutNotificationWithRolloutId_deploymentId_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [v4 recordID];
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Received rollout notification for deployment %{public}@.%@ ckRecordID %@", &v9, 0x20u);
    }

    [*(a1 + 48) addObject:v4];
  }
}

void __102__TRICKNativeArtifactProvider__fetchRolloutNotificationWithRolloutId_deploymentId_options_completion___block_invoke_239(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138543874;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Finished fetchRolloutNotification query for deployment %{public}@.%@ error %@", buf, 0x20u);
  }

  if (v4)
  {
    v8 = [*(a1 + 48) downloadOptions];
    v9 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v4 options:v8];

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v9 = [*(a1 + 56) firstObject];
    v17 = 0;
    if (v9)
    {
      v10 = [TRIClientRolloutArtifact artifactFromCKRecord:v9 namespaceDescriptorProvider:*(*(a1 + 64) + 40) error:&v17];
      v11 = v17;
    }

    else
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Unable to find rollout ID %{public}@. Please verify rollout id is valid.", buf, 0xCu);
      }

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find rollout"];
      v15 = objc_alloc(MEMORY[0x277CCA9B8]);
      v18 = *MEMORY[0x277CCA450];
      v19 = v14;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v11 = [v15 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v16];
      v17 = v11;

      v10 = 0;
    }

    (*(*(a1 + 72) + 16))(*(a1 + 72), 4 * (v11 == 0), v10, 0, v11);
  }
}

- (void)fetchFactorPackSetWithId:(id)id options:(id)options completion:(id)completion
{
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  v12 = objc_opt_new();
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __75__TRICKNativeArtifactProvider_fetchFactorPackSetWithId_options_completion___block_invoke;
  v34[3] = &unk_279DDF0B8;
  v13 = v12;
  v35 = v13;
  v14 = MEMORY[0x2743948D0](v34);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __75__TRICKNativeArtifactProvider_fetchFactorPackSetWithId_options_completion___block_invoke_243;
  v26[3] = &unk_279DDF2E0;
  v15 = idCopy;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = optionsCopy;
  v29 = v17;
  v18 = completionCopy;
  v32 = v36;
  v33 = a2;
  selfCopy = self;
  v31 = v18;
  v19 = MEMORY[0x2743948D0](v26);
  v20 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", *MEMORY[0x277D73948], v15];
  v21 = +[TRIFactorPackSet allReferencedCKRecordKeys];
  v22 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D73930] predicate:v20 desiredKeys:v21 options:v17 recordMatchedBlock:v14 queryCompletionBlock:v19];

  downloadOptions = [v17 downloadOptions];
  [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v22 fromOptions:downloadOptions];

  container = [(TRICKNativeArtifactProvider *)self container];
  publicCloudDatabase = [container publicCloudDatabase];
  [publicCloudDatabase addOperation:v22];

  _Block_object_dispose(v36, 8);
}

void __75__TRICKNativeArtifactProvider_fetchFactorPackSetWithId_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 recordID];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Received FactorPackSet with CKRecordID %{public}@", &v7, 0xCu);
    }

    [*(a1 + 32) addObject:v4];
  }
}

void __75__TRICKNativeArtifactProvider_fetchFactorPackSetWithId_options_completion___block_invoke_243(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) count];
    *buf = 138544130;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 2112;
    v39 = v5;
    v40 = 2114;
    v41 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Finished fetchFactorPackSetId %{public}@ with %tu results cursor %@ error %{public}@", buf, 0x2Au);
  }

  if (v6)
  {
    v10 = [*(a1 + 48) downloadOptions];
    v11 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v10];

    (*(*(a1 + 64) + 16))();
LABEL_22:

    goto LABEL_23;
  }

  v12 = *(a1 + 40);
  v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"modificationDate" ascending:1];
  v33 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  [v12 sortUsingDescriptors:v14];

  if ([*(a1 + 40) count])
  {
    if ([*(a1 + 40) count] >= 2)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        *buf = 138543362;
        v35 = v25;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unexpectedly matched multiple records with FactorPackSetId %{public}@ (selecting most recent).", buf, 0xCu);
      }
    }

    v11 = [*(a1 + 40) lastObject];
    if (!v11)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"TRICKNativeArtifactProvider.m" lineNumber:1534 description:{@"Invalid parameter not satisfying: %@", @"mostRecentlyModifiedRecord"}];
    }

    v16 = [TRIFactorPackSet artifactFromCKRecord:v11];
    v17 = [v11 values];
    if (!v17)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"TRICKNativeArtifactProvider.m" lineNumber:1538 description:{@"Expression was unexpectedly nil/false: %@", @"mostRecentlyModifiedRecord.values"}];
    }

    v18 = [v17 triArrayValueForField:*MEMORY[0x277D73940] isNestedValue:0];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          *(*(*(a1 + 72) + 8) + 24) += [*(*(&v28 + 1) + 8 * i) length];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v20);
    }

    (*(*(a1 + 64) + 16))();

    goto LABEL_22;
  }

  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 32);
    *buf = 138543362;
    v35 = v24;
    _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "No records found matching FactorPackSetId %{public}@.", buf, 0xCu);
  }

  (*(*(a1 + 64) + 16))();
LABEL_23:
}

- (id)fetchRecordIdsForAssetsWithIds:(id)ids options:(id)options completion:(id)completion
{
  idsCopy = ids;
  optionsCopy = options;
  v10 = MEMORY[0x277CBEB38];
  completionCopy = completion;
  v12 = [[v10 alloc] initWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v13 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  if ([idsCopy count])
  {
    [(TRICKNativeArtifactProvider *)self _fetchRecordIdsForAssetsWithIds:idsCopy options:optionsCopy cursor:0 cancelableOp:v13 resultBuffer:v12 completion:completionCopy];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4, v12, 0, 0);
  }

  return v13;
}

- (void)_fetchRecordIdsForAssetsWithIds:(id)ids options:(id)options cursor:(id)cursor cancelableOp:(id)op resultBuffer:(id)buffer completion:(id)completion
{
  v49[1] = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  optionsCopy = options;
  cursorCopy = cursor;
  opCopy = op;
  bufferCopy = buffer;
  completionCopy = completion;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __115__TRICKNativeArtifactProvider__fetchRecordIdsForAssetsWithIds_options_cursor_cancelableOp_resultBuffer_completion___block_invoke;
  v46[3] = &unk_279DDF0B8;
  v20 = bufferCopy;
  v47 = v20;
  v21 = MEMORY[0x2743948D0](v46);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __115__TRICKNativeArtifactProvider__fetchRecordIdsForAssetsWithIds_options_cursor_cancelableOp_resultBuffer_completion___block_invoke_254;
  v39[3] = &unk_279DDF308;
  v38 = v20;
  v40 = v38;
  v22 = opCopy;
  v41 = v22;
  v37 = completionCopy;
  v45 = v37;
  v23 = optionsCopy;
  v42 = v23;
  selfCopy = self;
  v24 = idsCopy;
  v44 = v24;
  v25 = MEMORY[0x2743948D0](v39);
  v26 = *MEMORY[0x277D73888];
  v49[0] = *MEMORY[0x277D73888];
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
  v36 = v24;
  if (cursorCopy)
  {
    v28 = [(TRICKNativeArtifactProvider *)self queryOperationWithCursor:cursorCopy desiredKeys:v27 options:v23 recordMatchedBlock:v21 queryCompletionBlock:v25];
    v48 = v26;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [v28 setDesiredKeys:v29];

    [v22 addOperation:v28];
    container = [(TRICKNativeArtifactProvider *)self container];
    publicCloudDatabase = [container publicCloudDatabase];
    [publicCloudDatabase addOperation:v28];
  }

  else
  {
    allObjects = [v24 allObjects];
    v28 = [allObjects sortedArrayUsingSelector:sel_compare_];

    container = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K IN %@", v26, v28];
    publicCloudDatabase = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:*MEMORY[0x277D73840] predicate:container desiredKeys:v27 options:v23 recordMatchedBlock:v21 queryCompletionBlock:v25];
    downloadOptions = [v23 downloadOptions];
    [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:publicCloudDatabase fromOptions:downloadOptions];

    [v22 addOperation:publicCloudDatabase];
    container2 = [(TRICKNativeArtifactProvider *)self container];
    publicCloudDatabase2 = [container2 publicCloudDatabase];
    [publicCloudDatabase2 addOperation:publicCloudDatabase];

    cursorCopy = 0;
  }
}

void __115__TRICKNativeArtifactProvider__fetchRecordIdsForAssetsWithIds_options_cursor_cancelableOp_resultBuffer_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 recordID];
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Received partial Asset record with CKRecordID %{public}@", &v11, 0xCu);
    }

    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D73888]];
    if (v7)
    {
      v8 = TRIValidateAssetId();
      if (v8)
      {
        v9 = [v4 recordID];
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
      }
    }

    else
    {
      v8 = TRILogCategory_Server();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = [v4 recordID];
        v11 = 138543362;
        v12 = v10;
        _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "No assetId found in CKRecord %{public}@", &v11, 0xCu);
      }
    }
  }
}

void __115__TRICKNativeArtifactProvider__fetchRecordIdsForAssetsWithIds_options_cursor_cancelableOp_resultBuffer_completion___block_invoke_254(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    *buf = 134218498;
    v28 = v8;
    v29 = 2112;
    v30 = v5;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Finished Asset record fetch with %tu results cursor %@ error %{public}@", buf, 0x20u);
  }

  if (_isUserCancellation(v6, *(a1 + 40)))
  {
    v9 = *(*(a1 + 72) + 16);
LABEL_5:
    v9();
    goto LABEL_25;
  }

  if (v6)
  {
    v10 = [*(a1 + 48) downloadOptions];
    v11 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v10];

    (*(*(a1 + 72) + 16))();
    goto LABEL_25;
  }

  if (v5)
  {
    [*(a1 + 56) _fetchRecordIdsForAssetsWithIds:*(a1 + 64) options:*(a1 + 48) cursor:v5 cancelableOp:*(a1 + 40) resultBuffer:*(a1 + 32) completion:*(a1 + 72)];
    goto LABEL_25;
  }

  v12 = [*(a1 + 32) count];
  if (v12 == [*(a1 + 64) count])
  {
    v9 = *(*(a1 + 72) + 16);
    goto LABEL_5;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = *(a1 + 64);
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [*(a1 + 32) objectForKeyedSubscript:{v17, v22}];

        if (!v18)
        {
          v14 = v17;
          goto LABEL_22;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v19 = TRILogCategory_Server();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = [*(a1 + 64) count];
    v21 = [*(a1 + 32) count];
    *buf = 134218498;
    v28 = v20;
    v29 = 2048;
    v30 = v21;
    v31 = 2114;
    v32 = v14;
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Unable to find Asset record in CloudKit for all requested assetIds (requested: %tu, found: %tu). Example missing assetId: %{public}@", buf, 0x20u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_25:
}

- (id)fetchAssetsWithRecordIds:(id)ids options:(id)options perRecordProgress:(id)progress perRecordCompletionBlockOnSuccess:(id)success perRecordCompletionBlockOnError:(id)error completion:(id)completion
{
  idsCopy = ids;
  optionsCopy = options;
  progressCopy = progress;
  successCopy = success;
  errorCopy = error;
  completionCopy = completion;
  v19 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  if ([idsCopy count])
  {
    v43 = progressCopy;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__257;
    v69 = __Block_byref_object_dispose__258;
    v70 = 0;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke;
    v62[3] = &unk_279DDF330;
    v39 = errorCopy;
    v63 = errorCopy;
    v40 = successCopy;
    v64 = successCopy;
    v20 = MEMORY[0x2743948D0](v62);
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x3032000000;
    v60[3] = __Block_byref_object_copy__0;
    v60[4] = __Block_byref_object_dispose__0;
    v61 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(idsCopy, "count")}];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_260;
    v54[3] = &unk_279DDF3A8;
    v58 = &v65;
    v57 = completionCopy;
    v21 = v19;
    v55 = v21;
    v38 = optionsCopy;
    v22 = optionsCopy;
    v56 = v22;
    v59 = v60;
    v23 = MEMORY[0x2743948D0](v54);
    v24 = objc_autoreleasePoolPush();
    v25 = [TRIPeekEnumerator alloc];
    keyEnumerator = [idsCopy keyEnumerator];
    v27 = [(TRIPeekEnumerator *)v25 initWithEnumerator:keyEnumerator];

    objc_autoreleasePoolPop(v24);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2_266;
    v44[3] = &unk_279DDF3D0;
    v28 = v27;
    v53 = a2;
    v45 = v28;
    selfCopy = self;
    v47 = idsCopy;
    v48 = v22;
    v50 = v43;
    v29 = v20;
    v51 = v29;
    v30 = v23;
    v52 = v30;
    v31 = v21;
    v49 = v31;
    v32 = MEMORY[0x2743948D0](v44);
    v33 = v66[5];
    v66[5] = v32;

    if ((*(v66[5] + 16))())
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRICKNativeArtifactProvider.m" lineNumber:1799 description:@"initial asset batch was unexpectedly empty"];
    }

    v34 = v49;
    v35 = v31;

    _Block_object_dispose(v60, 8);
    _Block_object_dispose(&v65, 8);

    optionsCopy = v38;
    errorCopy = v39;
    progressCopy = v43;
    successCopy = v40;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4, MEMORY[0x277CBEC10], 0, 0);
  }

  return v19;
}

void __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = TRILogCategory_Server();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Error receiving Asset record with CKRecord %{public}@: %{public}@", &v15, 0x16u);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v7, v8, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277D73888]];
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Received Asset record with CKRecordID %{public}@, assetId %{public}@", &v15, 0x16u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v7, v8);
    }
  }
}

void __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2;
  v19[3] = &unk_279DDF358;
  v16 = *(a1 + 48);
  v7 = v16;
  v20 = v16;
  v8 = MEMORY[0x2743948D0](v19);
  if (_isUserCancellation(v6, *(a1 + 32)))
  {
    (v8)[2](v8, 1, 0, 0, v6);
  }

  else
  {
    if (!v6)
    {
      if (v5)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_262;
        v17[3] = &unk_279DDF380;
        v17[4] = *(a1 + 64);
        [v5 enumerateKeysAndObjectsUsingBlock:v17];
        if ((*(*(*(*(a1 + 56) + 8) + 40) + 16))() != 1)
        {
          goto LABEL_12;
        }

        v11 = *(*(*(a1 + 64) + 8) + 40);
        v12 = v8[2];
        v13 = v8;
        v14 = 4;
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unexpected nil recordsByRecordId for fetchAssetsWithRecordIds", buf, 2u);
        }

        v12 = v8[2];
        v13 = v8;
        v14 = 0;
        v11 = 0;
      }

      v12(v13, v14, v11, 0, 0);
      goto LABEL_12;
    }

    v9 = [*(a1 + 40) downloadOptions];
    v10 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v9];

    (v8)[2](v8, 2 * (v10 != 0), 0, v10, v6);
  }

LABEL_12:
}

void __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
  v10 = a5;
  v11 = a4;
  v12 = a3;

  (*(*(a1 + 32) + 16))();
}

void __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_262(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v11 = 0;
  v6 = [TRISignedAssetURL assetURLFromCKRecord:a3 assetId:&v11];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v11];
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

uint64_t __159__TRICKNativeArtifactProvider_fetchAssetsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2_266(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Creating new batch of assets for next query.", buf, 2u);
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [*(a1 + 32) nextObject];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = [*(a1 + 48) objectForKeyedSubscript:v7];
    if (!v9)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRICKNativeArtifactProvider.m" lineNumber:1770 description:{@"Expression was unexpectedly nil/false: %@", @"recordIdsForAssetIds[assetId]"}];
    }

    v6 += [v9 downloadSize];
    v10 = [v9 recordId];
    [v3 addObject:v10];

    v11 = [*(a1 + 32) peekNextObject];

    if ([v3 count] <= 0x63 && v11)
    {
      v12 = [*(a1 + 48) objectForKeyedSubscript:v11];
      if (!v12)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRICKNativeArtifactProvider.m" lineNumber:1778 description:{@"Expression was unexpectedly nil/false: %@", @"recordIdsForAssetIds[peek]"}];
      }

      v13 = [v12 downloadSize] + v6;

      v5 = v11;
      if (v13 < 0x5F5E101)
      {
        continue;
      }
    }

    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v3 count];
      *buf = 134218240;
      v28 = v17;
      v29 = 2048;
      v30 = v6 / 1000000.0;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Asset batch: %tu assets of cumulative size %.2f MB", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v3];
    v19 = +[TRISignedAssetURL allReferencedCKRecordKeys];
    [v18 setDesiredKeys:v19];

    v20 = [*(a1 + 40) configurationFromOptions:*(a1 + 56)];
    [v18 setConfiguration:v20];

    [v18 setPerRecordProgressBlock:*(a1 + 72)];
    [v18 setPerRecordCompletionBlock:*(a1 + 80)];
    [v18 setFetchRecordsCompletionBlock:*(a1 + 88)];
    v21 = *(a1 + 40);
    v22 = [*(a1 + 56) downloadOptions];
    [v21 _applyBoostIfNeededToOperation:v18 fromOptions:v22];

    v23 = [*(a1 + 40) container];
    v24 = [v23 publicCloudDatabase];
    [v24 addOperation:v18];

    [*(a1 + 64) addOperation:v18];
    v25 = 0;
    v5 = v11;
    goto LABEL_15;
  }

  if ([v3 count])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRICKNativeArtifactProvider.m" lineNumber:1766 description:@"terminating with nonempty batch which will not be processed"];
    v25 = 1;
LABEL_15:

    goto LABEL_18;
  }

  v25 = 1;
LABEL_18:

  objc_autoreleasePoolPop(v2);
  return v25;
}

- (id)fetchDiffSourceRecordIdsWithTargetAssetIds:(id)ids isAcceptableSourceAssetId:(id)id options:(id)options completion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  v46 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  v36 = idsCopy;
  if ([idsCopy count])
  {
    v35 = completionCopy;
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    v13 = v11[1];
    v11[1] = v12;

    v43 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v11];
    group = dispatch_group_create();
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = idsCopy;
    v47 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v47)
    {
      v42 = *v66;
      v40 = *MEMORY[0x277D73870];
      v41 = *MEMORY[0x277D73868];
      v38 = *MEMORY[0x277D73848];
      v39 = *MEMORY[0x277D73860];
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v66 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v65 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          dispatch_group_enter(group);
          v63[0] = 0;
          v63[1] = v63;
          v63[2] = 0x3032000000;
          v63[3] = __Block_byref_object_copy__0;
          v63[4] = __Block_byref_object_dispose__0;
          v64 = 0;
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke;
          v60[3] = &unk_279DDF3F8;
          v62 = v63;
          v17 = idCopy;
          v60[4] = v15;
          v61 = v17;
          v18 = MEMORY[0x2743948D0](v60);
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_282;
          v54[3] = &unk_279DDF448;
          v55 = v43;
          v19 = optionsCopy;
          v56 = v19;
          v57 = v15;
          v59 = v63;
          v58 = group;
          v20 = MEMORY[0x2743948D0](v54);
          v21 = [MEMORY[0x277CCAC30] triLoggablePredicateWithFormat:@"%K == %@", v41, v15];
          v70[0] = v40;
          v70[1] = v39;
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
          v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v39 ascending:1];
          v69 = v23;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
          v25 = [(TRICKNativeArtifactProvider *)self queryOperationForRecordType:v38 predicate:v21 sortDescriptors:v24 desiredKeys:v22 options:v19 recordMatchedBlock:v18 queryCompletionBlock:v20];

          downloadOptions = [v19 downloadOptions];
          [(TRICKNativeArtifactProvider *)self _applyBoostIfNeededToOperation:v25 fromOptions:downloadOptions];

          container = [(TRICKNativeArtifactProvider *)self container];
          publicCloudDatabase = [container publicCloudDatabase];
          [publicCloudDatabase addOperation:v25];

          [(TRICancelableCKOperation *)v46 addOperation:v25];
          _Block_object_dispose(v63, 8);

          objc_autoreleasePoolPop(v16);
        }

        v47 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v47);
    }

    v29 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_284;
    block[3] = &unk_279DDF470;
    v51 = v43;
    v30 = v46;
    v52 = v30;
    v53 = v35;
    v31 = v43;
    dispatch_group_notify(group, v29, block);

    v32 = v53;
    v33 = v30;

    completionCopy = v35;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4, MEMORY[0x277CBEC10], 0, 0);
  }

  return v46;
}

void __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8 && !*(*(a1[6] + 8) + 40))
  {
    v10 = *MEMORY[0x277D73870];
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D73870]];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = *MEMORY[0x277D73860];
      v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D73860]];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = TRIValidateAssetId();
        if (v14 && (*(a1[5] + 16))())
        {
          v15 = TRILogCategory_Server();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = a1[4];
            v24 = 138543618;
            v25 = v16;
            v26 = 2114;
            v27 = v14;
            _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ can be constructed by patching asset %{public}@, which is already on disk.", &v24, 0x16u);
          }

          v17 = [TRISizedCKRecordID alloc];
          v18 = [v8 recordID];
          v19 = [(TRISizedCKRecordID *)v17 initWithRecordId:v18 downloadSize:[v13 unsignedLongLongValue]];
          v20 = *(a1[6] + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }
      }

      else
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v23 = [v8 recordID];
          v24 = 138412546;
          v25 = v23;
          v26 = 2112;
          v27 = v12;
          _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "CKRecord %@ is missing key %@.", &v24, 0x16u);
        }
      }
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = [v8 recordID];
        v24 = 138412546;
        v25 = v22;
        v26 = 2112;
        v27 = v10;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "CKRecord %@ is missing key %@.", &v24, 0x16u);
      }
    }
  }
}

void __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_282(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_2;
  v9[3] = &unk_279DDF420;
  v10 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = *(a1 + 64);
  v8 = v4;
  [v5 runWithLockAcquired:v9];
  dispatch_group_leave(*(a1 + 56));
}

void __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [*(a1 + 40) downloadOptions];
    v7 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v5 options:v6];

    v8 = v4[1];
    v4[1] = 0;

    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch diff source for asset ID %{public}@: %{public}@", &v13, 0x16u);
    }

    if (!v7 || !v4[3])
    {
      objc_storeStrong(v4 + 2, v7);
      objc_storeStrong(v4 + 3, *(a1 + 32));
    }
  }

  else if (*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = v3[1];
    if (v10)
    {
      [v10 setObject:? forKeyedSubscript:?];
    }
  }
}

void __119__TRICKNativeArtifactProvider_fetchDiffSourceRecordIdsWithTargetAssetIds_isAcceptableSourceAssetId_options_completion___block_invoke_284(uint64_t a1)
{
  v3 = [*(a1 + 32) unsafeGuardedData];
  if (_isUserCancellation(*(v3 + 3), *(a1 + 40)))
  {
    v2 = *(*(a1 + 48) + 16);
  }

  else if (*(v3 + 2))
  {
    v2 = *(*(a1 + 48) + 16);
  }

  else if (*(v3 + 3) || !*(v3 + 1))
  {
    v2 = *(*(a1 + 48) + 16);
  }

  else
  {
    v2 = *(*(a1 + 48) + 16);
  }

  v2();
}

- (id)fetchDiffsWithRecordIds:(id)ids options:(id)options perRecordProgress:(id)progress perRecordCompletionBlockOnSuccess:(id)success perRecordCompletionBlockOnError:(id)error completion:(id)completion
{
  idsCopy = ids;
  optionsCopy = options;
  progressCopy = progress;
  successCopy = success;
  errorCopy = error;
  completionCopy = completion;
  v19 = [[TRICancelableCKOperation alloc] initWithOperation:0];
  if ([idsCopy count])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke;
    v49[3] = &unk_279DDF330;
    v50 = errorCopy;
    v51 = successCopy;
    v20 = MEMORY[0x2743948D0](v49);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_285;
    v44[3] = &unk_279DDF4C0;
    v21 = v19;
    v45 = v21;
    v48 = completionCopy;
    v22 = optionsCopy;
    v46 = v22;
    v41 = successCopy;
    v23 = idsCopy;
    v47 = v23;
    v40 = completionCopy;
    v37 = MEMORY[0x2743948D0](v44);
    context = objc_autoreleasePoolPush();
    [v23 allValues];
    v42 = idsCopy;
    v25 = v24 = progressCopy;
    v26 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_291];

    v27 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v26];
    +[TRIAssetDiffArtifact allReferencedCKRecordKeys];
    v29 = v28 = errorCopy;
    [v27 setDesiredKeys:v29];

    v30 = [(TRICKNativeArtifactProvider *)self configurationFromOptions:v22];
    [v27 setConfiguration:v30];

    [v27 setPerRecordProgressBlock:v24];
    v39 = v19;
    v31 = v20;
    [v27 setPerRecordCompletionBlock:v20];
    [v27 setFetchRecordsCompletionBlock:v37];
    container = [(TRICKNativeArtifactProvider *)self container];
    publicCloudDatabase = [container publicCloudDatabase];
    [publicCloudDatabase addOperation:v27];

    errorCopy = v28;
    [(TRICancelableCKOperation *)v21 addOperation:v27];
    v34 = v21;

    progressCopy = v24;
    idsCopy = v42;

    successCopy = v41;
    objc_autoreleasePoolPop(context);

    completionCopy = v40;
    v19 = v39;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 4, MEMORY[0x277CBEC10], 0, 0);
    v35 = v19;
  }

  return v19;
}

void __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = TRILogCategory_Server();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Error receiving diffable asset record with CKRecord %{public}@: %{public}@", &v15, 0x16u);
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v7, v8, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277D73888]];
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Received diffable asset record with CKRecordID %{public}@, assetId %{public}@", &v15, 0x16u);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, v7, v8);
    }
  }
}

void __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_285(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (_isUserCancellation(v6, *(a1 + 32)))
  {
    (*(*(a1 + 56) + 16))();
  }

  else if (v6)
  {
    v7 = [*(a1 + 40) downloadOptions];
    v8 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:v6 options:v7];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2;
    v10[3] = &unk_279DDF498;
    v11 = v5;
    v12 = &v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
    (*(*(a1 + 56) + 16))(*(a1 + 56), 4, v14[5], 0);

    _Block_object_dispose(&v13, 8);
  }
}

void __158__TRICKNativeArtifactProvider_fetchDiffsWithRecordIds_options_perRecordProgress_perRecordCompletionBlockOnSuccess_perRecordCompletionBlockOnError_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = [v8 recordId];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [TRIAssetDiffArtifact artifactFromCKRecord:v11];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    if (v12)
    {
      [v14 setObject:v12 forKeyedSubscript:v7];
    }

    else
    {
      *(v13 + 40) = 0;

      *a4 = 1;
    }
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v8 recordId];
      v19 = 138412546;
      v20 = v18;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch CKRecordID %@ for asset diff with target assetId %{public}@", &v19, 0x16u);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    *a4 = 1;
  }
}

@end