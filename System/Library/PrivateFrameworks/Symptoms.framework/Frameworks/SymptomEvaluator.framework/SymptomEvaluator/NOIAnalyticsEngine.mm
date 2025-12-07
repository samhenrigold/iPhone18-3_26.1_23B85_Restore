@interface NOIAnalyticsEngine
+ (id)queue;
+ (void)getQueryStatistics:(id *)statistics;
+ (void)resetQueryStatistics;
- (BOOL)_initializeAllManagedNOIs;
- (NOIAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params;
- (id)_clientNOIEvent:(id)event forNOIs:(id)is isAddEvent:(BOOL)addEvent;
- (id)_validatedNOIs:(id)is orPredicate:(id)predicate;
- (void)_bottomUpNOIEvent:(id)event withInfo:(id)info;
- (void)_collectBasicFieldsForRRCMetric:(id)metric durationUsecs:(unint64_t)usecs;
- (void)_collectDataUsageFieldsForRRCMetric:(id)metric layer2EgressMetric:(id)egressMetric underrun:(BOOL *)underrun;
- (void)_collectTrafficClassFieldsForRRCMetric:(id)metric activeApps:(id)apps trafficClassFlags:(unsigned int)flags durationUsecs:(unint64_t)usecs;
- (void)_coreNOIMembershipChangeOn:(id)on forNOIs:(id)is isAddEvent:(BOOL)event;
- (void)_dumpClientStructure;
- (void)_evalPostingNotificationForNOI:(id)i forEvent:(id)event withInfo:(id)info;
- (void)_getQueryStatistics:(id *)statistics;
- (void)_observeStateRelays;
- (void)_resetQueryStatistics;
- (void)_resetRRCMetricCounters;
- (void)auditableLinkQuality:(id)quality options:(id)options reply:(id)reply;
- (void)canUseOnAlternate:(id)alternate options:(id)options reply:(id)reply;
- (void)clientEvent:(id)event isAddEvent:(BOOL)addEvent;
- (void)clientTransactionsRelease;
- (void)dealloc;
- (void)estTransferTime:(id)time options:(id)options reply:(id)reply;
- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options connection:(id)connection reply:(id)reply;
- (void)l2ThroughputMetrics:(id)metrics options:(id)options reply:(id)reply;
- (void)networkAttachmentInfo:(id)info options:(id)options reply:(id)reply;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options connection:(id)connection;
- (void)unsubscribeToNOIs:(id)is connection:(id)connection;
@end

@implementation NOIAnalyticsEngine

- (NOIAnalyticsEngine)initWithWorkspace:(id)workspace params:(id)params
{
  v85 = *MEMORY[0x277D85DE8];
  workspaceCopy = workspace;
  paramsCopy = params;
  v8 = SFGetStandardQueue(2);
  if (!v8)
  {
    v53 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "Failed to allocate internal NOI queue. Bailing.", buf, 2u);
    }

    goto LABEL_18;
  }

  v80.receiver = self;
  v80.super_class = NOIAnalyticsEngine;
  self = [(AnalyticsEngineCore *)&v80 initWithWorkspace:workspaceCopy params:paramsCopy queue:v8];
  if (self)
  {
    v9 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v83 = 2080;
      v84 = "[NOIAnalyticsEngine initWithWorkspace:params:]";
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NOI Analytics Engine: %p %s", buf, 0x16u);
    }

    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
    liveClients = self->liveClients;
    self->liveClients = v10;

    if (self->liveClients)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
      managedNOIs = self->managedNOIs;
      self->managedNOIs = v12;

      if (self->managedNOIs)
      {
        self->_predictionQueryCount = 0;
        v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
        predictionQueryClients = self->_predictionQueryClients;
        self->_predictionQueryClients = v14;

        if (self->_predictionQueryClients)
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke;
          v78[3] = &unk_27898A690;
          selfCopy2 = self;
          v79 = selfCopy2;
          v18 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochCell" object:0 queue:0 usingBlock:v78];
          cellEpochObserver = selfCopy2->_cellEpochObserver;
          selfCopy2->_cellEpochObserver = v18;

          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_44;
          v76[3] = &unk_27898A690;
          v20 = selfCopy2;
          v77 = v20;
          v21 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWiFi" object:0 queue:0 usingBlock:v76];
          wifiEpochObserver = v20->_wifiEpochObserver;
          v20->_wifiEpochObserver = v21;

          v74[0] = MEMORY[0x277D85DD0];
          v74[1] = 3221225472;
          v74[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_46;
          v74[3] = &unk_27898A690;
          v23 = v20;
          v75 = v23;
          v24 = [defaultCenter addObserverForName:@"kNotificationNewConnectivityEpochWired" object:0 queue:0 usingBlock:v74];
          wiredEpochObserver = v23->_wiredEpochObserver;
          v23->_wiredEpochObserver = v24;

          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_48;
          v72[3] = &unk_27898A690;
          v26 = v23;
          v73 = v26;
          v27 = [defaultCenter addObserverForName:@"notificationNewModelGenerated" object:0 queue:0 usingBlock:v72];
          modelTurndownObserver = v26->_modelTurndownObserver;
          v26->_modelTurndownObserver = v27;

          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_50;
          v70[3] = &unk_27898A690;
          v29 = v26;
          v71 = v29;
          v30 = [defaultCenter addObserverForName:@"kNotificationCellLinkStateReportCapable" object:0 queue:0 usingBlock:v70];
          cellStateCapabilityObserver = v29->_cellStateCapabilityObserver;
          v29->_cellStateCapabilityObserver = v30;

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_52;
          v68[3] = &unk_27898A690;
          v32 = v29;
          v69 = v32;
          v33 = [defaultCenter addObserverForName:@"kNotificationCellLinkStateChange" object:0 queue:0 usingBlock:v68];
          cellStateChangeObserver = v32->_cellStateChangeObserver;
          v32->_cellStateChangeObserver = v33;

          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_54;
          v66[3] = &unk_27898A690;
          v35 = v32;
          v67 = v35;
          v36 = [defaultCenter addObserverForName:@"fallbackRecommendation" object:0 queue:0 usingBlock:v66];
          cellFallbackObserver = v35->_cellFallbackObserver;
          v35->_cellFallbackObserver = v36;

          v64[0] = MEMORY[0x277D85DD0];
          v64[1] = 3221225472;
          v64[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_56;
          v64[3] = &unk_27898A690;
          v38 = v35;
          v65 = v38;
          v39 = [defaultCenter addObserverForName:@"considerAlternateUpdate" object:0 queue:0 usingBlock:v64];
          considerAlternateUpdateObserver = v38->_considerAlternateUpdateObserver;
          v38->_considerAlternateUpdateObserver = v39;

          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_58;
          v62[3] = &unk_27898A690;
          v41 = v38;
          v63 = v41;
          v42 = [defaultCenter addObserverForName:@"kNotificationNewPrimaryInterface" object:0 queue:0 usingBlock:v62];
          primaryObserver = v41->_primaryObserver;
          v41->_primaryObserver = v42;

          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_60;
          v60[3] = &unk_27898A0C8;
          v44 = v41;
          v61 = v44;
          if (initWithWorkspace_params__pred != -1)
          {
            dispatch_once(&initWithWorkspace_params__pred, v60);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_62;
          block[3] = &unk_27898A0C8;
          v45 = v44;
          v59 = v45;
          dispatch_sync(v8, block);
          signal(31, 1);
          queue = [v45 queue];
          v47 = dispatch_source_create(MEMORY[0x277D85D30], 0x1FuLL, 0, queue);
          v48 = initWithWorkspace_params__sigusr2;
          initWithWorkspace_params__sigusr2 = v47;

          v50 = initWithWorkspace_params__sigusr2;
          if (initWithWorkspace_params__sigusr2)
          {
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_3;
            handler[3] = &unk_27898A7D0;
            v56 = v45;
            v57 = defaultCenter;
            dispatch_source_set_event_handler(v50, handler);
            dispatch_resume(initWithWorkspace_params__sigusr2);
          }

          v51 = measureLaunchXPCHandle(v49);
          if (os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_23255B000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NOIAnalyticsEngineInitialized", "NOIAnalyticsEngine completed initialization", buf, 2u);
          }

          markMeasurement(2, 13);
          goto LABEL_15;
        }
      }
    }

LABEL_18:
    selfCopy3 = 0;
    goto LABEL_19;
  }

LABEL_15:
  self = self;
  selfCopy3 = self;
LABEL_19:

  return selfCopy3;
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cell epoch change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochCell" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_45;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_45(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "WiFi epoch change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochWiFi" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_47;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_47(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Wired epoch change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewConnectivityEpochWired" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_49;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_49(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "model regenerated: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"notificationNewModelGenerated" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_51;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_51(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC Capability change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationCellLinkStateReportCapable" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_53;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_53(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC State change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationCellLinkStateChange" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_55;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_55(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Cell Fallback recommendation: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"fallbackRecommendation" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_57;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_57(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Consider alternate update: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"considerAlternateUpdate" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_59;
  v6[3] = &unk_27898A7D0;
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_59(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 userInfo];
    v8 = 138477827;
    v9 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "Primary change: %{private}@", &v8, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) userInfo];
  [v6 _bottomUpNOIEvent:@"kNotificationNewPrimaryInterface" withInfo:v7];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_60(uint64_t a1)
{
  v15[14] = *MEMORY[0x277D85DE8];
  objc_storeStrong(&sharedInstance_0, *(a1 + 32));
  v1 = objc_alloc(MEMORY[0x277CBEB98]);
  v15[0] = @"predictions";
  v15[1] = @"predictionsGeneratedAt";
  v15[2] = @"instantQuality";
  v15[3] = @"l2ThroughputMetrics";
  v15[4] = @"auditableLinkQuality";
  v15[5] = @"networkAttachmentInfo";
  v15[6] = @"estTransferTime";
  v15[7] = @"hasForegroundActivity";
  v15[8] = @"canUseOnAlternate";
  v15[9] = @"predictionsError";
  v15[10] = @"dayOfWeekGrouping";
  v15[11] = @"trainingProgress";
  v15[12] = @"invitesHourlyDistribution";
  v15[13] = @"interfaceTimeline";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:14];
  v3 = [v1 initWithArray:v2];
  v4 = supportedKeys;
  supportedKeys = v3;

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v14[0] = @"l2ThroughputMetrics";
  v14[1] = @"auditableLinkQuality";
  v14[2] = @"networkAttachmentInfo";
  v14[3] = @"estTransferTime";
  v14[4] = @"canUseOnAlternate";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:5];
  v7 = [v5 initWithArray:v6];
  v8 = supportedAsyncKeys;
  supportedAsyncKeys = v7;

  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v13[0] = @"predictions";
  v13[1] = @"predictionsGeneratedAt";
  v13[2] = @"predictionsError";
  v13[3] = @"dayOfWeekGrouping";
  v13[4] = @"trainingProgress";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  v11 = [v9 initWithArray:v10];
  v12 = predictionQueryKeys;
  predictionQueryKeys = v11;
}

uint64_t __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_2_62(uint64_t a1)
{
  [*(a1 + 32) _initializeAllManagedNOIs];
  v2 = *(a1 + 32);

  return [v2 _observeStateRelays];
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_3(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _dumpClientStructure];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: posting event ON", buf, 2u);
  }

  v12[0] = @"State";
  v12[1] = @"Detail";
  v13[0] = MEMORY[0x277CBEC38];
  v13[1] = MEMORY[0x277CBEC38];
  v12[2] = @"StateChangeTimestamp";
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v13[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  [*(a1 + 40) postNotificationName:@"kNotificationCellLinkStateChange" object:*(a1 + 32) userInfo:v6];
  v7 = dispatch_time(0, 10000000000);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_66;
  v8[3] = &unk_27898A7D0;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  dispatch_after(v7, MEMORY[0x277D85CD0], v8);
}

void __47__NOIAnalyticsEngine_initWithWorkspace_params___block_invoke_66(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "NetworkAnalyticsEngine: posting event OFF", v7, 2u);
  }

  v8[0] = @"State";
  v8[1] = @"Detail";
  v9[0] = MEMORY[0x277CBEC28];
  v9[1] = MEMORY[0x277CBEC38];
  v8[2] = @"StateChangeTimestamp";
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSince1970];
  v5 = [v3 numberWithDouble:?];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  [*(a1 + 32) postNotificationName:@"kNotificationCellLinkStateChange" object:*(a1 + 40) userInfo:v6];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_cellEpochObserver];
  [defaultCenter removeObserver:self->_wifiEpochObserver];
  [defaultCenter removeObserver:self->_wiredEpochObserver];
  [defaultCenter removeObserver:self->_modelTurndownObserver];
  [defaultCenter removeObserver:self->_cellStateCapabilityObserver];
  [defaultCenter removeObserver:self->_cellStateChangeObserver];
  [defaultCenter removeObserver:self->_cellFallbackObserver];
  [defaultCenter removeObserver:self->_primaryObserver];
  wifiRelay = self->_wifiRelay;
  if (wifiRelay)
  {
    [(NetworkStateRelay *)wifiRelay removeObserver:self forKeyPath:@"linkQuality"];
    [(NetworkStateRelay *)self->_wifiRelay removeObserver:self forKeyPath:@"radioTechnology"];
  }

  cellRelay = self->_cellRelay;
  if (cellRelay)
  {
    [(NetworkStateRelay *)cellRelay removeObserver:self forKeyPath:@"linkQuality"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"powerCostDL"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"powerCostUL"];
    [(NetworkStateRelay *)self->_cellRelay removeObserver:self forKeyPath:@"radioTechnology"];
  }

  wiredRelay = self->_wiredRelay;
  if (wiredRelay)
  {
    [(NetworkStateRelay *)wiredRelay removeObserver:self forKeyPath:@"linkQuality"];
  }

  v7.receiver = self;
  v7.super_class = NOIAnalyticsEngine;
  [(AnalyticsEngineCore *)&v7 dealloc];
}

- (void)_dumpClientStructure
{
  obj = self->liveClients;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->liveClients enumerateKeysAndObjectsUsingBlock:&__block_literal_global_10];
  objc_sync_exit(obj);
}

void __42__NOIAnalyticsEngine__dumpClientStructure__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 connection];
    v12 = 67109120;
    LODWORD(v13) = [v8 processIdentifier];
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Active client pid: %d", &v12, 8u);
  }

  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v5 subscribedNOIs];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Subscribed to: %@", &v12, 0xCu);
  }
}

- (void)clientEvent:(id)event isAddEvent:(BOOL)addEvent
{
  addEventCopy = addEvent;
  v40 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v7 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    processIdentifier = [eventCopy processIdentifier];
    *buf = 134218496;
    selfCopy4 = self;
    v36 = 1024;
    v37 = processIdentifier;
    v38 = 1024;
    v39 = addEventCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%p for pid: %d, client event: %d", buf, 0x18u);
  }

  v10 = self->liveClients;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->liveClients count];
  v28 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:eventCopy];
  if (addEventCopy)
  {
    v12 = [[Client alloc] initWithConn:eventCopy];
    [(NSMutableDictionary *)self->liveClients setObject:v12 forKeyedSubscript:v28];
    v13 = noiLogHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NSMutableDictionary *)self->liveClients count];
      *buf = 134217984;
      selfCopy4 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "Total number of NOI clients: %ld", buf, 0xCu);
    }
  }

  else
  {
    v15 = [(NSMutableDictionary *)self->liveClients objectForKeyedSubscript:v28];
    v12 = v15;
    if (v15)
    {
      v27 = eventCopy;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      subscribedNOIs = [(Client *)v15 subscribedNOIs];
      v17 = [subscribedNOIs countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(subscribedNOIs);
            }

            [*(*(&v29 + 1) + 8 * i) removeObserverForAllKeyPaths:v12];
          }

          v17 = [subscribedNOIs countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);
      }

      eventCopy = v27;
      subscribedNOIs2 = [(Client *)v12 subscribedNOIs];
      [subscribedNOIs2 removeAllObjects];

      [(NSMutableDictionary *)self->liveClients removeObjectForKey:v28];
    }

    else
    {
      v21 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        selfCopy4 = self;
        v36 = 1024;
        v37 = 0;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "%p event: %d, client unknown", buf, 0x12u);
      }
    }
  }

  if (v11 != [(NSMutableDictionary *)self->liveClients count])
  {
    if (!addEventCopy || v11)
    {
      if (addEventCopy)
      {
        goto LABEL_19;
      }

      if (v11 != 1)
      {
        goto LABEL_19;
      }

      noiLiveClientTransaction = self->_noiLiveClientTransaction;
      if (!noiLiveClientTransaction)
      {
        goto LABEL_19;
      }

      self->_noiLiveClientTransaction = 0;

      v24 = noiLogHandle;
      if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      selfCopy4 = self;
      v25 = "%p now not holding os_transaction for noi_live_clients";
    }

    else
    {
      if (self->xpcShutdown)
      {
        goto LABEL_19;
      }

      if (self->_noiLiveClientTransaction)
      {
        goto LABEL_19;
      }

      v22 = os_transaction_create();
      v23 = self->_noiLiveClientTransaction;
      self->_noiLiveClientTransaction = v22;

      v24 = noiLogHandle;
      if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      selfCopy4 = self;
      v25 = "%p now holding os_transaction for noi_live_clients";
    }

    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
  }

LABEL_19:

  objc_sync_exit(v10);
}

- (id)_clientNOIEvent:(id)event forNOIs:(id)is isAddEvent:(BOOL)addEvent
{
  addEventCopy = addEvent;
  v71 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  isCopy = is;
  v52 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:3];
  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    processIdentifier = [eventCopy processIdentifier];
    v12 = [isCopy count];
    v13 = "remove";
    *buf = 134218754;
    v65 = 1024;
    selfCopy = self;
    if (addEventCopy)
    {
      v13 = "add";
    }

    v66 = processIdentifier;
    v67 = 2048;
    v68 = v12;
    v69 = 2080;
    v70 = v13;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "%p for pid: %d, %ld nois, client noi event: %s", buf, 0x26u);
  }

  obj = self->liveClients;
  objc_sync_enter(obj);
  selfCopy2 = self;
  liveClients = self->liveClients;
  v49 = eventCopy;
  v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:eventCopy];
  v17 = [(NSMutableDictionary *)liveClients objectForKeyedSubscript:v16];

  if (v17)
  {
    if (addEventCopy)
    {
      v59 = 0uLL;
      v60 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v18 = isCopy;
      v19 = [v18 countByEnumeratingWithState:&v57 objects:v62 count:16];
      if (v19)
      {
        v20 = *v58;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v58 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v57 + 1) + 8 * i);
            subscribedNOIs = [v17 subscribedNOIs];
            v24 = [subscribedNOIs member:v22];
            v25 = v24 == 0;

            if (v25)
            {
              [v22 addObserverForAllKeyPaths:v17];
              subscribedNOIs2 = [v17 subscribedNOIs];
              [subscribedNOIs2 addObject:v22];

              v26 = [v22 copy];
              [v52 addObject:v26];
              v30 = noiLogHandle;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                connection = [v17 connection];
                processIdentifier2 = [connection processIdentifier];
                *buf = 134218498;
                selfCopy = selfCopy2;
                v65 = 1024;
                v66 = processIdentifier2;
                v67 = 2112;
                v68 = v26;
                _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "%p NOI client[%d] subscribed to noi %@", buf, 0x1Cu);
              }
            }

            else
            {
              v26 = noiLogHandle;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                connection2 = [v17 connection];
                processIdentifier3 = [connection2 processIdentifier];
                *buf = 134218498;
                selfCopy = selfCopy2;
                v65 = 1024;
                v66 = processIdentifier3;
                v67 = 2112;
                v68 = v22;
                _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "%p NOI client[%d] already has noi %@", buf, 0x1Cu);
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v57 objects:v62 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v18 = isCopy;
      v35 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v35)
      {
        v36 = *v54;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v54 != v36)
            {
              objc_enumerationMutation(v18);
            }

            v38 = *(*(&v53 + 1) + 8 * j);
            subscribedNOIs3 = [v17 subscribedNOIs];
            v40 = [subscribedNOIs3 member:v38];

            if (v40)
            {
              [v38 removeObserverForAllKeyPaths:v17];
              subscribedNOIs4 = [v17 subscribedNOIs];
              [subscribedNOIs4 removeObject:v38];

              v42 = [v38 copy];
              [v52 addObject:v42];
              v43 = noiLogHandle;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                connection3 = [v17 connection];
                processIdentifier4 = [connection3 processIdentifier];
                *buf = 134218498;
                selfCopy = selfCopy2;
                v65 = 1024;
                v66 = processIdentifier4;
                v67 = 2112;
                v68 = v42;
                _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "%p NOI client[%d] unsubscribed from noi %@", buf, 0x1Cu);
              }
            }

            else
            {
              v42 = noiLogHandle;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                connection4 = [v17 connection];
                processIdentifier5 = [connection4 processIdentifier];
                *buf = 134218498;
                selfCopy = selfCopy2;
                v65 = 1024;
                v66 = processIdentifier5;
                v67 = 2112;
                v68 = v38;
                _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEFAULT, "%p NOI client[%d] cannot remove this noi because it does not have one: %@", buf, 0x1Cu);
              }
            }
          }

          v35 = [v18 countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v35);
      }
    }
  }

  else
  {
    v18 = noiLogHandle;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      connection5 = [0 connection];
      processIdentifier6 = [connection5 processIdentifier];
      *buf = 134218496;
      selfCopy = selfCopy2;
      v65 = 1024;
      v66 = addEventCopy;
      v67 = 1024;
      LODWORD(v68) = processIdentifier6;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "%p event: %d: NOI client[%d] unknown", buf, 0x18u);
    }
  }

  objc_sync_exit(obj);

  return v52;
}

- (void)_bottomUpNOIEvent:(id)event withInfo:(id)info
{
  v102 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  selfCopy = self;
  infoCopy = info;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = self->managedNOIs;
  v7 = [(NSMutableSet *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v94;
    v79 = eventCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v94 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v93 + 1) + 8 * v10);
        if ([v11 functionalInterfaceType] == 5 && (objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationNewConnectivityEpochCell") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 3 && (objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationNewConnectivityEpochWiFi") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 2 && (objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationNewConnectivityEpochWired") & 1) != 0 || objc_msgSend(v11, "functionalInterfaceType") == 7 && objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationNewConnectivityEpochCompanionLink"))
        {
          if ([v11 isAny])
          {
            v12 = [infoCopy objectForKeyedSubscript:@"State"];
            bOOLValue = [v12 BOOLValue];

            v14 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              isTrafficEligible = [v11 isTrafficEligible];
              *buf = 134219010;
              *v98 = selfCopy;
              *&v98[8] = 2112;
              *&v98[10] = eventCopy;
              *&v98[18] = 2112;
              *v99 = v11;
              *&v99[8] = 1024;
              *v100 = isTrafficEligible;
              *&v100[4] = 1024;
              *&v100[6] = bOOLValue;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "%p event: %@, noi: %@, fastpath, current elig: %d, new elig: %d", buf, 0x2Cu);
            }

            [v11 setIsTrafficEligible:bOOLValue];
          }

          else
          {
            functionalInterfaceType = [v11 functionalInterfaceType];
            isAny = [v11 isAny];
            isBuiltin = [v11 isBuiltin];
            v18 = v10;
            v19 = v9;
            v20 = v8;
            scopedToLOI = [v11 scopedToLOI];
            customSignature = [v11 customSignature];
            queue = [(AnalyticsEngineCore *)selfCopy queue];
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke;
            v90[3] = &unk_27898BAD0;
            v90[4] = selfCopy;
            eventCopy = v79;
            v91 = v79;
            v92 = v11;
            v24 = scopedToLOI;
            v8 = v20;
            v9 = v19;
            v10 = v18;
            [NetworkAnalyticsEngine hasNetworkAttachmentOn:functionalInterfaceType isAny:isAny isBuiltin:isBuiltin scopedToLOI:v24 hasCustomSignature:customSignature queue:queue reply:v90];
          }

          goto LABEL_55;
        }

        if ([v11 functionalInterfaceType] == 5 && objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationCellLinkStateReportCapable"))
        {
          v25 = [infoCopy objectForKeyedSubscript:@"State"];
          [v11 setWillGetDiscretionaryTrafficInvites:{objc_msgSend(v25, "BOOLValue")}];
LABEL_54:

          goto LABEL_55;
        }

        if ([v11 functionalInterfaceType] != 5 || !objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationCellLinkStateChange"))
        {
          if ([v11 functionalInterfaceType] == 3 && objc_msgSend(eventCopy, "isEqualToString:", @"fallbackRecommendation"))
          {
            v38 = [infoCopy objectForKeyedSubscript:@"detail"];
            integerValue = [v38 integerValue];

            [v11 setConsiderAlternate:integerValue];
            goto LABEL_55;
          }

          if ([v11 functionalInterfaceType] == 3 && objc_msgSend(eventCopy, "isEqualToString:", @"considerAlternateUpdate"))
          {
            v40 = [infoCopy objectForKeyedSubscript:@"updateDetail"];
            v41 = [objc_alloc(MEMORY[0x277D6B3E8]) initWithDictionary:v40];
            [v11 setConsiderAlternateUpdate:v41];

            v42 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v43 = v42;
              considerAlternateUpdate = [v11 considerAlternateUpdate];
              *buf = 138412290;
              *v98 = considerAlternateUpdate;
              _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "Consider alternate update: %@", buf, 0xCu);
            }
          }

          else
          {
            if ([v11 isAny])
            {
              if (![v11 flags])
              {
                if ([eventCopy isEqualToString:@"kNotificationNewPrimaryInterface"])
                {
                  v45 = [infoCopy objectForKeyedSubscript:@"Detail"];
                  integerValue2 = [v45 integerValue];

                  if ([v11 interface] == integerValue2)
                  {
                    if ([v11 functionalInterfaceType] != 7 || (objc_msgSend(infoCopy, "objectForKeyedSubscript:", @"kNotificationNewConnectivityEpochCompanionLink"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "BOOLValue"), v47, v48))
                    {
                      [(NOIAnalyticsEngine *)selfCopy _evalPostingNotificationForNOI:v11 forEvent:@"kNotificationNewPrimaryInterface" withInfo:infoCopy];
                      goto LABEL_92;
                    }
                  }
                }
              }
            }

            if ([eventCopy isEqualToString:@"notificationNewModelGenerated"])
            {
              v25 = +[NetworkAnalyticsModel modelGeneratedAt];
              [v11 setPredictionsGeneratedAt:v25];
              goto LABEL_54;
            }
          }

          goto LABEL_55;
        }

        v26 = [infoCopy objectForKeyedSubscript:@"Detail"];
        bOOLValue2 = [v26 BOOLValue];

        v27 = [infoCopy objectForKeyedSubscript:@"State"];
        bOOLValue3 = [v27 BOOLValue];

        v29 = [infoCopy objectForKeyedSubscript:@"StateChangeTimestamp"];
        [v29 doubleValue];
        v31 = v30;

        if (bOOLValue3 && ([v11 willGetDiscretionaryTrafficInvites] & 1) == 0)
        {
          [v11 setWillGetDiscretionaryTrafficInvites:1];
        }

        [v11 setDiscretionaryTrafficInvited:bOOLValue3];
        if (rrcStateChangeTimestamp < (v31 * 1000.0))
        {
          [(NOIAnalyticsEngine *)selfCopy _updateRrcStateChangeTimestamp:(v31 * 1000.0) forRrcState:bOOLValue3];
        }

        if (![v11 isAny] || (objc_msgSend(v11, "flags") & 1) != 0)
        {
          goto LABEL_55;
        }

        v32 = mach_absolute_time();
        v33 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110146;
          *v98 = bOOLValue3;
          *&v98[4] = 2048;
          *&v98[6] = v32;
          *&v98[14] = 1024;
          *&v98[16] = bOOLValue2;
          *v99 = 2048;
          *&v99[2] = v11;
          *v100 = 2112;
          *&v100[2] = v11;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEFAULT, "RRC Metric: RRC state %d, mach time %llu, isBBUpdate %d <%p> (%@)", buf, 0x2Cu);
        }

        if (bOOLValue3)
        {
          if (bOOLValue2 && selfCopy->_startConnectionTimestamp)
          {
            goto LABEL_69;
          }

          selfCopy->_startConnectionTimestamp = v32;
          v34 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            startConnectionTimestamp = selfCopy->_startConnectionTimestamp;
            *buf = 134217984;
            *v98 = startConnectionTimestamp;
            v36 = v34;
            v37 = "RRC Metric: _startConnectionTimestamp %llu";
LABEL_67:
            _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, 0xCu);
          }
        }

        else
        {
          v49 = selfCopy;
          if (bOOLValue2)
          {
            if (!selfCopy->_startConnectionTimestamp)
            {
              goto LABEL_68;
            }

            v50 = +[IOKitHandler sharedInstance];
            mostRecentAPSleepMachTime = [v50 mostRecentAPSleepMachTime];

            if (mostRecentAPSleepMachTime <= selfCopy->_startConnectionTimestamp)
            {
              v54 = noiLogHandle;
              v49 = selfCopy;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v55 = selfCopy->_startConnectionTimestamp;
                *buf = 134218240;
                *v98 = mostRecentAPSleepMachTime;
                *&v98[8] = 2048;
                *&v98[10] = v55;
                _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEFAULT, "RRC Metric: BB update apSleepTime (%llu) is less than startConnectionTime (%llu)!! Setting _lastDisconnectTime to now", buf, 0x16u);
              }
            }

            else
            {
              v32 = mostRecentAPSleepMachTime;
            }

            v49->_lastDisconnectTimestamp = v32;
            v49->_startConnectionTimestamp = 0;
            v56 = noiLogHandle;
            if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_68;
            }

            lastDisconnectTimestamp = v49->_lastDisconnectTimestamp;
            *buf = 134217984;
            *v98 = lastDisconnectTimestamp;
            v36 = v56;
            v37 = "RRC Metric: BB update _lastDisconnectTimestamp %llu";
            goto LABEL_67;
          }

          selfCopy->_lastDisconnectTimestamp = v32;
          selfCopy->_startConnectionTimestamp = 0;
          v52 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v53 = selfCopy->_lastDisconnectTimestamp;
            *buf = 134217984;
            *v98 = v53;
            v36 = v52;
            v37 = "RRC Metric: _lastDisconnectTimestamp %llu";
            goto LABEL_67;
          }
        }

LABEL_68:
        eventCopy = v79;
LABEL_69:
        hasForegroundActivity = [v11 hasForegroundActivity];
        bOOLValue4 = [hasForegroundActivity BOOLValue];

        if (bOOLValue4)
        {
          goto LABEL_55;
        }

        v60 = +[PowerStateRelay defaultRelay];
        pluggedIn = [v60 pluggedIn];

        v62 = noiLogHandle;
        if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v98 = bOOLValue3;
          *&v98[4] = 1024;
          *&v98[6] = pluggedIn;
          _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEFAULT, "RRC Metric: no foregroundActivity, RRC state %d, pluggedIn %d", buf, 0xEu);
        }

        if (!(pluggedIn & 1 | ((bOOLValue3 & 1) == 0)) && (!bOOLValue2 || !selfCopy->_startBackgroundConnectionTimestamp))
        {
          selfCopy->_startBackgroundConnectionTimestamp = selfCopy->_startConnectionTimestamp;
          v70 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            startBackgroundConnectionTimestamp = selfCopy->_startBackgroundConnectionTimestamp;
            *buf = 134217984;
            *v98 = startBackgroundConnectionTimestamp;
            _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEFAULT, "RRC Metric: _startBackgroundConnectionTimestamp %llu", buf, 0xCu);
          }

          +[AppTracker beginTrafficClassFlowSnapshot];
          v72 = selfCopy->_lastDisconnectTimestamp;
          if (v72)
          {
            selfCopy->_lastDisconnectedSecs = secondsFromMachAbsoluteTime(selfCopy->_startBackgroundConnectionTimestamp - v72);
            v73 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              lastDisconnectedSecs = selfCopy->_lastDisconnectedSecs;
              *buf = 134217984;
              *v98 = lastDisconnectedSecs;
              _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_DEFAULT, "RRC Metric: updated _lastDisconnectedSecs to %llu", buf, 0xCu);
            }
          }

          selfCopy->_ingressLQM = [NetworkAnalyticsEngine getLoadedLQMOn:5];
          v75 = noiLogHandle;
          if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v75, OS_LOG_TYPE_DEFAULT, "RRC Metric: query layer2 ingressMetric", buf, 2u);
          }

          functionalInterfaceType2 = [v11 functionalInterfaceType];
          queue2 = [(AnalyticsEngineCore *)selfCopy queue];
          v89[0] = MEMORY[0x277D85DD0];
          v89[1] = 3221225472;
          v89[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_92;
          v89[3] = &unk_27898BAF8;
          v89[4] = selfCopy;
          [NetworkAnalyticsEngine layer2MetricsOn:functionalInterfaceType2 queue:queue2 reply:v89];

          goto LABEL_88;
        }

        if ((bOOLValue3 & 1) == 0)
        {
          v63 = selfCopy->_startBackgroundConnectionTimestamp;
          if (v63)
          {
            v64 = nanosecondsFromMachAbsoluteTime(selfCopy->_lastDisconnectTimestamp - v63) / 0x3E8;
            v65 = [[SymptomsNetworkAnalyticsRRCConnectedPeriodMetric alloc] initWithPeriodType:2];
            [(NOIAnalyticsEngine *)selfCopy _collectBasicFieldsForRRCMetric:v65 durationUsecs:v64];
            v66 = noiLogHandle;
            if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_DEFAULT, "RRC Metric: query layer2 egressMetric", buf, 2u);
            }

            functionalInterfaceType3 = [v11 functionalInterfaceType];
            queue3 = [(AnalyticsEngineCore *)selfCopy queue];
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_95;
            v86[3] = &unk_27898BB68;
            v86[4] = selfCopy;
            v87 = v65;
            v88 = v64;
            v69 = v65;
            [NetworkAnalyticsEngine layer2MetricsOn:functionalInterfaceType3 queue:queue3 reply:v86];

LABEL_88:
            eventCopy = v79;
          }
        }

LABEL_55:
        ++v10;
      }

      while (v8 != v10);
      v78 = [(NSMutableSet *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
      v8 = v78;
    }

    while (v78);
  }

LABEL_92:
}

uint64_t __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = v4;
    v10 = 134219010;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = [v7 isTrafficEligible];
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "%p event: %@, noi: %@, slowpath, current elig: %d, new elig: %d", &v10, 0x2Cu);
  }

  return [*(a1 + 48) setIsTrafficEligible:a2];
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = noiLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = v5;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "RRC Metric: error fetching layer2 ingressMetric %@, error %@", &v20, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "RRC Metric: reply layer2 ingressMetric %@", &v20, 0xCu);
    }

    v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB28]];
    v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB58]];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB38]];
    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CB68]];
    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CAF0]];
    v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277D2CAD0]];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v8 unsignedLongValue];
    }

    else
    {
      v14 = 0;
    }

    *(*(a1 + 32) + 232) = v14;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v9 unsignedLongValue];
    }

    else
    {
      v15 = 0;
    }

    *(*(a1 + 32) + 240) = v15;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v10 unsignedLongValue];
    }

    else
    {
      v16 = 0;
    }

    *(*(a1 + 32) + 248) = v16;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v17 = [v11 unsignedLongValue];
    }

    else
    {
      v17 = 0;
    }

    *(*(a1 + 32) + 256) = v17;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = [v12 unsignedLongValue];
    }

    else
    {
      v18 = 0;
    }

    *(*(a1 + 32) + 216) = v18;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = [v13 unsignedLongValue];
    }

    else
    {
      v19 = 0;
    }

    *(*(a1 + 32) + 224) = v19;
    *(*(a1 + 32) + 272) = 1;
  }
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v23 = 0;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v25 = v5;
      *&v25[8] = 2112;
      *&v25[10] = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "RRC Metric: error fetching layer2 egressMetric %@, error %@", buf, 0x16u);
    }

LABEL_10:
    v11 = [*(a1 + 32) queue];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_96;
    v19 = &unk_27898BB40;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v20 = *(a1 + 32);
    v14 = v12;
    v15 = *(a1 + 48);
    v21 = v14;
    v22 = v15;
    [AppTracker endTrafficClassFlowSnapshot:v11 periodUsecs:v13 reply:&v16];

    goto LABEL_11;
  }

  if (*(*(a1 + 32) + 272) != 1)
  {
    goto LABEL_10;
  }

  v8 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v25 = v5;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "RRC Metric: reply layer2 egressMetric %@", buf, 0xCu);
  }

  [*(a1 + 32) _collectDataUsageFieldsForRRCMetric:*(a1 + 40) layer2EgressMetric:v5 underrun:&v23];
  if ((v23 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    *buf = 67109378;
    *v25 = v23;
    *&v25[4] = 2112;
    *&v25[6] = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "RRC Metric: underrun %d, not posting rrcMetric %@", buf, 0x12u);
  }

LABEL_11:
  *(*(a1 + 32) + 192) = 0;
  [*(a1 + 32) _resetRRCMetricCounters];
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_96(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) _collectTrafficClassFieldsForRRCMetric:*(a1 + 40) activeApps:a4 trafficClassFlags:a2 durationUsecs:a3];
  [*(a1 + 40) postCAEvent];
  v6 = +[SystemProperties sharedInstance];
  v7 = [v6 internalBuild];

  if (a4 && v7 && *(a1 + 48) >= 0xD693A401uLL)
  {
    v8 = +[BitmapRetriever sharedInstance];
    v9 = SFGetStandardQueue(1);
    v10 = [*(a1 + 32) queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_2;
    v11[3] = &__block_descriptor_40_e22_v16__0__NSDictionary_8l;
    v11[4] = *(a1 + 48);
    [v8 tallyUpActivityBitmapsForInterface:5 queue:v9 replyQueue:v10 reply:v11];
  }
}

void __49__NOIAnalyticsEngine__bottomUpNOIEvent_withInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32) / 0xF4240uLL;
    v11 = 134218242;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "RRC Up for %llu seconds. EgregiousOffenders are %@", &v11, 0x16u);
  }

  if ([v3 count])
  {
    v6 = v3;
    if (v6 && [MEMORY[0x277CCAAA0] isValidJSONObject:v6] && (objc_msgSend(MEMORY[0x277CCAAA0], "dataWithJSONObject:options:error:", v6, 0, 0), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
    }

    else
    {
      v9 = 0;
    }

    if ([v9 length])
    {
      v10 = [v9 UTF8String];
      internal_symptom_new(405505);
      internal_symptom_set_qualifier();
      [v6 count];
      internal_symptom_set_qualifier();
      strlen(v10);
      internal_symptom_set_additional_qualifier();
      internal_symptom_send();
    }
  }
}

- (void)_observeStateRelays
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [NetworkStateRelay getStateRelayFor:3];
  wifiRelay = self->_wifiRelay;
  self->_wifiRelay = v3;

  v5 = self->_wifiRelay;
  if (v5)
  {
    [(NetworkStateRelay *)v5 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];
    [(NetworkStateRelay *)self->_wifiRelay addObserver:self forKeyPath:@"radioTechnology" options:5 context:0];
  }

  v6 = [NetworkStateRelay getStateRelayFor:5];
  cellRelay = self->_cellRelay;
  self->_cellRelay = v6;

  v8 = self->_cellRelay;
  if (v8)
  {
    [(NetworkStateRelay *)v8 addObserver:self forKeyPath:@"linkQuality" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"powerCostDL" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"powerCostUL" options:5 context:0];
    [(NetworkStateRelay *)self->_cellRelay addObserver:self forKeyPath:@"radioTechnology" options:5 context:0];
  }

  v9 = [NetworkStateRelay getStateRelayFor:2];
  wiredRelay = self->_wiredRelay;
  self->_wiredRelay = v9;

  v11 = self->_wiredRelay;
  if (v11)
  {
    [(NetworkStateRelay *)v11 addObserver:self forKeyPath:@"linkQuality" options:7 context:0];
  }

  v12 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = self->_wifiRelay;
    v14 = self->_cellRelay;
    v15 = self->_wiredRelay;
    companionLinkRelay = self->_companionLinkRelay;
    v17 = 134218752;
    v18 = v13;
    v19 = 2048;
    v20 = v14;
    v21 = 2048;
    v22 = v15;
    v23 = 2048;
    v24 = companionLinkRelay;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Observing StateRelays for loaded LQM change via linkQuality: wifi %p, cell %p, wired %p, companion link %p", &v17, 0x2Au);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  queue = [(AnalyticsEngineCore *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NOIAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_27898A328;
  v14 = objectCopy;
  selfCopy = self;
  v16 = pathCopy;
  v11 = pathCopy;
  v12 = objectCopy;
  dispatch_async(queue, block);
}

void __69__NOIAnalyticsEngine_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1[4];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v3 = *(a1[5] + 9);
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v34;
      *&v5 = 67109890;
      v32 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v33 + 1) + 8 * i);
          v10 = [v9 functionalInterfaceType];
          if (v10 == [v2 functionalInterfaceType])
          {
            if ([a1[6] isEqualToString:@"linkQuality"])
            {
              v11 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v12 = v11;
                v13 = [v2 linkQuality];
                v14 = [v2 functionalInterfaceType];
                *buf = 134218498;
                *v38 = v13;
                *&v38[8] = 1024;
                *&v38[10] = v14;
                v39 = 2112;
                v40 = v9;
                _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "linkQuality changed to %ld as loaded LQM changed on interface type %hhu noi: %@", buf, 0x1Cu);
              }

              [v9 setLinkQuality:{+[NetworkAnalyticsEngine mapLinkQuality:](NetworkAnalyticsEngine, "mapLinkQuality:", objc_msgSend(v2, "linkQuality"))}];
              if ([v9 functionalInterfaceType] == 5)
              {
                if ([v9 linkQuality])
                {
                  [v9 setPowerCostDL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v2, "powerCostDL"))}];
                  v15 = +[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", [v2 powerCostUL]);
                  v16 = v9;
                }

                else
                {
                  [v9 setPowerCostDL:0];
                  v16 = v9;
                  v15 = 0;
                }

                [v16 setPowerCostUL:v15];
              }

              else
              {
                [v9 anchorPowerCostToLinkQuality];
              }

              if ([v9 isAny])
              {
                if (![v9 flags])
                {
                  [a1[5] _evalPostingNotificationForNOI:v9 forEvent:a1[6] withInfo:0];
                }
              }
            }

            else if ([a1[6] isEqualToString:@"powerCostDL"])
            {
              v17 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = [v2 powerCostDL];
                v20 = [v2 functionalInterfaceType];
                *buf = 67109634;
                *v38 = v19;
                *&v38[4] = 2048;
                *&v38[6] = v20;
                v39 = 2112;
                v40 = v9;
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "powerCostDL changed to %hhu as loaded LQM changed on interface type %ld noi: %@", buf, 0x1Cu);
              }

              [v9 setPowerCostDL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v2, "powerCostDL"))}];
            }

            else if ([a1[6] isEqualToString:@"powerCostUL"])
            {
              v21 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                v23 = [v2 powerCostUL];
                v24 = [v2 functionalInterfaceType];
                *buf = 67109634;
                *v38 = v23;
                *&v38[4] = 2048;
                *&v38[6] = v24;
                v39 = 2112;
                v40 = v9;
                _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "powerCostUL changed to %hhu as loaded LQM changed on interface type %ld noi: %@", buf, 0x1Cu);
              }

              [v9 setPowerCostUL:{+[NetworkAnalyticsEngine mapPowerCost:](NetworkAnalyticsEngine, "mapPowerCost:", objc_msgSend(v2, "powerCostUL"))}];
            }

            else if ([a1[6] isEqualToString:@"radioTechnology"])
            {
              [v9 setInterfaceClass:{+[NetworkAnalyticsEngine mapRadioTechnology:](NetworkAnalyticsEngine, "mapRadioTechnology:", objc_msgSend(v2, "radioTechnology"))}];
              v25 = noiLogHandle;
              if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                v27 = [v2 radioTechnology];
                v28 = [v9 interfaceClass];
                v29 = [v2 functionalInterfaceType];
                *buf = v32;
                *v38 = v27;
                *&v38[4] = 2048;
                *&v38[6] = v28;
                v39 = 2048;
                v40 = v29;
                v41 = 2112;
                v42 = v9;
                _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "radioTechnology changed to %hhu, interfaceClass changed to %ld on interface type %ld noi: %@", buf, 0x26u);
              }
            }
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v30 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[4];
      *buf = 138412290;
      *v38 = v31;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "Not StateRelay type of object %@", buf, 0xCu);
    }
  }
}

- (void)_evalPostingNotificationForNOI:(id)i forEvent:(id)event withInfo:(id)info
{
  v41 = *MEMORY[0x277D85DE8];
  iCopy = i;
  eventCopy = event;
  infoCopy = info;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke;
  v28[3] = &unk_27898A0C8;
  v28[4] = self;
  if (_evalPostingNotificationForNOI_forEvent_withInfo__onceToken != -1)
  {
    dispatch_once(&_evalPostingNotificationForNOI_forEvent_withInfo__onceToken, v28);
  }

  if (([eventCopy isEqualToString:@"linkQuality"] & 1) != 0 || objc_msgSend(eventCopy, "isEqualToString:", @"kNotificationNewPrimaryInterface"))
  {
    v11 = +[NetworkStateRelay getStateRelayFor:](NetworkStateRelay, "getStateRelayFor:", [iCopy functionalInterfaceType]);
    v12 = +[NetworkAnalyticsEngine getLoadedLQMOn:](NetworkAnalyticsEngine, "getLoadedLQMOn:", [iCopy functionalInterfaceType]);
    if ([v11 primary] && v12 >= 1)
    {
      v13 = _evalPostingNotificationForNOI_forEvent_withInfo__lastPrimaryQuality;
      v14 = [NetworkAnalyticsEngine mapLinkQuality:v12];
      v15 = v14;
      v16 = v13 >= 50 && v14 < 50 || v14 > 49 && v13 < 50;
      v20 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v21 = "not ";
        *buf = 138413570;
        v31 = 2112;
        v30 = iCopy;
        if (v16)
        {
          v21 = "";
        }

        v32 = eventCopy;
        v33 = 2048;
        v34 = v13;
        v35 = 1024;
        v36 = v12;
        v37 = 2048;
        v38 = v15;
        v39 = 2080;
        v40 = v21;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "noi: %@, event: %@, oldLoadedLqm: %ld, rawLoadedLqm: %d, newLoadedLqm: %ld, %sposting", buf, 0x3Au);
      }

      if (v16 && !_evalPostingNotificationForNOI_forEvent_withInfo__debouncing++)
      {
        v23 = dispatch_time(0, 1000000000);
        queue = [(AnalyticsEngineCore *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke_107;
        block[3] = &unk_27898A7D0;
        v26 = eventCopy;
        selfCopy = self;
        dispatch_after(v23, queue, block);
      }

      _evalPostingNotificationForNOI_forEvent_withInfo__lastPrimaryQuality = v15;
    }

    else
    {
      v17 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v30 = iCopy;
        v31 = 2112;
        v32 = eventCopy;
        v33 = 1024;
        LODWORD(v34) = v12;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "noi: %@, event: %@, rawLoadedLqm: %d, don't qualify", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v18 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v30 = iCopy;
      v31 = 2112;
      v32 = eventCopy;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "noi: %@, event: %@, not a change in linkQuality or primary interface", buf, 0x16u);
    }
  }
}

uint64_t __71__NOIAnalyticsEngine__evalPostingNotificationForNOI_forEvent_withInfo___block_invoke_107(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "debounced posting event: %@", &v5, 0xCu);
  }

  notify_set_state(*(*(a1 + 40) + 160), 0);
  result = notify_post(*MEMORY[0x277D6B4C0]);
  _evalPostingNotificationForNOI_forEvent_withInfo__debouncing = 0;
  return result;
}

- (void)_resetRRCMetricCounters
{
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "RRC Metric: resetRRCMetricCounters", v4, 2u);
  }

  self->_ingressLQM = 0;
  self->_ingressBytesIn = 0;
  self->_ingressBytesOut = 0;
  self->_ingressPacketsIn = 0;
  self->_ingressPacketsOut = 0;
  self->_ingressDlThroughput = 0;
  self->_ingressUlThroughput = 0;
  self->_lastDisconnectedSecs = 0;
  self->_ingressMetricAvailable = 0;
}

- (BOOL)_initializeAllManagedNOIs
{
  v3 = +[NetworkAnalyticsModel modelGeneratedAt];
  v4 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];
  v5 = v4;
  if (v4)
  {
    [(SFNetworkOfInterest *)v4 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v5];
    [(SFNetworkOfInterest *)v5 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v5 setPowerCostUL:0];
  }

  v6 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:1 hasCustomSignature:0];

  if (v6)
  {
    [(SFNetworkOfInterest *)v6 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v6];
    [(SFNetworkOfInterest *)v6 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v6 setPowerCostUL:0];
  }

  v7 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];

  if (v7)
  {
    [(SFNetworkOfInterest *)v7 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v7];
    [(SFNetworkOfInterest *)v7 anchorPowerCostToLinkQuality];
  }

  v8 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:1 hasCustomSignature:0];

  if (v8)
  {
    [(SFNetworkOfInterest *)v8 setPredictionsGeneratedAt:v3];
    [(NSMutableSet *)self->managedNOIs addObject:v8];
    [(SFNetworkOfInterest *)v8 anchorPowerCostToLinkQuality];
  }

  v9 = [[SFNetworkOfInterest alloc] initWithSpec:2 isAny:1 isBuiltin:0 scopedToLOI:-1 flags:0 hasCustomSignature:0];

  if (v9)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v9];
    [(SFNetworkOfInterest *)v9 anchorPowerCostToLinkQuality];
  }

  v10 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:0 isBuiltin:1 scopedToLOI:0 flags:0 hasCustomSignature:0];

  if (v10)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v10];
    [(SFNetworkOfInterest *)v10 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v10 setPowerCostUL:0];
  }

  v11 = [[SFNetworkOfInterest alloc] initWithSpec:5 isAny:0 isBuiltin:1 scopedToLOI:1 flags:0 hasCustomSignature:0];

  if (v11)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v11];
    [(SFNetworkOfInterest *)v11 setPowerCostDL:0];
    [(SFNetworkOfInterest *)v11 setPowerCostUL:0];
  }

  v12 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:0 isBuiltin:1 scopedToLOI:0 flags:0 hasCustomSignature:0];

  if (v12)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v12];
    [(SFNetworkOfInterest *)v12 anchorPowerCostToLinkQuality];
  }

  v13 = [[SFNetworkOfInterest alloc] initWithSpec:3 isAny:0 isBuiltin:1 scopedToLOI:1 flags:0 hasCustomSignature:0];

  if (v13)
  {
    [(NSMutableSet *)self->managedNOIs addObject:v13];
    [(SFNetworkOfInterest *)v13 anchorPowerCostToLinkQuality];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke;
  v18[3] = &unk_27898BBE0;
  v18[4] = self;
  v18[5] = &v19;
  v15 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v18];
  v16 = v20[5];
  v20[5] = v15;

  _Block_object_dispose(&v19, 8);
  return 1;
}

uint64_t __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_2;
  v8[3] = &unk_27898BBB8;
  v8[4] = v5;
  return [v6 enumerateObjectsUsingBlock:v8];
}

void __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 functionalInterfaceType];
  v5 = [v3 isAny];
  v6 = [v3 isBuiltin];
  v7 = [v3 scopedToLOI];
  v8 = [v3 customSignature];
  v9 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__NOIAnalyticsEngine__initializeAllManagedNOIs__block_invoke_3;
  v11[3] = &unk_27898BB90;
  v12 = v3;
  v10 = v3;
  [NetworkAnalyticsEngine hasNetworkAttachmentOn:v4 isAny:v5 isBuiltin:v6 scopedToLOI:v7 hasCustomSignature:v8 queue:v9 reply:v11];
}

- (id)_validatedNOIs:(id)is orPredicate:(id)predicate
{
  isCopy = is;
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  managedNOIs = self->managedNOIs;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__NOIAnalyticsEngine__validatedNOIs_orPredicate___block_invoke;
  v13[3] = &unk_27898BC08;
  v14 = isCopy;
  v8 = v6;
  v15 = v8;
  v9 = isCopy;
  [(NSMutableSet *)managedNOIs enumerateObjectsUsingBlock:v13];
  v10 = v15;
  v11 = v8;

  return v8;
}

void __49__NOIAnalyticsEngine__validatedNOIs_orPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqual:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (void)_coreNOIMembershipChangeOn:(id)on forNOIs:(id)is isAddEvent:(BOOL)event
{
  eventCopy = event;
  v20 = *MEMORY[0x277D85DE8];
  onCopy = on;
  isCopy = is;
  if ([isCopy count])
  {
    v10 = [(NOIAnalyticsEngine *)self _clientNOIEvent:onCopy forNOIs:isCopy isAddEvent:eventCopy];
    v11 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v14 = 134218496;
      selfCopy = self;
      v16 = 2048;
      v17 = [v10 count];
      v18 = 1024;
      processIdentifier = [onCopy processIdentifier];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "%p acting on %lu NOIs for pid: %d", &v14, 0x1Cu);
    }

    if ([v10 count])
    {
      remoteObjectProxy = [onCopy remoteObjectProxy];
      [remoteObjectProxy haveNOIs:v10 tornDown:eventCopy ^ 1];
    }
  }
}

- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options connection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  connectionCopy = connection;
  v11 = [(NOIAnalyticsEngine *)self _validatedNOIs:forCopy orPredicate:predicate];
  v12 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = 134218498;
    selfCopy = self;
    v16 = 2112;
    v17 = forCopy;
    v18 = 2048;
    v19 = [v11 count];
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "%p subscribe to NOI: %@, found %lu", &v14, 0x20u);
  }

  [(NOIAnalyticsEngine *)self _coreNOIMembershipChangeOn:connectionCopy forNOIs:v11 isAddEvent:1];
}

- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options connection:(id)connection reply:(id)reply
{
  v70 = *MEMORY[0x277D85DE8];
  *&v55 = for;
  *(&v55 + 1) = predicate;
  keysCopy = keys;
  optionsCopy = options;
  v62 = optionsCopy;
  connectionCopy = connection;
  replyCopy = reply;
  v61 = replyCopy;
  context = objc_autoreleasePoolPush();
  v18 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v66 = 2112;
    v67 = keysCopy;
    v68 = 2112;
    v69 = optionsCopy;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "%p keys: %@, opt: %@", buf, 0x20u);
  }

  if (v55 == 0)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  selfCopy2 = self;
  v19 = MEMORY[0x277CBEB98];
  allKeys = [keysCopy allKeys];
  v50 = [v19 setWithArray:allKeys];

  if (([v50 isSubsetOfSet:supportedKeys] & 1) == 0)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];

    goto LABEL_29;
  }

  v47 = [(NOIAnalyticsEngine *)self _validatedNOIs:v55 orPredicate:?];
  if ([v47 count] != 1)
  {
    v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];

    goto LABEL_29;
  }

  anyObject = [v47 anyObject];
  v54 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [keysCopy allKeys];
  v21 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v21)
  {
    v49 = 0;
    v22 = *v57;
    v23 = realTimeLqm;
    v46 = *MEMORY[0x277CCA5B8];
LABEL_8:
    v24 = 0;
    v48 = v21;
    while (1)
    {
      if (*v57 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v56 + 1) + 8 * v24);
      if ([v23[95] containsObject:v25])
      {
        processIdentifier = [connectionCopy processIdentifier];
        if (processIdentifier >= 1)
        {
          v27 = pid_to_process_name(processIdentifier);
          v28 = selfCopy2->_predictionQueryClients;
          objc_sync_enter(v28);
          if (v27)
          {
            null = v27;
          }

          else
          {
            null = [MEMORY[0x277CBEB68] null];
          }

          v30 = null;
          [(NSMutableSet *)selfCopy2->_predictionQueryClients addObject:null];
          ++selfCopy2->_predictionQueryCount;

          v21 = v48;
          v23 = realTimeLqm;
          objc_sync_exit(v28);
        }
      }

      if ([supportedAsyncKeys containsObject:v25])
      {
        break;
      }

      v31 = anyObject;
      NSSelectorFromString(v25);
      if (objc_opt_respondsToSelector())
      {
        [v31 setValue:0 forKey:v25];
        v32 = [v31 valueForKey:v25];
        if (v32)
        {
          [v54 setObject:v32 forKeyedSubscript:v25];
        }

        else
        {
          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:v46 code:2 userInfo:0];

          v49 = v33;
        }
      }

      if (v21 == ++v24)
      {
        v21 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v21)
        {
          goto LABEL_8;
        }

        v34 = v49;
        goto LABEL_44;
      }
    }

    v36 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = v25;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "Operating on async key: %@", buf, 0xCu);
    }

    allKeys2 = [keysCopy allKeys];
    v38 = [allKeys2 count] > 1;

    if (v38)
    {

      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:v46 code:7 userInfo:0];

      v39 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v25;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEFAULT, "Unable to operate on async key when multiple keys provided: %@", buf, 0xCu);
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:options:reply:", v25];
      v41 = NSSelectorFromString(v40);
      if (objc_opt_respondsToSelector())
      {
        v42 = MEMORY[0x277CBEAE8];
        v43 = [objc_opt_class() instanceMethodSignatureForSelector:v41];
        v44 = [v42 invocationWithMethodSignature:v43];

        [v44 setTarget:selfCopy2];
        [v44 setSelector:v41];
        [v44 setArgument:&anyObject atIndex:2];
        [v44 setArgument:&v62 atIndex:3];
        [v44 setArgument:&v61 atIndex:4];
        [v44 invoke];

        v34 = v49;
        goto LABEL_31;
      }

      v45 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy = v25;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_DEFAULT, "Unable to operate on async key because object doesn't implement it: %@", buf, 0xCu);
      }

      v34 = [MEMORY[0x277CCA9B8] errorWithDomain:v46 code:2 userInfo:0];
    }

    v54 = 0;
  }

  else
  {
    v34 = 0;
  }

LABEL_44:

  replyCopy = v61;
  v35 = v54;
LABEL_30:
  v54 = v35;
  replyCopy[2](replyCopy);
LABEL_31:

  objc_autoreleasePoolPop(context);
}

- (void)unsubscribeToNOIs:(id)is connection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  isCopy = is;
  connectionCopy = connection;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = isCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(NOIAnalyticsEngine *)self _validatedNOIs:*(*(&v18 + 1) + 8 * v13) orPredicate:0, v18];
        if ([v14 count])
        {
          [v8 unionSet:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v11);
  }

  v15 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v8 count];
    *buf = 134218498;
    selfCopy = self;
    v24 = 2112;
    v25 = v9;
    v26 = 2048;
    v27 = v17;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "%p unsubscribe to NOI: %@, found %lu", buf, 0x20u);
  }

  [(NOIAnalyticsEngine *)self _coreNOIMembershipChangeOn:connectionCopy forNOIs:v8 isAddEvent:0, v18];
}

- (void)auditableLinkQuality:(id)quality options:(id)options reply:(id)reply
{
  replyCopy = reply;
  functionalInterfaceType = [quality functionalInterfaceType];
  queue = [(AnalyticsEngineCore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NOIAnalyticsEngine_auditableLinkQuality_options_reply___block_invoke;
  v11[3] = &unk_27898BC30;
  v12 = replyCopy;
  v10 = replyCopy;
  [NetworkAnalyticsEngine getAuditableLoadedLQMOn:functionalInterfaceType queue:queue reply:v11];
}

void __57__NOIAnalyticsEngine_auditableLinkQuality_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || v8)
  {
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "returning error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = [v7 mutableCopy];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{+[NetworkAnalyticsEngine mapLinkQuality:](NetworkAnalyticsEngine, "mapLinkQuality:", a2)}];
    [v10 setObject:v11 forKeyedSubscript:@"linkQuality"];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    [v10 setObject:v12 forKeyedSubscript:@"loadedLQM"];

    v16 = @"auditableLinkQuality";
    v17 = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v14 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)networkAttachmentInfo:(id)info options:(id)options reply:(id)reply
{
  replyCopy = reply;
  infoCopy = info;
  functionalInterfaceType = [infoCopy functionalInterfaceType];
  scopedToLOI = [infoCopy scopedToLOI];

  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__NOIAnalyticsEngine_networkAttachmentInfo_options_reply___block_invoke;
  v13[3] = &unk_27898BC58;
  v14 = replyCopy;
  v12 = replyCopy;
  [NetworkAnalyticsEngine usageToLOICorrelationFor:functionalInterfaceType scopedToLOI:scopedToLOI queue:queue reply:v13];
}

void __58__NOIAnalyticsEngine_networkAttachmentInfo_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [v5 copy];
    v11 = @"networkAttachmentInfo";
    v12 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Correlation: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)l2ThroughputMetrics:(id)metrics options:(id)options reply:(id)reply
{
  replyCopy = reply;
  functionalInterfaceType = [metrics functionalInterfaceType];
  queue = [(AnalyticsEngineCore *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__NOIAnalyticsEngine_l2ThroughputMetrics_options_reply___block_invoke;
  v11[3] = &unk_27898BC58;
  v12 = replyCopy;
  v10 = replyCopy;
  [NetworkAnalyticsEngine layer2MetricsOn:functionalInterfaceType queue:queue reply:v11];
}

void __56__NOIAnalyticsEngine_l2ThroughputMetrics_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "returning error: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else if (v5)
  {
    v8 = MEMORY[0x277D2CAF8];
    v29[0] = *MEMORY[0x277D2CAF8];
    v26 = [v5 objectForKey:?];
    if (v26)
    {
      [v5 objectForKey:*v8];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v25 = ;
    v30[0] = v25;
    v9 = MEMORY[0x277D2CAF0];
    v29[1] = *MEMORY[0x277D2CAF0];
    v24 = [v5 objectForKey:?];
    if (v24)
    {
      [v5 objectForKey:*v9];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v23 = ;
    v30[1] = v23;
    v10 = MEMORY[0x277D2CAD8];
    v29[2] = *MEMORY[0x277D2CAD8];
    v22 = [v5 objectForKey:?];
    if (v22)
    {
      [v5 objectForKey:*v10];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v31 = ;
    v11 = MEMORY[0x277D2CAD0];
    v29[3] = *MEMORY[0x277D2CAD0];
    v12 = [v5 objectForKey:v31];
    if (v12)
    {
      [v5 objectForKey:*v11];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v13 = ;
    v32 = v13;
    v29[4] = @"RRCIdleULThroughputKbps";
    v14 = [v5 objectForKey:?];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x277CBEB68] null];
    }

    v33 = v15;
    v29[5] = @"RRCIdleDLThroughputKbps";
    v16 = [v5 objectForKey:?];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB68] null];
    }

    v34 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
    if (!v16)
    {
    }

    if (!v14)
    {
    }

    v27 = @"l2ThroughputMetrics";
    v28 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v20 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v19;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)estTransferTime:(id)time options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  functionalInterfaceType = [time functionalInterfaceType];
  queue = [(AnalyticsEngineCore *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __52__NOIAnalyticsEngine_estTransferTime_options_reply___block_invoke;
  v13[3] = &unk_27898BC58;
  v14 = replyCopy;
  v12 = replyCopy;
  [NetworkAnalyticsEngine estimatedTransferTimeOn:functionalInterfaceType forPayloadInfo:optionsCopy queue:queue reply:v13];
}

void __52__NOIAnalyticsEngine_estTransferTime_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
    v7 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "eLQM: Returning data transfer time error = %@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v19[0] = @"kEstTransferTimeULSecs";
      v8 = [v5 objectForKey:?];
      v9 = v8;
      if (!v8)
      {
        v9 = [MEMORY[0x277CBEB68] null];
      }

      v20[0] = v9;
      v19[1] = @"kEstTransferTimeDLSecs";
      v10 = [v5 objectForKey:?];
      v11 = v10;
      if (!v10)
      {
        v11 = [MEMORY[0x277CBEB68] null];
      }

      v20[1] = v11;
      v19[2] = @"kEstTransferTimeConfidence";
      v12 = [v5 objectForKey:?];
      v13 = v12;
      if (!v12)
      {
        v13 = [MEMORY[0x277CBEB68] null];
      }

      v20[2] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
      if (!v12)
      {
      }

      if (!v10)
      {
      }

      if (!v8)
      {
      }

      v17 = @"estTransferTime";
      v18 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    }

    else
    {
      v15 = 0;
    }

    (*(*(a1 + 32) + 16))();
    v16 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "eLQM: Returning data transfer time dictionary = %@", buf, 0xCu);
    }
  }
}

- (void)canUseOnAlternate:(id)alternate options:(id)options reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  alternateCopy = alternate;
  optionsCopy = options;
  replyCopy = reply;
  interface = [alternateCopy interface];
  v12 = [optionsCopy objectForKeyedSubscript:@"arg1"];
  v13 = &v22;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  if (v12)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = v23;
  }

  else
  {
    isKindOfClass = 0;
  }

  v25 = isKindOfClass & 1;
  if (*(v13 + 24) == 1)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke;
    v21[3] = &unk_27898BC80;
    v21[4] = &v22;
    [v12 enumerateKeysAndObjectsUsingBlock:v21];
  }

  else
  {
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "bundleNamesWithState is not an instance of NSDictionary: %@", buf, 0xCu);
    }
  }

  if (interface == 1 && (v23[3] & 1) != 0)
  {
    queue = [(AnalyticsEngineCore *)self queue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke_120;
    v19[3] = &unk_27898BCA8;
    v20 = replyCopy;
    [CellFallbackHandler canUseApps:v12 replyQueue:queue reply:v19];

    v17 = v20;
  }

  else
  {
    if (((interface != 1) & v23[3]) != 0)
    {
      v18 = 45;
    }

    else
    {
      v18 = 22;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v17);
  }

  _Block_object_dispose(&v22, 8);
}

void __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
    v9 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "bundleNamesWithState contains invalid key-value pair: key %@, value %@", &v10, 0x16u);
    }
  }
}

void __54__NOIAnalyticsEngine_canUseOnAlternate_options_reply___block_invoke_120(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a6;
  if (v11)
  {
    (*(*(a1 + 32) + 16))();
    v12 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "returning: error %@", buf, 0xCu);
    }
  }

  else
  {
    v18[0] = @"codes";
    v18[1] = @"reasons";
    v19[0] = v9;
    v19[1] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v16 = @"canUseOnAlternate";
    v17 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    (*(*(a1 + 32) + 16))();
    v15 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "returning: %@", buf, 0xCu);
    }
  }
}

- (void)_getQueryStatistics:(id *)statistics
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = self->_predictionQueryClients;
  objc_sync_enter(v5);
  v6 = noiLogHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    predictionQueryCount = self->_predictionQueryCount;
    v8 = [(NSMutableSet *)self->_predictionQueryClients count];
    v9 = 134218240;
    v10 = predictionQueryCount;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "AWD Prediction Metrics: predictionQueryClients:%lu predictionQueryCount:%lu", &v9, 0x16u);
  }

  statistics->var0 = [(NSMutableSet *)self->_predictionQueryClients count];
  statistics->var1 = self->_predictionQueryCount;
  objc_sync_exit(v5);
}

- (void)_resetQueryStatistics
{
  v3 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "AWD Prediction Metrics: resetQueryStatistics", v5, 2u);
  }

  v4 = self->_predictionQueryClients;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_predictionQueryClients removeAllObjects];
  self->_predictionQueryCount = 0;
  objc_sync_exit(v4);
}

+ (id)queue
{
  queue = sharedInstance_0;
  if (sharedInstance_0)
  {
    queue = [sharedInstance_0 queue];
    v2 = vars8;
  }

  return queue;
}

+ (void)resetQueryStatistics
{
  if (sharedInstance_0)
  {
    [sharedInstance_0 _resetQueryStatistics];
  }
}

+ (void)getQueryStatistics:(id *)statistics
{
  if (sharedInstance_0)
  {
    [sharedInstance_0 _getQueryStatistics:statistics];
  }

  else
  {
    statistics->var0 = 0;
    statistics->var1 = 0;
  }
}

- (void)clientTransactionsRelease
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = self->liveClients;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->liveClients count])
  {
    v4 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NOI analytics engine xpc shutdown", &v7, 2u);
    }

    self->xpcShutdown = 1;
    noiLiveClientTransaction = self->_noiLiveClientTransaction;
    if (noiLiveClientTransaction)
    {
      self->_noiLiveClientTransaction = 0;

      v6 = noiLogHandle;
      if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "%p now not holding os_transaction for noi_live_clients", &v7, 0xCu);
      }
    }
  }

  objc_sync_exit(v3);
}

- (void)_collectBasicFieldsForRRCMetric:(id)metric durationUsecs:(unint64_t)usecs
{
  metricCopy = metric;
  [metricCopy setPeriodDurationSecs:usecs / 0xF4240];
  [metricCopy setLastDisconnectedSecs:self->_lastDisconnectedSecs];
  [metricCopy setIngressLQM:self->_ingressLQM];
  [metricCopy setEgressLQM:{+[NetworkAnalyticsEngine getLoadedLQMOn:](NetworkAnalyticsEngine, "getLoadedLQMOn:", 5)}];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7 = self->liveClients;
  objc_sync_enter(v7);
  liveClients = self->liveClients;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__NOIAnalyticsEngine__collectBasicFieldsForRRCMetric_durationUsecs___block_invoke;
  v9[3] = &unk_27898BCD0;
  v9[4] = &v14;
  v9[5] = &v10;
  [(NSMutableDictionary *)liveClients enumerateKeysAndObjectsUsingBlock:v9];
  objc_sync_exit(v7);

  [metricCopy setAnyListenerCount:*(v11 + 6)];
  [metricCopy setBackgroundListenerCount:*(v15 + 6)];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __68__NOIAnalyticsEngine__collectBasicFieldsForRRCMetric_durationUsecs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [a3 subscribedNOIs];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= ([*(*(&v10 + 1) + 8 * i) flags] & 1) == 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);

    if (v7)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
  }
}

- (void)_collectDataUsageFieldsForRRCMetric:(id)metric layer2EgressMetric:(id)egressMetric underrun:(BOOL *)underrun
{
  metricCopy = metric;
  *underrun = 0;
  v8 = *MEMORY[0x277D2CB28];
  egressMetricCopy = egressMetric;
  v10 = [egressMetricCopy objectForKeyedSubscript:v8];
  v11 = [egressMetricCopy objectForKeyedSubscript:*MEMORY[0x277D2CB58]];
  v12 = [egressMetricCopy objectForKeyedSubscript:*MEMORY[0x277D2CB38]];
  v13 = [egressMetricCopy objectForKeyedSubscript:*MEMORY[0x277D2CB68]];
  v14 = [egressMetricCopy objectForKeyedSubscript:*MEMORY[0x277D2CAF0]];
  v15 = [egressMetricCopy objectForKeyedSubscript:*MEMORY[0x277D2CAD0]];

  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedLongValue = [v10 unsignedLongValue];
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    unsignedLongValue = 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue2 = [v11 unsignedLongValue];
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_9:
  unsignedLongValue2 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue3 = [v12 unsignedLongValue];
    if (!v13)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_13:
  unsignedLongValue3 = 0;
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongValue4 = [v13 unsignedLongValue];
    if (!v14)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_17:
  unsignedLongValue4 = 0;
  if (!v14)
  {
LABEL_20:
    unsignedLongValue5 = 0;
    goto LABEL_21;
  }

LABEL_18:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  unsignedLongValue5 = [v14 unsignedLongValue];
LABEL_21:
  v25 = unsignedLongValue5;
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedLongValue6 = [v15 unsignedLongValue];
  }

  else
  {
    unsignedLongValue6 = 0;
  }

  ingressBytesIn = self->_ingressBytesIn;
  if (unsignedLongValue >= ingressBytesIn && ([metricCopy setBytesIn:unsignedLongValue - ingressBytesIn], ingressBytesOut = self->_ingressBytesOut, unsignedLongValue2 >= ingressBytesOut) && (objc_msgSend(metricCopy, "setBytesOut:", unsignedLongValue2 - ingressBytesOut), ingressPacketsIn = self->_ingressPacketsIn, unsignedLongValue3 >= ingressPacketsIn) && (objc_msgSend(metricCopy, "setPacketsIn:", unsignedLongValue3 - ingressPacketsIn), ingressPacketsOut = self->_ingressPacketsOut, unsignedLongValue4 >= ingressPacketsOut))
  {
    [metricCopy setPacketsOut:unsignedLongValue4 - ingressPacketsOut];
    [metricCopy setIngressUlThroughputBps:self->_ingressUlThroughput];
    [metricCopy setIngressDlThroughputBps:self->_ingressDlThroughput];
    periodDurationSecs = [metricCopy periodDurationSecs];
    v24 = periodDurationSecs;
    if (!unsignedLongValue6)
    {
      if (periodDurationSecs)
      {
        unsignedLongValue6 = 8 * [metricCopy bytesIn] / periodDurationSecs;
      }

      else
      {
        unsignedLongValue6 = 0;
      }
    }

    [metricCopy setEgressDlThroughputBps:unsignedLongValue6];
    if (!v25 && v24)
    {
      [metricCopy bytesOut];
    }

    [metricCopy setEgressUlThroughputBps:?];
  }

  else
  {
    *underrun = 1;
  }
}

- (void)_collectTrafficClassFieldsForRRCMetric:(id)metric activeApps:(id)apps trafficClassFlags:(unsigned int)flags durationUsecs:(unint64_t)usecs
{
  v7 = *&flags;
  appsCopy = apps;
  v9 = usecs / 0xF4240;
  metricCopy = metric;
  [metricCopy setPeriodDurationTCEnabledSecs:v9];
  if ([appsCopy count])
  {
    [metricCopy setUniqueActiveAppCount:{objc_msgSend(appsCopy, "count")}];
    v11 = [appsCopy componentsJoinedByString:{@", "}];
    [metricCopy setActiveNameDuringPeriod:v11];
  }

  else
  {
    [metricCopy setUniqueActiveAppCount:0];
    [metricCopy setActiveNameDuringPeriod:&stru_2847966D8];
    v7 = 0;
  }

  [metricCopy setTrafficClassFlags:v7];
}

@end