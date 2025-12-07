@interface NetworkAnalyticsEngine
+ (BOOL)getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted;
+ (BOOL)hasAnyNetworkAttachmenOnLOI:(int64_t)i;
+ (BOOL)performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply;
+ (BOOL)trainModelAndScore:(BOOL)score lastScoreDate:(id)date output:(id *)output;
+ (id)concurrentEpochs;
+ (id)fetchHashSaltFromJournalUsingImpoExpoService:(id)service;
+ (id)getNetworkExtensionStateRelay;
+ (id)hashPrimaryKey:(id)key;
+ (id)hashPrimaryKey:(id)key withSalt:(id)salt;
+ (id)mapNrFrequencyBandToString:(char)string;
+ (id)mapRadioTechnologyTypeToString:(unsigned __int8)string;
+ (id)queue;
+ (id)skimMemoryJournalFor:(unsigned __int8)for;
+ (int)getLoadedLQMOn:(unsigned __int8)on;
+ (int64_t)mapLinkQuality:(int)quality;
+ (int64_t)mapPowerCost:(unsigned __int8)cost;
+ (int64_t)mapRadioTechnology:(unsigned __int8)technology;
+ (unsigned)_constructRxSignalExemptionsBitmapFromHint:(BOOL)hint reasons:(id)reasons;
+ (void)awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply;
+ (void)didReceiveProtocolSnapshot:(id)snapshot;
+ (void)estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply;
+ (void)getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
+ (void)hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply;
+ (void)layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
+ (void)performPersistentStoreHealthCheckWithReply:(id)reply;
+ (void)refreshLOIForInterfaceType:(unsigned __int8)type;
+ (void)relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset;
+ (void)relayCellThroughputAdvice:(unsigned int)advice;
+ (void)relayWiFiViability:(unsigned int)viability;
+ (void)setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue;
+ (void)updateLOI:(int64_t)i forInterfaceType:(unsigned __int8)type;
+ (void)usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply;
- (BOOL)_appendJournalRecord:(id)record withPreamble:(id *)preamble;
- (BOOL)_determineIfThisIsWiFiFirstAttachment:(id)attachment;
- (BOOL)_flushAllJournalRecords;
- (BOOL)_getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted;
- (BOOL)_hashPrimaryKeyInPlace:(char *)place withSalt:(id)salt;
- (BOOL)_isKnowableSporadicForType:(unsigned __int8)type;
- (BOOL)_newCellTransferTimeEstimateRequired;
- (BOOL)_performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply;
- (BOOL)_populateInterfaceTimelineJournalRecord:(id *)record forInterface:(int64_t)interface fromDict:(id)dict;
- (BOOL)_populateLIMJournalRecord:(id *)record fromKernelDict:(id)dict;
- (BOOL)_populateLQMJournalRecord:(id *)record fromCellFingerprint:(BOOL)fingerprint key:(const char *)key atLOI:(int64_t)i ofInterfaceType:(int64_t)type lqm:(int)lqm isFaulty:(unsigned int)faulty;
- (BOOL)_primaryKeyChange:(id)change interfaceName:(id)name interfaceType:(unsigned __int8)type roamingEvent:(BOOL)event;
- (BOOL)_recordOfActiveFatalSuspector:(int64_t)suspector;
- (BOOL)_shouldAcceptRouteSource:(__NStatSource *)source;
- (BOOL)handlesEntity:(id)entity;
- (NetworkAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue;
- (__NStatSource)_newDefRouteForInterface:(id)interface saFamily:(unsigned __int8)family;
- (id)_adviceToNSString:(int)string;
- (id)_concurrentEpochs;
- (id)_createNetworkAttachmentIdentifierExclusionList;
- (id)_determineSporadicForType:(int)type withRetCode:(int *)code;
- (id)_epochForInterfaceType:(unsigned __int8)type;
- (id)_hashPrimaryKey:(id)key withSalt:(id)salt;
- (id)_naIdentifierToMajor:(id)major;
- (id)_retrieveCellCarrierName;
- (id)_scoringDuty:(id)duty forType:(int)type withRetCode:(int *)code oldestTime:(id *)time;
- (id)_skimMemoryJournalFor:(unsigned __int8)for;
- (id)_tcsInfoDescription;
- (id)lastScoreExits;
- (id)timeOfDayPrecise;
- (int)_combinedDNSCountForEpoch:(id)epoch;
- (int)_generateAdviceForEpoch:(id)epoch relativeTo:(id)to;
- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found;
- (int64_t)_processCTCellInfo:(id)info;
- (int64_t)_retrieveCellId;
- (void)_actUponCellRrcChangeTo:(int)to;
- (void)_actUponLoadedLqmChangeFrom:(int)from to:(int)to onInterfaceType:(unsigned __int8)type;
- (void)_armDOASuspector:(id)suspector;
- (void)_armFatalSuspector:(id)suspector isActive:(BOOL)active;
- (void)_armLowQDisconnectSuspector:(id)suspector;
- (void)_awaitEstimatedDataTransferTimeWithCallbackOnQueue:(id)queue completionBlock:(id)block;
- (void)_awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply;
- (void)_awdCaptureInstant:(id)instant replyQueue:(id)queue reply:(id)reply;
- (void)_captivityRedirects:(id)redirects;
- (void)_cellNetworkChangeForInterface:(id)interface roamingEvent:(BOOL)event subscription:(id)subscription;
- (void)_certError:(id)error;
- (void)_computeAndApplyLoadedLqmFrom:(int)from oldLqm:(int)lqm onInterfaceType:(unsigned __int8)type loadedLqmAuditRecords:(id)records;
- (void)_createJournalRecordOfType:(unsigned __int8)type forInterface:(int64_t)interface fromDict:(id)dict;
- (void)_dataStall:(id)stall;
- (void)_delayedKnownGoodNetworkAlert;
- (void)_disarmDOASuspector:(id)suspector;
- (void)_disarmFatalSuspector:(id)suspector withEventAt:(id)at by:(id)by;
- (void)_disarmLowQDisconnectSuspector:(id)suspector;
- (void)_dnsWithSymptoms:(id)symptoms;
- (void)_dumpStats;
- (void)_establishLqmBaselineOn:(BOOL)on interfaceName:(id)name lqmPtr:(int *)ptr;
- (void)_estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply;
- (void)_extractCellLinkFingerprintFrom:(__CFData *)from;
- (void)_fetchHashSaltFromJournal;
- (void)_getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
- (void)_handleRouteClosing:(__NStatSource *)closing;
- (void)_handleRouteData:(__NStatSource *)data;
- (void)_hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply;
- (void)_idleExitTransactionCheck;
- (void)_informKernelOfCellRrc:(int)rrc forInterface:(id)interface;
- (void)_informKernelOfLIMUplink:(BOOL)uplink downlink:(BOOL)downlink forInterface:(const char *)interface;
- (void)_initializeInternals;
- (void)_initializeWorkspace;
- (void)_insertEpoch:(id)epoch forInterfaceType:(unsigned __int8)type;
- (void)_layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply;
- (void)_observeNetworkFramework;
- (void)_performPeriodicTasks:(BOOL)tasks;
- (void)_processLIM:(id)m;
- (void)_processNWActivityMetrics;
- (void)_recoverFromSystemCriticalErrors;
- (void)_refreshLOIForInterfaceType:(unsigned __int8)type;
- (void)_refreshRouteMetrics;
- (void)_refreshRouteMetricsComplete;
- (void)_refreshRouteMetricsWithCallbackOnQueue:(id)queue completionBlock:(id)block;
- (void)_registerForLinkQualityNotifications:(id)notifications;
- (void)_registerForSIMStatusChangeNotification:(id)notification;
- (void)_relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset;
- (void)_relayCellThroughputAdvice:(unsigned int)advice;
- (void)_relayDataStallState:(unsigned int)state dnsFailureState:(unsigned int)failureState;
- (void)_relayRebufferState:(unsigned int)state;
- (void)_relayWiFiViability:(unsigned int)viability;
- (void)_removeEpochForInterfaceType:(unsigned __int8)type;
- (void)_removeOldRouteRecords;
- (void)_retrieveCellId:(id)id;
- (void)_retrieveDNSServersForEpoch:(id)epoch;
- (void)_retrieveICCID;
- (void)_scoringTrampoline;
- (void)_sendTrafficClassAndExtendedReportToBaseband;
- (void)_sendTrafficInfoFlags:(unsigned int)flags changeFlags:(unsigned int)changeFlags foreground:(BOOL)foreground;
- (void)_setDefrouteMonitoring:(unsigned int)monitoring ofInterfaceType:(unsigned __int8)type roamingEvent:(BOOL)event family:(unsigned __int8)family retries:(int)retries;
- (void)_setRadioTechnology:(unsigned __int8)technology forInterfaceType:(unsigned __int8)type;
- (void)_setScalarValueInNetworkAttachments:(id)attachments targetKeyPath:(id)path basedOn:(id)on matchingKeyPath:(id)keyPath matchValue:(id)value noMatchValue:(id)matchValue;
- (void)_setWiFiRSSIThresholds:(BOOL)thresholds;
- (void)_setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue;
- (void)_trackRealTimeLqmLastUpdatedOnInterfaceType:(unsigned __int8)type;
- (void)_trainModelAndScore:(BOOL)score;
- (void)_triggerDisconnectEdge:(id)edge;
- (void)_updateAdviceForInterfaceType:(unsigned __int8)type;
- (void)_updateCellInternetStatus:(int)status pdpContext:(int)context;
- (void)_updateCombinedDNSCounts;
- (void)_updateICCID:(id)d;
- (void)_usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply;
- (void)_wifiKnownNetworksDeleted:(id)deleted;
- (void)abortRNFTestWithReply:(id)reply;
- (void)cellInfoChangedForSubscription:(id)subscription;
- (void)cellularDualSimStatusChangedTo:(int64_t)to;
- (void)clientTransactionsRelease;
- (void)countryCodeChangedForSubscription:(id)subscription;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)ctDataStatusChangedForSubscription:(id)subscription;
- (void)dealloc;
- (void)didReceiveProtocolSnapshot:(id)snapshot;
- (void)handleLQMChange;
- (void)handleRRCChange;
- (void)infoDataStallChangedForSubscription:(id)subscription;
- (void)infoDataTransferTimeChangedForSubscription:(id)subscription;
- (void)infoDataTransferTimeEnabledChangedForSubscription:(id)subscription;
- (void)infoHighThroughputStateChanged:(id)changed;
- (void)infoLinkPowerCostChangedForSubscription:(id)subscription;
- (void)infoLinkQualityFingeprintChangedForSubscription:(id)subscription;
- (void)infoLinkStateChangedForSubscription:(id)subscription;
- (void)infoTrafficClassChangedForSubscription:(id)subscription;
- (void)networkCodeChangedForSubscription:(id)subscription;
- (void)networkSlicingActiveChangedTo:(BOOL)to forSliceIndex:(unint64_t)index;
- (void)nonTerrestrialNetworkActiveChangedTo:(BOOL)to;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performPersistentStoreHealthCheckComplete:(id)complete error:(id)error;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0;
- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome;
- (void)processCellDataStallNotification:(id)notification;
- (void)processCellDataTransferTimeEnabledNotification:(id)notification;
- (void)processCellDataTransferTimeNotification:(id)notification;
- (void)processCellHighThroughputState:(id)state;
- (void)processCellLinkFingerprintNotification:(id)notification;
- (void)processCellLinkPowerCostNotification:(id)notification;
- (void)processCellLinkStateNotification:(id)notification;
- (void)processCellTrafficClassNotification:(id)notification;
- (void)proxyAnalyticsTrainAndScoreComplete:(id)complete error:(id)error;
- (void)proxyAnalyticsTrainAndScoreInterrupted;
- (void)ratSelectionChangedForSubscription:(id)subscription;
- (void)resetCellStatesForXCTests;
- (void)resetDataFor:(id)for nameKind:(id)kind;
- (void)scheduleWiFiAssistAnalyticsTask;
- (void)sendWifiAssistDataUsageMetric;
- (void)sendWifiAssistStateMetric;
- (void)setProhibitNetworkAgentsForNWParameters:(id)parameters;
- (void)shutdown;
- (void)signalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r;
- (void)startRNFTestWithConnection:(id)connection options:(id)options scenarioName:(id)name reply:(id)reply;
- (void)stewieActiveChangedTo:(BOOL)to;
- (void)stopRunningRNFTestWithReply:(id)reply;
- (void)wifiNetworkChangedForInterface:(id)interface roaming:(BOOL)roaming;
- (void)wifiShim_BSSIDChangedForInterface:(id)interface;
- (void)wifiShim_HintForFallback:(BOOL)fallback reasons:(id)reasons;
- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid;
- (void)wifiShim_L2NewMetrics:(id)metrics forInterface:(id)interface;
- (void)wifiShim_L2TriggerDisconnectEdge:(BOOL)edge forInterface:(id)interface;
- (void)wifiShim_LQMAsystoleDetected:(double)detected;
- (void)wifiShim_NetworkForgottenWithSSID:(id)d;
@end

@implementation NetworkAnalyticsEngine

- (void)_sendTrafficClassAndExtendedReportToBaseband
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CFDataCreate(0, &tcsBwInfo, trafficClassStructureSize);
  v4 = scoringLogHandle;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _tcsInfoDescription = [(NetworkAnalyticsEngine *)selfCopy _tcsInfoDescription];
    v11 = 138412546;
    *v12 = _tcsInfoDescription;
    *&v12[8] = 2112;
    v13 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Preparing to send %@ data %@", &v11, 0x16u);
  }

  dword_2814D2FE8 = 0;
  qword_2814D2FE0 = 0;
  objc_sync_exit(selfCopy);

  v6 = _CTServerConnectionSendEnhancedLinkQualityTrafficInfo();
  v7 = v6;
  v8 = HIDWORD(v6);
  if (HIDWORD(v6))
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (!v9)
  {
    v10 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109376;
      *v12 = v7;
      *&v12[4] = 1024;
      *&v12[6] = v8;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Received error (%d, %d) while trying to send traffic and stall info", &v11, 0xEu);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (id)_tcsInfoDescription
{
  if (trafficClassVersionInUse == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic and stall info active 0x%x changed 0x%x foreground %d stall %d rebuffer %d dns %d non-CM-info 0x%x chg ext 0x%x reserve 0x%x hightpt 0x%x", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, qword_2814D2FE0, HIDWORD(qword_2814D2FE0), dword_2814D2FE8, dword_2814D2FEC, dword_2814D2FF0, unk_2814D2FF4, dword_2814D2FF8];
  }

  else if (trafficClassVersionInUse == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic and stall info active 0x%x changed 0x%x foreground %d stall %d rebuffer %d dns %d", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, qword_2814D2FE0, HIDWORD(qword_2814D2FE0), dword_2814D2FE8, v7, v8, v9, v10];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@" traffic info active 0x%x changed 0x%x foreground %d", dword_2814D2FD4, dword_2814D2FD8, dword_2814D2FDC, v4, v5, v6, v7, v8, v9, v10];
  }
  v2 = ;

  return v2;
}

- (void)_refreshRouteMetrics
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath", buf, 2u);
  }

  NStatManagerQueryAllSourcesUpdate();
}

uint64_t __46__NetworkAnalyticsEngine__refreshRouteMetrics__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath: queried all sources", v4, 2u);
  }

  return [*(a1 + 32) _refreshRouteMetricsComplete];
}

- (void)_refreshRouteMetricsComplete
{
  routeMetricsRefreshCompletionBlock = self->routeMetricsRefreshCompletionBlock;
  if (routeMetricsRefreshCompletionBlock)
  {
    routeMetricsRefreshCompletionBlock[2](routeMetricsRefreshCompletionBlock, a2);
    v4 = self->routeMetricsRefreshCompletionBlock;
    self->routeMetricsRefreshCompletionBlock = 0;
  }
}

- (id)lastScoreExits
{
  v9[4] = *MEMORY[0x277D85DE8];
  lastScoreExit = self->lastScoreExit;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->lastScoreExit[0]];
  v9[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[1]];
  v9[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[2]];
  v9[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:lastScoreExit[3]];
  v9[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  return v7;
}

- (BOOL)_hashPrimaryKeyInPlace:(char *)place withSalt:(id)salt
{
  v25 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  *len = 0;
  v6 = 0;
  if ([NetworkEpoch parsePrimaryKeyStr:place majorIDLengthInBytes:&len[1] minorIDLengthInBytes:len])
  {
    v6 = saltCopy != 0;
    if (saltCopy)
    {
      v7 = [saltCopy length];
      bytes = [saltCopy bytes];
      v9 = len[1];
      v10 = &place[len[1] + 1];
      if (v7 >= len[1])
      {
        v11 = len[1];
      }

      else
      {
        v11 = v7;
      }

      if (v11 >= 1)
      {
        v12 = bytes;
        placeCopy = place;
        do
        {
          v14 = *v12++;
          *placeCopy++ ^= v14;
          --v11;
        }

        while (v11);
      }

      v15 = len[0];
      if (v7 < len[0])
      {
        v15 = v7;
      }

      if (v15 >= 1)
      {
        v16 = v10;
        do
        {
          v17 = *bytes++;
          *v16++ ^= v17;
          --v15;
        }

        while (v15);
      }

      CC_SHA256(place, v9, md);
      CC_SHA256(v10, len[0], v23);
      v18 = 0;
      *place = 0u;
      *(place + 1) = 0u;
      *(place + 2) = 0u;
      *(place + 3) = 0u;
      placeCopy2 = place;
      do
      {
        snprintf(placeCopy2, 3uLL, "%02x", md[v18]);
        snprintf(placeCopy2 + 17, 3uLL, "%02x", v23[v18++]);
        placeCopy2 += 2;
      }

      while (v18 != 8);
      place[16] = 45;
      place[33] = 0;
    }

    else
    {
      v20 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *md = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "Hash salt is nil.", md, 2u);
      }
    }
  }

  return v6;
}

- (id)_hashPrimaryKey:(id)key withSalt:(id)salt
{
  v33 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  saltCopy = salt;
  if (!keyCopy)
  {
    v12 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "primaryKeyString is null.", buf, 2u);
    }

    goto LABEL_19;
  }

  if ([keyCopy length] > 0x40)
  {
LABEL_19:
    v21 = @"HASH-FAILED";
    goto LABEL_20;
  }

  v31 = 0u;
  v32 = 0u;
  *buf = 0u;
  v30 = 0u;
  uTF8String = [keyCopy UTF8String];
  v9 = uTF8String;
  if (uTF8String && *uTF8String)
  {
    buf[0] = *uTF8String;
    v10 = 1;
    while (v10 != 63)
    {
      v11 = uTF8String[v10];
      buf[v10++] = v11;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    HIBYTE(v32) = 0;
LABEL_17:
    if ([(NetworkAnalyticsEngine *)self _hashPrimaryKeyInPlace:buf withSalt:saltCopy])
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
LABEL_20:
      v20 = v21;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  fastestEncoding = [keyCopy fastestEncoding];
  v14 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_FAULT))
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = v14;
    v17 = [v15 localizedNameOfStringEncoding:fastestEncoding];
    v18 = v17;
    v19 = "<empty>";
    v23 = 138478339;
    v24 = keyCopy;
    if (!v9)
    {
      v19 = "NULL";
    }

    v25 = 2112;
    v26 = v17;
    v27 = 2080;
    v28 = v19;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_FAULT, "Non-nil primaryKeyString %{private}@ with encoding %@ has %s UTF-8 representation", &v23, 0x20u);
  }

  v20 = @"HASH-FAILED";
LABEL_21:

  return v20;
}

+ (id)hashPrimaryKey:(id)key
{
  if (sharedInstance_3)
  {
    v4 = [sharedInstance_3 _hashPrimaryKey:key];
  }

  else
  {
    v4 = @"HASH-FAILED";
  }

  return v4;
}

+ (id)hashPrimaryKey:(id)key withSalt:(id)salt
{
  if (sharedInstance_3)
  {
    v5 = [sharedInstance_3 _hashPrimaryKey:key withSalt:salt];
  }

  else
  {
    v5 = @"HASH-FAILED";
  }

  return v5;
}

- (void)_createJournalRecordOfType:(unsigned __int8)type forInterface:(int64_t)interface fromDict:(id)dict
{
  typeCopy = type;
  v39 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  switch(typeCopy)
  {
    case 3:
      if (self->_isInternalBuild)
      {
        v19 = malloc_type_malloc(0x18uLL, 0x3AAA4AC2uLL);
        if (!v19)
        {
          [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
        }

        v10 = v19;
        if (![(NetworkAnalyticsEngine *)self _populateInterfaceTimelineJournalRecord:v19 forInterface:interface fromDict:dictCopy])
        {
          goto LABEL_23;
        }

        v17 = 24;
        goto LABEL_14;
      }

      break;
    case 2:
      v18 = malloc_type_malloc(0x70uLL, 0xE1D437F2uLL);
      if (!v18)
      {
        [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
      }

      v10 = v18;
      if (![(NetworkAnalyticsEngine *)self _populateLIMJournalRecord:v18 fromKernelDict:dictCopy])
      {
        goto LABEL_23;
      }

      v17 = 112;
      goto LABEL_14;
    case 1:
      v9 = malloc_type_malloc(0x58uLL, 0xBA478599uLL);
      if (!v9)
      {
        [NetworkAnalyticsEngine _createJournalRecordOfType:? forInterface:? fromDict:?];
      }

      v10 = v9;
      v33 = [dictCopy objectForKeyedSubscript:@"CellFingerprintTriggered"];
      bOOLValue = [v33 BOOLValue];
      v11 = [dictCopy objectForKeyedSubscript:@"PrimaryKey"];
      uTF8String = [v11 UTF8String];
      v31 = [dictCopy objectForKeyedSubscript:@"LOI"];
      integerValue = [v31 integerValue];
      v12 = [dictCopy objectForKeyedSubscript:@"InterfaceType"];
      integerValue2 = [v12 integerValue];
      v14 = [dictCopy objectForKeyedSubscript:@"LoadedLQM"];
      intValue = [v14 intValue];
      v16 = [dictCopy objectForKeyedSubscript:@"NetworkAttachmentFaulty"];
      LODWORD(v28) = [v16 unsignedIntValue];
      LOBYTE(integerValue2) = [(NetworkAnalyticsEngine *)self _populateLQMJournalRecord:v10 fromCellFingerprint:bOOLValue key:uTF8String atLOI:integerValue ofInterfaceType:integerValue2 lqm:intValue isFaulty:v28];

      if ((integerValue2 & 1) == 0)
      {
        goto LABEL_23;
      }

      v17 = 88;
LABEL_14:
      v20 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:v17];
      v21 = [(NetworkAnalyticsEngine *)self _appendJournalRecord:v20 withPreamble:v10];
      v22 = netepochsLogHandle;
      if (v21)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v23 = v22;
          LODWORD(buf) = 67109634;
          HIDWORD(buf) = typeCopy;
          v35 = 2048;
          v36 = [v20 length];
          v37 = 2112;
          v38 = v20;
          v24 = "Appended a new journal record in memory, type: %d length: %lu record: %@";
          v25 = v23;
          v26 = OS_LOG_TYPE_DEBUG;
LABEL_21:
          _os_log_impl(&dword_23255B000, v25, v26, v24, &buf, 0x1Cu);
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v23 = v22;
        LODWORD(buf) = 67109634;
        HIDWORD(buf) = typeCopy;
        v35 = 2048;
        v36 = [v20 length];
        v37 = 2112;
        v38 = v20;
        v24 = "Failed to append a new journal record in memory, type: %d length: %lu record: %@";
        v25 = v23;
        v26 = OS_LOG_TYPE_ERROR;
        goto LABEL_21;
      }

LABEL_23:
      free(v10);
      break;
    default:
      v27 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = typeCopy;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Unknown journal type %d", &buf, 8u);
      }

      break;
  }
}

- (BOOL)_populateLQMJournalRecord:(id *)record fromCellFingerprint:(BOOL)fingerprint key:(const char *)key atLOI:(int64_t)i ofInterfaceType:(int64_t)type lqm:(int)lqm isFaulty:(unsigned int)faulty
{
  v43 = *MEMORY[0x277D85DE8];
  if (!key || (v10 = *key) == 0)
  {
    v21 = netepochsLogHandle;
    v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      return v22;
    }

    v23 = "<empty>";
    if (!key)
    {
      v23 = "NULL";
    }

    LODWORD(v41[0]) = 136315138;
    *(v41 + 4) = v23;
    v24 = "primaryKey is %s. Dropping the LQM journal record.";
    v25 = v41;
    v26 = v21;
    v27 = OS_LOG_TYPE_ERROR;
LABEL_14:
    v28 = 12;
LABEL_23:
    _os_log_impl(&dword_23255B000, v26, v27, v24, v25, v28);
    LOBYTE(v22) = 0;
    return v22;
  }

  lqmCopy = lqm;
  iCopy = i;
  v42 = 0u;
  memset(v41, 0, sizeof(v41));
  LOBYTE(v41[0]) = v10;
  v16 = 1;
  do
  {
    if (v16 == 63)
    {
      HIBYTE(v42) = 0;
      if (fingerprint)
      {
        goto LABEL_7;
      }

LABEL_16:
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v20 = v30;

      goto LABEL_17;
    }

    v17 = key[v16];
    *(v41 + v16++) = v17;
  }

  while (v17);
  if (!fingerprint)
  {
    goto LABEL_16;
  }

LABEL_7:
  v18 = prevCellFpTimeStamp;
  if (!prevCellFpTimeStamp)
  {
    v18 = currCellFpTimeStamp;
  }

  [v18 timeIntervalSince1970];
  v20 = v19;
LABEL_17:
  if (![(NetworkAnalyticsEngine *)self _hashPrimaryKeyInPlace:v41 withSalt:self->_hashSalt])
  {
    v32 = netepochsLogHandle;
    v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v22)
    {
      return v22;
    }

    LOWORD(v37) = 0;
    v24 = "Hashing of the primary key failed. Dropping the LQM journal record.";
    v25 = &v37;
    v26 = v32;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 2;
    goto LABEL_23;
  }

  v31 = netepochsLogHandle;
  v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if ((type - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    if (v22)
    {
      v37 = 136380931;
      typeCopy = key;
      v39 = 2081;
      v40 = v41;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "Populating a new LQM journal record for primaryKey = %{private}s (%{private}s)", &v37, 0x16u);
    }

    v33 = 0;
    *&record->var0.var0 = 0u;
    *&record->var1[56] = 0;
    *&record->var1[24] = 0u;
    *&record->var1[40] = 0u;
    *&record->var0.var5 = 0u;
    *&record->var1[8] = 0u;
    *&record->var0.var0 = 513;
    *&record->var0.var3 = v20;
    *(&record->var0.var1 + 2) = type;
    while (1)
    {
      v34 = *(v41 + v33);
      *(&record->var0.var5 + v33) = v34;
      if (!v34)
      {
        break;
      }

      if (++v33 == 63)
      {
        record->var1[55] = 0;
        break;
      }
    }

    record->var1[56] = iCopy;
    record->var1[57] = type;
    record->var1[58] = lqmCopy;
    v35 = +[NetworkStateRelay getStateRelayFor:](NetworkStateRelay, "getStateRelayFor:", [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterfaceType:type]);
    record->var1[60] = [v35 radioTechnology];
    record->var1[59] = faulty;

    LOBYTE(v22) = 1;
  }

  else if (v22)
  {
    v37 = 134217984;
    typeCopy = type;
    v24 = "Interface type %ld is neither cell nor wifi";
    v25 = &v37;
    v26 = v31;
    v27 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  return v22;
}

- (BOOL)_populateLIMJournalRecord:(id *)record fromKernelDict:(id)dict
{
  v63 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKeyedSubscript:&unk_2847EF998];
  unsignedIntValue = [v7 unsignedIntValue];

  if (unsignedIntValue == 2)
  {
    v13 = 3;
    v14 = 1;
  }

  else
  {
    if (unsignedIntValue != 1)
    {
      if (unsignedIntValue)
      {
        goto LABEL_18;
      }

      v9 = netepochsLogHandle;
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v10 = "Interface type for LIM record not found in Kernel dict";
      v11 = v9;
      v12 = 2;
      goto LABEL_17;
    }

    v13 = 5;
    v14 = 2;
  }

  *&record->var6 = 0u;
  *&record->var8 = 0u;
  *&record->var2 = 0u;
  *&record->var4 = 0u;
  *&record->var0.var5 = 0u;
  *&record->var1[8] = 0u;
  *&record->var0.var0 = 0u;
  *&record->var0.var0 = 258;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  *&record->var0.var3 = v16;

  *(&record->var0.var1 + 2) = v14;
  if (v13 == 3)
  {
    netSignature = [dictCopy objectForKeyedSubscript:&unk_2847EF9B0];
    if (netSignature)
    {
LABEL_10:
      v20 = [netSignature length];
      v21 = netepochsLogHandle;
      if (v20 >= 0x19)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          *buf = 134218496;
          v58 = [netSignature length];
          v59 = 2048;
          v60 = 24;
          v61 = 2048;
          v62 = v13;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to read LIM raw signature: size (%lu) greater than allowed (%lu) for interface: %ld", buf, 0x20u);
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v58 = netSignature;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "limSignature in, journal stage: %@", buf, 0xCu);
      }

      memcpy(&record->var0.var5, [netSignature bytes], objc_msgSend(netSignature, "length"));
      v26 = [dictCopy objectForKeyedSubscript:&unk_2847EF9C8];
      *&record->var1[16] = [v26 unsignedLongLongValue];

      v27 = [dictCopy objectForKeyedSubscript:&unk_2847EF9E0];
      record->var2 = [v27 unsignedLongLongValue];

      v28 = [dictCopy objectForKeyedSubscript:&unk_2847EF9F8];
      record->var3 = [v28 unsignedLongLongValue];

      v29 = [dictCopy objectForKeyedSubscript:&unk_2847EFA10];
      record->var4 = [v29 unsignedLongLongValue];

      v30 = [dictCopy objectForKeyedSubscript:&unk_2847EFA28];
      record->var5 = [v30 unsignedLongLongValue];

      v31 = [dictCopy objectForKeyedSubscript:&unk_2847EFA40];
      record->var6 = [v31 unsignedLongLongValue];

      v32 = [dictCopy objectForKeyedSubscript:&unk_2847EFA58];
      record->var7 = [v32 unsignedLongLongValue];

      v33 = [dictCopy objectForKeyedSubscript:&unk_2847EFA70];
      record->var8 = [v33 unsignedLongLongValue];

      v34 = [dictCopy objectForKeyedSubscript:&unk_2847EFA88];
      LOBYTE(record->var9) = [v34 unsignedIntValue];

      v35 = [dictCopy objectForKeyedSubscript:&unk_2847EFAA0];
      BYTE1(record->var9) = [v35 unsignedIntValue];

      BYTE2(record->var9) = v14;
      v55[0] = @"limDLMaxBandwidthBps";
      v54 = [dictCopy objectForKeyedSubscript:&unk_2847EF9C8];
      v56[0] = v54;
      v55[1] = @"limULMaxBandwidthBps";
      v53 = [dictCopy objectForKeyedSubscript:&unk_2847EF9E0];
      v56[1] = v53;
      v55[2] = @"limPacketLossPercent";
      v52 = [dictCopy objectForKeyedSubscript:&unk_2847EF9F8];
      v56[2] = v52;
      v55[3] = @"limPacketOOOPercent";
      v51 = [dictCopy objectForKeyedSubscript:&unk_2847EFA10];
      v56[3] = v51;
      v55[4] = @"limRTTVarianceMilliseconds";
      v36 = [dictCopy objectForKeyedSubscript:&unk_2847EFA28];
      v56[4] = v36;
      v55[5] = @"limRTTMinMilliseconds";
      v37 = [dictCopy objectForKeyedSubscript:&unk_2847EFA40];
      v56[5] = v37;
      v55[6] = @"limRTTAvgMilliseconds";
      v38 = [dictCopy objectForKeyedSubscript:&unk_2847EFA58];
      v56[6] = v38;
      v55[7] = @"limConnTimeoutPercent";
      v39 = [dictCopy objectForKeyedSubscript:&unk_2847EFA70];
      v56[7] = v39;
      v55[8] = @"limDLDetected";
      v40 = [dictCopy objectForKeyedSubscript:&unk_2847EFA88];
      v56[8] = v40;
      v55[9] = @"limULDetected";
      v41 = [dictCopy objectForKeyedSubscript:&unk_2847EFAA0];
      v56[9] = v41;
      v55[10] = @"limInterfaceType";
      v42 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v56[10] = v42;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:11];

      v44 = v43;
      v45 = AnalyticsSendEventLazy();
      v46 = netepochsLogHandle;
      if (v45)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = v44;
          v47 = "Posted LIM kernel metric: %@";
          v48 = v46;
          v49 = OS_LOG_TYPE_DEFAULT;
          v50 = 12;
LABEL_27:
          _os_log_impl(&dword_23255B000, v48, v49, v47, buf, v50);
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = "Failed to post LIM kernel metric";
        v48 = v46;
        v49 = OS_LOG_TYPE_ERROR;
        v50 = 2;
        goto LABEL_27;
      }

      v24 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v17 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
    durable = [v17 durable];
    netSignature = [durable netSignature];

    if (netSignature)
    {
      goto LABEL_10;
    }
  }

  v23 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v58 = v13;
    v10 = "Failed to read LIM raw signature for interface: %ld";
    v11 = v23;
    v12 = 12;
LABEL_17:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

LABEL_18:
  v24 = 0;
LABEL_19:

  return v24;
}

- (BOOL)_populateInterfaceTimelineJournalRecord:(id *)record forInterface:(int64_t)interface fromDict:(id)dict
{
  v28 = *MEMORY[0x277D85DE8];
  *&record->var0.var0 = 0;
  *&record->var0.var3 = 0;
  record->var0.var5 = 0;
  *&record->var0.var0 = 259;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  *&record->var0.var3 = (v8 * 1000.0);

  *(&record->var0.var1 + 1) |= 1u;
  *(&record->var0.var1 + 2) = interface;
  v9 = [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterfaceType:interface];
  v10 = [NetworkStateRelay getStateRelayFor:v9];
  v11 = v10;
  if (v9 == 3)
  {
    active = [v10 active];
    primary = [v11 primary];
    v20 = 0;
    if (primary)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    v19 = v23 | active;
  }

  else if (v9 == 5)
  {
    active2 = [v10 active];
    if ([v11 primary])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | active2 | (4 * ([v11 radioTechnology] == 2));
    v15 = v14 | (8 * ([v11 radioTechnology] == 11));
    v16 = v15 | (16 * ([v11 radioTechnology] == 10));
    v17 = [v11 nrFrequencyBand] == 1;
    v18 = v16 | (32 * v17) | (([v11 nrFrequencyBand] == 2) << 6);
    v19 = v18 | ((cellHighThroughputState == 1) << 7);
    v20 = dword_2814D2FF8 & 3;
  }

  else
  {
    v24 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v26 = 134217984;
      interfaceCopy = interface;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_INFO, "Unhandled type: %ld", &v26, 0xCu);
    }

    v20 = 0;
    v19 = 0;
  }

  LOWORD(record->var0.var5) = v19 | (v20 << 8);
  HIWORD(record->var0.var5) = 0;
  *(&record->var0.var5 + 2) = 0;

  return 1;
}

- (BOOL)_appendJournalRecord:(id)record withPreamble:(id *)preamble
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (*(&preamble->var1 + 1))
  {
    v19 = self->memoryJournalRecords;
    objc_sync_enter(v19);
    [(NSMutableArray *)self->memoryJournalRecords addObject:recordCopy];
    if ([(NSMutableArray *)self->memoryJournalRecords count]>= 0x41)
    {
      [(NSMutableArray *)self->memoryJournalRecords removeObjectAtIndex:0];
    }

    objc_sync_exit(v19);
  }

  else
  {
    journalRecords = self->journalRecords;
    if (!journalRecords)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v9 = self->journalRecords;
      self->journalRecords = v8;

      journalRecords = self->journalRecords;
      if (!journalRecords)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }

    [(NSMutableData *)journalRecords appendData:recordCopy];
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->journalRecords;
      v12 = v10;
      v22 = 138478083;
      v23 = recordCopy;
      v24 = 2048;
      v25 = [(NSMutableData *)v11 length];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Appending a new journal record in memory, record = %{private}@, pending records = %lu bytes", &v22, 0x16u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    if (-[NSMutableData length](self->journalRecords, "length") >> 5 > 0x270 || ([date timeIntervalSinceDate:self->journalLastFlushed], v14 > 43200.0))
    {
      if (![(NetworkAnalyticsEngine *)self _flushAllJournalRecords])
      {
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v16 = self->journalRecords;
          v17 = v15;
          v18 = [(NSMutableData *)v16 length];
          v22 = 134217984;
          v23 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Failed to flush journal records in the database, float is %lu bytes", &v22, 0xCu);
        }
      }
    }
  }

  v20 = 1;
LABEL_16:

  return v20;
}

- (BOOL)_flushAllJournalRecords
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if ([(NSMutableData *)self->journalRecords length])
  {
    v4 = [JournalTimeStamp getCurrentJournalNameUsingPrefix:@"AnalyticsMixedJournal"];
    ieService = self->ieService;
    v19 = 0;
    v6 = [(ImpoExpoService *)ieService exportItemUnderName:v4 lastUpdated:&v19 verificationBlock:&__block_literal_global_26];
    v7 = v19;
    if (v6)
    {
      [(NSMutableData *)v6 appendData:self->journalRecords];
    }

    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      journalRecords = self->journalRecords;
      v10 = v8;
      v11 = [(NSMutableData *)journalRecords length];
      *buf = 134218242;
      v21 = v11;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Flushing %lu bytes worth of journal records in %@", buf, 0x16u);
    }

    v12 = v6;
    if (!v6)
    {
      v12 = self->journalRecords;
    }

    v13 = [(ImpoExpoService *)self->ieService importItemUnderName:v4 item:v12];
    if (!v13)
    {
      v14 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Flushing internal failure in ImpoExpoService for %@", buf, 0xCu);
      }
    }

    v15 = self->journalRecords;
    self->journalRecords = 0;

    date = [MEMORY[0x277CBEAA8] date];
    journalLastFlushed = self->journalLastFlushed;
    self->journalLastFlushed = date;
  }

  else
  {
    v13 = 1;
  }

  objc_autoreleasePoolPop(v3);
  return v13;
}

uint64_t __49__NetworkAnalyticsEngine__flushAllJournalRecords__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_opt_respondsToSelector();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (id)_skimMemoryJournalFor:(unsigned __int8)for
{
  v5 = self->memoryJournalRecords;
  objc_sync_enter(v5);
  memoryJournalRecords = self->memoryJournalRecords;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__NetworkAnalyticsEngine__skimMemoryJournalFor___block_invoke;
  v10[3] = &__block_descriptor_33_e23_B32__0__NSData_8Q16_B24l;
  forCopy = for;
  v7 = [(NSMutableArray *)memoryJournalRecords indexesOfObjectsPassingTest:v10];
  v8 = [(NSMutableArray *)self->memoryJournalRecords objectsAtIndexes:v7];

  objc_sync_exit(v5);

  return v8;
}

+ (id)skimMemoryJournalFor:(unsigned __int8)for
{
  v4 = sharedInstance_3;
  if (sharedInstance_3)
  {
    v4 = [sharedInstance_3 _skimMemoryJournalFor:for];
    v3 = vars8;
  }

  return v4;
}

- (void)_getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke;
  v13[3] = &unk_27898B6A0;
  onCopy = on;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(queue, v13);
}

void __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = *(a1 + 56);
  switch(v3)
  {
    case 3:
      goto LABEL_4;
    case 7:
      [*(a1 + 32) _computeAndApplyLoadedLqmFrom:dword_2814D301C oldLqm:dword_2814D301C onInterfaceType:7 loadedLqmAuditRecords:v2];
      v5 = [NetworkAnalyticsEngine getLoadedLQMOn:*(a1 + 56)];
      break;
    case 5:
LABEL_4:
      v4 = [*(a1 + 32) _epochForInterfaceType:?];
      if (v4)
      {
        [*(a1 + 32) _computeAndApplyLoadedLqmFrom:realTimeLqm[*(a1 + 56)] oldLqm:realTimeLqm[*(a1 + 56)] onInterfaceType:*(a1 + 56) loadedLqmAuditRecords:v2];
        v5 = [NetworkAnalyticsEngine getLoadedLQMOn:*(a1 + 56)];
      }

      else
      {
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(a1 + 56);
          *buf = 67109120;
          v16 = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Cannot get auditable loaded LQM on interface type %u as Epoch is nil", buf, 8u);
        }

        v5 = -2;
      }

      break;
    default:
      v6 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 56);
        *buf = 67109120;
        v16 = v7;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Cannot get auditable loaded LQM on interface type %u (unimplemented)", buf, 8u);
      }

      v5 = -2;
      break;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__NetworkAnalyticsEngine__getAuditableLoadedLQMOn_queue_reply___block_invoke_281;
    block[3] = &unk_27898D960;
    v13 = *(a1 + 48);
    v14 = v5;
    v12 = v2;
    dispatch_async(v10, block);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_computeAndApplyLoadedLqmFrom:(int)from oldLqm:(int)lqm onInterfaceType:(unsigned __int8)type loadedLqmAuditRecords:(id)records
{
  typeCopy = type;
  v7 = *&lqm;
  v152 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  if (typeCopy <= 7 && ((1 << typeCopy) & 0xA8) != 0)
  {
    v11 = &loadedLqm[typeCopy];
    v12 = *v11;
    v129 = v11[8];
    v13 = typeCopy;
    *v11 = from;
    v11[8] = from;
    selfCopy = self;
    v14 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:typeCopy];
    v15 = [NetworkStateRelay getStateRelayFor:typeCopy];
    durable = [v14 durable];
    fromCopy = from;
    if (from == v7)
    {
      if (typeCopy != 7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        [v14 partial];
        v19 = v18 = v12;
        [v19 dataStalls];
        v13 = typeCopy;
        *buf = 67110400;
        *v135 = fromCopy;
        *&v135[4] = 1024;
        *&v135[6] = v7;
        *v136 = 2048;
        *&v136[2] = v20;
        *v137 = 1024;
        *&v137[2] = [durable isKnownGood];
        *&v137[6] = 1024;
        *&v137[8] = [durable isHotSpot];
        *&v137[12] = 1024;
        *&v137[14] = typeCopy;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Realtime LQM changed: new-lqm %d old-lqm %d data-stalls %.2f known-good %d hot-spot %d interface-type %u", buf, 0x2Au);

        v12 = v18;
      }

      if (typeCopy != 7)
      {
        v23 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          [v14 partial];
          v26 = v25 = v12;
          [v26 dataStalls];
          v28 = v27;
          isKnownGood = [durable isKnownGood];
          v13 = typeCopy;
          isHotSpot = [durable isHotSpot];
          *buf = 67110400;
          *v135 = fromCopy;
          *&v135[4] = 1024;
          *&v135[6] = v7;
          *v136 = 2048;
          *&v136[2] = v28;
          *v137 = 1024;
          *&v137[2] = isKnownGood;
          *&v137[6] = 1024;
          *&v137[8] = isHotSpot;
          *&v137[12] = 1024;
          *&v137[14] = typeCopy;
          _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Realtime LQM changed: new-lqm %d old-lqm %d data-stalls %.2f known-good %d hot-spot %d interface-type %u", buf, 0x2Au);

          v12 = v25;
        }

LABEL_14:
        v21 = 0;
        if (fromCopy != 100 || typeCopy != 5)
        {
          goto LABEL_50;
        }

        v126 = v12;
        currentLiveRoutePerf = [v14 currentLiveRoutePerf];
        [currentLiveRoutePerf dataStalls];
        v33 = v32;

        if (v33 == 0.0)
        {
          v39 = -1.0;
        }

        else
        {
          currentLiveRoutePerf2 = [v14 currentLiveRoutePerf];
          [currentLiveRoutePerf2 packetsIn];
          v36 = v35;
          currentLiveRoutePerf3 = [v14 currentLiveRoutePerf];
          [currentLiveRoutePerf3 packetsOut];
          v39 = (v36 + v38) / v33;
        }

        v40 = netepochsLogHandle;
        v125 = v15;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          loga = v40;
          primaryKey = [v14 primaryKey];
          currentLiveRoutePerf4 = [v14 currentLiveRoutePerf];
          [currentLiveRoutePerf4 dataStalls];
          v43 = v42;
          partial = [v14 partial];
          [partial dataStalls];
          v45 = v44;
          currentLiveRoutePerf5 = [v14 currentLiveRoutePerf];
          [currentLiveRoutePerf5 packetsIn];
          v47 = v46;
          partial2 = [v14 partial];
          [partial2 packetsIn];
          v49 = v48;
          currentLiveRoutePerf6 = [v14 currentLiveRoutePerf];
          [currentLiveRoutePerf6 packetsOut];
          v52 = v51;
          partial3 = [v14 partial];
          [partial3 packetsOut];
          v55 = v54;
          v56 = +[NetworkAnalyticsEngine mapRadioTechnologyTypeToString:](NetworkAnalyticsEngine, "mapRadioTechnologyTypeToString:", [v15 radioTechnology]);
          isLowInternetUL = [durable isLowInternetUL];
          v13 = typeCopy;
          isLowInternetDL = [durable isLowInternetDL];
          *buf = 138480387;
          *v135 = primaryKey;
          *&v135[8] = 2048;
          *v136 = v43;
          *&v136[8] = 2048;
          *v137 = v45;
          *&v137[8] = 2048;
          *&v137[10] = v47;
          v138 = 2048;
          v139 = v49;
          v140 = 2048;
          v141 = v52;
          v142 = 2048;
          v143 = v55;
          v144 = 2112;
          v145 = v56;
          v146 = 1024;
          v147 = isLowInternetUL;
          v148 = 1024;
          v149 = isLowInternetDL;
          v150 = 2048;
          v151 = v39;
          _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_DEFAULT, "Loaded LQM filters for %{private}@: data stalls(lrp/curr) = %f/%f, packetsIn(lrp/curr): %f/%f, packetsOut(lrp/curr): %f/%f, radio = %@, LIM(UL/DL) = (%d/%d), avgPacketsBetweenDataStalls: %.2f", buf, 0x68u);

          v15 = v125;
        }

        if (v39 >= 0.0 && v39 < 100.0 || -[NetworkAnalyticsEngine _isRadioTechnologySubpar:](selfCopy, "_isRadioTechnologySubpar:", [v15 radioTechnology]))
        {
          v59 = &loadedLqm[v13];
          *v59 = 50;
          v59[8] = 50;
          v60 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v135 = 50;
            _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, "Depressing both UL/DL loaded LQM to %d", buf, 8u);
          }

          v61 = 1;
        }

        else
        {
          if ([durable isLowInternetUL])
          {
            loadedLqm[v13] = 50;
            v62 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v63 = loadedLqm[v13];
              *buf = 67109120;
              *v135 = v63;
              _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "Depressing UL loaded LQM to %d", buf, 8u);
            }
          }

          if ([durable isLowInternetDL])
          {
            v64 = &loadedLqm[v13];
            v64[8] = 50;
            v65 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v66 = v64[8];
              *buf = 67109120;
              *v135 = v66;
              _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEFAULT, "Depressing DL loaded LQM to %d", buf, 8u);
            }
          }

          v61 = 0;
        }

        v132[0] = @"depressBothLQM";
        v123 = [MEMORY[0x277CCABB0] numberWithBool:v61];
        v133[0] = v123;
        v132[1] = @"depressBothLQMOld";
        v67 = MEMORY[0x277CCABB0];
        partial4 = [v14 partial];
        [partial4 dataStalls];
        v69 = v68 > 10.0 || -[NetworkAnalyticsEngine _isRadioTechnologySubpar:](selfCopy, "_isRadioTechnologySubpar:", [v15 radioTechnology]);
        log = [v67 numberWithInt:v69];
        v133[1] = log;
        v132[2] = @"isLowInternetUL";
        v117 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(durable, "isLowInternetUL")}];
        v133[2] = v117;
        v132[3] = @"isLowInternetDL";
        v115 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(durable, "isLowInternetDL")}];
        v133[3] = v115;
        v132[4] = @"oldLQM";
        v70 = [MEMORY[0x277CCABB0] numberWithInt:v7];
        v133[4] = v70;
        v132[5] = @"newLQM";
        v71 = [MEMORY[0x277CCABB0] numberWithInt:100];
        v133[5] = v71;
        v132[6] = @"newLoadedLQM";
        v124 = v14;
        if (v61 & 1) != 0 || ([durable isLowInternetDL] & 1) != 0 || (objc_msgSend(durable, "isLowInternetUL"))
        {
          v72 = 0;
          v73 = &unk_2847EFAB8;
        }

        else
        {
          v73 = [MEMORY[0x277CCABB0] numberWithInt:100];
          v72 = 1;
        }

        v133[6] = v73;
        v132[7] = @"interfaceType";
        v74 = [MEMORY[0x277D6B3E0] stringForFunctionalInterfaceType:5];
        v133[7] = v74;
        v132[8] = @"radioTechnology";
        v75 = +[NetworkAnalyticsEngine mapRadioTechnologyTypeToString:](NetworkAnalyticsEngine, "mapRadioTechnologyTypeToString:", [v125 radioTechnology]);
        v133[8] = v75;
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:9];

        if (v72)
        {
        }

        v77 = v76;
        v78 = AnalyticsSendEventLazy();
        v79 = netepochsLogHandle;
        v13 = typeCopy;
        if (v78)
        {
          v14 = v124;
          v15 = v125;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v135 = v77;
            v80 = "Posted loaded LQM event: %@";
            v81 = v79;
            v82 = OS_LOG_TYPE_DEFAULT;
            v83 = 12;
LABEL_48:
            _os_log_impl(&dword_23255B000, v81, v82, v80, buf, v83);
          }
        }

        else
        {
          v14 = v124;
          v15 = v125;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v80 = "Failed to post loaded LQM metric";
            v81 = v79;
            v82 = OS_LOG_TYPE_ERROR;
            v83 = 2;
            goto LABEL_48;
          }
        }

        v21 = 0;
        v12 = v126;
        goto LABEL_50;
      }
    }

    v21 = 1;
LABEL_50:
    if (recordsCopy)
    {
      if ((v21 & 1) == 0)
      {
        v84 = [durable valueForKey:@"isKnownGood"];
        v127 = v12;
        if (v84)
        {
          [recordsCopy setObject:v84 forKeyedSubscript:@"isKnownGood"];
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:null forKeyedSubscript:@"isKnownGood"];
        }

        partial5 = [v14 partial];
        v87 = [partial5 valueForKey:@"dataStalls"];
        if (v87)
        {
          [recordsCopy setObject:v87 forKeyedSubscript:@"dataStalls"];
        }

        else
        {
          null2 = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:null2 forKeyedSubscript:@"dataStalls"];
        }

        v89 = [durable valueForKey:@"isLowInternetUL"];
        if (v89)
        {
          [recordsCopy setObject:v89 forKeyedSubscript:@"isLowInternetUL"];
        }

        else
        {
          null3 = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:null3 forKeyedSubscript:@"isLowInternetUL"];
        }

        v91 = [durable valueForKey:@"isLowInternetDL"];
        if (v91)
        {
          [recordsCopy setObject:v91 forKeyedSubscript:@"isLowInternetDL"];
        }

        else
        {
          null4 = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:null4 forKeyedSubscript:@"isLowInternetDL"];
        }

        netSignature = [durable netSignature];
        if (netSignature)
        {
          netSignature2 = [durable netSignature];
          v95 = [netSignature2 description];
          [recordsCopy setObject:v95 forKeyedSubscript:@"netSignature"];
        }

        else
        {
          netSignature2 = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:netSignature2 forKeyedSubscript:@"netSignature"];
        }

        netSignatureV6 = [durable netSignatureV6];
        if (netSignatureV6)
        {
          netSignatureV62 = [durable netSignatureV6];
          v98 = [netSignatureV62 description];
          [recordsCopy setObject:v98 forKeyedSubscript:@"netSignatureV6"];
        }

        else
        {
          netSignatureV62 = [MEMORY[0x277CBEB68] null];
          [recordsCopy setObject:netSignatureV62 forKeyedSubscript:@"netSignatureV6"];
        }

        if (v14)
        {
          [v14 mapLOIToString];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v99 = ;
        v12 = v127;
        [recordsCopy setObject:v99 forKeyedSubscript:@"LOI"];

        v100 = +[NetworkAnalyticsEngine mapRadioTechnologyTypeToString:](NetworkAnalyticsEngine, "mapRadioTechnologyTypeToString:", [v15 radioTechnology]);
        [recordsCopy setObject:v100 forKeyedSubscript:@"radioTechnology"];

        if (typeCopy == 3)
        {
          v101 = [v15 valueForKey:@"lastReportedRxSignalStrength"];
          if (v101)
          {
            [recordsCopy setObject:v101 forKeyedSubscript:@"lastReportedRxSignalStrength"];
          }

          else
          {
            null5 = [MEMORY[0x277CBEB68] null];
            [recordsCopy setObject:null5 forKeyedSubscript:@"lastReportedRxSignalStrength"];
          }
        }
      }

      v103 = [MEMORY[0x277CCABB0] numberWithInt:fromCopy];
      [recordsCopy setObject:v103 forKeyedSubscript:@"LQM"];

      v104 = netepochsLogHandle;
      v13 = typeCopy;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *v135 = v14;
        *&v135[8] = 2048;
        *v136 = typeCopy;
        *&v136[8] = 2112;
        *v137 = recordsCopy;
        _os_log_impl(&dword_23255B000, v104, OS_LOG_TYPE_INFO, "Epoch: %@ (null for watchOS & Companion Link), loaded LQM audit record for interfaceType %ld: %@", buf, 0x20u);
      }
    }

    v105 = &loadedLqm[v13];
    v106 = v105[8];
    v107 = *v105;
    if (v106 <= v107)
    {
      v108 = v129;
    }

    else
    {
      v108 = v12;
    }

    if (v106 >= v107)
    {
      v109 = v107;
    }

    else
    {
      v109 = v106;
    }

    if (v109 != v108)
    {
      if (v21)
      {
        [v15 setLinkQuality:v109];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        linkQualityUpdateDelay[typeCopy] = -(realTimeLqmLastUpdated[typeCopy] - v111 * 1000.0);

        v112 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v113 = linkQualityUpdateDelay[typeCopy];
          *buf = 134218752;
          *v135 = typeCopy;
          *&v135[8] = 2048;
          *v136 = v113;
          *&v136[8] = 1024;
          *v137 = v108;
          *&v137[4] = 1024;
          *&v137[6] = v109;
          _os_log_impl(&dword_23255B000, v112, OS_LOG_TYPE_DEFAULT, "linkQuality updated, interface type = %ld, delay = %f ms, (old/new) = (%d/%d)", buf, 0x22u);
        }
      }

      else
      {
        [(NetworkAnalyticsEngine *)selfCopy _actUponLoadedLqmChangeFrom:v108 to:v109 onInterfaceType:typeCopy];
      }
    }

    goto LABEL_92;
  }

  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *v135 = typeCopy;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Unexpected interface type %u", buf, 8u);
  }

LABEL_92:
}

- (void)_trackRealTimeLqmLastUpdatedOnInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v12 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v6 = v5 * 1000.0;

  realTimeLqmLastUpdated[typeCopy] = v6;
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = typeCopy;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "realTimeLqm was last updated on interface type %ld at %f", &v8, 0x16u);
  }
}

- (void)clientTransactionsRelease
{
  activeEpochTransaction = [(NetworkAnalyticsEngine *)self activeEpochTransaction];

  if (activeEpochTransaction)
  {
    v4 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "stop holding os_transaction", v5, 2u);
    }

    self->xpcShutdown = 1;
    [(NetworkAnalyticsEngine *)self setActiveEpochTransaction:0];
  }
}

- (void)shutdown
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "network analytics engine: saving context for %p", &v4, 0xCu);
  }

  [(NetworkAnalyticsEngine *)self _flushAllJournalRecords];
  [(AnalyticsWorkspace *)self->super.workspace save];
}

- (id)_retrieveCellCarrierName
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = _CTServerConnectionCopyProviderNameUsingCarrierBundle();
  v3 = v2;
  v4 = HIDWORD(v2);
  if (HIDWORD(v2))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == 0;
  }

  if (!v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = v3;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCopyProviderNameUsingCarrierBundle returned with error(%d, %d)", buf, 0xEu);
    }
  }

  v7 = 0;

  return v7;
}

- (int64_t)_retrieveCellId
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _CTServerConnectionCellMonitorCopyCellInfo();
  v4 = v3;
  v5 = HIDWORD(v3);
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v9[0] = v4;
    LOWORD(v9[1]) = 1024;
    *(&v9[1] + 2) = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionCellMonitorCopyCellInfo failed with error(%d, %d)", buf, 0xEu);
  }

  [(NetworkAnalyticsEngine *)self _setRadioTechnology:0 forInterfaceType:5];
  return 0;
}

- (void)_retrieveCellId:(id)id
{
  idCopy = id;
  v5 = +[CoreTelephonyShim sharedInstance];
  queue = [(AnalyticsEngineCore *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__NetworkAnalyticsEngine__retrieveCellId___block_invoke;
  v8[3] = &unk_27898D988;
  v8[4] = self;
  v9 = idCopy;
  v7 = idCopy;
  [v5 copyCellInfoOnQueue:queue completion:v8];
}

void __42__NetworkAnalyticsEngine__retrieveCellId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "[CoreTelephonyClient copyCellInfo:completion:] failed with error %@", &v8, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) _processCTCellInfo:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (int64_t)_processCTCellInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke;
  aBlock[3] = &unk_27898D9B0;
  aBlock[4] = &v21;
  aBlock[5] = &v17;
  aBlock[6] = v25;
  v5 = _Block_copy(aBlock);
  legacyInfo = [infoCopy legacyInfo];
  if (!legacyInfo)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke_329;
    v14[3] = &unk_27898D9D8;
    v15 = v5;
    [legacyInfo enumerateObjectsUsingBlock:v14];
    v7 = v15;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = legacyInfo;
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
    v9 = v8;
    if (v8 && [v8 isEqualToString:*MEMORY[0x277CC3890]])
    {
      (*(v5 + 2))(v5, v7);
    }
  }

  else
  {
LABEL_9:
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412546;
      v28 = v11;
      v29 = 2112;
      v30 = legacyInfo;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unexpected object of class %@ returned as legacyInfo: %@", buf, 0x16u);
    }
  }

LABEL_11:

  [(NetworkAnalyticsEngine *)self _setRadioTechnology:*(v18 + 24) forInterfaceType:5];
  v12 = v22[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);

  return v12;
}

void __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3878]];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Finding RAT and cell id from cellDict: %@", &v17, 0xCu);
  }

  if (v4)
  {
    if ([v4 isEqualToString:*MEMORY[0x277CC38D0]])
    {
      v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3918]];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = 0;
          [v6 getBytes:&v17 range:{13, 3}];
          *(*(a1[4] + 8) + 24) = v17;
          *(*(a1[5] + 8) + 24) = 6;
        }
      }

      v7 = 0;
      goto LABEL_9;
    }

    if ([v4 isEqualToString:*MEMORY[0x277CC38C8]])
    {
      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3868]];
      if (!v7)
      {
        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      *(*(a1[4] + 8) + 24) = [v7 intValue];
      v8 = *(a1[5] + 8);
      v9 = 5;
LABEL_15:
      *(v8 + 24) = v9;
LABEL_9:

      goto LABEL_10;
    }

    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3870]];
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    Type = CFNumberGetType(v7);
    if (Type == kCFNumberSInt32Type)
    {
      v11 = (*(a1[6] + 8) + 24);
      v12 = v7;
      v13 = kCFNumberSInt32Type;
    }

    else
    {
      if (Type == kCFNumberSInt64Type)
      {
        CFNumberGetValue(v7, kCFNumberSInt64Type, (*(a1[4] + 8) + 24));
LABEL_24:
        if ([v4 isEqualToString:*MEMORY[0x277CC38E8]])
        {
          v14 = [v3 objectForKeyedSubscript:*MEMORY[0x277CC3898]];
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v14 intValue] > 0)
          {
            v15 = 10;
          }

          else
          {
            v15 = 2;
          }

          *(*(a1[5] + 8) + 24) = v15;

          goto LABEL_9;
        }

        if ([v4 isEqualToString:*MEMORY[0x277CC38F0]])
        {
          v8 = *(a1[5] + 8);
          v9 = 11;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC38E0]])
        {
          v8 = *(a1[5] + 8);
          v9 = 3;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC3900]])
        {
          v8 = *(a1[5] + 8);
          v9 = 4;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC38D8]])
        {
          v8 = *(a1[5] + 8);
          v9 = 7;
        }

        else if ([v4 isEqualToString:*MEMORY[0x277CC3908]])
        {
          v8 = *(a1[5] + 8);
          v9 = 8;
        }

        else
        {
          v16 = [v4 isEqualToString:*MEMORY[0x277CC38F8]];
          v8 = *(a1[5] + 8);
          if (v16)
          {
            v9 = 9;
          }

          else
          {
            v9 = 1;
          }
        }

        goto LABEL_15;
      }

      v11 = (*(a1[6] + 8) + 24);
      v12 = v7;
      v13 = kCFNumberIntType;
    }

    CFNumberGetValue(v12, v13, v11);
    *(*(a1[4] + 8) + 24) = *(*(a1[6] + 8) + 24);
    goto LABEL_24;
  }

LABEL_10:
}

void __45__NetworkAnalyticsEngine__processCTCellInfo___block_invoke_329(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
    v9 = v8;
    if (v8 && [v8 isEqualToString:*MEMORY[0x277CC3890]])
    {
      (*(*(a1 + 32) + 16))();
      *a4 = 1;
    }
  }

  else
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Unexpected object of class %@ found in legacyInfo array: %@", &v14, 0x16u);
    }
  }
}

- (void)_updateCellInternetStatus:(int)status pdpContext:(int)context
{
  v18 = *MEMORY[0x277D85DE8];
  if (status == -1)
  {
    PacketContextActiveByServiceType = _CTServerConnectionGetPacketContextActiveByServiceType();
    v6 = PacketContextActiveByServiceType;
    v7 = HIDWORD(PacketContextActiveByServiceType);
    if (HIDWORD(PacketContextActiveByServiceType))
    {
      v8 = 0;
    }

    else
    {
      v8 = PacketContextActiveByServiceType == 0;
    }

    if (!v8)
    {
      v9 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v16 = v6;
        *&v16[4] = 1024;
        *&v16[6] = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "_CTServerConnectionGetPacketContextActiveByServiceType returned with error(%d, %d)", buf, 0xEu);
      }
    }

    status = 0;
    *&context = 0;
  }

  self->cellInternetStatus = status;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"pdp_ip%d", *&context];
  cellInternetPDPContext = self->cellInternetPDPContext;
  self->cellInternetPDPContext = v10;

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->cellInternetPDPContext;
    cellInternetStatus = self->cellInternetStatus;
    *buf = 138412546;
    *v16 = v13;
    *&v16[8] = 1024;
    v17 = cellInternetStatus;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Cell Internet status updated, PDP context = %@, status = %d", buf, 0x12u);
  }
}

- (void)_cellNetworkChangeForInterface:(id)interface roamingEvent:(BOOL)event subscription:(id)subscription
{
  eventCopy = event;
  v34 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  subscriptionCopy = subscription;
  if (interfaceCopy)
  {
    *buf = 0;
    v29 = buf;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__9;
    v32 = __Block_byref_object_dispose__9;
    v33 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__9;
    v26[4] = __Block_byref_object_dispose__9;
    v27 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__NetworkAnalyticsEngine__cellNetworkChangeForInterface_roamingEvent_subscription___block_invoke;
    aBlock[3] = &unk_27898DA00;
    v23 = buf;
    v24 = v26;
    v25 = eventCopy;
    v21 = interfaceCopy;
    selfCopy = self;
    v10 = _Block_copy(aBlock);
    v11 = netepochsLogHandle;
    v12 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (subscriptionCopy)
    {
      if (v12)
      {
        *v19 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Cell network change on CoreTelephonyClient callback path", v19, 2u);
      }

      v13 = [subscriptionCopy objectForKeyedSubscript:@"carrierName"];
      v14 = *(v29 + 5);
      *(v29 + 5) = v13;

      v15 = [subscriptionCopy objectForKeyedSubscript:@"ctCellInfo"];
      v10[2](v10, [(NetworkAnalyticsEngine *)self _processCTCellInfo:v15]);
    }

    else
    {
      if (v12)
      {
        *v19 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Cell network change on dual SIM/modern hardware path", v19, 2u);
      }

      _retrieveCellCarrierName = [(NetworkAnalyticsEngine *)self _retrieveCellCarrierName];
      v18 = *(v29 + 5);
      *(v29 + 5) = _retrieveCellCarrierName;

      [(NetworkAnalyticsEngine *)self _retrieveCellId:v10];
    }

    _Block_object_dispose(v26, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = eventCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Cell network is no longer available, roaming = %d", buf, 8u);
    }

    [(NetworkAnalyticsEngine *)self _primaryKeyChange:0 interfaceName:0 interfaceType:5 roamingEvent:eventCopy];
    [(NetworkAnalyticsEngine *)self _setRadioTechnology:0 forInterfaceType:5];
  }
}

uint64_t __83__NetworkAnalyticsEngine__cellNetworkChangeForInterface_roamingEvent_subscription___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2 >= 1 && *(*(*(a1 + 48) + 8) + 40))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lld", *(*(*(a1 + 48) + 8) + 40), a2];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412803;
      v16 = v8;
      v17 = 2113;
      v18 = v9;
      v19 = 2048;
      v20 = a2;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unable to construct primary key on %@, carrier name = %{private}@, cell id = %lld", buf, 0x20u);
    }
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = *(a1 + 64);
    *buf = 138412803;
    v16 = v11;
    v17 = 2113;
    v18 = v12;
    v19 = 1024;
    LODWORD(v20) = v13;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Cell network changed: interface-name %@ primary-key %{private}@ roaming %d", buf, 0x1Cu);
  }

  return [*(a1 + 40) _primaryKeyChange:*(*(*(a1 + 56) + 8) + 40) interfaceName:*(a1 + 32) interfaceType:5 roamingEvent:*(a1 + 64)];
}

- (void)_retrieveICCID
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _CTServerConnectionCopySIMIdentity();
  v4 = v3;
  v5 = HIDWORD(v3);
  if (HIDWORD(v3))
  {
    v6 = 0;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "_CTServerConnectionCopySIMIdentity returned with error(%d, %d)", buf, 0xEu);
    }
  }

  v8 = 0;
  [(NetworkAnalyticsEngine *)self _updateICCID:v8];
}

- (void)_updateICCID:(id)d
{
  dCopy = d;
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NetworkAnalyticsEngine__updateICCID___block_invoke;
  v7[3] = &unk_27898A7D0;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __39__NetworkAnalyticsEngine__updateICCID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:*(*(a1 + 40) + 448)] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 40) + 448), *(a1 + 32));
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 40) + 448);
      *buf = 138477827;
      v11 = v3;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Current data SIM ICCID changed to %{private}@", buf, 0xCu);
    }

    v8 = @"ICCID";
    v4 = *(*(a1 + 40) + 448);
    v5 = v4;
    if (!v4)
    {
      v5 = [MEMORY[0x277CBEB68] null];
    }

    v9 = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    if (!v4)
    {
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"kNotificationCurrentICCIDChange" object:*(a1 + 40) userInfo:v6];
  }
}

- (void)processCellLinkStateNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = notificationCopy;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB link state notification payload = %@", &v13, 0xCu);
      }

      v20.location = 1;
      v20.length = 1;
      CFDataGetBytes(notificationCopy, v20, &cellStateChangeBitmask);
      if (cellStateChangeBitmask)
      {
        v6 = 1;
        v21.location = 2;
        v21.length = 1;
        CFDataGetBytes(notificationCopy, v21, &cellLqmState);
        if ([(NetworkAnalyticsEngine *)self _getCellInternetStatus])
        {
          goto LABEL_10;
        }

        v12 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = notificationCopy;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "eLQM: Not consuming LQM as cell Internet is down: payload = %@", &v13, 0xCu);
        }
      }

      v6 = 0;
LABEL_10:
      if ((cellStateChangeBitmask & 2) != 0 && [(NetworkAnalyticsEngine *)self _getCellInternetStatus])
      {
        v10 = 1;
        v22.location = 3;
        v22.length = 1;
        CFDataGetBytes(notificationCopy, v22, &cellRrcState);
      }

      else
      {
        v10 = 0;
      }

      if ((cellStateChangeBitmask & 4) != 0)
      {
        v23.location = 4;
        v23.length = 1;
        CFDataGetBytes(notificationCopy, v23, &cellInterfaceState);
      }

      else if ((v6 | v10) != 1)
      {
LABEL_20:
        if (v10)
        {
          [(NetworkAnalyticsEngine *)self handleRRCChange];
        }

        if (v6)
        {
          [(NetworkAnalyticsEngine *)self handleLQMChange];
        }

        goto LABEL_24;
      }

      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138413058;
        v14 = notificationCopy;
        v15 = 1024;
        *v16 = cellLqmState;
        *&v16[4] = 1024;
        *&v16[6] = cellRrcState;
        v17 = 1024;
        v18 = cellInterfaceState;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "eLQM: Updated cell states (payload = %@): (LQM = %d, RRC = %d, INTF = %d)", &v13, 0x1Eu);
      }

      goto LABEL_20;
    }
  }

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v13 = 134218242;
    v14 = notificationCopy;
    v15 = 2112;
    *v16 = objc_opt_class();
    v9 = *v16;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "eLQM: Received BB link state notification payload %p or unexpected class %@", &v13, 0x16u);
  }

LABEL_24:
}

- (void)processCellLinkFingerprintNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = notificationCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB link fingerprint notification payload = %@", buf, 0xCu);
    }

    objc_storeStrong(&prevCellFpTimeStamp, currCellFpTimeStamp);
    date = [MEMORY[0x277CBEAA8] date];
    v7 = currCellFpTimeStamp;
    currCellFpTimeStamp = date;

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], notificationCopy);
    queue = [(AnalyticsEngineCore *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__NetworkAnalyticsEngine_processCellLinkFingerprintNotification___block_invoke;
    v12[3] = &unk_27898DA28;
    v12[4] = self;
    v12[5] = buf;
    dispatch_async(queue, v12);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      *buf = 134218242;
      *&buf[4] = notificationCopy;
      *&buf[12] = 2112;
      *&buf[14] = objc_opt_class();
      v11 = *&buf[14];
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "eLQM: Received BB link fingerprint notification payload %p or unexpected class %@", buf, 0x16u);
    }
  }
}

void __65__NetworkAnalyticsEngine_processCellLinkFingerprintNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _extractCellLinkFingerprintFrom:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)processCellTrafficClassNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v23 = notificationCopy;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB traffic class enable/disable notification: payload = %@", buf, 0xCu);
      }

      Length = CFDataGetLength(notificationCopy);
      if (Length == 8)
      {
        *buffer = 0;
        v26.location = 4;
        v26.length = 4;
        CFDataGetBytes(notificationCopy, v26, buffer);
        cellTrafficClassState = *buffer != 0;
        v7 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
LABEL_14:
          v20 = @"State";
          v15 = [MEMORY[0x277CCABB0] numberWithBool:cellTrafficClassState != 0];
          v21 = v15;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

          v17 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v23 = @"kNotificationCellTrafficClassReportCapable";
            *&v23[8] = 1024;
            LODWORD(v24) = cellTrafficClassState;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "eLQM: Posting SF notification with label = %@, cellTrafficClassState = %d", buf, 0x12u);
          }

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"kNotificationCellTrafficClassReportCapable" object:self userInfo:v16];

          goto LABEL_17;
        }

        *buf = 67109376;
        *v23 = *buffer;
        *&v23[4] = 1024;
        *&v23[6] = cellTrafficClassState;
        v8 = "eLQM: Payload size is 8, second word %d, cellTrafficClassState %d";
        v9 = v7;
      }

      else
      {
        v13 = Length;
        if (Length < 2)
        {
          goto LABEL_14;
        }

        v27.location = 1;
        v27.length = 1;
        CFDataGetBytes(notificationCopy, v27, &cellTrafficClassState);
        v14 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = 67109376;
        *v23 = v13;
        *&v23[4] = 1024;
        *&v23[6] = cellTrafficClassState;
        v8 = "eLQM: Payload size is %d, cellTrafficClassState %d";
        v9 = v14;
      }

      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, v8, buf, 0xEu);
      goto LABEL_14;
    }
  }

  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    *buf = 134218242;
    *v23 = notificationCopy;
    *&v23[8] = 2112;
    v24 = objc_opt_class();
    v12 = v24;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "eLQM: Received BB traffic class enable/disable notification payload %p or unexpected class %@", buf, 0x16u);
  }

LABEL_17:
}

- (void)processCellDataStallNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v16 = notificationCopy;
        _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB data stall enable/disable notification: payload = %@", buf, 0xCu);
      }

      Length = CFDataGetLength(notificationCopy);
      if (Length == 8)
      {
        *buffer = 0;
        v19.location = 4;
        v19.length = 4;
        CFDataGetBytes(notificationCopy, v19, buffer);
        cellDataStallState = *buffer != 0;
        v6 = netepochsLogHandle;
        if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

        *buf = 67109376;
        *v16 = *buffer;
        *&v16[4] = 1024;
        *&v16[6] = cellDataStallState;
        v7 = "eLQM: Payload size is 8, second word %d, cellDataStallState %d";
        v8 = v6;
      }

      else
      {
        v12 = Length;
        if (Length < 2 || (v20.location = 1, v20.length = 1, CFDataGetBytes(notificationCopy, v20, &cellDataStallState), v13 = netepochsLogHandle, !os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO)))
        {
LABEL_14:
          if (trafficClassVersionInUse == 1)
          {
            trafficClassVersionInUse = 2;
            tcsBwInfo = 2;
            trafficClassStructureSize = 28;
          }

          goto LABEL_16;
        }

        *buf = 67109376;
        *v16 = v12;
        *&v16[4] = 1024;
        *&v16[6] = cellDataStallState;
        v7 = "eLQM: Payload size is %d, cellDataStallState %d";
        v8 = v13;
      }

      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, v7, buf, 0xEu);
      goto LABEL_14;
    }
  }

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    *buf = 134218242;
    *v16 = notificationCopy;
    *&v16[8] = 2112;
    v17 = objc_opt_class();
    v11 = v17;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "eLQM: Received BB data stall enable/disable notification payload %p or unexpected class %@", buf, 0x16u);
  }

LABEL_16:
}

- (void)processCellHighThroughputState:(id)state
{
  v17[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = cellHighThroughputState;
  if ([stateCopy unsignedShortValue] == v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 67109120;
      LODWORD(v13) = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "eLQM: Ignoring duplicate high throughput notification of value %d", &v12, 8u);
    }
  }

  else
  {
    cellHighThroughputState = [stateCopy unsignedShortValue];
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      LODWORD(v13) = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "eLQM: Processing BB high throughput enable/disable notification: high throughput state = %d", &v12, 8u);
    }

    trafficClassVersionInUse = 3;
    tcsBwInfo = 3;
    trafficClassStructureSize = 44;
    if (cellHighThroughputState != 1)
    {
      dword_2814D2FF8 = 0;
    }

    v16 = @"State";
    v8 = [MEMORY[0x277CCABB0] numberWithShort:cellHighThroughputState];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = @"kNotificationCellThroughputAdvisoryCapable";
      v14 = 1024;
      v15 = cellHighThroughputState;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "eLQM: Posting throughput advisory  notification with label = %@, cellHighThroughputState = %d", &v12, 0x12u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kNotificationCellThroughputAdvisoryCapable" object:self userInfo:v9];
  }
}

- (void)processCellDataTransferTimeNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20.location = 3;
      v20.length = 1;
      CFDataGetBytes(notificationCopy, v20, &cellEstTransferTimeConfidence);
      v21.location = 4;
      v21.length = 4;
      CFDataGetBytes(notificationCopy, v21, &cellPayloadInfoULKB);
      v22.location = 8;
      v22.length = 4;
      CFDataGetBytes(notificationCopy, v22, &cellPayloadInfoDLKB);
      v23.location = 12;
      v23.length = 4;
      CFDataGetBytes(notificationCopy, v23, &cellEstTransferTimeULSecs);
      v24.location = 16;
      v24.length = 4;
      CFDataGetBytes(notificationCopy, v24, &cellEstTransferTimeDLSecs);
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138413570;
        v10 = notificationCopy;
        v11 = 1024;
        *v12 = cellPayloadInfoULKB;
        *&v12[4] = 1024;
        *&v12[6] = cellPayloadInfoDLKB;
        v13 = 1024;
        v14 = cellEstTransferTimeULSecs;
        v15 = 1024;
        v16 = cellEstTransferTimeDLSecs;
        v17 = 1024;
        v18 = cellEstTransferTimeConfidence;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB data transfer time notification: payload = %@, UL/DL = (%u, %u) KB, transfer time = (%u, %u) sec, confidence = %u", &v9, 0x2Au);
      }

      queue = [(AnalyticsEngineCore *)self queue];
      dispatch_async(queue, &__block_literal_global_351);
      goto LABEL_8;
    }
  }

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    queue = v7;
    v9 = 134218242;
    v10 = notificationCopy;
    v11 = 2112;
    *v12 = objc_opt_class();
    v8 = *v12;
    _os_log_impl(&dword_23255B000, queue, OS_LOG_TYPE_ERROR, "eLQM: Received BB data transfer time notification payload %p or unexpected class %@", &v9, 0x16u);

LABEL_8:
  }
}

void __66__NetworkAnalyticsEngine_processCellDataTransferTimeNotification___block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  if (cellEstTransferTimeCompletionBlock)
  {
    v0 = _Block_copy(cellEstTransferTimeCompletionBlock);
    v1 = cellEstTransferTimeCompletionBlock;
    cellEstTransferTimeCompletionBlock = 0;

    v2 = cellEstTransferTimeRequestTimeStamp;
    cellEstTransferTimeRequestTimeStamp = 0;

    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = _Block_copy(v0);
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Invoking completion block %p", &v7, 0xCu);
    }

    v0[2](v0);
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "eLQM: Couldn't invoke completion block", &v7, 2u);
    }
  }
}

- (void)processCellDataTransferTimeEnabledNotification:(id)notification
{
  v12 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = notificationCopy;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB dynamic support for transfer time notification: payload = %@", &v8, 0xCu);
    }

    v13.location = 1;
    v13.length = 1;
    CFDataGetBytes(notificationCopy, v13, cellEstTransferTimeSupportedStatus);
  }

  else
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v8 = 134218242;
      v9 = notificationCopy;
      v10 = 2112;
      v11 = objc_opt_class();
      v7 = v11;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "eLQM: Received BB data transfer time enabled notification payload %p or unexpected class %@", &v8, 0x16u);
    }
  }
}

- (void)processCellLinkPowerCostNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = notificationCopy;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost: payload = %@", buf, 0xCu);
    }

    *buffer = 0;
    if (CFDataGetLength(notificationCopy) < 3)
    {
      v11 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        Length = CFDataGetLength(notificationCopy);
        *buf = 134217984;
        v17 = Length;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost, but not enough data in it (%ld bytes)", buf, 0xCu);
      }
    }

    else
    {
      v21.location = 1;
      v21.length = 1;
      CFDataGetBytes(notificationCopy, v21, buffer);
      v22.location = 2;
      v22.length = 1;
      CFDataGetBytes(notificationCopy, v22, &buffer[1]);
      v5 = [NetworkStateRelay getStateRelayFor:5];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
        objc_sync_enter(v7);
        [v7 setPowerCostDL:buffer[1]];
        [v7 setPowerCostUL:buffer[0]];
        objc_sync_exit(v7);
      }

      else
      {
        v14 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "eLQM: Received BB power cost, but no engine to process it", buf, 2u);
        }
      }
    }
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      *buf = 134218242;
      v17 = notificationCopy;
      v18 = 2112;
      v19 = objc_opt_class();
      v10 = v19;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "eLQM: Received BB power cost notification payload %p or unexpected class %@", buf, 0x16u);
    }
  }
}

- (void)handleRRCChange
{
  v25[3] = *MEMORY[0x277D85DE8];
  v24[0] = @"State";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:cellRrcState != 0];
  v25[0] = v3;
  v24[1] = @"Detail";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:cellStateChangeBitmask == 7];
  v25[1] = v4;
  v24[2] = @"StateChangeTimestamp";
  v5 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v7 = [v5 numberWithDouble:?];
  v25[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v17 = @"kNotificationCellLinkStateChange";
    v18 = 1024;
    v19 = cellRrcState;
    v20 = 1024;
    v21 = cellStateChangeBitmask;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "eLQM: Posting RRC change notification with label = %@, state = %d, bitmask = %d, info = %@", buf, 0x22u);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"kNotificationCellLinkStateChange" object:self userInfo:v8];

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NetworkAnalyticsEngine_handleRRCChange__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);

  v12 = [NetworkStateRelay getStateRelayFor:5];
  [v12 setCellRrcConnected:cellRrcState != 0];
  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    if (cellRrcState)
    {
      v14 = "connected";
    }

    else
    {
      v14 = "idle";
    }

    *buf = 136315138;
    v17 = v14;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "cellRrcConnected updated to %s", buf, 0xCu);
  }
}

- (void)handleLQMChange
{
  v3 = dword_2814D3014;
  dword_2814D3014 = cellLqmState;
  [(NetworkAnalyticsEngine *)self _trackRealTimeLqmLastUpdatedOnInterfaceType:5];
  queue = [(AnalyticsEngineCore *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NetworkAnalyticsEngine_handleLQMChange__block_invoke;
  v5[3] = &unk_27898D8C8;
  v5[4] = self;
  v7 = 5;
  v6 = v3;
  dispatch_async(queue, v5);
}

void __41__NetworkAnalyticsEngine_handleLQMChange__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:5];
  if (v2)
  {
    v3 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 44);
      v5 = *(a1 + 40);
      v9 = 134218496;
      v10 = v4;
      v11 = 1024;
      v12 = v5;
      v13 = 1024;
      v14 = cellLqmState;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM upon eLQM notification on interface type %ld, LQM(old/new) = (%d/%d)", &v9, 0x18u);
    }

    [*(a1 + 32) _computeAndApplyLoadedLqmFrom:cellLqmState oldLqm:*(a1 + 40) onInterfaceType:*(a1 + 44)];
  }

  else
  {
    pendedLqm[*(a1 + 44)] = *(a1 + 40);
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 44);
      v8 = *(a1 + 40);
      v9 = 134218496;
      v10 = v7;
      v11 = 1024;
      v12 = v8;
      v13 = 1024;
      v14 = cellLqmState;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Epoch is nil upon eLQM notification, defer computing loaded LQM on interface type %ld, LQM(pended/new) = (%d/%d)", &v9, 0x18u);
    }
  }
}

- (void)resetCellStatesForXCTests
{
  cellLqmState = 0;
  cellRrcState = 0;
  cellInterfaceState = 0;
  cellTrafficClassState = 0;
  cellEstTransferTimeSupportedStatus[0] = 0;
  v2 = prevCellFpTimeStamp;
  prevCellFpTimeStamp = 0;

  v3 = currCellFpTimeStamp;
  currCellFpTimeStamp = 0;

  v4 = [NetworkStateRelay getStateRelayFor:5];
  [v4 setPowerCostUL:255];
  [v4 setPowerCostDL:255];
}

- (void)_retrieveDNSServersForEpoch:(id)epoch
{
  v37 = *MEMORY[0x277D85DE8];
  epochCopy = epoch;
  interfaceName = [epochCopy interfaceName];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = interfaceName;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Determine if %@ has DNS server", buf, 0xCu);
  }

  v6 = dns_configuration_copy();
  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v34 = interfaceName;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "learning DNS servers for %@ from dns_config", buf, 0xCu);
    }

    selfCopy = self;
    hasDNS = [epochCopy hasDNS];
    [hasDNS removeAllObjects];

    if (*(v6 + 12) < 1)
    {
      v30 = 0;
    }

    else
    {
      v10 = 0;
      v30 = 0;
      do
      {
        v11 = *(*(v6 + 16) + 8 * v10);
        if (v11)
        {
          if (*(v11 + 88))
          {
            v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v11 + 88)];
            v13 = [interfaceName isEqualToString:v12];

            if (v13)
            {
              v14 = *(v11 + 8);
              if (v14 >= 1)
              {
                for (i = 0; i < v14; ++i)
                {
                  v16 = *(*(v11 + 12) + 8 * i);
                  if (v16)
                  {
                    v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v16 length:*v16];
                    v32 = 0;
                    v18 = validateSockAddrToString(v17, 0, &v32);
                    v19 = v32;

                    if (v18 && [(__CFString *)v19 length])
                    {
                      hasDNS2 = [epochCopy hasDNS];
                      [hasDNS2 addObject:v19];

                      LOBYTE(hasDNS2) = is_directly_reachable_address(v16);
                      v21 = netepochsLogHandle;
                      v22 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
                      if (hasDNS2)
                      {
                        if (v22)
                        {
                          *buf = 138412547;
                          v34 = interfaceName;
                          v35 = 2113;
                          v36 = v19;
                          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "learning that %@ has DNS server over local route: %{private}@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        if (v22)
                        {
                          *buf = 138412547;
                          v34 = interfaceName;
                          v35 = 2113;
                          v36 = v19;
                          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "learning that %@ has DNS server over default route: %{private}@", buf, 0x16u);
                        }

                        v30 = 1;
                      }
                    }

                    v14 = *(v11 + 8);
                  }
                }
              }
            }
          }
        }

        ++v10;
      }

      while (v10 < *(v6 + 12));
    }

    hasDNS3 = [epochCopy hasDNS];
    v24 = [hasDNS3 count];

    if (v24)
    {
      if ([epochCopy oncell])
      {
        v25 = 5;
      }

      else
      {
        v25 = 3;
      }

      v26 = [NetworkStateRelay getStateRelayFor:v25];
      [v26 setDnsOut:0];
      if (v30)
      {
        [v26 setInternetDnsOut:0];
      }
    }

    [epochCopy setHasInternetDNS:v30 & 1];
    [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
    v27 = +[NDFCoreShim sharedInstance];
    hasDNS4 = [epochCopy hasDNS];
    [v27 noteDNSConfigurationWithServers:hasDNS4 forWiFi:{objc_msgSend(epochCopy, "oncell") ^ 1}];

    dns_configuration_free();
  }

  else if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "dns_config is NULL", buf, 2u);
  }
}

+ (void)updateLOI:(int64_t)i forInterfaceType:(unsigned __int8)type
{
  v5 = [NetworkStateRelay getStateRelayFor:type];
  if (v5)
  {
    v6 = v5;
    [v5 setLoi:i];
    v5 = v6;
  }
}

+ (void)refreshLOIForInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v4 = +[NetworkAnalyticsEngine sharedInstance];
  [v4 _refreshLOIForInterfaceType:typeCopy];
}

- (void)_refreshLOIForInterfaceType:(unsigned __int8)type
{
  v5 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:?];
  if (v5)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__NetworkAnalyticsEngine__refreshLOIForInterfaceType___block_invoke;
    v7[3] = &__block_descriptor_33_e8_v16__0q8l;
    typeCopy = type;
    [v5 refreshLOIOnQueue:queue reply:v7];
  }
}

void __54__NetworkAnalyticsEngine__refreshLOIForInterfaceType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [NetworkStateRelay getStateRelayFor:*(a1 + 32)];
  [v3 setLoi:a2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898D090;
  selfCopy = self;
  contextCopy = context;
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, block);
}

void __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v124 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isEqual:@"path"])
  {
    v2 = *(a1 + 64);
    if ((v2 - 6) <= 0xFFFFFFFA)
    {
      v3 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v4 = *(a1 + 64);
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        *buf = 134218498;
        v117 = v4;
        v118 = 2112;
        v119 = v5;
        v120 = 2112;
        v121 = v6;
        _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Unexpected context %p, object %@, change %@", buf, 0x20u);
      }

      return;
    }

    v10 = *(a1 + 40);
    v99 = v10;
    if (v10 && ([v10 path], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 status];
      v98 = v12;
      if (v13 == 1)
      {
        v14 = [v12 interface];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 interfaceName];
          v17 = [v15 interfaceIndex];
          v18 = [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterface:v15];
          v19 = [v12 isConstrained];
          v96 = [v12 isExpensive];
          LODWORD(v97) = [v12 supportsIPv4];
          HIDWORD(v97) = [v12 supportsIPv6];
          v20 = v17;
        }

        else
        {
          v96 = 0;
          v19 = 0;
          v97 = 0;
          v18 = 0;
          v16 = 0;
          v20 = -1;
        }

        v21 = 1;
LABEL_19:
        v22 = netepochsLogHandle;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = *(off_27898DEF0 + (((v2 << 32) - 0x100000000) >> 29));
          if (v21 > 3)
          {
            v24 = @"NWPath-value-unknown";
          }

          else
          {
            v24 = off_27898DF18[v21];
          }

          *buf = 138413058;
          v117 = v23;
          v118 = 2112;
          v119 = v24;
          v120 = 2112;
          v121 = v16;
          v122 = 1024;
          v123 = v20;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "NWPath: %@  %@   interfaceName %@ index %d", buf, 0x26u);
        }

        v102 = [NetworkStateRelay getStateRelayFor:5];
        v101 = [NetworkStateRelay getStateRelayFor:3];
        v25 = [NetworkStateRelay getStateRelayFor:2];
        v26 = [NetworkStateRelay getStateRelayFor:7];
        v27 = v26;
        v100 = v26;
        if (v2 == 3 && v21 != 1)
        {
          [v25 setActive:0];
          v114 = @"State";
          v115 = MEMORY[0x277CBEC28];
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
          v29 = [MEMORY[0x277CCAB98] defaultCenter];
          [v29 postNotificationName:@"kNotificationNewConnectivityEpochWired" object:*(a1 + 56) userInfo:v28];

          dword_2814D3008 = -2;
          dword_2814D302C = -2;
          dword_2814D304C = -2;
          v30 = v25;
LABEL_30:
          [v30 setLinkQuality:4294967294];
LABEL_31:

          v32 = v16;
LABEL_32:

          return;
        }

        if (v2 == 4 && v21 != 1)
        {
          [v26 setInterfaceName:0];
          [v27 setActive:0];
          v112 = @"State";
          v113 = MEMORY[0x277CBEC28];
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          [v31 postNotificationName:@"kNotificationNewConnectivityEpochCompanionLink" object:*(a1 + 56) userInfo:v28];

          dword_2814D301C = -2;
          dword_2814D3040 = -2;
          dword_2814D3060 = -2;
          v30 = v27;
          goto LABEL_30;
        }

        v32 = v16;
        if (!v21)
        {
          goto LABEL_32;
        }

        if (v2 > 2)
        {
          if (v2 != 3)
          {
            if (v2 == 4)
            {
              v33 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v117 = v16;
                _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "companion link interface change to %@", buf, 0xCu);
              }

              [v100 setInterfaceName:v16];
              [v100 setInterfaceIndex:v20];
              [v100 setConstrained:v19];
              [v100 setExpensive:v96];
              [v100 setSupportsIPv4:v97];
              [v100 setSupportsIPv6:HIDWORD(v97)];
              [v100 setActive:1];
              v108 = @"State";
              v109 = MEMORY[0x277CBEC38];
              v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
              v35 = [MEMORY[0x277CCAB98] defaultCenter];
              [v35 postNotificationName:@"kNotificationNewConnectivityEpochCompanionLink" object:*(a1 + 56) userInfo:v34];

              valuePtr = -1;
              if (v16)
              {
                v36 = *MEMORY[0x277CE16B0];
                NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], v16, *MEMORY[0x277CE16B0]);
                if (NetworkInterfaceEntity)
                {
                  v38 = NetworkInterfaceEntity;
                  v39 = SCDynamicStoreCopyValue(_SCDynamicStore, NetworkInterfaceEntity);
                  v40 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v117 = v39;
                    v118 = 2112;
                    v119 = v38;
                    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
                  }

                  CFRelease(v38);
                  if (v39)
                  {
                    v41 = CFGetTypeID(v39);
                    if (v41 == CFDictionaryGetTypeID())
                    {
                      Value = CFDictionaryGetValue(v39, v36);
                      if (Value)
                      {
                        v43 = Value;
                        v44 = CFGetTypeID(Value);
                        if (v44 == CFNumberGetTypeID())
                        {
                          CFNumberGetValue(v43, kCFNumberIntType, &valuePtr);
                        }
                      }
                    }

                    CFRelease(v39);
                  }

                  goto LABEL_101;
                }

                v81 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v117 = v16;
                  v118 = 2112;
                  v119 = v36;
                  v74 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
                  v75 = v81;
                  v76 = OS_LOG_TYPE_DEFAULT;
                  v77 = 22;
                  goto LABEL_100;
                }
              }

              else
              {
                v73 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v74 = "retrieve_lqm_for_interface is called with nil ifName";
                  v75 = v73;
                  v76 = OS_LOG_TYPE_ERROR;
                  v77 = 2;
LABEL_100:
                  _os_log_impl(&dword_23255B000, v75, v76, v74, buf, v77);
                }
              }

LABEL_101:
              dword_2814D301C = valuePtr;
              dword_2814D3040 = valuePtr;
              dword_2814D3060 = valuePtr;
              v80 = v100;
LABEL_102:
              [v80 setLinkQuality:?];

              goto LABEL_32;
            }

            if (v18 <= 2)
            {
              if (v18)
              {
                if (v18 != 2)
                {
LABEL_109:
                  v86 = netepochsLogHandle;
                  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v117 = v16;
                    v118 = 2048;
                    v119 = v18;
                    _os_log_impl(&dword_23255B000, v86, OS_LOG_TYPE_DEFAULT, "primary interface change to %@, type %ld", buf, 0x16u);
                  }

                  v87 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:v18];
                  if (v18 == 7)
                  {
                    v106[0] = @"Detail";
                    v88 = [MEMORY[0x277CCABB0] numberWithInteger:v87];
                    v106[1] = @"kNotificationNewConnectivityEpochCompanionLink";
                    v107[0] = v88;
                    v107[1] = MEMORY[0x277CBEC38];
                    v89 = MEMORY[0x277CBEAC0];
                    v90 = v107;
                    v91 = v106;
                    v92 = 2;
                  }

                  else
                  {
                    v104 = @"Detail";
                    v88 = [MEMORY[0x277CCABB0] numberWithInteger:v87];
                    v105 = v88;
                    v89 = MEMORY[0x277CBEAC0];
                    v90 = &v105;
                    v91 = &v104;
                    v92 = 1;
                  }

                  v28 = [v89 dictionaryWithObjects:v90 forKeys:v91 count:v92];

                  v93 = runningRNFTurbo;
                  if (v93 != +[CellFallbackHandler turboRNF])
                  {
                    __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(a1);
                  }

                  v94 = [MEMORY[0x277CCAB98] defaultCenter];
                  [v94 postNotificationName:@"kNotificationNewPrimaryInterface" object:*(a1 + 56) userInfo:v28];

                  v95 = [MEMORY[0x277CCAB98] defaultCenter];
                  [v95 postNotificationName:@"stateRelay" object:*(a1 + 56) userInfo:0];

                  goto LABEL_31;
                }

                [v102 setPrimary:0];
                [v101 setPrimary:0];
                v66 = v25;
                v67 = 1;
                goto LABEL_107;
              }

              [v102 setPrimary:0];
              v82 = v101;
              v83 = 0;
            }

            else
            {
              if (v18 != 3)
              {
                if (v18 != 7)
                {
                  if (v18 == 5)
                  {
                    [v102 setPrimary:1];
                    [v101 setPrimary:0];
                    [v25 setPrimary:0];
                    [v100 setPrimary:0];
                    v56 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v57 = *(a1 + 56);
                      v58 = v56;
                      v59 = [v57 _getCellInternetStatus];
                      v60 = "";
                      if (!v59)
                      {
                        v60 = "not ";
                      }

                      *buf = 136315394;
                      v117 = v60;
                      v118 = 2112;
                      v119 = v16;
                      _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEFAULT, "Cellular Internet is %sactive on %@", buf, 0x16u);
                    }
                  }

                  goto LABEL_109;
                }

                [v102 setPrimary:0];
                [v101 setPrimary:0];
                [v25 setPrimary:0];
                v84 = v100;
                v85 = 1;
                goto LABEL_108;
              }

              [v102 setPrimary:0];
              v82 = v101;
              v83 = 1;
            }

            [v82 setPrimary:v83];
            v66 = v25;
            v67 = 0;
LABEL_107:
            [v66 setPrimary:v67];
            v84 = v100;
            v85 = 0;
LABEL_108:
            [v84 setPrimary:v85];
            goto LABEL_109;
          }

          v45 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v117 = v16;
            _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "wired interface change to %@", buf, 0xCu);
          }

          [v25 setInterfaceName:v16];
          [v25 setInterfaceIndex:v20];
          [v25 setConstrained:v19];
          [v25 setExpensive:v96];
          [v25 setSupportsIPv4:v97];
          [v25 setSupportsIPv6:HIDWORD(v97)];
          [v25 setActive:1];
          v110 = @"State";
          v111 = MEMORY[0x277CBEC38];
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v46 = [MEMORY[0x277CCAB98] defaultCenter];
          [v46 postNotificationName:@"kNotificationNewConnectivityEpochWired" object:*(a1 + 56) userInfo:v34];

          valuePtr = -1;
          if (v16)
          {
            v47 = *MEMORY[0x277CE16B0];
            v48 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], v16, *MEMORY[0x277CE16B0]);
            if (v48)
            {
              v49 = v48;
              v50 = SCDynamicStoreCopyValue(_SCDynamicStore, v48);
              v51 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v117 = v50;
                v118 = 2112;
                v119 = v49;
                _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
              }

              CFRelease(v49);
              if (v50)
              {
                v52 = CFGetTypeID(v50);
                if (v52 == CFDictionaryGetTypeID())
                {
                  v53 = CFDictionaryGetValue(v50, v47);
                  if (v53)
                  {
                    v54 = v53;
                    v55 = CFGetTypeID(v53);
                    if (v55 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v54, kCFNumberIntType, &valuePtr);
                    }
                  }
                }

                CFRelease(v50);
              }

              goto LABEL_94;
            }

            v78 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v117 = v16;
              v118 = 2112;
              v119 = v47;
              v69 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
              v70 = v78;
              v71 = OS_LOG_TYPE_DEFAULT;
              v72 = 22;
              goto LABEL_93;
            }
          }

          else
          {
            v68 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v69 = "retrieve_lqm_for_interface is called with nil ifName";
              v70 = v68;
              v71 = OS_LOG_TYPE_ERROR;
              v72 = 2;
LABEL_93:
              _os_log_impl(&dword_23255B000, v70, v71, v69, buf, v72);
            }
          }

LABEL_94:
          if (valuePtr == -1)
          {
            v79 = 100;
          }

          else
          {
            v79 = valuePtr;
          }

          dword_2814D3008 = v79;
          dword_2814D302C = v79;
          dword_2814D304C = v79;
          v80 = v25;
          goto LABEL_102;
        }

        if (v2 == 1)
        {
          [v101 setInterfaceName:v16];
          [v101 setInterfaceIndex:v20];
          [v101 setConstrained:v19];
          [v101 setExpensive:v96];
          [v101 setSupportsIPv4:v97];
          [v101 setSupportsIPv6:HIDWORD(v97)];
          [v101 setNoCostAdvantage:{objc_msgSend(v101, "expensive") ^ objc_msgSend(v102, "expensive") ^ 1}];
          [*(a1 + 56) _wifiNetworkChange:v16];
          goto LABEL_32;
        }

        [v102 setInterfaceName:v16];
        [v102 setInterfaceIndex:v20];
        [v102 setConstrained:v19];
        [v102 setExpensive:v96];
        [v102 setSupportsIPv4:v97];
        [v102 setSupportsIPv6:HIDWORD(v97)];
        [v101 setNoCostAdvantage:{objc_msgSend(v101, "expensive") ^ objc_msgSend(v102, "expensive") ^ 1}];
        v61 = [*(a1 + 56) _epochForInterfaceType:5];
        v62 = [*(a1 + 56) _getCellInternetPDPContext];
        v63 = v62;
        if (v16 && v62 && -[__CFString isEqualToString:](v16, "isEqualToString:", v62) && [*(a1 + 56) _getCellInternetStatus])
        {
          if (!v61)
          {
            v64 = *(a1 + 56);
            v65 = v16;
LABEL_82:
            [v64 _cellNetworkChangeForInterface:v65 roamingEvent:0];
          }
        }

        else if (v61)
        {
          v64 = *(a1 + 56);
          v65 = 0;
          goto LABEL_82;
        }

        goto LABEL_32;
      }

      v21 = v13;
      v96 = 0;
      v19 = 0;
      v97 = 0;
      v18 = 0;
      v16 = 0;
    }

    else
    {
      v97 = 0;
      v98 = 0;
      v96 = 0;
      v19 = 0;
      v18 = 0;
      v16 = 0;
      v21 = 0;
    }

    v20 = -1;
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"autoBugCaptureEnabled"])
  {
    v7 = [*(a1 + 48) objectForKey:*MEMORY[0x277CCA2F0]];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        *(*(a1 + 56) + 385) = [v7 BOOLValue];
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(a1 + 56) + 385);
          *buf = 67109120;
          LODWORD(v117) = v9;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Observed value for autoBugCaptureEnabled is %d", buf, 8u);
        }
      }
    }
  }
}

- (void)infoLinkStateChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkState"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NetworkAnalyticsEngine_infoLinkStateChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoLinkQualityFingeprintChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkQualityFingerprint"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__NetworkAnalyticsEngine_infoLinkQualityFingeprintChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoTrafficClassChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"trafficClass"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__NetworkAnalyticsEngine_infoTrafficClassChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataTransferTimeChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataTransferTime"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__NetworkAnalyticsEngine_infoDataTransferTimeChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataTransferTimeEnabledChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataTransferTimeEnabled"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__NetworkAnalyticsEngine_infoDataTransferTimeEnabledChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoLinkPowerCostChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"linkPowerCost"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NetworkAnalyticsEngine_infoLinkPowerCostChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoDataStallChangedForSubscription:(id)subscription
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [subscription objectForKeyedSubscript:@"dataStall"];
    v5 = [v4 copy];

    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__NetworkAnalyticsEngine_infoDataStallChangedForSubscription___block_invoke;
    v8[3] = &unk_27898A7D0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    dispatch_async(notificationQueueWithElevatedPriority, v8);
  }
}

- (void)infoHighThroughputStateChanged:(id)changed
{
  if (self->notificationQueueWithElevatedPriority)
  {
    v4 = [changed copy];
    notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__NetworkAnalyticsEngine_infoHighThroughputStateChanged___block_invoke;
    v7[3] = &unk_27898A7D0;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    dispatch_async(notificationQueueWithElevatedPriority, v7);
  }
}

- (void)ctDataStatusChangedForSubscription:(id)subscription
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [subscription copy];
  v4 = [v3 objectForKeyedSubscript:@"ctDataStatus"];
  v5 = v4;
  if (v4)
  {
    if ([v4 newRadioMmWaveDataBearer])
    {
      v6 = cellNRFrequencyBand == 2;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if ([v5 newRadioSub6DataBearer])
      {
        v7 = cellNRFrequencyBand == 1;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (([v5 newRadioSub6DataBearer] & 1) != 0 || (objc_msgSend(v5, "newRadioMmWaveDataBearer") & 1) != 0 || !cellNRFrequencyBand)
        {
          goto LABEL_21;
        }

        v9 = 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 2;
    }

    cellNRFrequencyBand = v9;
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = cellNRFrequencyBand;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "NR frequency band set to %d", v12, 8u);
    }

    v11 = [NetworkStateRelay getStateRelayFor:5];
    [v11 setNrFrequencyBand:cellNRFrequencyBand];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "CT data status is nil, cannot set NR frequency band", v12, 2u);
    }
  }

LABEL_21:
}

- (void)ratSelectionChangedForSubscription:(id)subscription
{
  v13 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v12 = subscriptionCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "RAT selection changed notification with subscription: %{private}@", buf, 0xCu);
  }

  v6 = [subscriptionCopy copy];
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine_ratSelectionChangedForSubscription___block_invoke;
  block[3] = &unk_27898A0C8;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void __61__NetworkAnalyticsEngine_ratSelectionChangedForSubscription___block_invoke(uint64_t a1)
{
  v6 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ratSelectionMask"];
  [v6 setRatSelectionMask:v2];

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"ratSelectionIsNR"];
  [v6 setRatSelectionIsNR:{objc_msgSend(v3, "BOOLValue")}];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"currentRATSelection"];
  [v6 setRatSelectionCurrent:v4];

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"preferredRATSelection"];
  [v6 setRatSelectionPreferred:v5];
}

- (void)cellInfoChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NetworkAnalyticsEngine_cellInfoChangedForSubscription___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __57__NetworkAnalyticsEngine_cellInfoChangedForSubscription___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getCellInternetStatus];
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 interfaceName];
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) _getCellInternetPDPContext];
  v7 = v6;
  if (v5 && v6 && [v5 isEqualToString:v6] && v2)
  {
    [*(a1 + 32) _cellNetworkChangeForInterface:v5 roamingEvent:1 subscription:*(a1 + 40)];
  }

  else
  {
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v5;
      v18 = 1024;
      v19 = v2;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring CT cell info change notification on interfaceName %@, cell Internet status: %d", &v16, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"isCurrentDataSubscription"];
    v11 = v10;
    if (v10 && [v10 BOOLValue])
    {
      v12 = [*(a1 + 40) objectForKeyedSubscript:@"ctCellInfo"];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 legacyInfo];
        [v4 updateCellInfo:v14];
      }

      else
      {
        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Expected to find CTCellInfo but received nil", &v16, 2u);
        }
      }
    }
  }
}

- (void)cellularDualSimStatusChangedTo:(int64_t)to
{
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NetworkAnalyticsEngine_cellularDualSimStatusChangedTo___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = to;
  dispatch_async(queue, block);
}

void __57__NetworkAnalyticsEngine_cellularDualSimStatusChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  [v2 setCellDualSimStatus:*(a1 + 32)];
}

- (void)networkCodeChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"userDataPreferred"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Dual-SIM telemetry NAE: networkCodeChangedForSubscription on the user data preferred SIM.", buf, 2u);
      }
    }

    else
    {
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__NetworkAnalyticsEngine_networkCodeChangedForSubscription___block_invoke;
      block[3] = &unk_27898A0C8;
      v11 = v5;
      dispatch_async(queue, block);
    }
  }
}

void __60__NetworkAnalyticsEngine_networkCodeChangedForSubscription___block_invoke(uint64_t a1)
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"mobileNetworkCode"];
  [v3 setCellNonPreferredMNC:{objc_msgSend(v2, "intValue")}];
}

- (void)countryCodeChangedForSubscription:(id)subscription
{
  v4 = [subscription copy];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"userDataPreferred"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Dual-SIM telemetry NAE: countryCodeChangedForSubscription on the user data preferred SIM.", buf, 2u);
      }
    }

    else
    {
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__NetworkAnalyticsEngine_countryCodeChangedForSubscription___block_invoke;
      block[3] = &unk_27898A0C8;
      v11 = v5;
      dispatch_async(queue, block);
    }
  }
}

void __60__NetworkAnalyticsEngine_countryCodeChangedForSubscription___block_invoke(uint64_t a1)
{
  v3 = [NetworkStateRelay getStateRelayFor:5];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"mobileCountryCode"];
  [v3 setCellNonPreferredMCC:{objc_msgSend(v2, "intValue")}];
}

- (void)signalStrengthChanged:(id)changed cellularRSRP:(id)p cellularSNR:(id)r
{
  v23 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  pCopy = p;
  rCopy = r;
  if (changedCopy)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v18 = changedCopy;
      v19 = 2112;
      v20 = pCopy;
      v21 = 2112;
      v22 = rCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Received signal strength changed notification, new signal strength: %@, RSRP: %@, SNR: %@", buf, 0x20u);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__NetworkAnalyticsEngine_signalStrengthChanged_cellularRSRP_cellularSNR___block_invoke;
    block[3] = &unk_27898A328;
    v14 = changedCopy;
    v15 = pCopy;
    v16 = rCopy;
    dispatch_async(queue, block);
  }
}

uint64_t __73__NetworkAnalyticsEngine_signalStrengthChanged_cellularRSRP_cellularSNR___block_invoke(void *a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  v3 = v2;
  if (v2)
  {
    v6 = v2;
    [v2 updateSignalStrength:a1[4]];
    v4 = a1[5];
    if (v4)
    {
      [v6 setCellRSRP:{objc_msgSend(v4, "intValue")}];
    }

    v2 = a1[6];
    v3 = v6;
    if (v2)
    {
      [v2 doubleValue];
      v2 = [v6 setCellSNR:?];
      v3 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)networkSlicingActiveChangedTo:(BOOL)to forSliceIndex:(unint64_t)index
{
  toCopy = to;
  v15 = *MEMORY[0x277D85DE8];
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    indexCopy = index;
    v13 = 1024;
    v14 = toCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Received network slicing active changed notification, new status for slice %lu: %{BOOL}d", buf, 0x12u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__NetworkAnalyticsEngine_networkSlicingActiveChangedTo_forSliceIndex___block_invoke;
  v9[3] = &__block_descriptor_41_e5_v8__0l;
  v9[4] = index;
  v10 = toCopy;
  dispatch_async(queue, v9);
}

void __70__NetworkAnalyticsEngine_networkSlicingActiveChangedTo_forSliceIndex___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setNetworkSlicingStateAtIndex:*(a1 + 32) to:*(a1 + 40)];
    v2 = v3;
  }
}

- (void)nonTerrestrialNetworkActiveChangedTo:(BOOL)to
{
  toCopy = to;
  v11 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = toCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received GF active changed notification, new status: %{BOOL}d", buf, 8u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NetworkAnalyticsEngine_nonTerrestrialNetworkActiveChangedTo___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = toCopy;
  dispatch_async(queue, block);
}

void __63__NetworkAnalyticsEngine_nonTerrestrialNetworkActiveChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setIsNonTerrestrialNetworkActive:*(a1 + 32)];
    v2 = v3;
  }
}

- (void)stewieActiveChangedTo:(BOOL)to
{
  toCopy = to;
  v11 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v10 = toCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Received satellite active changed notification, new status: %{BOOL}d", buf, 8u);
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NetworkAnalyticsEngine_stewieActiveChangedTo___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v8 = toCopy;
  dispatch_async(queue, block);
}

void __48__NetworkAnalyticsEngine_stewieActiveChangedTo___block_invoke(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  if (v2)
  {
    v3 = v2;
    [v2 setIsStewieActive:*(a1 + 32)];
    v2 = v3;
  }
}

- (void)setProhibitNetworkAgentsForNWParameters:(id)parameters
{
  parametersCopy = parameters;
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"VPN"];
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AOVPN"];
  [parametersCopy prohibitNetworkAgentsWithDomain:@"NetworkExtension" type:@"AppVPN"];
}

- (void)_observeNetworkFramework
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v3 setRequiredInterfaceType:1];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v3];
  v4 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v3];
  wifiPathEvaluator = self->wifiPathEvaluator;
  self->wifiPathEvaluator = v4;

  v6 = self->wifiPathEvaluator;
  if (v6)
  {
    [(NWPathEvaluator *)v6 addObserver:self forKeyPath:@"path" options:5 context:1];
  }

  v7 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v7 setRequiredInterfaceType:2];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v7];
  v8 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v7];
  cellPathEvaluator = self->cellPathEvaluator;
  self->cellPathEvaluator = v8;

  v10 = self->cellPathEvaluator;
  if (v10)
  {
    [(NWPathEvaluator *)v10 addObserver:self forKeyPath:@"path" options:5 context:2];
  }

  v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [v11 setRequiredInterfaceType:3];
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v11];
  v12 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v11];
  etherPathEvaluator = self->etherPathEvaluator;
  self->etherPathEvaluator = v12;

  v14 = self->etherPathEvaluator;
  if (v14)
  {
    [(NWPathEvaluator *)v14 addObserver:self forKeyPath:@"path" options:5 context:3];
  }

  v15 = objc_alloc_init(MEMORY[0x277CD91F0]);
  [(NetworkAnalyticsEngine *)self setProhibitNetworkAgentsForNWParameters:v15];
  v16 = [objc_alloc(MEMORY[0x277CD9200]) initWithEndpoint:0 parameters:v15];
  primaryPathEvaluator = self->primaryPathEvaluator;
  self->primaryPathEvaluator = v16;

  v18 = self->primaryPathEvaluator;
  if (v18)
  {
    [(NWPathEvaluator *)v18 addObserver:self forKeyPath:@"path" options:5 context:5];
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->cellPathEvaluator;
    v21 = self->wifiPathEvaluator;
    v22 = self->etherPathEvaluator;
    companionPathEvaluator = self->companionPathEvaluator;
    v24 = self->primaryPathEvaluator;
    v25 = 134219008;
    v26 = v20;
    v27 = 2048;
    v28 = v21;
    v29 = 2048;
    v30 = v22;
    v31 = 2048;
    v32 = companionPathEvaluator;
    v33 = 2048;
    v34 = v24;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "PathEvaluators: cell %p wifi %p ether %p companion link %p primary %p", &v25, 0x34u);
  }
}

- (NetworkAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params queue:(id)queue
{
  v32 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  paramsCopy = params;
  queueCopy = queue;
  if (!queueCopy)
  {
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(v11, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = SFGetStandardQueue(3);
    queueCopy = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.nets.queue", v12, v13);
  }

  v29.receiver = self;
  v29.super_class = NetworkAnalyticsEngine;
  v14 = [(AnalyticsEngineCore *)&v29 initWithWorkspace:0 params:paramsCopy queue:queueCopy];
  if (v14)
  {
    v15 = objc_alloc_init(NWActivityHelper);
    nwActivityHelper = v14->_nwActivityHelper;
    v14->_nwActivityHelper = v15;

    date = [MEMORY[0x277CBEAA8] date];
    objc_storeStrong(&score_last, date);
    objc_storeStrong(&prune_last, date);
    objc_storeStrong(&sharedInstance_3, v14);
    isHelper = [(AnalyticsEngineCore *)v14 isHelper];
    v19 = netepochsLogHandle;
    v20 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (isHelper)
    {
      if (v20)
      {
        *buf = 134217984;
        v31 = sharedInstance_3;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NAE allocates shared instance for helper %p", buf, 0xCu);
      }

      queue = [(AnalyticsEngineCore *)v14 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__NetworkAnalyticsEngine_initWithWorkspace_params_queue___block_invoke;
      block[3] = &unk_27898A0C8;
      v22 = &v28;
      v28 = v14;
      dispatch_async(queue, block);
    }

    else
    {
      if (v20)
      {
        *buf = 134217984;
        v31 = sharedInstance_3;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NAE allocates shared instance %p", buf, 0xCu);
      }

      queue = [(AnalyticsEngineCore *)v14 queue];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __57__NetworkAnalyticsEngine_initWithWorkspace_params_queue___block_invoke_389;
      v25[3] = &unk_27898A0C8;
      v22 = &v26;
      v26 = v14;
      v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v25);
      dispatch_async(queue, v23);
    }
  }

  return v14;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->trafficObserver];
  [defaultCenter removeObserver:self->dnsObserver];
  [defaultCenter removeObserver:self->tdObserver];
  v4 = +[CoreTelephonyShim sharedInstance];
  [v4 removeDelegate:self];

  v5 = +[CoreTelephonyShim sharedInstance];
  [v5 unregisterSignalStrengthChangedWithDelegate:self];

  [defaultCenter removeObserver:self->dataStallObserver];
  [defaultCenter removeObserver:self->captivityRedirectsObserver];
  [defaultCenter removeObserver:self->certErrorObserver];
  [defaultCenter removeObserver:self->limObserver];
  [(SystemSettingsRelay *)self->systemSettingsRelay removeObserver:self forKeyPath:@"autoBugCaptureEnabled"];
  [(WiFiShim *)self->_wifiShim removeDelegate:self];
  [(ProxyAnalytics *)self->_proxyAnalytics setDelegate:0];

  v6.receiver = self;
  v6.super_class = NetworkAnalyticsEngine;
  [(AnalyticsEngineCore *)&v6 dealloc];
}

- (void)_initializeWorkspace
{
  v3 = MEMORY[0x277D6B500];
  v4 = +[SystemSettingsRelay defaultRelay];
  symptomEvaluatorDatabaseContainerPath = [v4 symptomEvaluatorDatabaseContainerPath];
  v6 = [v3 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

  v7 = [v6 copy];
  if (v7)
  {
    [(AnalyticsEngineCore *)self setWorkspace:v7];
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to allocate workspace for net analytics", buf, 2u);
    }

    v9 = +[AWDAgent defaultInstance];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:3402 userInfo:0];
    [v9 postMetricForSignificantEventWithName:@"AnalyticsWorkspaceAllocationFailure" errorContext:3 error:v10 status:0];
  }

  v11 = [NetworkAnalyticsModel alloc];
  workspace = self->super.workspace;
  queue = [(AnalyticsEngineCore *)self queue];
  v14 = [(NetworkAnalyticsModel *)v11 initWithJournalName:@"AnalyticsJournal" workspace:workspace queue:queue];
  model = self->model;
  self->model = v14;

  if (!self->model)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v24 = 0;
    v21 = "failed to allocate model";
    v22 = &v24;
LABEL_13:
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
    goto LABEL_14;
  }

  v16 = self->super.workspace;
  queue2 = [(AnalyticsEngineCore *)self queue];
  v18 = [ImpoExpoService impoExpoServiceInWorkspace:v16 andQueue:queue2];
  ieService = self->ieService;
  self->ieService = v18;

  if (!self->ieService)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v23 = 0;
    v21 = "failed to allocate impo/expo service";
    v22 = &v23;
    goto LABEL_13;
  }

  [(NetworkAnalyticsEngine *)self _fetchHashSaltFromJournal];
LABEL_14:
}

- (void)_initializeInternals
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = qos_class_self();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = qos_string(v5);
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NAE _initializeInternals: QoS %s", &buf, 0xCu);
  }

  [(NetworkAnalyticsEngine *)self _initializeWorkspace];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
  activeEpochs = self->activeEpochs;
  self->activeEpochs = v6;

  if (self->activeEpochs)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    self->routeManager = NStatManagerCreate();

    if (self->routeManager)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
      liveDefaultRoutes = self->liveDefaultRoutes;
      self->liveDefaultRoutes = v9;

      if (self->liveDefaultRoutes)
      {
        v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
        snapshots = self->snapshots;
        self->snapshots = v11;

        if (self->snapshots)
        {
          v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
          v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v15 = SFGetStandardQueue(6);
          v16 = dispatch_queue_create_with_target_V2("com.apple.symptoms.analytics.nets.priority.queue", v14, v15);
          notificationQueueWithElevatedPriority = self->notificationQueueWithElevatedPriority;
          self->notificationQueueWithElevatedPriority = v16;

          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_405;
          v79[3] = &unk_27898A0C8;
          v79[4] = self;
          if (_initializeInternals_pred != -1)
          {
            dispatch_once(&_initializeInternals_pred, v79);
          }

          resync_tether_state(_SCDynamicStore);
          [(NetworkAnalyticsEngine *)self _observeNetworkFramework];
          v18 = +[SystemSettingsRelay defaultRelay];
          systemSettingsRelay = self->systemSettingsRelay;
          self->systemSettingsRelay = v18;

          v20 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Fetching IP configuration for all active en* interfaces", &buf, 2u);
          }

          queue2 = [(AnalyticsEngineCore *)self queue];
          dispatch_async(queue2, &__block_literal_global_419);

          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2;
          v78[3] = &unk_27898A690;
          v78[4] = self;
          v23 = [defaultCenter addObserverForName:@"kNotificationDNSsymptoms" object:0 queue:0 usingBlock:v78];
          dnsObserver = self->dnsObserver;
          self->dnsObserver = v23;

          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4;
          v77[3] = &unk_27898A690;
          v77[4] = self;
          v25 = [defaultCenter addObserverForName:@"kNotificationTriggerDisconnectThreshold" object:0 queue:0 usingBlock:v77];
          tdObserver = self->tdObserver;
          self->tdObserver = v25;

          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_425;
          v76[3] = &unk_27898A690;
          v76[4] = self;
          v27 = [defaultCenter addObserverForName:@"kNotificationDataStall" object:0 queue:0 usingBlock:v76];
          dataStallObserver = self->dataStallObserver;
          self->dataStallObserver = v27;

          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4_427;
          v75[3] = &unk_27898A690;
          v75[4] = self;
          v29 = [defaultCenter addObserverForName:@"kNotificationCaptivityRedirects" object:0 queue:0 usingBlock:v75];
          captivityRedirectsObserver = self->captivityRedirectsObserver;
          self->captivityRedirectsObserver = v29;

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_6;
          v74[3] = &unk_27898A690;
          v74[4] = self;
          v31 = [defaultCenter addObserverForName:@"kNotificationCertError" object:0 queue:0 usingBlock:v74];
          certErrorObserver = self->certErrorObserver;
          self->certErrorObserver = v31;

          v73[0] = MEMORY[0x277D85DD0];
          v73[1] = 3221225472;
          v73[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_8;
          v73[3] = &unk_27898A690;
          v73[4] = self;
          v33 = [defaultCenter addObserverForName:@"kNotificationKernelNewLIMRecord" object:0 queue:0 usingBlock:v73];
          limObserver = self->limObserver;
          self->limObserver = v33;

          [(SystemSettingsRelay *)self->systemSettingsRelay addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:5 context:0];
          v35 = [NetworkExtensionStateRelay alloc];
          queue3 = [(AnalyticsEngineCore *)self queue];
          v37 = [(NetworkExtensionStateRelay *)v35 initWithQueue:queue3];
          neStateRelay = self->_neStateRelay;
          self->_neStateRelay = v37;

          *&self->lastScoreExit[1] = 0x100000001;
          v39 = +[SystemProperties sharedInstance];
          self->_isInternalBuild = [v39 internalBuild];

          if (self->_isInternalBuild)
          {
            v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
            memoryJournalRecords = self->memoryJournalRecords;
            self->memoryJournalRecords = v40;
          }

          signal(30, 1);
          queue4 = [(AnalyticsEngineCore *)self queue];
          v43 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, queue4);
          v44 = _initializeInternals_sigusr1;
          _initializeInternals_sigusr1 = v43;

          if (_initializeInternals_sigusr1)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_10;
            handler[3] = &unk_27898A0C8;
            handler[4] = self;
            dispatch_source_set_event_handler(_initializeInternals_sigusr1, handler);
            dispatch_resume(_initializeInternals_sigusr1);
          }

          signal(29, 1);
          v45 = dispatch_source_create(MEMORY[0x277D85D30], 0x1DuLL, 0, MEMORY[0x277D85CD0]);
          v46 = _initializeInternals_siginfo;
          _initializeInternals_siginfo = v45;

          if (_initializeInternals_siginfo)
          {
            v71[0] = MEMORY[0x277D85DD0];
            v71[1] = 3221225472;
            v71[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_434;
            v71[3] = &unk_27898A0C8;
            v71[4] = self;
            dispatch_source_set_event_handler(_initializeInternals_siginfo, v71);
            dispatch_resume(_initializeInternals_siginfo);
          }

          location[1] = MEMORY[0x277D85DD0];
          location[2] = 3221225472;
          location[3] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_435;
          location[4] = &unk_27898A820;
          location[5] = self;
          v47 = MEMORY[0x277D85CD0];
          os_state_add_handler();

          objc_initWeak(location, self);
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_437;
          v68[3] = &unk_27898C3B0;
          objc_copyWeak(&v69, location);
          [(AnalyticsWorkspace *)self->super.workspace setResetCompletionBlock:v68];
          *&buf = 0;
          *(&buf + 1) = &buf;
          v83 = 0x2020000000;
          v84 = 0;
          queue5 = [(AnalyticsEngineCore *)self queue];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_442;
          v66[3] = &unk_27898DAB0;
          objc_copyWeak(&v67, location);
          v66[4] = self;
          v66[5] = &buf;
          [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.Daily" queue:queue5 activity:v66];

          v49 = +[SystemProperties sharedInstance];
          basebandCapability = [v49 basebandCapability];

          if (basebandCapability)
          {
            self->cellSPIType = 1;
            if (!self->serverConnection)
            {
              v51 = +[CoreTelephonyShim sharedInstance];
              self->serverConnection = [v51 ctServerConnection];
            }

            [(NetworkAnalyticsEngine *)self _updateCellInternetStatus:0xFFFFFFFFLL pdpContext:0xFFFFFFFFLL];
          }

          [(NetworkAnalyticsEngine *)self setDelegateToProxyAnalytics:1];
          v52 = [NetworkStateRelay getStateRelayFor:5];
          [v52 setCellSPIType:self->cellSPIType];
          v53 = +[WiFiShim sharedInstance];
          wifiShim = self->_wifiShim;
          self->_wifiShim = v53;

          [(WiFiShim *)self->_wifiShim addDelegate:self];
          queue6 = [(AnalyticsEngineCore *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_449;
          block[3] = &unk_27898A0C8;
          block[4] = self;
          dispatch_async(queue6, block);

          shared_prefs_store = get_shared_prefs_store();
          if (shared_prefs_store)
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_451;
            v64[3] = &unk_27898A0A0;
            v64[4] = self;
            prefs_add_client(shared_prefs_store, "rnf_rssi_extra_descent_factor", v64);
          }

          queue7 = [(AnalyticsEngineCore *)self queue];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_453;
          v63[3] = &unk_27898A0C8;
          v63[4] = self;
          dispatch_async(queue7, v63);

          [(NetworkAnalyticsEngine *)self scheduleWiFiAssistAnalyticsTask];
          v58 = measureLaunchXPCHandle([defaultCenter postNotificationName:@"stateRelay" object:self userInfo:0]);
          if (os_signpost_enabled(v58))
          {
            *v62 = 0;
            _os_signpost_emit_with_name_impl(&dword_23255B000, v58, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NetworkAnalyticsEngineInitialized", "NetworkAnalyticsEngine completed initialization", v62, 2u);
          }

          markMeasurement(2, 11);
          submitAllMeasurementsToCA();
          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          v80 = @"ObjectKey";
          selfCopy = self;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v80 count:1];
          [defaultCenter2 postNotificationName:@"kNotificationOfCompletedInitialization" object:self userInfo:v60];

          objc_destroyWeak(&v67);
          _Block_object_dispose(&buf, 8);
          objc_destroyWeak(&v69);
          objc_destroyWeak(location);
        }
      }
    }

    else
    {
      v61 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_ERROR, "failed to allocate routeManager", &buf, 2u);
      }
    }
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke()
{
  v0 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "new routing source added", v1, 2u);
  }
}

uint64_t __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_405(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  memset(&v15, 0, sizeof(v15));
  _SCDynamicStore = SCDynamicStoreCreate(0, @"com.apple.symptoms.analytics", config_callback, &v15);
  objc_storeStrong(&_SCDynamicStoreCaller, *(a1 + 32));
  SCDynamicStoreSetDispatchQueue(_SCDynamicStore, *(*(a1 + 32) + 336));
  v2 = *MEMORY[0x277CBECE8];
  v3 = *MEMORY[0x277CE1648];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"(en)[^/]+", *MEMORY[0x277CE1688]);
  v5 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v2, v3, @"(en)[^/]+", *MEMORY[0x277CE1690]);
  v6 = MEMORY[0x277CBF128];
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x277CBF128]);
  v8 = CFArrayCreateMutable(v2, 0, v6);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, v3, *MEMORY[0x277CE1678]);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v2, v3, @"(en|pdp_ip|ipsec|utun)[^/]+", *MEMORY[0x277CE16B0]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  CFArrayAppendValue(v8, NetworkInterfaceEntity);
  CFArrayAppendValue(v8, v5);
  CFArrayAppendValue(v8, v10);
  if (NetworkGlobalEntity)
  {
    CFRelease(NetworkGlobalEntity);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (NetworkInterfaceEntity)
  {
    CFRelease(NetworkInterfaceEntity);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v11 = SCDynamicStoreSetNotificationKeys(_SCDynamicStore, Mutable, v8);
  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "succeeded";
    *buf = 136315650;
    if (!v11)
    {
      v13 = "failed";
    }

    v17 = v13;
    v18 = 2112;
    v19 = Mutable;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "SCDynamicStore registration %s to monitor changes in keys: %@ and patterns: %@", buf, 0x20u);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return SCDynamicStoreAddWatchedKey();
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_417()
{
  v59[2] = *MEMORY[0x277D85DE8];
  v0 = _SCDynamicStore;
  v1 = +[SystemSettingsRelay defaultRelay];
  v2 = [v1 ndfEnabled];

  v3 = netepochsLogHandle;
  if ((v2 & 1) == 0)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "NDF is disabled, not fetching IP configuration", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "interfaceName is nil, fetching IP configuration for all en* interfaces", buf, 2u);
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = *MEMORY[0x277CE1648];
  v6 = *MEMORY[0x277CE1688];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], @"(en)[^/]+", *MEMORY[0x277CE1688]);
  v46 = *MEMORY[0x277CE1690];
  v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v4, v5, @"(en)[^/]+", *MEMORY[0x277CE1690]);
  v9 = v8;
  if (NetworkInterfaceEntity)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = NetworkInterfaceEntity;
      v57 = 2112;
      v58 = v9;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Found IPv4/IPv6 SCDynamicStore keys (%@/%@) to be nil", buf, 0x16u);
    }

    goto LABEL_49;
  }

  v59[0] = NetworkInterfaceEntity;
  v59[1] = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];

  if (![(__CFString *)v12 count])
  {
    v39 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, "PatternList is empty, not fetching IP configuration", buf, 2u);
    }

    goto LABEL_48;
  }

  v13 = SCDynamicStoreCopyMultiple(v0, 0, v12);
  if (![(__CFDictionary *)v13 count])
  {
    goto LABEL_45;
  }

  v40 = v13;
  v41 = v12;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v14 = v13;
  v15 = [(__CFDictionary *)v14 countByEnumeratingWithState:&v47 objects:buf count:16];
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = v15;
  v17 = *v48;
  v43 = *MEMORY[0x277CE1728];
  v42 = *MEMORY[0x277CE1758];
  p_info = TCPProgressProbe.info;
  v44 = v6;
  do
  {
    v19 = 0;
    v45 = v16;
    do
    {
      if (*v48 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v47 + 1) + 8 * v19);
      v21 = [(__CFDictionary *)v14 objectForKeyedSubscript:v20, v40, v41];

      if (v21)
      {
        v22 = [(__CFDictionary *)v14 objectForKeyedSubscript:v20];
        v23 = [v20 containsString:v6];
        v24 = [v20 containsString:v46];
        if ((v23 & 1) != 0 || v24)
        {
          v29 = v17;
          v30 = [p_info + 371 interfaceNameFromKey:v20];
          if (v30)
          {
            v31 = v30;
            if ([p_info + 371 interfaceIsDirectLink:v30])
            {
              v32 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v51 = 138412290;
                v52 = v31;
                _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEFAULT, "Interface %@ is a DirectLink interface, ignoring its IP configuration", v51, 0xCu);
              }
            }

            else
            {
              v34 = +[NDFCoreShim sharedInstance];
              [v34 noteInterfaceOfInterest:v31 isRemoved:0];

              v35 = v43;
              if (!v23)
              {
                v35 = v42;
              }

              v36 = v35;
              v37 = [v22 objectForKeyedSubscript:v36];
              v38 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
              {
                *v51 = 138412547;
                v52 = v31;
                v53 = 2113;
                v54 = v37;
                _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "IP configuration for %@ = %{private}@", v51, 0x16u);
              }

              v6 = v44;
            }

            p_info = (TCPProgressProbe + 32);
            v17 = v29;
            v16 = v45;
          }

          else
          {
            v33 = netepochsLogHandle;
            v16 = v45;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v51 = 138412290;
              v52 = v20;
              v26 = v33;
              v27 = "Extracted interfaceName from key %@ is nil";
LABEL_34:
              _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, v27, v51, 0xCu);
            }
          }
        }

        else
        {
          v25 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v51 = 138412290;
            v52 = v20;
            v26 = v25;
            v27 = "Received callback for unexpected key %@, expecting IPv4 or IPv6";
            goto LABEL_34;
          }
        }

        goto LABEL_42;
      }

      v28 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v51 = 138412290;
        v52 = v20;
        _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "No IP configuration obtained for key %@", v51, 0xCu);
      }

LABEL_42:
      ++v19;
    }

    while (v16 != v19);
    v16 = [(__CFDictionary *)v14 countByEnumeratingWithState:&v47 objects:buf count:16];
  }

  while (v16);
LABEL_44:

  v13 = v40;
  v12 = v41;
LABEL_45:

LABEL_48:
  NetworkInterfaceEntity = v12;
LABEL_49:
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userInfo];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_423];
  v5 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_424;
  v8[3] = &unk_27898A7D0;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
  dispatch_async(v5, v7);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventData];
  if (v6)
  {
    v7 = v6;
    if ((~*(v6 + 4) & 3) == 0)
    {
      v8 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v7 + 24);
        v9 = *(v7 + 32);
        v11 = v8;
        v12 = [v5 seqNo];
        v13 = [MEMORY[0x277CBEAA8] date];
        v14 = [v5 creationTimeStamp];
        [v13 timeIntervalSinceDate:v14];
        v20 = 138413315;
        v21 = v4;
        v22 = 2048;
        v23 = v12;
        v24 = 1024;
        v25 = v10;
        v26 = 2049;
        v27 = v9;
        v28 = 2048;
        v29 = v15;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: received triggerDisconnectThreshold notification for %@ [#%llu], edge: %d, target bssid: %{private}llx, propagation delay: %f", &v20, 0x30u);
      }

      v16 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = v16;
        v18 = qos_class_self();
        v19 = qos_string(v18);
        v20 = 136315138;
        v21 = v19;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "trigger-disconnect: triggerDisconnectThreshold notification: QoS %s", &v20, 0xCu);
      }
    }
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_425(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_426;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_4_427(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_5_428;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_7;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_9;
  v6[3] = &unk_27898A7D0;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) _flushAllJournalRecords];
  if ([*(a1 + 32) delegateToProxyAnalytics])
  {
    v2 = objc_opt_new();
    [*(a1 + 32) setProxyAnalytics:v2];

    v3 = *(a1 + 32);
    v4 = [v3 proxyAnalytics];
    [v4 setDelegate:v3];

    [*(a1 + 32) setRemoveOldRecordsNow:1];
    v5 = [*(a1 + 32) proxyAnalytics];
    [v5 trainModelAndScore:1 lastScoreDate:score_last];
  }

  else
  {
    [*(a1 + 32) _performPeriodicTasks:1];
  }

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
  }

  [*(*(a1 + 32) + 400) purgeOldNWActivityMetrics];
  v7 = +[NWActivityHandler sharedInstance];
  [v7 enableDBWrites];

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", v9, 2u);
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_3_437(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: invalidating local caches", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [WeakRetained[18] allValues];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) unloadDurableState];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [WeakRetained _concurrentEpochs];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) unloadDurableState];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v22 count:16];
    }

    while (v10);
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_442(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    [WeakRetained setRemoveOldRecordsNow:1];
    [v3 _flushAllJournalRecords];
    v4 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 156);
      v5 = *(*(a1 + 32) + 160);
      *buf = 67109376;
      v18 = v6;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "scoring: about to start, last scored with exit codes: %d %d", buf, 0xEu);
    }

    if ([v3 delegateToProxyAnalytics])
    {
      v7 = [v3 proxyAnalytics];

      if (!v7)
      {
        v8 = objc_opt_new();
        [v3 setProxyAnalytics:v8];

        v9 = [v3 proxyAnalytics];
        [v9 setDelegate:v3];
      }

      v10 = [v3 proxyAnalytics];
      [v10 trainModelAndScore:1 lastScoreDate:score_last];
    }

    else
    {
      [v3 _performPeriodicTasks:1];
      if ([v3 removeOldRecordsNow])
      {
        [v3 _removeOldRouteRecords];
        [v3 setRemoveOldRecordsNow:0];
      }
    }

    v11 = [v3 queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_447;
    v15[3] = &unk_27898A0C8;
    v16 = v3;
    [(PeriodicMaintenanceActivity *)WeeklyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.WeeklyStoreCheck" queue:v11 activity:v15];

    v12 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
    }

    [*(*(a1 + 32) + 400) purgeOldNWActivityMetrics];
    v13 = +[NWActivityHandler sharedInstance];
    [v13 enableDBWrites];

    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", buf, 2u);
    }
  }
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_447(uint64_t a1)
{
  v2 = [*(a1 + 32) proxyAnalytics];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setProxyAnalytics:v3];

    v4 = *(a1 + 32);
    v5 = [v4 proxyAnalytics];
    [v5 setDelegate:v4];
  }

  v6 = [*(a1 + 32) proxyAnalytics];
  [v6 performPersistentStoreHealthCheck];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_449(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:3];
  [v2 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];
}

void __46__NetworkAnalyticsEngine__initializeInternals__block_invoke_2_451(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x238389170](v4) == MEMORY[0x277D86498])
  {
    value = xpc_int64_get_value(v5);
    v11 = rnfLogHandle;
    v12 = os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT);
    if (value < 0)
    {
      if (!v12)
      {
        goto LABEL_12;
      }

      v14 = *(*(a1 + 32) + 440);
      v15 = 134218240;
      v16 = value;
      v17 = 2048;
      v18 = v14;
      v7 = "Got negative value for rnf_rssi_extra_descent_factor (%lld). Maintaining current value (%llu)";
      v8 = v11;
      v9 = 22;
      goto LABEL_5;
    }

    if (v12)
    {
      v13 = *(*(a1 + 32) + 440);
      v15 = 134218240;
      v16 = v13;
      v17 = 2048;
      v18 = value;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Set new value for rnf_rssi_extra_descent_factor (was/is): %lld/%lld", &v15, 0x16u);
    }

    *(*(a1 + 32) + 440) = value;
  }

  else
  {
    *(*(a1 + 32) + 440) = 0;
    v6 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      v7 = "Got a nil value or wrong type for rnf_rssi_extra_descent_factor. Setting to default value (0)";
      v8 = v6;
      v9 = 2;
LABEL_5:
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, v7, &v15, v9);
    }
  }

LABEL_12:
}

- (void)_processNWActivityMetrics
{
  if ([(NetworkAnalyticsEngine *)self delegateToProxyAnalytics])
  {
    proxyAnalytics = [(NetworkAnalyticsEngine *)self proxyAnalytics];

    if (!proxyAnalytics)
    {
      v4 = objc_opt_new();
      [(NetworkAnalyticsEngine *)self setProxyAnalytics:v4];

      proxyAnalytics2 = [(NetworkAnalyticsEngine *)self proxyAnalytics];
      [proxyAnalytics2 setDelegate:self];
    }

    proxyAnalytics3 = [(NetworkAnalyticsEngine *)self proxyAnalytics];
    [proxyAnalytics3 trainModelAndScore:0 lastScoreDate:score_last];
  }

  else
  {
    [(NetworkAnalyticsEngine *)self _performPeriodicTasks:0];
  }

  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper old metric cleanup...", buf, 2u);
  }

  [(NWActivityHelper *)self->_nwActivityHelper purgeOldNWActivityMetrics];
  v8 = +[NWActivityHandler sharedInstance];
  [v8 enableDBWrites];

  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Finished NWActivityHelper old metric cleanup...", v10, 2u);
  }
}

- (void)_fetchHashSaltFromJournal
{
  v3 = [NetworkAnalyticsEngine fetchHashSaltFromJournalUsingImpoExpoService:self->ieService];
  hashSalt = self->_hashSalt;
  self->_hashSalt = v3;

  MEMORY[0x2821F96F8](v3, hashSalt);
}

+ (id)fetchHashSaltFromJournalUsingImpoExpoService:(id)service
{
  v10 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = serviceCopy;
  if (serviceCopy)
  {
    v8 = 0;
    v5 = [serviceCopy exportItemUnderName:@"SymptomHashSalt" lastUpdated:&v8 verificationBlock:&__block_literal_global_455];
    if (!v5)
    {
      arc4random_buf(__buf, 0x20uLL);
      v5 = [MEMORY[0x277CBEA90] dataWithBytes:__buf length:32];
      [v4 importItemUnderName:@"SymptomHashSalt" item:v5];
    }
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *__buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "impoExpoService is nil", __buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t __71__NetworkAnalyticsEngine_fetchHashSaltFromJournalUsingImpoExpoService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_dumpStats
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = netatt_epochs;
    v20 = 2048;
    v21 = *&netatt_roamed;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Distinct epochs = %llu, incl. %llu from roaming", &v18, 0x16u);
  }

  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = notif_reqs;
    v20 = 2048;
    v21 = *&notif_posted;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Evaluated known-good notif %llu times, %llu times was cleared to send", &v18, 0x16u);
  }

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = score_counts;
    v7 = score_last;
    v8 = v5;
    [v7 timeIntervalSinceNow];
    v10 = self->lastScoreExit[1];
    v9 = self->lastScoreExit[2];
    v18 = 134218752;
    v19 = v6;
    v20 = 2048;
    v21 = -v11;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Scored attachms %llu times, not since %f secs, last exit codes were: %d %d", &v18, 0x22u);
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = prune_counts;
    v14 = prune_last;
    v15 = v12;
    [v14 timeIntervalSinceNow];
    v18 = 134218240;
    v19 = v13;
    v20 = 2048;
    v21 = -v16;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "Pruned old perf records %llu times, not since %f secs", &v18, 0x16u);
  }

  v17 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = active_probes;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "No backhaul resulted in %llu active probes", &v18, 0xCu);
  }
}

- (void)_wifiKnownNetworksDeleted:(id)deleted
{
  deletedCopy = deleted;
  v5 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  primaryKey = [v5 primaryKey];
  v12 = 0;
  [NetworkEpoch parsePrimaryKey:primaryKey majorID:&v12 minorID:0];
  v8 = v12;

  if (([v6 deleteNetworkAttachmentsWhenDone] & 1) != 0 || !objc_msgSend(v8, "length"))
  {
    goto LABEL_6;
  }

  [v6 setDeleteNetworkAttachmentsWhenDone:1];
  v9 = MEMORY[0x277CBEB98];
  primaryKey2 = [v6 primaryKey];
  v11 = [v9 setWithObject:primaryKey2];

LABEL_7:
  [NetworkEpoch resetDataForSSIDs:deletedCopy exceptFor:v11 inWorkspace:self->super.workspace];
}

+ (void)setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue
{
  if (sharedInstance_3)
  {
    queue = [sharedInstance_3 queue];
    dispatch_async(queue, &__block_literal_global_458);
  }

  else
  {
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "No NAE shared instance yet, not setting up CT BB registration via CTShim", buf, 2u);
    }
  }
}

- (void)_setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  v3 = +[CoreTelephonyShim sharedInstance];
  [v3 addDelegate:self];
  [v3 registerSignalStrengthChangedWithDelegate:self];
  queue = [(AnalyticsEngineCore *)self queue];
  block = MEMORY[0x277D85DD0];
  v41 = 3221225472;
  v42 = __92__NetworkAnalyticsEngine__setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue__block_invoke;
  v43 = &unk_27898A0C8;
  v5 = v3;
  v44 = v5;
  dispatch_async(queue, &block);

  if (self->serverConnection || (v6 = [v5 ctServerConnection], (self->serverConnection = v6) != 0))
  {
    cf = 0;
    v7 = _CTServerConnectionRegisterForNotification();
    v8 = v7;
    v9 = HIDWORD(v7);
    v10 = netepochsLogHandle;
    if (HIDWORD(v7))
    {
      v11 = 0;
    }

    else
    {
      v11 = v7 == 0;
    }

    if (v11)
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 0;
      v12 = "eLQM: Registered with CT for eLQM supported metrics notification";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 2;
    }

    else
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 67109376;
      v48[0] = v8;
      LOWORD(v48[1]) = 1024;
      *(&v48[1] + 2) = v9;
      v12 = "eLQM: Failed to register with CT for eLQM supported metrics notification, error = (%d, %d)";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 14;
    }

    _os_log_impl(&dword_23255B000, v13, v14, v12, buf, v15);
LABEL_12:
    SupportedEnhancedLinkQualityMetric = _CTServerConnectionGetSupportedEnhancedLinkQualityMetric();
    v17 = SupportedEnhancedLinkQualityMetric;
    v18 = HIDWORD(SupportedEnhancedLinkQualityMetric);
    if (HIDWORD(SupportedEnhancedLinkQualityMetric))
    {
      v19 = 0;
    }

    else
    {
      v19 = SupportedEnhancedLinkQualityMetric == 0;
    }

    v20 = v19;
    if (v19)
    {
      v21 = 0;
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = v21;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "eLQM: Received payload with eLQM supported metrics %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _registerForLinkQualityNotifications:v21, 0, block, v41, v42, v43];
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    else
    {
      v23 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v48[0] = v17;
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v18;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "eLQM: Delay registering for eLQM/legacy notifications until CT payload arrives, error = (%d, %d)", buf, 0xEu);
      }
    }

    v45 = @"State";
    v25 = [MEMORY[0x277CCABB0] numberWithBool:{v20, cf}];
    v46 = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kNotificationCellLinkStateReportCapable" object:self userInfo:v26];

    v28 = _CTServerConnectionRegisterForNotification();
    v29 = v28;
    v30 = HIDWORD(v28);
    v31 = netepochsLogHandle;
    if (HIDWORD(v28) || v28)
    {
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v48[0] = v29;
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v30;
        v32 = "Failed to register for cell Internet data status notification, error = (%d, %d)";
        v33 = v31;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = 14;
        goto LABEL_33;
      }
    }

    else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = "Registered for cell Internet data status notification";
      v33 = v31;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 2;
LABEL_33:
      _os_log_impl(&dword_23255B000, v33, v34, v32, buf, v35);
    }

    [(NetworkAnalyticsEngine *)self _registerForSIMStatusChangeNotification:v5];
    [v5 updateCurrentRatSelection];

    goto LABEL_35;
  }

  v36 = +[SystemProperties sharedInstance];
  isSymptomsdHelper = [v36 isSymptomsdHelper];

  if ((isSymptomsdHelper & 1) == 0)
  {
    v38 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "Failed to establish connection with CoreTelephony", buf, 2u);
    }

    [(NetworkAnalyticsEngine *)self _recoverFromSystemCriticalErrors];
  }

LABEL_35:
}

void __92__NetworkAnalyticsEngine__setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Updating networkSlicingStates after delegate registration", v7, 2u);
  }

  v3 = [*(a1 + 32) getNetworkSlicingStates];
  v4 = [NetworkStateRelay getStateRelayFor:5];
  if (v4 && [v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      [v4 setNetworkSlicingStateAtIndex:v5 to:{objc_msgSend(v6, "BOOLValue")}];

      ++v5;
    }

    while (v5 < [v3 count]);
  }
}

- (void)_registerForSIMStatusChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = +[SystemProperties sharedInstance];
  dualSIMCapability = [v5 dualSIMCapability];

  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO);
  if (dualSIMCapability)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "SIM: Dual SIM capable or modern device, updating subscribers", buf, 2u);
    }

    if (dualSIMCapability == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_461;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v15 = v9;
    dispatch_async(queue, block);

    [notificationCopy updateSubscribers];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "registerForSIMStatusChange: Dual SIM capability unknown, retrying later", buf, 2u);
    }

    queue2 = [(AnalyticsEngineCore *)self queue];
    dispatch_async(queue2, &__block_literal_global_460);

    v12 = dispatch_time(0, 5000000000);
    queue3 = [(AnalyticsEngineCore *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_2;
    v16[3] = &unk_27898A7D0;
    v16[4] = self;
    v17 = notificationCopy;
    dispatch_after(v12, queue3, v16);
  }
}

void __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke()
{
  v0 = [NetworkStateRelay getStateRelayFor:5];
  [v0 setCellDualSimStatus:0];
}

void __66__NetworkAnalyticsEngine__registerForSIMStatusChangeNotification___block_invoke_461(uint64_t a1)
{
  v2 = [NetworkStateRelay getStateRelayFor:5];
  [v2 setCellDualSimStatus:*(a1 + 32)];
}

- (void)_registerForLinkQualityNotifications:(id)notifications
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [notificationsCopy objectForKeyedSubscript:*MEMORY[0x277CC3BC0]];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v5 intValue] != 1)
  {
    self->cellSPIType = 2;
    v12 = _CTServerConnectionRegisterForNotification();
    v13 = v12;
    v14 = HIDWORD(v12);
    v9 = netepochsLogHandle;
    if (HIDWORD(v12))
    {
      v15 = 0;
    }

    else
    {
      v15 = v12 == 0;
    }

    if (!v15)
    {
      if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v21 = 67109376;
      v22[0] = v13;
      LOWORD(v22[1]) = 1024;
      *(&v22[1] + 2) = v14;
      v11 = "(Fallback) Failed to register for CT legacy notifications, error = (%d, %d)";
      goto LABEL_16;
    }

    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    LOWORD(v21) = 0;
    v11 = "(Fallback) Registered for CT legacy notifications";
LABEL_19:
    v16 = v9;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 2;
    goto LABEL_20;
  }

  self->cellSPIType = 3;
  v6 = _CTServerConnectionRegisterSupportedEnhancedLinkQualityMetric();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = netepochsLogHandle;
  if (HIDWORD(v6))
  {
    v10 = 0;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (!v10)
  {
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v21 = 67109376;
    v22[0] = v7;
    LOWORD(v22[1]) = 1024;
    *(&v22[1] + 2) = v8;
    v11 = "eLQM: Failed to register for BB eLQM supported metrics, error = (%d, %d)";
LABEL_16:
    v16 = v9;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 14;
LABEL_20:
    _os_log_impl(&dword_23255B000, v16, v17, v11, &v21, v18);
    goto LABEL_21;
  }

  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    v11 = "eLQM: Registered for BB eLQM supported metrics";
    goto LABEL_19;
  }

LABEL_21:
  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellSPIType = self->cellSPIType;
    v21 = 134217984;
    *v22 = cellSPIType;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Cell SPI Type identified as: %lu", &v21, 0xCu);
  }
}

id __56__NetworkAnalyticsEngine_sendWiFiAssistUsage_cellUsage___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"rnfDataUsage";
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 32)];
  v6[1] = @"cellDataUsage";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)sendWifiAssistDataUsageMetric
{
  v3 = objc_alloc(MEMORY[0x277D6B540]);
  workspace = self->super.workspace;
  entityName = [MEMORY[0x277D6B518] entityName];
  v33 = [v3 initWithWorkspace:workspace entityName:entityName withCache:0];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K != nil && %K.length > 0) && (%K > 0 || %K > 0)", @"hasProcess.bundleName", @"hasProcess.bundleName", @"wwanIN", @"wwanOUT"];
  v7 = functionOnKeyDescriptor();
  v8 = functionOnKeyDescriptor();
  v9 = functionOnKeyDescriptor();
  v10 = functionOnKeyDescriptor();
  v11 = objc_alloc_init(MEMORY[0x277D6B510]);
  [v11 addAggregateProperty:v7];
  [v11 addAggregateProperty:v8];
  [v11 addAggregateProperty:v9];
  [v11 addAggregateProperty:v10];
  LOBYTE(v26) = 0;
  v12 = [v33 fetchEntityDictionariesWithProperties:MEMORY[0x277CBEBF8] fetchRequestProperties:v11 predicate:v6 sortDescriptors:0 limit:0 offset:0 includeObjectID:v26];
  v13 = v12;
  if (v12 && [v12 count])
  {
    v31 = v6;
    selfCopy = self;
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v14 objectForKeyedSubscript:@"rnfInTotal"];
    integerValue = [v15 integerValue];
    v16 = [v14 objectForKeyedSubscript:@"rnfOutTotal"];
    integerValue2 = [v16 integerValue];

    v17 = [v14 objectForKeyedSubscript:@"cellInTotal"];
    integerValue3 = [v17 integerValue];
    v18 = [v14 objectForKeyedSubscript:@"cellOutTotal"];
    integerValue4 = [v18 integerValue];

    v20 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.symptomsd.CoreAnalytics"];
    v21 = v20;
    if (v20)
    {
      v22 = integerValue2 + integerValue;
      v30 = integerValue4 + integerValue3;
      v23 = [v20 objectForKey:@"rnfDataUsage"];

      if (v23)
      {
        v24 = v22 - [v21 integerForKey:@"rnfDataUsage"];
      }

      else
      {
        v24 = 0;
      }

      [v21 setInteger:v22 forKey:@"rnfDataUsage"];
      v25 = [v21 objectForKey:@"cellDataUsage"];

      if (v25)
      {
        v25 = (v30 - [v21 integerForKey:@"cellDataUsage"]);
      }

      [v21 setInteger:? forKey:?];
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }

    [(NetworkAnalyticsEngine *)selfCopy sendWiFiAssistUsage:v24 cellUsage:v25];

    v6 = v31;
  }
}

id __55__NetworkAnalyticsEngine_sendWiFiAssistState_eligible___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"rnfEligible";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[1] = @"rnfEnabled";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 33)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (void)sendWifiAssistStateMetric
{
  v10 = +[CoreTelephonyShim sharedInstance];
  getCurrentSIMStatus = [v10 getCurrentSIMStatus];
  v4 = getCurrentSIMStatus;
  if (getCurrentSIMStatus)
  {
    v5 = [getCurrentSIMStatus isEqualToString:*MEMORY[0x277CC3F00]];
    v6 = +[SystemSettingsRelay defaultRelay];
    v7 = v6;
    if (v5 && ([v6 airplaneModeSwitchEnabled] & 1) == 0 && (objc_msgSend(v7, "cellDataSwitchEnabled") & 1) != 0)
    {
      getCurrentDataStatus = [v10 getCurrentDataStatus];
      v9 = getCurrentDataStatus;
      if (getCurrentDataStatus && [getCurrentDataStatus attached])
      {
        -[NetworkAnalyticsEngine sendWiFiAssistState:eligible:](self, "sendWiFiAssistState:eligible:", [v7 rnfEnabled], objc_msgSend(v9, "cellularDataPossible"));
      }
    }

    else
    {
      -[NetworkAnalyticsEngine sendWiFiAssistState:eligible:](self, "sendWiFiAssistState:eligible:", [v7 rnfEnabled], 0);
    }
  }
}

- (void)scheduleWiFiAssistAnalyticsTask
{
  objc_initWeak(&location, self);
  queue = [(AnalyticsEngineCore *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NetworkAnalyticsEngine_scheduleWiFiAssistAnalyticsTask__block_invoke;
  v4[3] = &unk_27898C3B0;
  objc_copyWeak(&v5, &location);
  [(PeriodicMaintenanceActivity *)DailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"NAEngine.Daily.MetricReporting" queue:queue activity:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __57__NetworkAnalyticsEngine_scheduleWiFiAssistAnalyticsTask__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained sendWifiAssistStateMetric];
    [v2 sendWifiAssistDataUsageMetric];
    WeakRetained = v2;
  }
}

- (void)_extractCellLinkFingerprintFrom:(__CFData *)from
{
  v67[6] = *MEMORY[0x277D85DE8];
  if (!from)
  {
    v39 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v40 = "eLQM: link fingerprint payload is nil";
    v41 = v39;
    v42 = 2;
LABEL_39:
    _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
    return;
  }

  fromCopy = from;
  Length = CFDataGetLength(from);
  if (Length != 224)
  {
    v43 = Length;
    v44 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 134217984;
    *v57 = v43;
    v40 = "eLQM: Dropping unexpected link fingerprint payload, length = %ld bytes";
    v41 = v44;
    v42 = 12;
    goto LABEL_39;
  }

  selfCopy = self;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v55 = 0;
  v10 = &unk_2814D3218;
  v11 = &unk_2814D3228;
  v12 = &unk_2814D3ABC;
  v13 = &unk_2814D3ACC;
  v46 = fromCopy;
  do
  {
    v52 = v11;
    v14 = &currCellFp + 44 * v7;
    v53 = (&prevCellFp + 44 * v7);
    v54 = v14;
    *v53 = *v14;
    v68.location = v6 + 4;
    v68.length = 4;
    CFDataGetBytes(fromCopy, v68, v14);
    if (!v7)
    {
      LODWORD(v55) = *(v54 + 1);
      HIDWORD(v55) = v53[1];
    }

    v15 = 0;
    for (i = 0; i != 16; i += 4)
    {
      *&v10[i] = *&v12[i];
      v69.location = v6 + i + 8;
      v69.length = 4;
      CFDataGetBytes(fromCopy, v69, &v12[i]);
      if (!v7)
      {
        v17 = *&v10[i];
        if (v17 <= HIDWORD(v55))
        {
          v18 = HIDWORD(v55);
        }

        else
        {
          v18 = *&v10[i];
        }

        if (v17 > HIDWORD(v55))
        {
          v8 = v15;
        }

        v19 = *&v12[i];
        v20 = v55;
        v21 = v19 > v55;
        if (v19 > v55)
        {
          v20 = *&v12[i];
        }

        v55 = __PAIR64__(v18, v20);
        if (v21)
        {
          v9 = v15;
        }
      }

      ++v15;
    }

    v51 = v9;
    for (j = 0; j != 16; j += 4)
    {
      *&v52[j] = *&v13[j];
      v70.location = v6 + j + 24;
      v70.length = 4;
      CFDataGetBytes(fromCopy, v70, &v13[j]);
    }

    v47 = v10;
    v50 = v7;
    if (!v7)
    {
      v23 = *&v54[4 * v9 + 20];
      if (v23 != v53[v8 + 5])
      {
        v24 = [(NetworkAnalyticsEngine *)selfCopy _epochForInterfaceType:5];
        v25 = v24;
        if (v24)
        {
          getMatchingRTLocationOfInterestType = [v24 getMatchingRTLocationOfInterestType];
        }

        else
        {
          getMatchingRTLocationOfInterestType = -1;
        }

        v66[0] = @"PrimaryKey";
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CELLULAR-RECORD"];
        v67[0] = v26;
        v67[1] = &unk_2847EFAD0;
        v66[1] = @"InterfaceType";
        v66[2] = @"LoadedLQM";
        v27 = [MEMORY[0x277CCABB0] numberWithInt:v23];
        v67[2] = v27;
        v66[3] = @"LOI";
        v28 = [MEMORY[0x277CCABB0] numberWithInteger:getMatchingRTLocationOfInterestType];
        v67[3] = v28;
        v67[4] = &unk_2847EFAE8;
        v66[4] = @"NetworkAttachmentFaulty";
        v66[5] = @"CellFingerprintTriggered";
        v67[5] = MEMORY[0x277CBEC38];
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:6];

        [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:1 forInterface:2 fromDict:v29];
      }
    }

    v49 = v8;
    v53[9] = *(v54 + 9);
    v71.location = v6 + 40;
    v71.length = 4;
    CFDataGetBytes(fromCopy, v71, v54 + 36);
    v53[10] = *(v54 + 10);
    v72.location = v6 + 44;
    v72.length = 4;
    CFDataGetBytes(fromCopy, v72, v54 + 40);
    v30 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"(");
    v31 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithFormat:", @"(");
    v32 = -16;
    do
    {
      v33 = &v13[v32];
      if (v32 == -4)
      {
        v34 = ")";
      }

      else
      {
        v34 = ", ";
      }

      [v30 appendFormat:@"%d%s", *v33, v34];
      [v31 appendFormat:@"%d%s", v33[4], v34];
      v32 += 4;
    }

    while (v32);
    v35 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v36 = *v54;
      v37 = *(v54 + 9);
      v38 = *(v54 + 10);
      *buf = 67110403;
      *v57 = v50;
      *&v57[4] = 1025;
      *&v57[6] = v36;
      v58 = 2112;
      v59 = v30;
      v60 = 2112;
      v61 = v31;
      v62 = 1024;
      v63 = v37;
      v64 = 1024;
      v65 = v38;
      _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "eLQM: Link fingerprint for Cell %d: Cell Id = %{private}d, Duration = %@, LQM = %@, Throughput(UL, DL) = (%d, %d) Kbps", buf, 0x2Eu);
    }

    v7 = v50 + 1;
    fromCopy = v46;
    v10 = v47 + 44;
    v12 += 44;
    v6 += 44;
    v11 = v52 + 44;
    v13 += 44;
    v8 = v49;
    v9 = v51;
  }

  while (v50 != 4);
}

- (void)_recoverFromSystemCriticalErrors
{
  if (!self->serverConnection)
  {
    block[9] = v2;
    block[10] = v3;
    v4 = maxRetryCountCTConnectionSetup--;
    if (v4 < 2)
    {
      v8 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Failed to set up CoreTelephony and Baseband channels, zero retries left, giving up", v9, 2u);
      }
    }

    else
    {
      v6 = dispatch_time(0, 5000000000);
      queue = [(AnalyticsEngineCore *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__NetworkAnalyticsEngine__recoverFromSystemCriticalErrors__block_invoke;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      dispatch_after(v6, queue, block);
    }
  }
}

uint64_t __58__NetworkAnalyticsEngine__recoverFromSystemCriticalErrors__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = maxRetryCountCTConnectionSetup;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Retrying to set up CoreTelephony and Baseband channels, retries left = %d", v4, 8u);
  }

  return [*(a1 + 32) _setupCoreTelephonyAndBasebandNotificationsOnElevatedPriorityQueue];
}

- (id)_adviceToNSString:(int)string
{
  if (string > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27898DF38[string];
  }

  return v4;
}

- (int)_generateAdviceForEpoch:(id)epoch relativeTo:(id)to
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  epochCopy = epoch;
  toCopy = to;
  if (!epochCopy)
  {
    v10 = 3;
    goto LABEL_22;
  }

  fatal = [epochCopy fatal];
  isRunning = [fatal isRunning];

  if (isRunning)
  {
    v10 = 4;
    goto LABEL_22;
  }

  if (!toCopy)
  {
    oncell = [epochCopy oncell];
    v14 = 1;
    if (oncell)
    {
      v14 = 2;
    }

    v15 = self->lastScoreExit[v14];
    durable = [epochCopy durable];
    if (([durable isKnownGood] & 1) != 0 || v15 == 1)
    {
      lowq = [epochCopy lowq];
      if (![lowq isRunning])
      {
        lowLqm = [epochCopy lowLqm];
        isRunning2 = [lowLqm isRunning];

        if (isRunning2)
        {
          v10 = 5;
        }

        else
        {
          v10 = 7;
        }

        goto LABEL_22;
      }
    }

    v10 = 5;
    goto LABEL_22;
  }

  v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:toCopy];
  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->snapshots objectForKeyedSubscript:v11];
    if (v12)
    {
      v10 = [epochCopy compareToSnapshot:v12];
    }

    else
    {
      v19 = netepochsLogHandle;
      v10 = 0;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        uUIDString = [v11 UUIDString];
        v28 = 138412290;
        *v29 = uUIDString;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "relative key %@ not found", &v28, 0xCu);

        v10 = 0;
      }
    }
  }

  else
  {
    v18 = netepochsLogHandle;
    v10 = 0;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      *v29 = toCopy;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "invalid relative key %@", &v28, 0xCu);
      v10 = 0;
    }
  }

LABEL_22:
  v22 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v28 = 67109378;
    v29[0] = v10;
    LOWORD(v29[1]) = 2112;
    *(&v29[1] + 2) = epochCopy;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "Generated advice %d for epoch %@", &v28, 0x12u);
  }

  if (epochCopy)
  {
    if ([epochCopy oncell])
    {
      v23 = 5;
    }

    else
    {
      v23 = 3;
    }

    v24 = [NetworkStateRelay getStateRelayFor:v23];
    [v24 setStuckDefRoute:v10 == 4];
    [v24 setAdvisory:v10];
  }

  return v10;
}

- (void)_updateAdviceForInterfaceType:(unsigned __int8)type
{
  v4 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:type];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_informKernelOfCellRrc:(int)rrc forInterface:(id)interface
{
  v25 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v23 = 0u;
  v24 = 0u;
  uTF8String = [interfaceCopy UTF8String];
  v7 = socket(2, 2, 0);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    if (uTF8String)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(uTF8String + v9);
        *(&v23 + v9) = v10;
        if (!v10)
        {
          break;
        }

        if (++v9 == 15)
        {
          HIBYTE(v23) = 0;
          break;
        }
      }

      LOBYTE(v24) = 1;
      BYTE1(v24) = rrc;
      v11 = ioctl(v7, 0xC02069A9uLL, &v23);
      v12 = netepochsLogHandle;
      if (v11)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          rrcCopy3 = rrc;
          v21 = 2080;
          v22 = uTF8String;
          v13 = "RRC ioctl failure to notify kernel of change to %d interface %s";
          v14 = v12;
          v15 = OS_LOG_TYPE_ERROR;
LABEL_16:
          v18 = 18;
          goto LABEL_17;
        }
      }

      else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        rrcCopy3 = rrc;
        v21 = 2080;
        v22 = uTF8String;
        v13 = "RRC ioctl sets %d for interface %s";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_16;
      }
    }

    else
    {
      v17 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        rrcCopy3 = rrc;
        v13 = "ifName is NULL, not notifying kernel of RRC change to %d";
        v14 = v17;
        v15 = OS_LOG_TYPE_ERROR;
        v18 = 8;
LABEL_17:
        _os_log_impl(&dword_23255B000, v14, v15, v13, buf, v18);
      }
    }

    close(v8);
    goto LABEL_19;
  }

  v16 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Unable to open a socket for RRC ioctl to kernel", buf, 2u);
  }

LABEL_19:
}

- (void)_informKernelOfLIMUplink:(BOOL)uplink downlink:(BOOL)downlink forInterface:(const char *)interface
{
  downlinkCopy = downlink;
  uplinkCopy = uplink;
  v39 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v8 = socket(2, 2, 0);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = v8;
    if (interface)
    {
      v10 = 0;
      while (1)
      {
        v11 = interface[v10];
        *(&v37 + v10) = v11;
        if (!v11)
        {
          break;
        }

        if (++v10 == 15)
        {
          HIBYTE(v37) = 0;
          break;
        }
      }

      if (uplinkCopy && downlinkCopy)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }

      if (!uplinkCopy && downlinkCopy)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12;
      }

      if (!uplinkCopy || downlinkCopy)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1;
      }

      LODWORD(v38) = v14;
      v15 = ioctl(v8, 0xC02069BFuLL, &v37);
      v16 = netepochsLogHandle;
      if (v15)
      {
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
          v18 = *__error();
          *buf = 67110146;
          v28 = v14;
          v29 = 1024;
          v30 = uplinkCopy;
          v31 = 1024;
          v32 = downlinkCopy;
          v33 = 2080;
          interfaceCopy2 = interface;
          v35 = 1024;
          v36 = v18;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "ioctl failure to notify kernel of overall LIM state %u with UL/DL (%d/%d) on interface %s, errno %d", buf, 0x24u);
        }

        goto LABEL_26;
      }

      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v28 = v14;
        v29 = 1024;
        v30 = uplinkCopy;
        v31 = 1024;
        v32 = downlinkCopy;
        v33 = 2080;
        interfaceCopy2 = interface;
        v23 = "ioctl sets overall LIM state %u with UL/DL (%d/%d) for interface %s";
        v24 = v16;
        v25 = OS_LOG_TYPE_DEFAULT;
        v26 = 30;
        goto LABEL_25;
      }
    }

    else
    {
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v28 = uplinkCopy;
        v29 = 1024;
        v30 = downlinkCopy;
        v23 = "interfaceName is NULL, not notifying kernel of LIM UL/DL (%d/%d)";
        v24 = v22;
        v25 = OS_LOG_TYPE_ERROR;
        v26 = 14;
LABEL_25:
        _os_log_impl(&dword_23255B000, v24, v25, v23, buf, v26);
      }
    }

LABEL_26:
    close(v9);
    return;
  }

  v19 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v20 = v19;
    v21 = *__error();
    *buf = 67109120;
    v28 = v21;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Unable to open a socket for LIM ioctl to kernel, errno %d", buf, 8u);
  }
}

- (void)_actUponLoadedLqmChangeFrom:(int)from to:(int)to onInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v6 = *&to;
  v57 = *MEMORY[0x277D85DE8];
  v9 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:type];
  v10 = v9;
  if (from == -2 && v6 == -1)
  {
    goto LABEL_29;
  }

  if (from == -1 && v6 == -2)
  {
    v11 = 1;
    goto LABEL_30;
  }

  selfCopy = self;
  [v9 lqmTransitions];
  [v10 setLqmTransitions:v12 + 1.0];
  v13 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    [v10 lqmTransitions];
    v16 = v15;
    interfaceName = [v10 interfaceName];
    primaryKey = [v10 primaryKey];
    *buf = 134219267;
    *v49 = v16;
    *&v49[8] = 2112;
    *&v49[10] = interfaceName;
    v50 = 2113;
    *v51 = primaryKey;
    *&v51[8] = 1024;
    fromCopy = from;
    v53 = 1024;
    v54 = v6;
    v55 = 2048;
    v56 = [v10 loi];
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Incrementing loaded LQM transitions = %f, interface = %@, primaryKey = %{private}@, loaded LQM(old/new) = (%d/%d), LOI (extended) = %ld", buf, 0x36u);
  }

  if (typeCopy == 5)
  {
    uTF8String = "CELLULAR-RECORD";
  }

  else
  {
    primaryKey2 = [v10 primaryKey];
    uTF8String = [primaryKey2 UTF8String];
  }

  getMatchingRTLocationOfInterestType = [v10 getMatchingRTLocationOfInterestType];
  v22 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:typeCopy];
  v46[0] = @"PrimaryKey";
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:uTF8String];
  v47[0] = v23;
  v46[1] = @"InterfaceType";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
  v47[1] = v24;
  v46[2] = @"LoadedLQM";
  v25 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v47[2] = v25;
  v46[3] = @"LOI";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:getMatchingRTLocationOfInterestType];
  v47[3] = v26;
  v47[4] = &unk_2847EFAE8;
  v46[4] = @"NetworkAttachmentFaulty";
  v46[5] = @"CellFingerprintTriggered";
  v47[5] = MEMORY[0x277CBEC28];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:6];

  v11 = 1;
  [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:1 forInterface:v22 fromDict:v27];

  if (v6 > 19)
  {
    if (v6 != 20)
    {
      if (v6 == 100)
      {
        if (from > 0x32 || ((1 << from) & 0x4000000100400) == 0)
        {
          goto LABEL_29;
        }

        v32 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
          primaryKey3 = [v10 primaryKey];
          *buf = 138477827;
          *v49 = primaryKey3;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "Stopping lowLqm timer for %{private}@", buf, 0xCu);
        }

        lowLqm = [v10 lowLqm];
        [lowLqm stop];
LABEL_28:

        [(NetworkAnalyticsEngine *)selfCopy _updateAdviceForEpoch:v10];
        goto LABEL_29;
      }

      if (v6 != 50)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    if (from < 0xFFFFFFFE && from != 100)
    {
      goto LABEL_29;
    }

    v28 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      primaryKey4 = [v10 primaryKey];
      *buf = 138477827;
      *v49 = primaryKey4;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "Starting lowLqm timer for %{private}@", buf, 0xCu);
    }

    lowLqm = [v10 lowLqm];
    [lowLqm start];
    goto LABEL_28;
  }

  if (v6 == -2)
  {
    goto LABEL_30;
  }

  if (v6 == 10)
  {
    goto LABEL_18;
  }

LABEL_29:
  v11 = 0;
LABEL_30:
  v35 = typeCopy;
  pendedLqm[typeCopy] = v11;
  v36 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v37 = pendedLqm[typeCopy];
    v38 = v36;
    primaryKey5 = [v10 primaryKey];
    *buf = 67109379;
    *v49 = v37;
    *&v49[4] = 2113;
    *&v49[6] = primaryKey5;
    _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "pendedLqm = %d, primaryKey = %{private}@", buf, 0x12u);
  }

  v40 = [NetworkStateRelay getStateRelayFor:typeCopy];
  [v40 setLinkQuality:v6];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  linkQualityUpdateDelay[v35] = -(realTimeLqmLastUpdated[v35] - v42 * 1000.0);

  v43 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v44 = linkQualityUpdateDelay[v35];
    *buf = 134218752;
    *v49 = v35;
    *&v49[8] = 2048;
    *&v49[10] = v44;
    v50 = 1024;
    *v51 = from;
    *&v51[4] = 1024;
    *&v51[6] = v6;
    _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "linkQuality updated, interface type = %ld, delay = %f ms, (old/new) = (%d/%d)", buf, 0x22u);
  }
}

- (void)_setRadioTechnology:(unsigned __int8)technology forInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  technologyCopy = technology;
  v14 = *MEMORY[0x277D85DE8];
  v6 = [NetworkStateRelay getStateRelayFor:type];
  [v6 setRadioTechnology:technologyCopy];
  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [NetworkAnalyticsEngine mapRadioTechnologyTypeToString:technologyCopy];
    v10 = 138412546;
    v11 = v9;
    v12 = 2048;
    v13 = typeCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "RAT changed: radio-technology %@ interface-type %ld", &v10, 0x16u);
  }
}

- (void)_actUponCellRrcChangeTo:(int)to
{
  v3 = *&to;
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    lastReportedRrcValue = self->lastReportedRrcValue;
    lastReportedRrcInterface = self->lastReportedRrcInterface;
    if (v5)
    {
      interfaceName = [v5 interfaceName];
    }

    else
    {
      interfaceName = @"<not-available>";
    }

    v15[0] = 67109890;
    v15[1] = v3;
    v16 = 1024;
    v17 = lastReportedRrcValue;
    v18 = 2112;
    v19 = lastReportedRrcInterface;
    v20 = 2112;
    v21 = interfaceName;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "New RRC %d when previous %d from %@, epoch interface %@", v15, 0x22u);
    if (v5)
    {
    }
  }

  if (v5)
  {
    if (self->lastReportedRrcValue != v3 || (v10 = self->lastReportedRrcInterface, [v5 interfaceName], v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = -[NSString isEqualToString:](v10, "isEqualToString:", v11), v11, (v10 & 1) == 0))
    {
      interfaceName2 = [v5 interfaceName];
      [(NetworkAnalyticsEngine *)self _informKernelOfCellRrc:v3 forInterface:interfaceName2];

      self->lastReportedRrcValue = v3;
      interfaceName3 = [v5 interfaceName];
      v14 = self->lastReportedRrcInterface;
      self->lastReportedRrcInterface = interfaceName3;
    }
  }

  else if (!v3 && self->lastReportedRrcValue)
  {
    [(NetworkAnalyticsEngine *)self _informKernelOfCellRrc:0 forInterface:self->lastReportedRrcInterface];
    self->lastReportedRrcValue = 0;
  }
}

- (BOOL)_shouldAcceptRouteSource:(__NStatSource *)source
{
  v43 = *MEMORY[0x277D85DE8];
  liveDefaultRoutes = self->liveDefaultRoutes;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v7 = [(NSMutableDictionary *)liveDefaultRoutes objectForKeyedSubscript:v6];

  v8 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    sourceCopy3 = source;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "description callback for route source %p gives epoch %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = MEMORY[0x238386E90](source);
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      sourceCopy3 = source;
      v39 = 2113;
      v40 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "route source %p description callback has snapshot %{private}@", buf, 0x16u);
    }

    gateway = [v9 gateway];
    oncell = [v7 oncell];
    if (oncell)
    {
      v13 = 5;
    }

    else
    {
      v13 = 3;
    }

    v14 = [NetworkStateRelay getStateRelayFor:v13];
    v34 = 0;
    v35[0] = 0;
    v36 = 0;
    v35[1] = 0;
    if (!gateway || [gateway length] > 0x1C)
    {
      goto LABEL_33;
    }

    [gateway getBytes:&v34 length:{objc_msgSend(gateway, "length")}];
    v15 = v34;
    if ([gateway length] < v15)
    {
      LOBYTE(v34) = [gateway length];
    }

    memset(v30, 0, 46);
    if (BYTE1(v34) == 2)
    {
      v16 = &v34 + 4;
    }

    else
    {
      if (BYTE1(v34) != 30)
      {
        goto LABEL_24;
      }

      v16 = v35;
    }

    inet_ntop(BYTE1(v34), v16, v30, 0x2Eu);
    v32 = v30;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v30];
    if (v17)
    {
      v31[0] = v14;
      v31[1] = v31;
      v18 = v17;
      hasGW = [v7 hasGW];
      v33 = v18;
      [hasGW addObject:v18];

      v20 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        primaryKey = [v7 primaryKey];
        hasGW2 = [v7 hasGW];
        *buf = 134218499;
        sourceCopy3 = source;
        v39 = 2113;
        v40 = primaryKey;
        v41 = 2113;
        v42 = hasGW2;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "new default route %p for %{private}@ has gw set to %{private}@", buf, 0x20u);
      }

      v14 = v31[0];
      if (v31[0])
      {
        v24 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v13];
        v25 = netepochsLogHandle;
        v26 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
        if (v24 == v7)
        {
          if (v26)
          {
            v28 = "Wi-Fi";
            *buf = 136381187;
            sourceCopy3 = v32;
            if (oncell)
            {
              v28 = "Cellular";
            }

            v39 = 2080;
            v40 = v28;
            v41 = 2048;
            v42 = v14;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Adding a default gateway %{private}s to %s state relay at %p", buf, 0x20u);
          }

          [v14 addDefaultGateway:v33];
        }

        else if (v26)
        {
          *buf = 136380675;
          sourceCopy3 = v32;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Received a default gateway %{private}s from stale epoch", buf, 0xCu);
        }
      }

      v27 = v33;
      goto LABEL_32;
    }

LABEL_24:
    v27 = 0;
LABEL_32:

LABEL_33:
  }

  return 1;
}

- (void)_handleRouteData:(__NStatSource *)data
{
  v37 = *MEMORY[0x277D85DE8];
  liveDefaultRoutes = self->liveDefaultRoutes;
  v6 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v7 = [(NSMutableDictionary *)liveDefaultRoutes objectForKeyedSubscript:v6];

  v8 = MEMORY[0x238386E90](data);
  if (!v8)
  {
    v20 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    dataCopy5 = data;
    v21 = "No snapshot available for route source %p";
    v22 = v20;
    v23 = OS_LOG_TYPE_ERROR;
LABEL_17:
    _os_log_impl(&dword_23255B000, v22, v23, v21, buf, 0xCu);
    goto LABEL_18;
  }

  if (!v7)
  {
    v28 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    dataCopy5 = data;
    v21 = "default route %p counts block, no active epoch";
    v22 = v28;
    v23 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_17;
  }

  if ([v7 hasCountDownActive:@"tickerDOA"] && (objc_msgSend(v7, "partial"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    connectSuccesses = [v8 connectSuccesses];
    v11 = connectSuccesses;
    partial = [v7 partial];
    [partial connSuccesses];
    v14 = v13;

    [v8 rttMinimum];
    v16 = v15;
    v17 = connectSuccesses;
    v18 = netepochsLogHandle;
    v19 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v14 >= v17 || v16 == 0.0)
    {
      if (v19)
      {
        *buf = 134218752;
        dataCopy5 = data;
        v33 = 2048;
        *v34 = v11;
        *&v34[8] = 2048;
        *&v34[10] = v14;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "default route %p counts block, connSucc=%llu, prevSucc=%f, rttMin=%f", buf, 0x2Au);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 134218752;
        dataCopy5 = data;
        v33 = 2048;
        *v34 = v11;
        *&v34[8] = 2048;
        *&v34[10] = v14;
        v35 = 2048;
        v36 = v16;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "disarming DOA ticker in default route %p counts block, connSucc=%llu, prevSucc=%f, rttMin=%f", buf, 0x2Au);
      }

      [(NetworkAnalyticsEngine *)self _disarmDOASuspector:v7];
    }
  }

  else
  {
    v24 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      v26 = [v7 hasCountDownActive:@"tickerDOA"];
      partial2 = [v7 partial];
      *buf = 134218496;
      dataCopy5 = data;
      v33 = 1024;
      *v34 = v26;
      *&v34[4] = 2048;
      *&v34[6] = partial2;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "default route %p counts block, either no DOA ticker (%d) or no partial (%p)", buf, 0x1Cu);
    }
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __43__NetworkAnalyticsEngine__handleRouteData___block_invoke;
  v29[3] = &unk_27898DAF8;
  v29[4] = self;
  v30 = v7;
  [v30 updateMetrics:v8 source:data wasProgress:v29];

LABEL_18:
}

void __43__NetworkAnalyticsEngine__handleRouteData___block_invoke(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = @"tickerFatal";
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "defusing ticker %@ having seen route progress since %@", &v10, 0x16u);
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [v7 primaryKey];
    [v8 _disarmFatalSuspector:v7 withEventAt:v5 by:v9];
  }
}

- (void)_handleRouteClosing:(__NStatSource *)closing
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAE60] valueWithPointer:?];
  v6 = [(NSMutableDictionary *)self->liveDefaultRoutes objectForKeyedSubscript:v5];
  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = 134218752;
      closingCopy2 = closing;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      defRoute4 = [v6 defRoute4];
      v16 = 2048;
      defRoute6 = [v6 defRoute6];
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "default route %p is closing, epoch %p with v4 route %p, v6 route %p", &v10, 0x2Au);
    }

    if ([v6 defRoute4] == closing)
    {
      [v6 setDefRoute4:0];
    }

    if ([v6 defRoute6] == closing)
    {
      [v6 setDefRoute6:0];
    }

    [(NSMutableDictionary *)self->liveDefaultRoutes removeObjectForKey:v5];
  }

  else if (v8)
  {
    v10 = 134217984;
    closingCopy2 = closing;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "default route %p is closing with no associated epoch", &v10, 0xCu);
  }

  if (closing)
  {
    CFRelease(closing);
  }
}

- (__NStatSource)_newDefRouteForInterface:(id)interface saFamily:(unsigned __int8)family
{
  familyCopy = family;
  v21 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v6 = if_nametoindex([interfaceCopy UTF8String]);
  if (!v6)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  RouteSource = NStatManagerCreateRouteSource();
  if (!RouteSource)
  {
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v14 = interfaceCopy;
      v15 = 1024;
      v16 = familyCopy;
      v17 = 1024;
      LODWORD(v18) = v7;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Failed to create default route on %@, family = %d, index = %d", buf, 0x18u);
    }

    goto LABEL_7;
  }

  v9 = RouteSource;
  NStatSourceSetEventsBlock();
  v10 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v14 = interfaceCopy;
    v15 = 1024;
    v16 = familyCopy;
    v17 = 2048;
    v18 = v9;
    v19 = 1024;
    v20 = v7;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Created default route on %@, family = %d, src = %p, index = %d", buf, 0x22u);
  }

LABEL_8:

  return v9;
}

void __60__NetworkAnalyticsEngine__newDefRouteForInterface_saFamily___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  if (a3 == 2)
  {
    [*(a1 + 32) _handleRouteClosing:a2];
  }

  else if (a3 == 1)
  {
    if (([*(a1 + 32) _shouldAcceptRouteSource:a2] & 1) == 0)
    {
      NStatSourceRemove();
    }
  }

  else if (a3)
  {
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8[0] = 67109120;
      v8[1] = a3;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Unknown  NetworkStatistics event %d", v8, 8u);
    }
  }

  else
  {
    [*(a1 + 32) _handleRouteData:a2];
  }

  objc_autoreleasePoolPop(v6);
}

- (void)didReceiveProtocolSnapshot:(id)snapshot
{
  v50 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([snapshotCopy hasNonLocalDestination])
    {
      [snapshotCopy flowDuration];
      v6 = v5;
      v7 = 0.0;
      v8 = 0.0;
      if ([snapshotCopy rxCellularBytes] > 0xA00000 && v6 > 0.0)
      {
        v9 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v10 = v9;
          *buf = 134218496;
          sourceIdentifier = [snapshotCopy sourceIdentifier];
          v46 = 2048;
          rxCellularBytes = [snapshotCopy rxCellularBytes];
          v48 = 2048;
          v49 = v6;
          _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NAE receive snapshot %lld a cell flow with %llu downloaded bytes, duration is %f", buf, 0x20u);
        }

        v8 = [snapshotCopy rxCellularBytes] / v6;
      }

      if ([snapshotCopy rxWiFiBytes] > 0xA00000 && v6 > 0.0)
      {
        v11 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          sourceIdentifier2 = [snapshotCopy sourceIdentifier];
          rxWiFiBytes = [snapshotCopy rxWiFiBytes];
          *buf = 134218496;
          sourceIdentifier = sourceIdentifier2;
          v46 = 2048;
          rxCellularBytes = rxWiFiBytes;
          v48 = 2048;
          v49 = v6;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "NAE receive snapshot %lld a wifi flow with %llu downloaded bytes, duration is %f", buf, 0x20u);
        }

        v7 = [snapshotCopy rxWiFiBytes] / v6;
      }

      objc_opt_class();
      objc_opt_isKindOfClass();
      if (([snapshotCopy connProbeFailed] & 1) == 0)
      {
        if ([snapshotCopy interfaceWiFi])
        {
          v15 = [snapshotCopy txWiFiBytes] && objc_msgSend(snapshotCopy, "rxWiFiBytes") > 0x1000;
          if (v7 > 0.0 || v15)
          {
            v16 = objc_alloc(MEMORY[0x277CBEAA8]);
            flowStartTimestamp = [snapshotCopy flowStartTimestamp];
            v18 = [v16 initWithTimeInterval:flowStartTimestamp sinceDate:0.0];

            v19 = objc_alloc(MEMORY[0x277CCACA8]);
            sourceIdentifier3 = [snapshotCopy sourceIdentifier];
            attributedEntity = [snapshotCopy attributedEntity];
            rxWiFiBytes2 = [snapshotCopy rxWiFiBytes];
            [snapshotCopy flowDuration];
            v24 = [v19 initWithFormat:@"flow %lld for %@, WiFi rxbytes %lld duration %.3f seconds", sourceIdentifier3, attributedEntity, rxWiFiBytes2, v23];

            queue = [(AnalyticsEngineCore *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke;
            block[3] = &unk_27898DB48;
            v42 = v7;
            block[4] = self;
            v40 = v24;
            v43 = v15;
            v41 = v18;
            v26 = v18;
            v27 = v24;
            dispatch_async(queue, block);
          }
        }

        if (v8 > 0.0)
        {
          v28 = MEMORY[0x277CCACA8];
          sourceIdentifier4 = [snapshotCopy sourceIdentifier];
          attributedEntity2 = [snapshotCopy attributedEntity];
          rxCellularBytes2 = [snapshotCopy rxCellularBytes];
          [snapshotCopy flowDuration];
          v33 = [v28 stringWithFormat:@"flow %lld for %@, cell rxbytes %lld duration %.3f seconds", sourceIdentifier4, attributedEntity2, rxCellularBytes2, v32];

          queue2 = [(AnalyticsEngineCore *)self queue];
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke_550;
          v36[3] = &unk_27898BFA0;
          v38 = v8;
          v36[4] = self;
          v37 = v33;
          v35 = v33;
          dispatch_async(queue2, v36);
        }
      }
    }
  }
}

void __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:3];
  v3 = v2;
  if (v2 && ([v2 defRoute4] || objc_msgSend(v3, "defRoute6")))
  {
    if (*(a1 + 56) > 0.0)
    {
      v4 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 56);
        v6 = *(a1 + 40);
        v7 = v4;
        [v3 topDownlRate];
        v15 = 134218499;
        v16 = v5;
        v17 = 2113;
        v18 = v6;
        v19 = 2048;
        v20 = v8;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "wifi download rate of %.0f Bps reported from %{private}@, epoch's top is %.0f Bps", &v15, 0x20u);
      }

      v9 = [v3 partial];

      if (v9)
      {
        v10 = [v3 partial];
        [v10 topDownloadRate];
        v12 = v11;

        if (v12 < *(a1 + 56))
        {
          v12 = *(a1 + 56);
        }

        v13 = [v3 partial];
        [v13 setTopDownloadRate:v12];
      }

      [v3 topDownlRate];
      if (v14 < *(a1 + 56))
      {
        v14 = *(a1 + 56);
      }

      [v3 setTopDownlRate:v14];
    }

    if (*(a1 + 64) == 1)
    {
      [*(a1 + 32) _disarmFatalSuspector:v3 withEventAt:*(a1 + 48) by:*(a1 + 40)];
    }
  }
}

void __53__NetworkAnalyticsEngine_didReceiveProtocolSnapshot___block_invoke_550(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:5];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 partial];

    if (v4)
    {
      v5 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v8 = v5;
        [v3 topDownlRate];
        v15 = 134218499;
        v16 = v6;
        v17 = 2113;
        v18 = v7;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "cell download rate of %.0f Bps reported from %{private}@, epoch's top is %.0f Bps", &v15, 0x20u);
      }

      v10 = [v3 partial];
      [v10 topDownloadRate];
      v12 = v11;

      if (v12 < *(a1 + 48))
      {
        v12 = *(a1 + 48);
      }

      v13 = [v3 partial];
      [v13 setTopDownloadRate:v12];

      [v3 topDownlRate];
      if (v14 < *(a1 + 48))
      {
        v14 = *(a1 + 48);
      }

      [v3 setTopDownlRate:v14];
    }
  }
}

+ (void)didReceiveProtocolSnapshot:(id)snapshot
{
  if (sharedInstance_3)
  {
    [sharedInstance_3 didReceiveProtocolSnapshot:snapshot];
  }
}

- (void)_dnsWithSymptoms:(id)symptoms
{
  v107 = *MEMORY[0x277D85DE8];
  userInfo = [symptoms userInfo];
  keyEnumerator = [userInfo keyEnumerator];
  v87 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v89 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = keyEnumerator;
  v6 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
  if (v6)
  {
    v7 = v6;
    selfCopy = self;
    v86 = userInfo;
    v8 = 0;
    v9 = *v93;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v93 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v92 + 1) + 8 * v10);

        v12 = [userInfo objectForKeyedSubscript:v8];
        v13 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_NO_REPLIES"];
        v14 = [v8 isEqualToString:v13];

        v15 = [SymptomStore keyFromSymptomName:@"SYMPTOM_DNS_RESUMED_RESPONDING"];
        v16 = [v8 isEqualToString:v15];

        if ((v14 & 1) != 0 || v16)
        {
          v90 = v12;
          eventQualifiers = [v12 eventQualifiers];
          v18 = [eventQualifiers objectForKeyedSubscript:@"1"];
          v91 = 0;
          v19 = validateSockAddrToString(v18, 0, &v91);
          v20 = v91;

          v21 = v87;
          if (v87)
          {
            if (v19)
            {
              if ([(__CFString *)v20 length])
              {
                hasDNS = [v87 hasDNS];
                v23 = [hasDNS member:v20];

                if (v23)
                {
                  v33 = selfCopy;
                  if (v14)
                  {
                    impDNS = [v87 impDNS];
                    [impDNS addObject:v20];

                    v35 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v36 = v35;
                      impDNS2 = [v87 impDNS];
                      v38 = [impDNS2 count];
                      hasDNS2 = [v87 hasDNS];
                      v40 = [hasDNS2 count];
                      impDNS3 = [v87 impDNS];
                      hasDNS3 = [v87 hasDNS];
                      *buf = 138478851;
                      v97 = v20;
                      v98 = 2048;
                      v99 = v38;
                      v100 = 2048;
                      v101 = v40;
                      v102 = 2113;
                      v103 = impDNS3;
                      v104 = 2113;
                      v105 = hasDNS3;
                      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, server %{private}@, not responding. %lu/%lu are out: %{private}@/%{private}@", buf, 0x34u);

                      v33 = selfCopy;
                      v21 = v87;
                    }

                    v43 = +[NDFCoreShim sharedInstance];
                    [v43 dnsServer:v20 isResponding:0];

                    [(NetworkAnalyticsEngine *)v33 _updateCombinedDNSCounts];
                    hasDNS4 = [v21 hasDNS];
                    v45 = [hasDNS4 count];
                    impDNS4 = [v21 impDNS];
                    v47 = [impDNS4 count];

                    v31 = v45 == v47;
                    userInfo = v86;
                    if (v31)
                    {
                      internal_symptom_create();
                      internal_symptom_send();
                      v48 = [NetworkStateRelay getStateRelayFor:3];
                      [v48 setDnsOut:1];
                      if ([v87 hasInternetDNS])
                      {
                        [v48 setInternetDnsOut:1];
                      }

                      v49 = netepochsLogHandle;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                      {
                        v50 = v49;
                        hasDNS5 = [v87 hasDNS];
                        v52 = [hasDNS5 count];
                        *buf = 134217984;
                        v97 = v52;
                        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, all out (%lu)", buf, 0xCu);
                      }

                      [(NetworkAnalyticsEngine *)v33 _armFatalSuspector:v87 isActive:0];
                      v53 = +[NDFCoreShim sharedInstance];
                      impDNS5 = [v87 impDNS];
                      [v53 noteDNSAllOutWithServers:impDNS5];
                    }
                  }

                  else
                  {
                    v61 = objc_alloc(MEMORY[0x277CBEB58]);
                    impDNS6 = [v87 impDNS];
                    v63 = [v61 initWithSet:impDNS6];

                    [v63 removeObject:v20];
                    v64 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = v64;
                      v66 = [v63 count];
                      hasDNS6 = [v87 hasDNS];
                      v68 = [hasDNS6 count];
                      hasDNS7 = [v87 hasDNS];
                      *buf = 138478851;
                      v97 = v20;
                      v98 = 2048;
                      v99 = v66;
                      v100 = 2048;
                      v101 = v68;
                      v102 = 2113;
                      v103 = v63;
                      v104 = 2113;
                      v105 = hasDNS7;
                      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEFAULT, "recvd wifi dns symptom, server %{private}@, resumed responding. %lu/%lu are out: %{private}@/%{private}@", buf, 0x34u);

                      v21 = v87;
                    }

                    v70 = +[NDFCoreShim sharedInstance];
                    [v70 dnsServer:v20 isResponding:1];

                    hasDNS8 = [v21 hasDNS];
                    v72 = [hasDNS8 count];
                    impDNS7 = [v21 impDNS];
                    v74 = v21;
                    v75 = [impDNS7 count];

                    if (v72 == v75)
                    {
                      hasGW = [v74 hasGW];
                      hasDNS9 = [v74 hasDNS];
                      v78 = [hasGW isSubsetOfSet:hasDNS9];

                      v79 = netepochsLogHandle;
                      v80 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
                      userInfo = v86;
                      if (v78)
                      {
                        if (v80)
                        {
                          *buf = 0;
                          _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEFAULT, "passing on DNS service resume because it's from default gateway", buf, 2u);
                        }
                      }

                      else
                      {
                        if (v80)
                        {
                          *buf = 138412290;
                          v97 = @"tickerFatal";
                          _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_DEFAULT, "defusing ticker %@ having seen DNS progress", buf, 0xCu);
                        }

                        date = [MEMORY[0x277CBEAA8] date];
                        [(NetworkAnalyticsEngine *)selfCopy _disarmFatalSuspector:v87 withEventAt:date by:v20];
                      }

                      v83 = [NetworkStateRelay getStateRelayFor:3];
                      [v83 setDnsOut:0];
                      if ([v87 hasInternetDNS])
                      {
                        [v83 setInternetDnsOut:0];
                      }

                      impDNS8 = [v87 impDNS];
                      [impDNS8 removeObject:v20];

                      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                      internal_symptom_create();
                      internal_symptom_send();
                    }

                    else
                    {
                      impDNS9 = [v74 impDNS];
                      [impDNS9 removeObject:v20];

                      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                      userInfo = v86;
                    }
                  }

                  goto LABEL_50;
                }
              }
            }
          }

          if (v89)
          {
            if (v20)
            {
              hasDNS10 = [v89 hasDNS];
              v25 = [hasDNS10 member:v20];

              if (v25)
              {
                if (v14)
                {
                  impDNS10 = [v89 impDNS];
                  [impDNS10 addObject:v20];

                  [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                  hasDNS11 = [v89 hasDNS];
                  v28 = [hasDNS11 count];
                  impDNS11 = [v89 impDNS];
                  v30 = [impDNS11 count];

                  v31 = v28 == v30;
                  userInfo = v86;
                  if (v31)
                  {
                    v32 = [NetworkStateRelay getStateRelayFor:5];
                    [v32 setDnsOut:1];
                  }
                }

                else
                {
                  hasDNS12 = [v89 hasDNS];
                  v56 = [hasDNS12 count];
                  impDNS12 = [v89 impDNS];
                  v58 = [impDNS12 count];

                  if (v56 == v58)
                  {
                    v59 = [NetworkStateRelay getStateRelayFor:5];
                    [v59 setDnsOut:0];
                  }

                  impDNS13 = [v89 impDNS];
                  [impDNS13 removeObject:v20];

                  [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
                  userInfo = v86;
                }

LABEL_50:

                goto LABEL_51;
              }
            }
          }

          userInfo = v86;
          v12 = v90;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v92 objects:v106 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_51:
  }
}

- (void)_triggerDisconnectEdge:(id)edge
{
  v103 = *MEMORY[0x277D85DE8];
  edgeCopy = edge;
  v5 = &rnfLogHandle;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = qos_class_self();
    *buf = 136315138;
    v91 = qos_string(v8);
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "trigger-disconnect: _triggerDisconnectEdge: QoS %s", buf, 0xCu);
  }

  userInfo = [edgeCopy userInfo];
  keyEnumerator = [userInfo keyEnumerator];
  v10 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = keyEnumerator;
  v83 = [obj countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (!v83)
  {
    goto LABEL_41;
  }

  v12 = 0;
  v82 = *v87;
  *&v11 = 134218240;
  v75 = v11;
  v76 = edgeCopy;
  v77 = v10;
  while (2)
  {
    for (i = 0; i != v83; ++i)
    {
      v14 = v12;
      if (*v87 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v86 + 1) + 8 * i);

      v15 = [userInfo objectForKeyedSubscript:v12];
      eventData = [v15 eventData];
      if (!eventData || (~*(eventData + 4) & 3) != 0)
      {
        v71 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v72 = v12;
          v73 = v71;
          uTF8String = [v12 UTF8String];
          *buf = 136315138;
          v91 = uTF8String;
          _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_ERROR, "TD: ManagedEvent for %s lacks the expected qualifiers. Skip processing", buf, 0xCu);
        }

        edgeCopy = v76;
        goto LABEL_40;
      }

      v17 = *(eventData + 24);
      v18 = *(eventData + 32);
      v19 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v12;
        v85 = v12;
        log = v19;
        uTF8String2 = [v12 UTF8String];
        v21 = v18;
        seqNo = [v15 seqNo];
        primaryKey = [v10 primaryKey];
        v24 = v5;
        selfCopy = self;
        uTF8String3 = [primaryKey UTF8String];
        [MEMORY[0x277CBEAA8] date];
        v81 = i;
        v28 = v27 = v15;
        creationTimeStamp = [v27 creationTimeStamp];
        [v28 timeIntervalSinceDate:creationTimeStamp];
        *buf = 136316419;
        v91 = uTF8String2;
        v92 = 2048;
        v93 = seqNo;
        v18 = v21;
        v94 = 1024;
        v95 = v17;
        v96 = 2049;
        v97 = v21;
        v98 = 2081;
        v99 = uTF8String3;
        self = selfCopy;
        v5 = v24;
        v100 = 2048;
        v101 = v30;
        _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: received RSSI notification for %s [#%llu], edge: %d, target bssid: %{private}llx, incumbent: %{private}s, propagation delay: %fs", buf, 0x3Au);

        v12 = v85;
        v10 = v77;

        v15 = v27;
        i = v81;
      }

      if (v17 == 1)
      {
        self->pendedRssiEdgeTarget = v18;
        creationTimeStamp2 = [v15 creationTimeStamp];
        pendedRssiEdge = self->pendedRssiEdge;
        self->pendedRssiEdge = creationTimeStamp2;

        if (v10)
        {
          primaryKey2 = [v10 primaryKey];
          v50 = v18;
          v51 = primaryKey2;
          has_bssid = primary_key_has_bssid(primaryKey2, v50);

          if (has_bssid)
          {
            lowq = [v10 lowq];
            [lowq start];

            [(NetworkAnalyticsEngine *)self _armLowQDisconnectSuspector:v10];
            [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:v10];
            creationTimeStamp3 = [v15 creationTimeStamp];
            [WiFiTriggerHandler triggerAllowedByRSSI:1 receiptTimestamp:creationTimeStamp3];

            goto LABEL_34;
          }
        }

        v62 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v60 = v62;
          v61 = "trigger-disconnect: mismatched start-lowq notification, pending it";
LABEL_28:
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, v61, buf, 2u);
        }
      }

      else
      {
        if (!v17)
        {
          v31 = v18;
          v32 = i;
          v33 = self->pendedRssiEdge;
          self->pendedRssiEdge = 0;

          self->pendedRssiEdgeTarget = 0;
          v34 = v15;
          creationTimeStamp4 = [v15 creationTimeStamp];
          [WiFiTriggerHandler triggerAllowedByRSSI:0 receiptTimestamp:creationTimeStamp4];

          if (!v10 || ([v10 primaryKey], v36 = objc_claimAutoreleasedReturnValue(), v37 = primary_key_has_bssid(v36, v31), v36, !v37))
          {
            v59 = *v5;
            v15 = v34;
            i = v32;
            if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_34;
            }

            *buf = 0;
            v60 = v59;
            v61 = "trigger-disconnect: mismatched stop-lowq notification, tossing it";
            goto LABEL_28;
          }

          lowq2 = [v10 lowq];
          [lowq2 currentRun];
          if (v39 > 300.0)
          {

            v15 = v34;
          }

          else
          {
            lowq3 = [v10 lowq];
            [lowq3 currentRun];
            v42 = v41;
            [v10 overall];
            v44 = v43 = v10;
            [v44 currentRun];
            v46 = [StopWatch nearlyEqualRun:v42 toRun:v45 fudgeFactor:2.0];

            v10 = v43;
            v15 = v34;
            if (!v46)
            {
LABEL_33:
              lowq4 = [v10 lowq];
              [lowq4 stop];

              [(NetworkAnalyticsEngine *)self _disarmLowQDisconnectSuspector:v10];
              [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:v10];
              i = v32;
              goto LABEL_34;
            }
          }

          v63 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v64 = v63;
            lowq5 = [v10 lowq];
            [lowq5 currentRun];
            v67 = v66;
            overall = [v10 overall];
            [overall currentRun];
            *buf = v75;
            v91 = v67;
            v92 = 2048;
            v93 = v69;
            _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "RSSI ok level restored after %f down-time or the whole epoch stay (%f) prompts evaluating known-good notification", buf, 0x16u);

            v15 = v34;
          }

          [(NetworkAnalyticsEngine *)self _delayedKnownGoodNetworkAlert];
          goto LABEL_33;
        }

        v55 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v56 = v12;
          v57 = v55;
          uTF8String4 = [v12 UTF8String];
          *buf = 136315394;
          v91 = uTF8String4;
          v92 = 1024;
          LODWORD(v93) = v17;
          _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_ERROR, "trigger-disconnect: received RSSI notification for %s with invalid edge: %d", buf, 0x12u);
        }
      }

LABEL_34:
    }

    edgeCopy = v76;
    v83 = [obj countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v83)
    {
      continue;
    }

    break;
  }

LABEL_40:

LABEL_41:
}

- (void)_dataStall:(id)stall
{
  v36 = *MEMORY[0x277D85DE8];
  userInfo = [stall userInfo];
  [userInfo keyEnumerator];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v4 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v28;
    *&v5 = 138478083;
    v24 = v5;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);

        v11 = [userInfo objectForKeyedSubscript:v7];
        v12 = *([v11 eventData] + 24);
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v12];
          if ([v13 type] == 1)
          {
            v14 = 3;
            goto LABEL_13;
          }

          if ([v13 type] != 2)
          {
            goto LABEL_17;
          }

          v14 = 5;
LABEL_13:
          v16 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v14, v24];
          if (v16)
          {
            v17 = v16;
            v18 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v19 = v18;
              primaryKey = [v17 primaryKey];
              *buf = v24;
              v32 = primaryKey;
              v33 = 2048;
              v34 = v17;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Data stall reported on epoch %{private}@, %p", buf, 0x16u);
            }

            [v17 reportDataStall];
          }

          else
          {
LABEL_17:
            v21 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v22 = v21;
              type = [v13 type];
              *buf = 134217984;
              v32 = type;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Data stall reported on unidentified epoch on interface type %ld, dropping", buf, 0xCu);
            }
          }

          goto LABEL_20;
        }

        v15 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Did not receive an interface index from DATA_STALL symptom", buf, 2u);
        }

LABEL_20:
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (!v6)
      {

        break;
      }
    }
  }
}

- (void)_captivityRedirects:(id)redirects
{
  v27 = *MEMORY[0x277D85DE8];
  userInfo = [redirects userInfo];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [userInfo countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v19;
    *&v6 = 138478083;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v19 != v9)
        {
          objc_enumerationMutation(userInfo);
        }

        v8 = *(*(&v18 + 1) + 8 * i);

        v12 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
        v13 = netepochsLogHandle;
        v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            v15 = v13;
            primaryKey = [v12 primaryKey];
            *buf = v17;
            v23 = primaryKey;
            v24 = 2048;
            v25 = v12;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Captivity redirect reported on epoch %{private}@, %p", buf, 0x16u);
          }

          [v12 reportCaptivityRedirect];
        }

        else if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Captivity redirect reported on unidentified epoch, dropping", buf, 2u);
        }
      }

      v7 = [userInfo countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)_certError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  userInfo = [error userInfo];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [userInfo countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v19;
    *&v6 = 138478083;
    v17 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        v11 = v8;
        if (*v19 != v9)
        {
          objc_enumerationMutation(userInfo);
        }

        v8 = *(*(&v18 + 1) + 8 * i);

        v12 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
        v13 = netepochsLogHandle;
        v14 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            v15 = v13;
            primaryKey = [v12 primaryKey];
            *buf = v17;
            v23 = primaryKey;
            v24 = 2048;
            v25 = v12;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "Cert error reported on epoch %{private}@, %p", buf, 0x16u);
          }

          [v12 reportCertError];
        }

        else if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Cert error reported on unidentified epoch, dropping", buf, 2u);
        }
      }

      v7 = [userInfo countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)_processLIM:(id)m
{
  v9 = *MEMORY[0x277D85DE8];
  userInfo = [m userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kKernelLIMRecord"];
  if (v5)
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "LIM record passed from kernel: %@", &v7, 0xCu);
    }

    [(NetworkAnalyticsEngine *)self _createJournalRecordOfType:2 forInterface:0 fromDict:v5];
  }
}

- (void)wifiShim_NetworkForgottenWithSSID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__NetworkAnalyticsEngine_wifiShim_NetworkForgottenWithSSID___block_invoke;
    v7[3] = &unk_27898A7D0;
    v8 = dCopy;
    selfCopy = self;
    dispatch_async(queue, v7);
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Got nil SSID", buf, 2u);
    }
  }
}

void __60__NetworkAnalyticsEngine_wifiShim_NetworkForgottenWithSSID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138477827;
    v8 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Deleting known Wi-Fi Network %{private}@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v6 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:1];
  [v4 _wifiKnownNetworksDeleted:v5];
}

- (void)wifiShim_BSSIDChangedForInterface:(id)interface
{
  interfaceCopy = interface;
  queue = [(AnalyticsEngineCore *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NetworkAnalyticsEngine_wifiShim_BSSIDChangedForInterface___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = interfaceCopy;
  v6 = interfaceCopy;
  dispatch_async(queue, v7);
}

- (void)wifiShim_L2NewMetrics:(id)metrics forInterface:(id)interface
{
  v120 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  interfaceCopy = interface;
  v6 = [NetworkStateRelay getStateRelayFor:3];
  v69 = [metricsCopy objectForKeyedSubscript:@"RSSI"];
  v78 = [metricsCopy objectForKeyedSubscript:@"SNR"];
  v77 = [metricsCopy objectForKeyedSubscript:@"CCA"];
  v72 = [metricsCopy objectForKeyedSubscript:@"TXFAIL"];
  v71 = [metricsCopy objectForKeyedSubscript:@"TXRETRANS"];
  v70 = [metricsCopy objectForKeyedSubscript:@"TXFRAMES"];
  v75 = [metricsCopy objectForKeyedSubscript:@"TXRATE"];
  v74 = [metricsCopy objectForKeyedSubscript:@"RXRATE"];
  if (v69 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v69 intValue];
    if (intValue > 0xFFFFFF9B)
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(intValue) = 0;
  }

  v8 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    LODWORD(v87) = intValue;
    WORD2(v87) = 2112;
    *(&v87 + 6) = v69;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Out of range RSSI value %d (%@), using old one", buf, 0x12u);
  }

  intValue = [v6 lastReportedRxSignalStrength];
LABEL_9:
  v79 = [metricsCopy objectForKeyedSubscript:@"PER_CORE_RSSI"];
  if (v79 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v79 count] == 2)
  {
    v9 = [v79 objectAtIndexedSubscript:0];
    intValue2 = [v9 intValue];

    v11 = [v79 objectAtIndexedSubscript:1];
    intValue3 = [v11 intValue];

    if (intValue2 <= 0xFFFFFF9B)
    {
      v13 = 0;
    }

    else
    {
      v13 = intValue2;
    }

    v65 = v13;
    if (intValue3 <= 0xFFFFFF9B)
    {
      v14 = 0;
    }

    else
    {
      v14 = intValue3;
    }
  }

  else
  {
    v14 = -1;
    v65 = -1;
  }

  v63 = v14;
  if (kRSSISignalAlertThreshold)
  {
    v15 = -74;
  }

  else
  {
    v15 = -75;
  }

  v73 = intValue;
  if (intValue > v15)
  {
    goto LABEL_46;
  }

  if (v65 < 0 && (v63 & 0x80000000) != 0)
  {
    v16 = v65;
    if (v65 <= v63)
    {
      v16 = v63;
    }

    if (intValue < v16)
    {
      v16 = intValue;
    }
  }

  else
  {
    if ((v65 & 0x80000000) == 0)
    {
      v73 = intValue;
      if ((v63 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }
    }

    v16 = v65;
    if (v65 >= v63)
    {
      v16 = v63;
    }

    if (intValue < v16)
    {
      v16 = intValue;
    }
  }

  v73 = v16;
LABEL_37:
  lastReportedRxSignalStrength = [v6 lastReportedRxSignalStrength];
  if (kRSSISignalAlertThreshold)
  {
    v15 = -74;
  }

  else
  {
    v15 = -75;
  }

  if (lastReportedRxSignalStrength > v15)
  {
    if ([(SystemSettingsRelay *)self->systemSettingsRelay rnfEnabled])
    {
      memset_pattern16(wifiShim_L2NewMetrics_forInterface__rssiSamples, &unk_232816E00, 0x20uLL);
      wifiShim_L2NewMetrics_forInterface__rssiLastIndex = 0;
      queue = [(AnalyticsEngineCore *)self queue];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke;
      v83[3] = &unk_27898A7A8;
      v83[4] = self;
      v19 = &v84;
      v84 = interfaceCopy;
      v85 = intValue;
      v20 = v83;
      goto LABEL_52;
    }

    if (kRSSISignalAlertThreshold)
    {
      v15 = -74;
    }

    else
    {
      v15 = -75;
    }
  }

LABEL_46:
  if (intValue <= v15)
  {
    goto LABEL_53;
  }

  lastReportedRxSignalStrength2 = [v6 lastReportedRxSignalStrength];
  v22 = kRSSISignalAlertThreshold ? -74 : -75;
  if (lastReportedRxSignalStrength2 > v22)
  {
    goto LABEL_53;
  }

  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke_595;
  block[3] = &unk_27898A7A8;
  block[4] = self;
  v19 = &v81;
  v81 = interfaceCopy;
  v82 = intValue;
  v20 = block;
LABEL_52:
  dispatch_async(queue, v20);

LABEL_53:
  v23 = wifiShim_L2NewMetrics_forInterface__rssiLastIndex++;
  wifiShim_L2NewMetrics_forInterface__rssiSamples[v23 & 7] = v73;
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue4 = [v78 intValue];
  }

  else
  {
    intValue4 = 0;
  }

  if (v77 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue5 = [v77 intValue];
  }

  else
  {
    intValue5 = 0;
  }

  v76 = [metricsCopy objectForKeyedSubscript:@"CCA_STATS"];
  if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v24 = v76;
    v25 = [v24 objectForKeyedSubscript:@"CCA_SELF_WAKE"];
    intValue6 = [v25 intValue];

    v26 = [v24 objectForKeyedSubscript:@"CCA_SELF_TOTAL"];
    intValue7 = [v26 intValue];

    v27 = [v24 objectForKeyedSubscript:@"CCA_OTHER_WAKE"];
    intValue8 = [v27 intValue];

    v28 = [v24 objectForKeyedSubscript:@"CCA_OTHER_TOTAL"];
    intValue9 = [v28 intValue];

    v29 = [v24 objectForKeyedSubscript:@"CCA_INTERFERENCE_WAKE"];
    intValue10 = [v29 intValue];

    v30 = [v24 objectForKeyedSubscript:@"CCA_INTERFERENCE_TOTAL"];

    intValue11 = [v30 intValue];
  }

  else
  {
    intValue11 = -1;
    intValue10 = -1;
    intValue9 = -1;
    intValue8 = -1;
    intValue7 = -1;
    intValue6 = -1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v72 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue2 = [v71 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue3 = [v70 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue3 = 0;
  }

  v34 = 0.0;
  v35 = 0.0;
  if (v75)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v75 doubleValue];
      v35 = v36;
    }
  }

  if (v74)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v74 doubleValue];
      v34 = v37;
    }
  }

  v38 = v6;
  objc_sync_enter(v38);
  [v38 setLqmAsystole:0];
  [v38 setL2MetricsCount:{objc_msgSend(v38, "l2MetricsCount") + 1}];
  if ([v38 rxSignalThresholded])
  {
    if (kMinimumRSSISignalUp)
    {
      v39 = -75;
    }

    else
    {
      v39 = -77;
    }

    v40 = intValue <= v39;
  }

  else
  {
    if (kMinimumRSSISignalDown)
    {
      v41 = -77;
    }

    else
    {
      v41 = -80;
    }

    v40 = v73 <= v41;
  }

  v42 = v40;
  [v38 setTxRate:v35];
  [v38 setRxRate:v34];
  [v38 setRxSignalFullBars:intValue > -71];
  [v38 setRxSignalThresholded:v42];
  v43 = 0;
  if (unsignedLongLongValue3 >= 3 && unsignedLongLongValue2 > 2 * unsignedLongLongValue3)
  {
    v43 = (unsignedLongLongValue / unsignedLongLongValue3) > 0.1;
  }

  v44 = rnfLogHandle;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    txThresholded = [v38 txThresholded];
    *buf = 138417154;
    *&v87 = interfaceCopy;
    WORD4(v87) = 1024;
    *(&v87 + 10) = intValue;
    HIWORD(v87) = 1024;
    *v88 = v65;
    *&v88[4] = 1024;
    *v89 = v63;
    *&v89[4] = 1024;
    *&v89[6] = v73;
    v90 = 1024;
    v91 = intValue4;
    v92 = 1024;
    v93 = intValue6;
    v94 = 1024;
    v95 = intValue7;
    v96 = 1024;
    v97 = intValue8;
    v98 = 1024;
    v99 = intValue9;
    v100 = 1024;
    v101 = intValue10;
    v102 = 1024;
    v103 = intValue11;
    v104 = 1024;
    v105 = intValue5;
    v106 = 2048;
    v107 = unsignedLongLongValue3;
    v108 = 2048;
    v109 = unsignedLongLongValue2;
    v110 = 2048;
    v111 = unsignedLongLongValue;
    v112 = 1024;
    v113 = txThresholded;
    v114 = 1024;
    v115 = v43;
    v116 = 2048;
    v117 = v35;
    v118 = 2048;
    v119 = v34;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "L2 Metrics on %@: rssi: %d [%d,%d] -> %d, snr: %d (cca [wake/total] self/other/intf): [%d,%d]/[%d,%d]/[%d,%d]/%d (txFrames/txReTx/txFail): %llu/%llu/%llu -> (was/is) %d/%d, txRate: %.1f, rxRate: %.1f", buf, 0x92u);
  }

  [v38 setTxThresholded:v43];
  [v38 updateSNR:intValue4 RSSI:intValue];
  [v38 setLastReportedL2TxFail:unsignedLongLongValue];
  [v38 setLastReportedL2TxRetry:unsignedLongLongValue2];
  [v38 setLastReportedL2TxFrames:unsignedLongLongValue3];
  objc_sync_exit(v38);

  if (self->_wifiShimFastLQMUpdates && self->rnfRssiExtraDescentFactor + 3 <= wifiShim_L2NewMetrics_forInterface__rssiSamples[wifiShim_L2NewMetrics_forInterface__rssiLastIndex & 7 ^ 4] - wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex - 1) & 7])
  {
    v46 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v47 = wifiShim_L2NewMetrics_forInterface__rssiSamples[wifiShim_L2NewMetrics_forInterface__rssiLastIndex & 7 ^ 4];
      v48 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 5) & 7];
      v49 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 6) & 7];
      v50 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(wifiShim_L2NewMetrics_forInterface__rssiLastIndex - 1) & 7];
      rnfRssiExtraDescentFactor = self->rnfRssiExtraDescentFactor;
      *buf = 67110144;
      LODWORD(v87) = v47;
      WORD2(v87) = 1024;
      *(&v87 + 6) = v48;
      WORD5(v87) = 1024;
      HIDWORD(v87) = v49;
      *v88 = 1024;
      *&v88[2] = v50;
      *v89 = 2048;
      *&v89[2] = rnfRssiExtraDescentFactor;
      _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "L2 Metrics History (old...last): %d,%d,%d,%d. Extra descent factor: %lld\n", buf, 0x24u);
    }

    v52 = wifiShim_L2NewMetrics_forInterface__rssiLastIndex + 6;
    v53 = 1;
    do
    {
      v54 = wifiShim_L2NewMetrics_forInterface__rssiSamples[(v52 - 7) & 7];
      v55 = wifiShim_L2NewMetrics_forInterface__rssiSamples[v52 & 7];
      v56 = v54 >= v55 || v53++ >= 3;
      --v52;
    }

    while (!v56);
    if (v54 < v55)
    {
      [CellFallbackHandler requestBoost:2];
    }
  }
}

void __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 384) = [*(*(a1 + 32) + 360) fastLQMUpdates];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (*(*(a1 + 32) + 384))
    {
      v4 = "fast";
    }

    else
    {
      v4 = "slow";
    }

    v5 = *(a1 + 48);
    v6 = 138412802;
    v7 = v3;
    v8 = 2080;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "L2 Metrics on: %@, LQM callback interval: %s (rssi=%d)", &v6, 0x1Cu);
  }
}

void __61__NetworkAnalyticsEngine_wifiShim_L2NewMetrics_forInterface___block_invoke_595(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 384) = [*(*(a1 + 32) + 360) fastLQMUpdates];
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    if (*(*(a1 + 32) + 384))
    {
      v4 = "fast";
    }

    else
    {
      v4 = "slow";
    }

    v5 = *(a1 + 48);
    v6 = 138412802;
    v7 = v3;
    v8 = 2080;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "L2 Metrics on: %@, LQM callback interval: %s (rssi=%d)", &v6, 0x1Cu);
  }
}

- (void)wifiShim_L2TriggerDisconnectEdge:(BOOL)edge forInterface:(id)interface
{
  edgeCopy = edge;
  v24 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = "FALSE";
    if (edgeCopy)
    {
      v7 = "TRUE";
    }

    *buf = 138412546;
    v21 = interfaceCopy;
    v22 = 2080;
    v23 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "L2 TriggerDisconnect on ifname %@: edge in: %s", buf, 0x16u);
  }

  if (edgeCopy)
  {
    v8 = [NetworkStateRelay getStateRelayFor:3];
    objc_sync_enter(v8);
    if ([v8 l2MetricsCount])
    {
      if (([v8 rxSignalThresholded] & 1) == 0)
      {
        v9 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v21 = interfaceCopy;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "L2 TriggerDisconnect on ifname %@: raises rxSignalThresholded", buf, 0xCu);
        }
      }

      [v8 setRxSignalThresholded:1];
    }

    else
    {
      v10 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Received TriggerDisconnect event before receiving any L2 metrics on %@, not raising rxSignalThresholded", buf, 0xCu);
      }

      v11 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      v12 = v11;
      if (v11)
      {
        v13 = [v11 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"TriggerDisconnect without L2 Metrics" subtypeContext:0 detectedProcess:@"symptomsd" triggerThresholdValues:0];
        if (interfaceCopy)
        {
          v14 = interfaceCopy;
        }

        else
        {
          v14 = @"unknown";
        }

        v17 = *MEMORY[0x277D6B100];
        v18 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        v19 = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
        [v12 snapshotWithSignature:v13 duration:v16 events:0 payload:0 actions:&__block_literal_global_630 reply:0.0];
      }
    }

    objc_sync_exit(v8);
  }
}

void __72__NetworkAnalyticsEngine_wifiShim_L2TriggerDisconnectEdge_forInterface___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D6B198]];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "TriggerDisconnect without L2 Metrics ABC case response: %@", &v6, 0xCu);
    }
  }
}

- (void)wifiShim_InfraAdminDisable:(id)disable bssid:(id)bssid
{
  disableCopy = disable;
  bssidCopy = bssid;
  v8 = bssidCopy;
  if (disableCopy && bssidCopy && ([MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", disableCopy, bssidCopy], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    queue = [(AnalyticsEngineCore *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__NetworkAnalyticsEngine_wifiShim_InfraAdminDisable_bssid___block_invoke;
    block[3] = &unk_27898A7D0;
    block[4] = self;
    v16 = v10;
    v12 = v10;
    dispatch_async(queue, block);
  }

  else
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Admin disable reported on unidentifiable epoch, dropping", buf, 2u);
    }
  }
}

void __59__NetworkAnalyticsEngine_wifiShim_InfraAdminDisable_bssid___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:3];
  v3 = [v2 primaryKey];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [v2 primaryKey];
      *buf = 138478083;
      v28 = v7;
      v29 = 2048;
      v30 = v2;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Admin disable reported on epoch %{private}@, %p", buf, 0x16u);
    }

    v8 = v2;
  }

  else
  {
    [*(*(a1 + 32) + 144) allValues];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v25 = 0u;
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
          v15 = [v14 primaryKey];
          v16 = [v15 isEqualToString:*(a1 + 40)];

          if (v16)
          {
            v17 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v18 = v17;
              v19 = [v14 primaryKey];
              *buf = 138478083;
              v28 = v19;
              v29 = 2048;
              v30 = v14;
              _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "Admin disable reported on recovered epoch %{private}@, %p", buf, 0x16u);
            }

            v8 = v14;
            goto LABEL_17;
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

    v8 = 0;
LABEL_17:
  }

  if (v8)
  {
    [v8 reportAdminDisable];
  }

  else
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138477827;
      v28 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "Admin disable reported on lost epoch for %{private}@, dropping", buf, 0xCu);
    }
  }
}

- (void)wifiShim_HintForFallback:(BOOL)fallback reasons:(id)reasons
{
  fallbackCopy = fallback;
  reasonsCopy = reasons;
  v5 = [NetworkStateRelay getStateRelayFor:3];
  v6 = [NetworkAnalyticsEngine _constructRxSignalExemptionsBitmapFromHint:fallbackCopy reasons:reasonsCopy];
  v7 = v5;
  objc_sync_enter(v7);
  [v7 setRxSignalExemptions:v6];
  objc_sync_exit(v7);
}

- (void)wifiShim_LQMAsystoleDetected:(double)detected
{
  obj = [NetworkStateRelay getStateRelayFor:3, detected];
  objc_sync_enter(obj);
  [obj setLqmAsystole:1];
  v3 = +[AWDAgent defaultInstance];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:0x2847AAC78 code:4001 userInfo:0];
  [v3 postMetricForSignificantEventWithName:@"WiFiLQMFailure" errorContext:3 error:v4 status:0];

  objc_sync_exit(obj);
}

- (void)startRNFTestWithConnection:(id)connection options:(id)options scenarioName:(id)name reply:(id)reply
{
  v195[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  optionsCopy = options;
  nameCopy = name;
  replyCopy = reply;
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v180[3] = 0;
  v174 = 0;
  v175 = &v174;
  v176 = 0x3032000000;
  v177 = __Block_byref_object_copy__9;
  v178 = __Block_byref_object_dispose__9;
  v179 = 0;
  v115 = connectionCopy;
  remoteObjectProxy = [connectionCopy remoteObjectProxy];
  if (self->_isInternalBuild)
  {
    v121 = [NetworkStateRelay getStateRelayFor:3];
    v117 = [NetworkStateRelay getStateRelayFor:5];
    if ([v121 active])
    {
      if ([v117 active])
      {
        selfCopy = self;
        v11 = netepochsLogHandle;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          timeOfDayPrecise = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
          *buf = 138412802;
          *&buf[4] = timeOfDayPrecise;
          *&buf[12] = 2112;
          *&buf[14] = nameCopy;
          *&buf[22] = 2112;
          v189 = optionsCopy;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) scenario name: %@ and test parameters is %@", buf, 0x20u);
        }

        [(WiFiShim *)self->_wifiShim removeDelegate:self];
        v130 = [optionsCopy objectForKeyedSubscript:@"interfaceName"];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v186 = @"kAppStateKeyForegroundActivityState";
        v187 = MEMORY[0x277CBEC38];
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v187 forKeys:&v186 count:1];
        [defaultCenter postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v14];

        +[CellFallbackHandler startRunningRNFTest];
        runningRNFTest = 1;
        v113 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
        queue = dispatch_queue_create("com.apple.symptoms.rnftest.queue", v113);
        v116 = [optionsCopy objectForKeyedSubscript:@"scenarios"];
        if ([nameCopy length] && (objc_msgSend(v116, "objectForKeyedSubscript:", nameCopy), (v120 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Starting RNF Test for the '%@' scenario", nameCopy];
          [remoteObjectProxy sendRNFTestStatusInformation:nameCopy];
        }

        else
        {
          v39 = MEMORY[0x277CCACA8];
          timeOfDayPrecise2 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
          v41 = [nameCopy length];
          v42 = @"the specified scenario couldn't be found.";
          if (!v41)
          {
            v42 = @"no scenario was specified.";
          }

          v43 = [v39 stringWithFormat:@"RNFTest: (%@) Starting RNF Test for the 'walk-out' scenario because %@", timeOfDayPrecise2, v42];
          v44 = v175[5];
          v175[5] = v43;

          v45 = netepochsLogHandle;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            uTF8String = [v175[5] UTF8String];
            *buf = 136315138;
            *&buf[4] = uTF8String;
            _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
          }

          [remoteObjectProxy sendRNFTestStatusInformation:v175[5]];
          v120 = [v116 objectForKeyedSubscript:@"walk-out"];
        }

        v122 = +[CellFallbackHandler sharedInstance];
        obja = [v120 objectForKeyedSubscript:@"expectedAdvisories"];
        v47 = [obja count];
        if (v47 < 1)
        {
          v50 = 0;
        }

        else
        {
          v48 = 0;
          v49 = 0;
          do
          {
            v50 = [obja objectAtIndexedSubscript:v48];

            v51 = [v50 objectForKeyedSubscript:@"timeIndex"];
            integerValue = [v51 integerValue];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v53 = [v50 objectForKeyedSubscript:@"advisory"];
            integerValue2 = [v53 integerValue];

            v189 = integerValue2;
            v173[0] = 0;
            v173[1] = v173;
            v173[2] = 0x2020000000;
            v55 = [v50 objectForKeyedSubscript:@"timeIndexLeeway"];
            integerValue3 = [v55 integerValue];

            v173[3] = integerValue3;
            v171[0] = 0;
            v171[1] = v171;
            v171[2] = 0x2020000000;
            v172 = v47 == 1;
            v57 = dispatch_time(0, 1000000 * integerValue);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke;
            block[3] = &unk_27898DBE8;
            v166 = v180;
            v161 = v122;
            v162 = selfCopy;
            v167 = &v174;
            v168 = buf;
            v163 = remoteObjectProxy;
            v169 = v171;
            v165 = replyCopy;
            v170 = v173;
            v164 = queue;
            dispatch_after(v57, v164, block);

            _Block_object_dispose(v171, 8);
            _Block_object_dispose(v173, 8);
            _Block_object_dispose(buf, 8);
            ++v48;
            v49 = v50;
            --v47;
          }

          while (v47);
        }

        v114 = v50;
        v58 = [v120 objectForKeyedSubscript:@"l2Metrics"];

        v158 = 0u;
        v159 = 0u;
        v156 = 0u;
        v157 = 0u;
        objb = v58;
        v59 = 0;
        v60 = [objb countByEnumeratingWithState:&v156 objects:v185 count:16];
        if (v60)
        {
          v61 = *v157;
          v62 = MEMORY[0x277D85DD0];
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v157 != v61)
              {
                objc_enumerationMutation(objb);
              }

              v64 = *(*(&v156 + 1) + 8 * i);
              v65 = [v64 objectForKeyedSubscript:@"timeIndex"];
              integerValue4 = [v65 integerValue];

              if (integerValue4 > v59)
              {
                v59 = integerValue4;
              }

              v67 = dispatch_time(0, 1000000 * integerValue4);
              v154[0] = v62;
              v154[1] = 3221225472;
              v154[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_710;
              v154[3] = &unk_27898A328;
              v154[4] = selfCopy;
              v154[5] = v64;
              v155 = v130;
              dispatch_after(v67, queue, v154);
            }

            v60 = [objb countByEnumeratingWithState:&v156 objects:v185 count:16];
          }

          while (v60);
        }

        v68 = +[NLCRunner sharedInstance];
        rnfTestNLCRunner = selfCopy->rnfTestNLCRunner;
        selfCopy->rnfTestNLCRunner = v68;

        [selfCopy->rnfTestNLCRunner setInterfaceName:v130];
        selfCopy->nlcRuleScheduled = 0;
        v70 = [v120 objectForKeyedSubscript:@"dns"];

        selfCopy->nlcRuleScheduled |= [v70 count] != 0;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        objc = v70;
        v71 = [objc countByEnumeratingWithState:&v150 objects:v184 count:16];
        if (v71)
        {
          v72 = *v151;
          v73 = MEMORY[0x277D85DD0];
          do
          {
            for (j = 0; j != v71; ++j)
            {
              if (*v151 != v72)
              {
                objc_enumerationMutation(objc);
              }

              v75 = *(*(&v150 + 1) + 8 * j);
              v76 = [v75 objectForKeyedSubscript:@"timeIndex"];
              integerValue5 = [v76 integerValue];

              if (integerValue5 > v59)
              {
                v59 = integerValue5;
              }

              v78 = dispatch_time(0, 1000000 * integerValue5);
              v149[0] = v73;
              v149[1] = 3221225472;
              v149[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_718;
              v149[3] = &unk_27898A7D0;
              v149[4] = v75;
              v149[5] = selfCopy;
              dispatch_after(v78, queue, v149);
            }

            v71 = [objc countByEnumeratingWithState:&v150 objects:v184 count:16];
          }

          while (v71);
        }

        v79 = [v120 objectForKeyedSubscript:@"txPER"];

        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v80 = v79;
        v81 = [v80 countByEnumeratingWithState:&v145 objects:v183 count:16];
        if (v81)
        {
          v82 = *v146;
          do
          {
            for (k = 0; k != v81; ++k)
            {
              if (*v146 != v82)
              {
                objc_enumerationMutation(v80);
              }

              v84 = [*(*(&v145 + 1) + 8 * k) objectForKeyedSubscript:@"timeIndex"];
              integerValue6 = [v84 integerValue];

              if (integerValue6 > v59)
              {
                v59 = integerValue6;
              }

              v86 = dispatch_time(0, 1000000 * integerValue6);
              dispatch_after(v86, queue, &__block_literal_global_727);
            }

            v81 = [v80 countByEnumeratingWithState:&v145 objects:v183 count:16];
          }

          while (v81);
        }

        v87 = [v120 objectForKeyedSubscript:@"txLossRate"];

        selfCopy->nlcRuleScheduled |= [v87 count] != 0;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        objd = v87;
        v88 = [objd countByEnumeratingWithState:&v141 objects:v182 count:16];
        if (v88)
        {
          v89 = *v142;
          v90 = MEMORY[0x277D85DD0];
          do
          {
            for (m = 0; m != v88; ++m)
            {
              if (*v142 != v89)
              {
                objc_enumerationMutation(objd);
              }

              v92 = *(*(&v141 + 1) + 8 * m);
              v93 = [v92 objectForKeyedSubscript:@"timeIndex"];
              integerValue7 = [v93 integerValue];

              if (integerValue7 > v59)
              {
                v59 = integerValue7;
              }

              v95 = dispatch_time(0, 1000000 * integerValue7);
              v140[0] = v90;
              v140[1] = 3221225472;
              v140[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_3;
              v140[3] = &unk_27898A7D0;
              v140[4] = v92;
              v140[5] = selfCopy;
              dispatch_after(v95, queue, v140);
            }

            v88 = [objd countByEnumeratingWithState:&v141 objects:v182 count:16];
          }

          while (v88);
        }

        v96 = [v120 objectForKeyedSubscript:@"rxLossRate"];

        selfCopy->nlcRuleScheduled |= [v96 count] != 0;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        obj = v96;
        v97 = [obj countByEnumeratingWithState:&v136 objects:v181 count:16];
        if (v97)
        {
          v98 = *v137;
          v99 = MEMORY[0x277D85DD0];
          do
          {
            for (n = 0; n != v97; ++n)
            {
              if (*v137 != v98)
              {
                objc_enumerationMutation(obj);
              }

              v101 = *(*(&v136 + 1) + 8 * n);
              v102 = [v101 objectForKeyedSubscript:@"timeIndex"];
              integerValue8 = [v102 integerValue];

              if (integerValue8 > v59)
              {
                v59 = integerValue8;
              }

              v104 = dispatch_time(0, 1000000 * integerValue8);
              v135[0] = v99;
              v135[1] = 3221225472;
              v135[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_734;
              v135[3] = &unk_27898A7D0;
              v135[4] = v101;
              v135[5] = selfCopy;
              dispatch_after(v104, queue, v135);
            }

            v97 = [obj countByEnumeratingWithState:&v136 objects:v181 count:16];
          }

          while (v97);
        }

        if (selfCopy->nlcRuleScheduled)
        {
          [selfCopy->rnfTestNLCRunner engage];
        }

        v105 = [v120 objectForKeyedSubscript:@"timeout"];
        integerValue9 = [v105 integerValue];

        if (integerValue9 <= v59 + 10000)
        {
          integerValue9 = v59 + 10000;
        }

        v107 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
        rnfTestTimeoutTimer = selfCopy->rnfTestTimeoutTimer;
        selfCopy->rnfTestTimeoutTimer = v107;

        v109 = selfCopy->rnfTestTimeoutTimer;
        v110 = dispatch_time(0, 1000000 * integerValue9);
        dispatch_source_set_timer(v109, v110, 0xFFFFFFFFFFFFFFFFLL, 0);
        v111 = selfCopy->rnfTestTimeoutTimer;
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_738;
        handler[3] = &unk_27898A0C8;
        handler[4] = selfCopy;
        dispatch_source_set_event_handler(v111, handler);
        v112 = selfCopy->rnfTestTimeoutTimer;
        v133[0] = MEMORY[0x277D85DD0];
        v133[1] = 3221225472;
        v133[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2_739;
        v133[3] = &unk_27898A848;
        v133[4] = selfCopy;
        v133[5] = &v174;
        dispatch_source_set_cancel_handler(v112, v133);
        dispatch_resume(selfCopy->rnfTestTimeoutTimer);
        goto LABEL_79;
      }

      v31 = MEMORY[0x277CCACA8];
      timeOfDayPrecise3 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
      v33 = [v31 stringWithFormat:@"RNFTest: (%@) RNF Test requires an active Cellular connection", timeOfDayPrecise3];
      v34 = v175[5];
      v175[5] = v33;

      v35 = netepochsLogHandle;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String2 = [v175[5] UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String2;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      [remoteObjectProxy sendRNFTestStatusInformation:v175[5]];
      v190 = @"rnfTestResult";
      v191 = MEMORY[0x277CBEC28];
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v191 forKeys:&v190 count:1];
      v38 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(replyCopy + 2))(replyCopy, v37, v38);
      v113 = v37;
    }

    else
    {
      v23 = MEMORY[0x277CCACA8];
      timeOfDayPrecise4 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
      v25 = [v23 stringWithFormat:@"RNFTest: (%@) RNF Test requires an active Wi-Fi connection", timeOfDayPrecise4];
      v26 = v175[5];
      v175[5] = v25;

      v27 = netepochsLogHandle;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String3 = [v175[5] UTF8String];
        *buf = 136315138;
        *&buf[4] = uTF8String3;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
      }

      [remoteObjectProxy sendRNFTestStatusInformation:v175[5]];
      v192 = @"rnfTestResult";
      v193 = MEMORY[0x277CBEC28];
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(replyCopy + 2))(replyCopy, v29, v30);
      v113 = v29;
    }

    v114 = 0;
    v122 = 0;
    v120 = 0;
    v116 = 0;
    queue = 0;
    obj = 0;
    v130 = 0;
LABEL_79:

    goto LABEL_80;
  }

  v16 = MEMORY[0x277CCACA8];
  timeOfDayPrecise5 = [(NetworkAnalyticsEngine *)self timeOfDayPrecise];
  v18 = [v16 stringWithFormat:@"RNFTest: (%@) RNF Test is not supported on non-internal builds", timeOfDayPrecise5];
  v19 = v175[5];
  v175[5] = v18;

  v20 = netepochsLogHandle;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String4 = [v175[5] UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String4;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [remoteObjectProxy sendRNFTestStatusInformation:v175[5]];
  v194 = @"rnfTestResult";
  v195[0] = MEMORY[0x277CBEC28];
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v195 forKeys:&v194 count:1];
  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(replyCopy + 2))(replyCopy, v121, v22);
  v116 = 0;
  v114 = 0;
  v122 = 0;
  v120 = 0;
  queue = 0;
  obj = 0;
  v130 = 0;

LABEL_80:
  _Block_object_dispose(&v174, 8);

  _Block_object_dispose(v180, 8);
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke(uint64_t a1)
{
  v78[1] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) fallbackAdvice];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 40) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Comparing currentAdviceLevel (%ld) against expected level (%ld)", v3, *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 88) + 8) + 24)];
  v5 = *(*(a1 + 80) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 80) + 8) + 40);
    v9 = v8;
    v10 = v7;
    LODWORD(buf) = 136315138;
    *(&buf + 4) = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
  if (*(*(*(a1 + 72) + 8) + 24) == *(*(*(a1 + 88) + 8) + 24))
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [*(a1 + 40) timeOfDayPrecise];
    v13 = [v11 stringWithFormat:@"RNFTest: (%@) Matched currentAdviceLevel (%ld) to expected level (%ld)", v12, *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 88) + 8) + 24)];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 80) + 8) + 40);
      v18 = v17;
      v19 = v16;
      v20 = [v17 UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
    }

    [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
    if (*(*(*(a1 + 96) + 8) + 24) == 1)
    {
      v21 = MEMORY[0x277CCACA8];
      v22 = [*(a1 + 40) timeOfDayPrecise];
      v23 = [v21 stringWithFormat:@"RNFTest: (%@) Final test was successful (1)", v22];
      v24 = *(*(a1 + 80) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*(*(a1 + 80) + 8) + 40);
        v28 = v27;
        v29 = v26;
        v30 = [v27 UTF8String];
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v30;
        _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
      }

      [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
      v31 = *(a1 + 64);
      if (v31)
      {
        v77 = @"rnfTestResult";
        v78[0] = MEMORY[0x277CBEC38];
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
        (*(v31 + 16))(v31, v32, 0);
      }
    }
  }

  else if (*(*(*(a1 + 104) + 8) + 24))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__9;
    v75 = __Block_byref_object_dispose__9;
    v76 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 56));
    v33 = netepochsLogHandle;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 40) timeOfDayPrecise];
      *v68 = 138412290;
      v69 = v34;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) About to start observing kNotificationFallbackRecommendation", v68, 0xCu);
    }

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_689;
    v61[3] = &unk_27898DB98;
    v36 = *(a1 + 56);
    v64 = *(a1 + 72);
    v65 = vextq_s8(*(a1 + 80), *(a1 + 80), 8uLL);
    v54 = *(a1 + 40);
    v37 = v54.i64[1];
    v38 = *(a1 + 96);
    p_buf = &buf;
    v67 = v38;
    v39 = *(a1 + 64);
    v40.i64[0] = v36;
    v40.i64[1] = v39;
    v41 = vzip2q_s64(v54, v40);
    v40.i64[1] = v54.i64[0];
    v63 = v41;
    v62 = v40;
    v42 = [v35 addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:v61];
    v43 = *(a1 + 40);
    v44 = *(v43 + 408);
    *(v43 + 408) = v42;

    v45 = netepochsLogHandle;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [*(a1 + 40) timeOfDayPrecise];
      v47 = *(*(*(a1 + 88) + 8) + 24);
      *v68 = 138412546;
      v69 = v46;
      v70 = 2048;
      v71 = v47;
      _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) About to wait for expected advisory (%ld)", v68, 0x16u);
    }

    v48 = *(*(&buf + 1) + 40);
    if (v48)
    {
      v49 = dispatch_time(0, 1000000 * *(*(*(a1 + 104) + 8) + 24));
      dispatch_source_set_timer(v48, v49, 0xFFFFFFFFFFFFFFFFLL, 0);
      v50 = *(*(&buf + 1) + 40);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_699;
      handler[3] = &unk_27898DBC0;
      v51 = *(a1 + 48);
      handler[4] = *(a1 + 40);
      v59 = *(a1 + 80);
      v57 = v51;
      v58 = *(a1 + 64);
      v60 = &buf;
      dispatch_source_set_event_handler(v50, handler);
      v52 = *(*(&buf + 1) + 40);
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_703;
      v55[3] = &unk_27898A848;
      v53 = *(a1 + 80);
      v55[4] = *(a1 + 40);
      v55[5] = v53;
      dispatch_source_set_cancel_handler(v52, v55);
      dispatch_resume(*(*(&buf + 1) + 40));
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_689(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2;
  block[3] = &unk_27898DB70;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v11 = v6;
  v15 = *(a1 + 88);
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v5, block);
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"detail"];
  *(*(*(a1 + 64) + 8) + 24) = [v3 integerValue];

  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = [v5 timeOfDayPrecise];
    v8 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 138412546;
    v48 = v7;
    v49 = 2048;
    v50 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) Received advice level change %ld", buf, 0x16u);
  }

  v9 = *(*(*(a1 + 64) + 8) + 24);
  v10 = *(*(*(a1 + 72) + 8) + 24);
  v11 = MEMORY[0x277CCACA8];
  v12 = [*(a1 + 40) timeOfDayPrecise];
  v13 = v12;
  v14 = *(*(*(a1 + 72) + 8) + 24);
  if (v9 != v10)
  {
    v38 = [v11 stringWithFormat:@"RNFTest: (%@) This new advice level (%ld) is not the level we're looking for (%ld)", v12, *(*(*(a1 + 64) + 8) + 24), v14];
    v39 = *(*(a1 + 80) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    v41 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v42 = *(*(*(a1 + 80) + 8) + 40);
    v43 = v42;
    v37 = v41;
    v44 = [v42 UTF8String];
    *buf = 136315138;
    v48 = v44;
    _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    goto LABEL_15;
  }

  v15 = [v11 stringWithFormat:@"RNFTest: (%@) Matched new currentAdviceLevel (%ld) to expected level (%ld)", v12, *(*(*(a1 + 64) + 8) + 24), v14];
  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(*(a1 + 80) + 8) + 40);
    v20 = v19;
    v21 = v18;
    v22 = [v19 UTF8String];
    *buf = 136315138;
    v48 = v22;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
  v23 = *(*(*(a1 + 88) + 8) + 40);
  if (v23)
  {
    dispatch_source_cancel(v23);
    v24 = *(*(a1 + 88) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;
  }

  if (*(*(*(a1 + 96) + 8) + 24) == 1)
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = [*(a1 + 40) timeOfDayPrecise];
    v28 = [v26 stringWithFormat:@"RNFTest: (%@) Final test was successful (2)", v27];
    v29 = *(*(a1 + 80) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    v31 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 80) + 8) + 40);
      v33 = v32;
      v34 = v31;
      v35 = [v32 UTF8String];
      *buf = 136315138;
      v48 = v35;
      _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    [*(a1 + 48) sendRNFTestStatusInformation:*(*(*(a1 + 80) + 8) + 40)];
    v36 = *(a1 + 56);
    if (v36)
    {
      v45 = @"rnfTestResult";
      v46 = MEMORY[0x277CBEC38];
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      (*(v36 + 16))(v36, v37, 0);
LABEL_15:
    }
  }
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_699(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Timed out waiting for expected advisory (%ld)", v3, *(*(*(a1 + 64) + 8) + 24)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v22 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [*(a1 + 40) sendRNFTestStatusInformation:*(*(*(a1 + 56) + 8) + 40)];
  if (*(*(a1 + 32) + 408))
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:*(*(a1 + 32) + 408)];

    v12 = *(a1 + 32);
    v13 = *(v12 + 408);
    *(v12 + 408) = 0;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    v19 = @"rnfTestResult";
    v20 = MEMORY[0x277CBEC28];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v14 + 16))(v14, v15, v16);
  }

  v17 = *(*(a1 + 72) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_703(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Canceled adviceWaitingTimer", v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v15 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (*(*(a1 + 32) + 408))
  {
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:*(*(a1 + 32) + 408)];

    v12 = *(a1 + 32);
    v13 = *(v12 + 408);
    *(v12 + 408) = 0;
  }
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_710(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 timeOfDayPrecise];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"l2Metric"];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RNFTest: (%@) Sending l2NewMetric %@", &v9, 0x16u);
  }

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) objectForKeyedSubscript:@"l2Metric"];
  [v7 wifiShim_L2NewMetrics:v8 forInterface:*(a1 + 48)];
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_718(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"dnsOut"];
  v3 = [v2 BOOLValue];

  v4 = *(*(a1 + 40) + 424);
  if (v3)
  {

    return [v4 disableDNS];
  }

  else
  {

    return [v4 enableDNS];
  }
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"txLossRate"];
  [v2 floatValue];
  v4 = v3;

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Setting Uplink TxLossRate to %f", &v8, 0xCu);
  }

  *&v6 = v4;
  return [*(*(a1 + 40) + 424) setUplinkPacketLossRate:v6];
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_734(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"rxLossRate"];
  [v2 floatValue];
  v4 = v3;

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Setting Uplink RxLossRate to %f", &v8, 0xCu);
  }

  *&v6 = v4;
  return [*(*(a1 + 40) + 424) setDownlinkPacketLossRate:v6];
}

uint64_t __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_738(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 416);
  *(v2 + 416) = 0;

  v4 = *(a1 + 32);

  return [v4 stopRunningRNFTestWithReply:0];
}

void __80__NetworkAnalyticsEngine_startRNFTestWithConnection_options_scenarioName_reply___block_invoke_2_739(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) timeOfDayPrecise];
  v4 = [v2 stringWithFormat:@"RNFTest: (%@) Canceled rnfTestTimeoutTimer", v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = v8;
    v10 = v7;
    *buf = 136315138;
    v12 = [v8 UTF8String];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }
}

- (void)abortRNFTestWithReply:(id)reply
{
  replyCopy = reply;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "RNFTest: Abort RNFTest", v8, 2u);
  }

  rnfTestTimeoutTimer = self->rnfTestTimeoutTimer;
  if (rnfTestTimeoutTimer)
  {
    dispatch_source_cancel(rnfTestTimeoutTimer);
    v7 = self->rnfTestTimeoutTimer;
    self->rnfTestTimeoutTimer = 0;
  }

  [(NetworkAnalyticsEngine *)self stopRunningRNFTestWithReply:replyCopy];
}

- (void)stopRunningRNFTestWithReply:(id)reply
{
  v17[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = replyCopy;
  if (runningRNFTest == 1)
  {
    if (self->nlcRuleScheduled)
    {
      [self->rnfTestNLCRunner disengage];
    }

    rnfTestNLCRunner = self->rnfTestNLCRunner;
    self->rnfTestNLCRunner = 0;

    [CellFallbackHandler stopRunningRNFTestWithReply:v5];
    runningRNFTest = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = @"kAppStateKeyForegroundActivityState";
    v17[0] = MEMORY[0x277CBEC28];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [defaultCenter postNotificationName:@"kAppStateNotificationForegroundActivity" object:self userInfo:v8];

    [(WiFiShim *)self->_wifiShim addDelegate:self];
  }

  else if (replyCopy)
  {
    v9 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = @"RNFTest: RNF Test Abort called when not running an RNFTest";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v12[0] = @"rnfTestResult";
    v12[1] = @"SymptomAnalyticsServiceReason";
    v13[0] = MEMORY[0x277CBEC28];
    v13[1] = @"RNFTest: RNF Test Abort called when not running an RNFTest";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    (v5)[2](v5, v10, v11);
  }
}

- (id)timeOfDayPrecise
{
  v6 = *MEMORY[0x277D85DE8];
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  if (!gettimeofday(&v4, 0))
  {
    snprintf(__str, 0x40uLL, "%ld.%d", v4.tv_sec, v4.tv_usec);
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];

  return v2;
}

- (void)_setWiFiRSSIThresholds:(BOOL)thresholds
{
  thresholdsCopy = thresholds;
  v8 = *MEMORY[0x277D85DE8];
  v4 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "dis";
    if (thresholdsCopy)
    {
      v5 = "en";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "turbo_rnf (RSSI levels) is %sabled", &v6, 0xCu);
  }

  kMinimumRSSISignalDown = thresholdsCopy;
  kMinimumRSSISignalUp = thresholdsCopy;
  kRSSISignalAlertThreshold = thresholdsCopy;
}

- (void)wifiNetworkChangedForInterface:(id)interface roaming:(BOOL)roaming
{
  roamingCopy = roaming;
  v29 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  v7 = [NetworkStateRelay getStateRelayFor:3];
  v8 = v7;
  if (!interfaceCopy)
  {
    interfaceCopy = [v7 interfaceName];
    if (!interfaceCopy)
    {
      goto LABEL_29;
    }

    v19 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = interfaceCopy;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "No interface name but stateRelays has one:%@", buf, 0xCu);
    }
  }

  if ([interfaceCopy length])
  {
    ssid = [(WiFiShim *)self->_wifiShim ssid];
    bssid = [(WiFiShim *)self->_wifiShim bssid];
    [v8 setIsHotspot:{-[WiFiShim isHotspot](self->_wifiShim, "isHotspot")}];
    [v8 setIsApplePersonalHotspot:{-[WiFiShim isApplePersonalHotspot](self->_wifiShim, "isApplePersonalHotspot")}];
    phyMode = [(WiFiShim *)self->_wifiShim phyMode];
    if ((phyMode & 0x100) != 0)
    {
      v18 = -121;
    }

    else if ((phyMode & 0x80) != 0)
    {
      v18 = -122;
    }

    else
    {
      if ((phyMode & 0x200) != 0)
      {
        v12 = -120;
      }

      else
      {
        v12 = 0;
      }

      if ((phyMode & 2) != 0)
      {
        v13 = 0x80;
      }

      else
      {
        v13 = v12;
      }

      if ((phyMode & 4) != 0)
      {
        v14 = -127;
      }

      else
      {
        v14 = v13;
      }

      if ((phyMode & 8) != 0)
      {
        v15 = -126;
      }

      else
      {
        v15 = v14;
      }

      if ((phyMode & 0x10) != 0)
      {
        v16 = -125;
      }

      else
      {
        v16 = v15;
      }

      if ((phyMode & 0x20) != 0)
      {
        v17 = -124;
      }

      else
      {
        v17 = v16;
      }

      if ((phyMode & 0x40) != 0)
      {
        v18 = -123;
      }

      else
      {
        v18 = v17;
      }
    }

    v22 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478339;
      v24 = ssid;
      v25 = 2113;
      v26 = bssid;
      v27 = 2112;
      v28 = interfaceCopy;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "proposing ssid %{private}@, bssid %{private}@ for interface %@", buf, 0x20u);
    }

    v21 = 0;
    if (ssid && bssid)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", ssid, bssid];
    }

    goto LABEL_39;
  }

LABEL_29:
  v20 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Not setting primary key because we don't have an interface name", buf, 2u);
  }

  v18 = 0;
  bssid = 0;
  ssid = 0;
  v21 = 0;
LABEL_39:
  [(NetworkAnalyticsEngine *)self _setRadioTechnology:v18 forInterfaceType:3];
  [(NetworkAnalyticsEngine *)self _primaryKeyChange:v21 interfaceName:interfaceCopy interfaceType:3 roamingEvent:roamingCopy];
}

- (void)_setDefrouteMonitoring:(unsigned int)monitoring ofInterfaceType:(unsigned __int8)type roamingEvent:(BOOL)event family:(unsigned __int8)family retries:(int)retries
{
  familyCopy = family;
  typeCopy = type;
  v47 = *MEMORY[0x277D85DE8];
  v13 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:type];
  v14 = v13;
  if (v13 && [v13 seqno] == monitoring)
  {
    if (familyCopy == 30)
    {
      if ([v14 defRoute6])
      {
        goto LABEL_18;
      }
    }

    else if ([v14 defRoute4])
    {
      goto LABEL_18;
    }

    interfaceName = [v14 interfaceName];
    v16 = [(NetworkAnalyticsEngine *)self _newDefRouteForInterface:interfaceName saFamily:familyCopy];

    if (v16)
    {
      if (familyCopy == 30)
      {
        [v14 setDefRoute6:v16];
      }

      else
      {
        [v14 setDefRoute4:v16];
      }

      liveDefaultRoutes = self->liveDefaultRoutes;
      v17 = [MEMORY[0x277CCAE60] valueWithPointer:v16];
      [(NSMutableDictionary *)liveDefaultRoutes setObject:v14 forKey:v17];
    }

    else
    {
      v17 = [NetworkStateRelay getStateRelayFor:typeCopy];
      interfaceName2 = [v17 interfaceName];

      if (interfaceName2)
      {
        v19 = netepochsLogHandle;
        if (retries < 2)
        {
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            v27 = v19;
            interfaceName3 = [v17 interfaceName];
            primaryKey = [v14 primaryKey];
            *buf = 138412803;
            v40 = interfaceName3;
            v41 = 2113;
            v42 = primaryKey;
            v43 = 1024;
            v44 = familyCopy;
            _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Failed to set default route on interfaceName %@, %{private}@, family = %d, zero retries left", buf, 0x1Cu);
          }

          if (familyCopy == 2)
          {
            v30 = 405513;
          }

          else
          {
            v30 = 405514;
          }

          internal_symptom_new(v30);
          [v17 functionalInterfaceType];
          internal_symptom_set_qualifier();
          internal_symptom_send();
        }

        else
        {
          v20 = retries - 1;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v19;
            interfaceName4 = [v17 interfaceName];
            [v14 primaryKey];
            v22 = v21 = retries - 1;
            *buf = 138413059;
            v40 = interfaceName4;
            v41 = 2113;
            v42 = v22;
            v43 = 1024;
            v44 = familyCopy;
            v45 = 1024;
            v46 = v21;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "Failed to set default route on interfaceName %@ %{private}@, family = %d, retries left = %d (trying again)", buf, 0x22u);

            v20 = v21;
          }

          v23 = dispatch_time(0, 2000000000);
          queue = [(AnalyticsEngineCore *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __93__NetworkAnalyticsEngine__setDefrouteMonitoring_ofInterfaceType_roamingEvent_family_retries___block_invoke;
          block[3] = &unk_27898DC10;
          block[4] = self;
          v36 = typeCopy;
          eventCopy = event;
          v38 = familyCopy;
          monitoringCopy = monitoring;
          v35 = v20;
          dispatch_after(v23, queue, block);
        }
      }

      else
      {
        v26 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v40 = typeCopy;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Interface for %ld is down", buf, 0xCu);
        }
      }
    }
  }

LABEL_18:
}

- (BOOL)_primaryKeyChange:(id)change interfaceName:(id)name interfaceType:(unsigned __int8)type roamingEvent:(BOOL)event
{
  eventCopy = event;
  typeCopy = type;
  v124 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  nameCopy = name;
  v11 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:typeCopy];
  v108 = [NetworkStateRelay getStateRelayFor:typeCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = netepochsLogHandle;
  v107 = defaultCenter;
  selfCopy = self;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (eventCopy)
    {
      v14 = @"roaming";
    }

    else
    {
      v14 = @"noroam";
    }

    if (v11)
    {
      primaryKey = [v11 primaryKey];
      interfaceName = [v11 interfaceName];
    }

    else
    {
      primaryKey = @"-";
      interfaceName = @"-";
    }

    *buf = 138479107;
    v114 = changeCopy;
    v115 = 2112;
    *v116 = nameCopy;
    *&v116[8] = 2048;
    v117 = typeCopy;
    v118 = 2112;
    v119 = v14;
    v120 = 2113;
    v121 = primaryKey;
    v122 = 2112;
    v123 = interfaceName;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "_primaryKeyChange new (%{private}@,%@) on %ld, %@,  old (%{private}@,%@)", buf, 0x3Eu);
    if (v11)
    {
    }

    defaultCenter = v107;
    self = selfCopy;
  }

  if (!v11)
  {
LABEL_46:
    if (!changeCopy && typeCopy != 5)
    {
      v41 = netepochsLogHandle;
      v20 = v108;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "wifi no longer primary, letting others know", buf, 2u);
      }

      +[FlowAnalyticsEngine endRNFPeriod];
      date = [MEMORY[0x277CBEAA8] date];
      [WiFiTriggerHandler triggerAllowedByRSSI:0 receiptTimestamp:date];

      [defaultCenter postNotificationName:@"kNotificationOfFlowDisruptingEvent" object:self userInfo:MEMORY[0x277CBEC10]];
LABEL_76:
      [(NetworkAnalyticsEngine *)self _updateCombinedDNSCounts];
      if (!v11)
      {
LABEL_77:
        v29 = 0;
LABEL_128:
        [(NetworkAnalyticsEngine *)self _idleExitTransactionCheck];
        [(NetworkAnalyticsEngine *)self _updateAdviceForInterfaceType:typeCopy];
        v98 = +[ConnectionFailureHandler sharedInstance];
        [v98 postConnectionFailureMetrics:typeCopy];

        goto LABEL_129;
      }

LABEL_114:
      v89 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:typeCopy];
      [v20 setActive:v89 != 0];

      active = [v20 active];
      if ((active & 1) == 0)
      {
        [v20 setKnownGood:0];
        [v20 setKnownSporadic:0];
        [v20 setArpOut:0];
        [v20 setDnsOut:0];
        [v20 setInternetDnsOut:0];
        [v20 setStuckDefRoute:0];
        [v20 setAdvisory:0];
        if (typeCopy != 5)
        {
          [v20 setLoi:-1];
        }
      }

      v91 = &stru_2847966D8;
      if (changeCopy)
      {
        v92 = changeCopy;
      }

      else
      {
        v92 = &stru_2847966D8;
      }

      v93 = v92;
      v111[0] = @"State";
      v94 = [MEMORY[0x277CCABB0] numberWithBool:active];
      v112[0] = v94;
      v111[1] = @"Roaming";
      v95 = [MEMORY[0x277CCABB0] numberWithBool:eventCopy];
      v112[1] = v95;
      v112[2] = v93;
      v111[2] = @"Detail";
      v111[3] = @"HashedPrimaryKey";
      if (changeCopy)
      {
        v91 = [(NetworkAnalyticsEngine *)selfCopy _hashPrimaryKey:changeCopy];
      }

      v112[3] = v91;
      v96 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:4];
      if (changeCopy)
      {
      }

      if (typeCopy == 5)
      {
        v97 = @"kNotificationNewConnectivityEpochCell";
      }

      else
      {
        v97 = @"kNotificationNewConnectivityEpochWiFi";
      }

      defaultCenter = v107;
      self = selfCopy;
      [v107 postNotificationName:v97 object:selfCopy userInfo:v96];

      v29 = 1;
      goto LABEL_128;
    }

    v20 = v108;
    if (!changeCopy)
    {
      goto LABEL_76;
    }

    v105 = changeCopy;
    v106 = v11;
    v43 = realTimeLqm[typeCopy];
    if (v43 == -1 || typeCopy == 3 && v43 == -2)
    {
      [(NetworkAnalyticsEngine *)self _establishLqmBaselineOn:typeCopy == 5 interfaceName:nameCopy lqmPtr:&realTimeLqm[typeCopy]];
    }

    v102 = v43;
    v104 = &realTimeLqm[typeCopy];
    v44 = [v11 loi];
    supportsIPv4 = [v108 supportsIPv4];
    supportsIPv6 = [v108 supportsIPv6];
    workspace = self->super.workspace;
    queue = [(AnalyticsEngineCore *)self queue];
    v101 = workspace;
    BYTE1(v100) = supportsIPv6;
    LOBYTE(v100) = supportsIPv4;
    changeCopy = v105;
    v49 = [NetworkEpoch epochWithPrimaryKey:v105 interfaceName:nameCopy isCell:typeCopy == 5 maxBars:5 roamingEvent:eventCopy roamingAttrs:v44 supportsIPv4:v100 supportsIPv6:v101 inWorkspace:queue andQueue:?];

    if (!v49)
    {
      v69 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138477827;
        v114 = v105;
        _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_ERROR, "Unable to create Epoch for primary:%{private}@", buf, 0xCu);
      }

      self = selfCopy;
      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
      v11 = v106;
      defaultCenter = v107;
      v20 = v108;
      if (!v106)
      {
        goto LABEL_77;
      }

      goto LABEL_114;
    }

    v50 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:typeCopy];
    if (v50)
    {
      v51 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v51;
        primaryKey2 = [v50 primaryKey];
        *buf = 138477827;
        v114 = primaryKey2;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEFAULT, "new active epoch overrides older epoch: %{private}@", buf, 0xCu);
      }
    }

    v103 = v50;
    [(NetworkAnalyticsEngine *)self _insertEpoch:v49 forInterfaceType:typeCopy];
    v11 = v106;
    if ([v49 supportsIPv4])
    {
      v54 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v54;
        interfaceName2 = [v49 interfaceName];
        primaryKey3 = [v49 primaryKey];
        *buf = 138412547;
        v114 = interfaceName2;
        v115 = 2113;
        *v116 = primaryKey3;
        _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEFAULT, "Enabling support for IPv4, interface = %@, primaryKey = %{private}@", buf, 0x16u);
      }

      -[NetworkAnalyticsEngine _setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:](self, "_setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:", [v49 seqno], typeCopy, eventCopy, 2, 8);
    }

    if ([v49 supportsIPv6])
    {
      v58 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        interfaceName3 = [v49 interfaceName];
        primaryKey4 = [v49 primaryKey];
        *buf = 138412547;
        v114 = interfaceName3;
        v115 = 2113;
        *v116 = primaryKey4;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEFAULT, "Enabling support for IPv6, interface = %@, primaryKey = %{private}@", buf, 0x16u);
      }

      -[NetworkAnalyticsEngine _setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:](self, "_setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:", [v49 seqno], typeCopy, eventCopy, 30, 8);
    }

    ++netatt_epochs;
    if (eventCopy)
    {
      ++netatt_roamed;
    }

    v62 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      liveDefaultRoutes = self->liveDefaultRoutes;
      v64 = v62;
      v65 = [(NSMutableDictionary *)liveDefaultRoutes count];
      v66 = *v104;
      *buf = 134218755;
      v114 = v49;
      v115 = 2113;
      *v116 = v105;
      *&v116[8] = 2048;
      v117 = v65;
      v118 = 1024;
      LODWORD(v119) = v66;
      _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEFAULT, "inserting new epoch (%p) primary key: %{private}@, def routes count: %lu, lqm: %d", buf, 0x26u);
    }

    [(NetworkAnalyticsEngine *)self _retrieveDNSServersForEpoch:v49];
    v67 = pendedLqm[typeCopy];
    if (v67)
    {
      v68 = &realTimeLqm[typeCopy];
      if (v67 == 1 && *v104 != -2)
      {
        v67 = 4294967294;
        pendedLqm[typeCopy] = -2;
      }
    }

    else
    {
      v67 = v102;
      v68 = &realTimeLqm[typeCopy];
    }

    v70 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *v68;
      *buf = 138412802;
      v114 = nameCopy;
      v115 = 1024;
      *v116 = v67;
      *&v116[4] = 1024;
      *&v116[6] = v71;
      _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM for newly created Epoch on interface %@, LQM(old/new) = (%d/%d)", buf, 0x18u);
    }

    [(NetworkAnalyticsEngine *)selfCopy _computeAndApplyLoadedLqmFrom:*v68 oldLqm:v67 onInterfaceType:typeCopy];
    if (typeCopy == 5)
    {
      if (cellRrcState)
      {
        [(NetworkAnalyticsEngine *)selfCopy _actUponCellRrcChangeTo:1];
      }

      goto LABEL_110;
    }

    if (selfCopy->pendedRssiEdge && ([v49 primaryKey], v72 = objc_claimAutoreleasedReturnValue(), has_bssid = primary_key_has_bssid(v72, selfCopy->pendedRssiEdgeTarget), v72, has_bssid))
    {
      v74 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_DEFAULT, "trigger-disconnect: found matching pended RSSI ON, applying it", buf, 2u);
      }

      [WiFiTriggerHandler triggerAllowedByRSSI:1 receiptTimestamp:selfCopy->pendedRssiEdge];
    }

    else
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      [WiFiTriggerHandler triggerAllowedByRSSI:0 receiptTimestamp:date2];
    }

    if (selfCopy->lastScoreExit[1] == 1)
    {
      if (v106 && eventCopy)
      {
        if ([v106 knownGoodNotified])
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }
    }

    else
    {
      durable = [v49 durable];
      if (([durable isKnownGood] & 1) == 0)
      {

        goto LABEL_108;
      }

      if (v106 && eventCopy)
      {
        knownGoodNotified = [v106 knownGoodNotified];

        if (knownGoodNotified)
        {
LABEL_108:
          if (!eventCopy)
          {
            [v107 postNotificationName:@"kNotificationOfFlowDisruptingEvent" object:selfCopy userInfo:0];
          }

          goto LABEL_110;
        }

LABEL_107:
        [(NetworkAnalyticsEngine *)selfCopy _delayedKnownGoodNetworkAlert];
        goto LABEL_108;
      }
    }

    if (eventCopy)
    {
LABEL_110:
      durable2 = [v49 durable];
      [v108 setKnownGood:{objc_msgSend(durable2, "isKnownGood")}];

      durable3 = [v49 durable];
      [v108 setKnownSporadic:{objc_msgSend(durable3, "isKnownSporadic")}];

      if (typeCopy != 5 && !eventCopy)
      {
        durable4 = [v49 durable];
        identifier = [durable4 identifier];
        [v108 setFirstAttachment:{-[NetworkAnalyticsEngine _determineIfThisIsWiFiFirstAttachment:](selfCopy, "_determineIfThisIsWiFiFirstAttachment:", identifier)}];
      }

      durable5 = [v49 durable];
      isLowInternetUL = [durable5 isLowInternetUL];
      durable6 = [v49 durable];
      isLowInternetDL = [durable6 isLowInternetDL];
      interfaceName4 = [v49 interfaceName];
      uTF8String = [interfaceName4 UTF8String];
      v88 = isLowInternetDL;
      self = selfCopy;
      [(NetworkAnalyticsEngine *)selfCopy _informKernelOfLIMUplink:isLowInternetUL downlink:v88 forInterface:uTF8String];

      [(NetworkAnalyticsEngine *)selfCopy _updateCombinedDNSCounts];
      v20 = v108;
      goto LABEL_114;
    }

    goto LABEL_107;
  }

  primaryKey5 = [v11 primaryKey];
  if (([primaryKey5 isEqualToString:changeCopy] & 1) == 0)
  {

LABEL_31:
    v30 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      primaryKey6 = [v11 primaryKey];
      interfaceName5 = [v11 interfaceName];
      *buf = 138413315;
      v114 = v11;
      v115 = 2113;
      *v116 = changeCopy;
      *&v116[8] = 2112;
      v117 = nameCopy;
      v118 = 2113;
      v119 = primaryKey6;
      v120 = 2112;
      v121 = interfaceName5;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "retiring incumbent: %@, new (%{private}@,%@) vs old (%{private}@,%@)", buf, 0x34u);
    }

    if (typeCopy == 5)
    {
      v34 = 5;
      v35 = 5;
LABEL_41:
      [v11 retire];
      [(NetworkAnalyticsEngine *)selfCopy _removeEpochForInterfaceType:v34];
      v38 = [NetworkStateRelay getStateRelayFor:v35];
      v39 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v40 = "Wi-Fi";
        if (typeCopy == 5)
        {
          v40 = "Cellular";
        }

        *buf = 136315138;
        v114 = v40;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_INFO, "Removing all default gateways from %s state relay", buf, 0xCu);
      }

      [v38 removeAllDefaultGateways];

      self = selfCopy;
      goto LABEL_46;
    }

    v35 = 3;
    if (pendedLqm[typeCopy] != 1)
    {
      v34 = typeCopy;
      if (eventCopy)
      {
        goto LABEL_41;
      }

      dword_2814D300C = -2;
      [(NetworkAnalyticsEngine *)selfCopy _trackRealTimeLqmLastUpdatedOnInterfaceType:typeCopy];
      v36 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v37 = pendedLqm[typeCopy];
        *buf = 138412802;
        v114 = nameCopy;
        v115 = 1024;
        *v116 = v37;
        *&v116[4] = 1024;
        *&v116[6] = -2;
        _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM before retiring Epoch (under race) on interface %@, LQM(old/new) = (%d/%d)", buf, 0x18u);
      }

      [(NetworkAnalyticsEngine *)selfCopy _computeAndApplyLoadedLqmFrom:4294967294 oldLqm:pendedLqm[typeCopy] onInterfaceType:typeCopy];
      v35 = 3;
    }

    v34 = typeCopy;
    goto LABEL_41;
  }

  interfaceName6 = [v11 interfaceName];
  v19 = [interfaceName6 isEqualToString:nameCopy];

  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = v108;
  if ([v108 supportsIPv4])
  {
    supportsIPv42 = [v11 supportsIPv4];
    if (supportsIPv42 != [v108 supportsIPv4])
    {
      v22 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "Enabling support for IPv4", buf, 2u);
      }

      [v11 setSupportsIPv4:{objc_msgSend(v108, "supportsIPv4")}];
      -[NetworkAnalyticsEngine _setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:](selfCopy, "_setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:", [v11 seqno], typeCopy, eventCopy, 2, 8);
    }
  }

  if ([v108 supportsIPv6])
  {
    supportsIPv62 = [v11 supportsIPv6];
    if (supportsIPv62 != [v108 supportsIPv6])
    {
      v24 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Enabling support for IPv6", buf, 2u);
      }

      [v11 setSupportsIPv6:{objc_msgSend(v108, "supportsIPv6")}];
      -[NetworkAnalyticsEngine _setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:](selfCopy, "_setDefrouteMonitoring:ofInterfaceType:roamingEvent:family:retries:", [v11 seqno], typeCopy, eventCopy, 30, 8);
    }
  }

  v25 = &realTimeLqm[typeCopy];
  if (*v25 == -1)
  {
    [(NetworkAnalyticsEngine *)selfCopy _establishLqmBaselineOn:typeCopy == 5 interfaceName:nameCopy lqmPtr:&realTimeLqm[typeCopy]];
    v26 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *v25;
      *buf = 138412802;
      v114 = nameCopy;
      v115 = 1024;
      *v116 = -1;
      *&v116[4] = 1024;
      *&v116[6] = v27;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "Computing loaded LQM after baselining LQM on interface %@, LQM(old/new) = (%d/%d)", buf, 0x18u);
    }

    [(NetworkAnalyticsEngine *)selfCopy _computeAndApplyLoadedLqmFrom:*v25 oldLqm:0xFFFFFFFFLL onInterfaceType:typeCopy];
  }

  v28 = netepochsLogHandle;
  v29 = 0;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "duplicate call, bailing out", buf, 2u);
    v29 = 0;
  }

LABEL_129:

  return v29;
}

- (BOOL)_determineIfThisIsWiFiFirstAttachment:(id)attachment
{
  v54 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v5 = [(NetworkAnalyticsEngine *)self _naIdentifierToMajor:attachmentCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
    v7 = [v6 networkAttachmentsWithMajorID:v5];
    v8 = objc_autoreleasePoolPush();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      context = v8;
      v35 = v6;
      v36 = attachmentCopy;
      v37 = v9;
      v12 = 0;
      v13 = *v43;
      v33 = *v43;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v43 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v42 + 1) + 8 * v14);
          identifier = [v16 identifier];
          v12 = [(NetworkAnalyticsEngine *)self _naIdentifierToMajor:identifier];

          if ([v12 isEqualToString:v5])
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            hasDefaultRoute = [v16 hasDefaultRoute];
            v19 = [hasDefaultRoute countByEnumeratingWithState:&v38 objects:v52 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v39;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v39 != v21)
                  {
                    objc_enumerationMutation(hasDefaultRoute);
                  }

                  [*(*(&v38 + 1) + 8 * i) epochs];
                  v24 = (v23 + 0.0);
                  if (v24)
                  {
                    v29 = netepochsLogHandle;
                    v9 = v37;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = v29;
                      v31 = [v37 count];
                      *buf = 67109632;
                      v47 = 0;
                      v48 = 2048;
                      v49 = v31;
                      v50 = 2048;
                      v51 = v24;
                      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "firstAttachment (%d) matched Wi-Fi NA count %lu, epoch count %lu", buf, 0x1Cu);
                    }

                    objc_autoreleasePoolPop(context);
                    v26 = 0;
                    v6 = v35;
                    attachmentCopy = v36;
                    goto LABEL_25;
                  }
                }

                v20 = [hasDefaultRoute countByEnumeratingWithState:&v38 objects:v52 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v9 = v37;
            v13 = v33;
          }

          ++v14;
          v15 = v12;
        }

        while (v14 != v11);
        v11 = [v9 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v11);

      v6 = v35;
      attachmentCopy = v36;
      v8 = context;
    }

    objc_autoreleasePoolPop(v8);
    v25 = netepochsLogHandle;
    v26 = 1;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v25;
      v28 = [v9 count];
      *buf = 67109632;
      v47 = 1;
      v48 = 2048;
      v49 = v28;
      v50 = 2048;
      v51 = 0;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "firstAttachment (%d) matched Wi-Fi NA count %lu, epoch count %lu", buf, 0x1Cu);
    }

LABEL_25:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_establishLqmBaselineOn:(BOOL)on interfaceName:(id)name lqmPtr:(int *)ptr
{
  onCopy = on;
  *&v31[5] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = nameCopy;
  if (onCopy && self->cellSPIType == 3)
  {
    if (self->serverConnection)
    {
      v10 = 100;
    }

    else
    {
      v10 = -1;
    }

    goto LABEL_22;
  }

  valuePtr = -1;
  if (!nameCopy)
  {
    v20 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "retrieve_lqm_for_interface is called with nil ifName";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      v24 = 2;
LABEL_20:
      _os_log_impl(&dword_23255B000, v22, v23, v21, buf, v24);
    }

LABEL_21:
    v10 = -1;
    goto LABEL_22;
  }

  v11 = *MEMORY[0x277CE16B0];
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], nameCopy, *MEMORY[0x277CE16B0]);
  if (!NetworkInterfaceEntity)
  {
    v25 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v30 = v9;
      *&v30[8] = 2112;
      *v31 = v11;
      v21 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
      v22 = v25;
      v23 = OS_LOG_TYPE_DEFAULT;
      v24 = 22;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v13 = NetworkInterfaceEntity;
  v14 = SCDynamicStoreCopyValue(_SCDynamicStore, NetworkInterfaceEntity);
  v15 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v30 = v14;
    *&v30[8] = 2112;
    *v31 = v13;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
  }

  CFRelease(v13);
  if (!v14)
  {
    goto LABEL_21;
  }

  v16 = CFGetTypeID(v14);
  if (v16 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(v14, v11);
    if (Value)
    {
      v18 = Value;
      v19 = CFGetTypeID(Value);
      if (v19 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v18, kCFNumberIntType, &valuePtr);
      }
    }
  }

  CFRelease(v14);
  v10 = valuePtr;
LABEL_22:
  *ptr = v10;
  v26 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *v30 = dword_2814D300C;
    *&v30[4] = 1024;
    *&v30[6] = dword_2814D3014;
    v31[0] = 2112;
    *&v31[1] = v9;
    _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "LQM baseline (re)established: LQM = (%d, %d) interface = %@", buf, 0x18u);
  }

  if (onCopy)
  {
    v27 = 5;
  }

  else
  {
    v27 = 3;
  }

  [(NetworkAnalyticsEngine *)self _trackRealTimeLqmLastUpdatedOnInterfaceType:v27];
}

- (void)_idleExitTransactionCheck
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    activeEpochs = self->activeEpochs;
    lastEpochRemoved = self->lastEpochRemoved;
    v6 = v3;
    activeEpochTransaction = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    *buf = 138412802;
    *&buf[4] = activeEpochs;
    *&buf[12] = 2048;
    *&buf[14] = lastEpochRemoved;
    *&buf[22] = 1024;
    v28 = activeEpochTransaction != 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Enter, epochs %@, lastEpochRemoved %p   holding os_transaction %d", buf, 0x1Cu);
  }

  v8 = [(NSMutableDictionary *)self->activeEpochs count];
  v9 = self->lastEpochRemoved;
  if (v8)
  {
    self->lastEpochRemoved = 0;

    activeEpochTransaction2 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    if (activeEpochTransaction2)
    {
    }

    else if (!self->xpcShutdown)
    {
      v19 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "start holding os_transaction (com.apple.symptomsd.active_network_epoch)", buf, 2u);
      }

      v20 = os_transaction_create();
      [(NetworkAnalyticsEngine *)self setActiveEpochTransaction:v20];
    }
  }

  else if (!v9)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v12 = self->lastEpochRemoved;
    self->lastEpochRemoved = date;

    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->lastEpochRemoved;
      *buf = 134218242;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Set last epoch removed to %p %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    activeEpochTransaction3 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    v16 = activeEpochTransaction3 != 0;

    LOBYTE(v28) = v16;
    if (*(*&buf[8] + 24) == 1)
    {
      v17 = dispatch_time(0, 10000000000);
      queue = [(AnalyticsEngineCore *)self queue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke;
      v26[3] = &unk_27898A848;
      v26[4] = self;
      v26[5] = buf;
      dispatch_after(v17, queue, v26);
    }

    _Block_object_dispose(buf, 8);
  }

  v21 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->activeEpochs;
    v23 = self->lastEpochRemoved;
    v24 = v21;
    activeEpochTransaction4 = [(NetworkAnalyticsEngine *)self activeEpochTransaction];
    *buf = 138412802;
    *&buf[4] = v22;
    *&buf[12] = 2048;
    *&buf[14] = v23;
    *&buf[22] = 1024;
    v28 = activeEpochTransaction4 != 0;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "Exit, epochs %@, lastEpochRemoved %p   holding os_transaction %d", buf, 0x1Cu);
  }
}

void *__51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeEpochTransaction];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    *buf = 134218240;
    v13 = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Check after last epoch removal, value %p, exit holding os_transaction %d", buf, 0x12u);
  }

  result = *(*(a1 + 32) + 176);
  if (result)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      result = [result timeIntervalSinceNow];
      v8 = v7;
      if (v7 < -8.0)
      {
        v9 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v13 = -v8;
          _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Start workspace save after delay of %f", buf, 0xCu);
        }

        [*(a1 + 32) _flushAllJournalRecords];
        [*(*(a1 + 32) + 8) save];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_762;
        v10[3] = &unk_27898DA28;
        v11 = *(a1 + 32);
        return [FlowAnalyticsEngine workspaceSaveWithCallback:v10];
      }
    }
  }

  return result;
}

void __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_762(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_2;
  v3[3] = &unk_27898A848;
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

void __51__NetworkAnalyticsEngine__idleExitTransactionCheck__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activeEpochTransaction];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 176);
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v9 = 134218240;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Finished workspace save, value %p, holding os_transaction %d", &v9, 0x12u);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v6 = *(*(a1 + 32) + 176);
    if (v6)
    {
      [v6 timeIntervalSinceNow];
      if (v7 < -8.0)
      {
        v8 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "stop holding os_transaction", &v9, 2u);
        }

        [*(a1 + 32) setActiveEpochTransaction:0];
      }
    }
  }
}

- (id)_epochForInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  v5 = self->activeEpochs;
  objc_sync_enter(v5);
  activeEpochs = self->activeEpochs;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  v8 = [(NSMutableDictionary *)activeEpochs objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (id)_concurrentEpochs
{
  v3 = self->activeEpochs;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->activeEpochs allValues];
  objc_sync_exit(v3);

  return allValues;
}

- (void)_insertEpoch:(id)epoch forInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  epochCopy = epoch;
  v6 = self->activeEpochs;
  objc_sync_enter(v6);
  activeEpochs = self->activeEpochs;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  [(NSMutableDictionary *)activeEpochs setObject:epochCopy forKeyedSubscript:v8];

  objc_sync_exit(v6);
}

- (void)_removeEpochForInterfaceType:(unsigned __int8)type
{
  typeCopy = type;
  obj = self->activeEpochs;
  objc_sync_enter(obj);
  activeEpochs = self->activeEpochs;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  [(NSMutableDictionary *)activeEpochs removeObjectForKey:v6];

  objc_sync_exit(obj);
}

- (void)_armDOASuspector:(id)suspector
{
  v27 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    interfaceName = [suspectorCopy interfaceName];
    primaryKey = [suspectorCopy primaryKey];
    *buf = 138413059;
    v20 = interfaceName;
    v21 = 2113;
    v22 = primaryKey;
    v23 = 2048;
    defRoute4 = [suspectorCopy defRoute4];
    v25 = 2048;
    defRoute6 = [suspectorCopy defRoute6];
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Arming DOA suspector on %@, primary key = %{private}@, src4 = %p, src6 = %p", buf, 0x2Au);
  }

  date = [MEMORY[0x277CBEAA8] date];
  queue = [(AnalyticsEngineCore *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke;
  v17[3] = &unk_27898A0C8;
  v18 = suspectorCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_2;
  v14[3] = &unk_27898A7D0;
  v11 = v18;
  v15 = v11;
  selfCopy = self;
  v12 = [v11 createCountDown:@"tickerDOA" atTime:date nextTick:4000000000 ticksTotal:7 onQueue:queue withIterationBlock:v17 completionBlock:v14];

  if ((v12 & 1) == 0)
  {
    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = @"tickerDOA";
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "failed to start ticker %@", buf, 0xCu);
    }
  }
}

void *__43__NetworkAnalyticsEngine__armDOASuspector___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) defRoute4])
  {
    MEMORY[0x238386EA0]([*(a1 + 32) defRoute4]);
  }

  result = [*(a1 + 32) defRoute6];
  if (result)
  {
    [*(a1 + 32) defRoute6];

    JUMPOUT(0x238386EA0);
  }

  return result;
}

void __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fatal];
  v3 = [v2 isRunning];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) partial];
    [v4 connAttempts];
    v6 = v5;

    v7 = netepochsLogHandle;
    v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v6 == 0.0)
    {
      if (v8)
      {
        v13 = *(a1 + 32);
        v14 = v7;
        v15 = [v13 primaryKey];
        *buf = 138412547;
        v20 = @"tickerDOA";
        v21 = 2113;
        v22 = v15;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED and VOIDED on %{private}@, fatal time not accruing", buf, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
        v9 = *(a1 + 32);
        v10 = v7;
        v11 = [v9 primaryKey];
        *buf = 138412547;
        v20 = @"tickerDOA";
        v21 = 2113;
        v22 = v11;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED on %{private}@, fatal time accruing", buf, 0x16u);
      }

      v12 = [*(a1 + 32) fatal];
      [v12 start];

      [*(a1 + 40) _updateAdviceForEpoch:*(a1 + 32)];
    }
  }

  v16 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NetworkAnalyticsEngine__armDOASuspector___block_invoke_763;
  block[3] = &unk_27898A0C8;
  v18 = *(a1 + 32);
  dispatch_async(v16, block);
}

- (void)_disarmDOASuspector:(id)suspector
{
  v18 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  [suspectorCopy countDownStop:@"tickerDOA" eventTimeStamp:0];
  fatal = [suspectorCopy fatal];
  isRunning = [fatal isRunning];

  v7 = netepochsLogHandle;
  v8 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (isRunning)
  {
    if (v8)
    {
      v9 = v7;
      primaryKey = [suspectorCopy primaryKey];
      v14 = 138412547;
      v15 = @"tickerDOA";
      v16 = 2113;
      v17 = primaryKey;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal was running, will stop", &v14, 0x16u);
    }

    fatal2 = [suspectorCopy fatal];
    [fatal2 stop];

    [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:suspectorCopy];
  }

  else if (v8)
  {
    v12 = v7;
    primaryKey2 = [suspectorCopy primaryKey];
    v14 = 138412547;
    v15 = @"tickerDOA";
    v16 = 2113;
    v17 = primaryKey2;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal wasn't running, no change", &v14, 0x16u);
  }
}

- (BOOL)_recordOfActiveFatalSuspector:(int64_t)suspector
{
  v21 = *MEMORY[0x277D85DE8];
  if (suspector != 1)
  {
    if (suspector == 2)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v4 = _recordOfActiveFatalSuspector__falsePositivesSlot++;
      _recordOfActiveFatalSuspector__lastFalsePositives[v4 & 1] = v5;
LABEL_4:
      LOBYTE(v6) = 1;
      return v6;
    }

    v15 = netepochsLogHandle;
    v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR);
    if (!v6)
    {
      return v6;
    }

    v17 = 134217984;
    suspectorCopy = suspector;
    v11 = "unknown action: %ld";
    v12 = v15;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 12;
LABEL_15:
    _os_log_impl(&dword_23255B000, v12, v13, v11, &v17, v14);
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = 1;
  if (*_recordOfActiveFatalSuspector__lastFalsePositives != 0.0 && *&qword_27DDA1A60 != 0.0)
  {
    if (*_recordOfActiveFatalSuspector__lastFalsePositives >= *&qword_27DDA1A60)
    {
      v7 = qword_27DDA1A60;
    }

    else
    {
      v7 = _recordOfActiveFatalSuspector__lastFalsePositives[0];
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9 = v8;
    if (v8 - *&v7 >= 3600.0)
    {
      goto LABEL_4;
    }

    v10 = netepochsLogHandle;
    v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      return v6;
    }

    v17 = 134218240;
    suspectorCopy = v7;
    v19 = 2048;
    v20 = v9;
    v11 = "ticker check, too many false positives in the range: %f vs. now (%f)";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 22;
    goto LABEL_15;
  }

  return v6;
}

- (void)_armFatalSuspector:(id)suspector isActive:(BOOL)active
{
  activeCopy = active;
  v37 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  fatal = [suspectorCopy fatal];
  if ([fatal isRunning])
  {

    goto LABEL_4;
  }

  oncell = [suspectorCopy oncell];

  if ((oncell & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v36 = 0;
    date = [MEMORY[0x277CBEAA8] date];
    if (activeCopy)
    {
      if (![(NetworkAnalyticsEngine *)self _recordOfActiveFatalSuspector:1])
      {
        v13 = 0;
        goto LABEL_14;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke;
      aBlock[3] = &unk_27898C418;
      aBlock[4] = self;
      v27 = suspectorCopy;
      v28 = buf;
      v13 = _Block_copy(aBlock);

      if (!v13)
      {
LABEL_14:
        v16 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          if (activeCopy)
          {
            v17 = "";
          }

          else
          {
            v17 = "not ";
          }

          v18 = v16;
          v19 = _Block_copy(v13);
          *v29 = 138412802;
          v30 = @"tickerFatal";
          v31 = 2080;
          v32 = v17;
          v33 = 2048;
          v34 = v19;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "failed to start ticker %@, %sactive, active probe: %p", v29, 0x20u);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_772;
    v20[3] = &unk_27898DC60;
    v25 = activeCopy;
    v21 = suspectorCopy;
    v24 = buf;
    v13 = v13;
    selfCopy = self;
    v23 = v13;
    v15 = [v21 createCountDown:@"tickerFatal" atTime:date nextTick:4000000000 ticksTotal:7 onQueue:queue withIterationBlock:v13 completionBlock:v20];

    if (v15)
    {
LABEL_19:

      _Block_object_dispose(buf, 8);
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_4:
  v9 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    fatal2 = [suspectorCopy fatal];
    *buf = 138412802;
    *&buf[4] = @"tickerFatal";
    *&buf[12] = 1024;
    *&buf[14] = [fatal2 isRunning];
    *&buf[18] = 1024;
    *&buf[20] = [suspectorCopy oncell];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "failed to start ticker %@, fatal running: %d, cell: %d", buf, 0x18u);
  }

LABEL_20:
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v2 = [TCPConnectionProbe alloc];
  v3 = [*(a1 + 32) queue];
  v16 = [(TestProbe *)v2 initWithQueue:v3];

  ++active_probes;
  v4 = v12[5];
  v5 = [*(a1 + 40) interfaceName];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_2;
  v8[3] = &unk_27898DC38;
  v8[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = v7;
  v9 = v7;
  v10 = &v11;
  [v4 testConection:@"www.apple.com" port:80 timeout:v5 interfaceName:v8 reply:3.0];

  _Block_object_dispose(&v11, 8);
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = netepochsLogHandle;
  v6 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (a3 == 1)
  {
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check iter, connected!", &v12, 2u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    v7 = a1[4];
    v8 = a1[5];
    v9 = [MEMORY[0x277CBEAA8] date];
    [v7 _disarmFatalSuspector:v8 withEventAt:v9 by:@"active probe"];
  }

  else if (v6)
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check iter, event: %lu", &v12, 0xCu);
  }

  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_772(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 primaryKey];
    v6 = [*(a1 + 32) fatal];
    v7 = [v6 isRunning];
    v8 = "not ";
    if (v7)
    {
      v9 = "";
    }

    else
    {
      v9 = "not ";
    }

    v10 = *(*(*(a1 + 56) + 8) + 24);
    if (*(a1 + 64))
    {
      v8 = "";
    }

    *buf = 138413315;
    v18 = @"tickerFatal";
    v19 = 2113;
    v20 = v5;
    v21 = 2080;
    v22 = v9;
    v23 = 2080;
    v24 = v8;
    v25 = 1024;
    v26 = v10;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ticker check %@ FAILED on %{private}@, fatal %srunning, fatal time accruing, %sactive, active outcome %d", buf, 0x30u);
  }

  v11 = [*(a1 + 32) fatal];
  if ([v11 isRunning])
  {
    goto LABEL_9;
  }

  if (*(a1 + 64) != 1)
  {

LABEL_15:
    v13 = [*(a1 + 32) fatal];
    [v13 start];

    [*(a1 + 40) _updateAdviceForEpoch:*(a1 + 32)];
    goto LABEL_16;
  }

  if (*(a1 + 48))
  {
    v12 = *(*(*(a1 + 56) + 8) + 24);

    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_9:

LABEL_16:
  if (*(a1 + 48) && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 40) _recordOfActiveFatalSuspector:2];
  }

  v14 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NetworkAnalyticsEngine__armFatalSuspector_isActive___block_invoke_773;
  block[3] = &unk_27898A0C8;
  v16 = *(a1 + 32);
  dispatch_async(v14, block);
}

- (void)_disarmFatalSuspector:(id)suspector withEventAt:(id)at by:(id)by
{
  v33 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  atCopy = at;
  byCopy = by;
  if ([suspectorCopy countDownStop:@"tickerFatal" eventTimeStamp:atCopy])
  {
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      primaryKey = [suspectorCopy primaryKey];
      fatal = [suspectorCopy fatal];
      if ([fatal isRunning])
      {
        v15 = "";
      }

      else
      {
        v15 = "not ";
      }

      v16 = [byCopy description];
      v25 = 138413059;
      v26 = @"tickerFatal";
      v27 = 2113;
      v28 = primaryKey;
      v29 = 2080;
      v30 = v15;
      v31 = 2113;
      v32 = v16;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "ticker check %@ PASSED on %{private}@, fatal %srunning, event by: %{private}@", &v25, 0x2Au);
    }
  }

  else
  {
    fatal2 = [suspectorCopy fatal];
    if ([fatal2 isRunning])
    {
      fatal3 = [suspectorCopy fatal];
      v19 = [fatal3 wasRunningBefore:atCopy];

      if (v19)
      {
        v20 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          primaryKey2 = [suspectorCopy primaryKey];
          v23 = [byCopy description];
          v25 = 138412803;
          v26 = @"tickerFatal";
          v27 = 2113;
          v28 = primaryKey2;
          v29 = 2113;
          v30 = v23;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "ticker check %@, fatal HALTED on %{private}@, event by: %{private}@", &v25, 0x20u);
        }

        fatal4 = [suspectorCopy fatal];
        [fatal4 stop];

        [(NetworkAnalyticsEngine *)self _updateAdviceForEpoch:suspectorCopy];
      }
    }

    else
    {
    }
  }
}

- (void)_armLowQDisconnectSuspector:(id)suspector
{
  v16 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  date = [MEMORY[0x277CBEAA8] date];
  queue = [(AnalyticsEngineCore *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke;
  v12[3] = &unk_27898A0C8;
  v13 = suspectorCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_2;
  v10[3] = &unk_27898A7D0;
  v10[4] = self;
  v7 = v13;
  v11 = v7;
  v8 = [v7 createCountDown:@"tickerLowQ" atTime:date nextTick:3000000000 ticksTotal:20 onQueue:queue withIterationBlock:v12 completionBlock:v10];

  if ((v8 & 1) == 0)
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = @"tickerLowQ";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "failed to start ticker %@", buf, 0xCu);
    }
  }
}

void __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lowq];
  if ([v2 isRunning])
  {
    v3 = [*(a1 + 32) defRoute4];

    if (v3)
    {
      MEMORY[0x238386EA0]([*(a1 + 32) defRoute4]);
    }
  }

  else
  {
  }

  v5 = [*(a1 + 32) lowq];
  if ([v5 isRunning])
  {
    v4 = [*(a1 + 32) defRoute6];

    if (v4)
    {
      [*(a1 + 32) defRoute6];

      JUMPOUT(0x238386EA0);
    }
  }

  else
  {
  }
}

void __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NetworkAnalyticsEngine__armLowQDisconnectSuspector___block_invoke_3;
  block[3] = &unk_27898A0C8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)_disarmLowQDisconnectSuspector:(id)suspector
{
  v11 = *MEMORY[0x277D85DE8];
  suspectorCopy = suspector;
  [suspectorCopy countDownStop:@"tickerLowQ" eventTimeStamp:0];
  v4 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    primaryKey = [suspectorCopy primaryKey];
    v7 = 138412547;
    v8 = @"tickerLowQ";
    v9 = 2113;
    v10 = primaryKey;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ticker check %@ HALTED on %{private}@", &v7, 0x16u);
  }
}

- (void)_scoringTrampoline
{
  v78 = *MEMORY[0x277D85DE8];
  if (([(AnalyticsWorkspace *)self->super.workspace persistent]& 1) != 0)
  {
    v64 = objc_autoreleasePoolPush();
    v72 = 0;
    date = [MEMORY[0x277CBEAA8] date];
    v3 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
    entityName = [MEMORY[0x277D6B5A8] entityName];
    v63 = v3;
    v5 = [v3 getDescriptionForName:entityName];

    v6 = objc_alloc_init(MEMORY[0x277CBE428]);
    v62 = v5;
    [v6 setEntity:v5];
    [v6 setReturnsObjectsAsFaults:0];
    [v6 setIncludesSubentities:1];
    mainObjectContext = [(AnalyticsWorkspace *)self->super.workspace mainObjectContext];
    v71 = 0;
    v60 = v6;
    v8 = [mainObjectContext executeFetchRequest:v6 error:&v71];
    v59 = v71;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v68;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v68 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v67 + 1) + 8 * i);
          kind = [v16 kind];
          intValue = [kind intValue];

          v19 = v9;
          if (intValue != 1)
          {
            kind2 = [v16 kind];
            intValue2 = [kind2 intValue];

            v19 = v10;
            if (intValue2 != 2)
            {
              continue;
            }
          }

          [v19 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v13);
    }

    if (!v9)
    {
      v26 = 0;
LABEL_36:
      if (v10)
      {
        v45 = objc_autoreleasePoolPush();
        v65 = 0;
        v46 = [(NetworkAnalyticsEngine *)self _scoringDuty:v10 forType:2 withRetCode:&v72 oldestTime:&v65];
        contexta = v65;

        v47 = scoringLogHandle;
        if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v76) = v72;
          _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEBUG, "scoring Cell: completed with return %d", buf, 8u);
        }

        v48 = v72;
        self->lastScoreExit[2] = v72;
        if (!v48)
        {
          v49 = scoringLogHandle;
          if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v46;
            _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_INFO, "KnownGood state for Cell will be set, excluding these keys: %@", buf, 0xCu);
          }

          [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v10 targetKeyPath:@"isKnownGood" basedOn:v46 matchingKeyPath:@"identifier" matchValue:MEMORY[0x277CBEC28] noMatchValue:MEMORY[0x277CBEC38]];
        }

        objc_autoreleasePoolPop(v45);
      }

      else
      {
        contexta = 0;
        v46 = v26;
      }

      v50 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = lowInternetModeScoresDL;
        _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_INFO, "LIM state for IPv4 DL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetDL" basedOn:lowInternetModeScoresDL matchingKeyPath:@"netSignature" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v51 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = lowInternetModeScoresUL;
        _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_INFO, "LIM state for IPv4 UL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetUL" basedOn:lowInternetModeScoresUL matchingKeyPath:@"netSignature" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v52 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = lowInternetModeScoresDL;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "LIM state for IPv6 DL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetDL" basedOn:lowInternetModeScoresDL matchingKeyPath:@"netSignatureV6" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      v53 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = lowInternetModeScoresUL;
        _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_INFO, "LIM state for IPv6 UL set: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v11 targetKeyPath:@"isLowInternetUL" basedOn:lowInternetModeScoresUL matchingKeyPath:@"netSignatureV6" matchValue:MEMORY[0x277CBEC38] noMatchValue:MEMORY[0x277CBEC28]];
      [(AnalyticsWorkspace *)self->super.workspace save];
      ++score_counts;
      [(NetworkAnalyticsEngine *)self _dumpStats];
      v54 = score_last;
      score_last = date;
      v55 = date;

      objc_autoreleasePoolPop(v64);
      return;
    }

    context = objc_autoreleasePoolPush();
    v66 = 0;
    v22 = [(NetworkAnalyticsEngine *)self _scoringDuty:v9 forType:1 withRetCode:&v72 oldestTime:&v66];
    v56 = v66;
    v23 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v76) = v72;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "scoring WiFi: completed with return %d", buf, 8u);
    }

    v24 = v72;
    self->lastScoreExit[1] = v72;
    if (!v24)
    {
      v25 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v76 = v22;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "KnownGood state for WiFi will be set, excluding these keys: %@", buf, 0xCu);
      }

      [(NetworkAnalyticsEngine *)self _setScalarValueInNetworkAttachments:v9 targetKeyPath:@"isKnownGood" basedOn:v22 matchingKeyPath:@"identifier" matchValue:MEMORY[0x277CBEC28] noMatchValue:MEMORY[0x277CBEC38]];
    }

    v26 = [(NetworkAnalyticsEngine *)self _determineSporadicForType:1 withRetCode:&v72];

    v27 = scoringLogHandle;
    if (v72)
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v76) = v72;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "Sporadic for WiFi cannot be set, resetting, cause %d", buf, 8u);
      }

      v28 = MEMORY[0x277CBEC28];
      selfCopy2 = self;
      v30 = v9;
      v31 = 0;
      v32 = MEMORY[0x277CBEC28];
    }

    else
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = v26;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "Sporadic for WiFi set for identifiers: %@", buf, 0xCu);
      }

      v28 = MEMORY[0x277CBEC38];
      v32 = MEMORY[0x277CBEC28];
      selfCopy2 = self;
      v30 = v9;
      v31 = v26;
    }

    [(NetworkAnalyticsEngine *)selfCopy2 _setScalarValueInNetworkAttachments:v30 targetKeyPath:@"isKnownSporadic" basedOn:v31 matchingKeyPath:@"identifier" matchValue:v28 noMatchValue:v32];
    v73[0] = @"sporadicCount";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
    v73[1] = @"sporadicRetCode";
    v74[0] = v34;
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v72];
    v74[1] = v35;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];

    workspace = self->super.workspace;
    queue = [(AnalyticsEngineCore *)self queue];
    v39 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

    v40 = [v39 archiveAndImportItemUnderName:@"WiFiSporadicReport" item:v36];
    v41 = scoringLogHandle;
    if (v40)
    {
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v76 = v36;
        v42 = "Scoring sporadic: finalized with record %@";
        v43 = v41;
        v44 = OS_LOG_TYPE_DEBUG;
LABEL_34:
        _os_log_impl(&dword_23255B000, v43, v44, v42, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v76 = v36;
      v42 = "Scoring sporadic: failed to write record %@";
      v43 = v41;
      v44 = OS_LOG_TYPE_ERROR;
      goto LABEL_34;
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_36;
  }

  v33 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "Workspace is non-persistent, no data for scoring.", buf, 2u);
  }
}

- (id)_naIdentifierToMajor:(id)major
{
  v30 = *MEMORY[0x277D85DE8];
  majorCopy = major;
  v4 = majorCopy;
  if (!majorCopy)
  {
    v16 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Got nil NetworkAttachment identifier, returning", v26, 2u);
    }

    goto LABEL_14;
  }

  v19 = 0;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  uTF8String = [majorCopy UTF8String];
  v6 = uTF8String;
  if (!uTF8String || !*uTF8String)
  {
    fastestEncoding = [v4 fastestEncoding];
    v10 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_FAULT))
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = v10;
      v13 = [v11 localizedNameOfStringEncoding:fastestEncoding];
      v14 = v13;
      v15 = "<empty>";
      *buf = 138478339;
      v21 = v4;
      if (!v6)
      {
        v15 = "NULL";
      }

      v22 = 2112;
      v23 = v13;
      v24 = 2080;
      v25 = v15;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_FAULT, "Non-nil identifier %{private}@ with encoding %@ has %s UTF-8 representation", buf, 0x20u);
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v26[0] = *uTF8String;
  v7 = 1;
  while (v7 != 63)
  {
    v8 = uTF8String[v7];
    v26[v7++] = v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  HIBYTE(v29) = 0;
LABEL_19:
  v17 = 0;
  if ([NetworkEpoch parsePrimaryKeyStr:v26 majorIDLengthInBytes:&v19 + 4 minorIDLengthInBytes:&v19]&& SHIDWORD(v19) <= 63)
  {
    v26[SHIDWORD(v19)] = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v26];
  }

LABEL_15:

  return v17;
}

- (id)_determineSporadicForType:(int)type withRetCode:(int *)code
{
  v85 = *&type;
  v117 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277D6B540]);
  workspace = self->super.workspace;
  entityName = [MEMORY[0x277D6B5A0] entityName];
  v87 = [v5 initWithWorkspace:workspace entityName:entityName withCache:0];

  v86 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:1];
  v84 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v83 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = (+[NetworkEpoch coalescingFactor]- 1);
  date = [MEMORY[0x277CBEAA8] date];
  v11 = [date dateByAddingTimeInterval:-v9];
  v12 = [DateRounder roundToDayResolutionOnly:v11];

  v13 = 0;
  v92 = v8;
  do
  {
    v91 = v13;
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d AND %K >= %@ AND %K < %@", @"kind", v85, @"timeStamp", v12, @"timeStamp", date];
    v15 = [v87 fetchEntitiesFreeForm:? sortDesc:?];
    v16 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v15 count];
      [v12 timeIntervalSince1970];
      v20 = v19;
      [date timeIntervalSince1970];
      *buf = 134218496;
      *v116 = v18;
      *&v116[8] = 2048;
      *&v116[10] = v20;
      *&v116[18] = 2048;
      *&v116[20] = v21;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "Sporadic analysis: fetched %lu entries from %.0f to %.0f", buf, 0x20u);
    }

    v88 = v12;
    v89 = date;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = v15;
    v22 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v108;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v108 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v107 + 1) + 8 * i);
          hasNetworkAttachment = [v26 hasNetworkAttachment];
          identifier = [hasNetworkAttachment identifier];
          v29 = [(NetworkAnalyticsEngine *)self _naIdentifierToMajor:identifier];

          if (v29)
          {
            v30 = [v14 objectForKeyedSubscript:v29];

            if (v30)
            {
              v31 = [v14 objectForKeyedSubscript:v29];
              [v31 doubleValue];
              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v37 = MEMORY[0x277CCABB0];
            [v26 overallStay];
            v39 = [v37 numberWithDouble:v33 + v38];
            [v14 setObject:v39 forKeyedSubscript:v29];

            v35 = [v8 objectForKeyedSubscript:v29];
            if (v35)
            {
              identifier2 = [hasNetworkAttachment identifier];
              [v35 addObject:identifier2];
            }

            else
            {
              v40 = objc_alloc(MEMORY[0x277CBEB58]);
              identifier2 = [hasNetworkAttachment identifier];
              v41 = [v40 initWithObjects:{identifier2, 0}];
              [v92 setObject:v41 forKeyedSubscript:v29];

              v8 = v92;
            }
          }

          else
          {
            v34 = scoringLogHandle;
            if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_19;
            }

            v35 = v34;
            identifier2 = [hasNetworkAttachment identifier];
            *buf = 138477827;
            *v116 = identifier2;
            _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Sporadic analysis: Failed to parse: %{private}@, ignoring", buf, 0xCu);
          }

LABEL_19:
        }

        v23 = [obj countByEnumeratingWithState:&v107 objects:v114 count:16];
      }

      while (v23);
    }

    v12 = [v88 dateByAddingTimeInterval:-v9];

    date = [v12 dateByAddingTimeInterval:v9];

    if ([v14 count] > 3)
    {
      v44 = [v14 keysSortedByValueUsingSelector:sel_compare_];
      v46 = [v44 count]>> 2;
      v47 = objc_alloc(MEMORY[0x277CBEB98]);
      v48 = [v44 subarrayWithRange:0, v46];
      v49 = [v47 initWithArray:v48];

      v50 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v44];
      [v50 minusSet:v49];
      v51 = scoringLogHandle;
      v43 = v91;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_INFO))
      {
        v52 = v51;
        v53 = [v44 count];
        *buf = 67109634;
        *v116 = v91;
        *&v116[4] = 2048;
        *&v116[6] = v53;
        *&v116[14] = 2112;
        *&v116[16] = v49;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "Sporadic analysis: Week %d with %lu entries, least quartile with: %@", buf, 0x1Cu);
      }

      v54 = scoringLogHandle;
      v8 = v92;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        *v116 = v91;
        *&v116[4] = 2112;
        *&v116[6] = v50;
        _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEBUG, "Sporadic analysis: Week %d remainder quartiles with: %@", buf, 0x12u);
      }

      [v84 addObject:v49];
      [v83 addObject:v50];
    }

    else
    {
      v42 = scoringLogHandle;
      v43 = v91;
      if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      v44 = v42;
      v45 = [v14 count];
      *buf = 67109634;
      *v116 = v91;
      *&v116[4] = 2048;
      *&v116[6] = v45;
      *&v116[14] = 2112;
      *&v116[16] = v14;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "Sporadic analysis: Ignoring week %d, insufficient count %lu, %@", buf, 0x1Cu);
    }

LABEL_30:
    v13 = v43 + 1;
  }

  while (v13 != 5);
  v55 = v84;
  if ([v84 count] > 2)
  {
    obja = date;
    v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v58 = v84;
    v59 = [v58 countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v104;
      do
      {
        for (j = 0; j != v60; ++j)
        {
          if (*v104 != v61)
          {
            objc_enumerationMutation(v58);
          }

          [v56 unionSet:*(*(&v103 + 1) + 8 * j)];
        }

        v60 = [v58 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v60);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v63 = v83;
    v64 = [v63 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v100;
      do
      {
        for (k = 0; k != v65; ++k)
        {
          if (*v100 != v66)
          {
            objc_enumerationMutation(v63);
          }

          [v57 unionSet:*(*(&v99 + 1) + 8 * k)];
        }

        v65 = [v63 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v65);
    }

    [v56 minusSet:v57];
    v68 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allObjects = [v56 allObjects];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v70 = [allObjects countByEnumeratingWithState:&v95 objects:v111 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v96;
      do
      {
        for (m = 0; m != v71; ++m)
        {
          if (*v96 != v72)
          {
            objc_enumerationMutation(allObjects);
          }

          v74 = [v92 objectForKeyedSubscript:*(*(&v95 + 1) + 8 * m)];
          allObjects2 = [v74 allObjects];
          [v68 addObjectsFromArray:allObjects2];
        }

        v71 = [allObjects countByEnumeratingWithState:&v95 objects:v111 count:16];
      }

      while (v71);
    }

    v76 = 0;
    codeCopy2 = code;
    v55 = v84;
    v8 = v92;
    date = obja;
    if (!code)
    {
      goto LABEL_59;
    }

LABEL_58:
    *codeCopy2 = v76;
    goto LABEL_59;
  }

  v78 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    v79 = v78;
    v80 = [v84 count];
    *buf = 134217984;
    *v116 = v80;
    _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_ERROR, "Sporadic analysis: Insufficient week count %lu", buf, 0xCu);
  }

  v68 = 0;
  v76 = 1;
  codeCopy2 = code;
  if (code)
  {
    goto LABEL_58;
  }

LABEL_59:

  return v68;
}

- (BOOL)_isKnowableSporadicForType:(unsigned __int8)type
{
  v31 = *MEMORY[0x277D85DE8];
  if (type == 3)
  {
    workspace = self->super.workspace;
    queue = [(AnalyticsEngineCore *)self queue];
    v6 = [ImpoExpoService impoExpoServiceInWorkspace:workspace andQueue:queue];

    v26 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__NetworkAnalyticsEngine__isKnowableSporadicForType___block_invoke;
    v24[3] = &__block_descriptor_33_e8_B16__0_8l;
    v25 = 3;
    v7 = [v6 exportAndUnarchiveItemUnderName:@"WiFiSporadicReport" lastUpdated:&v26 verificationBlock:v24];
    v8 = v26;
    v9 = scoringLogHandle;
    v10 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        *buf = 67109634;
        *v28 = 3;
        *&v28[4] = 2112;
        *&v28[6] = v8;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Sporadic record for type %hhu last updated on %@ is: %@", buf, 0x1Cu);
      }

      v11 = [v7 objectForKeyedSubscript:@"sporadicRetCode"];
      v12 = [v11 integerValue] == 0;
    }

    else
    {
      if (v10)
      {
        *buf = 67109120;
        *v28 = 3;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Sporadic record for type %hhu not found", buf, 8u);
      }

      v15 = objc_autoreleasePoolPush();
      v16 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:self->super.workspace withCache:0];
      v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d AND %K == %@", @"kind", 1, @"isKnownSporadic", MEMORY[0x277CBEC38]];
      v18 = [v16 fetchEntitiesFreeForm:v17 sortDesc:0];
      v19 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [v18 count];
        *buf = 134218240;
        *v28 = v21;
        *&v28[8] = 1024;
        *&v28[10] = 3;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "Found %lu sporadic NAs for interface type %hhu", buf, 0x12u);
      }

      v22 = scoringLogHandle;
      if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        *v28 = 3;
        *&v28[4] = 2112;
        *&v28[6] = v18;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "Sporadic NAs for interface type %hhu: %@", buf, 0x12u);
      }

      v12 = [v18 count] != 0;

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    typeCopy = type;
    v14 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v28 = typeCopy;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Interface type %d always sporadic un-knowable", buf, 8u);
    }

    return 0;
  }

  return v12;
}

uint64_t __53__NetworkAnalyticsEngine__isKnowableSporadicForType___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 count] == 2 && (objc_msgSend(v4, "objectForKeyedSubscript:", @"sporadicRetCode"), v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v6 = objc_opt_isKindOfClass(), v5, (v6 & 1) != 0))
    {
      v7 = [v4 objectForKeyedSubscript:@"sporadicCount"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v10 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = *(a1 + 32);
    v16 = 138412802;
    v17 = v12;
    v18 = 1024;
    v19 = v13;
    v20 = 2112;
    v21 = v3;
    v14 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "Sporadic record of type %@ for interface %hhu failed validation: %@", &v16, 0x1Cu);
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_setScalarValueInNetworkAttachments:(id)attachments targetKeyPath:(id)path basedOn:(id)on matchingKeyPath:(id)keyPath matchValue:(id)value noMatchValue:(id)matchValue
{
  attachmentsCopy = attachments;
  pathCopy = path;
  onCopy = on;
  keyPathCopy = keyPath;
  valueCopy = value;
  matchValueCopy = matchValue;
  v19 = objc_autoreleasePoolPush();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __124__NetworkAnalyticsEngine__setScalarValueInNetworkAttachments_targetKeyPath_basedOn_matchingKeyPath_matchValue_noMatchValue___block_invoke;
  v25[3] = &unk_27898DCA8;
  v20 = keyPathCopy;
  v26 = v20;
  v21 = onCopy;
  v27 = v21;
  v22 = valueCopy;
  v28 = v22;
  v23 = pathCopy;
  v29 = v23;
  v24 = matchValueCopy;
  v30 = v24;
  [attachmentsCopy enumerateObjectsUsingBlock:v25];

  objc_autoreleasePoolPop(v19);
}

void __124__NetworkAnalyticsEngine__setScalarValueInNetworkAttachments_targetKeyPath_basedOn_matchingKeyPath_matchValue_noMatchValue___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) member:v4];

  v6 = scoringLogHandle;
  v7 = os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      v11 = v6;
      v12 = [v3 identifier];
      v19 = 138413314;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Set state to %@ for: %@, attribute: %@, matchingKey: %@, in attachment: %@", &v19, 0x34u);
    }

    v13 = 48;
  }

  else
  {
    if (v7)
    {
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      v16 = *(a1 + 32);
      v17 = v6;
      v18 = [v3 identifier];
      v19 = 138413314;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v18;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Set state to %@ for: %@, attribute: %@, matchingKey: %@, in attachment: %@", &v19, 0x34u);
    }

    v13 = 64;
  }

  [v3 setValue:*(a1 + v13) forKey:*(a1 + 56)];
}

- (id)_scoringDuty:(id)duty forType:(int)type withRetCode:(int *)code oldestTime:(id *)time
{
  v139 = *MEMORY[0x277D85DE8];
  dutyCopy = duty;
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(dutyCopy, "count")}];
  v9 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "scoring: start", buf, 2u);
  }

  v110 = v8;
  date = [MEMORY[0x277CBEAA8] date];
  v10 = +[NetworkEpoch coalescingFactor];
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = dutyCopy;
  v113 = [obj countByEnumeratingWithState:&v124 objects:v138 count:16];
  v11 = 0;
  if (v113)
  {
    v112 = *v125;
    v12 = v10;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v113; i = v58 + 1)
      {
        if (*v125 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v115 = i;
        v16 = *(*(&v124 + 1) + 8 * i);
        v17 = objc_alloc_init(Score);
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v114 = v16;
        hasDefaultRoute = [v16 hasDefaultRoute];
        v19 = [hasDefaultRoute countByEnumeratingWithState:&v120 objects:v137 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v121;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v121 != v21)
              {
                objc_enumerationMutation(hasDefaultRoute);
              }

              v23 = *(*(&v120 + 1) + 8 * j);
              timeStamp = [v23 timeStamp];
              [date timeIntervalSinceDate:timeStamp];
              v26 = (v25 / v12);

              v27 = 3;
              if (v26 < 3)
              {
                v27 = v26;
              }

              v28 = kWeights[v27];
              if (type == 2)
              {
                [v23 lowLqmStay];
                v30 = v29;
                [v23 overallStay];
                if (v30 >= v31)
                {
                  v30 = v31;
                }

                [(Score *)v17 handicapStay];
                [(Score *)v17 setHandicapStay:v32 + v28 * v30];
                [v23 lqmTransitionCount];
                v34 = v33;
                [(Score *)v17 lqmTransitionCount];
                [(Score *)v17 setLqmTransitionCount:v34 + v35];
              }

              else
              {
                [v23 lowqStay];
                v37 = v36;
                [v23 faultyStay];
                v39 = v37 + v38;
                [v23 overallStay];
                if (v39 >= v40)
                {
                  v39 = v40;
                }

                [(Score *)v17 handicapStay];
                [(Score *)v17 setHandicapStay:v41 + v28 * v39];
              }

              [v23 overallStay];
              v43 = v42;
              [(Score *)v17 overallStay];
              [(Score *)v17 setOverallStay:v44 + v28 * v43];
              [v23 epochs];
              v46 = v45;
              [(Score *)v17 epochs];
              [(Score *)v17 setEpochs:v46 + v47];
              timeStamp2 = [v23 timeStamp];
              v49 = timeStamp2;
              if (v11)
              {
                v50 = [v11 earlierDate:timeStamp2];

                v11 = v50;
              }

              else
              {
                v11 = timeStamp2;
              }
            }

            v20 = [hasDefaultRoute countByEnumeratingWithState:&v120 objects:v137 count:16];
          }

          while (v20);
        }

        *buf = 0;
        v119 = 0.0;
        [(Score *)v17 epochs];
        v51 = 0.0;
        v52 = 0.0;
        if (v53 > 1.0)
        {
          hasDefaultRoute2 = [v114 hasDefaultRoute];
          combinedStats(hasDefaultRoute2, buf, &v119);

          v52 = *buf;
          v51 = v119;
        }

        v55 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v52];
        [v114 setOverallStayMean:v55];

        v56 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v51];
        [v114 setOverallStayVar:v56];

        [(Score *)v17 epochs];
        if (v57 >= 10.0)
        {
          [(Score *)v17 overallStay];
          v58 = v115;
          if (v59 >= 90.0)
          {
            [(Score *)v17 overallStay];
            if (v60 == 0.0)
            {
              v66 = 0.0;
            }

            else
            {
              [(Score *)v17 overallStay];
              v62 = v61;
              [(Score *)v17 handicapStay];
              v64 = (v62 - v63) * 100.0;
              [(Score *)v17 overallStay];
              v66 = llround(v64 / v65);
            }

            [(Score *)v17 setUpPct:v66];
            [(Score *)v17 upPct];
            v68 = v67;
            if (type == 2)
            {
              [(Score *)v17 lqmTransitionCount];
              v13 = v13 + v69;
            }

            v14 = v14 + v68;
            identifier = [v114 identifier];
            [v110 setObject:v17 forKeyedSubscript:identifier];
          }
        }

        else
        {
          v58 = v115;
        }
      }

      v113 = [obj countByEnumeratingWithState:&v124 objects:v138 count:16];
    }

    while (v113);
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  v71 = v110;
  if ([v110 count] < 3)
  {
    v96 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v97 = v96;
      v98 = [v110 count];
      *buf = 134217984;
      *&buf[4] = v98;
      _os_log_impl(&dword_23255B000, v97, OS_LOG_TYPE_DEBUG, "scoring: known networks need more significant entries than: %lu", buf, 0xCu);
    }

    v99 = 0;
    v100 = 1;
    codeCopy2 = code;
    timeCopy2 = time;
    goto LABEL_66;
  }

  v72 = v14 / [v110 count];
  v73 = [v110 count];
  v74 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218243;
    *&buf[4] = v72;
    v129 = 2113;
    v130 = v110;
    _os_log_impl(&dword_23255B000, v74, OS_LOG_TYPE_DEBUG, "scoring: known networks up mean: %f, all roll: %{private}@", buf, 0x16u);
  }

  v75 = v73;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __70__NetworkAnalyticsEngine__scoringDuty_forType_withRetCode_oldestTime___block_invoke;
  v117[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v118 = type == 2;
  v76 = [v110 keysSortedByValueUsingComparator:v117];
  v77 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v76;
    _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEBUG, "scoring: known networks uptime roll: %{private}@", buf, 0xCu);
  }

  v78 = v13 / v75;
  v79 = [v76 count];
  v80 = ([v76 count] & 1) + (v79 >> 1);
  v81 = [v76 count] >> 1;
  while (1)
  {
    v82 = [v76 objectAtIndexedSubscript:v80];
    v83 = [v110 objectForKeyedSubscript:v82];
    [v83 upPct];
    if (type == 2)
    {
      break;
    }

    if (v84 <= v72)
    {
      goto LABEL_62;
    }

    v94 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v87 = v94;
      [v83 upPct];
      *buf = 138478339;
      *&buf[4] = v82;
      v129 = 2048;
      v130 = v95;
      v131 = 2048;
      v132 = v72;
      v91 = v87;
      v92 = "scoring: (WiFi) suppress %{private}@ from reliab roll, after median, upPct = %f (mean = %f)";
      v93 = 32;
      goto LABEL_56;
    }

LABEL_57:
    ++v80;
    --v81;

    if (!v81)
    {
      goto LABEL_63;
    }
  }

  if (v84 > v72 || ([v83 lqmTransitionCount], v85 <= v78))
  {
    v86 = scoringLogHandle;
    if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v87 = v86;
      [v83 upPct];
      v89 = v88;
      [v83 lqmTransitionCount];
      *buf = 138478851;
      *&buf[4] = v82;
      v129 = 2048;
      v130 = v89;
      v131 = 2048;
      v132 = v72;
      v133 = 2048;
      v134 = v90;
      v135 = 2048;
      v136 = v78;
      v91 = v87;
      v92 = "scoring: (cell) suppress %{private}@ from reliab roll, after median, upPct = %f (mean = %f), LQM trans = %f (mean = %f)";
      v93 = 52;
LABEL_56:
      _os_log_impl(&dword_23255B000, v91, OS_LOG_TYPE_DEBUG, v92, buf, v93);

      goto LABEL_57;
    }

    goto LABEL_57;
  }

LABEL_62:

LABEL_63:
  v103 = objc_alloc(MEMORY[0x277CBEB98]);
  v104 = [v76 subarrayWithRange:{v80, v81}];
  v99 = [v103 initWithArray:v104];

  v105 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    *&buf[4] = v99;
    _os_log_impl(&dword_23255B000, v105, OS_LOG_TYPE_DEBUG, "scoring: known networks skim bottom: %{private}@", buf, 0xCu);
  }

  v100 = 0;
  codeCopy2 = code;
  timeCopy2 = time;
  v71 = v110;
LABEL_66:
  [v71 removeAllObjects];

  if (codeCopy2)
  {
    *codeCopy2 = v100;
  }

  if (timeCopy2)
  {
    v106 = v11;
    *timeCopy2 = v11;
  }

  return v99;
}

uint64_t __70__NetworkAnalyticsEngine__scoringDuty_forType_withRetCode_oldestTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  [v7 upPct];
  v10 = v9;
  [v8 upPct];
  if (v10 == v11)
  {
    [v7 overallStay];
    v13 = v12;
    [v8 overallStay];
    v15 = -1;
    if (v13 <= v14)
    {
      v15 = 1;
    }

    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (*(a1 + 32) == 1 && v13 == v14)
    {
      [v7 lqmTransitionCount];
      v18 = v17;
      [v8 lqmTransitionCount];
      v20 = -1;
      if (v18 > v19)
      {
        v20 = 1;
      }

      if (v18 == v19)
      {
        v16 = 0;
      }

      else
      {
        v16 = v20;
      }
    }
  }

  else
  {
    [v7 upPct];
    v22 = v21;
    [v8 upPct];
    if (v22 <= v23)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }
  }

  return v16;
}

- (void)_delayedKnownGoodNetworkAlert
{
  ++notif_reqs;
  v3 = dispatch_time(0, 20000000000);
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NetworkAnalyticsEngine__delayedKnownGoodNetworkAlert__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_after(v3, queue, block);
}

void __55__NetworkAnalyticsEngine__delayedKnownGoodNetworkAlert__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) _epochForInterfaceType:3];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 156);
    v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
    if (v7 != 1)
    {
      v1 = [v4 durable];
      if (![v1 isKnownGood])
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 32);
    }

    if (*(v6 + 184))
    {
      [v3 timeIntervalSinceDate:?];
      if (v10 <= 300.0)
      {
LABEL_12:
        if (v7 == 1)
        {
LABEL_17:
          v13 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(*(a1 + 32) + 156);
            v15 = v13;
            v16 = [v5 durable];
            v17 = [v16 isKnownGood];
            v18 = v8;
            v19 = v17;
            [v3 timeIntervalSinceDate:*(*(a1 + 32) + v18[362])];
            v21 = v20;
            v22 = [v5 fatal];
            v23 = [v22 isRunning];
            v24 = [v5 lowq];
            v27[0] = 67110400;
            v27[1] = v14;
            v28 = 1024;
            v29 = v19;
            v30 = 2048;
            v31 = v21;
            v32 = 1024;
            v33 = v23;
            v34 = 1024;
            v35 = [v24 isRunning];
            v36 = 1024;
            v37 = [v5 hasTypicalShortStay];
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "KnownGood evaluation failed, notification withheld (codes: %d, %d, %f, %d, %d, %d)", v27, 0x2Au);
          }

          goto LABEL_19;
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    v11 = [v5 fatal];
    if ([v11 isRunning])
    {

      goto LABEL_12;
    }

    v12 = [v5 lowq];
    if ([v12 isRunning])
    {

      v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
      if (v7 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v25 = [v5 hasTypicalShortStay];

    if (v7 != 1)
    {
    }

    v8 = &OBJC_IVAR___CellFallbackHandler_cellFallbackInUse;
    if (v25)
    {
      goto LABEL_17;
    }

    v26 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "KnownGood evaluation passed and it's called a KnownGood; symptom posted", v27, 2u);
    }

    internal_symptom_create();
    internal_symptom_send();
    ++notif_posted;
    [v5 setKnownGoodNotified:1];
    objc_storeStrong((*(a1 + 32) + 184), v3);
  }

  else
  {
    v9 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "no current network to evaluate for KnownGood", v27, 2u);
    }
  }

LABEL_19:
}

- (void)_removeOldRouteRecords
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  _createNetworkAttachmentIdentifierExclusionList = [(NetworkAnalyticsEngine *)self _createNetworkAttachmentIdentifierExclusionList];
  if ([NetworkEpoch pruneDataOlderThan:v6 exceptFor:_createNetworkAttachmentIdentifierExclusionList inWorkspace:self->super.workspace])
  {
    ++prune_counts;
    date = [MEMORY[0x277CBEAA8] date];
    v5 = prune_last;
    prune_last = date;
  }
}

- (BOOL)handlesEntity:(id)entity
{
  entityCopy = entity;
  entityName = [MEMORY[0x277D6B5A8] entityName];
  if ([entityCopy isEqualToString:entityName])
  {
    v5 = 1;
  }

  else
  {
    entityName2 = [MEMORY[0x277D6B5A0] entityName];
    v5 = [entityCopy isEqualToString:entityName2];
  }

  return v5;
}

- (void)_refreshRouteMetricsWithCallbackOnQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v8 = blockCopy;
  v9 = ++_refreshRouteMetricsWithCallbackOnQueue_completionBlock__debugCount;
  if (queueCopy && blockCopy)
  {
    v10 = _Block_copy(self->routeMetricsRefreshCompletionBlock);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke;
    v17 = &unk_27898C468;
    v19 = v10;
    v18 = queueCopy;
    v21 = v9;
    v20 = v8;
    v11 = v10;
    v12 = _Block_copy(&v14);
    routeMetricsRefreshCompletionBlock = self->routeMetricsRefreshCompletionBlock;
    self->routeMetricsRefreshCompletionBlock = v12;
  }

  [(NetworkAnalyticsEngine *)self _refreshRouteMetrics:v14];
}

void __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke_2;
  block[3] = &unk_27898DCF0;
  v4 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = v4;
  v6 = *(a1 + 32);
  dispatch_async(v3, block);
}

uint64_t __82__NetworkAnalyticsEngine__refreshRouteMetricsWithCallbackOnQueue_completionBlock___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = v2;
    v6 = _Block_copy(v3);
    v7 = a1[4];
    v9 = 134218496;
    v10 = v4;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Invoking block #%llu (%p) on queue %p", &v9, 0x20u);
  }

  return (*(a1[5] + 16))();
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions service:(id)service connection:(id)connection reply:(id)self0
{
  v79 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  serviceCopy = service;
  connectionCopy = connection;
  replyCopy = reply;
  processIdentifier = [connectionCopy processIdentifier];
  v23 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = pid_to_process_name(processIdentifier);
    v26 = v25;
    *buf = 138413570;
    v27 = @"<unknown>";
    if (v25)
    {
      v27 = v25;
    }

    v68 = v27;
    v69 = 2048;
    v70 = processIdentifier;
    v71 = 2112;
    v72 = entityCopy;
    v73 = 2112;
    v74 = predCopy;
    v75 = 2112;
    v76 = sortCopy;
    v77 = 2112;
    v78 = actionsCopy;
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: NAE perform query for %@ (pid %lld) on %@ predicate %@ sort %@ actions %@", buf, 0x3Eu);
  }

  allValues = [actionsCopy allValues];
  if ([allValues containsObject:@"sweepUsage"] && objc_msgSend(allValues, "containsObject:", @"historical"))
  {
    v29 = pid_to_process_name([connectionCopy processIdentifier]);
    if ([(__CFString *)v29 length]&& ![(NetworkAnalyticsEngine *)self processIsAuthorizedForHistoricalSweeps:v29])
    {
      v30 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = v29;
        v33 = v31;
        processIdentifier2 = [connectionCopy processIdentifier];
        *buf = 138412546;
        v68 = v32;
        v69 = 1024;
        LODWORD(v70) = processIdentifier2;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "Historical Sweep request from %@ (%d) is not authorized.", buf, 0x12u);

        v29 = v32;
      }

      predicateFormat = [predCopy predicateFormat];
      v36 = objc_alloc_init(MEMORY[0x277D6AFC8]);
      if (v36)
      {
        v53 = v36;
        v52 = [v36 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B228] subType:@"Unauthorized Historical Sweep" subtypeContext:entityCopy detectedProcess:v29 triggerThresholdValues:0];
        v65[0] = predicateFormat;
        v37 = *MEMORY[0x277D6B148];
        v64[0] = @"predicate";
        v64[1] = v37;
        v51 = v29;
        v38 = MEMORY[0x277CCABB0];
        date = [MEMORY[0x277CBEAA8] date];
        [date timeIntervalSince1970];
        v47 = [v38 numberWithDouble:?];
        v65[1] = v47;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
        v66 = v39;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
        v40 = v50 = predicateFormat;
        [v53 snapshotWithSignature:v52 duration:v40 events:0 payload:0 actions:&__block_literal_global_814 reply:0.0];

        predicateFormat = v50;
        v29 = v51;

        v36 = v53;
      }
    }
  }

  if (actionsCopy && ([actionsCopy objectForKey:@"refreshUsage"], v41 = objc_claimAutoreleasedReturnValue(), v41, v41) && objc_msgSend(serviceCopy, "assertEntitlement:entitlement:orWaiveOnIntent:", connectionCopy, 2, actionsCopy))
  {
    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: refresh authorized", buf, 2u);
    }

    v43 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      processIdentifier3 = [connectionCopy processIdentifier];
      *buf = 134217984;
      v68 = processIdentifier3;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: in refresh codepath on behalf of pid %lld", buf, 0xCu);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __113__NetworkAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke_815;
    v56[3] = &unk_27898C938;
    v56[4] = self;
    v57 = entityCopy;
    v46 = propertiesCopy;
    v58 = propertiesCopy;
    v59 = predCopy;
    v60 = sortCopy;
    v61 = actionsCopy;
    v62 = serviceCopy;
    v63 = replyCopy;
    [(NetworkAnalyticsEngine *)self _refreshRouteMetricsWithCallbackOnQueue:queue completionBlock:v56];
  }

  else
  {
    v46 = propertiesCopy;
    [(AnalyticsEngineCore *)self performQueryOnEntityCore:entityCopy fetchRequestProperties:propertiesCopy pred:predCopy sort:sortCopy actions:actionsCopy service:serviceCopy reply:replyCopy];
  }
}

void __113__NetworkAnalyticsEngine_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_service_connection_reply___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: Unauthorized Sweep Snapshot response: %@", &v4, 0xCu);
  }
}

- (BOOL)_performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply
{
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke;
  block[3] = &unk_27898DD18;
  onCopy = on;
  block[4] = self;
  v11 = replyCopy;
  v8 = replyCopy;
  dispatch_async(queue, block);

  return 1;
}

void __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v11 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics _performNetAttachmentQueryOn %ld", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke_819;
  v7[3] = &unk_27898DD18;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = v6;
  [v4 _refreshRouteMetricsWithCallbackOnQueue:v5 completionBlock:v7];
}

void __61__NetworkAnalyticsEngine__performNetAttachmentQueryOn_reply___block_invoke_819(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 48)];
  v3 = v2;
  if (v2 && ([v2 partial], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 partial];
    v6 = [v5 entity];
    v7 = [v6 attributesByName];
    v8 = [v7 allKeys];

    v9 = [v3 partial];
    v10 = [v9 dictionaryWithValuesForKeys:v8];

    v11 = *(a1 + 40);
    v14[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    (*(v11 + 16))(v11, v12);
  }

  else
  {
    v13 = *(a1 + 40);
    v8 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v13 + 16))(v13, v8);
  }
}

- (int)_combinedDNSCountForEpoch:(id)epoch
{
  if (!epoch)
  {
    return -1;
  }

  epochCopy = epoch;
  hasDNS = [epochCopy hasDNS];
  v5 = [hasDNS count];
  impDNS = [epochCopy impDNS];

  v7 = v5 | ([impDNS count] << 16);
  return v7;
}

- (void)_updateCombinedDNSCounts
{
  v3 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  self->combinedWifiDNSCounts = [(NetworkAnalyticsEngine *)self _combinedDNSCountForEpoch:v3];

  v4 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];
  self->combinedCellDNSCounts = [(NetworkAnalyticsEngine *)self _combinedDNSCountForEpoch:v4];
}

- (BOOL)_getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted
{
  v14 = *MEMORY[0x277D85DE8];
  if (on == 3)
  {
    v8 = &OBJC_IVAR___NetworkAnalyticsEngine_combinedWifiDNSCounts;
  }

  else
  {
    onCopy = on;
    if (on != 5)
    {
      v12 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13[0] = 67109120;
        v13[1] = onCopy;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Can't get DNS counts for interface type %u", v13, 8u);
      }

      goto LABEL_12;
    }

    v8 = &OBJC_IVAR___NetworkAnalyticsEngine_combinedCellDNSCounts;
  }

  v9 = *(&self->super.super.isa + *v8);
  if ((v9 & 0x80000000) == 0)
  {
    if (total)
    {
      *total = v9;
    }

    if (!impacted)
    {
      return 1;
    }

    v10 = HIWORD(v9);
    result = 1;
    goto LABEL_16;
  }

LABEL_12:
  if (total)
  {
    *total = 0;
  }

  result = 0;
  if (impacted)
  {
    v10 = 0;
LABEL_16:
    *impacted = v10;
  }

  return result;
}

- (void)_hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke;
  block[3] = &unk_27898DD68;
  anyCopy = any;
  onCopy = on;
  builtinCopy = builtin;
  block[4] = self;
  v20 = queueCopy;
  v21 = replyCopy;
  iCopy = i;
  v17 = replyCopy;
  v18 = queueCopy;
  dispatch_async(queue, block);
}

void __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [NetworkStateRelay getStateRelayFor:*(a1 + 65)];
    v3 = [v2 active];
  }

  else
  {
    if (*(a1 + 66) != 1)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 65)];
    v2 = v4;
    if (!v4)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = [v4 matchesLOI:*(a1 + 56)];
  }

  v5 = v3;
LABEL_7:

LABEL_9:
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__NetworkAnalyticsEngine__hasNetworkAttachmentOn_isAny_isBuiltin_scopedToLOI_hasCustomSignature_queue_reply___block_invoke_2;
  v7[3] = &unk_27898DD40;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v6, v7);
}

- (void)_layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke;
  v13[3] = &unk_27898B6A0;
  onCopy = on;
  v13[4] = self;
  v14 = queueCopy;
  v15 = replyCopy;
  v11 = replyCopy;
  v12 = queueCopy;
  dispatch_async(queue, v13);
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _epochForInterfaceType:*(a1 + 56)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 interfaceName];
    v5 = if_nametoindex([v4 UTF8String]);

    v6 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_2;
    block[3] = &unk_27898DDB8;
    v7 = &v13;
    v8 = v6;
    v13 = v8;
    v16 = v5;
    v17 = *(a1 + 56);
    v14 = v3;
    v15 = *(a1 + 48);
    dispatch_async(v8, block);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_823;
    v10[3] = &unk_27898C670;
    v7 = &v11;
    v9 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(v9, v10);
  }
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = NStatManagerCreate();
  if (v16[3])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    InterfaceSource = NStatManagerCreateInterfaceSource();
    v2 = netepochsLogHandle;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 60);
      v4 = [*(a1 + 40) interfaceName];
      v5 = *(a1 + 56);
      v6 = v12[3];
      *buf = 134218754;
      v20 = v3;
      v21 = 2112;
      v22 = v4;
      v23 = 1024;
      v24 = v5;
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Looking for L2 metrics for type: %ld, ifName: %@, ifIndex: %d, src: %p", buf, 0x26u);
    }

    if (v12[3])
    {
      v10 = *(a1 + 48);
      NStatManagerQueryAllSourcesUpdate();
      v7 = v10;
    }

    else
    {
      NStatManagerDestroy();
      v9 = v16[3];
      if (v9)
      {
        CFRelease(v9);
        v16[3] = 0;
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v15, 8);
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_3()
{
  v0 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEFAULT, "new interface source added", v1, 2u);
  }
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_822(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = NStatSourceCopyProperties();
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 56);
    v8 = 134218498;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Fetching L2 metrics for type: %ld, ifIndex: %d, Metrics: %@", &v8, 0x1Cu);
  }

  (*(*(a1 + 32) + 16))();
  NStatSourceRemove();
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  NStatManagerDestroy();
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __55__NetworkAnalyticsEngine__layer2MetricsOn_queue_reply___block_invoke_823(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply
{
  infoCopy = info;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke;
  block[3] = &unk_27898DDE0;
  onCopy = on;
  block[4] = self;
  v18 = infoCopy;
  v19 = queueCopy;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = queueCopy;
  v16 = infoCopy;
  dispatch_async(queue, block);
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (cellEstTransferTimeSupportedStatus[0] == 1 && *(a1 + 64) == 5)
  {
    if (![*(a1 + 32) _getCellInternetStatus])
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_3;
      v34[3] = &unk_27898C670;
      v29 = *(a1 + 48);
      v35 = *(a1 + 56);
      dispatch_async(v29, v34);
      v5 = v35;
      goto LABEL_12;
    }

    v2 = [*(a1 + 40) objectForKey:@"kPayloadInfoULKB"];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = &unk_2847EFAE8;
    }

    v5 = v4;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 longLongValue] < 0 || objc_msgSend(v5, "longLongValue") > 0xFFFFFFFFLL)
    {
      v8 = 0;
      v6 = 0;
      v7 = 34;
    }

    else
    {
      v6 = [v5 unsignedIntValue];
      v7 = 0;
      v8 = 1;
    }

    v10 = [*(a1 + 40) objectForKey:@"kPayloadInfoDLKB"];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_2847EFAE8;
    }

    v13 = v12;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 longLongValue] < 0 || objc_msgSend(v13, "longLongValue") > 0xFFFFFFFFLL)
    {
      v7 = 34;
    }

    else
    {
      v14 = [v13 unsignedIntValue];
      if (v8)
      {
        v15 = v14;
        if ([*(a1 + 32) _newCellTransferTimeEstimateRequired])
        {
          *bytes = 2;
          v41 = v6;
          v42 = v15;
          v16 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 12);
          v17 = _CTServerConnectionSendEnhancedLinkQualityTrafficInfo();
          v18 = v17;
          v19 = HIDWORD(v17);
          if (HIDWORD(v17))
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == 0;
          }

          v21 = v20;
          if (v16)
          {
            CFRelease(v16);
          }

          if (!v21)
          {
            v30 = netepochsLogHandle;
            if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v47 = v18;
              v48 = 1024;
              v49 = v19;
              _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "eLQM: Failed to send payload size info to Baseband, error = (%d, %d)", buf, 0xEu);
            }

            v38[0] = MEMORY[0x277D85DD0];
            v38[1] = 3221225472;
            v38[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_824;
            v38[3] = &unk_27898C670;
            v31 = *(a1 + 48);
            v39 = *(a1 + 56);
            dispatch_async(v31, v38);
            v27 = v39;
            goto LABEL_36;
          }

          v22 = [MEMORY[0x277CBEAA8] date];
          v23 = cellEstTransferTimeRequestTimeStamp;
          cellEstTransferTimeRequestTimeStamp = v22;

          v24 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v47 = cellRrcState;
            v48 = 1024;
            v49 = v6;
            v50 = 1024;
            v51 = v15;
            _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "eLQM: Payload info sent to Baseband for transfer time estimates, RRC = %d, UL/DL = (%u, %u) KB", buf, 0x14u);
          }
        }

        v25 = *(a1 + 32);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2_825;
        v36[3] = &unk_27898C670;
        v26 = *(a1 + 48);
        v37 = *(a1 + 56);
        [v25 _awaitEstimatedDataTransferTimeWithCallbackOnQueue:v26 completionBlock:v36];
        v27 = v37;
LABEL_36:

        goto LABEL_12;
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2;
    block[3] = &unk_27898C440;
    v45 = v7;
    v28 = *(a1 + 48);
    v44 = *(a1 + 56);
    dispatch_async(v28, block);
    v27 = v44;
    goto LABEL_36;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_4;
  v32[3] = &unk_27898C670;
  v9 = *(a1 + 48);
  v33 = *(a1 + 56);
  dispatch_async(v9, v32);
  v5 = v33;
LABEL_12:
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*(a1 + 40) userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_824(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:4 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_2_825(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"kEstTransferTimeULSecs";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeULSecs];
  v7[0] = v2;
  v6[1] = @"kEstTransferTimeDLSecs";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeDLSecs];
  v7[1] = v3;
  v6[2] = @"kEstTransferTimeConfidence";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:cellEstTransferTimeConfidence];
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __78__NetworkAnalyticsEngine__estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply
{
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke;
  block[3] = &unk_27898DE30;
  forCopy = for;
  block[4] = self;
  v16 = queueCopy;
  v17 = replyCopy;
  iCopy = i;
  v13 = replyCopy;
  v14 = queueCopy;
  dispatch_async(queue, block);
}

void __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke(uint64_t a1)
{
  v182[2] = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = v6 == 3 || v6 == 5;
  v133 = v3;
  v130 = a1;
  v131 = v2;
  v129 = v4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    goto LABEL_51;
  }

  v8 = [objc_alloc(MEMORY[0x277D6B538]) initWithWorkspace:*(*(a1 + 32) + 8) withCache:0];
  v9 = 1;
  if (*(a1 + 64) != 3)
  {
    v9 = 2;
  }

  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"kind == %d", v9];
  v11 = *(a1 + 56);
  if (!v11)
  {
    v12 = 260;
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    v12 = 261;
LABEL_12:
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"attrs == %d", v12];
    v15 = MEMORY[0x277CCA920];
    v126 = v14;
    v127 = v10;
    v182[0] = v10;
    v182[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    v128 = v8;
    v125 = v17;
    v18 = [v8 fetchEntitiesFreeForm:v17 sortDesc:0];
    v165 = 0;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v161 objects:v177 count:16];
    v132 = v18;
    if (v19)
    {
      v20 = v19;
      v135 = *v162;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v162 != v135)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v161 + 1) + 8 * i);
          v23 = [v22 identifier];

          if (v23)
          {
            v24 = [v22 identifier];
            v25 = [v24 UTF8String];

            if (v25 && *v25)
            {
              v26 = 0;
              v180 = 0u;
              v181 = 0u;
              *v178 = 0u;
              v179 = 0u;
              while (1)
              {
                v27 = v25[v26];
                v178[v26] = v27;
                if (!v27)
                {
                  break;
                }

                if (++v26 == 63)
                {
                  HIBYTE(v181) = 0;
                  break;
                }
              }

              if ([NetworkEpoch parsePrimaryKeyStr:v178 majorIDLengthInBytes:&v165 + 4 minorIDLengthInBytes:&v165]&& SHIDWORD(v165) <= 63)
              {
                v178[SHIDWORD(v165)] = 0;
                v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v178];
                v29 = [v3 objectForKeyedSubscript:v28];
                if (!v29)
                {
                  v29 = objc_alloc_init(Score);
                  [v3 setObject:v29 forKeyedSubscript:v28];
                }

                v159 = 0u;
                v160 = 0u;
                v157 = 0u;
                v158 = 0u;
                v30 = [v22 hasDefaultRoute];
                v31 = [v30 countByEnumeratingWithState:&v157 objects:v170 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v158;
                  do
                  {
                    for (j = 0; j != v32; ++j)
                    {
                      if (*v158 != v33)
                      {
                        objc_enumerationMutation(v30);
                      }

                      v35 = *(*(&v157 + 1) + 8 * j);
                      [v35 overallStay];
                      v37 = v36;
                      [(Score *)v29 overallStay];
                      [(Score *)v29 setOverallStay:v37 + v38];
                      [v35 epochs];
                      v40 = v39;
                      [(Score *)v29 epochs];
                      [(Score *)v29 setEpochs:v40 + v41];
                      [v35 connSuccesses];
                      v43 = v42;
                      [(Score *)v29 connSuccesses];
                      [(Score *)v29 setConnSuccesses:v43 + v44];
                    }

                    v32 = [v30 countByEnumeratingWithState:&v157 objects:v170 count:16];
                  }

                  while (v32);
                }

                v18 = v132;
                v3 = v133;
              }

              else
              {
                v54 = rnfLogHandle;
                if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
                {
                  v55 = v54;
                  v56 = [v22 identifier];
                  *buf = 138477827;
                  v172 = v56;
                  _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_ERROR, "NOI Scoped query, failed to parse: %{private}@", buf, 0xCu);
                }
              }
            }

            else
            {
              v45 = [v22 identifier];
              v46 = [v45 fastestEncoding];

              v47 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_FAULT))
              {
                v48 = v47;
                v49 = [v22 identifier];
                v50 = [MEMORY[0x277CCACA8] localizedNameOfStringEncoding:v46];
                v51 = v50;
                *buf = 138478339;
                v52 = "<empty>";
                if (!v25)
                {
                  v52 = "NULL";
                }

                v172 = v49;
                v173 = 2112;
                v174 = v50;
                v175 = 2080;
                v176 = v52;
                _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_FAULT, "Non-nil identifier %{private}@ with encoding %@ has %s UTF-8 representation", buf, 0x20u);
              }
            }
          }

          else
          {
            v53 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138477827;
              v172 = v22;
              _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "NetworkAttachment %{private}@ has nil identifier, skipping", buf, 0xCu);
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v161 objects:v177 count:16];
      }

      while (v20);
    }

    v57 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v172 = v3;
      _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_INFO, "NOI Scoped query: %@", buf, 0xCu);
    }

    v13 = 0;
    a1 = v130;
    v2 = v131;
    v8 = v128;
    v5 = v129;
    v10 = v127;
    goto LABEL_50;
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
LABEL_50:

LABEL_51:
  v58 = [v3 count];
  if (v58 < 2)
  {
    if (v58 == 1)
    {
      v79 = [v3 mutableCopy];

      v80 = [v79 allKeys];
      v81 = [v80 objectAtIndexedSubscript:0];

      [v79 setObject:&unk_2847EFE20 forKeyedSubscript:v81];
      v5 = v79;
    }
  }

  else
  {
    v134 = v13;
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v59 = v3;
    v60 = [v59 countByEnumeratingWithState:&v153 objects:v169 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v136 = *v154;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v154 != v136)
          {
            objc_enumerationMutation(v59);
          }

          v69 = [v59 objectForKeyedSubscript:*(*(&v153 + 1) + 8 * k)];
          [v69 epochs];
          if (v70 <= v67)
          {
            v70 = v67;
          }

          v67 = v70;
          [v69 epochs];
          v72 = v64;
          if (v71 <= v64)
          {
            v72 = v71;
          }

          if (v64)
          {
            v71 = v72;
          }

          v64 = v71;
          [v69 overallStay];
          if (v73 <= v66)
          {
            v73 = v66;
          }

          v66 = v73;
          [v69 overallStay];
          v75 = v63;
          if (v74 <= v63)
          {
            v75 = v74;
          }

          if (v63)
          {
            v74 = v75;
          }

          v63 = v74;
          [v69 connSuccesses];
          if (v76 <= v65)
          {
            v76 = v65;
          }

          v65 = v76;
          [v69 connSuccesses];
          v78 = v62;
          if (v77 <= v62)
          {
            v78 = v77;
          }

          if (v62)
          {
            v77 = v78;
          }

          v62 = v77;
        }

        v61 = [v59 countByEnumeratingWithState:&v153 objects:v169 count:16];
      }

      while (v61);
    }

    else
    {
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
    }

    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v82 = v59;
    v83 = [v82 countByEnumeratingWithState:&v149 objects:v168 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = (v66 - v63);
      v86 = (v67 - v64);
      v87 = *v150;
      do
      {
        for (m = 0; m != v84; ++m)
        {
          if (*v150 != v87)
          {
            objc_enumerationMutation(v82);
          }

          v89 = [v82 objectForKeyedSubscript:*(*(&v149 + 1) + 8 * m)];
          [v89 overallStay];
          [v89 setOverallStay:(v90 - v63) / v85];
          [v89 epochs];
          [v89 setEpochs:(v91 - v64) / v86];
          [v89 connSuccesses];
          [v89 setConnSuccesses:(v92 - v62) / (v65 - v62)];
        }

        v84 = [v82 countByEnumeratingWithState:&v149 objects:v168 count:16];
      }

      while (v84);
    }

    v93 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v178 = 138412290;
      *&v178[4] = v82;
      _os_log_impl(&dword_23255B000, v93, OS_LOG_TYPE_DEBUG, "NOI Scoped query, normalized: %@", v178, 0xCu);
    }

    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    v145 = 0u;
    v94 = v82;
    v95 = [v94 countByEnumeratingWithState:&v145 objects:v167 count:16];
    v5 = v129;
    if (v95)
    {
      v96 = v95;
      v97 = *v146;
      v98 = 0.0;
      do
      {
        for (n = 0; n != v96; ++n)
        {
          if (*v146 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v100 = *(*(&v145 + 1) + 8 * n);
          v101 = [v94 objectForKeyedSubscript:v100];
          [v101 overallStay];
          v103 = v102 * v102;
          [v101 epochs];
          v105 = v103 + v104 * v104;
          [v101 connSuccesses];
          v107 = sqrt(v105 + v106 * v106);
          v108 = [MEMORY[0x277CCABB0] numberWithDouble:v107];
          [v129 setObject:v108 forKeyedSubscript:v100];

          v98 = v98 + v107;
        }

        v96 = [v94 countByEnumeratingWithState:&v145 objects:v167 count:16];
      }

      while (v96);
    }

    else
    {
      v98 = 0.0;
    }

    v109 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v178 = 138412290;
      *&v178[4] = v129;
      _os_log_impl(&dword_23255B000, v109, OS_LOG_TYPE_DEBUG, "NOI Scoped query, euclidean norms: %@", v178, 0xCu);
    }

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v110 = [v129 allKeys];
    v111 = [v110 countByEnumeratingWithState:&v141 objects:v166 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = *v142;
      do
      {
        for (ii = 0; ii != v112; ++ii)
        {
          if (*v142 != v113)
          {
            objc_enumerationMutation(v110);
          }

          v115 = *(*(&v141 + 1) + 8 * ii);
          v116 = [v129 objectForKeyedSubscript:v115];
          [v116 doubleValue];
          v118 = v117;

          v119 = [MEMORY[0x277CCABB0] numberWithDouble:v118 / v98];
          [v129 setObject:v119 forKeyedSubscript:v115];
        }

        v112 = [v110 countByEnumeratingWithState:&v141 objects:v166 count:16];
      }

      while (v112);
    }

    v120 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v178 = 138412290;
      *&v178[4] = v129;
      _os_log_impl(&dword_23255B000, v120, OS_LOG_TYPE_DEBUG, "NOI Scoped query, softmax: %@", v178, 0xCu);
    }

    a1 = v130;
    v2 = v131;
    v3 = v133;
    v13 = v134;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke_833;
  block[3] = &unk_27898DE08;
  v138 = v13;
  v121 = *(a1 + 40);
  v122 = *(a1 + 48);
  v139 = v5;
  v140 = v122;
  v123 = v5;
  v124 = v13;
  dispatch_async(v121, block);

  objc_autoreleasePoolPop(v2);
}

uint64_t __76__NetworkAnalyticsEngine__usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke_833(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, a1[5]);
  }
}

- (BOOL)_newCellTransferTimeEstimateRequired
{
  if (!cellEstTransferTimeRequestTimeStamp)
  {
    return 1;
  }

  [cellEstTransferTimeRequestTimeStamp timeIntervalSinceNow];
  if (v2 <= -1.0)
  {
    return 1;
  }

  v3 = netepochsLogHandle;
  v4 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v4)
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "amortise throughput estimate", v6, 2u);
    return 0;
  }

  return result;
}

- (void)_awaitEstimatedDataTransferTimeWithCallbackOnQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v7 = _Block_copy(cellEstTransferTimeCompletionBlock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke;
  aBlock[3] = &unk_27898DE58;
  v14 = queueCopy;
  v15 = v7;
  v16 = blockCopy;
  v8 = blockCopy;
  v9 = queueCopy;
  v10 = v7;
  v11 = _Block_copy(aBlock);
  v12 = cellEstTransferTimeCompletionBlock;
  cellEstTransferTimeCompletionBlock = v11;
}

void __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NetworkAnalyticsEngine__awaitEstimatedDataTransferTimeWithCallbackOnQueue_completionBlock___block_invoke_2;
  block[3] = &unk_27898C670;
  v5 = *(a1 + 48);
  dispatch_async(v3, block);
}

+ (void)hasNetworkAttachmentOn:(unsigned __int8)on isAny:(BOOL)any isBuiltin:(BOOL)builtin scopedToLOI:(int64_t)i hasCustomSignature:(id)signature queue:(id)queue reply:(id)reply
{
  if (sharedInstance_3)
  {
    [sharedInstance_3 _hasNetworkAttachmentOn:on isAny:any isBuiltin:builtin scopedToLOI:i hasCustomSignature:signature queue:queue reply:?];
  }

  else
  {
    (*(reply + 2))();
  }
}

+ (BOOL)hasAnyNetworkAttachmenOnLOI:(int64_t)i
{
  v27 = *MEMORY[0x277D85DE8];
  +[NetworkAnalyticsEngine concurrentEpochs];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 oncell])
        {
          v10 = 5;
        }

        else
        {
          v10 = 3;
        }

        v11 = [NetworkStateRelay getStateRelayFor:v10];
        if ([v11 loi] == i)
        {
          v14 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            primaryKey = [v9 primaryKey];
            *buf = 134218243;
            iCopy2 = i;
            v24 = 2113;
            v25 = primaryKey;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "LOI %ld match for %{private}@", buf, 0x16u);
          }

          v13 = 1;
          goto LABEL_18;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    iCopy2 = i;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "No match for LOI %ld", buf, 0xCu);
  }

  v13 = 0;
LABEL_18:

  return v13;
}

+ (BOOL)getDNSCountsOn:(unsigned __int8)on total:(int64_t *)total impacted:(int64_t *)impacted
{
  if ((on == 5 || on == 3) && sharedInstance_3)
  {
    return [sharedInstance_3 _getDNSCountsOn:? total:? impacted:?];
  }

  else
  {
    return 0;
  }
}

+ (BOOL)performNetAttachmentQueryOn:(unsigned __int8)on reply:(id)reply
{
  onCopy = on;
  replyCopy = reply;
  if ((onCopy == 5 || onCopy == 3) && sharedInstance_3)
  {
    v6 = [sharedInstance_3 _performNetAttachmentQueryOn:onCopy reply:replyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getNetworkExtensionStateRelay
{
  _getNetworkExtensionStateRelay = sharedInstance_3;
  if (sharedInstance_3)
  {
    _getNetworkExtensionStateRelay = [sharedInstance_3 _getNetworkExtensionStateRelay];
    v2 = vars8;
  }

  return _getNetworkExtensionStateRelay;
}

+ (int)getLoadedLQMOn:(unsigned __int8)on
{
  onCopy = on;
  *&v12[5] = *MEMORY[0x277D85DE8];
  if (on <= 7u && ((1 << on) & 0xAC) != 0)
  {
    v4 = &loadedLqm[on];
    v5 = *v4;
    v6 = v4[8];
    if (v5 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      *v12 = onCopy;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unexpected network type: %ld", &v11, 0xCu);
    }

    v7 = -2;
  }

  v8 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = 67109376;
    v12[0] = v7;
    LOWORD(v12[1]) = 2048;
    *(&v12[1] + 2) = onCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Returning loaded LQM = %d for %ld", &v11, 0x12u);
  }

  return v7;
}

+ (void)getAuditableLoadedLQMOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  v5 = sharedInstance_3;
  if (sharedInstance_3)
  {
    onCopy = on;
    replyCopy = reply;
    [v5 _getAuditableLoadedLQMOn:onCopy queue:queue reply:?];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA5B8];
    replyCopy2 = reply;
    replyCopy = [v8 errorWithDomain:v9 code:19 userInfo:0];
    replyCopy2[2](replyCopy2, 4294967294, 0);
  }
}

+ (id)concurrentEpochs
{
  _concurrentEpochs = sharedInstance_3;
  if (sharedInstance_3)
  {
    _concurrentEpochs = [sharedInstance_3 _concurrentEpochs];
    v2 = vars8;
  }

  return _concurrentEpochs;
}

+ (int64_t)mapLinkQuality:(int)quality
{
  v10 = *MEMORY[0x277D85DE8];
  if (quality > 19)
  {
    switch(quality)
    {
      case 20:
        return 20;
      case 100:
        return 100;
      case 50:
        return 50;
    }
  }

  else if (quality >= 0xFFFFFFFE || quality == 10)
  {
    return 0;
  }

  v5 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = 134218240;
    selfCopy = self;
    v8 = 2048;
    v9 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "%p unexpected link quality indicator: %ld", &v6, 0x16u);
  }

  return 0;
}

+ (int64_t)mapPowerCost:(unsigned __int8)cost
{
  v11 = *MEMORY[0x277D85DE8];
  if ((cost + 1) < 4u)
  {
    return (cost + 1);
  }

  costCopy = cost;
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 134218240;
    selfCopy = self;
    v9 = 1024;
    v10 = costCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "%p unexpected power cost indicator from baseband: %hhu, defaulting to unknown", &v7, 0x12u);
  }

  return 0;
}

+ (int64_t)mapRadioTechnology:(unsigned __int8)technology
{
  technologyCopy = technology;
  v11 = *MEMORY[0x277D85DE8];
  result = 3;
  if (technology > 127)
  {
    if ((technology - 128) >= 7)
    {
      if (technology != 135)
      {
        if (technology == 136)
        {
          return result;
        }

        goto LABEL_12;
      }

      return 2;
    }

    return 1;
  }

  if (technology <= 0xBu)
  {
    if (((1 << technology) & 0x3FA) == 0)
    {
      if (((1 << technology) & 0xC00) != 0)
      {
        return result;
      }

      if (technology != 2)
      {
        goto LABEL_12;
      }

      return 2;
    }

    return 1;
  }

LABEL_12:
  v6 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7 = 134218240;
    selfCopy = self;
    v9 = 2048;
    v10 = technologyCopy;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "%p unexpected radio technology from baseband: %ld, defaulting to unknown", &v7, 0x16u);
  }

  return 0;
}

+ (id)mapRadioTechnologyTypeToString:(unsigned __int8)string
{
  v3 = @"Unknown";
  if (string > 63)
  {
    if (string <= 130)
    {
      v4 = @"802.11a";
      v12 = @"802.11b";
      v13 = @"802.11g";
      if (string != 130)
      {
        v13 = @"Unknown";
      }

      if (string != 129)
      {
        v12 = v13;
      }

      if (string != 128)
      {
        v4 = v12;
      }

      if (string == 65)
      {
        v3 = @"GF";
      }

      if (string == 64)
      {
        v3 = @"Satellite";
      }

      v7 = string <= 127;
    }

    else
    {
      v4 = @"802.11ac";
      v8 = @"802.11ax";
      v9 = @"802.11be";
      if (string != 136)
      {
        v9 = @"Unknown";
      }

      if (string != 135)
      {
        v8 = v9;
      }

      if (string != 134)
      {
        v4 = v8;
      }

      if (string == 133)
      {
        v3 = @"802.11gTurbo";
      }

      if (string == 132)
      {
        v3 = @"802.11aTurbo";
      }

      if (string == 131)
      {
        v3 = @"802.11n";
      }

      v7 = string <= 133;
    }
  }

  else if (string <= 5)
  {
    v4 = @"GSM";
    v10 = @"UTRAN";
    v11 = @"CDMA1x";
    if (string != 5)
    {
      v11 = @"Unknown";
    }

    if (string != 4)
    {
      v10 = v11;
    }

    if (string != 3)
    {
      v4 = v10;
    }

    if (string == 2)
    {
      v3 = @"LTE";
    }

    if (string == 1)
    {
      v3 = @"Others";
    }

    v7 = string <= 2;
  }

  else
  {
    v4 = @"UMTS";
    v5 = @"NRDual";
    v6 = @"NR";
    if (string != 11)
    {
      v6 = @"Unknown";
    }

    if (string != 10)
    {
      v5 = v6;
    }

    if (string != 9)
    {
      v4 = v5;
    }

    if (string == 8)
    {
      v3 = @"TDSCDMA";
    }

    if (string == 7)
    {
      v3 = @"CDMAHybrid";
    }

    if (string == 6)
    {
      v3 = @"CDMAEVDO";
    }

    v7 = string <= 8;
  }

  if (v7)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

+ (id)mapNrFrequencyBandToString:(char)string
{
  if (string > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_27898DF90[string];
  }
}

+ (void)layer2MetricsOn:(unsigned __int8)on queue:(id)queue reply:(id)reply
{
  v5 = sharedInstance_3;
  if (sharedInstance_3)
  {
    onCopy = on;
    replyCopy = reply;
    [v5 _layer2MetricsOn:onCopy queue:queue reply:?];
  }

  else
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA5B8];
    replyCopy2 = reply;
    replyCopy = [v8 errorWithDomain:v9 code:19 userInfo:0];
    replyCopy2[2](replyCopy2, 0);
  }
}

+ (void)estimatedTransferTimeOn:(unsigned __int8)on forPayloadInfo:(id)info queue:(id)queue reply:(id)reply
{
  onCopy = on;
  replyCopy = reply;
  if (sharedInstance_3)
  {
    [sharedInstance_3 _estimatedTransferTimeOn:onCopy forPayloadInfo:info queue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__NetworkAnalyticsEngine_estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v11 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __77__NetworkAnalyticsEngine_estimatedTransferTimeOn_forPayloadInfo_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

+ (void)usageToLOICorrelationFor:(unsigned __int8)for scopedToLOI:(int64_t)i queue:(id)queue reply:(id)reply
{
  forCopy = for;
  replyCopy = reply;
  if (sharedInstance_3)
  {
    [sharedInstance_3 _usageToLOICorrelationFor:forCopy scopedToLOI:i queue:queue reply:replyCopy];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__NetworkAnalyticsEngine_usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke;
    block[3] = &unk_27898C670;
    v11 = replyCopy;
    dispatch_async(queue, block);
  }
}

void __75__NetworkAnalyticsEngine_usageToLOICorrelationFor_scopedToLOI_queue_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)_sendTrafficInfoFlags:(unsigned int)flags changeFlags:(unsigned int)changeFlags foreground:(BOOL)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dword_2814D2FD4 = flags;
  dword_2814D2FD8 = changeFlags;
  dword_2814D2FDC = foregroundCopy;
  objc_sync_exit(selfCopy);

  if (cellTrafficClassState == 1)
  {
    v9 = sharedInstance_3;

    [v9 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayDataStallState:(unsigned int)state dnsFailureState:(unsigned int)failureState
{
  if (cellDataStallState == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    LODWORD(qword_2814D2FE0) = state;
    dword_2814D2FE8 = failureState;
    objc_sync_exit(selfCopy);

    v8 = sharedInstance_3;

    [v8 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayRebufferState:(unsigned int)state
{
  if (cellDataStallState == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    HIDWORD(qword_2814D2FE0) = state;
    objc_sync_exit(selfCopy);

    v6 = sharedInstance_3;

    [v6 _sendTrafficClassAndExtendedReportToBaseband];
  }
}

- (void)_relayCellThroughputAdvice:(unsigned int)advice
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 67109120;
    HIDWORD(v9) = advice;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "_relayCellThroughputAdvice called with 0x%x", &v9, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentThroughputFlags = currentThroughputFlags & 0xFFFFFFFC | advice & 3;
  tcsThroughputAdviceSet = 1;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "_relayCellThroughputAdvice skip notification, currently disabled";
LABEL_10:
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 2u);
    goto LABEL_11;
  }

  if (tcsWiFiViabilitySet != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "_relayCellThroughputAdvice skip notification, waiting on tcsWiFiViabilitySet";
    goto LABEL_10;
  }

  dword_2814D2FF8 = currentThroughputFlags;
  dword_2814D2FD8 = 0;
  [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
LABEL_11:
  [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:3 forInterface:2 fromDict:0, v9, v10];
}

+ (void)relayCellThroughputAdvice:(unsigned int)advice
{
  v3 = *&advice;
  v8 = *MEMORY[0x277D85DE8];
  v4 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = sharedInstance_3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NAE relayCellThroughputAdvice: called with sharedInstance %p", &v6, 0xCu);
  }

  if (sharedInstance_3)
  {
    [sharedInstance_3 _relayCellThroughputAdvice:v3];
  }

  else
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "relayCellThroughputAdvice: sharedInstance not available", &v6, 2u);
    }
  }
}

- (void)_relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset
{
  resetCopy = reset;
  v22 = *MEMORY[0x277D85DE8];
  v11 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109888;
    v15[1] = status;
    v16 = 2048;
    throughputCopy = throughput;
    v18 = 2048;
    txThroughputCopy = txThroughput;
    v20 = 1024;
    v21 = resetCopy;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "_relayAudioVideoStatus:rxThroughputKbps:txThroughputKbps: called with OP %u, RX %.4f, TX %.4f, reset %d", v15, 0x22u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  dword_2814D2FEC = (throughput * 1000.0) & 0xFFFFFF | (status << 24);
  dword_2814D2FD8 = 0;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState == 1)
  {
    [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
  }

  else
  {
    v13 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "_relayAudioVideoRXThroughputKbps:TXThroughputKbps: skip notification, currently disabled", v15, 2u);
    }
  }

  if (resetCopy)
  {
    v14 = selfCopy;
    objc_sync_enter(v14);
    dword_2814D2FEC = 0;
    objc_sync_exit(v14);
  }

  [(NetworkAnalyticsEngine *)selfCopy _createJournalRecordOfType:3 forInterface:2 fromDict:0];
}

+ (void)relayAudioVideoStatus:(unsigned int)status rxThroughput:(double)throughput txThroughput:(double)txThroughput reset:(BOOL)reset
{
  resetCopy = reset;
  v9 = *&status;
  v14 = *MEMORY[0x277D85DE8];
  v10 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = sharedInstance_3;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NAE relayAudioVideoStatus:rxThroughputKbps:txThroughputKbps: called with sharedInstance %p", &v12, 0xCu);
  }

  if (sharedInstance_3)
  {
    [sharedInstance_3 _relayAudioVideoStatus:v9 rxThroughput:resetCopy txThroughput:throughput reset:txThroughput];
  }

  else
  {
    v11 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "relayAudioVideoStatus:rxThroughputKbps:txThroughputKbps: sharedInstance not available", &v12, 2u);
    }
  }
}

- (void)_relayWiFiViability:(unsigned int)viability
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = viability;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "_relayWiFiViability called with 0x%x", v9, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentThroughputFlags = currentThroughputFlags & 0xFFFFFFE3 | (4 * ((viability >> 2) & 7));
  tcsWiFiViabilitySet = 1;
  objc_sync_exit(selfCopy);

  if (cellHighThroughputState != 1)
  {
    v7 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v9[0]) = 0;
    v8 = "_relayWiFiViability skip notification, currently disabled";
    goto LABEL_10;
  }

  if (tcsThroughputAdviceSet == 1)
  {
    dword_2814D2FF8 = currentThroughputFlags;
    dword_2814D2FD8 = 0;
    [(NetworkAnalyticsEngine *)selfCopy _sendTrafficClassAndExtendedReportToBaseband];
    return;
  }

  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    v8 = "_relayWiFiViability skip notification, waiting on tcsThroughputAdviceSet";
LABEL_10:
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }
}

+ (void)relayWiFiViability:(unsigned int)viability
{
  v5 = sharedInstance_3;
  if (sharedInstance_3)
  {

    [v5 _relayWiFiViability:*&viability];
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "relayWiFiViability: sharedInstance not available", v7, 2u);
    }
  }
}

+ (id)queue
{
  queue = sharedInstance_3;
  if (sharedInstance_3)
  {
    queue = [sharedInstance_3 queue];
    v2 = vars8;
  }

  return queue;
}

+ (unsigned)_constructRxSignalExemptionsBitmapFromHint:(BOOL)hint reasons:(id)reasons
{
  hintCopy = hint;
  reasonsCopy = reasons;
  v6 = reasonsCopy;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (hintCopy && [reasonsCopy count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __77__NetworkAnalyticsEngine__constructRxSignalExemptionsBitmapFromHint_reasons___block_invoke;
    v9[3] = &unk_27898DE80;
    v9[4] = &v10;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __77__NetworkAnalyticsEngine__constructRxSignalExemptionsBitmapFromHint_reasons___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 integerValue];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 4;
      goto LABEL_12;
    }

    if (v4 == 3)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 8;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 1;
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 24) | 2;
LABEL_12:
      *(v5 + 24) = v6;
      goto LABEL_13;
    }
  }

  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = v7;
    v9 = 134217984;
    v10 = [v3 integerValue];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "Unrecognized reason from Wi-Fi: %ld", &v9, 0xCu);
  }

LABEL_13:
}

- (int)performQueryOnEntityFromCache:(id)cache pred:(id)pred altpred:(id *)altpred actions:(id)actions found:(id *)found
{
  v51 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  predCopy = pred;
  actionsCopy = actions;
  v45 = 0;
  v14 = [actionsCopy objectForKey:@"sweepUsage"];

  if (v14)
  {
LABEL_2:
    v15 = 1;
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [(AnalyticsEngineCore *)self extractQueryStringFrom:predCopy isGeneric:&v45];
      if (v23)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    v24 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: only 1-result string queries are first tried on the memory cache, giving up", buf, 2u);
    }

    goto LABEL_2;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  subpredicates = [predCopy subpredicates];
  v18 = [subpredicates countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v42;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v42 != v20)
        {
          objc_enumerationMutation(subpredicates);
        }

        v22 = [(AnalyticsEngineCore *)self extractQueryStringFrom:*(*(&v41 + 1) + 8 * i) isGeneric:&v45];
        if (v22)
        {
          v23 = v22;
          goto LABEL_19;
        }
      }

      v19 = [subpredicates countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_19:

  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_20:
  v25 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v49 = v23;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl found key: %ld", buf, 0xCu);
  }

  if (([v23 isEqualToString:@"currentWiFi"] & 1) != 0 || objc_msgSend(v23, "isEqualToString:", @"currentCell"))
  {
    if ([v23 isEqualToString:@"currentWiFi"])
    {
      v26 = 3;
    }

    else
    {
      v26 = 5;
    }

    v27 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v26];
    v28 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v27;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: cache hit in NetFlow %@", buf, 0xCu);
    }

    if (v27)
    {
      name = [cacheCopy name];
      entityName = [MEMORY[0x277D6B5A8] entityName];
      v31 = [name isEqualToString:entityName];

      if (v31)
      {
        v47 = v27;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
        *found = v15 = 0;
LABEL_43:

        goto LABEL_44;
      }

      name2 = [cacheCopy name];
      entityName2 = [MEMORY[0x277D6B5A0] entityName];
      v34 = [name2 isEqualToString:entityName2];

      if (v34)
      {
        v35 = [actionsCopy objectForKey:@"instant"];

        if (v35)
        {
          partial = [v27 partial];
          v37 = partial;
          if (partial)
          {
            v46 = partial;
            partial = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
            v15 = 0;
          }

          else
          {
            v15 = 2;
          }

          *found = partial;
        }

        else
        {
          durable = [v27 durable];
          v37 = durable;
          if (durable)
          {
            hasDefaultRoute = [durable hasDefaultRoute];
            *found = [hasDefaultRoute allObjects];

            v15 = 0;
          }

          else
          {
            *found = 0;
            v15 = 2;
          }
        }

        goto LABEL_43;
      }
    }

    *found = 0;
    v15 = 2;
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:
  v40 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v49) = v15;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: returning cache code %d", buf, 8u);
  }

LABEL_3:
  return v15;
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  v63 = *MEMORY[0x277D85DE8];
  forCopy = for;
  predCopy = pred;
  actionsCopy = actions;
  replyCopy = reply;
  v14 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: received snapshot request", buf, 2u);
  }

  v15 = [objc_alloc(MEMORY[0x277D6B540]) initWithWorkspace:self->super.workspace entityName:forCopy withCache:0];
  v16 = [v15 getDescriptionForName:forCopy];
  if (!v16)
  {
    v43 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = forCopy;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: failed request for entityName:%@", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v17 = v16;
  v59 = 0;
  v18 = [(NetworkAnalyticsEngine *)self performQueryOnEntityFromCache:v16 pred:predCopy altpred:0 actions:actionsCopy found:&v59];
  v19 = v59;
  v20 = v19;
  if (v18)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19 == 0;
  }

  if (v21 || [v19 count] != 1)
  {
    v42 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: snapshot request failed: no target", buf, 2u);
    }

LABEL_26:
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    replyCopy[2](replyCopy, 0, v41);
    goto LABEL_27;
  }

  v50 = v17;
  v51 = v15;
  v52 = replyCopy;
  v53 = predCopy;
  v54 = forCopy;
  v49 = v20;
  v48 = [v20 objectAtIndexedSubscript:0];
  v22 = [v48 copy];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v22 setUuid:uUID];
  v46 = uUID;
  v47 = v22;
  [(NSMutableDictionary *)self->snapshots setObject:v22 forKeyedSubscript:uUID];
  allValues = [(NSMutableDictionary *)self->snapshots allValues];
  v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  v45 = allValues;
  v25 = [NetworkEpoch snapshotsIn:allValues olderThan:?];
  v26 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v26;
    v28 = [v25 count];
    *buf = 134217984;
    v62 = v28;
    _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: found %lu old entries", buf, 0xCu);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v56;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v55 + 1) + 8 * i);
        snapshots = self->snapshots;
        uuid = [v34 uuid];
        [(NSMutableDictionary *)snapshots removeObjectForKey:uuid];

        v37 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          uuid2 = [v34 uuid];
          uUIDString = [uuid2 UUIDString];
          *buf = 138412290;
          v62 = uUIDString;
          _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEFAULT, "SymptomAnalytics ServiceImpl: network: remove entry for uuid: %@", buf, 0xCu);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v31);
  }

  replyCopy = v52;
  (v52)[2](v52, v46, 0);

  predCopy = v53;
  forCopy = v54;
  v41 = v51;
LABEL_27:
}

- (void)performQueryPostProcessing:(id)processing actions:(id)actions processOutcome:(id)outcome
{
  v43 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  actionsCopy = actions;
  outcomeCopy = outcome;
  v11 = [actionsCopy objectForKeyedSubscript:@"composeAdvisory"];

  if (v11)
  {
    v12 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = processingCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: compute advisory score over %@", buf, 0xCu);
    }

    v13 = @"advisoryNotReady";
    if ([processingCopy count] == 1)
    {
      v14 = [processingCopy objectAtIndexedSubscript:0];
    }

    else
    {
      v14 = 0;
    }

    v15 = [actionsCopy objectForKeyedSubscript:@"withGeneration"];
    v16 = [(NetworkAnalyticsEngine *)self _adviceToNSString:[(NetworkAnalyticsEngine *)self _generateAdviceForEpoch:v14 relativeTo:v15]];

    v17 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v42 = v16;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "SymptomAnalytics ServiceImpl: returning advisory score: %@", buf, 0xCu);
    }

    if (performQueryPostProcessing_actions_processOutcome__once != -1)
    {
      [NetworkAnalyticsEngine performQueryPostProcessing:actions:processOutcome:];
    }

    durable = [v14 durable];
    v19 = 0x277CBE000;
    if (durable)
    {
      v20 = durable;
      v38 = v15;
      durable2 = [v14 durable];
      kind = [durable2 kind];
      if ([kind shortValue] == 1)
      {
        v36 = outcomeCopy;
        v37 = processingCopy;
        v23 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
        durable3 = [v14 durable];
        kind2 = [durable3 kind];
        v26 = [v23 objectForKeyedSubscript:kind2];
        v27 = [v26 isEqualToString:v16];

        if (v27)
        {
          v28 = 0;
          outcomeCopy = v36;
          processingCopy = v37;
          v15 = v38;
LABEL_21:
          v19 = 0x277CBE000uLL;
          goto LABEL_22;
        }

        v29 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
        durable4 = [v14 durable];
        kind3 = [durable4 kind];
        [v29 setObject:v16 forKeyedSubscript:kind3];

        v32 = MEMORY[0x277CBEAC0];
        v33 = [MEMORY[0x277CCABB0] numberWithShort:1];
        v34 = [v32 dictionaryWithObjectsAndKeys:{v16, @"advisoryKey", v33, @"Network Type", 0}];

        outcomeCopy = v36;
        v15 = v38;
        if (!v34)
        {
          v28 = 0;
          processingCopy = v37;
          goto LABEL_21;
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __76__NetworkAnalyticsEngine_performQueryPostProcessing_actions_processOutcome___block_invoke_2;
        block[3] = &unk_27898A0C8;
        v28 = v34;
        v40 = v28;
        dispatch_async(MEMORY[0x277D85CD0], block);
        v20 = v40;
        processingCopy = v37;
        v19 = 0x277CBE000;
      }

      else
      {

        v28 = 0;
        v15 = v38;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_22:
    v35 = [*(v19 + 2752) dictionaryWithObjectsAndKeys:{v16, @"advisoryKey", 0}];
    [outcomeCopy addObject:v35];
  }
}

uint64_t __76__NetworkAnalyticsEngine_performQueryPostProcessing_actions_processOutcome___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v1 = performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary;
  performQueryPostProcessing_actions_processOutcome__lastNetworkAdvisoryDictionary = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_createNetworkAttachmentIdentifierExclusionList
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  v4 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:3];
  v5 = v4;
  if (v4)
  {
    primaryKey = [v4 primaryKey];
    [v3 addObject:primaryKey];
  }

  v7 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:5];

  if (v7)
  {
    primaryKey2 = [v7 primaryKey];
    [v3 addObject:primaryKey2];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->liveDefaultRoutes allValues];
  v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        primaryKey3 = [*(*(&v16 + 1) + 8 * i) primaryKey];
        [v3 addObject:primaryKey3];
      }

      v11 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v3;
}

- (void)resetDataFor:(id)for nameKind:(id)kind
{
  forCopy = for;
  kindCopy = kind;
  if (forCopy && [forCopy count])
  {
    v7 = [MEMORY[0x277CBEB98] setWithArray:forCopy];
  }

  else
  {
    [(ImpoExpoService *)self->ieService deleteItemsWithPrefix:@"SymptomHashSalt"];
    +[NetworkAnalyticsModel resetModel];
    v7 = 0;
  }

  _createNetworkAttachmentIdentifierExclusionList = [(NetworkAnalyticsEngine *)self _createNetworkAttachmentIdentifierExclusionList];
  [NetworkEpoch resetDataFor:v7 exceptFor:_createNetworkAttachmentIdentifierExclusionList inWorkspace:self->super.workspace];
}

- (void)_awdCaptureInstant:(id)instant replyQueue:(id)queue reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  instantCopy = instant;
  queueCopy = queue;
  replyCopy = reply;
  v11 = instantCopy;
  if ([v11 networkType] == 2)
  {
    v12 = 5;
  }

  else
  {
    if ([v11 networkType] != 1)
    {
      v13 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
      {
        v14 = v13;
        *buf = 67109120;
        *&buf[4] = [v11 networkType];
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "AWDAgent: Using fallback handler for network type %d", buf, 8u);
      }

      [v11 setNetworkType:1];
    }

    v12 = 3;
  }

  v15 = [(NetworkAnalyticsEngine *)self _epochForInterfaceType:v12];
  partial = [v15 partial];
  if (!partial)
  {
    goto LABEL_17;
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  defRoute4 = [v15 defRoute4];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  defRoute6 = [v15 defRoute6];
  v17 = *(v35 + 3);
  if (v17)
  {
    CFRetain(v17);
  }

  v18 = v31[3];
  if (v18)
  {
    CFRetain(v18);
  }

  if (!*(v35 + 3) && !v31[3])
  {
    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(buf, 8);
LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_2;
    block[3] = &unk_27898DD40;
    v20 = replyCopy;
    v21 = 0;
    dispatch_async(queueCopy, block);

    goto LABEL_18;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke;
  v22[3] = &unk_27898DEA8;
  v23 = v11;
  v24 = partial;
  v25 = v15;
  v28 = buf;
  v29 = &v30;
  v26 = queueCopy;
  v27 = replyCopy;
  [(NetworkAnalyticsEngine *)self _performNetAttachmentQueryOn:v12 reply:v22];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);
LABEL_18:
}

void __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 40) bytesIn];
  [*(a1 + 32) setBytesIn:v2];
  [*(a1 + 40) bytesOut];
  [*(a1 + 32) setBytesOut:v3];
  [*(a1 + 40) connAttempts];
  [*(a1 + 32) setConnAttempts:v4];
  [*(a1 + 40) connSuccesses];
  [*(a1 + 32) setConnSuccess:v5];
  [*(a1 + 40) packetsIn];
  [*(a1 + 32) setPacketsIn:v6];
  [*(a1 + 40) packetsOut];
  [*(a1 + 32) setPacketsOut:v7];
  [*(a1 + 40) rttMin];
  if (v8 < 1.79769313e308)
  {
    [*(a1 + 32) setRttMinUsecs:(v8 * 1000000.0)];
  }

  v9 = [*(a1 + 48) hasDNS];
  [*(a1 + 32) setDnsServers:{objc_msgSend(v9, "count")}];

  v10 = [*(a1 + 48) impDNS];
  [*(a1 + 32) setPenalizedDnsServers:{objc_msgSend(v10, "count")}];

  v11 = [*(a1 + 48) fatal];
  [*(a1 + 32) setHasInternetConn:{objc_msgSend(v11, "isRunning") ^ 1}];

  v12 = [*(a1 + 48) fatal];
  [v12 currentRun];
  [*(a1 + 32) setCumulInternetOutageSecs:v13];

  v14 = *(*(*(a1 + 72) + 8) + 24);
  if (v14)
  {
    CFRelease(v14);
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  v15 = *(*(*(a1 + 80) + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v16 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "AWDAgent: real instant query outcome: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_922;
  block[3] = &unk_27898C670;
  v18 = *(a1 + 56);
  v20 = *(a1 + 64);
  dispatch_async(v18, block);
}

uint64_t __62__NetworkAnalyticsEngine__awdCaptureInstant_replyQueue_reply___block_invoke_2(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "AWDAgent: no epoch/lrp", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply
{
  inCopy = in;
  queueCopy = queue;
  replyCopy = reply;
  queue = [(AnalyticsEngineCore *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke;
  v15[3] = &unk_27898BFC8;
  v16 = inCopy;
  selfCopy = self;
  v18 = queueCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = queueCopy;
  v14 = inCopy;
  dispatch_async(queue, v15);
}

void __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke(uint64_t *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];
    v5 = a1[7];

    [v2 _awdCaptureInstant:v3 replyQueue:v4 reply:v5];
  }

  else
  {
    v6 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "AWDAgent: unrecognized payload %p", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__NetworkAnalyticsEngine__awdCaptureIn_replyQueue_reply___block_invoke_925;
    block[3] = &unk_27898C670;
    v8 = a1[6];
    v10 = a1[7];
    dispatch_async(v8, block);
  }
}

+ (void)awdCaptureIn:(id)in replyQueue:(id)queue reply:(id)reply
{
  inCopy = in;
  queueCopy = queue;
  replyCopy = reply;
  if (sharedInstance_3)
  {
    [sharedInstance_3 _awdCaptureIn:inCopy replyQueue:queueCopy reply:replyCopy];
  }

  else
  {
    v10 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "awdCaptureIn: reply NO, no sharedInstance", v11, 2u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)_performPeriodicTasks:(BOOL)tasks
{
  [(NetworkAnalyticsEngine *)self _trainModelAndScore:tasks];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Starting NWActivityHelper...", buf, 2u);
  }

  [(NWActivityHelper *)self->_nwActivityHelper startNWActivitySuperMetricProcessing];
  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NWActivityHelper complete!", v6, 2u);
  }
}

- (void)_trainModelAndScore:(BOOL)score
{
  scoreCopy = score;
  [(NetworkAnalyticsModel *)self->model trainModel];
  if (scoreCopy)
  {

    [(NetworkAnalyticsEngine *)self _scoringTrampoline];
  }
}

- (void)proxyAnalyticsTrainAndScoreInterrupted
{
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreInterrupted__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __64__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreInterrupted__block_invoke(uint64_t a1)
{
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Connection to helper was interrupted.", buf, 2u);
  }

  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Removing old records", v5, 2u);
  }

  [*(a1 + 32) _removeOldRouteRecords];
  [*(a1 + 32) setRemoveOldRecordsNow:0];
  [*(*(a1 + 32) + 8) save];
  [*(*(a1 + 32) + 8) reset];
  v4 = [NetworkStateRelay getStateRelayFor:3];
  [v4 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];
}

- (void)proxyAnalyticsTrainAndScoreComplete:(id)complete error:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  v8 = netepochsLogHandle;
  if (errorCopy)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138412290;
      v15 = localizedDescription;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "proxyAnalyticsTrainAndScoreComplete: error:%@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "proxyAnalyticsTrainAndScoreComplete with success", buf, 2u);
    }

    queue = [(AnalyticsEngineCore *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke;
    v12[3] = &unk_27898A7D0;
    v12[4] = self;
    v13 = completeCopy;
    dispatch_async(queue, v12);
  }
}

void __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 352) processProxyTrain];
  v3 = *(*(a1 + 32) + 156);
  v2 = *(*(a1 + 32) + 160);
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"lastScoreExits"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke_2;
  v12[3] = &unk_27898DED0;
  v12[4] = *(a1 + 32);
  [v4 enumerateObjectsUsingBlock:v12];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 32) + 156);
    *buf = 67109376;
    v14 = v3;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "lastScoreExit[NWInterfaceTypeWiFi] was %d and is now %d", buf, 0xEu);
  }

  v7 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(*(a1 + 32) + 160);
    *buf = 67109376;
    v14 = v2;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "lastScoreExit[NWInterfaceTypeCellular] was %d and is now %d", buf, 0xEu);
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"lastScoreDate"];
  objc_storeStrong(&score_last, v9);
  if ([*(a1 + 32) removeOldRecordsNow])
  {
    [*(a1 + 32) _removeOldRouteRecords];
    [*(a1 + 32) setRemoveOldRecordsNow:0];
  }

  [*(*(a1 + 32) + 8) save];
  [*(*(a1 + 32) + 8) reset];
  v10 = +[NWActivityHandler sharedInstance];
  [v10 enableDBWrites];

  v11 = [NetworkStateRelay getStateRelayFor:3];
  [v11 setKnowableSporadic:{objc_msgSend(*(a1 + 32), "_isKnowableSporadicForType:", 3)}];
}

void *__68__NetworkAnalyticsEngine_proxyAnalyticsTrainAndScoreComplete_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 intValue];
  *(*(a1 + 32) + 152 + 4 * a3) = result;
  if (a3 == 3)
  {
    *a4 = 1;
  }

  return result;
}

+ (BOOL)trainModelAndScore:(BOOL)score lastScoreDate:(id)date output:(id *)output
{
  scoreCopy = score;
  dateCopy = date;
  v8 = sharedInstance_3;
  if (sharedInstance_3)
  {
    _model = [sharedInstance_3 _model];
    [_model setIsHelper:1];

    [sharedInstance_3 _setLastScoreDate:dateCopy];
    [sharedInstance_3 _performPeriodicTasks:scoreCopy];
    if (output && scoreCopy)
    {
      v10 = MEMORY[0x277CBEB38];
      lastScoreExits = [sharedInstance_3 lastScoreExits];
      lastScoreDate = [sharedInstance_3 lastScoreDate];
      *output = [v10 dictionaryWithObjectsAndKeys:{lastScoreExits, @"lastScoreExits", lastScoreDate, @"lastScoreDate", 0}];
    }

    v13 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = 0;
      v14 = "helper complete!";
      v15 = &v21;
      v16 = v13;
      v17 = OS_LOG_TYPE_DEBUG;
LABEL_9:
      _os_log_impl(&dword_23255B000, v16, v17, v14, v15, 2u);
    }
  }

  else
  {
    v18 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v14 = "No Shared Instance";
      v15 = buf;
      v16 = v18;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_9;
    }
  }

  return v8 != 0;
}

- (void)performPersistentStoreHealthCheckComplete:(id)complete error:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  errorCopy = error;
  if (errorCopy)
  {
    v6 = errorCopy;
    v7 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: performPersistentStoreHealthCheckCompleted with error:%@", buf, 0xCu);
    }

    +[AnalyticsLaunchpad leaveBreadcrumbForIntegrityCheck];
    v8 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "WARNING: Will terminate symptomsd to allow for PersistentStore recovery ***", buf, 2u);
    }

    exit(0);
  }
}

+ (void)performPersistentStoreHealthCheckWithReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v4 = replyCopy;
  if (sharedInstance_3)
  {
    v5 = objc_alloc(MEMORY[0x277D6B500]);
    v6 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v6 symptomEvaluatorDatabaseContainerPath];
    v8 = [v5 initWorkspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

    if (!v8)
    {
      if (v4)
      {
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
        (v4)[2](v4, 0, v14);
      }

      goto LABEL_17;
    }

    [v8 setForceIntegrityCheck:1];
    persistentStoreCoordinator = [v8 persistentStoreCoordinator];
    integrityCheckFailed = [v8 integrityCheckFailed];
    v11 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"A-OK";
      if (integrityCheckFailed)
      {
        v12 = @"corrupted";
      }

      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "Completed integrity check in the helper. PersistentStore is %@", buf, 0xCu);
    }

    if (integrityCheckFailed)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:259 userInfo:0];
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      if (!v4)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{integrityCheckFailed, @"integrityCheckFailed"}];
    v18 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    (v4)[2](v4, v16, v13);

    goto LABEL_16;
  }

  if (replyCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:19 userInfo:0];
    (v4)[2](v4, 0, v8);
LABEL_17:
  }
}

- (void)_createJournalRecordOfType:(char *)a1 forInterface:fromDict:.cold.1(char **a1)
{
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_FAULT))
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_1(&dword_23255B000, v2, v3, "strict allocator failed", v4, v5, v6, v7, v8);
  }

  *a1 = 0;
  asprintf(a1, "strict allocator failed");
  qword_27DDA0B50 = *a1;
  __break(1u);
}

uint64_t __73__NetworkAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1(uint64_t a1)
{
  v2 = +[CellFallbackHandler turboRNF];
  runningRNFTurbo = v2;
  return [*(a1 + 56) _setWiFiRSSIThresholds:v2];
}

@end