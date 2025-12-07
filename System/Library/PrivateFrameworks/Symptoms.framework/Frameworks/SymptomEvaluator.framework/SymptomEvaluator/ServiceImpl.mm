@interface ServiceImpl
- (BOOL)assertEntitlement:(id)entitlement entitlement:(unint64_t)a4 orWaiveOnIntent:(id)intent;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ServiceImpl)initWithQueue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper;
- (id)nwEndpointArrayFromXPCObject:(id)object;
- (uint64_t)_checkRateLimitForConnection:(os_unfair_lock_s *)connection;
- (uint64_t)_isServiceReady;
- (void)_cacheEntitlementValuesForConnection:(id)connection;
- (void)_handleNOIClientForConnection:(void *)connection;
- (void)_serviceReadyCheckPointRelease;
- (void)abortRNFTestWithReply:(id)reply;
- (void)assertFactString:(id)string module:(id)module asSymptom:(BOOL)symptom reply:(id)reply;
- (void)cleanupNDFDeviceRecordsWithReply:(id)reply;
- (void)clientTransactionsRelease;
- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply;
- (void)dealloc;
- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)prefix interfaceType:(id)type radioType:(id)radioType radioBand:(id)band latitude:(double)latitude longitude:(double)longitude reply:(id)reply;
- (void)fetchNDFDeviceRecordsWithReply:(id)reply;
- (void)getExpertSystemsStatus:(id)status;
- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply;
- (void)getOption:(id)option inScopes:(id)scopes reply:(id)reply;
- (void)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (void)handlePendingXPCConnection:(uint64_t)connection;
- (void)identifierForUUID:(id)d reply:(id)reply;
- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options reply:(id)reply;
- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply;
- (void)ndfClientCheckInWithReply:(id)reply;
- (void)ndfClientSubscriptionIsActive:(BOOL)active reply:(id)reply;
- (void)networkRestrictsMulticastTrafficWithReply:(id)reply;
- (void)performActionWithOptions:(id)options inScopes:(id)scopes reply:(id)reply;
- (void)performAppEndpointTrackingPeriodicTasksWithReply:(id)reply;
- (void)performAppExperiencePeriodicTasksWithReply:(id)reply;
- (void)performAppPeriodicTasksWithReply:(id)reply;
- (void)performAppTrackingPeriodicTasksWithReply:(id)reply;
- (void)performPersistentStoreHealthCheckWithReply:(id)reply;
- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions reply:(id)reply;
- (void)pingEndpoints:(id)endpoints reply:(id)reply;
- (void)postCoreAnalyticsEvent:(id)event forEventName:(id)name reply:(id)reply;
- (void)remotePingToAddress:(id)address interface:(unint64_t)interface interval:(double)interval count:(int64_t)count timeout:(double)timeout reply:(id)reply;
- (void)resetDataFor:(id)for nameKind:(id)kind inScopes:(id)scopes reply:(id)reply;
- (void)resetUsageFor:(id)for nameKind:(id)kind reply:(id)reply;
- (void)resumePendingXPCConnections;
- (void)retrieveActivityMetrics:(id)metrics reply:(id)reply;
- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply;
- (void)sendPayloadToDaemonWithReply:(id)reply;
- (void)setOption:(id)option inScopes:(id)scopes reply:(id)reply;
- (void)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (void)setUsageOption:(id)option reply:(id)reply;
- (void)shutdown;
- (void)startRNFTestWithOptions:(id)options scenarioName:(id)name reply:(id)reply;
- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options;
- (void)trainModelAndScore:(BOOL)score lastScoreDate:(id)date reply:(id)reply;
- (void)triggerSendPayloadToDaemonWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply;
- (void)unsubscribeToNOIs:(id)is;
- (void)updatedNDFDeviceRecords:(id)records reply:(id)reply;
- (void)waitForOSLogErrorSymptomWithReply:(id)reply;
@end

@implementation ServiceImpl

- (uint64_t)_isServiceReady
{
  if (self)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __30__ServiceImpl__isServiceReady__block_invoke;
    v3[3] = &unk_27898A848;
    v3[4] = self;
    v3[5] = &v4;
    sf_synchronize(self + 18, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t __30__ServiceImpl__isServiceReady__block_invoke(uint64_t result)
{
  *(*(*(result + 40) + 8) + 24) = *(*(result + 32) + 16) != 0;
  v1 = *(result + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    v2 = *(*(result + 40) + 8);
    v3 = *(v2 + 24) == 1 && *(v1 + 24) != 0;
    *(v2 + 24) = v3;
    v4 = *(*(result + 40) + 8);
    v5 = *(v4 + 24) == 1 && *(*(result + 32) + 8) != 0;
    *(v4 + 24) = v5;
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  if (listener_shouldAcceptNewConnection__onceToken != -1)
  {
    [ServiceImpl listener:shouldAcceptNewConnection:];
  }

  v8 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = qos_class_self();
    v15 = 136315138;
    v16 = qos_string(v10);
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "ServiceImpl listener:shouldAcceptNewConnection: QoS %s", &v15, 0xCu);
  }

  [(ServiceImpl *)self _cacheEntitlementValuesForConnection:connectionCopy];
  if (!self->_isHelper)
  {
    [connectionCopy setExportedInterface:listener_shouldAcceptNewConnection__extendedServiceInterface];
    [connectionCopy setExportedObject:self];
LABEL_12:
    [(ServiceImpl *)self handlePendingXPCConnection:connectionCopy];
    v13 = 1;
    goto LABEL_9;
  }

  v11 = [(ServiceImpl *)self assertEntitlement:connectionCopy entitlement:0 orWaiveOnIntent:0];
  v12 = [(ServiceImpl *)self assertEntitlement:connectionCopy entitlement:1 orWaiveOnIntent:0];
  if (v11 || v12)
  {
    [connectionCopy setExportedObject:self];
    [connectionCopy setExportedInterface:listener_shouldAcceptNewConnection__extendedServiceInterface];
    goto LABEL_12;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

void __50__ServiceImpl_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28480FB30];
  v1 = listener_shouldAcceptNewConnection__extendedServiceInterface;
  listener_shouldAcceptNewConnection__extendedServiceInterface = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setClasses:v10 forSelector:sel_inquireNOIFor_orPredicate_requestedKeys_options_reply_ argumentIndex:3 ofReply:0];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setClasses:v8 forSelector:sel_unsubscribeToNOIs_ argumentIndex:0 ofReply:0];
  v9 = MEMORY[0x277D86440];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setXPCType:MEMORY[0x277D86440] forSelector:sel_pingEndpoints_reply_ argumentIndex:0 ofReply:0];
  [listener_shouldAcceptNewConnection__extendedServiceInterface setXPCType:v9 forSelector:sel_sendMessage_toEndpoints_reply_ argumentIndex:1 ofReply:0];
}

- (void)_cacheEntitlementValuesForConnection:(id)connection
{
  v88 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v82 = 138477827;
    v83 = connectionCopy;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: Preparing to cache entitlements for: %{private}@", &v82, 0xCu);
  }

  v5 = objc_alloc_init(SFEntitlements);
  v6 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.train"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsTrain:](v5, "setSymptomAnalyticsTrain:", [v6 BOOLValue]);
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      symptomAnalyticsTrain = [(SFEntitlements *)v5 symptomAnalyticsTrain];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.train";
      v84 = 1024;
      v85 = symptomAnalyticsTrain;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v10 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.sweep"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSweep:](v5, "setSymptomAnalyticsSweep:", [v10 BOOLValue]);
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      symptomAnalyticsSweep = [(SFEntitlements *)v5 symptomAnalyticsSweep];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.sweep";
      v84 = 1024;
      v85 = symptomAnalyticsSweep;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v14 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.refresh"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsRefresh:](v5, "setSymptomAnalyticsRefresh:", [v14 BOOLValue]);
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      symptomAnalyticsRefresh = [(SFEntitlements *)v5 symptomAnalyticsRefresh];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.refresh";
      v84 = 1024;
      v85 = symptomAnalyticsRefresh;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v18 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.setwatchpoint"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSetWatchpoint:](v5, "setSymptomAnalyticsSetWatchpoint:", [v18 BOOLValue]);
    v19 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v20 = v19;
      symptomAnalyticsSetWatchpoint = [(SFEntitlements *)v5 symptomAnalyticsSetWatchpoint];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.setwatchpoint";
      v84 = 1024;
      v85 = symptomAnalyticsSetWatchpoint;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v22 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.network_bitmap"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsNetworkBitmap:](v5, "setSymptomAnalyticsNetworkBitmap:", [v22 BOOLValue]);
    v23 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      symptomAnalyticsNetworkBitmap = [(SFEntitlements *)v5 symptomAnalyticsNetworkBitmap];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.network_bitmap";
      v84 = 1024;
      v85 = symptomAnalyticsNetworkBitmap;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v26 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.query"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsQuery:](v5, "setSymptomAnalyticsQuery:", [v26 BOOLValue]);
    v27 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v28 = v27;
      symptomAnalyticsQuery = [(SFEntitlements *)v5 symptomAnalyticsQuery];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.query";
      v84 = 1024;
      v85 = symptomAnalyticsQuery;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v30 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.linkAdvisory"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsLinkAdvisory:](v5, "setSymptomsLinkAdvisory:", [v30 BOOLValue]);
    v31 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v32 = v31;
      symptomsLinkAdvisory = [(SFEntitlements *)v5 symptomsLinkAdvisory];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.linkAdvisory";
      v84 = 1024;
      v85 = symptomsLinkAdvisory;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v34 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.reset"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsReset:](v5, "setSymptomAnalyticsReset:", [v34 BOOLValue]);
    v35 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v36 = v35;
      symptomAnalyticsReset = [(SFEntitlements *)v5 symptomAnalyticsReset];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.reset";
      v84 = 1024;
      v85 = symptomAnalyticsReset;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v38 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.configure"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsConfigure:](v5, "setSymptomAnalyticsConfigure:", [v38 BOOLValue]);
    v39 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v40 = v39;
      symptomAnalyticsConfigure = [(SFEntitlements *)v5 symptomAnalyticsConfigure];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.configure";
      v84 = 1024;
      v85 = symptomAnalyticsConfigure;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v42 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.setsnapshot"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsSetSnapshot:](v5, "setSymptomAnalyticsSetSnapshot:", [v42 BOOLValue]);
    v43 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v44 = v43;
      symptomAnalyticsSetSnapshot = [(SFEntitlements *)v5 symptomAnalyticsSetSnapshot];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.setsnapshot";
      v84 = 1024;
      v85 = symptomAnalyticsSetSnapshot;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v46 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptom_analytics.healthcheck"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomAnalyticsHealthCheck:](v5, "setSymptomAnalyticsHealthCheck:", [v46 BOOLValue]);
    v47 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v48 = v47;
      symptomAnalyticsHealthCheck = [(SFEntitlements *)v5 symptomAnalyticsHealthCheck];
      v82 = 138478339;
      v83 = @"com.apple.symptom_analytics.healthcheck";
      v84 = 1024;
      v85 = symptomAnalyticsHealthCheck;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v50 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.NetworkOfInterest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetworkOfInterest:](v5, "setSymptomsNetworkOfInterest:", [v50 BOOLValue]);
    v51 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v52 = v51;
      symptomsNetworkOfInterest = [(SFEntitlements *)v5 symptomsNetworkOfInterest];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.NetworkOfInterest";
      v84 = 1024;
      v85 = symptomsNetworkOfInterest;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v54 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.NetDomains.admin"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetDomainsAdmin:](v5, "setSymptomsNetDomainsAdmin:", [v54 BOOLValue]);
    v55 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v56 = v55;
      symptomsNetDomainsAdmin = [(SFEntitlements *)v5 symptomsNetDomainsAdmin];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.NetDomains.admin";
      v84 = 1024;
      v85 = symptomsNetDomainsAdmin;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v58 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.rnftest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsRNFTest:](v5, "setSymptomsRNFTest:", [v58 BOOLValue]);
    v59 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v60 = v59;
      symptomsRNFTest = [(SFEntitlements *)v5 symptomsRNFTest];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.rnftest";
      v84 = 1024;
      v85 = symptomsRNFTest;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v62 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.symptomstooltest"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsSymptomsToolTest:](v5, "setSymptomsSymptomsToolTest:", [v62 BOOLValue]);
    v63 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v64 = v63;
      symptomsSymptomsToolTest = [(SFEntitlements *)v5 symptomsSymptomsToolTest];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.symptomstooltest";
      v84 = 1024;
      v85 = symptomsSymptomsToolTest;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v64, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v66 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms_ndf"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNDF:](v5, "setSymptomsNDF:", [v66 BOOLValue]);
    v67 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v68 = v67;
      symptomsNDF = [(SFEntitlements *)v5 symptomsNDF];
      v82 = 138478339;
      v83 = @"com.apple.symptoms_ndf";
      v84 = 1024;
      v85 = symptomsNDF;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v68, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v70 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.cosm.admin"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsCOSMAdmin:](v5, "setSymptomsCOSMAdmin:", [v70 BOOLValue]);
    v71 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v72 = v71;
      symptomsCOSMAdmin = [(SFEntitlements *)v5 symptomsCOSMAdmin];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.cosm.admin";
      v84 = 1024;
      v85 = symptomsCOSMAdmin;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v72, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v74 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.nw_activity.database"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNWActivityDatabase:](v5, "setSymptomsNWActivityDatabase:", [v74 BOOLValue]);
    v75 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v76 = v75;
      symptomsNWActivityDatabase = [(SFEntitlements *)v5 symptomsNWActivityDatabase];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.nw_activity.database";
      v84 = 1024;
      v85 = symptomsNWActivityDatabase;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  v78 = [(__CFString *)connectionCopy valueForEntitlement:@"com.apple.symptoms.NetworkDiagnostics"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SFEntitlements setSymptomsNetworkDiagnostics:](v5, "setSymptomsNetworkDiagnostics:", [v78 BOOLValue]);
    v79 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v80 = v79;
      symptomsNetworkDiagnostics = [(SFEntitlements *)v5 symptomsNetworkDiagnostics];
      v82 = 138478339;
      v83 = @"com.apple.symptoms.NetworkDiagnostics";
      v84 = 1024;
      v85 = symptomsNetworkDiagnostics;
      v86 = 2048;
      v87 = connectionCopy;
      _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: caching entitlement %{private}@ = %d for %p", &v82, 0x1Cu);
    }
  }

  [(__CFString *)connectionCopy setUserInfo:v5];
}

- (void)_handleNOIClientForConnection:(void *)connection
{
  v3 = a2;
  if (connection)
  {
    if (_handleNOIClientForConnection__onceToken != -1)
    {
      [ServiceImpl _handleNOIClientForConnection:];
    }

    if ([connection assertEntitlement:v3 entitlement:11 orWaiveOnIntent:0])
    {
      [v3 setRemoteObjectInterface:_handleNOIClientForConnection__clientInterface];
      objc_initWeak(&location, v3);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __45__ServiceImpl__handleNOIClientForConnection___block_invoke_2;
      v5[3] = &unk_27898E6A0;
      v5[4] = connection;
      objc_copyWeak(&v6, &location);
      [v3 setInvalidationHandler:v5];
      v4 = connection[3];
      if (v4)
      {
        [v4 clientEvent:v3 isAddEvent:1];
      }

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __45__ServiceImpl__handleNOIClientForConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A648];
  v1 = _handleNOIClientForConnection__clientInterface;
  _handleNOIClientForConnection__clientInterface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __45__ServiceImpl__handleNOIClientForConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v1 clientEvent:WeakRetained isAddEvent:0];
  }
}

void __42__ServiceImpl_resumePendingXPCConnections__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "ServiceImpl: Resuming pending XPC connection %@", &v5, 0xCu);
  }

  [(ServiceImpl *)*(a1 + 32) _handleNOIClientForConnection:v3];
  [v3 activate];
  [*(a1 + 40) addObject:v3];
}

- (uint64_t)_checkRateLimitForConnection:(os_unfair_lock_s *)connection
{
  v3 = a2;
  v4 = v3;
  if (connection)
  {
    processIdentifier = [v3 processIdentifier];
    v6 = pid_to_uuid_string(processIdentifier);
    v7 = v6;
    if (v6)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__ServiceImpl__checkRateLimitForConnection___block_invoke;
      v9[3] = &unk_27898C4E0;
      v9[4] = connection;
      v10 = v6;
      v11 = &v13;
      v12 = processIdentifier;
      sf_synchronize(connection + 17, v9);
      LOBYTE(connection) = *(v14 + 24);

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      [(ServiceImpl *)processIdentifier _checkRateLimitForConnection:?];
      LOBYTE(connection) = v13;
    }
  }

  return connection & 1;
}

void __44__ServiceImpl__checkRateLimitForConnection___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  if ([*(*(a1 + 32) + 48) count] >= 0xB)
  {
    v3 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 67109120;
      v14 = 10;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "Request Time cache (size %d) exceeded maximum size. Clearing now", &v13, 8u);
    }

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;
  }

  v7 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v8 = v7;
  if (!v7 || ([v7 timeIntervalSinceDate:v2], fabs(v9) >= 20.0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 32) + 48) setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  v10 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 56);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = 67109890;
    v14 = v11;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v2;
    v19 = 2080;
    v20 = v12;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "pid: %d, last allowed request: %@, now: %@, allowed: %s", &v13, 0x26u);
  }
}

- (BOOL)assertEntitlement:(id)entitlement entitlement:(unint64_t)a4 orWaiveOnIntent:(id)intent
{
  v27 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  intentCopy = intent;
  if (assertEntitlement_entitlement_orWaiveOnIntent__onceToken != -1)
  {
    [ServiceImpl assertEntitlement:entitlement:orWaiveOnIntent:];
  }

  userInfo = [entitlementCopy userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([userInfo BOOLForEntitlement:a4])
  {
    v10 = 1;
  }

  else
  {
    v11 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = v11;
      v13 = [SFEntitlements stringForEntitlement:a4];
      v23 = 138478083;
      v24 = v13;
      v25 = 1024;
      processIdentifier = [entitlementCopy processIdentifier];
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: entitlement %{private}@ is missing from %d", &v23, 0x12u);
    }

    if (intentCopy)
    {
      v14 = MEMORY[0x277CBEB98];
      allKeys = [intentCopy allKeys];
      v16 = [v14 setWithArray:allKeys];

      if ([assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave isSubsetOfSet:v16])
      {
        v17 = [v16 mutableCopy];
        [v17 minusSet:assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave];
        v18 = [v17 count];
        v19 = [v16 count];
        v10 = v18 == v19;
        v20 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v21 = "not ";
          if (v18 == v19)
          {
            v21 = "";
          }

          v23 = 136315138;
          v24 = v21;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: intent fallback did %ssucceed", &v23, 0xCu);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void __61__ServiceImpl_assertEntitlement_entitlement_orWaiveOnIntent___block_invoke()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v9[0] = @"instant";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v2 = [v0 initWithArray:v1];
  v3 = assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave;
  assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustHave = v2;

  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v8[0] = @"historicalFlow";
  v8[1] = @"instantFlow";
  v8[2] = @"historical";
  v8[3] = @"sweepUsage";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v6 = [v4 initWithArray:v5];
  v7 = assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave;
  assertEntitlement_entitlement_orWaiveOnIntent__waiverIntentMustNotHave = v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->featureReadyObserver];

  v4.receiver = self;
  v4.super_class = ServiceImpl;
  [(ServiceImpl *)&v4 dealloc];
}

- (ServiceImpl)initWithQueue:(id)queue noiEngine:(id)engine isHelper:(BOOL)helper
{
  v34 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  engineCopy = engine;
  v31.receiver = self;
  v31.super_class = ServiceImpl;
  v11 = [(ServiceImpl *)&v31 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queue, queue);
    if (!v12->_queue)
    {
      v13 = SFGetQueueAttribute(4u);
      v14 = SFGetStandardQueue(4);
      v15 = dispatch_queue_create_with_target_V2("com.apple.symptoms.serviceimpl.service.queue", v13, v14);
      queue = v12->_queue;
      v12->_queue = v15;
    }

    v12->_isHelper = helper;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lastAllowedRequests = v12->lastAllowedRequests;
    v12->lastAllowedRequests = v17;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke;
    block[3] = &unk_27898A0C8;
    v19 = v12;
    v30 = v19;
    if (initWithQueue_noiEngine_isHelper__onceToken != -1)
    {
      dispatch_once(&initWithQueue_noiEngine_isHelper__onceToken, block);
    }

    objc_storeStrong(v19 + 3, engine);
    v20 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = v19[3];
      *buf = 134217984;
      v33 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: noi engine set as: %p", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_178;
    v27[3] = &unk_27898A690;
    v23 = v19;
    v28 = v23;
    v24 = [defaultCenter addObserverForName:@"kNotificationOfPartialInitialization" object:0 queue:0 usingBlock:v27];
    v25 = v23[7];
    v23[7] = v24;
  }

  return v12;
}

uint64_t __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke(uint64_t result)
{
  *(*(result + 32) + 72) = 0;
  *(*(result + 32) + 68) = 0;
  return result;
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_178(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [a2 userInfo];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"ObjectKey"];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(*(a1 + 32) + 8);
          *buf = 134218240;
          v35 = v5;
          v36 = 2048;
          v37 = v7;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: notification sets flow engine: %p, was: %p", buf, 0x16u);
        }

        v8 = *(a1 + 32);
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_180;
        v31[3] = &unk_27898A7D0;
        v32 = v8;
        v33 = v5;
        sf_synchronize(v8 + 18, v31);
        v9 = *(a1 + 32);
        v10 = v9[5];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2;
        block[3] = &unk_27898A0C8;
        v30 = v9;
        v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v10, v11);

        v12 = v32;
LABEL_15:

        goto LABEL_19;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v18 = analyticsLogHandle;
      if (isKindOfClass)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(*(a1 + 32) + 16);
          *buf = 134218240;
          v35 = v5;
          v36 = 2048;
          v37 = v19;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: notification sets network engine: %p, was: %p", buf, 0x16u);
        }

        v20 = *(a1 + 32);
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_182;
        v26[3] = &unk_27898A7D0;
        v27 = v20;
        v28 = v5;
        sf_synchronize(v20 + 18, v26);
        v21 = *(a1 + 32);
        v22 = v21[5];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2_183;
        v24[3] = &unk_27898A0C8;
        v25 = v21;
        v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v24);
        dispatch_async(v22, v23);

        v12 = v27;
        goto LABEL_15;
      }

      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      v35 = v5;
      v15 = "SymptomAnalytics ServiceImpl: notification has unknown engine: %p";
      v16 = v18;
    }

    else
    {
      v14 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_19:

        goto LABEL_20;
      }

      *buf = 138412290;
      v35 = v4;
      v15 = "SymptomAnalytics ServiceImpl: notification lacks engine info: %@";
      v16 = v14;
    }

    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_19;
  }

  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: notification has no info", buf, 2u);
  }

LABEL_20:
}

- (void)getNetworkBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  optionsCopy = options;
  replyCopy = reply;
  ++_query_id;
  v15 = objc_autoreleasePoolPush();
  v16 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v29 = namesCopy;
    v30 = 2048;
    timeCopy = time;
    v32 = 2048;
    endTimeCopy = endTime;
    v34 = 2112;
    v35 = optionsCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "[Bitmap] SymptomAnalytics ServiceImpl: received network bitmap request: names: %@ interval: [%llu, %llu] options: %@", buf, 0x2Au);
  }

  if (replyCopy)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:4 orWaiveOnIntent:0])
    {
      f_engine = self->f_engine;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __74__ServiceImpl_getNetworkBitmapsWithNames_startTime_endTime_options_reply___block_invoke;
      v24[3] = &unk_27898BC58;
      v25 = replyCopy;
      [(FlowAnalyticsEngine *)f_engine getNetworkBitmapsWithNames:namesCopy startTime:time endTime:endTime options:optionsCopy reply:v24];
      v19 = v25;
    }

    else
    {
      v20 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: network bitmap query didn't pass entitlement check", buf, 2u);
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA050];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"A proper entitlement is needed for retrieving the network bitmap.";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v23 = [v21 errorWithDomain:v22 code:13 userInfo:v19];
      (*(replyCopy + 2))(replyCopy, 0, v23);
    }
  }

  objc_autoreleasePoolPop(v15);
}

- (void)performQueryOnEntity:(id)entity fetchRequestProperties:(id)properties pred:(id)pred sort:(id)sort actions:(id)actions reply:(id)reply
{
  v92 = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  propertiesCopy = properties;
  predCopy = pred;
  sortCopy = sort;
  actionsCopy = actions;
  replyCopy = reply;
  v18 = ++_query_id;
  context = objc_autoreleasePoolPush();
  v19 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = v19;
    v21 = [predCopy description];
    v22 = [sortCopy description];
    [actionsCopy description];
    selfCopy = self;
    v23 = v18;
    v24 = actionsCopy;
    v25 = replyCopy;
    v27 = v26 = predCopy;
    *buf = 138413058;
    v85 = entityCopy;
    v86 = 2112;
    v87 = v21;
    v88 = 2112;
    v89 = v22;
    v90 = 2112;
    v91 = v27;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received query for: %@ pred %@ sort %@ actions %@", buf, 0x2Au);

    predCopy = v26;
    replyCopy = v25;
    actionsCopy = v24;
    v18 = v23;
    self = selfCopy;
  }

  if (entityCopy)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:currentConnection entitlement:5 orWaiveOnIntent:actionsCopy]&& ![(ServiceImpl *)self assertEntitlement:currentConnection entitlement:7 orWaiveOnIntent:actionsCopy])
    {
      v36 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v37 = predCopy;
        v38 = v36;
        v39 = pid_to_process_name([currentConnection processIdentifier]);
        v40 = v39;
        v41 = @"<unknown>";
        if (v39)
        {
          v41 = v39;
        }

        *buf = 138412290;
        v85 = v41;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: query from %@ didn't pass entitlement check", buf, 0xCu);

        predCopy = v37;
      }

      goto LABEL_34;
    }

    v29 = [actionsCopy objectForKey:{@"sweepUsage", predCopy, context}];

    if (!v29)
    {
LABEL_25:
      v47 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v48 = v47;
        v49 = qos_class_self();
        v50 = qos_string(v49);
        *buf = 136315394;
        v85 = v50;
        v86 = 2048;
        v87 = v18;
        _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performQueryOnEntity:) QoS %s (%lu)", buf, 0x16u);
      }

      predCopy = v62;
      if ([(FlowAnalyticsEngine *)self->f_engine handlesEntity:entityCopy])
      {
        queue = [(AnalyticsEngineCore *)self->f_engine queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke;
        block[3] = &unk_27898E6F0;
        v83 = v18;
        block[4] = self;
        v76 = entityCopy;
        v35 = propertiesCopy;
        v77 = propertiesCopy;
        v78 = v62;
        v79 = sortCopy;
        v80 = actionsCopy;
        v81 = currentConnection;
        v82 = replyCopy;
        v52 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(queue, v52);

        predCopy = v62;
        v53 = v76;
LABEL_31:

LABEL_35:
        goto LABEL_36;
      }

      if ([(NetworkAnalyticsEngine *)self->n_engine handlesEntity:entityCopy])
      {
        queue2 = [(AnalyticsEngineCore *)self->n_engine queue];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke_194;
        v66[3] = &unk_27898E6F0;
        v74 = v18;
        v66[4] = self;
        v67 = entityCopy;
        v35 = propertiesCopy;
        v68 = propertiesCopy;
        v69 = v62;
        v70 = sortCopy;
        v71 = actionsCopy;
        v72 = currentConnection;
        v73 = replyCopy;
        v55 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v66);
        dispatch_async(queue2, v55);

        predCopy = v62;
        v53 = v67;
        goto LABEL_31;
      }

      v56 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v56, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: no engine suitable to reply to query", buf, 2u);
      }

LABEL_34:
      (*(replyCopy + 2))(replyCopy, 0);
      v35 = propertiesCopy;
      goto LABEL_35;
    }

    v30 = [actionsCopy objectForKeyedSubscript:@"fetchOffset"];
    if ([v30 integerValue] >= 1)
    {
      v31 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v32 = v31;
        integerValue = [v30 integerValue];
        *buf = 134217984;
        v85 = integerValue;
        _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: found non-zero (%ld) fetch-offset (part of batched queries), rate-limit check waived", buf, 0xCu);
      }

      goto LABEL_24;
    }

    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:8 orWaiveOnIntent:0])
    {
      v42 = analyticsLogHandle;
      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
LABEL_24:

        goto LABEL_25;
      }

      *buf = 0;
      v43 = "SymptomAnalytics ServiceImpl: client has 'configuration' entitlement, rate-limit check waived";
      v44 = v42;
    }

    else
    {
      v45 = [(ServiceImpl *)self _checkRateLimitForConnection:currentConnection];
      v46 = analyticsLogHandle;
      if ((v45 & 1) == 0)
      {
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v57 = v46;
          v58 = pid_to_process_name([currentConnection processIdentifier]);
          v59 = v58;
          v60 = @"<unknown>";
          if (v58)
          {
            v60 = v58;
          }

          *buf = 138412290;
          v85 = v60;
          _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: query from %@ didn't pass rate-limit check", buf, 0xCu);
        }

        (*(replyCopy + 2))(replyCopy, 0);

        v35 = propertiesCopy;
        predCopy = v62;
        goto LABEL_35;
      }

      if (!os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v43 = "SymptomAnalytics ServiceImpl: query passed rate-limit check";
      v44 = v46;
    }

    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, v43, buf, 2u);
    goto LABEL_24;
  }

  v34 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: received query w/ nil entityName", buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, 0);
  v35 = propertiesCopy;
LABEL_36:
  objc_autoreleasePoolPop(context);
}

uint64_t __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[12];
    *buf = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performQueryOnEntity: [FAE] QoS %s (%lu)", buf, 0x16u);
  }

  return [*(a1[4] + 8) performQueryOnEntity:a1[5] fetchRequestProperties:a1[6] pred:a1[7] sort:a1[8] actions:a1[9] service:a1[10] connection:a1[11] reply:?];
}

uint64_t __83__ServiceImpl_performQueryOnEntity_fetchRequestProperties_pred_sort_actions_reply___block_invoke_194(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[12];
    *buf = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performQueryOnEntity: [NAE] QoS %s (%lu)", buf, 0x16u);
  }

  return [*(a1[4] + 16) performQueryOnEntity:a1[5] fetchRequestProperties:a1[6] pred:a1[7] sort:a1[8] actions:a1[9] service:a1[10] connection:a1[11] reply:?];
}

- (void)createSnapshotFor:(id)for pred:(id)pred actions:(id)actions reply:(id)reply
{
  v48 = *MEMORY[0x277D85DE8];
  forCopy = for;
  predCopy = pred;
  actionsCopy = actions;
  replyCopy = reply;
  v14 = ++_query_id;
  v15 = objc_autoreleasePoolPush();
  v16 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v45 = forCopy;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received snapshot request on entity: %@", buf, 0xCu);
  }

  if (forCopy)
  {
    v31 = v15;
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:9 orWaiveOnIntent:0])
    {
      v18 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v19 = v18;
        v20 = qos_class_self();
        v21 = qos_string(v20);
        *buf = 136315394;
        v45 = v21;
        v46 = 2048;
        v47 = v14;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (createSnapshotFor:) QoS %s (%lu)", buf, 0x16u);
      }

      if ([(FlowAnalyticsEngine *)self->f_engine handlesEntity:forCopy])
      {
        queue = [(AnalyticsEngineCore *)self->f_engine queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke;
        block[3] = &unk_27898E718;
        v43 = v14;
        block[4] = self;
        v39 = forCopy;
        v40 = predCopy;
        v41 = actionsCopy;
        v42 = replyCopy;
        v23 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(queue, v23);

        v24 = v39;
LABEL_18:

        goto LABEL_19;
      }

      if ([(NetworkAnalyticsEngine *)self->n_engine handlesEntity:forCopy])
      {
        queue2 = [(AnalyticsEngineCore *)self->n_engine queue];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke_195;
        v32[3] = &unk_27898E718;
        v37 = v14;
        v32[4] = self;
        v33 = forCopy;
        v34 = predCopy;
        v35 = actionsCopy;
        v36 = replyCopy;
        v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v32);
        dispatch_async(queue2, v30);

        v24 = v33;
        goto LABEL_18;
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
      v27 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v28 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to query";
        goto LABEL_14;
      }
    }

    else
    {
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
      v27 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v28 = "SymptomAnalytics ServiceImpl: query denied for lack of entitlement";
LABEL_14:
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, v28, buf, 2u);
      }
    }

    (*(replyCopy + 2))(replyCopy, 0, v26);

LABEL_19:
    v15 = v31;
    goto LABEL_20;
  }

  currentConnection = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  v25 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received snapshot request w/ nil entityName", buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, 0, currentConnection);
LABEL_20:

  objc_autoreleasePoolPop(v15);
}

uint64_t __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: createSnapshotFor: [FAE] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 8) createSnapshotFor:a1[5] pred:a1[6] actions:a1[7] reply:a1[8]];
}

uint64_t __52__ServiceImpl_createSnapshotFor_pred_actions_reply___block_invoke_195(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: createSnapshotFor: [NAE] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 16) createSnapshotFor:a1[5] pred:a1[6] actions:a1[7] reply:a1[8]];
}

- (void)setOption:(id)option inScopes:(id)scopes reply:(id)reply
{
  v52 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  scopesCopy = scopes;
  replyCopy = reply;
  v11 = ++_query_id;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__13;
  v46 = __Block_byref_object_dispose__13;
  v47 = 0;
  v13 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:8 orWaiveOnIntent:0];
  v14 = analyticsLogHandle;
  if (v13)
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = qos_class_self();
      v17 = qos_string(v16);
      *buf = 136315394;
      v49 = v17;
      v50 = 2048;
      v51 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (setOption:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v18 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v18)
    {
      queue = [(AnalyticsEngineCore *)self->f_engine queue];
      v20 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke;
      block[3] = &unk_27898E740;
      block[7] = &v42;
      block[8] = v11;
      block[4] = self;
      block[5] = optionCopy;
      block[6] = replyCopy;
      v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(queue, v21);

LABEL_12:
      v26 = (v20 + 5);
      v27 = (v20 + 6);
LABEL_13:

      goto LABEL_14;
    }

    v24 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v24)
    {
      queue = [(AnalyticsEngineCore *)self->n_engine queue];
      v20 = v40;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke_196;
      v40[3] = &unk_27898E740;
      v40[7] = &v42;
      v40[8] = v11;
      v40[4] = self;
      v40[5] = optionCopy;
      v40[6] = replyCopy;
      v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v40);
      dispatch_async(queue, v25);

      goto LABEL_12;
    }

    v28 = [scopesCopy objectForKey:@"networkDomainTracking"];

    if (v28)
    {
      v29 = +[NetDomainsHandler sharedInstance];
      netDomainsHandler = self->netDomainsHandler;
      self->netDomainsHandler = v29;

      queue2 = [(NetDomainsHandler *)self->netDomainsHandler queue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __40__ServiceImpl_setOption_inScopes_reply___block_invoke_198;
      v34[3] = &unk_27898E768;
      v38 = &v42;
      v39 = v11;
      v34[4] = self;
      v35 = optionCopy;
      v36 = currentConnection;
      v37 = replyCopy;
      v32 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v34);
      dispatch_async(queue2, v32);

      v26 = &v35;
      v27 = &v36;
      queue = v37;
      goto LABEL_13;
    }

    v33 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v22 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to setOption";
      v23 = v33;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v22 = "SymptomAnalytics ServiceImpl: no entitlement to execute setOption";
    v23 = v14;
LABEL_8:
    _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, v22, buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, v43[5]);
LABEL_14:
  _Block_object_dispose(&v42, 8);
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v11 = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [FAE] setOption:inScopes: QoS %s (%lu)", &v11, 0x16u);
  }

  v7 = [*(a1[4] + 8) setOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return (*(a1[6] + 16))();
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke_196(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v11 = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [NAE] setOption:inScopes: QoS %s (%lu)", &v11, 0x16u);
  }

  v7 = [*(a1[4] + 16) setOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return (*(a1[6] + 16))();
}

uint64_t __40__ServiceImpl_setOption_inScopes_reply___block_invoke_198(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v11 = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: [NetDomain] setOption:inScopes: QoS %s (%lu)", &v11, 0x16u);
  }

  v7 = [*(a1[4] + 32) setNetworkDomainsOptions:a1[5] service:a1[4] connection:a1[6]];
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return (*(a1[7] + 16))();
}

- (void)getOption:(id)option inScopes:(id)scopes reply:(id)reply
{
  v55 = *MEMORY[0x277D85DE8];
  optionCopy = option;
  scopesCopy = scopes;
  replyCopy = reply;
  v11 = ++_query_id;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__13;
  v49 = __Block_byref_object_dispose__13;
  v50 = 0;
  v13 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:8 orWaiveOnIntent:0];
  v14 = analyticsLogHandle;
  if (v13)
  {
    v15 = analyticsLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = qos_class_self();
      v17 = qos_string(v16);
      *buf = 136315394;
      v52 = v17;
      v53 = 2048;
      v54 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (getOption:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v18 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v18)
    {
      queue = [(AnalyticsEngineCore *)self->f_engine queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke;
      block[3] = &unk_27898E790;
      v44[1] = &v45;
      block[4] = self;
      v43 = optionCopy;
      v44[0] = replyCopy;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(queue, v20);

      v21 = &v43;
      v22 = v44;
LABEL_14:

      goto LABEL_15;
    }

    v25 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v25)
    {
      queue = [(AnalyticsEngineCore *)self->n_engine queue];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke_199;
      v39[3] = &unk_27898E740;
      v41[1] = &v45;
      v41[2] = v11;
      v39[4] = self;
      v40 = optionCopy;
      v41[0] = replyCopy;
      v26 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v39);
      dispatch_async(queue, v26);

      v21 = &v40;
      v22 = v41;
      goto LABEL_14;
    }

    v27 = [scopesCopy objectForKey:@"networkDomainTracking"];

    if (v27)
    {
      v28 = +[NetDomainsHandler sharedInstance];
      netDomainsHandler = self->netDomainsHandler;
      self->netDomainsHandler = v28;

      queue2 = [(NetDomainsHandler *)self->netDomainsHandler queue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __40__ServiceImpl_getOption_inScopes_reply___block_invoke_200;
      v33[3] = &unk_27898E768;
      v37 = &v45;
      v38 = v11;
      v33[4] = self;
      v34 = optionCopy;
      v35 = currentConnection;
      v36 = replyCopy;
      v31 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v33);
      dispatch_async(queue2, v31);

      v21 = &v34;
      v22 = &v35;
      queue = v36;
      goto LABEL_14;
    }

    v32 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v23 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to getOption";
      v24 = v32;
      goto LABEL_8;
    }
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v23 = "SymptomAnalytics ServiceImpl: no entitlement to execute getOption";
    v24 = v14;
LABEL_8:
    _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, v23, buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, v46[5]);
LABEL_15:
  _Block_object_dispose(&v45, 8);
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v9 = 136315138;
    v10 = qos_string(v4);
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [FAE] QoS %s", &v9, 0xCu);
  }

  v5 = [*(a1[4] + 8) getOption:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return (*(a1[6] + 16))();
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke_199(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[8];
    v11 = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [NAE] QoS %s (%lu)", &v11, 0x16u);
  }

  v7 = [*(a1[4] + 16) getOption:a1[5]];
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return (*(a1[6] + 16))();
}

uint64_t __40__ServiceImpl_getOption_inScopes_reply___block_invoke_200(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v11 = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: getOption:inScopes: [NetDomain] QoS %s (%lu)", &v11, 0x16u);
  }

  v7 = [*(a1[4] + 32) getNetworkDomainsOptions:a1[5] service:a1[4] connection:a1[6]];
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return (*(a1[7] + 16))();
}

- (void)performActionWithOptions:(id)options inScopes:(id)scopes reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  scopesCopy = scopes;
  replyCopy = reply;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v14 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:8 orWaiveOnIntent:0];
  v15 = analyticsLogHandle;
  v16 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (!v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: no entitlement to execute performActionWithOptions", buf, 2u);
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA050];
    v30 = *MEMORY[0x277CCA450];
    v31 = @"A proper entitlement is needed to execute perform action";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [v23 errorWithDomain:v24 code:13 userInfo:v25];

    replyCopy[2](replyCopy, 0, v22);
    goto LABEL_9;
  }

  if (v16)
  {
    v17 = v15;
    v18 = qos_class_self();
    *buf = 136315394;
    v33 = qos_string(v18);
    v34 = 2048;
    v35 = v11;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: configure (performActionWithOptions:inScopes:) authorized QoS %s (%lu)", buf, 0x16u);
  }

  v19 = [scopesCopy objectForKey:@"networkDomainTracking"];

  if (v19)
  {
    effectiveUserIdentifier = [currentConnection effectiveUserIdentifier];
    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ServiceImpl_performActionWithOptions_inScopes_reply___block_invoke;
    block[3] = &unk_27898C7D0;
    v27 = optionsCopy;
    v29 = effectiveUserIdentifier;
    v28 = replyCopy;
    dispatch_sync(queue, block);

    v22 = v27;
LABEL_9:
  }

  objc_autoreleasePoolPop(v12);
}

- (void)resetDataFor:(id)for nameKind:(id)kind inScopes:(id)scopes reply:(id)reply
{
  v46 = *MEMORY[0x277D85DE8];
  forCopy = for;
  kindCopy = kind;
  scopesCopy = scopes;
  v13 = ++_query_id;
  v14 = MEMORY[0x277CCAE80];
  replyCopy = reply;
  currentConnection = [v14 currentConnection];
  if (([(ServiceImpl *)self _checkRateLimitForConnection:currentConnection]& 1) == 0)
  {
    v25 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v26 = v25;
      v27 = pid_to_process_name([currentConnection processIdentifier]);
      v28 = v27;
      v29 = @"<unknown>";
      if (v27)
      {
        v29 = v27;
      }

      *buf = 138412290;
      v43 = v29;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: reset query from %@ denied due to rate limit control", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:7 orWaiveOnIntent:0];
  v18 = analyticsLogHandle;
  v19 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v17)
  {
    if (v19)
    {
      v20 = v18;
      v21 = qos_class_self();
      *buf = 136315394;
      v43 = qos_string(v21);
      v44 = 2048;
      v45 = v13;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: reset authorized QoS %s (%lu)", buf, 0x16u);
    }

    v22 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceUsage"];

    if (v22)
    {
      queue = [(AnalyticsEngineCore *)self->f_engine queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__ServiceImpl_resetDataFor_nameKind_inScopes_reply___block_invoke;
      block[3] = &unk_27898A328;
      block[4] = self;
      v40 = forCopy;
      v41 = kindCopy;
      dispatch_sync(queue, block);

      v24 = v40;
LABEL_17:

      v32 = 1;
      goto LABEL_18;
    }

    v33 = [scopesCopy objectForKey:@"kSymptomAnalyticsServiceNetworkAttachmentPerformance"];

    if (v33)
    {
      queue2 = [(AnalyticsEngineCore *)self->n_engine queue];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __52__ServiceImpl_resetDataFor_nameKind_inScopes_reply___block_invoke_2;
      v36[3] = &unk_27898A328;
      v36[4] = self;
      v37 = forCopy;
      v38 = kindCopy;
      dispatch_sync(queue2, v36);

      v24 = v37;
      goto LABEL_17;
    }

    v35 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v30 = "SymptomAnalytics ServiceImpl: no engine suitable to reply to reset";
      v31 = v35;
      goto LABEL_13;
    }
  }

  else if (v19)
  {
    *buf = 0;
    v30 = "SymptomAnalytics ServiceImpl: no entitlement to execute reset";
    v31 = v18;
LABEL_13:
    _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEBUG, v30, buf, 2u);
  }

LABEL_14:
  v32 = 0;
LABEL_18:
  replyCopy[2](replyCopy, v32);
}

- (void)subscribeToNOIsFor:(id)for orPredicate:(id)predicate options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  forCopy = for;
  predicateCopy = predicate;
  optionsCopy = options;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:11 orWaiveOnIntent:0])
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      selfCopy = qos_string(v16);
      v29 = 2048;
      v30 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (subscribeToNOIsFor:orPredicate:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->noi_engine queue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__ServiceImpl_subscribeToNOIsFor_orPredicate_options___block_invoke;
    v21[3] = &unk_27898E7B8;
    v26 = v11;
    v21[4] = self;
    v22 = forCopy;
    v23 = predicateCopy;
    v24 = optionsCopy;
    v25 = currentConnection;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v21);
    dispatch_async(queue, v18);
  }

  else
  {
    v19 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      *buf = 134218754;
      selfCopy = self;
      v29 = 2048;
      v30 = currentConnection;
      v31 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      v33 = 2112;
      v34 = forCopy;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "%p for conn: %p pid: %d, client subscribe event failure for noi: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v12);
}

uint64_t __54__ServiceImpl_subscribeToNOIsFor_orPredicate_options___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: subscribeToNOIsFor:orPredicate: [NOI] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 24) subscribeToNOIsFor:a1[5] orPredicate:a1[6] options:a1[7] connection:a1[8]];
}

- (void)inquireNOIFor:(id)for orPredicate:(id)predicate requestedKeys:(id)keys options:(id)options reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  forCopy = for;
  predicateCopy = predicate;
  keysCopy = keys;
  optionsCopy = options;
  replyCopy = reply;
  v17 = ++_query_id;
  v18 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:11 orWaiveOnIntent:0])
  {
    v20 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = v20;
      v22 = qos_class_self();
      *buf = 136315394;
      v35 = qos_string(v22);
      v36 = 2048;
      v37 = v17;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (inquireNOIFor:orPredicate:requestedKeys:options:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->noi_engine queue];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __69__ServiceImpl_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke;
    v26[3] = &unk_27898E7E0;
    v33 = v17;
    v26[4] = self;
    v27 = forCopy;
    v28 = predicateCopy;
    v29 = keysCopy;
    v30 = optionsCopy;
    v31 = currentConnection;
    v32 = replyCopy;
    v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v26);
    dispatch_async(queue, v24);
  }

  else
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v25);
  }

  objc_autoreleasePoolPop(v18);
}

uint64_t __69__ServiceImpl_inquireNOIFor_orPredicate_requestedKeys_options_reply___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[11];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: inquireNOIFor:orPredicate:requestedKeys:options:reply: [NOI] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 24) inquireNOIFor:a1[5] orPredicate:a1[6] requestedKeys:a1[7] options:a1[8] connection:a1[9] reply:a1[10]];
}

- (void)unsubscribeToNOIs:(id)is
{
  v27 = *MEMORY[0x277D85DE8];
  isCopy = is;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:11 orWaiveOnIntent:0])
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = qos_class_self();
      *buf = 136315394;
      selfCopy = qos_string(v10);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (unsubscribeToNOIs:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->noi_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __33__ServiceImpl_unsubscribeToNOIs___block_invoke;
    v15[3] = &unk_27898E4B0;
    v18 = v5;
    v15[4] = self;
    v16 = isCopy;
    v17 = currentConnection;
    v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v12);
  }

  else
  {
    v13 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      v22 = currentConnection;
      v23 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      v25 = 2112;
      v26 = isCopy;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "%p for conn: %p pid: %d, client unsubscribe event failure for nois: %@", buf, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __33__ServiceImpl_unsubscribeToNOIs___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[7];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: unsubscribeToNOIs: [NOI] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 24) unsubscribeToNOIs:a1[5] connection:a1[6]];
}

- (void)identifierForUUID:(id)d reply:(id)reply
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  replyCopy = reply;
  v8 = ++_query_id;
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    uUIDString = [dCopy UUIDString];
    v12 = qos_class_self();
    *buf = 138412802;
    v23 = uUIDString;
    v24 = 2080;
    v25 = qos_string(v12);
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: received identifier request for UUID: %@ QoS %s (%lu)", buf, 0x20u);
  }

  v13 = objc_autoreleasePoolPush();
  if (dCopy)
  {
    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__ServiceImpl_identifierForUUID_reply___block_invoke;
    v18[3] = &unk_27898E808;
    v21 = v8;
    v18[4] = self;
    v19 = dCopy;
    v20 = replyCopy;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v18);
    dispatch_async(queue, v15);
  }

  else
  {
    v16 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "SymptomAnalytics ServiceImpl: received query w/ nil UUID", buf, 2u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, 0, v17);
  }

  objc_autoreleasePoolPop(v13);
}

uint64_t __39__ServiceImpl_identifierForUUID_reply___block_invoke(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[7];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: identifierForUUID:reply: [FAE] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 8) identifierForUUID:a1[5] reply:a1[6]];
}

- (void)getExpertSystemsStatus:(id)status
{
  statusCopy = status;
  ++_query_id;
  v5 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:13 orWaiveOnIntent:0])
  {
    [currentConnection setInvalidationHandler:&__block_literal_global_205];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v8 = +[CellFallbackHandler internalStateDictionary];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [dictionary setObject:v8 forKeyedSubscript:v10];

    v11 = +[NoBackhaulHandler internalStateDictionary];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    [dictionary setObject:v11 forKeyedSubscript:v13];

    v14 = +[CellOutrankHandler internalStateDictionary];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [dictionary setObject:v14 forKeyedSubscript:v16];

    if (statusCopy)
    {
      statusCopy[2](statusCopy, dictionary);
    }
  }

  else
  {
    v17 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", v18, 2u);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void __38__ServiceImpl_getExpertSystemsStatus___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

- (void)trainModelAndScore:(BOOL)score lastScoreDate:(id)date reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  replyCopy = reply;
  v10 = ++_query_id;
  v11 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v13 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (v13)
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      v26 = qos_string(v16);
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (trainModelAndScore:lastScoreDate:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->n_engine queue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__ServiceImpl_trainModelAndScore_lastScoreDate_reply___block_invoke;
    v20[3] = &unk_27898E830;
    v23 = v10;
    scoreCopy = score;
    v21 = dateCopy;
    v22 = replyCopy;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v20);
    dispatch_async(queue, v18);
  }

  else if (replyCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v19);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v11);
}

void __54__ServiceImpl_trainModelAndScore_lastScoreDate_reply___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    *buf = 136315394;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: trainModelAndScore:lastScoreDate:reply: [NAE] QoS %s (%lu)", buf, 0x16u);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v15 = 0;
  v9 = [NetworkAnalyticsEngine trainModelAndScore:v7 lastScoreDate:v8 output:&v15];
  v10 = v15;
  v11 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = "false";
    if (v9)
    {
      v12 = "true";
    }

    *buf = 136315138;
    v17 = v12;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "Train and score complete. Success:%s", buf, 0xCu);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    if (v9)
    {
      (*(v13 + 16))(v13, v10, 0);
    }

    else
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
      (*(v13 + 16))(v13, v10, v14);
    }
  }

  xpc_transaction_exit_clean();
}

- (void)startRNFTestWithOptions:(id)options scenarioName:(id)name reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  nameCopy = name;
  replyCopy = reply;
  v11 = ++_query_id;
  v12 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:13 orWaiveOnIntent:0])
  {
    v14 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v15 = v14;
      v16 = qos_class_self();
      *buf = 136315394;
      v29 = qos_string(v16);
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (startRNFTestWithOptions:scenarioName:reply:) authorized QoS %s (%lu)", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A6A8];
    [currentConnection setRemoteObjectInterface:v17];

    [currentConnection setInvalidationHandler:&__block_literal_global_213];
    queue = [(AnalyticsEngineCore *)self->n_engine queue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke_214;
    v22[3] = &unk_27898E718;
    v27 = v11;
    v22[4] = self;
    v23 = currentConnection;
    v24 = optionsCopy;
    v25 = nameCopy;
    v26 = replyCopy;
    v19 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v22);
    dispatch_async(queue, v19);
  }

  else
  {
    if (replyCopy)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v20);
    }

    v21 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v12);
}

void __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

uint64_t __58__ServiceImpl_startRNFTestWithOptions_scenarioName_reply___block_invoke_214(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[9];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: startRNFTestWithOptions:scenarioName:reply: [NAE] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 16) startRNFTestWithConnection:a1[5] options:a1[6] scenarioName:a1[7] reply:a1[8]];
}

- (void)abortRNFTestWithReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:13 orWaiveOnIntent:0])
  {
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = qos_class_self();
      *buf = 136315394;
      v20 = qos_string(v10);
      v21 = 2048;
      v22 = v5;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (abortRNFTestWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28482A6A8];
    [currentConnection setRemoteObjectInterface:v11];

    [currentConnection setInvalidationHandler:&__block_literal_global_216];
    queue = [(AnalyticsEngineCore *)self->n_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ServiceImpl_abortRNFTestWithReply___block_invoke_217;
    block[3] = &unk_27898E858;
    v18 = v5;
    block[4] = self;
    v17 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v13);
  }

  else
  {
    if (replyCopy)
    {
      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (*(replyCopy + 2))(replyCopy, 0, v14);
    }

    v15 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "RNFTest: unauthorized connection", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v6);
}

void __37__ServiceImpl_abortRNFTestWithReply___block_invoke()
{
  v0 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_DEBUG, "RNFTest: rnf test tool connection was invalidated", v1, 2u);
  }
}

uint64_t __37__ServiceImpl_abortRNFTestWithReply___block_invoke_217(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = a1[6];
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: abortRNFTestWithReply: [NAE] QoS %s (%lu)", &v8, 0x16u);
  }

  return [*(a1[4] + 16) abortRNFTestWithReply:a1[5]];
}

- (void)performPersistentStoreHealthCheckWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:10 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performPersistentStoreHealthCheckWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->n_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__ServiceImpl_performPersistentStoreHealthCheckWithReply___block_invoke;
    v15[3] = &unk_27898C440;
    v17 = v5;
    v16 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v13);
  }

  else if (replyCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __58__ServiceImpl_performPersistentStoreHealthCheckWithReply___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v12 = 136315394;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performPersistentStoreHealthCheckWithReply: [NAE] QoS %s (%lu)", &v12, 0x16u);
  }

  [NetworkAnalyticsEngine performPersistentStoreHealthCheckWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    v10 = _Block_copy(v8);
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "performPersistentStoreHealthCheckWithReply complete: %@", &v12, 0xCu);
  }

  return xpc_transaction_exit_clean();
}

- (void)performAppPeriodicTasksWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__ServiceImpl_performAppPeriodicTasksWithReply___block_invoke;
    v15[3] = &unk_27898C440;
    v17 = v5;
    v16 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v13);
  }

  else if (replyCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __48__ServiceImpl_performAppPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  [FlowAnalyticsEngine performAppPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppPeriodicActivityWithReply complete", &v9, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)performAppTrackingPeriodicTasksWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppTrackingPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__ServiceImpl_performAppTrackingPeriodicTasksWithReply___block_invoke;
    v15[3] = &unk_27898C440;
    v17 = v5;
    v16 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v13);
  }

  else if (replyCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __56__ServiceImpl_performAppTrackingPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppTrackingPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  [FlowAnalyticsEngine performAppTrackingPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppTrackingPeriodicTasksWithReply complete:", &v9, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)performAppExperiencePeriodicTasksWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppExperiencePeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__ServiceImpl_performAppExperiencePeriodicTasksWithReply___block_invoke;
    v15[3] = &unk_27898C440;
    v17 = v5;
    v16 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v13);
  }

  else if (replyCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __58__ServiceImpl_performAppExperiencePeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppExperiencePeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  [FlowAnalyticsEngine performAppExperiencePeriodicActivityWithReply:*(a1 + 32)];
  v7 = appExperienceLogHandle;
  if (os_log_type_enabled(appExperienceLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppExperiencePeriodicTasksWithReply complete:", &v9, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)performAppEndpointTrackingPeriodicTasksWithReply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (v8)
  {
    v9 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v19 = qos_string(v11);
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (performAppEndpointTrackingPeriodicTasksWithReply:) QoS %s (%lu)", buf, 0x16u);
    }

    queue = [(AnalyticsEngineCore *)self->f_engine queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__ServiceImpl_performAppEndpointTrackingPeriodicTasksWithReply___block_invoke;
    v15[3] = &unk_27898C440;
    v17 = v5;
    v16 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
    dispatch_async(queue, v13);
  }

  else if (replyCopy)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v14);

    xpc_transaction_exit_clean();
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __64__ServiceImpl_performAppEndpointTrackingPeriodicTasksWithReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 40);
    v9 = 136315394;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: performAppEndpointTrackingPeriodicTasksWithReply: [FAE] QoS %s (%lu)", &v9, 0x16u);
  }

  [FlowAnalyticsEngine performAppEndpointTrackingPeriodicActivityWithReply:*(a1 + 32)];
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "performAppEndpointTrackingPeriodicTasksWithReply complete:", &v9, 2u);
  }

  return xpc_transaction_exit_clean();
}

- (void)donateBiomeEventForEdgeSelectionWithPrefix:(id)prefix interfaceType:(id)type radioType:(id)radioType radioBand:(id)band latitude:(double)latitude longitude:(double)longitude reply:(id)reply
{
  prefixCopy = prefix;
  typeCopy = type;
  radioTypeCopy = radioType;
  bandCopy = band;
  replyCopy = reply;
  ++_query_id;
  v20 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  LODWORD(self) = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:0 orWaiveOnIntent:0];

  if (self)
  {
    v22 = +[GeoDBHandler sharedInstance];
    [v22 donateBiomeEventForEdgeSelectionWithPrefix:prefixCopy interfaceType:typeCopy radioType:radioTypeCopy radioBand:bandCopy latitude:replyCopy longitude:latitude reply:longitude];
  }

  else
  {
    if (!replyCopy)
    {
      goto LABEL_6;
    }

    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    replyCopy[2](replyCopy, 0, v22);
  }

  xpc_transaction_exit_clean();
LABEL_6:
  objc_autoreleasePoolPop(v20);
}

- (void)clientTransactionsRelease
{
  n_engine = self->n_engine;
  if (n_engine)
  {
    queue = [(AnalyticsEngineCore *)n_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__ServiceImpl_clientTransactionsRelease__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_sync(queue, block);

    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Network analytics client transactions release", buf, 2u);
    }
  }

  noi_engine = self->noi_engine;
  if (noi_engine)
  {
    queue2 = [(AnalyticsEngineCore *)noi_engine queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__ServiceImpl_clientTransactionsRelease__block_invoke_219;
    v9[3] = &unk_27898A0C8;
    v9[4] = self;
    dispatch_sync(queue2, v9);

    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "NOI client transactions release", buf, 2u);
    }
  }
}

- (void)shutdown
{
  f_engine = self->f_engine;
  if (f_engine)
  {
    queue = [(AnalyticsEngineCore *)f_engine queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__ServiceImpl_shutdown__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_sync(queue, block);

    v5 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Flow analytics saved", buf, 2u);
    }
  }

  n_engine = self->n_engine;
  if (n_engine)
  {
    queue2 = [(AnalyticsEngineCore *)n_engine queue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __23__ServiceImpl_shutdown__block_invoke_220;
    v9[3] = &unk_27898A0C8;
    v9[4] = self;
    dispatch_sync(queue2, v9);

    v8 = evaluationLogHandle;
    if (os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "Network analytics saved", buf, 2u);
    }
  }
}

- (void)setUsageOption:(id)option reply:(id)reply
{
  v6 = MEMORY[0x277CBEAC0];
  replyCopy = reply;
  optionCopy = option;
  v9 = [v6 dictionaryWithObjectsAndKeys:{@"kSymptomAnalyticsServiceUsage", @"kSymptomAnalyticsServiceUsage", 0}];
  [(ServiceImpl *)self setOption:optionCopy inScopes:v9 reply:replyCopy];
}

- (void)resetUsageFor:(id)for nameKind:(id)kind reply:(id)reply
{
  ++_query_id;
  v8 = MEMORY[0x277CBEAC0];
  replyCopy = reply;
  kindCopy = kind;
  forCopy = for;
  v12 = [v8 dictionaryWithObjectsAndKeys:{@"kSymptomAnalyticsServiceUsage", @"kSymptomAnalyticsServiceUsage", 0}];
  [(ServiceImpl *)self resetDataFor:forCopy nameKind:kindCopy inScopes:v12 reply:replyCopy];
}

- (void)waitForOSLogErrorSymptomWithReply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = ++_query_id;
  v6 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v8 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:14 orWaiveOnIntent:0];
  v9 = analyticsLogHandle;
  if (v8)
  {
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = qos_class_self();
      *buf = 136315394;
      v18 = qos_string(v11);
      v19 = 2048;
      v20 = v5;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: (waitForOSLogErrorSymptomWithReply:) Authorized QoS %s (%lu)", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke;
    block[3] = &unk_27898E858;
    v16 = v5;
    block[4] = self;
    v15 = replyCopy;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v13);
  }

  else if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "os_log_error with symptom test: unauthorized connection", buf, 2u);
  }

  objc_autoreleasePoolPop(v6);
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "SymptomAnalytics ServiceImpl: waitForOSLogErrorSymptomWithReply: [XPC] QoS %s (%lu)", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 40));
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_221;
  v17[3] = &unk_27898E880;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v19 = buf;
  v17[4] = v8;
  v18 = v9;
  v10 = [v7 addObserverForName:@"com.apple.symptoms.oslogfromsymptomstool" object:0 queue:0 usingBlock:v17];

  v11 = *(*&buf[8] + 40);
  v12 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v13 = *(*&buf[8] + 40);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_2;
  handler[3] = &unk_27898E8A8;
  v15 = *(a1 + 40);
  v16 = buf;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(*(*&buf[8] + 40));

  _Block_object_dispose(buf, 8);
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_221(void *a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1[6] + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:a1[4] name:@"com.apple.symptoms.oslogfromsymptomstool" object:0];

  v7 = a1[5];
  v8 = v10;
  if (v7)
  {
    v9 = [v10 userInfo];
    (*(v7 + 16))(v7, v9, 0);

    v8 = v10;
  }
}

void __49__ServiceImpl_waitForOSLogErrorSymptomWithReply___block_invoke_2(uint64_t a1)
{
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "os_log_error with symptom test failed. Timed out waiting for kNotificationSymptomsOSLogReceivedFromSymptomsTool", v7, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v3 + 16))(v3, 0, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)assertFactString:(id)string module:(id)module asSymptom:(BOOL)symptom reply:(id)reply
{
  symptomCopy = symptom;
  v37 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  moduleCopy = module;
  replyCopy = reply;
  v13 = ++_query_id;
  v14 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = stringCopy;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: Request to assert fact string %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v17 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:15 orWaiveOnIntent:0];
  v18 = debuggabilityLogHandle;
  v19 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = v18;
      v21 = qos_class_self();
      v22 = qos_string(v21);
      *buf = 136315394;
      v34 = v22;
      v35 = 2048;
      v36 = v13;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: CLIPS fact assertion authorized QoS %s (%lu)", buf, 0x16u);
    }

    v23 = +[SymptomExpertSystemHandler sharedInstance];
    v24 = v23;
    if (!symptomCopy)
    {
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_2;
      v27[3] = &unk_27898E8D0;
      v29 = replyCopy;
      v27[4] = self;
      v28 = dictionary;
      [v24 assertFactAndRun:stringCopy module:moduleCopy reply:v27];

      v26 = v29;
      goto LABEL_14;
    }

    [v23 assertFactAsSymptom:stringCopy module:moduleCopy];

    if (replyCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke;
      block[3] = &unk_27898C648;
      v31 = dictionary;
      v32 = replyCopy;
      dispatch_async(queue, block);

      v26 = v31;
LABEL_14:
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: not entitled to access private API", buf, 2u);
    }

    if (replyCopy)
    {
      [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
      (*(replyCopy + 2))(replyCopy, dictionary);
    }
  }
}

uint64_t __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_2(uint64_t a1, char a2)
{
  if (*(a1 + 48))
  {
    v4 = *(*(a1 + 32) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_3;
    block[3] = &unk_27898DD18;
    v6 = *(a1 + 40);
    v8 = a2;
    v7 = *(a1 + 48);
    dispatch_async(v4, block);
  }
}

uint64_t __55__ServiceImpl_assertFactString_module_asSymptom_reply___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)postCoreAnalyticsEvent:(id)event forEventName:(id)name reply:(id)reply
{
  v32 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  replyCopy = reply;
  v11 = ++_query_id;
  v12 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = eventCopy;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: request to post AWD Event %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v15 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:15 orWaiveOnIntent:0];
  v16 = debuggabilityLogHandle;
  v17 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      v18 = v16;
      v19 = qos_class_self();
      v20 = qos_string(v19);
      *buf = 136315394;
      v29 = v20;
      v30 = 2048;
      v31 = v11;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: post AWD Event authorized QoS %s (%lu)", buf, 0x16u);
    }

    v21 = +[SymptomExpertSystemHandler sharedInstance];
    v22 = [v21 postCoreAnalyticsEvent:eventCopy forEventName:nameCopy];

    if (replyCopy)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ServiceImpl_postCoreAnalyticsEvent_forEventName_reply___block_invoke;
      block[3] = &unk_27898DD18;
      v25 = dictionary;
      v27 = v22;
      v26 = replyCopy;
      dispatch_async(queue, block);
    }
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "SFServiceInterface: not entitled to access private API", buf, 2u);
    }

    if (replyCopy)
    {
      [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];
      (*(replyCopy + 2))(replyCopy, dictionary);
    }
  }
}

uint64_t __57__ServiceImpl_postCoreAnalyticsEvent_forEventName_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"SymptomAnalyticsServiceSuccess"];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v8 = ++_query_id;
  v9 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v28 = optionsCopy;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions entered with %@", buf, 0xCu);
  }

  v10 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v12 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:16 orWaiveOnIntent:0];

  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v15 = qos_class_self();
    v16 = qos_string(v15);
    *buf = 67109634;
    *v28 = v12;
    *&v28[4] = 2080;
    *&v28[6] = v16;
    v29 = 2048;
    v30 = v8;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions trainEntitl %d QoS %s (%lu)", buf, 0x1Cu);
  }

  if (v12)
  {
    if (replyCopy)
    {
      v17 = +[CellOutrankForceSPIHandler sharedInstance];
      queue = [v17 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke;
      block[3] = &unk_27898E8F8;
      v22 = optionsCopy;
      v23 = v17;
      selfCopy = self;
      v26 = v8;
      v25 = replyCopy;
      v19 = v17;
      v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(queue, v20);

LABEL_10:
    }
  }

  else if (replyCopy)
  {
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v19);
    goto LABEL_10;
  }

  objc_autoreleasePoolPop(v10);
}

void __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    *buf = 136315138;
    v20 = qos_string(v4);
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions [CellOutrankForceSPIHandler] QoS %s", buf, 0xCu);
  }

  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "cellOutrankForcedViaSPI")}];
    [v5 setObject:v7 forKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];

  if (v8)
  {
    v9 = MEMORY[0x277CCABB0];
    [*(a1 + 40) cellOutrankForcedViaSPIUntil];
    v10 = [v9 numberWithDouble:?];
    [v5 setObject:v10 forKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];
  }

  v11 = *(*(a1 + 48) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke_225;
  block[3] = &unk_27898DCF0;
  v12 = *(a1 + 56);
  v18 = *(a1 + 64);
  v16 = v5;
  v17 = v12;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void __54__ServiceImpl_getPreferCellOverWiFiWithOptions_reply___block_invoke_225(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions reply QoS %s (%lu)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions complete:", &v8, 2u);
  }
}

- (void)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v33 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  replyCopy = reply;
  v8 = ++_query_id;
  v9 = objc_autoreleasePoolPush();
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v11 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:16 orWaiveOnIntent:0];

  v12 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v14 = qos_class_self();
    *buf = 67109890;
    v26 = v11;
    v27 = 2112;
    v28 = optionsCopy;
    v29 = 2080;
    v30 = qos_string(v14);
    v31 = 2048;
    v32 = v8;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions trainEntitl %d for entry %@ QoS %s (%lu)", buf, 0x26u);
  }

  if (v11)
  {
    if (optionsCopy)
    {
      v15 = +[CellOutrankForceSPIHandler sharedInstance];
      queue = [v15 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke;
      block[3] = &unk_27898E920;
      v24 = v8;
      v20 = optionsCopy;
      v21 = v15;
      selfCopy = self;
      v23 = replyCopy;
      v17 = v15;
      v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(queue, v18);

LABEL_8:
    }
  }

  else if (replyCopy)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    (*(replyCopy + 2))(replyCopy, 0, v17);
    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v9);
}

void __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 64);
    *buf = 136315394;
    v24 = v5;
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions [CellOutrankForceSPIHandler] QoS %s (%lu)", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "cellOutrankForcedViaSPI")}];
    [v7 setObject:v9 forKeyedSubscript:@"ForcePreferCellOverWiFiEnable"];

    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) objectForKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];
  v12 = 0.0;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = MEMORY[0x277CCABB0];
      [*(a1 + 40) cellOutrankForcedViaSPIUntil];
      v14 = [v13 numberWithDouble:?];
      [v7 setObject:v14 forKeyedSubscript:@"ForcePreferCellOverWiFiAutoDisableTimestamp"];

      [v11 doubleValue];
      v12 = v15;
    }
  }

  [*(a1 + 40) setForcePreferCellOverWiFi:v10 autoDisableTimestamp:v12];
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = *(*(a1 + 48) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke_226;
    block[3] = &unk_27898DCF0;
    v22 = *(a1 + 64);
    v21 = v16;
    v20 = v7;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v17, v18);
  }
}

void __54__ServiceImpl_setPreferCellOverWiFiWithOptions_reply___block_invoke_226(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = qos_class_self();
    v5 = qos_string(v4);
    v6 = *(a1 + 48);
    v8 = 136315394;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions reply QoS %s (%lu)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions complete:", &v8, 2u);
  }
}

- (void)retrieveActivityMetrics:(id)metrics reply:(id)reply
{
  v36[1] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  replyCopy = reply;
  v8 = objc_autoreleasePoolPush();
  ++_query_id;
  if (replyCopy)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:17 orWaiveOnIntent:0])
    {
      if (([(ServiceImpl *)self _checkRateLimitForConnection:currentConnection]& 1) != 0)
      {
        if (!metricsCopy)
        {
          v27 = analyticsLogHandle;
          if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Activity is required", buf, 2u);
          }

          v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:72 userInfo:0];
          replyCopy[2](replyCopy, 0, v10);
          goto LABEL_20;
        }

        v10 = +[NWActivityHandler sharedMetricsQueue];
        if (v10)
        {
          v11 = [[NWActivityHelper alloc] initWithQueue:v10];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __45__ServiceImpl_retrieveActivityMetrics_reply___block_invoke;
          v29[3] = &unk_27898E948;
          v30 = replyCopy;
          [(NWActivityHelper *)v11 retrieveNWActivityMetricsForActivity:metricsCopy completion:v29];

LABEL_19:
LABEL_20:

          goto LABEL_21;
        }

        v28 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Queue not available", buf, 2u);
        }

        v16 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA5B8];
        v18 = 74;
        v26 = 0;
LABEL_18:
        v11 = [v16 errorWithDomain:v17 code:v18 userInfo:v26];
        replyCopy[2](replyCopy, 0, v11);
        goto LABEL_19;
      }

      v19 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = pid_to_process_name([currentConnection processIdentifier]);
        v22 = v21;
        v23 = @"<unknown>";
        if (v21)
        {
          v23 = v21;
        }

        *buf = 138412290;
        v34 = v23;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics from %@ denied due to rate limit control", buf, 0xCu);
      }

      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA5B8];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Rate limit exceeded.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v16 = v24;
      v17 = v25;
      v18 = 16;
    }

    else
    {
      v13 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics does not have required entitlement", buf, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CCA5B8];
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"An entitlement is required for retrieving nw_activity information.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v16 = v14;
      v17 = v15;
      v18 = 13;
    }

    v26 = v10;
    goto LABEL_18;
  }

  v12 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "retrieveActivityMetrics: Reply is required", buf, 2u);
  }

LABEL_21:
  objc_autoreleasePoolPop(v8);
}

- (void)updatedNDFDeviceRecords:(id)records reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v8 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v10 = +[NDFCoreShim sharedInstance];
      [v10 noteDeviceRecordUpdates:recordsCopy reply:replyCopy];
    }

    else
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        processIdentifier = [currentConnection processIdentifier];
        v15 = [SFEntitlements stringForEntitlement:18];
        v16[0] = 67109378;
        v16[1] = processIdentifier;
        v17 = 2112;
        v18 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v16, 0x12u);
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      replyCopy[2](replyCopy, v10);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v16, 2u);
    }
  }
}

- (void)ndfClientCheckInWithReply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v7 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0];
    v8 = otherLogHandle;
    if (v7)
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v16 = 67109120;
        processIdentifier = [currentConnection processIdentifier];
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NDF: Received check-in from client with pid %d", &v16, 8u);
      }

      v10 = +[NDFCoreShim sharedInstance];
      [v10 clientCheckInWithConnection:currentConnection];

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v8;
        processIdentifier2 = [currentConnection processIdentifier];
        v14 = [SFEntitlements stringForEntitlement:18];
        v16 = 67109378;
        processIdentifier = processIdentifier2;
        v18 = 2112;
        v19 = v14;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v16, 0x12u);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (replyCopy)[2](replyCopy, v15);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v16, 2u);
    }
  }
}

- (id)nwEndpointArrayFromXPCObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v4 = objectCopy;
  if (objectCopy && MEMORY[0x238389170](objectCopy) == MEMORY[0x277D86440])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 3221225472;
    applier[2] = __44__ServiceImpl_nwEndpointArrayFromXPCObject___block_invoke;
    applier[3] = &unk_27898E970;
    v6 = v7;
    v13 = v6;
    xpc_array_apply(v4, applier);
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v10 = [v6 count];
      *buf = 134218242;
      v15 = v10;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "NDF: Recovered %lu endpoints, all endpoints = %@", buf, 0x16u);
    }
  }

  else
  {
    v5 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "NDF: Invalid XPC object %p", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __44__ServiceImpl_nwEndpointArrayFromXPCObject___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = nw_endpoint_create_from_dictionary();
  [*(a1 + 32) addObject:v4];

  return 1;
}

- (void)ndfClientSubscriptionIsActive:(BOOL)active reply:(id)reply
{
  activeCopy = active;
  v22 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v7 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    v9 = [(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0];
    v10 = otherLogHandle;
    if (v9)
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v18 = 67109120;
        processIdentifier = [currentConnection processIdentifier];
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "NDF: Received subscription status change from client with pid %d", &v18, 8u);
      }

      v12 = +[NDFCoreShim sharedInstance];
      [v12 clientHasActiveSubscription:activeCopy forConnection:currentConnection];

      replyCopy[2](replyCopy, 0);
    }

    else
    {
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v10;
        processIdentifier2 = [currentConnection processIdentifier];
        v16 = [SFEntitlements stringForEntitlement:18];
        v18 = 67109378;
        processIdentifier = processIdentifier2;
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v18, 0x12u);
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      (replyCopy)[2](replyCopy, v17);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v13 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v18, 2u);
    }
  }
}

- (void)pingEndpoints:(id)endpoints reply:(id)reply
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  endpointsCopy = endpoints;
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v8 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v14 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        processIdentifier = [currentConnection processIdentifier];
        v17 = [SFEntitlements stringForEntitlement:18];
        v20 = 67109378;
        v21[0] = processIdentifier;
        LOWORD(v21[1]) = 2112;
        *(&v21[1] + 2) = v17;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v20, 0x12u);
      }

      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      replyCopy[2](replyCopy, 0, v11);
      goto LABEL_16;
    }

    v10 = [(ServiceImpl *)self nwEndpointArrayFromXPCObject:endpointsCopy];
    v11 = v10;
    if (v10)
    {
      if (![v10 count])
      {
        v19 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NDF: Got no nw_endpoint_t instances, returning empty response", &v20, 2u);
        }

        (replyCopy)[2](replyCopy, &stru_2847966D8, 0);
        goto LABEL_16;
      }

      v12 = +[NDFCoreShim sharedInstance];
      [v12 pingEndpoints:v11 reply:replyCopy];
    }

    else
    {
      v18 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412290;
        *v21 = endpointsCopy;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "NDF: Error converting %@ to array of nw_endpoint_t instances", &v20, 0xCu);
      }

      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:&unk_2847EF570];
      (replyCopy)[2](replyCopy, &stru_2847966D8, v12);
    }

LABEL_16:
    objc_autoreleasePoolPop(v8);
    goto LABEL_17;
  }

  v13 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v20, 2u);
  }

LABEL_17:
}

- (void)sendMessage:(id)message toEndpoints:(id)endpoints reply:(id)reply
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  endpointsCopy = endpoints;
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v11 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if (![(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v17 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        processIdentifier = [currentConnection processIdentifier];
        v20 = [SFEntitlements stringForEntitlement:18];
        v23 = 67109378;
        v24[0] = processIdentifier;
        LOWORD(v24[1]) = 2112;
        *(&v24[1] + 2) = v20;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", &v23, 0x12u);
      }

      v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      replyCopy[2](replyCopy, 0, v14);
      goto LABEL_16;
    }

    v13 = [(ServiceImpl *)self nwEndpointArrayFromXPCObject:endpointsCopy];
    v14 = v13;
    if (v13)
    {
      if (![v13 count])
      {
        v22 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "NDF: Got no nw_endpoint_t instances, returning empty response", &v23, 2u);
        }

        (replyCopy)[2](replyCopy, &stru_2847966D8, 0);
        goto LABEL_16;
      }

      v15 = +[NDFCoreShim sharedInstance];
      [v15 sendMessage:messageCopy toEndpoints:v14 reply:replyCopy];
    }

    else
    {
      v21 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        *v24 = endpointsCopy;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "NDF: Error converting %@ to array of nw_endpoint_t instances", &v23, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:&unk_2847EF598];
      (replyCopy)[2](replyCopy, &stru_2847966D8, v15);
    }

LABEL_16:
    objc_autoreleasePoolPop(v11);
    goto LABEL_17;
  }

  v16 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "NDF: reply block is required", &v23, 2u);
  }

LABEL_17:
}

- (void)sendPayloadToDaemonWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 sendArbitraryPayloadToDistributedSymptomsWithReply:replyCopy];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        processIdentifier = [currentConnection processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v13[0] = 67109378;
        v13[1] = processIdentifier;
        v14 = 2112;
        v15 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v13, 0x12u);
      }

      replyCopy[2](replyCopy, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v13, 2u);
    }
  }
}

- (void)triggerSendPayloadToDaemonWithInterval:(int64_t)interval leeway:(int64_t)leeway reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v9 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v11 = +[NDFCoreShim sharedInstance];
      [v11 triggerSendPayloadToDistributedSymptomsWithInterval:interval leeway:leeway reply:replyCopy];
    }

    else
    {
      v13 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        processIdentifier = [currentConnection processIdentifier];
        v16 = [SFEntitlements stringForEntitlement:18];
        v17[0] = 67109378;
        v17[1] = processIdentifier;
        v18 = 2112;
        v19 = v16;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v17, 0x12u);
      }

      replyCopy[2](replyCopy, 0);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v12 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v17, 2u);
    }
  }
}

- (void)listNDFDeviceObjectsWithIdentifier:(id)identifier reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v8 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v10 = +[NDFCoreShim sharedInstance];
      [v10 listNDFDeviceObjectsWithIdentifier:identifierCopy reply:replyCopy];
    }

    else
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        processIdentifier = [currentConnection processIdentifier];
        v15 = [SFEntitlements stringForEntitlement:18];
        v16[0] = 67109378;
        v16[1] = processIdentifier;
        v17 = 2112;
        v18 = v15;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v16, 0x12u);
      }

      replyCopy[2](replyCopy, 0);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v16, 2u);
    }
  }
}

- (void)fetchNDFDeviceRecordsWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 fetchNDFDeviceRecordsWithReply:replyCopy];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        processIdentifier = [currentConnection processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v13[0] = 67109378;
        v13[1] = processIdentifier;
        v14 = 2112;
        v15 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v13, 0x12u);
      }

      replyCopy[2](replyCopy, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v13, 2u);
    }
  }
}

- (void)cleanupNDFDeviceRecordsWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 cleanupNDFDeviceRecordsWithReply:replyCopy];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        processIdentifier = [currentConnection processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v13[0] = 67109378;
        v13[1] = processIdentifier;
        v14 = 2112;
        v15 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v13, 0x12u);
      }

      replyCopy[2](replyCopy, 0);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v13, 2u);
    }
  }
}

- (void)networkRestrictsMulticastTrafficWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  ++_query_id;
  if (replyCopy)
  {
    v5 = objc_autoreleasePoolPush();
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:18 orWaiveOnIntent:0])
    {
      v7 = +[NDFCoreShim sharedInstance];
      [v7 networkRestrictsMulticastTrafficWithReply:replyCopy];
    }

    else
    {
      v9 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        processIdentifier = [currentConnection processIdentifier];
        v12 = [SFEntitlements stringForEntitlement:18];
        v13[0] = 67109378;
        v13[1] = processIdentifier;
        v14 = 2112;
        v15 = v12;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Unauthorized request: client with pid %d is missing entitlement %@", v13, 0x12u);
      }

      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
      replyCopy[2](replyCopy, 0, v7);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NDF: reply block is required", v13, 2u);
    }
  }
}

- (void)remotePingToAddress:(id)address interface:(unint64_t)interface interval:(double)interval count:(int64_t)count timeout:(double)timeout reply:(id)reply
{
  v56[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  replyCopy = reply;
  v16 = objc_autoreleasePoolPush();
  ++_query_id;
  if (replyCopy)
  {
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    if ([(ServiceImpl *)self assertEntitlement:currentConnection entitlement:14 orWaiveOnIntent:0])
    {
      if (interval < 0.5)
      {
        interval = 0.5;
      }

      if (count >= 100)
      {
        count = 100;
      }

      if ([addressCopy length] > 2)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v49 = 0x3032000000;
        v50 = __Block_byref_object_copy__13;
        v51 = __Block_byref_object_dispose__13;
        v52 = objc_alloc_init(ICMPPingHandler);
        v34 = 0;
        v35 = &v34;
        v36 = 0x3032000000;
        v37 = __Block_byref_object_copy__13;
        v38 = __Block_byref_object_dispose__13;
        v27 = [ICMPPingProbe alloc];
        _queue = [currentConnection _queue];
        v39 = [(ICMPPingProbe *)v27 initWithQueue:_queue];

        [v35[5] setDelegate:*(*(&buf + 1) + 40)];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __93__ServiceImpl_TestingExtensions__remotePingToAddress_interface_interval_count_timeout_reply___block_invoke;
        v30[3] = &unk_27898E998;
        v31 = replyCopy;
        v32 = &v34;
        p_buf = &buf;
        [*(*(&buf + 1) + 40) setReplyBlock:v30];
        v29 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v40 = 138413058;
          v41 = addressCopy;
          v42 = 2048;
          countCopy = count;
          v44 = 2048;
          intervalCopy = interval;
          v46 = 2048;
          interfaceCopy = interface;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "Ready to start ping to %@ (%ld every %.1lf seconds over ifidx %ld)", v40, 0x2Au);
        }

        [v35[5] startICMPPingTestTo:addressCopy hostName:0 interface:interface pingCount:count interPingInterval:1 burstCount:0 interBurstInterval:interval timeout:0.0 stopTestOnFirstSuccess:timeout];

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v18 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = addressCopy;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "remotePingToAddress requires a valid destination address: %@", &buf, 0xCu);
        }

        v19 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v54 = @"Invalid destination address.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v21 = [v19 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v20];
        (*(replyCopy + 2))(replyCopy, 0, 0, v21);
      }
    }

    else
    {
      v23 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "remotePingToAddress does not have required entitlement", &buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56[0] = @"An entitlement is required for accessing testing specific endpoints.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:v25];
      (*(replyCopy + 2))(replyCopy, 0, 0, v26);
    }
  }

  else
  {
    v22 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "remotePingToAddress:interval:count:timeout: Reply is required", &buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v16);
}

void __93__ServiceImpl_TestingExtensions__remotePingToAddress_interface_interval_count_timeout_reply___block_invoke(void *a1)
{
  (*(a1[4] + 16))();
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "Finished calling ICMP pinger reply callback", v7, 2u);
  }
}

- (void)handlePendingXPCConnection:(uint64_t)connection
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!connection)
  {
    goto LABEL_14;
  }

  if (!*(connection + 80))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = *(connection + 80);
    *(connection + 80) = v4;
  }

  if (([(ServiceImpl *)connection _isServiceReady]& 1) != 0)
  {
    [(ServiceImpl *)connection _handleNOIClientForConnection:v3];
    [v3 activate];
    goto LABEL_14;
  }

  v6 = *(connection + 64);
  v7 = analyticsLogHandle;
  v8 = os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = *(connection + 8);
    *v14 = 134217984;
    *&v14[4] = v9;
    v10 = "ServiceImpl:[helper] waiting for FAE (%p)";
    v11 = v7;
    v12 = 12;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_2();
    v10 = "ServiceImpl: waiting for FAE (%p), NAE (%p), NOI (%p)";
    v11 = v7;
    v12 = 32;
  }

  _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, v10, v14, v12);
LABEL_12:
  [*(connection + 80) addObject:{v3, *v14, *&v14[8]}];
  v13 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138412290;
    *&v14[4] = v3;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "ServiceImpl: Added pending XPC connection to queue (%@)", v14, 0xCu);
  }

LABEL_14:
}

- (void)_serviceReadyCheckPointRelease
{
  v43 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = otherLogHandle;
    if (OUTLINED_FUNCTION_3())
    {
      v3 = v2;
      v4 = qos_class_self();
      *v42 = 136315138;
      *&v42[4] = qos_string(v4);
      OUTLINED_FUNCTION_0_3();
      _os_log_impl(v5, v6, v7, v8, v9, v10);
    }

    if ([(ServiceImpl *)self _isServiceReady])
    {
      if (*(self + 76) == 1)
      {
        v11 = analyticsLogHandle;
        if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *v42 = 0;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "ServiceImpl: XPC service has already released checkpoint", v42, 2u);
        }

        return;
      }

      v12 = *(self + 64);
      v13 = analyticsLogHandle;
      v14 = OUTLINED_FUNCTION_3();
      if (v12 == 1)
      {
        if (!v14)
        {
          goto LABEL_15;
        }

        v15 = *(self + 8);
        *v42 = 134217984;
        *&v42[4] = v15;
        OUTLINED_FUNCTION_0_3();
      }

      else
      {
        if (!v14)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_1_2();
        v16 = &dword_23255B000;
        v19 = "SymptomAnalytics ServiceImpl: engines up, FAE (%p), NAE (%p), NOI (%p)";
        v20 = v42;
        v17 = v13;
        v18 = OS_LOG_TYPE_DEBUG;
        v21 = 32;
      }

      _os_log_impl(v16, v17, v18, v19, v20, v21);
LABEL_15:
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:*(self + 56)];

      v23 = *(self + 56);
      *(self + 56) = 0;

      if (*(self + 64) == 1)
      {
        v25 = measureLaunchXPCHandle(v24);
        if (os_signpost_enabled(v25))
        {
          *v42 = 0;
LABEL_23:
          OUTLINED_FUNCTION_2_0();
          _os_signpost_emit_with_name_impl(v28, v29, OS_SIGNPOST_INTERVAL_END, v30, v31, v32, v33, 2u);
        }
      }

      else
      {
        Measurement = getMeasurement(2, 0xFFu);
        v25 = measureLaunchXPCHandle(Measurement);
        v27 = os_signpost_enabled(v25);
        if (Measurement)
        {
          if (v27)
          {
            *v42 = 0;
            goto LABEL_23;
          }
        }

        else if (v27)
        {
          *v42 = 0;
          goto LABEL_23;
        }
      }

      v35 = measureLaunchXPCHandle(v34);
      if (os_signpost_enabled(v35))
      {
        *v42 = 0;
        OUTLINED_FUNCTION_2_0();
        _os_signpost_emit_with_name_impl(v36, v37, OS_SIGNPOST_EVENT, v38, v39, v40, v41, 2u);
      }

      markMeasurement(2, 14);
      submitAllMeasurementsToCA();
      [(ServiceImpl *)self resumePendingXPCConnections];
      *(self + 76) = 1;
    }
  }
}

- (void)resumePendingXPCConnections
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(self + 80);
      v4 = v2;
      *buf = 134217984;
      v20 = [v3 count];
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "ServiceImpl: Resuming all (%ld) pending XPC connections", buf, 0xCu);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = *(self + 80);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __42__ServiceImpl_resumePendingXPCConnections__block_invoke;
    v16 = &unk_27898E6C8;
    selfCopy = self;
    v7 = v5;
    v18 = v7;
    [v6 enumerateObjectsUsingBlock:&v13];
    [*(self + 80) removeObjectsInArray:{v7, v13, v14, v15, v16, selfCopy}];
    v8 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v7 count];
      v11 = [*(self + 80) count];
      *buf = 134218240;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "ServiceImpl: Removed %ld connections - remaining pending connections: %ld", buf, 0x16u);
    }

    if (![*(self + 80) count])
    {
      v12 = *(self + 80);
      *(self + 80) = 0;
    }
  }
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2(uint64_t a1)
{
  v2 = otherLogHandle;
  if (OUTLINED_FUNCTION_3())
  {
    v3 = v2;
    v4 = qos_class_self();
    qos_string(v4);
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  [(ServiceImpl *)*(a1 + 32) _serviceReadyCheckPointRelease];
}

void __48__ServiceImpl_initWithQueue_noiEngine_isHelper___block_invoke_2_183(uint64_t a1)
{
  v2 = otherLogHandle;
  if (OUTLINED_FUNCTION_3())
  {
    v3 = v2;
    v4 = qos_class_self();
    qos_string(v4);
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
  }

  [(ServiceImpl *)*(a1 + 32) _serviceReadyCheckPointRelease];
}

- (void)_checkRateLimitForConnection:(int)a1 .cold.1(int a1, _BYTE *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67109120;
    v5[1] = a1;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "Can't find UUID for pid %d. Allowing for now", v5, 8u);
  }

  *a2 = 1;
}

@end