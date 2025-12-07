@interface FlowAnalyticsEngine
+ (BOOL)appBundleIdentifierIsWebBrowser:(id)browser;
+ (id)appBundleIdentifierFromAuditToken:(id *)token;
+ (id)appBundleIdentifierFromBundleIdentifier:(id)identifier;
+ (id)queue;
+ (void)appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply;
+ (void)checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply;
+ (void)endRNFPeriod;
+ (void)identifierForUUID:(id)d replyQueue:(id)queue reply:(id)reply;
+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)reply;
+ (void)performAppExperiencePeriodicActivityWithReply:(id)reply;
+ (void)performAppPeriodicActivityWithReply:(id)reply;
+ (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply;
+ (void)performAppTrackingPeriodicActivityWithReply:(id)reply;
+ (void)recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply;
+ (void)summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply;
+ (void)workspaceSaveWithCallback:(id)callback;
- (BOOL)_appBundleIdentifierIsWebBrowser:(id)browser;
- (BOOL)_bundleBackgroundAudioCapable:(id)capable;
- (BOOL)_handlesFlowEntity:(id)entity;
- (BOOL)_handlesProcEntity:(id)entity;
- (BOOL)_isLiveFlowPerfinScope:(id)scope forTime:(id)time andTag:(id)tag;
- (BOOL)_isLiveUsageInRollingWindow:(id)window forTime:(id)time;
- (BOOL)_isLiveUsageinScope:(id)scope forTime:(id)time;
- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate;
- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate;
- (BOOL)_processNameIsValid:(id)valid;
- (BOOL)_requiresUserValidationPredicateForEntity:(id)entity;
- (BOOL)_setupLocalCache;
- (BOOL)_setupObjectAnalyticsWorkspaces:(id)workspaces;
- (BOOL)_setupSignalHandling;
- (BOOL)_shouldProcessDomainInfoForBundleID:(id)d implicit:(id *)implicit knownToLaunchServices:(BOOL *)services ignoredInLaunchServices:(BOOL *)launchServices isWebBrowser:(BOOL *)browser;
- (BOOL)_shouldSendStatisticsReport:(id)report;
- (BOOL)domainInfoProcessingForSnapshot:(id)snapshot process:(id)process attributedName:(id)name remoteAddress:(id)address isWebBrowser:(BOOL)browser;
- (BOOL)handlesEntity:(id)entity;
- (BOOL)isSnapshotFlowUUIDStored:(id)stored;
- (FlowAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue;
- (double)_usageFingerprintForBundleName:(id)name;
- (id)_appDomainUsageBy:(unsigned int)by bundleName:(id)name forDomain:(id)domain domainOwner:(id)owner domainType:(unsigned __int16)type domainClassification:(signed __int16)classification context:(id)context contextVerificationType:(unsigned __int16)self0 initiatedType:(unsigned int)self1;
- (id)_appEndpointsInProcess:(id)process;
- (id)_appExperienceForApp:(id)app forTime:(id)time;
- (id)_attemptConvertingPluginNameToContainingAppName:(id)name;
- (id)_fetchFromProcCacheWithName:(id)name ofType:(unsigned int)type;
- (id)_flowFetchForName:(id)name;
- (id)_has1stPartyImpliedBundleNameBehavior:(id)behavior;
- (id)_liveUsageFetchForProcess:(id)process;
- (id)_parseEvent:(id)event withGeneration:(id *)generation;
- (id)_processFetchForName:(id)name bundle:(id)bundle extension:(id)extension shouldFillMiss:(BOOL)miss;
- (id)_repurposeAppEndpointRecords:(id)records;
- (id)_trafficEnvelopeToTier:(double)tier;
- (id)createFlushInactiveLedgerTimer:(id)timer;
- (id)getOption:(id)option;
- (id)setOption:(id)option;
- (int)_performQueryOnEntityFromInstantFlowCache:(id)cache target:(id)target pred:(id)pred found:(id *)found;
- (int)_performQueryOnEntityFromProcCache:(id)cache target:(id)target pred:(id)pred found:(id *)found;
- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found;
- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)field forPredicate:(id)predicate;
- (unint64_t)_clearStaleAppEndpointRecords;
- (unint64_t)_clearStaleNetDomainsRecords;
- (unint64_t)_clearUninstalledAppEntries;
- (unint64_t)_liveUsageCountForProcess:(id)process subscriberTag:(id)tag;
- (unint64_t)_pruneAppExperienceRecords;
- (unint64_t)_submitAppDomainUsageRecordInfoAnalytics;
- (unint64_t)_submitAppEndpointRecordInfoAnalytics;
- (void)_algosScoreFor:(id)for score:(double)score;
- (void)_applyCountsTo:(id)to fromLiveUsage:(id)usage mustReset:(BOOL)reset;
- (void)_appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply;
- (void)_archiveAppEndpointsForUserId:(unsigned int)id bundleName:(id)name;
- (void)_archiveRecord:(id)record;
- (void)_calendarUsageForApp:(id)app givenLastRun:(id)run;
- (void)_changedForegroundState:(BOOL)state forBundle:(id)bundle;
- (void)_checkCellExcessUsageActions:(unint64_t)actions previous:(unint64_t)previous snapshot:(id)snapshot;
- (void)_checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply;
- (void)_clearAppDomainAndEndpointTrackingForUserWithID:(unsigned int)d;
- (void)_compactUsageForApp:(id)app intervalType:(int)type givenLastRun:(id)run;
- (void)_didReceiveSnapshot:(id)snapshot;
- (void)_dumpState;
- (void)_dumpSubFlowCounts;
- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)interface;
- (void)_endRNFPeriod;
- (void)_evalDomainTrackingDropOf:(id)of;
- (void)_fetchAppEndpointsRecordForUserId:(unsigned int)id bundleName:(id)name;
- (void)_generateFlowAnomalySymptom:(unsigned int)symptom currentUsage:(unint64_t)usage snapshot:(id)snapshot;
- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)_handleAppTrackingNotification:(id)notification;
- (void)_handleApplicationNotificationCompactForBundleName:(id)name edgeMode:(BOOL)mode;
- (void)_handleApplicationNotificationStateChangedForBundleName:(id)name edgeMode:(BOOL)mode intervalType:(int)type;
- (void)_handleEndpointTrackingNotification:(id)notification;
- (void)_handleSIGUSR1;
- (void)_handleSnapshot:(id)snapshot;
- (void)_handleSnapshotForDomains:(id)domains;
- (void)_initializeInternals;
- (void)_insertProcCache:(id)cache ofType:(unsigned int)type underName:(id)name;
- (void)_liveUsagePackForProcess:(id)process subscriberTag:(id)tag;
- (void)_logBitmapOutcome:(id)outcome;
- (void)_logExcessCellUsage:(int64_t)usage snapshot:(id)snapshot;
- (void)_newCoreMediaAssetDownloadEvent:(id)event;
- (void)_newExpectedTransfer:(id)transfer;
- (void)_newFlowData:(id)data;
- (void)_noteSizeableBackgroundTransferEvent:(id)event;
- (void)_performAppDomainUsageAnalytics;
- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)reply;
- (void)_performAppExperiencePeriodicTasksWithReply:(id)reply;
- (void)_performAppPeriodicTasksWithReply:(id)reply;
- (void)_performAppTrackingPeriodicTasksWithReply:(id)reply;
- (void)_pruneFlowHistory;
- (void)_recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply;
- (void)_refreshFullDataUsage;
- (void)_refreshFullDataUsageComplete;
- (void)_refreshFullDataUsageWithCallback:(id)callback;
- (void)_removeAllInfoForProcess:(id)process;
- (void)_removeFromProcCache:(id)cache ofType:(unsigned int)type;
- (void)_removeInfoFromWorkspaceForProcess:(id)process;
- (void)_removeOldFlowRecords;
- (void)_reportDomainTrackingDropFor:(id)for withCause:(unint64_t)cause detail:(id)detail;
- (void)_reportThresholdedFlowCount:(unint64_t)count threshold:(unint64_t)threshold;
- (void)_requestDetailedCellFlowMonitoring:(BOOL)monitoring;
- (void)_resolveAppEndpointsForUserId:(unsigned int)id bundleName:(id)name;
- (void)_saveAndUnloadSelectState;
- (void)_sendStatisticsReport:(id)report;
- (void)_setupDailyMaintenanceActivity;
- (void)_setupNotificationCenterAndRelayObservers;
- (void)_setupPrefsStoreObserving;
- (void)_startFlowMonitoring;
- (void)_startMonitoringNetworkInterface:(int)interface usingThreshold:(unint64_t)threshold;
- (void)_summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply;
- (void)_updateAppEndpoints:(id)endpoints type:(unint64_t)type userId:(unsigned int)id bundleName:(id)name flowClosing:(BOOL)closing;
- (void)_updateDeterminedTrackersFromAPICountForUserId:(unsigned int)id bundleName:(id)name increment:(unint64_t)increment;
- (void)_updateKnownCellularInterfaceIndexList:(int)list force:;
- (void)_updateLiveUsage:(id)usage wifiIn:(int64_t)in wifiOut:(int64_t)out cellIn:(int64_t)cellIn cellOut:(int64_t)cellOut wiredIn:(int64_t)wiredIn wiredOut:(int64_t)wiredOut btIn:(int64_t)self0 btOut:(int64_t)self1 xIn:(int64_t)self2 xOut:(int64_t)self3 isJumboFlow:(BOOL)self4 isExpensive:(BOOL)self5 closing:(BOOL)self6;
- (void)_updateTetheringUsage:(BOOL)usage;
- (void)clearAppDomainUsage:(id)usage;
- (void)clearAppDomainUsageForUserWithID:(unsigned int)d;
- (void)clearAppEndpoints:(id)endpoints;
- (void)clearAppEndpointsForUserWithID:(unsigned int)d;
- (void)createAppEndpointsStorageForUserId:(unsigned int)id;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)dealloc;
- (void)endpointMaintenanceOnClose:(id)close;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply;
- (void)handleLaunchServicesApplicationUnregistration:(id)unregistration;
- (void)identifierForUUID:(id)d queue:(id)queue reply:(id)reply;
- (void)logOutcomeArray:(id)array;
- (void)networkDomainResolution:(id)resolution;
- (void)networkDomainUserAppTrackingChanged:(id)changed;
- (void)networkDomainUserEndpointTrackingChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppExperiencePeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply;
- (void)performAppTrackingPeriodicTasksComplete:(id)complete error:(id)error;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0;
- (void)performThresholdingOn:(id)on forKey:(id)key andValue:(id)value connection:(id)connection createdBlock:(id *)block hitBlock:(id)hitBlock errorBlock:(id)errorBlock;
- (void)pollFlows;
- (void)postAWDMetric:(id)metric withIdentifier:(unsigned int)identifier;
- (void)postCAEvent:(id)event withName:(id)name;
- (void)processSnapshotForConnectionEstablishment:(id)establishment;
- (void)removeSnapshotFlowUUIDsForSourceKey:(id)key;
- (void)resetDataFor:(id)for nameKind:(id)kind;
- (void)sendPowerLogReport:(id)report isStart:(BOOL)start;
- (void)startObservingLaunchServices;
- (void)statsManager:(id)manager thresholdReachedOn:(unsigned int)on;
- (void)stopObservingLaunchServices;
- (void)storeSnapshotFlowUUID:(id)d forSourceKey:(id)key;
- (void)submitAppEndpointToDateSPICallMetric;
- (void)submitNetworkDomainUsageToDateSPICallMetric;
- (void)updateEffectiveUserId:(id)id;
- (void)workspaceSaveWithCallback:(id)callback;
@end

@implementation FlowAnalyticsEngine

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_118(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityState"];
  v5 = [v4 BOOLValue];

  v6 = [v3 objectForKeyedSubscript:@"kAppStateKeyForegroundActivityBundleName"];
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_119;
  block[3] = &unk_27898BE18;
  v8 = *(a1 + 32);
  v12 = v5;
  block[4] = v8;
  v11 = v6;
  v9 = v6;
  dispatch_async(v7, block);
}

- (void)pollFlows
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "pollFlows started", buf, 2u);
  }

  nstatManager = self->nstatManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __32__FlowAnalyticsEngine_pollFlows__block_invoke;
  v9[3] = &unk_27898C490;
  v9[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__FlowAnalyticsEngine_pollFlows__block_invoke_2;
  v8[3] = &unk_27898A0C8;
  v8[4] = self;
  v5 = [(NWStatsManager *)nstatManager refreshUsingBlock:v9 completionBlock:v8];
  if (v5)
  {
    v6 = v5;
    v7 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "pollFlows refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }
  }
}

uint64_t __32__FlowAnalyticsEngine_pollFlows__block_invoke_2(uint64_t a1)
{
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Netstats refresh complete", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 432);
  if (v3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v3 didPollFlowsAt:?];
  }

  return [CellOutrankHandler noteOutrankEvent:5];
}

+ (id)queue
{
  queue = sharedInstance_1;
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    v2 = vars8;
  }

  return queue;
}

- (void)_refreshFullDataUsage
{
  v23 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  lastFullRefreshTime = self->lastFullRefreshTime;
  if (lastFullRefreshTime && ([(NSDate *)lastFullRefreshTime timeIntervalSinceDate:date], fabs(v5) < 1.0))
  {
    v6 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = self->lastFullRefreshTime;
      *buf = 138412546;
      v20 = v7;
      v21 = 2048;
      v22 = 1;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Full data usage not refreshing because last refresh %@ was within %llu-second limit", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  if ([(NWStatsManager *)self->nstatManager statsRefreshCurrentUsage]== 3)
  {
    v9 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Full data usage skipped due to max use", buf, 2u);
    }

    goto LABEL_18;
  }

  if (!v8)
  {
LABEL_18:
    v16 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Unable to queue full data request, force completions", buf, 2u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsageComplete];
    goto LABEL_21;
  }

  objc_storeStrong(&self->lastFullRefreshTime, date);
  v10 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v11 = self->lastFullRefreshTime;
    *buf = 138412290;
    v20 = v11;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Full data usage refreshing now at %@", buf, 0xCu);
  }

  nstatManager = self->nstatManager;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke;
  v18[3] = &unk_27898C490;
  v18[4] = self;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke_2;
  v17[3] = &unk_27898A0C8;
  v17[4] = self;
  v13 = [(NWStatsManager *)nstatManager refreshUsingBlock:v18 completionBlock:v17];
  if (v13)
  {
    v14 = v13;
    v15 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "_refreshFullDataUsage refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsageComplete];
  }

  [(FlowAnalyticsEngine *)self _updateTetheringUsage:1];
LABEL_21:
}

- (void)_refreshFullDataUsageComplete
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    dataUsageRefreshCompletionNumWaiting = self->dataUsageRefreshCompletionNumWaiting;
    dataUsageRefreshCompletionBlock = self->dataUsageRefreshCompletionBlock;
    v6 = v3;
    v7 = _Block_copy(dataUsageRefreshCompletionBlock);
    v11[0] = 67109376;
    v11[1] = dataUsageRefreshCompletionNumWaiting;
    v12 = 2048;
    v13 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Data usage complete, queued %d, block %p", v11, 0x12u);
  }

  v8 = self->dataUsageRefreshCompletionBlock;
  if (v8)
  {
    v9 = _Block_copy(v8);
    v10 = self->dataUsageRefreshCompletionBlock;
    self->dataUsageRefreshCompletionBlock = 0;

    self->dataUsageRefreshCompletionNumWaiting = 0;
    v9[2](v9);
  }
}

uint64_t __44__FlowAnalyticsEngine__refreshFullDataUsage__block_invoke_2(uint64_t a1)
{
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "NetworkStatistics reports full refresh complete", v4, 2u);
  }

  [CellOutrankHandler noteOutrankEvent:5];
  return [*(a1 + 32) _refreshFullDataUsageComplete];
}

- (void)_saveAndUnloadSelectState
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(AnalyticsWorkspace *)self->super.workspace persistent])
  {
    [(AnalyticsWorkspace *)self->super.workspace save];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    registeredObjects = [mainObjectContext registeredObjects];
    v5 = [registeredObjects count];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke;
    v15[3] = &unk_27898C508;
    v15[4] = &v16;
    [registeredObjects enumerateObjectsUsingBlock:v15];
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = v17[3];
      *buf = 134218240;
      v21 = v5;
      v22 = 2048;
      v23 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "flowanalyticsengine: memory ratio all/fault: %lu/%lu", buf, 0x16u);
    }

    if (v5 > 4 * v17[3])
    {
      v8 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "flowanalyticsengine: memory threshold hit, expedited faulting process", buf, 2u);
      }

      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke_352;
      v13 = &unk_27898C530;
      v9 = mainObjectContext;
      v14 = v9;
      [registeredObjects enumerateObjectsUsingBlock:&v10];
      [v9 processPendingChanges];
    }

    _Block_object_dispose(&v16, 8);
  }
}

void *__48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isFault];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __48__FlowAnalyticsEngine__saveAndUnloadSelectState__block_invoke_352(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isFault] & 1) == 0)
  {
    [*(a1 + 32) refreshObject:v3 mergeChanges:0];
  }
}

- (FlowAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue
{
  workspaceCopy = workspace;
  paramsCopy = params;
  queueCopy = queue;
  v11 = queueCopy;
  selfCopy4 = 0;
  if (!workspaceCopy || !queueCopy)
  {
    goto LABEL_19;
  }

  v33.receiver = self;
  v33.super_class = FlowAnalyticsEngine;
  v13 = [(AnalyticsEngineCore *)&v33 initWithWorkspace:workspaceCopy params:paramsCopy queue:queueCopy];
  self = v13;
  if (!v13)
  {
LABEL_17:
    self = self;
    selfCopy4 = self;
    goto LABEL_19;
  }

  if (![(FlowAnalyticsEngine *)v13 _setupObjectAnalyticsWorkspaces:workspaceCopy])
  {
LABEL_18:
    selfCopy4 = 0;
    goto LABEL_19;
  }

  if (![(AnalyticsEngineCore *)self isHelper])
  {
    if ([(FlowAnalyticsEngine *)self _setupLocalCache])
    {
      v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
      pluginToBundleCache = self->pluginToBundleCache;
      self->pluginToBundleCache = v15;

      if (self->pluginToBundleCache)
      {
        v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
        audioBundleCache = self->audioBundleCache;
        self->audioBundleCache = v17;

        if (self->audioBundleCache)
        {
          v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
          webBrowserBundleCache = self->webBrowserBundleCache;
          self->webBrowserBundleCache = v19;

          if (self->webBrowserBundleCache)
          {
            v21 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
            flowWatchers = self->_flowWatchers;
            self->_flowWatchers = v21;

            if (self->_flowWatchers)
            {
              gEffectiveUserId = 501;
              queue = [(AnalyticsEngineCore *)self queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_2;
              block[3] = &unk_27898A0C8;
              selfCopy2 = self;
              v30 = selfCopy2;
              v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
              dispatch_async(queue, v25);

              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 3221225472;
              v27[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_3;
              v27[3] = &unk_27898A0C8;
              v28 = selfCopy2;
              if (initWithWorkspace_params_queue__pred != -1)
              {
                dispatch_once(&initWithWorkspace_params_queue__pred, v27);
              }

              goto LABEL_17;
            }
          }
        }
      }
    }

    goto LABEL_18;
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __54__FlowAnalyticsEngine_initWithWorkspace_params_queue___block_invoke;
  v31[3] = &unk_27898A0C8;
  selfCopy3 = self;
  v32 = selfCopy3;
  if (initWithWorkspace_params_queue__pred != -1)
  {
    dispatch_once(&initWithWorkspace_params_queue__pred, v31);
  }

  self = selfCopy3;

  selfCopy4 = self;
LABEL_19:

  return selfCopy4;
}

- (void)_initializeInternals
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = qos_class_self();
    *buf = 136315138;
    selfCopy = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "FAE _initializeInternals: QoS %s", buf, 0xCu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v6);
  v7 = [FlowRefreshScheduler alloc];
  queue = [(AnalyticsEngineCore *)self queue];
  v9 = [(FlowRefreshScheduler *)v7 initWithQueue:queue];
  refreshScheduler = self->refreshScheduler;
  self->refreshScheduler = v9;

  [(FlowRefreshScheduler *)self->refreshScheduler setDelegate:self];
  v11 = +[FlowScrutinizer sharedInstance];
  flowScrutinizer = self->flowScrutinizer;
  self->flowScrutinizer = v11;

  v13 = +[BitmapRetriever sharedInstance];
  bitmapRetriever = self->bitmapRetriever;
  self->bitmapRetriever = v13;

  queue2 = [(AnalyticsEngineCore *)self queue];
  v16 = [(FlowAnalyticsEngine *)self createFlushInactiveLedgerTimer:queue2];
  flushInactiveLedgerTimer = self->flushInactiveLedgerTimer;
  self->flushInactiveLedgerTimer = v16;

  queue3 = [(AnalyticsEngineCore *)self queue];
  [TrackedFlow setPolledFlowQueue:queue3];

  self->_greenTeaLogger = ct_green_tea_logger_create();
  [(FlowAnalyticsEngine *)self _setupSignalHandling];
  queue4 = [(AnalyticsEngineCore *)self queue];
  handler[5] = MEMORY[0x277D85DD0];
  handler[6] = 3221225472;
  handler[7] = __43__FlowAnalyticsEngine__initializeInternals__block_invoke;
  handler[8] = &unk_27898A820;
  handler[9] = self;
  self->logStateHandle = os_state_add_handler();

  [(FlowAnalyticsEngine *)self startObservingLaunchServices];
  v20 = objc_alloc(MEMORY[0x277D2CA90]);
  queue5 = [(AnalyticsEngineCore *)self queue];
  v22 = [v20 initWithQueue:queue5];
  nstatManager = self->nstatManager;
  self->nstatManager = v22;

  v24 = self->nstatManager;
  if (v24)
  {
    [(NWStatsManager *)v24 setDelegate:self];
    self->_nrFrequencyBand = -1;
    queue6 = [(AnalyticsEngineCore *)self queue];
    v26 = +[WiFiThroughputAdviser sharedInstance];
    [v26 setQueue:queue6];

    queue7 = [(AnalyticsEngineCore *)self queue];
    [AppTracker setInternalQueue:queue7];

    v28 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "Configuring FAE<%p> as the network domain delegate", buf, 0xCu);
    }

    v29 = +[NetDomainsHandler sharedInstance];
    [v29 setNetworkDomainDelegate:self];

    [(FlowAnalyticsEngine *)self _setupNotificationCenterAndRelayObservers];
    queue8 = [(AnalyticsEngineCore *)self queue];
    v31 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue8);
    flushOldFlowRecordsTimer = self->flushOldFlowRecordsTimer;
    self->flushOldFlowRecordsTimer = v31;

    v33 = self->flushOldFlowRecordsTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__FlowAnalyticsEngine__initializeInternals__block_invoke_75;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v33, handler);
    v34 = self->flushOldFlowRecordsTimer;
    v35 = dispatch_time(0, 604800000000000);
    dispatch_source_set_timer(v34, v35, 0x2260FF9290000uLL, 0x3B9ACA00uLL);
    dispatch_resume(self->flushOldFlowRecordsTimer);
    [(FlowAnalyticsEngine *)self _setupDailyMaintenanceActivity];
    [(FlowAnalyticsEngine *)self setDelegateToProxyAnalytics:1];
    objc_initWeak(&location, self);
    v50 = MEMORY[0x277D85DD0];
    v51 = 3221225472;
    v52 = __43__FlowAnalyticsEngine__initializeInternals__block_invoke_2;
    v53 = &unk_27898C3B0;
    objc_copyWeak(&v54, &location);
    [(AnalyticsWorkspace *)self->super.workspace setResetCompletionBlock:&v50];
    self->usageCoalescingSpanSecs = 1209600;
    self->usageWindowUnitsCount = 3;
    self->outcomeArrayLogEntryCount = 10;
    [(FlowAnalyticsEngine *)self _setupPrefsStoreObserving:v50];
    [ManagedEventTransport setInfoProvider:self forId:12];
    [ManagedEventTransport setInfoProvider:self forId:15];
    [ManagedEventTransport setInfoProvider:self forId:18];
    [ManagedEventTransport setInfoProvider:self forId:19];
    v36 = +[SystemProperties sharedInstance];
    if ([v36 basebandCapability])
    {
      v37 = +[CoreTelephonyShim sharedInstance];
      ctShim = self->ctShim;
      self->ctShim = v37;
    }

    v39 = +[AppStateMonitor sharedInstance];
    queue9 = [(AnalyticsEngineCore *)self queue];
    [v39 setQueue:queue9];

    [v39 enable];
    v41 = +[SystemSettingsRelay defaultRelay];
    if ([v41 taggedInfoFeatureFlagEnabled])
    {
      v42 = +[BasebandFlowChecker sharedInstance];
      queue10 = [(AnalyticsEngineCore *)self queue];
      [v42 setQueue:queue10];

      [v42 activate];
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v42;
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "FAE: system has taggedInfo feature flag enabled, bbFlowChecker is %@", buf, 0xCu);
      }
    }

    else
    {
      v46 = analyticsLogHandle;
      v45 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v45)
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEFAULT, "FAE: system has taggedInfo feature flag disabled", buf, 2u);
      }
    }

    v47 = measureLaunchXPCHandle(v45);
    if (os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23255B000, v47, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FlowAnalyticsEngineInitialized", "FlowAnalyticsEngine completed initialization", buf, 2u);
    }

    markMeasurement(2, 9);
    submitAllMeasurementsToCA();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = @"ObjectKey";
    selfCopy2 = self;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy2 forKeys:&v57 count:1];
    [defaultCenter postNotificationName:@"kNotificationOfCompletedInitialization" object:self userInfo:v49];

    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }
}

void __43__FlowAnalyticsEngine__initializeInternals__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: FlowAnalyticsEngine: invalidating local caches", v3, 2u);
  }

  [WeakRetained _setupLocalCache];
}

- (BOOL)_setupObjectAnalyticsWorkspaces:(id)workspaces
{
  v4 = [objc_alloc(MEMORY[0x277D6B508]) initWithWorkspace:self->super.workspace withCache:0];
  aspace = self->aspace;
  self->aspace = v4;

  if (!self->aspace)
  {
    return 0;
  }

  v6 = objc_alloc(MEMORY[0x277D6B540]);
  workspace = self->super.workspace;
  entityName = [MEMORY[0x277D6B568] entityName];
  v9 = [v6 initWithWorkspace:workspace entityName:entityName withCache:0];
  domspace = self->domspace;
  self->domspace = v9;

  v11 = objc_alloc(MEMORY[0x277D6B540]);
  v12 = self->super.workspace;
  entityName2 = [MEMORY[0x277D6B570] entityName];
  v14 = [v11 initWithWorkspace:v12 entityName:entityName2 withCache:0];
  epspace = self->epspace;
  self->epspace = v14;

  self->domainUsageBucketDuration = 60.0;
  v16 = objc_alloc(MEMORY[0x277D6B540]);
  v17 = self->super.workspace;
  entityName3 = [MEMORY[0x277D6B578] entityName];
  v19 = [v16 initWithWorkspace:v17 entityName:entityName3 withCache:0];
  expspace = self->expspace;
  self->expspace = v19;

  if ([(AnalyticsEngineCore *)self isHelper])
  {
    return 1;
  }

  v22 = [objc_alloc(MEMORY[0x277D6B5B8]) initWithWorkspace:self->super.workspace withCache:0];
  uspace = self->uspace;
  self->uspace = v22;

  if (!self->uspace)
  {
    return 0;
  }

  v24 = [objc_alloc(MEMORY[0x277D6B550]) initWithWorkspace:self->super.workspace withCache:0];
  pspace = self->pspace;
  self->pspace = v24;

  if (!self->pspace)
  {
    return 0;
  }

  v26 = objc_alloc(MEMORY[0x277D6B540]);
  v27 = self->super.workspace;
  entityName4 = [MEMORY[0x277D6B560] entityName];
  v29 = [v26 initWithWorkspace:v27 entityName:entityName4 withCache:0];
  calspace = self->calspace;
  self->calspace = v29;

  if (!self->calspace)
  {
    return 0;
  }

  v31 = objc_alloc(MEMORY[0x277D6B540]);
  v32 = self->super.workspace;
  entityName5 = [MEMORY[0x277D6B590] entityName];
  v34 = [v31 initWithWorkspace:v32 entityName:entityName5 withCache:0];
  fspace = self->fspace;
  self->fspace = v34;

  if (!self->fspace)
  {
    return 0;
  }

  v36 = objc_alloc(MEMORY[0x277D6B540]);
  v37 = self->super.workspace;
  entityName6 = [MEMORY[0x277D6B598] entityName];
  v39 = [v36 initWithWorkspace:v37 entityName:entityName6 withCache:0];
  lfpspace = self->lfpspace;
  self->lfpspace = v39;

  return self->lfpspace != 0;
}

- (id)createFlushInactiveLedgerTimer:(id)timer
{
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, timer);
  dispatch_source_set_timer(v4, 0, 0xD18C2E2800uLL, 0x5F5E100uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__FlowAnalyticsEngine_createFlushInactiveLedgerTimer___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v4, handler);
  dispatch_resume(v4);

  return v4;
}

void __54__FlowAnalyticsEngine_createFlushInactiveLedgerTimer___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = machAbsoluteTime_secs();
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 408);
    v6 = 134218240;
    v7 = v2;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Begin periodic flushing of bitmaps and ledgers at mach time %lld, scrutinizer %p", &v6, 0x16u);
  }

  [*(*(a1 + 32) + 408) flushInactiveLedgersAtMachAbsTime:v2];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "End periodic flushing of bitmaps and ledgers", &v6, 2u);
  }
}

- (void)_handleSIGUSR1
{
  [(FlowAnalyticsEngine *)self _performAppDomainUsageAnalytics];
  if ([(FlowAnalyticsEngine *)self delegateToProxyAnalytics])
  {
    proxyAnalytics = [(FlowAnalyticsEngine *)self proxyAnalytics];

    if (!proxyAnalytics)
    {
      v4 = objc_opt_new();
      [(FlowAnalyticsEngine *)self setProxyAnalytics:v4];

      proxyAnalytics2 = [(FlowAnalyticsEngine *)self proxyAnalytics];
      [proxyAnalytics2 setDelegate:self];
    }

    proxyAnalytics3 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics3 performAppPeriodicTasks];

    proxyAnalytics4 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics4 performAppTrackingPeriodicTasks];

    proxyAnalytics5 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics5 performAppEndpointTrackingPeriodicTasks];

    proxyAnalytics6 = [(FlowAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics6 performAppExperiencePeriodicTasks];
  }

  else
  {
    [(FlowAnalyticsEngine *)self _performAppPeriodicTasksWithReply:&__block_literal_global_14];
    [(FlowAnalyticsEngine *)self _performAppTrackingPeriodicTasksWithReply:&__block_literal_global_98];
    [(FlowAnalyticsEngine *)self _performAppEndpointTrackingPeriodicTasksWithReply:&__block_literal_global_101_0];

    [(FlowAnalyticsEngine *)self _performAppExperiencePeriodicTasksWithReply:&__block_literal_global_104_0];
  }
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = analyticsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_96(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app endpoint tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app endpoint tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __37__FlowAnalyticsEngine__handleSIGUSR1__block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = appExperienceLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app experience tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app experience tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

- (BOOL)_setupSignalHandling
{
  signal(30, 1);
  queue = [(AnalyticsEngineCore *)self queue];
  v4 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, queue);
  v5 = _setupSignalHandling_sigusr1;
  _setupSignalHandling_sigusr1 = v4;

  if (_setupSignalHandling_sigusr1)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __43__FlowAnalyticsEngine__setupSignalHandling__block_invoke;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(_setupSignalHandling_sigusr1, handler);
    dispatch_resume(_setupSignalHandling_sigusr1);
  }

  signal(29, 1);
  queue2 = [(AnalyticsEngineCore *)self queue];
  v7 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, queue2);
  siginfo = self->siginfo;
  self->siginfo = v7;

  v9 = self->siginfo;
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__FlowAnalyticsEngine__setupSignalHandling__block_invoke_2;
    v11[3] = &unk_27898A0C8;
    v11[4] = self;
    dispatch_source_set_event_handler(v9, v11);
    dispatch_resume(self->siginfo);
  }

  return 1;
}

- (void)_setupNotificationCenterAndRelayObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke;
  v38[3] = &unk_27898A690;
  v38[4] = self;
  v4 = [defaultCenter addObserverForName:@"kNotificationCellTrafficClassReportCapable" object:0 queue:0 usingBlock:v38];
  cellTCCapabilityObserver = self->cellTCCapabilityObserver;
  self->cellTCCapabilityObserver = v4;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_107;
  v37[3] = &unk_27898A690;
  v37[4] = self;
  v6 = [defaultCenter addObserverForName:@"kNotificationCellThroughputAdvisoryCapable" object:0 queue:0 usingBlock:v37];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = v6;

  v8 = +[SystemSettingsRelay defaultRelay];
  [v8 addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_118;
  v36[3] = &unk_27898A690;
  v36[4] = self;
  v9 = [defaultCenter addObserverForName:@"kAppStateStatsNotificationAppForegroundStateChanged" object:0 queue:0 usingBlock:v36];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = v9;

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3;
  v35[3] = &unk_27898A690;
  v35[4] = self;
  v11 = [defaultCenter addObserverForName:@"UMSwitch" object:0 queue:0 usingBlock:v35];
  userSwitchObserver = self->userSwitchObserver;
  self->userSwitchObserver = v11;

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_122;
  v34[3] = &unk_27898A690;
  v34[4] = self;
  v13 = [defaultCenter addObserverForName:@"AlgosScore" object:0 queue:0 usingBlock:v34];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = v13;

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4;
  v33[3] = &unk_27898A690;
  v33[4] = self;
  v15 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v33];
  relayReadyObserver = self->relayReadyObserver;
  self->relayReadyObserver = v15;

  self->trackedFlowCountSincePrimaryInterfaceChanged = -1;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_131;
  v32[3] = &unk_27898A690;
  v32[4] = self;
  v17 = [defaultCenter addObserverForName:@"kNotificationOfTetheringState" object:0 queue:0 usingBlock:v32];
  tetherObserver = self->tetherObserver;
  self->tetherObserver = v17;

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_133;
  v31[3] = &unk_27898A690;
  v31[4] = self;
  v19 = [defaultCenter addObserverForName:@"kNotificationFlowStats" object:0 queue:0 usingBlock:v31];
  flowObserver = self->flowObserver;
  self->flowObserver = v19;

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_135;
  v30[3] = &unk_27898A690;
  v30[4] = self;
  v21 = [defaultCenter addObserverForName:@"kNotificationExpectedTransfer" object:0 queue:0 usingBlock:v30];
  transferSizeObserver = self->transferSizeObserver;
  self->transferSizeObserver = v21;

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5_137;
  v29[3] = &unk_27898A690;
  v29[4] = self;
  v23 = [defaultCenter addObserverForName:@"kNotificationCoreMediaAssetDownload" object:0 queue:0 usingBlock:v29];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = v23;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_139;
  v28[3] = &unk_27898A690;
  v28[4] = self;
  v25 = [defaultCenter addObserverForName:@"kNotificationDASOversizeLoad" object:0 queue:0 usingBlock:v28];
  sizeableBackgroundTransferObserver = self->sizeableBackgroundTransferObserver;
  self->sizeableBackgroundTransferObserver = v25;

  v27 = +[PowerStateRelay defaultRelay];
  [v27 addObserver:self forKeyPath:@"screenNotDark" options:7 context:0];
  [v27 addObserver:self forKeyPath:@"screenUnlocked" options:7 context:0];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"State"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = analyticsLogHandle;
  v3 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v1 == 1)
  {
    if (v3)
    {
      v8 = 0;
      v4 = "set AppTracker trackCellular";
      v5 = &v8;
LABEL_6:
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, v4, v5, 2u);
    }
  }

  else if (v3)
  {
    LOWORD(v7) = 0;
    v4 = "remove AppTracker trackCellular";
    v5 = &v7;
    goto LABEL_6;
  }

  return [AppTracker setTrackCellular:v1, v7];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_107(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"State"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_108;
  v7[3] = &unk_27898A3A0;
  v7[4] = *(a1 + 32);
  v8 = v5;
  dispatch_async(v6, v7);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_108(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 368))
  {
    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Creating cellThroughputAdviser", buf, 2u);
    }

    v3 = [CellThroughputAdviserEnvironment alloc];
    v4 = [*(a1 + 32) queue];
    v5 = [(CellThroughputAdviserEnvironment *)v3 initWithQueue:v4];

    v6 = [(CellThroughputAdviserEnvironment *)v5 cellThroughputAdviser];
    v7 = *(a1 + 32);
    v8 = *(v7 + 368);
    *(v7 + 368) = v6;

    [(CellThroughputAdviserEnvironment *)v5 monitorSDMActivations:*(a1 + 40)];
    v9 = *(a1 + 32);
    if (v9[47])
    {
      v10 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 376);
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Override throughput advice parameters with %{public}@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 368) configureInstance:*(*(a1 + 32) + 376)];
      v12 = *(a1 + 32);
      v13 = *(v12 + 376);
      *(v12 + 376) = 0;

      v9 = *(a1 + 32);
    }

    v14 = [v9 queue];
    [*(*(a1 + 32) + 368) setQueue:v14];

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 32) + 368) setIsScreenDark:*(*(a1 + 32) + 520)];
    [*(*(a1 + 32) + 368) setIsScreenLocked:*(*(a1 + 32) + 536)];
    [*(*(a1 + 32) + 368) setNrFrequencyBand:*(*(a1 + 32) + 537)];
    [*(*(a1 + 32) + 368) setDelegate:?];
    v15 = [*(a1 + 32) queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_114;
    v21[3] = &unk_27898A0C8;
    v21[4] = *(a1 + 32);
    [(PeriodicMaintenanceActivity *)SemiDailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"SymptomsCellularSDM.MetricReporting" queue:v15 activity:v21];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
  v16 = *(a1 + 40);
  v17 = analyticsLogHandle;
  v18 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v16 == 1)
  {
    if (v18)
    {
      *buf = 0;
      v19 = "FAE cellThroughputAdviser enabled";
LABEL_14:
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
    }
  }

  else if (v18)
  {
    *buf = 0;
    v19 = "FAE cellThroughputAdviser disabled";
    goto LABEL_14;
  }

  [*(*(a1 + 32) + 368) setEnabled:v16];
  return [*(a1 + 32) _requestDetailedCellFlowMonitoring:v16];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__5;
  v9[4] = __Block_byref_object_dispose__5;
  v10 = os_transaction_create();
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_121;
  block[3] = &unk_27898C418;
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v9;
  v5 = v3;
  dispatch_async(v4, block);

  _Block_object_dispose(v9, 8);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_121(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userInfo];
  [v2 clearAppDomainUsage:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) userInfo];
  [v4 clearAppEndpoints:v5];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) userInfo];
  [v8 updateEffectiveUserId:v9];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_122(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"AlgosScoreBundleName"];
  v5 = [v3 objectForKeyedSubscript:@"AlgosScoreValue"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_123;
  block[3] = &unk_27898BFA0;
  block[4] = *(a1 + 32);
  v11 = v4;
  v12 = v7;
  v9 = v4;
  dispatch_async(v8, block);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 464)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 464);
  *(v3 + 464) = 0;

  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5;
  block[3] = &unk_27898A0C8;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

uint64_t __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5(uint64_t a1)
{
  v2 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "kNotificationStateRelayReady received", buf, 2u);
  }

  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = *(a1 + 32);
  v5 = *(v4 + 672);
  *(v4 + 672) = v3;

  v6 = *(*(a1 + 32) + 672);
  if (v6)
  {
    [v6 addObserver:? forKeyPath:? options:? context:?];
    [*(*(a1 + 32) + 672) addObserver:*(a1 + 32) forKeyPath:@"nrFrequencyBand" options:7 context:0];
  }

  else
  {
    v7 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "failed to procure cell state relay at kNotificationStateRelayReady in FAE", v15, 2u);
    }
  }

  v8 = [NetworkStateRelay getStateRelayFor:3];
  v9 = *(a1 + 32);
  v10 = *(v9 + 680);
  *(v9 + 680) = v8;

  v11 = *(*(a1 + 32) + 680);
  if (v11)
  {
    [v11 addObserver:? forKeyPath:? options:? context:?];
  }

  else
  {
    v12 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "failed to procure Wi-Fi state relay at kNotificationStateRelayReady in FAE", v14, 2u);
    }
  }

  return [*(a1 + 32) _startFlowMonitoring];
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_132;
  v7[3] = &unk_27898A7D0;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_132(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"State"];
  v4 = [v3 BOOLValue];

  if (*(*(a1 + 40) + 304) != v4)
  {
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 40) + 304);
      v7[0] = 67109376;
      v7[1] = v6;
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "tether state was %d, is now: %d", v7, 0xEu);
    }

    [*(a1 + 40) _updateTetheringUsage:0];
    *(*(a1 + 40) + 304) = v4;
  }
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_133(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_134;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_135(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_4_136;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_5_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "FAE received kNotificationCoreMediaAssetDownload", buf, 2u);
  }

  v5 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_138;
  v7[3] = &unk_27898A7D0;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_2_139(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__FlowAnalyticsEngine__setupNotificationCenterAndRelayObservers__block_invoke_3_140;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (void)_setupDailyMaintenanceActivity
{
  objc_initWeak(&location, self);
  queue = [(AnalyticsEngineCore *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke;
  v4[3] = &unk_27898C3B0;
  objc_copyWeak(&v5, &location);
  [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"FAEngine.Daily" queue:queue activity:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _performAppDomainUsageAnalytics];
    if ([WeakRetained delegateToProxyAnalytics])
    {
      v1 = [WeakRetained proxyAnalytics];

      if (!v1)
      {
        v2 = objc_opt_new();
        [WeakRetained setProxyAnalytics:v2];

        v3 = [WeakRetained proxyAnalytics];
        [v3 setDelegate:WeakRetained];
      }

      v4 = [WeakRetained proxyAnalytics];
      [v4 performAppPeriodicTasks];

      v5 = [WeakRetained proxyAnalytics];
      [v5 performAppTrackingPeriodicTasks];

      v6 = [WeakRetained proxyAnalytics];
      [v6 performAppEndpointTrackingPeriodicTasks];

      v7 = [WeakRetained proxyAnalytics];
      [v7 performAppExperiencePeriodicTasks];
    }

    else
    {
      [WeakRetained _performAppPeriodicTasksWithReply:&__block_literal_global_153];
      [WeakRetained _performAppTrackingPeriodicTasksWithReply:&__block_literal_global_156];
      [WeakRetained _performAppEndpointTrackingPeriodicTasksWithReply:&__block_literal_global_159];
      [WeakRetained _performAppExperiencePeriodicTasksWithReply:&__block_literal_global_162];
    }
  }
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = analyticsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_154(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = domainTrackingLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app endpoint tracking tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app endpoint tracking tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void __53__FlowAnalyticsEngine__setupDailyMaintenanceActivity__block_invoke_160(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = appExperienceLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v5;
      v7 = "Periodic app experience tasks failed with %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    v7 = "Periodic app experience tasks finished with %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

- (void)_setupPrefsStoreObserving
{
  shared_prefs_store = get_shared_prefs_store();
  if (shared_prefs_store)
  {
    v4 = shared_prefs_store;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke;
    v13[3] = &unk_27898A0A0;
    v13[4] = self;
    prefs_add_client(shared_prefs_store, "verbose_bitmap_logging", v13);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_166;
    v12[3] = &unk_27898A0A0;
    v12[4] = self;
    prefs_add_client(v4, "usage_coalescing_span_secs", v12);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_168;
    v11[3] = &unk_27898A0A0;
    v11[4] = self;
    prefs_add_client(v4, "usage_window_units", v11);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_170;
    v10[3] = &unk_27898A0A0;
    v10[4] = self;
    prefs_add_client(v4, "usage_foreground_background_mode", v10);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_174;
    v9[3] = &unk_27898A0A0;
    v9[4] = self;
    prefs_add_client(v4, "usage_calendar_mode", v9);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_176;
    v8[3] = &unk_27898A0A0;
    v8[4] = self;
    prefs_add_client(v4, "query_outcome_log_count", v8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_178;
    v7[3] = &unk_27898A0A0;
    v7[4] = self;
    prefs_add_client(v4, "domain_bucket_duration_secs", v7);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_180;
    v6[3] = &unk_27898A0A0;
    v6[4] = self;
    prefs_add_client(v4, "netstats_trace_file", v6);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_184;
    v5[3] = &unk_27898A0A0;
    v5[4] = self;
    prefs_add_client(v4, "cell_sdm_advice_params", v5);
  }
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (MEMORY[0x238389170](v4) == MEMORY[0x277D86448])
    {
      *(*(a1 + 32) + 634) = xpc_BOOL_get_value(v5);
      v6 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(*(a1 + 32) + 634);
        v8[0] = 67109120;
        v8[1] = v7;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Setting verbose bitmap logging to %d", v8, 8u);
      }
    }
  }
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_166(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = value;
    v12 = *(a1 + 32);
    if (value < 1)
    {
      *(v12 + 608) = 1209600;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134218240;
      v16 = v11;
      v17 = 1024;
      v18 = 1209600;
      v7 = "Setting new coalescing span (%lld) failed. Resetting to default value (%d)";
      v8 = v14;
      v9 = 18;
    }

    else
    {
      *(v12 + 608) = value;
      v13 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134217984;
      v16 = v11;
      v7 = "Setting new coalescing span (%lld)";
      v8 = v13;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 608) = 1209600;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 67109120;
    LODWORD(v16) = 1209600;
    v7 = "Setting new nil coalescing span. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v15, v9);
  }

LABEL_6:
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_168(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = value;
    v12 = *(a1 + 32);
    if (value < 1)
    {
      *(v12 + 616) = 3;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134218240;
      v16 = v11;
      v17 = 1024;
      v18 = 3;
      v7 = "Setting new usage window units (%lld) failed. Resetting to default value (%d)";
      v8 = v14;
      v9 = 18;
    }

    else
    {
      *(v12 + 616) = value;
      v13 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134217984;
      v16 = v11;
      v7 = "Setting new usage window units (%lld)";
      v8 = v13;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 616) = 3;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 67109120;
    LODWORD(v16) = 3;
    v7 = "Setting new nil usage window units. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v15, v9);
  }

LABEL_6:
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_170(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v5);
  [*(a1 + 32) setHaveTypicalUsage:v6];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = "FALSE";
    if (v6)
    {
      v8 = "TRUE";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Setting usage_foreground_background_mode to: %s", &v9, 0xCu);
  }
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_174(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v5);
  [*(a1 + 32) setHaveCalendar:v6];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = "FALSE";
    if (v6)
    {
      v8 = "TRUE";
    }

    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Setting usage_calendar_mode to: %s", &v9, 0xCu);
  }
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_176(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = value;
    v12 = *(a1 + 32);
    if (value < 1)
    {
      *(v12 + 624) = 10;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134218240;
      v16 = v11;
      v17 = 1024;
      v18 = 10;
      v7 = "Setting new outcome array log entry count (%lld) failed. Resetting to default value (%d)";
      v8 = v14;
      v9 = 18;
    }

    else
    {
      *(v12 + 624) = value;
      v13 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_6;
      }

      v15 = 134217984;
      v16 = v11;
      v7 = "Setting new outcome array log entry count (%lld)";
      v8 = v13;
      v9 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 624) = 10;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 67109120;
    LODWORD(v16) = 10;
    v7 = "Setting new nil outcome array log entry count. Setting to default value instead (%d)";
    v8 = v6;
    v9 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v7, &v15, v9);
  }

LABEL_6:
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_178(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v12 = value;
    if (value < 1)
    {
      *(*(a1 + 32) + 600) = 0x404E000000000000;
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v15 = 134218240;
      v16 = v12;
      v17 = 1024;
      v18 = 60;
      v7 = "Setting new domain_bucket_duration_secs (%lld) failed. Resetting to default value (%d)";
      v8 = v14;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 18;
    }

    else
    {
      *(*(a1 + 32) + 600) = value;
      v13 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v15 = 134217984;
      v16 = v12;
      v7 = "Setting new domain_bucket_duration_secs (%lld)";
      v8 = v13;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 12;
    }

    goto LABEL_5;
  }

  *(*(a1 + 32) + 600) = 0x404E000000000000;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v15 = 67109120;
    LODWORD(v16) = 60;
    v7 = "Setting new nil domain_bucket_duration_secs. Setting to default value instead (%d)";
    v8 = v6;
    v9 = OS_LOG_TYPE_DEBUG;
    v10 = 8;
LABEL_5:
    _os_log_impl(&dword_23255B000, v8, v9, v7, &v15, v10);
  }

LABEL_6:
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_180(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || MEMORY[0x238389170](v4) != MEMORY[0x277D864C0])
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
  v12 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Processing netstats_trace_file base name %@", buf, 0xCu);
  }

  if (![v11 length])
  {

LABEL_3:
    v6 = *(a1 + 32);
    if (*(v6 + 216) >= 1)
    {
      v7 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(a1 + 32) + 208);
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Processing close of netstats_trace_file, old basename was %@", buf, 0xCu);
      }

      v9 = *(a1 + 32);
      if (*(v9 + 192) == 1)
      {
        v25 = *MEMORY[0x277D2CBC0];
        v26 = &unk_2847EF6C8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        [*(*(a1 + 32) + 184) configure:v10];
      }

      else
      {
        close(*(v9 + 216));
      }

      *(*(a1 + 32) + 216) = 0;
      v6 = *(a1 + 32);
    }

    v11 = *(v6 + 208);
    *(v6 + 208) = 0;
    goto LABEL_11;
  }

  if ([v11 isAbsolutePath])
  {
    v13 = *(*(a1 + 32) + 208);
    if (!v13 || ([v13 isEqualToString:v11] & 1) == 0)
    {
      v14 = [MEMORY[0x277CBEAA8] date];
      [v14 timeIntervalSince1970];
      v16 = formattedDateStringForTimeInterval(v15);
      v17 = [v11 stringByAppendingString:v16];

      v18 = *(a1 + 32);
      v19 = *(v18 + 216);
      if (v19 >= 1 && (*(v18 + 192) & 1) == 0)
      {
        close(v19);
      }

      *(*(a1 + 32) + 216) = open([v17 UTF8String], 1538, 438);
      v20 = analyticsLogHandle;
      if ((*(*(a1 + 32) + 216) & 0x80000000) != 0)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Unable to open netstats_trace_file, full name %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Opened netstats_trace_file, full name %@", buf, 0xCu);
        }

        objc_storeStrong((*(a1 + 32) + 208), v11);
        v21 = *(a1 + 32);
        if (*(v21 + 192) == 1)
        {
          v27 = *MEMORY[0x277D2CBC0];
          v22 = [MEMORY[0x277CCABB0] numberWithInt:*(v21 + 216)];
          v28 = v22;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

          [*(*(a1 + 32) + 184) configure:v23];
        }
      }
    }
  }

  else
  {
    v24 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "netstats_trace_file path not absolute, %@", buf, 0xCu);
    }
  }

LABEL_11:
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_184(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_2;
  v8[3] = &unk_27898A7D0;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void __48__FlowAnalyticsEngine__setupPrefsStoreObserving__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && MEMORY[0x238389170]() == MEMORY[0x277D86468])
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Processing cell_sdm_advice_params %@", buf, 0xCu);
    }

    v5 = *(*(a1 + 40) + 368);
    if (!v5)
    {
      v7 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "No cellThroughputAdviser to configure", buf, 2u);
      }

      objc_storeStrong((*(a1 + 40) + 376), v4);
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(*(a1 + 40) + 368))
    {
      return;
    }

    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Restoring cell_sdm_advice_params to default values", buf, 2u);
    }

    v3 = *(*(a1 + 40) + 368);
    v8 = @"restoreDefaults";
    v9 = MEMORY[0x277CBEC38];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = v3;
  }

  [v5 configureInstance:v4];
LABEL_11:
}

- (void)_requestDetailedCellFlowMonitoring:(BOOL)monitoring
{
  monitoringCopy = monitoring;
  [(FlowScrutinizer *)self->flowScrutinizer assetDownloadScrutinyOnBehalfOf:@"SDM" required:monitoring];
  [(FlowScrutinizer *)self->flowScrutinizer expectedTransferScrutinyOnBehalfOf:@"SDM" required:monitoringCopy];
  flowScrutinizer = self->flowScrutinizer;

  [(FlowScrutinizer *)flowScrutinizer cellFlowScrutinyOnBehalfOf:@"SDM" required:monitoringCopy];
}

- (void)_startFlowMonitoring
{
  v29[23] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:3072];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:49152];
  v5 = MEMORY[0x277CBEC38];
  v6 = *MEMORY[0x277D2CC10];
  v28[0] = *MEMORY[0x277D2CBE8];
  v28[1] = v6;
  v29[0] = MEMORY[0x277CBEC38];
  v29[1] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D2CBF0];
  v28[2] = *MEMORY[0x277D2CC18];
  v28[3] = v7;
  v29[2] = MEMORY[0x277CBEC38];
  v29[3] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277D2CC08];
  v28[4] = *MEMORY[0x277D2CBF8];
  v28[5] = v8;
  v29[4] = MEMORY[0x277CBEC38];
  v29[5] = MEMORY[0x277CBEC38];
  v9 = *MEMORY[0x277D2CBE0];
  v28[6] = *MEMORY[0x277D2CC00];
  v28[7] = v9;
  v29[6] = MEMORY[0x277CBEC38];
  v29[7] = v3;
  v10 = *MEMORY[0x277D2CC38];
  v28[8] = *MEMORY[0x277D2CBD0];
  v28[9] = v10;
  v29[8] = MEMORY[0x277CBEC38];
  v29[9] = MEMORY[0x277CBEC38];
  v11 = *MEMORY[0x277D2CC30];
  v28[10] = *MEMORY[0x277D2CC20];
  v28[11] = v11;
  v29[10] = MEMORY[0x277CBEC38];
  v29[11] = MEMORY[0x277CBEC38];
  v12 = *MEMORY[0x277D2CBD8];
  v28[12] = *MEMORY[0x277D2CC28];
  v28[13] = v12;
  v29[12] = MEMORY[0x277CBEC38];
  v29[13] = v4;
  v13 = *MEMORY[0x277D2CBB0];
  v28[14] = *MEMORY[0x277D2CB80];
  v28[15] = v13;
  v29[14] = MEMORY[0x277CBEC38];
  v29[15] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277D2CB98];
  v28[16] = *MEMORY[0x277D2CBA0];
  v28[17] = v14;
  v29[16] = MEMORY[0x277CBEC38];
  v29[17] = MEMORY[0x277CBEC38];
  v28[18] = *MEMORY[0x277D2CBA8];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"terminusd", 0}];
  v16 = *MEMORY[0x277D2CB88];
  v29[18] = v15;
  v29[19] = v5;
  v17 = *MEMORY[0x277D2CB90];
  v28[19] = v16;
  v28[20] = v17;
  v18 = *MEMORY[0x277D2CBC8];
  v29[20] = v5;
  v29[21] = &unk_2847EFE00;
  v19 = *MEMORY[0x277D2CBC0];
  v28[21] = v18;
  v28[22] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:self->nstatTraceFileFD];
  v29[22] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:23];

  v22 = [(NWStatsManager *)self->nstatManager configure:v21];
  if (v22)
  {
    v23 = v22;
    v24 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v27 = v23;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_ERROR, "Can't configure netstats manager, error %d", buf, 8u);
    }
  }

  else
  {
    self->nstatManagerConfigured = 1;
  }

  v25 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "Start flow monitoring", buf, 2u);
  }
}

- (void)dealloc
{
  v3 = +[SystemSettingsRelay defaultRelay];
  [v3 removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];

  repeatedConnFailureDetector = self->repeatedConnFailureDetector;
  if (repeatedConnFailureDetector)
  {
    [(RepeatedConnFailureDetector *)repeatedConnFailureDetector invalidate];
    v5 = self->repeatedConnFailureDetector;
    self->repeatedConnFailureDetector = 0;
  }

  if (self->_greenTeaLogger)
  {
    ct_green_tea_logger_destroy();
  }

  if (self->logStateHandle)
  {
    os_state_remove_handler();
    self->logStateHandle = 0;
  }

  siginfo = self->siginfo;
  if (siginfo)
  {
    dispatch_source_cancel(siginfo);
    v7 = self->siginfo;
    self->siginfo = 0;
  }

  flushInactiveLedgerTimer = self->flushInactiveLedgerTimer;
  if (flushInactiveLedgerTimer)
  {
    dispatch_source_cancel(flushInactiveLedgerTimer);
    v9 = self->flushInactiveLedgerTimer;
    self->flushInactiveLedgerTimer = 0;
  }

  [(FlowAnalyticsEngine *)self stopObservingLaunchServices];
  nstatManager = self->nstatManager;
  if (nstatManager)
  {
    [(NWStatsManager *)nstatManager invalidate];
    v11 = self->nstatManager;
    self->nstatManager = 0;

    self->nstatManagerConfigured = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->tetherObserver];
  [defaultCenter removeObserver:self->algosScoreObserver];
  algosScoreObserver = self->algosScoreObserver;
  self->algosScoreObserver = 0;

  [defaultCenter removeObserver:self->appStateChangeObserver];
  appStateChangeObserver = self->appStateChangeObserver;
  self->appStateChangeObserver = 0;

  [defaultCenter removeObserver:self->assetDownloadObserver];
  assetDownloadObserver = self->assetDownloadObserver;
  self->assetDownloadObserver = 0;

  [defaultCenter removeObserver:self->cellThroughputAdvisoryReqObserver];
  cellThroughputAdvisoryReqObserver = self->cellThroughputAdvisoryReqObserver;
  self->cellThroughputAdvisoryReqObserver = 0;

  if (self->relayReadyObserver)
  {
    [defaultCenter removeObserver:?];
  }

  [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"primary"];
  [(CellularStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"nrFrequencyBand"];
  [defaultCenter removeObserver:self->flowObserver];
  flushOldFlowRecordsTimer = self->flushOldFlowRecordsTimer;
  if (flushOldFlowRecordsTimer)
  {
    dispatch_source_cancel(flushOldFlowRecordsTimer);
    v18 = self->flushOldFlowRecordsTimer;
    self->flushOldFlowRecordsTimer = 0;
  }

  if (self->userSwitchObserver)
  {
    [defaultCenter removeObserver:?];
    userSwitchObserver = self->userSwitchObserver;
    self->userSwitchObserver = 0;
  }

  if (self->userAppTrackingObserver)
  {
    [defaultCenter removeObserver:?];
    userAppTrackingObserver = self->userAppTrackingObserver;
    self->userAppTrackingObserver = 0;
  }

  if (self->userEndpointTrackingObserver)
  {
    [defaultCenter removeObserver:?];
    userEndpointTrackingObserver = self->userEndpointTrackingObserver;
    self->userEndpointTrackingObserver = 0;
  }

  [defaultCenter removeObserver:self->domainResolvingObserver];
  domainResolvingObserver = self->domainResolvingObserver;
  self->domainResolvingObserver = 0;

  v23 = +[PowerStateRelay defaultRelay];
  [v23 removeObserver:self forKeyPath:@"screenNotDark"];
  [v23 removeObserver:self forKeyPath:@"screenUnlocked"];

  v24.receiver = self;
  v24.super_class = FlowAnalyticsEngine;
  [(AnalyticsEngineCore *)&v24 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v45 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"primary"])
  {
    v12 = objectCopy;
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    functionalInterfaceType = [v12 functionalInterfaceType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 && [v13 BOOLValue])
    {
      if (functionalInterfaceType == 3)
      {
        objc_storeStrong(&self->_mostRecentPrimaryRelay, object);
        v15 = +[TrackedFlow allActiveFlowsCount];
      }

      else
      {
        mostRecentPrimaryRelay = self->_mostRecentPrimaryRelay;
        self->_mostRecentPrimaryRelay = 0;

        v15 = -1;
      }

      self->trackedFlowCountSincePrimaryInterfaceChanged = v15;
    }
  }

  if ([pathCopy isEqualToString:@"nrFrequencyBand"])
  {
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shortValue = [v17 shortValue];
      if (shortValue >= 3)
      {
        v19 = -1;
      }

      else
      {
        v19 = shortValue;
      }

      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_27898A3A0;
      block[4] = self;
      v42 = v19;
      dispatch_async(queue, block);
    }
  }

  if ([pathCopy isEqualToString:@"autoBugCaptureEnabled"])
  {
    v21 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      bOOLValue = [v21 BOOLValue];
      *buf = 67109120;
      v44 = bOOLValue;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Observed value for autoBugCaptureEnabled is %d", buf, 8u);
    }

    queue2 = [(AnalyticsEngineCore *)self queue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_195;
    v38[3] = &unk_27898A7D0;
    v39 = v21;
    selfCopy = self;
    v26 = v21;
    dispatch_async(queue2, v38);

    v27 = v39;
    goto LABEL_27;
  }

  if ([pathCopy isEqualToString:@"screenNotDark"])
  {
    v26 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v26;
      queue3 = [(AnalyticsEngineCore *)self queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v35[3] = &unk_27898A7D0;
      v36 = v28;
      selfCopy2 = self;
      v27 = v28;
      dispatch_async(queue3, v35);

      v30 = v36;
LABEL_26:

      v26 = v27;
LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if ([pathCopy isEqualToString:@"screenUnlocked"])
  {
    v26 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v26;
      queue4 = [(AnalyticsEngineCore *)self queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_199;
      v33[3] = &unk_27898A7D0;
      v33[4] = self;
      v34 = v31;
      v27 = v31;
      dispatch_async(queue4, v33);

      v30 = v34;
      goto LABEL_26;
    }

LABEL_28:
  }
}

void *__70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  v3 = *(result + 40);
  if (*(v2 + 537) != v3)
  {
    *(v2 + 537) = v3;
    v2 = result[4];
  }

  if (*(v2 + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(v1[4] + 368) setPropertyChangeTimestamp:?];
    v4 = *(v1 + 40);
    v5 = *(v1[4] + 368);

    return [v5 setNrFrequencyBand:v4];
  }

  return result;
}

void *__70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_195(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  result = *(*(a1 + 40) + 400);
  if (v2)
  {
    if (result)
    {
      return result;
    }

    v4 = objc_alloc_init(RepeatedConnFailureDetector);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    [result invalidate];
    v4 = 0;
  }

  v5 = *(a1 + 40);
  v6 = *(v5 + 400);
  *(v5 + 400) = v4;

  return MEMORY[0x2821F96F8](v4, v6);
}

void __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) BOOLValue];
  v3 = v2 ^ 1;
  v4 = *(a1 + 40);
  if ((*(v4 + 520) & 1) == 0 && (v2 & 1) == 0)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = *(a1 + 40);
    v7 = *(v6 + 528);
    *(v6 + 528) = v5;

    v4 = *(a1 + 40);
  }

  *(v4 + 520) = v3;
  if (*(*(a1 + 40) + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 40) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 40) + 368) setIsScreenDark:*(*(a1 + 40) + 520)];
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 40) + 520))
    {
      v9 = "";
    }

    else
    {
      v9 = " not";
    }

    v10 = 136315138;
    v11 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "FAE screen is%s dark", &v10, 0xCu);
  }
}

void __70__FlowAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_199(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 536) = [*(a1 + 40) BOOLValue] ^ 1;
  if (*(*(a1 + 32) + 368))
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [*(*(a1 + 32) + 368) setPropertyChangeTimestamp:?];
    [*(*(a1 + 32) + 368) setIsScreenLocked:*(*(a1 + 32) + 536)];
  }

  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    if (*(*(a1 + 32) + 536))
    {
      v3 = "";
    }

    else
    {
      v3 = " not";
    }

    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "FAE screen is%s locked", &v4, 0xCu);
  }
}

- (void)_refreshFullDataUsageWithCallback:(id)callback
{
  v37 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  ++_refreshFullDataUsageWithCallback__debugCount;
  v5 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = _refreshFullDataUsageWithCallback__debugCount;
    dataUsageRefreshCompletionNumWaiting = self->dataUsageRefreshCompletionNumWaiting;
    dataUsageRefreshCompletionBlock = self->dataUsageRefreshCompletionBlock;
    v9 = v5;
    v10 = _Block_copy(dataUsageRefreshCompletionBlock);
    *buf = 134218496;
    v32 = v6;
    v33 = 1024;
    v34 = dataUsageRefreshCompletionNumWaiting;
    v35 = 2048;
    v36 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Entry for full refresh,  count %llu  queued %d  block %p", buf, 0x1Cu);
  }

  v11 = _refreshFullDataUsageWithCallback__debugCount;
  queue = [(AnalyticsEngineCore *)self queue];
  v13 = _Block_copy(self->dataUsageRefreshCompletionBlock);
  ++self->dataUsageRefreshCompletionNumWaiting;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke;
  v26 = &unk_27898C468;
  v14 = v13;
  v28 = v14;
  v15 = queue;
  v27 = v15;
  v30 = v11;
  v16 = callbackCopy;
  v29 = v16;
  v17 = _Block_copy(&v23);
  v18 = self->dataUsageRefreshCompletionBlock;
  self->dataUsageRefreshCompletionBlock = v17;

  v19 = self->dataUsageRefreshCompletionNumWaiting;
  if (v19 == 1 || !(v19 % 10) || (lastFullRefreshTime = self->lastFullRefreshTime) != 0 && ([(NSDate *)lastFullRefreshTime timeIntervalSinceNow:v23], fabs(v21) > 20.0))
  {
    v22 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Issue full refresh", buf, 2u);
    }

    [(FlowAnalyticsEngine *)self _refreshFullDataUsage:v23];
  }
}

void __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke_2;
  v5[3] = &unk_27898C440;
  v4 = a1[6];
  v7 = a1[7];
  v6 = v4;
  dispatch_async(v3, v5);
}

uint64_t __57__FlowAnalyticsEngine__refreshFullDataUsageWithCallback___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = v2;
    v6 = _Block_copy(v3);
    v8 = 134218240;
    v9 = v4;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Refresh complete, invoking block #%llu (%p)", &v8, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_reportThresholdedFlowCount:(unint64_t)count threshold:(unint64_t)threshold
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:50];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __61__FlowAnalyticsEngine__reportThresholdedFlowCount_threshold___block_invoke;
  v22[3] = &unk_27898C4B8;
  v6 = v5;
  v23 = v6;
  [TrackedFlow countFlowsPassingTest:v22];
  v7 = [v6 keysSortedByValueUsingSelector:sel_compare_];
  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v7 count];
    *buf = 134218242;
    v26 = v10;
    v27 = 2112;
    v28 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Sending flow exceeded symptom for %lu procs, %@", buf, 0x16u);
  }

  internal_symptom_new(405515);
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [v7 count];
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [v7 reverseObjectEnumerator];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v21 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v19;
LABEL_5:
    v16 = 0;
    while (1)
    {
      if (*v19 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v18 + 1) + 8 * v16);
      strlen([v17 UTF8String]);
      internal_symptom_set_additional_qualifier();
      if (v14 == 19)
      {
        break;
      }

      ++v16;
      ++v14;
      if (v13 == v16)
      {
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  internal_symptom_send();
  objc_autoreleasePoolPop(v4);
}

BOOL __61__FlowAnalyticsEngine__reportThresholdedFlowCount_threshold___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 ownerKey];
  v4 = v3;
  v5 = @"unknown";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 unsignedIntegerValue] + 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v6];

  return v8 == 0;
}

- (void)_logExcessCellUsage:(int64_t)usage snapshot:(id)snapshot
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v6;
    snapshotCopy = snapshot;
    snapshotReason = [snapshotCopy snapshotReason];
    v9 = "";
    if (snapshotReason == 2)
    {
      v9 = "closed";
    }

    v26 = v9;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = "udp";
    if (isKindOfClass)
    {
      v11 = "tcp";
    }

    v25 = v11;
    flowUsesChannels = [snapshotCopy flowUsesChannels];
    v13 = "socket";
    if (flowUsesChannels)
    {
      v13 = "channel";
    }

    sourceIdentifier = [snapshotCopy sourceIdentifier];
    [snapshotCopy flowDuration];
    v16 = v15;
    processID = [snapshotCopy processID];
    processName = [snapshotCopy processName];
    uuid = [snapshotCopy uuid];
    euuid = [snapshotCopy euuid];
    vuuid = [snapshotCopy vuuid];
    attributedEntity = [snapshotCopy attributedEntity];
    attributionReasonString = [snapshotCopy attributionReasonString];

    *buf = 134221058;
    usageCopy = usage;
    v30 = 2080;
    v31 = v26;
    v32 = 2080;
    v33 = v25;
    v34 = 2080;
    v35 = v24;
    v36 = 2048;
    v37 = sourceIdentifier;
    v38 = 2048;
    v39 = v16;
    v40 = 1024;
    v41 = processID;
    v42 = 2112;
    v43 = processName;
    v44 = 2112;
    v45 = uuid;
    v46 = 2112;
    v47 = euuid;
    v48 = 2112;
    v49 = vuuid;
    v50 = 2112;
    v51 = attributedEntity;
    v52 = 2112;
    v53 = attributionReasonString;
    _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Cell traffic threshold %lld on %s %s %s flow %lld duration %.2f with pid %d procname %@ UUID %@ EUUID %@ VUUID %@ (attributed %@ reason%@)", buf, 0x80u);
  }
}

- (void)_generateFlowAnomalySymptom:(unsigned int)symptom currentUsage:(unint64_t)usage snapshot:(id)snapshot
{
  v5 = *&symptom;
  v13 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  processName = [snapshotCopy processName];
  internal_symptom_new(v5);
  [snapshotCopy flowDuration];
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  strlen([processName UTF8String]);
  internal_symptom_set_additional_qualifier();
  if ([snapshotCopy attributedEntityIsBundleName])
  {
    attributedEntity = [snapshotCopy attributedEntity];
    uTF8String = [attributedEntity UTF8String];

    strlen(uTF8String);
    internal_symptom_set_additional_qualifier();
  }

  internal_symptom_set_qualifier();
  if (![snapshotCopy rxCellularBytes] && !objc_msgSend(snapshotCopy, "txCellularBytes") && !objc_msgSend(snapshotCopy, "rxWiFiBytes") && !objc_msgSend(snapshotCopy, "txWiFiBytes") && !objc_msgSend(snapshotCopy, "rxWiredBytes") && !objc_msgSend(snapshotCopy, "txWiredBytes"))
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12[0] = 67109120;
      v12[1] = [snapshotCopy interfaceIndex];
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Unknown type for interface index %u", v12, 8u);
    }
  }

  [snapshotCopy interfaceIndex];
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_send();
}

- (void)_checkCellExcessUsageActions:(unint64_t)actions previous:(unint64_t)previous snapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  snapshotReason = [snapshotCopy snapshotReason];
  if (actions > 0x100000 && (actions > 0xA00000 ? (v9 = previous >= 0xA00001) : (v9 = 1), v9 ? (v10 = 0) : (v10 = 1), previous <= 0x100000 || (v10 & 1) != 0 || snapshotReason == 2))
  {
    [(FlowAnalyticsEngine *)self _logExcessCellUsage:actions snapshot:snapshotCopy];
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0x280000000;
  if (self->isScreenDark)
  {
    screenDarkTimestamp = self->screenDarkTimestamp;
    if (!screenDarkTimestamp || ([(NSDate *)screenDarkTimestamp timeIntervalSinceNow], v14 < -5.0))
    {
      v12 = 0x40000000;
    }
  }

  if (v12 < actions && v12 >= previous)
  {
    if ((v11 & 1) == 0)
    {
      [(FlowAnalyticsEngine *)self _logExcessCellUsage:actions snapshot:snapshotCopy];
    }

    [(FlowAnalyticsEngine *)self _generateFlowAnomalySymptom:405527 currentUsage:actions snapshot:snapshotCopy];
  }
}

- (BOOL)_shouldSendStatisticsReport:(id)report
{
  v16 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v4 = reportCopy;
  if (!reportCopy)
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      v11 = "no flow data when checking to see if we should send statistics report";
LABEL_14:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v11, v13, 2u);
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if ([reportCopy snapshotReason] != 2)
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      v11 = "flow is not closed, not sending statistics report";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v4 isSilent])
  {
    goto LABEL_15;
  }

  flow_report_numerator = nw_settings_get_flow_report_numerator();
  flow_report_denominator = nw_settings_get_flow_report_denominator();
  v7 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 67109376;
    v13[1] = flow_report_numerator;
    v14 = 1024;
    v15 = flow_report_denominator;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Flow report sampled at %u / %u", v13, 0xEu);
  }

  if (arc4random_uniform(flow_report_denominator) >= flow_report_numerator)
  {
    goto LABEL_15;
  }

  v8 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13[0]) = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Flow selected for reporting", v13, 2u);
  }

  v9 = 1;
LABEL_16:

  return v9;
}

- (void)_sendStatisticsReport:(id)report
{
  v70 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v4 = reportCopy;
  if (!reportCopy)
  {
    v50 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    LOWORD(v68) = 0;
    v51 = "no flow data when sending statistics report";
LABEL_38:
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, v51, &v68, 2u);
    goto LABEL_61;
  }

  if ([reportCopy snapshotReason] != 2)
  {
    v50 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    LOWORD(v68) = 0;
    v51 = "flow is not closed when sending statistics report";
    goto LABEL_38;
  }

  if (([v4 isSilent] & 1) == 0)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "packetsIn", [v4 rxPackets]);
    xpc_dictionary_set_uint64(v5, "packetsOut", [v4 txPackets]);
    xpc_dictionary_set_uint64(v5, "bytesIn", [v4 rxBytes]);
    xpc_dictionary_set_uint64(v5, "bytesOut", [v4 txBytes]);
    xpc_dictionary_set_uint64(v5, "wiredBytesIn", [v4 rxWiredBytes]);
    xpc_dictionary_set_uint64(v5, "wiredBytesOut", [v4 txWiredBytes]);
    xpc_dictionary_set_uint64(v5, "wifiBytesIn", [v4 rxWiFiBytes]);
    xpc_dictionary_set_uint64(v5, "wifiBytesOut", [v4 txWiFiBytes]);
    xpc_dictionary_set_uint64(v5, "cellularBytesIn", [v4 rxCellularBytes]);
    xpc_dictionary_set_uint64(v5, "cellularBytesOut", [v4 txCellularBytes]);
    [v4 flowDuration];
    xpc_dictionary_set_double(v5, "duration", v6);
    flowTypeLowerCase = [v4 flowTypeLowerCase];
    uTF8String = [flowTypeLowerCase UTF8String];

    if (uTF8String)
    {
      flowTypeLowerCase2 = [v4 flowTypeLowerCase];
      xpc_dictionary_set_string(v5, "type", [flowTypeLowerCase2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "isIPv4", [v4 isIPv4]);
    xpc_dictionary_set_BOOL(v5, "isIPv6", [v4 isIPv6]);
    xpc_dictionary_set_BOOL(v5, "hasTraffic", [v4 hasTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasWiFiTraffic", [v4 hasWiFiTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasCellularTraffic", [v4 hasCellTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasWiredTraffic", [v4 hasWiredTraffic]);
    xpc_dictionary_set_BOOL(v5, "hasLocalDestination", [v4 hasLocalDestination]);
    xpc_dictionary_set_BOOL(v5, "hasNonLocalDestination", [v4 hasNonLocalDestination]);
    xpc_dictionary_set_BOOL(v5, "interfaceUnknown", [v4 interfaceUnknown]);
    xpc_dictionary_set_BOOL(v5, "interfaceLoopback", [v4 interfaceLoopback]);
    xpc_dictionary_set_BOOL(v5, "interfaceWiFi", [v4 interfaceWiFi]);
    xpc_dictionary_set_BOOL(v5, "interfaceWired", [v4 interfaceWired]);
    xpc_dictionary_set_BOOL(v5, "interfaceAWDL", [v4 interfaceAWDL]);
    xpc_dictionary_set_BOOL(v5, "interfaceLLW", [v4 interfaceLLW]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellular", [v4 interfaceCellular]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaFallback", [v4 interfaceCellularViaFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaSlowFallback", [v4 interfaceCellularViaSlowFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaFastFallback", [v4 interfaceCellularViaFastFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaPreferredFallback", [v4 interfaceCellularViaPreferredFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceCellularViaIndependentFallback", [v4 interfaceCellularViaIndependentFallback]);
    xpc_dictionary_set_BOOL(v5, "interfaceExpensive", [v4 interfaceExpensive]);
    xpc_dictionary_set_BOOL(v5, "interfaceConstrained", [v4 interfaceConstrained]);
    xpc_dictionary_set_BOOL(v5, "interfaceCompanionLink", [v4 interfaceCompanionLink]);
    xpc_dictionary_set_BOOL(v5, "usesChannels", [v4 flowUsesChannels]);
    xpc_dictionary_set_uint64(v5, "trafficClass", [v4 trafficClass]);
    xpc_dictionary_set_uint64(v5, "receiveBufferSize", [v4 receiveBufferSize]);
    xpc_dictionary_set_uint64(v5, "receiveBufferUsed", [v4 receiveBufferUsed]);
    attributedEntity = [v4 attributedEntity];
    uTF8String2 = [attributedEntity UTF8String];

    if (uTF8String2)
    {
      attributedEntity2 = [v4 attributedEntity];
      xpc_dictionary_set_string(v5, "attributedEntity", [attributedEntity2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "attributedEntityIsProcessName", [v4 attributedEntityIsProcessName]);
    xpc_dictionary_set_BOOL(v5, "attributedEntityIsBundleName", [v4 attributedEntityIsBundleName]);
    attributionReasonString = [v4 attributionReasonString];
    uTF8String3 = [attributionReasonString UTF8String];

    if (uTF8String3)
    {
      attributionReasonString2 = [v4 attributionReasonString];
      xpc_dictionary_set_string(v5, "attributionReason", [attributionReasonString2 UTF8String]);
    }

    delegateName = [v4 delegateName];
    uTF8String4 = [delegateName UTF8String];

    if (uTF8String4)
    {
      delegateName2 = [v4 delegateName];
      xpc_dictionary_set_string(v5, "delegateName", [delegateName2 UTF8String]);
    }

    processName = [v4 processName];
    uTF8String5 = [processName UTF8String];

    if (uTF8String5)
    {
      processName2 = [v4 processName];
      xpc_dictionary_set_string(v5, "processName", [processName2 UTF8String]);
    }

    xpc_dictionary_set_BOOL(v5, "isDaemon", [v4 isADaemon]);
    xpc_dictionary_set_BOOL(v5, "isTracker", [v4 isTracker]);
    xpc_dictionary_set_BOOL(v5, "isNonAppInitiated", [v4 isNonAppInitiated]);
    xpc_dictionary_set_BOOL(v5, "appStateIsForeground", [v4 snapshotAppStateIsForeground]);
    xpc_dictionary_set_BOOL(v5, "startAppStateIsForeground", [v4 startAppStateIsForeground]);
    xpc_dictionary_set_BOOL(v5, "screenStateOn", [v4 snapshotScreenStateOn]);
    xpc_dictionary_set_BOOL(v5, "startScreenStateOn", [v4 startScreenStateOn]);
    xpc_dictionary_set_BOOL(v5, "uiBackgroundAudioCapable", [v4 uiBackgroundAudioCapable]);
    if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl())
    {
      domainName = [v4 domainName];
      uTF8String6 = [domainName UTF8String];

      if (uTF8String6)
      {
        domainName2 = [v4 domainName];
        xpc_dictionary_set_string(v5, "domainName", [domainName2 UTF8String]);
      }

      domainOwner = [v4 domainOwner];
      uTF8String7 = [domainOwner UTF8String];

      if (uTF8String7)
      {
        domainOwner2 = [v4 domainOwner];
        xpc_dictionary_set_string(v5, "domainOwner", [domainOwner2 UTF8String]);
      }

      domainTrackerContext = [v4 domainTrackerContext];
      uTF8String8 = [domainTrackerContext UTF8String];

      if (uTF8String8)
      {
        domainTrackerContext2 = [v4 domainTrackerContext];
        xpc_dictionary_set_string(v5, "domainTrackerContext", [domainTrackerContext2 UTF8String]);
      }

      domainAttributedBundleId = [v4 domainAttributedBundleId];
      uTF8String9 = [domainAttributedBundleId UTF8String];

      if (uTF8String9)
      {
        domainAttributedBundleId2 = [v4 domainAttributedBundleId];
        xpc_dictionary_set_string(v5, "domainAttributedBundleId", [domainAttributedBundleId2 UTF8String]);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v4;
      [v34 rttMinimum];
      xpc_dictionary_set_double(v5, "rttMinimum", v35);
      [v34 rttAverage];
      xpc_dictionary_set_double(v5, "rttAverage", v36);
      [v34 rttVariation];
      xpc_dictionary_set_double(v5, "rttVariation", v37);
      xpc_dictionary_set_uint64(v5, "rxDuplicateBytes", [v34 rxDuplicateBytes]);
      xpc_dictionary_set_uint64(v5, "rxOutOfOrderBytes", [v34 rxOutOfOrderBytes]);
      xpc_dictionary_set_uint64(v5, "txRetransmittedBytes", [v34 txRetransmittedBytes]);
      xpc_dictionary_set_uint64(v5, "sendBufferSize", [v34 sendBufferSize]);
      xpc_dictionary_set_uint64(v5, "sendBufferUsed", [v34 sendBufferUsed]);
      xpc_dictionary_set_uint64(v5, "txUnacked", [v34 txUnacked]);
      xpc_dictionary_set_uint64(v5, "txWindow", [v34 txWindow]);
      xpc_dictionary_set_uint64(v5, "txCongestionWindow", [v34 txCongestionWindow]);
      xpc_dictionary_set_uint64(v5, "trafficManagementFlags", [v34 trafficManagementFlags]);
      congestionAlgorithm = [v34 congestionAlgorithm];
      uTF8String10 = [congestionAlgorithm UTF8String];

      if (uTF8String10)
      {
        congestionAlgorithm2 = [v34 congestionAlgorithm];
        xpc_dictionary_set_string(v5, "congestionAlgorithm", [congestionAlgorithm2 UTF8String]);
      }

      xpc_dictionary_set_BOOL(v5, "probeActivated", [v34 probeActivated]);
      xpc_dictionary_set_BOOL(v5, "handshakeProbeFailed", [v34 connProbeFailed]);
      xpc_dictionary_set_BOOL(v5, "readProbeFailed", [v34 readProbeFailed]);
      xpc_dictionary_set_BOOL(v5, "writeProbeFailed", [v34 writeProbeFailed]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v4;
      [v41 rttMinimum];
      xpc_dictionary_set_double(v5, "rttMinimum", v42);
      [v41 rttAverage];
      xpc_dictionary_set_double(v5, "rttAverage", v43);
      [v41 rttVariation];
      xpc_dictionary_set_double(v5, "rttVariation", v44);
      xpc_dictionary_set_uint64(v5, "rxDuplicateBytes", [v41 rxDuplicateBytes]);
      xpc_dictionary_set_uint64(v5, "rxOutOfOrderBytes", [v41 rxOutOfOrderBytes]);
      txRetransmittedBytes = [v41 txRetransmittedBytes];

      xpc_dictionary_set_uint64(v5, "txRetransmittedBytes", txRetransmittedBytes);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v4;
      [v46 connDuration];
      xpc_dictionary_set_double(v5, "connectionDuration", v47);
      xpc_dictionary_set_BOOL(v5, "hasNetAccess", [v46 hasNetAccess]);
      currentProperties = [v46 currentProperties];
      v49 = currentProperties;
      if (currentProperties)
      {
        if ([currentProperties isSilent])
        {

LABEL_60:
          goto LABEL_61;
        }

        xpc_dictionary_set_BOOL(v5, "nw_isTracker", [v49 isTracker]);
        xpc_dictionary_set_BOOL(v5, "nw_isNonAppInitiated", [v49 isNonAppInitiated]);
        if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl())
        {
          domainName3 = [v49 domainName];
          uTF8String11 = [domainName3 UTF8String];

          if (uTF8String11)
          {
            domainName4 = [v49 domainName];
            xpc_dictionary_set_string(v5, "nw_domainName", [domainName4 UTF8String]);
          }

          domainOwner3 = [v49 domainOwner];
          uTF8String12 = [domainOwner3 UTF8String];

          if (uTF8String12)
          {
            domainOwner4 = [v49 domainOwner];
            xpc_dictionary_set_string(v5, "nw_domainOwner", [domainOwner4 UTF8String]);
          }

          domainTrackerContext3 = [v49 domainTrackerContext];
          uTF8String13 = [domainTrackerContext3 UTF8String];

          if (uTF8String13)
          {
            domainTrackerContext4 = [v49 domainTrackerContext];
            xpc_dictionary_set_string(v5, "nw_domainTrackerContext", [domainTrackerContext4 UTF8String]);
          }

          domainAttributedBundleId3 = [v49 domainAttributedBundleId];
          uTF8String14 = [domainAttributedBundleId3 UTF8String];

          if (uTF8String14)
          {
            domainAttributedBundleId4 = [v49 domainAttributedBundleId];
            xpc_dictionary_set_string(v5, "nw_domainAttributedBundleId", [domainAttributedBundleId4 UTF8String]);
          }
        }
      }
    }

    v64 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v65 = v64;
      v68 = 136315138;
      v69 = MEMORY[0x238389020](v5);
      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEBUG, "Generated flow report: %s", &v68, 0xCu);
    }

    if (nw_activity_should_report_to_destination())
    {
      v66 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v68) = 0;
        _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEBUG, "Sending flow report to destination two", &v68, 2u);
      }

      analytics_send_event();
    }

    if (nw_activity_should_report_to_destination())
    {
      v67 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v68) = 0;
        _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEBUG, "Sending flow report to destination three", &v68, 2u);
      }

      SecTrustReportNetworkingAnalytics();
    }

    goto LABEL_60;
  }

LABEL_61:
}

- (void)_handleSnapshot:(id)snapshot
{
  v218 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = snapshotCopy;
      if ([v5 isSubFlow])
      {
        v6 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v7 = v6;
          *buf = 134217984;
          *v189 = [v5 sourceIdentifier];
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "skip typical flow processing for subflow %lld", buf, 0xCu);
        }

        goto LABEL_223;
      }
    }

    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(snapshotCopy, "sourceIdentifier")}];
    snapshotReason = [snapshotCopy snapshotReason];
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v189 = snapshotCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Flow data on entry is %@", buf, 0xCu);
    }

    v12 = [TrackedFlow flowForKey:v9];
    v13 = attributionLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (snapshotReason == 2)
      {
        v14 = "";
      }

      else
      {
        v14 = "not ";
      }

      v15 = +[TrackedFlow allActiveFlowsCount];
      sourceIdentifier = [snapshotCopy sourceIdentifier];
      *buf = 136316162;
      *v189 = v14;
      *&v189[8] = 2048;
      *&v189[10] = v15;
      v190 = 2048;
      v191 = *&sourceIdentifier;
      v192 = 2112;
      v193 = snapshotCopy;
      v194 = 2112;
      v195 = v12;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "flow is %sclosed. cache count %lu\nsrc %lld snapshot: %@\nflow: %@", buf, 0x34u);
    }

    if (!v12)
    {
      v20 = [TrackedFlow startTrackingForKey:v9];
      if (!v20)
      {
        v33 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v34 = v33;
          attributedEntity = [snapshotCopy attributedEntity];
          *buf = 138478083;
          *v189 = attributedEntity;
          *&v189[8] = 2112;
          *&v189[10] = v9;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Unable to create TrackedFlow for %{private}@ with flowKey %@", buf, 0x16u);
        }

        goto LABEL_222;
      }

      v12 = v20;
      v21 = +[TrackedFlow allActiveFlowsCount];
      v22 = v21;
      trackedFlowCountSincePrimaryInterfaceChanged = self->trackedFlowCountSincePrimaryInterfaceChanged;
      if (v21 < trackedFlowCountSincePrimaryInterfaceChanged || trackedFlowCountSincePrimaryInterfaceChanged == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = 0;
      }

      else
      {
        v25 = v21 - trackedFlowCountSincePrimaryInterfaceChanged;
      }

      if (v25 >= 0x14E && !self->thunderingHerdFlowCountExceededThreshold)
      {
        mostRecentPrimaryRelay = self->_mostRecentPrimaryRelay;
        if (mostRecentPrimaryRelay)
        {
          v27 = 0.0;
          if ([(NetworkStateRelay *)mostRecentPrimaryRelay primary]&& [(NetworkStateRelay *)self->_mostRecentPrimaryRelay functionalInterfaceType]== 3)
          {
            madePrimaryDate = [(NetworkStateRelay *)self->_mostRecentPrimaryRelay madePrimaryDate];
            [madePrimaryDate timeIntervalSinceNow];
            v27 = -v29;
          }

          v30 = analyticsLogHandle;
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *v189 = v25;
            *&v189[8] = 2048;
            *&v189[10] = 333;
            v190 = 2048;
            v191 = v27;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "%lu Exceeded lower TH system-wide flow count of %lu, %f seconds after the primary interface changed", buf, 0x20u);
          }

          if (v27 > 0.0 && v27 < 180.0)
          {
            self->thunderingHerdFlowCountExceededThreshold = 1;
            queue = [(AnalyticsEngineCore *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke;
            block[3] = &unk_27898AFE0;
            block[4] = self;
            block[5] = v25;
            dispatch_async(queue, block);
          }
        }
      }

      if (!self->flowCountExceededThreshold && v22 >= 0x3E9)
      {
        self->flowCountExceededThreshold = 1;
        queue2 = [(AnalyticsEngineCore *)self queue];
        v186[0] = MEMORY[0x277D85DD0];
        v186[1] = 3221225472;
        v186[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_2;
        v186[3] = &unk_27898AFE0;
        v186[4] = self;
        v186[5] = v22;
        dispatch_async(queue2, v186);
      }
    }

    if (([v12 flags] & 0x200) == 0 && (objc_msgSend(v12, "inheritEarlyProperties:", snapshotCopy) & 1) == 0 && snapshotReason != 2)
    {
      -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [snapshotCopy sourceIdentifier]);

LABEL_222:
      goto LABEL_223;
    }

    v181 = snapshotReason;
    ownerKey = [v12 ownerKey];
    if (!ownerKey)
    {
      ownerKey = [snapshotCopy attributedEntity];
      delegateName = [snapshotCopy delegateName];

      if (delegateName)
      {
        delegateName2 = [snapshotCopy delegateName];
        [AppTracker noteFlow:v12 withDelegatee:delegateName2 snapshot:snapshotCopy];
      }

      else if (v181 != 2)
      {
        goto LABEL_50;
      }

      [v12 setOwnerKey:ownerKey];
    }

LABEL_50:
    [AppTracker noteFlow:v12 withOwner:ownerKey snapshot:snapshotCopy];
    if ([snapshotCopy networkActivityMapStartTime])
    {
      [(FlowScrutinizer *)self->flowScrutinizer addActivityBitmapFromSnapshot:snapshotCopy];
    }

    if (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") && (([snapshotCopy interfaceCellular] & 1) != 0 || objc_msgSend(snapshotCopy, "rxCellularBytes") || objc_msgSend(snapshotCopy, "txCellularBytes")) && (-[FlowScrutinizer cellFlowsScrutinized](self->flowScrutinizer, "cellFlowsScrutinized") == 2 || objc_msgSend(snapshotCopy, "snapshotReason") == 2) || -[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") && ((objc_msgSend(snapshotCopy, "interfaceWiFi") & 1) != 0 || objc_msgSend(snapshotCopy, "rxWiFiBytes") || objc_msgSend(snapshotCopy, "txWiFiBytes")) && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0 && (-[FlowScrutinizer wifiFlowsScrutinized](self->flowScrutinizer, "wifiFlowsScrutinized") == 2 || objc_msgSend(snapshotCopy, "snapshotReason") == 2))
    {
      if ([snapshotCopy attributedEntityIsBundleName] && (objc_msgSend(snapshotCopy, "attributedEntity"), v36 = objc_claimAutoreleasedReturnValue(), v36, v36))
      {
        attributedEntity2 = [snapshotCopy attributedEntity];
        [snapshotCopy setUiBackgroundAudioCapable:{-[FlowAnalyticsEngine _bundleBackgroundAudioCapable:](self, "_bundleBackgroundAudioCapable:", attributedEntity2)}];
      }

      else
      {
        [snapshotCopy setUiBackgroundAudioCapable:0];
      }

      flowScrutinizer = self->flowScrutinizer;
      classification = [v12 classification];
      [(FlowScrutinizer *)flowScrutinizer scrutinizeFlow:snapshotCopy withClassification:classification];
    }

    v180 = v9;
    if ([snapshotCopy failedConsistencyChecks])
    {
      if ([snapshotCopy failedNegativeDeltaCheck])
      {
        v40 = 405528;
        goto LABEL_77;
      }

      if ([snapshotCopy failedRxCountCheck])
      {
        v40 = 405529;
        goto LABEL_77;
      }

      if ([snapshotCopy failedSkywalkAction])
      {
        v40 = 405530;
LABEL_77:
        flags = [v12 flags];
        v42 = analyticsLogHandle;
        v43 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR);
        if ((flags & 0x2000) != 0)
        {
          if (v43)
          {
            v50 = v42;
            sourceIdentifier2 = [snapshotCopy sourceIdentifier];
            *buf = 134217984;
            *v189 = sourceIdentifier2;
            _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, suppress duplicate reports on flow %lld", buf, 0xCu);
          }
        }

        else
        {
          if (v43)
          {
            v44 = v42;
            sourceIdentifier3 = [snapshotCopy sourceIdentifier];
            *buf = 67109376;
            *v189 = v40;
            *&v189[4] = 2048;
            *&v189[6] = sourceIdentifier3;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "snapshot.failedConsistencyChecks, report symptom %x to ABC for flow %lld", buf, 0x12u);
          }

          -[FlowAnalyticsEngine _generateFlowAnomalySymptom:currentUsage:snapshot:](self, "_generateFlowAnomalySymptom:currentUsage:snapshot:", v40, [snapshotCopy txWiredBytes] + objc_msgSend(snapshotCopy, "rxWiredBytes") + objc_msgSend(snapshotCopy, "rxCellularBytes") + objc_msgSend(snapshotCopy, "txCellularBytes") + objc_msgSend(snapshotCopy, "rxWiFiBytes") + objc_msgSend(snapshotCopy, "txWiFiBytes"), snapshotCopy);
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          if (v181 != 2)
          {
            -[NWStatsManager ignoreSource:](self->nstatManager, "ignoreSource:", [snapshotCopy sourceIdentifier]);
          }
        }

        goto LABEL_221;
      }
    }

    rxBytes = [snapshotCopy rxBytes];
    txBytes = [snapshotCopy txBytes];
    if (([snapshotCopy interfaceCompanionLink] & 1) != 0 || -[FlowAnalyticsEngine _snapshotUsesCompanion:](self, "_snapshotUsesCompanion:", snapshotCopy))
    {
      [snapshotCopy hasCellTraffic];
    }

    v179 = ownerKey;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v46 = snapshotCopy;
      rxDuplicateBytes = [v46 rxDuplicateBytes];
      rxOutOfOrderBytes = [v46 rxOutOfOrderBytes];
      txRetransmittedBytes = [v46 txRetransmittedBytes];
      [v46 deltaRxDuplicateBytes];
      [v46 deltaRxOutOfOrderBytes];
      [v46 deltaTxRetransmittedBytes];
      txUnacked = [v46 txUnacked];
      probeActivated = [v46 probeActivated];
      connProbeFailed = [v46 connProbeFailed];
      readProbeFailed = [v46 readProbeFailed];
      log = [v46 writeProbeFailed];

      v146 = rxDuplicateBytes;
      v149 = rxOutOfOrderBytes;
      v152 = txRetransmittedBytes;
    }

    else
    {
      txUnacked = 0;
      log = 0;
      readProbeFailed = 0;
      connProbeFailed = 0;
      probeActivated = 0;
      v149 = 0;
      v152 = 0;
      v146 = 0;
    }

    deltaAccountingRxWiredBytes = [snapshotCopy deltaAccountingRxWiredBytes];
    deltaAccountingTxWiredBytes = [snapshotCopy deltaAccountingTxWiredBytes];
    deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
    deltaAccountingTxCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
    deltaAccountingRxWiFiBytes = [snapshotCopy deltaAccountingRxWiFiBytes];
    deltaAccountingTxWiFiBytes = [snapshotCopy deltaAccountingTxWiFiBytes];
    deltaAccountingRxCompanionLinkBluetoothBytes = [snapshotCopy deltaAccountingRxCompanionLinkBluetoothBytes];
    deltaAccountingTxCompanionLinkBluetoothBytes = [snapshotCopy deltaAccountingTxCompanionLinkBluetoothBytes];
    v177 = deltaAccountingRxWiFiBytes;
    v60 = deltaAccountingRxWiFiBytes | deltaAccountingTxWiFiBytes;
    v61 = deltaAccountingTxWiFiBytes;
    v62 = v60 != 0;
    *&v142 = deltaAccountingTxCompanionLinkBluetoothBytes;
    *(&v142 + 1) = deltaAccountingRxCompanionLinkBluetoothBytes;
    v144 = (v60 | deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes | deltaAccountingRxWiredBytes | deltaAccountingTxWiredBytes | deltaAccountingRxCompanionLinkBluetoothBytes | deltaAccountingTxCompanionLinkBluetoothBytes) != 0;
    interfaceExpensive = [snapshotCopy interfaceExpensive];
    if ((([snapshotCopy snapshotAppStateIsForeground] & 1) != 0 || objc_msgSend(snapshotCopy, "startAppStateIsForeground")) && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0 && (deltaAccountingRxCellularBytes || v177 | deltaAccountingTxCellularBytes || v61))
    {
      [TrackedFlow foregroundNonLocalUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes + v177 + v61];
      v64 = outrankLogHandle;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        [snapshotCopy flowDuration];
        *buf = 138413570;
        *v189 = v179;
        *&v189[8] = 2048;
        *&v189[10] = v65;
        v190 = 2048;
        v191 = *&deltaAccountingRxCellularBytes;
        v192 = 2048;
        v193 = deltaAccountingTxCellularBytes;
        v194 = 2048;
        v195 = v177;
        v196 = 2048;
        v197 = v61;
        _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEBUG, "FAE foregroundNonLocalUsage note %@ flow duration %f for cell rx %lld tx %lld wifi rx %lld tx %lld", buf, 0x3Eu);
      }
    }

    if ([snapshotCopy interfaceCellularViaPreferredFallback])
    {
      [TrackedFlow reverseRnfUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
    }

    if (v62 && ([snapshotCopy hasLocalDestination] & 1) == 0)
    {
      [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:v61 + v177];
    }

    if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
    {
      [TrackedFlow cellUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      if (interfaceExpensive)
      {
        [TrackedFlow cellExpensiveUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      }
    }

    v140 = interfaceExpensive;
    if ([snapshotCopy interfaceCellularViaFallback] && (objc_msgSend(v12, "isForcedNonRNF") & 1) == 0)
    {
      v143 = 1;
      [v12 setIsRNF:1];
      [TrackedFlow rnfUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
      v66 = deltaAccountingTxCellularBytes;
      v67 = deltaAccountingRxCellularBytes;
      if (interfaceExpensive)
      {
        [TrackedFlow rnfExpensiveUsageGrandTallyAfterAdding:deltaAccountingTxCellularBytes + deltaAccountingRxCellularBytes];
        v143 = 1;
        v66 = deltaAccountingTxCellularBytes;
        v67 = deltaAccountingRxCellularBytes;
      }
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v143 = 0;
    }

    v136 = v67;
    v138 = v66;
    v68 = txBytes + rxBytes;
    rxCellularBytes = [snapshotCopy rxCellularBytes];
    v176 = [snapshotCopy txCellularBytes] + rxCellularBytes;
    if (v176 > 0x100000)
    {
      -[FlowAnalyticsEngine _checkCellExcessUsageActions:previous:snapshot:](self, "_checkCellExcessUsageActions:previous:snapshot:", v176, v176 - ([snapshotCopy deltaAccountingRxCellularBytes] + objc_msgSend(snapshotCopy, "deltaAccountingTxCellularBytes")), snapshotCopy);
    }

    v70 = v62;
    [v12 setRxWiFiBytes:{objc_msgSend(snapshotCopy, "rxWiFiBytes")}];
    [v12 setTxWiFiBytes:{objc_msgSend(snapshotCopy, "txWiFiBytes")}];
    [v12 setRxDupeBytes:v146];
    [v12 setRxOOOBytes:v149];
    [v12 setTxReTxBytes:v152];
    [v12 setTxUnacked:txUnacked];
    [v12 setRxPkts:{objc_msgSend(snapshotCopy, "rxPackets")}];
    [v12 setTxPkts:{objc_msgSend(snapshotCopy, "txPackets")}];
    [v12 setProbedFlow:probeActivated];
    [v12 setProbed3WHSStuckFlow:connProbeFailed];
    [v12 setProbedReadStuckFlow:readProbeFailed];
    [v12 setProbedWriteStuckFlow:log];
    if (v181 == 2)
    {
      [NetworkAnalyticsEngine didReceiveProtocolSnapshot:snapshotCopy];
      v71 = v68;
      v173 = v68 > 0x3200000;
      ownerKey = v179;
      if ([(FlowAnalyticsEngine *)self _shouldSendStatisticsReport:snapshotCopy])
      {
        queue3 = [(AnalyticsEngineCore *)self queue];
        v184[0] = MEMORY[0x277D85DD0];
        v184[1] = 3221225472;
        v184[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_306;
        v184[3] = &unk_27898A7D0;
        v184[4] = self;
        v185 = snapshotCopy;
        dispatch_async(queue3, v184);
      }

      if (self->repeatedConnFailureDetector)
      {
        if (![snapshotCopy rxBytes])
        {
          [snapshotCopy flowDuration];
          if (v73 > 1.0)
          {
            if ([snapshotCopy isADaemon])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(RepeatedConnFailureDetector *)self->repeatedConnFailureDetector noteSuspectFlow:snapshotCopy withOwner:v179];
              }
            }
          }
        }
      }

      if (!v71)
      {
        goto LABEL_221;
      }

      v68 = v71;
      if (self->appTrackingEnabled && v179 && self->endpointTrackingEnabled && [snapshotCopy attributedEntityIsBundleName] && (objc_msgSend(snapshotCopy, "hasLocalDestination") & 1) == 0)
      {
        [(FlowAnalyticsEngine *)self endpointMaintenanceOnClose:snapshotCopy];
      }
    }

    else
    {
      v173 = 0;
      ownerKey = v179;
    }

    if (v144)
    {
      v74 = v177;
      if (!v70)
      {
        v74 = 0;
      }

      v164 = v61;
      if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
      {
        v75 = deltaAccountingTxCellularBytes;
      }

      else
      {
        v75 = v61;
      }

      if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
      {
        v76 = deltaAccountingRxCellularBytes;
      }

      else
      {
        v76 = v74;
      }

      v135 = v68;
      if (v76 | v75)
      {
        v77 = getCTGreenTeaOsLogHandle();
        v78 = v77;
        if (v77)
        {
          loga = v77;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v79 = "WiFi";
            if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
            {
              v79 = "Cell";
            }

            v160 = v79;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v81 = "UDP";
            if (isKindOfClass)
            {
              v81 = "TCP";
            }

            v150 = v81;
            processName = [snapshotCopy processName];
            attributedEntity3 = [snapshotCopy attributedEntity];
            localAddress = [snapshotCopy localAddress];
            v82 = sockAddrToString(localAddress);
            remoteAddress = [snapshotCopy remoteAddress];
            v83 = sockAddrToString(remoteAddress);
            *buf = 136316930;
            *v189 = v160;
            *&v189[8] = 2080;
            *&v189[10] = v150;
            v190 = 2048;
            v191 = *&v75;
            v192 = 2048;
            v193 = v76;
            v194 = 2114;
            v195 = processName;
            v196 = 2114;
            v197 = attributedEntity3;
            v198 = 2114;
            v199 = v82;
            v200 = 2114;
            v201 = v83;
            _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_INFO, "%s %s bytes transmitted: %llu, bytes received: %llu, process name: %{public}@, bundle id: %{public}@ local address: %{public}@ remote address: %{public}@", buf, 0x52u);

            ownerKey = v179;
          }
        }
      }

      if ([snapshotCopy attributedEntityIsProcessName])
      {
        attributedEntity4 = [snapshotCopy attributedEntity];
      }

      else
      {
        attributedEntity4 = 0;
      }

      if ([snapshotCopy attributedEntityIsBundleName])
      {
        attributedEntity5 = [snapshotCopy attributedEntity];
      }

      else
      {
        attributedEntity5 = 0;
      }

      attributedExtension = [snapshotCopy attributedExtension];
      v87 = [(FlowAnalyticsEngine *)self _processFetchForName:attributedEntity4 bundle:attributedEntity5 extension:attributedExtension shouldFillMiss:1];

      logb = v87;
      if (v87)
      {
        v168 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v87];
        if (v168)
        {
          v157 = attributedEntity5;
          v161 = attributedEntity4;
          interfaceAWDL = [snapshotCopy interfaceAWDL];
          if (interfaceAWDL)
          {
            v89 = 0;
          }

          else
          {
            v89 = v164;
          }

          if (interfaceAWDL)
          {
            v90 = 0;
          }

          else
          {
            v90 = v177;
          }

          if (interfaceAWDL)
          {
            v91 = v164;
          }

          else
          {
            v91 = 0;
          }

          if (interfaceAWDL)
          {
            v92 = v177;
          }

          else
          {
            v92 = 0;
          }

          v93 = v173;
          v94 = v181;
          v165 = v92;
          v151 = v90;
          v154 = v89;
          if ((v143 & v173) == 1 && v135 >= 0x1F400001)
          {
            date = [MEMORY[0x277CBEAA8] date];
            startingTimestamp = [v12 startingTimestamp];
            [date timeIntervalSinceDate:startingTimestamp];

            internal_symptom_new(405510);
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            internal_symptom_set_qualifier();
            attributedEntity6 = [snapshotCopy attributedEntity];
            v98 = attributedEntity6;
            if (attributedEntity6)
            {
              strlen([attributedEntity6 UTF8String]);
              v94 = v181;
              internal_symptom_set_additional_qualifier();
            }

            internal_symptom_send();

            v87 = logb;
            v92 = v165;
            v93 = v173;
            v90 = v151;
            v89 = v154;
          }

          BYTE1(v134) = v140;
          LOBYTE(v134) = v93;
          v148 = v91;
          BYTE2(v134) = v94 == 2;
          [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v168 wifiOut:v90 cellIn:v89 cellOut:deltaAccountingRxCellularBytes wiredIn:deltaAccountingTxCellularBytes wiredOut:v92 btIn:v91 btOut:*(&v142 + 1) xIn:v142 xOut:v136 isJumboFlow:v138 isExpensive:v134 closing:?];
          date2 = [MEMORY[0x277CBEAA8] date];
          [v87 setTimeStamp:date2];

          sourceIdentifier4 = [snapshotCopy sourceIdentifier];
          delegateName3 = [snapshotCopy delegateName];
          attributedExtension2 = [snapshotCopy attributedExtension];
          if (delegateName3)
          {
            v100 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (delegation: %@)", delegateName3];
          }

          else
          {
            v100 = &stru_2847966D8;
          }

          if (attributedExtension2)
          {
            name = [v87 name];
            if ([name isEqualToString:attributedExtension2])
            {

              v101 = &stru_2847966D8;
            }

            else
            {
              v109 = [v100 isEqualToString:attributedExtension2];

              if (v109)
              {
                v101 = &stru_2847966D8;
              }

              else
              {
                v101 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" (attrExtn: %@)", attributedExtension2];
              }

              v87 = logb;
            }
          }

          else
          {
            v101 = &stru_2847966D8;
          }

          v110 = analyticsLogHandle;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v87 name];
            if ([snapshotCopy attributionReason] == 4)
            {
              v112 = @"(viaNEHelper)";
            }

            else
            {
              v112 = &stru_2847966D8;
            }

            wifiIN = [v168 wifiIN];
            wifiOUT = [v168 wifiOUT];
            wwanIN = [v168 wwanIN];
            wwanOUT = [v168 wwanOUT];
            v141 = [v168 tag];
            [snapshotCopy flowDuration];
            *buf = 138416130;
            *v189 = name2;
            *&v189[8] = 2112;
            *&v189[10] = v112;
            v87 = logb;
            v190 = 2112;
            v191 = *&v100;
            v192 = 2112;
            v193 = v101;
            v194 = 2048;
            v195 = sourceIdentifier4;
            v196 = 2112;
            v197 = wifiIN;
            v198 = 2112;
            v199 = wifiOUT;
            v200 = 2048;
            v201 = v151;
            v202 = 2048;
            v203 = v154;
            v204 = 2112;
            v205 = wwanIN;
            v206 = 2112;
            v207 = wwanOUT;
            v208 = 2048;
            v209 = deltaAccountingRxCellularBytes;
            v210 = 2048;
            v211 = deltaAccountingTxCellularBytes;
            v212 = 1024;
            v213 = v143;
            v214 = 2112;
            v215 = v141;
            v216 = 2048;
            v217 = v114;
            _os_log_impl(&dword_23255B000, v110, OS_LOG_TYPE_DEFAULT, "Data Usage for %@%@%@%@ on flow %llu - WiFi in/out: %@/%@, WiFi delta_in/delta_out: %lld/%lld, Cell in/out: %@/%@, Cell delta_in/delta_out: %lld/%lld, RNF: %d, subscriber tag: %@, total duration: %.3f", buf, 0x9Eu);
          }

          v102 = v100;
          if (v142 != 0)
          {
            v115 = analyticsLogHandle;
            if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
            {
              name3 = [v87 name];
              btIN = [v168 btIN];
              btOUT = [v168 btOUT];
              [snapshotCopy flowDuration];
              *buf = 138414338;
              *v189 = name3;
              *&v189[8] = 2112;
              *&v189[10] = v100;
              v190 = 2112;
              v191 = *&v101;
              v192 = 2048;
              v193 = sourceIdentifier4;
              v194 = 2112;
              v195 = btIN;
              v196 = 2112;
              v197 = btOUT;
              v198 = 2048;
              v199 = *(&v142 + 1);
              v200 = 2048;
              v201 = v142;
              v202 = 2048;
              v203 = v119;
              _os_log_impl(&dword_23255B000, v115, OS_LOG_TYPE_DEFAULT, "Bluetooth Data Usage for %@%@%@ on flow %llu - in/out: %@/%@,  delta_in/delta_out: %lld/%lld, total duration: %.3f", buf, 0x5Cu);

              v87 = logb;
            }
          }

          v120 = analyticsLogHandle;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
          {
            name4 = [v87 name];
            wiredIN = [v168 wiredIN];
            wiredOUT = [v168 wiredOUT];
            v124 = [v168 tag];
            [snapshotCopy flowDuration];
            *buf = 138414594;
            *v189 = name4;
            *&v189[8] = 2112;
            *&v189[10] = v100;
            v190 = 2112;
            v191 = *&v101;
            v192 = 2048;
            v193 = sourceIdentifier4;
            v194 = 2112;
            v195 = wiredIN;
            v196 = 2112;
            v197 = wiredOUT;
            v198 = 2048;
            v199 = v165;
            v200 = 2048;
            v201 = v148;
            v202 = 2112;
            v203 = v124;
            v204 = 2048;
            v205 = v125;
            _os_log_impl(&dword_23255B000, v120, OS_LOG_TYPE_DEBUG, "Data Usage for %@%@%@ on flow %llu - Wired in/out: %@/%@, Wired delta_in/delta_out: %lld/%lld, subscriber tag: %@, total duration: %.3f", buf, 0x66u);

            v87 = logb;
          }

          ownerKey = v179;
          attributedEntity5 = v157;
          attributedEntity4 = v161;
        }

        else
        {
          v102 = evaluationLogHandle;
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
          {
            v158 = attributedEntity5;
            v103 = [v87 description];
            uTF8String = [v103 UTF8String];
            ctShim = self->ctShim;
            v162 = attributedEntity4;
            if (ctShim)
            {
              attributedExtension = [(CoreTelephonyShim *)ctShim currentSubscriberTag];
              if (attributedExtension)
              {
                currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                v107 = 1;
              }

              else
              {
                v107 = 0;
                currentSubscriberTag = &unk_2847EF6C8;
              }
            }

            else
            {
              v107 = 0;
              currentSubscriberTag = &unk_2847EF6C8;
            }

            *buf = 136315394;
            *v189 = uTF8String;
            *&v189[8] = 2112;
            *&v189[10] = currentSubscriberTag;
            _os_log_impl(&dword_23255B000, v102, OS_LOG_TYPE_DEFAULT, "Can't find liveusage for %s with subscriber tag: %@", buf, 0x16u);
            if (v107)
            {
            }

            ownerKey = v179;
            if (ctShim)
            {
            }

            attributedEntity5 = v158;
            attributedEntity4 = v162;
            v87 = logb;
          }
        }
      }

      if (v176)
      {
        v126 = attributedEntity5;
        interfaceIndex = [snapshotCopy interfaceIndex];
        v183[0] = MEMORY[0x277D85DD0];
        v183[1] = 3221225472;
        v183[2] = __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_323;
        v183[3] = &unk_27898A0C8;
        v183[4] = self;
        v128 = v183;
        if (_handleSnapshot__onceToken != -1)
        {
          dispatch_once(&_handleSnapshot__onceToken, v128);
        }

        if (self->_pdpLastUsedInterfaceIndex != interfaceIndex)
        {
          pdpMonitoredInterfaces = self->_pdpMonitoredInterfaces;
          v130 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:interfaceIndex];
          LOBYTE(pdpMonitoredInterfaces) = [(NSMutableSet *)pdpMonitoredInterfaces containsObject:v130];

          if (pdpMonitoredInterfaces)
          {
            self->_pdpLastUsedInterfaceIndex = interfaceIndex;
            v131 = flowLogHandle;
            if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
            {
              pdpLastUsedInterfaceIndex = self->_pdpLastUsedInterfaceIndex;
              *buf = 67109376;
              *v189 = interfaceIndex;
              *&v189[4] = 1024;
              *&v189[6] = pdpLastUsedInterfaceIndex;
              _os_log_impl(&dword_23255B000, v131, OS_LOG_TYPE_INFO, "Already monitoring %d; updated last used pdp interface to %d", buf, 0xEu);
            }
          }

          else
          {
            v133 = flowLogHandle;
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109376;
              *v189 = interfaceIndex;
              *&v189[4] = 2048;
              *&v189[6] = v176;
              _os_log_impl(&dword_23255B000, v133, OS_LOG_TYPE_DEBUG, "Incoming (presumed) cellular interface index %d is not monitored (usage: %ld)", buf, 0x12u);
            }

            [(FlowAnalyticsEngine *)self _updateKnownCellularInterfaceIndexList:0 force:?];
            [(FlowAnalyticsEngine *)self _enableThresholdMonitoringForCellularInterface:interfaceIndex];
          }
        }

        ownerKey = v179;
        attributedEntity5 = v126;
        v87 = logb;
      }
    }

LABEL_221:

    v9 = v180;
    goto LABEL_222;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "no flow data", buf, 2u);
  }

LABEL_223:
}

uint64_t __39__FlowAnalyticsEngine__handleSnapshot___block_invoke_323(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 264);
  *(v6 + 264) = v5;

  return MEMORY[0x2821F96F8](v5, v7);
}

- (BOOL)_shouldProcessDomainInfoForBundleID:(id)d implicit:(id *)implicit knownToLaunchServices:(BOOL *)services ignoredInLaunchServices:(BOOL *)launchServices isWebBrowser:(BOOL *)browser
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = [LaunchServicesUtilities implicitlyAssumedIdentityEntitlementForBundleIdentifier:dCopy];
  v13 = v12;
  if (browser)
  {
    *browser = [v12 isWebBrowser];
  }

  type = [v13 type];
  v15 = 1;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 2)
      {
        *implicit = [v13 impliedBundleID];
        v19 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          v20 = *implicit;
          v23 = 138478083;
          v24 = v20;
          v25 = 2113;
          type2 = dCopy;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Using implied identity %{private}@ for %{private}@, entitlement type is 'bundleID'", &v23, 0x16u);
        }
      }
    }

    else
    {
      v22 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v23 = 138477827;
        v24 = dCopy;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Found unexpected 'type' in entitlement for %{private}@", &v23, 0xCu);
      }

      v15 = 1;
    }
  }

  else
  {
    if ((type - 3) >= 4)
    {
      if (type != 7)
      {
        goto LABEL_10;
      }

      if (services)
      {
        *services = 0;
      }

      v21 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = 138477827;
        v24 = dCopy;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, not known to LaunchServices", &v23, 0xCu);
      }
    }

    else
    {
      if (launchServices)
      {
        *launchServices = 1;
      }

      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v23 = 138478083;
        v24 = dCopy;
        v25 = 2048;
        type2 = [v13 type];
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, ignored in LaunchServices, type %lu", &v23, 0x16u);
      }
    }

    v15 = 0;
  }

LABEL_10:

  return v15;
}

- (void)_handleSnapshotForDomains:(id)domains
{
  v113 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  if (([domainsCopy isSilent] & 1) == 0 && self->appTrackingEnabled)
  {
    v102 = 1;
    v101 = 0;
    v100 = 0;
    domainAttributedBundleId = [domainsCopy domainAttributedBundleId];

    if (domainAttributedBundleId)
    {
      domainAttributedBundleId2 = [domainsCopy domainAttributedBundleId];
LABEL_5:
      v7 = domainAttributedBundleId2;
      processName = [domainsCopy processName];
      if ([processName isEqualToString:@"mDNSResponder"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"terminusd"))
      {

LABEL_22:
        v11 = 0;
        goto LABEL_23;
      }

      v99 = 0;
      v10 = [(FlowAnalyticsEngine *)self _shouldProcessDomainInfoForBundleID:v7 implicit:&v99 knownToLaunchServices:&v102 ignoredInLaunchServices:&v101 isWebBrowser:&v100];
      v11 = v99;

      if (!v10)
      {
LABEL_23:

        goto LABEL_24;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(domainsCopy, "sourceIdentifier")}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = domainsCopy;
          v24 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          if (v24 && (v25 = v24, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 BOOLValue], v26, v25, (v27 & 1) != 0))
          {
            v18 = v23;
          }

          else
          {
            v18 = v23;
            remoteAddress = [(__CFString *)v23 remoteAddress];
            bytes = [remoteAddress bytes];

            if (!bytes || !*(bytes + 2) || is_directly_reachable_address(bytes))
            {
              remoteAddress2 = [(__CFString *)v23 remoteAddress];
              v96 = 0;
              v56 = validateSockAddrToString(remoteAddress2, 0, &v96);
              v48 = v96;

              if (v56)
              {
                v57 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  v104 = v48;
                  _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEFAULT, "Local flow (conn) to %{private}@ via reachability, will drop", buf, 0xCu);
                }
              }

              v13 = 0;
              goto LABEL_106;
            }
          }
        }

        else
        {
          v18 = 0;
        }

        v13 = 0;
LABEL_31:
        if (v11)
        {
          v28 = v11;
        }

        else
        {
          v28 = v7;
        }

        v29 = v28;
        v30 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:v29 shouldFillMiss:1];
        v31 = v30;
        v95 = v12;
        if (!v30)
        {
          v42 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138477827;
            v104 = v29;
            _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, "Process is nil for %{private}@", buf, 0xCu);
          }

          goto LABEL_105;
        }

        if (![v30 isApp])
        {
          v43 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v104 = v29;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Process is not SFApp for %{private}@, triggering an ABC case", buf, 0xCu);
          }

          v40 = +[NetDomainsHandler sharedInstance];
          [v40 triggerAutoBugCaptureCaseForType:@"ProcessNotSFApp" subType:0 privateSubtypeContext:0 detectedProcess:v29 events:0 thresholdValuesString:0];
          goto LABEL_49;
        }

        v93 = v13;
        v32 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];

        if (!v32)
        {
          [(NSMutableDictionary *)self->trackedSourceIDs setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v12];
        }

        v33 = domainTrackingLogHandle;
        v94 = v18;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v34 = v33;
          domainAttributedBundleId3 = [domainsCopy domainAttributedBundleId];
          attributedEntity = [domainsCopy attributedEntity];
          *buf = 138478851;
          v104 = v29;
          v105 = 2113;
          v106 = v11;
          v107 = 2113;
          v108 = v7;
          v109 = 2113;
          v110 = domainAttributedBundleId3;
          v111 = 2113;
          v112 = attributedEntity;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Proceed with privacy accounting by attributing to: %{private}@ (implicitIdentity: %{private}@, attributed: %{private}@, domainAttributedBundleId: %{private}@, attributedEntity: %{private}@)", buf, 0x34u);

          v18 = v94;
        }

        v13 = v93;
        if (v93)
        {
          v37 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
          bOOLValue = [v37 BOOLValue];

          if (bOOLValue)
          {
            v39 = domainTrackingLogHandle;
            v18 = v94;
            if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
LABEL_105:

              v48 = 0;
              v12 = v95;
              goto LABEL_106;
            }

            v40 = v39;
            domainDescription = [v93 domainDescription];
            *buf = 138477827;
            v104 = domainDescription;
            _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "FlowSnapshot: %{private}@, already processed domain info", buf, 0xCu);

            v18 = v94;
LABEL_49:

            goto LABEL_105;
          }

          flowuuid = [v93 flowuuid];
          v92 = flowuuid;
          if (flowuuid)
          {
            v18 = v94;
            if ([(FlowAnalyticsEngine *)self isSnapshotFlowUUIDStored:flowuuid])
            {
              [(NSMutableDictionary *)self->trackedSourceIDs setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v12];
              v67 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v104 = v92;
                _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "FlowSnapshot: fuuid %@ present in an earlier ConnSnapshot, ignoring", buf, 0xCu);
              }

              goto LABEL_104;
            }

            domainName = [v93 domainName];
            if (domainName)
            {
            }

            else
            {
              remoteAddress3 = [v93 remoteAddress];

              if (!remoteAddress3)
              {
LABEL_104:

                goto LABEL_105;
              }
            }

            v79 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v80 = v79;
              domainDescription2 = [v93 domainDescription];
              *buf = 138477827;
              v104 = domainDescription2;
              v82 = "FlowSnapshot: %{private}@, will process domain info";
LABEL_102:
              _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, v82, buf, 0xCu);

              goto LABEL_103;
            }

            goto LABEL_103;
          }

          v18 = v94;
          if ([v93 snapshotReason] == 2)
          {
            domainName2 = [v93 domainName];
            if (domainName2)
            {

              goto LABEL_100;
            }

            remoteAddress4 = [v93 remoteAddress];

            if (remoteAddress4)
            {
LABEL_100:
              v84 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v80 = v84;
                domainDescription2 = [v93 domainDescription];
                *buf = 138477827;
                v104 = domainDescription2;
                v82 = "FlowSnapshot: %{private}@, will process domain info for flow closing with nil fuuid";
                goto LABEL_102;
              }

LABEL_103:
              v85 = MEMORY[0x277CCABB0];
              v13 = v93;
              remoteAddress5 = [v93 remoteAddress];
              v87 = [v85 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v93, v31, v29, remoteAddress5, v100)}];
              [(NSMutableDictionary *)self->trackedSourceIDs setObject:v87 forKeyedSubscript:v12];

              v18 = v94;
              goto LABEL_104;
            }
          }

          v88 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v89 = v88;
            domainDescription3 = [v93 domainDescription];
            *buf = 138477827;
            v104 = domainDescription3;
            _os_log_impl(&dword_23255B000, v89, OS_LOG_TYPE_DEFAULT, "FlowSnapshot: %{private}@, waiting to process domain info until flow closing with nil fuuid", buf, 0xCu);

            v18 = v94;
          }

          goto LABEL_104;
        }

        if (!v18)
        {
          goto LABEL_105;
        }

        flowuuid2 = [(__CFString *)v18 flowuuid];
        v62 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
        if ([v62 BOOLValue])
        {

LABEL_72:
          if (-[__CFString snapshotReason](v18, "snapshotReason") == 2 && (-[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v63 = objc_claimAutoreleasedReturnValue(), v64 = [v63 BOOLValue], v63, v64))
          {
            [(FlowAnalyticsEngine *)self removeSnapshotFlowUUIDsForSourceKey:v12];
            v13 = 0;
            v65 = flowuuid2;
          }

          else
          {
            v13 = 0;
            v65 = flowuuid2;
            if (flowuuid2)
            {
              [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:flowuuid2 forSourceKey:v95];
            }
          }

LABEL_95:

          v18 = v94;
          goto LABEL_105;
        }

        domainName3 = [(__CFString *)v18 domainName];
        if (domainName3)
        {
        }

        else
        {
          remoteAddress6 = [(__CFString *)v18 remoteAddress];

          if (!remoteAddress6)
          {
            goto LABEL_72;
          }
        }

        v72 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v104 = v18;
          _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEFAULT, "ConnSnapshot: %{private}@, will process domain info", buf, 0xCu);
        }

        v65 = flowuuid2;
        if (flowuuid2 && [(__CFString *)v18 snapshotReason]!= 2)
        {
          [(FlowAnalyticsEngine *)self storeSnapshotFlowUUID:flowuuid2 forSourceKey:v95];
        }

        v73 = MEMORY[0x277CCABB0];
        remoteAddress7 = [(__CFString *)v18 remoteAddress];
        v75 = v18;
        v76 = remoteAddress7;
        v77 = [v73 numberWithBool:{-[FlowAnalyticsEngine domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:](self, "domainInfoProcessingForSnapshot:process:attributedName:remoteAddress:isWebBrowser:", v75, v31, v29, remoteAddress7, v100)}];
        [(NSMutableDictionary *)self->trackedSourceIDs setObject:v77 forKeyedSubscript:v95];

        v13 = 0;
        goto LABEL_95;
      }

      v13 = domainsCopy;
      v14 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v12];
      if (v14 && (v15 = v14, -[NSMutableDictionary objectForKeyedSubscript:](self->trackedSourceIDs, "objectForKeyedSubscript:", v12), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 BOOLValue], v16, v15, (v17 & 1) != 0) || (objc_msgSend(v13, "hasNonLocalDestination") & 1) != 0)
      {
LABEL_16:
        v18 = 0;
        goto LABEL_31;
      }

      hasLocalDestination = [v13 hasLocalDestination];
      remoteAddress8 = [v13 remoteAddress];
      v46 = remoteAddress8;
      if (hasLocalDestination)
      {
        v98 = 0;
        v47 = validateSockAddrToString(remoteAddress8, 0, &v98);
        v48 = v98;

        if (!v47)
        {
          goto LABEL_68;
        }

        v49 = domainTrackingLogHandle;
        if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_68;
        }

        *buf = 138477827;
        v104 = v48;
        v50 = "Local flow to %{private}@ via hasLocalDestination, will drop";
        v51 = v49;
        v52 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        bytes2 = [remoteAddress8 bytes];

        if (bytes2 && *(bytes2 + 2) && !is_directly_reachable_address(bytes2))
        {
          goto LABEL_16;
        }

        remoteAddress9 = [v13 remoteAddress];
        v97 = 0;
        v60 = validateSockAddrToString(remoteAddress9, 0, &v97);
        v48 = v97;

        if (!v60 || (v61 = domainTrackingLogHandle, !os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO)))
        {
LABEL_68:
          v18 = 0;
LABEL_106:

          goto LABEL_23;
        }

        *buf = 138477827;
        v104 = v48;
        v50 = "Local flow to %{private}@ via reachability, will drop";
        v51 = v61;
        v52 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_23255B000, v51, v52, v50, buf, 0xCu);
      goto LABEL_68;
    }

    attributedEntity2 = [domainsCopy attributedEntity];

    if (attributedEntity2)
    {
      if ([domainsCopy attributedEntityIsBundleName])
      {
        domainAttributedBundleId2 = [domainsCopy attributedEntity];
        goto LABEL_5;
      }

      v20 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = v20;
        attributedEntity3 = [domainsCopy attributedEntity];
        *buf = 138478083;
        v104 = attributedEntity3;
        v105 = 1024;
        LODWORD(v106) = [domainsCopy attributionReason];
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting for %{private}@, attributionReason %d", buf, 0x12u);
      }
    }

    else
    {
      v19 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Skipping privacy accounting, no attribution", buf, 2u);
      }
    }

    v7 = 0;
    goto LABEL_22;
  }

LABEL_24:
}

- (void)_didReceiveSnapshot:(id)snapshot
{
  v16 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = snapshotCopy;
    [(FlowAnalyticsEngine *)self _handleSnapshot:v5];
    [(FlowAnalyticsEngine *)self _handleSnapshotForDomains:v5];
    if ([v5 snapshotReason] == 2)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
      [TrackedFlow removeTrackingForKey:v6 fromSnapshot:v5];
LABEL_7:
      v7 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v6];
      bOOLValue = [v7 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        [(FlowAnalyticsEngine *)self _evalDomainTrackingDropOf:v5];
      }

      v9 = [(NSMutableDictionary *)self->trackedSourceIDs objectForKeyedSubscript:v6];

      if (v9)
      {
        [(NSMutableDictionary *)self->trackedSourceIDs setObject:0 forKeyedSubscript:v6];
      }

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = snapshotCopy;
    [(FlowAnalyticsEngine *)self _handleSnapshotForDomains:v5];
    if ([v5 snapshotReason] == 2)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "sourceIdentifier")}];
      goto LABEL_7;
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Snapshot is of unexpected type %@", &v14, 0xCu);
  }

LABEL_13:
}

- (void)statsManager:(id)manager thresholdReachedOn:(unsigned int)on
{
  v26 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  lastCellularThresholdRefreshTime = self->lastCellularThresholdRefreshTime;
  v9 = 1;
  if (lastCellularThresholdRefreshTime)
  {
    [(NSDate *)lastCellularThresholdRefreshTime timeIntervalSinceNow];
    if (fabs(v8) < 30.0)
    {
      v9 = 0;
    }
  }

  cellThroughputAdviser = self->cellThroughputAdviser;
  v11 = 20.0;
  v12 = 2.0;
  if (cellThroughputAdviser && [(CellThroughputAdviser *)cellThroughputAdviser enabled]&& [(CellThroughputAdviser *)self->cellThroughputAdviser quiesced])
  {
    v13 = analyticsLogHandle;
    v11 = 0.0;
    v12 = 1.0;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Threshold processing finds SDM quiesced", buf, 2u);
    }

    v9 = 1;
    v14 = @"SDMQuiescentThresholdHandling";
  }

  else
  {
    v14 = @"ThresholdHandling";
  }

  v15 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v16 = @"not";
    if (v9)
    {
      v16 = @"is";
    }

    *buf = 67109378;
    onCopy = on;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Threshold reached for interface %d, refresh %@ required", buf, 0x12u);
  }

  if (v9)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v18 = self->lastCellularThresholdRefreshTime;
    self->lastCellularThresholdRefreshTime = date;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    setApparentTime(v19);
    refreshScheduler = self->refreshScheduler;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __55__FlowAnalyticsEngine_statsManager_thresholdReachedOn___block_invoke;
    v21[3] = &unk_27898BB90;
    v21[4] = self;
    [(FlowRefreshScheduler *)refreshScheduler refreshDataUsageMaxStale:v14 maxDelay:v21 logAs:v11 callback:v12];
  }
}

uint64_t __55__FlowAnalyticsEngine_statsManager_thresholdReachedOn___block_invoke(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cellular threshold polling complete, success %d", v6, 8u);
  }

  return [*(a1 + 32) _updateTetheringUsage:1];
}

- (double)_usageFingerprintForBundleName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:nameCopy shouldFillMiss:0];
  if (v6)
  {
    v7 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v6];
    v8 = v7;
    if (v7)
    {
      wifiIN = [v7 wifiIN];
      [wifiIN doubleValue];
      v11 = v10;
      wifiOUT = [v8 wifiOUT];
      [wifiOUT doubleValue];
      v14 = v11 + v13;
      wwanIN = [v8 wwanIN];
      [wwanIN doubleValue];
      v17 = v14 + v16;
      wwanOUT = [v8 wwanOUT];
      [wwanOUT doubleValue];
      v20 = v17 + v19;
      wiredIN = [v8 wiredIN];
      [wiredIN doubleValue];
      v23 = v20 + v22;
      wiredOUT = [v8 wiredOUT];
      [wiredOUT doubleValue];
      v26 = v23 + v25;
    }

    else
    {
      v28 = procStateLogHandle;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        ctShim = self->ctShim;
        if (ctShim)
        {
          currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (currentSubscriberTag)
          {
            currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v31 = 1;
          }

          else
          {
            v31 = 0;
            currentSubscriberTag2 = &unk_2847EF6C8;
          }
        }

        else
        {
          v31 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }

        v33 = 138412546;
        v34 = nameCopy;
        v35 = 2112;
        v36 = currentSubscriberTag2;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "Failed to find LiveUsage for %@ with subscriber tag: %@", &v33, 0x16u);
        if (v31)
        {
        }

        if (ctShim)
        {
        }
      }

      v26 = 0.0;
    }
  }

  else
  {
    v27 = procStateLogHandle;
    v26 = 0.0;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = nameCopy;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Failed to find process for %@", &v33, 0xCu);
    }
  }

  return v26;
}

- (void)_handleApplicationNotificationCompactForBundleName:(id)name edgeMode:(BOOL)mode
{
  modeCopy = mode;
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "false";
    if (modeCopy)
    {
      v8 = "true";
    }

    v21 = 138412546;
    v22 = nameCopy;
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@: Foreground: %s", &v21, 0x16u);
  }

  v9 = [(NSMutableDictionary *)self->appCompactState objectForKey:nameCopy];
  v10 = v9;
  if (!modeCopy && !v9)
  {
    v11 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = nameCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "Removal when already gone for app: %@", &v21, 0xCu);
    }

    v10 = 0;
    goto LABEL_33;
  }

  if (modeCopy && v9)
  {
    v12 = procStateLogHandle;
    if (!os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_33;
    }

    v21 = 138412290;
    v22 = nameCopy;
    v13 = "Analytics Engine: double ON for app: %@";
LABEL_32:
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, &v21, 0xCu);
    goto LABEL_33;
  }

  if (modeCopy)
  {
    v14 = MEMORY[0x277CCABB0];
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:nameCopy];
    v15 = [v14 numberWithDouble:?];

    [(NSMutableDictionary *)self->appCompactState setObject:v15 forKey:nameCopy];
    v16 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138412546;
      v22 = v15;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_INFO, "Set appCompactState object %@ for key %@", &v21, 0x16u);
    }

    if (self->appTrackingEnabled && nameCopy && self->endpointTrackingEnabled)
    {
      [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:nameCopy];
    }

    v10 = v15;
  }

  else
  {
    [(FlowAnalyticsEngine *)self _usageFingerprintForBundleName:nameCopy];
    if (v17 != 0.0)
    {
      v18 = v17;
      [v10 doubleValue];
      if (v19 != v18)
      {
        if (self->appTrackingEnabled && self->endpointTrackingEnabled)
        {
          [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:nameCopy];
          [(FlowAnalyticsEngine *)self _archiveAppEndpointsForUserId:gEffectiveUserId bundleName:nameCopy];
        }

        v20 = procStateLogHandle;
        if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412290;
          v22 = nameCopy;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "call _saveAndUnloadSelectState on %@ exiting foreground state", &v21, 0xCu);
        }

        [(FlowAnalyticsEngine *)self _saveAndUnloadSelectState];
      }
    }

    [(NSMutableDictionary *)self->appCompactState removeObjectForKey:nameCopy];
    v12 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = nameCopy;
      v13 = "Remove appCompactState key %@";
      goto LABEL_32;
    }
  }

LABEL_33:
}

- (void)_handleApplicationNotificationStateChangedForBundleName:(id)name edgeMode:(BOOL)mode intervalType:(int)type
{
  modeCopy = mode;
  v68 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "false";
    if (modeCopy)
    {
      v10 = "true";
    }

    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "State Change for bundle name %@: Foreground: %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v65 = __Block_byref_object_copy__5;
  v66 = __Block_byref_object_dispose__5;
  v67 = [(NSMutableDictionary *)self->appState objectForKey:nameCopy];
  v11 = *(*&buf[8] + 40);
  if (modeCopy)
  {
    if (v11)
    {
      v12 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
      {
        *v60 = 138412290;
        v61 = nameCopy;
        v13 = "Analytics Engine: double ON for app: %@";
LABEL_17:
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, v13, v60, 0xCu);
        goto LABEL_79;
      }

      goto LABEL_79;
    }

LABEL_10:
    v14 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:nameCopy shouldFillMiss:0];
    v55 = v14;
    if (v14)
    {
      v15 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v14];
      v16 = v15;
      if (v15)
      {
        wifiIN = [v15 wifiIN];
        [wifiIN doubleValue];
        if (v18 == 0.0)
        {
          wifiOUT = [v16 wifiOUT];
          [wifiOUT doubleValue];
          if (v20 == 0.0)
          {
            wwanIN = [v16 wwanIN];
            [wwanIN doubleValue];
            v54 = wwanIN;
            if (v29 == 0.0)
            {
              wwanOUT = [v16 wwanOUT];
              [wwanOUT doubleValue];
              if (v30 == 0.0)
              {
                wiredIN = [v16 wiredIN];
                [wiredIN doubleValue];
                if (v31 == 0.0)
                {
                  wiredOUT = [v16 wiredOUT];
                  [wiredOUT doubleValue];
                  v21 = v32 != 0.0;
                }

                else
                {
                  v21 = 1;
                }
              }

              else
              {
                v21 = 1;
              }
            }

            else
            {
              v21 = 1;
            }
          }

          else
          {
            v21 = 1;
          }
        }

        else
        {
          v21 = 1;
        }

LABEL_45:
        if (modeCopy)
        {
          date = [MEMORY[0x277CBEAA8] date];
          aspace = self->aspace;
          entityName = [MEMORY[0x277D6B580] entityName];
          v36 = [(AppAnalytics *)aspace createTemporaryEntityForEntityName:entityName];
          v37 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v36;

          if (*(*&buf[8] + 40))
          {
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
            [*(*&buf[8] + 40) setKind:v38];

            v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
            v40 = v39;
            if (v16)
            {
              wifiIN2 = [v16 wifiIN];
            }

            else
            {
              wifiIN2 = v39;
            }

            [*(*&buf[8] + 40) setWifiIN_start:wifiIN2];
            if (v16)
            {

              wifiOUT2 = [v16 wifiOUT];
            }

            else
            {
              wifiOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWifiOUT_start:wifiOUT2];
            if (v16)
            {

              wwanIN2 = [v16 wwanIN];
            }

            else
            {
              wwanIN2 = v40;
            }

            [*(*&buf[8] + 40) setWwanIN_start:wwanIN2];
            if (v16)
            {

              wwanOUT2 = [v16 wwanOUT];
            }

            else
            {
              wwanOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWwanOUT_start:wwanOUT2];
            if (v16)
            {

              wiredIN2 = [v16 wiredIN];
            }

            else
            {
              wiredIN2 = v40;
            }

            [*(*&buf[8] + 40) setWiredIN_start:wiredIN2];
            if (v16)
            {

              wiredOUT2 = [v16 wiredOUT];
            }

            else
            {
              wiredOUT2 = v40;
            }

            [*(*&buf[8] + 40) setWiredOUT_start:wiredOUT2];
            if (v16)
            {
            }

            [*(*&buf[8] + 40) setTimeStart:date];
            [(NSMutableDictionary *)self->appState setObject:*(*&buf[8] + 40) forKey:nameCopy];
            if (self->appTrackingEnabled && self->endpointTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self _fetchAppEndpointsRecordForUserId:gEffectiveUserId bundleName:nameCopy];
            }
          }

          else
          {
            v44 = procStateLogHandle;
            if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v60 = 138412290;
              v61 = nameCopy;
              _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Failed to allocate SFAppRun entity for %@", v60, 0xCu);
            }
          }
        }

        else
        {
          if (!v21)
          {
            [(NSMutableDictionary *)self->appState removeObjectForKey:nameCopy];
            v42 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = 0;

            [(FlowAnalyticsEngine *)self _saveAndUnloadSelectState];
            v43 = v55;
LABEL_78:

            goto LABEL_79;
          }

          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __101__FlowAnalyticsEngine__handleApplicationNotificationStateChangedForBundleName_edgeMode_intervalType___block_invoke;
          v56[3] = &unk_27898C4E0;
          v56[4] = self;
          v57 = nameCopy;
          v58 = buf;
          typeCopy = type;
          [(FlowAnalyticsEngine *)self _refreshFullDataUsageWithCallback:v56];
        }

        v43 = v55;
        goto LABEL_78;
      }

      v23 = procStateLogHandle;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        ctShim = self->ctShim;
        if (ctShim)
        {
          currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          if (currentSubscriberTag)
          {
            v53 = currentSubscriberTag;
            currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
            v27 = 1;
          }

          else
          {
            v53 = 0;
            v27 = 0;
            currentSubscriberTag2 = &unk_2847EF6C8;
          }
        }

        else
        {
          v27 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }

        *v60 = 138412546;
        v61 = nameCopy;
        v62 = 2112;
        v63 = currentSubscriberTag2;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "Failed to find LiveUsage for %@ with subscriber tag: %@", v60, 0x16u);
        if (v27)
        {
        }

        if (ctShim)
        {
        }
      }
    }

    else
    {
      v22 = procStateLogHandle;
      if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 138412290;
        v61 = nameCopy;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Failed to find process for %@", v60, 0xCu);
      }
    }

    v16 = 0;
    v21 = 0;
    goto LABEL_45;
  }

  if (v11)
  {
    goto LABEL_10;
  }

  v12 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
  {
    *v60 = 138412290;
    v61 = nameCopy;
    v13 = "Removal when already gone for app: %@";
    goto LABEL_17;
  }

LABEL_79:
  _Block_object_dispose(buf, 8);
}

void __101__FlowAnalyticsEngine__handleApplicationNotificationStateChangedForBundleName_edgeMode_intervalType___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _processFetchForName:0 bundle:*(a1 + 40) shouldFillMiss:0];
  v4 = v3;
  if (v3 && ([v3 isApp] & 1) != 0)
  {
    v5 = [*(a1 + 32) _liveUsageFetchForProcess:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 wifiIN];
      [*(*(*(a1 + 48) + 8) + 40) setWifiIN_end:v7];

      v8 = [v6 wifiOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWifiOUT_end:v8];

      v9 = [v6 wwanIN];
      [*(*(*(a1 + 48) + 8) + 40) setWwanIN_end:v9];

      v10 = [v6 wwanOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWwanOUT_end:v10];

      v11 = [v6 wiredIN];
      [*(*(*(a1 + 48) + 8) + 40) setWiredIN_end:v11];

      v12 = [v6 wiredOUT];
      [*(*(*(a1 + 48) + 8) + 40) setWiredOUT_end:v12];

      v13 = [MEMORY[0x277CBEAA8] date];
      [*(*(*(a1 + 48) + 8) + 40) setTimeEnd:v13];

      v14 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v61 = *(a1 + 40);
        v15 = *(*(*(a1 + 48) + 8) + 40);
        log = v14;
        v67 = [v15 wifiIN_end];
        [v67 doubleValue];
        v17 = v16;
        v66 = [*(*(*(a1 + 48) + 8) + 40) wifiIN_start];
        [v66 doubleValue];
        v19 = v17 - v18;
        v65 = [*(*(*(a1 + 48) + 8) + 40) wifiOUT_end];
        [v65 doubleValue];
        v21 = v20;
        v64 = [*(*(*(a1 + 48) + 8) + 40) wifiOUT_start];
        [v64 doubleValue];
        v23 = v21 - v22;
        v62 = [*(*(*(a1 + 48) + 8) + 40) wwanIN_end];
        [v62 doubleValue];
        v25 = v24;
        v60 = [*(*(*(a1 + 48) + 8) + 40) wwanIN_start];
        [v60 doubleValue];
        v27 = v25 - v26;
        v59 = [*(*(*(a1 + 48) + 8) + 40) wwanOUT_end];
        [v59 doubleValue];
        v29 = v28;
        v58 = [*(*(*(a1 + 48) + 8) + 40) wwanOUT_start];
        [v58 doubleValue];
        v31 = v29 - v30;
        v32 = [*(*(*(a1 + 48) + 8) + 40) wiredIN_end];
        [v32 doubleValue];
        v34 = v33;
        v35 = [*(*(*(a1 + 48) + 8) + 40) wiredIN_start];
        [v35 doubleValue];
        v37 = v34 - v36;
        v38 = [*(*(*(a1 + 48) + 8) + 40) wiredOUT_end];
        [v38 doubleValue];
        v40 = v39;
        v41 = [*(*(*(a1 + 48) + 8) + 40) wiredOUT_start];
        [v41 doubleValue];
        v43 = v40 - v42;
        v44 = [*(*(*(a1 + 48) + 8) + 40) timeEnd];
        v45 = [*(*(*(a1 + 48) + 8) + 40) timeStart];
        [v44 timeIntervalSinceDate:v45];
        *buf = 138414082;
        v69 = v61;
        v70 = 2048;
        v71 = v19;
        v72 = 2048;
        v73 = v23;
        v74 = 2048;
        v75 = v27;
        v76 = 2048;
        v77 = v31;
        v78 = 2048;
        v79 = v37;
        v80 = 2048;
        v81 = v43;
        v82 = 2048;
        v83 = v46;
        _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEBUG, "%@ usage: WiFi in/out: %.0f/%.0f, Cell in/out: %.0f/%.0f, Wired in/out %.0f/%.0fDuration: %.1f seconds", buf, 0x52u);
      }

      if ([*(a1 + 32) haveCalendar])
      {
        [*(a1 + 32) _calendarUsageForApp:v4 givenLastRun:*(*(*(a1 + 48) + 8) + 40)];
      }

      [*(a1 + 32) _compactUsageForApp:v4 intervalType:*(a1 + 56) givenLastRun:*(*(*(a1 + 48) + 8) + 40)];
      [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
      v47 = *(*(a1 + 48) + 8);
      v48 = *(v47 + 40);
      *(v47 + 40) = 0;

      v49 = *(a1 + 32);
      if (v49[576] == 1 && v49[577] == 1)
      {
        [v49 _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:*(a1 + 40)];
        [*(a1 + 32) _archiveAppEndpointsForUserId:gEffectiveUserId bundleName:*(a1 + 40)];
        v49 = *(a1 + 32);
      }

      [v49 _saveAndUnloadSelectState];
    }

    else
    {
      v52 = procStateLogHandle;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = *(a1 + 32);
        v54 = *(a1 + 40);
        v55 = *(v53 + 648);
        if (v55)
        {
          v1 = [*(v53 + 648) currentSubscriberTag];
          if (v1)
          {
            v56 = [*(*(a1 + 32) + 648) currentSubscriberTag];
            v57 = 1;
          }

          else
          {
            v57 = 0;
            v56 = &unk_2847EF6C8;
          }
        }

        else
        {
          v57 = 0;
          v56 = &unk_2847EF6C8;
        }

        *buf = 138412546;
        v69 = v54;
        v70 = 2112;
        v71 = *&v56;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_ERROR, "Upon exit: failed to find LiveUsage for %@ with subscriber tag: %@", buf, 0x16u);
        if (v57)
        {
        }

        if (v55)
        {
        }
      }

      [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
    }
  }

  else
  {
    v50 = procStateLogHandle;
    if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_ERROR))
    {
      v51 = *(a1 + 40);
      *buf = 138412290;
      v69 = v51;
      _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "Upon exit: %@: invalid App", buf, 0xCu);
    }

    [*(*(a1 + 32) + 120) removeObjectForKey:*(a1 + 40)];
  }
}

- (void)_changedForegroundState:(BOOL)state forBundle:(id)bundle
{
  stateCopy = state;
  v12 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v7 = procStateLogHandle;
  if (os_log_type_enabled(procStateLogHandle, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109378;
    v9[1] = stateCopy;
    v10 = 2112;
    v11 = bundleCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "changedForegroundState to %d for %@", v9, 0x12u);
  }

  v8 = stateCopy || +[AppStateMonitor hasAnyForegroundApp];
  [AppTracker noteForegroundState:stateCopy forApp:bundleCopy hasForegroundApps:v8];
  if (self->_haveTypicalUsage)
  {
    [(FlowAnalyticsEngine *)self _handleApplicationNotificationStateChangedForBundleName:bundleCopy edgeMode:stateCopy intervalType:0];
  }

  else
  {
    [(FlowAnalyticsEngine *)self _handleApplicationNotificationCompactForBundleName:bundleCopy edgeMode:stateCopy];
  }
}

- (void)processSnapshotForConnectionEstablishment:(id)establishment
{
  v38 = *MEMORY[0x277D85DE8];
  establishmentCopy = establishment;
  snapshotReason = [establishmentCopy snapshotReason];
  [establishmentCopy flowDuration];
  if (v6 < 7.5 || snapshotReason == 2)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = establishmentCopy;
      qUICState = [v12 QUICState];
      qUICStateNumber = [v12 QUICStateNumber];

      if (qUICStateNumber > 8)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }

LABEL_6:
    qUICState = 0;
    goto LABEL_21;
  }

  v10 = establishmentCopy;
  qUICState = [v10 TCPState];
  tCPStateNumber = [v10 TCPStateNumber];

  if ((tCPStateNumber & 0xFFFFFFFE) != 2)
  {
    goto LABEL_21;
  }

LABEL_12:
  attributedEntity = [establishmentCopy attributedEntity];
  interfaceWiFi = [establishmentCopy interfaceWiFi];
  interfaceCellular = [establishmentCopy interfaceCellular];
  [establishmentCopy flowDuration];
  v18 = v17;
  v19 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    v20 = @"Other";
    if (interfaceCellular)
    {
      v20 = @"Cellular";
    }

    *buf = 138413058;
    v31 = attributedEntity;
    v34 = 2048;
    v32 = 2112;
    v33 = qUICState;
    if (interfaceWiFi)
    {
      v20 = @"Wi-Fi";
    }

    v35 = v18;
    v36 = 2112;
    v37 = v20;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Found pre-connection establishment stuck flow for %@ [state=%@, duration=%.2fs, interface=%@]", buf, 0x2Au);
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{interfaceWiFi, @"kNotificationFlowScrutinizerIsWiFiFlow"}];
  v29[0] = v21;
  v28[1] = @"kNotificationFlowScrutinizerIsCellularFlow";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:interfaceCellular];
  v29[1] = v22;
  v28[2] = @"kNotificationFlowScrutinizerFlowDuration";
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v24 = v23;
  v28[3] = @"kNotificationFlowScrutinizerAttributedEntity";
  v25 = @"unknown";
  if (attributedEntity)
  {
    v25 = attributedEntity;
  }

  v29[2] = v23;
  v29[3] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kNotificationFlowScrutinizerPreConnectionStuckFlow" object:self userInfo:v26];

LABEL_21:
}

- (void)networkDomainUserAppTrackingChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserAppTrackingChanged delegate: %@", buf, 0xCu);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__FlowAnalyticsEngine_networkDomainUserAppTrackingChanged___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v8);
}

- (void)networkDomainUserEndpointTrackingChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = changedCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "networkDomainUserEndpointTrackingChanged delegate: %@", buf, 0xCu);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__FlowAnalyticsEngine_networkDomainUserEndpointTrackingChanged___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = changedCopy;
  v7 = changedCopy;
  dispatch_async(queue, v8);
}

- (void)networkDomainResolution:(id)resolution
{
  v20 = *MEMORY[0x277D85DE8];
  resolutionCopy = resolution;
  v5 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = resolutionCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "networkDomainResolution delegate: %@", buf, 0xCu);
  }

  v6 = resolutionCopy;
  v7 = [v6 objectForKeyedSubscript:@"ResolvingEffectiveUserId"];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  v9 = [v6 objectForKeyedSubscript:@"ResolvingBundleName"];
  v10 = [v6 objectForKeyedSubscript:@"ResolvingEndpoints"];
  queue = [(AnalyticsEngineCore *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__FlowAnalyticsEngine_networkDomainResolution___block_invoke;
  v14[3] = &unk_27898A758;
  v14[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = unsignedIntegerValue;
  v12 = v10;
  v13 = v9;
  dispatch_async(queue, v14);
}

_BYTE *__47__FlowAnalyticsEngine_networkDomainResolution___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[576] == 1 && result[577] == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      return [result _updateAppEndpoints:*(a1 + 48) type:1 userId:*(a1 + 56) bundleName:v3 flowClosing:0];
    }
  }

  return result;
}

- (void)sendPowerLogReport:(id)report isStart:(BOOL)start
{
  v8 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = reportCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "SDM power log report %@", &v6, 0xCu);
  }

  PLLogRegisteredEvent();
}

- (void)postAWDMetric:(id)metric withIdentifier:(unsigned int)identifier
{
  v4 = *&identifier;
  v12 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = metricCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "SDM AWD report %@", &v10, 0xCu);
  }

  v7 = +[AWDAgent defaultInstance];
  v8 = [v7 shouldSendMetric:v4];

  if (v8)
  {
    v9 = +[AWDAgent defaultInstance];
    [v9 postMetric:metricCopy withIdentifier:v4];
  }
}

- (void)postCAEvent:(id)event withName:(id)name
{
  eventCopy = event;
  v4 = eventCopy;
  AnalyticsSendEventLazy();
}

- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  if (id - 18 < 2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    setApparentTime(v14);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v15 = +[FlowScrutinizer sharedInstance];
    date2 = [v15 getLedgerState:id == 19];

    [dictionary setObject:date2 forKeyedSubscript:@"FlowLedgerDetails"];
    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "FlowLedger details", date, "collected on demand", 0, dictionary);
  }

  else
  {
    if (id != 15)
    {
      if (id == 12)
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        dictionary = dictionary2;
        cellThroughputAdviser = self->cellThroughputAdviser;
        if (cellThroughputAdviser)
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v13 = [(CellThroughputAdviser *)cellThroughputAdviser getStateAt:?];
          [dictionary setObject:v13 forKeyedSubscript:@"CellThroughputDetails"];
        }

        else
        {
          [dictionary2 setObject:@"No adviser configured" forKeyedSubscript:@"CellThroughputDetails"];
        }

        date2 = [MEMORY[0x277CBEAA8] date];
        (*(blockCopy + 2))(blockCopy, 0, "CellThroughputAdvice  details", date2, "collected on demand", 0, dictionary);
      }

      else
      {
        dictionary = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAC0] dictionary];
        (*(blockCopy + 2))(blockCopy, 0, "FAE unrecognised managed event request", dictionary, "collected on demand", 0, date2);
      }

      goto LABEL_12;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v18 = +[WiFiThroughputAdviser sharedInstance];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    date2 = [v18 getStateAt:?];

    [dictionary setObject:date2 forKeyedSubscript:@"WiFiThroughputDetails"];
    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "WiFiThroughputAdvice  details", date, "collected on demand", 0, dictionary);
  }

LABEL_12:
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__FlowAnalyticsEngine_generateInfoForId_context_uuid_completionBlock___block_invoke;
  block[3] = &unk_27898AFB8;
  idCopy = id;
  contextCopy = context;
  block[4] = self;
  v16 = uuidCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = uuidCopy;
  dispatch_async(queue, block);
}

- (void)_newCoreMediaAssetDownloadEvent:(id)event
{
  v60 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selfCopy = self;
  if (![(FlowScrutinizer *)self->flowScrutinizer assetDownloadsScrutinized])
  {
    goto LABEL_46;
  }

  userInfo = [eventCopy userInfo];
  [userInfo keyEnumerator];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  v31 = 408;
  v32 = eventCopy;
  v7 = 0;
  v34 = *v46;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v46 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v45 + 1) + 8 * i);

      v10 = [userInfo objectForKeyedSubscript:v9];
      eventKey = [v10 eventKey];
      eventData = [v10 eventData];
      if ([v10 processName])
      {
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:objc_msgSend(v10 encoding:{"processName"), 4}];
      }

      else
      {
        v13 = 0;
      }

      v7 = v9;
      v14 = [SymptomStore keyFromSymptomName:@"SYMPTOM_TRANSPORT_DISCONNECT", v31];
      v15 = [eventKey isEqualToString:v14];

      if (v15)
      {
        if (v13 && (([v13 isEqualToString:@"mediaserverd"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"mediaplaybackd")))
        {
          v28 = *(&selfCopy->super.super.isa + v31);
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          [v28 noteCoreMediaAssetDownloadEvent:2 downloadUUID:0 byProcess:v13 onBehalfOf:0 duration:0.0 at:v29];
        }

        goto LABEL_43;
      }

      if ((*(eventData + 4) & 4) == 0)
      {
        goto LABEL_16;
      }

      v16 = *(eventData + 40);
      if ((v16 & 1) == 0)
      {
        v30 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v50 = v10;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "FAE to CellThroughputAdviser, asset download prohibits cell, event ignored %@", buf, 0xCu);
        }

LABEL_43:

        goto LABEL_44;
      }

      if ((~*(eventData + 40) & 6) != 0)
      {
        v17 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          v50 = v16;
          v51 = 2112;
          v52 = v10;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "FAE to CellThroughputAdviser, asset download with (0x%llx) restrictions, continue %@", buf, 0x16u);
        }
      }

LABEL_16:
      v36 = eventKey;
      v18 = [v10 eventQualifierStringForKey:@"1"];
      processId = [v10 processId];
      if (selfCopy->assetDownloadProcessId != processId)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke;
        block[3] = &unk_27898AFE0;
        block[4] = selfCopy;
        block[5] = processId;
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      eventQualifiers = [v10 eventQualifiers];
      v21 = [eventQualifiers objectForKeyedSubscript:@"2"];

      if (v21 && [v21 length] == 16)
      {
        v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v21, "bytes")}];
      }

      else
      {
        v22 = 0;
      }

      v23 = *(eventData + 4);
      if (v23)
      {
        v24 = *(eventData + 24);
      }

      else
      {

        v24 = 0;
        v22 = 0;
        v23 = *(eventData + 4);
      }

      v25 = 86400.0;
      if ((v23 & 2) != 0)
      {
        v25 = *(eventData + 32) / 1000.0;
      }

      v26 = flowScrutinyLogHandle;
      if (v22 && v13)
      {
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219010;
          v50 = v24;
          v51 = 2112;
          v52 = v13;
          v53 = 2112;
          v54 = v18;
          v55 = 2112;
          v56 = v22;
          v57 = 2048;
          v58 = v25;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "FAE to flowScrutinizer, Download event %lld %@ on behalf of %@ download UUID %@ duration %.3f", buf, 0x34u);
        }

        queue = [(AnalyticsEngineCore *)selfCopy queue];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke_405;
        v38[3] = &unk_27898C558;
        v38[4] = selfCopy;
        v42 = v24;
        v39 = v22;
        v40 = v13;
        v41 = v18;
        v43 = v25;
        dispatch_async(queue, v38);
      }

      else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v10;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "FAE to flowScrutinizer, incorrect asset download symptom format %@", buf, 0xCu);
      }
    }

    v6 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_44:

  eventCopy = v32;
LABEL_45:

LABEL_46:
}

void *__55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke(uint64_t a1)
{
  result = [TransportHandler requestExplicitDisconnectSymptom:*(a1 + 40)];
  *(*(a1 + 32) + 392) = *(a1 + 40);
  return result;
}

uint64_t __55__FlowAnalyticsEngine__newCoreMediaAssetDownloadEvent___block_invoke_405(double *a1)
{
  v1 = *(a1 + 5);
  v2 = *(*(a1 + 4) + 408);
  v4 = *(a1 + 7);
  v3 = *(a1 + 8);
  v5 = *(a1 + 6);
  v6 = a1[9];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteCoreMediaAssetDownloadEvent:v3 downloadUUID:v1 byProcess:v5 onBehalfOf:v4 duration:v6 at:v7];
}

- (void)_noteSizeableBackgroundTransferEvent:(id)event
{
  v48 = *MEMORY[0x277D85DE8];
  if (!self->cellThroughputAdviser)
  {
    return;
  }

  userInfo = [event userInfo];
  [userInfo keyEnumerator];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v36;
  v24 = v30;
  *&v5 = 138413058;
  v23 = v5;
  v25 = *v36;
  do
  {
    v9 = 0;
    v27 = v6;
    do
    {
      v10 = v7;
      if (*v36 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v35 + 1) + 8 * v9);

      v11 = [userInfo objectForKeyedSubscript:v7];
      eventData = [v11 eventData];
      v13 = [v11 eventQualifierStringForKey:@"1"];
      v14 = v13;
      if ((~*(eventData + 4) & 7) != 0)
      {
      }

      else if (v13)
      {
        v15 = userInfo;
        v16 = *(eventData + 24);
        v17 = *(eventData + 32);
        v18 = *(eventData + 40);
        v19 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v40 = v14;
          v41 = 2048;
          v42 = v16;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v17;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "FAE to CellThroughputAdviser, Sizeable Background Transfer event named %@, event %lld, download %llu, upload %llu", buf, 0x2Au);
        }

        v20 = [(AnalyticsEngineCore *)self queue:v23];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v30[0] = __60__FlowAnalyticsEngine__noteSizeableBackgroundTransferEvent___block_invoke;
        v30[1] = &unk_27898C580;
        v30[2] = self;
        v31 = v14;
        v32 = v16;
        v33 = v18;
        v34 = v17;
        v21 = v14;
        dispatch_async(v20, block);

        userInfo = v15;
        v8 = v25;
        v6 = v27;
        goto LABEL_15;
      }

      v22 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v11;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "FAE to CellThroughputAdviser, incorrect sizeable background transfer symptom format %@", buf, 0xCu);
      }

LABEL_15:

      ++v9;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  }

  while (v6);

LABEL_18:
}

uint64_t __60__FlowAnalyticsEngine__noteSizeableBackgroundTransferEvent___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 368);
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteSizeableBackgroundTransferEventName:v1 event:v3 downloadSizeBytes:v4 uploadSizeBytes:v5 at:?];
}

- (void)_newExpectedTransfer:(id)transfer
{
  v53 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  selfCopy = self;
  if ([(FlowScrutinizer *)self->flowScrutinizer expectedTransfersScrutinized])
  {
    userInfo = [transferCopy userInfo];
    [userInfo keyEnumerator];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v43 = 0u;
    v32 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v32)
    {
      v25 = transferCopy;
      v6 = 0;
      v31 = *v41;
      v26 = userInfo;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          v8 = v6;
          if (*v41 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v40 + 1) + 8 * i);

          v9 = [userInfo objectForKeyedSubscript:v6];
          v10 = [v9 eventQualifierStringForKey:@"3"];
          v11 = [v9 eventQualifierStringForKey:@"7"];
          v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
          eventQualifiers = [v9 eventQualifiers];
          v14 = [eventQualifiers objectForKeyedSubscript:@"8"];

          eventQualifiers2 = [v9 eventQualifiers];
          v16 = [eventQualifiers2 objectForKeyedSubscript:@"9"];

          if (v12)
          {
            v17 = v14 == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = v17 || v16 == 0;
          if (!v18 && [v14 length] == 4 && objc_msgSend(v16, "length") == 8)
          {
            v39 = 0;
            v38 = 0;
            [v14 getBytes:&v39 length:4];
            [v16 getBytes:&v38 length:8];
            v19 = v39 - 1;
            if ((v39 - 1) >= 8)
            {
              v22 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v45) = v39;
                _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "_newExpectedTransfer, unexpected transfer type %d", buf, 8u);
              }

              LOBYTE(v29) = 0;
              LOBYTE(v20) = 1;
            }

            else
            {
              v29 = 0xCCu >> v19;
              v20 = 0xFu >> v19;
            }

            v28 = v20;
            v23 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218754;
              v45 = v38;
              v46 = 1024;
              v47 = v39;
              v48 = 2112;
              v49 = v12;
              v50 = 2112;
              v51 = v10;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, "FAE to FlowScrutinizer, Transfer size %lld type %d flow UUID %@ from %@", buf, 0x26u);
            }

            queue = [(AnalyticsEngineCore *)selfCopy queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __44__FlowAnalyticsEngine__newExpectedTransfer___block_invoke;
            block[3] = &unk_27898C5A8;
            block[4] = selfCopy;
            v35 = v38;
            v36 = v28 & 1;
            v37 = v29 & 1;
            v34 = v12;
            dispatch_async(queue, block);

            userInfo = v26;
          }

          else
          {
            v21 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = v9;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "FAE to CellThroughputAdviser, incorrect symptom format %@", buf, 0xCu);
            }
          }
        }

        v32 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v32);

      transferCopy = v25;
    }
  }
}

uint64_t __44__FlowAnalyticsEngine__newExpectedTransfer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 408);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];

  return [v2 noteExpectedTransfer:v3 inbound:v4 upperThreshold:v5 flowUUID:v1 at:?];
}

- (void)_startMonitoringNetworkInterface:(int)interface usingThreshold:(unint64_t)threshold
{
  v5 = *&interface;
  v21 = *MEMORY[0x277D85DE8];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    thresholdCopy = threshold;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Configure threshold %d on interface %d", buf, 0xEu);
  }

  nstatManager = self->nstatManager;
  v15 = *MEMORY[0x277D2CBB8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{threshold, v9}];
  v14 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [(NWStatsManager *)nstatManager configure:v12];
}

- (void)_dumpSubFlowCounts
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = 8;
  v12 = 0;
  v9 = 8;
  v10 = 0;
  if (sysctlbyname("net.soflow.count", &v12, &v11, 0, 0) < 0)
  {
    v4 = flowLogHandle;
    if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v5 = v4;
    v6 = *__error();
    *buf = 67109120;
    LODWORD(v14) = v6;
    v7 = "Unable to retrieve current subflow counts, error %d";
LABEL_9:
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, v7, buf, 8u);

    return;
  }

  v2 = sysctlbyname("net.soflow.high_water_mark", &v10, &v9, 0, 0);
  v3 = flowLogHandle;
  if (v2 < 0)
  {
    if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v5 = v3;
    v8 = *__error();
    *buf = 67109120;
    LODWORD(v14) = v8;
    v7 = "Unable to retrieve current subflow high water mark, error %d";
    goto LABEL_9;
  }

  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v12;
    v15 = 2048;
    v16 = v10;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Kernel UDP subflows current count %ld high water mark %ld", buf, 0x16u);
  }
}

- (void)_dumpState
{
  v42[2] = *MEMORY[0x277D85DE8];
  +[AppTracker dumpState];
  +[TrackedFlow dumpState];
  [(BitmapRetriever *)self->bitmapRetriever dumpActivityBitmap];
  cellThroughputAdviser = self->cellThroughputAdviser;
  if (cellThroughputAdviser)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(CellThroughputAdviser *)cellThroughputAdviser dumpStateAt:1 verbose:?];
  }

  [(FlowRefreshScheduler *)self->refreshScheduler dumpState];
  [(NWStatsManager *)self->nstatManager dumpState];
  v4 = MEMORY[0x277D2CA90];
  v5 = *MEMORY[0x277D2CC40];
  v41[0] = *MEMORY[0x277D2CC48];
  v41[1] = v5;
  v42[0] = MEMORY[0x277CBEC38];
  v42[1] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v4 dumpKernelMetrics:v6];

  [(FlowAnalyticsEngine *)self _dumpSubFlowCounts];
  v7 = 584;
  if (self->snapshotFlowUUIDs)
  {
    v8 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Connection flow UUIDs stored in memory, keyed with sourceKey", buf, 2u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->snapshotFlowUUIDs;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v31;
      *&v10 = 134218498;
      v27 = v10;
      do
      {
        v14 = 0;
        v28 = v11;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          v16 = [*(&self->super.super.isa + v7) objectForKeyedSubscript:{v15, v27}];
          v12 += [v16 count];

          v17 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(&self->super.super.isa + v7);
            v19 = v17;
            v20 = [v18 objectForKeyedSubscript:v15];
            [v20 allObjects];
            v22 = v21 = v7;
            [v22 componentsJoinedByString:{@", "}];
            v23 = v13;
            v25 = v24 = self;
            *buf = v27;
            v35 = v12;
            v36 = 2112;
            v37 = v15;
            v38 = 2112;
            v39 = v25;
            _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "\tcumulative %lu: %@ -> [%@]", buf, 0x20u);

            v7 = v21;
            self = v24;
            v13 = v23;
            v11 = v28;
          }

          ++v14;
        }

        while (v11 != v14);
        v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v11);
    }
  }

  v26 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v35 = connSnapshotFlowUUIDHitsAndMisses_0;
    v36 = 2048;
    v37 = connSnapshotFlowUUIDHitsAndMisses_1;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Connection flow UUIDs that were hit/missed by flows (since symptomsd's start): %llu/%llu", buf, 0x16u);
  }
}

- (BOOL)_setupLocalCache
{
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Setting up local cache", v13, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  flowCache = self->flowCache;
  self->flowCache = v4;

  if (!self->flowCache)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  flowInstant = self->flowInstant;
  self->flowInstant = v6;

  if (!self->flowInstant)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  appState = self->appState;
  self->appState = v8;

  if (!self->appState)
  {
    return 0;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  appCompactState = self->appCompactState;
  self->appCompactState = v10;

  return self->appCompactState != 0;
}

- (void)_removeAllInfoForProcess:(id)process
{
  v14 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138477827;
    v13 = processCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "_removeAllInfoForProcess %{private}@", &v12, 0xCu);
  }

  if (processCopy)
  {
    name = [processCopy name];
    extensionName = [processCopy extensionName];
    if (extensionName)
    {
      v8 = 4;
    }

    else
    {
      bundleName = [processCopy bundleName];
      if (bundleName)
      {
        v8 = 3;
      }

      else
      {
        procName = [processCopy procName];
        v8 = 2 * (procName != 0);
      }
    }

    [(FlowAnalyticsEngine *)self _removeInfoFromWorkspaceForProcess:processCopy];
    v11 = analyticsLogHandle;
    if (name)
    {
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = name;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Removing local cache for %@", &v12, 0xCu);
      }

      [(FlowAnalyticsEngine *)self _removeFromProcCache:name ofType:v8];
      [(NSMutableDictionary *)self->appState removeObjectForKey:name];
      [(NSMutableDictionary *)self->appCompactState removeObjectForKey:name];
    }

    else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = processCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Trying to removing local cache for %@ with nil name", &v12, 0xCu);
    }
  }
}

- (void)_removeInfoFromWorkspaceForProcess:(id)process
{
  v26 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v23 = processCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Removing Process entity %{private}@ from workspace", buf, 0xCu);
  }

  if ([processCopy isApp])
  {
    v6 = processCopy;
    hasTypicalUsage = [v6 hasTypicalUsage];
    v8 = [hasTypicalUsage count];

    if (v8)
    {
      aspace = self->aspace;
      hasTypicalUsage2 = [v6 hasTypicalUsage];
      v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v8}];
      v12 = [hasTypicalUsage2 objectsAtIndexes:v11];
      [(AppAnalytics *)aspace removeEntities:v12];
    }

    v13 = self->aspace;
    hasCalendarUsage = [v6 hasCalendarUsage];
    allObjects = [hasCalendarUsage allObjects];
    [(AppAnalytics *)v13 removeEntities:allObjects];
  }

  [processCopy setHintLiveUsage:0];
  if (processCopy && [processCopy isApp])
  {
    bundleName = [processCopy bundleName];
    v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", gEffectiveUserId, @"bundleName", bundleName];
    v18 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v17 wspaceReset:0];
    v19 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v23 = v18;
      v24 = 2113;
      v25 = bundleName;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Removed %ld ADU records for %{private}@ via reset data", buf, 0x16u);
    }
  }

  pspace = self->pspace;
  v21 = [MEMORY[0x277CBEA60] arrayWithObject:processCopy];
  [(ProcessAnalytics *)pspace removeEntities:v21];
}

- (id)_processFetchForName:(id)name bundle:(id)bundle extension:(id)extension shouldFillMiss:(BOOL)miss
{
  missCopy = miss;
  v67 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
  extensionCopy = extension;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__5;
  v59 = __Block_byref_object_dispose__5;
  v60 = 0;
  if (extensionCopy)
  {
    objc_opt_class();
    if (!((bundleCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = 1;
        v14 = 4;
        v15 = MEMORY[0x277D6B5C8];
        v16 = extensionCopy;
        goto LABEL_13;
      }
    }

    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v62 = extensionCopy;
      v63 = 2113;
      v64 = bundleCopy;
      v18 = "_processFetchForName: extensionName %{private}@ requested with bundleID %{private}@, validation error";
      v19 = v17;
      v20 = 22;
LABEL_35:
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  if (bundleCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 1;
      v14 = 3;
      v15 = MEMORY[0x277D6B5C0];
      v16 = bundleCopy;
      goto LABEL_13;
    }

    v33 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 138477827;
    v62 = bundleCopy;
    v18 = "_processFetchForName: bundleID %{private}@, validation error";
LABEL_34:
    v19 = v33;
    v20 = 12;
    goto LABEL_35;
  }

  if (!nameCopy)
  {
    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "_processFetchForName: called with no parameters";
      v19 = v34;
      v20 = 2;
      goto LABEL_35;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 138477827;
    v62 = nameCopy;
    v18 = "_processFetchForName: processName %{private}@, validation error";
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 2;
  v15 = MEMORY[0x277D6B5D0];
  v16 = nameCopy;
LABEL_13:
  v21 = v16;
  v22 = *v15;
  v23 = [(FlowAnalyticsEngine *)self _fetchFromProcCacheWithName:v21 ofType:v14];
  v24 = v56[5];
  v56[5] = v23;

  if (v56[5])
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = off_27898CA70[v14 - 2];
      *buf = 138478083;
      v62 = v21;
      v63 = 2112;
      v64 = v26;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "_processFetchForName: Return existing cached Process for processName %{private}@ type %@", buf, 0x16u);
    }

    v27 = v56[5];
  }

  else
  {
    v47 = v13;
    p_pspace = &self->pspace;
    v48 = v22;
    v49 = [(ProcessAnalytics *)self->pspace processesWithName:v21 nameKind:v22];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __76__FlowAnalyticsEngine__processFetchForName_bundle_extension_shouldFillMiss___block_invoke;
    v50[3] = &unk_27898C5D0;
    v45 = extensionCopy;
    v51 = v45;
    v29 = bundleCopy;
    v52 = v29;
    v54 = &v55;
    v30 = nameCopy;
    v53 = v30;
    [v49 enumerateObjectsUsingBlock:v50];
    if (v56[5])
    {
      v31 = analyticsLogHandle;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = off_27898CA70[v14 - 2];
        *buf = 138478083;
        v62 = v21;
        v63 = 2112;
        v64 = v32;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "_processFetchForName: insert under name %{private}@ type %@", buf, 0x16u);
      }

      [(FlowAnalyticsEngine *)self _insertProcCache:v56[5] ofType:v14 underName:v21, v45];
    }

    else if (missCopy)
    {
      if (v47)
      {
        p_pspace = &self->aspace;
      }

      createEntity = [(ProcessAnalytics *)*p_pspace createEntity];
      v36 = v56[5];
      v56[5] = createEntity;

      v37 = v56[5];
      if (v37)
      {
        [v37 setProcName:v21];
        [v56[5] setBundleName:v29];
        [v56[5] setExtensionName:v46];
        date = [MEMORY[0x277CBEAA8] date];
        [v56[5] setFirstTimeStamp:date];

        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        [v56[5] setTimeStamp:distantPast];

        [(AnalyticsWorkspace *)self->super.workspace save];
        [(FlowAnalyticsEngine *)self _insertProcCache:v56[5] ofType:v14 underName:v21];
        v40 = analyticsLogHandle;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = v56[5];
          v42 = off_27898CA70[v14 - 2];
          *buf = 138478083;
          v62 = v41;
          v63 = 2112;
          v64 = v42;
          _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Created new Process entity %{private}@ and inserted to cache %@", buf, 0x16u);
        }
      }

      else
      {
        v44 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412803;
          v62 = v30;
          v63 = 2113;
          v64 = v29;
          v65 = 2113;
          v66 = v46;
          _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Failed to allocate Process entity for (process:{private}%@, bundleID:%{private}@, extension:%{private}@)", buf, 0x20u);
        }
      }
    }

    v27 = v56[5];
  }

LABEL_37:
  _Block_object_dispose(&v55, 8);

  return v27;
}

void __76__FlowAnalyticsEngine__processFetchForName_bundle_extension_shouldFillMiss___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  v9 = a1[4];
  if (v9)
  {
    v10 = [v7 extensionName];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
      v12 = a1[4];
      v13 = [v8 procName];
      if ([v12 isEqualToString:v13])
      {
        v14 = a1[5];
        v15 = [v8 bundleName];
        LODWORD(v14) = [v14 isEqualToString:v15];

        if (v14)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      v28 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v29 = a1[4];
      v30 = a1[5];
      v21 = v28;
      v22 = [v8 procName];
      v31 = [v8 bundleName];
      v61 = 138478595;
      v62 = v29;
      v63 = 2113;
      v64 = v30;
      v65 = 2113;
      v66 = v22;
      v67 = 2113;
      v68 = v31;
      v32 = "_processFetchForName: unexpected Process format for extensionName %{private}@ bundleID %{private}@: found procName %{private}@ bundleName %{private}@";
      v33 = v21;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 42;
      goto LABEL_27;
    }

    v26 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v27 = a1[4];
    v21 = v26;
    v22 = [v8 extensionName];
    v61 = 138478083;
    v62 = v27;
    v63 = 2113;
    v64 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested extension %{private}@ but get %{private}@";
    goto LABEL_12;
  }

  v16 = a1[5];
  v17 = [v7 extensionName];
  v18 = v17;
  if (v16)
  {

    if (v18)
    {
      v19 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_29;
      }

      v20 = a1[5];
      v21 = v19;
      v22 = [v8 extensionName];
      v61 = 138478083;
      v62 = v20;
      v63 = 2113;
      v64 = v22;
      v23 = "_processFetchForName: skipping Process return from processesWithName, require bundleID %{private}@ but has extension %{private}@";
      v24 = v21;
      v25 = OS_LOG_TYPE_DEBUG;
      goto LABEL_13;
    }

    v36 = a1[5];
    v37 = [v8 bundleName];
    LODWORD(v36) = [v36 isEqualToString:v37];

    if (v36)
    {
      v38 = a1[5];
      v39 = [v8 procName];
      LODWORD(v38) = [v38 isEqualToString:v39];

      if (!v38)
      {
        v40 = analyticsLogHandle;
        if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_29;
        }

        v41 = a1[5];
        v21 = v40;
        v22 = [v8 procName];
        v31 = [v8 bundleName];
        v61 = 138478339;
        v62 = v41;
        v63 = 2113;
        v64 = v22;
        v65 = 2113;
        v66 = v31;
        v32 = "_processFetchForName: unexpected Process format for bundleID %{private}@: procName %{private}@ bundleName %{private}@";
        v33 = v21;
        v34 = OS_LOG_TYPE_FAULT;
LABEL_26:
        v35 = 32;
LABEL_27:
        _os_log_impl(&dword_23255B000, v33, v34, v32, &v61, v35);

        goto LABEL_28;
      }

LABEL_39:
      objc_storeStrong((*(a1[7] + 8) + 40), a2);
      *a4 = 1;
      goto LABEL_29;
    }

    v55 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v56 = a1[5];
    v21 = v55;
    v22 = [v8 bundleName];
    v61 = 138478083;
    v62 = v56;
    v63 = 2113;
    v64 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested bundleID %{private}@ but get %{private}@";
LABEL_12:
    v24 = v21;
    v25 = OS_LOG_TYPE_ERROR;
LABEL_13:
    _os_log_impl(&dword_23255B000, v24, v25, v23, &v61, 0x16u);
LABEL_28:

    goto LABEL_29;
  }

  if (v17)
  {

LABEL_24:
    v43 = analyticsLogHandle;
    if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_29;
    }

    v44 = a1[6];
    v21 = v43;
    v22 = [v8 bundleName];
    v31 = [v8 extensionName];
    v61 = 138478339;
    v62 = v44;
    v63 = 2113;
    v64 = v22;
    v65 = 2113;
    v66 = v31;
    v32 = "_processFetchForName: skipping Process return from processesWithName, require processName %{private}@ but has bundle %{private}@ extension %{private}@";
    v33 = v21;
    v34 = OS_LOG_TYPE_DEBUG;
    goto LABEL_26;
  }

  v42 = [v8 bundleName];

  if (v42)
  {
    goto LABEL_24;
  }

  v57 = a1[6];
  v58 = [v8 procName];
  LODWORD(v57) = [v57 isEqualToString:v58];

  if (v57)
  {
    goto LABEL_39;
  }

  v59 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v60 = a1[6];
    v21 = v59;
    v22 = [v8 procName];
    v61 = 138478083;
    v62 = v60;
    v63 = 2113;
    v64 = v22;
    v23 = "_processFetchForName: unexpected Process values returned from processesWithName, requested processName %{private}@ but get %{private}@";
    goto LABEL_12;
  }

LABEL_29:
  v45 = *(*(a1[7] + 8) + 40);
  v46 = analyticsLogHandle;
  v47 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v45)
  {
    if (v47)
    {
      v49 = a1[5];
      v48 = a1[6];
      v50 = a1[4];
      v61 = 138478595;
      v62 = v48;
      v63 = 2113;
      v64 = v49;
      v65 = 2113;
      v66 = v50;
      v67 = 2113;
      v68 = v8;
      v51 = "_processFetchForName: match for request for processName %{private}@ bundle %{private}@ extension %{private}@ match %{private}@";
LABEL_34:
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, v51, &v61, 0x2Au);
    }
  }

  else if (v47)
  {
    v53 = a1[5];
    v52 = a1[6];
    v54 = a1[4];
    v61 = 138478595;
    v62 = v52;
    v63 = 2113;
    v64 = v53;
    v65 = 2113;
    v66 = v54;
    v67 = 2113;
    v68 = v8;
    v51 = "_processFetchForName: no match for requested processName %{private}@ bundle %{private}@ extension %{private}@ non-match %{private}@";
    goto LABEL_34;
  }
}

- (id)_has1stPartyImpliedBundleNameBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v4 = behaviorCopy;
  if (_has1stPartyImpliedBundleNameBehavior__onceToken == -1)
  {
    if (behaviorCopy)
    {
LABEL_3:
      v5 = [_has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    [FlowAnalyticsEngine _has1stPartyImpliedBundleNameBehavior:];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

void __61__FlowAnalyticsEngine__has1stPartyImpliedBundleNameBehavior___block_invoke()
{
  v0 = _has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap;
  _has1stPartyImpliedBundleNameBehavior__k1stPartyImpliedBundleNamesMap = &unk_2847EF480;
}

- (BOOL)_processNameIsValid:(id)valid
{
  if (valid)
  {
    return [valid isEqualToString:&stru_2847966D8] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_fetchFromProcCacheWithName:(id)name ofType:(unsigned int)type
{
  v64[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy || ![(AnalyticsWorkspace *)self->super.workspace persistent])
  {
    v8 = 0;
    goto LABEL_42;
  }

  p_processViaBundleNameCache = &self->processViaBundleNameCache;
  if (!self->processViaBundleNameCache || !self->processViaProcNameCache || !self->processViaExtensionNameCache)
  {
    typeCopy = type;
    v52 = nameCopy;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = *p_processViaBundleNameCache;
    v53 = &self->processViaBundleNameCache;
    *p_processViaBundleNameCache = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processViaProcNameCache = self->processViaProcNameCache;
    self->processViaProcNameCache = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    processViaExtensionNameCache = self->processViaExtensionNameCache;
    self->processViaExtensionNameCache = v13;

    context = objc_autoreleasePoolPush();
    v15 = MEMORY[0x277CBE408];
    entityName = [MEMORY[0x277D6B548] entityName];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v18 = [v15 entityForName:entityName inManagedObjectContext:mainObjectContext];

    v19 = objc_alloc_init(MEMORY[0x277CBE428]);
    v49 = v18;
    [v19 setEntity:v18];
    [v19 setResultType:2];
    [v19 setAllocationType:1];
    v20 = objc_alloc_init(MEMORY[0x277CBE410]);
    [v20 setName:@"objectID"];
    expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
    [v20 setExpression:expressionForEvaluatedObject];

    [v20 setExpressionResultType:2000];
    v22 = *MEMORY[0x277D6B5C0];
    v64[0] = *MEMORY[0x277D6B5D0];
    v64[1] = v22;
    v64[2] = *MEMORY[0x277D6B5C8];
    v64[3] = v20;
    v47 = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:4];
    [v19 setPropertiesToFetch:v23];

    selfCopy = self;
    mainObjectContext2 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v58 = 0;
    v48 = v19;
    v26 = [mainObjectContext2 executeFetchRequest:v19 error:&v58];
    v46 = v58;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v55;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v54 + 1) + 8 * i);
          v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5D0]];
          v34 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5C0]];
          v35 = [v32 objectForKeyedSubscript:*MEMORY[0x277D6B5C8]];
          v36 = [v32 objectForKeyedSubscript:@"objectID"];
          if (v36)
          {
            if (v35)
            {
              v37 = selfCopy->processViaExtensionNameCache;
              v38 = v36;
              v39 = v35;
            }

            else if (v34)
            {
              v37 = *v53;
              v38 = v36;
              v39 = v34;
            }

            else
            {
              v37 = selfCopy->processViaProcNameCache;
              v38 = v36;
              v39 = v33;
            }

            [(NSMutableDictionary *)v37 setObject:v38 forKeyedSubscript:v39];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v29);
    }

    self = selfCopy;
    [(AnalyticsWorkspace *)selfCopy->super.workspace reset];

    objc_autoreleasePoolPop(context);
    nameCopy = v52;
    type = typeCopy;
    p_processViaBundleNameCache = v53;
  }

  if (type > 2)
  {
    if (type == 3)
    {
      goto LABEL_31;
    }

    if (type == 4)
    {
      v40 = 104;
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (type == 1)
  {
    v43 = [*p_processViaBundleNameCache objectForKeyedSubscript:nameCopy];
    if (v43 || ([(NSMutableDictionary *)self->processViaExtensionNameCache objectForKeyedSubscript:nameCopy], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v41 = v43;
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (type != 2)
  {
LABEL_33:
    v42 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109379;
      typeCopy2 = type;
      v61 = 2113;
      v62 = nameCopy;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "Attempting to retrieve using invalid cache type %u, for name %{private}@", buf, 0x12u);
    }

    v41 = 0;
    goto LABEL_36;
  }

LABEL_26:
  v40 = 112;
LABEL_30:
  p_processViaBundleNameCache = (&self->super.super.isa + v40);
LABEL_31:
  v41 = [*p_processViaBundleNameCache objectForKeyedSubscript:nameCopy];
  if (v41)
  {
LABEL_40:
    mainObjectContext3 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v8 = [mainObjectContext3 objectWithID:v41];

    goto LABEL_41;
  }

LABEL_36:
  v8 = 0;
LABEL_41:

LABEL_42:

  return v8;
}

- (void)_insertProcCache:(id)cache ofType:(unsigned int)type underName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  nameCopy = name;
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (type > 4)
    {
      v11 = @"CacheTypeUnknown";
    }

    else
    {
      v11 = off_27898CA88[type];
    }

    *v20 = 138412803;
    *&v20[4] = v11;
    *&v20[12] = 2113;
    *&v20[14] = nameCopy;
    *&v20[22] = 2112;
    *&v20[24] = cacheCopy;
    v12 = v10;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "_insertProcCache %@ %{private}@ with %@", v20, 0x20u);
  }

  if (cacheCopy && nameCopy)
  {
    switch(type)
    {
      case 2u:
        objectID = [cacheCopy objectID];
        v14 = 112;
        goto LABEL_16;
      case 4u:
        objectID = [cacheCopy objectID];
        v14 = 104;
        goto LABEL_16;
      case 3u:
        objectID = [cacheCopy objectID];
        v14 = 96;
LABEL_16:
        [*(&self->super.super.isa + v14) setObject:objectID forKeyedSubscript:{nameCopy, *v20, *&v20[8], *&v20[24]}];
        goto LABEL_17;
    }

    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = v17;
      objectID2 = [cacheCopy objectID];
      *v20 = 67109635;
      *&v20[4] = type;
      *&v20[8] = 2113;
      *&v20[10] = nameCopy;
      *&v20[18] = 2112;
      *&v20[20] = objectID2;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Attempting to insert into invalid cache type %u, name %{private}@ for process %@", v20, 0x1Cu);
    }
  }

  else
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      objectID = v15;
      objectID3 = [cacheCopy objectID];
      *v20 = 138412546;
      *&v20[4] = nameCopy;
      *&v20[12] = 2112;
      *&v20[14] = objectID3;
      _os_log_impl(&dword_23255B000, objectID, OS_LOG_TYPE_ERROR, "Attempting to insert either no-name or no-process in cache: %@, name: %@", v20, 0x16u);

LABEL_17:
    }
  }
}

- (void)_removeFromProcCache:(id)cache ofType:(unsigned int)type
{
  v17 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (type > 4)
    {
      v8 = @"CacheTypeUnknown";
    }

    else
    {
      v8 = off_27898CA88[type];
    }

    *v16 = 138412547;
    *&v16[4] = v8;
    *&v16[12] = 2113;
    *&v16[14] = cacheCopy;
    v9 = v7;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "_removeFromProcCache %@ %{private}@", v16, 0x16u);
  }

  if (cacheCopy)
  {
    switch(type)
    {
      case 2u:
        v10 = 112;
        goto LABEL_15;
      case 4u:
        v10 = 104;
        goto LABEL_15;
      case 3u:
        v10 = 96;
LABEL_15:
        [*(&self->super.super.isa + v10) removeObjectForKey:{cacheCopy, *v16, *&v16[8], v17}];
        goto LABEL_16;
    }

    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = @"CacheTypeUnknown";
      if (type == 1)
      {
        v13 = @"CacheTypeBestMatch";
      }

      if (!type)
      {
        v13 = @"CacheTypeUndefined";
      }

      v14 = v13;
      *v16 = 138478083;
      *&v16[4] = cacheCopy;
      *&v16[12] = 2112;
      *&v16[14] = v14;
      v15 = v12;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Attempting to remove process with name %{private}@ but invalid cache type %@", v16, 0x16u);
    }
  }

  else
  {
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Attempting to remove no-name process from cache", v16, 2u);
    }
  }

LABEL_16:
}

- (BOOL)_isLiveUsageinScope:(id)scope forTime:(id)time
{
  timeCopy = time;
  timeStamp = [scope timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v9 = v8;

  LODWORD(v10) = v9;
  if (v9 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = -v10;
  }

  return self->usageCoalescingSpanSecs > v10;
}

- (BOOL)_isLiveUsageInRollingWindow:(id)window forTime:(id)time
{
  timeCopy = time;
  timeStamp = [window timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v9 = v8;

  LODWORD(v10) = v9;
  if (v9 >= 0)
  {
    v10 = v10;
  }

  else
  {
    v10 = -v10;
  }

  return self->usageWindowUnitsCount * self->usageCoalescingSpanSecs >= v10;
}

- (id)_liveUsageFetchForProcess:(id)process
{
  v112 = *MEMORY[0x277D85DE8];
  processCopy = process;
  isApp = [processCopy isApp];
  v80 = processCopy;
  hintLiveUsage = [processCopy hintLiveUsage];
  selfCopy = self;
  if (hintLiveUsage)
  {
    currentSubscriberTag3 = [hintLiveUsage tag];
    if (currentSubscriberTag3)
    {
      v9 = [hintLiveUsage tag];
      ctShim = self->ctShim;
      if (ctShim)
      {
        currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
        if (currentSubscriberTag)
        {
          currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
          v11 = 1;
        }

        else
        {
          v11 = 0;
          currentSubscriberTag2 = &unk_2847EF6C8;
        }
      }

      else
      {
        v11 = 0;
        currentSubscriberTag2 = &unk_2847EF6C8;
      }

      currentSubscriberTag4 = [v9 isEqualToNumber:currentSubscriberTag2];
      if (v11)
      {
      }

      if (ctShim)
      {

        if (currentSubscriberTag4)
        {
LABEL_12:
          hintLiveUsage2 = [v80 hintLiveUsage];
          goto LABEL_33;
        }
      }

      else
      {

        if (currentSubscriberTag4)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = [v80 hasLiveUsage];
  v13 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (v13)
  {
    v14 = *v98;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v98 != v14)
        {
          objc_enumerationMutation(obj);
        }

        currentSubscriberTag4 = *(*(&v97 + 1) + 8 * i);
        v16 = [currentSubscriberTag4 tag];
        v17 = selfCopy->ctShim;
        if (v17 && ([(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag], (currentSubscriberTag2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          currentSubscriberTag3 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v18 = 1;
          v19 = currentSubscriberTag3;
        }

        else
        {
          v18 = 0;
          v19 = &unk_2847EF6C8;
        }

        v20 = [v16 isEqualToNumber:v19];
        if (v18)
        {
        }

        if (v17)
        {
        }

        if (v20)
        {
          hintLiveUsage2 = currentSubscriberTag4;
          [v80 setHintLiveUsage:hintLiveUsage2];
          goto LABEL_32;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  hintLiveUsage2 = 0;
LABEL_32:

LABEL_33:
  date = [MEMORY[0x277CBEAA8] date];
  if (hintLiveUsage2)
  {
    v21 = analyticsLogHandle;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      name = [v80 name];
      v23 = selfCopy->ctShim;
      if (v23)
      {
        currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        if (currentSubscriberTag4)
        {
          currentSubscriberTag5 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v25 = 1;
        }

        else
        {
          v25 = 0;
          currentSubscriberTag5 = &unk_2847EF6C8;
        }
      }

      else
      {
        v25 = 0;
        currentSubscriberTag5 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v104 = isApp;
      v105 = 2112;
      v106 = name;
      v107 = 2048;
      v108 = hintLiveUsage2;
      v109 = 2112;
      v110 = currentSubscriberTag5;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "found LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
      if (v25)
      {
      }

      if (v23)
      {
      }
    }

    if (!isApp || [(FlowAnalyticsEngine *)selfCopy _isLiveUsageinScope:hintLiveUsage2 forTime:date])
    {
      goto LABEL_131;
    }

    v43 = analyticsLogHandle;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      name2 = [v80 name];
      v45 = selfCopy->ctShim;
      if (v45)
      {
        currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        if (currentSubscriberTag4)
        {
          currentSubscriberTag6 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v47 = 1;
        }

        else
        {
          v47 = 0;
          currentSubscriberTag6 = &unk_2847EF6C8;
        }
      }

      else
      {
        v47 = 0;
        currentSubscriberTag6 = &unk_2847EF6C8;
      }

      *buf = 67109890;
      v104 = 1;
      v105 = 2112;
      v106 = name2;
      v107 = 2048;
      v108 = hintLiveUsage2;
      v109 = 2112;
      v110 = currentSubscriberTag6;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "found LU hint but expired (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
      if (v47)
      {
      }

      if (v45)
      {
      }
    }

    goto LABEL_81;
  }

  if (!isApp)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obja = [v80 hasLiveUsage];
    v26 = [obja countByEnumeratingWithState:&v89 objects:v101 count:16];
    if (!v26)
    {
      goto LABEL_97;
    }

    v27 = *v90;
    while (1)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v90 != v27)
        {
          objc_enumerationMutation(obja);
        }

        v29 = *(*(&v89 + 1) + 8 * j);
        v30 = [v29 tag];
        v31 = selfCopy->ctShim;
        if (v31)
        {
          currentSubscriberTag7 = [(CoreTelephonyShim *)v31 currentSubscriberTag];
          if (currentSubscriberTag7)
          {
            currentSubscriberTag8 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
            v34 = [v30 isEqualToNumber:currentSubscriberTag8];
          }

          else
          {
            v34 = [v30 isEqualToNumber:&unk_2847EF6C8];
          }

          if ((v34 & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          v35 = [v30 isEqualToNumber:&unk_2847EF6C8];

          if (!v35)
          {
            continue;
          }
        }

        kind = [v29 kind];
        v37 = [kind intValue] == 0;

        if (v37)
        {
          hintLiveUsage2 = v29;
          [v80 setHintLiveUsage:hintLiveUsage2];
          v38 = analyticsLogHandle;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            name3 = [v80 name];
            v40 = selfCopy->ctShim;
            if (v40)
            {
              kind = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
              if (kind)
              {
                currentSubscriberTag9 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                v42 = 1;
              }

              else
              {
                v42 = 0;
                currentSubscriberTag9 = &unk_2847EF6C8;
              }
            }

            else
            {
              v42 = 0;
              currentSubscriberTag9 = &unk_2847EF6C8;
            }

            *buf = 67109890;
            v104 = 0;
            v105 = 2112;
            v106 = name3;
            v107 = 2048;
            v108 = hintLiveUsage2;
            v109 = 2112;
            v110 = currentSubscriberTag9;
            _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "established LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
            if (v42)
            {
            }

            if (v40)
            {
            }
          }

          goto LABEL_117;
        }
      }

      v26 = [obja countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (!v26)
      {
        goto LABEL_97;
      }
    }
  }

LABEL_81:
  v95 = 0u;
  v96 = 0u;
  v94 = 0u;
  v93 = 0u;
  obja = [v80 hasLiveUsage];
  v48 = [obja countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (!v48)
  {
    goto LABEL_97;
  }

  v49 = *v94;
  while (2)
  {
    for (k = 0; k != v48; ++k)
    {
      if (*v94 != v49)
      {
        objc_enumerationMutation(obja);
      }

      v51 = *(*(&v93 + 1) + 8 * k);
      v52 = [v51 tag];
      v53 = selfCopy->ctShim;
      if (v53)
      {
        currentSubscriberTag10 = [(CoreTelephonyShim *)v53 currentSubscriberTag];
        if (currentSubscriberTag10)
        {
          hintLiveUsage2 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
          v55 = [v52 isEqualToNumber:hintLiveUsage2];
        }

        else
        {
          v55 = [v52 isEqualToNumber:&unk_2847EF6C8];
        }

        if ((v55 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v56 = [v52 isEqualToNumber:&unk_2847EF6C8];

        if (!v56)
        {
          continue;
        }
      }

      kind2 = [v51 kind];
      v58 = [kind2 intValue] == 0;

      if (!v58 && [(FlowAnalyticsEngine *)selfCopy _isLiveUsageinScope:v51 forTime:date])
      {
        v59 = analyticsLogHandle;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          name4 = [v80 name];
          v61 = selfCopy->ctShim;
          if (v61)
          {
            hintLiveUsage2 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
            if (hintLiveUsage2)
            {
              currentSubscriberTag11 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
              v63 = 1;
            }

            else
            {
              v63 = 0;
              currentSubscriberTag11 = &unk_2847EF6C8;
            }
          }

          else
          {
            v63 = 0;
            currentSubscriberTag11 = &unk_2847EF6C8;
          }

          *buf = 67109890;
          v104 = 1;
          v105 = 2112;
          v106 = name4;
          v107 = 2048;
          v108 = 0;
          v109 = 2112;
          v110 = currentSubscriberTag11;
          _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "established LU hint (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
          if (v63)
          {
          }

          if (v61)
          {
          }
        }

        hintLiveUsage2 = v51;
        [v80 setHintLiveUsage:hintLiveUsage2];
        goto LABEL_117;
      }
    }

    v48 = [obja countByEnumeratingWithState:&v93 objects:v102 count:16];
    if (v48)
    {
      continue;
    }

    break;
  }

LABEL_97:
  hintLiveUsage2 = 0;
LABEL_117:

  if (!hintLiveUsage2)
  {
    hintLiveUsage2 = [(UsageAnalytics *)selfCopy->uspace createEntity];
    v64 = [MEMORY[0x277CCABB0] numberWithInt:isApp];
    [hintLiveUsage2 setKind:v64];

    date2 = [MEMORY[0x277CBEAA8] date];
    [hintLiveUsage2 setTimeStamp:date2];
    v66 = selfCopy->ctShim;
    if (v66)
    {
      currentSubscriberTag12 = [(CoreTelephonyShim *)v66 currentSubscriberTag];
      if (currentSubscriberTag12)
      {
        currentSubscriberTag13 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
        [hintLiveUsage2 setTag:currentSubscriberTag13];
      }

      else
      {
        [hintLiveUsage2 setTag:&unk_2847EF6C8];
      }
    }

    else
    {
      [hintLiveUsage2 setTag:&unk_2847EF6C8];
    }

    [v80 setHintLiveUsage:hintLiveUsage2];
    v69 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v70 = v69;
      name5 = [v80 name];
      v72 = [hintLiveUsage2 tag];
      *buf = 67109890;
      v104 = isApp;
      v105 = 2112;
      v106 = name5;
      v107 = 2048;
      v108 = hintLiveUsage2;
      v109 = 2112;
      v110 = v72;
      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "creating LU record (mode: %d) for %@: %p, subscriber tag: %@", buf, 0x26u);
    }

    [v80 addHasLiveUsageObject:hintLiveUsage2];
    v73 = [hintLiveUsage2 tag];
    v74 = [(FlowAnalyticsEngine *)selfCopy _liveUsageCountForProcess:v80 subscriberTag:v73];

    hasLiveUsage = [v80 hasLiveUsage];
    v76 = [hasLiveUsage count] == 1;

    if (v76)
    {
      [v80 setFirstTimeStamp:date2];
    }

    else if (v74 > selfCopy->usageWindowUnitsCount)
    {
      queue = [(AnalyticsEngineCore *)selfCopy queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke;
      block[3] = &unk_27898A328;
      block[4] = selfCopy;
      v87 = v80;
      v88 = hintLiveUsage2;
      dispatch_async(queue, block);
    }
  }

LABEL_131:

  return hintLiveUsage2;
}

void __49__FlowAnalyticsEngine__liveUsageFetchForProcess___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) tag];
  [v1 _liveUsagePackForProcess:v2 subscriberTag:v3];
}

- (unint64_t)_liveUsageCountForProcess:(id)process subscriberTag:(id)tag
{
  v25 = *MEMORY[0x277D85DE8];
  processCopy = process;
  tagCopy = tag;
  if (tagCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    hasLiveUsage = [processCopy hasLiveUsage];
    v8 = [hasLiveUsage countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(hasLiveUsage);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) tag];
          v14 = [v13 isEqualToNumber:tagCopy];

          v10 += v14;
        }

        v9 = [hasLiveUsage countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v15 = _liveUsageCountForProcess_subscriberTag__errCount;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * _liveUsageCountForProcess_subscriberTag__errCount, 1) <= 0x1999999999999999uLL)
    {
      v16 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v23 = _liveUsageCountForProcess_subscriberTag__errCount;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "_liveUsageCountForProcess: encountered unexpected nil tag (%llu previous errors)", buf, 0xCu);
      }

      v15 = _liveUsageCountForProcess_subscriberTag__errCount;
    }

    v10 = 0;
    _liveUsageCountForProcess_subscriberTag__errCount = v15 + 1;
  }

  return v10;
}

- (void)_liveUsagePackForProcess:(id)process subscriberTag:(id)tag
{
  v73 = *MEMORY[0x277D85DE8];
  processCopy = process;
  tagCopy = tag;
  if (tagCopy)
  {
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:self->usageWindowUnitsCount];
    date = [MEMORY[0x277CBEAA8] date];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      name = [processCopy name];
      *buf = 138412802;
      v64 = name;
      v65 = 2048;
      v66 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      v67 = 2112;
      v68 = tagCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "packing LU records for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    hasLiveUsage = [processCopy hasLiveUsage];
    v12 = [hasLiveUsage countByEnumeratingWithState:&v59 objects:v72 count:16];
    v52 = processCopy;
    if (v12)
    {
      v13 = v12;
      firstObject = 0;
      v15 = *v60;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v60 != v15)
          {
            objc_enumerationMutation(hasLiveUsage);
          }

          v17 = *(*(&v59 + 1) + 8 * i);
          v18 = [v17 tag];
          v19 = [v18 isEqualToNumber:tagCopy];

          if (v19)
          {
            kind = [v17 kind];
            intValue = [kind intValue];

            if (intValue)
            {
              if (![(FlowAnalyticsEngine *)self _isLiveUsageInRollingWindow:v17 forTime:date])
              {
                [v53 addObject:v17];
              }
            }

            else
            {
              v22 = v17;

              firstObject = v22;
            }
          }
        }

        v13 = [hasLiveUsage countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v13);

      processCopy = v52;
      v23 = v53;
      if (firstObject)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v23 = v53;
    }

    if (![v23 count])
    {
      firstObject = 0;
      goto LABEL_42;
    }

    firstObject = [v23 firstObject];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [firstObject setKind:v26];

    [v23 removeObject:firstObject];
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      name2 = [processCopy name];
      v30 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      *buf = 138412802;
      v64 = name2;
      v65 = 2048;
      v66 = v30;
      v67 = 2112;
      v68 = tagCopy;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "packing LU records, with promotion, for %@, count: %lu, subscriber tag: %@", buf, 0x20u);
    }

    if (!firstObject)
    {
      goto LABEL_42;
    }

LABEL_29:
    if ([v23 count])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v31 = v23;
      v32 = [v31 countByEnumeratingWithState:&v55 objects:v71 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v56;
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v56 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v55 + 1) + 8 * j);
            [(FlowAnalyticsEngine *)self _applyCountsTo:firstObject fromLiveUsage:v36 mustReset:0];
            timeStamp = [firstObject timeStamp];
            [timeStamp timeIntervalSinceReferenceDate];
            v39 = v38;
            timeStamp2 = [v36 timeStamp];
            [timeStamp2 timeIntervalSinceReferenceDate];
            v42 = v41;

            if (v39 > v42)
            {
              timeStamp3 = [v36 timeStamp];
              [firstObject setTimeStamp:timeStamp3];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v55 objects:v71 count:16];
        }

        while (v33);
      }

      [(UsageAnalytics *)self->uspace removeEntities:v31];
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        processCopy = v52;
        name3 = [v52 name];
        v47 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:v52 subscriberTag:tagCopy];
        *buf = 138413058;
        v64 = name3;
        v65 = 2112;
        v66 = tagCopy;
        v67 = 2048;
        v68 = v47;
        v69 = 2112;
        v70 = firstObject;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "packing LU records for %@, subscriber tag: %@, residual count: %lu, mono contents: %@", buf, 0x2Au);
      }

      else
      {
        processCopy = v52;
      }

      v23 = v53;
LABEL_46:

      goto LABEL_47;
    }

LABEL_42:
    v48 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v49 = v48;
      name4 = [processCopy name];
      v51 = [(FlowAnalyticsEngine *)self _liveUsageCountForProcess:processCopy subscriberTag:tagCopy];
      *buf = 138412802;
      v64 = name4;
      v65 = 2112;
      v66 = tagCopy;
      v67 = 2048;
      v68 = v51;
      _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "packing LU records for %@, nothing left to do, subscriber tag: %@, residual count: %lu", buf, 0x20u);
    }

    goto LABEL_46;
  }

  firstObject = [MEMORY[0x277CBEAA8] date];
  if (!_liveUsagePackForProcess_subscriberTag__lastLoggedTime || ([_liveUsagePackForProcess_subscriberTag__lastLoggedTime timeIntervalSinceDate:firstObject], v24 < -180.0))
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v64 = _liveUsagePackForProcess_subscriberTag__errCount;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "_liveUsagePackForProcess: encountered unexpected nil tag (%llu previous errors)", buf, 0xCu);
    }

    objc_storeStrong(&_liveUsagePackForProcess_subscriberTag__lastLoggedTime, firstObject);
  }

  ++_liveUsagePackForProcess_subscriberTag__errCount;
LABEL_47:
}

- (unint64_t)_clearUninstalledAppEntries
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up entries of uninstalled Apps", buf, 2u);
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  if (defaultWorkspace)
  {
    v5 = [(AppAnalytics *)self->aspace fetchAllEntityDictionariesWithProperties:&unk_2847EEB50];
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__5;
    v22 = __Block_byref_object_dispose__5;
    v23 = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__FlowAnalyticsEngine__clearUninstalledAppEntries__block_invoke;
    v14[3] = &unk_27898BEB0;
    v17 = buf;
    v15 = defaultWorkspace;
    v7 = v6;
    v16 = v7;
    [v5 enumerateObjectsUsingBlock:v14];
    v8 = [v7 count];
    if (v8)
    {
      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"bundleName", v7];
      v10 = [(AppAnalytics *)self->aspace removeEntitiesMatching:v9];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 134218240;
        v25 = v8;
        v26 = 2048;
        v27 = v10;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu apps to be removed, removed %ld", v24, 0x16u);
      }
    }

    else
    {
      v12 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "No Apps to be removed", v24, 2u);
      }

      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *__50__FlowAnalyticsEngine__clearUninstalledAppEntries__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"bundleName"];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  result = [*(*(*(a1 + 48) + 8) + 40) length];
  if (result)
  {
    result = [*(a1 + 32) applicationIsInstalled:*(*(*(a1 + 48) + 8) + 40)];
    if ((result & 1) == 0)
    {
      v7 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(*(*(a1 + 48) + 8) + 40);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "%@ is not installed, marked for removal", &v9, 0xCu);
      }

      return [*(a1 + 40) addObject:*(*(*(a1 + 48) + 8) + 40)];
    }
  }

  return result;
}

- (void)_performAppDomainUsageAnalytics
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:0.0];
  workspace = self->super.workspace;
  queue = [(AnalyticsEngineCore *)self queue];
  v6 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

  v34 = 0;
  v7 = [v6 exportAndUnarchiveItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" lastUpdated:&v34 verificationBlock:&__block_literal_global_495];
  v8 = v34;
  v9 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    [v8 timeIntervalSince1970];
    v12 = formattedDateStringForTimeInterval(v11);
    [v7 timeIntervalSince1970];
    v14 = formattedDateStringForTimeInterval(v13);
    *buf = 138412546;
    v36 = v12;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Last DMA run at: %@ ADUs captured till: %@", buf, 0x16u);
  }

  if (v7)
  {
    [v3 timeIntervalSinceDate:v8];
    if (v15 < 86400.0)
    {
      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Not posting an APR DB metric since insufficient time has passed since last DMA.", buf, 2u);
      }

      goto LABEL_26;
    }

    [v3 timeIntervalSinceDate:v7];
    if (v18 > 604800.0)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:timeIntervalFrom1970ToMidnight(v3) + -604800.0];

      [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v19];
      v7 = v19;
    }

    v20 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v7 sinceDate:86400.0];
    v21 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      [v7 timeIntervalSince1970];
      v24 = formattedDateStringForTimeInterval(v23);
      [v20 timeIntervalSince1970];
      v26 = formattedDateStringForTimeInterval(v25);
      *buf = 138412546;
      v36 = v24;
      v37 = 2112;
      v38 = v26;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Posting APR DB metric, capturing ADUs from: %@ to:%@", buf, 0x16u);
    }

    v27 = [(FlowAnalyticsEngine *)self _performSystemLevelAppDomainUsageAnalyticsFromDate:v7 toDate:v20];
    v28 = [(FlowAnalyticsEngine *)self _performAppLevelAppDomainUsageAnalyticsFromDate:v7 toDate:v20];
    if (v27 || v28)
    {
      v31 = [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v20];
      v29 = domainTrackingLogHandle;
      if (v31)
      {
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v30 = "Updated APR telemetry captured timestamp.";
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v30 = "Failed to update APR telemetry captured timestamp.";
        v32 = v29;
        v33 = OS_LOG_TYPE_ERROR;
        goto LABEL_24;
      }
    }

    else
    {
      v29 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v30 = "Both analytics failed to complete; not updating APR telemetry timestamp.";
LABEL_21:
        v32 = v29;
        v33 = OS_LOG_TYPE_DEBUG;
LABEL_24:
        _os_log_impl(&dword_23255B000, v32, v33, v30, buf, 2u);
      }
    }

    goto LABEL_26;
  }

  v17 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "No APR DB metric timestamp found, adding one now.", buf, 2u);
  }

  v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:timeIntervalFrom1970ToMidnight(v3)];
  [v6 archiveAndImportItemUnderName:@"LASTNETDOMAINSANALYTICSRUN" item:v7];
LABEL_26:
}

uint64_t __54__FlowAnalyticsEngine__performAppDomainUsageAnalytics__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)_aggregateSumDomainUsageAnalyticsOnField:(id)field forPredicate:(id)predicate
{
  predicateCopy = predicate;
  v6 = functionOnKeyDescriptor();
  v7 = objc_alloc_init(MEMORY[0x277D6B510]);
  [v7 addAggregateProperty:v6];
  LOBYTE(v13) = 1;
  v8 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:MEMORY[0x277CBEBF8] fetchRequestProperties:v7 predicate:predicateCopy sortDescriptors:0 limit:0 offset:0 includeObjectID:v13];

  firstObject = [v8 firstObject];
  v10 = [firstObject objectForKeyedSubscript:@"total"];
  integerValue = [v10 integerValue];

  return integerValue;
}

- (BOOL)_performSystemLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate
{
  v82[2] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAC30];
  v7 = gEffectiveUserId;
  toDateCopy = toDate;
  dateCopy = date;
  v73 = [v6 predicateWithFormat:@"effectiveUserId == %u", v7];
  v65 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:?];
  toDateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, dateCopy, toDateCopy];

  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
  v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainClassification == %u", 2];
  v14 = MEMORY[0x277CCA920];
  v82[0] = toDateCopy;
  v82[1] = v11;
  v71 = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  v16 = [v14 andPredicateWithSubpredicates:v15];

  v17 = MEMORY[0x277CCA920];
  v81[0] = toDateCopy;
  v81[1] = v12;
  v70 = v12;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  v19 = [v17 andPredicateWithSubpredicates:v18];

  v20 = MEMORY[0x277CCA920];
  v80[0] = toDateCopy;
  v80[1] = v13;
  v69 = v13;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v16];
  v57 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v19];
  v56 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:v22];
  v24 = [(ObjectAnalytics *)self->domspace countEntitiesMatching:toDateCopy];
  v68 = v16;
  v25 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v16];
  v66 = v22;
  v26 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v22];
  v67 = v19;
  v27 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:v19];
  v72 = toDateCopy;
  v28 = [(FlowAnalyticsEngine *)self _aggregateSumDomainUsageAnalyticsOnField:@"hits" forPredicate:toDateCopy];
  v29 = v24;
  v78[0] = @"trackerUniqueCount";
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  v79[0] = v64;
  v78[1] = @"trackerTotalCount";
  v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  v79[1] = v63;
  v78[2] = @"trackerUniqueRatio";
  v30 = -1.0;
  v31 = -1.0;
  if (v24)
  {
    v31 = (v23 / v29);
  }

  v32 = v28;
  v62 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  v79[2] = v62;
  v78[3] = @"trackerTotalRatio";
  if (v28)
  {
    v30 = (v25 / v32);
  }

  v61 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
  v79[3] = v61;
  v78[4] = @"appInitiatedUniqueCount";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
  v79[4] = v60;
  v78[5] = @"appInitiatedTotalCount";
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
  v79[5] = v59;
  v78[6] = @"appInitiatedUniqueRatio";
  v33 = -1.0;
  v34 = -1.0;
  if (v24)
  {
    v34 = (v57 / v29);
  }

  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v34];
  v79[6] = v58;
  v78[7] = @"appInitiatedTotalRatio";
  if (v28)
  {
    v33 = (v27 / v32);
  }

  v55 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
  v79[7] = v55;
  v78[8] = @"ipAddressUniqueCount";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
  v79[8] = v35;
  v78[9] = @"ipAddressTotalCount";
  v36 = v26;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
  v79[9] = v37;
  v78[10] = @"ipAddressUniqueRatio";
  v38 = -1.0;
  v39 = -1.0;
  if (v24)
  {
    v39 = (v56 / v29);
  }

  v40 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v79[10] = v40;
  v78[11] = @"ipAddressTotalRatio";
  if (v28)
  {
    v38 = (v36 / v32);
  }

  v41 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
  v79[11] = v41;
  v78[12] = @"uniqueCount";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
  v79[12] = v42;
  v78[13] = @"totalCount";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
  v79[13] = v43;
  v78[14] = @"totalADUCount";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
  v79[14] = v44;
  v78[15] = @"appTrackingEnabled";
  v45 = [MEMORY[0x277CCABB0] numberWithBool:self->appTrackingEnabled];
  v79[15] = v45;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:16];

  v47 = v46;
  v48 = AnalyticsSendEventLazy();
  v49 = domainTrackingLogHandle;
  if (v48)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109378;
      v75 = gEffectiveUserId;
      v76 = 2112;
      v77 = v47;
      v50 = "Posted APR DB metrics for user %u: %@";
      v51 = v49;
      v52 = OS_LOG_TYPE_DEBUG;
      v53 = 18;
LABEL_18:
      _os_log_impl(&dword_23255B000, v51, v52, v50, buf, v53);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v50 = "Failed to post APR DB metrics.";
    v51 = v49;
    v52 = OS_LOG_TYPE_ERROR;
    v53 = 2;
    goto LABEL_18;
  }

  return v48;
}

- (BOOL)_performAppLevelAppDomainUsageAnalyticsFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  v8 = +[SystemProperties sharedInstance];
  internalBuild = [v8 internalBuild];

  if (internalBuild)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"domainType == %u", 1];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %u", 1];
    toDateCopy = [MEMORY[0x277CCA920] predicateWithFormat:@"effectiveUserId == %u AND firstTimeStamp >= %@ AND firstTimeStamp < %@", gEffectiveUserId, dateCopy, toDateCopy];
    v13 = countOfKeyDescriptor();
    v14 = objc_alloc_init(MEMORY[0x277D6B510]);
    [v14 addGroupByProperty:@"bundleName"];
    [v14 addAggregateProperty:v13];
    LOBYTE(v21) = 1;
    v15 = [(ObjectAnalytics *)self->domspace fetchEntityDictionariesWithProperties:&unk_2847EEB68 fetchRequestProperties:v14 predicate:toDateCopy sortDescriptors:0 limit:0 offset:0 includeObjectID:v21];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke;
    v22[3] = &unk_27898C620;
    v16 = toDateCopy;
    v23 = v16;
    v17 = v10;
    v24 = v17;
    v18 = v11;
    v25 = v18;
    selfCopy = self;
    v27 = &v28;
    [v15 enumerateObjectsUsingBlock:v22];
    v19 = *(v29 + 24);

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

void __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke(uint64_t a1, void *a2)
{
  v39[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"bundleName"];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"bundleName == %@", v4];
    v6 = MEMORY[0x277CCA920];
    v7 = *(a1 + 40);
    v39[0] = *(a1 + 32);
    v39[1] = v5;
    v39[2] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
    v9 = [v6 andPredicateWithSubpredicates:v8];

    v10 = MEMORY[0x277CCA920];
    v38[0] = *(a1 + 32);
    v38[1] = v5;
    v38[2] = *(a1 + 48);
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v24 = v9;
    v13 = [*(*(a1 + 56) + 488) countEntitiesMatching:v9];
    v14 = [*(*(a1 + 56) + 488) countEntitiesMatching:v12];
    v15 = [*(a1 + 56) _appBundleIdentifierIsWebBrowser:v4];
    v16 = v3;
    v25 = v16;
    v17 = v4;
    if (AnalyticsSendEventLazy())
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v18 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v23 = gEffectiveUserId;
        v19 = v18;
        v20 = [v16 objectForKeyedSubscript:@"count"];
        *buf = 67110403;
        v27 = v23;
        v28 = 2113;
        v29 = v17;
        v30 = 2112;
        v31 = v20;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = v14;
        v36 = 1024;
        v37 = v15;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Posted APR DB metric for user %u, Bundle Name = %{private}@, total ADU count = %@, tracker ADU count = %lu, app-initiated ADUs= %lu, isBrowser = %d", buf, 0x36u);
      }
    }

    else
    {
      v22 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to post APR app telemetry.", buf, 2u);
      }
    }
  }

  else
  {
    v21 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Failed to post APR app telemetry; Bundle Name is nil.", buf, 2u);
    }
  }
}

id __78__FlowAnalyticsEngine__performAppLevelAppDomainUsageAnalyticsFromDate_toDate___block_invoke_2(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"appADUCount";
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"count"];
  v10[0] = v2;
  v9[1] = @"appInitiatedADUCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v4 = *(a1 + 40);
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = @"appName";
  v9[3] = @"appTrackerADUCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v10[3] = v5;
  v9[4] = @"isBrowser";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

- (void)_performAppPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearUninstalledAppEntries = [(FlowAnalyticsEngine *)self _clearUninstalledAppEntries];
  if (replyCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearUninstalledAppEntries];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    replyCopy[2](replyCopy, v7, 0);
  }
}

- (void)performAppPeriodicTasksComplete:(id)complete error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = analyticsLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = errorCopy;
      v8 = "Periodic app tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = completeCopy;
    v8 = "Periodic app tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

+ (void)performAppPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppPeriodicTasksWithReply:reply];
  }
}

- (void)_applyCountsTo:(id)to fromLiveUsage:(id)usage mustReset:(BOOL)reset
{
  if (reset)
  {
    usageCopy = usage;
    toCopy = to;
    wwanIN = [usageCopy wwanIN];
    [toCopy setWwanIN:wwanIN];

    wwanIN_exp = [usageCopy wwanIN_exp];
    [toCopy setWwanIN_exp:wwanIN_exp];

    wwanOUT = [usageCopy wwanOUT];
    [toCopy setWwanOUT:wwanOUT];

    wwanOUT_exp = [usageCopy wwanOUT_exp];
    [toCopy setWwanOUT_exp:wwanOUT_exp];

    wifiIN = [usageCopy wifiIN];
    [toCopy setWifiIN:wifiIN];

    wifiIN_exp = [usageCopy wifiIN_exp];
    [toCopy setWifiIN_exp:wifiIN_exp];

    wifiOUT = [usageCopy wifiOUT];
    [toCopy setWifiOUT:wifiOUT];

    wifiOUT_exp = [usageCopy wifiOUT_exp];
    [toCopy setWifiOUT_exp:wifiOUT_exp];

    wiredIN = [usageCopy wiredIN];
    [toCopy setWiredIN:wiredIN];

    wiredIN_exp = [usageCopy wiredIN_exp];
    [toCopy setWiredIN_exp:wiredIN_exp];

    wiredOUT = [usageCopy wiredOUT];
    [toCopy setWiredOUT:wiredOUT];

    wiredOUT_exp = [usageCopy wiredOUT_exp];
    [toCopy setWiredOUT_exp:wiredOUT_exp];

    btIN = [usageCopy btIN];
    [toCopy setBtIN:btIN];

    btIN_exp = [usageCopy btIN_exp];
    [toCopy setBtIN_exp:btIN_exp];

    btOUT = [usageCopy btOUT];
    [toCopy setBtOUT:btOUT];

    btOUT_exp = [usageCopy btOUT_exp];
    [toCopy setBtOUT_exp:btOUT_exp];

    v24 = [usageCopy xIN];
    [toCopy setXIN:v24];

    xIN_exp = [usageCopy xIN_exp];
    [toCopy setXIN_exp:xIN_exp];

    xOUT = [usageCopy xOUT];
    [toCopy setXOUT:xOUT];

    xOUT_exp = [usageCopy xOUT_exp];
    [toCopy setXOUT_exp:xOUT_exp];

    allFlows = [usageCopy allFlows];
    [toCopy setAllFlows:allFlows];

    jumboFlows = [usageCopy jumboFlows];

    [toCopy setJumboFlows:jumboFlows];
  }

  else
  {
    v29 = MEMORY[0x277CCABB0];
    usageCopy2 = usage;
    toCopy2 = to;
    wwanIN2 = [usageCopy2 wwanIN];
    [wwanIN2 doubleValue];
    v34 = v33;
    wwanIN3 = [toCopy2 wwanIN];
    [wwanIN3 doubleValue];
    v37 = [v29 numberWithDouble:v34 + v36];
    [toCopy2 setWwanIN:v37];

    v38 = MEMORY[0x277CCABB0];
    wwanIN_exp2 = [usageCopy2 wwanIN_exp];
    [wwanIN_exp2 doubleValue];
    v41 = v40;
    wwanIN_exp3 = [toCopy2 wwanIN_exp];
    [wwanIN_exp3 doubleValue];
    v44 = [v38 numberWithDouble:v41 + v43];
    [toCopy2 setWwanIN_exp:v44];

    v45 = MEMORY[0x277CCABB0];
    wwanOUT2 = [usageCopy2 wwanOUT];
    [wwanOUT2 doubleValue];
    v48 = v47;
    wwanOUT3 = [toCopy2 wwanOUT];
    [wwanOUT3 doubleValue];
    v51 = [v45 numberWithDouble:v48 + v50];
    [toCopy2 setWwanOUT:v51];

    v52 = MEMORY[0x277CCABB0];
    wwanOUT_exp2 = [usageCopy2 wwanOUT_exp];
    [wwanOUT_exp2 doubleValue];
    v55 = v54;
    wwanOUT_exp3 = [toCopy2 wwanOUT_exp];
    [wwanOUT_exp3 doubleValue];
    v58 = [v52 numberWithDouble:v55 + v57];
    [toCopy2 setWwanOUT_exp:v58];

    v59 = MEMORY[0x277CCABB0];
    wifiIN2 = [usageCopy2 wifiIN];
    [wifiIN2 doubleValue];
    v62 = v61;
    wifiIN3 = [toCopy2 wifiIN];
    [wifiIN3 doubleValue];
    v65 = [v59 numberWithDouble:v62 + v64];
    [toCopy2 setWifiIN:v65];

    v66 = MEMORY[0x277CCABB0];
    wifiIN_exp2 = [usageCopy2 wifiIN_exp];
    [wifiIN_exp2 doubleValue];
    v69 = v68;
    wifiIN_exp3 = [toCopy2 wifiIN_exp];
    [wifiIN_exp3 doubleValue];
    v72 = [v66 numberWithDouble:v69 + v71];
    [toCopy2 setWifiIN_exp:v72];

    v73 = MEMORY[0x277CCABB0];
    wifiOUT2 = [usageCopy2 wifiOUT];
    [wifiOUT2 doubleValue];
    v76 = v75;
    wifiOUT3 = [toCopy2 wifiOUT];
    [wifiOUT3 doubleValue];
    v79 = [v73 numberWithDouble:v76 + v78];
    [toCopy2 setWifiOUT:v79];

    v80 = MEMORY[0x277CCABB0];
    wifiOUT_exp2 = [usageCopy2 wifiOUT_exp];
    [wifiOUT_exp2 doubleValue];
    v83 = v82;
    wifiOUT_exp3 = [toCopy2 wifiOUT_exp];
    [wifiOUT_exp3 doubleValue];
    v86 = [v80 numberWithDouble:v83 + v85];
    [toCopy2 setWifiOUT_exp:v86];

    v87 = MEMORY[0x277CCABB0];
    wiredIN2 = [usageCopy2 wiredIN];
    [wiredIN2 doubleValue];
    v90 = v89;
    wiredIN3 = [toCopy2 wiredIN];
    [wiredIN3 doubleValue];
    v93 = [v87 numberWithDouble:v90 + v92];
    [toCopy2 setWiredIN:v93];

    v94 = MEMORY[0x277CCABB0];
    wiredIN_exp2 = [usageCopy2 wiredIN_exp];
    [wiredIN_exp2 doubleValue];
    v97 = v96;
    wiredIN_exp3 = [toCopy2 wiredIN_exp];
    [wiredIN_exp3 doubleValue];
    v100 = [v94 numberWithDouble:v97 + v99];
    [toCopy2 setWiredIN_exp:v100];

    v101 = MEMORY[0x277CCABB0];
    wiredOUT2 = [usageCopy2 wiredOUT];
    [wiredOUT2 doubleValue];
    v104 = v103;
    wiredOUT3 = [toCopy2 wiredOUT];
    [wiredOUT3 doubleValue];
    v106 = [v101 numberWithDouble:v104 + v106];
    [toCopy2 setWiredOUT:v106];

    v108 = MEMORY[0x277CCABB0];
    wiredOUT_exp2 = [usageCopy2 wiredOUT_exp];
    [wiredOUT_exp2 doubleValue];
    v111 = v110;
    wiredOUT_exp3 = [toCopy2 wiredOUT_exp];
    [wiredOUT_exp3 doubleValue];
    v113 = [v108 numberWithDouble:v111 + v113];
    [toCopy2 setWiredOUT_exp:v113];

    v115 = MEMORY[0x277CCABB0];
    btIN2 = [usageCopy2 btIN];
    [btIN2 doubleValue];
    v118 = v117;
    btIN3 = [toCopy2 btIN];
    [btIN3 doubleValue];
    v120 = [v115 numberWithDouble:v118 + v120];
    [toCopy2 setBtIN:v120];

    v122 = MEMORY[0x277CCABB0];
    btIN_exp2 = [usageCopy2 btIN_exp];
    [btIN_exp2 doubleValue];
    v125 = v124;
    btIN_exp3 = [toCopy2 btIN_exp];
    [btIN_exp3 doubleValue];
    v127 = [v122 numberWithDouble:v125 + v127];
    [toCopy2 setBtIN_exp:v127];

    v129 = MEMORY[0x277CCABB0];
    btOUT2 = [usageCopy2 btOUT];
    [btOUT2 doubleValue];
    v132 = v131;
    btOUT3 = [toCopy2 btOUT];
    [btOUT3 doubleValue];
    v134 = [v129 numberWithDouble:v132 + v134];
    [toCopy2 setBtOUT:v134];

    v136 = MEMORY[0x277CCABB0];
    btOUT_exp2 = [usageCopy2 btOUT_exp];
    [btOUT_exp2 doubleValue];
    v139 = v138;
    btOUT_exp3 = [toCopy2 btOUT_exp];
    [btOUT_exp3 doubleValue];
    v141 = [v136 numberWithDouble:v139 + v141];
    [toCopy2 setBtOUT_exp:v141];

    v143 = MEMORY[0x277CCABB0];
    v144 = [usageCopy2 xIN];
    [v144 doubleValue];
    v146 = v145;
    v147 = [toCopy2 xIN];
    [v147 doubleValue];
    v148 = [v143 numberWithDouble:v146 + v148];
    [toCopy2 setXIN:v148];

    v150 = MEMORY[0x277CCABB0];
    xIN_exp2 = [usageCopy2 xIN_exp];
    [xIN_exp2 doubleValue];
    v153 = v152;
    xIN_exp3 = [toCopy2 xIN_exp];
    [xIN_exp3 doubleValue];
    v155 = [v150 numberWithDouble:v153 + v155];
    [toCopy2 setXIN_exp:v155];

    v157 = MEMORY[0x277CCABB0];
    xOUT2 = [usageCopy2 xOUT];
    [xOUT2 doubleValue];
    v160 = v159;
    xOUT3 = [toCopy2 xOUT];
    [xOUT3 doubleValue];
    v162 = [v157 numberWithDouble:v160 + v162];
    [toCopy2 setXOUT:v162];

    v164 = MEMORY[0x277CCABB0];
    xOUT_exp2 = [usageCopy2 xOUT_exp];
    [xOUT_exp2 doubleValue];
    v167 = v166;
    xOUT_exp3 = [toCopy2 xOUT_exp];
    [xOUT_exp3 doubleValue];
    v169 = [v164 numberWithDouble:v167 + v169];
    [toCopy2 setXOUT_exp:v169];

    v171 = MEMORY[0x277CCABB0];
    allFlows2 = [usageCopy2 allFlows];
    [allFlows2 doubleValue];
    v174 = v173;
    allFlows3 = [toCopy2 allFlows];
    [allFlows3 doubleValue];
    v176 = [v171 numberWithDouble:v174 + v176];
    [toCopy2 setAllFlows:v176];

    v178 = MEMORY[0x277CCABB0];
    jumboFlows = [usageCopy2 jumboFlows];

    [jumboFlows doubleValue];
    v180 = v179;
    toCopy = [toCopy2 jumboFlows];
    [toCopy doubleValue];
    v181 = [v178 numberWithDouble:v180 + v181];
    [toCopy2 setJumboFlows:v181];
  }
}

- (void)_updateLiveUsage:(id)usage wifiIn:(int64_t)in wifiOut:(int64_t)out cellIn:(int64_t)cellIn cellOut:(int64_t)cellOut wiredIn:(int64_t)wiredIn wiredOut:(int64_t)wiredOut btIn:(int64_t)self0 btOut:(int64_t)self1 xIn:(int64_t)self2 xOut:(int64_t)self3 isJumboFlow:(BOOL)self4 isExpensive:(BOOL)self5 closing:(BOOL)self6
{
  closingCopy2 = closing;
  flowCopy2 = flow;
  xOutCopy2 = xOut;
  usageCopy = usage;
  v118 = usageCopy;
  if (cellOut | cellIn)
  {
    v25 = MEMORY[0x277CCABB0];
    wwanIN = [usageCopy wwanIN];
    [wwanIN doubleValue];
    cellInCopy = cellIn;
    cellIn = [v25 numberWithDouble:v28 + cellIn];
    [v118 setWwanIN:cellIn];

    closingCopy2 = closing;
    v30 = MEMORY[0x277CCABB0];
    wwanOUT = [v118 wwanOUT];
    [wwanOUT doubleValue];
    cellOutCopy = cellOut;
    cellOut = [v30 numberWithDouble:v33 + cellOut];
    [v118 setWwanOUT:cellOut];

    flowCopy2 = flow;
    xOutCopy2 = xOut;
    usageCopy = v118;
    if (expensive)
    {
      v35 = MEMORY[0x277CCABB0];
      wwanIN_exp = [v118 wwanIN_exp];
      [wwanIN_exp doubleValue];
      cellInCopy = [v35 numberWithDouble:v37 + cellInCopy];
      [v118 setWwanIN_exp:cellInCopy];

      v39 = MEMORY[0x277CCABB0];
      wwanOUT_exp = [v118 wwanOUT_exp];
      [wwanOUT_exp doubleValue];
      cellOutCopy = [v39 numberWithDouble:v41 + cellOutCopy];
      [v118 setWwanOUT_exp:cellOutCopy];

      usageCopy = v118;
    }
  }

  if (out | in)
  {
    v43 = MEMORY[0x277CCABB0];
    wifiIN = [v118 wifiIN];
    [wifiIN doubleValue];
    inCopy = in;
    v47 = [v43 numberWithDouble:v46 + in];
    [v118 setWifiIN:v47];

    v48 = MEMORY[0x277CCABB0];
    wifiOUT = [v118 wifiOUT];
    [wifiOUT doubleValue];
    outCopy = out;
    v52 = [v48 numberWithDouble:v51 + out];
    [v118 setWifiOUT:v52];

    usageCopy = v118;
    if (expensive)
    {
      v53 = MEMORY[0x277CCABB0];
      wifiIN_exp = [v118 wifiIN_exp];
      [wifiIN_exp doubleValue];
      inCopy = [v53 numberWithDouble:v55 + inCopy];
      [v118 setWifiIN_exp:inCopy];

      v57 = MEMORY[0x277CCABB0];
      wifiOUT_exp = [v118 wifiOUT_exp];
      [wifiOUT_exp doubleValue];
      outCopy = [v57 numberWithDouble:v59 + outCopy];
      [v118 setWifiOUT_exp:outCopy];

      usageCopy = v118;
    }
  }

  if (wiredOut | wiredIn)
  {
    v61 = MEMORY[0x277CCABB0];
    wiredIN = [v118 wiredIN];
    [wiredIN doubleValue];
    wiredInCopy = wiredIn;
    wiredIn = [v61 numberWithDouble:v64 + wiredIn];
    [v118 setWiredIN:wiredIn];

    v66 = MEMORY[0x277CCABB0];
    wiredOUT = [v118 wiredOUT];
    [wiredOUT doubleValue];
    wiredOut = [v66 numberWithDouble:v68 + wiredOut];
    [v118 setWiredOUT:wiredOut];

    usageCopy = v118;
    if (expensive)
    {
      v70 = MEMORY[0x277CCABB0];
      wiredIN_exp = [v118 wiredIN_exp];
      [wiredIN_exp doubleValue];
      wiredInCopy = [v70 numberWithDouble:v72 + wiredInCopy];
      [v118 setWiredIN_exp:wiredInCopy];

      v74 = MEMORY[0x277CCABB0];
      wiredOUT_exp = [v118 wiredOUT_exp];
      [wiredOUT_exp doubleValue];
      wiredOut2 = [v74 numberWithDouble:v76 + wiredOut];
      [v118 setWiredOUT_exp:wiredOut2];

      usageCopy = v118;
    }
  }

  if (*&btIn != 0)
  {
    v78 = MEMORY[0x277CCABB0];
    btIN = [v118 btIN];
    [btIN doubleValue];
    btIn = [v78 numberWithDouble:v80 + btIn];
    [v118 setBtIN:btIn];

    v82 = MEMORY[0x277CCABB0];
    btOUT = [v118 btOUT];
    [btOUT doubleValue];
    btOut = [v82 numberWithDouble:v84 + btOut];
    [v118 setBtOUT:btOut];

    usageCopy = v118;
    if (expensive)
    {
      v86 = MEMORY[0x277CCABB0];
      btIN_exp = [v118 btIN_exp];
      [btIN_exp doubleValue];
      btIn2 = [v86 numberWithDouble:v88 + btIn];
      [v118 setBtIN_exp:btIn2];

      v90 = MEMORY[0x277CCABB0];
      btOUT_exp = [v118 btOUT_exp];
      [btOUT_exp doubleValue];
      btOut2 = [v90 numberWithDouble:v92 + btOut];
      [v118 setBtOUT_exp:btOut2];

      usageCopy = v118;
    }
  }

  if (xOutCopy2 | xIn)
  {
    v94 = MEMORY[0x277CCABB0];
    v95 = [v118 xIN];
    [v95 doubleValue];
    v97 = [v94 numberWithDouble:v96 + xIn];
    [v118 setXIN:v97];

    v98 = MEMORY[0x277CCABB0];
    xOUT = [v118 xOUT];
    [xOUT doubleValue];
    xOutCopy2 = [v98 numberWithDouble:v100 + xOutCopy2];
    [v118 setXOUT:xOutCopy2];

    usageCopy = v118;
    if (expensive)
    {
      v102 = MEMORY[0x277CCABB0];
      xIN_exp = [v118 xIN_exp];
      [xIN_exp doubleValue];
      v105 = [v102 numberWithDouble:v104 + xIn];
      [v118 setXIN_exp:v105];

      v106 = MEMORY[0x277CCABB0];
      xOUT_exp = [v118 xOUT_exp];
      [xOUT_exp doubleValue];
      xOutCopy22 = [v106 numberWithDouble:v108 + xOutCopy2];
      [v118 setXOUT_exp:xOutCopy22];

      usageCopy = v118;
    }
  }

  if (closingCopy2)
  {
    v110 = MEMORY[0x277CCABB0];
    allFlows = [v118 allFlows];
    [allFlows doubleValue];
    v113 = [v110 numberWithDouble:v112 + 1.0];
    [v118 setAllFlows:v113];

    usageCopy = v118;
    if (flowCopy2)
    {
      v114 = MEMORY[0x277CCABB0];
      jumboFlows = [v118 jumboFlows];
      [jumboFlows doubleValue];
      v117 = [v114 numberWithDouble:v116 + 1.0];
      [v118 setJumboFlows:v117];

      usageCopy = v118;
    }
  }
}

- (void)_compactUsageForApp:(id)app intervalType:(int)type givenLastRun:(id)run
{
  v209 = *MEMORY[0x277D85DE8];
  appCopy = app;
  runCopy = run;
  bundleName = [appCopy bundleName];
  hasTypicalUsage = [appCopy hasTypicalUsage];
  v10 = [hasTypicalUsage count];

  if (!v10)
  {
    aspace = self->aspace;
    entityName = [MEMORY[0x277D6B588] entityName];
    v13 = [(AppAnalytics *)aspace createEntityForEntityName:entityName];

    if (!v13)
    {
      v180 = analyticsLogHandle;
      v68 = runCopy;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v208 = bundleName;
        _os_log_impl(&dword_23255B000, v180, OS_LOG_TYPE_ERROR, "Can't create AppTypicalUsage for %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    [v13 setIntervalType:v14];

    [appCopy insertObject:v13 inHasTypicalUsageAtIndex:0];
  }

  hasTypicalUsage2 = [appCopy hasTypicalUsage];
  typeCopy = type;
  v17 = [hasTypicalUsage2 objectAtIndex:type];

  firstTimeStamp = [v17 firstTimeStamp];

  if (!firstTimeStamp)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v17 setFirstTimeStamp:date];
  }

  wifiSampleCount = [v17 wifiSampleCount];
  [wifiSampleCount doubleValue];
  v201 = v21;

  wwanSampleCount = [v17 wwanSampleCount];
  [wwanSampleCount doubleValue];
  v198 = v23;

  wiredSampleCount = [v17 wiredSampleCount];
  [wiredSampleCount doubleValue];
  v199 = v25;

  wifiIN_mean = [v17 wifiIN_mean];
  [wifiIN_mean doubleValue];
  v28 = v27;

  wifiIN_M2 = [v17 wifiIN_M2];
  [wifiIN_M2 doubleValue];
  v187 = v30;

  wifiIN = [v17 wifiIN];
  [wifiIN doubleValue];
  v188 = v32;

  wifiOUT_mean = [v17 wifiOUT_mean];
  [wifiOUT_mean doubleValue];
  v35 = v34;

  wifiOUT_M2 = [v17 wifiOUT_M2];
  [wifiOUT_M2 doubleValue];
  v200 = v37;

  wifiOUT = [v17 wifiOUT];
  [wifiOUT doubleValue];
  v189 = v39;

  wwanIN_mean = [v17 wwanIN_mean];
  [wwanIN_mean doubleValue];
  v42 = v41;

  wwanIN_M2 = [v17 wwanIN_M2];
  [wwanIN_M2 doubleValue];
  v190 = v44;

  wwanIN = [v17 wwanIN];
  [wwanIN doubleValue];
  v191 = v46;

  wwanOUT_mean = [v17 wwanOUT_mean];
  [wwanOUT_mean doubleValue];
  v49 = v48;

  wwanOUT_M2 = [v17 wwanOUT_M2];
  [wwanOUT_M2 doubleValue];
  v192 = v51;

  wwanOUT = [v17 wwanOUT];
  [wwanOUT doubleValue];
  v193 = v53;

  wiredIN_mean = [v17 wiredIN_mean];
  [wiredIN_mean doubleValue];
  v56 = v55;

  wiredIN_M2 = [v17 wiredIN_M2];
  [wiredIN_M2 doubleValue];
  v194 = v58;

  wiredIN = [v17 wiredIN];
  [wiredIN doubleValue];
  v195 = v60;

  wiredOUT_mean = [v17 wiredOUT_mean];
  [wiredOUT_mean doubleValue];
  v63 = v62;

  wiredOUT_M2 = [v17 wiredOUT_M2];
  [wiredOUT_M2 doubleValue];
  v196 = v65;

  wiredOUT = [v17 wiredOUT];
  [wiredOUT doubleValue];
  v197 = v67;

  v68 = runCopy;
  v182 = appCopy;
  if (runCopy)
  {
    [MEMORY[0x277CBEB98] setWithObjects:{runCopy, 0}];
  }

  else
  {
    [appCopy hasAppRun];
  }

  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v69 = v203 = 0u;
  v70 = [v69 countByEnumeratingWithState:&v202 objects:v206 count:16];
  obj = v69;
  if (!v70)
  {
LABEL_39:

    goto LABEL_40;
  }

  v71 = v70;
  v181 = v17;
  v72 = 0;
  v185 = 0;
  v73 = *v203;
  do
  {
    for (i = 0; i != v71; ++i)
    {
      if (*v203 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v75 = *(*(&v202 + 1) + 8 * i);
      kind = [v75 kind];
      unsignedIntegerValue = [kind unsignedIntegerValue];

      if (unsignedIntegerValue != typeCopy)
      {
        continue;
      }

      wifiIN_end = [v75 wifiIN_end];
      [wifiIN_end doubleValue];
      v80 = v79;
      wifiIN_start = [v75 wifiIN_start];
      [wifiIN_start doubleValue];
      if (v80 != v82)
      {

LABEL_19:
        wifiIN_end2 = [v75 wifiIN_end];
        [wifiIN_end2 doubleValue];
        v91 = v90;
        wifiIN_start2 = [v75 wifiIN_start];
        [wifiIN_start2 doubleValue];
        v94 = v91 - v93;

        v95 = v94 - v28;
        v28 = v28 + (v94 - v28) / (v201 + 1.0);
        v187 = v187 + v95 * (v94 - v28);
        v188 = v188 + v94;
        wifiOUT_end = [v75 wifiOUT_end];
        [wifiOUT_end doubleValue];
        v98 = v97;
        wifiOUT_start = [v75 wifiOUT_start];
        [wifiOUT_start doubleValue];
        v101 = v98 - v100;

        v189 = v189 + v101;
        v102 = v101 - v35;
        v35 = v35 + (v101 - v35) / (v201 + 1.0);
        v200 = v200 + v102 * (v101 - v35);
        v201 = v201 + 1.0;
        v72 = 1;
        goto LABEL_20;
      }

      wifiOUT_end2 = [v75 wifiOUT_end];
      [wifiOUT_end2 doubleValue];
      v85 = v84;
      wifiOUT_start2 = [v75 wifiOUT_start];
      [wifiOUT_start2 doubleValue];
      v88 = v87;

      if (v85 != v88)
      {
        goto LABEL_19;
      }

LABEL_20:
      wwanIN_end = [v75 wwanIN_end];
      [wwanIN_end doubleValue];
      v105 = v104;
      wwanIN_start = [v75 wwanIN_start];
      [wwanIN_start doubleValue];
      if (v105 == v107)
      {
        wwanOUT_end = [v75 wwanOUT_end];
        [wwanOUT_end doubleValue];
        v110 = v109;
        wwanOUT_start = [v75 wwanOUT_start];
        [wwanOUT_start doubleValue];
        v113 = v112;

        if (v110 == v113)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }

      wwanIN_end2 = [v75 wwanIN_end];
      [wwanIN_end2 doubleValue];
      v116 = v115;
      wwanIN_start2 = [v75 wwanIN_start];
      [wwanIN_start2 doubleValue];
      v119 = v116 - v118;

      v120 = v119 - v42;
      v42 = v42 + (v119 - v42) / (v198 + 1.0);
      v190 = v190 + v120 * (v119 - v42);
      v191 = v191 + v119;
      wwanOUT_end2 = [v75 wwanOUT_end];
      [wwanOUT_end2 doubleValue];
      v123 = v122;
      wwanOUT_start2 = [v75 wwanOUT_start];
      [wwanOUT_start2 doubleValue];
      v126 = v123 - v125;

      v127 = v126 - v49;
      v198 = v198 + 1.0;
      v49 = v49 + (v126 - v49) / v198;
      v192 = v192 + v127 * (v126 - v49);
      v193 = v193 + v126;
      LOBYTE(v185) = 1;
LABEL_25:
      wiredIN_end = [v75 wiredIN_end];
      [wiredIN_end doubleValue];
      v130 = v129;
      wiredIN_start = [v75 wiredIN_start];
      [wiredIN_start doubleValue];
      if (v130 != v132)
      {

LABEL_29:
        wiredIN_end2 = [v75 wiredIN_end];
        [wiredIN_end2 doubleValue];
        v141 = v140;
        wiredIN_start2 = [v75 wiredIN_start];
        [wiredIN_start2 doubleValue];
        v144 = v141 - v143;

        v145 = v144 - v56;
        v56 = v56 + (v144 - v56) / (v199 + 1.0);
        v194 = v194 + v145 * (v144 - v56);
        v195 = v195 + v144;
        wiredOUT_end = [v75 wiredOUT_end];
        [wiredOUT_end doubleValue];
        v148 = v147;
        wiredOUT_start = [v75 wiredOUT_start];
        [wiredOUT_start doubleValue];
        v151 = v148 - v150;

        v152 = v151 - v63;
        v199 = v199 + 1.0;
        v63 = v63 + (v151 - v63) / v199;
        v196 = v196 + v152 * (v151 - v63);
        v197 = v197 + v151;
        BYTE4(v185) = 1;
        continue;
      }

      wiredOUT_end2 = [v75 wiredOUT_end];
      [wiredOUT_end2 doubleValue];
      v135 = v134;
      wiredOUT_start2 = [v75 wiredOUT_start];
      [wiredOUT_start2 doubleValue];
      v138 = v137;

      if (v135 != v138)
      {
        goto LABEL_29;
      }
    }

    v71 = [obj countByEnumeratingWithState:&v202 objects:v206 count:16];
  }

  while (v71);

  if (v72)
  {
    v153 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
    v17 = v181;
    [v181 setWifiIN_mean:v153];

    v201 = [MEMORY[0x277CCABB0] numberWithDouble:v187 / v201];
    [v181 setWifiIN_var:v201];

    v155 = [MEMORY[0x277CCABB0] numberWithDouble:v187];
    [v181 setWifiIN_M2:v155];

    v156 = [MEMORY[0x277CCABB0] numberWithDouble:v188];
    [v181 setWifiIN:v156];

    v157 = [MEMORY[0x277CCABB0] numberWithDouble:v35];
    [v181 setWifiOUT_mean:v157];

    v2012 = [MEMORY[0x277CCABB0] numberWithDouble:v200 / v201];
    [v181 setWifiOUT_var:v2012];

    v159 = [MEMORY[0x277CCABB0] numberWithDouble:v200];
    [v181 setWifiOUT_M2:v159];

    v160 = [MEMORY[0x277CCABB0] numberWithDouble:v189];
    [v181 setWifiOUT:v160];

    v161 = [MEMORY[0x277CCABB0] numberWithDouble:v201];
    [v181 setWifiSampleCount:v161];
  }

  else
  {
    v17 = v181;
  }

  if (v185)
  {
    v162 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
    [v17 setWwanIN_mean:v162];

    v198 = [MEMORY[0x277CCABB0] numberWithDouble:v190 / v198];
    [v17 setWwanIN_var:v198];

    v164 = [MEMORY[0x277CCABB0] numberWithDouble:v190];
    [v17 setWwanIN_M2:v164];

    v165 = [MEMORY[0x277CCABB0] numberWithDouble:v191];
    [v17 setWwanIN:v165];

    v166 = [MEMORY[0x277CCABB0] numberWithDouble:v49];
    [v17 setWwanOUT_mean:v166];

    v1982 = [MEMORY[0x277CCABB0] numberWithDouble:v192 / v198];
    [v17 setWwanOUT_var:v1982];

    v168 = [MEMORY[0x277CCABB0] numberWithDouble:v192];
    [v17 setWwanOUT_M2:v168];

    v169 = [MEMORY[0x277CCABB0] numberWithDouble:v193];
    [v17 setWwanOUT:v169];

    v170 = [MEMORY[0x277CCABB0] numberWithDouble:v198];
    [v17 setWwanSampleCount:v170];
  }

  v68 = runCopy;
  if ((v185 & 0x100000000) != 0)
  {
    v171 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
    [v17 setWiredIN_mean:v171];

    v199 = [MEMORY[0x277CCABB0] numberWithDouble:v194 / v199];
    [v17 setWiredIN_var:v199];

    v173 = [MEMORY[0x277CCABB0] numberWithDouble:v194];
    [v17 setWiredIN_M2:v173];

    v174 = [MEMORY[0x277CCABB0] numberWithDouble:v195];
    [v17 setWiredIN:v174];

    v175 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
    [v17 setWiredOUT_mean:v175];

    v1992 = [MEMORY[0x277CCABB0] numberWithDouble:v196 / v199];
    [v17 setWiredOUT_var:v1992];

    v177 = [MEMORY[0x277CCABB0] numberWithDouble:v196];
    [v17 setWiredOUT_M2:v177];

    v178 = [MEMORY[0x277CCABB0] numberWithDouble:v197];
    [v17 setWiredOUT:v178];

    v69 = [MEMORY[0x277CCABB0] numberWithDouble:v199];
    [v17 setWiredSampleCount:v69];
    goto LABEL_39;
  }

LABEL_40:
  date2 = [MEMORY[0x277CBEAA8] date];
  [v17 setTimeStamp:date2];

  appCopy = v182;
LABEL_41:
}

- (void)workspaceSaveWithCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke;
  v8[3] = &unk_27898C648;
  v8[4] = self;
  v9 = callbackCopy;
  v6 = callbackCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(queue, v7);
}

uint64_t __49__FlowAnalyticsEngine_workspaceSaveWithCallback___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) save];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)workspaceSaveWithCallback:(id)callback
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 workspaceSaveWithCallback:callback];
  }

  else
  {
    (*(callback + 2))(callback);
  }
}

+ (void)checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _checkForegroundStateForProcessWithUUID:d replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__FlowAnalyticsEngine_checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __79__FlowAnalyticsEngine_checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "returning error: %@", &v4, 0xCu);
  }
}

- (void)_checkForegroundStateForProcessWithUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v16 = dCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:96 userInfo:0];
LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  v2 = *(*(a1 + 40) + 184);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v15 = 0;
  v3 = [v2 identifierForUUID:? derivation:?];
  if (v3 && (v15 - 1) <= 1)
  {
    v4 = +[AppStateMonitor foregroundAppKeys];
    v5 = [v4 containsObject:v3];
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_11:
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke_2;
  v10[3] = &unk_27898C698;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v14 = v5;
  v13 = v8;
  v11 = v6;
  v12 = *(a1 + 32);
  v9 = v6;
  dispatch_async(v7, v10);
}

void __80__FlowAnalyticsEngine__checkForegroundStateForProcessWithUUID_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      v3 = @"not supplied";
    }

    v4 = *(a1 + 56);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "UUID %@, foreground state: %d", &v5, 0x12u);
  }
}

- (void)_endRNFPeriod
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "_endRNFPeriod started", buf, 2u);
  }

  nstatManager = self->nstatManager;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke;
  v8[3] = &unk_27898C490;
  v8[4] = self;
  v5 = [(NWStatsManager *)nstatManager refreshUsingBlock:v8 completionBlock:&__block_literal_global_610];
  if (v5)
  {
    v6 = v5;
    v7 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "_endRNFPeriod refreshUsingBlock:completionBlock: failed, errno %{darwin.errno}d", buf, 8u);
    }
  }
}

uint64_t __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  [*(a1 + 32) _didReceiveSnapshot:v11];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v11;
  if (isKindOfClass)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v11, "sourceIdentifier")}];
    v6 = [TrackedFlow flowForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 ownerKey];
      v9 = [v8 isEqualToString:@"com.apple.facetime"];

      if ((v9 & 1) == 0)
      {
        [v7 setIsForcedNonRNF:1];
        [v7 setIsRNF:0];
      }
    }

    v4 = v11;
  }

  return MEMORY[0x2821F96F8](isKindOfClass, v4);
}

void __36__FlowAnalyticsEngine__endRNFPeriod__block_invoke_2()
{
  v0 = attributionLogHandle;
  if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_INFO, "NetworkStatistics reports refresh complete for _endRNFPeriod", v1, 2u);
  }
}

+ (void)endRNFPeriod
{
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    dispatch_async(queue, &__block_literal_global_612);
  }
}

+ (void)recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _recentUsageForApps:apps replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__FlowAnalyticsEngine_recentUsageForApps_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __59__FlowAnalyticsEngine_recentUsageForApps_replyQueue_reply___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "returning error: %@", &v4, 0xCu);
  }
}

- (void)_recentUsageForApps:(id)apps replyQueue:(id)queue reply:(id)reply
{
  appsCopy = apps;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v15[4] = self;
  v16 = appsCopy;
  v17 = queueCopy;
  v18 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = appsCopy;
  dispatch_async(queue, v15);
}

void __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke(uint64_t a1)
{
  v90 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v63 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v62 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
  v2 = [MEMORY[0x277D6B518] entityName];
  v56 = [*(*(a1 + 32) + 64) getDescriptionForName:v2];
  v55 = [*(*(a1 + 32) + 64) createTemporaryEntityForEntityName:v2];
  v53 = v2;
  v67 = [*(*(a1 + 32) + 64) createTemporaryEntityForEntityName:v2];
  if ([*(a1 + 40) count])
  {
    v52 = 0;
  }

  else
  {
    v52 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

  v68 = [MEMORY[0x277CBEAA8] date];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = *(a1 + 40);
  v3 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v3)
  {
    v4 = v3;
    v61 = *v81;
    v5 = 0x277CBE000uLL;
    do
    {
      v6 = 0;
      v57 = v4;
      do
      {
        if (*v81 != v61)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v65 = v6;
        v8 = *(*(&v80 + 1) + 8 * v6);
        v9 = [*(v5 + 2920) null];
        v66 = v8;
        v10 = [*(a1 + 32) _processFetchForName:0 bundle:v8 shouldFillMiss:0];
        v11 = v10;
        if (v10 && ([v10 isApp] & 1) != 0)
        {
          v64 = 0;
        }

        else
        {
          v12 = [*(a1 + 32) _attemptConvertingPluginNameToContainingAppName:v8];
          v64 = v12;
          if (v12)
          {
            v13 = v12;
            v14 = [*(a1 + 32) _processFetchForName:0 bundle:v12 shouldFillMiss:0];

            v15 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v86 = v66;
              v87 = 2112;
              v88 = v13;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "remap from %@ to %@", buf, 0x16u);
            }

            if (!v14)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v36 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v86 = v66;
              _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "remap from %@ failed", buf, 0xCu);
            }

            v14 = v11;
            if (!v11)
            {
LABEL_41:
              v11 = 0;
LABEL_42:
              v37 = analyticsLogHandle;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v86 = v66;
                _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "missing app: %@", buf, 0xCu);
              }

              goto LABEL_47;
            }
          }

          v11 = v14;
        }

        if (![v11 isApp])
        {
          goto LABEL_42;
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v16 = [v11 hasLiveUsage];
        v17 = [v16 countByEnumeratingWithState:&v76 objects:v84 count:16];
        if (!v17)
        {

          goto LABEL_45;
        }

        v18 = v17;
        v58 = v11;
        v59 = v9;
        v19 = *v77;
        v69 = 1;
        v20 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v77 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v76 + 1) + 8 * i);
            v23 = [v22 tag];
            v24 = v20[640];
            v25 = *(*(a1 + 32) + v24);
            if (v25)
            {
              v26 = [v25 currentSubscriberTag];
              if (v26)
              {
                v27 = v26;
                v28 = [*(*(a1 + 32) + v24) currentSubscriberTag];
                v29 = [v23 isEqualToNumber:v28];

                v20 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__has;
                if ((v29 & 1) == 0)
                {
                  continue;
                }
              }

              else
              {
                v31 = [v23 isEqualToNumber:&unk_2847EF6C8];

                if ((v31 & 1) == 0)
                {
                  continue;
                }
              }
            }

            else
            {
              v30 = [v23 isEqualToNumber:&unk_2847EF6C8];

              if (!v30)
              {
                continue;
              }
            }

            v32 = [v22 kind];
            if ([v32 intValue])
            {
              v33 = [*(a1 + 32) _isLiveUsageInRollingWindow:v22 forTime:v68];

              if (v33)
              {
                [*(a1 + 32) _applyCountsTo:v67 fromLiveUsage:v22 mustReset:v69 & 1];
                v69 = 0;
              }
            }

            else
            {
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v76 objects:v84 count:16];
        }

        while (v18);

        v11 = v58;
        v9 = v59;
        if ((v69 & 1) == 0)
        {
          v34 = [v58 firstTimeStamp];
          v35 = v67;
          goto LABEL_46;
        }

LABEL_45:
        v34 = [v11 firstTimeStamp];
        v35 = v55;
LABEL_46:
        [v35 setTimeStamp:v34];

        v38 = [v56 attributesByName];
        v39 = [v38 allKeys];
        v40 = [v35 dictionaryWithValuesForKeys:v39];

        v9 = v40;
        v4 = v57;
        v5 = 0x277CBE000;
LABEL_47:
        [v63 setObject:v9 forKey:v66];
        if (v64)
        {
          v41 = v64;
        }

        else
        {
          v41 = v66;
        }

        v42 = *(a1 + 32);
        v43 = v41;
        v44 = [v42 _bundleBackgroundAudioCapable:v43];
        v45 = [MEMORY[0x277CCABB0] numberWithBool:v44];
        [v62 setObject:v45 forKey:v66];

        v6 = v65 + 1;
      }

      while (v65 + 1 != v4);
      v4 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke_614;
  block[3] = &unk_27898C6C0;
  v46 = *(a1 + 48);
  v47 = *(a1 + 56);
  v71 = v63;
  v72 = v62;
  v48 = *(a1 + 32);
  v73 = v52;
  v74 = v48;
  v75 = v47;
  v49 = v52;
  v50 = v62;
  v51 = v63;
  dispatch_async(v46, block);

  objc_autoreleasePoolPop(context);
}

void __60__FlowAnalyticsEngine__recentUsageForApps_replyQueue_reply___block_invoke_614(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  (*(a1[8] + 16))();
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[4];
    v4 = a1[5];
    v7 = a1[6];
    v6 = a1[7];
    v8 = *(v6 + 648);
    if (v8)
    {
      v1 = [*(v6 + 648) currentSubscriberTag];
      if (v1)
      {
        v9 = [*(a1[7] + 648) currentSubscriberTag];
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v9 = &unk_2847EF6C8;
      }
    }

    else
    {
      v10 = 0;
      v9 = &unk_2847EF6C8;
    }

    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "returning (usage/audio/error): %@/%@/%@ for subscriber tag: %@", &v11, 0x2Au);
    if (v10)
    {
    }

    if (v8)
    {
    }
  }
}

+ (void)appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply
{
  replyCopy = reply;
  if (test && sharedInstance_1)
  {
    [sharedInstance_1 _appsWithFlowsPassingTest:test replyQueue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__FlowAnalyticsEngine_appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

- (void)_appsWithFlowsPassingTest:(id)test replyQueue:(id)queue reply:(id)reply
{
  testCopy = test;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke;
  v12[3] = &unk_27898C6E8;
  v13 = testCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = testCopy;
  dispatch_async(queue, v12);
}

void __66__FlowAnalyticsEngine__appsWithFlowsPassingTest_replyQueue_reply___block_invoke(uint64_t a1)
{
  v2 = [TrackedFlow ownersOfFlowsPassingTest:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

+ (void)identifierForUUID:(id)d replyQueue:(id)queue reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  if (sharedInstance_1)
  {
    queue = [sharedInstance_1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke;
    block[3] = &unk_27898C710;
    v17 = dCopy;
    v18 = queueCopy;
    v19 = replyCopy;
    dispatch_async(queue, block);

    v11 = v17;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "returning error: %@", buf, 0xCu);
    }

    if (queueCopy)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__FlowAnalyticsEngine_identifierForUUID_replyQueue_reply___block_invoke_615;
      v13[3] = &unk_27898B678;
      v15 = replyCopy;
      v11 = v11;
      v14 = v11;
      dispatch_async(queueCopy, v13);
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0, 0, v11);
    }
  }
}

- (id)_trafficEnvelopeToTier:(double)tier
{
  tierCopy = tier;
  if (tier < 0x1000)
  {
    return @"tier1";
  }

  if (tierCopy < 0x10000)
  {
    return @"tier2";
  }

  if (tierCopy < 0x100000)
  {
    return @"tier3";
  }

  if (tierCopy >> 24)
  {
    return @"tier5";
  }

  return @"tier4";
}

- (void)_calendarUsageForApp:(id)app givenLastRun:(id)run
{
  v78 = *MEMORY[0x277D85DE8];
  appCopy = app;
  runCopy = run;
  timeStart = [runCopy timeStart];
  [timeStart timeIntervalSince1970];
  v9 = v8;

  v67 = v9;
  v10 = gmtime(&v67);
  v11 = v10->tm_min / 15 + 4 * v10->tm_hour + 1;
  v12 = LOWORD(v10->tm_wday) + 1;
  hintCalendarUsage = [appCopy hintCalendarUsage];
  if (!hintCalendarUsage)
  {
LABEL_8:
    v22 = MEMORY[0x277CCAC30];
    bundleName = [appCopy bundleName];
    v24 = [v22 predicateWithFormat:@"%K == %@ AND %K == %hu AND %K == %hu", @"hasApp.bundleName", bundleName, @"timeOfDaySlot", v11, @"dayOfWeek", v12];

    v25 = [(ObjectAnalytics *)self->calspace fetchEntitiesFreeForm:v24 sortDesc:0];
    if ([v25 count] == 1)
    {
      hintCalendarUsage4 = [v25 objectAtIndex:0];
    }

    else
    {
      aspace = self->aspace;
      entityName = [MEMORY[0x277D6B560] entityName];
      hintCalendarUsage4 = [(AppAnalytics *)aspace createEntityForEntityName:entityName];

      if (hintCalendarUsage4)
      {
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        [hintCalendarUsage4 setTimeOfDaySlot:v28];

        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
        [hintCalendarUsage4 setDayOfWeek:v29];

        timeStart2 = [runCopy timeStart];
        [hintCalendarUsage4 setFirstTimeStamp:timeStart2];

        [appCopy addHasCalendarUsageObject:hintCalendarUsage4];
      }
    }

    if (!hintCalendarUsage4)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v14 = hintCalendarUsage;
  hintCalendarUsage2 = [appCopy hintCalendarUsage];
  timeOfDaySlot = [hintCalendarUsage2 timeOfDaySlot];
  if ([timeOfDaySlot unsignedShortValue] != v11)
  {

    goto LABEL_8;
  }

  hintCalendarUsage3 = [appCopy hintCalendarUsage];
  dayOfWeek = [hintCalendarUsage3 dayOfWeek];
  unsignedShortValue = [dayOfWeek unsignedShortValue];

  if (unsignedShortValue != v12)
  {
    goto LABEL_8;
  }

  hintCalendarUsage4 = [appCopy hintCalendarUsage];
  if (!hintCalendarUsage4)
  {
LABEL_5:
    v21 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "calendar: couldn't find suitable AppCalendarUsage record nor could create one", buf, 2u);
    }

    goto LABEL_16;
  }

LABEL_13:
  v63 = v11;
  v64 = v12;
  wifiIN_end = [runCopy wifiIN_end];
  [wifiIN_end doubleValue];
  v32 = v31;
  wifiIN_start = [runCopy wifiIN_start];
  [wifiIN_start doubleValue];
  v35 = v32 - v34;
  wifiOUT_end = [runCopy wifiOUT_end];
  [wifiOUT_end doubleValue];
  v38 = v35 + v37;
  wifiOUT_start = [runCopy wifiOUT_start];
  [wifiOUT_start doubleValue];
  v41 = v38 - v40;
  wwanIN_end = [runCopy wwanIN_end];
  [wwanIN_end doubleValue];
  v44 = v41 + v43;
  [runCopy wwanIN_start];
  v46 = v45 = appCopy;
  [v46 doubleValue];
  v48 = v44 - v47;
  wwanOUT_end = [runCopy wwanOUT_end];
  [wwanOUT_end doubleValue];
  v51 = v48 + v50;
  wwanOUT_start = [runCopy wwanOUT_start];
  [wwanOUT_start doubleValue];
  v54 = v51 - v53;

  appCopy = v45;
  v55 = [(FlowAnalyticsEngine *)self _trafficEnvelopeToTier:v54];
  v56 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v57 = v56;
    bundleName2 = [appCopy bundleName];
    *buf = 138413314;
    v69 = bundleName2;
    v70 = 2048;
    v71 = v54;
    v72 = 2112;
    v73 = v55;
    v74 = 1024;
    v75 = v63;
    v76 = 1024;
    v77 = v64;
    _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEBUG, "calendar: app: %@, traffic envelope: %f, tier: %@, at timeslot: %d, dayslot: %d", buf, 0x2Cu);
  }

  v59 = [hintCalendarUsage4 valueForKey:v55];
  v60 = [v59 unsignedIntValue] + 1;

  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
  [hintCalendarUsage4 setValue:v61 forKey:v55];

  timeStart3 = [runCopy timeStart];
  [hintCalendarUsage4 setTimeStamp:timeStart3];

  [appCopy setHintCalendarUsage:hintCalendarUsage4];
LABEL_16:
}

+ (id)appBundleIdentifierFromAuditToken:(id *)token
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v3 = *&token->var0[4];
  *buf = *token->var0;
  v13 = v3;
  v4 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:&v11];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v4 isWebBrowser:0];
  }

  else
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Error creating LSBundleRecord from audit token, %@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)appBundleIdentifierFromBundleIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v11];
    v5 = v11;
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v9 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v4 isWebBrowser:0];
    }

    else
    {
      v8 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v13 = identifierCopy;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Error creating LSBundleRecord from bundle identifier (%{private}@), %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)appBundleIdentifierIsWebBrowser:(id)browser
{
  result = sharedInstance_1;
  if (sharedInstance_1)
  {
    return [sharedInstance_1 _appBundleIdentifierIsWebBrowser:browser];
  }

  return result;
}

- (BOOL)_appBundleIdentifierIsWebBrowser:(id)browser
{
  v28 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  v23 = 0;
  if (browserCopy)
  {
    v5 = [(NSMutableDictionary *)self->webBrowserBundleCache objectForKeyedSubscript:browserCopy];
    v6 = v5;
    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
      v23 = bOOLValue;
LABEL_19:

      goto LABEL_20;
    }

    v22 = 0;
    v9 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:browserCopy allowPlaceholder:0 error:&v22];
    v10 = v22;
    v11 = v10;
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v17 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v9 isWebBrowser:&v23];
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x277CCABB0] numberWithBool:v23];
        [(NSMutableDictionary *)self->webBrowserBundleCache setObject:v19 forKeyedSubscript:browserCopy];
      }

      else
      {
        v23 = 0;
        v20 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138477827;
          v25 = browserCopy;
          v14 = "Error creating appBundleIdentifier from bundle identifier (%{private}@)";
          v15 = v20;
          v16 = 12;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v25 = browserCopy;
        v26 = 2112;
        v27 = v11;
        v14 = "Error creating LSBundleRecord from bundle identifier (%{private}@), %@";
        v15 = v13;
        v16 = 22;
LABEL_17:
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      }
    }

    bOOLValue = v23;
    goto LABEL_19;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Nil bundleIdentifier", buf, 2u);
  }

  bOOLValue = 0;
LABEL_20:

  return bOOLValue & 1;
}

- (void)startObservingLaunchServices
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterAddObserver(DistributedCenter, self, ls_application_unregistered_notification_callback, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)stopObservingLaunchServices
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();

  CFNotificationCenterRemoveObserver(DistributedCenter, self, @"com.apple.LaunchServices.applicationUnregistered", 0);
}

- (void)handleLaunchServicesApplicationUnregistration:(id)unregistration
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = unregistration;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", gEffectiveUserId, @"bundleName", v8];
        v10 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v9];
        v11 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218243;
          v18 = v10;
          v19 = 2113;
          v20 = v8;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %ld ADU records for %{private}@ via LaunchServices app unregistration", buf, 0x16u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

- (void)endpointMaintenanceOnClose:(id)close
{
  v18 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  attributedEntity = [closeCopy attributedEntity];
  remoteAddress = [closeCopy remoteAddress];
  v13 = 0;
  v7 = validateSockAddrToString(remoteAddress, 0, &v13);
  v8 = v13;
  if (v7)
  {
    bytes = [remoteAddress bytes];
    if (([closeCopy hasNonLocalDestination] & 1) != 0 || *(bytes + 2) && (is_directly_reachable_address(bytes) & 1) == 0)
    {
      v10 = [MEMORY[0x277CBEB98] setWithObject:v8];
      isTracker = [closeCopy isTracker];
      [(FlowAnalyticsEngine *)self _updateAppEndpoints:v10 type:isTracker userId:gEffectiveUserId bundleName:attributedEntity flowClosing:1];
      [(FlowAnalyticsEngine *)self _resolveAppEndpointsForUserId:gEffectiveUserId bundleName:attributedEntity];
    }
  }

  else
  {
    v12 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v15 = remoteAddress;
      v16 = 2112;
      v17 = attributedEntity;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "No remote endpoint extracted from %@ for %@", buf, 0x16u);
    }
  }
}

- (void)createAppEndpointsStorageForUserId:(unsigned int)id
{
  v3 = *&id;
  v34 = *MEMORY[0x277D85DE8];
  if (!self->allAppEndpoints)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    allAppEndpoints = self->allAppEndpoints;
    self->allAppEndpoints = v5;
  }

  if (!self->resolvedAppEndpoints)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    resolvedAppEndpoints = self->resolvedAppEndpoints;
    self->resolvedAppEndpoints = v7;
  }

  if (!self->determinedTrackersFromAPICount)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    determinedTrackersFromAPICount = self->determinedTrackersFromAPICount;
    self->determinedTrackersFromAPICount = v9;
  }

  v11 = self->allAppEndpoints;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = self->allAppEndpoints;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

    v17 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67109120;
      v33 = v3;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Creating an empty all endpoints storage for user %u", &v32, 8u);
    }
  }

  v18 = self->resolvedAppEndpoints;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v20 = [(NSMutableDictionary *)v18 objectForKeyedSubscript:v19];

  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v22 = self->resolvedAppEndpoints;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:v23];

    v24 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67109120;
      v33 = v3;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Creating an empty resolved endpoints storage for user %u", &v32, 8u);
    }
  }

  v25 = self->determinedTrackersFromAPICount;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v27 = [(NSMutableDictionary *)v25 objectForKeyedSubscript:v26];

  if (!v27)
  {
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v29 = self->determinedTrackersFromAPICount;
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v29 setObject:v28 forKeyedSubscript:v30];

    v31 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 67109120;
      v33 = v3;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "Creating an empty determined trackers from API count storage for user %u", &v32, 8u);
    }
  }
}

- (void)_fetchAppEndpointsRecordForUserId:(unsigned int)id bundleName:(id)name
{
  v4 = *&id;
  v73 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  allAppEndpoints = self->allAppEndpoints;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v8 = [(NSMutableDictionary *)allAppEndpoints objectForKeyedSubscript:v7];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      epspace = self->epspace;
      nameCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@", @"effectiveUserId", v4, @"hasApp.bundleName", nameCopy];
      v11 = [(ObjectAnalytics *)epspace fetchEntityDictionariesWithProperties:&unk_2847EEB80 predicate:nameCopy];

      if (!v11 || ![v11 count])
      {
        v47 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = nameCopy;
          _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "No endpoints record in DB for %@, encountering app for the first time", buf, 0xCu);
        }

        goto LABEL_43;
      }

      date = [MEMORY[0x277CBEAA8] date];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v61 objects:v72 count:16];
      if (v14)
      {
        v15 = v14;
        v49 = v11;
        v52 = v8;
        v59 = 0;
        v16 = @"firstTimeStamp";
        v17 = *v62;
        v55 = date;
        v58 = *v62;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v62 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v61 + 1) + 8 * i);
            v20 = [v19 objectForKeyedSubscript:v16];
            if (isDateWithinScope(date, v20, 86400.0))
            {
              v21 = v15;
              v22 = v16;
              v23 = [v19 objectForKeyedSubscript:@"hasApp.bundleName"];
              v24 = [v19 objectForKeyedSubscript:@"endpointSet"];
              v25 = v24;
              if (v23)
              {
                v26 = v24 == 0;
              }

              else
              {
                v26 = 1;
              }

              if (v26 || ![nameCopy isEqualToString:v23])
              {
                v33 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v66 = v19;
                  _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Invalid endpoints record fetched from DB %@", buf, 0xCu);
                }
              }

              else
              {
                v27 = MEMORY[0x277CBEB98];
                v71[0] = objc_opt_class();
                v71[1] = objc_opt_class();
                v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
                v29 = [v27 setWithArray:v28];

                v60 = 0;
                v30 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v29 fromData:v25 error:&v60];
                v56 = v60;
                if (!v56 && v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v53 = v30;
                  [v52 setObject:? forKey:?];
                  v31 = domainTrackingLogHandle;
                  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = v31;
                    v50 = [v53 count];
                    v51 = [v52 objectForKeyedSubscript:nameCopy];
                    *buf = 134218499;
                    v66 = v50;
                    v67 = 2112;
                    v68 = nameCopy;
                    v69 = 2113;
                    v70 = v51;
                    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Updating all storage with %lu fetched endpoints record for %@, %{private}@", buf, 0x20u);
                  }
                }

                else
                {
                  v34 = domainTrackingLogHandle;
                  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    v35 = v34;
                    v36 = objc_opt_class();
                    NSStringFromClass(v36);
                    v37 = v54 = v29;
                    *buf = 138412802;
                    v66 = v37;
                    v67 = 2112;
                    v68 = nameCopy;
                    v69 = 2112;
                    v70 = v56;
                    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Failed to unarchive, endpoints record is nil or unexpected class %@ for %@, error %@", buf, 0x20u);

                    v29 = v54;
                  }
                }

                date = v55;
              }

              ++v59;

              v16 = v22;
              v15 = v21;
              v17 = v58;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v61 objects:v72 count:16];
        }

        while (v15);

        v8 = v52;
        v11 = v49;
        if (v59 == 1)
        {
          goto LABEL_42;
        }

        if (v59)
        {
          v38 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v66 = nameCopy;
            v67 = 2112;
            v68 = v13;
            v39 = "Expected 0 or 1 fetched endpoints record for %@ but received multiple, %@";
            v40 = v38;
            v41 = OS_LOG_TYPE_ERROR;
            v42 = 22;
LABEL_41:
            _os_log_impl(&dword_23255B000, v40, v41, v39, buf, v42);
            goto LABEL_42;
          }

          goto LABEL_42;
        }
      }

      else
      {
      }

      [v8 setObject:0 forKeyedSubscript:nameCopy];
      v48 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v66 = nameCopy;
        v39 = "No scoped endpoints record in DB for %@";
        v40 = v48;
        v41 = OS_LOG_TYPE_DEBUG;
        v42 = 12;
        goto LABEL_41;
      }

LABEL_42:

LABEL_43:
      goto LABEL_44;
    }
  }

  v43 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    v44 = v43;
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    *buf = 138412290;
    v66 = v46;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "All endpoints storage is nil or unexpected class %@", buf, 0xCu);
  }

LABEL_44:
}

- (void)_updateAppEndpoints:(id)endpoints type:(unint64_t)type userId:(unsigned int)id bundleName:(id)name flowClosing:(BOOL)closing
{
  closingCopy = closing;
  v8 = *&id;
  v52 = *MEMORY[0x277D85DE8];
  endpointsCopy = endpoints;
  nameCopy = name;
  if (type == 1)
  {
    v32 = @"resolved";
    v11 = &OBJC_IVAR___FlowAnalyticsEngine_resolvedAppEndpoints;
  }

  else
  {
    if (type)
    {
      goto LABEL_22;
    }

    v32 = @"all";
    v11 = &OBJC_IVAR___FlowAnalyticsEngine_allAppEndpoints;
  }

  v12 = *(&self->super.super.isa + *v11);
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = v14;
    objc_sync_enter(v15);
    obj = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = domainTrackingLogHandle;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138412546;
        v42 = v32;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Endpoints in %@ storage is nil or unexpected class %@", buf, 0x16u);
      }

      goto LABEL_36;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v17 = endpointsCopy;
    v18 = [v17 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v18)
    {
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = [[TimedAppEndpoint alloc] initWithEndpointName:*(*(&v37 + 1) + 8 * i) type:0];
          [v16 addObject:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v18);
    }

    v22 = [obj objectForKeyedSubscript:nameCopy];
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = domainTrackingLogHandle;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 138412802;
          v42 = v31;
          v43 = 2112;
          v44 = v32;
          v45 = 2112;
          v46 = nameCopy;
          _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "App endpoints is unexpected class %@ in %@ storage for %@", buf, 0x20u);
        }

        goto LABEL_34;
      }

      [v16 minusSet:v22];
      if (![v16 count])
      {
LABEL_35:

LABEL_36:
        objc_sync_exit(obj);

        goto LABEL_37;
      }

      [v22 unionSet:v16];
      if (type == 1 && closingCopy)
      {
        [(FlowAnalyticsEngine *)self _updateDeterminedTrackersFromAPICountForUserId:v8 bundleName:nameCopy increment:[v16 count]];
      }

      v23 = domainTrackingLogHandle;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_34:

        goto LABEL_35;
      }

      v24 = [v16 count];
      *buf = 134219011;
      v42 = v24;
      v43 = 2112;
      v44 = v32;
      v45 = 2112;
      v46 = nameCopy;
      v47 = 1024;
      v48 = closingCopy;
      v49 = 2113;
      v50 = v16;
      v25 = "Adding %lu endpoints in %@ storage for %@, flowClosing %d, %{private}@";
    }

    else
    {
      [obj setObject:v16 forKeyedSubscript:nameCopy];
      if (type == 1 && closingCopy)
      {
        [(FlowAnalyticsEngine *)self _updateDeterminedTrackersFromAPICountForUserId:v8 bundleName:nameCopy increment:[v16 count]];
      }

      v23 = domainTrackingLogHandle;
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v29 = [v16 count];
      *buf = 134219011;
      v42 = v29;
      v43 = 2112;
      v44 = v32;
      v45 = 2112;
      v46 = nameCopy;
      v47 = 1024;
      v48 = closingCopy;
      v49 = 2113;
      v50 = v16;
      v25 = "Initializing set with %lu endpoints in %@ storage for %@, flowClosing %d, %{private}@";
    }

    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0x30u);
    goto LABEL_34;
  }

LABEL_22:
  v26 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v42) = v8;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "No endpoints storage created in memory yet for euid %u", buf, 8u);
  }

LABEL_37:
}

- (void)_updateDeterminedTrackersFromAPICountForUserId:(unsigned int)id bundleName:(id)name increment:(unint64_t)increment
{
  v6 = *&id;
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  determinedTrackersFromAPICount = self->determinedTrackersFromAPICount;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v11 = [(NSMutableDictionary *)determinedTrackersFromAPICount objectForKeyedSubscript:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKeyedSubscript:nameCopy];
      if (!v12)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:increment];
        [v11 setObject:v20 forKeyedSubscript:nameCopy];

        v15 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 134218243;
          incrementCopy = increment;
          v26 = 2113;
          v27 = nameCopy;
          v16 = "Initializing determined trackers from API count to %lu for %{private}@";
          goto LABEL_12;
        }

LABEL_15:

        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 unsignedIntegerValue]+ increment;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
        [v11 setObject:v14 forKeyedSubscript:nameCopy];

        v15 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 134218243;
          incrementCopy = v13;
          v26 = 2113;
          v27 = nameCopy;
          v16 = "Incrementing determined trackers from API count to %lu for %{private}@";
LABEL_12:
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, v16, &v24, 0x16u);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      v21 = domainTrackingLogHandle;
      if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v19 = v21;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = 138412546;
      incrementCopy = v23;
      v26 = 2112;
      v27 = nameCopy;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "App determined trackers from API count is unexpected class %@ for %@", &v24, 0x16u);

LABEL_9:
      goto LABEL_15;
    }
  }

  v17 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v17;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v24 = 138412290;
    incrementCopy = v19;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Determined trackers from API storage is nil or unexpected class %@", &v24, 0xCu);
    goto LABEL_9;
  }

LABEL_16:
}

- (void)_resolveAppEndpointsForUserId:(unsigned int)id bundleName:(id)name
{
  v4 = *&id;
  v71 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  allAppEndpoints = self->allAppEndpoints;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = [(NSMutableDictionary *)allAppEndpoints objectForKeyedSubscript:v8];

  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 objectForKeyedSubscript:nameCopy];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v53 = v9;
      v54 = nameCopy;
      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v52 = v10;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v60;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v60 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v59 + 1) + 8 * i);
            if (![v17 type])
            {
              [v11 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        resolvedAppEndpoints = self->resolvedAppEndpoints;
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
        v20 = [(NSMutableDictionary *)resolvedAppEndpoints objectForKeyedSubscript:v19];

        nameCopy = v54;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v21 = [v20 objectForKeyedSubscript:v54];
          if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v51 = v20;
            v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v23 = v11;
            v24 = [v23 countByEnumeratingWithState:&v55 objects:v69 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v56;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v56 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v55 + 1) + 8 * j);
                  v29 = [v21 member:{v28, v51}];

                  if (v29)
                  {
                    v30 = [v12 member:v28];
                    [v30 markResolved];
                    [v22 addObject:v30];
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v55 objects:v69 count:16];
              }

              while (v25);
            }

            nameCopy = v54;
            v10 = v52;
            if ([v22 count])
            {
              v31 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v31;
                v33 = [v22 count];
                *buf = 134218499;
                v64 = v33;
                v65 = 2112;
                v66 = v54;
                v67 = 2113;
                v68 = v22;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Resolved %lu endpoints for %@, %{private}@", buf, 0x20u);
              }
            }

            v9 = v53;
            v20 = v51;
          }

          else
          {
            v47 = domainTrackingLogHandle;
            v10 = v52;
            v9 = v53;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v48 = v47;
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              *buf = 138412546;
              v64 = v54;
              v65 = 2112;
              v66 = v50;
              _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "No endpoints resolved so far for %@, or unexpected class %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v42 = domainTrackingLogHandle;
          v10 = v52;
          v9 = v53;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
          {
            v43 = v42;
            v44 = objc_opt_class();
            v45 = NSStringFromClass(v44);
            *buf = 138412290;
            v64 = v45;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_ERROR, "Resolved endpoints storage is nil or unexpected class %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v46 = domainTrackingLogHandle;
        v9 = v53;
        nameCopy = v54;
        v10 = v52;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "No unresolved endpoints at this time", buf, 2u);
        }
      }
    }

    else
    {
      v38 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v39 = v38;
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        *buf = 138412546;
        v64 = nameCopy;
        v65 = 2112;
        v66 = v41;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "No endpoints were added in all storage so far for %@, or unexpected class %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v34 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v35 = v34;
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138412290;
      v64 = v37;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "All endpoints storage is nil or unexpected class %@", buf, 0xCu);
    }
  }
}

- (id)_appEndpointsInProcess:(id)process
{
  v23 = *MEMORY[0x277D85DE8];
  processCopy = process;
  date = [MEMORY[0x277CBEAA8] date];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  hasAppEndpoint = [processCopy hasAppEndpoint];
  v6 = [hasAppEndpoint countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(hasAppEndpoint);
      }

      v10 = *(*(&v18 + 1) + 8 * v9);
      effectiveUserId = [v10 effectiveUserId];
      if (effectiveUserId == gEffectiveUserId)
      {
        firstTimeStamp = [v10 firstTimeStamp];
        v13 = isDateWithinScope(date, firstTimeStamp, 86400.0);

        if (v13)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [hasAppEndpoint countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    createEntity = v10;

    if (createEntity)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  createEntity = [(ObjectAnalytics *)self->epspace createEntity];
  [createEntity setEffectiveUserId:gEffectiveUserId];
  date2 = [MEMORY[0x277CBEAA8] date];
  [createEntity setFirstTimeStamp:date2];

  [processCopy addHasAppEndpointObject:createEntity];
LABEL_13:

  return createEntity;
}

- (void)_archiveAppEndpointsForUserId:(unsigned int)id bundleName:(id)name
{
  v4 = *&id;
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  allAppEndpoints = self->allAppEndpoints;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = [(NSMutableDictionary *)allAppEndpoints objectForKeyedSubscript:v8];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 objectForKeyedSubscript:nameCopy];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v20 = domainTrackingLogHandle;
        if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
LABEL_26:

          goto LABEL_27;
        }

        v12 = v20;
        v21 = objc_opt_class();
        v13 = NSStringFromClass(v21);
        *buf = 138412546;
        v35 = nameCopy;
        v36 = 2112;
        v37 = v13;
        v22 = "No endpoints to archive for %@, or unexpected class %@";
        v23 = v12;
        v24 = OS_LOG_TYPE_DEBUG;
        v25 = 22;
        goto LABEL_15;
      }

      v11 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:nameCopy shouldFillMiss:1];
      v12 = v11;
      if (v11 && [v11 isApp])
      {
        v13 = [(FlowAnalyticsEngine *)self _appEndpointsInProcess:v12];
        if (v13)
        {
          v14 = v10;
          v33 = 0;
          v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v33];
          v16 = v33;
          if (v16)
          {
            v17 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = nameCopy;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Failed to archive endpoints record for %@", buf, 0xCu);
            }
          }

          else
          {
            [v13 setEndpointSet:v15];
            date = [MEMORY[0x277CBEAA8] date];
            [v13 setTimeStamp:date];

            v30 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v31 = v30;
              v32 = [v14 count];
              *buf = 134218499;
              v35 = v32;
              v36 = 2112;
              v37 = nameCopy;
              v38 = 2113;
              v39 = v14;
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "Archived %lu endpoints record for %@: %{private}@", buf, 0x20u);
            }
          }

          goto LABEL_23;
        }

        v28 = domainTrackingLogHandle;
        if (!os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
LABEL_24:

          goto LABEL_25;
        }

        *buf = 138412290;
        v35 = nameCopy;
        v22 = "Could not create or fetch endpoints record for %@";
        v23 = v28;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = 12;
LABEL_15:
        _os_log_impl(&dword_23255B000, v23, v24, v22, buf, v25);
        goto LABEL_24;
      }

      v26 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v26;
        v27 = objc_opt_class();
        v14 = NSStringFromClass(v27);
        *buf = 138412546;
        v35 = v14;
        v36 = 2112;
        v37 = nameCopy;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Process is nil or unexpected class %@ for %@", buf, 0x16u);
LABEL_23:

        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_26;
    }
  }

  v18 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = v18;
    v19 = objc_opt_class();
    v12 = NSStringFromClass(v19);
    *buf = 138412290;
    v35 = v12;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "All endpoints storage is nil or unexpected class %@", buf, 0xCu);
    goto LABEL_25;
  }

LABEL_27:
}

- (unint64_t)_clearStaleAppEndpointRecords
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 dateWithTimeIntervalSinceNow:-604800.0];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Clearing out AppEndpoint records with firstTimeStamp older than %@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v9 = [v7 predicateWithFormat:@"%K < %@", @"firstTimeStamp", v8];

  v10 = [(ObjectAnalytics *)self->epspace removeEntitiesMatching:v9];
  v11 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v10;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %lu AppEndpoint records", buf, 0xCu);
  }

  return v10;
}

- (unint64_t)_submitAppEndpointRecordInfoAnalytics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ObjectAnalytics *)self->epspace fetchAllEntityDictionariesWithProperties:&unk_2847EEB98];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke;
  v5[3] = &unk_27898C758;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"timeStamp"];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"firstTimeStamp"];

  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v6 >= v9)
  {
    if (AnalyticsSendEventLazy())
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

id __60__FlowAnalyticsEngine__submitAppEndpointRecordInfoAnalytics__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"intervalSeconds";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32) - *(a1 + 40)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_performAppEndpointTrackingPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearStaleAppEndpointRecords = [(FlowAnalyticsEngine *)self _clearStaleAppEndpointRecords];
  _submitAppEndpointRecordInfoAnalytics = [(FlowAnalyticsEngine *)self _submitAppEndpointRecordInfoAnalytics];
  if (replyCopy)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearStaleAppEndpointRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_submitAppEndpointRecordInfoAnalytics];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"endpointRecordsDeleted", v8, @"endpointRecordAnalyticsSubmitted", 0}];

    replyCopy[2](replyCopy, v9, 0);
  }
}

- (void)performAppEndpointTrackingPeriodicTasksComplete:(id)complete error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = domainTrackingLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = errorCopy;
      v8 = "Periodic app endpoint tracking tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = completeCopy;
    v8 = "Periodic app endpoint tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

+ (void)performAppEndpointTrackingPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppEndpointTrackingPeriodicTasksWithReply:reply];
  }
}

- (void)clearAppEndpointsForUserWithID:(unsigned int)d
{
  v3 = *&d;
  v34 = *MEMORY[0x277D85DE8];
  epspace = self->epspace;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", *&d];
  v7 = [(ObjectAnalytics *)epspace removeEntitiesMatching:v6];

  v8 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *v29 = v7;
    *&v29[8] = 1024;
    *&v29[10] = v3;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Cleared out %ld app endpoint tracking data for user %u", buf, 0x12u);
  }

  if (!self->endpointTrackingEnabled)
  {
    allAppEndpoints = self->allAppEndpoints;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    v11 = [(NSMutableDictionary *)allAppEndpoints objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = self->allAppEndpoints;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [(NSMutableDictionary *)v12 setObject:0 forKeyedSubscript:v13];
    }

    resolvedAppEndpoints = self->resolvedAppEndpoints;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    v16 = [(NSMutableDictionary *)resolvedAppEndpoints objectForKeyedSubscript:v15];

    if (v16)
    {
      v17 = self->resolvedAppEndpoints;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];
    }

    determinedTrackersFromAPICount = self->determinedTrackersFromAPICount;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
    v21 = [(NSMutableDictionary *)determinedTrackersFromAPICount objectForKeyedSubscript:v20];

    if (v21)
    {
      v22 = self->determinedTrackersFromAPICount;
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      [(NSMutableDictionary *)v22 setObject:0 forKeyedSubscript:v23];
    }

    v24 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->allAppEndpoints;
      v26 = self->resolvedAppEndpoints;
      v27 = self->determinedTrackersFromAPICount;
      *buf = 67109891;
      *v29 = v3;
      *&v29[4] = 2113;
      *&v29[6] = v25;
      v30 = 2113;
      v31 = v26;
      v32 = 2113;
      v33 = v27;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Cleared out in-memory app endpoints data for user %u, all: %{private}@, resolved: %{private}@, trackersFromAPI: %{private}@", buf, 0x26u);
    }
  }
}

- (void)submitAppEndpointToDateSPICallMetric
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.AppEndpointSPICall to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (void)_reportDomainTrackingDropFor:(id)for withCause:(unint64_t)cause detail:(id)detail
{
  v21 = *MEMORY[0x277D85DE8];
  forCopy = for;
  detailCopy = detail;
  if (cause <= 0xA && ((1 << cause) & 0x7AE) != 0)
  {
    if (forCopy)
    {
      v9 = +[NetDomainsHandler sharedInstance];
      v10 = [v9 bundleNameImplies1stOr2ndParty:forCopy];

      if (v10)
      {
        v11 = forCopy;
      }

      else
      {
        v12 = domainTrackingLogHandle;
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138478339;
          v16 = forCopy;
          v17 = 2048;
          causeCopy2 = cause;
          v19 = 2113;
          v20 = detailCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "3rd Party obfuscated Drop reported to analytics for %{private}@ cause %lu detail %{private}@", buf, 0x20u);
        }

        v11 = @"com.apple.apr.3pp";
      }
    }

    else
    {
      v11 = @"unknown";
    }

    v13 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138478339;
      v16 = forCopy;
      v17 = 2048;
      causeCopy2 = cause;
      v19 = 2113;
      v20 = detailCopy;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Drop reported to analytics for %{private}@ cause %lu detail %{private}@", buf, 0x20u);
    }

    v14 = v11;
    AnalyticsSendEventLazy();
  }
}

id __69__FlowAnalyticsEngine__reportDomainTrackingDropFor_withCause_detail___block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) UTF8String];
  v6 = daemonFunctionalGroupingForProcName(v2, v3, v4, v5);
  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    goto LABEL_7;
  }

  if ([*(a1 + 32) hasPrefix:@"com.apple."])
  {
    v9 = [*(a1 + 32) substringFromIndex:{objc_msgSend(@"com.apple.", "length")}];
    v10 = [v9 UTF8String];
    v7 = daemonFunctionalGroupingForProcName(v10, v11, v12, v13);

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v8 = @"unknown";
LABEL_7:
  v18[0] = @"Entity";
  v18[1] = @"EntityGroup";
  v14 = *(a1 + 40);
  v19[0] = *(a1 + 32);
  v19[1] = v8;
  v18[2] = @"Cause";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
  v19[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  return v16;
}

- (void)_evalDomainTrackingDropOf:(id)of
{
  ofCopy = of;
  if (self->appTrackingEnabled && AnalyticsIsEventUsed())
  {
    domainAttributedBundleId = [ofCopy domainAttributedBundleId];
    if (domainAttributedBundleId)
    {
      [ofCopy domainAttributedBundleId];
    }

    else
    {
      [ofCopy attributedEntity];
    }
    v6 = ;

    v37 = 1;
    v36 = 0;
    v35 = 0;
    processName = [ofCopy processName];
    if ([processName isEqualToString:@"mDNSResponder"])
    {

LABEL_9:
      selfCopy3 = self;
      v10 = v6;
      v11 = 6;
LABEL_10:
      [(FlowAnalyticsEngine *)selfCopy3 _reportDomainTrackingDropFor:v10 withCause:v11 detail:ofCopy];
      v12 = 0;
LABEL_11:
      v13 = v6;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [v6 isEqualToString:@"mDNSResponder"];

    if (v8)
    {
      goto LABEL_9;
    }

    if (!v6)
    {
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:0 withCause:1 detail:ofCopy];
      v12 = 0;
      v13 = 0;
      goto LABEL_12;
    }

    if ([v6 hasPrefix:@"terminusd"])
    {
      selfCopy3 = self;
      v10 = v6;
      v11 = 8;
      goto LABEL_10;
    }

    attributedEntity = [ofCopy attributedEntity];
    if (attributedEntity)
    {
      v15 = attributedEntity;
      attributedEntityIsBundleName = [ofCopy attributedEntityIsBundleName];

      if ((attributedEntityIsBundleName & 1) == 0)
      {
        selfCopy3 = self;
        v10 = v6;
        v11 = 11;
        goto LABEL_10;
      }
    }

    v34 = 0;
    v17 = [(FlowAnalyticsEngine *)self _shouldProcessDomainInfoForBundleID:v6 implicit:&v34 knownToLaunchServices:&v37 ignoredInLaunchServices:&v36 isWebBrowser:&v35];
    v18 = v34;
    v12 = v18;
    if (!v17)
    {
      if (v36 == 1)
      {
        selfCopy5 = self;
        v21 = v6;
        v22 = 7;
      }

      else
      {
        if (v37)
        {
          goto LABEL_11;
        }

        selfCopy5 = self;
        v21 = v6;
        v22 = 9;
      }

      [(FlowAnalyticsEngine *)selfCopy5 _reportDomainTrackingDropFor:v21 withCause:v22 detail:ofCopy];
      goto LABEL_11;
    }

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v6;
    }

    v13 = v19;

    if ([ofCopy isSilent])
    {
      [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:4 detail:ofCopy];
      goto LABEL_12;
    }

    domainName = [ofCopy domainName];

    if (domainName)
    {
      goto LABEL_12;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = ofCopy;
      remoteAddress = [v24 remoteAddress];
      flowuuid = [v24 flowuuid];
      hasLocalDestination = [v24 hasLocalDestination];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        flowuuid = 0;
        goto LABEL_45;
      }

      v29 = ofCopy;
      remoteAddress = [v29 remoteAddress];
      flowuuid = [v29 flowuuid];
      bytes = [remoteAddress bytes];
      if (!bytes || !*(bytes + 2))
      {
        v28 = 0;
LABEL_42:

        if (remoteAddress)
        {
          if (!v28)
          {
            v33 = 0;
            v31 = validateSockAddrToString(remoteAddress, 0, &v33);
            v32 = v33;
            if (flowuuid && !v31)
            {
              [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:3 detail:ofCopy];
            }

            goto LABEL_12;
          }

          [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:5 detail:ofCopy];

          goto LABEL_46;
        }

LABEL_45:
        [(FlowAnalyticsEngine *)self _reportDomainTrackingDropFor:v13 withCause:2 detail:ofCopy];
LABEL_46:

        goto LABEL_12;
      }

      hasLocalDestination = is_directly_reachable_address(bytes);
    }

    v28 = hasLocalDestination;
    goto LABEL_42;
  }

LABEL_13:
}

- (void)storeSnapshotFlowUUID:(id)d forSourceKey:(id)key
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  keyCopy = key;
  v8 = keyCopy;
  if (!dCopy || !keyCopy)
  {
    goto LABEL_17;
  }

  v9 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *v24 = 138412546;
        *&v24[4] = v17;
        *&v24[12] = 2112;
        *&v24[14] = v8;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "ConnSnapshot: fuuids of unexpected class %@ for conn id %@", v24, 0x16u);
      }

      goto LABEL_12;
    }

    [v9 addObject:dCopy];
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 138412546;
      *&v24[4] = dCopy;
      *&v24[12] = 2112;
      *&v24[14] = v8;
      v11 = "ConnSnapshot: stored fuuid %@ for conn id %@";
LABEL_9:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, v11, v24, 0x16u);
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(NSMutableDictionary *)self->snapshotFlowUUIDs setObject:v12 forKeyedSubscript:v8];

    v13 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:v8];
    [v13 addObject:dCopy];

    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 138412546;
      *&v24[4] = dCopy;
      *&v24[12] = 2112;
      *&v24[14] = v8;
      v11 = "ConnSnapshot: stored fuuid %@ for conn id %@ (first time)";
      goto LABEL_9;
    }
  }

LABEL_12:
  if ([(NSMutableDictionary *)self->snapshotFlowUUIDs count:*v24]>= 0xBB9)
  {
    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      snapshotFlowUUIDs = self->snapshotFlowUUIDs;
      v20 = v18;
      v21 = [(NSMutableDictionary *)snapshotFlowUUIDs count];
      *v24 = 134218240;
      *&v24[4] = v21;
      *&v24[12] = 1024;
      *&v24[14] = 3000;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Concurrent connections count %lu exceeds threshold %d, triggering an ABC case", v24, 0x12u);
    }

    v22 = +[NetDomainsHandler sharedInstance];
    stringValue = [&unk_2847EF6F8 stringValue];
    [v22 triggerAutoBugCaptureCaseForType:@"ExcessiveConcurrentConnections" subType:0 privateSubtypeContext:0 detectedProcess:@"symptomsd" events:0 thresholdValuesString:stringValue];
  }

LABEL_17:
}

- (void)removeSnapshotFlowUUIDsForSourceKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:keyCopy];
    if (v5)
    {
      [(NSMutableDictionary *)self->snapshotFlowUUIDs setObject:0 forKeyedSubscript:keyCopy];
      v6 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        snapshotFlowUUIDs = self->snapshotFlowUUIDs;
        v8 = v6;
        v9 = [(NSMutableDictionary *)snapshotFlowUUIDs count];
        allKeys = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
        v11 = [allKeys componentsJoinedByString:{@", "}];
        v12 = 138413058;
        v13 = v5;
        v14 = 2112;
        v15 = keyCopy;
        v16 = 2048;
        v17 = v9;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "ConnSnapshot: removed fuuids %@ for conn id %@, remaining (>= %lu) for conn ids [%@]", &v12, 0x2Au);
      }
    }
  }
}

- (BOOL)isSnapshotFlowUUIDStored:(id)stored
{
  v25 = *MEMORY[0x277D85DE8];
  storedCopy = stored;
  if (storedCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allKeys = [(NSMutableDictionary *)self->snapshotFlowUUIDs allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
      while (2)
      {
        v10 = 0;
        v11 = v8 + 1;
        v17 = v8 + v7;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v12 = [(NSMutableDictionary *)self->snapshotFlowUUIDs objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v10)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 containsObject:storedCopy])
          {
            ++connSnapshotFlowUUIDHitsAndMisses_0;
            v13 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v23 = v11;
              _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "isSnapshotFlowUUIDStored: YES after scanning %d entries", buf, 8u);
            }

            v14 = 1;
            goto LABEL_19;
          }

          ++v10;
          ++v11;
        }

        while (v7 != v10);
        v7 = [allKeys countByEnumeratingWithState:&v18 objects:v24 count:16];
        v8 = v17;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    ++connSnapshotFlowUUIDHitsAndMisses_1;
    v15 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v23 = v8;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "isSnapshotFlowUUIDStored: NO after scanning %d entries", buf, 8u);
    }
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (BOOL)domainInfoProcessingForSnapshot:(id)snapshot process:(id)process attributedName:(id)name remoteAddress:(id)address isWebBrowser:(BOOL)browser
{
  browserCopy = browser;
  v121[1] = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  processCopy = process;
  nameCopy = name;
  addressCopy = address;
  domainOwner = [snapshotCopy domainOwner];
  domainOwner2 = &stru_2847966D8;
  v93 = nameCopy;
  if (domainOwner)
  {
    domainOwner2 = [snapshotCopy domainOwner];
  }

  snapshotType = [snapshotCopy snapshotType];
  sourceIdentifier = [snapshotCopy sourceIdentifier];
  isNonAppInitiated = [snapshotCopy isNonAppInitiated];
  if (isNonAppInitiated)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v90 = v18;
  isTracker = [snapshotCopy isTracker];
  v20 = isTracker;
  if (isTracker)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  domainName = [snapshotCopy domainName];

  v89 = addressCopy;
  if (domainName)
  {
    v83 = sourceIdentifier;
    domainName2 = [snapshotCopy domainName];
    v24 = [domainName2 hasSuffix:@"."];

    domainName3 = [snapshotCopy domainName];
    if (v24)
    {
      domainName4 = [snapshotCopy domainName];
      v27 = -[__CFString substringToIndex:](domainName3, "substringToIndex:", [domainName4 length] - 1);

      domainName3 = v27;
    }

    if (v20)
    {
      v28 = 1;
      v91 = 1;
      if (!domainName3)
      {
        goto LABEL_78;
      }

LABEL_46:
      domainTrackerContext = [snapshotCopy domainTrackerContext];
      domainTrackerContext3 = &stru_2847966D8;
      if (domainTrackerContext)
      {
        domainTrackerContext2 = [snapshotCopy domainTrackerContext];
        if ([NetworkDomainsUtility isValidDomain:domainTrackerContext2])
        {
          domainTrackerContext3 = [snapshotCopy domainTrackerContext];
        }
      }

      processName = [snapshotCopy processName];
      if (domainTrackerContext3)
      {
        v49 = [(__CFString *)domainTrackerContext3 length];
        v50 = 0;
        v51 = @"Unknown";
        if (!v49 || !processName)
        {
          goto LABEL_57;
        }

        if ([(__CFString *)processName length])
        {
          if (([(__CFString *)processName isEqualToString:@"com.apple.WebKit.Networking"]& 1) != 0)
          {
            v50 = 2;
            v51 = @"Verified";
          }

          else
          {
            if ([(__CFString *)processName isEqualToString:@"MobileSafari"])
            {
              v77 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412803;
                v96 = processName;
                v97 = 2113;
                v98 = domainTrackerContext3;
                v99 = 2113;
                v100 = v93;
                _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_ERROR, "Process is %@ with context %{private}@ for %{private}@, triggering an ABC case", buf, 0x20u);
              }

              v78 = +[NetDomainsHandler sharedInstance];
              [v78 triggerAutoBugCaptureCaseForType:@"ProcessMobileSafariWithContext" subType:0 privateSubtypeContext:domainTrackerContext3 detectedProcess:processName events:0 thresholdValuesString:0];
            }

            v50 = 1;
            v51 = @"Unverified";
          }

LABEL_57:
          v82 = v51;
          v84 = processName;
          v52 = gEffectiveUserId;
          bundleName = [processCopy bundleName];
          HIDWORD(v79) = v90;
          LOWORD(v79) = v50;
          v54 = [(FlowAnalyticsEngine *)self _appDomainUsageBy:v52 bundleName:bundleName forDomain:domainName3 domainOwner:domainOwner2 domainType:v91 domainClassification:v28 context:domainTrackerContext3 contextVerificationType:v79 initiatedType:?];

          if (!v54)
          {
            v64 = domainTrackingLogHandle;
            v62 = v91;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v96 = v93;
              _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_ERROR, "Couldn't create AppDomainUsage record for %{private}@", buf, 0xCu);
            }

LABEL_77:

            if (v62 != 1)
            {
              v36 = 1;
              v35 = v93;
              goto LABEL_81;
            }

            goto LABEL_78;
          }

          v81 = processCopy;
          date = [MEMORY[0x277CBEAA8] date];
          snapshotReasonString = [snapshotCopy snapshotReasonString];
          v57 = @"AppInitiated";
          if (isNonAppInitiated)
          {
            v57 = @"NonAppInitiated";
          }

          v86 = v57;
          timeStamp = [v54 timeStamp];

          if (timeStamp)
          {
            timeStamp2 = [v54 timeStamp];
            [date timeIntervalSinceDate:timeStamp2];
            v61 = v60;

            v62 = v91;
            if (v61 >= 0.0)
            {
              if (v61 < self->domainUsageBucketDuration)
              {
                v88 = @"bucketed";
LABEL_71:
                v69 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  if (v62 == 2)
                  {
                    v70 = @"non-";
                  }

                  else
                  {
                    v70 = &stru_2847966D8;
                  }

                  v71 = domainTrackerContext3;
                  v72 = date;
                  v73 = domainOwner2;
                  v74 = gEffectiveUserId;
                  log = v69;
                  hits = [v54 hits];
                  *buf = 138415619;
                  v96 = v70;
                  v97 = 2112;
                  v98 = snapshotType;
                  v99 = 2048;
                  v100 = v83;
                  v101 = 2112;
                  v102 = snapshotReasonString;
                  v103 = 1024;
                  *v104 = v74;
                  domainOwner2 = v73;
                  date = v72;
                  domainTrackerContext3 = v71;
                  v62 = v91;
                  *&v104[4] = 2113;
                  *&v104[6] = v93;
                  v105 = 2113;
                  v106 = domainName3;
                  v107 = 2113;
                  v108 = domainOwner2;
                  v109 = 2113;
                  v110 = v71;
                  v111 = 2112;
                  v112 = v86;
                  v113 = 2112;
                  v114 = v82;
                  v115 = 2112;
                  v116 = hits;
                  v117 = 2113;
                  v118 = v84;
                  v119 = 2112;
                  v120 = v88;
                  _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Hit %@tracker domain for %@ id %llu %@, euid: %u, bundle: %{private}@, domain: %{private}@, owner: %{private}@, context: %{private}@, initiatedType: %@, contextVerificationType: %@, hits: %@, process: %{private}@, disposition: %@", buf, 0x8Au);
                }

                processCopy = v81;
                goto LABEL_77;
              }

              v63 = @"updated";
            }

            else
            {
              v63 = @"clock-change";
            }

            v88 = v63;
          }

          else
          {
            v88 = @"new";
            v62 = v91;
          }

          v65 = MEMORY[0x277CCABB0];
          hits2 = [v54 hits];
          [hits2 doubleValue];
          v68 = [v65 numberWithDouble:v67 + 1.0];
          [v54 setHits:v68];

          [v54 setTimeStamp:date];
          goto LABEL_71;
        }
      }

      v50 = 0;
      v51 = @"Unknown";
      goto LABEL_57;
    }

    v29 = domainOwner2;
    if (NEHelperTrackerGetAppInfo())
    {
      if (browserCopy)
      {
        NEHelperTrackerAppInfoSetIsBrowser();
      }
    }

    else
    {
      v37 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v96) = browserCopy;
        _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "NEHelperTrackerGetAppInfo() failed to create appInfoRef, isWebBrowser: %d, will match DDG app list", buf, 8u);
      }
    }

    v121[0] = domainName3;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:1];
    v94[1] = 0;
    v94[2] = 0;
    Disposition = NEHelperTrackerGetDisposition();
    NEHelperTrackerFreeAppInfo();
    if (Disposition == 1)
    {
      DomainOwner = NEHelperTrackerContextGetDomainOwner();
      if (DomainOwner)
      {
        v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:DomainOwner];

        v41 = v40;
      }

      else
      {
        v41 = v29;
      }

      if (!v41)
      {
        v41 = &stru_2847966D8;
      }

      v43 = domainTrackingLogHandle;
      v91 = 1;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v44 = @"app";
        *buf = 138413827;
        v96 = snapshotType;
        v97 = 2048;
        if (browserCopy)
        {
          v44 = @"web";
        }

        v98 = v83;
        v99 = 2112;
        v100 = v44;
        v101 = 2113;
        v29 = v41;
        v102 = v41;
        v103 = 1024;
        *v104 = 1;
        *&v104[4] = 2113;
        *&v104[6] = domainName3;
        v105 = 2113;
        v106 = v93;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "%@ %llu fetched from DDG %@ list, owner: %{private}@, domainType: %d, domain: %{private}@, bundle: %{private}@", buf, 0x44u);
      }

      else
      {
        v29 = v41;
      }
    }

    else
    {
      v91 = 2;
    }

    v28 = 1;
  }

  else
  {
    v91 = v21;
    v29 = domainOwner2;
    v94[0] = 0;
    v30 = validateSockAddrToString(addressCopy, 0, v94);
    v31 = v94[0];
    v32 = v31;
    if (!v30)
    {
      v34 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413059;
        v35 = v93;
        v96 = snapshotType;
        v97 = 2048;
        v98 = sourceIdentifier;
        v99 = 2113;
        v100 = v93;
        v101 = 2113;
        v102 = addressCopy;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "%@ %llu uses null dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
        domainName3 = 0;
        v36 = 0;
      }

      else
      {
        domainName3 = 0;
        v36 = 0;
        v35 = v93;
      }

      goto LABEL_79;
    }

    v83 = sourceIdentifier;
    if (v31)
    {
      v32 = v31;
      v33 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413315;
        v96 = snapshotType;
        v97 = 2048;
        v98 = sourceIdentifier;
        v99 = 2113;
        v100 = v32;
        v101 = 2113;
        v102 = v93;
        v103 = 2113;
        *v104 = addressCopy;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "%@ %llu uses dest IP address (treating as domainName): %{private}@, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x34u);
      }

      v28 = 2;
    }

    else
    {
      v42 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413059;
        v96 = snapshotType;
        v97 = 2048;
        v98 = sourceIdentifier;
        v99 = 2113;
        v100 = v93;
        v101 = 2113;
        v102 = addressCopy;
        _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "%@ %llu failed to extract dest IP address, bundle: %{private}@, remoteAddress: %{private}@", buf, 0x2Au);
      }

      v28 = 0;
    }

    domainName3 = v32;
  }

  domainOwner2 = v29;
  if (domainName3)
  {
    goto LABEL_46;
  }

LABEL_78:
  v29 = domainOwner2;
  v32 = +[NetDomainsHandler sharedInstance];
  v35 = v93;
  [(__CFString *)v32 checkForAutoBugCaptureWorthyCase:v93 domainName:domainName3 initiatedType:v90];
  v36 = 1;
LABEL_79:

  domainOwner2 = v29;
LABEL_81:

  return v36;
}

- (id)_appDomainUsageBy:(unsigned int)by bundleName:(id)name forDomain:(id)domain domainOwner:(id)owner domainType:(unsigned __int16)type domainClassification:(signed __int16)classification context:(id)context contextVerificationType:(unsigned __int16)self0 initiatedType:(unsigned int)self1
{
  classificationCopy = classification;
  typeCopy = type;
  v38 = *&by;
  v58 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  domainCopy = domain;
  ownerCopy = owner;
  contextCopy = context;
  v19 = MEMORY[0x277CCAC30];
  v20 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
  v36 = typeCopy;
  v21 = nameCopy;
  v22 = [v19 predicateWithFormat:@"bundleName = %@ AND effectiveUserId = %d AND domainType = %d AND kind = %d AND domain = %@ AND context = %@ AND contextVerificationType = %d AND domainClassification = %d AND firstTimeStamp > %@", nameCopy, v38, typeCopy, initiatedType, domainCopy, contextCopy, verificationType, classificationCopy, v20];

  v23 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"firstTimeStamp" ascending:0];
  v37 = v22;
  v24 = [(ObjectAnalytics *)self->domspace fetchEntitiesFreeForm:v22 sortDesc:v23 limit:2 batchSize:0];
  firstObject = [v24 firstObject];
  v26 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v27 = v26;
    *buf = 134220547;
    v41 = [v24 count];
    v42 = 2048;
    v43 = v38;
    v44 = 2112;
    v45 = nameCopy;
    v46 = 2113;
    v47 = domainCopy;
    v48 = 2113;
    *v49 = ownerCopy;
    *&v49[8] = 1024;
    *v50 = v36;
    *&v50[4] = 1024;
    *&v50[6] = classificationCopy;
    v51 = 2113;
    *v52 = contextCopy;
    *&v52[8] = 1024;
    verificationTypeCopy = verificationType;
    v54 = 1024;
    initiatedTypeCopy = initiatedType;
    v56 = 2113;
    v57 = v24;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Found %ld matching entities with euid %lld bundle %@ domain %{private}@ owner %{private}@ type %d class %d context %{private}@ verification %d initiated type %d results %{private}@", buf, 0x60u);
  }

  if (!firstObject)
  {
    domspace = self->domspace;
    entityName = [MEMORY[0x277D6B568] entityName];
    firstObject = [(ObjectAnalytics *)domspace createEntityForEntityName:entityName];

    if (firstObject)
    {
      [firstObject setBundleName:v21];
      [firstObject setEffectiveUserId:v38];
      [firstObject setDomain:domainCopy];
      [firstObject setDomainOwner:ownerCopy];
      [firstObject setDomainType:v36];
      [firstObject setDomainClassification:classificationCopy];
      if (contextCopy)
      {
        v31 = contextCopy;
      }

      else
      {
        v31 = &stru_2847966D8;
      }

      [firstObject setContext:v31];
      [firstObject setContextVerificationType:verificationType];
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:initiatedType];
      [firstObject setKind:v32];

      date = [MEMORY[0x277CBEAA8] date];
      [firstObject setFirstTimeStamp:date];

      v34 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134220035;
        v41 = v38;
        v42 = 2112;
        v43 = v21;
        v44 = 2113;
        v45 = domainCopy;
        v46 = 2113;
        v47 = ownerCopy;
        v48 = 1024;
        *v49 = v36;
        *&v49[4] = 1024;
        *&v49[6] = classificationCopy;
        *v50 = 2113;
        *&v50[2] = contextCopy;
        v51 = 1024;
        *v52 = verificationType;
        *&v52[4] = 1024;
        *&v52[6] = initiatedType;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "Created new AppDomainUsage entity with euid %lld bundle %@ domain %{private}@ owner %{private}@ type %d class %d context %{private}@ verification %d initiated type %d", buf, 0x4Cu);
      }
    }

    else
    {
      v35 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = v21;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Failed to create AppDomainUsage entity for %@", buf, 0xCu);
      }

      firstObject = 0;
    }
  }

  return firstObject;
}

- (void)_summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke;
    block[3] = &unk_27898C7D0;
    byCopy = by;
    block[4] = self;
    v9 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetDomains: summarizing data for euid: %u", buf, 8u);
  }

  v4 = *(*(a1 + 32) + 488);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", *(a1 + 48)];
  v6 = [v4 fetchEntityDictionariesWithProperties:&unk_2847EEBB0 predicate:v5];

  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB58] set];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke_782;
  v11[3] = &unk_27898C7A8;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v11];
  (*(*(a1 + 40) + 16))(*(a1 + 40), [v9 count], objc_msgSend(v10, "count"), 0);
}

void __54__FlowAnalyticsEngine__summaryAppDomainUsageBy_reply___block_invoke_782(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"domain"];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 objectForKeyedSubscript:@"bundleName"];

  [v6 addObject:v7];
}

+ (void)summaryAppDomainUsageBy:(unsigned int)by reply:(id)reply
{
  v4 = *&by;
  replyCopy = reply;
  if (sharedInstance_1)
  {
    [sharedInstance_1 _summaryAppDomainUsageBy:v4 reply:replyCopy];
  }

  else if (replyCopy)
  {
    v6 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "FlowAnalyticsEngine is not configured, unable to call summary of AppDomainUsage.", v8, 2u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:14 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v7);
  }
}

- (unint64_t)_clearStaleNetDomainsRecords
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x277CBEAA8];
    v5 = v3;
    v6 = [v4 dateWithTimeIntervalSinceNow:-604800.0];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Clearing out AppDomainsUsage with firstTimeStamp older than %@", buf, 0xCu);
  }

  v7 = MEMORY[0x277CCAC30];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v9 = [v7 predicateWithFormat:@"%K < %@", @"firstTimeStamp", v8];

  v10 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:v9];
  v11 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = v10;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Removed %lu AppDomainsUsage records", buf, 0xCu);
  }

  return v10;
}

- (unint64_t)_submitAppDomainUsageRecordInfoAnalytics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(ObjectAnalytics *)self->domspace fetchAllEntityDictionariesWithProperties:&unk_2847EEBC8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke;
  v5[3] = &unk_27898C758;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];
  v3 = v7[3];

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"timeStamp"];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 objectForKeyedSubscript:@"firstTimeStamp"];

  [v7 timeIntervalSince1970];
  v9 = v8;

  if (v6 >= v9)
  {
    if (AnalyticsSendEventLazy())
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

id __63__FlowAnalyticsEngine__submitAppDomainUsageRecordInfoAnalytics__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"intervalSeconds";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32) - *(a1 + 40)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_performAppTrackingPeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _clearStaleNetDomainsRecords = [(FlowAnalyticsEngine *)self _clearStaleNetDomainsRecords];
  _submitAppDomainUsageRecordInfoAnalytics = [(FlowAnalyticsEngine *)self _submitAppDomainUsageRecordInfoAnalytics];
  if (replyCopy)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB38]);
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_clearStaleNetDomainsRecords];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_submitAppDomainUsageRecordInfoAnalytics];
    v9 = [v6 initWithObjectsAndKeys:{v7, @"aduRecordsDeleted", v8, @"aduRecordAnalyticsSubmitted", 0}];

    replyCopy[2](replyCopy, v9, 0);
  }
}

- (void)performAppTrackingPeriodicTasksComplete:(id)complete error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = domainTrackingLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = errorCopy;
      v8 = "Periodic app tracking tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = completeCopy;
    v8 = "Periodic app tracking tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

+ (void)performAppTrackingPeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppTrackingPeriodicTasksWithReply:reply];
  }
}

- (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply
{
  v110 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v9 = [optionsCopy objectForKeyedSubscript:@"clearHistory"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412290;
      v101 = v13;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Clear history action has nil option or unexpected class %@", buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v14);
  }

  v15 = [v9 objectForKeyedSubscript:@"clearHistoryBundleIDs"];
  if (!v15)
  {
    v16 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Clear history action has nil bundleIDs", buf, 2u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }

  v18 = [v9 objectForKeyedSubscript:@"clearHistoryStartDate"];
  if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v19 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 134218242;
      v101 = v18;
      v102 = 2112;
      v103 = v22;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Clear history action has nil or invalid start date class: %p (%@)", buf, 0x16u);
    }

    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v23);
  }

  v24 = [v9 objectForKeyedSubscript:@"clearHistoryEndDate"];
  v84 = v24;
  if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 134218242;
      v101 = v84;
      v102 = 2112;
      v103 = v29;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Clear history action has nil or invalid end date class: %p (%@)", buf, 0x16u);
    }

    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v30);

    v25 = v84;
  }

  v83 = v15;
  v31 = v25;
  if ([v18 compare:v25] == 1)
  {
    v32 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v33 = v32;
      [v18 timeIntervalSince1970];
      v35 = formattedDateStringForTimeInterval(v34);
      [v31 timeIntervalSince1970];
      v37 = formattedDateStringForTimeInterval(v36);
      *buf = 138412546;
      v101 = v35;
      v102 = 2112;
      v103 = v37;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "Clear history action dates misordered: start:%@ end:%@", buf, 0x16u);

      v15 = v83;
    }

    v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    replyCopy[2](replyCopy, 0, v38);
  }

  v81 = v18;
  v39 = 0x277CBE000uLL;
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);
  objc_opt_class();
  v82 = replyCopy;
  selfCopy = self;
  v80 = v9;
  if (objc_opt_isKindOfClass())
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v41 = v15;
    v42 = [v41 countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v42)
    {
      v43 = v42;
      v77 = optionsCopy;
      v44 = *v97;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v97 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v96 + 1) + 8 * i);
          v47 = [v41 objectForKeyedSubscript:{v46, v77}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v40 setObject:v47 forKey:v46];
          }

          else
          {
            v48 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
            {
              v49 = v48;
              v50 = objc_opt_class();
              v51 = NSStringFromClass(v50);
              *buf = 138412547;
              v101 = v51;
              v102 = 2113;
              v103 = v46;
              _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_ERROR, "Clear history action has context of type (%@) for bundleID %{private}@", buf, 0x16u);
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v96 objects:v109 count:16];
      }

      while (v43);
      optionsCopy = v77;
      v31 = v84;
      v39 = 0x277CBE000;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v41 = v15;
      v52 = [v41 countByEnumeratingWithState:&v92 objects:v108 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v93;
        v55 = MEMORY[0x277CBEBF8];
        do
        {
          for (j = 0; j != v53; ++j)
          {
            if (*v93 != v54)
            {
              objc_enumerationMutation(v41);
            }

            [v40 setObject:v55 forKey:*(*(&v92 + 1) + 8 * j)];
          }

          v53 = [v41 countByEnumeratingWithState:&v92 objects:v108 count:16];
        }

        while (v53);
        v31 = v84;
      }

      v39 = 0x277CBE000uLL;
    }

    else
    {
      v57 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v58 = v57;
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        *buf = 138412290;
        v101 = v60;
        _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_ERROR, "Clear history action has bundleIDs of type (%@)", buf, 0xCu);

        v39 = 0x277CBE000uLL;
      }

      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      replyCopy[2](replyCopy, 0, v41);
    }
  }

  if (![v40 count])
  {
    v61 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "Clear history action does not have any valid bundle IDs", buf, 2u);
    }

    v62 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (v82)[2](v82, 0, v62);
  }

  v63 = [optionsCopy objectForKeyedSubscript:@"showDetails"];
  if (v63 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v63 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v65 = objc_alloc_init(*(v39 + 2872));
  v66 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v67 = v66;
    [v81 timeIntervalSince1970];
    v69 = formattedDateStringForTimeInterval(v68);
    [v31 timeIntervalSince1970];
    formattedDateStringForTimeInterval(v70);
    v72 = v71 = optionsCopy;
    *buf = 138478595;
    v101 = v83;
    v102 = 2112;
    v103 = v69;
    v104 = 2112;
    v105 = v72;
    v106 = 1024;
    v107 = bOOLValue;
    _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "Clear history action received options: %{private}@, start %@, end %@, details %d", buf, 0x26u);

    optionsCopy = v71;
    v31 = v84;
  }

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __72__FlowAnalyticsEngine_performAppTrackingActionWithOptions_userId_reply___block_invoke;
  v85[3] = &unk_27898C7F8;
  idCopy = id;
  v73 = v31;
  v86 = v73;
  v74 = v81;
  v87 = v74;
  v88 = selfCopy;
  v91 = bOOLValue;
  v75 = v65;
  v89 = v75;
  [v40 enumerateKeysAndObjectsUsingBlock:v85];
  v76 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEFAULT, "Clear history action successful", buf, 2u);
  }

  (v82)[2](v82, v75, 0);
}

void __72__FlowAnalyticsEngine_performAppTrackingActionWithOptions_userId_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v77[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v49 = v5;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u AND %K == %@ AND %K <= %@ AND %K >= %@", @"effectiveUserId", *(a1 + 64), @"bundleName", v5, @"firstTimeStamp", *(a1 + 32), @"timeStamp", *(a1 + 40)];
  if ([v6 count])
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"context", v6];
    v9 = MEMORY[0x277CCA920];
    v77[0] = v7;
    v77[1] = v8;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v61 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Clear history action predicate: %@", buf, 0xCu);
  }

  v13 = [*(*(a1 + 48) + 488) fetchEntityDictionariesWithProperties:&unk_2847EEBE0 predicate:v11];
  v14 = v13;
  if (v13 && [v13 count])
  {
    v47 = v7;
    v48 = v6;
    v45 = v11;
    v46 = a1;
    if (*(a1 + 68) == 1)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    else
    {
      v15 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = v14;
    obj = v14;
    v54 = [obj countByEnumeratingWithState:&v56 objects:v76 count:16];
    if (v54)
    {
      v53 = *v57;
      v55 = v15;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v57 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v56 + 1) + 8 * i);
          if (v15)
          {
            v18 = [*(*(&v56 + 1) + 8 * i) objectForKeyedSubscript:@"kind"];
            v19 = [v18 integerValue];
            v20 = @"NonAppInitiated";
            if (v19 == 1)
            {
              v20 = @"AppInitiated";
            }

            v21 = v20;

            v22 = objc_alloc(MEMORY[0x277CCACA8]);
            v23 = [v17 objectForKeyedSubscript:@"domain"];
            v24 = [v17 objectForKeyedSubscript:@"domainOwner"];
            v25 = [v17 objectForKeyedSubscript:@"context"];
            v26 = [v17 objectForKeyedSubscript:@"firstTimeStamp"];
            v27 = [v17 objectForKeyedSubscript:@"timeStamp"];
            v28 = [v17 objectForKeyedSubscript:@"hits"];
            v29 = [v22 initWithFormat:@"%@, %@, %@, %@, %@, %@, %ld", v23, v24, v25, v21, v26, v27, objc_msgSend(v28, "integerValue")];

            v15 = v55;
            [v55 addObject:v29];
          }

          v30 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v30;
            v51 = [v17 objectForKeyedSubscript:@"domain"];
            v31 = [v17 objectForKeyedSubscript:@"domainOwner"];
            v32 = [v17 objectForKeyedSubscript:@"context"];
            v33 = [v17 objectForKeyedSubscript:@"kind"];
            v34 = [v17 objectForKeyedSubscript:@"hits"];
            v35 = [v17 objectForKeyedSubscript:@"firstTimeStamp"];
            [v35 timeIntervalSince1970];
            v37 = formattedDateStringForTimeInterval(v36);
            v38 = [v17 objectForKeyedSubscript:@"timeStamp"];
            [v38 timeIntervalSince1970];
            v40 = formattedDateStringForTimeInterval(v39);
            *buf = 138479619;
            v61 = v49;
            v62 = 2113;
            v63 = v51;
            v64 = 2113;
            v65 = v31;
            v66 = 2113;
            v67 = v32;
            v68 = 2112;
            v69 = v33;
            v70 = 2112;
            v71 = v34;
            v72 = 2112;
            v73 = v37;
            v74 = 2112;
            v75 = v40;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Clear history action for %{private}@ matched ADU record with domain: %{private}@, owner: %{private}@, context: %{private}@, initiatedType: %@, hits: %@, start: %@, end: %@", buf, 0x52u);

            v15 = v55;
          }
        }

        v54 = [obj countByEnumeratingWithState:&v56 objects:v76 count:16];
      }

      while (v54);
    }

    if (v15)
    {
      [*(v46 + 56) setObject:v15 forKeyedSubscript:v49];
    }

    v11 = v45;
    [*(*(v46 + 48) + 488) removeEntitiesMatching:v45];

    v7 = v47;
    v6 = v48;
    v14 = v44;
  }

  v41 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v41;
    v43 = [v14 count];
    *buf = 134218243;
    v61 = v43;
    v62 = 2113;
    v63 = v49;
    _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "Clear history action removed %lu ADU records for %{private}@", buf, 0x16u);
  }
}

+ (void)performAppTrackingActionWithOptions:(id)options userId:(unsigned int)id reply:(id)reply
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = sharedInstance_1;
  if (sharedInstance_1)
  {
    v6 = *&id;
    replyCopy = reply;
    [v5 performAppTrackingActionWithOptions:options userId:v6 reply:replyCopy];
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA5B8];
    replyCopy2 = reply;
    replyCopy = [v9 errorWithDomain:v10 code:45 userInfo:0];
    replyCopy2[2](replyCopy2, 0, replyCopy);

    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = replyCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "performAppTrackingActionWithOptions returning error: %@", &v13, 0xCu);
    }
  }
}

- (void)clearAppDomainUsageForUserWithID:(unsigned int)d
{
  v12 = *MEMORY[0x277D85DE8];
  domspace = self->domspace;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", *&d];
  v6 = [(ObjectAnalytics *)domspace removeEntitiesMatching:v5];

  v7 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v9 = v6;
    v10 = 1024;
    dCopy = d;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Cleared out %ld app domain tracking data for user %u", buf, 0x12u);
  }
}

- (void)submitNetworkDomainUsageToDateSPICallMetric
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "Posting com.apple.symptoms.NetDomainUsageSPICall to CoreAnalytics", v3, 2u);
  }

  AnalyticsSendEventLazy();
}

- (void)_handleEndpointTrackingNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = [notificationCopy objectForKeyedSubscript:@"userEndpointTrackingUserID"];
  v6 = [notificationCopy objectForKeyedSubscript:@"userEndpointTrackingState"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedIntValue = [v5 unsignedIntValue];
          bOOLValue = [v6 BOOLValue];
          self->endpointTrackingEnabled = bOOLValue;
          if (bOOLValue)
          {
            v9 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v13 = 67109120;
              v14 = unsignedIntValue;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Endpoint tracking enabled for user %u", &v13, 8u);
            }

            if (self->appTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self createAppEndpointsStorageForUserId:unsignedIntValue];
            }
          }

          else
          {
            v10 = os_transaction_create();
            if (v10)
            {
              v11 = v10;
              v12 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v13 = 67109120;
                v14 = unsignedIntValue;
                _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Endpoint tracking disabled for user %u, clearing out the account's EndpointTracking data", &v13, 8u);
              }

              [(FlowAnalyticsEngine *)self clearAppEndpointsForUserWithID:unsignedIntValue];
            }
          }
        }
      }
    }
  }
}

- (void)_handleAppTrackingNotification:(id)notification
{
  v65 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v4 = [notificationCopy objectForKeyedSubscript:@"userAppTrackingUserID"];
  v5 = [notificationCopy objectForKeyedSubscript:@"userAppTrackingState"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = v4;
          v50 = notificationCopy;
          unsignedIntValue = [v4 unsignedIntValue];
          v48 = v5;
          self->appTrackingEnabled = [v5 BOOLValue];
          context = objc_autoreleasePoolPush();
          v47 = unsignedIntValue;
          v45 = [MEMORY[0x277CCAC30] predicateWithFormat:@"effectiveUserId = %d AND bundleName = %@", unsignedIntValue, &stru_2847966D8];
          v7 = [ObjectAnalytics fetchEntitiesFreeForm:"fetchEntitiesFreeForm:sortDesc:limit:batchSize:" sortDesc:? limit:? batchSize:?];
          v8 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            *buf = 134217984;
            v59 = [v7 count];
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Will migrate %lu AppDomainUsage objects to new schema", buf, 0xCu);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v10 = v7;
          v11 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
          v52 = v10;
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v55;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v55 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v54 + 1) + 8 * i);
                v17 = objc_autoreleasePoolPush();
                v18 = v16;
                bundleName = [v18 bundleName];
                v20 = [bundleName length];

                if (!v20)
                {
                  hasApp = [v18 hasApp];
                  bundleName2 = [hasApp bundleName];

                  if (bundleName2)
                  {
                    hasApp2 = [v18 hasApp];
                    bundleName3 = [hasApp2 bundleName];

                    [v18 setBundleName:bundleName3];
                    ++v13;
                    v25 = domainTrackingLogHandle;
                    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v26 = v25;
                      domain = [v18 domain];
                      bundleName4 = [v18 bundleName];
                      *buf = 134218499;
                      v59 = v13;
                      v60 = 2113;
                      v61 = domain;
                      v62 = 2113;
                      v63 = bundleName4;
                      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "%lu: Updated old ADU's (domain: %{private}@) bundleName to %{private}@", buf, 0x20u);

                      v10 = v52;
                    }

                    if (__ROR8__(0x1CAC083126E978D5 * v13, 3) <= 0x4189374BC6A7EFuLL)
                    {
                      v53 = v13;
                      [(AnalyticsWorkspace *)self->super.workspace save];
                      mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
                      [mainObjectContext refreshAllObjects];
                      v30 = domainTrackingLogHandle;
                      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = v30;
                        domain2 = [v18 domain];
                        bundleName5 = [v18 bundleName];
                        *buf = 134218499;
                        v59 = v53;
                        v60 = 2113;
                        v61 = domain2;
                        v62 = 2113;
                        v63 = bundleName5;
                        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "%lu: Intermediate save and refresh up to domain: %{private}@, bundleName: %{private}@", buf, 0x20u);

                        v10 = v52;
                      }

                      v13 = v53;
                    }
                  }
                }

                objc_autoreleasePoolPop(v17);
              }

              v12 = [v10 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v12);
          }

          notificationCopy = v50;
          if ([v10 count])
          {
            [(AnalyticsWorkspace *)self->super.workspace save];
            mainObjectContext2 = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
            [mainObjectContext2 refreshAllObjects];
            v35 = domainTrackingLogHandle;
            if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "Final save and refresh, DB migration completed", buf, 2u);
            }
          }

          objc_autoreleasePoolPop(context);
          appTrackingEnabled = self->appTrackingEnabled;
          v37 = domainTrackingLogHandle;
          v38 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT);
          if (appTrackingEnabled)
          {
            if (v38)
            {
              *buf = 67109120;
              LODWORD(v59) = v47;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "App tracking enabled for user %u", buf, 8u);
            }

            v5 = v48;
            v4 = v49;
            if (!self->snapshotFlowUUIDs)
            {
              v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
              snapshotFlowUUIDs = self->snapshotFlowUUIDs;
              self->snapshotFlowUUIDs = v39;

              v41 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "Creating an empty in-memory storage for snapshots' flow UUIDs", buf, 2u);
              }
            }

            if (!self->trackedSourceIDs)
            {
              v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
              trackedSourceIDs = self->trackedSourceIDs;
              self->trackedSourceIDs = v42;

              v44 = domainTrackingLogHandle;
              if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "Creating an empty in-memory storage for tracking source identifiers for flows and connections", buf, 2u);
              }
            }

            if (self->endpointTrackingEnabled)
            {
              [(FlowAnalyticsEngine *)self createAppEndpointsStorageForUserId:v47];
            }
          }

          else
          {
            if (v38)
            {
              *buf = 67109120;
              LODWORD(v59) = v47;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "App tracking disabled for user %u", buf, 8u);
            }

            [(NSMutableDictionary *)self->snapshotFlowUUIDs removeAllObjects];
            [(NSMutableDictionary *)self->trackedSourceIDs removeAllObjects];
            [(FlowAnalyticsEngine *)self _clearAppDomainAndEndpointTrackingForUserWithID:v47];
            v5 = v48;
            v4 = v49;
          }
        }
      }
    }
  }
}

- (void)_clearAppDomainAndEndpointTrackingForUserWithID:(unsigned int)d
{
  v3 = *&d;
  v5 = os_transaction_create();
  if (v5)
  {
    v6 = v5;
    v7 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Clearing out both AppTracking and EndpointTracking data", v8, 2u);
    }

    [(FlowAnalyticsEngine *)self clearAppDomainUsageForUserWithID:v3];
    [(FlowAnalyticsEngine *)self clearAppEndpointsForUserWithID:v3];
  }
}

- (id)_repurposeAppEndpointRecords:(id)records
{
  v62 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = recordsCopy;
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v52;
    v8 = @"endpointSet";
    v9 = 0x277CBE000uLL;
    v39 = *v52;
    v40 = v4;
    do
    {
      v10 = 0;
      v42 = v6;
      do
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v51 + 1) + 8 * v10);
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 mutableCopy];
            v13 = [v12 objectForKeyedSubscript:v8];
            if (v13)
            {
              v44 = v12;
              v14 = *(v9 + 2968);
              v60[0] = objc_opt_class();
              v60[1] = objc_opt_class();
              v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
              v16 = [v14 setWithArray:v15];

              v50 = 0;
              v43 = v16;
              v17 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v16 fromData:v13 error:&v50];
              v18 = v50;
              v45 = v17;
              if (!v18 && v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v19 = v17;
                v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v49 = 0u;
                v22 = v19;
                v23 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v47;
                  do
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v47 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v46 + 1) + 8 * i);
                      v28 = v20;
                      if ([v27 type])
                      {
                        v28 = v21;
                        if ([v27 type] != 1)
                        {
                          continue;
                        }
                      }

                      name = [v27 name];
                      [v28 addObject:name];
                    }

                    v24 = [v22 countByEnumeratingWithState:&v46 objects:v59 count:16];
                  }

                  while (v24);
                }

                v8 = @"endpointSet";
                [v44 removeObjectForKey:@"endpointSet"];
                [v44 setObject:v20 forKeyedSubscript:@"UnresolvedEndpoints"];
                [v44 setObject:v21 forKeyedSubscript:@"ResolvedEndpoints"];
                [v41 addObject:v44];

                v7 = v39;
                v4 = v40;
                v6 = v42;
                v18 = 0;
                v9 = 0x277CBE000;
              }

              else
              {
                v30 = domainTrackingLogHandle;
                if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v31 = v30;
                  v32 = objc_opt_class();
                  NSStringFromClass(v32);
                  v33 = v4;
                  v34 = v8;
                  v35 = v9;
                  v37 = v36 = v18;
                  *buf = 138412546;
                  v56 = v37;
                  v57 = 2112;
                  v58 = v36;
                  _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "Failed to unarchive, endpoints record is nil or unexpected class %@, error %@", buf, 0x16u);

                  v18 = v36;
                  v9 = v35;
                  v8 = v34;
                  v4 = v33;
                }
              }

              v12 = v44;
            }
          }
        }

        ++v10;
      }

      while (v10 != v6);
      v6 = [v4 countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v6);
  }

  return v41;
}

- (void)updateEffectiveUserId:(id)id
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [id objectForKeyedSubscript:@"UMSwitchToUserID"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      gEffectiveUserId = [v3 intValue];
      v4 = domainTrackingLogHandle;
      if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = gEffectiveUserId;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "gEffectiveUserId changed to %u", v5, 8u);
      }
    }
  }
}

- (void)clearAppEndpoints:(id)endpoints
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(ObjectAnalytics *)self->epspace removeEntitiesMatching:0];
  allAppEndpoints = self->allAppEndpoints;
  if (allAppEndpoints)
  {
    [(NSMutableDictionary *)allAppEndpoints removeAllObjects];
  }

  resolvedAppEndpoints = self->resolvedAppEndpoints;
  if (resolvedAppEndpoints)
  {
    [(NSMutableDictionary *)resolvedAppEndpoints removeAllObjects];
  }

  determinedTrackersFromAPICount = self->determinedTrackersFromAPICount;
  if (determinedTrackersFromAPICount)
  {
    [(NSMutableDictionary *)determinedTrackersFromAPICount removeAllObjects];
  }

  v8 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->allAppEndpoints;
    v10 = self->resolvedAppEndpoints;
    v11 = self->determinedTrackersFromAPICount;
    v12 = 134218755;
    v13 = v4;
    v14 = 2113;
    v15 = v9;
    v16 = 2113;
    v17 = v10;
    v18 = 2113;
    v19 = v11;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "UserManagement: Cleared out all %ld endpoint tracking data, all: %{private}@, resolved: %{private}@, trackersFromAPI: %{private}@", &v12, 0x2Au);
  }
}

- (void)clearAppDomainUsage:(id)usage
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(ObjectAnalytics *)self->domspace removeEntitiesMatching:0];
  v4 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "UserManagement: Cleared out all %ld domain tracking data.", &v5, 0xCu);
  }
}

- (id)_appExperienceForApp:(id)app forTime:(id)time
{
  v25 = *MEMORY[0x277D85DE8];
  appCopy = app;
  timeCopy = time;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  hasAppExperience = [appCopy hasAppExperience];
  v9 = [hasAppExperience countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(hasAppExperience);
      }

      v13 = *(*(&v20 + 1) + 8 * v12);
      firstTimeStamp = [v13 firstTimeStamp];
      [firstTimeStamp timeIntervalSinceDate:timeCopy];
      v16 = v15;

      v17 = v16;
      if (v16 < 0)
      {
        v17 = -v17;
      }

      if (v17 >> 7 < 0x2A3)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [hasAppExperience countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    createEntity = v13;

    if (createEntity)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_11:
  }

  createEntity = [(ObjectAnalytics *)self->expspace createEntity];
  [createEntity setFirstTimeStamp:timeCopy];
  [appCopy addHasAppExperienceObject:createEntity];
LABEL_14:

  return createEntity;
}

- (void)_performAppExperiencePeriodicTasksWithReply:(id)reply
{
  replyCopy = reply;
  _pruneAppExperienceRecords = [(FlowAnalyticsEngine *)self _pruneAppExperienceRecords];
  if (replyCopy)
  {
    v5 = objc_alloc(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_pruneAppExperienceRecords];
    v7 = [v5 initWithObjectsAndKeys:{v6, @"recordsDeleted", 0}];

    replyCopy[2](replyCopy, v7, 0);
  }
}

- (void)performAppExperiencePeriodicTasksComplete:(id)complete error:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v7 = appExperienceLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = errorCopy;
      v8 = "Periodic app experience tasks failed with %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v9, v10, v8, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = completeCopy;
    v8 = "Periodic app experience tasks finished with result %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

+ (void)performAppExperiencePeriodicActivityWithReply:(id)reply
{
  if (sharedInstance_1)
  {
    [sharedInstance_1 _performAppExperiencePeriodicTasksWithReply:reply];
  }
}

- (unint64_t)_pruneAppExperienceRecords
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K < %@", @"firstTimeStamp", v3];
  v5 = [(ObjectAnalytics *)self->expspace removeEntitiesMatching:v4];
  v6 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Removed %ld AppExperience entries", buf, 0xCu);
  }

  return v5;
}

- (void)_algosScoreFor:(id)for score:(double)score
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(for);
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2048;
    scoreCopy = score;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Bundle: %@ score: %f", &v21, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  if (v6 != 0.0)
  {
    v9 = [(FlowAnalyticsEngine *)self _processFetchForName:0 bundle:*&v6 shouldFillMiss:0];
    v10 = v9;
    if (v9 && [v9 isApp])
    {
      v11 = v10;
      v12 = [(FlowAnalyticsEngine *)self _appExperienceForApp:v11 forTime:date];
      v13 = v12;
      if (v12)
      {
        [v12 setAlgosSamples:{objc_msgSend(v12, "algosSamples") + 1}];
        [v13 algosScore];
        v15 = v14;
        [v13 setAlgosScore:{v14 + (score - v14) / objc_msgSend(v13, "algosSamples")}];
        v16 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          [v13 algosScore];
          v21 = 138413058;
          v22 = v6;
          v23 = 2048;
          scoreCopy = v15;
          v25 = 2048;
          scoreCopy2 = score;
          v27 = 2048;
          v28 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Bundle %@ agg-value: %f, new value: %f, new agg-value: %f", &v21, 0x2Au);
        }

        [v13 setTimeStamp:date];
      }

      else
      {
        v20 = appExperienceLogHandle;
        if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
        {
          v21 = 138412290;
          v22 = v6;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Couldn't create AppExperience record for bundle %@", &v21, 0xCu);
        }
      }
    }

    else
    {
      v19 = appExperienceLogHandle;
      if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412546;
        v22 = *&v10;
        v23 = 2112;
        scoreCopy = v6;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Either no entry (%@) or non-App entry for bundle %@", &v21, 0x16u);
      }
    }
  }
}

- (BOOL)_isLiveFlowPerfinScope:(id)scope forTime:(id)time andTag:(id)tag
{
  scopeCopy = scope;
  tagCopy = tag;
  timeCopy = time;
  timeStamp = [scopeCopy timeStamp];
  [timeStamp timeIntervalSinceDate:timeCopy];
  v12 = v11;

  v13 = v12;
  if (v12 < 0)
  {
    v13 = -v13;
  }

  if (v13 >> 7 <= 0x2A2)
  {
    v15 = [scopeCopy tag];
    v14 = [v15 isEqualToString:tagCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_removeOldFlowRecords
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.84467441e19];
  v4 = MEMORY[0x277CCAC30];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v6 = [v4 predicateWithFormat:@"%K >= %@ AND %K < %@", @"timeStamp", distantPast, @"timeStamp", v3];

  v7 = [(ObjectAnalytics *)self->lfpspace fetchEntitiesFreeForm:v6 sortDesc:0];
  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    *buf = 134217984;
    v11 = [v7 count];
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: removing %lu flow entries", buf, 0xCu);
  }

  [(ObjectAnalytics *)self->lfpspace removeEntities:v7];
  [(AnalyticsWorkspace *)self->super.workspace save];
}

- (id)_flowFetchForName:(id)name
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v5 = objc_autoreleasePoolPush();
  if (![(NSMutableDictionary *)self->flowCache count])
  {
    v6 = [(ObjectAnalytics *)self->fspace fetchEntitiesFreeForm:0 sortDesc:0];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __41__FlowAnalyticsEngine__flowFetchForName___block_invoke;
    v36[3] = &unk_27898C820;
    v36[4] = self;
    [v6 enumerateObjectsUsingBlock:v36];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      flowCache = self->flowCache;
      v9 = v7;
      v10 = [(NSMutableDictionary *)flowCache count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "flow cache force-populated with %lu entries", &buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = 0;
  v11 = [(NSMutableDictionary *)self->flowCache objectForKey:nameCopy];
  v12 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v11;

  v13 = *(*(&buf + 1) + 40);
  if (!v13)
  {
    nameCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"remoteID", nameCopy];
    v16 = [(ObjectAnalytics *)self->fspace fetchEntitiesFreeForm:nameCopy sortDesc:0];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __41__FlowAnalyticsEngine__flowFetchForName___block_invoke_843;
    v33[3] = &unk_27898C848;
    v17 = nameCopy;
    v34 = v17;
    p_buf = &buf;
    [v16 enumerateObjectsUsingBlock:v33];
    v18 = *(*(&buf + 1) + 40);
    if (v18)
    {
      [(NSMutableDictionary *)self->flowCache setObject:v18 forKey:v17];
LABEL_17:
      v14 = *(*(&buf + 1) + 40);

      goto LABEL_18;
    }

    fspace = self->fspace;
    entityName = [MEMORY[0x277D6B590] entityName];
    v21 = [(ObjectAnalytics *)fspace createEntityForEntityName:entityName];
    v22 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v21;

    v23 = *(*(&buf + 1) + 40);
    if (v23)
    {
      [v23 setRemoteID:v17];
      date = [MEMORY[0x277CBEAA8] date];
      [*(*(&buf + 1) + 40) setFirstTimeStamp:date];

      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [*(*(&buf + 1) + 40) setTimeStamp:distantPast];

      v26 = [MEMORY[0x277CCABB0] numberWithShort:0];
      [*(*(&buf + 1) + 40) setKind:v26];

      [(NSMutableDictionary *)self->flowCache setObject:*(*(&buf + 1) + 40) forKey:v17];
      v27 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_17;
      }

      *v37 = 138412290;
      v38 = v17;
      v28 = "flowCache miss for %@";
      v29 = v27;
      v30 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v31 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *v37 = 138412290;
      v38 = v17;
      v28 = "Failed to allocate Flow entity for %@";
      v29 = v31;
      v30 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_23255B000, v29, v30, v28, v37, 0xCu);
    goto LABEL_17;
  }

  v14 = v13;
LABEL_18:
  _Block_object_dispose(&buf, 8);

LABEL_19:

  return v14;
}

void __41__FlowAnalyticsEngine__flowFetchForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 remoteID];
  [*(*(a1 + 32) + 440) setObject:v3 forKey:v4];
  [*(*(a1 + 32) + 472) refresh:v3];
}

void __41__FlowAnalyticsEngine__flowFetchForName___block_invoke_843(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 remoteID];
  LODWORD(v8) = [v8 isEqualToString:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_parseEvent:(id)event withGeneration:(id *)generation
{
  v85 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  fspace = self->fspace;
  entityName = [MEMORY[0x277D6B598] entityName];
  v9 = [(ObjectAnalytics *)fspace createTemporaryEntityForEntityName:entityName];

  v71 = eventCopy;
  [eventCopy keyEnumerator];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v75 = 0u;
  v10 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v10)
  {
    v11 = v10;
    generationCopy = generation;
    v67 = v9;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    log = *v73;
LABEL_3:
    v15 = 0;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    while (1)
    {
      if (*v73 != log)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v72 + 1) + 8 * v15);

      v19 = [v71 objectForKeyedSubscript:v12];
      eventData = [v19 eventData];
      v21 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v77 = v12;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification for %@", buf, 0xCu);
      }

      v14 = [v19 eventQualifierStringForKey:{@"1", generationCopy}];

      v13 = [v19 eventQualifierStringForKey:@"2"];

      if (v14)
      {
        v22 = v13 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        v30 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          loga = v30;
          eventQualifiers = [v19 eventQualifiers];
          v32 = [eventQualifiers objectForKeyedSubscript:@"1"];
          if (v32)
          {
            v33 = " not";
          }

          else
          {
            v33 = "";
          }

          eventQualifiers2 = [v19 eventQualifiers];
          v35 = [eventQualifiers2 objectForKeyedSubscript:@"2"];
          *buf = 138412802;
          v36 = " not";
          if (!v35)
          {
            v36 = "";
          }

          v77 = v12;
          v78 = 2080;
          v79 = v33;
          v80 = 2080;
          v81 = v36;
          _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_ERROR, "%@ with incorrect qualifiers: 1 is%s nil, 2 is%s nil", buf, 0x20u);
        }

LABEL_27:
        v29 = 0;
        v9 = v67;
        goto LABEL_44;
      }

      v23 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.establishstats"];
      v24 = [v12 isEqualToString:v23];

      if (v24)
      {
        break;
      }

      v25 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.sendstats"];
      v26 = [v12 isEqualToString:v25];

      if (v26)
      {
        v47 = eventData;
        v48 = *(eventData + 4) & 0xF;
        v9 = v67;
        if (v48 == 15)
        {
          [v67 setTmpID:v14];
          v49 = v13;
          *generationCopy = v13;
          v50 = [MEMORY[0x277CCABB0] numberWithDouble:v47[3]];
          [v67 setTxPackets:v50];

          v51 = [MEMORY[0x277CCABB0] numberWithDouble:v47[4]];
          [v67 setTxReTxPackets:v51];

          v52 = [MEMORY[0x277CCABB0] numberWithDouble:v47[5]];
          [v67 setTxFailPackets:v52];

          v53 = [MEMORY[0x277CCABB0] numberWithDouble:v47[6]];
          [v67 setTxReTxInterval:v53];

          v54 = [MEMORY[0x277CCABB0] numberWithShort:1];
          [v67 setKind:v54];

          [v67 setTag:@"IKE"];
        }

        v55 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
LABEL_41:
          *buf = 138412802;
          v77 = v12;
          v78 = 2112;
          v79 = v14;
          v80 = 2112;
          v81 = v13;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: parsed %@, %@, %@", buf, 0x20u);
        }

LABEL_42:

        if (v48 == 15)
        {
LABEL_43:
          v29 = v9;
          goto LABEL_44;
        }

LABEL_33:
        v29 = 0;
        goto LABEL_44;
      }

      v27 = [SymptomStore keyFromSymptomName:@"com.apple.neipsecike.disconnectstats"];
      v28 = [v12 isEqualToString:v27];

      if (v28)
      {
        v56 = eventData;
        v48 = *(eventData + 4) & 0xF;
        v9 = v67;
        if (v48 == 15)
        {
          [v67 setTmpID:v14];
          v57 = v13;
          *generationCopy = v13;
          v58 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
          [v67 setConnAttempts:v58];

          v59 = [MEMORY[0x277CCABB0] numberWithDouble:v56[3]];
          [v67 setTxPackets:v59];

          v60 = [MEMORY[0x277CCABB0] numberWithDouble:v56[4]];
          [v67 setTxReTxPackets:v60];

          v61 = [MEMORY[0x277CCABB0] numberWithDouble:v56[5]];
          [v67 setTxFailPackets:v61];

          v62 = [MEMORY[0x277CCABB0] numberWithDouble:v56[6]];
          [v67 setOverallTime:v62];

          v63 = [MEMORY[0x277CCABB0] numberWithShort:2];
          [v67 setKind:v63];

          [v67 setTag:@"IKE"];
        }

        v55 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_41;
        }

        goto LABEL_42;
      }

      ++v15;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      if (v11 == v15)
      {
        v11 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        v12 = 0;
        goto LABEL_27;
      }
    }

    v37 = eventData;
    v38 = *(eventData + 4) & 3;
    v9 = v67;
    if (v38 == 3)
    {
      [v67 setTmpID:v14];
      v39 = v13;
      *generationCopy = v13;
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
      [v67 setConnSuccesses:v40];

      connSuccesses = [v67 connSuccesses];
      [v67 setConnAttempts:connSuccesses];

      v42 = [MEMORY[0x277CCABB0] numberWithDouble:(*(v37 + 32) + (*(v37 + 24) * 1000000.0))];
      [v67 setUsecsEstabTime:v42];

      v43 = [MEMORY[0x277CCABB0] numberWithShort:0];
      [v67 setKind:v43];

      [v67 setTag:@"IKE"];
    }

    v44 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v45 = v44;
      usecsEstabTime = [v67 usecsEstabTime];
      *buf = 138413058;
      v77 = v12;
      v78 = 2112;
      v79 = v14;
      v80 = 2112;
      v81 = v13;
      v82 = 2112;
      v83 = usecsEstabTime;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: parsed %@, %@, %@, %@", buf, 0x2Au);
    }

    if (v38 == 3)
    {
      goto LABEL_43;
    }

    goto LABEL_33;
  }

  v12 = 0;
  v29 = 0;
  v13 = 0;
  v14 = 0;
LABEL_44:

  v64 = v29;
  return v29;
}

- (void)_archiveRecord:(id)record
{
  v94 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    tmpID = [recordCopy tmpID];
    *buf = 134218242;
    v91 = recordCopy;
    v92 = 2112;
    v93 = tmpID;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: archiving flow record %p for %@", buf, 0x16u);
  }

  tmpID2 = [recordCopy tmpID];
  v10 = [(FlowAnalyticsEngine *)self _flowFetchForName:tmpID2];

  if (v10)
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = v10;
    hasLivePerformance = [v10 hasLivePerformance];
    v12 = [hasLivePerformance countByEnumeratingWithState:&v85 objects:v89 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v86;
LABEL_6:
      v15 = 0;
      while (1)
      {
        if (*v86 != v14)
        {
          objc_enumerationMutation(hasLivePerformance);
        }

        v16 = *(*(&v85 + 1) + 8 * v15);
        v17 = [recordCopy tag];
        v18 = [(FlowAnalyticsEngine *)self _isLiveFlowPerfinScope:v16 forTime:date andTag:v17];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [hasLivePerformance countByEnumeratingWithState:&v85 objects:v89 count:16];
          if (v13)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      createEntity = v16;

      v10 = v84;
      if (createEntity)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_12:

      v10 = v84;
    }

    createEntity = [(ObjectAnalytics *)self->lfpspace createEntity];
    v20 = [DateRounder roundToDayResolutionOnly:date];
    [createEntity setTimeStamp:v20];

    [v10 addHasLivePerformanceObject:createEntity];
    hasLivePerformance2 = [v10 hasLivePerformance];
    v22 = [hasLivePerformance2 count];

    if (v22 == 1)
    {
      timeStamp = [createEntity timeStamp];
      [v10 setFirstTimeStamp:timeStamp];
    }

LABEL_16:
    v24 = [recordCopy tag];
    [createEntity setTag:v24];

    connSuccesses = [createEntity connSuccesses];
    [connSuccesses doubleValue];
    v27 = v26;

    v28 = MEMORY[0x277CCABB0];
    connSuccesses2 = [recordCopy connSuccesses];
    [connSuccesses2 doubleValue];
    v31 = [v28 numberWithDouble:v27 + v30];
    [createEntity setConnSuccesses:v31];

    connAttempts = [createEntity connAttempts];
    [connAttempts doubleValue];
    v34 = v33;

    v35 = MEMORY[0x277CCABB0];
    connAttempts2 = [recordCopy connAttempts];
    [connAttempts2 doubleValue];
    v38 = [v35 numberWithDouble:v34 + v37];
    [createEntity setConnAttempts:v38];

    usecsEstabTime = [createEntity usecsEstabTime];
    [usecsEstabTime doubleValue];
    v41 = v40;

    v42 = MEMORY[0x277CCABB0];
    usecsEstabTime2 = [recordCopy usecsEstabTime];
    [usecsEstabTime2 doubleValue];
    v45 = [v42 numberWithDouble:v41 + v44];
    [createEntity setUsecsEstabTime:v45];

    txPackets = [createEntity txPackets];
    [txPackets doubleValue];
    v48 = v47;

    v49 = MEMORY[0x277CCABB0];
    txPackets2 = [recordCopy txPackets];
    [txPackets2 doubleValue];
    v52 = [v49 numberWithDouble:v48 + v51];
    [createEntity setTxPackets:v52];

    txReTxPackets = [createEntity txReTxPackets];
    [txReTxPackets doubleValue];
    v55 = v54;

    v56 = MEMORY[0x277CCABB0];
    txReTxPackets2 = [recordCopy txReTxPackets];
    [txReTxPackets2 doubleValue];
    v59 = [v56 numberWithDouble:v55 + v58];
    [createEntity setTxReTxPackets:v59];

    txFailPackets = [createEntity txFailPackets];
    [txFailPackets doubleValue];
    v62 = v61;

    v63 = MEMORY[0x277CCABB0];
    txFailPackets2 = [recordCopy txFailPackets];
    [txFailPackets2 doubleValue];
    v66 = [v63 numberWithDouble:v62 + v65];
    [createEntity setTxFailPackets:v66];

    overallTime = [createEntity overallTime];
    [overallTime doubleValue];
    v69 = v68;

    v70 = MEMORY[0x277CCABB0];
    overallTime2 = [recordCopy overallTime];
    [overallTime2 doubleValue];
    v73 = [v70 numberWithDouble:v69 + v72];
    [createEntity setOverallTime:v73];

    timesThresholded = [createEntity timesThresholded];
    [timesThresholded doubleValue];
    v76 = v75;

    v77 = MEMORY[0x277CCABB0];
    timesThresholded2 = [recordCopy timesThresholded];
    [timesThresholded2 doubleValue];
    v80 = [v77 numberWithDouble:v76 + v79];
    [createEntity setTimesThresholded:v80];

    [(AnalyticsWorkspace *)self->super.workspace save];
  }

  else
  {
    v81 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v82 = v81;
      tmpID3 = [recordCopy tmpID];
      *buf = 138412290;
      v91 = tmpID3;
      _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_ERROR, "Failing to track usage for flow %@", buf, 0xCu);
    }
  }
}

- (void)_pruneFlowHistory
{
  date = [MEMORY[0x277CBEAA8] date];
  flowInstant = self->flowInstant;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke;
  v6[3] = &unk_27898B7F0;
  v7 = date;
  v5 = date;
  [(NSMutableDictionary *)flowInstant enumerateKeysAndObjectsUsingBlock:v6];
}

void __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v26 = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: now pruning for key %@", buf, 0xCu);
  }

  if ([v6 count] >= 2)
  {
    v19 = v5;
    v8 = [v6 objectAtIndex:0];
    v9 = MEMORY[0x277D85DD0];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854;
    v23 = &unk_27898C4B8;
    v24 = *(a1 + 32);
    v10 = [v6 indexOfObjectPassingTest:&v20];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [v6 indexOfObjectPassingTest:&v20])
      {
        v12 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v13 = v12;
          v14 = [v6 count];
          *buf = 134217984;
          v26 = v14;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: pruning one record, records left = %lu", buf, 0xCu);
        }

        v15 = [v6 objectAtIndex:i];
        v16 = [v15 txPackets];
        [v8 setTxPackets:v16];

        v17 = [v15 txReTxPackets];
        [v8 setTxReTxPackets:v17];

        v18 = [v15 txFailPackets];
        [v8 setTxFailPackets:v18];

        [v6 removeObjectAtIndex:i];
        v20 = v9;
        v21 = 3221225472;
        v22 = __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854;
        v23 = &unk_27898C4B8;
        objc_storeStrong(&v24, *(a1 + 32));
      }
    }

    v5 = v19;
  }
}

BOOL __40__FlowAnalyticsEngine__pruneFlowHistory__block_invoke_854(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 kind];
  if ([v4 shortValue] == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v3 timeStamp];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7 > 60.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_newFlowData:(id)data
{
  v81 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: received IKE notification", buf, 2u);
  }

  userInfo = [dataCopy userInfo];
  v74 = 0;
  v5 = [(FlowAnalyticsEngine *)self _parseEvent:userInfo withGeneration:&v74];
  v59 = v74;
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v5 setTimeStamp:date];
    v58 = [(NSMutableDictionary *)self->flowInstant objectForKeyedSubscript:v59];
    if (v58)
    {
      [(FlowAnalyticsEngine *)self _pruneFlowHistory];
      v60 = [v58 objectAtIndex:0];
      kind = [v60 kind];
      v7 = [kind shortValue] == 0;

      if (!v7)
      {
        v8 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v9 = v8;
          tmpID = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = tmpID;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (1) no head-end for flow %@, discarding all its records", buf, 0xCu);
        }

        goto LABEL_50;
      }
    }

    else
    {
      kind2 = [v5 kind];
      v12 = [kind2 shortValue] == 1;

      if (v12)
      {
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v14 = v13;
          tmpID2 = [v5 tmpID];
          *buf = 138412290;
          *&buf[4] = tmpID2;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (2) no head-end for flow %@, discarding all its records", buf, 0xCu);
        }

        v60 = 0;

        goto LABEL_51;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v80 = 0;
      flowInstant = self->flowInstant;
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __36__FlowAnalyticsEngine__newFlowData___block_invoke;
      v71[3] = &unk_27898C870;
      v17 = v5;
      v72 = v17;
      v73 = buf;
      [(NSMutableDictionary *)flowInstant enumerateKeysAndObjectsUsingBlock:v71];
      v18 = *(*&buf[8] + 24);
      if (v18 == 1)
      {
        v19 = analyticsLogHandle;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          tmpID3 = [v17 tmpID];
          *v77 = 138412290;
          v78 = tmpID3;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "netanalyticsdebug: (3) avoiding multiple instantiations for flow %@, discarding all its new records", v77, 0xCu);
        }

        v58 = 0;
      }

      else
      {
        v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
        [(NSMutableDictionary *)self->flowInstant setObject:v58 forKeyedSubscript:v59];
      }

      _Block_object_dispose(buf, 8);
      v60 = 0;
      if (v18)
      {
LABEL_50:

LABEL_51:
        goto LABEL_52;
      }
    }

    kind3 = [v5 kind];
    shortValue = [kind3 shortValue];

    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      tmpID4 = [v5 tmpID];
      *buf = 67109378;
      *&buf[4] = shortValue;
      *&buf[8] = 2112;
      *&buf[10] = tmpID4;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: receiving record kind %hd for %@", buf, 0x12u);
    }

    if (shortValue == 2)
    {
      if (v60)
      {
        overallTime = [v5 overallTime];
        [v60 setOverallTime:overallTime];

        txPackets = [v5 txPackets];
        [v60 setTxPackets:txPackets];

        txReTxPackets = [v5 txReTxPackets];
        [v60 setTxReTxPackets:txReTxPackets];

        txFailPackets = [v5 txFailPackets];
        [v60 setTxFailPackets:txFailPackets];
      }

      else
      {
        v60 = v5;
        internal_symptom_create();
        v47 = [v60 tag];
        v48 = v47;
        uTF8String = [v47 UTF8String];

        strlen(uTF8String);
        internal_symptom_set_additional_qualifier();
        internal_symptom_send();
      }

      [(FlowAnalyticsEngine *)self _archiveRecord:v60];
      [v58 removeAllObjects];
      [(NSMutableDictionary *)self->flowInstant removeObjectForKey:v59];
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      flowWatchers = [(FlowAnalyticsEngine *)self flowWatchers];
      allValues = [flowWatchers allValues];

      v52 = [allValues countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v52)
      {
        v53 = *v64;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v64 != v53)
            {
              objc_enumerationMutation(allValues);
            }

            v55 = *(*(&v63 + 1) + 8 * i);
            v56 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: scan list to detect dead watchpoints", buf, 2u);
            }

            (*(v55 + 16))(v55);
          }

          v52 = [allValues countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v52);
      }
    }

    else if (shortValue == 1)
    {
      [v58 addObject:v5];
      timesThresholded = [v60 timesThresholded];
      [timesThresholded doubleValue];
      v31 = v30;

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31 + 1.0];
      [v60 setTimesThresholded:v32];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      flowWatchers2 = [(FlowAnalyticsEngine *)self flowWatchers];
      allValues2 = [flowWatchers2 allValues];

      v35 = [allValues2 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v35)
      {
        v36 = *v68;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v68 != v36)
            {
              objc_enumerationMutation(allValues2);
            }

            v38 = *(*(&v67 + 1) + 8 * j);
            v39 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: found a live watcher to test", buf, 2u);
            }

            (*(v38 + 16))(v38);
          }

          v35 = [allValues2 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v35);
      }
    }

    else if (shortValue)
    {
      v44 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = v44;
        tmpID5 = [v5 tmpID];
        *buf = 67109378;
        *&buf[4] = shortValue;
        *&buf[8] = 2112;
        *&buf[10] = tmpID5;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: unknown record kind %hd for %@", buf, 0x12u);
      }
    }

    else
    {
      [v58 addObject:v5];
      internal_symptom_create();
      v26 = [v5 tag];
      v27 = v26;
      uTF8String2 = [v26 UTF8String];

      strlen(uTF8String2);
      internal_symptom_set_additional_qualifier();
      internal_symptom_send();
    }

    goto LABEL_50;
  }

  v60 = 0;
LABEL_52:
}

void __36__FlowAnalyticsEngine__newFlowData___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = [a3 firstObject];
  v6 = [v9 tmpID];
  v7 = [*(a1 + 32) tmpID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_updateTetheringUsage:(BOOL)usage
{
  usageCopy = usage;
  __src[65] = *MEMORY[0x277D85DE8];
  memset(__src, 0, 512);
  if (_updateTetheringUsage__pred != -1)
  {
    [FlowAnalyticsEngine _updateTetheringUsage:];
  }

  if (self->isTetherActive)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v40, 0, sizeof(v40));
    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "not";
      if (usageCopy)
      {
        v8 = "";
      }

      else
      {
        v8 = "not";
      }

      if (self->isTetherActive)
      {
        v7 = "";
      }

      *buf = 136315394;
      *v63 = v8;
      *&v63[8] = 2080;
      *&v63[10] = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "tether: updating usage, is %s from refresh trigger, state is %s active", buf, 0x16u);
    }

    v38 = usageCopy;
    selfCopy = self;
    v9 = 0;
    v10 = 0;
    currentSubscriberTag = 712;
    while (1)
    {
      if ((_updateTetheringUsage__bitmap & (1 << v9)) != 0)
      {
        *v64 = xmmword_232816BF0;
        v64[4] = v9;
        v64[5] = 5;
        v39 = 712;
        bzero(v40, 0x2C8uLL);
        if (sysctl(v64, 6u, v40, &v39, 0, 0))
        {
          v12 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v63 = v9;
            v13 = v12;
            v14 = "tether: cell interface %d cannot be read";
LABEL_16:
            _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, v14, buf, 8u);
          }
        }

        else
        {
          v15 = *(&v41 + 1);
          __src[v9] = *(&v41 + 1);
          currentSubscriberTag3 = v15 - _updateTetheringUsage__carryIfindex[v9];
          if (currentSubscriberTag3 >= 1)
          {
            v16 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v63 = v9;
              *&v63[4] = 2048;
              *&v63[6] = currentSubscriberTag3;
              _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "tether: cell interface %d contributes %lld bytes", buf, 0x12u);
            }

            v10 += currentSubscriberTag3;
            goto LABEL_21;
          }

          v17 = analyticsLogHandle;
          if (currentSubscriberTag3 < 0)
          {
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
            {
              v18 = _updateTetheringUsage__carryIfindex[v9];
              *buf = 67109632;
              *v63 = v9;
              *&v63[4] = 2048;
              *&v63[6] = v18;
              *&v63[14] = 2048;
              *&v63[16] = v15;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "tether usage readout no longer monotonically increasing on ifindex %d, was %llu, is %llu", buf, 0x1Cu);
            }

            _updateTetheringUsage__carryIfindex[v9] = v15;
            goto LABEL_21;
          }

          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *v63 = v9;
            v13 = v17;
            v14 = "tether: cell interface %d contributes 0 bytes";
            goto LABEL_16;
          }
        }
      }

LABEL_21:
      if (++v9 == 64)
      {
        v19 = v38;
        if (v10 > 0)
        {
          v20 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *v63 = v10;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "tether: new data activity amounts to %llu bytes, must persist", buf, 0xCu);
          }

          v21 = [(FlowAnalyticsEngine *)self _processFetchForName:@"misd" bundle:0 shouldFillMiss:1];
          if (v21)
          {
            v22 = [(FlowAnalyticsEngine *)self _liveUsageFetchForProcess:v21];
            if (v22)
            {
              cellRelay = [(FlowAnalyticsEngine *)self cellRelay];
              BYTE2(v36) = 0;
              BYTE1(v36) = [cellRelay expensive];
              LOBYTE(v36) = 0;
              [FlowAnalyticsEngine _updateLiveUsage:"_updateLiveUsage:wifiIn:wifiOut:cellIn:cellOut:wiredIn:wiredOut:btIn:btOut:xIn:xOut:isJumboFlow:isExpensive:closing:" wifiIn:v22 wifiOut:0 cellIn:0 cellOut:v10 wiredIn:0 wiredOut:0 btIn:0 btOut:0 xIn:0 xOut:0 isJumboFlow:0 isExpensive:v36 closing:?];

              v24 = analyticsLogHandle;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                wwanIN = [v22 wwanIN];
                [wwanIN doubleValue];
                v27 = v26;
                ctShim = self->ctShim;
                if (ctShim)
                {
                  currentSubscriberTag = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                  if (currentSubscriberTag)
                  {
                    currentSubscriberTag2 = [(CoreTelephonyShim *)self->ctShim currentSubscriberTag];
                    v30 = 1;
                  }

                  else
                  {
                    v30 = 0;
                    currentSubscriberTag2 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v30 = 0;
                  currentSubscriberTag2 = &unk_2847EF6C8;
                }

                *buf = 134218242;
                *v63 = v27;
                *&v63[8] = 2112;
                *&v63[10] = currentSubscriberTag2;
                _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "tether: data activity, updated new tally (fwd): %f, subscriber tag: %@", buf, 0x16u);
                if (v30)
                {
                }

                if (ctShim)
                {
                }

                v19 = v38;
              }

              memcpy(_updateTetheringUsage__carryIfindex, __src, sizeof(_updateTetheringUsage__carryIfindex));
              if (!v19)
              {
                [(AnalyticsWorkspace *)self->super.workspace save];
              }
            }

            else
            {
              v32 = analyticsLogHandle;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = selfCopy->ctShim;
                if (v33)
                {
                  currentSubscriberTag3 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                  if (currentSubscriberTag3)
                  {
                    currentSubscriberTag4 = [(CoreTelephonyShim *)selfCopy->ctShim currentSubscriberTag];
                    v35 = 1;
                  }

                  else
                  {
                    v35 = 0;
                    currentSubscriberTag4 = &unk_2847EF6C8;
                  }
                }

                else
                {
                  v35 = 0;
                  currentSubscriberTag4 = &unk_2847EF6C8;
                }

                *buf = 138412546;
                *v63 = @"misd";
                *&v63[8] = 2112;
                *&v63[10] = currentSubscriberTag4;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "tether: failed to find LiveUsage for %@ with subscriber tag: %@", buf, 0x16u);
                if (v35)
                {
                }

                if (v33)
                {
                }
              }
            }
          }

          else
          {
            v31 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v63 = @"misd";
              _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "tether: failed to find process for %@", buf, 0xCu);
            }
          }
        }

        return;
      }
    }
  }
}

void __45__FlowAnalyticsEngine__updateTetheringUsage___block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  _updateTetheringUsage__bitmap = if_nametobitmask("pdp");
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v17 = _updateTetheringUsage__bitmap;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "tether: eligible cell interfaces %llx", buf, 0xCu);
  }

  for (i = 0; i != 64; ++i)
  {
    if ((_updateTetheringUsage__bitmap & (1 << i)) == 0)
    {
      continue;
    }

    *v13 = xmmword_232816BF0;
    v14 = i;
    v15 = 5;
    v8 = 712;
    bzero(buf, 0x2C8uLL);
    if (sysctl(v13, 6u, buf, &v8, 0, 0))
    {
      v2 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        continue;
      }

      *v9 = 67109120;
      v10 = i;
      v3 = v2;
      v4 = "tether: baseline, cell interface %d cannot be read";
      v5 = 8;
    }

    else
    {
      _updateTetheringUsage__carryIfindex[i] = v18;
      v6 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        continue;
      }

      v7 = _updateTetheringUsage__carryIfindex[i];
      *v9 = 67109376;
      v10 = i;
      v11 = 2048;
      v12 = v7;
      v3 = v6;
      v4 = "tether: baseline for interface %d set to %llu bytes";
      v5 = 18;
    }

    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, v4, v9, v5);
  }
}

- (BOOL)_handlesProcEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B548] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B518] entityName];
    if ([entityCopy isEqualToString:entityName2])
    {
      v5 = 1;
    }

    else
    {
      entityName3 = [MEMORY[0x277D6B558] entityName];
      if ([entityCopy isEqualToString:entityName3])
      {
        v5 = 1;
      }

      else
      {
        entityName4 = [MEMORY[0x277D6B568] entityName];
        if ([entityCopy isEqualToString:entityName4])
        {
          v5 = 1;
        }

        else
        {
          entityName5 = [MEMORY[0x277D6B578] entityName];
          if ([entityCopy isEqualToString:entityName5])
          {
            v5 = 1;
          }

          else
          {
            entityName6 = [MEMORY[0x277D6B570] entityName];
            if ([entityCopy isEqualToString:entityName6])
            {
              v5 = 1;
            }

            else
            {
              entityName7 = [MEMORY[0x277D6B588] entityName];
              if ([entityCopy isEqualToString:entityName7])
              {
                v5 = 1;
              }

              else
              {
                entityName8 = [MEMORY[0x277D6B560] entityName];
                v5 = [entityCopy isEqualToString:entityName8];
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)_handlesFlowEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B590] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B598] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (BOOL)handlesEntity:(id)entity
{
  entityCopy = entity;
  v5 = [(FlowAnalyticsEngine *)self _handlesProcEntity:entityCopy]|| [(FlowAnalyticsEngine *)self _handlesFlowEntity:entityCopy];

  return v5;
}

- (BOOL)_requiresUserValidationPredicateForEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B568] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B570] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (void)_logBitmapOutcome:(id)outcome
{
  v44 = *MEMORY[0x277D85DE8];
  outcomeCopy = outcome;
  if (outcomeCopy)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "[Bitmap] Start of reply message to client", buf, 2u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = outcomeCopy;
    v27 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v27)
    {
      v6 = *v35;
      v25 = *v35;
      v26 = v5;
      do
      {
        v7 = 0;
        do
        {
          if (*v35 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v28 = v7;
          v8 = *(*(&v34 + 1) + 8 * v7);
          v9 = [v5 objectForKeyedSubscript:v8];
          objc_opt_class();
          v29 = v9;
          LOBYTE(v9) = objc_opt_isKindOfClass();
          v10 = analyticsLogHandle;
          v11 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
          if (v9)
          {
            if (v11)
            {
              *buf = 138412290;
              v39 = v8;
              _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "[Bitmap] %@-> {", buf, 0xCu);
            }

            v12 = v29;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v31;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v31 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = *(*(&v30 + 1) + 8 * i);
                    v19 = v17;
                    v20 = [v12 objectForKeyedSubscript:v18];
                    *buf = 138412546;
                    v39 = v18;
                    v40 = 2112;
                    v41 = v20;
                    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "[Bitmap]     %@-> %@", buf, 0x16u);
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
              }

              while (v14);
            }

            v21 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "[Bitmap]  }", buf, 2u);
            }

            v6 = v25;
            v5 = v26;
          }

          else if (v11)
          {
            v22 = v10;
            v23 = [v5 objectForKeyedSubscript:v8];
            *buf = 138412546;
            v39 = v8;
            v40 = 2112;
            v41 = v23;
            _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "[Bitmap] %@-> %@", buf, 0x16u);
          }

          v7 = v28 + 1;
        }

        while (v28 + 1 != v27);
        v27 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v27);
    }

    v24 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "[Bitmap] End of reply message to client", buf, 2u);
    }
  }
}

- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply
{
  namesCopy = names;
  optionsCopy = options;
  replyCopy = reply;
  if (replyCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke;
    v17[3] = &unk_27898C8E8;
    v17[4] = self;
    v18 = namesCopy;
    timeCopy = time;
    endTimeCopy = endTime;
    v19 = optionsCopy;
    v20 = replyCopy;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v17);
    dispatch_async(queue, v16);
  }
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke(uint64_t a1)
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "[Bitmap] polling start", buf, 2u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v3);
  v9 = *(a1 + 32);
  v4 = *(v9 + 432);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_865;
  v10[3] = &unk_27898C8C0;
  v5 = *(&v9 + 1);
  v13 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 refreshDataUsageMaxStale:@"getBitmaps" maxDelay:v10 logAs:2.0 callback:0.1];
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_865(uint64_t a1)
{
  v2 = machAbsoluteTime_secs();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 416);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_2;
  v9[3] = &unk_27898C898;
  v9[4] = v3;
  v8 = *(a1 + 48);
  v10 = *(a1 + 56);
  [v5 getActivityBitmapsWithNames:v4 currMachAbsTime:v2 startTime:v6 endTime:v7 options:v8 reply:v9];
}

void __82__FlowAnalyticsEngine_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4[634] == 1)
  {
    [v4 _logBitmapOutcome:?];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)logOutcomeArray:(id)array
{
  v64 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = +[SystemProperties sharedInstance];
  internalBuild = [v5 internalBuild];

  if (internalBuild)
  {
    v7 = [arrayCopy count];
    outcomeArrayLogEntryCount = self->outcomeArrayLogEntryCount;
    v9 = v7 - outcomeArrayLogEntryCount;
    if (v7 < outcomeArrayLogEntryCount)
    {
      v9 = 0;
    }

    if (v9 < v7)
    {
      v10 = v7;
      v11 = 0;
      if (v7 < outcomeArrayLogEntryCount)
      {
        outcomeArrayLogEntryCount = v7;
      }

      v12 = -outcomeArrayLogEntryCount;
      v13 = 1;
      v45 = v7;
      v42 = arrayCopy;
      do
      {
        v14 = v11;
        v15 = objc_autoreleasePoolPush();
        v11 = [arrayCopy objectAtIndexedSubscript:v10 + v12];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v11;
          v17 = [v16 objectForKeyedSubscript:@"allFlows"];

          if (v17)
          {
            if (v13)
            {
              v18 = analyticsLogHandle;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "entry:                                                                       Name        WiFiIn      WiFiOut       CellIn      CellOut Tag Kind", buf, 2u);
              }

              if (v10 + v12)
              {
                v19 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134218240;
                  v49 = v10 + v12;
                  v50 = 2048;
                  v51 = v10;
                  _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "[Skipping first %lu of %lu entries]", buf, 0x16u);
                }
              }
            }

            v47 = v15;
            v20 = objc_alloc(MEMORY[0x277CCACA8]);
            v21 = [v16 objectForKeyedSubscript:@"hasProcess.procName"];
            v22 = [v16 objectForKeyedSubscript:@"hasProcess.bundleName"];
            v23 = [v16 objectForKeyedSubscript:@"hasProcess.extensionName"];
            v24 = [v20 initWithFormat:@"%@:%@:%@", v21, v22, v23];

            v25 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              log = v25;
              v43 = [v16 objectForKeyedSubscript:@"timeStamp"];
              v26 = [v16 objectForKeyedSubscript:@"wifiIN"];
              v27 = [v16 objectForKeyedSubscript:@"wifiOUT"];
              v28 = [v16 objectForKeyedSubscript:@"wwanIN"];
              v29 = [v16 objectForKeyedSubscript:@"wwanOUT"];
              [v16 objectForKeyedSubscript:@"tag"];
              v30 = v46 = v24;
              v31 = [v16 objectForKeyedSubscript:@"kind"];
              *buf = 138414082;
              v49 = v43;
              v50 = 2112;
              v51 = v46;
              v52 = 2112;
              v53 = v26;
              v54 = 2112;
              v55 = v27;
              v56 = 2112;
              v57 = v28;
              v58 = 2112;
              v59 = v29;
              v60 = 2112;
              v61 = v30;
              v62 = 2112;
              v63 = v31;
              _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "entry: %@ %50@ %12@ %12@ %12@ %12@ %3@ %3@", buf, 0x52u);

              arrayCopy = v42;
              v24 = v46;
            }

            v13 = 0;
            v10 = v45;
            v15 = v47;
          }

          else
          {
            v37 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v49 = v16;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "entry: unknown dictionary %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v32 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v32;
            v34 = objc_opt_class();
            NSStringFromClass(v34);
            v36 = v35 = v15;
            *buf = 138412546;
            v49 = v36;
            v50 = 2112;
            v51 = v11;
            _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "entry: not a dictionary, %@   %@", buf, 0x16u);

            v15 = v35;
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      while (!__CFADD__(v12++, 1));
    }
  }

  v39 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v39;
    v41 = [arrayCopy count];
    *buf = 134217984;
    v49 = v41;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE end of outcome array (%lu entries)", buf, 0xCu);
  }
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0
{
  v101 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  serviceCopy = service;
  connectionCopy = connection;
  replyCopy = reply;
  processIdentifier = [connectionCopy processIdentifier];
  v20 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = pid_to_process_name(processIdentifier);
    v23 = v22;
    v24 = @"<unknown>";
    *buf = 138413826;
    if (v22)
    {
      v24 = v22;
    }

    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = processIdentifier;
    *&buf[22] = 2112;
    v95 = entityCopy;
    *v96 = 2112;
    *&v96[2] = predCopy;
    *&v96[10] = 2112;
    *&v96[12] = sortCopy;
    v97 = 2112;
    v98 = actionsCopy;
    v99 = 2112;
    v100 = propertiesCopy;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE perform query for %@ (pid %lld) on %@ predicate %@ sort %@ actions %@ properties %@", buf, 0x48u);
  }

  if (entityCopy)
  {
    entityName = [MEMORY[0x277D6B568] entityName];
    v26 = [entityCopy isEqualToString:entityName];

    if (v26)
    {
      [(FlowAnalyticsEngine *)self submitNetworkDomainUsageToDateSPICallMetric];
    }

    entityName2 = [MEMORY[0x277D6B570] entityName];
    v28 = [entityCopy isEqualToString:entityName2];

    if (v28)
    {
      [(FlowAnalyticsEngine *)self submitAppEndpointToDateSPICallMetric];
      if (!self->appTrackingEnabled || !self->endpointTrackingEnabled)
      {
        v43 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          appTrackingEnabled = self->appTrackingEnabled;
          endpointTrackingEnabled = self->endpointTrackingEnabled;
          *buf = 67109376;
          *&buf[4] = appTrackingEnabled;
          *&buf[8] = 1024;
          *&buf[10] = endpointTrackingEnabled;
          _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: app tracking (%d) or endpoint tracking (%d) not enabled", buf, 0xEu);
        }

        v36 = objc_alloc_init(MEMORY[0x277CBEA60]);
        replyCopy[2](replyCopy, v36);
        goto LABEL_38;
      }
    }
  }

  if (actionsCopy)
  {
    v29 = [actionsCopy objectForKeyedSubscript:@"refreshUsage"];
    v30 = v29 != 0;

    if (v30)
    {
      if (![serviceCopy assertEntitlement:connectionCopy entitlement:2 orWaiveOnIntent:actionsCopy])
      {
        goto LABEL_35;
      }

      v31 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: refresh authorized", buf, 2u);
      }
    }

    v32 = [actionsCopy objectForKeyedSubscript:@"watchpointKey"];
    v33 = v32 == 0;

    if (!v33)
    {
      if ([serviceCopy assertEntitlement:connectionCopy entitlement:3 orWaiveOnIntent:actionsCopy])
      {
        v34 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: watchpoint authorized", buf, 2u);
        }

        v35 = 1;
        goto LABEL_23;
      }

LABEL_35:
      v47 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: request's parsing error", buf, 2u);
      }

      v36 = objc_alloc_init(MEMORY[0x277CBEA60]);
      replyCopy[2](replyCopy, v36);
      goto LABEL_38;
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = 0;
LABEL_23:
  v36 = predCopy;
  if ([(FlowAnalyticsEngine *)self _requiresUserValidationPredicateForEntity:entityCopy])
  {
    effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    v38 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %u", @"effectiveUserId", effectiveUserIdentifier];
    v39 = v38;
    if (v36)
    {
      v40 = MEMORY[0x277CCA920];
      v93[0] = v38;
      v93[1] = v36;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:2];
      v42 = [v40 andPredicateWithSubpredicates:v41];

      v36 = v42;
    }

    else
    {
      v36 = v38;
    }
  }

  if ((v30 & v35) == 1)
  {
    v46 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: options conflicting", buf, 2u);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!v30)
  {
    if (!v35)
    {
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_3;
      v65[3] = &unk_27898C9B0;
      v66 = entityCopy;
      selfCopy = self;
      v68 = replyCopy;
      [(AnalyticsEngineCore *)self performQueryOnEntityCore:v66 fetchRequestProperties:propertiesCopy pred:v36 sort:sortCopy actions:actionsCopy service:serviceCopy reply:v65];

      goto LABEL_38;
    }

    v51 = [actionsCopy objectForKey:@"watchpointTarget"];
    v52 = [actionsCopy objectForKey:@"watchpointKey"];
    v53 = [actionsCopy objectForKey:@"watchpointValue"];
    v54 = v53;
    if (connectionCopy && v51 && v52 && v53)
    {
      v59 = [(ObjectAnalytics *)self->lfpspace getDescriptionForName:entityCopy];
      attributesByName = [v59 attributesByName];
      v56 = [attributesByName objectForKeyedSubscript:v52];
      v57 = v56 == 0;

      if (!v57)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v95 = __Block_byref_object_copy__901;
        *v96 = __Block_byref_object_dispose__902;
        *&v96[8] = 0;
        obj = 0;
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_903;
        v74[3] = &unk_27898C960;
        v74[4] = self;
        v75 = entityCopy;
        v76 = propertiesCopy;
        v36 = v36;
        v77 = v36;
        v78 = sortCopy;
        v79 = actionsCopy;
        v80 = serviceCopy;
        v82 = replyCopy;
        v81 = connectionCopy;
        v83 = buf;
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2_905;
        v69[3] = &unk_27898C988;
        v72 = v82;
        v70 = v81;
        selfCopy2 = self;
        v73 = buf;
        [(FlowAnalyticsEngine *)self performThresholdingOn:v51 forKey:v52 andValue:v54 connection:v70 createdBlock:&obj hitBlock:v74 errorBlock:v69];
        objc_storeStrong(&v96[8], obj);

        _Block_object_dispose(buf, 8);
        goto LABEL_38;
      }

      v58 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v52;
        _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: watchpoint requested on non-existent key: %@", buf, 0xCu);
      }
    }

    else
    {
    }

    goto LABEL_34;
  }

  v48 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v49 = v48;
    processIdentifier2 = [connectionCopy processIdentifier];
    *buf = 134217984;
    *&buf[4] = processIdentifier2;
    _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: in refresh codepath on behalf of pid %lld", buf, 0xCu);
  }

  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke;
  v85[3] = &unk_27898C938;
  v85[4] = self;
  v86 = entityCopy;
  v87 = propertiesCopy;
  v36 = v36;
  v88 = v36;
  v89 = sortCopy;
  v90 = actionsCopy;
  v91 = serviceCopy;
  v92 = replyCopy;
  [(FlowAnalyticsEngine *)self _refreshFullDataUsageWithCallback:v85];

LABEL_38:
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2;
  v8[3] = &unk_27898C910;
  v8[4] = v1;
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  [v1 performQueryOnEntityCore:v2 fetchRequestProperties:v3 pred:v4 sort:v5 actions:v6 service:v7 reply:v8];
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  v5 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity outcome array after refresh:", buf, 2u);
    }

    [*(a1 + 32) logOutcomeArray:v3];
  }

  else if (v5)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity has nil outcome", v6, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_903(uint64_t a1)
{
  [*(a1 + 32) performQueryOnEntityCore:*(a1 + 40) fetchRequestProperties:*(a1 + 48) pred:*(a1 + 56) sort:*(a1 + 64) actions:*(a1 + 72) service:*(a1 + 80) reply:*(a1 + 96)];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 88)];
  v2 = [*(a1 + 32) flowWatchers];
  [v2 removeObjectForKey:v5];

  v3 = *(*(a1 + 104) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_2_905(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  (*(v2 + 16))(v2, v3);

  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  v4 = [*(a1 + 40) flowWatchers];
  [v4 removeObjectForKey:v7];

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __110__FlowAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = analyticsLogHandle;
  v5 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity outcome array, no refresh", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277D6B570] entityName];
    LODWORD(v6) = [v6 isEqualToString:v7];

    if (v6)
    {
      v8 = [*(a1 + 40) _repurposeAppEndpointRecords:v3];

      v3 = v8;
    }

    [*(a1 + 40) logOutcomeArray:v3];
  }

  else
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: FAE performQueryOnEntity has nil outcome", v9, 2u);
    }

    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performThresholdingOn:(id)on forKey:(id)key andValue:(id)value connection:(id)connection createdBlock:(id *)block hitBlock:(id)hitBlock errorBlock:(id)errorBlock
{
  v51 = *MEMORY[0x277D85DE8];
  onCopy = on;
  keyCopy = key;
  valueCopy = value;
  connectionCopy = connection;
  hitBlockCopy = hitBlock;
  errorBlockCopy = errorBlock;
  v21 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v46 = onCopy;
    v47 = 2112;
    v48 = keyCopy;
    v49 = 2112;
    v50 = valueCopy;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: entering watchpoint codepath with (target,key,value: %@/%@/%@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke;
  aBlock[3] = &unk_27898CA00;
  aBlock[4] = self;
  v33 = onCopy;
  v40 = v33;
  v22 = keyCopy;
  v41 = v22;
  v23 = valueCopy;
  v42 = v23;
  v24 = hitBlockCopy;
  v43 = v24;
  v25 = errorBlockCopy;
  v44 = v25;
  *block = _Block_copy(aBlock);
  v26 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:connectionCopy];
  flowWatchers = [(FlowAnalyticsEngine *)self flowWatchers];
  v28 = _Block_copy(*block);
  [flowWatchers setObject:v28 forKey:v26];

  objc_initWeak(&location, connectionCopy);
  objc_initWeak(&from, self);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_906;
  v34[3] = &unk_27898CA28;
  objc_copyWeak(&v35, &from);
  objc_copyWeak(&v36, &location);
  [connectionCopy setInvalidationHandler:v34];
  v29 = analyticsLogHandle;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = [connectionCopy description];
    flowWatchers2 = [(FlowAnalyticsEngine *)self flowWatchers];
    v32 = [flowWatchers2 count];
    *buf = 138412546;
    v46 = v30;
    v47 = 2048;
    v48 = v32;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: connection watchpoint set for conn %@, %lu left", buf, 0x16u);
  }

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = *(*(a1 + 32) + 448);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_2;
  v11[3] = &unk_27898C9D8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = &v15;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v12 = v8;
  v13 = v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v11];
  if ((v16[3] & 1) == 0)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint doesn't match any target", v10, 2u);
    }

    (*(*(a1 + 72) + 16))();
  }

  _Block_object_dispose(&v15, 8);
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 tmpID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  v8 = analyticsLogHandle;
  v9 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint now evaluating for %@ ikey %@", &v24, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    if ([v4 count] >= 2)
    {
      v12 = [v4 lastObject];
      v13 = [v4 objectAtIndex:{objc_msgSend(v4, "count") - 2}];
      v14 = [v12 valueForKey:*(a1 + 40)];
      [v14 doubleValue];
      v16 = v15;

      v17 = [v13 valueForKey:*(a1 + 40)];
      [v17 doubleValue];
      v19 = v18;

      v20 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(a1 + 40);
        v24 = 138412802;
        v25 = v21;
        v26 = 2048;
        v27 = v16;
        v28 = 2048;
        v29 = v19;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint: %@ new %f old %f", &v24, 0x20u);
      }

      [*(a1 + 48) doubleValue];
      if (v16 - v19 >= v22)
      {
        (*(*(a1 + 56) + 16))();
      }

      goto LABEL_11;
    }
  }

  else if (v9)
  {
    v12 = v8;
    v13 = [v5 tmpID];
    v23 = *(a1 + 40);
    v24 = 138412546;
    v25 = v13;
    v26 = 2112;
    v27 = v23;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: watchpoint skipping %@ key %@", &v24, 0x16u);
LABEL_11:
  }
}

void __105__FlowAnalyticsEngine_performThresholdingOn_forKey_andValue_connection_createdBlock_hitBlock_errorBlock___block_invoke_906(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CCAE60];
    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = [v3 valueWithNonretainedObject:v4];

    v6 = [WeakRetained flowWatchers];
    [v6 removeObjectForKey:v5];

    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      v9 = [WeakRetained flowWatchers];
      v10 = 134217984;
      v11 = [v9 count];
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: invalidation handler called, %lu left", &v10, 0xCu);
    }
  }
}

- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found
{
  v65 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  predCopy = pred;
  actionsCopy = actions;
  name = [cacheCopy name];
  v16 = [actionsCopy objectForKeyedSubscript:@"sweepUsage"];

  v55 = 0;
  if (v16)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    subpredicates = [predCopy subpredicates];
    v19 = [subpredicates countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v19)
    {
      v20 = v19;
      foundCopy = found;
      altpredCopy = altpred;
      v21 = *v52;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(subpredicates);
          }

          v23 = [(AnalyticsEngineCore *)self extractQueryStringFrom:*(*(&v51 + 1) + 8 * i) isGeneric:&v55];
          if (v23)
          {
            v17 = v23;
            goto LABEL_16;
          }
        }

        v20 = [subpredicates countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_16:
      found = foundCopy;
      altpred = altpredCopy;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      v17 = 0;
      goto LABEL_19;
    }

    v17 = [(AnalyticsEngineCore *)self extractQueryStringFrom:predCopy isGeneric:&v55];
  }

LABEL_19:
  if ([(FlowAnalyticsEngine *)self _handlesProcEntity:name])
  {
    if (v17 || (v55 & 1) != 0)
    {
      v24 = [(AnalyticsEngineCore *)self safePredFrom:predCopy forEntity:cacheCopy];
      if (v24)
      {
        if (v55)
        {
          v25 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: entering flow for generics", buf, 2u);
          }

          v26 = [actionsCopy objectForKeyedSubscript:@"nameChain"];

          if (v26)
          {
            altpredCopy2 = altpred;
            null = [MEMORY[0x277CBEB68] null];
            v28 = [v26 isEqual:null];

            if (v28)
            {
              v29 = analyticsLogHandle;
              v30 = 2;
              if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: query target is NSNull, failing query", buf, 2u);
              }
            }

            else
            {
              v62 = @"targetname";
              v63 = v26;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              v36 = [v24 predicateWithSubstitutionVariables:?];
              *altpredCopy2 = v36;
              if ([(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v26 pred:v36 found:found])
              {
                v37 = [(FlowAnalyticsEngine *)self _attemptConvertingPluginNameToContainingAppName:v26];
                if (v37)
                {
                  v60 = @"targetname";
                  v61 = v37;
                  v46 = v37;
                  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];

                  v48 = v38;
                  v39 = [v24 predicateWithSubstitutionVariables:v38];

                  v40 = v39;
                  v36 = v39;
                  *altpredCopy2 = v39;
                  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v46 pred:v39 found:found];
                  v41 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v42 = v46;
                    v57 = v46;
                    v58 = 1024;
                    v59 = v30;
                    _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: performed 2nd attempt with alt target %@, got %d", buf, 0x12u);
                  }

                  else
                  {
                    v42 = v46;
                  }
                }

                else
                {
                  v42 = 0;
                  v45 = analyticsLogHandle;
                  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: failed 1st attempt but no alt target, will query all", buf, 2u);
                  }

                  v30 = 1;
                }

                v44 = v48;
              }

              else
              {
                v43 = analyticsLogHandle;
                if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v57 = v26;
                  _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: cache hit on 1st attempt for target: %@", buf, 0xCu);
                }

                v30 = 0;
                v44 = v48;
              }
            }
          }

          else
          {
            v35 = analyticsLogHandle;
            if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: missing target for 1st attempt", buf, 2u);
            }

            v26 = 0;
            v30 = 1;
          }

          goto LABEL_38;
        }

        v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromProcCache:cacheCopy target:v17 pred:v24 found:found];
      }

      else
      {
        v32 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: failed to create safe predicate", buf, 2u);
        }

        v30 = 1;
      }

      v26 = v17;
LABEL_38:

      v17 = v26;
      goto LABEL_43;
    }

    v33 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: only 1-result string queries are first tried on the memory cache, giving up", buf, 2u);
    }

    v17 = 0;
LABEL_42:
    v30 = 1;
    goto LABEL_43;
  }

  if (![(FlowAnalyticsEngine *)self _handlesFlowEntity:name])
  {
    goto LABEL_42;
  }

  v31 = [actionsCopy objectForKeyedSubscript:@"instantFlow"];

  if (!v31)
  {
    goto LABEL_42;
  }

  v30 = [(FlowAnalyticsEngine *)self _performQueryOnEntityFromInstantFlowCache:cacheCopy target:v17 pred:predCopy found:found];
LABEL_43:

  return v30;
}

- (int)_performQueryOnEntityFromProcCache:(id)cache target:(id)target pred:(id)pred found:(id *)found
{
  v53 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  targetCopy = target;
  predCopy = pred;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__FlowAnalyticsEngine__performQueryOnEntityFromProcCache_target_pred_found___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (_performQueryOnEntityFromProcCache_target_pred_found__once != -1)
  {
    dispatch_once(&_performQueryOnEntityFromProcCache_target_pred_found__once, block);
  }

  v13 = [(FlowAnalyticsEngine *)self _fetchFromProcCacheWithName:targetCopy ofType:1];
  if (v13)
  {
    v37 = predCopy;
    v38 = targetCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    isApp = [v13 isApp];
    v17 = &_performQueryOnEntityFromProcCache_target_pred_found__appDesc;
    if (!isApp)
    {
      v17 = &_performQueryOnEntityFromProcCache_target_pred_found__procDesc;
    }

    v39 = cacheCopy;
    [*v17 relationshipsWithDestinationEntity:{cacheCopy, found}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v18 = v47 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v45;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v44 + 1) + 8 * i);
          if (([v23 isTransient] & 1) == 0)
          {
            name = [v23 name];
            [v14 addObject:name];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v20);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v14;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [v13 valueForKey:*(*(&v40 + 1) + 8 * j)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            allObjects = [v30 allObjects];
LABEL_24:
            v32 = allObjects;
            [v15 addObjectsFromArray:allObjects];

            goto LABEL_26;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            allObjects = [v30 array];
            goto LABEL_24;
          }

          [v15 addObject:v30];
LABEL_26:
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v27);
    }

    predCopy = v37;
    *v36 = [v15 filteredArrayUsingPredicate:v37];

    v33 = 0;
    targetCopy = v38;
    cacheCopy = v39;
  }

  else
  {
    v34 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = targetCopy;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: cache miss for %@", buf, 0xCu);
    }

    v33 = 1;
  }

  return v33;
}

void __76__FlowAnalyticsEngine__performQueryOnEntityFromProcCache_target_pred_found___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D6B540]);
  v3 = *(*(a1 + 32) + 8);
  v4 = [MEMORY[0x277D6B548] entityName];
  v11 = [v2 initWithWorkspace:v3 entityName:v4 withCache:0];

  v5 = [MEMORY[0x277D6B548] entityName];
  v6 = [v11 getDescriptionForName:v5];
  v7 = _performQueryOnEntityFromProcCache_target_pred_found__procDesc;
  _performQueryOnEntityFromProcCache_target_pred_found__procDesc = v6;

  v8 = [MEMORY[0x277D6B558] entityName];
  v9 = [v11 getDescriptionForName:v8];
  v10 = _performQueryOnEntityFromProcCache_target_pred_found__appDesc;
  _performQueryOnEntityFromProcCache_target_pred_found__appDesc = v9;
}

- (id)_attemptConvertingPluginNameToContainingAppName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->pluginToBundleCache objectForKeyedSubscript:nameCopy];
  if (v5)
  {
    applicationIdentifier2 = v5;
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = nameCopy;
      v19 = 2112;
      v20 = applicationIdentifier2;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: hotpath hit, converted %@ to %@", &v17, 0x16u);
    }
  }

  else
  {
    v8 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:nameCopy];
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412546;
      v18 = nameCopy;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: slowpath, converting %@ to plugin: %p", &v17, 0x16u);
    }

    if (v8)
    {
      containingBundle = [v8 containingBundle];
      v11 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134217984;
        v18 = containingBundle;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: containing bundle: %p", &v17, 0xCu);
      }

      if (containingBundle && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = containingBundle;
        v13 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          applicationIdentifier = [v12 applicationIdentifier];
          v17 = 138412290;
          v18 = applicationIdentifier;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: remap: plugin's containing appname: %@", &v17, 0xCu);
        }

        applicationIdentifier2 = [v12 applicationIdentifier];
        if (applicationIdentifier2)
        {
          [(NSMutableDictionary *)self->pluginToBundleCache setObject:applicationIdentifier2 forKeyedSubscript:nameCopy];
        }
      }

      else
      {
        applicationIdentifier2 = 0;
      }
    }

    else
    {
      applicationIdentifier2 = 0;
    }
  }

  return applicationIdentifier2;
}

- (BOOL)_bundleBackgroundAudioCapable:(id)capable
{
  v20 = *MEMORY[0x277D85DE8];
  capableCopy = capable;
  v5 = [(NSMutableDictionary *)self->audioBundleCache objectForKeyedSubscript:capableCopy];
  v6 = v5;
  if (v5)
  {
    LODWORD(v7) = [v5 BOOLValue];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412546;
      v17 = capableCopy;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "audio background capability for %@: %d (source: cache)", &v16, 0x12u);
    }
  }

  else
  {
    v9 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:capableCopy];
    v10 = v9;
    if (v9)
    {
      uIBackgroundModes = [v9 UIBackgroundModes];
      v7 = [uIBackgroundModes containsObject:@"audio"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v7];
      [(NSMutableDictionary *)self->audioBundleCache setObject:v12 forKeyedSubscript:capableCopy];

      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v16 = 138412546;
        v17 = capableCopy;
        v18 = 1024;
        v19 = v7;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "audio background capability for %@: %d (source: LS)", &v16, 0x12u);
      }
    }

    else
    {
      v14 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = capableCopy;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "applicationProxyForIdentifier failed for %@", &v16, 0xCu);
      }

      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (int)_performQueryOnEntityFromInstantFlowCache:(id)cache target:(id)target pred:(id)pred found:(id *)found
{
  v27 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  [(FlowAnalyticsEngine *)self _pruneFlowHistory];
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    flowInstant = self->flowInstant;
    v11 = v9;
    v23 = 138412546;
    v24 = targetCopy;
    v25 = 2048;
    v26 = [(NSMutableDictionary *)flowInstant count];
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "netanalyticsdebug: looking for instant flow: %@, %lu on record", &v23, 0x16u);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
  objectEnumerator = [(NSMutableDictionary *)self->flowInstant objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      v16 = nextObject2;
      firstObject = [v16 firstObject];
      v18 = firstObject;
      if (!targetCopy || ([firstObject tmpID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", targetCopy), v19, v20))
      {
        [v12 addObjectsFromArray:v16];
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v21 = v12;
  *found = v12;

  return 0;
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA5B8];
  replyCopy = reply;
  v9 = [v6 errorWithDomain:v7 code:45 userInfo:0];
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: netanalyticsdebug: flow: denied snapshot request (ENOTSUP)", v11, 2u);
  }

  replyCopy[2](replyCopy, 0, v9);
}

- (id)setOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  if (!optionCopy)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v6 = @"calendarUsageToggle";
  v7 = [optionCopy objectForKey:@"calendarUsageToggle"];
  if (!v7)
  {
    v6 = @"typicalUsageToggle";
    v8 = [v5 objectForKey:@"typicalUsageToggle"];
    if (v8)
    {
      haveTypicalUsage = [(FlowAnalyticsEngine *)self haveTypicalUsage];
      -[FlowAnalyticsEngine setHaveTypicalUsage:](self, "setHaveTypicalUsage:", [v8 BOOLValue]);
      goto LABEL_8;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  haveTypicalUsage = [(FlowAnalyticsEngine *)self haveCalendar];
  -[FlowAnalyticsEngine setHaveCalendar:](self, "setHaveCalendar:", [v8 BOOLValue]);
LABEL_8:
  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:haveTypicalUsage];
  v10 = [v11 dictionaryWithObjectsAndKeys:{v12, v6, 0}];

LABEL_9:

  return v10;
}

- (id)getOption:(id)option
{
  optionCopy = option;
  v5 = optionCopy;
  if (optionCopy)
  {
    dictionary = [optionCopy objectForKey:@"calendarUsageToggle"];

    if (dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveCalendar](self, "haveCalendar")}];
      [dictionary setObject:v7 forKeyedSubscript:@"calendarUsageToggle"];
    }

    v8 = [v5 objectForKey:@"typicalUsageToggle"];

    if (v8)
    {
      if (!dictionary)
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[FlowAnalyticsEngine haveTypicalUsage](self, "haveTypicalUsage")}];
      [dictionary setObject:v9 forKeyedSubscript:@"typicalUsageToggle"];
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

- (void)resetDataFor:(id)for nameKind:(id)kind
{
  v23 = *MEMORY[0x277D85DE8];
  forCopy = for;
  kindCopy = kind;
  if (forCopy && [forCopy count])
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:forCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ProcessAnalytics *)self->pspace processesWithNameInSet:v8 nameKind:kindCopy];
  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "Resetting entries for processes %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(FlowAnalyticsEngine *)self _removeAllInfoForProcess:*(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)identifierForUUID:(id)d queue:(id)queue reply:(id)reply
{
  dCopy = d;
  queueCopy = queue;
  replyCopy = reply;
  if (dCopy)
  {
    nstatManager = self->nstatManager;
    if (nstatManager)
    {
      v22 = 0;
      v12 = [(NWStatsManager *)nstatManager identifierForUUID:dCopy derivation:&v22];
      if (v12)
      {
        v13 = v12;
        if (v22 - 1) < 5 && ((0x17u >> (v22 - 1)))
        {
          v14 = kSymptomAnalyticsTypeBundleIdentifier;
        }

        else
        {
          if ((v22 & 0xFFFFFFFD) != 4)
          {
            v16 = 0;
LABEL_13:
            v15 = 0;
            if (!queueCopy)
            {
              goto LABEL_14;
            }

            goto LABEL_8;
          }

          v14 = kSymptomAnalyticsTypeProcessName;
        }

        v16 = *v14;
        goto LABEL_13;
      }
    }
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  v16 = 0;
  v13 = 0;
  if (!queueCopy)
  {
LABEL_14:
    replyCopy[2](replyCopy, v13, v16, v15);
    goto LABEL_15;
  }

LABEL_8:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__FlowAnalyticsEngine_identifierForUUID_queue_reply___block_invoke;
  block[3] = &unk_27898CA50;
  v21 = replyCopy;
  v18 = v13;
  v19 = v16;
  v20 = v15;
  dispatch_async(queueCopy, block);

LABEL_15:
}

- (void)_updateKnownCellularInterfaceIndexList:(int)list force:
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (self && (![v5 count] || list))
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "";
      if (list)
      {
        v8 = " (forced)";
      }

      *buf = 136315138;
      *v17 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Ready to list pdp interfaces%s...", buf, 0xCu);
    }

    v9 = if_nametobitmask("pdp");
    for (i = 0; i != 64; ++i)
    {
      if ((v9 >> i))
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:i];
        [v6 addObject:v11];

        v12 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [v6 count];
          *buf = 67109376;
          v17[0] = i;
          LOWORD(v17[1]) = 2048;
          *(&v17[1] + 2) = v14;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Found pdp interface at index %d; total found: %ld", buf, 0x12u);
        }
      }
    }

    v15 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v17 = v6;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Total pdp interface index list: %@", buf, 0xCu);
    }
  }
}

- (void)_enableThresholdMonitoringForCellularInterface:(uint64_t)interface
{
  v16 = *MEMORY[0x277D85DE8];
  if (interface)
  {
    v4 = *(interface + 256);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      [interface _startMonitoringNetworkInterface:a2 usingThreshold:0x100000];
      v6 = *(interface + 264);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      [v6 addObject:v7];

      v8 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(interface + 264);
        v12 = 67109378;
        v13 = a2;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Set threshold monitoring on interface index %d (total monitored interfaces: %@)", &v12, 0x12u);
      }

      *(interface + 248) = a2;
      v10 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        v11 = *(interface + 248);
        v12 = 67109120;
        v13 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Updated last used pdp interface to %d", &v12, 8u);
      }
    }
  }
}

- (void)_removeInfoFromWorkspaceForProcess:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_begin_catch(a1);
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "exception caught while setting process hintLiveUsage: process = %@", &v5, 0xCu);
  }

  objc_end_catch();
}

@end